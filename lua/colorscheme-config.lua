vim.o.background = "dark"

require("gruvbox").setup({
  contrast = "hard",
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true,
  dim_inactive = false,
  transparent_mode = false,

  palette_overrides = {
    -- dark0_hard = "#171421",
  },

  overrides = {
    -- SignColumn = { bg = "#171421" },
    SignColumn = {bg = "#1d2021"},


  }
})

vim.cmd("colorscheme gruvbox")
