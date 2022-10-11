set nocompatible 
syntax enable
"syntax off
filetype on
filetype plugin on
filetype indent on
set autoindent

"colorscheme darkblue
colorscheme desert

set ruler
set nu
set showcmd
set backspace=eol,start,indent
set magic
set showmatch
set nobackup
set nowb
set noswapfile
set ai
set si
set cindent
set wildmenu
set hlsearch
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set history=400
set encoding=utf8
set fileencodings=utf8,gb2312,gb18030,ucs-bom,latin1
set visualbell
set clipboard=unnamed
set wrap
set linebreak

if &term == "xterm"
    set t_Co=8
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif

set laststatus=2
highlight StatusLine cterm=bold ctermfg=white ctermbg=black

"set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\[%{&fileformat}]\[%{&encoding}]\[%{strftime(\"%Y-%m-%d\ %H:%M:%S\")}] 
set statusline=%F%m%r%h%w\ \[POS=%l,%v]\[%{&encoding}]
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 

nmap <F7> :TlistToggle <CR>

let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

set tags+=tags
set tags+=~/.vim/tags/libc.tags
set tags+=~/.vim/tags/cpp.tags
set tags+=~/.vim/tags/glib.tags
set tags+=~/.vim/tags/susv2.tags
set tags+=~/workspace/sylar/tags

set completeopt=longest,menu

let OmniCpp_NamespaceSearch=1
let OmniCpp_GlobalScopeSearch=2
let OmniCpp_ShowAccess=1
let OmniCpp_MayCompleteDot=1
let OmniCpp_MayCompleteArrow=1
let OmniCpp_MayCompleteScope=1
let OmniCpp_DefaultNamespaces=["std","_GLIBCXX_STD"]


" async-vim
let g:asyncrun_open = 6

"vim-plug
call plug#begin()
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/vim-terminal-help'

" The default plugin directory will be as follows:
" "   - Vim (Linux/macOS): '~/.vim/plugged'
" "   - Vim (Windows): '~/vimfiles/plugged'
" "   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" " You can specify a custom plugin directory by passing it as the argument
" "   - e.g. `call plug#begin('~/.vim/plugged')`
" "   - Avoid using standard Vim directory names like 'plugin'
"
" " Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" " On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" " Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }
"
" " Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" " Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
"
" " Initialize plugin system
" " - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" " You can revert the settings after the call like so:
" "   filetype indent off   " Disable file-type-specific indentation
" "   syntax off            " Disable syntax highlighting
