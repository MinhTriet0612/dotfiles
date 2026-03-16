local resize_active = false

local function stop_resize()
  resize_active = false
end

local function start_resize()
  resize_active = true
end

vim.keymap.set("n", "<leader>rs", start_resize, { silent = true })

vim.keymap.set("n", "<", function()
  if resize_active then
    vim.cmd("wincmd 10<")
  else
    vim.api.nvim_feedkeys("<", "n", false)
  end
end, { silent = true })

vim.keymap.set("n", ">", function()
  if resize_active then
    vim.cmd("wincmd 10>")
  else
    vim.api.nvim_feedkeys(">", "n", false)
  end
end, { silent = true })

vim.keymap.set("n", "-", function()
  if resize_active then
    vim.cmd("wincmd 10-")
  else
    vim.api.nvim_feedkeys("-", "n", false)
  end
end, { silent = true })

vim.keymap.set("n", "+", function()
  if resize_active then
    vim.cmd("wincmd 10+")
  else
    vim.api.nvim_feedkeys("+", "n", false)
  end
end, { silent = true })

vim.keymap.set("n", "<Esc>", stop_resize, { silent = true })
