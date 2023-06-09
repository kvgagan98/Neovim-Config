-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use ({ "ellisonleao/gruvbox.nvim", as = 'gruvbox',
	config = function()
		vim.cmd('colorscheme gruvbox')
	end
    })
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('mbbill/undotree')
    use {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v1.x',
	    requires = {
		    -- LSP Support
		    {'neovim/nvim-lspconfig'},             -- Required
		    {'williamboman/mason.nvim'},           -- Optional
		    {'williamboman/mason-lspconfig.nvim'}, -- Optional

		    -- Autocompletion
		    {'hrsh7th/nvim-cmp'},         -- Required
		    {'hrsh7th/cmp-nvim-lsp'},     -- Required
		    {'hrsh7th/cmp-buffer'},       -- Optional
		    {'hrsh7th/cmp-path'},         -- Optional
		    {'saadparwaiz1/cmp_luasnip'}, -- Optional
		    {'hrsh7th/cmp-nvim-lua'},     -- Optional

		    -- Snippets
		    {'L3MON4D3/LuaSnip'},             -- Required
		    {'rafamadriz/friendly-snippets'}, -- Optional
	    }
    }

    --GitSigns
    use {
            'lewis6991/gitsigns.nvim',
            config = function()
                require('gitsigns').setup()
            end
    }
    -- Unless you are still migrating, remove the deprecated commands from v1.x
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

    use {
            "nvim-neo-tree/neo-tree.nvim",
            branch = "v2.x",
            requires = {
                    "nvim-lua/plenary.nvim",
                    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
                    "MunifTanjim/nui.nvim",
            }
    }
    use 'dhananjaylatkar/cscope_maps.nvim'
    use 'folke/which-key.nvim'
    use 'liuchengxu/vista.vim'
    use { 'junegunn/fzf', run = './install --bin', }
    use { 'ibhagwan/fzf-lua',
        -- optional for icon support
        requires = { 'nvim-tree/nvim-web-devicons' }
    }
    use 'akinsho/toggleterm.nvim'
end)
