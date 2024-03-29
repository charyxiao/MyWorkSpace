-- https://github.com/numToStr/Comment.nvim
-- https://github.com/JoosepAlviste/nvim-ts-context-commentstring
local comment_string = require("ts_context_commentstring")
require("Comment").setup({
    hook = function()
        require("ts_context_commentstring.internal").update_commentstring()
    end,
    toggler = {
        -- 切换行注释
        line = "gcc",
        -- 切换块注释
        block = "gCc"
    },
    opleader = {
        -- 可视模式下的行注释
        line = "gcv",
        -- 可视模式下的块注释
        block = "gCv"
    },
    extra = {
        -- 在当前行上方新增行注释
        above = "gca",
        -- 在当前行下方新增行注释
        below = "gcj",
        -- 在当前行行尾新增行注释
        eol = "gck"
    },
    -- 根据当前光标所在上下文判断不同类别的注释
    -- 由 nvim-ts-context-commentstring  提供
    pre_hook = function(ctx)
        -- Only calculate commentstring for tsx filetypes
        if vim.bo.filetype == "typescriptreact" then
            local U = require("Comment.utils")
            -- Detemine whether to use linewise or blockwise commentstring
            local type = ctx.ctype == U.ctype.line and "__default" or "__multiline"
            -- Determine the location where to calculate commentstring from
            local location = nil
            if ctx.ctype == U.ctype.block then
                location = comment_string.utils.get_cursor_location()
            elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
                location = comment_string.utils.get_visual_start_location()
            end
            return comment_string.calculate_commentstring(
                {
                    key = type,
                    location = location
                }
            )
        end
    end
})
