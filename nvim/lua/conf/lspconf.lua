local nvim_lsp = require("lspconfig")
require("lspsaga").setup()
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end

    -- TODO 待统一前缀快捷键
    local opts = { noremap = true, silent = true }
    buf_set_keymap("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", opts)
    buf_set_keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
    buf_set_keymap("n", "gh", ":Lspsaga hover_doc<CR>", opts)
    buf_set_keymap("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts)
    buf_set_keymap("n", "<C-k>", ":lua vim.lsp.buf.signature_help()<CR>", opts)
    buf_set_keymap("n", "<space>wa", ":lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
    buf_set_keymap("n", "<space>wr", ":lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
    buf_set_keymap("n", "<space>wl", ":lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
    buf_set_keymap("n", "<space>D", ":lua vim.lsp.buf.type_definition()<CR>", opts)
    buf_set_keymap("n", "<space>rn", ":Lspsaga rename<CR>", opts)
    buf_set_keymap("n", "<space>ca", ":Lspsaga code_action<CR>", opts)
    buf_set_keymap("n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)
    buf_set_keymap("n", "<space>e", ":Lspsaga show_line_diagnostics<CR>", opts)
    buf_set_keymap("n", "[d", ":Lspsaga diagnostic_jump_prev<CR>", opts)
    buf_set_keymap("n", "]d", ":Lspsaga diagnostic_jump_next<CR>", opts)
    buf_set_keymap("n", "<space>q", ":lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
    buf_set_keymap("n", "<space>f", ":lua vim.lsp.buf.formatting()<CR>", opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local servers = {"clangd", "gopls"}
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup({
        on_attach = on_attach,
        capabilities = capabilities,
    })
end
