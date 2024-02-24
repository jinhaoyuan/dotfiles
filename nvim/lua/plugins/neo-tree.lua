return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        enable = true,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim",
        },
        keys = {
            { "ee", ":Neotree toggle reveal dir=%:p:h<CR>", desc = "Neotree" },
        },
        config = function()
            local nt_status_ok, nt = pcall(require, "neo-tree")
            if not nt_status_ok then
                return
            end
            nt.setup({
                source_selector = {
                    winbar = true,
                    statusline = false,
                },
            })
        end,
    },
}
