require("sidebar-nvim").setup({
    disable_default_keybindings = 0,
  	bindings = { ["q"] = function() require("sidebar-nvim").close() end },
    open = false,
    side = "right",
    initial_width = 35,
    hide_statusline = false,
    update_interval = 1000,
    sections = { "datetime", "git", "diagnostics" },
    section_separator = {"", "===============", ""},
    section_title_separator = {""},
    containers = {
        attach_shell = "/bin/sh", show_all = true, interval = 5000,
    },
    datetime = {
			format = "%H:%M %m/%d[%a]",
			clocks = {
				{
					name = "Nagoya",
					offset = 9,
				}
			}
		},
    todos = { ignored_paths = { "~" } },
})

local keymap = vim.keymap.set
keymap("n", "<M-s>", "<cmd>SidebarNvimToggle<CR>", { silent = true })
keymap("n", "sb", "<cmd>SidebarNvimFocus<CR>", { silent = true })
