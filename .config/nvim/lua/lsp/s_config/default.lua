return {
    on_attach = function(client, bufnr)
        -- 保存自动格式化
        if client.supports_method 'textDocument/formatting' then
            vim.api.nvim_create_autocmd('BufWritePre', {
                buffer = bufnr,
                callback = function() require 'conform'.format({ bufnr = bufnr }) end,
            })
        end
    end,
}
