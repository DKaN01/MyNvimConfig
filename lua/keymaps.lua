local opts = {  noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

--Tabs
keymap("n", "<C-p>", ":tabn<CR>", opts)
keymap("n", "<C-o>", ":tabp<CR>", opts)
keymap("n", "<C-c>", ":tabc<CR>", opts)

--Nerdtree
keymap("n", "<C-t>", ":NERDTreeToggle<CR>", opts)
