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

vim.keymap.set('n', '<C-p>', ':e #<cr>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-j>', ':w<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-q>', ':q!<cr>', { noremap = true, silent = true })

vim.keymap.set('n', 'J', '3<C-e>', { noremap = true, silent = true })
vim.keymap.set('n', 'K', '3<C-y>', { noremap = true, silent = true })

vim.keymap.set('i', '<C-p>', '<C-r>"', { noremap = true, silent = true })

vim.keymap.set('n', '<C-u>', '10<C-y>')
vim.keymap.set('n', '<C-d>', '10<C-e>')

vim.keymap.set('n', '<leader>o', 'o<esc>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>O', 'O<esc>', { noremap = true, silent = true })

vim.keymap.set('n', 'S', '_V/{<C-m>%o', { silent = true })

vim.keymap.set('n', '<C-k>', '@k')
vim.keymap.set('v', '<C-k>', '"ky')
vim.keymap.set('n', '<leader><C-k>', '"kp')

vim.keymap.set('v', '<C-c>', ':s/')
vim.keymap.set('v', '<leader><C-c>', ':s/<C-r>0/')

vim.keymap.set('x', '<leader>p', "\"_dP")

vim.keymap.set({ 'n', 'v' }, '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

vim.keymap.set({ 'n', 'v' }, '<leader>d', "\"_d")

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.query.sql",
    callback = function()
        local sql_file = vim.fn.expand("%")
        local result_file = "/tmp/nvim-sql-console-out"
        vim.fn.system('psql "$PGURL" -f ' .. sql_file .. ' > ' .. result_file .. ' 2>&1')
    end
})

vim.g.clipboard = {
    name = 'OSC 52',
    copy = {
        ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
        ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
    },
    paste = {
        ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
        ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
    },
}
