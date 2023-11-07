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
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup({
        -- pro spectrum classic
        filter = "classic"
      })
    end
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
  -- Live server
  {
    "barrett-ruth/live-server.nvim",
    config = function ()
      require('live-server').setup()
    end,
    cmd = { "LiveServerStart", "LiveServerStop" },
  }
}
