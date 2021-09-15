call plug#begin('~/.vim/plugged')


Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'folke/zen-mode.nvim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ekalinin/Dockerfile.vim'
Plug 'mattn/vim-gist'
Plug 'chr4/nginx.vim'
Plug 'mattn/webapi-vim'
Plug 'numkil/ag.nvim'
Plug 'roxma/nvim-yarp'
Plug 'wakatime/vim-wakatime'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-surround'


" CTRLP
Plug 'ctrlpvim/ctrlp.vim'
map <D-p> :CtrlP<cr>
map <C-r> :CtrlPBufTag<cr>

" NERDTree
Plug 'scrooloose/nerdtree'
let NERDTreeShowHidden=1
nmap <C-b> :NERDTreeToggle<cr>


" Syntastic
Plug 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers=['']
let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = './node_modules/.bin/eslint'


" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
nmap <C-f> :FZF<cr>
" Tagbar
Plug 'preservim/tagbar'
nmap <F8> :TagbarToggle<CR>

" Gitgutter
Plug 'airblade/vim-gitgutter'
let g:gitgutter_max_signs = 2000
let g:ragtag_global_maps = 1


" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'kevinoid/vim-jsonc'
Plug 'elzr/vim-json'
" vim-jsx (react)
Plug 'maxmellon/vim-jsx-pretty'
let g:jsx_ext_required = 0
" TypeScript
Plug 'HerringtonDarkholme/yats.vim'

" Vim-go
Plug 'fatih/vim-go'
Plug 'rhysd/vim-go-impl'
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
set omnifunc=go#complete#Complete


" UltiSnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
if !exists("g:UltiSnipsJumpForwardTrigger")
    let g:UltiSnipsJumpForwardTrigger = "<tab>"
endif


" Vim-Markdown
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1 "markdown folding

" Lightline
Plug 'itchyny/lightline.vim'
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
	  \   'readonly': 'LightlineReadonly',
	  \   'modified': 'LightlineModified',
      \   'gitbranch': 'LightlineFugitive'
      \ },
	  \ 'separator': { 'left': '', 'right': '' },
	  \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! LightlineReadonly()
    return &readonly ? '' : ''
endfunction
function! LightlineModified()
	return &modifiable && &modified ? '+' : ''
endfunction
function! LightlineFugitive()
    if exists('*FugitiveHead')
        let branch = FugitiveHead()
        return branch !=# '' ? ' '.branch : ''
    endif
    return ''
endfunction


" Rainbow
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" :CocInstall coc-blade-formatter coc-json coc-tailwindcss coc-css coc-discord coc-go coc-html coc-phpactor coc-yaml coc-swagger coc-svg coc-sh coc-psalm coc-phpls coc-phpactor
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" Ale
Plug 'dense-analysis/ale'
let g:ale_linters_explicit = 1
let g:ale_set_balloons = 1
let g:ale_sign_column_always = 1
let g:ale_linters = {
    \'javascript': ['eslint'],
    \ 'html': ['eslint'],
    \ 'css': ['eslint'],
    \ 'json': ['eslint'],
    \ 'typescript': ['eslint'],
    \ 'python': ['pyflakes']
    \}
let g:ale_set_highlights = 0
let g:ale_echo_msg_format = '%linter%: %s'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
    \   '*': ['remove_trailing_lines', 'trim_whitespace'],
    \   'javascript': ['remove_trailing_lines', 'trim_whitespace', 'eslint', 'prettier'],
    \   'typescript': ['remove_trailing_lines', 'trim_whitespace', 'eslint', 'prettier'],
    \ 'json': ['prettier', 'eslint'],
    \ 'css': ['prettier'],
      \   'HTML': ['HTMLHint', 'proselint'],
      \   'go': ['gofmt', 'goimports'],
    \}
command! ALEToggleFixer execute "let g:ale_fix_on_save = get(g:, 'ale_fix_on_save', 0) ? 0 : 1"
nmap <F9> :ALEToggleFixer<CR>

call plug#end()

" base config
let g:python3_host_prog = '/usr/bin/python3'
syntax on
syntax enable
colorscheme monokai
set mouse=a
set number
set relativenumber
set autoindent
set copyindent
set clipboard=unnamedplus
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set shiftround
set tags=tags
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set wildignore+=*/vendor/**         " I don't want to pull up these folders/files when calling CtrlP
set wildignore+=*/public/**         " I don't want to pull up these folders/files when calling CtrlP
set wildignore+=*/node_modules/**   " I don't want to pull up these folders/files when calling CtrlP

let mapleader = ","
let g:mapleader = ","
let g:EasyMotion_leader_key = '<Leader>'


" Mappings
nmap :sp :rightbelow sp<cr>
nmap vs :vsplit<cr>
nmap sp :split<cr>
nmap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>qa :qa<cr>
nmap <leader>q! :q!<cr>
nmap <leader>gca :Git commit -a -S<cr>
nmap <leader>gp :Git push<cr>
nmap <leader>gl :Git pull<cr>
nmap <leader>gst :Git<cr>
nmap <leader>c :!composer install <cr>
nmap <leader>z :ZenMode <cr>
nmap cn :cn<cr>

nnoremap j gj
nnoremap k gk
imap jj <esc>


" Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" Familiar commands for file/symbol browsing
map <D-p> :CtrlP<cr>
map <C-r> :CtrlPBufTag<cr>

" Search
autocmd cursorhold * set nohlsearch
autocmd cursormoved * set hlsearch
set incsearch
highlight Search cterm=underline
command! H let @/="" " Remove search results

" do not continue comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
