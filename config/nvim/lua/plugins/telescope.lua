return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- Replace "find files" with live grep
    {
      "<leader>fg",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Grep (Live Search)",
    },
  },
}
