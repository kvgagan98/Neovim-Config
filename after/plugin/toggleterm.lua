require('toggleterm').setup {
    size = 50,
    open_mapping = [[<C-\>]],
    hide_numbers = true,
    direction = "vertical",
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    close_on_exit = true,
    start_in_insert = true,
    insert_mappings = true,
    float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },
}
