execute pathogen#infect()
set history=500

filetype plugin on
filetype indent on

" Colors "

set background=dark
colorscheme darcula

" Sets a number of lines above the cursor when scrolling through large files
set so=5

set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch
set relativenumber

" Removes the annoying bell sound
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

syntax enable 

set nobackup
set nowb
set noswapfile

set shiftwidth=4
set tabstop=4

" Indentation
set ai
set si 
set wrap 

" Starts vim in the position of the last edit
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Status line
" set laststatus=2
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ PWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c 

" Mapping "

let mapleader = ","

nnoremap <space> /

nmap <leader>w :w!<cr>
nmap :Wq :wq

map <leader>ss :setlocal spell!<cr>

" Tab creation and management
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t :tabnext 

" Go to the last tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Helper function
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
execute pathogen#infect()
set history=500

filetype plugin on
filetype indent on

" Colors "

set background=dark
colorscheme darcula

set cursorline

" Sets a number of lines above the cursor when scrolling through large files
set so=5

set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch
set number
set mat=2

" Removes the annoying bell sound
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

syntax enable 

set nobackup
set nowb
set noswapfile

set shiftwidth=4
set tabstop=4

" Indentation
set ai
set si 
set wrap 

" Starts vim in the position of the last edit
"
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Status line
let g:airline_theme='bubblegum'
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ PWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c 

set wildmenu

" Mapping "

let mapleader = ","

nnoremap <space> /

nmap <leader>w :w!<cr>

map <leader>ss :setlocal spell!<cr>

" Tab creation and management
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t :tabnext 

" Go to the last tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Helper function
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
set mat=2

" Removes the annoying bell sound
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

syntax enable 

set nobackup
set nowb
set noswapfile

set shiftwidth=4
set tabstop=4

" Indentation
set ai
set si 
set wrap 
set tabstop=4
set softtabstop=4
set expandtab

" Starts vim in the position of the last edit
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Status line
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ PWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c 

" Mapping "

let mapleader = ","

nnoremap <space> /

nmap <leader>w :w!<cr>

map <leader>ss :setlocal spell!<cr>

nnoremap <leader>u :GundoToggle<CR>

" Movement
nnoremap j gj
nnoremap k gk

" Edit and source my vimrc and zshrc
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" move to beginning/end of line, the previous keybinds where akward
nnoremap B ^
nnoremap E $

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

nnoremap <leader>m :CtrlP<CR>

" save session
nnoremap <leader>s :mksession<CR>

" Tab creation and management
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t :tabnext 

map <leader><space> :set hlsearch!<cr>
map <leader>pp :setlocal paste!<cr>

" Folding

set foldenable
set foldlevelstart=10
nnoremap f za
set foldmethod=indent

" Go to the last tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Nerdtree plugin - https://github.com/preservim/nerdtree
map <leader>n :NERDTreeToggle<CR>

" Helper functions
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
