return {
--  "savq/melange-nvim",
  "sho-87/kanagawa-paper.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- can adjust colors, styles, and transparency here
    require('kanagawa-paper').setup({
      transparent = true,
    })
  vim.cmd("colorscheme kanagawa-paper")
end,
}
