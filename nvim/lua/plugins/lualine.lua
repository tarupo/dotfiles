local colors = {
    bg       = '#202328',
    fg       = '#bbc2cf',
    yellow   = '#ECBE7B',
    cyan     = '#008080',
    darkblue = '#081633',
    green    = '#98be65',
    orange   = '#FF8800',
    violet   = '#a9a1e1',
    magenta  = '#c678dd',
    blue     = '#51afef',
    red      = '#ec5f67',
}



require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {
            {
                'mode',
                separator = { left = '', right = '' },
                fmt = function(str) return str:sub(1, 1) end,
            }
        },
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = {
            {
                'diagnostics',
                sources = { 'nvim_lsp' },
                symbols = { error = 'E', warn = 'W', info = 'I', hint = 'H' },
                diagnostics_color = {
                    color_error = { fg = colors.red },
                    color_warn = { fg = colors.yellow },
                    color_info = { fg = colors.cyan },
                },
            },
            {
                'diff',
                colored = true, -- Displays a colored diff status if set to true
                symbols = { added = '+', modified = '~', removed = '-' }, -- Changes the symbols used by the diff.
                source = nil, -- A function that works as a data source for diff.
                -- It must return a table as such:
                --   { added = add_count, modified = modified_count, removed = removed_count }
                -- or nil on failure. count <= 0 won't be displayed.
            },
            'branch',
        },
        lualine_y = {
            {
                'filetype',
                separator = '.',
                padding = { left = 1, right = 0 },
            },
            {
                'encoding',
                separator = '',
                padding = 0,
            },
            {
                'fileformat',
                separator = '',
                symbols = {
                    unix = 'unix',
                    dos = 'dos',
                    mac = 'mac'
                },
                padding = 1,
            },
        },
        lualine_z = {
            {
                'progress',
                separator = '',
                padding = { left = 1, right = 0 },
            },
            {
                'location',
                padding = 0,
            },
        }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
