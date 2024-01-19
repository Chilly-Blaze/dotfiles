require 'lualine'.setup {
    options = {
        component_separators = '',
        section_separators = {
            left = ' ',
            right = ' ',
        },
        globalstatus = true,
    },
    sections = {
        lualine_b = {
            { 'b:gitsigns_status', icons_enabled = true, icon = '', separator = '\\' },
            { 'filetype', icon_only = true },
            {
                'filename',
                newfile_status = true,
                symbols = {
                    modified = '󰷈',
                    readonly = '󱪟',
                    unnamed = '󱪗',
                    newfile = '󱪝',
                },
            },
        },
        lualine_c = { 'lsp_progress' },
        lualine_x = {},
        lualine_y = {
            'diagnostics',
            { 'encoding', icons_enabled = true, icon = '' },
        },
        lualine_z = {
            { 'progress', icons_enabled = true, icon = '󰦨 ' },
            'location',
        },
    },
}
