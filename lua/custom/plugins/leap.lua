return {
  {
    'ggandor/leap.nvim',
    opts = function()
      vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward)')
      vim.keymap.set({ 'n', 'x', 'o' }, 'S', '<Plug>(leap-backward)')
      vim.keymap.set({ 'n', 'x', 'o' }, 'gs', '<Plug>(leap-from-window)')
      vim.keymap.set({ 'x', 'o' }, 'x', '<Plug>(leap-forward-till)')
      vim.keymap.set({ 'x', 'o' }, 'X', '<Plug>(leap-backward-till)')
      local preview_filter = function(ch0, ch1, ch2)
        return not (ch1:match '%s' or ch0:match '%a' and ch1:match '%a' and ch2:match '%a')
      end
      return { preview_filter }
    end,
  },
}
