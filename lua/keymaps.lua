--Keymap
--Ctrl + p (normal mode) = Next tab
--Ctrl + o (normal mode) = Prev tab
--Ctrl + c (normal mode) = Close tab
--Space + e (normal mode) = Toggle tree, open or close
--Ctrl + t (in tree) = Open new tab
--Space + t (normal mode) = Open float terminal
--.mp (normal mode) = Start markdown preview(*.md file must be open)
--.pm (normal mode) = Open mason (lsp manager)
--Space + p (normal mode) = Prettier
--\ff = telescope files
--\fg = telescope grep
--Ctrl + c = PickColor
--Space + cpc = ConvertHEXandRGB


vim.g.mapleader = " "
vim.g.maplocalleader = " "


local opts = {  noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

--ColorPicker
keymap("n", "<C-c>", "<cmd>PickColor<cr>", opts)
keymap("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)
keymap("n", "<leader>cpc", "<cmd>ConvertHEXandRGB<cr>", opts)

--Prettier
keymap("n", "<leader>p", ":Prettier<CR>", opts)

--Float terminal
keymap("n", "<leader>t", ":FloatermNew<CR>", opts)

--Mason
keymap("n", ".pm", ":Mason<CR>", opts)

--Tabs
keymap("n", "<C-p>", ":tabn<CR>", opts)
keymap("n", "<C-o>", ":tabp<CR>", opts)
keymap("n", "<C-c>", ":tabc<CR>", opts)

--Tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

--Markdown Preview
keymap("n", ".mp", ":MarkdownPreview<CR>", opts)
