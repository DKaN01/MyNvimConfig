require("lazy").setup({
    --Float term
	'voldikss/vim-floaterm',
	--Tree
	'nvim-tree/nvim-tree.lua',
	-- Completion
    'onsails/lspkind.nvim',
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	--Mason package manager
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',
	--Telescope
	'nvim-telescope/telescope.nvim',
	'nvim-lua/plenary.nvim',
	--Treesitter
    'nvim-treesitter/nvim-treesitter',
    --Gruvbox
    'morhetz/gruvbox',
    --Catppuccin
    { "catppuccin/nvim", as = "catppuccin" },
	--DownLine
	'nvim-lualine/lualine.nvim',
	--Git status
	'lewis6991/gitsigns.nvim',
	--Other
    'rcarriga/nvim-notify',
    'numToStr/Comment.nvim',
    --Icons
	'nvim-tree/nvim-web-devicons',
})
