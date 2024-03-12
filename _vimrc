if has("unix")
    set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
elseif has('mac')
    set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
elseif has('win32') || has('win64')
    set runtimepath+=$HOME\dotfiles\.cache\dein\repos\github.com\Shougo\dein.vim
endif

if dein#load_state('~/.cache/dein')
if has("unix")
    call dein#begin(expand('~/.cache/dein'))
elseif has('mac')
    call dein#begin(expand('~/.cache/dein'))
elseif has('win32') || has('win64')
    call dein#begin(expand('$HOME\dotfiles\.cache\dein'))
endif

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimshell')
call dein#add('tyru/caw.vim.git')
call dein#add('tpope/vim-fugitive')
call dein#add('MattesGroeger/vim-bookmarks')
call dein#add('itchyny/lightline.vim')
call dein#add('LeafCage/foldCC')
call dein#add('andymass/vim-matchup')
call dein#add('machakann/vim-highlightedyank')
call dein#add('nathanaelkane/vim-indent-guides')
"   call dein#add('ryanoasis/vim-devicons')
call dein#add('cohama/lexima.vim')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('kristijanhusak/vim-hybrid-material')
"   call dein#add('Shougo/neosnippet')
"   call dein#add('Shougo/neosnippet-snippets')
call dein#add('easymotion/vim-easymotion')
call dein#add('tpope/vim-surround')
call dein#add('vim-scripts/gtags.vim')
" if has('mac')
call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
" endif

call dein#end()
call dein#save_state()
endif

filetype plugin indent on
if dein#check_install()
    call dein#install()
endif

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

let g:EasyMotion_do_mapping = 0

" fzf settings
let $FZF_DEFAULT_OPTS="--layout=reverse"
" let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }
let g:fzf_buffers_jump = 1

syntax enable
colorscheme hybrid_material
set t_Co=256

if (has('termguicolors'))
    set termguicolors
endif

"文字コードをUFT-8に設定
set encoding=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
if has('mac')
    set cursorcolumn
endif
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" エラーメッセージの表示時にビープを鳴らさない
set noerrorbells
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest

inoremap <silent> jj <ESC>:w<CR>
inoremap <silent> jk <ESC>
inoremap <C-v> <C-r>+
inoremap <C-h> <Left>
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>
inoremap <C-l> <Right>
inoremap <C-d> <Del>
inoremap <C-s> <C-v>

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap <C-]> g<C-]>
nnoremap <C-h> g<S-t>
nnoremap <C-l> gt
nnoremap <S-j> 5gj
nnoremap <S-k> 5gk
nnoremap <C-u> <S-j>
nnoremap n nzz
nnoremap <S-n> <S-n>zz
nnoremap <S-y> y$
nnoremap p ]p
nnoremap <S-p> ]<S-p>
nnoremap <S-g> <S-g>zz
nnoremap <CR> <CR>zz
nnoremap <BS> kzz
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>

nnoremap <Space>h <C-w>h
nnoremap <Space>j <C-w>j
nnoremap <Space>k <C-w>k
nnoremap <Space>l <C-w>l
nnoremap <Space><S-h> <C-w><S-h>
nnoremap <Space><S-j> <C-w><S-j>
nnoremap <Space><S-k> <C-w><S-k>
nnoremap <Space><S-l> <C-w><S-l>
nnoremap <Space>. 5<C-w>>
nnoremap <Space>, 5<C-w><
nnoremap <Space>- 5<C-w>-
nnoremap <Space>= 5<C-w>+
nnoremap <Space>c :tab sp<CR>
nnoremap <Space>v :vs<CR>
nnoremap <Space>% :let @* = expand("%:p")<CR>
nnoremap <Space>o :only<CR>
nnoremap <Space>q :q<CR>
nnoremap <Space>w :w<CR>
" nnoremap <Space>g :tab sp<CR>:vimgrep /<C-r><C-w>/ **
nnoremap <Space>a :grep /s /I <C-r><C-w> ./*.c ./*.h<S-Left><S-Left><Left>
nnoremap <Space>g :vs<CR>:vimgrep /<C-r><C-w>/ **/*.*
nnoremap <Space>e :%s;\<<C-r><C-w>\>;gc<Left><Left><Left>;
nnoremap <Space>i :vimgrep // **<Left><Left><Left><Left>
nnoremap <Space>t :vert term<CR>
nnoremap <Space>s :sp<CR>
nnoremap <Space>x :q<CR>
nnoremap <Space>d :bd<CR>
nnoremap <Space>n :cd %:h<CR>:tab sp<CR>:e .<CR>:-tabmove<CR>
nnoremap <Space>p "0p
nnoremap <Space><S-p> "0<S-p>
nnoremap <Space>y :set nowrap<CR>
" nnoremap <Space>' <C-]>
" nnoremap <Space>; <C-t>

