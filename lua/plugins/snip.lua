return {
  {
    "rafamadriz/friendly-snippets",

    config = function()
      require("luasnip").filetype_extend("dart", { "flutter" })
      require("luasnip").filetype_extend("javascript", { "react-ts" })
      require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./flutter-riverpod-snippets" } })
    end,
  },
}
