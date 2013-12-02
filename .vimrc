function Common()
	syntax on
endfunction

" For Mac, key  map key down
if has("mac")
  "open a file in TextMate from vi 
  nmap mate :w<CR>:!mate %<CR>
  map <Esc>[A :tabnew<CR>
  map <Esc>[B :q<CR>
  map <Esc>[D gT
  map <Esc>[C gt
  set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ line\ %02c%2V\ column\ %4l\ %P%*
  set laststatus=2
  set textwidth=80
  call Common()
elseif has("unix")
  call Common()
endif
