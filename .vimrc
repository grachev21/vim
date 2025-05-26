" === Основные настройки ===
set nocompatible            " Отключение совместимости с Vi
filetype plugin indent on   " Включение автоопределения типов файлов, плагинов и отступов
syntax enable               " Включение подсветки синтаксиса
set encoding=utf-8          " Установка кодировки UTF-8
set tabstop=2               " Установка размера табуляции в 2 пробела (для JS/HTML/CSS)
set shiftwidth=2            " Установка размера сдвига в 2 пробела
set softtabstop=2           " Установка размера "мягких" табов в 2 пробела
set expandtab               " Замена табов на пробелы
set autoindent              " Включение автоотступов
set smartindent             " Включение умных отступов
set number                  " Включение нумерации строк
set relativenumber          " Включение относительной нумерации строк
" Включение поддержки сворачивания кода
set foldenable
set foldmethod=syntax  " Использование синтаксиса для сворачивания кода
set foldlevelstart=99  " Не сворачивать код автоматически при открытии файла
inoremap jk <Esc>            " Сочетание клавиш jk для выхода из режима вставки
set cursorline              " Подсветка текущей строки
set showmatch               " Подсветка парных скобок
set ignorecase              " Игнорирование регистра при поиске
set smartcase               " Умный поиск (если есть заглавные буквы, поиск становится регистрозависимым)
set incsearch               " Поиск по мере ввода
set hlsearch                " Подсветка результатов поиска
set mouse=a                 " Включение поддержки мыши
set clipboard=unnamedplus   " Использование системного буфера обмена (требует +clipboard)
set splitright              " Открытие новых окон справа
set splitbelow              " Открытие новых окон снизу
set hidden                  " Переключение между буферами без сохранения
set nowrap                  " Отключение переноса строк
set scrolloff=5             " Прокрутка за курсором
set termguicolors           " Поддержка 24-битных цветов (для Neovim)

" === Плагины (используем vim-plug) ===
call plug#begin('~/.vim/plugged')

" Автодополнение (LSP + snippets)
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " LSP-клиент
Plug 'honza/vim-snippets'                       " Сниппеты

" Языковая поддержка
Plug 'pangloss/vim-javascript'                  " Поддержка JavaScript
Plug 'maxmellon/vim-jsx-pretty'                 " Поддержка React JSX
Plug 'leafgarland/typescript-vim'               " Поддержка TypeScript
Plug 'posva/vim-vue'                            " Поддержка Vue.js
Plug 'othree/html5.vim'                         " Поддержка HTML5
Plug 'hail2u/vim-css3-syntax'                   " Поддержка CSS3
Plug 'ap/vim-css-color'                         " Подсветка цветов в CSS
Plug 'python-mode/python-mode', {'for': 'python'} " Поддержка Python
Plug 'tweekmonster/django-plus.vim'             " Поддержка Django
Plug 'plasticboy/vim-markdown'                  " Поддержка Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }  " Превью Markdown
Plug 'ctrlpvim/ctrlp.vim'                      " Поиск файлов
Plug 'styled-components/vim-styled-components', { 'branch': 'main' } " Поддержка Styled Components
Plug 'voldikss/vim-translator'                  " Переводчик
Plug 'MattesGroeger/vim-bookmarks'              " Закладки

" Инструменты разработчика
Plug 'preservim/nerdtree'                      " Файловый менеджер
Plug 'Xuyuanp/nerdtree-git-plugin'             " Git-статус в NERDTree
Plug 'tpope/vim-commentary'                    " Комментирование кода
Plug 'tpope/vim-surround'                      " Обрамление текста
Plug 'tpope/vim-fugitive'                      " Git-интеграция
Plug 'airblade/vim-gitgutter'                  " Изменения Git в гутере
Plug 'vim-airline/vim-airline'                 " Статусная строка
Plug 'vim-airline/vim-airline-themes'          " Темы для airline
Plug 'ryanoasis/vim-devicons'                  " Иконки файлов (требует Nerd Fonts)
Plug 'easymotion/vim-easymotion'               " Быстрое перемещение по файлу

