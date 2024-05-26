function! DetectTera()
  let filename = expand("%:t")
  if search('whiskers:', 'nw') > 0
    set filetype=whiskers 
  elseif filename =~ '.htm'
    if search('{{.*}}\|{%-\?\s*\(end.*\|extends\|block\|macro\|set\|if\|for\|include\\|import\)\>:', 'nw') > 0
      set filetype=htmltera
    endif
  else
    set filetype=tera
  endif
endfunction

autocmd BufRead,BufNewFile *.tera,*.htm,*.html call DetectTera()
" Use {# #} as comments
autocmd FileType tera,htmltera,whiskers setlocal commentstring={#\ %s\ #}
