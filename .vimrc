set nocompatible
set encoding=utf-8
" let &t_8f="\e[38;2;%ld;%ld;%ldm"
" let &t_8b="\e[48;2;%ld;%ld;%ldm"
" set termguicolors
" execute "set t_8f=\e[38;2;%lu;%lu;%lum"
" execute "set t_8b=\e[48;2;%lu;%lu;%lum"
" be iMproved, required
filetype off " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vim/bundle/')

" let Vundle manage Vundle, required
"
let g:ackprg = 'ag --vimgrep'
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:jsx_ext_required = 0
let g:dbext_default_profile_mySQL = 'type=MYSQL:user=root:dbname:se_dev:host:127.0.0.1'
let g:ale_fixers = { 
      \'javascript': ['eslint'],
      \'ruby': ['rubocop']
      \}
let g:ale_completion_enabled = 1
Plugin 'jparise/vim-graphql'
Plugin 'styled-components/vim-styled-components'
Plugin 'mattn/emmet-vim'
" Plugin 'w0rp/ale'
Plugin 'git@github.com:vim-scripts/dbext.vim.git'
" Plugin 'git@github.com:gabesoft/vim-ags.git'
Plugin 'elixir-lang/vim-elixir'
Plugin 'bentayloruk/vim-react-es6-snippets'
Plugin 'pangloss/vim-javascript'
Plugin 'VundleVim/Vundle.vim'
Plugin 'mxw/vim-jsx'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'Syntastic'
Plugin 'Vim-R-plugin'
Plugin 'vimux'
"Plugin 'git@github.com:ngmy/vim-rubocop.git'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
Bundle 'edkolev/tmuxline.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'othree/html5.vim'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'Yggdroot/indentLine'
Plugin 'morhetz/gruvbox'
Plugin 'jacoborus/tender'
" Plugin 'nathanaelkane/vim-indent-guides'
"
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'edkolev/promptline.vim'
Plugin 'tpope/vim-fugitive'
" Plugin 'kien/ctrlp.vim'

"Plugin 'vim-scripts/Conque-Shell'
Plugin 'ervandew/supertab'
" Plugin 'vim-scripts/AutoComplPop'
"
Plugin 'valloric/youcompleteme'
Bundle 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'roosta/srcery'
Plugin 'alvan/vim-closetag'

"Plugin 'mattn/emmet-vim'
"
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'


" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" Plugin 'Shougo/neocomplete.vim'


" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'

" All of your Plugins must be added before the following line
call vundle#end()      " required
filetype plugin indent on  " required

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList   - lists configured plugins
" :PluginInstall  - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean    - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd    " Show (partial) command in status line.
"set showmatch    " Show matching brackets.
"set ignorecase   " Do case insensitive matching
"set smartcase    " Do smart case matching
"set incsearch    " Incremental search
"set autowrite    " Automatically save before commands like :next and :make
"set hidden   " Hide buffers when they are abandoned
" set mouse=a    " Enable mouse usage (all modes)

"MY CONFIGS HERE
"FOR THE LOOKS LOL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""FOR eruby.vim"""""""""""""""""""""
"~/.vim/bundle/vim-ruby/ftplugin/eruby.vim
"let b:surround_{char2nr('=')} = "<%= \r %>"
"let b:surround_{char2nr('-')} = "<% \r %>"
"""""""""""""""""""""FOR eruby.vim"""""""""""""""""""""
"""""""""""""""rvm implode"""""""""""""""
"globals

" let g:snipMate = {}
" let g:snipMate.scope_aliases = {}
" let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails,ruby-1.9'
" let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
" let g:snipMate.scope_aliases = {}
" let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'
"
" let g:ycm_filetype_whitelist = { '*': 1 }
" let g:ycm_auto_trigger = 1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 0
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby compiler ruby


let g:SuperTabDefaultCompletionType = "<c-n>"


"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-k>"
" let g:UltiSnipsExpandTrigger="<CR>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:closetag_filenames = "*.erb,*.html.erb,*.html,*.xhtml,*.phtml"

set omnifunc=syntaxcomplete#Complete

set laststatus=2
let g:airline_powerline_fonts = 1

"let g:nerdtree_tabs_open_on_console_startup=1
"Grab the latest version and stick this in ~/.vim/nerdtree_plugin/override_tab_mapping.vim
" call NERDTreeAddKeyMap({'key': 't', 'callback': 'NERDTreeMyOpenInTab', 'scope': 'FileNode', 'override': 1 })
" function NERDTreeMyOpenInTab(node)
"     call a:node.open({'reuse': "all", 'where': 't'})
" endfunction





"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'


" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
inoremap jj <ESC>
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"   return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
"   " For no inserting <CR> key.
"   "return pumvisible() ? "\<C-y>" : "\<CR>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" " Close popup by <Space>.
" "inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" " AutoComplPop like behavior.
" "let g:neocomplete#enable_auto_select = 1

" " Shell like behavior(not recommended).
" "set completeopt+=longest
" "let g:neocomplete#enable_auto_select = 1
" "let g:neocomplete#disable_auto_complete = 1
" "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
" Enable omni completion.
autocmd FileType * setlocal omnifunc=syntaxcomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType ruby let g:SuperTabDefaultCompletionType = "context"
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'










let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1

" map ƒ <Plug>(easymotion-bd-f)

""fold""
" set foldmethod=syntax
" set foldlevelstart=8

"let javaScript_fold=1         " JavaScript
"let perl_fold=1               " Perl
"let php_folding=1             " PHP
"let r_syntax_folding=1        " R
"let ruby_fold=1               " Ruby
"let sh_fold_enabled=1         " sh
"let vimsyn_folding='af'       " Vim script
"let xml_syntax_folding=1      " XML

"set foldmethod=indent
"set foldnestmax=2

"let g:Powerline_symbols = 'fancy'
set number
" set relativenumber
"""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""colors"""""""""""""""""""""""""""""""""""""""""""
"solarized theme here
"/Users/Whisky/.vim/bundle/vim-airline-themes/autoload/airline/themes
" let g:airline_theme='bubblegum'
let g:airline_theme='powerlineish'
let g:promptline_theme = 'airline'
" let g:promptline_theme = 'jelly'
"colorscheme solarized
"colorscheme srcery
"colorscheme atomdark
" colorscheme slate
colorscheme gruvbox

" hi Normal ctermbg=none
" hi Normal guibg=#1b202a
set background=dark
"hi Normal ctermbg=none

set cursorline
"hi CursorLine cterm=bold ctermbg=0
"hi Comment  guifg=#80a0ff ctermfg=7
"highlight LineNr ctermfg=red ctermbg=none

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:indentLine_color_term = 15
let g:indentLine_color_term = 239
" let g:indentLine_color_gui = '#9191A5'
let g:indentLine_char ='┆'

"set listchars=tab:❯\
"set listchars=eol:↲ ┆¦┊
"set listchars=tab:❯\ ,eol:↲
"set listchars=tab:⇁\ ,eol:┘


"set autoindent
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
"set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
"set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4 noexpandtab
"retab!

set list
set listchars=tab:\ \ ,eol:¬
"set listchars=tab:\┆\ ,eol:┘ ¬
"hi SpecialKey ctermfg=8 guifg=#649A9A
"hi SpecialKey  guifg=#649A9A
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set noet|retab!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"«»※↞↲↽⇙Γ
"┘⇁↵↸⇙
"set showbreak=↪\
"set listchars=tab:→\ ,eol:↲ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨
"""""""""""""""""""""""""""""""""""""""""""
" set clipboard=unnamed
set backspace=indent,eol,start
" if $TMUX == ''
"   set clipboard+=unamed
" endif
" set clipboard=unamed
"save
inoremap ß <ESC>:w <CR>

"tab completion
" function! Tab_Or_Complete()
"   if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
"     return "\<C-N>"
"   else
"     return "\<Tab>"
"   endif
" endfunction
" inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
" inoremap <S-Tab> <C-P>

nnoremap <Tab> gt
nnoremap <S-Tab> gT

nnoremap † :bn!<CR>
nnoremap ˇ :bp!<CR>
nnoremap œ :bd<CR>
nnoremap <leader>t :TagbarToggle<CR>

"let g:tmux_navigator_no_mappings = 1
"nnoremap <silent>  ˙ :TmuxNavigateLeft<cr>
"nnoremap <silent>  ∆ :TmuxNavigateDown<cr>
"nnoremap <silent>  ˚ :TmuxNavigateUp<cr>
"nnoremap <silent>  ¬ :TmuxNavigateRight<cr>
"nnoremap <silent>  « :TmuxNavigatePrevious<cr>
"nnoremap ˙ <C-W>h
"nnoremap ∆ <C-W>j
"nnoremap ˚ <C-W>k
"nnoremap ¬ <C-W>l
"COPYING INTO REGISTERS
nnoremap ; :
vnoremap a "jy
vnoremap z "ky
vnoremap x "ly
nnoremap å "jp
nnoremap Ω "kp
nnoremap ≈ "lp

inoremap <M-h> <C-o>h
inoremap ˙ <C-o>h
inoremap ∆ <C-o>gj
inoremap ˚ <C-o>gk
inoremap ¬ <C-o>l
inoremap ∑ <C-o>w
inoremap ∫ <C-o>b
inoremap ø <C-o>o
inoremap Ø <C-o>O

nnoremap <CR> o<ESC>

inoremap <C-z> <space>
nnoremap <C-z> <space>

inoremap … <ESC>
vnoremap … <ESC>
cnoremap … <ESC>
nnoremap j gj
nnoremap k gk
"inoremap <Up> <ESC>kddpkA
"inoremap <Down> <ESC>ddpA
nnoremap <Up> kddpk
nnoremap <Down> ddp
"nnoremap <Right> xp
noremap \ :FZF<Space>
noremap fs :FZF<CR>
noremap gb :Gblame<CR>
noremap xx :ALEFix<CR>

function! P_Compile()
  let i =  expand('%:e')
  if ( i == "rb" )
    let c =  " ruby " .expand('%:p')
    return c
  elseif ( i == 'js' )
    let c =  " node " .expand('%:p')
    return c
  else
    let c = " echo lol no compiler found "
    return c
  endif
endfunc

let g:vimrubocop_keymap = 0
nmap <leader>c :RuboCop<CR>
nmap <leader>q  :w \| call VimuxRunCommand(P_Compile()) <CR>
nmap <leader>k  :w \| call VimuxRunCommand("!!") <CR>
nmap <leader>ps  :w \| call VimuxRunCommand("python -m SimpleHTTPServer 3000") <CR>
nmap <leader>bi :w \| call VimuxRunCommand("bundle install") <CR>
nmap <leader>rs :w \| call VimuxRunCommand("rails s") <CR>
nmap <leader>ns :w \| call VimuxRunCommand("npm start") <CR>
nmap <leader>nt :w \| call VimuxRunCommand("npm test") <CR>
nmap <leader>s  :w \| %s/ <CR>
nmap <leader>S  :w \| call VimuxRunCommand("learn && learn submit") <CR>
"nmap <leader>S :w \| call VimuxRunCommand("learn && learn submit && exit") <CR>
nmap <leader>Q  :w \| call VimuxRunCommand(" rspec " .expand('%:p:h'). "/../spec/*" .expand('%:t:r')."*") <CR>
nmap <leader>1q :w \| call VimuxRunCommand(" rspec " .expand('%:p:h'). "/../spec/*" .expand('%:t:r')."* --f-f") <CR>
nmap <leader>1s :call VimuxRunCommand(" rspec " .expand('%:p'). ":".line('.')) <CR>
nmap <leader>nb :w \| call VimuxRunCommand("npm run bundle") <CR>
"db/schema.rb
nmap <leader>db :call VimuxRunCommand(" ccat db/schema.rb ") <CR>

"rake routes
nmap <leader>dr :call VimuxRunCommand(" rake routes ") <CR>

nmap <leader>pry :call VimuxRunCommand(" pry ") <CR>
nmap <leader>pe :call VimuxRunCommand(" exit ") <CR>
nmap <leader>r :call VimuxRunCommand(getline('.') ." ") <CR>
vmap <leader>r :call VimuxRunCommand(getline('.') ." ") <CR>

"retab
nmap <C-w>t :set tabstop=2 \| retab! \| set tabstop=4 <cr>

" nmap <C-w>n :NERDTreeTabsToggle<cr>
" nmap <leader>n :NERDTreeTabsToggle<cr>

nmap <C-w>n :NERDTreeToggle<cr>
nmap <leader>n :NERDTreeToggle<cr>

" function! NumberToggle()
" if(&relativenumber == 1)
"   set relativenumber!
"   else
"   set relativenumber
"   endif
" endfunc

nnoremap <leader>z :call NumberToggle()<cr>

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
Plugin 'wakatime/vim-wakatime'
