local M = {}

M.general = {
  n = {
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
    ["<space>f"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "lsp formatting",
    },
    ["<space>rn"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "lsp rename",
    },
    ["<space>e"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "floating diagnostic",
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev()
      end,
      "goto prev",
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next()
      end,
      "goto_next",
    },

    ["<space>q"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "diagnostic setloclist",
    },
    ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  }
}

M.disabled = {
  n = {
     ["<Bslash>"] = "",
     ["<leader>fm"] = "",
     ["<leader>fw"] = "",
     ["<leader>f"] = "",
     ["<leader>ra"] = "",
     ["d]"] = "",
     ["<leader>q"] = "",
     ["<ESC>"] = "",
     ["<C-b>"] = "",
     ["<C-e>"] = "",
     ["<C-h>"] = "",
     ["<C-l>"] = "",
     ["<C-j>"] = "",
     ["<C-k>"] = "",
     ["<leader>n"] = "",
     ["<leader>rn"] = "",
     ["<C-c>"] = "",
     ["<C-n>"] = "",
  }
}

-- more keybinds!

return M
