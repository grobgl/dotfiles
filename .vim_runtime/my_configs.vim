" styles {{{1

" set colorscheme
colorscheme solarized
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
set background=dark


" plugin configs {{{1

" syntastic off by default, toggle with F5
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <F5> :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" set multiple cursor key to n again
let g:multi_cursor_next_key="\<C-n>"

" gundo toggle
let g:gundo_prefer_python3 = 1
nnoremap <F4> :GundoToggle<CR>

" }}}1

