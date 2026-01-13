return {
    "etiennecollin/notes.nvim",
    cmd = { "NotesToggle", "NotesShow", "NotesHide", "NotesEdit" },
    keys = {
        { "<leader>n", ":NotesToggle<cr>", desc = "Toggle Notes" }
    },
    opts = {
        floating = {
            width = 50,
            height = 10,
            title = ""
        }
    }
}
