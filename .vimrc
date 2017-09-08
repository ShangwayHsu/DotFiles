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
"Plugin 'pangloss/vim-javascript'

"javascript syntax highlight
Plugin 'jelera/vim-javascript-syntax'

"Git diff 
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

call plug#begin('~/.vim/plugged')

"Plug 'pangloss/vim-javascript'
call plug#end()

"CtrlP fuzy search
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

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
"set showmatch                   " ensure Dyck language
set incsearch                   " incremental searching
set nohlsearch                  " meh
set bs=2                        " fix backspacing in insert mode
set cursorline                  " highlighs current line
set formatoptions+=r            " auto add askerus for comments
"set mouse=a
set clipboard=unnamed
set relativenumber
set lazyredraw
highlight CursorLineNR ctermfg=white
set ttyfast

"FZF
set rtp+=/usr/local/opt/fzf

" *********************************************************************
" *                             THEME                                 *
" *********************************************************************
let &t_Co=16
set background=dark
syntax enable
colorscheme solarized
let g:solarized_termcolors=16
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"

" Indentation Guide
let g:indentLine_char = '⎸'
"let g:indentLine_char = '│'
"let g:indentLine_char = '┆'
let g:indentLine_color_term = 236

" Enable arrow keys                    
imap ^[OA <ESC>ki                                    
imap ^[OB <ESC>ji                   
imap ^{OC <ESC>li
imap ^[OD <ESC>hi

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

" Highlight current line color
highlight CursorLine   cterm=NONE ctermbg=black 

" Highlight color of VISUAL mode
highlight Visual ctermfg=darkblue ctermbg=grey
  
" Highlight color of Matching paranthesis 
highlight MatchParen term=underline cterm=underline gui=underline

"--------------AIR LINE----------------
"let &t_Co=256
set laststatus=2
set ttimeoutlen=50

"set encoding=utf-8
let g:airline_powerline_fonts = 2
let g:Powerline_mode_V="V·LINE"
let g:Powerline_mode_cv="V·BLOCK"
let g:Powerline_mode_S="S·LINE"
let g:Powerline_mode_cs="S·BLOCK"
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
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

filetype plugin indent on
