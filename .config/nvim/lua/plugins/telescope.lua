return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 
		'nvim-lua/plenary.nvim',
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	cmd = {
    	"Telescope",
  	},
  	event = { "BufReadPre", "BufNewFile" },
  	keys = {
    	{ "<leader>m", "<cmd>Telescope marks<cr>",      desc = "search by [M]arks" },
    	{ "<leader>f", "<cmd>Telescope find_files<cr>", desc = "search [F]iles" },
   		{ "<leader>g", "<cmd>Telescope live_grep<cr>",  desc = "search by [G]rep" },
  },
}
