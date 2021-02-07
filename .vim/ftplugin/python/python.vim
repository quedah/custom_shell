"
" ---------------tabulator / shiftwidth -----------------
" Set tabulator and shift width to 4 (Python Style Guide)
"
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal textwidth=80
setlocal smarttab
setlocal expandtab

nnoremap <F2> :!python % <CR>
""nnoremap <F3> :!nosetests -s % <CR>

"Folds
set foldmethod=indent
set foldnestmax=2
