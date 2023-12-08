local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
return require 'lazy'.setup {
    -- 主题
    "olimorris/onedarkpro.nvim",
    -- 语法高亮，折叠
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    -- 彩虹括号
    'p00f/nvim-ts-rainbow',
    -- LSP
    'neovim/nvim-lspconfig',
    -- LSP下载器
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    -- 悬浮定义
    'tami5/lspsaga.nvim',
    -- 代码补全
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',                -- { name = nvim_lsp }
    -- 补全源
    'hrsh7th/cmp-buffer',                  -- { name = 'buffer' },
    'hrsh7th/cmp-path',                    -- { name = 'path' }
    'hrsh7th/cmp-cmdline',                 -- { name = 'cmdline' }
    'L3MON4D3/LuaSnip',                    -- { name = 'luasnip' }
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lsp-signature-help', -- { name = 'nvim_lsp_signature_help' }
    -- 使代码片段源可用
    'rafamadriz/friendly-snippets',
    -- 补全UI
    'onsails/lspkind-nvim',
    -- Ranger
    'kevinhwang91/rnvimr',
    -- 顶部panel
    { 'romgrk/barbar.nvim',              dependencies = { 'nvim-tree/nvim-web-devicons' } },
    -- 起始页
    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = {
            'nvim-tree/nvim-web-devicons' }
    },
    -- 文件查找
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim' }
    },
    -- 项目查看
    'ahmedkhalf/project.nvim',
    -- 括号匹配
    { "windwp/nvim-autopairs",     config = function() require 'nvim-autopairs'.setup() end },
    -- 符号环绕
    { "kylechui/nvim-surround",    config = function() require 'nvim-surround'.setup() end },
    -- 自动注释
    { 'numToStr/Comment.nvim',     config = function() require 'Comment'.setup() end },
    -- 终端
    { "akinsho/toggleterm.nvim",   version = 'v2.*' },
    -- 底部状态栏
    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
    'arkav/lualine-lsp-progress',
    -- 代码执行
    { 'CRAG666/code_runner.nvim',            dependencies = 'nvim-lua/plenary.nvim' },
    -- 前置缩进增强
    { "lukas-reineke/indent-blankline.nvim", main = "ibl",                          opts = {} },
    -- 代码格式化
    { "jose-elias-alvarez/null-ls.nvim",     dependencies = "nvim-lua/plenary.nvim" },
    -- 翻译
    { "potamides/pantran.nvim" }
}
