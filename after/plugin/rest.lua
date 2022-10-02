local status, rest = pcall(require, 'rest-nvim')
if (not status) then return end

rest.setup()

