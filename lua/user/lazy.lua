-- .. is string concatenation in lua!
-- prepends the lazy path to the runtime path (i do not know why)
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- all specs passed to lazy via one global default
require("lazy").setup {
  spec = LAZY_PLUGIN_SPEC,
  install = {
    colorscheme = { "cyberdream", "default" },
  },
  ui = {
    border = "rounded",
  },
  change_detection = {
    enabled = true,
    notify = false,
  },
}
