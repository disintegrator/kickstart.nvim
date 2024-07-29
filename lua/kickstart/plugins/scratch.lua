return {
  '0xJohnnyboy/scretch.nvim',
  commit = '633eba52dbb189c53008abec0fc83f040ebe00f9',
  dependencies = { 'ibhagwan/fzf-lua' },
  config = function()
    local scretch = require 'scretch'
    scretch.setup {
      backend = 'fzf-lua', -- also accpets "fzf-lua"
    }
    -- stylua: ignore
    local function bind()
      vim.keymap.set('n', '<c-s>n', scretch.new_named, { desc = '[S]cratch [N]amed' })
      vim.keymap.set('n', '<c-s>c', scretch.new, { desc = '[S]cratch [C]reate' })
      vim.keymap.set('n', '<c-s>ft', scretch.new_from_template, { desc = '[S]cratch [F]rom [T]emplate' })
      vim.keymap.set('n', '<c-s>l', scretch.last, { desc = '[S]cratch [L]ast' })
      vim.keymap.set('n', '<c-s>s', scretch.search, { desc = '[S]cratch [S]earch' })
      vim.keymap.set('n', '<c-s>t', scretch.edit_template, { desc = '[S]cratch [E]dit [T]emplate' })
      vim.keymap.set('n', '<c-s>g', scretch.grep, { desc = '[S]cratch [G]rep' })
      vim.keymap.set('n', '<c-s>v', scretch.explore, { desc = '[S]cratch [ ]Explore' })
      vim.keymap.set('n', '<c-s>at', scretch.save_as_template, { desc = '[S]cratch [A]s [T]emplate' })
    end
    bind()
  end,
}
