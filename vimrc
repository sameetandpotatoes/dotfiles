set nocompatible

execute pathogen#infect()
call pathogen#helptags()

syntax enable
set background=dark
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
colorscheme solarized

syntax on

autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
