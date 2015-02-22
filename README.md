My dot.vim files
================


Usage
-----

  * git clone https://github.com/plumbum/dot.vim.git ~/.vim
  * ln -s ~/.vim/vimrc ~/.vimrc
  * Run vim
  * Install vundles :VundleInstall


tips
----

  * yaw " copy word under cursor
  * ca( " change text between brace ( )
  * da' " delete text between apo '


Makefile
--------

  * :map <F9> :make             " Call make by key
  * :set makeprg=make\ -j9      " Redefine command execute by :make

surround.vim
------------

  * ds' ds" ds( ds[ ds< - удалить ближайшие скобки/кавычки
  * dst - удалить html тег обрамляющий текст
  * cs"[ - заменить кавычки на скобки
  * csw" - окружить слово кавычками
  * csp<p> - окружить абзац тегом

### Normal mode

  * ds  - delete a surrounding
  * cs  - change a surrounding
  * ys  - add a surrounding
  * yS  - add a surrounding and place the surrounded text on a new line + indent it
  * yss - add a surrounding to the whole line
  * ySs - add a surrounding to the whole line, place it on a new line + indent it
  * ySS - same as ySs

### Visual mode

  * s   - in visual mode, add a surrounding
  * S   - in visual mode, add a surrounding but place text on new line + indent it

### Insert mode

  * <CTRL-s> - in insert mode, add a surrounding
  * <CTRL-s><CTRL-s> - in insert mode, add a new line + surrounding + indent
  * <CTRL-g>s - same as <CTRL-s>
  * <CTRL-g>S - same as <CTRL-s><CTRL-s>

YCM
---

  * Make symlink: 
  * ./install.sh --clang-completer --omnisharp-completer --system-libclang --system-boost

