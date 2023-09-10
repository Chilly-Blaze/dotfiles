require 'dashboard'.setup({
    theme = 'hyper',
    shortcut_type = 'number',
    config = {
        header = {
            [[]],
            [[         _________  /\     __ __   __         __________ __                                  ]],
            [[         \_   ___ \|  |__ |__|  | |  | ____ __\______   \  | _____  _______ ____             ]],
            [[         /    \  \/|  |  \|  |  | |  | \   |  | |   |  _/  | \__  \ \___  // __ \            ]],
            [[         \     \____      \  |  |__  |__\___  | |   |   \  |__/ __ \_/   /\  ___/_           ]],
            [[          \______  /___|  /__|____/____// ____|/______  /____/____  /____ \\___  /           ]],
            [[                 \/     \/              \/            \/          \/     \/    \/            ]],
            [[]],
        },
        shortcut = {
            { desc = ' Update', group = '@property', action = 'Lazy update', key = 'u' },
            {
                desc = ' Files',
                action = 'Telescope find_files',
                group = '@operator',
                key = 'f',
            },
            {
                desc = ' Servers',
                action = 'edit ~/.config/nvim/lua/lsp/usable.lua',
                group = '@constructor',
                key = 's',
            },
            {
                desc = ' Mapping',
                action = 'edit ~/.config/nvim/lua/maps.lua',
                group = '@character',
                key = 'm'
            },
        },
        footer = {
            '',
            '夏の花の如く艶やかに生き、秋の枯葉の如く穏やかに终りを迎えよ',
        },
    }
})
