return require("packer").startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'ur4ltz/surround.nvim'
    use 'dstein64/vim-startuptime' -- :StartupTime To show TimeCost
    use 'lewis6991/impatient.nvim' -- cache lua chunk to speedup nvim
    use 'nvim-lua/plenary.nvim' -- lua functions
    use 'nathom/filetype.nvim' -- replacement for the included filetype.vim to speedup nvim
    use 'djoshea/vim-autoread' -- MacOS brew install gnu-sed
    use 'junegunn/vim-easy-align' -- TODO something wrong with neovim
    use({
        "rcarriga/nvim-notify",
        config = function()
            vim.notify = require("notify")
        end
    })
    use({
        "sindrets/winshift.nvim", -- rerange window layout
        config = function()
            require("plugins.configs.others").winshift()
        end,
        setup = function()
            require("core.mappings").winshift()
        end,
    })

    use({
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup({})
        end
    })

    use({
        'kevinhwang91/nvim-hlslens', -- 搜索时显示条目
        setup = function()
            require("core.mappings").hlslens()
        end,
    })

    use({
        'phaazon/hop.nvim', -- 快速跳转 easymotion-like
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require('hop').setup({})
        end,
        setup = function()
            require("core.mappings").hop()
        end,
    })

    use({
        "kyazdani42/nvim-tree.lua", -- file explorer
        config = function()
            require("plugins.configs.tree")
        end,
        setup = function()
            require("core.mappings").nvimtree()
        end,
    })

    -- TODO Maybe Use lualine
    -- use "nvim-lualine/lualine.nvim" -- status line
    use({
        "windwp/windline.nvim", -- status line
        config = function()
            require("plugins.configs.windline")
        end,
    })

    use({
        "lewis6991/gitsigns.nvim", -- git integration
        config = function()
            require("plugins.configs.gitsigns")
        end,
    })
    use({
        "dinhhuy258/vim-local-history",
        config = function()
            require("plugins.configs.local-history")
        end
    })

    use({
        "akinsho/nvim-bufferline.lua",
        config = function()
            require("plugins.configs.bufferline")
        end,
        setup = function()
            require("core.mappings").bufferline()
        end,
    })

    use({
        "akinsho/nvim-toggleterm.lua",
        config = function()
            require("plugins.configs.toggleterm")
        end,
    })

    use {
        "RRethy/vim-illuminate",
        config = function()
            require("plugins.configs.others").illuminate()
        end
    }

    use {
        "ethanholz/nvim-lastplace", -- 自动恢复光标位置
        config = function()
            require("plugins.configs.others").lastplace()
        end
    }

    use({
        "olimorris/onedarkpro.nvim", -- color scheme
        config = function()
            require("onedarkpro").load()
        end,
    })

    use({
        "folke/which-key.nvim", -- which-key
        config = function()
            require("which-key").setup()
        end,
    })

    use({
        "nvim-telescope/telescope.nvim", -- fuzzy finder
        config = function()
            require("plugins.configs.telescope")
        end,
        setup = function()
            require("core.mappings").telescope()
        end,
    })
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
    use "nvim-telescope/telescope-live-grep-raw.nvim"
    use "MattesGroeger/vim-bookmarks"
    use "tom-anders/telescope-vim-bookmarks.nvim"


    use({
        "numToStr/Comment.nvim",
        requires = {
            "JoosepAlviste/nvim-ts-context-commentstring"
        },
        config = function()
            require('plugins.configs.comment')
        end,
    })
    use "folke/todo-comments.nvim" -- todo comments


    use({
        "nvim-treesitter/nvim-treesitter",
        requires = {
            "p00f/nvim-ts-rainbow"
        },
        config = function()
            require("plugins.configs.treesitter")
        end
    })
    use "romgrk/nvim-treesitter-context" -- show class/function at the top

    use({
        "neovim/nvim-lspconfig",
        config = function()
            require("plugins.lsp.lspconf")
        end,
    })
    use "williamboman/nvim-lsp-installer" -- simple to use language server installer
    use "j-hui/fidget.nvim" -- show lsp progress
    use({
        "tami5/lspsaga.nvim",
        config = function()
            require("lspsaga").setup()
        end
    }) -- lsp UI staffs
    use({
        "ray-x/lsp_signature.nvim",
        config = function()
            require("plugins.lsp.lsp-signature")
        end
    })
    use({
        "jose-elias-alvarez/null-ls.nvim", -- null-ls for missing ls functionalities
        config = function()
            require("plugins.lsp.null-ls")
        end,
    })

    use({
        "simrat39/symbols-outline.nvim",
        config = function()
            require("plugins.configs.symbols-outline")
        end
    })

    use 'onsails/lspkind-nvim'
    use({
        "hrsh7th/nvim-cmp", -- auto completion
        config = function()
            require("plugins.configs.cmp")
        end,
        requires = {
            { 'windwp/nvim-autopairs' },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-cmdline" },
            -- For luasnip users.
            { "L3MON4D3/LuaSnip" },
            { "saadparwaiz1/cmp_luasnip" },
            { "rafamadriz/friendly-snippets" },
        },
    })

end)

--  useage
-- use {
--   "myusername/example",        -- The plugin location string
--   -- The following keys are all optional
--   disable = boolean,           -- Mark a plugin as inactive
--   as = string,                 -- Specifies an alias under which to install the plugin
--   installer = function,        -- Specifies custom installer. See "custom installers" below.
--   updater = function,          -- Specifies custom updater. See "custom installers" below.
--   after = string or list,      -- Specifies plugins to load before this plugin. See "sequencing" below
--   rtp = string,                -- Specifies a subdirectory of the plugin to add to runtimepath.
--   opt = boolean,               -- Manually marks a plugin as optional.
--   branch = string,             -- Specifies a git branch to use
--   tag = string,                -- Specifies a git tag to use. Supports "*" for "latest tag"
--   commit = string,             -- Specifies a git commit to use
--   lock = boolean,              -- Skip updating this plugin in updates/syncs. Still cleans.
--   run = string, function, or table, -- Post-update/install hook. See "update/install hooks".
--   requires = string or list,   -- Specifies plugin dependencies. See "dependencies".
--   rocks = string or list,      -- Specifies Luarocks dependencies for the plugin
--   config = string or function, -- Specifies code to run after this plugin is loaded.
--   -- The setup key implies opt = true
--   setup = string or function,  -- Specifies code to run before this plugin is loaded.
--   -- The following keys all imply lazy-loading and imply opt = true
--   cmd = string or list,        -- Specifies commands which load this plugin. Can be an autocmd pattern.
--   ft = string or list,         -- Specifies filetypes which load this plugin.
--   keys = string or list,       -- Specifies maps which load this plugin. See "Keybindings".
--   event = string or list,      -- Specifies autocommand events which load this plugin.
--   fn = string or list          -- Specifies functions which load this plugin.
--   cond = string, function, or list of strings/functions,   -- Specifies a conditional test to load this plugin
--   module = string or list      -- Specifies Lua module names for require. When requiring a string which starts
--                                -- with one of these module names, the plugin will be loaded.
--   module_pattern = string/list -- Specifies Lua pattern of Lua module names for require. When
--   requiring a string which matches one of these patterns, the plugin will be loaded.
-- }
