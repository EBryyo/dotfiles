-- ~/.config/nvim/lua/plugins/arduino.lua
vim.g.arduino_use_terminal = 0
vim.g.arduino_terminal = "botright 12split | terminal"
vim.g.arduino_auto_close = 1
vim.api.nvim_create_autocmd("TermClose", {
  pattern = "*arduino*",
  callback = function()
    vim.schedule(function()
      vim.cmd("bdelete!")
    end)
  end,
})

return {
  {
    "stevearc/vim-arduino",
    cmd = {
      "ArduinoAttach",
      "ArduinoChooseBoard",
      "ArduinoChooseProgrammer",
      "ArduinoChoosePort",
      "ArduinoVerify",
      "ArduinoUpload",
      "ArduinoSerial",
      "ArduinoUploadAndSerial",
      "ArduinoInfo",
    },
    ft = { "arduino", "ino" },
    keys = {
      { "<leader>ab", "<cmd>ArduinoChooseBoard<cr>", desc = "Arduino: Choose Board" },
      { "<leader>aa", "<cmd>ArduinoAttach<cr>", desc = "Arduino: Attach Sketch" },
      { "<leader>ap", "<cmd>ArduinoChoosePort<cr>", desc = "Arduino: Choose Port" },
      { "<leader>av", "<cmd>ArduinoVerify<cr>", desc = "Arduino: Verify" },
      { "<leader>au", "<cmd>ArduinoUpload<cr>", desc = "Arduino: Upload" },
      { "<leader>as", "<cmd>ArduinoSerial<cr>", desc = "Arduino: Serial Monitor" },
    },
  },
}
