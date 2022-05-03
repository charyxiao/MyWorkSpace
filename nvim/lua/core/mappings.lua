local map = require("core.utils").map

map("n", "/", "/\\v")
map("v", "/", "/\\v")
map("n", "<leader>/", ":nohls<CR>")
map("n", "<leader><space>", ":% s/\\s/+$//g<CR>")

map("v", "<", "<gv")
map("v", ">", ">gv")

map("", "<c-k>", "<c-w>k")
map("", "<c-j>", "<c-w>j")
map("", "<c-h>", "<c-w>h")
map("", "<c-l>", "<c-w>l")

map("n", "wj", ":resize -3<CR>")
map("n", "wk", ":resize +3<CR>")
map("n", "wl", ":vertical:resize -5<CR>")
map("n", "wh", ":vertical:resize +5<CR>")

map("n", "<leader>p", '"+p')

map("n", "gb", '<C-o>')

map("n", "<leader>x", ":lua require('core.utils').close_buffer() <CR>") -- close buffer

-- plugin related mappings
local M = {}

-- vim-bookmarks
-- mm :Bookmark Toggle
-- mi :BookmarkAnnotate <TEXT>
-- mc :BookmarkClear
-- mx :BookmarkClearAll
-- ma :BookmarkShowAll
-- mn :BookmarkNext
-- mp :BookmarkPrev

map("", "<Leader>a", ":EasyAlign<CR>")

M.nvimtree = function()
    map("n", "<leader>n", ":NvimTreeToggle<CR>")
end

M.hlslens = function()
    map("n", "n", "<Cmd>execute('normal!'.v:count1.'n')<CR><Cmd>lua require('hlslens').start()<CR>")
    map("n", "N", "<Cmd>execute('normal!'.v:count1.'N')<CR><Cmd>lua require('hlslens').start()<CR>")
    map("n", "*", "*<Cmd>lua require('hlslens').start()<CR>")
    map("n", "#", "#<Cmd>lua require('hlslens').start()<CR>")
    map("n", "g*", "g*<Cmd>lua require('hlslens').start()<CR>")
    map("n", "g#", "g#<Cmd>lua require('hlslens').start()<CR>")
end

M.hop = function()
    -- 搜索并跳转到单词
    map("n", "<leader>jw", "<cmd>HopWord<CR>")
    -- 搜索并跳转到行
    map("n", "<leader>jl", "<cmd>HopLine<CR>")
    -- 搜索并跳转到字符
    map("n", "<leader>js", "<cmd>HopChar1<CR>")
end

-- suround
-- cs 字符 字符：修改包裹
-- ds 字符     ：删除包裹
-- ys 范围 字符：增加包裹

M.telescope = function()
    -- map("n", "<leader>fb", ":Telescope buffers <CR>")
    map("n", "<leader>ff", ":Telescope find_files <CR>")
    map("n", "<leader>fa", ":Telescope find_files follow=true no_ignore=true hidden=true <CR>")
    map("n", "<leader>cm", ":Telescope git_commits <CR>")
    map("n", "<leader>gt", ":Telescope git_status <CR>")
    map("n", "<leader>fh", ":Telescope help_tags <CR>")
    map("n", "<leader>fw", ":Telescope live_grep <CR>")
    map("n", "<leader>fo", ":Telescope oldfiles <CR>")
    map("n", "<leader>fp", ":Telescope projects <CR>")
    map("n", "<leader>fb", ":Telescope vim_bookmarks <CR>")
end

M.bufferline = function()
    map("n", "<TAB>", ":BufferLineCycleNext <CR>")
    map("n", "<S-Tab>", ":BufferLineCyclePrev <CR>")
end

M.winshift = function()
    -- Start Win-Move mode:
    map("n", "<leader>wb", ":WinShift <CR>")

    -- Swap two windows:
    map("n", "<leader>ws", ":WinShift swap <CR>")

    -- If you don't want to use Win-Move mode you can create mappings for calling the
    -- move commands directly:
    map("n", "<leader>wl", ":WinShift left <CR>")
    map("n", "<leader>wh", ":WinShift right <CR>")
    map("n", "<leader>wj", ":WinShift down <CR>")
    map("n", "<leader>wk", ":WinShift up <CR>")
end

M.lspconfig = function()
    local opts = { noremap = true, silent = true }
    map("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", opts)
    map("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
    map("n", "gh", ":Lspsaga hover_doc<CR>", opts)
    map("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts)
    map("n", "<C-k>", ":lua vim.lsp.buf.signature_help()<CR>", opts)
    map("n", "<space>wa", ":lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
    map("n", "<space>wr", ":lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
    map("n", "<space>wl", ":lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
    map("n", "<space>D", ":lua vim.lsp.buf.type_definition()<CR>", opts)
    map("n", "<space>rn", ":Lspsaga rename<CR>", opts)
    map("n", "<space>ca", ":Lspsaga code_action<CR>", opts)
    map("n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)
    map("n", "<space>e", ":Lspsaga show_line_diagnostics<CR>", opts)
    map("n", "[d", ":Lspsaga diagnostic_jump_prev<CR>", opts)
    map("n", "]d", ":Lspsaga diagnostic_jump_next<CR>", opts)
    map("n", "<space>q", ":lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
    map("n", "<space>f", ":lua vim.lsp.buf.formatting()<CR>", opts)
end

return M
