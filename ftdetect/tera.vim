function! DetectTera()
  if search('whiskers:', 'nw') > 0
    set filetype=whiskers 
  else
    set filetype=tera
  endif
endfunction

autocmd BufRead,BufNewFile *.tera call DetectTera()
" Use {# #} as comments
autocmd FileType tera,whiskers setlocal commentstring={#\ %s\ #}
