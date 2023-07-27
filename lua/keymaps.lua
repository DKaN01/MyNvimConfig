local opts = {  noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

--Float terminal
keymap("n", "<leader>t", ":FloatermNew<CR>", opts)

--Mason
keymap("n", ".pm", ":Mason<CR>", opts)

--Tabs
keymap("n", "<C-p>", ":tabn<CR>", opts)
keymap("n", "<C-o>", ":tabp<CR>", opts)
keymap("n", "<C-c>", ":tabc<CR>", opts)

--Nerdtree
keymap("n", "<C-t>", ":NERDTreeToggle<CR>", opts)
