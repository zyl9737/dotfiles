return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  dependencies = {
    -- include a picker of your choice, see picker section for more details
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    lang = "python3",
    storage = {
      home = vim.fn.expand("~/Code/leetcode"),
      cache = vim.fn.expand("~/Code/leetcode/.cache"),
    },
    cn = {
      enabled = true,
      translator = true,
      translate_problems = true,
    },
  },
}
