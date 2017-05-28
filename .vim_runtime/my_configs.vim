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

" }}}1

