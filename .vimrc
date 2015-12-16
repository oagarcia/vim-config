"My base vim config file
"@author: Andres Garcia <oagarciar@gmail.com>

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


"Always show file numbers
set number

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"CSS
Plugin 'JulesWang/css.vim'

"React
Plugin 'mxw/vim-jsx'

"AngularJS
Plugin 'burnettk/vim-angular'

"Sass
Plugin 'cakebaker/scss-syntax.vim'


"Plugin 'three/javascript-libraries-syntax.vim'
"let g:used_javascript_libs = 'underscore,backbone,jQuery,AngularJS'

" The following are examples of different formats supported.
"Track the engine.
Plugin 'SirVer/ultisnips'

"Emmet plugin
Plugin 'mattn/emmet-vim'
let g:user_emmet_leader_key='<C-M>'

"ES6 support
Plugin 'isRuslan/vim-es6'

"JavaScript bundle for vim, this bundle provides syntax and indent plugins
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'


Plugin 'scrooloose/syntastic'
" This does what it says on the tin. It will check your file on open too, not
" just on save.
" " You might not want this, so just leave it out if you don't.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

"Auto close brackets
"Plugin 'Raimondi/delimitMate'

Plugin 'jiangmiao/auto-pairs'


" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" Keep Plugin commands between vundle#begin/end.



Plugin 'Valloric/YouCompleteMe'
" These are the tweaks I apply to YCM's config, you don't need them but they
" might help.
" " YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.

let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview



"JS Parsing
Plugin 'marijnh/tern_for_vim'


" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.

" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Forget being compatible with good ol' vi
set nocompatible

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on that syntax highlighting
syntax on
colorscheme desert

" Why is this not a default
set hidden

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" When completing by tag, show the whole tag, not just the function name
"set showfulltag

" Enable search highlighting
"set hlsearch

" Incrementally match the search
"set incsearch

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>

" Allow the use of <esc> to cancel last search highlight
"nnoremap <esc> :noh<return><esc>

" Set up the gui cursor to look nice
"set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" Keep some stuff in the history
set history=1000
set undolevels=1000      " use many muchos levels of undo"

"Supports 256 colors
set t_Co=256
set visualbell "don't beep
set noerrorbells "don't beep
set mouse=a

" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" " On pressing tab, insert 4 spaces
set expandtab
set softtabstop=2
set backspace=2

set autoindent
set expandtab
"set smartindent
set cindent
set smarttab
"inoremap { {<CR>}<Esc>O
"inoremap <CR> <CR><CR><C-o>k<tab>
"inoremap { {<CR>}<Esc>O}
"inoremap { {<CR>}<Esc>0

