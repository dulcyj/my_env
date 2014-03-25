" This is my personal .vimrc
" Common
" Common to all plateform
function Common()
    " Use space instead of tab
    set shiftwidth=4
    set expandtab
    set tabstop=4
    " Activate color
    syntax on
    set incsearch
    set cmdheight=2set tabstop=4
    " Highlight in red characters after 80th column
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%81v.\+/highlight ExtraWhitespace ctermbg=red guibg=red
    " Highlight in red extra white space
    highlight ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/
    autocmd BufWinLeave * call clearmatches()
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
