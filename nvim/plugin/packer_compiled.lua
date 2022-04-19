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
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins-config.gitsigns\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\ns\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\1\0\1\tchar\b‚îä\nsetup\21indent_blankline\frequire\0" },
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
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15bufferline\frequire\0" },
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
  ["nvim-comment"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireO\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\thook\1\0\0\0\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimË\t\1\2\n\0%\0j3\2\0\0005\3\1\0\18\4\2\0'\6\2\0'\a\3\0'\b\4\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\5\0'\b\6\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\a\0'\b\b\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\t\0'\b\n\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\v\0'\b\f\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\r\0'\b\14\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\15\0'\b\16\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\17\0'\b\18\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\19\0'\b\20\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\21\0'\b\22\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\23\0'\b\24\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\25\0'\b\26\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\27\0'\b\28\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\29\0'\b\30\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\31\0'\b \0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a!\0'\b\"\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a#\0'\b$\0\18\t\3\0B\4\5\0012\0\0ÄK\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q*<cmd>Lspsaga diagnostic_jump_next<CR>\a]d*<cmd>Lspsaga diagnostic_jump_prev<CR>\a[d+<cmd>Lspsaga show_line_diagnostics<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr!<cmd>Lspsaga code_action<CR>\14<space>ca\28<cmd>Lspsaga rename<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi\31<Cmd>Lspsaga hover_doc<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\fnoremap\2\vsilent\2\0¬\2\1\0\f\0\16\0#6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\1B\1\1\0013\1\4\0006\2\5\0009\2\6\0029\2\a\0029\2\b\2B\2\1\0026\3\0\0'\5\t\0B\3\2\0029\3\n\3\18\5\2\0B\3\2\2\18\2\3\0005\3\v\0006\4\f\0\18\6\3\0B\4\2\4X\a\6Ä8\t\b\0009\t\3\t5\v\r\0=\1\14\v=\2\15\vB\t\2\1E\a\3\3R\a¯K\0\1\0\17capabilities\14on_attach\1\0\0\vipairs\1\5\0\0\vclangd\fpyright\ngopls\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\nsetup\flspsaga\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n2\0\0\4\0\3\0\0066\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\frequire\vnotify\bvim\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\2\nÓ\2\0\0\5\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\3\vborder\vsingle\rwinblend\3\3\vheight\3d\nshell\6o\bvim\20shade_filetypes\1\0\t\17open_mapping\n<c-\\>\tsize\3\15\18close_on_exit\2\14direction\15horizontal\17persist_size\2\20insert_mappings\2\20start_in_insert\2\20shade_terminals\2\17hide_numbers\2\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua",
    url = "https://github.com/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nõ\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\factions\14open_file\1\0\0\1\0\1\17quit_on_open\2\24update_focused_file\1\0\0\1\0\1\venable\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n∞\3\0\0\4\0\18\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\0016\0\f\0009\0\r\0'\1\15\0=\1\14\0006\0\f\0009\0\r\0'\1\17\0=\1\16\0K\0\1\0\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\6o\bvim\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\14highlight\1\0\1\venable\2\fautotag\1\0\1\venable\2\21ensure_installed\1\0\0\1\23\0\0\ago\tbash\6c\bcpp\ncmake\blua\thtml\bcss\tscss\15javascript\15typescript\btsx\bvue\vsvelte\tjson\njson5\njsonc\trust\tjava\vkotlin\vpython\fcomment\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
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
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\n€\v\0\0\4\0@\0C6\0\0\0009\0\1\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\0015\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0=\3,\0025\3-\0=\3.\0025\3/\0=\0030\0025\0031\0=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0025\0037\0=\0038\0025\0039\0=\3:\0025\3;\0=\3<\0025\3=\0=\3>\2=\2?\1=\1\2\0K\0\1\0\fsymbols\18TypeParameter\1\0\2\ahl\16TSParameter\ticon\tùôè\rOperator\1\0\2\ahl\15TSOperator\ticon\6+\nEvent\1\0\2\ahl\vTSType\ticon\bÔ¨≤\vStruct\1\0\2\ahl\vTSType\ticon\tùì¢\15EnumMember\1\0\2\ahl\fTSField\ticon\bÔÖù\tNull\1\0\2\ahl\vTSType\ticon\tNULL\bKey\1\0\2\ahl\vTSType\ticon\bÔ†Ö\vObject\1\0\2\ahl\vTSType\ticon\b‚¶ø\nArray\1\0\2\ahl\15TSConstant\ticon\bÔô©\fBoolean\1\0\2\ahl\14TSBoolean\ticon\b‚ä®\vNumber\1\0\2\ahl\rTSNumber\ticon\6#\vString\1\0\2\ahl\rTSString\ticon\tùìê\rConstant\1\0\2\ahl\15TSConstant\ticon\bÓà¨\rVariable\1\0\2\ahl\15TSConstant\ticon\bÓûõ\rFunction\1\0\2\ahl\15TSFunction\ticon\bÔÇö\14Interface\1\0\2\ahl\vTSType\ticon\bÔ∞Æ\tEnum\1\0\2\ahl\vTSType\ticon\b‚Ñ∞\16Constructor\1\0\2\ahl\18TSConstructor\ticon\bÓàè\nField\1\0\2\ahl\fTSField\ticon\bÔöß\rProperty\1\0\2\ahl\rTSMethod\ticon\bÓò§\vMethod\1\0\2\ahl\rTSMethod\ticon\a∆í\nClass\1\0\2\ahl\vTSType\ticon\tùìí\fPackage\1\0\2\ahl\16TSNamespace\ticon\bÔ£ñ\14Namespace\1\0\2\ahl\16TSNamespace\ticon\bÔô©\vModule\1\0\2\ahl\16TSNamespace\ticon\bÔö¶\tFile\1\0\0\1\0\2\ahl\nTSURI\ticon\bÔúì\21symbol_blacklist\18lsp_blacklist\fkeymaps\nclose\1\0\6\19toggle_preview\6K\19focus_location\6o\17hover_symbol\14<C-space>\18goto_location\t<Cr>\17code_actions\6a\18rename_symbol\6r\1\3\0\0\n<Esc>\6q\1\0\v\nwidth\3<\24show_symbol_details\2\26show_relative_numbers\1\17show_numbers\1\15auto_close\1\19relative_width\2\25preview_bg_highlight\nPmenu\rposition\nright\17auto_preview\2\16show_guides\2\27highlight_hovered_item\2\20symbols_outline\6g\bvim\0" },
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
    config = { "\27LJ\2\n≠\6\0\0\b\0\30\0=6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\0035\4\v\0005\5\t\0005\6\b\0=\6\n\5=\5\f\4=\4\r\3B\1\2\0019\1\14\0'\3\f\0B\1\2\0015\1\15\0006\2\16\0009\2\17\0029\2\18\2'\4\19\0'\5\20\0'\6\21\0\18\a\1\0B\2\5\0016\2\16\0009\2\17\0029\2\18\2'\4\19\0'\5\22\0'\6\23\0\18\a\1\0B\2\5\0016\2\16\0009\2\17\0029\2\18\2'\4\19\0'\5\24\0'\6\25\0\18\a\1\0B\2\5\0016\2\16\0009\2\17\0029\2\18\2'\4\19\0'\5\26\0'\6\27\0\18\a\1\0B\2\5\0016\2\16\0009\2\17\0029\2\18\2'\4\19\0'\5\28\0'\6\29\0\18\a\1\0B\2\5\1K\0\1\0K<Cmd>lua require('telescope').extensions.media_files.media_files()<CR>\15<Leader>sp:<Cmd>lua require('telescope.builtin').help_tags()<CR>\15<Leader>sh8<Cmd>lua require('telescope.builtin').buffers()<CR>\15<Leader>sb:<Cmd>lua require('telescope.builtin').live_grep()<CR>\15<Leader>sg;<Cmd>lua require('telescope.builtin').find_files()<CR>\15<Leader>sf\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\19load_extension\15extensions\16media_files\1\0\0\14filetypes\1\0\1\rfind_cmd\arg\1\5\0\0\bpng\twebp\bjpg\tjpeg\rdefaults\1\0\0\16borderchars\1\0\0\1\t\0\0\b‚ïê\b‚ïë\b‚ïê\b‚ïë\b‚ïî\b‚ïó\b‚ïù\b‚ïö\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
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
    config = { "\27LJ\2\n8\0\0\3\1\2\0\b4\0\3\0005\1\0\0-\2\0\0009\2\1\2:\2\2\2>\2\2\1>\1\1\0L\0\2\0\3¿\tmode\1\2\0\0\n ÔåÉ •\2\0\1\6\1\v\0\31-\1\0\0009\1\0\1\18\3\0\0B\1\2\2\15\0\1\0X\2\23Ä4\1\4\0005\2\3\0-\3\0\0009\3\1\0035\5\2\0B\3\2\2>\3\1\2>\2\1\0015\2\6\0-\3\0\0009\3\4\0035\5\5\0B\3\2\2>\3\1\2>\2\2\0015\2\t\0-\3\0\0009\3\a\0035\5\b\0B\3\2\2>\3\1\2>\2\3\1L\1\2\0'\1\n\0L\1\2\0\4¿\5\1\3\0\0\0\tblue\1\0\2\vformat\f Ôüª %s\14show_zero\2\rlsp_hint\1\3\0\0\0\vyellow\1\0\2\vformat\f ÔÅ± %s\14show_zero\2\16lsp_warning\1\3\0\0\0\bred\1\0\2\vformat\f ÔÅó %s\14show_zero\2\14lsp_error\14check_lspÄ\3\0\3\t\2\15\0005-\3\0\0\1\3\2\0X\3\30Ä4\3\6\0005\4\3\0-\5\1\0009\5\0\5'\a\1\0'\b\2\0B\5\3\2>\5\1\4>\4\1\0035\4\5\0-\5\1\0009\5\4\5>\5\1\4>\4\2\0035\4\a\0-\5\1\0009\5\6\5>\5\1\4>\4\3\0035\4\b\0>\4\4\0035\4\v\0-\5\1\0009\5\t\5'\a\n\0B\5\2\2>\5\1\4>\4\5\3L\3\2\0X\3\19Ä4\3\4\0005\4\f\0-\5\1\0009\5\0\5'\a\1\0'\b\2\0B\5\3\2>\5\1\4>\4\1\0035\4\r\0>\4\2\0035\4\14\0-\5\1\0009\5\t\5'\a\n\0B\5\2\2>\5\1\4>\4\3\3L\3\2\0K\0\1\0\b¿\2¿\1\3\0\0\0\fmagenta\1\3\0\0\6 \5\1\3\0\0\0\fmagenta\1\3\0\0\0\fmagenta\tÔÅÄ \18file_modified\1\3\0\0\6 \5\1\3\0\0\0\5\17progress_lua\1\3\0\0\0\nwhite\17line_col_lua\1\3\0\0\0\fmagenta\vunique\14[No Name]\20cache_file_namev\0\3\6\2\4\0\16-\3\0\0\1\2\3\0X\3\fÄ4\3\3\0005\4\1\0-\5\1\0009\5\0\5>\5\1\4>\4\1\0035\4\3\0-\5\1\0009\5\2\5>\5\1\4>\4\2\3L\3\2\0K\0\1\0\b¿\2¿\1\3\0\0\0\5\17progress_lua\1\3\0\0\0\nwhite\17line_col_lua¶\2\0\1\6\1\v\0\31-\1\0\0009\1\0\1\18\3\0\0B\1\2\2\15\0\1\0X\2\23Ä4\1\4\0005\2\3\0-\3\0\0009\3\1\0035\5\2\0B\3\2\2>\3\1\2>\2\1\0015\2\6\0-\3\0\0009\3\4\0035\5\5\0B\3\2\2>\3\1\2>\2\2\0015\2\t\0-\3\0\0009\3\a\0035\5\b\0B\3\2\2>\3\1\2>\2\3\1L\1\2\0'\1\n\0L\1\2\0\5¿\5\1\3\0\0\0\tblue\1\0\2\vformat\v Ôßâ%s\14show_zero\2\17diff_changed\1\3\0\0\0\bred\1\0\2\vformat\f ÔÖÜ %s\14show_zero\2\17diff_removed\1\3\0\0\0\ngreen\1\0\2\vformat\f ÔÉæ %s\14show_zero\2\15diff_added\vis_gitE\0\0\3\0\5\0\a6\0\0\0009\0\1\0009\0\2\0005\2\3\0B\0\2\0029\0\4\0L\0\2\0\ntitle\1\0\1\ntitle\3\0\14getqflist\afn\bvim≠\1\0\1\6\2\6\0\23-\1\0\0009\1\0\1\18\3\0\0B\1\2\2\15\0\1\0X\2\bÄ4\1\3\0005\2\2\0-\3\0\0009\3\1\3B\3\1\2>\3\1\2>\2\1\1L\1\2\0004\1\3\0005\2\5\0-\3\1\0009\3\3\0035\5\4\0B\3\2\2>\3\1\2>\2\1\1L\1\2\0\4¿\2¿\1\3\0\0\0\fmagenta\1\0\1\ticon\2\20cache_file_type\1\3\0\0\0\fmagenta\rlsp_name\14check_lsp•\1\0\1\2\0\f\0\15'\1\1\0=\1\0\0'\1\1\0=\1\2\0'\1\4\0=\1\3\0'\1\1\0=\1\5\0'\1\a\0=\1\6\0'\1\t\0=\1\b\0'\1\v\0=\1\n\0L\0\2\0\f#98c379\ngreen\f#7385e2\vyellow\f#6677dd\fmagenta\nblack\f#bbbbbb\15InactiveFg\15InactiveBg\f#282c34\rActiveBgî\18\1\0\17\0t\0ı\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\4\0009\3\5\0039\3\6\0036\4\0\0'\6\a\0B\4\2\0026\5\0\0'\a\b\0B\5\2\0025\6\n\0005\a\t\0=\a\v\0065\a\f\0=\a\r\0065\a\14\0=\a\15\0065\a\16\0=\a\17\0064\a\0\0)\bZ\0005\t\19\0009\n\18\2>\n\1\t=\t\18\a5\t\21\0=\t\20\a5\t\23\0005\n\22\0=\n\24\t5\n\25\0=\n\26\t5\n\27\0=\n\28\t5\n\29\0=\n\30\t5\n\31\0=\n \t5\n\"\0=\t#\n3\v$\0=\v%\n=\n!\a5\n'\0005\v)\0005\f(\0=\f*\v5\f+\0=\f,\v5\f-\0=\f.\v=\v#\n=\b/\n3\v0\0=\v%\n=\n&\a5\n2\0005\v3\0009\f\v\6=\f4\v5\f5\0=\f6\v5\f7\0=\f8\v=\v#\n3\v9\0=\v%\n=\n1\a5\n>\0005\v;\0009\f\v\6=\f4\v5\f<\0=\f6\v5\f=\0=\f8\v=\v#\n3\v?\0=\v%\n=\n:\a5\nA\0005\vC\0005\fB\0=\fD\v5\fE\0=\f*\v5\fF\0=\f.\v=\v#\n=\b/\n3\vG\0=\v%\n=\n@\a5\nI\0005\vH\0=\vJ\n4\v\n\0005\fK\0005\rL\0>\r\2\f>\f\1\v4\f\3\0009\rM\0019\rN\r>\r\1\f5\rO\0>\r\2\f>\f\2\v4\f\3\0003\rP\0>\r\1\f5\rQ\0>\r\2\f>\f\3\v5\fR\0005\rS\0>\r\2\f>\f\4\v4\f\3\0009\rM\0019\rN\r>\r\1\f5\rT\0>\r\2\f>\f\5\v5\fU\0005\rV\0>\r\2\f>\f\6\v9\f\18\a>\f\a\v4\f\3\0009\rM\0019\rN\r>\r\1\f5\rW\0>\r\2\f>\f\b\v5\fX\0005\rY\0>\r\2\f>\f\t\v=\vZ\n5\v\\\0005\f[\0=\fJ\v4\f\3\0005\r]\0005\14^\0>\14\2\r>\r\1\f4\r\3\0009\14M\0019\14N\14>\14\1\r5\14_\0>\14\2\r>\r\2\f=\fZ\v5\fa\0=\b/\f5\rc\0005\14b\0=\0148\r=\r#\f3\rd\0=\r%\f=\f`\a5\ff\0005\re\0=\rJ\f4\r\n\0009\14!\a>\14\1\r9\0141\a>\14\2\r9\14&\a>\14\3\r9\14\18\a>\14\4\r9\14:\a>\14\5\r9\14`\a>\14\6\r9\14@\a>\14\a\r4\14\4\0009\15g\5B\15\1\2>\15\1\0145\15h\0>\15\2\14>\b\3\14>\14\b\r5\14i\0009\15\v\6>\15\2\14>\14\t\r=\rZ\f4\r\a\0004\14\3\0009\15j\2>\15\1\0149\15\15\6>\15\2\14>\14\1\r9\14k\a>\14\2\r9\14\18\a>\14\3\r9\14\18\a>\14\4\r4\14\3\0009\15l\2>\15\1\0149\15\15\6>\15\2\14>\14\5\r4\14\3\0009\15m\2>\15\1\0149\15\15\6>\15\2\14>\14\6\r=\rn\f9\ro\0005\15q\0003\16p\0=\16r\0154\16\4\0>\f\1\16>\n\2\16>\v\3\16=\16s\15B\r\2\0012\0\0ÄK\0\1\0\16statuslines\16colors_name\1\0\0\0\nsetup\rinactive\rprogress\rline_col\23file_name_inactive\19full_file_name\1\2\0\0\6 \1\3\0\0\fmagenta\nblack\15git_branch\1\0\0\1\2\0\0\fdefault\0\1\0\0\1\3\0\0\fmagenta\nblack\1\0\1\tname\rlsp_name\rlsp_name\1\3\0\0\bred\nblack\1\3\0\0\nblack\bred\1\2\0\0\n Ôêî \1\0\2\21show_last_status\2\18always_active\2\1\2\0\0\rNvimTree\vactive\1\3\0\0\nwhite\nblack\1\2\0\0\nüßõ \1\3\0\0\15InactiveBg\nblack\1\3\0\0\15InactiveFg\15InactiveBg\1\2\0\0\6 \1\3\0\0\16black_light\15InactiveBg\1\3\0\0\tcyan\16black_light\1\2\0\0\17 Total : %L \1\3\0\0\tcyan\16black_light\0\1\3\0\0\nblack\16black_light\16slant_right\15separators\1\3\0\0\nwhite\nblack\1\2\0\0\19üö¶ Quickfix \14filetypes\1\0\2\21show_last_status\2\18always_active\2\1\3\0\0\aqf\fTrouble\0\1\3\0\0\tblue\nblack\1\3\0\0\bred\nblack\ngreen\1\0\0\1\3\0\0\ngreen\nblack\1\0\1\tname\bgit\bgit\0\1\0\0\1\3\0\0\fmagenta\nblack\1\3\0\0\nwhite\nblack\1\0\0\15file_right\0\fmagenta\1\3\0\0\fmagenta\nblack\nwhite\1\3\0\0\nwhite\nblack\fdefault\1\0\0\1\0\1\tname\tfile\tfile\0\nwidth\tblue\1\3\0\0\tblue\nblack\vyellow\1\3\0\0\vyellow\nblack\bred\1\0\0\1\3\0\0\bred\nblack\1\0\1\tname\15diagnostic\16lsp_diagnos\ttext\0\14hl_colors\1\0\1\tname\fvi_mode\fvi_mode\fCommand\1\3\0\0\fmagenta\nblack\fReplace\1\3\0\0\15blue_light\nblack\vVisual\1\3\0\0\vyellow\nblack\vInsert\1\3\0\0\ngreen\nblack\vNormal\1\0\0\1\3\0\0\tblue\nblack\1\3\0\0\6 \15StatusLine\abg\1\3\0\0\0\5\fdivider\vActive\1\3\0\0\rActiveFg\rActiveBg\rInactive\1\3\0\0\15InactiveFg\15InactiveBg\nWhite\1\3\0\0\nblack\nwhite\nBlack\1\0\0\1\3\0\0\nwhite\nblack\28windline.components.git\28windline.components.lsp\nstate\rWindLine\a_G\30windline.components.basic\21windline.helpers\rwindline\frequire\0" },
    loaded = true,
    path = "/Users/charyxiao/.local/share/nvim/site/pack/packer/start/windline.nvim",
    url = "https://github.com/windwp/windline.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\0¿\tbody\15lsp_expand\"\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\0¿\tjump\"\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2ˇˇB\0\2\1K\0\1\0\0¿\tjumpö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\0¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\0¿\tjump\rjumpable\21select_prev_item\fvisible˙\5\1\0\f\0000\0Z6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0019\5\n\0059\5\v\0055\a\r\0009\b\t\0019\b\f\bB\b\1\2=\b\14\a9\b\t\0019\b\15\bB\b\1\2=\b\16\a9\b\t\0019\b\17\bB\b\1\2=\b\18\a9\b\t\0019\b\19\bB\b\1\2=\b\20\a9\b\t\0019\b\21\b5\n\22\0B\b\2\2=\b\23\a9\b\t\0013\n\24\0005\v\25\0B\b\3\2=\b\26\a9\b\t\0013\n\27\0005\v\28\0B\b\3\2=\b\29\a9\b\t\0013\n\30\0005\v\31\0B\b\3\2=\b \a9\b\t\0013\n!\0005\v\"\0B\b\3\2=\b#\aB\5\2\2=\5\t\0049\5$\0019\5%\0054\a\5\0005\b&\0>\b\1\a5\b'\0>\b\2\a5\b(\0>\b\3\a5\b)\0>\b\4\aB\5\2\2=\5%\4B\2\2\0016\2\0\0'\4*\0B\2\2\0029\2\3\2B\2\1\0016\2\0\0'\4+\0B\2\2\0029\3,\1\18\5\3\0009\3-\3'\6.\0009\a/\2B\a\1\0A\3\2\0012\0\0ÄK\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\19nvim-autopairs\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\1\0\1\tname\fluasnip\fsources\vconfig\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-k>\1\3\0\0\6i\6s\0\n<C-j>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: windline.nvim
time([[Config for windline.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\1\2\0\b4\0\3\0005\1\0\0-\2\0\0009\2\1\2:\2\2\2>\2\2\1>\1\1\0L\0\2\0\3¿\tmode\1\2\0\0\n ÔåÉ •\2\0\1\6\1\v\0\31-\1\0\0009\1\0\1\18\3\0\0B\1\2\2\15\0\1\0X\2\23Ä4\1\4\0005\2\3\0-\3\0\0009\3\1\0035\5\2\0B\3\2\2>\3\1\2>\2\1\0015\2\6\0-\3\0\0009\3\4\0035\5\5\0B\3\2\2>\3\1\2>\2\2\0015\2\t\0-\3\0\0009\3\a\0035\5\b\0B\3\2\2>\3\1\2>\2\3\1L\1\2\0'\1\n\0L\1\2\0\4¿\5\1\3\0\0\0\tblue\1\0\2\vformat\f Ôüª %s\14show_zero\2\rlsp_hint\1\3\0\0\0\vyellow\1\0\2\vformat\f ÔÅ± %s\14show_zero\2\16lsp_warning\1\3\0\0\0\bred\1\0\2\vformat\f ÔÅó %s\14show_zero\2\14lsp_error\14check_lspÄ\3\0\3\t\2\15\0005-\3\0\0\1\3\2\0X\3\30Ä4\3\6\0005\4\3\0-\5\1\0009\5\0\5'\a\1\0'\b\2\0B\5\3\2>\5\1\4>\4\1\0035\4\5\0-\5\1\0009\5\4\5>\5\1\4>\4\2\0035\4\a\0-\5\1\0009\5\6\5>\5\1\4>\4\3\0035\4\b\0>\4\4\0035\4\v\0-\5\1\0009\5\t\5'\a\n\0B\5\2\2>\5\1\4>\4\5\3L\3\2\0X\3\19Ä4\3\4\0005\4\f\0-\5\1\0009\5\0\5'\a\1\0'\b\2\0B\5\3\2>\5\1\4>\4\1\0035\4\r\0>\4\2\0035\4\14\0-\5\1\0009\5\t\5'\a\n\0B\5\2\2>\5\1\4>\4\3\3L\3\2\0K\0\1\0\b¿\2¿\1\3\0\0\0\fmagenta\1\3\0\0\6 \5\1\3\0\0\0\fmagenta\1\3\0\0\0\fmagenta\tÔÅÄ \18file_modified\1\3\0\0\6 \5\1\3\0\0\0\5\17progress_lua\1\3\0\0\0\nwhite\17line_col_lua\1\3\0\0\0\fmagenta\vunique\14[No Name]\20cache_file_namev\0\3\6\2\4\0\16-\3\0\0\1\2\3\0X\3\fÄ4\3\3\0005\4\1\0-\5\1\0009\5\0\5>\5\1\4>\4\1\0035\4\3\0-\5\1\0009\5\2\5>\5\1\4>\4\2\3L\3\2\0K\0\1\0\b¿\2¿\1\3\0\0\0\5\17progress_lua\1\3\0\0\0\nwhite\17line_col_lua¶\2\0\1\6\1\v\0\31-\1\0\0009\1\0\1\18\3\0\0B\1\2\2\15\0\1\0X\2\23Ä4\1\4\0005\2\3\0-\3\0\0009\3\1\0035\5\2\0B\3\2\2>\3\1\2>\2\1\0015\2\6\0-\3\0\0009\3\4\0035\5\5\0B\3\2\2>\3\1\2>\2\2\0015\2\t\0-\3\0\0009\3\a\0035\5\b\0B\3\2\2>\3\1\2>\2\3\1L\1\2\0'\1\n\0L\1\2\0\5¿\5\1\3\0\0\0\tblue\1\0\2\vformat\v Ôßâ%s\14show_zero\2\17diff_changed\1\3\0\0\0\bred\1\0\2\vformat\f ÔÖÜ %s\14show_zero\2\17diff_removed\1\3\0\0\0\ngreen\1\0\2\vformat\f ÔÉæ %s\14show_zero\2\15diff_added\vis_gitE\0\0\3\0\5\0\a6\0\0\0009\0\1\0009\0\2\0005\2\3\0B\0\2\0029\0\4\0L\0\2\0\ntitle\1\0\1\ntitle\3\0\14getqflist\afn\bvim≠\1\0\1\6\2\6\0\23-\1\0\0009\1\0\1\18\3\0\0B\1\2\2\15\0\1\0X\2\bÄ4\1\3\0005\2\2\0-\3\0\0009\3\1\3B\3\1\2>\3\1\2>\2\1\1L\1\2\0004\1\3\0005\2\5\0-\3\1\0009\3\3\0035\5\4\0B\3\2\2>\3\1\2>\2\1\1L\1\2\0\4¿\2¿\1\3\0\0\0\fmagenta\1\0\1\ticon\2\20cache_file_type\1\3\0\0\0\fmagenta\rlsp_name\14check_lsp•\1\0\1\2\0\f\0\15'\1\1\0=\1\0\0'\1\1\0=\1\2\0'\1\4\0=\1\3\0'\1\1\0=\1\5\0'\1\a\0=\1\6\0'\1\t\0=\1\b\0'\1\v\0=\1\n\0L\0\2\0\f#98c379\ngreen\f#7385e2\vyellow\f#6677dd\fmagenta\nblack\f#bbbbbb\15InactiveFg\15InactiveBg\f#282c34\rActiveBgî\18\1\0\17\0t\0ı\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\4\0009\3\5\0039\3\6\0036\4\0\0'\6\a\0B\4\2\0026\5\0\0'\a\b\0B\5\2\0025\6\n\0005\a\t\0=\a\v\0065\a\f\0=\a\r\0065\a\14\0=\a\15\0065\a\16\0=\a\17\0064\a\0\0)\bZ\0005\t\19\0009\n\18\2>\n\1\t=\t\18\a5\t\21\0=\t\20\a5\t\23\0005\n\22\0=\n\24\t5\n\25\0=\n\26\t5\n\27\0=\n\28\t5\n\29\0=\n\30\t5\n\31\0=\n \t5\n\"\0=\t#\n3\v$\0=\v%\n=\n!\a5\n'\0005\v)\0005\f(\0=\f*\v5\f+\0=\f,\v5\f-\0=\f.\v=\v#\n=\b/\n3\v0\0=\v%\n=\n&\a5\n2\0005\v3\0009\f\v\6=\f4\v5\f5\0=\f6\v5\f7\0=\f8\v=\v#\n3\v9\0=\v%\n=\n1\a5\n>\0005\v;\0009\f\v\6=\f4\v5\f<\0=\f6\v5\f=\0=\f8\v=\v#\n3\v?\0=\v%\n=\n:\a5\nA\0005\vC\0005\fB\0=\fD\v5\fE\0=\f*\v5\fF\0=\f.\v=\v#\n=\b/\n3\vG\0=\v%\n=\n@\a5\nI\0005\vH\0=\vJ\n4\v\n\0005\fK\0005\rL\0>\r\2\f>\f\1\v4\f\3\0009\rM\0019\rN\r>\r\1\f5\rO\0>\r\2\f>\f\2\v4\f\3\0003\rP\0>\r\1\f5\rQ\0>\r\2\f>\f\3\v5\fR\0005\rS\0>\r\2\f>\f\4\v4\f\3\0009\rM\0019\rN\r>\r\1\f5\rT\0>\r\2\f>\f\5\v5\fU\0005\rV\0>\r\2\f>\f\6\v9\f\18\a>\f\a\v4\f\3\0009\rM\0019\rN\r>\r\1\f5\rW\0>\r\2\f>\f\b\v5\fX\0005\rY\0>\r\2\f>\f\t\v=\vZ\n5\v\\\0005\f[\0=\fJ\v4\f\3\0005\r]\0005\14^\0>\14\2\r>\r\1\f4\r\3\0009\14M\0019\14N\14>\14\1\r5\14_\0>\14\2\r>\r\2\f=\fZ\v5\fa\0=\b/\f5\rc\0005\14b\0=\0148\r=\r#\f3\rd\0=\r%\f=\f`\a5\ff\0005\re\0=\rJ\f4\r\n\0009\14!\a>\14\1\r9\0141\a>\14\2\r9\14&\a>\14\3\r9\14\18\a>\14\4\r9\14:\a>\14\5\r9\14`\a>\14\6\r9\14@\a>\14\a\r4\14\4\0009\15g\5B\15\1\2>\15\1\0145\15h\0>\15\2\14>\b\3\14>\14\b\r5\14i\0009\15\v\6>\15\2\14>\14\t\r=\rZ\f4\r\a\0004\14\3\0009\15j\2>\15\1\0149\15\15\6>\15\2\14>\14\1\r9\14k\a>\14\2\r9\14\18\a>\14\3\r9\14\18\a>\14\4\r4\14\3\0009\15l\2>\15\1\0149\15\15\6>\15\2\14>\14\5\r4\14\3\0009\15m\2>\15\1\0149\15\15\6>\15\2\14>\14\6\r=\rn\f9\ro\0005\15q\0003\16p\0=\16r\0154\16\4\0>\f\1\16>\n\2\16>\v\3\16=\16s\15B\r\2\0012\0\0ÄK\0\1\0\16statuslines\16colors_name\1\0\0\0\nsetup\rinactive\rprogress\rline_col\23file_name_inactive\19full_file_name\1\2\0\0\6 \1\3\0\0\fmagenta\nblack\15git_branch\1\0\0\1\2\0\0\fdefault\0\1\0\0\1\3\0\0\fmagenta\nblack\1\0\1\tname\rlsp_name\rlsp_name\1\3\0\0\bred\nblack\1\3\0\0\nblack\bred\1\2\0\0\n Ôêî \1\0\2\21show_last_status\2\18always_active\2\1\2\0\0\rNvimTree\vactive\1\3\0\0\nwhite\nblack\1\2\0\0\nüßõ \1\3\0\0\15InactiveBg\nblack\1\3\0\0\15InactiveFg\15InactiveBg\1\2\0\0\6 \1\3\0\0\16black_light\15InactiveBg\1\3\0\0\tcyan\16black_light\1\2\0\0\17 Total : %L \1\3\0\0\tcyan\16black_light\0\1\3\0\0\nblack\16black_light\16slant_right\15separators\1\3\0\0\nwhite\nblack\1\2\0\0\19üö¶ Quickfix \14filetypes\1\0\2\21show_last_status\2\18always_active\2\1\3\0\0\aqf\fTrouble\0\1\3\0\0\tblue\nblack\1\3\0\0\bred\nblack\ngreen\1\0\0\1\3\0\0\ngreen\nblack\1\0\1\tname\bgit\bgit\0\1\0\0\1\3\0\0\fmagenta\nblack\1\3\0\0\nwhite\nblack\1\0\0\15file_right\0\fmagenta\1\3\0\0\fmagenta\nblack\nwhite\1\3\0\0\nwhite\nblack\fdefault\1\0\0\1\0\1\tname\tfile\tfile\0\nwidth\tblue\1\3\0\0\tblue\nblack\vyellow\1\3\0\0\vyellow\nblack\bred\1\0\0\1\3\0\0\bred\nblack\1\0\1\tname\15diagnostic\16lsp_diagnos\ttext\0\14hl_colors\1\0\1\tname\fvi_mode\fvi_mode\fCommand\1\3\0\0\fmagenta\nblack\fReplace\1\3\0\0\15blue_light\nblack\vVisual\1\3\0\0\vyellow\nblack\vInsert\1\3\0\0\ngreen\nblack\vNormal\1\0\0\1\3\0\0\tblue\nblack\1\3\0\0\6 \15StatusLine\abg\1\3\0\0\0\5\fdivider\vActive\1\3\0\0\rActiveFg\rActiveBg\rInactive\1\3\0\0\15InactiveFg\15InactiveBg\nWhite\1\3\0\0\nblack\nwhite\nBlack\1\0\0\1\3\0\0\nwhite\nblack\28windline.components.git\28windline.components.lsp\nstate\rWindLine\a_G\30windline.components.basic\21windline.helpers\rwindline\frequire\0", "config", "windline.nvim")
time([[Config for windline.nvim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireO\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\thook\1\0\0\0\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimË\t\1\2\n\0%\0j3\2\0\0005\3\1\0\18\4\2\0'\6\2\0'\a\3\0'\b\4\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\5\0'\b\6\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\a\0'\b\b\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\t\0'\b\n\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\v\0'\b\f\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\r\0'\b\14\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\15\0'\b\16\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\17\0'\b\18\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\19\0'\b\20\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\21\0'\b\22\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\23\0'\b\24\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\25\0'\b\26\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\27\0'\b\28\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\29\0'\b\30\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a\31\0'\b \0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a!\0'\b\"\0\18\t\3\0B\4\5\1\18\4\2\0'\6\2\0'\a#\0'\b$\0\18\t\3\0B\4\5\0012\0\0ÄK\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q*<cmd>Lspsaga diagnostic_jump_next<CR>\a]d*<cmd>Lspsaga diagnostic_jump_prev<CR>\a[d+<cmd>Lspsaga show_line_diagnostics<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr!<cmd>Lspsaga code_action<CR>\14<space>ca\28<cmd>Lspsaga rename<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi\31<Cmd>Lspsaga hover_doc<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\fnoremap\2\vsilent\2\0¬\2\1\0\f\0\16\0#6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\1B\1\1\0013\1\4\0006\2\5\0009\2\6\0029\2\a\0029\2\b\2B\2\1\0026\3\0\0'\5\t\0B\3\2\0029\3\n\3\18\5\2\0B\3\2\2\18\2\3\0005\3\v\0006\4\f\0\18\6\3\0B\4\2\4X\a\6Ä8\t\b\0009\t\3\t5\v\r\0=\1\14\v=\2\15\vB\t\2\1E\a\3\3R\a¯K\0\1\0\17capabilities\14on_attach\1\0\0\vipairs\1\5\0\0\vclangd\fpyright\ngopls\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\nsetup\flspsaga\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n2\0\0\4\0\3\0\0066\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\frequire\vnotify\bvim\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n€\v\0\0\4\0@\0C6\0\0\0009\0\1\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\0015\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0=\3,\0025\3-\0=\3.\0025\3/\0=\0030\0025\0031\0=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0025\0037\0=\0038\0025\0039\0=\3:\0025\3;\0=\3<\0025\3=\0=\3>\2=\2?\1=\1\2\0K\0\1\0\fsymbols\18TypeParameter\1\0\2\ahl\16TSParameter\ticon\tùôè\rOperator\1\0\2\ahl\15TSOperator\ticon\6+\nEvent\1\0\2\ahl\vTSType\ticon\bÔ¨≤\vStruct\1\0\2\ahl\vTSType\ticon\tùì¢\15EnumMember\1\0\2\ahl\fTSField\ticon\bÔÖù\tNull\1\0\2\ahl\vTSType\ticon\tNULL\bKey\1\0\2\ahl\vTSType\ticon\bÔ†Ö\vObject\1\0\2\ahl\vTSType\ticon\b‚¶ø\nArray\1\0\2\ahl\15TSConstant\ticon\bÔô©\fBoolean\1\0\2\ahl\14TSBoolean\ticon\b‚ä®\vNumber\1\0\2\ahl\rTSNumber\ticon\6#\vString\1\0\2\ahl\rTSString\ticon\tùìê\rConstant\1\0\2\ahl\15TSConstant\ticon\bÓà¨\rVariable\1\0\2\ahl\15TSConstant\ticon\bÓûõ\rFunction\1\0\2\ahl\15TSFunction\ticon\bÔÇö\14Interface\1\0\2\ahl\vTSType\ticon\bÔ∞Æ\tEnum\1\0\2\ahl\vTSType\ticon\b‚Ñ∞\16Constructor\1\0\2\ahl\18TSConstructor\ticon\bÓàè\nField\1\0\2\ahl\fTSField\ticon\bÔöß\rProperty\1\0\2\ahl\rTSMethod\ticon\bÓò§\vMethod\1\0\2\ahl\rTSMethod\ticon\a∆í\nClass\1\0\2\ahl\vTSType\ticon\tùìí\fPackage\1\0\2\ahl\16TSNamespace\ticon\bÔ£ñ\14Namespace\1\0\2\ahl\16TSNamespace\ticon\bÔô©\vModule\1\0\2\ahl\16TSNamespace\ticon\bÔö¶\tFile\1\0\0\1\0\2\ahl\nTSURI\ticon\bÔúì\21symbol_blacklist\18lsp_blacklist\fkeymaps\nclose\1\0\6\19toggle_preview\6K\19focus_location\6o\17hover_symbol\14<C-space>\18goto_location\t<Cr>\17code_actions\6a\18rename_symbol\6r\1\3\0\0\n<Esc>\6q\1\0\v\nwidth\3<\24show_symbol_details\2\26show_relative_numbers\1\17show_numbers\1\15auto_close\1\19relative_width\2\25preview_bg_highlight\nPmenu\rposition\nright\17auto_preview\2\16show_guides\2\27highlight_hovered_item\2\20symbols_outline\6g\bvim\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\ns\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\1\0\1\tchar\b‚îä\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-toggleterm.lua
time([[Config for nvim-toggleterm.lua]], true)
try_loadstring("\27LJ\2\nÓ\2\0\0\5\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\3\vborder\vsingle\rwinblend\3\3\vheight\3d\nshell\6o\bvim\20shade_filetypes\1\0\t\17open_mapping\n<c-\\>\tsize\3\15\18close_on_exit\2\14direction\15horizontal\17persist_size\2\20insert_mappings\2\20start_in_insert\2\20shade_terminals\2\17hide_numbers\2\nsetup\15toggleterm\frequire\0", "config", "nvim-toggleterm.lua")
time([[Config for nvim-toggleterm.lua]], false)
-- Config for: aleph-nvim
time([[Config for aleph-nvim]], true)
try_loadstring("\27LJ\2\n§\1\0\0\5\0\b\0\0146\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0009\4\4\1B\2\2\0016\2\5\0009\2\6\2'\4\a\0B\2\2\1K\0\1\0001autocmd FileType aleph setlocal nofoldenable\bcmd\bvim\topts\nsetup\27aleph.themes.dashboard\naleph\frequire\0", "config", "aleph-nvim")
time([[Config for aleph-nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n≠\6\0\0\b\0\30\0=6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\0035\4\v\0005\5\t\0005\6\b\0=\6\n\5=\5\f\4=\4\r\3B\1\2\0019\1\14\0'\3\f\0B\1\2\0015\1\15\0006\2\16\0009\2\17\0029\2\18\2'\4\19\0'\5\20\0'\6\21\0\18\a\1\0B\2\5\0016\2\16\0009\2\17\0029\2\18\2'\4\19\0'\5\22\0'\6\23\0\18\a\1\0B\2\5\0016\2\16\0009\2\17\0029\2\18\2'\4\19\0'\5\24\0'\6\25\0\18\a\1\0B\2\5\0016\2\16\0009\2\17\0029\2\18\2'\4\19\0'\5\26\0'\6\27\0\18\a\1\0B\2\5\0016\2\16\0009\2\17\0029\2\18\2'\4\19\0'\5\28\0'\6\29\0\18\a\1\0B\2\5\1K\0\1\0K<Cmd>lua require('telescope').extensions.media_files.media_files()<CR>\15<Leader>sp:<Cmd>lua require('telescope.builtin').help_tags()<CR>\15<Leader>sh8<Cmd>lua require('telescope.builtin').buffers()<CR>\15<Leader>sb:<Cmd>lua require('telescope.builtin').live_grep()<CR>\15<Leader>sg;<Cmd>lua require('telescope.builtin').find_files()<CR>\15<Leader>sf\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\19load_extension\15extensions\16media_files\1\0\0\14filetypes\1\0\1\rfind_cmd\arg\1\5\0\0\bpng\twebp\bjpg\tjpeg\rdefaults\1\0\0\16borderchars\1\0\0\1\t\0\0\b‚ïê\b‚ïë\b‚ïê\b‚ïë\b‚ïî\b‚ïó\b‚ïù\b‚ïö\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nõ\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\factions\14open_file\1\0\0\1\0\1\17quit_on_open\2\24update_focused_file\1\0\0\1\0\1\venable\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\nv\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0004\4\3\0009\5\3\0009\5\4\0059\5\5\5>\5\1\4=\4\a\3B\1\2\1K\0\1\0\fsources\1\0\0\nblack\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n∞\3\0\0\4\0\18\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\0016\0\f\0009\0\r\0'\1\15\0=\1\14\0006\0\f\0009\0\r\0'\1\17\0=\1\16\0K\0\1\0\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\6o\bvim\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\14highlight\1\0\1\venable\2\fautotag\1\0\1\venable\2\21ensure_installed\1\0\0\1\23\0\0\ago\tbash\6c\bcpp\ncmake\blua\thtml\bcss\tscss\15javascript\15typescript\btsx\bvue\vsvelte\tjson\njson5\njsonc\trust\tjava\vkotlin\vpython\fcomment\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins-config.gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
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
