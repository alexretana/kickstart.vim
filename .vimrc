"
" =====================================================================
" =========================== KICKSTART.VIM ===========================
" =====================================================================
"
" Kickstart.vim is a template for *your* Vim configuration.
" You should read every line of the code and understand what it is doing.
" Afterwards, you can configure and tinker with vimrc.
"
" Vim's built-in help, triggered by `:help X` is a very helpful guide for any
" of the Vim's built-in features as well as plugins.
"
" Kickstart.vim is heavily inspired by Kickstart.nvim.
" If you are using Neovim, consider using Kickstart.nvim instead:
" https://github.com/nvim-lua/kickstart.nvim
"
" Feel free to delete this comment once you feel that this config is *yours*.
" I hope you enjoy your Vim journey!
" - Theo
"

" Set <space> as the leader key
" See `:help mapleader`
"  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
let mapleader=' '
let maplocalleader = ' '


" Install package manager
" https://github.com/junegunn/vim-plug/
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" NOTE: Here is where you install your plugins.
call plug#begin()

" Git related plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" Detect tabstop and shiftwidth automatically
Plug 'tpope/vim-sleuth'

" NOTE: This is where your plugins related to LSP can be installed.
"  The configuration is done below. Search for lsp to find it below.

" Install surround
Plug 'tpope/vim-surround'

" Install Delimiter for automatic closing of quotes, parenthesis, ect.
Plug 'Raimondi/delimitMate'

"Install polyglot, a collection of language packs
Plug 'sheerun/vim-polyglot'

" Vim Highlighter, to set Following Highlight
Plug 'azabiong/vim-highlighter'
  
" Enable LSP
Plug 'prabirshrestha/vim-lsp'
" Install language servers and configure them for vim-lsp
Plug 'mattn/vim-lsp-settings'

" Use <Tab> to auto complete
Plug 'ervandew/supertab'

" Useful plugin to show you pending keybinds.
Plug 'liuchengxu/vim-which-key'

" Adds git related signs to the gutter
Plug 'airblade/vim-gitgutter'

" Install VICE colorscheme plugin
Plug 'bcicen/vim-vice'

" Set airline as statusline
Plug 'vim-airline/vim-airline'

" Add indentation guides even on blank lines
Plug 'Yggdroot/indentLine'
" Plug 'preservim/vim-indent-guides'

" "gc" to comment visual regions/lines
Plug 'tpope/vim-commentary'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" NERDTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" Add Go-plugin
Plug 'fatih/vim-go'

call plug#end()


" [[ Setting sensible default options ]]
" These are some of the settings enabled by default in Neovim.
" These are options believed by many Vim users to be essential.
" Find the list of the options using: `:options` and/or `:h option-list`

" switch on file type detection, without syntax highlighting
filetype on
" start using syntax highlighting
syntax on
" automatically set the indent of a new line
set autoindent
" automatically read a file when it was modified outside of Vim
set autoread
" "dark" or "light"; the background color brightness
set background=dark
" specifies what <BS>, CTRL-W, etc. can do in Insert mode
set backspace=indent,eol,start
" do not ring the bell for these reasons
set belloff=all
" include "lastline" to show the last line even if it doesn't fit
" include "uhex" to show unprintable characters as a hex number
set display=lastline
" character encoding used in Vim: "latin1", "utf-8",
set encoding=utf-8
" don't unload a buffer when no longer shown in a window
" (Allow opening other files w/o saving current buffer)
set hidden
" how many command lines are remembered
set history=10000
" highlight all matches for the last used search pattern
set hlsearch
" show match for partly typed search command
set incsearch
" use two spaces after '.' when joining a line
set nojoinspaces
" 0, 1 or 2; when to use a status line for the last window
set laststatus=2
" list of strings used for list mode
set listchars=tab:>\ ,trail:-,nbsp:+
" show cursor position below each window
set ruler
" show (partial) command keys in location given by 'showcmdloc'
set showcmd
" a <Tab> in an indent inserts 'shiftwidth' spaces
"  NOTE: See `:help tabstop` to learn how tabs in Vim work
set smarttab
" many jump commands move the cursor to the first non-blank
set nostartofline
" "useopen" and/or "split"; which window to use when jumping to a buffer
set switchbuf=uselast
" use menu for command line completion
set wildmenu
" specifies how command line completion is done
" set wildoptions=pum,tagfile
" Enable cursor line hightlight
set cursorline

