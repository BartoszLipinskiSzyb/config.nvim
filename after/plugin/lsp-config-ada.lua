-- require'lspconfig'.als.setup{}

function adalsp()
    vim.lsp.start({
        name = 'ada_language_server',
        cmd = {'/home/blipin/.config/nvim/lsp/ada_language_server'},
        root_dir = vim.fs.dirname(vim.fs.find({'project.gpr'}, { upward = true })[1]),
    })
end

local textedit = vim.api.nvim_create_augroup('textedit', {clear = true})
vim.api.nvim_create_autocmd({"BufEnter", "BufNew"}, {
  group = "textedit",
  pattern = {"*.adb"},
  callback = function()
      adalsp()
      vim.cmd("set shiftwidth=3")
  end,
})
