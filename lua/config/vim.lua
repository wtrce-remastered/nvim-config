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

vim.opt.cursorline = true

-- insert mode movements

vim.keymap.set('i', '<C-j>', function() vim.api.nvim_feedkeys('(', 'i', true) end, { silent = true })
vim.keymap.set('i', '<C-l>', function() vim.api.nvim_feedkeys('{', 'i', true) end, { silent = true })

vim.keymap.set('i', '<C-q>', function() vim.api.nvim_feedkeys('=', 'i', true) end, { silent = true })
vim.keymap.set('i', '<C-f>', function() vim.api.nvim_feedkeys('!', 'i', true) end, { silent = true })

vim.keymap.set('i', '<C-b>', function() vim.api.nvim_feedkeys('"', 'i', true) end, { silent = true })
vim.keymap.set('i', '<C-r>', function() vim.api.nvim_feedkeys('|', 'i', true) end, { silent = true })

vim.keymap.set('i', '<C-d>', function() vim.api.nvim_feedkeys('.', 'i', true) end, { silent = true })

-- others

vim.keymap.set('n', '<C-f>', '<Nop>', { noremap = true })

vim.keymap.set('n', 'H', ':bprevious<cr>', { noremap = true, silent = true })
vim.keymap.set('n', 'L', ':bnext<cr>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-h>', ':w<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-y>', ':q!<cr>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-n>', '_hvk$d')

vim.keymap.set('n', '<leader>o', 'o<esc>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>O', 'O<esc>', { noremap = true, silent = true })

vim.keymap.set('i', '<C-k>', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
vim.keymap.set('t', '<C-k>', '<C-\\><C-n>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-q>', '<C-w>')

vim.keymap.set('x', '<leader>p', "\"_dP")

vim.keymap.set({ 'n', 'v' }, '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

vim.keymap.set({ 'n', 'v' }, '<leader>d', "\"_d")

vim.keymap.set('n', '<Left>', ':wincmd h<CR>', { silent = true })
vim.keymap.set('n', '<Down>', ':wincmd j<CR>', { silent = true })
vim.keymap.set('n', '<Up>', ':wincmd k<CR>', { silent = true })
vim.keymap.set('n', '<Right>', ':wincmd l<CR>', { silent = true })

vim.keymap.set('n', '<C-w>h', '<C-w>H', { noremap = true, silent = true })
vim.keymap.set('n', '<C-w>j', '<C-w>J', { noremap = true, silent = true })
vim.keymap.set('n', '<C-w>k', '<C-w>K', { noremap = true, silent = true })
vim.keymap.set('n', '<C-w>l', '<C-w>L', { noremap = true, silent = true })

vim.keymap.set('n', 'J', '4j')
vim.keymap.set('n', 'K', '4k')

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

vim.keymap.set("n", "<C-\\>", '<cmd>lua vim.lsp.buf.format()<cr>:w<cr>')

vim.keymap.set('n', '<leader>gl', function() vim.diagnostic.open_float({ scope = 'cursor' }) end)

-- gradle

vim.keymap.set('n', 'grlb', ':!gradle clean build<cr>')
vim.keymap.set('n', 'grlpm', ':!gradle publishToMavenLocal<cr>')
vim.keymap.set('n', 'grlpp', ':!gradle generateProto<cr>')

-- typr

vim.keymap.set('n', '<leader>xt', ':Typr<cr>')
