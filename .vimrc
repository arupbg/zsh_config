" -----------Vundle-------------c
if 0 | endif

if &compatible
  set nocompatible
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()
"filetype plugin indent on

" NeoBundle
set rtp+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'shougo/neocomplete.vim'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

" ----- Vim as a programmer's text editor -----------------------------
NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'vim-syntastic/syntastic'
NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-easytags'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'vim-scripts/a.vim'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'jeffkreeftmeijer/vim-numbertoggle'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'kabbamine/vcoolor.vim'
NeoBundle 'skammer/vim-css-color'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'wincent/command-t'
"NeoBundle 'nathanaelkane/vim-indent-guides'
"https://github.com/tomtom/tcomment_vim
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'joukevandermaas/vim-ember-hbs'


" ----- man pages, tmux -----------------------------------------------
NeoBundle 'jez/vim-superman'
NeoBundle 'christoomey/vim-tmux-navigator'

"------- Git ------
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'

" ----- Other text editing features -----------------------------------
NeoBundle 'Raimondi/delimitMate'

call neobundle#end()

filetype plugin indent on

" NeoComplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

" Vim-commentary
autocmd FileType apache setlocal commentstring=#\ %s

" Tabulacion
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Pathogen

" execute pathogen#infect()
" syntax enable

" Colors
syntax enable
set t_Co=256
set background=dark
let g:solarized_termcolors=256
"colorscheme PaperColor
hi Normal guibg=NONE ctermbg=NONE


"" Indent Guides
"let g:indent_guides_start_level = 1
"let g:indent_guides_guide_size = 1
"let g:indent_guides_auto_colors = 0
"" set ts=4 sw=4 et
"let g:indent_guides_enable_on_vim_startup=1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red        ctermbg=243
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=lightred   ctermbg=179
let g:indentLine_char = '▏'

" Airline
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" let g:airline_theme = 'base16_grayscale'
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.crypt = '🔒 '
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = '☰'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = '∄'
" let g:airline_symbols.whitespace = 'Ξ'

let g:airline_theme = 'base16_grayscale'
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.crypt = ''
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.copy = ''
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

set nu
set laststatus=2

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" Vim-Jedi
let g:jedi#auto_initialization = 1

" NERDTree setting defaults to work around http://github.com/scrooloose/nerdtree/issues/489
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGlyphReadOnly = "RO"

" NerdTree git plugin Maps
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
"tmux enable mouse
set mouse=a

NeoBundleCheck


