local M = {}

-- Treesitter使用的语言 :TSInstallInfo
M.language = { 'lua', 'cpp', 'markdown', 'python', 'go', 'haskell', 'typescript' }
-- LSP和Formatter服务器名称 :Mason
M.lsp = { 'lua_ls', 'clangd', 'marksman', 'pyright', 'gopls', 'tsserver' }
M.formatter = { 'stylua', 'pyink', 'isort', 'prettier', 'clang-format' }
-- 代码运行脚本
M.script = {
    lua = 'lua',
    cpp = '$dir && g++ $fileName -o ./$fileNameWithoutExt && ./$fileNameWithoutExt && rm ./$fileNameWithoutExt',
    python = '$dir && python -u $fileName',
    go = '$dir && go run $fileName',
    haskell = 'ghci',
    javascript = 'node',
    typescript = 'ts-node',
}

return M
