local function map(modes, lhs, rhs, options)
    vim.keymap.set(modes, lhs, rhs, options or { noremap = true, silent = true })
end

return map
