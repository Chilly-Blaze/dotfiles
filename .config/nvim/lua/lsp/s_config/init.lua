local servers = require 'lsp.usable'.servers
local lspconfig = require "lspconfig"

for _, server in pairs(servers) do
    -- 是否个性化语言服务器
    local config = 'lsp.s_config.' .. server
    xpcall(function() require(config) end, function() config = 'lsp.s_config.default' end)
    -- 启动LSP
    lspconfig[server].setup(require(config))
end
