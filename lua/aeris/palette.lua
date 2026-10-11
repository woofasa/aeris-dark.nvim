-- Палитра. Роли цветов:
--   fg_muted  — комментарии, второстепенный текст (≈4.5:1 к bg)
--   fg_subtle — вторичный текст, разделители, inlay hints (≈3:1 к bg)
--   fg_ghost  — ТОЛЬКО декор: whitespace, nontext, indent-маркеры.
--               Не использовать для читаемого текста (≈1.5:1).
-- Фоны: floats — bg_overlay, боковые панели — bg_subtle, выделение — bg_active.
local aeris = {
  -- Фоны — от самого тёмного к светлому
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

  -- Акценты
  pink       = "#F2BAC9", -- ключевые слова
  red        = "#F2A0A8", -- ошибки
  aqua       = "#BAF2E9", -- функции, директории, заголовки
  blue       = "#BAD7F2", -- препроцессор, атрибуты, info
  green      = "#B0F2B4", -- типы, добавления в diff
  peach      = "#F2E2BA", -- строки, числа, константы
  orange     = "#F2C8A0", -- предупреждения, todo
}

return aeris
