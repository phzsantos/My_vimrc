call plug#begin('~/.vim/plugged')

" Maps
map q :q<CR>
map <C-q> :q!<CR>
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>
vmap <C-c> "+y
map <C-p> "+p
nnoremap <C-n> :NERDTreeToggle<CR>

" Sets
set nu!
set autoindent
set incsearch
set wildmenu
set laststatus=2
set confirm
set mouse=a
set title
set cursorline
set encoding=UTF-8

" Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" powerline symbols
let g:airline_theme = 'dracula'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.dirty='⚡'
let g:airline_powerline_fonts = 1

" YouCompleteMe
set completeopt-=preview
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cc', 'h', 'hpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]
let g:ycm_clangd_args=['--header-insertion=never']

" DevIcons
set guifont=Hack\ Nerd\ Font\ 11

" Themes
syntax on

call plug#end()

color dracula
