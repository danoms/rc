" looks and feels
set nocompatible
filetype indent plugin on
syntax on
set hidden

set tags=tags;
set autochdir

set wildmenu
set showcmd
set hlsearch

set ignorecase
set smartcase
set incsearch
set magic


set autoindent smartindent
set nostartofline
set tabstop=4
set shiftwidth=4

set ruler
set laststatus=2
set confirm

set mouse=a
set cmdheight=2

set number
set cursorline
set title

set wrap
set textwidth=80
set colorcolumn=80
hi clear LineNr

" create some abbreviations
" :ab #b /*************

" for email
setlocal fo+=aw

"colorscheme sublimemonokai
colorscheme cyberpunk
" let g:rehash256 = 1


runtime! ftplugin/man.vim

cmap w!! w !sudo tee > /dev/null %

" sublime tabs
nnoremap <C-S-tab> :tabnext<CR>
nnoremap <C-tab> :tabnext<CR>

" make cursor different, for each mode
if has("autocmd")
	  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
	  au InsertEnter,InsertChange *
			\ if v:insertmode == 'i' | 
			\   silent execute '!echo -ne "\e[5 q"' | redraw! |
			\ elseif v:insertmode == 'r' |
			\   silent execute '!echo -ne "\e[3 q"' | redraw! |
			\ endif
	  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

set clipboard=unnamedplus
