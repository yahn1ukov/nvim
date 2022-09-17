local status, comment = pcall(require, 'nvim_comment')
if (not status) then return end

comment.setup({
    line_mapping = 'cc',
    operator_mapping = 'c'
})
