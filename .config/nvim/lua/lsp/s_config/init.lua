local lsps = require 'lsp.usable'.lsp
local lspconfig = require 'lspconfig'

for _, lsp in pairs(lsps) do
    -- 是否个性化语言服务器
    local config = 'lsp.s_config.' .. lsp
    xpcall(function() require(config) end, function() config = 'lsp.s_config.default' end)
    -- 启动LSP
    lspconfig[lsp].setup(require(config))
end
