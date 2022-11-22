vim.cmd([[
let g:fern#renderer = "nerdfont"
let g:fern#default_hidden=1
" <Leader>にSpaceキー割り当て
let mapleader = "\<Space>"
" 隠しファイルを表示する
let g:fern#default_hidden=1
" Fern .をSpace+eキーに置き換え
noremap <silent> <Leader>t :<C-u>Fern .<CR>
noremap <silent> <Leader>f : Fern . -toggle -drawer<CR>

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
function! s:fern_settings() abort
  nmap <silent> <buffer> dd <Plug>(fern-action-remove)
  let mapleader = "\<Space>"
  noremap <silent> p <Plug>(fern-action-preview:toggle)
  noremap <silent> <Leader>p <Plug>(fern-action-preview:auto:toggle)
  noremap <silent> <Leader>d <Plug>(fern-action-preview:scroll:down:half)
  noremap <silent> <Leader>u <Plug>(fern-action-preview:scroll:up:half)
endfunction
augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END
]])
