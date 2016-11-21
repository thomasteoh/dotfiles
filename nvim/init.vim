call plug#begin('~/.vim/plugged')

" Nvim-R plugin
Plug 'jalvesaq/Nvim-R'

" A modern vim plugin for editing LaTeX files.
Plug 'lervag/vimtex'

" A Filetype plugin for csv files
Plug 'chrisbra/csv.vim'

" " Monokai colorscheme
Plug 'sickill/vim-monokai'

" Add plugins to &runtimepath
call plug#end()

set t_Co=256
colorscheme monokai

set showmatch           " Show matching brackets.
set showcmd             " Show (partial) command in status line.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" Make the current line highlighted
" set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40


" Vimtex settings
let g:tex_flavor = 'latex'
let g:vimtex_view_method = "mupdf"
let g:vimtex_view_use_temp_files = 1
let g:vimtex_motion_matchparen = 0
let g:vimtex_indent_enabled = 0

" Nvim-R settings
autocmd FileType r if string(g:SendCmdToR) == "function('SendCmdToR_fake')" | call StartR("R") | endif
autocmd FileType rmd if string(g:SendCmdToR) == "function('SendCmdToR_fake')" | call StartR("R") | endif
syntax on
filetype plugin indent on
let R_assign = 0 " Disables underscore being a shortcut for <-

