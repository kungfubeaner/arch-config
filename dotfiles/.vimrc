syntax on
color nord-grey
set number
set visualbell
set autoindent
set backspace=indent,eol,start
set nowrap
set nohls
set shortmess+=Ic
set background=dark
set splitbelow splitright
set tabstop=4
set shiftwidth=4
if $TERM == "xterm-256color" | set t_Co=256 | endif
if $TERM == "screen" | set t_Co=256 | endif
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
autocmd filetype c nnoremap <buffer> <F5> :w<cr>:!rm %:r \| gcc -o %:r % && %:r<cr>
autocmd filetype c nnoremap <buffer> <F5> :w<cr>:!rm %:r \| make && %:r<cr>
autocmd filetype c nnoremap <buffer> <F7> :!%:r<cr>
autocmd filetype c inoremap <buffer> <F5> <esc>:w<cr>:!rm %:r \| gcc -o %:r % && %:r<cr>
autocmd filetype c inoremap <buffer> <F5> <esc>:w<cr>:!rm %:r \| make && %:r<cr>
autocmd filetype c inoremap <buffer> <F7> <esc>:!%:r<cr>
autocmd filetype c setlocal tabstop=3 shiftwidth=3
autocmd filetype cpp nnoremap <buffer> <F5> :w<cr>:!rm %:r \| g++ -o %:r % && %:r<cr>
autocmd filetype cpp nnoremap <buffer> <F5> :w<cr>:!rm %:r \| make && %:r<cr>
autocmd filetype cpp nnoremap <buffer> <F7> :!%:r<cr>
autocmd filetype cpp inoremap <buffer> <F5> <esc>:w<cr>:!rm %:r \| g++ -o %:r % && %:r<cr>
autocmd filetype cpp inoremap <buffer> <F5> <esc>:w<cr>:!rm %:r \| make && %:r<cr>
autocmd filetype cpp inoremap <buffer> <F7> <esc>:!%:r<cr>
autocmd filetype cpp setlocal tabstop=3 shiftwidth=3
autocmd filetype python nnoremap <buffer> <F5> :w<cr>:!%<cr>
autocmd bufadd * set number
autocmd termopen * set nonumber
nnoremap <A-o> <C-o>
nnoremap <C-D> <C-B>
nnoremap <A-=> <C-w>=
nnoremap <A-f> <C-w>_<C-w>\|
nnoremap <C-j> <C-w>-
nnoremap <C-k> <C-w>+
nnoremap <C-l> <C-w>>
nnoremap <C-h> <C-w><
nnoremap <A-i> gt
inoremap <A-i> <esc>gt
nnoremap <A-u> gT
inoremap <A-u> <esc>gT
nnoremap <A-I> :tabm +1<cr>
inoremap <A-I> <esc>:tabm +1<cr>
nnoremap <A-U> :tabm -1<cr>
inoremap <A-U> <esc>:tabm -1<cr>
nnoremap <F3> :set rnu!<cr>
nnoremap <A-Bslash> :vs \| :term<cr>
nnoremap <C-Bslash> :tabe \| :term<cr>
nnoremap <A-Bar> :sp \| :term<cr>
tnoremap <A-bslash> <c-\><c-n>:vs \| :term<cr>
tnoremap <C-bslash> <c-\><c-n>:tabe \| :term<cr>
tnoremap <A-Bar> <c-\><c-n>:sp \| :term<cr>
tnoremap <A-j> <c-\><c-n><C-W>j
tnoremap <A-k> <c-\><c-n><C-W>k
tnoremap <A-l> <c-\><c-n><C-W>l
tnoremap <A-h> <c-\><c-n><C-W>h
tnoremap <A-i> <c-\><c-n>gt
tnoremap <A-u> <c-\><c-n>gT
tnoremap <A-I> <c-\><c-n>:tabm +1<cr>
tnoremap <A-U> <c-\><c-n>:tabm -1<cr>
tnoremap <A-=> <c-\><c-n><C-w>=i
tnoremap <A-f> <c-\><c-n><C-w>_<C-w>\|i
nnoremap <A-j> <C-w><C-j>
nnoremap <A-k> <C-w><C-k>
nnoremap <A-l> <C-w><C-l>
nnoremap <A-h> <C-w><C-h>
nnoremap <A-J> <C-w>J
nnoremap <A-K> <C-w>K
nnoremap <A-L> <C-w>L
nnoremap <A-H> <C-w>H
nnoremap <A-w> :w<cr>
inoremap <A-w> <esc>:w<cr>i
nnoremap <A-q> :q<cr>
inoremap <A-q> <esc>:q<cr>
nnoremap <A-Q> :q!<cr>
nnoremap <C-q> :qa!<cr>
nnoremap <A-O> <C-w>o
nnoremap <A-T> :tabo<cr>
nnoremap <A-t> <C-w>T
nnoremap _ <C-w>_
nnoremap <bar> <C-w><bar>
nnoremap <A-r> <C-r>
inoremap <A-r> <C-r>
cnoremap <A-r> <C-r>
inoremap <A-;> <C-p>
inoremap <expr> <A-o> pumvisible() ? "\<C-o>" : "\<C-x>\<C-o>"
inoremap <expr> <A-j> pumvisible() ? "\<C-n>" : "\<A-j>"
inoremap <expr> <A-k> pumvisible() ? "\<C-p>" : "\<A-k>"
inoremap <expr> <A-l> pumvisible() ? "\<C-l>" : "\<C-x>\<C-l>"
nnoremap <C-r> <C-w>r
nnoremap < <<
nnoremap > >>
vnoremap < <gv
vnoremap > >gv
vnoremap <A-j> :m '>+1<cr>gv
vnoremap <A-k> :m '<-2<cr>gv
vnoremap <A-c> "*y
vnoremap <A-l> :Enumerate<cr>
vnoremap <A-L> :NL<cr>
nnoremap j gj
nnoremap k gk
filetype plugin on
let g:netrw_banner = 0
let g:netrw_sort_sequence = "[\/]$,\<core\%(\.\d\+\)\=\>,\~\=\*$,*,\.swp$,\.bak$,\~$"
set omnifunc=syntaxcomplete#Complete
hi normal ctermbg=NONE guibg=NONE
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
command! -range Enumerate let @z="0. " | exec <line1>.",".<line2>." normal! ^\"zP^\<C-a>^\"zy2w"
command! -range NL exec <line1>.",".(<line2>-1)." normal! ^y2wj^P^\<C-a>"
