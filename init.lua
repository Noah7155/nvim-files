vim.cmd[[" general
" set clipboard+=unnamedplus
set autoread nocursorcolumn nocursorline encoding=utf-8 expandtab fillchars=eob:\ ,vert:\| inccommand=split mouse=a number shiftwidth=4 tabstop=4 wildmode=longest,full lazyredraw
let mapleader = ","
" html skeleton
" interactive shell
" set shellcmdflag=-ic
inoremap <C-u> <ESC>:UnicodeSearch i

call plug#begin('~/.config/nvim/plugged')
" Make sure you use single quotes
Plug 'stevearc/vim-arduino'
Plug 'luochen1990/rainbow'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'edKotinsky/Arduino.nvim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sainnhe/everforest'
Plug 'sainnhe/sonokai'
Plug 'ollykel/v-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
Plug 'powerline/powerline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lambdalisue/suda.vim'
Plug 'mhinz/vim-startify'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'glepnir/dashboard-nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'liuchengxu/vim-which-key'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'ackyshake/Spacegray.vim'
Plug 'chrisbra/unicode.vim'
Plug 'mattn/emmet-vim'
Plug 'GustavoPrietoP/doom-themes.nvim'
Plug 'joshdick/onedark.vim'
Plug 'nokobear/vim-colorscheme-edit'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'unblevable/quick-scope'
Plug 'sheerun/vim-polyglot'
Plug 'anuvyklack/pretty-fold.nvim'
"Plug 'prettier/vim-prettier', { 'do': 'npm install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
" autopep8 needed
Plug 'tell-k/vim-autopep8', { 'for': ['python'] }
Plug 'rust-lang/rust.vim'
" Always at the end
Plug 'ryanoasis/vim-devicons'
" Initialize plugin system
call plug#end()

"setlocal foldmethod=manual

"set nofoldenable

"set foldlevel=99

":set foldmethod=manual
nnoremap <C-f> zfa}
nnoremap <C-u> za
nnoremap <F6> :NERDTreeToggle<CR>
nnoremap <F5> :UndotreeToggle<CR>

" colorscheme
set termguicolors
hi Folded guibg=#010101
let g:everforest_background='hard'
" Default value is "normal", Setting this option to "high" or "low" does use the
" same Solarized palette but simply shifts some values up or down in order to expand or compress the tonal range displayed.
"let g:neosolarized_contrast = "normal"
" Special characters such as trailing whitespace, tabs, newlines, when displayed
" using ":set list" can be set to one of three levels depending on your needs.
" Default value is "normal". Provide "high" and "low" options.
"let g:neosolarized_visibility = "normal"
" I make vertSplitBar a transparent background color. If you like the origin
" solarized vertSplitBar style more, set this value to 0.
"let g:neosolarized_vertSplitBgTrans = 1
" If you wish to enable/disable NeoSolarized from displaying bold, underlined
" or italicized" typefaces, simply assign 1 or 0 to the appropriate variable.
" Default values:
"let g:neosolarized_bold = 1
"let g:neosolarized_underline = 1
"let g:neosolarized_italic = 1
" Used to enable/disable "bold as bright" in Neovim terminal. If colors of bold
" text output by commands like `ls` aren't what you expect, you might want to
" try disabling this option. Default value:
"let g:neosolarized_termBoldAsBright = 0
let g:catppuccin_flavour = "mocha"
set background=dark
colorscheme everforest 
filetype plugin on
" transparency
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi CursorLineNr guibg=NONE guifg=NONE

" highlight Comment cterm=italic gui=italic

"let g:startify_custom_header = startify#center([
"            \' _____  ____  _    ______  ____  _   _ _____ _    _    _   _ _____ ',
"            \'|  __ \|    \| \  / ____/ / __ \| \ | | ____| |  | \  | \_/ | ____|',
"            \'| |||| | ||| |  \/ /   __| |||| |  \| | ____| |  |  \ |     | |___ ',
"            \'| |||| |   _/| \ \ \  |_ | |||| | \ | | |   | |  | \ \| | | | ____|',
"            \'| |||| | \ \ | |\ \ \__| | |||| | |\  | |   | |__| |\ \ | | | |___ ',
"            \'|_____/|_|\_\|_| \_\____/ \____/|_| \_|_|   |____|_| \_\|_|_|_____|'
"            \])
"
let g:startify_custom_header = startify#center([
			\'⠀⢀⢔⣷⣿⣧⡣⡀⠀⠀⠀⠀⢸⢸⣷⣕⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\'⢔⣵⣿⣿⣿⣿⣷⡕⡀⠀⠀⠀⢸⢸⣿⣿⣷⣕⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣶⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\'⣿⣿⣿⣿⣿⣿⣿⣿⣎⢆⠀⠀⢸⢸⣿⣿⣿⣿⣷⢱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⠿⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡣⡀⢸⢸⣿⣿⣿⣿⣿⢸⠀⠀⠀⠀⣶⣢⣴⠶⠿⢶⣦⡀⠀⠀⣠⣶⠶⠿⠶⣦⡀⠀⠀⣠⣶⠶⠿⠶⣶⣔⠸⣿⣿⣧⠀⠀⠠⢰⣿⣿⢏⣿⣿⣿⠀⣿⣿⣷⣾⣿⣿⣷⣤⣾⣿⣿⣿⣷⣆',
			\'⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣷⣕⣼⢸⣿⣿⣿⣿⣿⢸⠀⠀⠀⠀⣿⡏⠀⠈⠉⢡⢹⣷⠀⣾⡟⠄⠥⠤⠍⠮⣿⡌⣾⡟⡑⠀⠉⠀⠊⢿⣧⢹⣿⣿⡆⢄⢠⣿⣿⡟⢸⣿⣿⣿⠀⣿⣿⣿⠉⠰⢹⣿⣿⡟⡅⠈⢻⣿⣿',
			\'⣿⣿⣿⣿⣿⢨⢿⣿⣿⣿⣿⣿⣮⢸⣿⣿⣿⣿⣿⢸⠀⠀⠀⠀⣿⡇⠀⠀⠀⢸⢸⣿⠀⣿⡛⠛⠛⠛⠛⠛⠛⢣⣿⡇⠀⠀⠀⠀⠘⢸⣿⢠⢻⣿⣿⡄⣾⣿⡟⠐⢸⣿⣿⣿⠀⣿⣿⣿⠀⠀⢸⣿⣿⡇⡇⠀⢸⣿⣿',
			\'⣿⣿⣿⣿⣿⠀⠑⡹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⠀⠀⠀⠀⣿⡇⠀⠀⠀⢸⢸⣿⢀⢿⣇⢂⠀⠀⠀⠀⠀⠀⣿⣇⢆⠀⠀⠀⡈⣸⡿⠐⠂⢿⣿⣿⣿⡿⠡⠀⢸⣿⣿⣿⠀⣿⣿⣿⠀⠀⢸⣿⣿⡇⡇⠀⢸⣿⣿',
			\'⣿⣿⣿⣿⣿⠀⠀⠘⢜⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⠀⠀⠀⠀⣿⡇⠀⠀⠀⠸⢸⣿⠈⠈⠻⢷⣬⣭⣥⣶⠿⠂⠈⠻⣶⣥⣤⣬⡾⠟⠁⠀⠀⠈⣿⣿⣿⠃⠁⠀⢸⣿⣿⣿⠀⣿⣿⣿⠀⠀⢸⣿⣿⡇⠇⠀⢸⣿⣿',
			\'⣿⣿⣿⣿⣿⠀⠀⠀⠀⠪⢻⣿⣿⣿⣿⣿⣿⣿⣿⠸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\'⠊⠻⣿⣿⣿⠀⠀⠀⠀⠀⠑⡽⣿⣿⣿⣿⡿⡫⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\'⠀⠀⠈⠻⣿⠀⠀⠀⠀⠀⠀⠈⢚⢿⡿⡫⠊⠀                                                             ',
            \])                                                                                                                              
