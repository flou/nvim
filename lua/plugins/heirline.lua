return {
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      local status = require "astroui.status"
      opts.statusline = {
        hl = { fg = "fg", bg = "bg" },

        status.component.mode {
          mode_text = {},
          surround = {
            padding = { left = 1, right = 1 },
          },
        },
        status.component.file_info {
          filename = { fallback = "Empty" },
          filetype = false,
          file_read_only = false,
          padding = { left = 1, right = 1 },
        },
        status.component.git_branch(),
        status.component.fill(),
        status.component.nav(),
      }
      opts.winbar = nil
    end,
  },
}
