"este en un comentario
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
       \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        "autocmd VimEnter * PlugInstall
        "autocmd VimEnter * PlugInstall | source $MYVIMRC
   endif

        call plug#begin('~/.config/nvim/autoload/plugged')
"call dein#add('ryanoasis/vim-webdevicons')
"call dein#add('adelarsq/vim-devicons-emoji')
        " Better Syntax Support
	"	"
	")
        Plug 'dense-analysis/ale'
        Plug 'safv12/andromeda.vim'
        Plug 'ghifarit53/tokyonight-vim'

        Plug 'shinchu/lightline-gruvbox.vim'
        Plug 'sheerun/vim-polyglot'
        "
	"plug 'andreyorst/base16-gruvbox'
        Plug 'tpope/vim-repeat'
        Plug 'kqito/vim-easy-replace'
        Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"         Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
        Plug 'iamcco/mathjax-support-for-mkdp'
        Plug 'iamcco/markdown-preview.vim'
        Plug 'nvim-treesitter/highlight.lua'
	Plug 'vim-pandoc/vim-pandoc-syntax'
	Plug 'puremourning/vimspector'
	Plug 'phanviet/vim-monokai-pro'
	Plug 'Rigellute/shades-of-purple.vim'
	Plug 'bluz71/vim-moonfly-colors'
	Plug 'jacoborus/tender.vim'
	 Plug 'tpope/vim-commentary'
	Plug 'nightsense/carbonized'
	Plug 'ajmwagar/vim-deus'
	Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
	Plug 'ryanoasis/vim-devicons'

	Plug 'sheerun/vim-polyglot'
        " File Explorer
        Plug 'scrooloose/NERDTree'
        " Auto pairs for '(' '[' '{'
        Plug 'jiangmiao/auto-pairs'
      	Plug 'joshdick/onedark.vim'
      	
	Plug 'sainnhe/sonokai'
	Plug 'morhetz/gruvbox'
	Plug 'easymotion/vim-easymotion'
      	
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
        Plug 'Yggdroot/indentLine'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'Shougo/neco-syntax'  " Fuente general de auto completado
	Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
	Plug 'othree/html5.vim', { 'for': 'html' }
	Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'airblade/vim-rooter'
        Plug 'ryanoasis/vim-webdevicons'
        Plug 'critiqjo/lldb.nvim'
        Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}
	      Plug 'voldikss/vim-floaterm'
        "Plug 'https://github.com/ryanoasis/vim-webdevicons'
	      "Plug 'https://github.com/adelarsq/vim-devicons-emoji'
        Plug 'iamcco/sran.nvim',{'do':{ -> sran#util#install()}}
        Plug 'iamcco/clock.nvim'
        Plug 'tranvansang/octave.vim'
        Plug 'mhinz/vim-signify'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-rhubarb'
        Plug 'junegunn/gv.vim'
        Plug 'frazrepo/vim-rainbow'
        Plug 'tpope/vim-sleuth'
        Plug 'editorconfig/editorconfig-vim'
        "Plug 'vim-airline/vim-airline'
        Plug 'enricobacis/vim-airline-clock'
        Plug 'airblade/vim-gitgutter'
	Plug 'mhinz/vim-signify'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-rhubarb'
        Plug 'junegunn/gv.vim'
        Plug 'dyng/ctrlsf.vim' 
        "control f
	let g:signify_sign_add               = '+'
        let g:signify_sign_delete            = '_'
        let g:signify_sign_delete_first_line = '‾'
        let g:signify_sign_change            = '~'
        

	set updatetime=250
        let g:gitgutter_realtime = 1
        let g:gitguter_eager = 1
 " enable powerline fonts
        let g:airline_powerline_fonts = 1
        let g:airline_left_sep = ''
        let g:airline_right_sep = ''
  " Switch to your current theme
     
	let g:airline_theme = 'gruvbox'
	"let g:airline_theme = 'sonokai'
" 	let g:shades_of_purple_airline = 1
" 	let g:airline_theme = 'shades_of_purple'
	"let g:airline_theme = 'deus'

"colorscheme gruvbox


	" Always show tabs
set showtabline=2
" We don't need to see things like -- INSERT -- anymore
set noshowmode
"=========================================================

set termguicolors
let g:indentLine_fileTypeExclude = ['text','sh','help','terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*','term:.*']


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


"auto completo
let g:deoplete#enable_at_startup = 1

"Cerrar automaticamente la ventana de vista previa (donde se muestra documentación, si existe)augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!
augroup END

set encoding=utf8
set clipboard^=unnamed,unnamedplus



let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

"============para los icons===================""
let g:lightline = {
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ }
      \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

"==============FZF=====================
let g:fzf_buffers_jump = 1

"=============CLOCK============
let g:clockn_enable = 0 
"let g:clockn_color = #000000
let g:clockn_winblend = 100
"highlight ClockNormal guifg = #000000
let g:clockn_to_top = 1
let g:clockn_to_right = 1
":ClockEnable
":ClockDisable
"==============for github===============
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1



let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

let mapleader=","

"===========================templates=============
nnoremap ,ccp :-1read $HOME/.config/.cp.cpp<CR>
nnoremap ,cpp :-1read $HOME/.config/files/main.cpp<CR>
nnoremap ,jj :-1read $HOME/.config/files/ht.html<CR>
"=================================================
"==============navegando con guider===========
inoremap ;gui <++>
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
"vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
map <leader><leader> <Esc>/<++><Enter>"_c4l
"=================================================
set encoding=UTF-8

" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk
" rainboar
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['WhiteSmoke', 'DarkOrange5', 'DarkOrchid3', 'Faux-Green']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'green', 'magenta']
set expandtab
set tabstop=2
set shiftwidth=2 
"=======================================================
" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'default'

function! AccentDemo()
  let keys = ['❥','⚽','🅈🅁🅂🄽','🎵','💘','🎹','☎´']
  for k in keys
    call airline#parts#define_text(k, k)
  endfor
  call airline#parts#define_accent('❥', 'red')
  call airline#parts#define_accent('⚽', 'green')
  call airline#parts#define_accent('🅈🅁🅂🄽', 'blue')
  call airline#parts#define_accent('🎵', 'bold')
  call airline#parts#define_accent('💘', 'orange')
  call airline#parts#define_accent('🎹', 'purple')
  call airline#parts#define_accent('☎', 'bold')
  "call airline#parts#define_accent('Y', 'italic')
  let g:airline_section_a = airline#section#create(keys)
endfunction
autocmd VimEnter * call AccentDemo()


call plug#end()


"=============theme========="
"hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

" let g:sonokai_style = 'andromeda'
"  let g:sonokai_style = 'atlantis'
 let g:sonokai_style = 'shusia'

"let g:sonokai_enable_italic = 1;
"let g:sonokai_disable_italic_comment = 1;

" colorscheme sonokai
colorscheme gruvbox
" colorscheme andromeda 
" colorscheme tokyonight
set guifont=Inconsolata\ 14
set fillchars+=vert:\|
" set background=dark
"   colorscheme deus
"    colorscheme monokai_pro
" colorscheme base16-gruvbox-dark-hard
" colorscheme carbonized-dark
"  colorscheme tender
"  colorscheme moonfly
" colorscheme shades_of_purple
let g:gruvbox_contrast_dark = "hard"
"let g:gruvbox_contrast_dark = "medium"
"let g:gruvbox_contrast_dark = "soft"
" ==============config=======deus=======
set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"set background=dark    " Setting dark mode
"colorscheme deus
" let g:deus_termcolors=256


"=============easymotion============
nmap <leader>s <Plug>(easymotion-s2)


autocmd FileType javascript nnoremap <buffer> <F5> :w<esc>:FloatermNew node %<CR>
autocmd FileType c nnoremap <buffer> <F5> :w<esc>:FloatermNew gcc % && ./a.out && rm a.out<CR>
autocmd FileType cpp nnoremap <buffer> <F5> :w<esc>:FloatermNew g++ % && ./a.out && rm a.out<CR>
autocmd FileType python nnoremap <buffer> <F5> :w<esc>:FloatermNew python3 %<CR>
autocmd Filetype java nnoremap <buffer> <F5> :w <esc> !javac % && java %:r <CR>

" Commenting blocks of code.
augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java,scala,javascript let b:comment_leader = '// '
  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType conf,fstab       let b:comment_leader = '# '
  autocmd FileType tex              let b:comment_leader = '% '
  autocmd FileType mail             let b:comment_leader = '> '
  autocmd FileType vim              let b:comment_leader = '" '
  autocmd FileType html             let b:comment_leader = ' <!-- '
augroup END
noremap <silent> ,c :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,u :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END 

augroup pandoc_syntax
  autocmd! FileType vimwiki set syntax=markdown.pandoc
augroup END


if (has("termguicolors"))
 set termguicolors
endif

"""" enable the theme
nnoremap <F7> :FloatermToggle <CR>
let g:floaterm_keymap_toggle = '<F7>'
let g:floaterm_keymap_next = '<F4>'
let g:floaterm_keymap_prev = '<F2>'
let g:floaterm_keymap_new = '<F3>'
hi Floaterm guibg=black

map<Leader>nn :SignifyToggle<CR>
map<Leader>mm :SignifyToggleHighlight<CR>
map<Leader>cm :Git commit<CR>
map<Leader>p :Git push<CR>
map<Leader>a :Git add<CR>
map<Leader>l :Git pull<CR>
map<Leader>bb :GV<CR>

nmap <Leader>r :EasyReplaceWord<CR>
let g:python_highlight_all = 1
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
let g:gruvbox_invert_selection=0
xnoremap <k> dkP`[V`]
xnoremap <j> dp`[V`]


"===================ALE=============
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰']
let g:ale_echo_msg_error_str = 'X'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '⛔'
let g:ale_sign_warning = '⚠️ '
let b:ale_fixers = ['prettier', 'eslint']
" Equivalent to the above.
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_completion_autoimport = 1
highlight clear ALEErrorSign
highlight clear ALEWarningSign
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

set statusline=%{LinterStatus()}
