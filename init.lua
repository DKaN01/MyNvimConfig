-- Config main neovim
local opt = vim.opt
opt.swapfile = false
vim.wo.number = true -- Show numbers
opt.expandtab = true
opt.softtabstop = 4
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
opt.clipboard = 'unnamedplus'
opt.completeopt = 'menuone,noselect'
opt.splitright = true
opt.splitbelow = true
opt.backup = false
opt.encoding = "utf-8"


--Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--Block
require('plugins')
require('plugconfig')
require('lualinecfg')
require('serverlsp')
require('completion')
require('keymaps')
