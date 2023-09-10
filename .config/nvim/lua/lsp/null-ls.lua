local null_ls = require('null-ls')
local formatting = null_ls.builtins.formatting

null_ls.setup({
    debug = false,
    sources = {
        -- C/C++
        formatting.clang_format.with({
            filetypes = { 'c', 'cpp' },
            args = { '-style={IndentWidth: 4}' }
        }),
        -- Python
        formatting.pyink.with({
            args = { '--stdin-filename', '$FILENAME', '--quiet', '-', '--pyink-use-majority-quotes' }
        }),
    },
    -- 保存自动格式化
    on_attach = function(client, bufnr)
        require 'lsp.s_config.default'.on_attach(client, bufnr)
    end,
})
