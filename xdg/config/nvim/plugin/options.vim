set nocompatible
filetype on
filetype plugin on
set noeb
syntax on
set t_Co=256
set cmdheight=1
set showcmd
set ruler
set laststatus=2
set number
set cursorline
set whichwrap+=<,>,h,l
set ttimeoutlen=0
" set timeoutlen=500
set virtualedit=block,onemore

" ignore filetype when file search
set wildignore+=*/tmp/*,*.so,*.swp,*.png,*.jpg,*.jpeg,*.gif,*.class,*.pyc,*.pyd

" code indent
set autoindent
set cindent
set cinoptions=g0,:0,N-s,(0
set smartindent
filetype indent on
" tabs & space
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set backspace=2
set sidescroll=10
set list
" set listchars=tab:>~,space:·,precedes:«,extends:»,trail:·,eol:↴
if &buftype != 'terminal'
    set listchars=tab:>-,precedes:«,extends:»,trail:·,lead:·,eol:↴
else
    set listchars=tab:>-,precedes:«,extends:»,trail:·,lead:·
endif
set undofile
set undodir=~/.local/share/nvim/undo
set noshowmode
set wrap
set foldmethod=marker
set foldlevelstart=99
if !exists('g:vscode')
    colorscheme vscode
endif
set relativenumber  
" set mouse=
set mouse=a
" set cursorcolumn
" set colorcolumn=+1

" code lens
" command line lens menu
set wildmenu
" preview  Show extra information about the currently selected
" completion in the preview window.  Only works in
" combination with "menu" or "menuone".

" search
set hlsearch
set incsearch
set ignorecase

" buffers
" set noswapfile
set autoread
set autowriteall
set confirm
set updatetime=500

" encodeing
" set langmenu=zh_CN.UTF-8
" set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030,big5,euc-jp,euc-kr,latin1,prc

set hidden
set termguicolors
" set spell

" Set completeopt to have a better completion experience
set completeopt=menu,menuone,noinsert,preview
set pumheight=20

" Avoid showing message extra message when using completion
set shortmess+=c
set sessionoptions+=winpos,terminal,folds
" set sessionoptions+=options,resize,winpos,terminal
