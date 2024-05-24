syntax case match

" tera template built-in tags and parameters
syn keyword teraStatement contained if else elif endif is not
syn keyword teraStatement contained for in endfor continue break
syn keyword teraStatement contained raw endraw
syn keyword teraStatement contained block endblock extends
syn keyword teraStatement contained macro endmacro import
syn keyword teraStatement contained filter endfilter set
syn keyword teraStatement contained include ignore missing
syn keyword teraStatement contained with " used within concat

" tera template built-in tests
syn keyword teraTest contained defined undefined 
syn keyword teraTest contained odd even divisibleby iterable
syn keyword teraTest contained string number object
syn keyword teraTest contained starting_with ending_with containing matching

" tera template built-in filters
syn keyword teraFilter contained lower upper capitalize title
syn keyword teraFilter contained replace truncate
syn keyword teraFilter contained addslashes slugify
syn keyword teraFilter contained trim trim_start trim_end trim_start_matches trim_end_matches striptags
syn keyword teraFilter contained linebreaksbr spaceless indent
syn keyword teraFilter contained first last nth length
syn keyword teraFilter contained join split slice
syn keyword teraFilter contained sort unique reverse
syn keyword teraFilter contained group_by filter map
syn keyword teraFilter contained urelencode urlencode_strict json_encode as_str
syn keyword teraFilter contained abs round int float
syn keyword teraFilter contained concat pluralize
syn keyword teraFilter contained filesizeformat
syn keyword teraFilter contained date
syn keyword teraFilter contained escape escape_xml
syn keyword teraFilter contained safe
syn keyword teraFilter contained get
syn keyword teraFilter contained default
" super() is a special variable
syn keyword teraFilter contained super
 
" tera template built-in functions
syn keyword teraFunction contained range now throw get_random get_env

syn region teraConstant contained start=/"/ skip=/\\"/ end=/"/
syn region teraConstant contained start=/'/ skip=/\\'/ end=/'/
syn keyword teraConstant contained true True false False

syn match teraTagError contained "#}\|{{\|[^%]}}\|[&#]"
syn match teraVarError contained "#}\|{%\|%}\|[<>!&#%]"
syn cluster teraBlocks add=teraTagBlock,teraVarBlock,teraComBlock,teraComment

" tera template tag and variable blocks
syn region teraTagBlock start="{%" end="%}" contains=teraStatement,teraFilter,teraConstant,teraFilter,teraTest,teraTagError display containedin=ALLBUT,@teraBlocks
syn region teraVarBlock start="{{" end="}}" contains=teraFilter,teraConstant,teraVarError display containedin=ALLBUT,@teraBlocks
syn region teraComBlock start="{#" end="#}" containedin=ALLBUT,@teraBlocks

hi def link teraTagBlock  PreProc
hi def link teraVarBlock  PreProc
hi def link teraStatement Statement
hi def link teraFunction  Function
hi def link teraTest      Type
hi def link teraFilter    Identifier
hi def link teraConstant  Constant
hi def link teraTagError  Error
hi def link teraVarError  Error
hi def link teraError     Error
hi def link teraComment   Comment
hi def link teraComBlock  Comment
