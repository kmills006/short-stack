" Map <Esc> to jj
:inoremap jj <Esc>

" Use ; as :
nnoremap ; :

" Map leader
let mapleader = ","

" indent every line in the file with <,I>
nnoremap <Leader>i mmgg=G`m

" Removes trailing spaces
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

" Remove trailing spaces on file write, append, buffwrite, and more
autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

" Set tabs to 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Undo highlighted searches
nnoremap <leader><space> :noh<cr>

" relative number
set relativenumber

" indent every line in the file with <leader>i
nnoremap <Leader>i mmgg=G`m