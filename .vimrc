set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
syntax enable
Plugin 'vim-airline/vim-airline'
"typescript syntax highlighter plugin
Plugin 'leafgarland/typescript-vim'
Plugin 'Valloric/YouCompleteMe'

Plugin 'davidhalter/jedi-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'

"remove documentation popup
autocmd FileType python setlocal completeopt-=preview
set ts=2
set softtabstop=2
let g:airline#extensions#tabline#enabled = 1
"allow full path to be seen in bottom bar for airline
let g:airline_section_c = '%F'

":e <filename> opens a new buffer in airline
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <C-X> :bdelete<CR>
nnoremap <C-Y> :w !pbcopy<CR>
nnoremap <C-P> :r !pbpaste<CR>

"set number
"set mouse=a
"sts, ts , and sw are tab lengths
set sts=2
set ts=2
set sw=2

set wildmode=longest,list,full
set wildmenu
autocmd vimenter * NERDTree

set number
set mouse=a
