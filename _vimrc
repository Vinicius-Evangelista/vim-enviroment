filetype indent plugin on
syntax enable
filetype plugin on

"Configurea ALE for Omnisharp 
let g:ale_linters = {
			\ 'cs': ['OmniSharp']
			\}
let g:ale_completion_enabled = 1
let g:OmniSharp_popup_options = {
			\ 'highlight': 'Normal',
			\ 'padding': [1],
			\ 'border': [1]
			\}
let g:OmniSharp_popup_position = 'floating'
let g:netrw_winsize=20
let g:netrw_banner=0

set hi
set termguicolors
set t_Co=256
set t_ut=
set background=light
colorscheme codedark

let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_sign_info = '·'
let g:ale_sign_style_error = '·'
let g:ale_sign_style_warning = '·'
let g:ale_linters_explicit = 1
let g:ale_fixers_explicit = 1
let g:ale_linters = {
	      \ 'javascript': ['coc'],
      \ 'python': ['coc'],
      \ }
let g:ale_fixers = {
	      \ 'cs': ['dotnet-format']
        	\}

set history=1000
"Show the cursor position"
set ruler
let g:OmniSharp_highlight_groups = {
			\ 'Comment': 'NonText',
			\ 'XmlDocCommentName': 'Identifier',
			\ 'XmlDocCommentText': 'NonText',
			\ 'ClassName': 'ClassName',
			\ 'NamespaceName': 'NamespaceName',
			\ 'InterfaceName': 'InterfaceName',
			\}
"Show show inclomplete CMD commands"
set showcmd

"Show complete menu"
set wildmenu
set backspace=indent,eol,start
""set hlsearch
set incsearch
set backup
set nu
"Helps identation"
set ai
set clipboard=unnamed
"Map Ctrl+Tab to switch to the next buffer
nmap <Tab> :bn<CR>

"Map Ctrl+Shift+Tab to switch to the previous buffer
nnoremap <S-Tab> :bp<CR>

" inoremap <expr> | pumvisible() ? '<C-n>' :                                                                                                                    
" 			| getline('.')[col('.')-2] =~# '[[:alnum:].-_#$]' ? '<C-x><C-o>' : '|'

nnoremap <C-k><C-i> :OmniSharpDocumentation<CR>
nnoremap <C-U> :OmniSharpGotoDefinition<CR>
nnoremap <C-o> :OmniSharpPreviewDefinition<CR>
nnoremap <F12> :!dotnet run
nnoremap <C-;> :OmniSharpCodeFormat<CR>
map <C-s> :w <CR>
map <C-q> :bd <CR>
map [ ysiw]
map ( ysiw)
map { yss]
map } yss}
map <C-p> :FZF! ~<CR>
nnoremap <F9> :NERDTreeToggle<CR>
