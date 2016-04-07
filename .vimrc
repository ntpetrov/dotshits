filetype off
call pathogen#infect() " Pathogen hack
call pathogen#helptags()
filetype plugin indent on " Enable file-type indentation
nnoremap <F5> :GundoToggle<CR>
" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
 if has('persistent_undo')
 let myUndoDir = expand(vimDir . '/undodir')
" Create dirs
 call system('mkdir ' . vimDir)
 call system('mkdir ' . myUndoDir)
 let &undodir = myUndoDir
 set undofile
 set undolevels=1000         " How many undos
 set undoreload=10000        " number of lines to save for undo
endif
set backspace=2 " make backspace work like most other apps
syntax enable
set background=dark
colorscheme molokai
let g:molokai_original = 1
set ruler laststatus=2 hlsearch ignorecase smartcase title
set paste
