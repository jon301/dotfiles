require "jon301.base"
require "jon301.highlights"
require "jon301.maps"
require "jon301.plugins"

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('jon301.macos')
end
if is_win then
  require('jon301.windows')
end
