# aeris.nvim

A dark colorscheme for Neovim with a palette of pastel accents on a near-black background.

## Installation (lazy.nvim)

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

Then:

```vim
:colorscheme aeris
```

## Options

`require("aeris").setup(opts)` is called before `:colorscheme aeris`
(lazy.nvim does this automatically via `opts`).

| Option        | Type                      | Default      | Description |
|---------------|---------------------------|--------------|-------------|
| `transparent` | `boolean`                 | `false`      | Removes the background from `Normal`, `NormalNC`, `SignColumn`, `EndOfBuffer`, `FoldColumn`, `TabLineFill` and neo-tree panels. |
| `overrides`   | `table<string, table>`    | `{}`         | Overrides for groups on top of the scheme, arguments are the same as for `nvim_set_hl`. Example: `{ Comment = { italic = true } }`. |

## Plugins

Highlighting is available for: treesitter, LSP (diagnostics, inlay hints, references),
snacks.nvim, neo-tree, gitsigns, blink.cmp, which-key, flash.nvim.

lualine theme:

```lua
require("lualine").setup({ options = { theme = "aeris" } })
```

bufferline has no groups of its own: it computes its colors from the scheme's standard groups.

## Terminal

`g:terminal_color_0..15` are set from the palette. The palette has no separate
bright shades: slots 9–14 match the normal ones, only 8 and 15 differ.

## Palette

Colors are defined in `lua/aeris/palette.lua`. Roles:

- `fg_muted` — comments and secondary text (≈4.6:1 against the background);
- `fg_subtle` — secondary text, separators, inlay hints (≈3.1:1);
- `fg_ghost` — decoration only (whitespace, nontext, indent). Do not use for text.

## Development

Checks without UI:

```sh
nvim --headless -u NONE -l tests/check.lua
```

The script checks loading, the terminal palette, contrast of key groups,
an error on duplicate groups, `setup()` validation, `transparent` and `overrides`.

## License

See [LICENSE.txt](LICENSE.txt).
