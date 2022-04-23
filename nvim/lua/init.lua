-- setup space as leader key
vim.mapleader = ","
vim.g.mapleader = ","

-- load plugins & keymaps
require("plugins")
require("keymaps")

-- tab & listchars
vim.o.fdm = "marker"
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.list = true
-- vim.opt.listchars = {tab='→\\', eol='↵', trail='·', space='⋅'}
vim.opt.listchars = {tab='→\\', trail='·', space='⋅'}

-- search
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- others
vim.o.number = true
vim.o.cursorline = true
vim.o.swapfile = false
vim.o.termguicolors = true
vim.o.wrap = true
vim.o.foldenable = false
vim.o.signcolumn = "yes"
vim.o.completeopt = "menu,menuone,noselect"
vim.o.termguicolors = true

-- disable some useless standard plugins to save startup time
-- these features have been better covered by plugins
vim.g.loaded_gzip = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_getscript = 1
vim.g.loaded_getscriptPlugin = 1
vim.g.loaded_vimball = 1
vim.g.loaded_vimballPlugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrwSettings = 1
