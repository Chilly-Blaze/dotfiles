require 'nvim-treesitter.configs'.setup {
    -- 代码高亮
    -- 安装 language parser
    -- :TSInstallInfo 命令查看支持的语言
    ensure_installed = require 'lsp.usable'.language,
    -- 启用
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },

    -- 增量选择
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<CR>',
            node_incremental = '<CR>',
            node_decremental = '<BS>',
            scope_incremental = '<TAB>',
        }
    },
    indent = {
        enable = true,
    },
    -- rainbow
    rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        colors = {
            "#95ca60",
            "#ee6985",
            "#D6A760",
            "#7794f4",
            "#b38bf5",
            "#7cc7fe",
        },
    },
}
