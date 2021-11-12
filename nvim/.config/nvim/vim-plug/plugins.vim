call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    " Plug 'scrooloose/NERDTree'
    
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    " Color preview
    " Plug 'ap/vim-css-color'
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Themes
    Plug 'rafi/awesome-vim-colorschemes'

call plug#end()


" set termguicolors
" 
let g:Hexokinase_highlighters = ['backgroundfull']
