call plug#begin('~/.vim/bundle')                                                  " :PLUG
"----------------------------------------------------------------------------------------

" plug» on-load»
Plug 'morhetz/gruvbox'                    " A true-color enabled theme
Plug 'noahfrederick/vim-noctu'            " A term16 theme (loaded only on vim)
Plug 'scrooloose/nerdtree'                " file manager for vim
Plug 'Xuyuanp/nerdtree-git-plugin'        " Enable git status flags on NerdTree
Plug 'tpope/vim-fugitive'                 " Commands for git
Plug 'tpope/vim-commentary'               " Comments/uncomments
Plug 'tpope/vim-sleuth'                   " Auto-adjust tabbing settings according to file
Plug 'tpope/vim-ragtag'                   " Autocloses xml style tags
Plug 'tpope/vim-surround'                 " Operate on surrounding stuff
Plug 'tpope/vim-obsession'                " Session auto capture
Plug 'tpope/vim-unimpaired'               " Mappings
Plug 'tpope/vim-repeat'                   " Fix mapping repeating
Plug 'dhruvasagar/vim-prosession'         " Adds global session management (uses obsession)
Plug 'jiangmiao/auto-pairs'               " Insert or delete [, (, {, or ' in pairs
Plug 'luochen1990/rainbow'                " Enable theme sharing with xterm
Plug 'nathanaelkane/vim-indent-guides'    " Indentation
Plug 'airblade/vim-gitgutter'             " Enable Git diff on gutter
Plug 'godlygeek/tabular'                  " Enable spacing with regex
Plug 'EvanDotPro/nerdtree-chmod'          " Enable chmoding from nerdtree
Plug 'esneider/YUNOcommit.vim'            " Shows a message if no commits are made in a while
Plug 'wakatime/vim-wakatime'              " Keep track of time spent on vim
Plug 'mbbill/undotree'                    " shows a visual representation of undo history
Plug 'easymotion/vim-easymotion'          " Allow jumping the file using letters
Plug 'mileszs/ack.vim'                    " enable search-for-text using the_silver_surfer
" Plug 'octref/RootIgnore'                  " Sets wildignore to whatever gitignore has
Plug 'terryma/vim-multiple-cursors'       " True ST3 style multiple selections
Plug 'wesQ3/vim-windowswap'               " Swap between panes with ease
Plug 'tmux-plugins/vim-tmux-focus-events' " Enable Focus[Gained/Lost] on terminal
Plug 'bling/vim-bufferline'               " enable bufferline on commandline
Plug 'Konfekt/FastFold'                   " Make folding faster
Plug 'editorconfig/editorconfig-vim'      " Maintains consistency for editors
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

" Async :make (used for syntax checking)
Plug 'neomake/neomake', {'do': 'npm i -g eslint ' }

" plug» on-filetype»
Plug 'moll/vim-node'                          , { 'for': 'javascript'      }
Plug 'mxw/vim-jsx'                            , { 'for': 'javascript.jsx'      } " JSX syntax
Plug 'gavocanov/vim-js-indent'                , { 'for': 'javascript'      } " JS indent
Plug 'othree/javascript-libraries-syntax.vim' , { 'for': 'javascript'      } " Libs syntax
Plug 'othree/yajs.vim'                        , { 'for': 'javascript'      } " JS syntax
Plug 'lepture/vim-jinja'                      , { 'for': ['jinja','nunjucks'] }
Plug 'othree/html5.vim'                       , { 'for': 'html'            }
Plug 'mattn/emmet-vim'                        , { 'for': 'html'            }
Plug 'kchmck/vim-coffee-script'               , { 'for': 'coffee'          }
Plug 'hail2u/vim-css3-syntax'                 , { 'for': 'css'             }
Plug 'digitaltoad/vim-pug'                    , { 'for': 'pug'             } " Jade syntax
Plug 'wavded/vim-stylus'                      , { 'for': 'stylus'          }
Plug 'ap/vim-css-color'                       , { 'for': ['css', 'stylus'] }
Plug 'plasticboy/vim-markdown'                , { 'for': 'markdown'        }
Plug 'tmux-plugins/vim-tmux'                  , { 'for': 'tmux'            }

