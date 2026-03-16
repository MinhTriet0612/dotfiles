vim.g.mapleader = " "

vim.keymap.set("n", "<leader><tab>", vim.cmd.Ex)

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
vim.keymap.set("n", "<leader>gol", "<cmd>CellularAutomaton game_of_life<CR>");


-- increase/decrease floating window opacity
vim.keymap.set("n", "<leader>+", function()
    vim.o.winblend = math.min(vim.o.winblend + 5, 100)
    vim.o.pumblend = vim.o.winblend
end)

vim.keymap.set("n", "<leader>-", function()
    vim.o.winblend = math.max(vim.o.winblend - 5, 0)
    vim.o.pumblend = vim.o.winblend
end)
