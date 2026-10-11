local terminal = {}

-- Нормальные (0–7) и яркие (8–15) слоты ANSI.
-- В палитре нет отдельных ярких оттенков, поэтому яркие 9–14 совпадают
-- с обычными; отличаются только чёрный (8) и белый (15).
-- Группа Terminal (фон/текст :terminal) задана в editor.lua.
terminal.load = function(aeris)
  vim.g.terminal_color_0  = aeris.bg_subtle  -- чёрный
  vim.g.terminal_color_1  = aeris.red        -- красный
  vim.g.terminal_color_2  = aeris.green      -- зелёный
  vim.g.terminal_color_3  = aeris.peach      -- жёлтый
  vim.g.terminal_color_4  = aeris.blue       -- синий
  vim.g.terminal_color_5  = aeris.pink       -- маджента
  vim.g.terminal_color_6  = aeris.aqua       -- циан
  vim.g.terminal_color_7  = aeris.fg_muted   -- белый (приглушённый)
  vim.g.terminal_color_8  = aeris.fg_subtle  -- яркий чёрный
  vim.g.terminal_color_9  = aeris.red        -- яркий красный
  vim.g.terminal_color_10 = aeris.green      -- яркий зелёный
  vim.g.terminal_color_11 = aeris.peach      -- яркий жёлтый
  vim.g.terminal_color_12 = aeris.blue       -- яркий синий
  vim.g.terminal_color_13 = aeris.pink       -- яркая маджента
  vim.g.terminal_color_14 = aeris.aqua       -- яркий циан
  vim.g.terminal_color_15 = aeris.fg         -- яркий белый
end

return terminal
