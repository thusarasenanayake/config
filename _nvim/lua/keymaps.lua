vim.g.mapleader = " "

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

map('i', 'jj', '<ESC>')
map('v', '<' , '<gv')
map('v', '>' , '>gv')
map('n', '<SPACE><SPACE>' , ':')
map('n', 'o' , 'o<ESC>')
map('n', 'O' , 'O<ESC>')
map('n', 'n' , 'nzz')
map('n', 'N' , 'Nzz')
map('n', 'x' , '"_x')
map('c', 'jj' , '<ESC>')
map('i', '<M-l>' , '<RIGHT>')
map('i', '<M-h>' , '<LEFT>')
map('i', '<M-k>' , '<UP>')
map('i', '<C-k>' , '<ESC>')
map('n', '<M-k>' , ':m -2<CR>')
map('n', '<M-j>' , ':m +1<CR>')


vim.api.nvim_set_keymap('i', '<A-j>', '<Esc>:lua MoveDown()<CR>a', { noremap = true, silent = true })

function MoveDown()
    if vim.fn.line('.') == vim.fn.line('$') then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<ESC>o', true, true, true), 'n')
    else
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<DOWN>', true, true, true), 'n')
    end
end
















function indent_all()
    vim.cmd('normal m1ggVG=\'1')
end

map('n', '<LEADER>aa','ggVG')
map('n', '<LEADER>ss',':w<CR>:so<CR>')
--map('n', '<LEADER>ii',':lua indent_all()<CR>')
map('n', '<LEADER>ii','m1ggVG=\'1zz')
map('n', '<LEADER>w',':set wrap!<CR>')
