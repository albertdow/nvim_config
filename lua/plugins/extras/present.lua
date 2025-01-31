return {
  {
    "tjdevries/present.nvim",
    event = { "VeryLazy" },
    config = function()
      require("present").setup({})
    end,
  },
}
