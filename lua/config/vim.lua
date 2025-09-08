-- set

vim.g.mapleader = ' '

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

vim.opt.hlsearch = false
vim.opt.incsearch = false

vim.opt.scrolloff = 16

vim.opt.updatetime = 50

vim.cmd('set number')
vim.cmd('set shiftwidth=4')

vim.cmd('set tabstop=4')
vim.cmd('set expandtab')

vim.cmd('set scrolloff=5')
vim.cmd('set incsearch')

vim.cmd('set textwidth=140')

vim.cmd('set conceallevel=2')

vim.keymap.set('n', '<leader>n', '_', { noremap = true })

vim.keymap.set('n', 'H', ':bprevious<cr>', { noremap = true, silent = true })
vim.keymap.set('n', 'L', ':bnext<cr>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-h>', ':w<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-y>', ':q!<cr>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-n>', '_hvk$d')

vim.keymap.set('n', '<leader>o', 'o<esc>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>O', 'O<esc>', { noremap = true, silent = true })

vim.keymap.set({ 'i', 'v', 's' }, '<C-t>', '<Esc>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-q>', '<C-w>')

vim.keymap.set('v', '<C-c>', ':s/')

vim.keymap.set('n', '<leader>t', 'f', { silent = true })
vim.keymap.set('n', '<leader>T', 'F', { silent = true })

vim.keymap.set('x', '<leader>p', "\"_dP")

vim.keymap.set({ 'n', 'v' }, '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

vim.keymap.set({ 'n', 'v' }, '<leader>d', "\"_d")

vim.keymap.set('n', '<Left>', ':wincmd h<CR>', { silent = true })
vim.keymap.set('n', '<Down>', ':wincmd j<CR>', { silent = true })
vim.keymap.set('n', '<Up>', ':wincmd k<CR>', { silent = true })
vim.keymap.set('n', '<Right>', ':wincmd l<CR>', { silent = true })

vim.keymap.set('n', 'J', '4j')
vim.keymap.set('n', 'K', '4k')