" [[ Settings other options ]]
" NOTE: You can change these options as you wish!

" Make line numbers default
set number

" Enable mouse mode
set mouse=a


" Sync clipboard between OS and Neovim.
"  Remove this option if you want your OS clipboard to remain independent.
"  See `:help 'clipboard'`
" set clipboard=unnamedplus

" Enable break indent
set breakindent

" Save undo history
"  By default, undo files (.file.txt.un~) are saved in the current directory.
"  This makes the file system very messy, so undofile is disabled by default.
"
"  If would like to enable undofile, I recommend you to change undodir:
"  1. Create the undo directory: `:! mkdir -p ~/.local/state/vim/undo`
"  2. Uncomment the following line starting with "set undodir" and save the file
"  3. Source the .vimrc: `:source ~/.vimrc`
"  4. Now undo history will persist between Vim sessions
"
"  NOTE: See `:help undofile` and `:help undodir` for more information
"    You may change the undodir to another directory you prefer
"set undodir=~/.local/state/vim/undo// undofile

" Case-insensitive searching UNLESS \C or capital in search
set ignorecase
set smartcase

" Keep signcolumn on by default
set signcolumn=yes

" Decrease update time
set updatetime=250
set timeoutlen=300

" Set completeopt to have a better completion experience
set completeopt=menuone,noselect

" NOTE: You should make sure your terminal supports this
set termguicolors


" [[ Basic Keymaps ]]

" Keymaps for better default experience
nnoremap <silent> <Space> <Nop>
xnoremap <silent> <Space> <Nop>

" Remap for dealing with word wrap
nnoremap <expr> <silent> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> <silent> j v:count == 0 ? 'gj' : 'j'

" Remap Opening New Tabs and Splits
nnoremap <C-t> :tabnew 
nnoremap <C-s> :vertical botright terminal<CR>
nnoremap <C-i> :botright term<CR>

" Remap Split Resizing Tools
nnoremap <silent> <C-Left> :vertical resize +2<CR>
nnoremap <silent> <C-Right> :vertical resize -2<CR>
nnoremap <silent> <C-Up> :resize -2<CR>
nnoremap <silent> <C-Down> :resize +2<CR>

tnoremap <C-Left>   <C-w>>
tnoremap <C-Right>  <C-w><
tnoremap <C-Up>     <C-w>+
tnoremap <C-Down>   <C-w>-

" [[ Tab Movement Remaped ]]
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

tnoremap <C-j> <C-W>j
tnoremap <C-k> <C-W>k
tnoremap <C-h> <C-W>h
tnoremap <C-l> <C-W>l

" Map Ctrl+c to copy to system clipboard in visual mode
vnoremap <C-c> "+y

" Map Ctrl+v to paste from system clipboard in normal and visual mode
nnoremap <C-v> "+p
vnoremap <C-v> "+p

" Map Ctrl+V to paste from system clipboard (force characterwise) in visual mode
vnoremap <C-V> "+P

" Indent selected lines to the right
vnoremap <Tab> >gv

" Unindent selected lines to the left
vnoremap <S-Tab> <gv

" NERDTree KeyMappings
nnoremap <C-o> :NERDTreeToggle<CR>
nnoremap <C-p> :NERDTreeFind<CR>

" [[ Configure plugins ]]
" Set colorscheme
colorscheme vice
" Characters to render for indentation guide
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"Set default unicode symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.dirty='⚡'

" [[ Configure vim-which-key ]]
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  '<Space>'<CR>

" document key chains
let g:which_key_map =  {}
let g:which_key_map.c = { 'name' : '[C]ode' }
let g:which_key_map.d = { 'name' : '[D]ocument' }
let g:which_key_map.g = { 'name' : '[G]it' }
" See `:help gitgutter-mappings`
let g:which_key_map.h = {
      \ 'name' : 'More git',
      \ 'p' : 'Preview git hunk',
      \}
let g:which_key_map.r = { 'name' : '[R]ename' }
let g:which_key_map.s = { 'name' : '[S]earch' }
let g:which_key_map.w = { 'name' : '[W]orkspace' }


