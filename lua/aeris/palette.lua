-- Palette. Color roles:
--   fg_muted  — comments, secondary text (≈4.5:1 to bg)
--   fg_subtle — secondary text, separators, inlay hints (≈3:1 to bg)
--   fg_ghost  — decoration ONLY: whitespace, nontext, indent markers.
--               Do not use for readable text (≈1.5:1).
-- Backgrounds: floats — bg_overlay, side panels — bg_subtle, selection — bg_active.
local aeris = {
  -- Backgrounds — from darkest to lightest
  bg         = "#0a0a0a",
  bg_subtle  = "#0f0f0f",
  bg_raised  = "#141414",
  bg_overlay = "#1a1a1a",
  bg_border  = "#1f1f1f",
  bg_active  = "#242424",

  fg         = "#f0f0f0",
  fg_muted   = "#7a7a7a",
  fg_subtle  = "#5f5f5f",
  fg_ghost   = "#303030",

  -- Accents
  pink       = "#F2BAC9", -- keywords
  red        = "#F2A0A8", -- errors
  aqua       = "#BAF2E9", -- functions, directories, headings
  blue       = "#BAD7F2", -- preprocessor, attributes, info
  green      = "#B0F2B4", -- types, diff additions
  peach      = "#F2E2BA", -- strings, numbers, constants
  orange     = "#F2C8A0", -- warnings, todo
}

return aeris
