return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  -- Themes -- 

  use("morhetz/gruvbox")
  use({
	  "catppuccin/nvim",
	  as = "catppuccin"
  })


  -- File searching -- 
	use 'junegunn/fzf.vim'

  use({
      "nvim-telescope/telescope.nvim",
      requires = {
          "nvim-lua/plenary.nvim",
          "nvim-lua/popup.nvim",
      },
  })

  -- LSP --
  use({
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
  })

  use({
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lsp')
    end,
  })

  use 'folke/lsp-colors.nvim'
  use("onsails/lspkind-nvim")
  use 'neovim/nvim-lspconfig'


  -- cmp -- 

  use({
      "hrsh7th/nvim-cmp", -- Completion engine
      config = function()
          require("cmp_config")
      end,
  })

  use("hrsh7th/cmp-nvim-lsp") -- LSP completion source
  use("hrsh7th/cmp-cmdline") -- Command line completion source
  use("hrsh7th/cmp-buffer") -- Buffer completion source
  use("hrsh7th/cmp-path") -- File path completion source
  use("hrsh7th/cmp-omni") -- Vim omnicompletion source
  use("hrsh7th/cmp-nvim-lua") -- Nvim Lua API completion
  use("hrsh7th/cmp-calc") -- In-buffer calculations ( 2+2 = 4 )
  use("quangnguyen30192/cmp-nvim-ultisnips")

  use {'SirVer/ultisnips',
      requires = {{'honza/vim-snippets', rtp = '.'}},
      config = function()      
          vim.g.UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'      
          vim.g.UltiSnipsJumpForwardTrigger = '<Plug>(ultisnips_jump_forward)'
          vim.g.UltiSnipsJumpBackwardTrigger = '<Plug>(ultisnips_jump_backward)'
          vim.g.UltiSnipsListSnippets = '<c-x><c-s>'
          vim.g.UltiSnipsRemoveSelectModeMappings = 0
      end
  }

  -- Treesitter -- 

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Extra functionality -- 


  use {
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
  }

  use { 
      'kyazdani42/nvim-tree.lua',
      requires = { 'kyazdani42/nvim-web-devicons' }
  }

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }


  -- Extra -- 
  
  use "lukas-reineke/indent-blankline.nvim"
  use("jiangmiao/auto-pairs")
  use("ap/vim-css-color")
  
  use {
      'lervag/vimtex',
      ft = {'tex'}
  }

  use 'tpope/vim-markdown'
  use { 
      'iamcco/markdown-preview.nvim',
      ft = { 'markdown' },
      run = 'cd app && yarn install'  
  }

  -- Useful but not in use -- 
  -- use { 'akinsho/toggleterm.nvim' }
  -- use { 'mhartington/formatter.nvim' }
  -- use { 'goolord/alpha-nvim' }
  -- use { 'eddyekofo94/gruvbox-flat.nvim' }
  use ({ 'srcery-colors/srcery-vim', as = 'srcery' })

end)
