syntax on
set tabstop=4
set ts=4
set sts=4
set autoindent
set smartindent
set smarttab
" set expandtab
set shiftwidth=2
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green
colorscheme murphy
set visualbell
set directory^=$HOME/.vim/tmp//
map <C-c> <ESC>yy<ESC> " copy
map <C-v> <ESC>p<ESC> " paste
map <C-d> <ESC>yyp<ESC> " duplicate line
map <C-o> <ESC>:Ex<ESC> " open file
map <C-h> <ESC>:vsp<ESC> " vertical pane
map <C-a> <esc>ggVG<CR>
nnoremap <silent> <C-l> :nohl<CR><C-l> " unhighlight words after search
map <F4> : !make -k 
