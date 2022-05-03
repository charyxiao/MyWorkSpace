-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
local lspconfig = require("lspconfig")
local default_opts = require('plugins.lsp.opts')
local servers = { "clangd", "pyright", "gopls", "sumneko_lua" }

for _, server in ipairs(servers) do
    if server == 'clangd' then
        local clangd_opts = require("plugins.lsp.settings.clangd")
        opts = vim.tbl_deep_extend('force', default_opts, clangd_opts)
    else
        opts = default_opts
    end
    lspconfig[server].setup(opts)
end