"plug» neovim-only»
if has('nvim') && has('python3')
    Plug 'itchyny/lightline.vim'                                                    " Like airline but lighter
    Plug 'Shougo/deoplete.nvim'    , { 'do' : ':UpdateRemotePlugins' }              " Autocomplete
    Plug 'ternjs/tern_for_vim'     , { 'for': 'javascript', 'do': 'npm i -g tern' } " …for javascript
    Plug 'carlitux/deoplete-ternjs', { 'for': 'javascript' }
    Plug 'SirVer/ultisnips'                                                         " Enable Snippets
    Plug 'honza/vim-snippets'
    Plug 'Chiel92/vim-autoformat'  , { 'do': 'npm i -g js-beautify' }               " for JS HTML CSS JSX
    Plug 'maksimr/vim-jsbeautify'                                                   " also depends on js-beautify
endif

"----------------------------------------------------------------------------------------
call plug#end()
filetype plugin indent on

"                                                                                :GENERAL
"----------------------------------------------------------------------------------------

" general» flags»
syntax on          " Enable color syntax for known files
set nospell        " Disable spelling checking
set title          " Vim will set the terminal title
set magic          " Enables regex magic, no need for backslashes in some cases.
set showcmd        " Shows the last command entered
set wildmenu       " Enables extended features for completion
set autoread       " Detect when a file has changed
set hidden         " buffer» Dont unload buffer when closed
set showmatch      " show match on parenthesis and curly braces
set writebackup    " … unless you're currently editing.
set number         " lines» Enable line numbers
set relativenumber " lines» Enable relative line numbering
set nowrap         " lines» Disable line wrapping
set incsearch      " search» Search as you type
set hlsearch       " search» Highlight search results
set ignorecase     " search» Ignore case when searching…
set smartcase      " search» … but not when an uppercase letter is present
set gdefault       " search» Assume always /g on replacements
set autoindent     " indent» Enable auto indentation
set smartindent    " indent» Determine indentation level automatically
set expandtab      " indent» Inserts spaces rather than tabs
set smarttab       " indent» tab respects 'tabstop' 'shiftwidth' and 'softtabstop'
set shiftround     " indent» round indent to a multiple of 'shiftwidth'
set cursorline     " Show the current line
set cursorcolumn   " Show the current column
set splitbelow     " Open splits below instead of above
set splitright     " Open slits right instead of above
set backup         " Enable backup file creation
set swapfile       " Enable swapfile creation
set undofile       " Enable undo management

" general» settings»
set synmaxcol=200                    " Only render syntax for first 200 cols
set background=dark                  " Use default colors for dark background
set wildmode=list:longest            " autocomplete until longest word is filled
set diffopt=vertical,filler          " Define window behaviour for diffs (horizontal split)
set grepprg=ag                       " search» Use the_silver_searcher insteand of grep
set directory=$HOME/.config/nvim/cache/swap/ " cache» Set dir for swapfiles
set backupdir=$HOME/.config/nvim/cache/back/ " cache» Set dir for backups
set undodir=$HOME/.config/nvim/cache/undo/   " cache» Set dir for undos
set updatetime=50                    " git» lower the time it takes to update gitgutter
set scrolloff=9999                   " buffer» Always maintain n lines of context
set history=1000                     " buffer» Control the history length
set textwidth=100                    " buffer» maximum length of a line
set colorcolumn=90                   " buffer» draws a bar on given line
set laststatus=2                     " buffer» draws a status bar on the bottom
set foldcolumn=2                     " gutter» Makes the gutter a little wider
set numberwidth=4                    " gutter» Sets the width of the line numbering column
set backspace=indent,eol,start       " indent» Make backspace behave the way you expect
set tabstop=4                        " indent» Set tab length
set softtabstop=0                    " indent» Force softtabbing
set shiftwidth=4                     " indent» How many cols to indent on reindent
set clipboard^=unnamed               " system-wide clipboard supprt
set listchars=tab:▸-,space:·,eol:¬,trail:·,nbsp:×,extends:❯,precedes:❮ " Invisibles
set showtabline=2                    " Always show the tabline

" general» vars»
let mapleader=' '      " Use space as <Leader> key for plugins namespace
let maplocalleader=','
let &t_SI="\<Esc>[5 q" " Cursor» blink pipe on Insert
let &t_SR="\<Esc>[3 q" " Cursor» blink underline on Replace
let &t_EI="\<Esc>[2 q" " Cursor> restore on exit modes

