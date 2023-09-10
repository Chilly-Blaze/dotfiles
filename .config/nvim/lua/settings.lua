-- window作用域
-- jk移动时光标下上方保留8行
vim.o.scrolloff = 8
-- 使用相对行号
vim.o.number = true
vim.o.relativenumber = true
-- 高亮所在行
vim.o.cursorline = true
-- 显示左侧图标指示列
vim.o.signcolumn = "yes"

-- buffer作用域
-- utf8
vim.o.fileencoding = 'utf-8'
-- 一个Tab=4个空格
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
-- 新行对齐当前行，空格替代tab
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
-- 不生成交换文件
vim.o.swapfile = false

-- global作用域
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 允许隐藏被修改过的buffer
vim.o.hidden = true
-- 鼠标支持
vim.o.mouse = "a"
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 自动补全不自动选中
vim.o.completeopt = "menu,menuone,noselect,noinsert"
-- 样式
vim.o.background = "light"
vim.o.termguicolors = true
-- 不可见字符的显示，这里只把空格显示为一个点
vim.o.list = true
vim.o.listchars = "space:·,tab:-->"
-- 补全增强
vim.o.wildmenu = true
-- 补全最多显示行数
vim.o.pumheight = 10
vim.o.shortmess = 'a'
-- 下面状态栏，永久不显示
vim.o.showmode = false
-- 最上面的tab栏，单独文件时可隐藏
vim.o.showtabline = 1

-- 折叠，详见treesitter
-- zc折，zo开
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
vim.wo.foldlevel = 99
-- 全局Leader
vim.g.mapleader = ' '
