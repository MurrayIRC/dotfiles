" =============
" P L U G I N S
" =============

" START PLUG
call plug#begin()

Plug 'rakr/vim-two-firewatch' " color Theme
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " nerdtree tree view
Plug 'scrooloose/syntastic' " syntax errors
Plug 'bling/vim-airline' " vim-airline status bar
Plug 'vim-airline/vim-airline-themes' " vim-airline theming
Plug 'majutsushi/tagbar' " tag bar code outliner
Plug 'ctrlpvim/ctrlp.vim' " ctrl-p.vim (fuzzy finding mapped to ctrl-p)

" completion
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()


" ===========
" C O N F I G
" ===========

syntax on
set encoding=utf-8  " set the encoding (plugins rely on this)
set termguicolors   " show colorschemes in all terminals/applications
set number          " linenumbers
set tabstop=4       " set tab distance to 4 (default 8?)

" map keys
map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

" set the theme
set background=dark
let g:two_firewatch_italics=1
colorscheme two-firewatch

" Use deoplete.
let g:python3_host_prog='C:\Users\mcampbell\AppData\Local\Programs\Python\Python37/python'
let g:deoplete#enable_at_startup=1

let g:tagbar_ctags_bin='C:\Program Files\ctags\ctags.exe' " configure tagbar
set list lcs=tab:\|\ " configure indent lines

" configure syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" configure airline
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme='twofirewatch'
