-- this is an example of a lazy spec!
-- pattern is used in many places.
-- the things in M depend on the specific plugin.
-- M.config() is run when the plugin is loaded (i believe?)

local M = {
  "ellisonleao/gruvbox.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

function M.config()
  vim.cmd.colorscheme "gruvbox"
end

return M
