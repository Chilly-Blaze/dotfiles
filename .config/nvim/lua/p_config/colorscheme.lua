require("onedarkpro").setup({
    styles = { -- Choose from "bold,italic,underline"
        strings = "bold", -- Style that is applied to strings.
        comments = "italic", -- Style that is applied to comments
        keywords = "NONE", -- Style that is applied to keywords
        functions = "underline", -- Style that is applied to functions
        variables = "NONE", -- Style that is applied to variables
        virtual_text = "undercurl", -- Style that is applied to virtual text
    },
    options = {
        bold = true, -- Use the themes opinionated bold styles?
        italic = true, -- Use the themes opinionated italic styles?
        underline = true, -- Use the themes opinionated underline styles?
        undercurl = true, -- Use the themes opinionated undercurl styles?
        cursorline = true, -- Use cursorline highlighting?
        transparency = true, -- Use a transparent background?
        terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
        highlight_inactive_windows = true, -- When the window is out of focus, change the normal background?
    }
})
vim.cmd 'colorscheme onelight'
