return require("packer").startup(function(use)
    -- package manager
    use("wbthomason/packer.nvim")

    -- starup time optimise
    use 'dstein64/vim-startuptime'
    use 'lewis6991/impatient.nvim'
    use 'nathom/filetype.nvim'

    -- lua functions
    use("nvim-lua/plenary.nvim")

    -- icons for other plugins
    use({
        "kyazdani42/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup({ default = true })
        end,
    })

    -- termial integration
    use({
        "akinsho/nvim-toggleterm.lua",
        config = require("plugins-config.toggleterm")
    })

    -- notification manager
    use({
        "rcarriga/nvim-notify",
        config = function()
            vim.notify = require("notify")
            -- hardcoded background color
            -- vim.notify.setup({ background_colour = "#282c34" })
        end
    })

    -- auto completion
    use({
        "hrsh7th/nvim-cmp",
        config = require("plugins-config.cmp"),
        requires = {
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-cmdline" },
            -- snippet support
            { "L3MON4D3/LuaSnip" },
            { "saadparwaiz1/cmp_luasnip" }
        },
    })

    -- lsp support
    use({
        "neovim/nvim-lspconfig",
        config = require("plugins-config.lspconf")
    })

    -- null-ls for missing ls functionalities
    use({
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.black,
                },
            })
        end,
    })

    -- lsp UI staffs
    use("tami5/lspsaga.nvim")
    -- use("glepnir/lspsaga.nvim")

    -- symbol outline by lsp
    use({
        "simrat39/symbols-outline.nvim",
        config = require("plugins-config.symbols-outline")
    })

    -- treesitter config
    use({
        "nvim-treesitter/nvim-treesitter",
        config = require("plugins-config.treesitter")
    })

    -- auto pairs
    use("windwp/nvim-autopairs")

    -- comment
    use({
        "terrortylor/nvim-comment",
        config = function()
            require("nvim_comment").setup({
                hook = function()
                    require("ts_context_commentstring.internal").update_commentstring()
                end,
            })
        end,
        requires = { { "JoosepAlviste/nvim-ts-context-commentstring" } }
    })

    -- indent-blankline
    use({
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("indent_blankline").setup({
                char = "┊",
                buftype_exclude = { "terminal" },
            })
        end,
    })

    -- color scheme
    use({
        "olimorris/onedarkpro.nvim",
        event = "BufEnter",
        config = function()
            local onedarkpro = require("onedarkpro")
            onedarkpro.setup({
                options = {
                    transparency = true
                }
            })
            onedarkpro.load()
        end,
    })

    -- status line
    use({
        "windwp/windline.nvim",
        config = require("plugins-config.windline")
    })

    -- clickable buffer line
    use({
        "akinsho/nvim-bufferline.lua",
        config = function()
            require("bufferline").setup()
        end,
    })

    -- git integration
    use({
        "lewis6991/gitsigns.nvim",
        config = function()
            require("plugins-config.gitsigns")
        end,
    })

    -- which-key
    use({
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup()
        end,
    })

    -- file explorer
    use({
        "kyazdani42/nvim-tree.lua",
        config = function()
            require("nvim-tree").setup({
                update_focused_file = {
                    enable = true,
                },
                actions = {
                    open_file = {
                        quit_on_open = true,
                    },
                },
            })
        end,
    })

    -- fuzzy finder
    use({
        "nvim-telescope/telescope.nvim",
        config = require("plugins-config.telescope")
    })

    -- media file preview extension for telescope
    use("nvim-telescope/telescope-media-files.nvim")

    -- git
    use 'airblade/vim-gitgutter' -- TODO: better git integration

    -- startup screen
    use ({
        'p-z-l/aleph-nvim',
        config = function()
            local aleph = require("aleph")
            local dashboard = require("aleph.themes.dashboard")
            aleph.setup(dashboard.opts)
            -- Disable folding on aleph buffer:
            vim.cmd("autocmd FileType aleph setlocal nofoldenable")
        end
    })
end)
