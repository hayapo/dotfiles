local status, packer = pcall(require, "packer")
vim.cmd [[packadd packer.nvim]]

packer.startup(function(use) 

  -- Plugin Manager
  use 'wbthomason/packer.nvim'

  -- general
  use 'antoinemadec/FixCursorHold.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'vim-jp/vimdoc-ja'
  
  -- Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "nvim-telescope/telescope-frecency.nvim",
    requires = {"kkharji/sqlite.lua"}
  }
  use 'fannheyward/telescope-coc.nvim'

  -- colorscheme
  use 'ishan9299/nvim-solarized-lua'
  use 'rose-pine/neovim'
  use 'Mofiqul/vscode.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  
  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- coc.nvim
  use {'neoclide/coc.nvim', branch = 'release'}
  
  -- treesitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
  }
	use 'j-hui/fidget.nvim'
  use 'digitaltoad/vim-pug'

  -- feline
	-- use 'feline-nvim/feline.nvim'
  use 'nvim-lualine/lualine.nvim'

  -- Fern.vim
  use 'lambdalisue/fern.vim'
  use 'lambdalisue/nerdfont.vim'
  use 'lambdalisue/fern-renderer-nerdfont.vim'
  use 'lambdalisue/glyph-palette.vim'

  -- Buffer Control -- Buffer Control
  use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

  -- Coding Support
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'kevinhwang91/nvim-hlslens'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'numToStr/Comment.nvim'
  use 'norcalli/nvim-colorizer.lua'

  -- Rust Integration
  use 'rust-lang/rust.vim'
end)
