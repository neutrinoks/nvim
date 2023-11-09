-- Blankline Configuration
vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })

local highlight = {
        "RainbowBlue",
}

require("ibl").setup {
        scope = {
                enabled = true,
                highlight = highlight,
        },
}
