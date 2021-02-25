"        _                  _            _           
"   __ _| |_ ___  _ __ ___ (_) _____   _(_)_ __ ___  
"  / _` | __/ _ \| '_ ` _ \| |/ __\ \ / / | '_ ` _ \ 
" | (_| | || (_) | | | | | | | (__ \ V /| | | | | | |
"  \__,_|\__\___/|_| |_| |_|_|\___| \_/ |_|_| |_| |_|
                                                   
" Misc.
filetype plugin on
set ai
set ic
syntax on 
set tabstop=4
set shiftwidth=0
set invnumber
set invrelativenumber
set foldmethod=syntax 
set fdn=3
nnoremap ZW			:w<CR>
vnoremap .			:norm .<CR>
nnoremap <c-j>		<Esc>/<++><CR><Esc>cf>
nnoremap <c-a>		ggVG
inoremap <c-g>		<Esc>dawa

" Colors
colo default
highlight LineNr ctermfg=Cyan
highlight Folded cterm=bold ctermbg=Black ctermfg=White

" Extra Info
nnoremap <c-l> 		:set hlsearch!<CR>
nnoremap <c-n> 		:set relativenumber!<CR>

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

" Compilation
nnoremap <f9>		:make<CR>
autocmd FileType java	nnoremap <f5> :!javac %<CR>
autocmd FileType java	nnoremap <f6> :!java %<<CR>
autocmd FileType c		nnoremap <f5> :!gcc %<CR>
autocmd FileType c		nnoremap <f6> :!./a.out<CR>
autocmd FileType scad	nnoremap <f5> :!openscad -o %<.stl %<CR>
autocmd FileType scad	nnoremap <f6> :!fstl %<.stl<CR>

