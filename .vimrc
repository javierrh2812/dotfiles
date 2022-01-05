set nocompatible 
set mouse=a "gaa
set clipboard+=unnamedplus
set showmode
set showmatch
set updatetime=300
set showcmd
set ruler
set encoding=utf-8

set guifont=FiraCode

set titlestring=%t    "set notitle noicon
set background=dark   "persist colo scheme 
set laststatus=2      "status bar
set modeline

set nobackup            " Disable backup files.
set noswapfile          " Disable swap files.
set nowritebackup       " Disable auto backup before overwriting a file.

" Line numbers
set number  				"show line numbers
set relativenumber		"show relativenumber instead of absolute ones

" Splitting.
set splitright          " Open new vertical panes in the right rather than left.
set splitbelow          " Open new horizontal panes in the bottom rather than top.

"whitespace
set tabstop=3           " Number of spaces a tab counts for.
set shiftwidth=3        " Number of spaces to use for each step of indent.

" Searching
set nohlsearch 			"disable highligth search matches
set incsearch 				"show search result as you tipe

"case smart searching 
set ignorecase 
set smartcase 

"-- FOLDING --
set foldmethod=syntax "syntax highlighting items specify folds
let javaScript_fold=1 "activate folding by JS syntax
set foldlevelstart=0 "start file with all folds opened

nnoremap <leader> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <leader> - :exe "resize " . (winheight(0) * 2/3)<CR>

tnoremap <Esc> <C-\><C-n>
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
function! OpenTerminal()
   split term://bash
   resize 10
endfunction

"mappings to make vim more friendly towards presenting slides
autocmd BufNewFile,BufRead *.vpm call SetVimPresentationMode()
function SetVimPresentationMode()
  nnoremap <buffer> <Right> :n<CR>
  nnoremap <buffer> <Left> :N<CR>
endfunction

"FINDING FILES:
"search down into subfolders
"provides tab-completion fol all file-related tasks
set path+=**
"display all matching files when we tab complete
set wildmenu
"NOW WE CAN:
"- hit tab to :find by partial match
"- use * to make it fuzzy
"THINGS TO CONSIDER:
"- :b lets you autocomplete any open buffer

" SNIPPETS
"read an empty HTML template and move cursor to title
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a
"  \'coc-tabnine',
"   PLUGIN!!!!!!!!!!!!!!!!
"
call plug#begin('~/.vim/plugged')
"Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [ 
      \ 'coc-snippets', 
      \ 'coc-emmet', 
      \ 'coc-tsserver', 
      "\ 'coc-tabnine' 
      \ ] 
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'

call plug#end()


inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-c> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" `s{char}{char}{label}`
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)

let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

colorscheme gruvbox

let g:fzf_preview_window = ['right:50%', 'ctrl-p']
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

"requires silversearcher-ag
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let mapleader=" "

" Open file under cursor in new tab
map <Leader>t <Esc><C-W>gF<CR>:tabm<CR>

" Base64 decode word under cursor
nmap <Leader>b :!echo <C-R><C-W> \| base64 -d<CR>

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <C-n> <Esc>

nnoremap <Leader>tt :tabnew<CR>:call OpenTerminal()<CR><Esc>
nnoremap <Leader>ww :tabnew<CR>:e ~/Workspace/notes/index.md<CR>
nnoremap <Leader>ot :call OpenTerminal()<CR>
 
"plugs
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>f :Files<CR>

"fazt accesssss
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR> 

nmap <Leader>v :vsplit<CR>

"tabs navigation
nmap <Leader>h :tabprevious<cr>
nmap <Leader>l :tabnext<cr>

"  Virtual lines movement
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" run current file
nnoremap <Leader>x :!node %<cr>
nnoremap <Leader>py :!python3 %<cr>

"goto code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <Leader>cd :CocList diagnostic<cr>

"select all"
map <C-a> <Esc>ggvG$
onoremap af :<C-u>normal! ggVG<CR>

"register access
noremap <Leader>Y "*y
noremap <Leader>P "*p
noremap <Leader>y "+y
noremap <Leader>p "+p

" use alt+hjkl
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Disable arrows keys (I use exclusively h/j/k/l).
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Alt-# goes to the #th tab.
"nnoremap <A-1> 1gt
"nnoremap <A-2> 2gt
"nnoremap <A-3> 3gt
"nnoremap <A-4> 4gt
"nnoremap <A-5> 5gt
"nnoremap <A-6> 6gt
"nnoremap <A-7> 7gt
"nnoremap <A-8> 8gt
"nnoremap <A-9> 9gt
