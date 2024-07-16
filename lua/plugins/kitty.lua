return {
  {
    "knubie/vim-kitty-navigator",
    build = {
      "cp ./*.py ~/.config/kitty/",
    },
    keys = {
      { "<C-j>", "<cmd>KittyNavigateDown<cr>" },
      { "<C-h>", "<cmd>KittyNavigateLeft<cr>" },
      { "<C-l>", "<cmd>KittyNavigateRight<cr>" },
      { "<C-k>", "<cmd>KittyNavigateUp<cr>" },
    },
  },
}
