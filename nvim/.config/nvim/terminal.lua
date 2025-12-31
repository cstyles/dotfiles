-- A stack of terminal buffers
local terminal_buffers = {}

-- Push terminal buffer when opening a new terminal
vim.api.nvim_create_autocmd('TermOpen', {
  callback = function()
    table.insert(
      terminal_buffers,
      vim.api.nvim_get_current_buf()
    )
  end
})

-- TODO: Re-order upon TermEnter

-- Forget terminal buffer upon closing
vim.api.nvim_create_autocmd('TermClose', {
  callback = function(args)
    -- The number of the terminal buffer that was just closed
    local closed_buffer = args.buf

    -- Remove the just-closed terminal buffer from the array
    for i, buffer_number in ipairs(terminal_buffers) do
      if buffer_number == closed_buffer then
        table.remove(terminal_buffers, i)
      end
    end

    for i, v in ipairs(terminal_buffers) do
      print(string.format('%d: %s', i, v))
    end
  end
})

function _G.execute_previous_terminal_command()
  local last_term_buf = terminal_buffers[#terminal_buffers]

  if last_term_buf == nil then
    print('No terminal buffer.')
    return
  end

  if not vim.api.nvim_buf_is_valid(last_term_buf) then
    print(string.format('Terminal buffer [%d] is not valid', last_term_buf))
    return
  end

  local channel = vim.bo[last_term_buf].channel
  vim.api.nvim_chan_send(channel, '\n')
end

vim.keymap.set('n', '<C-h>', '<cmd>lua execute_previous_terminal_command()<CR>')
