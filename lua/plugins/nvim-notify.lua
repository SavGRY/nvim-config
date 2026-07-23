return {
    "rcarriga/nvim-notify",
    opts = {
        background_colour = "NotifyBackground",
        fps = 60,
        stages = "slide",
        timeout = 3000,
    },
    config = function(_, opts)
        require("notify").setup(opts)
    end,
}
