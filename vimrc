" ===================================================
"
" THE BASICS
" Follows:
" https://www.reddit.com/r/vim/wiki/vimrctips#wiki_vimrc_checklist.3A
" and:
" https://github.com/colepeters/dotfiles/blob/master/vimrc
" ====================================================

" set nocompatible - no need: Vim automatically sets nocompatible if it finds a vimrc or gvimrc upon startup
set number                      " line numbers
set backspace=indent,eol,start  " allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     " Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set autoread                    " Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" ================ Indentation ======================
set autoindent
filetype plugin indent on
set smarttab
" ================ Use this setup ======================
" Reasoning:
" https://www.reddit.com/r/vim/wiki/tabstop
" set shiftwidth=4
" set softtabstop=4
" set tabstop=8
" set expandtab

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" ================ Folds ============================
set foldmethod=indent   " fold based on indent
set foldnestmax=3       " deepest fold is 3 levels
set nofoldenable        " dont fold by default

" ================ Completion =======================
set wildmode=list:longest
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================
set scrolloff=8         " Start scrolling when 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Appearance ============
set wrap                                 " ---------------------------------
set nolist                               " Word wrap without linebreaks
set linebreak                            " ---------------------------------
set guioptions=gm                        " Disable graphical tabs
set hlsearch                             " Highlight search matches
let g:enable_bold_font = 1               " Enable bold fonts

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" =============== Syntax =================
syntax enable                            " Syntax highlighting
let g:jsx_ext_required = 0               " Allow JSX in normal JS files

" For color highlighting, follow this gist:
" https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f
