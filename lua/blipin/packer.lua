-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim';

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('theprimeagen/harpoon')
  use('tpope/vim-fugitive')

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'mason-org/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  };

  use 'simrat39/rust-tools.nvim';

  -- Completion framework:
    use 'hrsh7th/nvim-cmp';

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp';

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua';
    use 'hrsh7th/cmp-nvim-lsp-signature-help';
    use 'hrsh7th/cmp-vsnip';
    use 'hrsh7th/cmp-path';
    use 'hrsh7th/cmp-buffer';
    use 'hrsh7th/vim-vsnip';

    -- intuitive copy paste delete cut
    use 'svermeulen/vim-easyclip';

    -- displaying markdown
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, });

    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    };

    use 'ThePrimeagen/vim-be-good';

    use 'gsuuon/model.nvim';

    use 'tpope/vim-commentary';

    use "tpope/vim-surround";


    -- use 'jose-elias-alvarez/null-ls.nvim';
    -- use 'nvim-lualine/lualine.nvim';
    -- use 'danymat/neogen';
    -- use 'nvim-tree/nvim-tree.lua';
    -- use 'akinsho/toggleterm.nvim';

    -- use 'akinsho/bufferline.nvim';
    -- use 'catppuccin/catppuccin';
    -- use 'mfussenegger/nvim-dap';
    -- use 'lewis6991/gitsigns.nvim';
    -- use 'lukas-reineke/indent-blankline.nvim';
    --

    use "morhetz/gruvbox";

    -- block declarations displayed on top
    use "nvim-treesitter/nvim-treesitter-context";

    use "MeanderingProgrammer/markdown.nvim";

    use 'TamaMcGlinn/nvim-lspconfig-ada';
    use 'TamaMcGlinn/nvim-lsp-gpr-selector';


    -- gdb integration
    use 'sakhnik/nvim-gdb';

    -- java lsp
    use 'mfussenegger/nvim-jdtls'
}

end)
