require 'lspsaga'.setup({
    debug = false,
    use_saga_diagnostic_sign = true,
    -- 代码诊断相关
    error_sign = "",
    warn_sign = "",
    hint_sign = "",
    infor_sign = "",
    diagnostic_header_icon = "   ",
    -- 智能提示相关
    code_action_icon = " ",
    code_action_prompt = {
        enable = true,
        sign = true,
        sign_priority = 40,
        virtual_text = true,
    },
    -- 查询用法
    finder_definition_icon = "  ",
    finder_reference_icon = "  ",
    -- 最大显示行数
    max_preview_lines = 10,
    -- LSP不同功能快捷键
    finder_action_keys = {
        open = "<CR>",
        vsplit = "s",
        split = "i",
        quit = "q",
        scroll_down = "<C-f>",
        scroll_up = "<C-b>",
    },
    code_action_keys = {
        quit = "q",
        exec = "<CR>",
    },
    rename_action_keys = {
        quit = "<ESC>",
        exec = "<CR>",
    },
    -- 查询定义
    definition_preview_icon = "  ",
    border_style = "single",
    -- 全局改名
    rename_prompt_prefix = "➤",
    rename_output_qflist = {
        enable = false,
        auto_open_qflist = false,
    },
    server_filetype_map = {},
    diagnostic_prefix_format = "%d. ",
    diagnostic_message_format = "%m %c",
    highlight_prefix = false,
})
