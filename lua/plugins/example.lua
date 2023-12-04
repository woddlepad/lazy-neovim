vim.diagnostic.config({
  virtual_text = {
    -- source = "always",  -- Or "if_many"
    prefix = "●", -- Could be '■', '▎', 'x'
  },
  severity_sort = true,
  float = {
    source = "always", -- Or "if_many"
  },
})
return {

  {
    "linux-cultist/venv-selector.nvim",
    cmd = "VenvSelect",
    opts = function(_, opts)
      if require("lazyvim.util").has("nvim-dap-python") then
        opts.dap_enabled = true
      end

      opts.anaconda_envs_path = "/opt/homebrew/Caskroom/miniconda/base/envs"

      opts.search_workspace = false
      return vim.tbl_deep_extend("force", opts, {
        name = {
          "venv",
          ".venv",
          "env",
          ".env",
        },
      })
    end,
    keys = { -- Keymap to open VenvSelector to pick a venv.
      { "<leader>cv", "<cmd>VenvSelect<cr>" },
      -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
      { "<leader>cc", "<cmd>VenvSelectCached<cr>" },
    },
  },
}
