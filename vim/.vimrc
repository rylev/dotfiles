" Vimrc
" Author: Ryan Levick
" Thanks to: Codegram
" Source: https://github.com/codegram/vimfiles

" Set this vimrc file to not be compatible with vi
set nocompatible
" Turn off filetype detection. This is turned on again after plugins load
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" ----------
" Leader key
" ----------
let mapleader = ","
let maplocalleader = "."

" ############################################################################
" ################################BUNDLES#####################################
" ############################################################################

" Vundle (https://github.com/gmarik/vundle)
" Bundle:Ruby::Vundle:Vim
Bundle 'gmarik/vundle'


" Surround  (https://github.com/tpope/vim-surround)
" Allows for easily editing paired characters (e.g. ')
Bundle 'tpope/vim-surround'

" Endwise (https://github.com/tpope/vim-endwise)
" Add 'end' to the end of statements where necesssary
Bundle 'tpope/vim-endwise'

" Vim Rails (https://github.com/tpope/vim-rails)
" Functionality for editing rails projects in Vim
Bundle 'tpope/vim-rails'

" Fugitive (https://github.com/tpope/vim-fugitive)
" Git support inside of Vim
Bundle 'tpope/vim-fugitive'


" Ack (https://github.com/mileszs/ack.vim)
" Search through files with Ack
Bundle 'mileszs/ack.vim'

" Autoclose (https://github.com/Townk/vim-autoclose)
" Automatically close paired charatcers like quotes
Bundle 'Townk/vim-autoclose'

" TComment (https://github.com/jmartindf/vim-tcomment)
" Easily comment out code
Bundle 'jmartindf/vim-tcomment'

" Powerline (https://github.com/Lokaltog/vim-powerline)
" Add nice information bar to the bottom of the window
Bundle 'Lokaltog/vim-powerline'

" CtrlP (https://github.com/kien/ctrlp.vim)
" Quickly find and open files
Bundle 'kien/ctrlp.vim'

" NerdTree (https://github.com/scrooloose/nerdtree)
" Display a tree like file structure for navigating files
Bundle 'scrooloose/nerdtree'
" Open NerdTree automatically when opening new vim session
autocmd vimenter * if !argc() | NERDTree | endif

" Buffkill (https://github.com/hced/bufkill-vim)
" Easily kill buffers
Bundle 'hced/bufkill-vim'

" Vim-Ruby (https://github.com/vim-ruby/vim-ruby)
" Ruby support in Vim
Bundle 'vim-ruby/vim-ruby'

" Syntastic (https://github.com/scrooloose/syntastic)
" Automagically check for syntax errors
Bundle 'scrooloose/syntastic'

" Snipmate (https://github.com/msanders/snipmate.vim)
" Textmate/Sublime like autocompletion
Bundle 'msanders/snipmate.vim'

" EasyMotion (https://github.com/Lokaltog/vim-easymotion)
" Easily navigate around a file
Bundle 'Lokaltog/vim-easymotion'

" Badwold (https://github.com/sjl/badwolf)
" Cool color scheme for vim
Bundle 'sjl/badwolf'
" Default color theme
colorscheme badwolf

" ############################################################################
" ##############################VIM SETTINGS##################################
" ############################################################################

" Turn on syntax highlighting
syntax on
" Turn on filetype detection and indentation from plugin
filetype plugin indent on

