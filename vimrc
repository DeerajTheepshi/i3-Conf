" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.
"------------------------------------------------------------------
set nocompatible
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
"PERSONAL THEME-----"
Plugin 'VundleVim/Vundle.vim'
Plugin 'whatyouhide/vim-gotham'

"ADD PLUGIN HERE"

call vundle#end()
filetype plugin indent on

"------------------------------------------------------------------
" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!
" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
"--------PERSONAL CONFIG STARTS HERE----------"
syntax on
colorscheme gotham256
set laststatus=2
set ttimeoutlen=50
set number
let g:powerline_pycmd = 'py3'
set ts=4
set shiftwidth=4
set autoindent
set smartindent
set cindent
set clipboard=unnamed
set runtimepath+=~/.vim/ultisnips_rep

Bundle 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"-----KEY MAP-------"
map <C-F9> :w <CR> :! clear && g++ % && ./a.out <CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
