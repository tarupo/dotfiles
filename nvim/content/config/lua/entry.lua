require('vimopt')

-- packer check
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

	-- autocomplete
	use {
		'hrsh7th/nvim-cmp',
		requires = {'L3MON4D3/LuaSnip', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-path', 'hrsh7th/cmp-buffer', 'saadparwaiz1/cmp_luasnip'}
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/plenary.nvim'}}
	}

	if packer_bootstrap then
		require('pakcer').sync()
	end
end)

require('plugins/nvim-cmp')
require('plugins/nvim-telescope')

