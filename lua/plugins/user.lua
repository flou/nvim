-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").gopls.setup {
        settings = {
          gopls = {
            gofumpt = true,
          },
        },
      }
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },

  {
    "akinsho/toggleterm.nvim",
    opts = function(_, opts)
      opts.direction = "float"
      opts.float_opts = {
        border = "single",
      }
    end,
  },
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {}
      return opts
    end,
  },

  -- You can disable default plugins as follows:
  { "stevearc/aerial.nvim",          enabled = false },
  { "NvChad/nvim-colorizer.lua",     enabled = false },
  { "max397574/better-escape.nvim",  enabled = false },
  { "js-everts/cmp-tailwind-colors", enabled = false },
}
