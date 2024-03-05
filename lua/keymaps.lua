--Keymap

--Alt + . (normal mode) = Next tab
--Alt + , (normal mode) = Prev tab
--Alt + c (normal mode) = Close tab
--Alt + p (normal mode) = Pinned tab
--Space + e (normal mode) = Toggle tree, open or close
--Space + t (normal mode) = Open float terminal
--.pm (normal mode) = Open mason (lsp manager)
--\ff = telescope files
--\fg = telescope grep
--gcc (normal mode) = Comment line
--gc (visual mode) = Comment


vim.g.mapleader = " "
vim.g.maplocalleader = " "


local opts = {  noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

--Float terminal
keymap("n", "<leader>t", ":FloatermNew<CR>", opts)

--Mason
keymap("n", ".pm", ":Mason<CR>", opts)

--Tabs
keymap('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
keymap('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
keymap('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

--Tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
