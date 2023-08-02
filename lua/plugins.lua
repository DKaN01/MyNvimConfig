require("lazy").setup({
  --Float term
	'voldikss/vim-floaterm',
	--Tree
	'nvim-tree/nvim-tree.lua',
	-- Completion
	'hrsh7th/nvim-cmp',
	'vim-scripts/delimitMate.vim',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-vsnip',
	'hrsh7th/vim-vsnip',
	--Mason package manager
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',
	--Telescope
	'nvim-telescope/telescope.nvim',
	'nvim-lua/plenary.nvim',
	'nvim-treesitter/nvim-treesitter',
	--Catppuccin
	{ "catppuccin/nvim", as = "catppuccin" },
	--Vimairline
	'vim-airline/vim-airline',
	'vim-airline/vim-airline-themes',
	--Git status
	'lewis6991/gitsigns.nvim',
	--Icons
	'nvim-tree/nvim-web-devicons',
  --Markdown Preview
	'iamcco/markdown-preview.nvim'
})
