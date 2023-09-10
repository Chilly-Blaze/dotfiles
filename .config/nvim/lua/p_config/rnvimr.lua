-- 用ranger代替默认文件浏览器
vim.g.rnvimr_enable_ex = 1
-- 选择文件后自动隐藏ranger
vim.g.rnvimr_enable_picker = 1
-- 删除文件时自动删除buffer
vim.g.rnvimr_enable_bw = 1
vim.g.rnvimr_action = {
    -- 新打开文件sv和sh进行横向和纵向分屏
    sv = 'NvimEdit vsplit',
    sh = 'NvimEdit split',
}
