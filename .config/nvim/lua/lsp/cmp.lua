local lspkind = require 'lspkind'
local cmp = require 'cmp'
if cmp ~= nil then
    cmp.setup {
        -- 指定 snippet 引擎
        snippet = {
            expand = function(args)
                require('luasnip').lsp_expand(args.body)
            end,
        },
        -- 常规代码来源
        sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = "nvim_lsp_signature_help" },
            { name = 'luasnip' },
        }, {
            { name = 'buffer' },
            { name = 'path' },
        }),
        -- 快捷键
        mapping = cmp.mapping.preset.insert {
            ["<Tab>"] = cmp.mapping.confirm({ select = true }),
            ["<Down>"] = cmp.mapping.select_next_item(),
            ["<S-Tab>"] = cmp.mapping.select_next_item(),
            ["<Up>"] = cmp.mapping.select_prev_item(),
        },
        -- 使用lspkind-nvim显示类型图标
        formatting = {
            format = lspkind.cmp_format {
                with_text = true,
                maxwidth = 50,
                before = function(entry, vim_item)
                    vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
                    return vim_item
                end
            }
        },
    }

    cmp.setup.cmdline('/', {
        sources = {
            { name = 'buffer' }
        }
    })

    cmp.setup.cmdline(':', {
        sources = cmp.config.sources({
            { name = 'path' }
        }, {
            { name = 'cmdline' }
        })
    })
end