"let g:startify_custom_header = startify#center([
" \ '                                        ▟▙            ',
" \ '                                        ▝▘            ',
" \ '██▃▅▇█▆▖  ▗▟████▙▖   ▄████▄   ██▄  ▄██  ██  ▗▟█▆▄▄▆█▙▖',
" \ '██▛▔ ▝██  ██▄▄▄▄██  ██▛▔▔▜██  ▝██  ██▘  ██  ██▛▜██▛▜██',
" \ '██    ██  ██▀▀▀▀▀▘  ██▖  ▗██   ▜█▙▟█▛   ██  ██  ██  ██',
" \ '██    ██  ▜█▙▄▄▄▟▊  ▀██▙▟██▀   ▝████▘   ██  ██  ██  ██',
" \ '▀▀    ▀▀   ▝▀▀▀▀▀     ▀▀▀▀       ▀▀     ▀▀  ▀▀  ▀▀  ▀▀',
" \ '',
" \])

" let startify_custom_header = system('ascii-image-converter ~/Downloads/logo@2x.png --complex --color')
" let g:startify_custom_header = startify#center(startify#pad(startify#fortune#cowsay()))
" keybindings
nmap <silent> <leader>q :q<CR>
nmap <silent> <leader>w :w<CR>
" Fix Y behaviour
nmap Y y$
"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>
" case insensitive
nmap <leader>i :set ic!<CR>:set ic?<CR>
" spell checker
nmap <silent> <leader>s :setlocal spell! spelllang=en_us<CR>
" buffer next/prev/delete
nmap <silent> <leader>l :bn<CR>
nmap <silent> <leader>h :bp<CR>
nmap <silent> <leader>d :bd<CR>
" split vertical
nmap <silent> <leader>vs :vnew<CR>
" turn off highlight after search
nnoremap <silent> <leader><space> :nohlsearch<CR>
" ctrlp
nnoremap <silent> <leader>o :CtrlPBuffer<CR>
" nnoremap <silent> <leader>m :call Ctrlpmru()<CR>
nnoremap <silent> <leader>m :CtrlPMRU<CR>
nnoremap <silent> <leader>p :CtrlP<CR>
" NERDTree
map <silent> <leader>n :NERDTreeToggle<CR>
" navigate to file
nmap <silent> <leader>c :NERDTreeFind<CR>
" 0 first char/^ beg of line
noremap 0 ^
noremap ^ 0
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
" scratchpad
nmap <leader>ss :setlocal buftype=nofile bufhidden=hide noswapfile<CR>
" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv
"" Tabs
nnoremap <silent> <leader>tn :tabnew<CR>
nnoremap <silent> <leader>tc :tabclose<CR>
nnoremap <silent> <leader>ti :tabs<CR>
" terminal
nmap <silent> <leader>tt :call CustomTerminal()<CR>
tnoremap <silent> <Esc>n <C-\><C-n>
tnoremap <silent> <Esc><Esc> <C-\><C-n>:bd!<CR>
" Prefer Neovim terminal insert mode to normal mode.
 " Make navigation into and out of Neovim terminal splits nicer.
