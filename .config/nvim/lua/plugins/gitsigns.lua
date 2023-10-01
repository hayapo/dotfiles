return {
	-- if need help
	-- help: gitsigns.txt
	"lewis6991/gitsigns.nvim",
	event = {"BufReadPre", "BufNewFile"},
	opts = {
		signs = {
			add = { text = '|'},
			change = { text = '|'},
			delete = { text = '_'},
			topdelete = { text = '¯' },
			changedelete = { text = "~" },
			untracked = { text = '┆' },
		}
	}
}
