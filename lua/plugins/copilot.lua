return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<Right>",
          next = "<Esc>]",
          prev = "<Esc>[",
          dismiss = "<C-]>",
        },
      },
    },
  },
}
