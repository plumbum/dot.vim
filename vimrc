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

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'mattn/emmet-vim'            " http://mattn.github.io/emmet-vim/
Plugin 'scrooloose/syntastic'       " https://github.com/scrooloose/syntastic
Plugin 'fugitive.vim'               " https://github.com/tpope/vim-fugitive
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'lokaltog/vim-easymotion'    " https://github.com/Lokaltog/vim-easymotion
Plugin 'surround.vim'
Plugin 'repeat.vim'
" Plugin 'taglist-plus'
Plugin 'Tagbar'
Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'
Plugin 'OmniCppComplete'
Plugin 'FSwitch'

" Plugin 'php.vim'
Plugin 'shawncplus/php.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'PHPcollection'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'junegunn/vim-easy-align'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'bronson/vim-trailing-whitespace'

Plugin 'lua_omni'
" Plugin 'itchyny/vim-cursorword'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'SkidanovAlex/CtrlK'
"

" Haskell
Plugin 'yogsototh/haskell-vim'            " syntax indentation / highlight
" Plugin 'enomsg/vim-haskellConcealPlus'    " unicode for haskell operators
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'Twinside/vim-hoogle'
Plugin 'pbrisbin/html-template-syntax'    " Yesod templates

" Plugin 'syntaxhaskell.vim'
" Plugin 'indenthaskell.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color scheme
"
if has("gui_running")
"    colorscheme koehler
    colorscheme oceandeep
    set background=dark
    "set guifont=terminus\ 12
    "set guifont=Dejavu\ Sans\ Mono\ 10
    "set guifont=Inconsolata\ LGC\ 10
    set guifont=Liberation\ Mono\ 10
else
    set background=dark
    colorscheme oceandeep
"	colorscheme koehler
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
set foldlevelstart=1

" set tb=""

" Скрыть панель в gui версии ибо она не нужна
"set guioptions-=T

""""""""""""""""""""""

" -------------------
"       Haskell
" -------------------
let mapleader="-"
let g:mapleader="-"
set tm=2000
nmap <silent> <leader>ht :GhcModType<CR>
nmap <silent> <leader>hh :GhcModTypeClear<CR>
nmap <silent> <leader>hT :GhcModTypeInsert<CR>
nmap <silent> <leader>hc :SyntasticCheck ghc_mod<CR>:lopen<CR>
let g:syntastic_mode_map={'mode': 'active', 'passive_filetypes': ['haskell']}
let g:syntastic_always_populate_loc_list = 1
nmap <silent> <leader>hl :SyntasticCheck hlint<CR>:lopen<CR>

" Auto-checking on writing
autocmd BufWritePost *.hs,*.lhs GhcModCheckAndLintAsync

"  neocomplcache (advanced completion)
autocmd BufEnter *.hs,*.lhs let g:neocomplcache_enable_at_startup = 1
function! SetToCabalBuild()
    if glob("*.cabal") != ''
        set makeprg=cabal\ build
    endif
endfunction
autocmd BufEnter *.hs,*.lhs :call SetToCabalBuild()

" -- neco-ghc
let $PATH=$PATH.':'.expand("~/.cabal/bin")


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
let g:tagbar_left = 1       " Показывать окно слева
let g:tagbar_width = 30     " Ширина окна
let g:tagbar_iconchars = ['▶', '◢']     " Показывать стрелки вместо +/-
let g:tagbar_sort = 0       " Не сортировать


""""""""""""""""""""""""""""""""""""""""""""""
" Encodings
""""""""""""""""""""""""""""""""""""""""""""""
"set encoding=utf-8
"set fileencoding=utf-8
"set termencoding=cp1251
"
" Autodetect
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

"Wagner's encoding menu
set wildmenu
set wcm=<Tab>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.ibm-866      :e ++enc=ibm866<CR>
menu Encoding.koi8-r       :e ++enc=koi8-r<CR>
menu Encoding.utf-8        :e ++enc=utf-8<CR>
menu Encoding.unicode      :e ++enc=ucs-2<CR>
"map <F8> :emenu Encoding.<TAB>
""""""""""""""""""""""""""""""""""""""""""""""""""

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


" Scons use  make
"let current_compiler = "scons"

"set errorformat=%*[^"]"%f"%*\D%l: %m,"%f"%*\D%l: %m,%-G%f:%l: (Each undeclared identifier is reported only once,%-G%f:%l: for each function it appears in.),%f:%l:%m,"%f"\, line %l%*\D%c%*[^ ] %m,%D%*\a[%*\d]: Entering directory `%f',%X%*\a[%*\d]: Leaving directory `%f',%DMaking %*\a in %f  

"set makeprg=scons\ -u\ \.



" ***Dokuwiki section*********************
" looks for DokuWiki headlines in the first 20 lines
" of the current buffer
fun IsDokuWiki()
  if match(getline(1,20),'^ \=\(=\{2,6}\)[^=]\+\1 *$') >= 0
    set textwidth=0
    set wrap
    set linebreak
    set filetype=dokuwiki
  endif
endfun

" check for dokuwiki syntax
autocmd BufWinEnter *.txt call IsDokuWiki()
" ************************


" autocmd BufNewFile,BufRead *.lzx set filetype=lzx
" autocmd Filetype cpp,c,java,cs set omnifunc=cppcomplete#CompleteMain
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType py set omnifunc=pythoncomplete#CompleteTags
" let pythonhighlightall=1
" 
" augroup mkd
"     autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
" augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

source ~/.vim/keys.vim



