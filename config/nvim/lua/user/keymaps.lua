local map = require("user.keymap_utils").map
local nmap = require("user.keymap_utils").nmap
local nnoremap = require("user.keymap_utils").nnoremap
local vnoremap = require("user.keymap_utils").vnoremap
local inoremap = require("user.keymap_utils").inoremap
local tnoremap = require("user.keymap_utils").tnoremap
local xnoremap = require("user.keymap_utils").xnoremap

local M = {}

vim.keymap.set("n", "<leader>oc", function()
	local file = vim.fn.shellescape(vim.fn.expand("%:p"))
	local line = vim.fn.line(".")
	local editor = vim.fn.getenv("OTHER_EDITOR") or "code"
	vim.cmd(string.format("silent !%s -g %s:%s .", editor, file, line))
end, { desc = "Open file in other editor" })
