-- event is the point in lazy where it loads the plugin (look at lazy docs)
local M = {
  "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
}

function M.config()
  require "nvim-web-devicons"
end

return M
