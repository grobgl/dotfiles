" styles {{{1

" set colorscheme
colorscheme solarized
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
set background=dark


" tabs configuration {{{1

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set smarttab


" plugin configs {{{1

" syntastic off by default, toggle with F5
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <F5> :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" set multiple cursor key to n again
let g:multi_cursor_next_key="\<C-n>"

" gundo toggle
let g:gundo_prefer_python3 = 1
nnoremap <F4> :GundoToggle<CR>

" tagbar toggle
nmap <F8> :TagbarToggle<CR>

" nerdtree pos
let g:NERDTreeWinPos = "left"

" }}}1

