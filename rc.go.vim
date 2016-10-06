""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Go Language
"""
""" https://github.com/fatih/vim-go
""" https://github.com/fatih/vim-go-tutorial
"""
""" PANIC PANIC PANIC bug - remove '/tmp/gocode-daemon.user' (https://github.com/nsf/gocode/issues/164)


let g:go_fmt_command = "goimports"

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go']  }
let g:go_list_type = "quickfix"

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" Поиск и замена слова под курсором
au FileType go nmap ; <Plug>(go-rename)

" Быстрая справка по функции
au FileType go nmap <F1> <Plug>(go-info)
" Переход к справке
au FileType go nmap <S-F1> <Plug>(go-doc)

" Запуск
au FileType go nmap <F9> <Plug>(go-run)
" Компиляция
au FileType go nmap <C-F9> <Plug>(go-build)

" Переход к определению
au FileType go nmap <C-B> <Plug>(go-def-tab)

au FileType go nmap <C-F12> :!gotags -R . /usr/local/go/src $GOPATH/src > tags<CR>

