require 'toggleterm'.setup({
    size = function(term)
        if term.direction == 'vertical' then return vim.o.columns * 0.4
        elseif term.direction == 'horizontal' then return 15 end
    end,
    persist_size = false,
    autodir = true
})

local t = nil
local M = {}

function tm(s)
    t:close()
    t:change_direction(s)
    t:open()
end

function ifnil()
    if t == nil then
        t = require("toggleterm.terminal").Terminal:new({
            display_name = 'custom',
            direction = 'float',
            dir = '%:p:h',
            count = 100
        })
    end
end

function M.toggleM()
    ifnil()
    if not t:is_open() then t:open()
    elseif t.direction == 'float' then tm('vertical')
    elseif t.direction == 'vertical' then tm('horizontal')
    else tm('float')
    end
end

function M.toggleS()
    ifnil()
    t:shutdown()
    t = nil
end

return M
