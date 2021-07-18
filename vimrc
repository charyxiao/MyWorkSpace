let mapleader = ','
let g:mapleader = ','
if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

let g:airline_section_z = airline#section#create(['windowswap', 'obsession', 'LN:%p%%', ' = %l', '/%L', ' CN:%v'])

" tab
set fdm=marker
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set tw=100
set autoindent
set list
set listchars=tab:→\ ,eol:↵,trail:·,extends:↷,precedes:↶
" inoremap { {}<Esc>i<CR><Esc>koi<Esc>j<C-S-v><S-%>=j<S-$>xa

" encoding
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=cp936
set noswapfile
" set encoding=utf-8

" search
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap / /\v
vnoremap / /\v
noremap <silent><leader>/ :nohls<CR>

" del all space
noremap <silent><leader><space> :% s/\s\+$//g<CR>

" colorschme
set background=dark
set t_Co=256

" cmd line
set cursorcolumn
hi CursorColumn cterm=none ctermbg=black ctermfg=none
set cursorline
hi CursorLine cterm=none ctermbg=black ctermfg=none
hi CursorLineNr cterm=none ctermbg=black ctermfg=none
set cc=100
hi ColorColumn cterm=none ctermbg=black ctermfg=none
set ruler
set showcmd
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
set laststatus=2
" hi StatusLine cterm=none ctermbg=black ctermfg=cyan
" hi StatusLineNC cterm=none ctermbg=black ctermfg=cyan
" hi VertSplit cterm=none ctermbg=black ctermfg=cyan
hi VertSplit cterm=none ctermbg=236 ctermfg=236

" hotkey
imap <c-k> <Up>
imap <c-j> <Down>
imap <c-h> <Left>
imap <c-l> <Right>
vnoremap < <gv
vnoremap > >gv
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
map <c-k> <c-w>k
map <c-j> <c-w>j
map <c-h> <c-w>h
map <c-l> <c-w>l
map wj :resize -3<CR>
map wk :resize +3<CR>
map wl :vertical resize -5<CR>
map wh :vertical resize +5<CR>

" other set
set number
filetype plugin on
set mouse-=a
set autoread
set backspace=eol,start,indent
syntax on

" alias cctags='ctags -R --fields=+iaS --extra=+q *'
set tags=./.tags;,.tags
