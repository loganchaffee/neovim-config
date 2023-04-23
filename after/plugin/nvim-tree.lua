-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  disable_netrw = true,
  hijack_netrw = true,
  view = {
  },
  -- auto_close = true,
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
    root_folder_label = false
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<leader>b', ':NvimTreeToggle \n', {})
