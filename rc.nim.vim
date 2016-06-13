""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nim
fun! JumpToDef()
    if exists("*GotoDefinition_" . &filetype)
        call GotoDefinition_{&filetype}()
    else
        exe "norm! \<C-]>"
    endif
endf

" Jump to tag
au FileType nim nn <M-g> :call JumpToDef()<cr>
au FileType nim ino <M-g> <esc>:call JumpToDef()<cr>i

