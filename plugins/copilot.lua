return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  lazy = false,
  opts = {
    panel = {
      enabled = true,
      auto_refresh = false,
      keymap = {
        jump_prev = "[[",
        jump_next = "]]",
        accept = "<CR>",
        refresh = "gr",
        open = "<M-CR>"
      },
      layout = {
        position = "bottom", -- | top | left | right
        ratio = 0.4
      },
    },
    suggestion = {
      enabled = true,
      auto_trigger = true,
      debounce = 75,
      keymap = {
        accept = "<M-l>",
        accept_word = false,
        accept_line = false,
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<C-]>",
      },
    },
    filetypes = {
      yaml = true,
      markdown = true,
      help = true,
      gitcommit = true,
      gitrebase = true,
      hgcommit = true,
      svn = false,
      cvs = false,
      javascript = true, -- allow specific filetype
      typescript = true, -- allow specific filetype
      rust = true, -- allow specific filetype
      lua = true, -- allow specific filetype
      ["*"] = true,
      ["."] = true,
    },
    copilot_node_command = 'node', -- Node.js version must be > 16.x
    server_opts_overrides = {},
  },
}
