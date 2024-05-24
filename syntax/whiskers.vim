syntax case match

" Import syntax from tera filetype
syntax include @Tera syntax/tera.vim
syntax region tera start="" end="" contains=@Tera

syn cluster teraBlocks add=whiskersTagBlock,whiskersVarBlock

syn keyword whiskersGlobalVars contained flavor flavors
syn keyword whiskersColors contained rosewater flamingo pink mauve red maroon peach yellow green teal sky sapphire blue lavender
syn keyword whiskersColors contained text subtext0 subtext1
syn keyword whiskersColors contained overlay0 overlay1 overlay2
syn keyword whiskersColors contained surface0 surface1 surface2 
syn keyword whiskersColors contained base mantle crust
syn keyword whiskersFunctions contained object css_rgb css_rgba css_hsl cdss_hsla
syn keyword whiskersFilters contained add sub mod mix urelencode_lzma trunc

" TODO: Find a way to extend region from imported `syntax/tera.vim` instead of
" redefining it
syn region teraTagBlock start="{%" end="%}" contains=teraStatement,teraFilter,teraConstant,teraFilter,teraTest,teraTagError,whiskersGlobalVars,whiskersColors,whiskersFunctions,whiskersFilters display containedin=ALLBUT,@teraBlocks
syn region teraVarBlock start="{{" end="}}" contains=teraFilter,teraConstant,teraVarError,whiskersGlobalVars,whiskersColors,whiskersFilters display containedin=ALLBUT,@teraBlocks

hi def link whiskersGlobalVars Identifier
hi def link whiskersFlavors    Constant
hi def link whiskersColors     Constant
hi def link whiskersFunctions  Function
hi def link whiskersFilters    Identifier

