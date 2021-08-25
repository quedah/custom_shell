"
filetype off


"source ~/.vimrc_local


au BufNewFile,BufRead *.cu set ft=cu
syntax enable

filetype on
filetype plugin on
filetype plugin indent on

colorscheme ron

set encoding=utf-8
set ruler
set incsearch
set hlsearch
set textwidth=120

set dictionary=~/.vim/my_dictionary
set complete+=k

set pastetoggle=<F2>

"Directory listing
let g:netrw_liststyle=3

"tab size
set ts=2

"indentation width
set sw=2

"c like indentation
"set cindent

"autocomplete
set wildmenu
set wildmode=list:longest,full
"set mouse=a

set expandtab
set tabstop=2



"autocomplete Parenthesis
""When you type an open brace, this will automatically
"insert a closing brace on the same line, after the cursor.
""If you quickly hit Enter after the open brace, (to begin
"a code block), the closing brace will be inserted on the
""line below the cursor. If you quickly press the open brace
"key again after the open brace, Vim won't insert anything extra,
"" you'll just get a single open brace. Finally, if you quickly
"type an open and close brace, Vim will not do anything special.
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

"autocomplete quotes
inoremap "      ""<Left>
inoremap "<CR>  "<CR>"<Esc>O
inoremap ""     "
inoremap """     """<Esc>
inoremap """<CR>     """<CR>"""<Esc>O

inoremap '      ''<Left>
inoremap '<CR>  '<CR>'<Esc>O
inoremap ''     '
inoremap '''     ''''''<Left><Left><Left>

"mapping some more keys ::

"CTRL-X is cut
vnoremap <C-X> "+x

"CTRL-C is copy
vnoremap <C-C> "+y

"CTRL-V is paste
vnoremap <C-V> "+gP

"to paste blockwise, uses paste.vim autoload script
exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

" CTRL-A is Select all
"noremap <C-A> gggH<C-O>G
"inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
"cnoremap <C-A> <C-C>gggH<C-O>G
"onoremap <C-A> <C-C>gggH<C-O>G
"snoremap <C-A> <C-C>gggH<C-O>G
"xnoremap <C-A> <C-C>ggVG

" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q>  <C-V>]]


"
"
"Add new line in normal mode
nnoremap + maO<esc>`a

"Shift content after cursor to new line and remain in normal mode.
nnoremap <C-n> i<CR><ESC>

"Viewports
noremap gg <C-w>t
noremap gw <C-w>w
noremap gh <C-w>h
noremap gr :rightb vsp . <enter>
noremap gl :vsp . <enter>
noremap gv :vsplit <enter>
noremap QQ :q  <enter>
"Shortcut for opening vim filebrowser.
nnoremap ge :e.<CR>


"Toggle line numbers
noremap <F3> :set invnumber<CR>


"Make normal mode space, backspace & tab behaviour equal to insert mode.
nnoremap <a-Space> i<Space><Right><Esc>
nnoremap <a-CR> i<CR><Esc>
nnoremap <BackSpace> i<BackSpace><Right><Esc>

"More convenient way to save current file.
nnoremap ss :w<CR>


nnoremap <space> za
vnoremap <space> zf

"Quickpaste IPython embed code.
noremap π <Esc>_ifrom IPython import embed <CR>embed()<CR><Esc>  
"Quickpaste pdb set trace code.
noremap ø <Esc>_iimport pdb; pdb.set_trace()<CR><Esc>  

"More convenient autocomplete.
inoremap § <C-n>


"Manage views (folds, etc.)
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview


inoremap <a-Space>  <Esc>


"autocmd bufnewfile *.py so ~/.vim/py_header.txt
"autocmd bufnewfile *.py exe "1," . 7 . "g/File Name :.*/s//File Name : " .expand("%")
"autocmd bufnewfile *.py exe "1," . 7 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
"autocmd Bufwritepre,filewritepre *.py "normal mi"
"autocmd Bufwritepre,filewritepre *.py exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
"autocmd bufwritepost,filewritepost *.py execute "normal `i"
"
autocmd bufnewfile *.sh so ~/.vim/sh_header.txt


inoremap jj <ESC>
set number
set backspace=2
nnoremap ; :
nnoremap : ;




nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"nmap <silent> <c-k> :wincmd k<CR>
"nmap <silent> <c-j> :wincmd j<CR>
"nmap <silent> <c-h> :wincmd h<CR>
"nmap <silent> <c-l> :wincmd l<CR>
"
"
"
"Search highlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

