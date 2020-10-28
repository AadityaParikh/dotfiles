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
inoremap ((		(

" Pairing for quotes
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
inoremap ""		"

" Placeholder
nnoremap <c-j>	<Esc>/<++><CR><Esc>cf>

" Number Toggling
nnoremap <c-n> :set invnumber<CR>

" makefile
nnoremap <f9>	:make<CR>

" test compiling per lang
autocmd FileType java	nnoremap <f5> :!javac %<CR>
autocmd FileType java	nnoremap <f6> :!java %<<CR>
autocmd FileType c		nnoremap <f5> :!gcc %<CR>
autocmd FileType c		nnoremap <f6> :!./a.out<CR>
autocmd FileType scad	nnoremap <f5> :!openscad -o %<.stl %<CR>
autocmd FileType scad	nnoremap <f6> :!fstl %<.stl<CR>

" writing with a shortcut
nnoremap ZA		:w<CR>

