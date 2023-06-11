return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- GENERAL
    use "mrjones2014/nvim-ts-rainbow"
    use "akinsho/toggleterm.nvim"
    use "theprimeagen/harpoon"
    use "nvim-tree/nvim-tree.lua"
    use "nvim-tree/nvim-web-devicons"
    use "folke/zen-mode.nvim"
    use "tpope/vim-fugitive"
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use "nvim-treesitter/nvim-treesitter-context"
    use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    --   use "mechatroner/rainbow_csv"
    use "lewis6991/gitsigns.nvim"
    --   use "lukas-reineke/indent-blankline.nvim"
    use "vimwiki/vimwiki"

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

    -- LANG
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' } } }
    use "nvim-telescope/telescope-dap.nvim"

    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    use "jose-elias-alvarez/null-ls.nvim"

    use "mfussenegger/nvim-jdtls"
    use 'leoluz/nvim-dap-go'

    -- LSP
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
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        after = "nvim-web-devicons",       -- keep this if you're using NvChad
        config = function()
            require("barbecue").setup({
                show_dirname = false,
                exclude_filetypes = { "norg" },
                symbols = {
                    separator = "▸",
                },
                kinds = {
                    Class = "",
                    Constructor = '󱥊',
                    Method = ''
                }
            })
        end,
    })

    use {
        "nvim-neorg/neorg",
        config = function()
            require('neorg').setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.concealer"] = {
                        config = {
                            icons = {
                                heading = {
                                    icons = { "✿", "☉", "✻", "✡", "✺" }
                                },
                                code_block = {
                                    content_only = true
                                }
                            }
                        }
                    },                  -- Adds pretty icons to your documents
                    ["core.dirman"] = { -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                notes = "~/Documentos/neorg/",
                            },
                            default_workspace = "notes"
                        },
                    },
                    ["core.journal"] = {
                        config = {
                            toc_format = function(entries)
                                local months_text = {
                                    "January",
                                    "February",
                                    "March",
                                    "April",
                                    "May",
                                    "June",
                                    "July",
                                    "August",
                                    "September",
                                    "October",
                                    "November",
                                    "December",
                                }
                                -- Convert the entries into a certain format to be written
                                local output = {}
                                local current_year
                                local current_month
                                for _, entry in ipairs(entries) do
                                    -- Don't print the year and month if they haven't changed
                                    if not current_year or current_year < entry[1] then
                                        current_year = entry[1]
                                        table.insert(output, "* " .. current_year)
                                    end
                                    if not current_month or current_month < entry[2] then
                                        current_month = entry[2]
                                        table.insert(output, "** " .. months_text[current_month])
                                    end

                                    -- Prints the file link
                                    print(vim.inspect(entry))
                                    table.insert(output, entry[4] .. string.format("[%s]", entry[5]))
                                end

                                return output
                            end,
                        },

                    }
                },
            }
        end,
        run = ":Neorg sync-parsers",
        requires = "nvim-lua/plenary.nvim",
    }
    use "xiyaowong/transparent.nvim"

    -- THEMES
    use "ellisonleao/gruvbox.nvim"
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'Mofiqul/dracula.nvim'
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use "liuchengxu/space-vim-dark"
end)
