return {
  "chomosuke/typst-preview.nvim",
  ft = "typst",
  version = "1.*",
  config = function()
    require("typst-preview").setup({
      -- open preview automatically
      open_cmd = "firefox %s", -- or "xdg-open", "open" (macOS)
    })
    vim.api.nvim_create_autocmd("BufWritePost", {
      pattern = "*.typ",
      callback = function()
        vim.cmd("silent !typst compile % %:r.pdf")
      end,
    })
  end,
}
