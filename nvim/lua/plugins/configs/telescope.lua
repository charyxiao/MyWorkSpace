local telescope = require("telescope")
telescope.setup({
    defaults = {
        borderchars = { "═", "║", "═", "║", "╔", "╗", "╝", "╚" },
    },
})
telescope.load_extension('vim_bookmarks')
telescope.load_extension('projects')
-- load project extension. see project.lua file
