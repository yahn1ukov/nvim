local status, spellsitter = pcall(require, 'spellsitter')
if (not status) then return end

spellsitter.setup {
    enable = true
}
