local function on_attach()

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
    capabilities = capabilities,
    on_attach = on_attach
}

require'lspconfig'.cssls.setup{
    capabilities = capabilities,
    on_attach = on_attach
}

require'lspconfig'.dockerls.setup{
    filetypes = {"dockerfile"},
    on_attach = on_attach
}

require'lspconfig'.emmet_ls.setup{
    capabilities = capabilities,
    on_attach = on_attach
}

require'lspconfig'.graphql.setup{
    capabilities = capabilities,
    on_attach = on_attach
}

require "lspconfig".html.setup {
    capabilities = capabilities,
    on_attach = on_attach
}

require'lspconfig'.jsonls.setup{
    commands = {
        Format = {
        function()
            vim.lsp.buf.range_formatting({}, {0,0}, {vim.fn.line("$"),0})
        end
        }
    },
    capabilities = capabilities,
    on_attach = on_attach
}

require'lspconfig'.pyright.setup {
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
    capabilities = capabilities,
    on_attach = on_attach
}

require'lspconfig'.vimls.setup{
    capabilities = capabilities,
    on_attach = on_attach
}

require'lspconfig'.r_language_server.setup{
    capabilities = capabilities,
    cmd = { "R", "--slave", "-e", "languageserver::run()" },
    filetypes={"r", "rmd", "R"},
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

local opts = {
    highlight_hovered_item = true,
    show_guides = true
}

require('symbols-outline').setup(opts)
