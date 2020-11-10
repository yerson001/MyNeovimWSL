" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>
" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>
" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <C-z> :u<CR>
nnoremap <S-TAB> :bprevious<CR>
" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
map <C-q> :q!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Better tabbing
vnoremap < <gv
vnoremap > >gv
" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da
" buffers
nnoremap <tab> :bn<CR>
nnoremap <s-tab> :bp<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <C-f> :FZF<CR>
"map <C-m> :FZF<CR>
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
map <C-b> :NERDTreeToggle<CR>
map <C-V> :vsplit<CR>
map <C-p> :split<CR>
map <C-t> :FloatermNew<CR>
map <C-o> :IndentLinesToggle<CR>
map <C-x> :bb<CR>
map <f6> :vnew<CR>
"map <C-d>:NERDTreeFind<CR>
"map <C-v> :p<CR>
"map <C-f> :BLines<CR>
