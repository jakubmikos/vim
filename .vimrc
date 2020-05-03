"fonts and colors
if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas:h11:cANSI  "windows font
  endif
  "disable menu in gvim
  set guioptions -=m
endif
colorscheme badwolf "colorscheme    


"Pathogen
execute pathogen#infect()

"Tabs config
set tabstop=2           "number of visual spaces per tab
set softtabstop=2       "number of spaces in tab when editing   
set expandtab           "tabs are spaces
set shiftwidth=2        "auto indentation

"UI config
syntax on               "enable syntac processing
set number              "show line numbers
set relativenumber      "show relative line numbers
filetype plugin indent on	"enable .ext specific indentation files
"filetype indent on      "enable .vimrc indentation settings
set showcmd             "show last command in bottom bar
set cursorline          "highlight current line
set wildmenu            "visual autocomplete for command menu
set lazyredraw          "redraw only when we need to
set showmatch           "highlight matching [{()}]
set hlsearch            "highlight search
set wildmenu            "enable wildmenu

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Use visual bell instead of beeping when doing something wrong
set visualbell

"reload files when they change on disk
set autoread

"Plugins
"CtrlP
set runtimepath^=~/vimfiles/bundle/ctrlp.vim

"JS and JSX
let g:jsx_ext_required = 0  "Allow JSX in normal JS file

"NERDTree
if has("gui_running")
  if has("gui_win32")
    autocmd vimenter * NERDTree c:\Projects
  endif
endif

"VIM Wiki
set nocompatible
filetype plugin on

"OmniSharp
let g:ale_linters = {
      \ 'cs': ['OmniSharp']
      \ }

let g:OmniSharp_selector_ui = 'ctrlp'

"Key mappings
inoremap jj <Esc>
