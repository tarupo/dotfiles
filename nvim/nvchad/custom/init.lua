local g = vim.g
local opt = vim.opt
local fn = vim.fn

g.mapleader = "\\"


opt.mouse = "nvcr"
opt.encoding = "utf-8"
opt.incsearch = true

opt.relativenumber = true

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

opt.clipboard = "unnamed"


opt.titlestring = fn.fnamemodify(fn.getcwd(), ":t") .. " - nvim"
