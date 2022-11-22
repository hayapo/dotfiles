vim.cmd('autocmd!')
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.showtabline = 2
vim.opt.breakindent = true
vim.opt.swapfile = false
vim.opt.title = true
vim.opt.helplang = 'ja','en'

vim.cmd([[
function! InputParentheses(parenthesis) abort
	let l:nextChar = GetNextString(1)
	let l:prevChar = GetPrevString(1)
	let l:parentheses = { "{": "}", "[": "]", "(": ")" }

	let l:nextCharIsEmpty = (l:nextChar == "")
	let l:nextCharIsCloseParenthesis = (l:nextChar == "}" || l:nextChar == "]" || l:nextChar == ")")
	let l:nextCharIsSpace = (l:nextChar == " ")

	if l:nextCharIsEmpty || l:nextCharIsCloseParenthesis || l:nextCharIsSpace
		return a:parenthesis.l:parentheses[a:parenthesis]."\<LEFT>"
	else
		return a:parenthesis
	endif
endfunction
inoremap <expr> { InputParentheses("{")
inoremap <expr> [ InputParentheses("[")
inoremap <expr> ( InputParentheses("(")
]])
