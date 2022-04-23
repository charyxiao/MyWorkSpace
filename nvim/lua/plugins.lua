return require("packer").startup(function(use)
    -- package manager
    use("wbthomason/packer.nvim")

    -- :StartupTime To show TimeCost
    use 'dstein64/vim-startuptime'
    -- cache lua chunk to speedup nvim
    use 'lewis6991/impatient.nvim'
    --  replacement for the included filetype.vim to speedup nvim
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

    -- file explorer
    use({
        "kyazdani42/nvim-tree.lua",
        config = function()
            require("conf.tree")
        end,
    })

    -- status line
    use({
        "windwp/windline.nvim",
        config =  function()
            require("conf.windline")
        end,
    })

    -- git integration
    use({
        "lewis6991/gitsigns.nvim",
        config = function()
            require("conf.gitsigns")
        end,
    })

    -- clickable buffer line
    use({
        "akinsho/nvim-bufferline.lua",
        config = function()
            require("conf.bufferline")
        end,
    })

    -- 搜索时显示条目
    use 'kevinhwang91/nvim-hlslens'

    -- termial integration
    use({
        "akinsho/nvim-toggleterm.lua",
        config = function()
            require("conf.toggleterm")
        end,
    })

    -- indent-blankline
    use({
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("indent_blankline").setup({
                -- 显示当前所在区域
                show_current_context = true,
                -- 显示当前所在区域的开始位置
                show_current_context_start = true,
                -- 显示行尾符
                show_end_of_line = true,
                -- char = "┊",
                buftype_exclude = { "terminal" },
            })
        end,
    })

    -- auto pairs
    use "windwp/nvim-autopairs"

    -- 快速跳转 easymotion-like
    use {
        "phaazon/hop.nvim",
        config = function()
            require("hop").setup()
        end
    }

    -- 包裹修改
    use {
        "ur4ltz/surround.nvim",
        config = function()
            require("surround").setup({mappings_style = "surround"})
        end
    }

    -- 显示光标下相同词汇
    use {
        "RRethy/vim-illuminate",
        config = function()
            -- 禁止高亮的文件类型
            vim.g.Illuminate_ftblacklist = {
                "NvimTree",
                "vista_kind",
                "toggleterm"
            }
            vim.cmd([[augroup illuminate_augroup
                        autocmd!
                        autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
                    augroup END]])
        end
    }

    -- 自动恢复光标位置
    use {
        "ethanholz/nvim-lastplace",
        config = function()
            require("nvim-lastplace").setup({
                -- buffer 类型不记录光标位置
                lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
                -- 不记录光标位置
                lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
                lastplace_open_folds = true
            })
        end
    }

    -- notification manager
    use( "rcarriga/nvim-notify")

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

    -- which-key
    use({
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup()
        end,
    })

    -- fuzzy finder
    use({
        "nvim-telescope/telescope.nvim",
        config = function()
            require("conf.telescope")
        end,
    })

    -- media file preview extension for telescope
    use("nvim-telescope/telescope-media-files.nvim")

    -- git
    use 'airblade/vim-gitgutter' -- TODO: better git integration

    -- comment
    use({
        "numToStr/Comment.nvim",
        requires = {
            "JoosepAlviste/nvim-ts-context-commentstring"
        },
        config = function()
            require('conf.comment')
        end,
    })

    -- symbol outline by lsp
    use({
        "simrat39/symbols-outline.nvim",
        config = require("conf.symbols-outline")
    })

    -- treesitter config
    use({
       "nvim-treesitter/nvim-treesitter",
        requires = {
            "p00f/nvim-ts-rainbow" -- 彩虹括号
        },
        config = function()
           require("conf.treesitter")
        end
    })

    -- startup screen
    use({
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    })

    -- lsp support
    use({
        "neovim/nvim-lspconfig",
        config =  function()
            require("conf.lspconf")
        end,
    })

    -- lsp UI staffs
    use("tami5/lspsaga.nvim")

    -- auto completion
    use({
        "hrsh7th/nvim-cmp",
        config = require("conf.cmp"),
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

end)
