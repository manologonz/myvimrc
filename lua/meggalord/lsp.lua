local function on_attach(client,bufnr)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

require'lspconfig'.tsserver.setup{
   capabilities=capabilities,
    filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx"
    },
    on_attach=super_on_attach
}

require'lspconfig'.cssls.setup{
    capabilities = capabilities,
    capabilities=capabilities,
    on_attach=on_attach
}

require'lspconfig'.dockerls.setup{
    filetypes = {"dockerfile"},
    on_attach=on_attach
}

require'lspconfig'.emmet_ls.setup{
    capabilities=capabilities,
    filetypes = {"html", "css"},
    on_attach=on_attach
}

require'lspconfig'.graphql.setup{
    filetypes = {"graphql"},
    on_attach=on_attach
}

require "lspconfig".html.setup {
    capabilities = capabilities,
    filetypes = {"html"},
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
    capabilities=capabilities,
    on_attach=on_attach
}

require'lspconfig'.pyright.setup{
    filetypes = {"python"},
    on_attach=on_attach
}

require'lspconfig'.bashls.setup{
    filetypes = {"sh"},
    on_attach=on_attach
}

require'lspconfig'.vimls.setup{
    capabilities = capabilities,
    filetypes = {"vim"},
    on_attach=on_attach
}

require'lspconfig'.r_language_server.setup{
    capabilities = capabilities,
    cmd = { "R", "--slave", "-e", "languageserver::run()" },
    filetypes={"r", "rmd", "R"},
    log_lever=2
}

require'lspconfig'.yamlls.setup {
	capabilities=capabilities,
	on_attach=on_attach,
}
