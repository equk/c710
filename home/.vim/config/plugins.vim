" Settings for jedi-vim
" =====================
let g:jedi#related_names_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0

" Settings for vim-powerline
" ===========================
set laststatus=2
" let g:Powerline_symbols = 'fancy'
" let g:Powerline_symbols = 'unicode'

call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

" Settings for nerdtree
" =====================
map <leader>f :NERDTreeToggle<CR>

" Settings for vim-markdown
" ==========================
set nofoldenable


" Settings for ctrlp
" ===================
let g:ctrlp_max_height = 30

" Settings for supertab
" ======================
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
