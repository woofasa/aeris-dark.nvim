# aeris.nvim

Тёмная цветовая схема для Neovim с палитрой из пастельных акцентов на почти чёрном фоне.

## Установка (lazy.nvim)

```lua
{
  "woofasa/aeris-nvim",
  name = "aeris",
  priority = 1000,
  opts = {
    transparent = false,
    overrides = {},
  },
}
```

Затем:

```vim
:colorscheme aeris
```

## Опции

`require("aeris").setup(opts)` вызывается до `:colorscheme aeris`
(lazy.nvim делает это автоматически через `opts`).

| Опция         | Тип                       | По умолчанию | Описание |
|---------------|---------------------------|--------------|----------|
| `transparent` | `boolean`                 | `false`      | Убирает фон у `Normal`, `NormalNC`, `SignColumn`, `EndOfBuffer`, `FoldColumn`, `TabLineFill` и панелей neo-tree. |
| `overrides`   | `table<string, table>`    | `{}`         | Переопределения групп поверх схемы, аргументы как у `nvim_set_hl`. Пример: `{ Comment = { italic = true } }`. |

## Плагины

Подсветка есть для: treesitter, LSP (диагностика, inlay hints, references),
snacks.nvim, neo-tree, gitsigns, blink.cmp, which-key, flash.nvim.

Тема lualine:

```lua
require("lualine").setup({ options = { theme = "aeris" } })
```

bufferline не имеет собственных групп: он вычисляет цвета из стандартных групп схемы.

## Терминал

`g:terminal_color_0..15` выставляются из палитры. В палитре нет отдельных
ярких оттенков: слоты 9–14 совпадают с обычными, отличаются только 8 и 15.

## Палитра

Цвета в `lua/aeris/palette.lua`. Роли:

- `fg_muted` — комментарии и второстепенный текст (≈4.6:1 к фону);
- `fg_subtle` — вторичный текст, разделители, inlay hints (≈3.1:1);
- `fg_ghost` — только декор (whitespace, nontext, indent). Для текста не использовать.

## Разработка

Проверки без UI:

```sh
nvim --headless -u NONE -l tests/check.lua
```

Скрипт проверяет загрузку, терминальную палитру, контраст ключевых групп,
ошибку на дубли групп, валидацию `setup()`, `transparent` и `overrides`.

## Лицензия

См. [LICENSE.txt](LICENSE.txt).
