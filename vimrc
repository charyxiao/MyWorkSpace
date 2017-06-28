let mapleader = ','
let g:mapleader = ','
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
" tab
set fdm=marker
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set tw=100

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

" cmd line
set ruler
set showcmd
set showmode
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
set laststatus=2

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
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>n :tabnew<CR>

" other set
set number
filetype plugin on
set mouse-=a
set autoread
set backspace=eol,start,indent
syntax on

" cscope
" alias cctags='ctags -R --fields=+iaS --extra=+q *' 
" alias ccscope='cscope -Rbq'
set tags=tags
set cscopetag
set csto=1
set nocscopeverbose
if filereadable("cscope.out")
    cs add cscope.out
    nmap <leader>/s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <leader>/g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <leader>/c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <leader>/t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <leader>/e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <leader>/f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <leader>/i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <leader>/d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif
