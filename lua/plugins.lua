return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	--barbar
	use 'romgrk/barbar.nvim'
	--Icons
	use 'ryanoasis/vim-devicons'
  use 'nvim-tree/nvim-web-devicons'

	--Tree
	use 'preservim/nerdtree'

	-- Completion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

	--Mason package manager
	use	'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'

	--Telescope
	use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'

	--Catppuccin
	use { "catppuccin/nvim", as = "catppuccin" }

  --Vimairline
	use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

	--Git status
	use 'lewis6991/gitsigns.nvim'
	use 'Xuyuanp/nerdtree-git-plugin'
end)

