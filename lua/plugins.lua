return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

    use {'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { {'nvim-lua/plenary.nvim'}}}

    use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
    use "nvim-treesitter/nvim-treesitter-context"

    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use "eandrju/cellular-automaton.nvim"
    use "theprimeagen/harpoon"
    use "nvim-tree/nvim-tree.lua"
    use "nvim-tree/nvim-web-devicons"
    use "nvim-lualine/lualine.nvim"
    use "lukas-reineke/indent-blankline.nvim"
    use "lewis6991/gitsigns.nvim"
    use "jose-elias-alvarez/null-ls.nvim"

    use "sainnhe/gruvbox-material"
    use "morhetz/gruvbox"
    use "EdenEast/nightfox.nvim"
    use {"neoclide/coc.nvim", branch='release'}


end)