" Цветовые схемы
Plug 'morhetz/gruvbox'                         " Цветовая схема Gruvbox
Plug 'joshdick/onedark.vim'                    " Цветовая схема One Dark
Plug 'dracula/vim', { 'as': 'dracula' }       " Цветовая схема Dracula

call plug#end()

" === Настройка цветовой схемы ===
colorscheme gruvbox
set background=dark

" === Настройка Coc.nvim (LSP) ===
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-python',
  \ 'coc-markdownlint',
  \ 'coc-snippets',
  \ 'coc-prettier',
  \ 'coc-eslint'
  \ ]

" Автодополнение по Tab
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Enter для подтверждения автодополнения
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" === Настройки языков ===
" JavaScript / React
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0  " Разрешить JSX в .js файлах

" Python
let g:pymode_python = 'python3'
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_syntax = 1
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1

" Markdown
let g:vim_markdown_folding_disabled = 1
let g:mkdp_browser = 'firefox'  " Превью в Firefox

" === Горячие клавиши ===
nnoremap <C-n> :NERDTreeToggle<CR>       " Открыть/закрыть NERDTree
nnoremap <leader>ff :Files<CR>          " Поиск файлов (требует fzf)
nnoremap <leader>gd :CocDiagnostics<CR> " Диагностика LSP
nnoremap <silent> K :call ShowDocumentation()<CR>
nnoremap <leader>rn :CocRename<CR>      " Переименование (LSP)
nnoremap <leader>fm :CocCommand prettier.formatFile<CR> " Форматирование

let g:coc_enable_hover = 1
let g:coc_disable_transparent_cursor = 1  " Фикс для некоторых терминалов
autocmd CursorHold * silent call CocActionAsync('highlight')  " Поддержка подсветки
let g:coc_hover_delay = 500  " В миллисекундах

" === Дополнительно ===
" Автоформатирование при сохранении
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.html,*.css,*.json,*.py,*.md :call CocAction('format')

" Автозакрытие тегов HTML/JSX
let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.tsx'

" === CTRLP ===
" Включает кеширование для ускорения работы
let g:ctrlp_cache_dir = '~/.cache/ctrlp'

" Игнорировать файлы из .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Поиск по имени файла (а не по пути)
let g:ctrlp_by_filename = 1

" Клавиши для управления
nmap <C-p> :CtrlP<CR>       " Открыть поиск по файлам
nmap <C-b> :CtrlPBuffer<CR> " Поиск по открытым буферам
nmap <C-m> :CtrlPMRU<CR>    " Поиск по недавним файлам

" === vim-translator ===
" Translate
let g:translator_target_lang = 'en'
nmap <silent> <Leader>t <Plug>TranslateR
vmap <silent> <Leader>t <Plug>TranslateRV

" === vim-bookmarks ===
" Включить значки закладок на полях
let g:bookmark_sign = '⚑'
let g:bookmark_highlight_lines = 1

" Автосохранение закладок
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1

" Свои маппинги
nmap <Leader>mm <Plug>BookmarkToggle
nmap <Leader>mi <Plug>BookmarkAnnotate
nmap <Leader>ma <Plug>BookmarkShowAll

" === Настройки Coc.nvim ===
set encoding=utf-8
set nobackup
set nowritebackup

set updatetime=300

set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() :
                              \ "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent><nowait> [g <Plug>(coc-diagnostic-prev)
nmap <silent><nowait> ]g <Plug>(coc-diagnostic-next)

nmap <silent><nowait> gd <Plug>(coc-definition)
nmap <silent><nowait> gy <Plug>(coc-type-definition)
nmap <silent><nowait> gi <Plug>(coc-implementation)
nmap <silent><nowait> gr <Plug>(coc-references)

nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <leader>rn <Plug>(coc-rename)

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
augroup end

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nmap <leader>ac  <Plug>(coc-codeaction-cursor)
nmap <leader>as  <Plug>(coc-codeaction-source)
nmap <leader>qf  <Plug>(coc-fix-current)

nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

nmap <leader>cl  <Plug>(coc-codelens-action)

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

command! -nargs=0 Format :call CocActionAsync('format')

command! -nargs=? Fold :call     CocAction('fold', <f-args>)

command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
