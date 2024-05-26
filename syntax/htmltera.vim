syntax case match

" Import syntax from html filetype
syntax include @HTML syntax/html.vim
syntax region html start="<" end="" contains=@HTML
" Import syntax from tera filetype
syntax include @Tera syntax/tera.vim
syntax region tera start="{" end="" contains=@Tera
