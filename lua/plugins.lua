return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- GENERAL
    use 'HiPhish/rainbow-delimiters.nvim'
    use 'akinsho/toggleterm.nvim'
    use 'theprimeagen/harpoon'
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'
    use 'folke/zen-mode.nvim'
    use 'tpope/vim-fugitive'
    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use 'nvim-treesitter/nvim-treesitter-context'
    use { 'windwp/nvim-autopairs', config = function() require('nvim-autopairs').setup {} end }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'xiyaowong/transparent.nvim'
    use 'tpope/vim-surround'

    use 'mechatroner/rainbow_csv'
    use 'lewis6991/gitsigns.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'norcalli/nvim-colorizer.lua'

    use { 'kristijanhusak/vim-dadbod-ui',
        requires = { 'tpope/vim-dadbod',
            'tpope/vim-dotenv',
            'kristijanhusak/vim-dadbod-completion' } }

    use {
        'phaazon/hop.nvim',
        event = 'BufRead',
        config = function()
            require('hop').setup()
            vim.api.nvim_set_keymap('n', 's', ':HopChar2<cr>', { silent = true })
            vim.api.nvim_set_keymap('n', 'S', ':HopWord<cr>', { silent = true })
        end,
    }

    -- LANG
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' } } }
    use 'nvim-telescope/telescope-dap.nvim'

    use { 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap' } }
    use 'jose-elias-alvarez/null-ls.nvim'

    use 'mfussenegger/nvim-jdtls'

    -- LSP
    use({
        'hrsh7th/nvim-cmp',
        requires = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-vsnip' },
            { 'hrsh7th/vim-vsnip' },
        },
    })

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

    use({
        'utilyre/barbecue.nvim',
        tag = '*',
        requires = {
            'SmiteshP/nvim-navic',
            'nvim-tree/nvim-web-devicons', -- optional dependency
        },
        after = 'nvim-web-devicons',       -- keep this if you're using NvChad
    })

    use {
        'nvim-neorg/neorg',
        run = ':Neorg sync-parsers',
        requires = 'nvim-lua/plenary.nvim',
    }

    use({ 'scalameta/nvim-metals', requires = { 'nvim-lua/plenary.nvim' } })
    use 'eandrju/cellular-automaton.nvim'

    -- THEMES
    use { 'bluz71/vim-moonfly-colors', as = 'moonfly' }
end)
