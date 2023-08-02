local vo = vim.opt

vo.expandtab = true
vo.smarttab = true
vo.shiftwidth = 4
vo.tabstop = 4

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
