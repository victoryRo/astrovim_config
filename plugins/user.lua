return {
  --------------------------------------------------------------------- THEMES
  --NOTE: description themes
  {
    "sainnhe/sonokai",
    init = function()
      -- maia atlantis
      vim.g.sonokai_style = "atlantis"
    end,
  },
  {
    "tanvirtin/monokai.nvim",
    init = function ()
      -- soda ristretto
      require("monokai").setup({})
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {},
  },
  {
    "glepnir/zephyr-nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter"},
    init = function()
      require("zephyr")
    end
  },
  {
    "mhartington/oceanic-next"
  },
  {
    "Mofiqul/adwaita.nvim",
    lazy = false,
    priority = 1000,

    config = function()
        vim.g.adwaita_darker = false
        vim.g.adwaita_disable_cursorline = true
        vim.g.adwaita_transparent = false
    end
  },

  --------------------------------------------------------------------- PLUGINS
  -- TODO: description plugins
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix", "TodoLocList", "TodoTelescope" },
  },
  -- vim-go all pkgs about GO
  {
    "fatih/vim-go",
    cmd = { "GoRun", "GoBuild",  "GoInstallBinaries", "GoUpdateBinaries" }
  },
  -- live server
  {
    "barrett-ruth/live-server.nvim",
    config = function ()
      require('live-server').setup()
    end,
    cmd = { "LiveServerStart", "LiveServerStop" },
  },
  -- signature help
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts) require'lsp_signature'.setup(opts) end
  },
  {
    "Exafunction/codeium.vim",
     event = "User AstroFile",
    config = function()
      vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
      vim.keymap.set("i", "<c-u>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
      vim.keymap.set("i", "<c-d>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
      vim.keymap.set("i", "<c-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
      vim.keymap.set("n", "N", function()
      if vim.g.codeium_enabled == true then
        vim.cmd "CodeiumDisable"
      else
        vim.cmd "CodeiumEnable"
      end
    end, { noremap = true, desc = "Toggle Codeium active" })
  end,
  }

}