set encoding=utf-8
set autoindent
set autoread " Autoread checks for changes to file from outside of Vim
set backspace=indent,eol,start " Set backspace key to respond to the options
set binary
set cinoptions=:0,(s,u0,U1,g0,t0 " Set indentation rules for C programs
set completeopt=menuone,preview " Set completion menu settings
set expandtab " Convert tabs to spaces
set foldcolumn=0 " Disable the fold column (Column showing folded code)
set foldlevel=9 " All folds are open be default
set foldmethod=syntax " Fold by syntax
set hidden " Hide buffers instead of closing them
set history=1000 " Set history length
set hlsearch " Highlight search terms
set ignorecase " Ignore case in search
set incsearch " Allow for incremental search
set gdefault " Allow global search and replace
set laststatus=2 " Always show the status line
set list " Show hidden characters
set listchars=trail:·,tab:>- " Show trailing and tab characters
set modelines=5
set nobackup " Do not create a backup file when saving
set noeol " Set last line to have special EOL character
set nofoldenable " Open fold
set noswapfile " No swap files. Keep it all in the buffer, baby
set number " Set line numbers
set numberwidth=4 " Set line number column width
set shell=/bin/bash " Set shell to Bash
set shiftwidth=2 " Number of spaces for an indent
set showcmd " Show command at the bottom of the screen
set smartcase " Use smartcase detection in search
set tabstop=2 " Number of spaces tab counts for
set softtabstop=2 " Number of spaces softtab counts for
set title " Set title bar value
set scrolloff=3 " Set number of lines always kept above or below the cursor
set autoindent " Copy indent from current line to new line
set smartindent " Auto indent in a smart way
set showmode " Show when in Insert and Visual mode
set wildmenu " Turn on wild mode for autocompletion of command line commands
set wildmode=list:longest
set visualbell
set cursorline " Highlight the line the cursor is on
set ttyfast " Improve performance of Vim
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.gitkeep " files to ignore for file name autocompletion
set grepprg=ack " Use ack as regexp engine
set textwidth=79 " Specify when the line will break
set formatoptions=n " Specify how automatic formatting occurs
set colorcolumn=79 " Highlight a column to mark when a line break should occur
set t_Co=256 " Number of colors used
set iskeyword-=_

" Set some GUI options
if has("gui_running")
    set guioptions-=T " no toolbar set guioptions-=m " no menus
    set guioptions-=r " no scrollbar on the right
    set guioptions-=R " no scrollbar on the right
    set guioptions-=l " no scrollbar on the left
    set guioptions-=b " no scrollbar on the bottom
    set guioptions=aiA
    set mouse=v
endif
set guifont=Monaco:h12

" Autocommands depending on file type
autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
autocmd FileType python set sw=4 sts=4 et
autocmd BufRead *.md  set ai formatoptions=tcroqn2 comments=n:&gt;
autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;
autocmd BufWritePre * :%s/\s\+$//e

" ############################################################################
" #################################MAPPINGS###################################
" ############################################################################

" Disable the arrow keys for MOAR discipline
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap j gj
nnoremap k gk

imap jk <ESC>
nnoremap ; :

" Search
nmap <Space> /
nnoremap / /\v
vnoremap / /\v

" Clear search
nnoremap <leader><space> :noh<cr>

" Saving and buffer stuff
nmap <leader><ESC> :q!<CR>
nmap <leader>q :wqa!<CR>
nmap <leader>w :w!<CR>

" Switch between / delete buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
nmap <leader>d :bd<CR>
nmap <leader>D :bufdo bd<CR>
nmap <silent> <leader>b :CtrlPBuffer<CR>

" Tab to indent in visual mode
vmap <Tab> >gv
vmap <S-tab> <gv

" Splits
nnoremap <leader>v :vs<CR> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Paste mode
set pastetoggle=<F2>

" Git blame
vmap <Leader>gb :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p<CR>

" Execute current buffer as ruby
map <leader>r :!ruby -I"lib:test" %<cr>

" Tab autocompletes / indents depending on the context
function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction
inoremap <tab> <c-r>=Smart_TabComplete()<CR>
inoremap <s-tab> <c-n>

" Rename current file
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'))
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

"--------------
" RUNNING TESTS
"--------------
function! RunTests(filename)
    " Write the file and run tests for the given filename
    :w
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    if match(a:filename, '\.feature') != -1
      exec ":!bundle exec spinach " . a:filename
    else
      if filereadable("script/test")
        exec ":!script/test " . a:filename
      elseif match(a:filename, '_test\.rb') != -1
        exec ":!ruby -I'lib:test' " . a:filename
      elseif match(a:filename, '_spec\.rb') != -1
        exec ":!rspec --color --drb " . a:filename
      end
    end
endfunction

function! SetTestFile()
    " Set the spec file that tests will be run for.
    let t:grb_test_file=@%
endfunction

function! RunTestFile(...)
    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\|_test.rb\)$') != -1
    if in_test_file
        call SetTestFile()
    elseif !exists("t:grb_test_file")
        return
    end
    call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
    let spec_line_number = line('.')

    call RunTestFile(":" . spec_line_number)
endfunction

map <leader>t :call RunTestFile()<CR>
map <leader>T :call RunNearestTest()<CR>

" ----------------
" PLUG-IN SETTINGS
" ----------------

" Powerline (fancy status bar)
let g:Powerline_symbols = 'fancy'
let g:Powerline_cache_enabled = 1

" Ack (Regex-based search)
nmap <leader>a :Ack
" Rotating among results
map <C-n> :cn<CR>
map <C-p> :cp<CR>

" Fugitive (Git)
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>

" TComment
map <Leader>co :TComment<CR>

" AutoClose
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'}
let g:AutoCloseProtectedRegions = ["Character"]

" Ctrl-p
let g:ctrlp_map = '<leader>o'

" NERDtree
nmap <silent> <leader>p :NERDTreeToggle<cr>%
let NERDTreeShowHidden=1

" Surround
" ,' switches ' and "
nnoremap <leader>' ""yls<c-r>={'"': "'", "'": '"'}[@"]<cr><esc>

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1

" --------------------
" CUSTOM CONFIGURATION
" --------------------
let my_home = expand("$HOME/")
if filereadable(my_home . '.vimrc.local')
  source ~/.vimrc.local
endif