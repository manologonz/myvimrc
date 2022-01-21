local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }

    --LSP SAGA
    buf_set_keymap("n", "<leader>vr", "<cmd>Lspsaga rename<cr>", opts)
    buf_set_keymap("n", "<leader>gca", "<cmd>Lspsaga code_action<cr>", opts)
    buf_set_keymap("x", "<leader>rca", ":<c-u>Lspsaga range_code_action<cr>", opts)
    buf_set_keymap("n", "K",  "<cmd>Lspsaga hover_doc<cr>", opts)
    buf_set_keymap("n", "<leader>gsh",  "<cmd>Lspsaga signature_help<cr>", opts)
    buf_set_keymap("n", "<leader>vd", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
    buf_set_keymap("n", "<leader>vj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
    buf_set_keymap("n", "<leader>vk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
    buf_set_keymap("n", "<leader>su", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", opts)
    buf_set_keymap("n", "<leader>sd", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", opts)

    -- LSP
    buf_set_keymap('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', '<leader>gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<leader>vsh', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<leader>grr', '<cmd>lua vim.lsp.buf.refrences()<CR>', opts)
    buf_set_keymap('n', '<leader>grn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<leader>vca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    buf_set_keymap('n', '<leader>gsd', '<cmd>lua vim.lsp.buf.show_line_diagnostics()<CR>', opts)
    buf_set_keymap('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<leader>gll', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
end

local signs = {
    Error = '',
    Warn = '',
    Hint = '',
    Info = '',
}


for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = ""})
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

require'lspconfig'.tsserver.setup{
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    capabilities = capabilities,
    on_attach = on_attach,
    init_options = {
      hostInfo = "neovim"
    }
}

require'lspconfig'.cssmodules_ls.setup{
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" }
}

require'lspconfig'.cssls.setup{
    filetypes = { "css", "scss", "less" },
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        css = {
            validate = true
        },
        less = {
            validate = true
        },
        scss = {
            validate = true
        }
    },
    single_file_support = true
}

require'lspconfig'.dockerls.setup{
    filetypes = {"dockerfile"},
    on_attach = on_attach,
    single_file_support = true
}

-- require'lspconfig'.emmet_ls.setup{
--     filetypes = { "html", "css" },
--     capabilities = capabilities,
--     on_attach = on_attach,
--     single_file_support = true
-- }

require'lspconfig'.graphql.setup{
    iletypes = { "graphql", "typescriptreact", "javascriptreact" },
    capabilities = capabilities,
    on_attach = on_attach
}

require "lspconfig".html.setup {
    filetypes = { "html" },
    capabilities = capabilities,
    on_attach = on_attach,
    configurationSection = { "html", "css", "javascript" },
    embeddedLanguages = {
        css = true,
        javascript = true
    },
    single_file_support = true
}

require'lspconfig'.jsonls.setup{
    filetypes = { "json" },
    single_file_support = true,
    capabilities = capabilities,
    on_attach = on_attach,
    commands = {
        Format = {
        function()
            vim.lsp.buf.range_formatting({}, {0,0}, {vim.fn.line("$"),0})
        end
        }
    },
    init_options = {
        provideFormatter = true
    },
}

require'lspconfig'.pyright.setup {
    filetypes = { "python" },
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
            }
        }
    },
    single_file_support = true
}

require'lspconfig'.bashls.setup{
    filetypes = { "sh" },
    capabilities = capabilities,
    on_attach = on_attach,
    cmd_env = {
      GLOB_PATTERN = "*@(.sh|.inc|.bash|.command)"
    },
    single_file_support = true
}

require'lspconfig'.vimls.setup{
    filetypes = { "vim" },
    capabilities = capabilities,
    on_attach = on_attach,
    init_options = {
        diagnostic = {
            enable = true
        },
        indexes = {
            count = 3,
            gap = 100,
            projectRootPatterns = { "runtime", "nvim", ".git", "autoload", "plugin" },
            runtimepath = true
        },
        iskeyword = "@,48-57,_,192-255,-#",
        runtimepath = "",
        suggest = {
            fromRuntimepath = true,
            fromVimruntime = true
        },
        vimruntime = ""
    }
}

require'lspconfig'.r_language_server.setup{
    filetypes={"r", "rmd", "R"},
    capabilities = capabilities,
    cmd = { "R", "--slave", "-e", "languageserver::run()" },
    log_lever=2
}

require'lspconfig'.yamlls.setup {
	capabilities = capabilities,
	on_attach = on_attach,
	single_file_support = true,
    settings = {
        yaml = {
            schemas = {
                ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0-standalone-strict/all.json"] = "/*.k8s.yaml",
                ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
            },
        },
    }
}
