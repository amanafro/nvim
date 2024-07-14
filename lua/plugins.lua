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
  {
    "thePrimeagen/vim-be-good",
    cmd = "VimBeGood",
    config = function()
      require("VimBeGood").setup {}
    end,
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
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 700
    end,
    opts = {},
  },
}
