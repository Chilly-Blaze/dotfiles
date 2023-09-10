local lsp_servers = require 'lsp.usable'.servers
require 'mason'.setup {
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗",
        },
    },
}
require 'mason-lspconfig'.setup {
    ensure_installed = lsp_servers,
    automatic_installation = true,
}
