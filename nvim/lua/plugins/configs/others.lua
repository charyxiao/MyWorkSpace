local M = {}

M.illuminate = function()
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

M.lastplace = function()
    require('nvim-lastplace').setup({
        lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
        lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
        lastplace_open_folds = true
    })
end

M.winshift = function()
    require("winshift").setup({
        highlight_moving_win = true,  -- Highlight the window being moved
        focused_hl_group = "Visual",  -- The highlight group used for the moving window
        moving_win_options = {
            -- These are local options applied to the moving window while it's
            -- being moved. They are unset when you leave Win-Move mode.
            wrap = false,
            cursorline = false,
            cursorcolumn = false,
            colorcolumn = "",
        },
        -- The window picker is used to select a window while swapping windows with
        -- ':WinShift swap'.
        -- A string of chars used as identifiers by the window picker.
        window_picker_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        window_picker_ignore = {
            -- This table allows you to indicate to the window picker that a window
            -- should be ignored if its buffer matches any of the following criteria.
            filetype = {  -- List of ignored file types
              "NvimTree",
            },
            buftype = {   -- List of ignored buftypes
              "terminal",
              "quickfix",
            },
            bufname = {   -- List of regex patterns matching ignored buffer names
              [[.*foo/bar/baz\.qux]]
            },
        },
    })
end

return M
