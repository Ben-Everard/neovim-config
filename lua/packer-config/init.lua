vim.cmd [[packadd packer.nvim]]

require("packer").startup({function(use)
    use {"wbthomason/packer.nvim", opt = true}

    -- LSP
    use "neovim/nvim-lspconfig"

    ---- for easily changing a line to comment
    use "preservim/nerdcommenter"

    ---- Colorscheme
    use 'folke/tokyonight.nvim'

    -- Extras
    use "tpope/vim-unimpaired"
    use "tpope/vim-surround"
    use "tpope/vim-fugitive"

    -- Svelte
    use 'othree/html5.vim'
    use 'pangloss/vim-javascript'
    use 'evanleck/vim-svelte'

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter'}

    -- LSP Setup
    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    }

    -- Prettier setup
    use "jose-elias-alvarez/null-ls.nvim"
    use "MunifTanjim/prettier.nvim"

    -- Flutter-tools Packages
    use {
        'akinsho/flutter-tools.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
    }

    -- Trouble
    use {
      "folke/lsp-trouble.nvim",
      cmd = "Trouble",
      config = function()
        -- Can use P to toggle auto movement
        require("trouble").setup {
          auto_preview = false,
          auto_fold = true,
        }
      end,
    }

  end
})
