--Keymap

--leader = \

--Alt + . (normal mode) = Next tab
--Alt + , (normal mode) = Prev tab
--Alt + c (normal mode) = Close tab
--Alt + p (normal mode) = Pinned tab
--<leader> + o (normal mode) = Toggle outline
--<leader> + e (normal mode) = Toggle tree
--<leader> + t (normal mode) = Open float terminal
--.pm (normal mode) = Open mason (lsp manager)
--\ff = telescope files
--\fg = telescope grep
--gcc (normal mode) = Comment line
--gc (visual mode) = Comment
--zR (normal mode) = open folds
--zM (normal mode) = close folds
--<leader>g (normal mode) = lazygit


vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"


local opts = {  noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap


--ufo
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)


--Float terminal
keymap("n", "<leader>t", ":FloatermNew<CR>", opts)

--Mason
keymap("n", ".pm", ":Mason<CR>", opts)

--Tabs
keymap('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
keymap('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
keymap('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

--Lsp
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = bufnr, desc = "Go to Declaration" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to Definition" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = bufnr, desc = "Go to Implementation" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr, desc = "Symbol References" })
vim.keymap.set("n", "dp", vim.diagnostic.goto_prev, { buffer = bufnr, desc = "Go to Next Diagnostic" })
vim.keymap.set("n", "do", vim.diagnostic.open_float, { buffer = bufnr, desc = "Open Diagnostic Float" })
vim.keymap.set("n", "dp", vim.diagnostic.goto_next, { buffer = bufnr, desc = "Go to Previous Diagnostic" })

--Outline
keymap('n', '<leader>o', '<cmd>Outline<CR>', opts)

--Tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
