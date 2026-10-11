local M = {}

local defaults = {
  -- Прозрачный фон для Normal и боковых панелей (терминальный фон просвечивает).
  transparent = false,
  -- Переопределения групп поверх схемы: { Comment = { italic = true }, ... }.
  overrides = {},
}

local config = vim.deepcopy(defaults)

---@param opts? table see `defaults`
function M.setup(opts)
  config = vim.tbl_deep_extend("force", vim.deepcopy(defaults), opts or {})
  assert(type(config.transparent) == "boolean", "aeris: transparent must be a boolean")
  assert(type(config.overrides) == "table", "aeris: overrides must be a table")
end

function M.load()
  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.cmd("highlight clear")
  -- :highlight clear удаляет g:colors_name, поэтому ставим его после очистки.
  vim.g.colors_name = "aeris"

  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  local palette = require("aeris.palette")
  require("aeris.highlights").set(palette, config)
end

return M
