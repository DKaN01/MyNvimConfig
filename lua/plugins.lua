require("lazy").setup({
    --ColorPicker
    'ziontee113/color-picker.nvim',
    --Prettier
    {'prettier/vim-prettier', build='yarn install --frozen-lockfile --production'},
    --Float term
	'voldikss/vim-floaterm',
	--Tree
	'nvim-tree/nvim-tree.lua',
	-- Completion
	'onsails/lspkind.nvim',
	'windwp/nvim-ts-autotag',
	'tpope/vim-surround',
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
	--Treesitter
    'nvim-treesitter/nvim-treesitter',
	--Catppuccin
    { "catppuccin/nvim", as = "catppuccin" },
	--DownLine
	'nvim-lualine/lualine.nvim',
	--Git status
	'lewis6991/gitsigns.nvim',
	--Icons
	'nvim-tree/nvim-web-devicons',
    --Markdown Preview
	{'iamcco/markdown-preview.nvim',
				config = function ()
						vim.fn["mkdp#util#install"]()
				end
	},
})
