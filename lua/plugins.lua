return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- GENERAL
    use "mrjones2014/nvim-ts-rainbow"
    use "lukas-reineke/indent-blankline.nvim"
    use "akinsho/toggleterm.nvim"
    use "theprimeagen/harpoon"
    use "nvim-tree/nvim-tree.lua"
    use "nvim-tree/nvim-web-devicons"
    use "nvim-lualine/lualine.nvim"
    use "lewis6991/gitsigns.nvim"
    use "folke/zen-mode.nvim"
    use 'christoomey/vim-tmux-navigator'

    use { "kristijanhusak/vim-dadbod-ui", requires = { "tpope/vim-dadbod", "tpope/vim-dotenv" } }
    use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }
    use {
        "phaazon/hop.nvim",
        event = "BufRead",
        config = function()
            require("hop").setup()
            vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
            vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
        end,
    }

    -- LANG
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' } } }
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use "nvim-treesitter/nvim-treesitter-context"
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    use "jose-elias-alvarez/null-ls.nvim"

    use { "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim", "mfussenegger/nvim-dap" } }

    use "mfussenegger/nvim-jdtls"


    use "Olical/conjure"
    use "radenling/vim-dispatch-neovim"
    use "clojure-vim/vim-jack-in"
    use "tpope/vim-dispatch"

    use({
        "hrsh7th/nvim-cmp",
        requires = {
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-vsnip" },
            { "hrsh7th/vim-vsnip" },
        },
    })

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
            { 'onsails/lspkind.nvim' },
            { 'VonHeikemen/lsp-zero.nvim' }
        }
    }
    -- THEMES
    use "EdenEast/nightfox.nvim"
    use "rose-pine/neovim"
    use "liuchengxu/space-vim-dark"
    use "folke/tokyonight.nvim"
    use "bluz71/vim-moonfly-colors"
    use "ellisonleao/gruvbox.nvim"
    use "catppuccin/nvim"
    use "svrana/neosolarized.nvim"
    use "rebelot/kanagawa.nvim"
    use "chriskempson/base16-vim"
end)
