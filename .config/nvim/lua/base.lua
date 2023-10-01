vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.number = true
vim.wo.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.showtabline = 2	
vim.opt.clipboard = "unnamedplus"
vim.opt.helplang = "ja"
vim.opt.expandtab = true
vim.opt.signcolumn = 'yes'
vim.opt.shell = 'zsh'
vim.opt.winblend = 10

local keymap = vim.keymap
keymap.set('n', 'ss', ':split<Return><C-w>w') -- 水平方向に分割
keymap.set('n', 'sv', ':vsplit<Return><C-w>w') -- 垂直方向に分割`
-- アクティブウィンドウの移動
keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sk', '<C-w>k')
keymap.set('n', 'sj', '<C-w>j')
keymap.set('n', 'sl', '<C-w>l')
