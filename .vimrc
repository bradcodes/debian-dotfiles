" Pathogen
execute pathogen#infect()

" Syntax and colors
syntax on
set background=dark
set t_Co=256
"colorscheme solarized

let mapleader = ","
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" Buffers
nnoremap ,b :buffer *
nnoremap ,B :sbuffer *
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Custom settings
set filetype=on
set wildmenu			" visually show autocomplete
set showcmd				" show last command in bottom bar
set nocompatible		" remove vi compability mode
set number				" show line numbers
set ruler				" always show bottom ruler / info
set autoindent			" autoindent on
set tabstop=4			" define tab length
set nobackup			" no need for ~ files
set showmatch			" show matching brackets
set hlsearch			" highlight search results
"set cursorline			" use a line instead of cursor indicator

" remap jj to escape in insert mode
inoremap jj <Esc>

" swapping : and ; save a lot of unneeded shifting:
noremap ; :
noremap : ;

" The wish that grants more wishes (edit vimrc with \ev)
nnoremap <Leader>ev :tabnew<CR>:e ~/.vimrc<CR>

" Similar to vimrc above, but with zshrc
nnoremap <Leader>z :tabnew<CR>:e ~/.zshrc<CR>

" Same as previous, but open a new tab with notes.txt
nnoremap <Leader>, :tabnew<CR>:e ~/.notes.txt<CR>

" Launch Goyo mode
nnoremap <Leader>g :Goyo
