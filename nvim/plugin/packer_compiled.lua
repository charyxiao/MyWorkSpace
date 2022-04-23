-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/charyxiao/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/charyxiao/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/charyxiao/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/charyxiao/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/charyxiao/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17conf.comment\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["aleph-nvim"] = {
    config = { "\27LJ\2\n§\1\0\0\5\0\b\0\0146\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0009\4\4\1B\2\2\0016\2\5\0009\2\6\2'\4\a\0B\2\2\1K\0\1\0001autocmd FileType aleph setlocal nofoldenable\bcmd\bvim\topts\nsetup\27aleph.themes.dashboard\naleph\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/aleph-nvim",
    url = "https://github.com/p-z-l/aleph-nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18conf.gitsigns\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nÆ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\1\0\3\21show_end_of_line\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nv\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0004\4\3\0009\5\3\0009\5\4\0059\5\5\5>\5\1\4=\4\a\3B\1\2\1K\0\1\0\fsources\1\0\0\nblack\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20conf.bufferline\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\0¿\tbody\15lsp_expand\"\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\0¿\tjump\"\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2ˇˇB\0\2\1K\0\1\0\0¿\tjumpö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\0¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\0¿\tjump\rjumpable\21select_prev_item\fvisible˙\5\1\0\f\0000\0Z6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0019\5\n\0059\5\v\0055\a\r\0009\b\t\0019\b\f\bB\b\1\2=\b\14\a9\b\t\0019\b\15\bB\b\1\2=\b\16\a9\b\t\0019\b\17\bB\b\1\2=\b\18\a9\b\t\0019\b\19\bB\b\1\2=\b\20\a9\b\t\0019\b\21\b5\n\22\0B\b\2\2=\b\23\a9\b\t\0013\n\24\0005\v\25\0B\b\3\2=\b\26\a9\b\t\0013\n\27\0005\v\28\0B\b\3\2=\b\29\a9\b\t\0013\n\30\0005\v\31\0B\b\3\2=\b \a9\b\t\0013\n!\0005\v\"\0B\b\3\2=\b#\aB\5\2\2=\5\t\0049\5$\0019\5%\0054\a\5\0005\b&\0>\b\1\a5\b'\0>\b\2\a5\b(\0>\b\3\a5\b)\0>\b\4\aB\5\2\2=\5%\4B\2\2\0016\2\0\0'\4*\0B\2\2\0029\2\3\2B\2\1\0016\2\0\0'\4+\0B\2\2\0029\3,\1\18\5\3\0009\3-\3'\6.\0009\a/\2B\a\1\0A\3\2\0012\0\0ÄK\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\19nvim-autopairs\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\1\0\1\tname\fluasnip\fsources\vconfig\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-k>\1\3\0\0\6i\6s\0\n<C-j>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lastplace"] = {
    config = { "\27LJ\2\n⁄\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\30lastplace_ignore_filetype\1\5\0\0\14gitcommit\14gitrebase\bsvn\rhgcommit\29lastplace_ignore_buftype\1\0\1\25lastplace_open_folds\2\1\4\0\0\rquickfix\vnofile\thelp\nsetup\19nvim-lastplace\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-lastplace",
    url = "https://github.com/ethanholz/nvim-lastplace"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17conf.lspconf\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20conf.toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua",
    url = "https://github.com/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14conf.tree\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20conf.treesitter\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedarkpro.nvim"] = {
    config = { "\27LJ\2\nm\0\0\5\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0B\1\1\1K\0\1\0\tload\foptions\1\0\0\1\0\1\17transparency\2\nsetup\15onedarkpro\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/opt/onedarkpro.nvim",
    url = "https://github.com/olimorris/onedarkpro.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["surround.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\19mappings_style\rsurround\nsetup\rsurround\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/surround.nvim",
    url = "https://github.com/ur4ltz/surround.nvim"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\n€\v\0\0\4\0@\0C6\0\0\0009\0\1\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\0015\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0=\3,\0025\3-\0=\3.\0025\3/\0=\0030\0025\0031\0=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0025\0037\0=\0038\0025\0039\0=\3:\0025\3;\0=\3<\0025\3=\0=\3>\2=\2?\1=\1\2\0K\0\1\0\fsymbols\18TypeParameter\1\0\2\ahl\16TSParameter\ticon\tùôè\rOperator\1\0\2\ahl\15TSOperator\ticon\6+\nEvent\1\0\2\ahl\vTSType\ticon\bÔ¨≤\vStruct\1\0\2\ahl\vTSType\ticon\tùì¢\15EnumMember\1\0\2\ahl\fTSField\ticon\bÔÖù\tNull\1\0\2\ahl\vTSType\ticon\tNULL\bKey\1\0\2\ahl\vTSType\ticon\bÔ†Ö\vObject\1\0\2\ahl\vTSType\ticon\b‚¶ø\nArray\1\0\2\ahl\15TSConstant\ticon\bÔô©\fBoolean\1\0\2\ahl\14TSBoolean\ticon\b‚ä®\vNumber\1\0\2\ahl\rTSNumber\ticon\6#\vString\1\0\2\ahl\rTSString\ticon\tùìê\rConstant\1\0\2\ahl\15TSConstant\ticon\bÓà¨\rVariable\1\0\2\ahl\15TSConstant\ticon\bÓûõ\rFunction\1\0\2\ahl\15TSFunction\ticon\bÔÇö\14Interface\1\0\2\ahl\vTSType\ticon\bÔ∞Æ\tEnum\1\0\2\ahl\vTSType\ticon\b‚Ñ∞\16Constructor\1\0\2\ahl\18TSConstructor\ticon\bÓàè\nField\1\0\2\ahl\fTSField\ticon\bÔöß\rProperty\1\0\2\ahl\rTSMethod\ticon\bÓò§\vMethod\1\0\2\ahl\rTSMethod\ticon\a∆í\nClass\1\0\2\ahl\vTSType\ticon\tùìí\fPackage\1\0\2\ahl\16TSNamespace\ticon\bÔ£ñ\14Namespace\1\0\2\ahl\16TSNamespace\ticon\bÔô©\vModule\1\0\2\ahl\16TSNamespace\ticon\bÔö¶\tFile\1\0\0\1\0\2\ahl\nTSURI\ticon\bÔúì\21symbol_blacklist\18lsp_blacklist\fkeymaps\nclose\1\0\6\19focus_location\6o\18goto_location\t<Cr>\18rename_symbol\6r\17code_actions\6a\19toggle_preview\6K\17hover_symbol\14<C-space>\1\3\0\0\n<Esc>\6q\1\0\v\25preview_bg_highlight\nPmenu\nwidth\3<\24show_symbol_details\2\26show_relative_numbers\1\17show_numbers\1\15auto_close\1\19relative_width\2\rposition\nright\17auto_preview\2\16show_guides\2\27highlight_hovered_item\2\20symbols_outline\6g\bvim\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19conf.telescope\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\n®\2\0\0\3\0\6\0\t6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0º\1augroup illuminate_augroup\n                        autocmd!\n                        autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline\n                    augroup END\bcmd\1\4\0\0\rNvimTree\15vista_kind\15toggleterm\27Illuminate_ftblacklist\6g\bvim\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["windline.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18conf.windline\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/windline.nvim",
    url = "https://github.com/windwp/windline.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-lastplace
time([[Config for nvim-lastplace]], true)
try_loadstring("\27LJ\2\n⁄\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\30lastplace_ignore_filetype\1\5\0\0\14gitcommit\14gitrebase\bsvn\rhgcommit\29lastplace_ignore_buftype\1\0\1\25lastplace_open_folds\2\1\4\0\0\rquickfix\vnofile\thelp\nsetup\19nvim-lastplace\frequire\0", "config", "nvim-lastplace")
time([[Config for nvim-lastplace]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19conf.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\0¿\tbody\15lsp_expand\"\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\0¿\tjump\"\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2ˇˇB\0\2\1K\0\1\0\0¿\tjumpö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\0¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\0¿\tjump\rjumpable\21select_prev_item\fvisible˙\5\1\0\f\0000\0Z6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0019\5\n\0059\5\v\0055\a\r\0009\b\t\0019\b\f\bB\b\1\2=\b\14\a9\b\t\0019\b\15\bB\b\1\2=\b\16\a9\b\t\0019\b\17\bB\b\1\2=\b\18\a9\b\t\0019\b\19\bB\b\1\2=\b\20\a9\b\t\0019\b\21\b5\n\22\0B\b\2\2=\b\23\a9\b\t\0013\n\24\0005\v\25\0B\b\3\2=\b\26\a9\b\t\0013\n\27\0005\v\28\0B\b\3\2=\b\29\a9\b\t\0013\n\30\0005\v\31\0B\b\3\2=\b \a9\b\t\0013\n!\0005\v\"\0B\b\3\2=\b#\aB\5\2\2=\5\t\0049\5$\0019\5%\0054\a\5\0005\b&\0>\b\1\a5\b'\0>\b\2\a5\b(\0>\b\3\a5\b)\0>\b\4\aB\5\2\2=\5%\4B\2\2\0016\2\0\0'\4*\0B\2\2\0029\2\3\2B\2\1\0016\2\0\0'\4+\0B\2\2\0029\3,\1\18\5\3\0009\3-\3'\6.\0009\a/\2B\a\1\0A\3\2\0012\0\0ÄK\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\19nvim-autopairs\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\1\0\1\tname\fluasnip\fsources\vconfig\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-k>\1\3\0\0\6i\6s\0\n<C-j>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\2\n®\2\0\0\3\0\6\0\t6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0º\1augroup illuminate_augroup\n                        autocmd!\n                        autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline\n                    augroup END\bcmd\1\4\0\0\rNvimTree\15vista_kind\15toggleterm\27Illuminate_ftblacklist\6g\bvim\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18conf.gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17conf.comment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: windline.nvim
time([[Config for windline.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18conf.windline\frequire\0", "config", "windline.nvim")
time([[Config for windline.nvim]], false)
-- Config for: nvim-toggleterm.lua
time([[Config for nvim-toggleterm.lua]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20conf.toggleterm\frequire\0", "config", "nvim-toggleterm.lua")
time([[Config for nvim-toggleterm.lua]], false)
-- Config for: aleph-nvim
time([[Config for aleph-nvim]], true)
try_loadstring("\27LJ\2\n§\1\0\0\5\0\b\0\0146\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0009\4\4\1B\2\2\0016\2\5\0009\2\6\2'\4\a\0B\2\2\1K\0\1\0001autocmd FileType aleph setlocal nofoldenable\bcmd\bvim\topts\nsetup\27aleph.themes.dashboard\naleph\frequire\0", "config", "aleph-nvim")
time([[Config for aleph-nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nÆ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\1\0\3\21show_end_of_line\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20conf.bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: surround.nvim
time([[Config for surround.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\19mappings_style\rsurround\nsetup\rsurround\frequire\0", "config", "surround.nvim")
time([[Config for surround.nvim]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n€\v\0\0\4\0@\0C6\0\0\0009\0\1\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\0015\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0=\3,\0025\3-\0=\3.\0025\3/\0=\0030\0025\0031\0=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0025\0037\0=\0038\0025\0039\0=\3:\0025\3;\0=\3<\0025\3=\0=\3>\2=\2?\1=\1\2\0K\0\1\0\fsymbols\18TypeParameter\1\0\2\ahl\16TSParameter\ticon\tùôè\rOperator\1\0\2\ahl\15TSOperator\ticon\6+\nEvent\1\0\2\ahl\vTSType\ticon\bÔ¨≤\vStruct\1\0\2\ahl\vTSType\ticon\tùì¢\15EnumMember\1\0\2\ahl\fTSField\ticon\bÔÖù\tNull\1\0\2\ahl\vTSType\ticon\tNULL\bKey\1\0\2\ahl\vTSType\ticon\bÔ†Ö\vObject\1\0\2\ahl\vTSType\ticon\b‚¶ø\nArray\1\0\2\ahl\15TSConstant\ticon\bÔô©\fBoolean\1\0\2\ahl\14TSBoolean\ticon\b‚ä®\vNumber\1\0\2\ahl\rTSNumber\ticon\6#\vString\1\0\2\ahl\rTSString\ticon\tùìê\rConstant\1\0\2\ahl\15TSConstant\ticon\bÓà¨\rVariable\1\0\2\ahl\15TSConstant\ticon\bÓûõ\rFunction\1\0\2\ahl\15TSFunction\ticon\bÔÇö\14Interface\1\0\2\ahl\vTSType\ticon\bÔ∞Æ\tEnum\1\0\2\ahl\vTSType\ticon\b‚Ñ∞\16Constructor\1\0\2\ahl\18TSConstructor\ticon\bÓàè\nField\1\0\2\ahl\fTSField\ticon\bÔöß\rProperty\1\0\2\ahl\rTSMethod\ticon\bÓò§\vMethod\1\0\2\ahl\rTSMethod\ticon\a∆í\nClass\1\0\2\ahl\vTSType\ticon\tùìí\fPackage\1\0\2\ahl\16TSNamespace\ticon\bÔ£ñ\14Namespace\1\0\2\ahl\16TSNamespace\ticon\bÔô©\vModule\1\0\2\ahl\16TSNamespace\ticon\bÔö¶\tFile\1\0\0\1\0\2\ahl\nTSURI\ticon\bÔúì\21symbol_blacklist\18lsp_blacklist\fkeymaps\nclose\1\0\6\19focus_location\6o\18goto_location\t<Cr>\18rename_symbol\6r\17code_actions\6a\19toggle_preview\6K\17hover_symbol\14<C-space>\1\3\0\0\n<Esc>\6q\1\0\v\25preview_bg_highlight\nPmenu\nwidth\3<\24show_symbol_details\2\26show_relative_numbers\1\17show_numbers\1\15auto_close\1\19relative_width\2\rposition\nright\17auto_preview\2\16show_guides\2\27highlight_hovered_item\2\20symbols_outline\6g\bvim\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20conf.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17conf.lspconf\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14conf.tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\nv\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0004\4\3\0009\5\3\0009\5\4\0059\5\5\5>\5\1\4=\4\a\3B\1\2\1K\0\1\0\fsources\1\0\0\nblack\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'onedarkpro.nvim'}, { event = "BufEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
