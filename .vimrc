" Misc.
filetype plugin on
set ai
syntax on 
set tabstop=4
set shiftwidth=0

" Pairing for braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Pairing for parentheses
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

" Pairing for quotes
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"

" Placeholder
inoremap <c-j> <Esc>/<++><CR><Esc>cf>
