require 'lualine'.setup({
    options = {
        -- 指定皮肤
        -- theme = "tokyonight",
        -- 分割线
        component_separators = {
            left = "",
            right = "",
        },
        -- https://github.com/ryanoasis/powerline-extra-symbols
        section_separators = {
            left = " ",
            right = "",
        },
        globalstatus = true,
    },
    sections = {
        lualine_c = {
            "filename",
            {
                "lsp_progress",
                spinner_symbols = { ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
            },
        },
        lualine_x = {
            "filesize",
            {
                "fileformat",
                symbols = {
                    unix = ' ', -- e712
                    dos = ' ', -- e70f
                    mac = ' ', -- e711
                },
            },
            "encoding",
            "filetype",
        },
    },
})
