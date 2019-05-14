"set number
"set runtimepath+=~/.vim_runtime

"source ~/.vim_runtime/vimrcs/basic.vim
"source ~/.vim_runtime/vimrcs/filetypes.vim
"source ~/.vim_runtime/vimrcs/plugins_config.vim
"source ~/.vim_runtime/vimrcs/extended.vim

"try
"source ~/.vim_runtime/my_configs.vim
"catch
"endtry

let g:formatter_yapf_style = 'pep8'

"ignore syntax warning not working..
let g:syntastic_quiet_messages = {'regex': 'SC2148\|SC1234\|SC6789'}

" bundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()            " required
filetype plugin indent on    " required

" nerdtree
" Plugin https://github.com/scrooloose/nerdtree.git

" auto start nerdtree at beginning
autocmd vimenter * NERDTree

" auto install
Plugin 'scrooloose/nerdtree'

Plugin 'supertab'
Plugin 'auto-pairs'
Plugin 'flazz/vim-colorschemes'
Plugin 'Chiel92/vim-autoformat'

" color on
syntax on

" true black
highlight Normal guibg=black guifg=white
set background=dark
colorscheme Jellybeans
