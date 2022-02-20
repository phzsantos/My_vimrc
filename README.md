# My .vimrc

![MY_VIMRC](/src/vim.png)

#### DISCLAIMER:

**This tutorial only work on linux. Windows version come soon.**

## Vim Plug:

Download & install vim-plug:

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Create .vimrc file on your HOME directiory:

```bash
touch ~/.vimrc
```

Add this lines on your .vimrc like this:  

```vim
call plug#begin('~/.vim/plugged')

" YOUR CONFIGURATIONS, PLUGINS AND EVERYTHING HAD TO BE HERE.

call plug#end()
```

## Maps:

**q** for quit in normal mode:

```vim
map q :q<CR>
```

**CTRL + q** force quit (quit without saving) in normal mode:

```vim
map <C-q> :q!<CR>
```

**CTRL + S** save changes in normal mode:

```vim
map <C-s> :w<CR>
```

That doesn't gonna work if you don't put this: `stty -ixon` on your `.bashrc` and restart your terminal.  

**CTRL + S** save changes in insert mode:

```vim
imap <C-s> <Esc>:w<CR>
```

**CTRL + n** show and hide nerdtree:

```vim
map <C-n> :NERDTreeToggle<CR>
```

Result:

```vim
call plug#begin('~/.vim/plugged')

" Maps
map q :q<CR>
map <C-q> :q!<CR>
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

call plug#end()
```

## Sets:

Showing the lines numbers:

```vim
set nu!
```

Autoindentation:  

```vim
set autoindent
```

Coloring the text while you're searching:  

```vim
set incsearch
```  

Wildmenu (a menu for autocomplete commands):  

```vim
set wildmenu
```

Laststatus (line in the bottom for showing the name of file):  

```vim
set laststatus=2
```

Confirm (menu of exiting vim):  

```vim
set confirm
```

Mouse (this option will allow you to use your mouse on vim):

```vim
set mouse=a
```  

Title (showing the name of file on application bar):

```vim
set title
```  

Highlite cursorline:

```vim
set cursorline
```  

Encoding utf-8:

```vim
set encoding=UTF-8
```  

Result:

```vim
call plug#begin('~/.vim/plugged')

" Maps
map q :q<CR>
map <C-q> :q!<CR>
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>
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

call plug#end()
```

## Plugins:

Vim airline:

```vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
```

Dracula theme for vim:

```vim
Plug 'dracula/vim', { 'as': 'dracula' }
```

Syntax complete for vim:

```vim
Plug 'ycm-core/YouCompleteMe'
```

Auto pairs ((),{}," "...) for vim:

```vim
Plug 'jiangmiao/auto-pairs'
```

Markdown preview for vim:

```vim
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
```

Files explorer for vim:

```vim
Plug 'preservim/nerdtree'
```

Language(bash, vim, python, cpp...) icons for vim:

```vim
Plug 'ryanoasis/vim-devicons'
```

Result:

```vim
call plug#begin('~/.vim/plugged')

" Maps
map q :q<CR>
map <C-q> :q!<CR>
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>
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

call plug#end()
```

## Plugins official documentation:  

[Vim Plug](https://github.com/junegunn/vim-plug "Vim Plug GitHub")  

[Vim Airline](https://github.com/vim-airline/vim-airline "Vim airline GitHub")  

[Dracula theme](https://draculatheme.com/vim "Dracula theme website")  

[YouCompleteMe](https://github.com/ycm-core/YouCompleteMe "YouCompleteMe GitHub")

[Auto-pairs](https://github.com/jiangmiao/auto-pairs "Auto-pairs GitHub")

[Vim instant markdown](https://github.com/instant-markdown/vim-instant-markdown "Vim instant markdown GitHub")

[NerdTree](https://github.com/preservim/nerdtree "Nerd tree GitHub")

[Vim DevIcons](https://github.com/ryanoasis/vim-devicons "Vim DevIcons GitHub")

