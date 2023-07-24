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
"Plug 'nvim-tree/nvim-tree.lua'
Plug 'preservim/nerdtree'
Plug 'xiyaowong/nvim-transparent'
Plug 'bmatcuk/stylelint-lsp'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
Plug 'voldikss/vim-floaterm'

Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
"Plug 'romgrk/barbar.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'KabbAmine/vCoolor.vim'
Plug 'nvim-lua/plenary.nvim'
call plug#end()

" colorscheme gruvbox
colorscheme catppuccin-mocha " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<TAB>"
nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-e> :NvimTreeToggle<cr>
nnoremap .th <cmd>help nvim-tree.view.mappings<cr>
nnoremap <C-p> :tabn<CR>
nnoremap <C-o> :tabp<CR>
nnoremap <C-c> :tabc<CR>
nnoremap .mp <cmd>MarkdownPreview<cr>

" Float term config
nnoremap <C-g> :FloatermNew --name=git lazygit<CR>
" White colors for LSP messages in code
set termguicolors
hi DiagnosticError guifg=White
hi DiagnosticWarn  guifg=White
hi DiagnosticInfo  guifg=White
hi DiagnosticHint  guifg=White

let g:airline_theme = 'catppuccin'
let g:airline#extensions#tabline#enabled = 1

lua require('init')
