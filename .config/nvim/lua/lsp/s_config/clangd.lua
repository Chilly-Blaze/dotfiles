local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.offsetEncoding = { 'utf-16' }
return require 'utils'.appendTable({
    capabilities = capabilities,
}, require 'lsp.s_config.default')
