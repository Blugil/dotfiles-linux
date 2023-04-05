return {

  -- 'wbthomason/packer.nvim',

  'ellisonleao/gruvbox.nvim',
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('plugins.configs.kanagawa')
    end,
  },
  'lewis6991/impatient.nvim',
  'ap/vim-css-color',
	'junegunn/fzf.vim',

  "arturgoms/moonbow.nvim",

  -- based folke
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },

  -- File searching -- 

  {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('plugins.configs.telescope')
    end,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-lua/popup.nvim',
    },
  },

  -- LSP --
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
  },

  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('plugins.configs.mason-lsp')
    end,
  },

  'folke/lsp-colors.nvim',
  'onsails/lspkind-nvim',
  'neovim/nvim-lspconfig',


  -- cmp -- 

  {
    'hrsh7th/nvim-cmp', -- Completion engine
    config = function()
      require('plugins.configs.cmp')
    end,
    dependencies = {
      'saadparwaiz1/cmp_luasnip', -- Luasnip completion source
      'hrsh7th/cmp-nvim-lsp', -- LSP completion source
      'hrsh7th/cmp-cmdline', -- Command line completion source
      'hrsh7th/cmp-buffer', -- Buffer completion source
      'hrsh7th/cmp-path', -- File path completion source
      'hrsh7th/cmp-omni', -- Vim omnicompletion source
      'hrsh7th/cmp-nvim-lua', -- Nvim Lua API completion
      'hrsh7th/cmp-calc', -- In-buffer calculations ( 2+2 = 4 )
    }
  },



  {
    'L3MON4D3/LuaSnip', -- Snippet plugin
    config = function()
      require('plugins.configs.luasnip')
    end,
  },

  -- Treesitter -- 

  { 
    'nvim-treesitter/nvim-treesitter', 
    config = function()
      require('plugins.configs.treesitter')
    end,
    build = ':TSUpdate',
  },

  -- Extra functionality -- 


  -- {
  --   'romgrk/barbar.nvim',
  --   config = function()
  --     require('plugins.configs.barbar')
  --   end,
  --   dependencies = {'kyazdani42/nvim-web-devicons'},
  -- },

  { 
    'kyazdani42/nvim-tree.lua',
    config = function()
      require('plugins.configs.nvimtree')
    end,
    dependencies = { 'kyazdani42/nvim-web-devicons' }
  },

  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('plugins.configs.lualine')
    end,
    dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true }
  },

  {
    'goolord/alpha-nvim',
    config = function ()
      require('plugins.configs.alpha')
    end
  },

  -- Extra -- 
  
--  use 'lukas-reineke/indent-blankline.nvim'
--  use('jiangmiao/auto-pairs')
--
  
  {
    'lervag/vimtex',
    ft = {'tex'}
  },

  'tpope/vim-markdown',
  { 
    'iamcco/markdown-preview.nvim',
    ft = { 'markdown' },
    build = 'cd app && yarn install'  
  },

}
