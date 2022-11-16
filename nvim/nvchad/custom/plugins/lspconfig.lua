local on_attach = function (client, bufnr)
  require("plugins.configs.lspconfig").on_attach(client, bufnr)

  client.server_capabilities.documentFormattingProvider = true
  client.server_capabilities.documentRangeFormattingProvider = true
end




local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {"html", "cssls", "tsserver", "clangd", "gopls", "rust_analyzer", "pyright"}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities
    }
end



