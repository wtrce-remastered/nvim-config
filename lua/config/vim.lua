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

vim.cmd('set textwidth=140')

-- remap

vim.keymap.set('n', '<C-f>', '<Nop>', { noremap = true })

vim.keymap.set('i', 'lk', '<Esc>', { noremap = true })
vim.keymap.set('t', 'lk', '<C-\\><C-n>', { noremap = true })

vim.keymap.set({ 'n', 's', 'v', 'o' }, 'j', "h", { noremap = true })
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'k', 'j', { noremap = true })
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'l', 'k', { noremap = true })
vim.keymap.set({ 'n', 's', 'v', 'o' }, ';', 'l', { noremap = true })

vim.keymap.set('v', 'K', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'L', ":m '>-2<CR>gv=gv")

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>p', "\"_dP")

vim.keymap.set({ 'n', 'v' }, '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

vim.keymap.set({ 'n', 'v' }, '<leader>d', "\"_d")

vim.keymap.set('n', '<Left>', ':wincmd h<CR>', {silent = true})
vim.keymap.set('n', '<Down>', ':wincmd j<CR>', {silent = true})
vim.keymap.set('n', '<Up>', ':wincmd k<CR>', {silent = true})
vim.keymap.set('n', '<Right>', ':wincmd l<CR>', {silent = true})

vim.keymap.set('n', '<C-w>j', '<C-w>H', { noremap = true, silent = true })
vim.keymap.set('n', '<C-w>k', '<C-w>J', { noremap = true, silent = true })
vim.keymap.set('n', '<C-w>l', '<C-w>K', { noremap = true, silent = true })
vim.keymap.set('n', '<C-w>;', '<C-w>L', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>w', ':close<CR>')

vim.keymap.set('n', '<leader>t', function()
    vim.cmd('belowright split | terminal')
    local win = vim.api.nvim_get_current_win()
    vim.api.nvim_win_set_height(win, 20)
    vim.cmd('startinsert')
end)

-- lsp

vim.keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
vim.keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>')
vim.keymap.set('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')

vim.keymap.set('n', '<leader>gl', function() vim.diagnostic.open_float({ scope = 'cursor' }) end)
