--
-- 88               88                88
-- ""               ""    ,d          88
--                        88          88
-- 88  8b,dPPYba,   88  MM88MMM       88  88       88  ,adPPYYba,
-- 88  88P'   `"8a  88    88          88  88       88  ""     `Y8
-- 88  88       88  88    88          88  88       88  ,adPPPPP88
-- 88  88       88  88    88,    888  88  "8a,   ,a88  88,    ,88
-- 88  88       88  88    "Y888  888  88   `"YbbdP'Y8  `"8bbdP"Y8
--

--  WARN: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

require("options")
require("keymaps")
require("autocommands")

-- Install `lazy.nvim` plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
require("lsp")
