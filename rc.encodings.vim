""""""""""""""""""""""""""""""""""""""""""""""
" Encodings
"
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
menu E&ncoding.&windows-1251 :e ++enc=cp1251<CR>
menu E&ncoding.ibm-&866      :e ++enc=ibm866<CR>
menu E&ncoding.&koi8-r       :e ++enc=koi8-r<CR>
menu E&ncoding.&utf-8        :e ++enc=utf-8<CR>
menu E&ncoding.u&nicode      :e ++enc=ucs-2<CR>
"map <F8> :emenu Encoding.<TAB>

""""""""""""""""""""""""""""""""""""""""""""""""""

