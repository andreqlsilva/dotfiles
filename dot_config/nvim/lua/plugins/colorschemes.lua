local function enable_transparency()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" } )
end
return {
  {
--  "EdenEast/nightfox.nvim",
    "folke/tokyonight.nvim",
--  "tiagovla/tokyodark.nvim",
--  "Mofiqul/dracula.nvim",
--  "AlexvZyl/nordic.nvim",
--  "navarasu/onedark.nvim",
--  "rebelot/kanagawa.nvim",
--  "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    opts = { },
    config = function()
      vim.cmd.colorscheme "tokyonight"
      enable_transparency()
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = true,
    opts = { transparent_mode = true },
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      theme = 'tokyonight',
    },
  }
}
