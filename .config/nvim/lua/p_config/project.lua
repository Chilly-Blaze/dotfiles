require 'project_nvim'.setup({
    detection_methods = { "pattern" },
    exclude_dirs = {
        '~/.local/*'
    },
    patterns = {
        '.git',
        '.p'
    },
})
