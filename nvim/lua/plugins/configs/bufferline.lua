-- https://github.com/akinsho/bufferline.nvim

require("bufferline").setup({
    options = {
        -- diagnostics source
        diagnostics = "nvim_lsp",
        indicator_icon = "▎",
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        -- split style："slant" | "thick" | "thin"
        separator_style = "thin",
        -- The left side yields the position of the NvimTree
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "BufferDirectory",
                text_align = "left"
            },
            {
                filetype = "undotree",
                text = "History Explorer",
                highlight = "BufferDirectory",
                text_align = "left"
            },
            {
                filetype = "dbui",
                text = "Database Explorer",
                highlight = "BufferDirectory",
                text_align = "left"
            },
            {
                filetype = "spectre_panel",
                text = "Project Blurry Search",
                highlight = "BufferDirectory",
                text_align = "left"
            },
            {
                filetype = "aerial",
                text = "Outline Explorer",
                highlight = "BufferDirectory",
                text_align = "center"
            }
        }
    }
})