" [[ Configure fzf.vim ]]
" See `:help fzf-vim`

nmap <leader>? :History<CR>
let g:which_key_map['?'] = '[?] Find recently opened files'
nmap <leader><space> :Buffers<CR>
let g:which_key_map[' '] = '[ ] Find existing buffers'
nmap <leader>/ :BLines<CR>
let g:which_key_map['/'] = '[/] Fuzzily search in current buffer'

nmap <leader>gf :GFiles<CR>
let g:which_key_map.g.f = 'Search [G]it [F]iles'
nmap <leader>sf :Files<CR>
let g:which_key_map.s.f = '[S]earch [F]iles'
nmap <leader>sh :Helptags<CR>
let g:which_key_map.s.h = '[S]earch [H]elp'


" [[ Configure completion ]]
" Set Omni Completion
"  See `:help compl-omni` and `:help omnifunc`
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Enter key confirms the current selection when completion is open
inoremap <expr> <CR> pumvisible() ? '<C-y>' : '<CR>'

" <Tab> triggers Omni completion (<C-x><C-o>) in a coding context
let g:SuperTabDefaultCompletionType = "context"

" [[ Configure NERDTree ]]

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Keep NERD tree in its spot
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Persist NERDTree amoungst all tabs
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

" Update split behavior
let g:NERDTreeMapSplit = 'botright'

" [[ Configure LSP ]]
" NOTE: Install new language server using `:LspInstallServer` in the filetype
" you are trying to install LSP for.
" For example, if you want LSP server for C/C++, type
" `:LspInstallServer clangd` in a C/C++ buffer.

" Performance related settings, requires Vim 8.2+
let g:lsp_use_native_client = 1
let g:lsp_semantic_enabled = 0
let g:lsp_format_sync_timeout = 1000

function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif

  " Keymaps
  " Go to previous diagnostic message
  nmap <buffer> [d <plug>(lsp-previous-diagnostic)
  " Go to next diagnostic message
  nmap <buffer> ]d <plug>(lsp-next-diagnostic)

  nmap <buffer> <leader>rn <plug>(lsp-rename)
  let g:which_key_map.r.n = '[R]e[n]ame'
  nmap <buffer> <leader>ca <plug>(lsp-code-action-float)
  let g:which_key_map.c.a = '[C]ode [A]ction'

  " [G]oto [D]efinition
  nmap <buffer> gd <plug>(lsp-definition)
  " [G]oto [R]eferences
  nmap <buffer> gr <plug>(lsp-references)
  " [G]oto [I]mplementation
  nmap <buffer> gI <plug>(lsp-implementation)

  nmap <buffer> <leader>D <plug>(lsp-peek-type-definition)
  let g:which_key_map.D = 'Type [D]efinition'
  nmap <buffer> <leader>ds <plug>(lsp-document-symbol-search)
  let g:which_key_map.d.s = '[D]ocument [S]ymbols'
  nmap <buffer> <leader>ws <plug>(lsp-workspace-symbol-search)
  let g:which_key_map.w.s = '[W]orkspace [S]ymbols'

  " See `:help K` for why this keymap
  " Hover Documentation
  nmap <buffer> K <plug>(lsp-hover)
  " Signature Documentation
  nmap <buffer> <C-k> <plug>(lsp-signature-help)

  " Lesser used LSP functionality
  " [G]oto [D]eclaration
  nmap <buffer> gD <plug>(lsp-declaration)

  " Create a command `:Format` local to the LSP buffer
  command Format LspDocumentFormatSync
endfunction

augroup lsp_install
  au!
  " call s:on_lsp_buffer_enabled only for languages that has the server registered.
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

"Add AutoSave if file opened is in a git repo
autocmd BufEnter * if system('git rev-parse --is-inside-work-tree >/dev/null 2>&1') ==# '0'
  \ | set autowrite
  \ | else
  \ | set noautowrite
  \ | endif

" Go development
autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd FileType go nmap <Leader>r :GoRun<CR>
autocmd FileType go nmap <Leader>b :GoBuild<CR>
let g:go_fmt_command = "goimports"


" The line beneath this is called `modeline`. See `:help modeline`
" vim: ts=2 sts=2 sw=2 et
