require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  size = 40,
  open_mapping = [[<c-\>]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 1, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  persist_size = true,
  direction = 'float', -- 'vertical' | 'horizontal' | 'window' | 'float',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = vim.o.shell, -- change the default shell
  -- This function is run after the terminal opens
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<esc>", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  -- This function is run after the terminal closes
  on_close = function(term)
    --vim.cmd("Closing terminal")
  end
}

-- Function to set keymaps for the terminal
function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  -- This will escape terminal mode and go back to normal mode in Neovim
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
end

-- Autocommand to apply key mappings when the toggleterm terminal is opened
vim.cmd [[
  autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()
]]

-- Key mapping to close the terminal with Escape in normal mode within the terminal
vim.api.nvim_set_keymap("t", "<esc>", "<cmd>ToggleTerm<CR>", {noremap = true, silent = true})
