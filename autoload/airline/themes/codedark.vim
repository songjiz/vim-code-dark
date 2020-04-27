" Vim Code Dark (airline theme)
" https://github.com/tomasiser/vim-code-dark

scriptencoding utf-8

let g:airline#themes#codedark#palette = {}

" Terminal colors (base16):
let s:cterm00 = "00"
let s:cterm03 = "08"
let s:cterm05 = "07"
let s:cterm07 = "15"
let s:cterm08 = "01"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = "18"
  let s:cterm02 = "19"
  let s:cterm04 = "20"
  let s:cterm06 = "21"
  let s:cterm09 = "16"
  let s:cterm0F = "17"
else
  let s:cterm01 = "00"
  let s:cterm02 = "08"
  let s:cterm04 = "07"
  let s:cterm06 = "07"
  let s:cterm09 = "06"
  let s:cterm0F = "03"
endif

if &t_Co >= 256
    let g:codedark_term256=1
elseif !exists("g:codedark_term256")
    let g:codedark_term256=0
endif

let s:Front        = { 'gui': '#FFFFFF', 'cterm':  (g:codedark_term256 ? '15' : s:cterm07) }
let s:FrontGray    = { 'gui': '#D4D4D4', 'cterm': (g:codedark_term256 ? '188' : s:cterm05) }
let s:Back         = { 'gui': '#1E1E1E', 'cterm': (g:codedark_term256 ? '234' : s:cterm00) }
let s:Selection    = { 'gui': '#264F78', 'cterm': (g:codedark_term256 ? '24' : s:cterm01)  }

let s:Blue         = { 'gui': '#0A7ACA', 'cterm': (g:codedark_term256 ? '32' : s:cterm0D)  }
let s:LightBlue    = { 'gui': '#5CB6F8', 'cterm': (g:codedark_term256 ? '75' : s:cterm0C)  }
let s:Yellow       = { 'gui': '#FFAF00', 'cterm': (g:codedark_term256 ? '214' : s:cterm0A) }
let s:Red          = { 'gui': '#F44747', 'cterm': (g:codedark_term256 ? '203' : s:cterm08) }

let s:DarkDarkDark = { 'gui': '#262626', 'cterm': (g:codedark_term256 ? '235' : s:cterm01) }
let s:DarkDark     = { 'gui': '#303030', 'cterm': (g:codedark_term256 ? '236' : s:cterm02) }
let s:Dark         = { 'gui': '#3C3C3C', 'cterm': (g:codedark_term256 ? '237' : s:cterm03) }

let s:Warning = [ s:Red.gui, s:DarkDark.gui, s:Red.cterm, s:DarkDark.cterm, 'none']

" Normal:

let s:N1 = [ s:Front.gui, s:Blue.gui, s:Front.cterm, s:Blue.cterm, 'none' ]
let s:N2 = [ s:Front.gui, s:DarkDark.gui, s:Front.cterm, s:DarkDark.cterm, 'none' ]
let s:N3 = [ s:Front.gui, s:DarkDarkDark.gui, s:Front.cterm, s:DarkDarkDark.cterm, 'none' ]
let s:NM = [ s:Front.gui, s:DarkDarkDark.gui, s:Front.cterm, s:DarkDarkDark.cterm, 'none']

let g:airline#themes#codedark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#codedark#palette.normal_modified = { 'airline_c': s:NM }
let g:airline#themes#codedark#palette.normal.airline_warning = s:Warning
let g:airline#themes#codedark#palette.normal_modified.airline_warning = s:Warning

" Insert:

let s:I1 = [ s:Back.gui, s:Yellow.gui, s:Back.cterm, s:Yellow.cterm, 'none' ]
let s:I2 = [ s:Front.gui, s:DarkDark.gui, s:Front.cterm, s:DarkDark.cterm, 'none' ]
let s:I3 = [ s:Front.gui, s:DarkDarkDark.gui, s:Front.cterm, s:DarkDarkDark.cterm, 'none' ]
let s:IM = [ s:Front.gui, s:DarkDarkDark.gui, s:Front.cterm, s:DarkDarkDark.cterm, 'none']

let g:airline#themes#codedark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#codedark#palette.insert_modified = { 'airline_c': s:IM }
let g:airline#themes#codedark#palette.insert.airline_warning = s:Warning
let g:airline#themes#codedark#palette.insert_modified.airline_warning = s:Warning

" Replace:

let s:R1 = [ s:Back.gui, s:Yellow.gui, s:Back.cterm, s:Yellow.cterm, 'none' ]
let s:R2 = [ s:Front.gui, s:DarkDark.gui, s:Front.cterm, s:DarkDark.cterm, 'none' ]
let s:R3 = [ s:Front.gui, s:DarkDarkDark.gui, s:Front.cterm, s:DarkDarkDark.cterm, 'none' ]
let s:RM = [ s:Front.gui, s:DarkDarkDark.gui, s:Front.cterm, s:DarkDarkDark.cterm, 'none']

let g:airline#themes#codedark#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#codedark#palette.replace_modified = { 'airline_c': s:RM }
let g:airline#themes#codedark#palette.replace.airline_warning = s:Warning
let g:airline#themes#codedark#palette.replace_modified.airline_warning = s:Warning

" Visual:

let s:V1 = [ s:LightBlue.gui, s:Dark.gui, s:LightBlue.cterm, s:Dark.cterm, 'none' ]
let s:V2 = [ s:Front.gui, s:DarkDark.gui, s:Front.cterm, s:DarkDark.cterm, 'none' ]
let s:V3 = [ s:Front.gui, s:DarkDarkDark.gui, s:Front.cterm, s:DarkDarkDark.cterm, 'none' ]
let s:VM = [ s:Front.gui, s:DarkDarkDark.gui, s:Front.cterm, s:DarkDarkDark.cterm, 'none']

let g:airline#themes#codedark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#codedark#palette.visual_modified = { 'airline_c': s:VM }
let g:airline#themes#codedark#palette.visual.airline_warning = s:Warning
let g:airline#themes#codedark#palette.visual_modified.airline_warning = s:Warning

" Inactive:

let s:IA1 = [ s:FrontGray.gui, s:Dark.gui, s:FrontGray.cterm, s:Dark.cterm, 'none' ]
let s:IA2 = [ s:FrontGray.gui, s:DarkDark.gui, s:FrontGray.cterm, s:DarkDark.cterm, 'none' ]
let s:IA3 = [ s:FrontGray.gui, s:DarkDarkDark.gui, s:FrontGray.cterm, s:DarkDarkDark.cterm, 'none' ]
let s:IAM = [ s:FrontGray.gui, s:DarkDarkDark.gui, s:FrontGray.cterm, s:DarkDarkDark.cterm, 'none' ]

let g:airline#themes#codedark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#codedark#palette.inactive_modified = { 'airline_c': s:IAM }

" Red accent for readonly:

let g:airline#themes#codedark#palette.accents = {
      \ 'red': [ s:Red.gui, '', s:Red.cterm, '' ]
      \ }

