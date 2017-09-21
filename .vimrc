set nu
syntax on
set 

set nocompatible	"be iMproved, required
filetype off	"required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'nanotech/jellybeans.vim'

call vundle#end()
filetype plugin indent on

" You Complete Me (Code autocompletion Bundle)
Bundle 'Valloric/YouCompleteMe'

" NERDTree Option
" Key Mapping F3
map <F3> :NERDTreeToggle<cr>

color jellybeans

" Close NERDTree when opening a file
let NERDTreeQuitOnOpen=1
" Show Hidden File also
let NERDTreeShowHidden=1

" YCM setting
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py' 
let g:ycm_confirm_extra_conf = 0 
let g:ycm_key_list_select_completion = ['', ''] 
let g:ycm_key_list_previous_completion = ['', ''] 
let g:ycm_autoclose_preview_window_after_completion = 1 
let g:ycm_warning_symbol = '>*' 

nnoremap g :YcmCompleter GoTo " 
" nnoremap gg :YcmCompleter GoToImprecise 
nnoremap d :YcmCompleter GoToDeclaration 
nnoremap t :YcmCompleter GetType 
nnoremap p :YcmCompleter GetParent 

