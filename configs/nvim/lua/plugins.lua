local status, packer = pcall(require, "packer")
vim.cmd('packadd vim-jetpack')
require('jetpack.packer').startup(function(use)
	use 'tani/vim-jetpack'-- bootstrap
	use 'nvim-lua/plenary.nvim'
	use "EdenEast/nightfox.nvim"
	use 'lukas-reineke/indent-blankline.nvim'
	use 'lambdalisue/nerdfont.vim'
	
	-- lualine
	-- use 'nvim-lualine/lualine.nvim'
	use 'kyazdani42/nvim-web-devicons'
	
	-- feline
	use 'feline-nvim/feline.nvim'
	
	-- fern
	use 'lambdalisue/fern.vim'
	use 'lambdalisue/fern-renderer-nerdfont.vim'
	use 'lambdalisue/glyph-palette.vim'
	use	'yuki-yano/fern-preview.vim'
	use 'lambdalisue/fern-git-status.vim'
	
	use 'zefei/vim-wintabs'
  use 'zefei/vim-wintabs-powerline'
	
	-- mason
	use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
	
	-- completion
  --	use 'Shougo/ddc-nvim-lsp'
	-- use 'vim-denops/denops.vim'
	use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'onsails/lspkind.nvim'
	use 'saadparwaiz1/cmp_luasnip'
	use 'L3MON4D3/LuaSnip'
	
	-- lspsaga
	use({
    'glepnir/lspsaga.nvim',
    branch = 'main',
  })

  -- treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}
	use 'j-hui/fidget.nvim'

	use {
		'akinsho/bufferline.nvim',
		tag = "v3.*",
		requires = 'nvim-tree/nvim-web-devicons'
	}

	-- sidebar
	use 'sidebar-nvim/sidebar.nvim'
end)

