-- Config main neovim
local opt = vim.opt
vim.wo.number = true -- Show numbers
opt.shiftwidth = 4
opt.tabstop = 2
opt.smartindent = true
opt.clipboard = 'unnamedplus'
opt.completeopt = 'menuone,noselect'
opt.splitright = true
opt.splitbelow = true
opt.backup = false
opt.encoding = "utf-8"

--Block
require('plugins')
require('keymaps')
require('completion')
require('plugconfig')
require('serverlsp')