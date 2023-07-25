set mouse=a  " enable mouse
set encoding=utf-8
set number
set noswapfile
set scrolloff=7

set autochdir
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
filetype indent on      " load filetype-specific indent files

call plug#begin('~/.vim/plugged')

" color schemas
Plug 'morhetz/gruvbox'  " colorscheme gruvbox
Plug 'mhartington/oceanic-next'  " colorscheme OceanicNext
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ayu-theme/ayu-vim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }


Plug 'nvim-tree/nvim-web-devicons'
Plug 'preservim/nerdtree'
Plug 'xiyaowong/nvim-transparent'
Plug 'bmatcuk/stylelint-lsp'

Plug 'norcalli/nvim-colorizer.lua'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
Plug 'voldikss/vim-floaterm'

Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'KabbAmine/vCoolor.vim'
Plug 'nvim-lua/plenary.nvim'
call plug#end()

" colorscheme gruvbox
colorscheme catppuccin-mocha " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<TAB>"
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap .th <cmd>help nvim-tree.view.mappings<cr>
nnoremap <C-p> :tabn<CR>
nnoremap <C-o> :tabp<CR>
nnoremap <C-c> :tabc<CR>
nnoremap .mp <cmd>MarkdownPreview<cr>
nnoremap <leader>mp <cmd>Mason<cr>

" Mapping for buffer
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>

" Float term config
nnoremap <C-g> :FloatermNew --name=git lazygit<CR>

set termguicolors
hi DiagnosticError guifg=Red
hi DiagnosticWarn  guifg=Yellow
hi DiagnosticInfo  guifg=Blue
hi DiagnosticHint  guifg=Green

let g:airline_theme = 'catppuccin'
let g:airline#extensions#tabline#enabled = 1

lua require('init')