if has('nvim')

    " general» nvim-only» flags»
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1   " Enable 24bit colors when supported
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " Change the cursor when entering insert mode
    let g:gruvbox_italic=1              " Force gruvbox to use italics (configured on install)
    let &colorcolumn=join(range(91,999), ',') " Show different color aftter line 90
    set termguicolors
    colorscheme gruvbox
    hi CursorLine  guibg='#202020'
    hi ColorColumn guibg='#303030'

else

    " general» vim-only» flags»
    colorscheme noctu " Set the color scheme

    " general» vim-only» settings»
    set encoding=utf-8 " make sure the encoding is the correct one
    set t_Co=16

endif

"                                                                       :PLUGIN-SETTINGS
"----------------------------------------------------------------------------------------

"                                                                                 :neomake
let g:neomake_verbose=0
let g:neomake_open_list=2 " Auto open error list, but without moving cursor.
let g:neomake_error_sign={'text':'✖', 'texthl':'NeomakeErr'}    " Customize error symbol
let g:neomake_warning_sign={'text':'➜', 'texthl':'NeomakeWrn'}  " Customize warning symbol
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_maker = {
\   'args': ['--no-color', '--format', 'compact'],
\   'errorformat': '%f: line %l\, col %c\, Error - %m,' .
\                  '%W%f: line %l\, col %c\, Warning - %m'
\}
" Run on every write
autocmd! BufWritePost,BufWinEnter *.js Neomake
" Set the colors of the icons on the gutter
if has('nvim')
    autocmd VimEnter,Colorscheme,BufWinEnter * highlight NeomakeWrn guifg=#fabd2f guibg=#3c3836
    autocmd VimEnter,Colorscheme,BufWinEnter * highlight NeomakeErr guifg=#fb4934 guibg=#3c3836
endif

" plugin» fugitive»
let g:fugitive_git_executable = 'LANG=en_US.UTF-8 git' " Fix https://github.com/tpope/vim-git/issues/12

" plugin» vim-indent-plugin»
let g:indent_guides_enable_on_vim_startup=1   " Enable plugin on startup
let g:indent_guides_start_level=2             " In which indentation level begin marking
let g:indent_guides_guide_size=1              " width of mark (only valid for spaces)
let g:indent_guides_auto_colors=0             " Disable autocoloring, set'em manually

" plugin» nerdtree»
let g:NERDTreeHighlightCursorLine=1 " Highlight the current line
let g:NERDTreeQuitOnOpen=1          " Close buffer when opening a file
let g:NERDTreeShowHidden=1          " Show hidden files by default
let g:NERDTreeChDirMode=1           " Change directory when selecting
let g:NERDTreeMinimalUI=1           " Don't show neither bookmarks nor help message
let g:NERDTreeAutoDeleteBuffer=1    " remove buffer when deleting or renaming a file
let g:NERDTreeRespectWildIgnore=1   " respect wildgnore and thus, gitignore

" plugin» nerdtree-git-pugin»
let g:NERDTreeIndicatorMapCustom = {
    \"Modified"  : "❯",
    \"Staged"    : "✚",
    \"Untracked" : "✦",
    \"Renamed"   : "❖",
    \"Unmerged"  : "☯",
    \"Deleted"   : "✖",
    \"Dirty"     : "✱",
    \"Clean"     : "★",
    \"Unknown"   : "?"
\}

" plugin» markdown»
let g:vim_markdown_folding_disabled=1 " disable folding

" plugin» ctrlp» Make the plugin gitignore-aware
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_follow_symlinks=1 "  Follow symlinks, but avoid recursion

" plugin» javascript-libraries-syntax»
let g:used_javascript_libs='underscore,react,chai'

" plugin» rainbow»
let g:rainbow_active=1 " Enable rainbow on startup.

