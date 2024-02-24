return {
    {
        "williamboman/mason.nvim",
        config = function()
            local ms_status_ok, ms = pcall(require, "mason")
            if not ms_status_ok then
                return
            end
            ms.setup({})
        end,
    },
}
