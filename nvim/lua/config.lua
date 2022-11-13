-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------
-- Plugin manager: packer.nvim
-- url: https://github.com/wbthomason/packer.nvim
-- For information about installed plugins see the README:
-- neovim-lua/README.md
-- https://github.com/brainfucksec/neovim-lua#readme
-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
        install_path })
    vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
    return
end

require('packer').startup(function(use)
    -- Package manager
    use 'wbthomason/packer.nvim'

    -- LSP
    use { 'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer' }
    require("nvim-lsp-installer").setup({
        automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
        ui = {
            icons = {
                server_installed = "✓",
                server_pending = "➜",
                server_uninstalled = "✗"
            }
        }
    })

    -- Autocomplete
    use {
        'hrsh7th/nvim-cmp',
        requires = { 'L3MON4D3/LuaSnip', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-path', 'hrsh7th/cmp-buffer',
            'saadparwaiz1/cmp_luasnip' }
    }

    -- Theme
    --use { 'EdenEast/nightfox.nvim', as = 'nightfox',
    --    config = function()
    --        -- vim.opt.termguicolors = true
    --        vim.cmd('colorscheme carbonfox')
    --    end
    --}

    use { 'wadackel/vim-dogrun', as = 'dogrun',
        config = function()
            -- vim.opt.termguicolors = true
            vim.cmd('colorscheme dogrun')
        end
    }


    -- Airline
    -- use 'vim-airline/vim-airline'

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- using packer.nvim
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
    require("bufferline").setup {}

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

require('plugins/nvim-cmp')
require('plugins/nvim-lspconfig')
require('core/autocmds')
require('plugins/nvim-telescope')
require('plugins/lualine')
