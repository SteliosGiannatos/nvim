-- Load packer and plugins
require("stelios.packer")

-- Set basic options
require("stelios.set")

-- Load remaps
require("stelios.remap")

-- Load plugin configurations from after/plugin
local config_path = vim.fn.stdpath('config') .. '/after/plugin'
for _, file in ipairs(vim.fn.readdir(config_path)) do
  local source_file = config_path .. '/' .. file
  if vim.fn.filereadable(source_file) == 1 then
    vim.cmd('source ' .. source_file)
  end
end

