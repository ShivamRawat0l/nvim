require("oil").setup({
    columns = {
        "icon",
    },
    buf_options = {
        buflisted = false,
        bufhidden = "hide",
    },
    win_options = {
        wrap = false,
        signcolumn = "no",
        cursorcolumn = false,
        foldcolumn = "0",
        spell = false,
        list = false,
        conceallevel = 3,
        concealcursor = "n",
    },
    default_file_explorer = true,
    restore_win_options = true,
    skip_confirm_for_simple_edits = false,
    delete_to_trash = false,
    trash_command = "trash-put",
    prompt_save_on_select_new_entry = false,
    keymaps = {
        ["g?"] = "actions.show_help",
        ["<CR>"] = "actions.select",
        ["t<C-s>"] = "actions.select_vsplit",
        ["t<C-h>"] = "actions.select_split",
        ["t<C-a>"] = "actions.select_tab",
        ["<Tab>"] = "actions.preview",
        ["t<C-c>"] = "actions.close",
        ["t<C-l>"] = "actions.refresh",
        ["-"] = "actions.parent",
        ["_"] = "actions.open_cwd",
        ["`"] = "actions.cd",
        ["~"] = "actions.tcd",
        ["g."] = "actions.toggle_hidden",
    },
    use_default_keymaps = false,
    view_options = {
        is_hidden_file = function(name, bufnr)
            return vim.startswith(name, ".")
        end,
        is_always_hidden = function(name, bufnr)
            return false
        end,
    },
    float = {
        padding = 2,
        max_width = 0,
        max_height = 0,
        border = "rounded",
        win_options = {
            winblend = 10,
        },
    },
    preview = {
        max_width = 0.9,
        min_width = { 40, 0.4 },
        width = nil,
        max_height = 0.9,
        min_height = { 5, 0.1 },
        height = nil,
        border = "rounded",
        win_options = {
            winblend = 0,
        },
    },
    progress = {
        max_width = 0.9,
        min_width = { 40, 0.4 },
        width = nil,
        max_height = { 10, 0.9 },
        min_height = { 5, 0.1 },
        height = nil,
        border = "rounded",
        minimized_border = "none",
        win_options = {
            winblend = 0,
        },
    },
})
