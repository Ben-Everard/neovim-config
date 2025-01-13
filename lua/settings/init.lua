local vo = vim.opt

vo.expandtab = true
vo.smarttab = true
vo.shiftwidth = 2
vo.tabstop = 2

vo.hlsearch = true
vo.incsearch = true
vo.ignorecase = true
vo.smartcase = true

vo.smartindent = true
vo.scrolloff = 5
vo.splitbelow = true
vo.splitright = true

vo.relativenumber = true
vo.number = true
vo.termguicolors = true
vo.cursorline = true

vo.hidden = true

vim.g.dart_style_guide = 2
vim.g.dart_format_on_save = 1

vim.api.nvim_set_option("clipboard","unnamed")


-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

