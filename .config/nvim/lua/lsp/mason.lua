-- 自动加载lsp/formatter
local lsp = require 'lsp.usable'.lsp
local formatter = require 'lsp.usable'.formatter
local servers = {}
for _, v in ipairs(lsp) do
    table.insert(servers, { v, auto_update = true })
end
for _, v in ipairs(formatter) do
    table.insert(servers, { v, auto_update = true })
end
require 'mason'.setup { log_level = vim.log.levels.OFF }
require 'mason-lspconfig'.setup()
require 'mason-tool-installer'.setup {
    ensure_installed = servers,
    auto_update = true,
    run_on_start = true,
}