tnoremap <C-k> <C-\><C-N><C-w>k
" Remove white spaces
nnoremap <leader>rs :%s/\s\+$//e<CR>
" vim fugitive
nnoremap <leader>gd :Gvdiffsplit<CR>
nnoremap <leader>gs :Git<CR>
" wrap
nnoremap <leader>dw :windo set wrap<CR><C-w>h

let g:autopep8_disable_show_diff=1

" ctrlp
let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard', 'find %s -maxdepth 3 -type f']

" nerdtree
let g:NERDTreeShowLineNumbers = 0
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
" let g:NERDTreeHighlightCursorline = 0


" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1


" quick-scope
let g:qs_max_chars=120
let g:qs_buftype_blacklist = ['terminal']
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
highlight QuickScopePrimary guifg='#afff5f' gui=underline  ctermfg=37 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=undercurl ctermfg=245 cterm=underline


" rainbow
" let g:rainbow_active = 1
" let g:rainbow_conf = {'guifgs' : ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick'], 'ctermfgs' : ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']}


" suda
let g:suda_smart_edit = 1


" YCM
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1


fun! CustomTerminal()
    :bo 15new | terminal
    :set nocursorcolumn nocursorline nonumber norelativenumber
    :startinsert
endf


" ignore patterns in CtrlPMRU
fun! Ctrlpmru()
    :silent !sed -i.bak -e '/\.git\//d' -e '/\/tmp\//d' "$XDG_CACHE_HOME/ctrlp/mru/cache.txt"
    :CtrlPMRU<CR>
endf

" autocmds
augroup autocmdgroup
    autocmd! autocmdgroup
    " autocmd BufWritePre * %s/\s\+$//e
    autocmd FocusGained * :checktime
    autocmd InsertEnter * norm zz
    " autocmd VimEnter    * if &diff | execute 'windo set wrap' | endif
    " autocmd BufNewFile *.html 0r ~/.config/nvim/templates/html.skel
    autocmd BufEnter term://* startinsert
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    " code prettier
    autocmd Filetype python nmap <buffer> <leader>, :Autopep8<CR>
    autocmd ColorScheme * hi Folded guibg=#010101
    autocmd Filetype javascript,typescript,css,less,scss,json,graphql,markdown,vue,svelte,yaml,html nmap <buffer> <leader>, :Prettier<CR>
