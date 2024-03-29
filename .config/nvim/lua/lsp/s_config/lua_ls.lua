local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

return require 'utils'.appendTable({
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = { 'vim', 'use' },
                disable = { 'lowercase-global' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true),
                checkThirdParty = false,
            },
            misc = {
                parameters = { '--loglevel=trace' },
            },
            telemetry = { enable = false },
            format = { enable = false },
        },
    },
}, require 'lsp.s_config.default')
