require("lazy").setup({
    --Lazygit
    {
      "kdheepak/lazygit.nvim",
      cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
      },
      -- optional for floating window border decoration
      dependencies = {
        "nvim-lua/plenary.nvim",
      },
      -- setting the keybinding for LazyGit with 'keys' is recommended in
      -- order to load the plugin when the command is run for the first time
      keys = {
        { "<leader>g", "<cmd>LazyGit<cr>", desc = "LazyGit" }
      }
    },
    --Zoxide
    'nanotee/zoxide.vim',
    --Float term
	'voldikss/vim-floaterm',
	--Tree
	'nvim-tree/nvim-tree.lua',
	-- Completion
    {
        'saghen/blink.cmp',
        dependencies = 'rafamadriz/friendly-snippets',
    },
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
            'lewis6991/gitsigns.nvim',
            'nvim-tree/nvim-web-devicons',
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
        version = '^1.0.0',
    },
    {
        'altermo/ultimate-autopair.nvim',
        event={'InsertEnter','CmdlineEnter'},
        branch='v0.6',
        opts= {},
    },
    {
      "shellRaining/hlchunk.nvim",
      event = { "BufReadPre", "BufNewFile" },
      config = function()
        require("hlchunk").setup({
                chunk = {
                    enable = true
                }
            })
      end
    },
    --UFO
    {
        'kevinhwang91/nvim-ufo',
        dependencies = {
            'kevinhwang91/promise-async'
        }
    }
})
