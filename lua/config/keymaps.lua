vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local bufmap = function(mode, lhs, rhs, desc)
      local opts = {buffer = event.buf, desc = desc}
      vim.keymap.set(mode, lhs, rhs, opts)
    end
    bufmap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", "Goto definition")
    bufmap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", "Code action")
    bufmap('n', '<leader>ck', '<cmd>Lspsaga hover_doc<CR>', "Hover doc")
    bufmap('n', '<leader>cr', '<cmd>Lspsaga rename<CR>', "Rename")
    bufmap('n', '<leader>cdl', '<cmd>Lspsaga show_line_diagnostics<CR>', "Diagnostic line")
    bufmap('n', '<leader>cdb', '<cmd>Lspsaga show_buf_diagnostics<CR>', "Diagnostic buffer")
    bufmap('n', '<leader>cdw', '<cmd>Lspsaga show_workspace_diagnostics<CR>', "Diagnostic workspace")
    bufmap('n','<leader>t', '<cmd>Lspsaga term_toggle<CR>', "Toggle float termiall")
  end
})
