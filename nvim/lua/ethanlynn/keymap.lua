vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, {})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
