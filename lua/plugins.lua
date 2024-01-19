return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- GENERAL
  use 'akinsho/toggleterm.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'lewis6991/gitsigns.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'rose-pine/neovim'
  use 'jiangmiao/auto-pairs'
  use 'HiPhish/rainbow-delimiters.nvim'
  use "lukas-reineke/indent-blankline.nvim"

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'windwp/nvim-ts-autotag'

  use({
    'utilyre/barbecue.nvim',
    tag = '*',
    requires = {
      'SmiteshP/nvim-navic',
      'nvim-tree/nvim-web-devicons',
    },
    after = 'nvim-web-devicons',
  })

  -- TOOLS
  use 'tpope/vim-fugitive'
  use 'vimwiki/vimwiki'
  use 'theprimeagen/harpoon'
  use 'mbbill/undotree'

  use { 'kristijanhusak/vim-dadbod-ui',
    requires = { 'tpope/vim-dadbod',
      'tpope/vim-dotenv',
      'kristijanhusak/vim-dadbod-completion' } }

  use { 'nvim-telescope/telescope.nvim', tag = '0.1.4', requires = { { 'nvim-lua/plenary.nvim' } } }
  use 'nvim-telescope/telescope-dap.nvim'

  use { 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap' } }
  use 'jose-elias-alvarez/null-ls.nvim'

  use 'theHamsta/nvim-dap-virtual-text'

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- LANG
  use 'mfussenegger/nvim-jdtls'
  use 'leoluz/nvim-dap-go'

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
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-vsnip' },
      { 'hrsh7th/vim-vsnip' },
    }
  }
end)
