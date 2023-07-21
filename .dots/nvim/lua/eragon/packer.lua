-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Rose-pine nvim theme
    use({ 'rose-pine/neovim', as = 'rose-pine' })

    vim.cmd('colorscheme rose-pine')

    -- Treesitter for syntax highlighting etc...
    use({ 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} })
    -- In-Editor Syntax tree view
    use({ 'nvim-treesitter/playground' })
    -- Hunt me daddy
    use({ 'theprimeagen/harpoon' })
    use({ 'mbbill/undotree' })
    use({ 'tpope/vim-fugitive' })

    -- LSP-Zero and dependencies
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    -- Neovim Status Line
    use ({
        'nvim-lualine/lualine.nvim',
        requires = { "nvim-tree/nvim-web-devicons", opt = true  }
    })


    --[[use({
        'willothy/nvim-cokeline',
        requires = {
            "nvim-lua/plenary.nvim",        -- Required for v0.4.0+
            "kyazdani42/nvim-web-devicons", -- If you want devicons
        },
        config = function()
            require("cokeline").setup()
        end
    })]]

    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

end)

