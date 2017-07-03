execute pathogen#infect()

" General
set number
set linebreak
set showbreak=+++
set textwidth=150
set showmatch
set visualbell
set hlsearch
set smartcase
set gdefault
set ignorecase
set expandtab
set shiftwidth=2
set smartindent
set softtabstop=2
set autochdir
set undolevels=1000
set backspace=indent,eol,start

" Theme
set background=dark
colorscheme solarized

" Airline
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts=1

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Functions
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

" Shortcuts
map <C-\> :NERDTreeToggle<CR>
map <S-l> :tabn<CR>
map <S-h> :tabp<CR>
map <S-k> :tabnew<CR>
map <F2> :!mix test<CR>

" Triggers
autocmd BufWritePre * :call TrimWhiteSpace()

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_wq=0
let g:syntastic_elixir_checkers=['elixir']
let g:syntastic_enable_elixir_checker=1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
