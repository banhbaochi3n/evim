return {
  {
    "echasnovski/mini.nvim",
    config = function()
      require("mini.icons").setup()
      require("mini.surround").setup()
      -- require("mini.statusline").setup()
      -- require("mini.tabline").setup()
    end,
  },
}
