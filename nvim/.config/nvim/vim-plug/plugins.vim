call plug#begin('~/.config/nvim/autoload/plugged')

	Plug 'scrooloose/nerdtree'                         " Nerdtree
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
    Plug 'ryanoasis/vim-devicons'                      " Icons for Nerdtree

	" Use release branch (recommend)
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    " Plug 'scrooloose/NERDTree'
    
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    " Color preview
    Plug 'ap/vim-css-color'
    " Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Themes
    Plug 'rafi/awesome-vim-colorschemes'

call plug#end()


" set termguicolors
" 
let g:Hexokinase_highlighters = ['backgroundfull']
