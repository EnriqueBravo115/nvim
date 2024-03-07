return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- GENERAL
  use "akinsho/toggleterm.nvim"
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"
  use "lewis6991/gitsigns.nvim"
  use "norcalli/nvim-colorizer.lua"
  use "jiangmiao/auto-pairs"
  use "lukas-reineke/indent-blankline.nvim"
  use { "stevearc/dressing.nvim" }

  use {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true }
  }

  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use "nvim-treesitter/nvim-treesitter-context"
  use "windwp/nvim-ts-autotag"

  use({
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    after = "nvim-web-devicons",
  })

  -- TOOLS
  use "tpope/vim-fugitive"
  use "vimwiki/vimwiki"
  use "theprimeagen/harpoon"
  use "mbbill/undotree"

  use { "kristijanhusak/vim-dadbod-ui",
    requires = { "tpope/vim-dadbod",
      "tpope/vim-dotenv",
      "kristijanhusak/vim-dadbod-completion" } }

  use "nvim-lua/plenary.nvim"
  use { "nvim-telescope/telescope.nvim", tag = "0.1.4", requires = { { "nvim-lua/plenary.nvim" } } }
  use "nvim-telescope/telescope-dap.nvim"

  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
  use "jose-elias-alvarez/null-ls.nvim"

  -- LANG
  use "mfussenegger/nvim-jdtls"
  use "leoluz/nvim-dap-go"
  use({ 'scalameta/nvim-metals', requires = { 'nvim-lua/plenary.nvim' } })
  use "bluz71/vim-nightfly-colors"

  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    requires = {
      { "neovim/nvim-lspconfig" },
      {
        "williamboman/mason.nvim",
        run = function()
          pcall(vim.cmd, "MasonUpdate")
        end,
      },
      { "williamboman/mason-lspconfig.nvim" },

      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "L3MON4D3/LuaSnip" },
      { "onsails/lspkind.nvim" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-vsnip" },
      { "hrsh7th/vim-vsnip" },
    }
  }
end)
