return {
    "rcarriga/nvim-notify",
    opts = require("config.notify"),
    config = function(_, opts)
        local notify = require("notify")
        notify.setup(opts)
    end,
}