augroup end
]]
-- Packer installation
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute(
    '!git clone https://github.com/wbthomason/packer.nvim ' .. install_path
  )
end

vim.cmd [[
augroup Packer
  autocmd!
  autocmd BufWritePost init.lua PackerCompile
augroup end
]]

-- Plugin installation
use = require("packer").use
require("packer").startup(function()
  -- Package manager
  use 'wbthomason/packer.nvim'

  -- LSP Client
  use 'neovim/nvim-lspconfig'

  -- Language Server installer
  use {
    'williamboman/nvim-lsp-installer',
    requires = 'neovim/nvim-lspconfig',
  }

  -- BONUS: Customizations over LSP
  -- Show VSCode-esque pictograms
  use 'onsails/lspkind-nvim'
  -- show various elements of LSP as UI
  use {'tami5/lspsaga.nvim', requires = {'neovim/nvim-lspconfig'}}

  -- Autocompletion plugin
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
    }
  }

  -- snippets
  use {
    'hrsh7th/cmp-vsnip', requires = {
      'hrsh7th/vim-vsnip',
      'rafamadriz/friendly-snippets',
    }
  }

  -- bracket autocompletion
  use 'vim-scripts/auto-pairs-gentle'

  -- Fancier statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      'arkav/lualine-lsp-progress',
    },
  }

  -- Fast incremental parsing library
  use 'nvim-treesitter/nvim-treesitter'

  -- Beautiful colorscheme
  use 'navarasu/onedark.nvim'
  use 'sainnhe/everforest'
end)

-- Neovim configuration
-- Do not show current vim mode since it is already shown by Lualine
vim.o.showmode = false

-- enable autowriteall
vim.o.autowriteall = true

-- Show the line numbers
vim.wo.number = true

-- Show chars at the end of line
vim.opt.list = true

-- Enable break indent
vim.o.breakindent = true

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250

-- Shows signs by Autocompletion plugin
vim.wo.signcolumn = 'yes'

-- Enable termguicolors. Very essential if you want 24-bit RGB color in TUI.
vim.o.termguicolors = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menu,menuone'

--Remap for dealing with word wrap
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Highlight on yank
vim.cmd [[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup end
]]

-- Plugin configuration
-- LSP and LS Installer
require('lspconfig')
local lsp_installer = require("nvim-lsp-installer")

-- The required servers
local servers = {
  "bashls",
  "pyright",
  "rust_analyzer",
  "html",
  "clangd",
  "vimls",
  "emmet_ls",
}

for _, name in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found and not server:is_installed() then
    print("Installing " .. name)
    server:install()
  end
end

