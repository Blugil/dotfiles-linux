inoremap jj <Esc>
" for navigating while splitting                                                                     
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-n> :NvimTreeToggle<CR>

nnoremap <C-c> :nohl<CR>

xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv

" better tabbing
vnoremap < <gv
vnoremap > >gv

" tab through buffers
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
nnoremap <c-BS> :bd<CR>

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

nnoremap <C-p> :Telescope find_files<CR>

" automatic format on save
augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost * FormatWrite
augroup END

