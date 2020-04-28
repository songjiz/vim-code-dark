" Vim Code Dark (color scheme)
" https://github.com/tomasiser/vim-code-dark

scriptencoding utf-8

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="codedark"

" Highlighting function (inspiration from https://github.com/chriskempson/base16-vim)
if &t_Co >= 256
    let g:codedark_term256=1
elseif !exists("g:codedark_term256")
    let g:codedark_term256=0
endif
fun! <sid>hi(group, fg, bg, attr, sp)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . (g:codedark_term256 ? a:fg.cterm256 : a:fg.cterm)
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . (g:codedark_term256 ? a:bg.cterm256 : a:bg.cterm)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if !empty(a:sp)
    exec "hi " . a:group . " guisp=" . a:sp.gui
  endif
endfun

" ------------------
" Color definitions:
" ------------------

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

" General appearance colors:
" (some of them may be unused)

let s:None               = { 'gui': 'NONE', 'cterm': 'NONE', 'cterm256': 'NONE'      }
let s:Front              = { 'gui': '#D4D4D4', 'cterm': s:cterm05, 'cterm256': '188' }
let s:Back               = { 'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234' }

let s:TabCurrent         = { 'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234' }
let s:TabOther           = { 'gui': '#2D2D2D', 'cterm': s:cterm01, 'cterm256': '236' }
let s:TabOutside         = { 'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235' }

let s:LeftDark           = { 'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235' }
let s:LeftMid            = { 'gui': '#373737', 'cterm': s:cterm03, 'cterm256': '237' }
let s:LeftLight          = { 'gui': '#3F3F46', 'cterm': s:cterm03, 'cterm256': '238' }

let s:PopupFront         = { 'gui': '#BBBBBB', 'cterm': s:cterm06, 'cterm256': '250' }
let s:PopupBack          = { 'gui': '#2D2D30', 'cterm': s:cterm01, 'cterm256': '236' }
let s:PopupHighlightBlue = { 'gui': '#073655', 'cterm': s:cterm0D, 'cterm256': '24'  }
let s:PopupHighlightGray = { 'gui': '#3D3D40', 'cterm': s:cterm03, 'cterm256': '237' }

let s:SplitLight         = { 'gui': '#898989', 'cterm': s:cterm04, 'cterm256': '245' }
let s:SplitDark          = { 'gui': '#444444', 'cterm': s:cterm03, 'cterm256': '238' }
let s:SplitThumb         = { 'gui': '#424242', 'cterm': s:cterm04, 'cterm256': '238' }

let s:CursorDarkDark     = { 'gui': '#222222', 'cterm': s:cterm01, 'cterm256': '235' }
let s:CursorDark         = { 'gui': '#51504F', 'cterm': s:cterm03, 'cterm256': '239' }
let s:CursorLight        = { 'gui': '#AEAFAD', 'cterm': s:cterm04, 'cterm256': '145' }
let s:Selection          = { 'gui': '#264F78', 'cterm': s:cterm03, 'cterm256': '24'  }
let s:LineNumber         = { 'gui': '#5A5A5A', 'cterm': s:cterm04, 'cterm256': '240' }

let s:DiffRedDark        = { 'gui': '#4B1818', 'cterm': s:cterm08, 'cterm256': '52'  }
let s:DiffRedLight       = { 'gui': '#6F1313', 'cterm': s:cterm08, 'cterm256': '52'  }
let s:DiffRedLightLight  = { 'gui': '#FB0101', 'cterm': s:cterm08, 'cterm256': '09'  }
let s:DiffGreenDark      = { 'gui': '#373D29', 'cterm': s:cterm0B, 'cterm256': '237' }
let s:DiffGreenLight     = { 'gui': '#4B5632', 'cterm': s:cterm09, 'cterm256': '58'  }

let s:SearchCurrent      = { 'gui': '#49545F', 'cterm': s:cterm09, 'cterm256': '236' }
let s:Search             = { 'gui': '#4C4E50', 'cterm': s:cterm0A, 'cterm256': '236' }

" Syntax colors:

if !exists("g:codedark_conservative")
    let g:codedark_conservative=0
endif

let s:Gray         = { 'gui': '#808080', 'cterm': s:cterm04, 'cterm256': '08'  }
let s:Violet       = { 'gui': '#646695', 'cterm': s:cterm04, 'cterm256': '60'  }
let s:Blue         = { 'gui': '#569CD6', 'cterm': s:cterm0D, 'cterm256': '75'  }
let s:DarkBlue     = { 'gui': '#223E55', 'cterm': s:cterm0D, 'cterm256': '73'  }
let s:LightBlue    = { 'gui': '#9CDCFE', 'cterm': s:cterm0C, 'cterm256': '117' }
let s:Green        = { 'gui': '#608B4E', 'cterm': s:cterm0B, 'cterm256': '65'  }
let s:BlueGreen    = { 'gui': '#4EC9B0', 'cterm': s:cterm0F, 'cterm256': '43'  }
let s:LightGreen   = { 'gui': '#B5CEA8', 'cterm': s:cterm09, 'cterm256': '151' }
let s:Red          = { 'gui': '#F44747', 'cterm': s:cterm08, 'cterm256': '203' }
let s:Orange       = { 'gui': '#CE9178', 'cterm': s:cterm0F, 'cterm256': '173' }
let s:LightRed     = { 'gui': '#D16969', 'cterm': s:cterm08, 'cterm256': '167' }
let s:YellowOrange = { 'gui': '#D7BA7D', 'cterm': s:cterm0A, 'cterm256': '179' }
let s:Yellow       = { 'gui': '#DCDCAA', 'cterm': s:cterm0A, 'cterm256': '187' }
let s:Pink         = { 'gui': '#C586C0', 'cterm': s:cterm0E, 'cterm256': '176' }

if g:codedark_conservative
  let s:LightBlue = s:Front
  let s:LightRed  = s:Orange
  let s:Yellow    = s:Front
  let s:Pink      = s:Blue
endif

" Vim editor colors
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL)
call <sid>hi('Normal', s:Front, s:Back, 'none', {})
call <sid>hi('ColorColumn', {}, s:CursorDarkDark, 'none', {})
call <sid>hi('Cursor', s:CursorDark, s:CursorLight, 'none', {})
call <sid>hi('CursorLine', {}, s:CursorDarkDark, 'none', {})
call <sid>hi('CursorColumn', {}, s:CursorDarkDark, 'none', {})
call <sid>hi('Directory', s:Blue, s:Back, 'none', {})
call <sid>hi('DiffAdd', {}, s:DiffGreenDark, 'none', {})
call <sid>hi('DiffChange', {}, s:DiffRedDark, 'none', {})
call <sid>hi('DiffDelete', {}, s:DiffRedLight, 'none', {})
call <sid>hi('DiffText', {}, s:DiffRedLight, 'none', {})
call <sid>hi('EndOfBuffer', s:LineNumber, s:Back, 'none', {})
call <sid>hi('ErrorMsg', s:Red, s:Back, 'none', {})
call <sid>hi('VertSplit', s:SplitDark, s:Back, 'none', {})
call <sid>hi('Folded', s:LeftLight, s:LeftDark, 'underline', {})
call <sid>hi('FoldColumn', s:LineNumber, s:Back, 'none', {})
call <sid>hi('SignColumn', {}, s:Back, 'none', {})
call <sid>hi('IncSearch', s:None, s:SearchCurrent, 'none', {})
call <sid>hi('LineNr', s:LineNumber, s:Back, 'none', {})
call <sid>hi('CursorLineNr', s:PopupFront, s:Back, 'none', {})
call <sid>hi('MatchParen', s:None, s:CursorDark, 'none', {})
call <sid>hi('ModeMsg', s:Front, s:LeftDark, 'none', {})
call <sid>hi('MoreMsg', s:Front, s:LeftDark, 'none', {})
call <sid>hi('NonText', s:LineNumber, s:Back, 'none', {})
call <sid>hi('Pmenu', s:PopupFront, s:PopupBack, 'none', {})
call <sid>hi('PmenuSel', s:PopupFront, s:PopupHighlightBlue, 'none', {})
call <sid>hi('PmenuSbar', {}, s:PopupHighlightGray, 'none', {})
call <sid>hi('PmenuThumb', {}, s:PopupFront, 'none', {})
call <sid>hi('Question', s:Blue, s:Back, 'none', {})
call <sid>hi('Search', s:None, s:Search, 'none', {})
call <sid>hi('SpecialKey', s:Blue, s:None, 'none', {})
call <sid>hi('SpellBad', s:None, s:None, 'undercurl', {})
call <sid>hi('SpellCap', s:None, s:None, 'undercurl', {})
call <sid>hi('SpellLocal', s:None, s:None, 'undercurl', {})
call <sid>hi('StatusLine', s:Front, s:LeftMid, 'none', {})
call <sid>hi('StatusLineNC', s:Front, s:LeftDark, 'none', {})
call <sid>hi('TabLine', s:Front, s:TabOther, 'none', {})
call <sid>hi('TabLineFill', s:Front, s:TabOutside, 'none', {})
call <sid>hi('TabLineSel', s:Front, s:TabCurrent, 'none', {})
call <sid>hi('Title', s:None, s:None, 'bold', {})
call <sid>hi('Visual', s:None, s:Selection, 'none', {})
call <sid>hi('VisualNOS', s:None, s:Selection, 'none', {})
call <sid>hi('WarningMsg', s:Orange, s:Back, 'none', {})
call <sid>hi('WildMenu', s:None, s:Selection, 'none', {})

call <sid>hi('Comment', s:Green, {}, 'italic', {})

call <sid>hi('Constant', s:Blue, {}, 'none', {})
call <sid>hi('String', s:Orange, {}, 'none', {})
call <sid>hi('Character', s:Orange, {}, 'none', {})
call <sid>hi('Number', s:LightGreen, {}, 'none', {})
call <sid>hi('Boolean', s:Blue, {}, 'none', {})
call <sid>hi('Float', s:LightGreen, {}, 'none', {})

call <sid>hi('Identifier', s:LightBlue, {}, 'none', {})
call <sid>hi('Function', s:Yellow, {}, 'none', {})

call <sid>hi('Statement', s:Pink, {}, 'none', {})
call <sid>hi('Conditional', s:Pink, {}, 'none', {})
call <sid>hi('Repeat', s:Pink, {}, 'none', {})
call <sid>hi('Label', s:Pink, {}, 'none', {})
call <sid>hi('Operator', s:Front, {}, 'none', {})
call <sid>hi('Keyword', s:Pink, {}, 'none', {})
call <sid>hi('Exception', s:Pink, {}, 'none', {})

call <sid>hi('PreProc', s:Pink, {}, 'none', {})
call <sid>hi('Include', s:Pink, {}, 'none', {})
call <sid>hi('Define', s:Pink, {}, 'none', {})
call <sid>hi('Macro', s:Pink, {}, 'none', {})
call <sid>hi('PreCondit', s:Pink, {}, 'none', {})

call <sid>hi('Type', s:Blue, {}, 'none', {})
call <sid>hi('StorageClass', s:Blue, {}, 'none', {})
call <sid>hi('Structure', s:Blue, {}, 'none', {})
call <sid>hi('Typedef', s:Blue, {}, 'none', {})

call <sid>hi('Special', s:Front, {}, 'none', {})
call <sid>hi('SpecialChar', s:Front, {}, 'none', {})
call <sid>hi('Tag', s:Front, {}, 'none', {})
call <sid>hi('Delimiter', s:Front, {}, 'none', {})
call <sid>hi('SpecialComment', s:Green, {}, 'italic', {})
call <sid>hi('Debug', s:Front, {}, 'none', {})

call <sid>hi('Underlined', s:None, {}, 'underline', {})
call <sid>hi("Conceal", s:Front, s:Back, 'none', {})

call <sid>hi('Ignore', s:Front, {}, 'none', {})

call <sid>hi('Error', s:Red, s:Back, 'undercurl', s:Red)

call <sid>hi('Todo', s:YellowOrange, s:None, 'bold', {})

" Markdown:
call <sid>hi('markdownBold', s:Blue, {}, 'bold', {})
call <sid>hi('markdownCode', s:Orange, {}, 'none', {})
call <sid>hi('markdownRule', s:Blue, {}, 'bold', {})
call <sid>hi('markdownCodeDelimiter', s:Orange, {}, 'none', {})
call <sid>hi('markdownHeadingDelimiter', s:Blue, {}, 'none', {})
call <sid>hi('markdownFootnote', s:Orange, {}, 'none', {})
call <sid>hi('markdownFootnoteDefinition', s:Orange, {}, 'none', {})
call <sid>hi('markdownUrl', s:LightBlue, {}, 'underline', {})
call <sid>hi('markdownLinkText', s:Orange, {}, 'none', {})
call <sid>hi('markdownEscape', s:YellowOrange, {}, 'none', {})

" JSON:
call <sid>hi('jsonKeyword', s:LightBlue, {}, 'none', {})
call <sid>hi('jsonEscape', s:YellowOrange, {}, 'none', {})
call <sid>hi('jsonNull', s:Blue, {}, 'none', {})
call <sid>hi('jsonBoolean', s:Blue, {}, 'none', {})

" HTML:
call <sid>hi('htmlTag', s:Gray, {}, 'none', {})
call <sid>hi('htmlEndTag', s:Gray, {}, 'none', {})
call <sid>hi('htmlTagName', s:Blue, {}, 'none', {})
call <sid>hi('htmlSpecialTagName', s:Blue, {}, 'none', {})
call <sid>hi('htmlArg', s:LightBlue, {}, 'none', {})

" CSS:
call <sid>hi('cssBraces', s:Front, {}, 'none', {})
call <sid>hi('cssInclude', s:Pink, {}, 'none', {})
call <sid>hi('cssTagName', s:YellowOrange, {}, 'none', {})
call <sid>hi('cssClassName', s:YellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClass', s:YellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClassId', s:YellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClassLang', s:YellowOrange, {}, 'none', {})
call <sid>hi('cssIdentifier', s:YellowOrange, {}, 'none', {})
call <sid>hi('cssProp', s:LightBlue, {}, 'none', {})
call <sid>hi('cssDefinition', s:LightBlue, {}, 'none', {})
call <sid>hi('cssAttr', s:Orange, {}, 'none', {})
call <sid>hi('cssAttrRegion', s:Orange, {}, 'none', {})
call <sid>hi('cssColor', s:Orange, {}, 'none', {})
call <sid>hi('cssFunction', s:Orange, {}, 'none', {})
call <sid>hi('cssFunctionName', s:Orange, {}, 'none', {})
call <sid>hi('cssVendor', s:Orange, {}, 'none', {})
call <sid>hi('cssValueNumber', s:Orange, {}, 'none', {})
call <sid>hi('cssValueLength', s:Orange, {}, 'none', {})
call <sid>hi('cssUnitDecorators', s:Orange, {}, 'none', {})

" JavaScript:
call <sid>hi('jsVariableDef', s:LightBlue, {}, 'none', {})
call <sid>hi('jsFuncArgs', s:LightBlue, {}, 'none', {})
call <sid>hi('jsRegexpString', s:LightRed, {}, 'none', {})
call <sid>hi('jsThis', s:Blue, {}, 'none', {})
call <sid>hi('jsOperatorKeyword', s:Blue, {}, 'none', {})
call <sid>hi('jsDestructuringBlock', s:LightBlue, {}, 'none', {})
call <sid>hi('jsObjectKey', s:LightBlue, {}, 'none', {})
call <sid>hi('jsGlobalObjects', s:BlueGreen, {}, 'none', {})
call <sid>hi('jsModuleKeyword', s:LightBlue, {}, 'none', {})
call <sid>hi('jsClassDefinition', s:BlueGreen, {}, 'none', {})
call <sid>hi('jsClassKeyword', s:Blue, {}, 'none', {})
call <sid>hi('jsExtendsKeyword', s:Blue, {}, 'none', {})
call <sid>hi('jsExportDefault', s:Pink, {}, 'none', {})
call <sid>hi('jsFuncCall', s:Yellow, {}, 'none', {})
call <sid>hi('jsObjectValue', s:LightBlue, {}, 'none', {})
call <sid>hi('jsParen', s:LightBlue, {}, 'none', {})
call <sid>hi('jsObjectProp', s:LightBlue, {}, 'none', {})

" Typescript:
call <sid>hi('typescriptLabel', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptExceptions', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptBraces', s:Front, {}, 'none', {})
call <sid>hi('typescriptEndColons', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptParens', s:Front, {}, 'none', {})
call <sid>hi('typescriptDocTags', s:Blue, {}, 'none', {})
call <sid>hi('typescriptDocComment', s:BlueGreen, {}, 'italic', {})
call <sid>hi('typescriptLogicSymbols', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptImport', s:Pink, {}, 'none', {})
call <sid>hi('typescriptBOM', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptVariableDeclaration', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptVariable', s:Blue, {}, 'none', {})
call <sid>hi('typescriptExport', s:Pink, {}, 'none', {})
call <sid>hi('typescriptAliasDeclaration', s:BlueGreen, {}, 'none', {})
call <sid>hi('typescriptAliasKeyword', s:Blue, {}, 'none', {})
call <sid>hi('typescriptClassName', s:BlueGreen, {}, 'none', {})
call <sid>hi('typescriptAccessibilityModifier', s:Blue, {}, 'none', {})
call <sid>hi('typescriptOperator', s:Blue, {}, 'none', {})
call <sid>hi('typescriptArrowFunc', s:Blue, {}, 'none', {})
call <sid>hi('typescriptMethodAccessor', s:Blue, {}, 'none', {})
call <sid>hi('typescriptMember', s:Yellow, {}, 'none', {})
call <sid>hi('typescriptTypeReference', s:BlueGreen, {}, 'none', {})
call <sid>hi('typescriptDefault', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptTemplateSB', s:YellowOrange, {}, 'none', {})
call <sid>hi('typescriptArrowFuncArg', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptParamImpl', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptFuncComma', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptCastKeyword', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptCall', s:Blue, {}, 'none', {})
call <sid>hi('typescriptCase', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptReserved', s:Pink, {}, 'none', {})
call <sid>hi('typescriptDefault', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptDecorator', s:Yellow, {}, 'none', {})
call <sid>hi('typescriptPredefinedType', s:BlueGreen, {}, 'none', {})
call <sid>hi('typescriptClassHeritage', s:BlueGreen, {}, 'none', {})
call <sid>hi('typescriptClassExtends', s:Blue, {}, 'none', {})
call <sid>hi('typescriptClassKeyword', s:Blue, {}, 'none', {})
call <sid>hi('typescriptBlock', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptDOMDocProp', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptTemplateSubstitution', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptClassBlock', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptFuncCallArg', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptIndexExpr', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptConditionalParen', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptArray', s:Yellow, {}, 'none', {})
call <sid>hi('typescriptES6SetProp', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptObjectLiteral', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptTypeParameter', s:BlueGreen, {}, 'none', {})
call <sid>hi('typescriptEnumKeyword', s:Blue, {}, 'none', {})
call <sid>hi('typescriptEnum', s:BlueGreen, {}, 'none', {})
call <sid>hi('typescriptLoopParen', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptParenExp', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptModule', s:LightBlue, {}, 'none', {})
call <sid>hi('typescriptAmbientDeclaration', s:Blue, {}, 'none', {})
call <sid>hi('typescriptModule', s:Blue, {}, 'none', {})
call <sid>hi('typescriptFuncTypeArrow', s:Blue, {}, 'none', {})
call <sid>hi('typescriptInterfaceHeritage', s:BlueGreen, {}, 'none', {})
call <sid>hi('typescriptInterfaceName', s:BlueGreen, {}, 'none', {})
call <sid>hi('typescriptInterfaceKeyword', s:Blue, {}, 'none', {})
call <sid>hi('typescriptInterfaceExtends', s:Blue, {}, 'none', {})
call <sid>hi('typescriptGlobal', s:BlueGreen, {}, 'none', {})
call <sid>hi('typescriptAsyncFuncKeyword', s:Blue, {}, 'none', {})
call <sid>hi('typescriptFuncKeyword', s:Blue, {}, 'none', {})
call <sid>hi('typescriptGlobalMethod', s:Yellow, {}, 'none', {})
call <sid>hi('typescriptPromiseMethod', s:Yellow, {}, 'none', {})

" XML:
call <sid>hi('xmlTag', s:BlueGreen, {}, 'none', {})
call <sid>hi('xmlTagName', s:BlueGreen, {}, 'none', {})
call <sid>hi('xmlEndTag', s:BlueGreen, {}, 'none', {})

" Ruby:
call <sid>hi('rubyClassNameTag', s:BlueGreen, {}, 'none', {})
call <sid>hi('rubyClassName', s:BlueGreen, {}, 'none', {})
call <sid>hi('rubyModuleName', s:BlueGreen, {}, 'none', {})
call <sid>hi('rubyConstant', s:BlueGreen, {}, 'none', {})

" Golang:
call <sid>hi('goPackage', s:Blue, {}, 'none', {})
call <sid>hi('goImport', s:Blue, {}, 'none', {})
call <sid>hi('goVar', s:Blue, {}, 'none', {})
call <sid>hi('goConst', s:Blue, {}, 'none', {})
call <sid>hi('goStatement', s:Pink, {}, 'none', {})
call <sid>hi('goType', s:Blue, {}, 'none', {})
call <sid>hi('goSignedInts', s:Blue, {}, 'none', {})
call <sid>hi('goUnsignedInts', s:Blue, {}, 'none', {})
call <sid>hi('goFloats', s:Blue, {}, 'none', {})
call <sid>hi('goComplexes', s:Blue, {}, 'none', {})
call <sid>hi('goBuiltins', s:Yellow, {}, 'none', {})
call <sid>hi('goBoolean', s:Blue, {}, 'none', {})
call <sid>hi('goPredefinedIdentifiers', s:Blue, {}, 'none', {})
call <sid>hi('goTodo', s:Green, {}, 'none', {})
call <sid>hi('goDeclaration', s:Blue, {}, 'none', {})
call <sid>hi('goDeclType', s:Blue, {}, 'none', {})
call <sid>hi('goTypeDecl', s:Blue, {}, 'none', {})
call <sid>hi('goTypeName', s:BlueGreen, {}, 'none', {})
call <sid>hi('goVarAssign', s:LightBlue, {}, 'none', {})
call <sid>hi('goVarDefs', s:LightBlue, {}, 'none', {})
call <sid>hi('goReceiver', s:Front, {}, 'none', {})
call <sid>hi('goReceiverType', s:DarkBlue, {}, 'none', {})
call <sid>hi('goFunctionCall', s:Yellow, {}, 'none', {})
call <sid>hi('goMethodCall', s:Yellow, {}, 'none', {})
call <sid>hi('goSingleDecl', s:LightBlue, {}, 'none', {})

" Python:
call <sid>hi('pythonStatement', s:Blue, {}, 'none', {})
call <sid>hi('pythonOperator', s:Blue, {}, 'none', {})
call <sid>hi('pythonException', s:Pink, {}, 'none', {})
call <sid>hi('pythonExClass', s:BlueGreen, {}, 'none', {})
call <sid>hi('pythonBuiltinObj', s:LightBlue, {}, 'none', {})
call <sid>hi('pythonBuiltinType', s:BlueGreen, {}, 'none', {})
call <sid>hi('pythonBoolean', s:Blue, {}, 'none', {})
call <sid>hi('pythonNone', s:Blue, {}, 'none', {})
call <sid>hi('pythonTodo', s:Blue, {}, 'none', {})
call <sid>hi('pythonClassVar', s:Blue, {}, 'none', {})
call <sid>hi('pythonClassDef', s:BlueGreen, {}, 'none', {})

" TeX:
call <sid>hi('texStatement', s:Blue, {}, 'none', {})
call <sid>hi('texBeginEnd', s:Yellow, {}, 'none', {})
call <sid>hi('texBeginEndName', s:LightBlue, {}, 'none', {})
call <sid>hi('texOption', s:LightBlue, {}, 'none', {})
call <sid>hi('texBeginEndModifier', s:LightBlue, {}, 'none', {})
call <sid>hi('texDocType', s:Pink, {}, 'none', {})
call <sid>hi('texDocTypeArgs', s:LightBlue, {}, 'none', {})

" Git:
call <sid>hi('gitcommitHeader', s:Gray, {}, 'none', {})
call <sid>hi('gitcommitOnBranch', s:Gray, {}, 'none', {})
call <sid>hi('gitcommitBranch', s:Pink, {}, 'none', {})
call <sid>hi('gitcommitComment', s:Gray, {}, 'none', {})
call <sid>hi('gitcommitSelectedType', s:Green, {}, 'none', {})
call <sid>hi('gitcommitSelectedFile', s:Green, {}, 'none', {})
call <sid>hi('gitcommitDiscardedType', s:Red, {}, 'none', {})
call <sid>hi('gitcommitDiscardedFile', s:Red, {}, 'none', {})
call <sid>hi('gitcommitOverflow', s:Red, {}, 'none', {})
call <sid>hi('gitcommitSummary', s:Pink, {}, 'none', {})
call <sid>hi('gitcommitBlank', s:Pink, {}, 'none', {})

" GitGutter:
call s:hi("GitGutterAdd", s:Green, {}, 'none', {})
call s:hi("GitGutterChange", s:YellowOrange, {}, 'none', {})
call s:hi("GitGutterChangeDelete", s:Red, {}, 'none', {})
call s:hi("GitGutterDelete", s:Red, {}, 'none', {})

" Lua:
call <sid>hi('luaFuncCall', s:Yellow, {}, 'none', {})
call <sid>hi('luaFuncArgName', s:LightBlue, {}, 'none', {})
call <sid>hi('luaFuncKeyword', s:Pink, {}, 'none', {})
call <sid>hi('luaLocal', s:Pink, {}, 'none', {})
call <sid>hi('luaBuiltIn', s:Blue, {}, 'none', {})
