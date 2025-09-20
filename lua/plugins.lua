require("lazy").setup({
    --TODOS
    {"folke/todo-comments.nvim", dependencies={"nvim-lua/plenary.nvim"}},
    --Cmake Tools
    'Civitasv/cmake-tools.nvim',
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
        version = "1.*"
   },
	--Mason package manager
	'mason-org/mason.nvim',
	{'mason-org/mason-lspconfig.nvim'},
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
		--Other
    'rcarriga/nvim-notify',
    'numToStr/Comment.nvim',
    --Icons
	'nvim-tree/nvim-web-devicons',
    --Themes
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
    {'catppuccin/nvim', name='catppuccin', priority=1000},
    'neanias/everforest-nvim',
    'rebelot/kanagawa.nvim',
    'AlexvZyl/nordic.nvim',
    'EdenEast/nightfox.nvim',
    --Outline
    "hedyhli/outline.nvim",
    --Barbar
    {'romgrk/barbar.nvim',
        dependencies = {
--            'lewis6991/gitsigns.nvim',
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
    --Other
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
    },
    --gitsigns
    {'lewis6991/gitsigns.nvim'},
    --neogit
    {
      "NeogitOrg/neogit",
        dependencies = {
        "nvim-lua/plenary.nvim",         -- required
        "sindrets/diffview.nvim",        -- optional - Diff integration

        -- Only one of these is needed.
        "nvim-telescope/telescope.nvim", -- optional
       "ibhagwan/fzf-lua",              -- optional
        "echasnovski/mini.pick",         -- optional
        "folke/snacks.nvim",             -- optional
    },
}
})
