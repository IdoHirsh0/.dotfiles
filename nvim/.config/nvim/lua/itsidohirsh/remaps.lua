local function map(m, k, v, ops)
    vim.keymap.set(m, k, v, ops or { noremap = true, silent = true })
end

-- Esc key
map({'i', 'v', 'c'}, ';j', '<Esc><Esc><Esc>')

-- Save & Quit
map({'n', 'v'}, '<leader>w', ':w<CR>')
map({'n', 'v'}, '<leader>q', ':q<CR>')
map({'n', 'i', 'v'}, '<C-s>', '<cmd>w<CR>')
map({'n', 'i', 'v'}, '<C-w>', '<cmd>q<CR>')

-- Select all
map({'n', 'i', 'v'}, '<C-a>', '<Esc>ggVG')

-- Go to start & end of line
map({'n', 'v', 'c'}, '<leader>h', '_')
map({'n', 'v', 'c'}, '<leader>l', '$')

-- Move text
map({'n'}, '<A-j>', ':m .+1<CR>==')
map({'v'}, '<A-j>', ":m '>+1<CR>gv=gv")
map({'i'}, '<A-j>', "<Esc>:m .+1<CR>==gi")

map({'n'}, '<A-k>', ':m .-2<CR>==')
map({'v'}, '<A-k>', ":m '<-2<CR>gv=gv")
map({'i'}, '<A-k>', "<Esc>:m .-2<CR>==gi")

-- Search & Replace
map({'n'}, '<leader>sr', ':%s/')

-- No highlight
map({'n'}, '<leader>nh', ':nohlsearch<CR>')

-- Create splits
map({'n'}, '<leader>cj', '<C-w>s')
map({'n'}, '<leader>cl', '<C-w>v')

-- Navigate between splits
map({'n'}, '<leader>sh', '<C-w>h')
map({'n'}, '<leader>sl', '<C-w>l')
map({'n'}, '<leader>sj', '<C-w>j')
map({'n'}, '<leader>sk', '<C-w>k')

-- Resize Splits
map({'n'}, '<leader>rh', ':vertical resize +5<CR>')
map({'n'}, '<leader>rl', ':vertical resize -5<CR>')
map({'n'}, '<leader>rk', ':resize +5<CR>')
map({'n'}, '<leader>rj', ':resize -5<CR>')

