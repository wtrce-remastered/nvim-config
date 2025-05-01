-- set

vim.g.mapleader = ' '

vim.opt.nu = true
vim.opt.relativenumber = true

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

vim.cmd('set textwidth=200')
vim.cmd('set colorcolumn=200')

-- remap

vim.keymap.set('i', 'lk', '<Esc>', { noremap = true })

vim.keymap.set({'n', 's', 'v', 'o'}, 'j', 'h', { noremap = true })
vim.keymap.set({'n', 's', 'v', 'o'}, 'k', 'j', { noremap = true })
vim.keymap.set({'n', 's', 'v', 'o'}, 'l', 'k', { noremap = true })
vim.keymap.set({'n', 's', 'v', 'o'}, ';', 'l', { noremap = true })

vim.keymap.set('v', 'K', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'L', ":m '>-2<CR>gv=gv")

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>p', "\"_dP")

vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

vim.keymap.set('n', '<C-j>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-k>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-;>', ':wincmd l<CR>')