" nmap <Space>s <Plug>(easymotion-s2)
map <Space>m <Plug>(easymotion-w)
map <Space>u <Plug>(easymotion-b)

map <Space>; :GtagsCursor<CR>
map <Space>' :Gtags -f %<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>

if has('mac')
nnoremap <Space>r :vert term<CR>cd ~/.dotfiles/vimrc<CR>vim _vimrc<CR>
elseif has('win32') || has('win64')
nnoremap <Space>r :vert term<CR>cd $HOME\dotfiles\vimrc<CR>vim _vimrc<CR>
endif
" cnoremap < expr > %% getcmdtype() == ':' ? expand('%: h').'/' : '%%'

" Corne Cherry用
" nnoremap <F2> :w<CR>
" nnoremap <F3> :bd<CR>
" nnoremap <F4> <C-]>
" nnoremap <F5> :vimgrep /<C-r><C-w>/ **/*.*
" nnoremap <F6> :sp<CR>
" nnoremap <F7> :q<CR>
" nnoremap <F8> :vs<CR>
" nnoremap <F9> "0<S-p>
" nnoremap <F10> "0p
" nnoremap <F11> 5<C-w><
" nnoremap <S-F11> 5<C-w>-
" nnoremap <F12> 5<C-w>>
" nnoremap <S-F12> 5<C-w>+
" nnoremap <Left> <C-w>h
" nnoremap <Down> <C-w>j
" nnoremap <Up> <C-w>k
" nnoremap <Right> <C-w>l
" nnoremap <S-Left> <C-w><S-h>
" nnoremap <S-Down> <C-w><S-j>
" nnoremap <S-Up> <C-w><S-k>
" nnoremap <S-Right> <C-w><S-l>
" vnoremap <F5> y:tab sp<CR>:vimgrep /<C-r>+/ **/*.*
" nmap <Plug>(easymotion-s2)
" map <PageDown> <Plug>(easymotion-w)
" map <PageUp> <Plug>(easymotion-b)

" fzf
nnoremap <Space>f :Files<CR>
" nnoremap <Space>g :GFiles<CR>
" nnoremap <Space>G :GFiles?<CR>
nnoremap <Space>b :Buffers<CR>
" nnoremap <Space>h :History<CR>
nnoremap <Space>z :Rg<CR>
" nnoremap <silent> <Space>' :call fzf#vim#tags(expand('<cword>'))<CR>

vnoremap <S-j> 5gj
vnoremap <S-k> 5gk
vnoremap <Space>e :s;\<<C-r>+\>;gc<Left><Left><Left>;
vnoremap <Space>g y:tab sp<CR>:vimgrep /<C-r>+/ **

" nnoremap <S-l> $
" onoremap <S-l> $
" vnoremap <S-l> $h
" noremap <S-h> ^
vnoremap $ $h
noremap <C-j> <C-d>zz
noremap <C-k> <C-u>zz

cnoremap <C-v> <C-r>+
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>
cnoremap <C-f> <S-Right>
cnoremap <C-b> <S-Left>
cnoremap <C-d> <Del>
cnoremap <C-s> <C-v>

