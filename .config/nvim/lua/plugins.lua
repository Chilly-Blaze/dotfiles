local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)
return require 'lazy'.setup {
    -- 主题
    'olimorris/onedarkpro.nvim',
    -- 语法高亮，折叠
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    -- LSP
    'neovim/nvim-lspconfig',
    -- LSP下载器
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    -- 悬浮定义
    'nvimdev/lspsaga.nvim',
    -- 代码补全
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp', -- { name = nvim_lsp }
    -- 补全源
    'hrsh7th/cmp-buffer', -- { name = 'buffer' },
    'hrsh7th/cmp-path', -- { name = 'path' }
    'hrsh7th/cmp-cmdline', -- { name = 'cmdline' }
    'L3MON4D3/LuaSnip', -- { name = 'luasnip' }
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lsp-signature-help', -- { name = 'nvim_lsp_signature_help' }
    -- 使代码片段源可用
    'rafamadriz/friendly-snippets',
    -- 补全UI
    'onsails/lspkind-nvim',
    -- Ranger
    'kevinhwang91/rnvimr',
    -- 顶部panel
    { 'romgrk/barbar.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
    -- 起始页
    { 'glepnir/dashboard-nvim', event = 'VimEnter', dependencies = { 'nvim-tree/nvim-web-devicons' } },
    -- 文件查找
    { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
    -- 项目查看
    'ahmedkhalf/project.nvim',
    -- 括号匹配
    { 'windwp/nvim-autopairs', opts = {} },
    -- 符号环绕
    --     Old text               Command              New text
    -- surr*ound_words             ysiw)           (surround_words)
    -- *make strings               ys$"            "make strings"
    -- [delete ar*ound me!]        ds]             delete around me!
    -- remove <b>HTML t*ags</b>    dst             remove HTML tags
    -- 'change quot*es'            cs'"            "change quotes"
    -- <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    -- delete(functi*on calls)     dsf             function calls
    { 'kylechui/nvim-surround', opts = {} },
    -- 自动注释
    { 'numToStr/Comment.nvim', opts = {} },
    -- 终端
    { 'akinsho/toggleterm.nvim', version = 'v2.*' },
    -- 底部状态栏
    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
    'arkav/lualine-lsp-progress',
    -- 代码执行
    { 'CRAG666/code_runner.nvim', dependencies = 'nvim-lua/plenary.nvim' },
    -- 前置缩进增强
    { 'lukas-reineke/indent-blankline.nvim', main = 'ibl' },
    -- 代码格式化
    'stevearc/conform.nvim',
    -- 翻译
    'potamides/pantran.nvim',
    -- Git信息显示
    'lewis6991/gitsigns.nvim',
    -- Codeium
    -- :Codeium Auth
    { 'Exafunction/codeium.vim', event = 'BufEnter' },
}
