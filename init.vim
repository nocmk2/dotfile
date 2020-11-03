let mapleader = ","
let maplocalleader = "\\"

command! IpythonRun vsp|te ipython -i %

" 换行tab等特殊字符显示
set list listchars=tab:▸\ ,trail:·,precedes:←,extends:→,eol:¬
set list!
set relativenumber
set number
nnoremap <leader>l :set list!<cr>

au BufRead *.html set filetype=htmlm4
" python comment
vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> -# :s/^#//<cr>:noh<cr>

nnoremap <leader>hi :echo 'hi mk!eee'<cr> 
nnoremap <leader>ev :vsp $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>note :vsp ~/Downloads/CODE/note.md<cr>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

nnoremap <C-p> :<C-u>FZF<CR>
nnoremap <leader><C-i> : IpythonRun<CR>
nnoremap <leader><C-g> :GoRu<CR>

" Rg searching in file 
nnoremap <leader>ff :Rg<CR>

" 在第一列插入顺序数字
vnoremap <leader><C-n> :let i=1 \| '<,'>g/^/ s//\=i/ \| let i+=1

"关闭其他splitwindow nnoremap <C-o> :only<CR>   <C-w>o 

nnoremap <M-h> <c-w>h nnoremap <M-j> <c-w>j
nnoremap <M-k> <c-w>k
nnoremap <M-l> <c-w>l
if has('nvim')
tnoremap <M-h> <c-\><c-n><c-w>h
tnoremap <M-j> <c-\><c-n><c-w>j
tnoremap <M-k> <c-\><c-n><c-w>k
tnoremap <M-l> <c-\><c-n><c-w>l
endif


tnoremap <Esc> <C-\><C-n>
if has('nvim')
tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>
endif

if &buftype == "nofile"
  setlocal number
endif

onoremap in( :<c-u>normal! f(vi(<cr>

set shell=ZSH
set splitright
" set cursorcolumn


iabbrev waht what
iabbrev sf select * from
iabbrev gb group by 
augroup test_group
	autocmd!
	autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
augroup END


" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" auto comp
" Plug 'ncm2/ncm2'

"Plug 'roxma/nvim-yarp'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-tmux'
"Plug 'ncm2/ncm2-path'
"Plug 'ncm2/ncm2-jedi'
"Plug 'ncm2/ncm2-github'
"Plug 'ncm2/ncm2-racer'
"Plug 'ncm2/ncm2-pyclang'
"Plug 'ncm2/ncm2-vim'
"Plug 'roxma/vim-hug-neovim-rpc'
"Plug 'ncm2/ncm2-ultisnips'
"Plug 'maralla/completor.vim'
"Plug 'maralla/completor-neosnippet'
"Plug 'lifepillar/vim-mucomplete'
Plug 'axiaoxin/vim-json-line-format'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim-unimpaired
Plug 'tpope/vim-unimpaired'

" git 
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'NLKNguyen/papercolor-theme'

" python  
Plug 'ambv/black'


" for golang
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'AndrewRadev/splitjoin.vim'
" Plug 'w0rp/ale'
" Plug 'sebdah/vim-delve'
Plug 'buoto/gotests-vim'
Plug 'SirVer/ultisnips'
Plug 'Shougo/echodoc.vim'
Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

" for databas e
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'kristijanhusak/vim-dadbod-completion'

" for markdown need Typora installed
Plug 'wookayin/vim-typora'


" fzf ag for Searching file
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', {'do': {-> fzf#install() }}



call plug#end()

" for python
set shiftwidth=4 "这个量是每行的缩进深度，一般设置成和tabstop一样的宽度"
set tabstop=4 "设置Tab显示的宽度，Python建议设置成4"
let g:go_fmt_command = "goimports"
"刚才说过Tab和空格是不同的，虽然你可以在自己的代码中全部使用Tab"
""但是如果你将你的代码分享给使用空格的朋友，就会带来很多麻烦"
"那么设置下面这行就可以将Tab自动展开成为空格"
"set expandtab
""如果只想在Python文件中将Tab展开成空格，就改换成下面这句"
autocmd FileType python set expandtab
" 保存的时候自动格式化json文件
" autocmd FileType json autocmd BufWritePre <buffer> %!python -m json.tool

"上面的一些配置已经可以让你避免编译出现错误的问题了"
"
""不过下面还有一些配置是建议同学们根据需要加上的"
set smartindent "智能缩进"
set cindent "C语言风格缩进"
set autoindent "自动缩进"

set background=light
colorscheme PaperColor 
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
":set termguicolors
let g:airline_powerline_fonts = 1


" Indent Python in the Google way.

" setlocal indentexpr=GetGooglePythonIndent(v:lnum)

let s:maxoff = 50 " maximum number of lines to look backwards.

let pyindent_nested_paren="&sw*2"
let pyindent_open_paren="&sw*2"

" run :GoBuild or :GoTestCompile based on the go file
" 根据文件名判断是测试文件还是go文件运行编译命令
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
" go hightlight in vim-go
let g:go_search_bin_path_first = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1
let g:go_highlight_function_calls = 1
let g:go_metalinter_autosave = 1
let g:go_metalinter_deadline = "5s"
" let g:go_auto_type_info = 1
"

" Shougo/echodoc.vim
" Or, you could use neovim's virtual virtual text feature.
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'virtual'

autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" for coc.nvim
"
" TextEdit might fail if hidden is not set.
set hidden 

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
" nmap <silent> gd <Plug>(coc-definition)
function! s:GoToDefinition()
  if CocAction('jumpDefinition')
    return v:true
  endif

  let ret = execute("silent! normal \<C-]>")
  if ret =~ "Error" || ret =~ "错误"
    call searchdecl(expand('<cword>'))
  endif
endfunction
nmap <silent> gd :call <SID>GoToDefinition()<CR>
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)





" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.5.0 or vim >= 8.2.0750
nnoremap <expr><C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <expr><C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <expr><C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<Right>"
inoremap <expr><C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<Left>"

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" DBUI setting save location
let g:db_ui_save_location = '~/Downloads/code/tapdb_credentials/DBUI'

