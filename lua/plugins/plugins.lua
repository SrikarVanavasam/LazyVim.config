return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
  {
    "obsidian-nvim/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    event = {
      -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
      -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
      -- refer to `:h file-pattern` for more examples
      "BufReadPre /home/srikar/notes/*.md",
      "BufNewFile /home/srikar/notes/*.md",
    },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
      -- see below for full list of optional dependencies 👇
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope.nvim",
      -- "nvim-treesitter/nvim-treesitter",
      "MeanderingProgrammer/render-markdown.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "notes",
          path = "/home/srikar/notes/",
        },
      },
      templates = {
        folder = "templates",
      },
      daily_notes = {
        teamplate = "daily-note.md",
        workdays_only = false,
      },
      ---@param url string
      follow_url_func = function(url)
        vim.ui.open(url) -- need Neovim 0.10.0+
      end,
    },
  },
}
