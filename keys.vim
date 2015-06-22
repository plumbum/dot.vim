"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key bindings
"

" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+yi
" Вставка из обычного буфера
" imap <C-S-V> <esc>"+gPi
" nmap <C-S-V> "+gP
" Вставка из мышиного буфера
imap <C-M-V> <esc>"*gPi
nmap <C-M-V> "*gP


" Toggle folds
nmap <space> za

" По Ctrl-Enter переходит к файлу на имени которого стоит курсор
imap <C-CR> <Esc>:e<Space><C-R><C-A><CR>
nmap <C-CR> :e<Space><C-R><C-A><CR>

" автодополнение по Control+Space
imap <C-Space> <C-N>

" Поиск и замена слова под курсором
nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/

" 'умный' Home
nmap <Home> ^
imap <Home> <Esc>I

" Меню/тулбар (для gvim)
nmap <F1> :set go-=m<CR>:set go-=T<CR>
nmap <S-F1> :set go+=m<CR>:set go+=T<CR>

" nmap <silent> <F3> :TlistToggle<CR>
" imap <silent> <F3> <Esc>:TlistToggle<CR>
nmap <silent> <F3> :TagbarToggle<CR>
imap <silent> <F3> <Esc>:TagbarToggle<CR>

nmap <silent> <C-F3> :NERDTreeToggle<CR>
imap <silent> <C-F3> <Esc>:NERDTreeToggle<CR>

" Jump between *.h *.c* (use fswitch)
nmap <silent> <F4> :FSHere<CR>
imap <silent> <F4> <Esc>:FSHere<CR>

" закрыть буфер
imap <C-F4> <Esc>:bd<CR>a
nmap <C-F4> :bd<CR>

" предыдущий буфер
imap <F5> <Esc>:bp!<CR>a
nmap <F5> :bp!<CR>

" следующий буфер
imap <F6> <Esc>:bn!<CR>a
nmap <F6> :bn!<CR>

" окно ниже
imap <C-j> <Esc><C-W>ja
nmap <C-j> <C-W>j

" окно выше
imap <C-k> <Esc><C-W>ka
nmap <C-k> <C-W>k

" окно левее
map <C-h> <Esc><C-W>ha
nmap <C-h> <C-W>h

" окно правее
imap <C-l> <Esc><C-W>la
nmap <C-l> <C-W>l

" Внутренний переключаетель языков
imap <M-]> <Esc>:set<Space>keymap=russian-jcukenwin<CR>a
nmap <M-]> :set<Space>keymap=russian-jcukenwin<CR>

imap <M-[> <Esc>:set<Space>keymap=<CR>a
nmap <M-[> :set<Space>keymap=<CR>


"Движение в режиме вставки
"Прокрутка в лево (<Alt+h>)
imap <silent> <M-h> <C-O>h
nmap <silent> <M-h> h
"Прокрутка в право (<Alt+l>)
imap <silent> <M-l> <C-O>l
nmap <silent> <M-l> l
"Прокрутка ввверх (<Alt+k>)
imap <silent> <M-k> <C-O>k
nmap <silent> <M-k> k
"Прокрутка вниз (<Alt+j>)
imap <silent> <M-j> <C-O>j
nmap <silent> <M-j> j


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs
"
imap <M-=> <Esc>:tabnew<CR>a
nmap <M-=> :tabnew<CR>
imap <M--> <Esc>:tabclose<CR>a
nmap <M--> :tabclose<CR>
imap <M-1> <Esc>:tabnext<Space>1<CR>a
nmap <M-1> :tabnext<Space>1<CR>
imap <M-2> <Esc>:tabnext<Space>2<CR>a
nmap <M-2> :tabnext<Space>2<CR>
imap <M-3> <Esc>:tabnext<Space>3<CR>a
nmap <M-3> :tabnext<Space>3<CR>
imap <M-4> <Esc>:tabnext<Space>4<CR>a
nmap <M-4> :tabnext<Space>4<CR>
imap <M-5> <Esc>:tabnext<Space>5<CR>a
nmap <M-5> :tabnext<Space>5<CR>
imap <M-6> <Esc>:tabnext<Space>6<CR>a
nmap <M-6> :tabnext<Space>6<CR>
imap <M-7> <Esc>:tabnext<Space>7<CR>a
nmap <M-7> :tabnext<Space>7<CR>
imap <M-8> <Esc>:tabnext<Space>8<CR>a
nmap <M-8> :tabnext<Space>8<CR>
imap <M-9> <Esc>:tabnext<Space>9<CR>a
nmap <M-9> :tabnext<Space>9<CR>
imap <M-0> <Esc>:tabnext<Space>10<CR>a
nmap <M-0> :tabnext<Space>10<CR>

imap <M-Left> <Esc>:tabprev<CR>a
nmap <M-Left> :tabprev<CR>
imap <M-Right> <Esc>:tabnext<CR>a
nmap <M-Right> :tabnext<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Building
"
" сборка с сохранением
imap <F9> <Esc>:wa<CR>:make<CR>
nmap <F9> :wa<CR>:make<CR>

" пересборка с сохранением
imap <C-F9> <Esc>:wa<CR>:make<Space>clean<CR>:make<CR>
nmap <C-F9> :wa<CR>:make<Space>clean<CR>:make<CR>

" открыть окно результатов компиляции
imap <C-F11> <Esc>:copen<CR>
nmap <C-F11> :copen<CR>

" следующая ошибка
imap <F11> <Esc>:cn<CR>i
nmap <F11> :cn<CR>

" предыдущая ошибка
imap <S-F11> <Esc>:cp<CR>i
nmap <S-F11> :cp<CR>


" Ctags gen
imap <C-F12> <Esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>a
nmap <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

