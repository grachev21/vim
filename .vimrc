call plug#begin()
" Цвета css
Plug 'https://github.com/ap/vim-css-color'
" Для python
Plug 'https://github.com/davidhalter/jedi-vim'
" Складывание
Plug 'https://github.com/pseewald/vim-anyfold'
" Вертикальные линии
Plug 'https://github.com/Yggdroot/indentLine'
" Работа с файлами
Plug 'https://github.com/kien/ctrlp.vim'
" Работа с текстом
Plug 'https://github.com/easymotion/vim-easymotion'
" Работа с git
" Plug 'https://github.com/airblade/vim-gitgutter'
" Коментирование
Plug 'https://github.com/tpope/vim-commentary'
" Работа с html
Plug 'https://github.com/mattn/emmet-vim'
" Работа с markdown
Plug 'https://github.com/preservim/vim-markdown'
Plug 'https://github.com/godlygeek/tabular'
" Строка состояния
Plug 'https://github.com/vim-airline/vim-airline'
" Улучшает подсветку синтаксиса python
Plug 'https://github.com/vim-python/python-syntax'
" Тема
Plug 'https://github.com/joshdick/onedark.vim'
" Браузер
Plug 'https://github.com/preservim/nerdtree'
" Вкладки
Plug 'https://github.com/bagrat/vim-buffet'
" Color
" Plug 'https://github.com/chriskempson/base16-vim'
"Python
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Translate
Plug 'https://github.com/voldikss/vim-translator'
call plug#end()

set encoding=UTF-8


" VIM-ANYFOLD
filetype plugin indent on " required
syntax on                 " required
autocmd Filetype * AnyFoldActivate               " activate for all filetypes
" or
autocmd Filetype <your-filetype> AnyFoldActivate " activate for a specific filetype
set foldlevel=0  " close all folds
" or
set foldlevel=99 " Open all folds



" INDENTlINE
" Vim
" let g:indentLine_color_term = 239
" GVim
" let g:indentLine_color_gui = '#A4E57E'
" none X terminal
" let g:indentLine_color_tty_light = 7 " (default: 4)
" let g:indentLine_color_dark = 1 " (default: 2)
" Background (Vim, GVim)
" let g:indentLine_bgcolor_term = 202
" let g:indentLine_bgcolor_gui = '#FF5F00'



" CTRLP
let g:ctrlp_working_path_mode = '/home/grachev'




" VIM-EASYMOTION
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)



" PYTHON-SYNTAX
let g:python_highlight_all = 1



" ТЕМА
syntax on
" set termguicolors
" color base16-solarized-dark



" ПРОСТЫЕ НАСТРОЙКМ
set nobackup                                                                    
set noswapfile                                                                  
set nowrap
" включить подсветку синтаксиса
syntax enable
" установить tab равным 4 пробелам
set ts=4
" отступ при переходе на следующую строку при написании кода
set autoindent
" преобразование tab-ов в пробелы
set expandtab
" при использовании команд >> или << сдвигать строки на 4 пробела
set shiftwidth=4
" Отступы и настройка строк
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ignorecase
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" ВКЛАДКИ
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

" Note: Make sure the function is defined before `vim-buffet` is loaded.
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#00FF00 guifg=#000000
endfunction

map <C-l> :bn<CR>
map <C-h> :bp<CR>

" ГОРЯЧИЕ КЛАВИШИ
map <leader>mi :set conceallevel=1 <Enter>
map <leader>mv :set conceallevel=0 <Enter>
map <F2> :e /home/grachev/disk/notes/ <Enter>
inoremap jk <Esc>

" NERDTREE
" NerdTree настройки
" показать NERDTree на F3
map <C-n> :NERDTreeToggle<CR>
"игноррируемые файлы с расширениями
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  



" СКОБКИ
let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']




" PYTHON-MODE SETTINGS
" отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" документация
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
" проверка кода
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
" провека кода после сохранения
let g:pymode_lint_write = 1

" поддержка virtualenv
let g:pymode_virtualenv = 1

" установка breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" отключить autofold по коду
let g:pymode_folding = 0

" возможность запускать код
let g:pymode_run = 0


" Translate
let g:translator_target_lang = 'en'
nmap <silent> <Leader>t <Plug>TranslateR
vmap <silent> <Leader>t <Plug>TranslateRV
