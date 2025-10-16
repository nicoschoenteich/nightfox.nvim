local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "saptecheddarkfox",
  light = true,
}

-- stylua: ignore
local palette = {
  black   = Shade.new("#5D36FF", 0.15, -0.15, true),
  red     = Shade.new("#CC00DC", 0.15, -0.15, true),
  green   = Shade.new("#049F9A", 0.15, -0.15, true),
  yellow  = Shade.new("#89D1FF", 0.15, -0.15, true),
  blue    = Shade.new("#1B90FF", 0.15, -0.15, true),
  magenta = Shade.new("#1B90FF", 0.15, -0.15, true),
  cyan    = Shade.new("#049F9A", 0.15, -0.15, true),
  white   = Shade.new("#FFFFFF", 0.15, -0.15, true),
  orange  = Shade.new("#CC00DC", 0.15, -0.15, true),
  pink    = Shade.new("#CC00DC", 0.15, -0.15, true),

  comment = "#002A86",

  bg0     = "#1B90FF", -- Dark bg (status line and float)
  bg1     = "#00144A", -- Default bg
  bg2     = "#C2FCEE", -- Lighter bg (colorcolm folds)
  bg3     = "#2CE0BF", -- Lighter bg (cursor line)
  bg4     = "#002A86", -- Conceal, border fg

  fg0     = "#D1EFFF", -- Lighter fg
  fg1     = "#FFFFFF", -- Default fg
  fg2     = "#FFFFFF", -- Darker fg (status line)
  fg3     = "#FF8AF0", -- Darker fg (line numbers, fold colums)

  sel0    = "#FF8AF0", -- Popup bg, visual selection bg
  sel1    = "#89D1FF", -- Popup sel bg, search bg
}

local function generate_spec(pal)
  -- stylua: ignore start
  local spec = {
    bg0  = pal.bg0,  -- Dark bg (status line and float)
    bg1  = pal.bg1,  -- Default bg
    bg2  = pal.bg2,  -- Lighter bg (colorcolm folds)
    bg3  = pal.bg3,  -- Lighter bg (cursor line)
    bg4  = pal.bg4,  -- Conceal, border fg

    fg0  = pal.fg0,  -- Lighter fg
    fg1  = pal.fg1,  -- Default fg
    fg2  = pal.fg2,  -- Darker fg (status line)
    fg3  = pal.fg3,  -- Darker fg (line numbers, fold colums)

    sel0 = pal.sel0, -- Popup bg, visual selection bg
    sel1 = pal.sel1, -- Popup sel bg, search bg
  }

  spec.syntax = {
    bracket     = spec.fg2,         -- Brackets and Punctuation
    builtin0    = pal.red.base,     -- Builtin variable
    builtin1    = pal.cyan.dim,     -- Builtin type
    builtin2    = pal.orange.dim,   -- Builtin const
    builtin3    = pal.red.dim,      -- Not used
    comment     = pal.comment,      -- Comment
    conditional = pal.magenta.dim,  -- Conditional and loop
    const       = pal.orange.dim,   -- Constants, imports and booleans
    dep         = spec.fg3,         -- Deprecated
    field       = pal.blue.base,    -- Field
    func        = pal.blue.dim,     -- Functions and Titles
    ident       = pal.cyan.base,    -- Identifiers
    keyword     = pal.magenta.base, -- Keywords
    number      = pal.orange.base,  -- Numbers
    operator    = spec.fg2,         -- Operators
    preproc     = pal.pink.dim,     -- PreProc
    regex       = pal.yellow.dim,   -- Regex
    statement   = pal.magenta.base, -- Statements
    string      = pal.green.base,   -- Strings
    type        = pal.yellow.base,  -- Types
    variable    = pal.black.base,   -- Variables
  }

  spec.diag = {
    error = pal.red.base,
    warn  = pal.yellow.base,
    info  = pal.blue.base,
    hint  = pal.green.base,
    ok    = pal.green.base,
  }

  spec.diag_bg = {
    error = C(spec.bg1):blend(C(spec.diag.error), 0.3):to_css(),
    warn  = C(spec.bg1):blend(C(spec.diag.warn), 0.3):to_css(),
    info  = C(spec.bg1):blend(C(spec.diag.info), 0.3):to_css(),
    hint  = C(spec.bg1):blend(C(spec.diag.hint), 0.3):to_css(),
    ok    = C(spec.bg1):blend(C(spec.diag.ok), 0.3):to_css(),
  }

  spec.diff = {
    add    = C(spec.bg1):blend(C(pal.green.base), 0.2):to_css(),
    delete = C(spec.bg1):blend(C(pal.red.base), 0.2):to_css(),
    change = C(spec.bg1):blend(C(pal.blue.base), 0.2):to_css(),
    text   = C(spec.bg1):blend(C(pal.blue.base), 0.4):to_css(),
  }

  spec.git = {
    add      = pal.green.base,
    removed  = pal.red.base,
    changed  = pal.yellow.base,
    conflict = pal.orange.base,
    ignored  = pal.comment,
  }

  -- stylua: ignore start

  return spec
end

return { meta = meta, palette = palette, generate_spec = generate_spec }
