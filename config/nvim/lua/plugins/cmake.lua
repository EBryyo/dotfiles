return {
  {
    "Civitasv/cmake-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      -- Where build directories go
      cmake_build_directory = "build/${variant:buildType}",

      -- Use the built-in terminal runner
      cmake_executor = {
        name = "terminal",
      },
      cmake_runner = {
        name = "terminal",
      },

      -- Optional but useful
      cmake_notifications = {
        enabled = true,
      },
    },
  },
}
