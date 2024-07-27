return {
  'ibhagwan/fzf-lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('fzf-lua').setup {}
    local fzf = require 'fzf-lua'

    -- stylua: ignore
    local function bind()
    vim.keymap.set('n', '<leader>sf', fzf.files, { desc = '[S]earch [F]iles' })
    vim.keymap.set('n', '<leader>sk', fzf.keymaps, { desc = '[S]earch [K]eys' })
    vim.keymap.set('n', '<leader>sd', fzf.diagnostics_workspace, { desc = '[S]earch [D]iagnostics' })
    vim.keymap.set('n', '<leader>sc', fzf.git_status, { desc = '[S]earch [C]hanged Files' })
    vim.keymap.set('n', '<leader>sm', fzf.marks, { desc = '[S]earch [M]arks' })
    vim.keymap.set('n', '<leader>st', fzf.tags, { desc = '[S]earch [T]ags' })
    vim.keymap.set('n', '<leader>/', fzf.lgrep_curbuf, { desc = '[S]earch [ ]Current File' })
    vim.keymap.set('n', '<leader><leader>', fzf.buffers, { desc = '[S]earch [ ]Buffers' })
    end
    bind()
  end,
}
