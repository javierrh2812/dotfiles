# my nvim config cheat sheet starter pack 100% hacker pro master gaa

0. install neovim
   linux: sudo apt install neovim
   windows: choco install neovim

1. crear archivo de configuracion:
   en linux: ~/.config/nvim
   en windows: ~/AppData/Local/nvim

el archivo: init.vim

```vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
```

nos permite utilizar el mismo archivo para configurar vim y/o neovim

2. luego crear el .vimrc en el path ~/

config inicial

```vim
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=3
set relativenumber
set noshowmode
```

3. extensiones

gestor: plug
https://github.com/junegunn/vim-plug
sigues instrucciones, copia y pega

```vim

call plug#begin('~/.vim/plugged')
"temas
Plug 'morhetz/gruvbox'
call plug#end()

"configurando la extension
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

```
