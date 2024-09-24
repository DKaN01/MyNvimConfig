require("lazy").setup({
    'nanotee/zoxide.vim',
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
	--DownLine
	'nvim-lualine/lualine.nvim',
	--Git status
	'lewis6991/gitsigns.nvim',
	--Other
    'rcarriga/nvim-notify',
    'numToStr/Comment.nvim',
    --Icons
	'nvim-tree/nvim-web-devicons',
    --Themes
    {'catppuccin/nvim', name='catppuccin', priority=1000},
    'neanias/everforest-nvim',
    'rebelot/kanagawa.nvim',
    'AlexvZyl/nordic.nvim',
    'bluz71/vim-moonfly-colors',
    --Outline
    "hedyhli/outline.nvim",
    --Barbar
    {'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            animation = true,
            insert_at_start = true,
            sidebar_filetypes = {
                NvimTree = true
            },
            tabpages = true,
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },
    {
        'altermo/ultimate-autopair.nvim',
        event={'InsertEnter','CmdlineEnter'},
        branch='v0.6', --recommended as each new version will have breaking changes
        opts={
        --Config goes here
        },
    },
    {
      "NeogitOrg/neogit",
      dependencies = {
        "nvim-lua/plenary.nvim",         -- required
        "sindrets/diffview.nvim",        -- optional - Diff integration

        -- Only one of these is needed, not both.
        "nvim-telescope/telescope.nvim", -- optional
        "ibhagwan/fzf-lua",              -- optional
      },
      config = true
    },
    {
        'kevinhwang91/nvim-ufo',
        dependencies = {
            'kevinhwang91/promise-async'
        }
    }
})
