local status, packer = pcall(require, "packer")
vim.cmd('packadd vim-jetpack')
require('jetpack.packer').startup(function(use)
	use 'tani/vim-jetpack'-- bootstrap
	use 'nvim-lua/plenary.nvim'
	use "EdenEast/nightfox.nvim"
	use 'lukas-reineke/indent-blankline.nvim'
	use 'lambdalisue/nerdfont.vim'
	
	-- lualine
	use 'nvim-lualine/lualine.nvim'
	use 'kyazdani42/nvim-web-devicons'
	
	-- fern
	use 'lambdalisue/fern.vim'
	use 'lambdalisue/fern-renderer-nerdfont.vim'
	use 'lambdalisue/glyph-palette.vim'
	use	'yuki-yano/fern-preview.vim'
	use 'lambdalisue/fern-git-status.vim'
	
	-- mason
	use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
	
	-- cmp
	use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/cmp-vsnip'
	use 'onsails/lspkind.nvim'
	
	-- lspsaga
	use({
    'glepnir/lspsaga.nvim',
    branch = 'main',
  })

  -- treesitter
	use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
	use 'j-hui/fidget.nvim'

end)

