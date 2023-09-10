require 'pantran'.setup {
    default_engine = 'yandex',
    engines = {
        yandex = {
            fallback = {
                default_source = 'auto',
                default_target = 'zh',
            }
        },
    },
}
