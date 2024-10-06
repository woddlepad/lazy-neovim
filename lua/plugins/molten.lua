return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
    opts = {
      rocks = { "magick" }, -- specifies a list of rocks to install
      luarocks_build_args = { "--lua-version=5.1" },
      -- luarocks_build_args = { "--with-lua=/my/path" }, -- extra options to pass to luarocks's configuration script
    },
  },
  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty", -- Kitty will provide the best experience, but you need a compatible terminal
      integrations = {}, -- do whatever you want with image.nvim's integrations
      max_width = 100, -- tweak to preference
      max_height = 120, -- ^
      max_height_window_percentage = math.huge, -- this is necessary for a good experience
      max_width_window_percentage = math.huge,
      window_overlap_clear_enabled = true,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    },
  },
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
      -- these are examples, not defaults. Please see the readme
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_output_win_max_height = 20
      vim.keymap.set("n", "<leader>mi", ":MoltenInit<CR>", { silent = true, desc = "Initialize the plugin" })
      vim.keymap.set("n", "<leader>rl", ":MoltenEvaluateLine<CR>", { silent = true, desc = "evaluate line" })
      vim.keymap.set("n", "<leader>rr", ":MoltenReevaluateCell<CR>", { silent = true, desc = "re-evaluate cell" })
      vim.keymap.set(
        "v",
        "<leader>r",
        ":<C-u>MoltenEvaluateVisual<CR>gv",
        { silent = true, desc = "evaluate visual selection" }
      )

      vim.keymap.set("n", "<leader>rd", ":MoltenDelete<CR>", { silent = true, desc = "molten delete cell" })
      vim.keymap.set("n", "<leader>oh", ":MoltenHideOutput<CR>", { silent = true, desc = "hide output" })
      vim.keymap.set(
        "n",
        "<leader>os",
        ":noautocmd MoltenEnterOutput<CR>",
        { silent = true, desc = "show/enter output" }
      )
    end,
  },
}
