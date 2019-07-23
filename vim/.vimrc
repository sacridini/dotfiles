syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number relativenumber
set hlsearch
set ruler
highlight Comment ctermfg=green
colorscheme ron
set visualbell
map <C-c> <ESC>yy<ESC> " copy
map <C-v> <ESC>p<ESC> " paste
map <C-d> <ESC>yyp<ESC> " duplicate line
map <C-o> <ESC>:Ex<ESC> " open file
map <C-h> <ESC>:vsp<ESC> " vertical pane
map <C-a> <esc>ggVG<CR>
nnoremap <silent> <C-l> :nohl<CR><C-l> " unhighlight words after search
