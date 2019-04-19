" be iMproved, required
set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'

Plugin 'Valloric/YouCompleteMe'

Plugin 'tomasr/molokai'
Plugin 'nanotech/jellybeans.vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'morhetz/gruvbox'

Plugin 'kien/rainbow_parentheses.vim'
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'universal-ctags/ctags'
Plugin 'majutsushi/tagbar'

Plugin 'scrooloose/nerdcommenter'

Plugin 'bling/vim-airline'

Plugin 'moll/vim-bbye'

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Change default arrows
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinSize = 40
let g:NERDTreeMinimalUI=1
let g:NERDTreeCascadeOpenSingleChildDir=1

" Parentheses
augroup rainbowparentheses
  autocmd!
  autocmd VimEnter * RainbowParenthesesToggle
  autocmd Syntax * RainbowParenthesesLoadRound
  autocmd Syntax * RainbowParenthesesLoadSquare
  autocmd Syntax * RainbowParenthesesLoadBraces
augroup END

" Indent
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1

" Tagbar
let g:tagbar_ctags_bin = '~/.vim/bin/ctags'
let g:tagbar_width = 30
let g:tagbar_compact = 1
let g:tagbar_zoomwidth = 0

" Airline, Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set to auto read when a file is changed from the outside
set autoread

" Ignore those file types
set wildignore=*.swp,*.bak,*.pyc,*.class

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup             " disable backups

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
" change the mapleader from \ to <space>
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildchar=<Tab> wildmenu wildmode=longest,list,full

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results (toggling)
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Enable syntax highlighting
syntax enable
set background=dark
colorscheme gruvbox

" Linebreak on 500 characters
set lbr
set tw=500
set wrap    "Wrap lines

" Indent
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs
set cindent       " stricter rules for C programs

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

" One tab, 1 == 4 spaces
set tabstop=4
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'

" Configure backspace so it acts as it should act
" allow backspacing over everything in insert mode
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Remember more commands and search history
set history=1000

" Persistent undo is like a local version control system that you don't have to
" manage. I think I will use this feature a lot.
set undodir=~/.vim/undo
set undofile
set undolevels=1000  "maximum number of set changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" change the terminal's title
set title

" always show line numbers
set number

" Enable mouse
set mouse=a

" Always show the status line
set laststatus=2

" Higlight cursor position
set cursorline

" No annoying sound on errors
set visualbell           " don't beep
set noerrorbells         " don't beep
set t_vb=
set tm=500
autocmd GUIEnter * set vb t_vb= " for your GUI
autocmd VimEnter * set vb t_vb=

" Highlight whitespaces for you in a convenient way
set list listchars=tab:»·,trail:·,nbsp:⎵,eol:⏎,extends:>

" set switchbuf=newtab 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enter visual line mode with <Space><Space>
nmap <Leader><Leader> v

" Type <Space>w to save file (a lot faster than :w<Enter>):
nnoremap <Leader>w :w<CR>

" Type <Space>o to open a new file:
nnoremap <Leader>o :CtrlP<CR>

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>
map <Leader><right> :bnext<Return>

" Move to the previous buffer
nmap <leader>h :bprev<CR>
map <Leader><left> :bprev<Return>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader><Del> :bp <BAR> bd #<CR>

" Using the bbye plugin
noremap <Leader>q :Bdelete<CR>

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-t> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
nmap <leader>ls :NERDTreeToggle<CR>
nmap <leader>tag :TagbarToggle<CR>

" This lets you use w!! to save that after you opened the file already (for sudo)
cmap w!! w !sudo tee % >/dev/null

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" Function that restores the cursor position and its autocmd so that it gets triggered
augroup rescursor
  autocmd!
  autocmd BufWinEnter * call ResCursor()
augroup END

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
augroup deletetrailings
  autocmd!
  autocmd BufWrite *.py :call DeleteTrailingWS()
  autocmd BufWrite *.coffee :call DeleteTrailingWS()
augroup END

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Ctrl+c in visual mode sends selection to clipboard 
vnoremap <C-c> "*y

" Toggle highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Sets a mapping so that pressing C-v in normal mode will invert the 'paste' option,
" and will then show the value of that option
nnoremap <C-v> :set invpaste paste?<CR>
" Stops auto-indenting and auto-expansion (for c&p)
set pastetoggle=<C-v>

"  Enables displaying whether 'paste' is turned on in insert mode
set showmode

" Alias unnamed register to the + register, which is the X Window clipboard
" to paste type <leader>+p
set clipboard=unnamedplus


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! ResCursor()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction


function! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunction


function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set extra options when running in GUI mode
if has("gui_running")
  set guitablabel=%M\ %t
  set showtabline=2 			" Always show the tab bar
  set guioptions+=a guioptions+=P 	" Enable autocopy on select to system clipboard
endif

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif


