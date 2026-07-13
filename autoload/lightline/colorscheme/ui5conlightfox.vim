if has('nvim')
  let s:p = v:lua.require('nightfox.util.lightline').generate('ui5conlightfox')
else
  lua nightfox_vim = require('nightfox.util.lightline').dump('ui5conlightfox')
  let s:palette_str = luaeval('nightfox_vim')
  let s:p = eval(s:palette_str)
endif
let g:lightline#colorscheme#ui5conlightfox#palette = lightline#colorscheme#fill(s:p)
