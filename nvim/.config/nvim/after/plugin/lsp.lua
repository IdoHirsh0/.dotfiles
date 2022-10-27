-- Better autocompletion experience
vim.opt.completeopt = 'menuone,noselect'

-- Nvim cpm
local cmp = require('cmp')
local lspkind = require('lspkind')
local luasnip = require('luasnip')

cmp.setup {
    formatting = {
        format = lspkind.cmp_format()
    },

    mapping = cmp.mapping.preset.insert {
        -- Trigger autocomplete
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Select autocompletion option
        ['<Tab>'] = cmp.mapping.confirm { select = true },
        ['<CR>'] = cmp.mapping.confirm { select = true },

        -- Go forward in autocompletion manu
        ['<C-n>'] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end,

        -- Go backwards in autocompletion manu
        ['<C-p>'] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end,

        ["<C-d>"] = cmp.mapping.scroll_docs(4),
        ["<C-u>"] = cmp.mapping.scroll_docs(-4)
    },

    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end
    },

    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' }
    }
}

-- Language Servers config
local map = require('itsidohirsh.map')

local on_attach = function()
    map({ 'n' }, 'K', vim.lsp.buf.hover)
    map({ 'n' }, '<C-h>', vim.lsp.buf.signature_help)
    map({ 'n' }, 'gd', vim.lsp.buf.definition)
    map({ 'n' }, 'gr', vim.lsp.buf.references)
    map({ 'n' }, '<space>rn', vim.lsp.buf.rename)
    map({ 'n' }, '<space>f', function() vim.lsp.buf.format { async = true } end)
end

vim.lsp.protocol.make_client_capabilities().textDocument.completion.completionItem.snippetSupport = true

local function config(_config)
    return vim.tbl_extend('force', {
        capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
        on_attach = on_attach
    }, _config or {})
end

-- Language Servers
local lspconfig = require('lspconfig')

--- C
lspconfig.ccls.setup(config())

--- Lua (https://github.com/sumneko/lua-language-server)
USER = vim.fn.expand('$USER')

local sumneko_root_path = "/home/" .. USER .. "/.local/share/nvim/site/language-servers/lua"
local sumneko_binary = "/home/" .. USER .. "/.local/share/nvim/site/language-servers/lua/bin/lua-language-server"

lspconfig.sumneko_lua.setup(config({
    cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },

    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',

                -- Setup your lua path
                path = vim.split(package.path, ';')
            },

            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' }
            },

            workspace = {
                -- Make the server aware of Neovim runtime files
                library = { [vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true }
            }
        }
    }
}))
