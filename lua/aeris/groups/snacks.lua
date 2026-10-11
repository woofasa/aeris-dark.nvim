local snacks = {}

snacks.load = function(aeris)
  return {
    SnacksDashboardHeader    = { fg = aeris.pink },
    SnacksDashboardTitle     = { fg = aeris.pink },
    SnacksDashboardDesc      = { fg = aeris.aqua },
    SnacksDashboardIcon      = { fg = aeris.aqua },
    SnacksDashboardKey       = { fg = aeris.peach },
    SnacksDashboardFooter    = { fg = aeris.fg_muted },
    SnacksDashboardSpecial   = { fg = aeris.peach },

    SnacksPickerDir          = { fg = aeris.fg },
    SnacksPickerFile         = { fg = aeris.fg },
    SnacksPickerBorder       = { fg = aeris.fg_subtle },
    SnacksPickerTitle        = { fg = aeris.aqua, bold = true },
    SnacksPickerMatch        = { fg = aeris.pink, bold = true },
    SnacksPickerSelected     = { fg = aeris.aqua },
    SnacksPickerCurrent      = { bg = aeris.bg_raised },
    SnacksPickerSearch       = { fg = aeris.fg },
    SnacksPickerPrompt       = { fg = aeris.pink },
    SnacksPickerPreviewTitle = { fg = aeris.aqua, bold = true },
    SnacksPickerPreview      = { fg = aeris.fg },
    SnacksPickerInputBorder  = { fg = aeris.aqua },
    SnacksPickerInputTitle   = { fg = aeris.aqua },
  }
end

return snacks