onoremap ( i(
onoremap " i"
onoremap ' i'
onoremap ` i`
onoremap [ i[
onoremap { i{

" 対応する括弧やブレースを表示
set showmatch matchtime=1
" インデント方法の変更
set cinoptions+=:0
" メッセージ表示欄を2行確保
set cmdheight=2
" ステータス行を常に表示
set laststatus=2
" ウィンドウの右下にまだ実行していない入力中のコマンドを表示
set showcmd
" 省略されずに表示
set display=lastline
" コマンドラインの履歴を10000件保存する
set history=10000
" ツールバーを非表示にする
set guioptions-=T
" メニューバーを非表示にする
set guioptions-=m
" 右スクロールバーを非表示
set guioptions+=R
" 検索にマッチした行以外を折りたたむ(フォールドする)機能
" set nofoldenable
" タイトルを表示
set title
" 行をまたいで移動
set whichwrap=b,s,h,l,<,>,[,],~

set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4

" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch

set splitright
set autoindent
set backspace=indent,eol,start
set ruler

" ls -laのような表示になります
let g:netrw_liststyle=1
" サイズを(K,M,G)で表示
let g:netrw_sizestyle="H"
" 日付フォーマットを yyyy/mm/dd(曜日) hh:mm:ss で表示
let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"
" ヘッダを非表示にする
let g:netrw_banner=0
" プレビューウィンドウを垂直分割で表示する
let g:netrw_preview=1
" 左右分割を右側に開く
let g:netrw_altv = 1
" 分割で開いたときに80%のサイズで開く
let g:netrw_winsize = 80
" 表示形式をTreeViewに変更
let g:netrw_liststyle = 3
" Enterで、タブ表示
let g:netrw_browse_split = 3

" grepの時に、|cw をつける
autocmd QuickFixCmdPost *grep* cwindow
" クリップボードを使用
set clipboard=unnamed
" yでコピーした時にクリップボードに入る
set guioptions+=a
" vim の矩形選択で文字が無くても右へ進める
set virtualedit=block
" 全角文字専用の設定
set ambiwidth=double
" wildmenuオプションを有効(vimバーからファイルを選択できる)
set wildmenu

set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis,iso-2022-jp,euc-jp,cp932

set tags=.tags;$HOME
set tags+=./tags;

function! s:execute_ctags() abort
" 探すタグファイル名
let tag_name = '.tags'
" ディレクトリを遡り、タグファイルを探し、パス取得
let tags_path = findfile(tag_name, '.;')
" タグファイルパスが見つからなかった場合
if tags_path ==# ''
    return
endif

" タグファイルのディレクトリパスを取得
" `:p:h`の部分は、:h filename-modifiersで確認
let tags_dirpath = fnamemodify(tags_path, ':p:h')
" 見つかったタグファイルのディレクトリに移動して、ctagsをバックグラウンド実行（エラー出力破棄）
execute 'silent !cd' tags_dirpath '&& ctags -R -f' tag_name '2> /dev/null &'
endfunction

augroup ctags
autocmd!
autocmd BufWritePost * call s:execute_ctags()
augroup END

" auto reload .vimrc
augroup source-vimrc
autocmd!
autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

" auto comment off
augroup auto_comment_off
autocmd!
autocmd BufEnter * setlocal formatoptions-=r
autocmd BufEnter * setlocal formatoptions-=o
augroup END

" 編集箇所のカーソルを記憶
if has("autocmd")
augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                \   exe "normal! g'\"" |
                \ endif
augroup END
endif

if has('persistent_undo')
if has("unix")
    let undo_path = expand('~/.vim/undo')
elseif has('mac')
    let undo_path = expand('~/.vim/undo')
elseif has('win32') || has('win64')
    let undo_path = expand('$HOME\vimfiles\.vim\undo')
endif
exe 'set undodir=' .. undo_path
set undofile
endif

"" vim grep
""" ignored files in vimgrep
let s:ignore_list  = ',.git/**,.svn/**,obj/**'
let s:ignore_list .= ',tags,GTAGS,GRTAGS,GPATH'
let s:ignore_list .= ',*.o,*.obj,*.exe,*.dll,*.bin,*.so,*.a,*.out,*.jar,*.pak'
let s:ignore_list .= ',*.zip,*gz,*.xz,*.bz2,*.7z,*.lha,*.lzh,*.deb,*.rpm,*.iso'
let s:ignore_list .= ',*.pdf,*.png,*.jp*,*.gif,*.bmp,*.mp*'
let s:ignore_list .= ',*.mtpj,*.rcpe,*.mtud,*.lib,*.dr,*.lmf'

if exists('+wildignore')
autocmd QuickFixCmdPre  * execute 'setlocal wildignore+=' . s:ignore_list
autocmd QuickFixCmdPost * execute 'setlocal wildignore-=' . s:ignore_list
endif

if &term =~ "xterm"
let &t_SI .= "\e[?2004h"
let &t_EI .= "\e[?2004l"
let &pastetoggle = "\e[201~"

function XTermPasteBegin(ret)
    set paste
    return a:ret
endfunction
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

set completeopt=menuone

for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
exec "imap " . k . " " . k . "<C-N><C-P>"
endfor

autocmd BufRead,BufNewFile *.nc set filetype=c

augroup netrw_mapping
autocmd!
autocmd filetype netrw call NetrwMapping()
augroup END
function! NetrwMapping()
noremap <buffer> <C-l> gt
endfunction


