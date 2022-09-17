-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    --packer can manage itself
    use 'wbthomason/packer.nvim'

    -- colorschemes
    use 'folke/tokyonight.nvim'
end)
