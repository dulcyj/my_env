" This is my personal .vimrc
" Common
" Common to all plateform
function Common()
    set shiftwidth=4
    set expandtab
    set tabstop=4
    syntax on
endfunction

" For_mac
" Related to mac plateform
function For_mac()
    map <Esc>[A :tabnew<CR>
    map <Esc>[B :q<CR>
    map <Esc>[D gT
    map <Esc>[C gt
    set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ line\ %02c%2V\ column\ %4l\ %P%*
    set laststatus=2
    set textwidth=80
    call Common()
endfunction

" For_unix
" Related to unix plateform
function For_unix()
    call Common()
endfunction

function! Echoo()
    echo "toto"
endfunction

" Main
function Main()
    if has("mac")
        call For_mac()
    elseif has("unix")
        call For_unix()
    endif
endfunction

" Call Main
call Main()
