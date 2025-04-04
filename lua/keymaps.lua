-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Neotree
vim.api.nvim_set_keymap("n", "<Leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })

-- Trouble
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", opts)
vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", opts)
vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", opts)
vim.keymap.set("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", opts)
vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", opts)
vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", opts)

-- Formatting
vim.keymap.set("n", "<leader>f", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format file" })

-- Things
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, { desc = "Show function documentation" })
vim.api.nvim_set_keymap('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-l>', "<cmd>lua require'luasnip'.jump(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-h>', "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap = true, silent = true })
