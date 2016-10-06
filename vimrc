" Vim configuration
" Основная конфигурация редактора
set nocompatible  " be iMproved, required
set exrc          " Искать .vimrc в текущей директории
set secure        " Ограничения на .vimrc в директории

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"
filetype off                  " required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

""" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'fugitive.vim'               " https://github.com/tpope/vim-fugitive
Plugin 'jiangmiao/auto-pairs'
Plugin 'Konfekt/FastFold'
Plugin 'repeat.vim'
Plugin 'surround.vim'

" Plugin 'FSwitch'
Plugin 'derekwyatt/vim-fswitch'

Plugin 'majutsushi/tagbar'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'scrooloose/syntastic'       " https://github.com/scrooloose/syntastic
Plugin 'Shougo/neocomplete.vim'
" ./install.py --clang-completer --gocode-completer --tern-completer
" Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'            " http://mattn.github.io/emmet-vim/

""" Go lang
Plugin 'fatih/vim-go'
Plugin 'garyburd/go-explorer'

""" PHP
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'm2mdas/phpcomplete-extended'

""" Arduino
Plugin 'sudar/vim-arduino-syntax'
Plugin 'tclem/vim-arduino'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color scheme
"
if has("gui_running")
    set background=dark
    set t_Co=256
    let g:solarized_termcolors=256
    colorscheme lucius
    set guifont=Input\ 10
    " set guifont=Fira\ Mono\ Regular\ 10
    " set guifont=Liberation\ Mono\ 10
    " set guifont=Droid\ Sans\ Mono\ 10
    " set guifont=Dejavu\ Sans\ Mono\ 10
    " set guifont=Inconsolata\ LGC\ 10
    " set guifont=terminus\ 12
    " colorscheme codeschool
    " colorscheme koehler
    " colorscheme oceandeep
else
    set background=dark
    set t_Co=256
    let g:solarized_termcolors=256
    colorscheme lucius
endif


if (exists('+colorcolumn'))
    set colorcolumn=120
    highlight ColorColumn ctermbg=9
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Generic/interface settings
syntax on
set ttyfast
set undolevels=500
set nu            "  Нумерация строк
set nobackup      " Do not make a backup before overwriting a file
set showbreak=+\  " Precede continued screen lines
set comments=b:#,:%,fb:-,n:>,n:)b:\"n:: " Comments may start with these chars: #%>":
set noendofline   " No <EOL> will be written for the last line in the file
set equalprg=fmt  " External program to use for "=" command
set formatoptions=tcq " How to do automatic formatting
set history=500    " How many entries may be stored in : and / histories
set keywordprg=man\ -k " Display man entries for `K' lookup
set lazyredraw    " Do not update screen while executing macros
" set list listchars=tab:>_,trail:_,extends:+ " ,eol:$ " Show tabs, trailing spaces, long lines
set matchpairs=(:),{:},[:],<:> " Matching pair characters
set shortmess=o   " Overwrite message for writing a file with subsequent message
set showmatch     " When a bracket is inserted, briefly jump to the matching one
set sidescroll=1  " The minimal number of columns to scroll horizontally
set nostartofline " Keep curosr's column
set suffixes=     " Set a priority between files with almost the same name
set timeout timeoutlen=3000 " Set timeout on mappings/keycodes to 3 seconds
set viminfo='50,\"1000 " The number of files for which the marks are remembered; max number of lines saved for a buffer
set whichwrap=b,s,h,l,<,>,[,] " Wrap to the previous/next line on all keys
set wildmenu      " Command-line completion operates in an enhanced mode
set wildmode=longest,list:longest,full " Bash-vim wildcard behavior
set wrap        " Do not visually wrap long lines  - do not make it look like there are line breaks where there aren't
set smarttab
set nohidden


" Windows/buffers settings
set hidden        " Allow to switch between buffers/windows when the buffer was modified
set laststatus=2  " Always show status line
set ruler         " Show the line and column number of the cursor position
set showcmd       " Show (partial) command in status line
set splitbelow    " Put the new window below the current one
set title         " Set title to the value of 'titlestring' or to "VIM - filename"
set winheight=4   " At least 4 lines for current window
set winminheight=0 " Allow zero-height windows
set so=5            " Поля при промотке
" Text settings
set noautoindent  " copy indent from current line when starting a new line
set backspace=2   " Backspace over indent, eol, start
set expandtab     " Do not insert tab when <Tab> was pressed - insert a number of spaces
set nojoinspaces  " Do not insert two spaces after a '.', '?' and '!' with a join command
set notextmode    " Don't append bloody carriage returns
" set softtabstop=3 " Number of spaces that a <Tab> counts for while performing editing operations
set tabstop=4     " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4  " Number of spaces to use for each step of (auto)indent
set textwidth=0   " Maximum width of text that is being inserted. A longer line will be broken. Zero disables this.

" Search settings
set ignorecase    " Ignore case in search patterns
set smartcase     " Match "word" case-insensitive and "Word" case-sensitive
set incsearch     " Incremental search. Beware! Only for fast terminals
set hlsearch      " the search highlighting

" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set statusline=%F%m%r%h%w\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]\ %{fugitive#statusline()} 
set laststatus=2 " always show the status line


set foldenable
set foldcolumn=2
set foldmethod=syntax
set foldlevelstart=2

" set tb=""

" Скрыть панель в gui версии ибо она не нужна
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips
"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar
""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_left = 0       " Показывать окно слева
let g:tagbar_width = 30     " Ширина окна
let g:tagbar_iconchars = ['▶', '◢']     " Показывать стрелки вместо +/-
let g:tagbar_sort = 0       " Не сортировать


" C.VIM configuration
"
let g:C_AuthorName      = 'Ivan A-R'
let g:C_AuthorRef       = 'http://tuxotronic.org'
let g:C_Email           = 'i@tuxotronic.org'
let g:C_Company         = 'Freelancer'

" OmniCppComplete
" filetype plugin on
" filetype indent on

let g:cppcomplete_placeholders = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteScope = 1



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let vim_markdown_preview_github=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PHP
autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Arduino
"Default: /Applications/Arduino.app/Contents/Resources/Java
let g:vim_arduino_library_path = '/opt/arduino/'
"Default: result of `$(ls /dev/tty.* | grep usb)`
let g:vim_arduino_serial_port  = '/dev/ttyUSB0'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/keys.vim
source ~/.vim/rc.neocomplete.vim
source ~/.vim/rc.go.vim
source ~/.vim/rc.dokuwiki.vim
source ~/.vim/rc.encodings.vim


