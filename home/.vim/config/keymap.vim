" Quicksave command
noremap <Leader>w :update<CR>
vnoremap <Leader>w <C-C>:update<CR>
inoremap <Leader>w <C-O>:update<CR>


" Quick quit command
noremap <Leader>q :quit<CR>

" center the cursor vertically
:nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>


" easier formatting of paragraphs
vmap Q gq
nmap Q gqap


" Movement
" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
vnoremap <Leader>s :sort<CR>


vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation
map <Leader>a ggVG  " select all

" reload vim config
map <Leader>v :source ~/.vimrc


" Clipboard
vmap <C-y> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
imap <C-v> <Esc><C-v>a

" Keybindings for plugins below
" ===========================================================================

" Settings for jedi-vim
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" PyTest
" Execute the tests
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
" cycle test errors
nmap <silent><Leader>tn <Esc>:Pytest next<CR>

" NerdTree
noremap <Leader>f :NERDTreeToggle<CR>
vnoremap <Leader>f <C-C>:NERDTreeToggle<CR>
inoremap <Leader>f <C-O>:NERDTreeToggle<CR>
