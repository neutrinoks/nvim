return {
    "romgrk/barbar.nvim",
    config = function()
        vim.g.barbar_auto_setup = false
        require("barbar").setup({
            -- Enable/disable animations
            animation = true,

            -- Automatically hide the tabline when there are this many buffers left.
            -- Set to any value >=0 to enable.
            auto_hide = false,

            -- Enable/disable current/total tabpages indicator (top right corner)
            tabpages = true,

            -- Enable highlighting visible buffers
            highlight_visible = true,

            icons = {
                -- Configure the base icons on the bufferline.
                -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
                -- buffer_index = false,
                -- buffer_number = false,
                button = '',
                -- Enables / disables diagnostic symbols
                -- diagnostics = {
                --     [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
                --     [vim.diagnostic.severity.WARN] = {enabled = false},
                --     [vim.diagnostic.severity.INFO] = {enabled = false},
                --     [vim.diagnostic.severity.HINT] = {enabled = true},
                -- },
                -- gitsigns = {
                --     added = {enabled = true, icon = '+'},
                --     changed = {enabled = true, icon = '~'},
                --     deleted = {enabled = true, icon = '-'},
                -- },
                -- filetype = {
                --     -- Sets the icon's highlight group.
                --     -- If false, will use nvim-web-devicons colors
                --     custom_colors = false,

                --     -- Requires `nvim-web-devicons` if `true`
                --     enabled = true,
                -- },
                -- separator = {left = '▎', right = ''},

                -- -- If true, add an additional separator at the end of the buffer list
                -- separator_at_end = true,

                -- -- Configure the icons on the bufferline when modified or pinned.
                -- -- Supports all the base icon options.
                modified = {button = '●'},
                -- pinned = {button = '', filename = true},

                -- -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
                -- preset = 'default',

                -- -- Configure the icons on the bufferline based on the visibility of a buffer.
                -- -- Supports all the base icon options, plus `modified` and `pinned`.
                -- alternate = {filetype = {enabled = false}},
                -- current = {buffer_index = true},
                -- inactive = {button = '×'},
                -- visible = {modified = {buffer_number = false}},
            },

            -- If true, new buffers will be inserted at the start/end of the list.
            -- Default is to insert after current buffer.
            -- insert_at_end = false,
            -- insert_at_start = false,

            -- Sets the maximum padding width with which to surround each tab
            maximum_padding = 1,

            -- Sets the minimum padding width with which to surround each tab
            minimum_padding = 1,

            -- Sets the maximum buffer name length.
            maximum_length = 30,
        })
    end
}
