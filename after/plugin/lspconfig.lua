local lsp_conf = require 'lspconfig'

lsp_conf.sourcekit.setup {}

lsp_conf.rust_analyzer.setup {
    -- Other setup stuff
    -- ...

    -- To be able to start rust-analyzer at all a root_dir is needed,
    -- I added a star match for testing purposes to match on any file
    -- This could be an lspconfig/Neovim only issue
    root_dir = lsp_conf.util.root_pattern("*"),

    -- LSP Client needs to know the detached files ahead of time on
    -- initialization and pass them to the r-a on startup
    init_options = { detachedFiles = { "/tmp/file.rs" } }
}
