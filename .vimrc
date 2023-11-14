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
Plug 'https://github.com/airblade/vim-gitgutter'
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
call plug#end()

set encoding=UTF-8



" Markdown
" let g:vim_markdown_conceal = 1
" let g:vim_markdown_folding_disabled = 1
" let g:vim_markdown_toc_autofit = 1



" vim-anyfold
filetype plugin indent on " required
syntax on                 " required
autocmd Filetype * AnyFoldActivate               " activate for all filetypes
" or
autocmd Filetype <your-filetype> AnyFoldActivate " activate for a specific filetype
set foldlevel=0  " close all folds
" or
set foldlevel=99 " Open all folds



" indentLine
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



" ctrlp
let g:ctrlp_working_path_mode = '/home/grachev'




" vim-easymotion
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



" python-syntax
let g:python_highlight_all = 1



" Тема
syntax on
" colorscheme onedark




" Простые настройкм
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


" Горячие клавиши
map <C-i>  :set conceallevel=1 <Enter>
map <C-v>  :set conceallevel=0 <Enter>
inoremap jk <Esc>
