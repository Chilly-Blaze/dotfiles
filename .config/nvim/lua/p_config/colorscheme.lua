require 'onedarkpro'.setup {
    styles = {
        strings = 'bold',
        comments = 'italic',
        keywords = 'italic',
        functions = 'bold',
        variables = 'NONE',
        virtual_text = 'undercurl',
    },
    options = {
        bold = true,
        italic = true,
        underline = false,
        undercurl = true,
        cursorline = true,
        transparency = true,
        terminal_colors = true,
        highlight_inactive_windows = true,
    },
}
vim.cmd 'colorscheme onelight'
