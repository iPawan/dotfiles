" Basic setup for vim 
" -- Pawan 07/28/2018
"
" No compatiblity with classic vi

set nocompatible

" enable sytanx, indentation and plugins
syntax enable
filetype plugin on
filetype plugin indent on

" Plugin management
 
if filereadable(expand("~/.vimrc.bundle"))
  source ~/.vimrc.bundle
endif
" delay fix:  Stop lag for Shit+O
set timeoutlen=5000 ttimeoutlen=100

set nobackup
set nowritebackup
set noswapfile
set showcmd
set relativenumber

" FINDING FILES
" Search down in sub-directories
" provides tab-completion for all file related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" ignore folders you don't want to search in
set wildignore+=*/node_modules/**

"netrw file browser settings
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"


" Base 16 color stuff
"if filereadable(expand("~/.vimrc_background"))
"  let base16colorspace=256
"  source ~/.vimrc_background
"endif

" Set my Leader key
let mapleader = "\<Space>"
nnoremap <leader>r :so ~/.vimrc<CR>
" Set my split preference
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Leader>o :only<CR>
nnoremap <C-p> :Files<CR>
nnoremap h <nop>
nnoremap l <nop> 

" Indent line settings
let g:indentLine_color_term = 239
let g:indentLine_char = '|'
set expandtab
set tabstop=2
set shiftwidth=2

"NERD Tree setup
nnoremap <Leader>e :NERDTreeToggle<Enter>
"" Close Nerdtree once file is open
let NERDTreeQuitOnOpen = 1
"" Show hidden files alwasys
let NERDTreeShowHidden=1


" ALE settings
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" Prettier settings
let g:ale_fix_on_save = 1
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_javascript_prettier_use_local_config = 1

"autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

" auto load the changed file
set autoread
set autowrite

" switch between the last two files
nnoremap <leader><leader> <c-^>
nnoremap <leader>s :w<CR>
nnoremap <leader>; :

set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set winheight=5
set winminheight=5
set winheight=999
