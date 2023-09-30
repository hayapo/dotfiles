return {
  lazy = false,
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
		'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
	keys = {
		{'<C-h>', '<cmd>BufferPrevious<CR>', desc = 'Move to previous buffer' },
		{'<C-l>', '<cmd>BufferNext<CR>', desc = 'Move to next buffer'},
		{'<leader>c', '<cmd>BufferClose<CR>', desc = '[C]lose current buffer'},
	},
  -- init = function() vim.g.barbar_auto_setup = true end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    animation = false,
    insert_at_start = true,
    auto_hide = false,
    clickable = true,
    },
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
