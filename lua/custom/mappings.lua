---@type MappingsTable
local M = {}

M.general = {
  i = {
    ["<C-s>"] = { "<Esc><cmd> w <CR>", "Save file" },
  },
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>qq"] = { "<cmd>qa<cr>", "quit all" },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

M.tabufline = {
  plugin = true,

  n = {
    -- cycle through buffers
    ["<S-l>"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["<S-h>"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },

    -- close buffer + hide terminal buffer
    ["<leader>x"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "Close buffer",
    },
  },
}


return M