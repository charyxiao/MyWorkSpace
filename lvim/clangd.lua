local clangd_flags = {
  "--background-index", -- 后台建立索引，并持久化到disk
  "--clang-tidy", -- 开启clang-tidy
  -- 指定clang-tidy的检查参数， 摘抄自cmu15445. 全部参数可参考 https://clang.llvm.org/extra/clang-tidy/checks
  "--clang-tidy-checks=bugprone-*, clang-analyzer-*, google-*, modernize-*, performance-*, portability-*, readability-*, -bugprone-too-small-loop-variable, -clang-analyzer-cplusplus.NewDelete, -clang-analyzer-cplusplus.NewDeleteLeaks, -modernize-use-nodiscard, -modernize-avoid-c-arrays, -readability-magic-numbers, -bugprone-branch-clone, -bugprone-signed-char-misuse, -bugprone-unhandled-self-assignment, -clang-diagnostic-implicit-int-float-conversion, -modernize-use-auto, -modernize-use-trailing-return-type, -readability-convert-member-functions-to-static, -readability-make-member-function-const, -readability-qualified-auto, -readability-redundant-access-specifiers,",
  "--completion-style=detailed",
  "--all-scopes-completion",
  "--suggest-missing-includes",
  "--cross-file-rename=true",
  "--header-insertion=iwyu",
  "--pch-storage=memory",
  -- 启用这项时，补全函数时，将会给参数提供占位符，键入后按 Tab 可以切换到下一占位符
  "--function-arg-placeholders=false",
  "--log=verbose",
  "--enable-config",
  "--ranking-model=decision_forest",
  -- 输入建议中，已包含头文件的项与还未包含头文件的项会以圆点加以区分
  "--header-insertion-decorators",
  "-j=12",
  "--pretty",
}

local clangd_bin = "clangd"

local custom_on_attach = function(client, bufnr)
  require("lvim.lsp").common_on_attach(client, bufnr)
  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>lh", "<Cmd>ClangdSwitchSourceHeader<CR>", opts)
end

local opts = {
  cmd = { clangd_bin, unpack(clangd_flags) },
  on_attach = custom_on_attach,
}

require("lvim.lsp.manager").setup("clangd", opts)
