return {
  {
    'rcarriga/nvim-notify',
    config = function()
      vim.notify = require("notify")
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
    },
  },
  { 'nvim-tree/nvim-web-devicons' },
  { 'bluz71/nvim-linefly' },
  {
    "rcarriga/nvim-dap-ui",
    dependencies =
    {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio"
    }
  },
}
