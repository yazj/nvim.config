return {
  "telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    requires = { { "nvim-lua/plenary.nvim" }, { "HUAHUAI23/telescope-dapzzzz" } },
    config = function()
      local telescope = require("telescope")
      telescope.load_extension("fzf")
      require("telescope").setup({})
      require("telescope").load_extension("i23")
    end,
    keys = {
      {
        "<leader>sm",
        function()
          require("telescope.builtin").marks({ hidden = true })
        end,
      },
    },
  },
}
