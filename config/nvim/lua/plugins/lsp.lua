return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Go
      gopls = {},

      -- JavaScript / TypeScript
      vtsls = {},

      -- HTML / CSS / JSON
      html = {},
      cssls = {},
      jsonls = {},

      -- C / C++
      clangd = {},

      -- Python
      pyright = {},

      -- Java
      jdtls = {},

      -- Rust
      rust_analyzer = {},

      -- Typst
      tinymist = {},
    },
  },
}
