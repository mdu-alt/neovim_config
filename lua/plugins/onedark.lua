return {
    {
        "navarasu/onedark.nvim",
        init = function()
            require("onedark").setup({
                style = "darker",
            })
            require("onedark").load()
        end,
    },
}
