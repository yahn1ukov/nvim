require('yahn1ukov.options')
require('yahn1ukov.keymaps')
require('yahn1ukov.plugins')

local has = function(x)
    return vim.fn.has(x) == 1
end

local is_mac = has 'macunix'
local is_win = has 'win32'

if is_mac then
    require('yahn1ukov.macos')
end

if is_win then
    require('yahn1ukov.windows')
end
