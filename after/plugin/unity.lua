local pid = vim.fn.getpid()
local omnisharp_bin = "/opt/omnisharp-roslyn/run"
require'lspconfig'.omnisharp.setup{
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150,
    },
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
}
