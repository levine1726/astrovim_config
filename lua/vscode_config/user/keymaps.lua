local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- remap leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- yank to system clipboard
keymap({"n", "v"}, "<leader>y", '"+y', opts)

-- paste from system clipboard
keymap({"n", "v"}, "<leader>p", '"+p', opts)

-- better indent handling
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- paste preserves primal yanked piece
keymap("v", "p", '"_dP', opts)

-- removes highlighting after escaping vim search
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)


-- pane creation + navigation
keymap("n", "<leader>v", "<cmd>lua require('vscode').action('workbench.action.splitEditor')<CR>")
keymap("n", "<leader>h", "<cmd>lua require('vscode').action('workbench.action.splitEditorDown')<CR>")
keymap("n", "<C-h>", "<cmd>lua require('vscode').action('workbench.action.navigateLeft')<CR>")
keymap("n", "<C-j>", "<cmd>lua require('vscode').action('workbench.action.navigateDown')<CR>")
keymap("n", "<C-k>", "<cmd>lua require('vscode').action('workbench.action.navigateUp')<CR>")
keymap("n", "<C-l>", "<cmd>lua require('vscode').action('workbench.action.navigateRight')<CR>")

-- search
keymap("n", "<leader>ff", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")

-- open panes
keymap("n", "<leader>oe", [[ <cmd>lua require('vscode').action('workbench.view.explorer')<CR> ]])
keymap("n", "<leader>oa", [[ <cmd>lua require('vscode').action('workbench.action.toggleActivityBarVisibility')<CR> ]])

-- close all tabs in group
keymap("n", "<leader>kw", [[ <cmd>lua require('vscode').action('workbench.action.closeEditorsInGroup')<CR> ]])
