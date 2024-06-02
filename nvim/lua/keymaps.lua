vim.keymap.set({"n","i","v"},"<c-\\>",function() vim.cmd(":NvimTreeOpen") end,{silent = true}) -- open nvimtree
vim.keymap.set("n","gg","gg0") -- first line is stupid; start of buffer
vim.keymap.set("n","G","G$") -- end of line is dumb too; end of buffer
vim.keymap.set("n","gG","gg0vG$<Del>")
vim.keymap.set({"n","i","v"},"<a-\\>",function() vim.cmd(":NvimTreeClose") end,{silent = true}) -- close nvim-tree
