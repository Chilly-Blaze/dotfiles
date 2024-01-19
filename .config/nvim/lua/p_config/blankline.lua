require 'ibl'.setup {
    -- 防止出现在奇怪的地方
    exclude = { filetypes = { 'lspinfo', 'packer', 'checkhealth', 'help', 'man', 'dashboard' } },
    scope = {
        show_start = false,
        show_end = false,
    },
}
