let g:tex_flavor='latex'
let g:vimtex_compiler_method = 'tectonic'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

let g:livepreview_previewer = 'zathura'

let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options = '-r @line @pdf @tex'

autocmd FileType tex nmap <Leader>t :w<CR><bar><Leader>ll
