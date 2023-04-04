return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' } } }

    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use "nvim-treesitter/nvim-treesitter-context"

    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
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
    use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }

    use "EdenEast/nightfox.nvim"
    use "rose-pine/neovim"
    use { "kristijanhusak/vim-dadbod-ui", requires = { "tpope/vim-dadbod", "tpope/vim-dotenv" } }

    use {
        "phaazon/hop.nvim",
        event = "BufRead",
        config = function()
            require("hop").setup()
            vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
            vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
        end,
    }
end)
