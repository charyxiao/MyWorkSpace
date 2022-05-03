local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local utils = require('core.utils')

null_ls.setup({
    debug = false,
    sources = {
        formatting.prettier_d_slim.with({
            extra_args = { '--single-quote', '--jsx-single-quote', '--bracket-spacing' },
        }),
        formatting.stylua,
    },
    on_attach = function(client)
        if not utils.not_format[client.name] then
            vim.cmd([[
                augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
                augroup END
            ]])
        end
    end,

})
