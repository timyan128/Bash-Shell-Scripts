filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdcommenter'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-vinegar'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'majutsushi/tagbar'
Plugin 'dyng/ctrlsf.vim'
Plugin 'zeis/vim-kolor'
Plugin 'tpope/vim-fugitive'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

filetype plugin indent on

filetype on
filetype plugin on

nmap <Leader>q :q<cr>
nmap <Leader>w :w<cr>
nnoremap <Leader>nw <c-w><c-w>
nnoremap <Leader>lw <c-w>l
nnoremap <Leader>hw <c-w>h
nnoremap <Leader>kw <c-w>k
nnoremap <Leader>jw <c-w>j

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set timeoutlen=1000 ttimeoutlen=10

set incsearch
set hlsearch
set ignorecase
set wildmenu

set laststatus=2
set ruler
set number
set cursorline
"set cursorcolumn

set t_Co=256
color kolor

syntax enable
syntax on

filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set history=1000

nmap <silent> <Leader>sw :FSHere<cr>

nnoremap <silent> [b :bprevious<cr>
nnoremap <silent> ]b :bnext<cr>
nnoremap <silent> [B :bfirst<cr>
nnoremap <silent> ]B :blast<cr>

"nnoremap <Leader>ilt :TagbarToggle<cr>
"let g:tagbar_type_cpp = {
    "\ 'kinds' : [
        "\ 'c:classes:0:1',
        "\ 'd:macros:0:1',
        "\ 'e:enumerators:0:0',
        "\ 'f:functions:0:1',
        "\ 'g:enumeration:0:1',
        "\ 'l:local:0:1',
        "\ 'm:members:0:1',
        "\ 'n:namespaces:0:1',
        "\ 'p:functions_prototypes:0:1',
        "\ 's:structs:0:1',
        "\ 't:typedefs:0:1',
        "\ 'u:unions:0:1',
        "\ 'v:global:0:1',
        "\ 'x:external:0:1'
    "\ ],
    "\ 'sro'         : '::',
    "\ 'kind2scope'  : {
        "\ 'g' : 'enum',
        "\ 'n' : 'namespace',
        "\ 'c' : 'class',
        "\ 's' : 'struct',
        "\ 'u' : 'union'
    "\ },
    "\ 'scope2kind' : {
        "\ 'enum'        : 'g',
        "\ 'namespace'   : 'n',
        "\ 'class'       : 'c',
        "\ 'struct'      : 's',
        "\ 'union'       : 'u'
    "\ }
    "\ }

" Setting for CtrlSF
"
" Input :CtrlSF in command line for you, just a handy shortcut
nmap     <C-F>f <Plug>CtrlSFPrompt
" Input :CtrlSF foo in command line where foo is current visual selected
" word. Wait for input
vmap     <C-F>f <Plug>CtrlSFVwordPath
" Like CtrlSFVwordPath, but execute immediately
vmap     <C-F>F <Plug>CtrlSFVwordExec
" Input :CtrlSF foo in command line where foo is word under cursor
nmap     <C-F>n <Plug>CtrlSFCwordPath
" Just like CtrlSFCwordPath, but also add world boundary around searching word
nmap     <C-F>p <Plug>CtrlSFPwordPath
" Reopen Ctrl window
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

map <Leader>mbo :MBEOpen<cr>
map <Leader>mbc :MBEClose<cr>
map <Leader>mbt :MBEToggle<cr>
map <Leader>mbd :MBEbd

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

nmap <Leader>m :wa<cr>:make<cr><cr>:cw<cr>

