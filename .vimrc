#       _                  _            _           
#  __ _| |_ ___  _ __ ___ (_) _____   _(_)_ __ ___  
# / _` | __/ _ \| '_ ` _ \| |/ __\ \ / / | '_ ` _ \ 
#| (_| | || (_) | | | | | | | (__ \ V /| | | | | | |
# \__,_|\__\___/|_| |_| |_|_|\___| \_/ |_|_| |_| |_|
                                                   
" Misc.
filetype plugin on
set ai
syntax on 
set tabstop=4
set shiftwidth=0
set invnumber
set invrelativenumber

" Folding
set foldmethod=syntax 
set fdn=2

" Colors
colo default
highlight LineNr ctermfg=Cyan
highlight Folded cterm=bold ctermbg=Black ctermfg=White

" Numbers
nnoremap <c-n> 		:set invnumber<CR>
nnoremap <c-l> 		:set invrelativenumber<CR>

" Braces
inoremap {			{}<Left>
inoremap <expr>	}	strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap {<CR>		{<CR>}<Esc>O<Tab>
inoremap {{			{
inoremap {}			{}
vnoremap qq{ 		<Esc>`>a}<Esc>`<i{<Esc>

" Parentheses
inoremap (  		()<Left>
inoremap <expr> )  	strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap ((			(
vnoremap qq( 		<Esc>`>a)<Esc>`<i(<Esc>

" Quotes
inoremap <expr> " 	strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
inoremap ""			"
vnoremap qq" 		<Esc>`>a"<Esc>`<i"<Esc>

" Placeholder
nnoremap <c-j>		<Esc>/<++><CR><Esc>cf>

" Compilation
nnoremap <f9>		:make<CR>
autocmd FileType java	nnoremap <f5> :!javac %<CR>
autocmd FileType java	nnoremap <f6> :!java %<<CR>
autocmd FileType c		nnoremap <f5> :!gcc %<CR>
autocmd FileType c		nnoremap <f6> :!./a.out<CR>
autocmd FileType scad	nnoremap <f5> :!openscad -o %<.stl %<CR>
autocmd FileType scad	nnoremap <f6> :!fstl %<.stl<CR>

" Writing with a shortcut
nnoremap ZW			:w<CR>
