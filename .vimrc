set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
vmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>p :r! cat /tmp/vitmp<CR>
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'plasticboy/vim-markdown'
" Plugin 'valloric/youcompleteme'
" Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'tpope/vim-surround'
Plugin 'reedes/vim-wordy'
Plugin 'reedes/vim-pencil' " Super-powered writing things
Plugin 'tpope/vim-abolish' " Fancy abbreviation replacements
Plugin 'junegunn/limelight.vim' " Highlights only active paragraph
Plugin 'reedes/vim-lexical' " Better spellcheck mappings
Plugin 'reedes/vim-litecorrect' " Better autocorrections
Plugin 'reedes/vim-textobj-sentence' " Treat sentences as text objects

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set tabstop=4
set shiftwidth=4
set expandtab
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

function! TM()
    " check if mouse is enabled
    if &mouse == 'a'
        " disable mouse
        set mouse-=a
    else
        " enable mouse everywhere
        set mouse=a
    endif
endfunc

nnoremap <C-t> call TM()


set number 
syntax on
set wildmenu
set hlsearch
set autoindent
set mouse-=a
set clipboard=unnamed
