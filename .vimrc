" *****************************************************************
"*                          VUNDLE                                *
" *****************************************************************
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" lineIndent
Plugin 'Yggdroot/indentLine'

"YCM
"Plugin 'Valloric/YouCompleteMe'

"Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Fugitive
Plugin 'tpope/vim-fugitive'

"javascript 
Plugin 'pangloss/vim-javascript'

"javascript syntax highlight
Plugin 'jelera/vim-javascript-syntax'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" *****************************************************************
" *                       VARIABLES                               *
" *****************************************************************
set nocompatible               " get rid of strict vi compatibility!
set nu                          " line numbering on
set autoindent                  " autoindent on
"set noerrorbells                " bye bye bells :)
set modeline                    " show what I'm doing
set nowrap                      " no wrapping!
set ignorecase                  " search without regards to case
set noshowmode                    " show the mode on the dedicated line (see
set backspace=indent,eol,start  " backspace over everything
set fileformats=unix,dos,mac    " open files from mac/dos
set exrc                        " open local config files
set nojoinspaces                " don't add white space when I don't tell 
set ruler                       " which line am I on?
set showmatch                   " ensure Dyck language
set incsearch                   " incremental searching
set nohlsearch                  " meh
set bs=2                        " fix backspacing in insert mode
set cursorline                  " highlighs current line
set formatoptions+=r            " auto add askerus for comments
"set mouse=a
set clipboard=unnamed
set relativenumber
"set lazyredraw
highlight CursorLineNR ctermfg=white
set ttyfast

" Javascript node js stuff
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
"set foldmethod=syntax

" Indentation Guide
let g:indentLine_char = '⎸'
"let g:indentLine_char = '│'
"let g:indentLine_char = '┆'
let g:indentLine_color_term = 236


"FZF
set rtp+=/usr/local/opt/fzf

" Enable arrow keys                    
imap ^[OA <ESC>ki                                    
imap ^[OB <ESC>ji                   
imap ^{OC <ESC>li
imap ^[OD <ESC>hi

" Shows colors of syntax
syntax on                          

" Autocomplete paranthesis stuff
inoremap [  []<Esc>i
inoremap []     []
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>0

imap {      {}<Left> 
imap {<CR>  {<CR>}<Esc>O
imap {}     {}

" Smart indent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"theming
let &t_Co=256
set background=dark
let g:solarized_termcolors=16

"set linenumber and line number on active buffer
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set number cul
    autocmd WinLeave * set nonumber nocul
augroup END

" Line number highlight
highlight LineNr  ctermbg=black

" Highlight overlenght of 80
set colorcolumn=80 
highlight ColorColumn ctermbg=black

"highlight OverLength ctermbg=lightyellow ctermfg=grey guibg=lightyellow
"match OverLength /\%81v.\+/

" Highlight current line color
highlight CursorLine   cterm=NONE ctermbg=black 
"hi CursorLineNr   term=bold ctermfg=yellow gui=bold guifg=yellow

" Highlight color of VISUAL mode
highlight Visual  ctermfg=grey ctermbg=darkblue
  
" Highlight color of Matching paranthesis 
highlight MatchParen cterm=underline ctermbg=none ctermfg=lightmagenta

"--------------AIR LINE----------------
set laststatus=2
set ttimeoutlen=50
"set encoding=utf-8
let g:airline_powerline_fonts = 2
let g:Powerline_mode_V="V·LINE"
let g:Powerline_mode_cv="V·BLOCK"
let g:Powerline_mode_S="S·LINE"
let g:Powerline_mode_cs="S·BLOCK"
"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
"let g:Powerline_symbols = 'fancy'
let g:airline_theme = 'solarized'


"abreviations
ab Sop System.out.println( <RIGHT><RIGHT>;<LEFT><LEFT><LEFT>
ab Sopl System.out.print(
ab Privates private static final
ab FF /////////////////////////////////FIELDS/////////////////////////////////////
ab MM /////////////////////////////////METHODS////////////////////////////////////
ab CC //////////////////////////////CONSTRUCTORS//////////////////////////////////
ab SG ///////////////////////////SETTERS & GETTERS////////////////////////////////

iab pmain 
\public static void main(String[] args<RIGHT><CR>
\{<CR>

iab hheader   
\<CR>/*
\<CR>Name:
\<CR>Purpose: 
\<CR>@param 
\<CR>@return 
\<CR>/<UP><UP><UP><UP><END>

iab ctorheader 
\<CR>/*
\<CR>Constructor
\<CR>Purpose:
\<CR>/<UP><END>

iab fileheader 
\/*
\<CR>Name: Shangway Hsu
\<CR>Login: 
\<CR>File:
\<CR>Date: 
\<CR>Sources of Help: API, Discussion 
\<CR>
\<CR>Description: 
\<CR>
\<CR>/
\<CR><UP><UP><UP><UP><UP><UP><UP><END>

iab classheader 
\<CR>/*
\<CR>Name:
\<CR>Purpose: 
\<CR>/<UP><UP><END>

iab testerclass 
\public class Tester<CR>
\{<CR>
\public static void main(String[] args<RIGHT><CR>
\{<CR>

filetype off                  " required
syntax on

