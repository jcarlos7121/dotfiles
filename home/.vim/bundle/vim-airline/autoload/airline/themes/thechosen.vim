let s:N1 = [ '#141413' , '#aeee00' , 232 , 15 ] " blackestgravel & lime
let s:N2 = [ '#f4cf86' , '#45413b' , 222 , 238 ] " dirtyblonde    & deepgravel
let s:N3 = [ '#8cffba' , '#242321' , 15 , 235 ] " saltwatertaffy & darkgravel
let s:N4 = [ '#666462' , 241 ]                   " mediumgravel

"let s:I1 = [ '#141413' , '#0a9dff' , 232 , 39  ] " blackestgravel & tardis
"let s:I2 = [ '#f4cf86' , '#005fff' , 222 , 27  ] " dirtyblonde    & facebook
"let s:I3 = [ '#0a9dff' , '#242321' , 39  , 235 ] " tardis         & darkgravel
let s:I1 = [ '#141413' , '#FDE76E' , 232 , 227 ]
let s:I2 = [ '#FDE76E' , '#32322F' , 227 , 236 ]
let s:I3 = [ '#FDE76E' , '#242424' , 227 , 234 ]
let s:I4 = [ '#FADE3E' , 221 ]

"let s:V1 = [ '#141413' , '#ffa724' , 232 , 214 ] " blackestgravel & orange
"let s:V2 = [ '#000000' , '#fade3e' , 16  , 221 ] " coal           & dalespale
"let s:V3 = [ '#000000' , '#b88853' , 16  , 137 ] " coal           & toffee
"let s:V4 = [ '#c7915b' , 173 ]                   " coffee

"153!!!! o 15!!!
"Inspirado en el Wombat
let s:V1 = [ '#141413' , '#B5D3F3' , 232 , 15 ]
let s:V2 = [ '#B5D3F3' , '#32322F' , 15 , 236 ]
let s:V3 = [ '#B5D3F3' , '#242424' , 15 , 234 ]
let s:V4 = [ '#7CB0E6' , 111 ]

let s:PA = [ '#f4cf86' , 222 ]                   " dirtyblonde
let s:RE = [ '#ff9eb8' , 211 ]                   " dress

let s:IA = [ s:N2[1] , s:N3[1] , s:N2[3] , s:N3[3] , '' ]

let g:airline#themes#thechosen#palette = {}

let g:airline#themes#thechosen#palette.accents = {
      \ 'red': [ '#ff2c4b' , '' , 196 , '' , '' ]
      \ }

let g:airline#themes#thechosen#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#thechosen#palette.normal_modified = {
      \ 'airline_b': [ s:N2[0]   , s:N4[0]   , s:N2[2]   , s:N4[1]   , ''     ] ,
      \ 'airline_c': [ s:V1[1]   , s:N2[1]   , s:V1[3]   , s:N2[3]   , ''     ] }


let g:airline#themes#thechosen#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#thechosen#palette.insert_modified = {
      \ 'airline_c': [ s:V1[1]   , s:N2[1]   , s:V1[3]   , s:N2[3]   , ''     ] }
let g:airline#themes#thechosen#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , s:PA[0]   , s:I1[2]   , s:PA[1]   , ''     ] }


let g:airline#themes#thechosen#palette.replace = copy(airline#themes#thechosen#palette.insert)
let g:airline#themes#thechosen#palette.replace.airline_a = [ s:I1[0] , s:RE[0] , s:I1[2] , s:RE[1] , '' ]
let g:airline#themes#thechosen#palette.replace_modified = g:airline#themes#thechosen#palette.insert_modified


let g:airline#themes#thechosen#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#thechosen#palette.visual_modified = {
      \ 'airline_c': [ s:V3[0]   , s:V4[0]   , s:V3[2]   , s:V4[1]   , ''     ] }


let g:airline#themes#thechosen#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#thechosen#palette.inactive_modified = {
      \ 'airline_c': [ s:V1[1]   , ''        , s:V1[3]   , ''        , ''     ] }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#thechosen#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#DADADA' , '#242424' , 253 , 234 , ''     ] ,
      \ [ '#DADADA' , '#40403C' , 253 , 238 , ''     ] ,
      \ [ '#141413' , '#DADADA' , 232 , 253 , 'bold' ] )

