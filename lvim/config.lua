-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
lvim.keys.insert_mode["kj"] = false

-- add your own keymapping
lvim.keys.normal_mode["<leader>,"] = ":nohls<cr>"
lvim.keys.normal_mode["/"] = "/\\v"
lvim.keys.normal_mode["<leader><space>"] = ":% s/\\s/+$//g<cr>"
lvim.keys.normal_mode["wj"] = ":resize -3<cr>"
lvim.keys.normal_mode["wk"] = ":resize +3<cr>"
lvim.keys.normal_mode["wl"] = ":vertical:resize -5<cr>"
lvim.keys.normal_mode["wh"] = ":vertical:resize +5<cr>"
lvim.keys.normal_mode["<leader>p"] = '"+p'
lvim.keys.normal_mode["gb"] = "<C-o>"
package.path = package.path .. ";/Users/charyxiao/.config/lvim/?.lua"
lvim.keys.normal_mode["<leader>x"] = ":lua require('utils').close_buffer() <cr>"

-- nvimtree
lvim.keys.normal_mode["<leader>n"] = ":NvimTreeToggle<cr>"

-- hop
lvim.keys.normal_mode["<leader>js"] = ":HopChar1<cr>"
lvim.keys.normal_mode["<leader>jw"] = ":HopWord<cr>"
lvim.keys.normal_mode["<leader>jl"] = ":HopLine<cr>"

-- hlslens
lvim.keys.normal_mode["n"] = "<Cmd>execute('normal!'.v:count1.'n')<cr><Cmd>lua require('hlslens').start()<cr>"
lvim.keys.normal_mode["N"] = "<Cmd>execute('normal!'.v:count1.'N')<cr><Cmd>lua require('hlslens').start()<cr>"
lvim.keys.normal_mode["*"] = "*<Cmd>lua require('hlslens').start()<cr>"
lvim.keys.normal_mode["#"] = "#<Cmd>lua require('hlslens').start()<cr>"
lvim.keys.normal_mode["g*"] = "g*<Cmd>lua require('hlslens').start()<cr>"
lvim.keys.normal_mode["g#"] = "g#<Cmd>lua require('hlslens').start()<cr>"

-- telescope
lvim.keys.normal_mode["<leader>f"] = false
lvim.builtin.which_key.mappings["f"] = {
  name = "+Telescope",
  f = { ":Telescope find_files <cr>", "Find Files" },
  a = { ":Telescope find_files follow=true no_ignore=true hidden=true <cr>", "Find All Files" },
  c = { ":Telescope git_commits <cr>", "Find git-commits" },
  t = { ":Telescope git_status <cr>", "Find git-status" },
  h = { ":Telescope help_tags <cr>", "Find help tags" },
  w = { ":Telescope live_grep <cr>", "Find Word" },
  p = { ":Telescope projects <cr>", "Find Project" },
  m = { ":Telescope vim_bookmarks <cr>", "Find bookmarks" },
  o = { ":Telescope oldfiles <cr>", "Find oldfiles" },
  b = { ":Telescope buffers <cr>", "Find Buffers" },
}

-- bufferline
lvim.keys.normal_mode["<TAB>"] = ":BufferLineCycleNext <cr>"
lvim.keys.normal_mode["<S-TAB>"] = ":BufferLineCyclePrev <cr>"

-- easyalign
lvim.keys.visual_block_mode["<leader>a"] = ":EasyAlign<cr>"

-- suround
-- cs 字符 字符：修改包裹
-- ds 字符     ：删除包裹
-- ys 范围 字符：增加包裹

-- vim-bookmarks
-- mm :Bookmark Toggle
-- mi :BookmarkAnnotate <TEXT>
-- mc :BookmarkClear
-- mx :BookmarkClearAll
-- ma :BookmarkShowAll
-- mn :BookmarkNext
-- mp :BookmarkPrev

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "cpp",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- LSP
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup { { exe = "clang-format", args = {} } }
require("clangd")

-- Additional Plugins
lvim.plugins = {
  { "junegunn/vim-easy-align" },
  { "tpope/vim-repeat" },
  { "kevinhwang91/nvim-hlslens" },
  { "p00f/nvim-ts-rainbow" },
  { "tpope/vim-surround" },
  {
    "phaazon/hop.nvim",
    config = function()
      require("hop").setup()
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      require "lsp_signature".setup()
      require "lsp_signature".on_attach()
    end,
    event = "InsertEnter"
  },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      vim.g.indentLine_enabled = 1
      vim.g.indent_blankline_char = "▏"
      vim.g.indent_blankline_filetype_exclude = { "help", "terminal", "dashboard" }
      vim.g.indent_blankline_buftype_exclude = { "terminal" }
      vim.g.indent_blankline_show_trailing_blankline_indent = false
      vim.g.indent_blankline_show_first_indent_level = false
    end
  },
  {
    "ethanholz/nvim-lastplace",
    config = function()
      require("nvim-lastplace").setup({
        lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
        lastplace_ignore_filetype = {
          "gitcommit", "gitrebase", "svn", "hgcommit",
        },
        lastplace_open_folds = true,
      })
    end,
  },
  {
    "folke/todo-comments.nvim",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "itchyny/vim-cursorword",
    config = function()
      vim.api.nvim_command("augroup user_plugin_cursorword")
      vim.api.nvim_command("autocmd!")
      vim.api.nvim_command("autocmd FileType NvimTree,lspsagafinder,dashboard,vista let b:cursorword = 0")
      vim.api.nvim_command("autocmd WinEnter * if &diff || &pvw | let b:cursorword = 0 | endif")
      vim.api.nvim_command("autocmd InsertEnter * let b:cursorword = 0")
      vim.api.nvim_command("autocmd InsertLeave * let b:cursorword = 1")
      vim.api.nvim_command("augroup END")
    end
  },
  {
    "dinhhuy258/vim-local-history",
    config = function()
      vim.cmd([[
        let g:local_history_enabled=1
        let g:local_history_path="~/.vim_local_history"
        let g:local_history_width=30
        let g:local_history_new_change_delay=300    "5mins
        let g:local_history_mappings = {
          \ "move_older": ["j"],
          \ "move_newer": ["k"],
          \ "move_oldest": ["G"],
          \ "move_newest": ["gg"],
          \ "revert": ["<cr>"],
          \ "diff": ["d"],
          \ "delete": ["D"],
          \ "quit": ["q", "Q"],
          \ }
      ]])
    end
  },
  { "MattesGroeger/vim-bookmarks" },
  {
    "tom-anders/telescope-vim-bookmarks.nvim",
    config = function()
      local telescope = require("telescope")
      telescope.load_extension('vim_bookmarks')
    end
  },
  {
    "hrsh7th/cmp-cmdline",
    config = function()
      local cmp = require("cmp")
      cmp.setup.cmdline('/', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' }
        }
      })
      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources(
          { { name = 'cmdline' } },
          { { name = 'path' } })
      })
    end
  },
}
