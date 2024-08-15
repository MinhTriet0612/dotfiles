vim.keymap.set("n", "<leader>zz", function()
    require("zen-mode").toggle({
        window = {
            backdrop = 0.75,
            width = 120,
            height = 1,
            options = { }
        },
        plugins = {
          options = {
            enabled = true,
          },
          tmux = { enabled = false },
        },
        on_open = function(win)
        end,
        on_close = function()
        end,
    })
end)
