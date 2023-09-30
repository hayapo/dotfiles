return {
	'akinsho/toggleterm.nvim',
	version = '*',
	keys = {
		{ '<leader>t', '<cmd>ToggleTerm direction=float<CR>', desc = '[T]oggle Terminal' },
		{ '<leader>l', '<cmd>lua _lazygit_toggle()<CR>', desc = 'Open [L]azygit' },
	},
	opts = {
		autochdir = true,
	},
	config = function()
		local Terminal = require('toggleterm.terminal').Terminal
		local lazygit = Terminal:new({ cmd = 'lazygit', direction = 'float', hidden = true })
		function _lazygit_toggle()
			lazygit:toggle()
		end
	end
}
