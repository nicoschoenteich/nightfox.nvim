local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "jouleworkdarkfox",
  light = false,
}

-- stylua: ignore
local palette = {
  black   = Shade.new("#2914A6", 0.15, -0.15),  -- deep purple (sel0 base)
  red     = Shade.new("#CC44DD", 0.15, -0.15),  -- magenta/pink
  green   = Shade.new("#F1F2F4", 0.15, -0.15),  -- same as white/fg1
  yellow  = Shade.new("#8080F7", 0.15, -0.15),  -- same as blue/cyan
  blue    = Shade.new("#8080F7", 0.15, -0.15),  -- purple (rgb 128 128 247)
  magenta = Shade.new("#68AFF9", 0.15, -0.15),  -- blue/cyan (rgb 104 175 249)
  cyan    = Shade.new("#8080F7", 0.15, -0.15),  -- same as purple
	white   = Shade.new("#F1F2F4", 0.15, -0.15),  -- bright white (rgb 241 242 244)
  orange  = Shade.new("#B396F8", 0.15, -0.15),  -- light purple (rgb 179 150 248)
  pink    = Shade.new("#CC44DD", 0.15, -0.15),  -- same as magenta/pink

  comment = "#7E879A",  -- gray (rgb 126 135 154)

  bg0     = "#0B0C0E",  -- Dark bg (status line and float)
  bg1     = "#171A20",  -- Default bg
  bg2     = "#0B0C0E",  -- Lighter bg (colorcolumn folds)
  bg3     = "#0E0637",  -- Cursor line (darker purple)
  bg4     = "#3055B0",  -- Conceal, border fg (slightly darker blue/cyan)

  fg0     = "#7E879A",  -- Lighter fg
  fg1     = "#F1F2F4",  -- Default fg 
	fg2     = "#F1F2F4",  -- Darker fg  
	fg3     = "#7E879A",  -- Darker fg (line numbers, fold columns)

  sel0    = "#2914A6",  -- Popup bg, visual selection bg 
  sel1    = "#2914A6",  -- Popup sel bg, search bg
}

local function generate_spec(pal)
  -- stylua: ignore start
  local spec = {
    bg0  = pal.bg0,
    bg1  = pal.bg1,
    bg2  = pal.bg2,
    bg3  = pal.bg3,
    bg4  = pal.bg4,

    fg0  = pal.fg0,
    fg1  = pal.fg1,
    fg2  = pal.fg2,
    fg3  = pal.fg3,

    sel0 = pal.sel0,
    sel1 = pal.sel1,
  }

  spec.syntax = {
    bracket     = spec.fg2,            -- Brackets and Punctuation
    builtin0    = pal.red.base,        -- Builtin variable
    builtin1    = pal.cyan.bright,     -- Builtin type
    builtin2    = pal.orange.bright,   -- Builtin const
    builtin3    = pal.red.bright,      -- Not used
    comment     = pal.comment,         -- Comment
    conditional = pal.magenta.bright,  -- Conditional and loop
    const       = pal.orange.bright,   -- Constants, imports and booleans
    dep         = spec.fg3,            -- Deprecated
    field       = pal.blue.base,       -- Field
    func        = pal.magenta.bright,  -- Functions and Titles
    ident       = pal.cyan.base,       -- Identifiers
    keyword     = pal.magenta.base,    -- Keywords
    number      = pal.orange.base,     -- Numbers
    operator    = spec.fg2,            -- Operators
    preproc     = pal.pink.bright,     -- PreProc
    regex       = pal.yellow.bright,   -- Regex
    statement   = pal.magenta.base,    -- Statements
    string      = pal.green.base,      -- Strings
    type        = pal.cyan.base,       -- Types
    variable    = pal.white.base,      -- Variables
  }

  spec.diag = {
    error = pal.red.base,
    warn  = pal.yellow.base,
    info  = pal.blue.base,
    hint  = pal.cyan.base,
    ok    = pal.green.base,
  }

  spec.diag_bg = {
    error = C(spec.bg1):blend(C(spec.diag.error), 0.15):to_css(),
    warn  = C(spec.bg1):blend(C(spec.diag.warn), 0.15):to_css(),
    info  = C(spec.bg1):blend(C(spec.diag.info), 0.15):to_css(),
    hint  = C(spec.bg1):blend(C(spec.diag.hint), 0.15):to_css(),
    ok    = C(spec.bg1):blend(C(spec.diag.ok), 0.15):to_css(),
  }

  spec.diff = {
    add    = C(spec.bg1):blend(C(pal.green.dim), 0.15):to_css(),
    delete = C(spec.bg1):blend(C(pal.red.dim), 0.15):to_css(),
    change = C(spec.bg1):blend(C(pal.blue.dim), 0.15):to_css(),
    text   = C(spec.bg1):blend(C(pal.cyan.dim), 0.3):to_css(),
  }

  spec.git = {
    add      = pal.green.base,
    removed  = pal.red.base,
    changed  = pal.yellow.base,
    conflict = pal.orange.base,
    ignored  = pal.comment,
  }

  -- stylua: ignore stop

  return spec
end

return { meta = meta, palette = palette, generate_spec = generate_spec }
