return {

  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    debugger = { -- integrate with nvim dap + install dart code debugger
      enabled = true,

      -- if empty dap will not stop on any exceptions, otherwise it will stop on those specified
      -- see |:help dap.set_exception_breakpoints()| for more info
    },
    config = true,
  },
}
