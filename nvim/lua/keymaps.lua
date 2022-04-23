local function mapkey(mode, lhs, rhs, silent, noremap)
    if silent == nil then silent = false end
    if noremap == nil then noremap = true end
    vim.api.nvim_set_keymap(mode, lhs, rhs, {noremap=silent, silent=silent})
end

mapkey("n", "/", "/\\v")
mapkey("v", "/", "/\\v")
mapkey("n", "<leader>/", ":nohls<CR>", true)
mapkey("n", "<leader><space>", ":% s/\\s/+$//g<CR>", true)

mapkey("v", "<", "<gv")
mapkey("v", ">", ">gv")

mapkey("", "<c-k>", "<c-w>k")
mapkey("", "<c-j>", "<c-w>j")
mapkey("", "<c-h>", "<c-w>h")
mapkey("", "<c-l>", "<c-w>l")

mapkey("n", "wj", ":resize -3<CR>")
mapkey("n", "wk", ":resize +3<CR>")
mapkey("n", "wl", ":vertical:resize -5<CR>")
mapkey("n", "wh", ":vertical:resize +5<CR>")

mapkey("n", "<leader>p", '"+p')

mapkey("n", "gb", '<C-o>', true)

-- nvim-tree
mapkey("n", "<leader>b", ":NvimTreeToggle<CR>")

-- nvim-hlslens
mapkey("n", "n", "<Cmd>execute('normal!'.v:count1.'n')<CR><Cmd>lua require('hlslens').start()<CR>")
mapkey("n", "N", "<Cmd>execute('normal!'.v:count1.'N')<CR><Cmd>lua require('hlslens').start()<CR>")
mapkey("n", "*", "*<Cmd>lua require('hlslens').start()<CR>")
mapkey("n", "#", "#<Cmd>lua require('hlslens').start()<CR>")
mapkey("n", "g*", "g*<Cmd>lua require('hlslens').start()<CR>")
mapkey("n", "g#", "g#<Cmd>lua require('hlslens').start()<CR>")

-- 搜索并跳转到单词
mapkey("n", "<leader><leader>w", "<cmd>HopWord<CR>")
-- 搜索并跳转到行
mapkey("n", "<leader><leader>l", "<cmd>HopLine<CR>")
-- 搜索并跳转到字符
mapkey("n", "<leader><leader>s", "<cmd>HopChar1<CR>")

-- suround
-- cs 字符 字符：修改包裹
-- ds 字符     ：删除包裹
-- ys 范围 字符：增加包裹

-- telescope
mapkey("n", "<Leader>ff", ":lua require('telescope.builtin').find_files()<CR>", true)
mapkey("n", "<Leader>fg", ":lua require('telescope.builtin').live_grep()<CR>", true)
mapkey("n", "<Leader>fb", ":lua require('telescope.builtin').buffers()<CR>", true)
mapkey("n", "<Leader>fh", ":lua require('telescope.builtin').help_tags()<CR>", true)
mapkey("n", "<Leader>fp", ":lua require('telescope').extensions.media_files.media_files()<CR>", true)
