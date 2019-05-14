set number
autocmd vimenter * NERDTree
set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

set background=dark
"bundle
set nocompatible      
filetype off  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()
filetype plugin indent on

Plugin 'supertab'
Plugin 'auto-pairs'
Plugin 'flazz/vim-colorschemes'
Plugin 'Chiel92/vim-autoformat'
colorscheme Jellybeans

let g:formatter_yapf_style = 'pep8'

"ignore syntax warning not working..
let g:syntastic_quiet_messages = {'regex': 'SC2148\|SC1234\|SC6789'}
