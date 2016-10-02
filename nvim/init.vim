" NeoVim Constants
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

if (has("nvim"))
    " Temporary Fix for C-h binding
    " https://github.com/neovim/neovim/issues/2048#issuecomment-92776095
    nmap <bs> :<c-u>TmuxNavigateLeft<cr>
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
    set termguicolors
endif

if &compatible
  set nocompatible
endif

" Plugins
set runtimepath^=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.config/nvim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
call dein#add('ctrlpvim/ctrlp.vim')

call dein#add('pangloss/vim-javascript', { 'merged': 0 })
call dein#add('othree/yajs.vim', { 'merged': 0 })

call dein#add('scrooloose/nerdcommenter')
call dein#add('vim-airline/vim-airline')
call dein#add('ryanoasis/vim-devicons')
call dein#add('scrooloose/nerdtree')

call dein#add('christoomey/vim-tmux-navigator')
call dein#add('easymotion/vim-easymotion')
call dein#add('junegunn/vim-easy-align')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-fugitive')
call dein#add('mattn/emmet-vim')
call dein#add('mxw/vim-jsx')

call dein#add('mhartington/oceanic-next')
call dein#add('jiangmiao/auto-pairs')

call dein#add('whatyouhide/vim-tmux-syntax')
call dein#add('lumiliet/vim-twig')
call dein#add('ElmCast/elm-vim')
call dein#add('dag/vim-fish')


call dein#end()

" Color Scheme
filetype plugin indent on
syntax on
set background=dark
colorscheme OceanicNext

" Comma as leader
let mapleader=','
let g:mapleader=','

" Quick save
nno <silent> <leader>a :w<cr>
nno <silent> <leader>q :q<cr>
nno <silent> <leader>Q :q!<cr>

" Movement
map j gj
map k gk
map J 8j
map K 8k
nno s :
nno S :

nmap f <Plug>(easymotion-s)
imap <C-e> <C-y>,
imap <silent> <C-n> <esc>:NERDTreeToggle<cr>
map <silent> <C-n> <esc>:NERDTreeToggle<cr>
nno <silent> <leader>n :NERDTreeToggle<cr>
nno <silent> <leader>u :CtrlPClearCache<cr>
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Keep Selection
vno <silent> > ><cr>gv
vno <silent> < <<cr>gv

" Move lines
vno <silent> <bar> :m '>+1<cr>gv=gv
vno <silent> ! :m '<-2<cr>gv=gv
nno <silent> <bar> :m .+1<cr>==
nno <silent> ! :m .-2<cr>==

" Tab navigation
nno <silent> <leader>t :tabe<cr>
ino <silent> <C-t> <Esc>:tabe<cr>
nno <silent> <C-t> :tabe<cr>
nno <silent> H :tabp<cr>
nno <silent> L :tabn<cr>

" Hide search Highlight
no <silent> <esc> :noh<cr><esc>

" Plugin Settings
let g:user_emmet_install_global = 1

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 0

let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1

let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'
let g:ctrlp_map='<c-u>'

let g:jsx_ext_required = 0

let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_right_alt_sep = '|'
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_left_sep = ' '
let g:airline_theme='oceanicnext'

let NERDTreeMinimalUI=1

" General Settings
set t_ut=
set clipboard=unnamed
set listchars=trail:.       " Show trailing space
set list
set mouse=a                 " Mouse support
set belloff=all             " No bells
set wrap                    " Wordwrap on
set lbr                     " Linewrap
set tw=500                  " Wordwrap line
set completeopt-=preview    " Turn of preview window
set backupcopy=yes          " Saving
set noswapfile
set nobackup
set nowb
set relativenumber number   " Hybrid Linenumbers
set cursorline              " Show cursorline
set laststatus=2            " Shaw statusbr
set tabstop=4               " Tabwidth
set shiftwidth=4            " Indentation width
set softtabstop=4           " <bs> delete 4 space
set expandtab               " Tabs as spaces
set smarttab                " Shiftwidth at start of lines
set autoindent              " Save indentation between lines
set smartindent             " C-lang tab indentation
set encoding=utf8           " Set encoding
set wildmenu                " File Explorer settings
set wildignore=*.o,*~,*.pyc
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.git/*,*/node_modules/*,*/vendor/*

