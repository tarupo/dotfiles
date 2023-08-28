local n_keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

n_keymap('<leader>ff', '<cmd>Telescope find_files hidden=true<cr>')
n_keymap('<leader>fg', '<cmd>Telescope live_grep<cr>')
n_keymap('<leader>fb', '<cmd>Telescope buffers<cr>')
n_keymap('<leader>fh', '<cmd>Telescope help_tags<cr>')

