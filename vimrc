execute pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on
syntax enable
set background=dark
colorscheme solarized

autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
