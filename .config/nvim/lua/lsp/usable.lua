local M = {}


-- 使用的语言 :TSInstallInfo
M.language = { 'lua', 'cpp', 'markdown', 'python', 'go', 'haskell' }
-- LSP服务器名称 :LSPInstallInfo
M.servers = { 'lua_ls', 'clangd', 'marksman', 'pyright', 'gopls' }
-- 代码运行脚本
M.script = {
    lua = 'lua',
    cpp = '$dir && g++ $fileName -o ./$fileNameWithoutExt && ./$fileNameWithoutExt && rm ./$fileNameWithoutExt',
    python = '$dir && python -u $fileName',
    go = '$dir && go run $fileName',
    haskell = 'ghci'
}

return M
