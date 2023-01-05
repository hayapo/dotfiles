vim.cmd([[
let g:fern#renderer = "nerdfont"
let g:fern#default_hidden=1

noremap <silent> <M-c> :<C-u>Fern .<CR>
noremap <silent> <M-e> :<C-u>Fern . -toggle -drawer<CR>
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
function! s:fern_settings() abort
  nmap <silent> <buffer> dd <Plug>(fern-action-remove)
  noremap <silent> p <Plug>(fern-action-preview:toggle)
  noremap <silent> <M-p> <Plug>(fern-action-preview:auto:toggle)
  noremap <silent> <M-d> <Plug>(fern-action-preview:scroll:down:half)
  noremap <silent> <M-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction
augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END
]])
