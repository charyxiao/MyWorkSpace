require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "go",
        "bash",
        "c",
        "cpp",
        "cmake",
        "lua",
        "html",
        "css",
        "scss",
        "javascript",
        "typescript",
        "tsx",
        "vue",
        "svelte",
        "json",
        "json5",
        "jsonc",
        "rust",
        "java",
        "kotlin",
        "python",
        "comment",
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false
    },
    -- 安装的高亮支持来源
    ensure_installed = "maintained",
    -- 同步下载高亮支持
    sync_install = false,
    -- 高亮相关
    highlight = {
        -- 启用高亮支持
        enable = true,
    },
    -- 范围选择
    incremental_selection = {
        enable = true,
        keymaps = {
            -- 初始化选择
            init_selection = "<CR>",
            -- 递增
            node_incremental = "<CR>",
            -- 递减
            node_decremental = "<BS>",
            -- 选择一个范围
            scope_incremental = "<TAB>"
        }
    },
    -- 缩进，关闭
    indent = {
        enable = false
    },
    -- 彩虹括号，由 nvim-ts-rainbow 插件提供
    rainbow = {
        enable = true,
        extended_mode = true
    },
    -- 根据当前上下文定义文件类型，由 nvim-ts-context-commentstring 插件提供
    context_commentstring = {
        enable = true
    }
})

vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
