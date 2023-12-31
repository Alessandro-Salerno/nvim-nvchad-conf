local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.texlab.setup{}
lspconfig.zls.setup{}
lspconfig.gopls.setup{}
lspconfig.phpactor.setup{}
lspconfig.pyright.setup{
  on_attach = on_attach,
  settings = {
    pyright = {
      autoImportCompletion = true,
      disableLanguageServices = false
    },
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = 'openFilesOnly',
        useLibraryCodeForTypes = true,
        typeCheckingMode = 'off'
      }
    }
  }
}

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}
