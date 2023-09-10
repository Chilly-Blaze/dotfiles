local t = require 'telescope'
t.setup({
    defaults = {
        -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
        initial_mode = "normal",
        -- 窗口内快捷键
        mappings = {
            i = {
                -- 预览窗口上下滚动
                ["<C-u>"] = "preview_scrolling_up",
                ["<C-d>"] = "preview_scrolling_down",
            },
            n = {
                ["q"] = "close",
            }
        },
    },
})
t.load_extension('projects')
