require("notify").setup({
  background_colour = "#000000",
})

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
  { "shatur/neovim-ayu" },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      colors = {
        palette = {
          -- change all usages of these colors
          -- sumiInk0 = "#000000",
          -- fujiWhite = "#FFFFFF",
        },
        theme = {
          -- change specific usages for a certain theme, or for all of them
          wave = {

            ui = {
              bg = "none",
              float = {
                bg = "none",
              },
            },
          },
          dragon = {
            syn = {
              parameter = "yellow",
            },
          },
          all = {
            ui = {
              bg = "none",
              bg_gutter = "none",
            },
          },
        },
      },
    },
  },
  { "ellisonleao/gruvbox.nvim" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      term_colors = true,
      transparent_background = true,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#B0B0B0",
        },
      },
      integrations = {
        telescope = {
          enabled = true,
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
      },
    },
  },
}
