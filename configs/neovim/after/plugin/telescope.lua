local status, telescope = pcall(require, "telescope")
if (not status) then return end

local builtin = require('telescope.builtin')

telescope.setup({
  defaults = {
    sorting_strategy = "ascending",
    winblend = 4,
    layout_strategy = 'vertical',
    layout_config = { height = 0.9 },
    file_ignore_patterns = {
      "^.git/",
      "^node_modules/",
    },
  },
  extensions = {
    coc = {
      prefer_locations = false,   -- always use Telescope locations to preview definitions/declarations/implementations etc
    },
    live_grep_args = {
      auto_quoting = true, -- enable/disable auto-quoting
      -- define mappings, e.g.
      -- ... also accepts theme settings, for example:
      -- theme = "dropdown", -- use dropdown theme
      -- theme = { }, -- use own theme spec
      -- layout_config = { mirror=true }, -- mirror preview pane
    }
  },
})

telescope.load_extension("frecency") --frecency search
telescope.load_extension("coc")      -- coc integration


-- file search
vim.keymap.set('n', '<leader>f',
  function()
    builtin.find_files({
      hidden = true
    })
  end)

-- -- Grep
vim.keymap.set('n', '<leader>g',
  function()
    builtin.live_grep({
      no_ignore = false,
      hidden = true
    })
  end)

-- buffer-fuzzy-find
vim.keymap.set('n', '<leader>b',
  function()
    builtin.current_buffer_fuzzy_find({
      no_ignore = false,
      hidden = true
    })
  end)

--Telescope-coc
--定義ジャンプ
vim.keymap.set("n", "gd", "<cmd>Telescope coc definitions<cr>", { silent = true })
-- 型定義ジャンプ
vim.keymap.set("n", "gy", "<cmd>Telescope coc type_definitions<cr>", { silent = true })
-- diagnostics
vim.keymap.set("n", "<leader>a", "<cmd>Telescope coc diagnostics<cr>", { silent = true })
--頻度検索
vim.keymap.set("n", "<leader>l", "<cmd>telescope.extensions.frecency.frecency()<CR>", { noremap = true, silent = true })