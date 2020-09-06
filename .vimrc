" Misc.
filetype plugin on
set ai
syntax on 
set tabstop=4
set shiftwidth=0
set fdm=syntax

" Pairing for braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Pairing for parentheses
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap ((		(

" Pairing for quotes
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
inoremap ""		"

" Placeholder
inoremap <c-j>	<Esc>/<++><CR><Esc>cf>

" makefile
nnoremap <f9>	:make

" writing with a shortcut
nnoremap ZA		:w<CR>

" commenting out things
" vnoremap <c-c>	:'<,'>norm ggi/*\<C-C>Gi*/\<C-C>