local on_attach = function(_, bufnr)
  -- Create some shortcut functions.
  -- NOTE: The `vim` variable is supplied by Neovim.
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  local opts = {noremap=true, silent=true}

  -- ======================= The Keymaps =========================
  -- jump to definition
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)

  -- Format buffer
  buf_set_keymap('n', '<F3>', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

  -- Jump LSP diagnostics
  -- NOTE: Currently, there is a bug in lspsaga.diagnostic module. Thus we use
  --       Vim commands to move through diagnostics.
  buf_set_keymap('n', '[g', ':Lspsaga diagnostic_jump_prev<CR>', opts)
  buf_set_keymap('n', ']g', ':Lspsaga diagnostic_jump_next<CR>', opts)

  -- Rename symbol
  buf_set_keymap('n', '<leader>rn', "<cmd>lua require('lspsaga.rename').rename()<CR>", opts)

  -- Find references
  buf_set_keymap('n', 'gr', '<cmd>lua require("lspsaga.provider").lsp_finder()<CR>', opts)

  -- Doc popup scrolling
  buf_set_keymap('n', 'K', "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", opts)
  buf_set_keymap('n', '<C-f>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", opts)
  buf_set_keymap('n', '<C-b>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", opts)

  -- codeaction
  buf_set_keymap('n', '<leader>ac', "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", opts)
  buf_set_keymap('v', '<leader>a', ":<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>", opts)

  -- Floating terminal
  -- NOTE: Use `vim.cmd` since `buf_set_keymap` is not working with `tnoremap...`
  vim.cmd [[
  nnoremap <silent> <A-d> <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR>
  tnoremap <silent> <A-d> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>
  ]]
end

local server_specific_opts = {
  sumneko_lua = function(opts)
    opts.settings = {
      Lua = {
        -- NOTE: This is required for expansion of lua function signatures!
        completion = {callSnippet = "Replace"},
        diagnostics = {
          globals = {'vim'},
        },
      },
    }
  end,

  html = function(opts)
    opts.filetypes = {"html", "htmldjango"}
  end,
}

-- `nvim-cmp` comes with additional capabilities, alongside the ones
-- provided by Neovim!
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp_installer.on_server_ready(function(server)
  -- the keymaps, flags and capabilities that will be sent to the server as
  -- options.
  local opts = {
    on_attach = on_attach,
    flags = {debounce_text_changes = 150},
    capabilities = capabilities,
  }

  -- If the current surver's name matches with the ones specified in the
  -- `server_specific_opts`, set the options.
  if server_specific_opts[server.name] then
    server_specific_opts[server.name](opts)
  end

  -- And set up the server with our configuration!
  server:setup(opts)
end)

-- nvim-cmp
local lspkind = require('lspkind')
local cmp = require("cmp")

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

local cmp_kinds = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "ﰠ",
  Variable = "",
  Class = "ﴯ",
  Interface = "",
  Module = "",
  Property = "ﰠ",
  Unit = "塞",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "פּ",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },

  formatting = {
    format = lspkind.cmp_format({
      --with_text = true,
      --preset = 'codicons',
      --symbol_map = cmp_kinds, -- The glyphs will be used by `lspkind`
      --menu = ({
        --buffer = "[Buffer]",
        --nvim_lsp = "[LSP]",
        --luasnip = "[LuaSnip]",
        --nvim_lua = "[Lua]",
        --latex_symbols = "[Latex]",
      --}),
    }),
  },

  mapping = {
    ['<Up>'] = cmp.mapping.select_prev_item(),
    ['<Down>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<Tab>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },

    -- Use Tab and Shift-Tab to browse through the suggestions.
--    ["<Tab>"] = cmp.mapping(function(fallback)
--      if cmp.visible() then
--        cmp.select_next_item()
--      elseif vim.fn["vsnip#available"](1) == 1 then
--        feedkey("<Plug>(vsnip-expand-or-jump)", "")
--      elseif has_words_before() then
--        cmp.complete()
--      else
--        fallback()
--      end
--    end, { "i", "s" }),
--
--    ["<S-Tab>"] = cmp.mapping(function()
--      if cmp.visible() then
--        cmp.select_prev_item()
--      elseif vim.fn["vsnip#jumpable"](-1) == 1 then
--        feedkey("<Plug>(vsnip-jump-prev)", "")
--      end
--    end, { "i", "s" }),
  },

  sources = {
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'buffer' },
  },
})

-- Use buffer source for `/`
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':'
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- autopairs
vim.g.AutoPairs = {
  ['(']=')',
  ['[']=']',
  ['{']='}',
  ["'"]="'",
  ['"']='"',
  ['`']='`',
  ['<']='>',
}

-- lualine
require('lualine').setup({
  sections = {
    lualine_c = {
      {'filename', path = 1},
      'lsp_progress',
    },
  },
})

-- treesitter
require('nvim-treesitter.configs').setup {
  ensure_installed = {"python", "rust", "c", "cpp", "bash", "go", "html"},
  highlight = {
    enable = true, -- false will disable the whole extension
  },
}

-- lspsaga
require("lspsaga").init_lsp_saga({
  finder_action_keys = {
    open = '<CR>',
    quit = {'q', '<esc>'},
  },
  code_action_keys = {
    quit = {'q', '<esc>'},
  },
  rename_action_keys = {
    quit = '<esc>',
  },
})

vim.cmd[[
hi Folded guibg=#010101
hi Normal guibg=#010101
hi Use guibg=#010101
hi buffer guibg=#010101
hi background guibg=#010101
hi bufenter guibg=#010101
hi BufNewFile guibg=#010101
hi norelativenumber guibg=#010101
hi nonumber guibg=#010101
hi Neovim guibg=#010101 
"hi SignColumn guibg=#010101
hi EndOfBuffer guibg=#010101
"hi Buffer guibg=#010101
let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]
let g:Hexokinase_highlighters = ['backgroundfull']

]]
