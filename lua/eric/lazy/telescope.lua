return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim",
        {"nvim-telescope/telescope-fzf-native.nvim",
          build = "make",
          config = function()
            require("telescope").load_extension("fzf")
          end,
        },
    },

    config = function()
        require('telescope').setup{}
        require("telescope").load_extension('fzf')
        local telescope = require("telescope.builtin")

        vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
        vim.keymap.set("n", "<leader>fg", telescope.live_grep, {})
        vim.keymap.set("n", "<leader>fb", telescope.buffers, {})
        vim.keymap.set("n", "<leader>fh", telescope.help_tags, {})
    end
}
