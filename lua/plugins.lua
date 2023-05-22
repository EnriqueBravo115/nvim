return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- GENERAL
    use "mrjones2014/nvim-ts-rainbow"
    --use "lukas-reineke/indent-blankline.nvim"
    use "akinsho/toggleterm.nvim"
    use "theprimeagen/harpoon"
    use "nvim-tree/nvim-tree.lua"
    use "nvim-tree/nvim-web-devicons"
    use "nvim-lualine/lualine.nvim"
    use "lewis6991/gitsigns.nvim"
    use "folke/zen-mode.nvim"
    use "vimwiki/vimwiki"
    use "tpope/vim-fugitive"

    use "Eandrju/cellular-automaton.nvim"

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
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' },
        { "kdheepak/lazygit.nvim" } } }
    use "nvim-telescope/telescope-dap.nvim"

    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use "nvim-treesitter/nvim-treesitter-context"
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    use "jose-elias-alvarez/null-ls.nvim"

    use { "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim", "mfussenegger/nvim-dap" } }

    use "mfussenegger/nvim-jdtls"

    use "Pocco81/DAPInstall.nvim"

    -- CLOJURE
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

    use 'rcarriga/cmp-dap'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
            { 'onsails/lspkind.nvim' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-buffer' }
        }
    }

    -- THEMES
    use "rose-pine/neovim"
    use "ellisonleao/gruvbox.nvim"
    use "rebelot/kanagawa.nvim"
end)