"                                                                                :deoplete
"
let g:deoplete#enable_at_startup=1      " Enable deoplete at startup.
let g:deoplete#enable_smart_case=1      " If a capital letter is given, ignore case.
if !exists ('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {} " trigger omnifunc
endif
" Automatically close the scratch window when exiting Insertmode or completing word.
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"                                                                                    :tern
"
let g:AutoPairsMapCR=0 " Fixes a bug with auto-pairs plugin
let g:tern_map_keys=0  " Don't map keys (I'm doing that manually)
let g:tern_show_argument_hints='on_hold'
let g:tern_show_signature_in_pum=1 " Shows where the function is comming from
" deoplete-ternjs
let g:tern_request_timeout = 1
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']

" plugin» ultisnips»
let g:UltiSnipsSnippetsDir=expand('~/.nvim/snips') " Determine snippets location
let g:UltiSnipsSnippetDirectories=[expand('~/.nvim/snips')]
let g:UltiSnipsEditSplit='vertical'            " Determine how to open snippet editor
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
let g:UltiSnipsUsePythonVersion=3

" plugin» windowswap»
let g:windowswap_map_keys=0 " Prevent default key-mappings

" plugin» lightline»
let g:lightline = {
\   'colorscheme': 'gruvbox',
\   'active': {
\       'left': [
\           ['mode','paste'],
\           ['fugitive'],
\           ['readonly', 'filename']
\        ],
\       'right': [
\           ['filetype'],
\           ['fileformat','fileencoding']
\       ]
\   },
\   'statusline': {},
\   'tabline':{
\       'left':[
\           ['bufferline']
\       ],
\       'right':[
\           ['obsession', 'cwd', 'bufnr'],
\       ]
\   },
\   'component': {
\       'readonly': '%{&readonly?"":""}',
\       'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
\       'fugitive': '%{exists("*fugitive#head")?" ".fugitive#head():""}',
\       'obsession': '%{ObsessionStatus()}',
\       'cwd': '%{fnamemodify(getcwd(), ":t")}',
\       'bufnr': '%{bufnr("")}'
\   },
\   'component_expand':{
\       'bufferline' : 'LightlineBufferline',
\   },
\   'component_function':{
\       'filename': 'LightlineFilename'
\   },
\   'component_visible_condition': {
\       'readonly': '(&filetype!="help"&& &readonly)',
\       'modified': '(&filetype!="help"&& (&modified  || !&modifiable))',
\       'fugitive': '(exists("*fugitive#head") && "" != fugitive#head())'
\   },
\   'separator'    : { 'left' : '', 'right' : '' },
\   'subseparator' : { 'left' : '', 'right' : '' }
\}

let g:bufferline_active_highlight = 'LightlineBufferline'
let g:bufferline_echo = 0
let g:bufferline_fname_mod = ':.'
let g:bufferline_pathshorten = 1

" let g:bufferline_active_buffer_left = '['
" let g:bufferline_active_buffer_right = ']'

function! LightlineModified()
  return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineFilename()
  let fname = expand('%F')
  return
  \ ('' != LightlineModified() ? LightlineModified() : '') .
  \ ('' != fname ? fname : '[No Name]')
endfunction

function! LightlineBufferline()
  call bufferline#refresh_status()
  return [
  \ g:bufferline_status_info.before,
  \ g:bufferline_status_info.after
  \]
endfunction

" plugin» vim-jsx»
let g:jsx_ext_required=1 " Enable plugin on *.js as well

"plugin» ack.vim
let g:ackprg = 'ag --vimgrep'

"plugin» emmet
let g:user_emmet_mode='n'
let g:user_emmet_install_global=0
autocmd FileType html EmmetInstall

" plugin» editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" plugin» fzf
let g:fzf_action = {
\   'ctrl-t': 'tab split',
\   'ctrl-x': 'split',
\   'ctrl-v': 'vsplit',
\}
let g:fzf_layout = { 'down': '~25%' } " down, up, left, right or: { 'window': 'enew' }
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_buffers_jump = 1 " [BUffers] jumps to existing window, if possible.
let g:fzf_commits_log_options = '--graph --color=always'
let g:fzf_tags_command = 'ctags -R'
let g:fzf_command_prefix = 'Fzf'

"------------------------------------------------------------------------------- :FOLDING

let g:javascript_fold = 1
autocmd Filetype javascript setlocal foldmethod=marker foldlevel=0 foldmarker=/**,*/

"                                                                                :MAPPING
"----------------------------------------------------------------------------------------

" Ignore this keymappings
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" make less difficult to type ] or [ by ramapping them to > and > respectively
" This is specially important for unimpaired
nmap <Left> [
omap <Left> [
xmap <Left> [
nmap <Right> ]
omap <Right> ]
xmap <Right> ]

" mapping» all»
map <Leader><Up> :resize +1<CR>|                          " window» resize up
map <Leader><Down> :resize -1 <CR>|                       " window» resize down
" mapping» all» movement»
map <Leader>mm <Plug>(easymotion-overwin-f)|               " using a char
map <Leader>mc <Plug>(easymotion-overwin-f2)|              " using 2 chars
map <Leader>mw <Plug>(easymotion-overwin-w)|               " using a word
map <Leader>ml <Plug>(easymotion-overwin-line)|            " using a line

" mapping» visual»
vnoremap <Leader>t :Tabularize /\v/<left>|                " Tabularize regex

" mapping» insert»
inoremap <C-a> <Esc>
imap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"

" mapping» normal»
nmap Q q|                                                 " Avoid unintentional exMode
noremap Y y$                                              " Yank to the end of the line
nnoremap <CR> @@|                                         " repeat las macro
nnoremap <Leader>w :update<CR>
nnoremap <Leader>% :source $MYVIMRC<CR>|                  " reload vimrc settings
nnoremap <Leader>y :call WindowSwap#MarkWindowSwap()<CR>| " window» yank (for swap)
nnoremap <Leader>p :call WindowSwap#DoWindowSwap()<CR>|   " window» paste (swap)
nnoremap <Leader>h <C-w>h|                                " window» move to pane left
nnoremap <Leader>j <C-w>j|                                " window» move to pane below
nnoremap <Leader>k <C-w>k|                                " window» move to pane above
nnoremap <Leader>l <C-w>l|                                " window» move to pane right
nnoremap <Leader>\| :vnew<CR>|                            " window» new vert. split
nnoremap <Leader>- :new<CR>|                              " window» new ho. split
nnoremap <Leader><Left> :vertical resize +1<CR>|          " window» resize left
nnoremap <Leader><Right> :vertical resize -1<CR>|         " window» resize right
" mapping» normal» sets»
nnoremap <Leader>si :set tabstop=4 shiftwidth=4 expandtab<bar>retab<CR>|
" mapping» normal» buffers»
nnoremap <Leader>bi :ls!<CR>|                              " Active buffers
nnoremap <Leader>bd :bufdo bd<CR>                          " Remove all buffers
" mapping» normal» toggle»
nnoremap <Leader>ti :set list!<CR>|                        " Invisible chars
nnoremap <Leader>tn :NERDTreeToggle<CR>|                   " Nerdtree
nnoremap <Leader>tu :UndotreeToggle<CR>|                   " Undotree
" mapping» normal» search»
nnoremap / /\v|                                            " search magically
cnoremap %s %s/\v|                                         " replace magically
nnoremap // :%s/\v                                         " replace shortcut
nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>|         " Clear search highlights
nnoremap <silent> <Esc><Esc><Esc> :/^❌ 💩 /<CR>|            " Forget current search
nnoremap <Leader>/ :Ack!<Space>|                           " search text in project
" mapping» normal» motion»
nnoremap <Leader>mn :GitGutterNextHunk<CR>|                " Git» hunk Next
nnoremap <Leader>mp :GitGutterPrevHunk<CR>|                " Git» hunk Prev
" mapping» normal» motion» filetype-specific»
autocmd Filetype javascript nnoremap <Leader>md :TernDef<CR>| " Move to definition
" mapping» normal» git»
nnoremap <Leader>g+ :GitGutterStageHunk<CR>|               " Git» hunk Stage
nnoremap <Leader>g- :GitGutterUndoHunk<CR>|                " Git» hunk Revert
nnoremap <Leader>gC :Gcommit --no-verify<CR>|              " Git» Commit without hooks
nnoremap <Leader>gc :Gcommit<CR>|                          " Git» Commit
nnoremap <Leader>gs :Gstatus<CR>|                          " Git» Status
nnoremap <Leader>gw :Gwrite<CR>|                           " Git» Write (add|checkout)
nnoremap <Leader>gr :Gread<CR>|                            " Git» Read (checkout|add)
nnoremap <Leader>gd :Gdiff<CR>|                            " Git» Diff
nnoremap <Leader>gp :Gpush<CR>|                            " Git» Push
" mapping» normal» tags»
nnoremap <Leader>T :GutentagsUpdate<CR>|                   " Reload Tags
" mapping» normal» format»
nnoremap <Leader>fw :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>| " Format whitespace (remove)
nnoremap <Leader>ff :Autoformat<CR>|                       " Autoformat code (whole file)
autocmd FileType javascript vnoremap <buffer> <Leader>ff :call RangeJsBeautify()<CR>
autocmd FileType json       vnoremap <buffer> <Leader>ff :call RangeJsonBeautify()<CR>
autocmd FileType jsx        vnoremap <buffer> <Leader>ff :call RangeJsxBeautify()<CR>
autocmd FileType html       vnoremap <buffer> <Leader>ff :call RangeHtmlBeautify()<CR>
autocmd FileType css        vnoremap <buffer> <Leader>ff :call RangeCSSBeautify()<CR>
" mapping» normal» vim»
nnoremap <Leader>vcd :NERDTreeFind<CR>:bd<CR>| " set the current directory as current
nnoremap <Leader>vs :CtrlPObsession<CR>|       " open session switcher
nnoremap <silent> <Leader>vr :silent !osascript -e "tell application \"Google Chrome\" to reload active tab of window 1"<CR>

" mapping» terminal»
if has('nvim')
    nnoremap <Leader>vt :new<CR>:terminal<CR>|            " open terminal in a split.
    tnoremap <C-a> <C-\><C-n>
    tnoremap <silent> <Esc> <C-\><C-n>:bd!<CR>|           " Exit the terminal easily
endif

" mapping» fzf
nnoremap <tab><tab> :FzfFiles<CR>
nnoremap <tab>b :FzfBuffers<CR>
nnoremap <tab>bl :FzfBLines<CR>
nnoremap <tab>bc :FzfBCommits<CR>
nnoremap <tab>g :FzfGFiles<CR>
nnoremap <tab>c :FzfCommits<CR>
nnoremap <tab>a :FzfAg<CR>
nnoremap <tab>m :FzfMaps<CR>
nnoremap <tab>l :FzfLines<CR>
nnoremap <tab>: :FzfHistory:<CR>
nnoremap <tab>/ :FzfHistory/<CR>
nnoremap <tab>C :FzfCommands<CR>
nnoremap <tab>t :FzfTags<CR>
nnoremap <tab>s :FzfSnippets<CR>

imap <C-f><C-w> <plug>(fzf-complete-word)
imap <C-f><C-p> <plug>(fzf-complete-file-ag)
imap <C-f><C-l> <plug>(fzf-complete-line)


" --------------------------------------------------------------------------------- macros

" block comment unindent
nnoremap <LocalLeader>c< ^v/*\/=:let @/=""<CR>

"-------------------------------------------------------------------------- auto-execution

autocmd BufNewFile,BufRead *.eslintrc set syntax=json " read eslint as json
autocmd BufNewFile,BufRead *.ejs set syntax=html      " reas ejs files as html

" Make NerdTree close when no other buffer exists
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

if has('nvim')
    " Show ExtraWhitespace
    " NOTE: This might be causing a slowdown when in insert mode
    autocmd VimEnter,Colorscheme,BufWinEnter * highlight ExtraWhitespace  guibg=#ff0000 ctermbg=1

    " ExtraWhiteSpace Matching
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/        " Highlight trailing whitespace
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/ " Disable highlight on insert
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/        " …but reenable it afterwards
    autocmd BufWinLeave * call clearmatches()                  " Apply matching to new buffers
endif

" Automatically enter InsertMode when focusing a Terminal
if has('nvim')
    autocmd TermOpen * autocmd BufEnter <buffer> call feedkeys('i')
endif

" auto» lightline»
augroup reload_vimrc
    autocmd!
    autocmd bufwritepost $MYVIMRC nested source $MYVIMRC " Reload lightline along .vimrc
augroup END

augroup omnifuncs
    " what should be autocompleted with omnifuncs?
    autocmd!
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    " autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType javascript setlocal omnifunc=tern#Complete
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

