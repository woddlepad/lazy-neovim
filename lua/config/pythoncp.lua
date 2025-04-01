function ExecutePython()
  -- Save the visual selection to a temporary file
  local start_pos = vim.fn.getpos("'<")
  local end_pos = vim.fn.getpos("'>")
  local lines = vim.fn.getline(start_pos[2], end_pos[2])

  -- check if lines contain print. Else wrap the last line in print
  if not vim.tbl_contains(lines, "print") then
    lines[#lines] = "print(" .. lines[#lines] .. ")"
  end

  -- Write the selection to a temporary file
  local file = io.open("/tmp/py_code.py", "w")
  if file == nil then
    -- echo error msg
    vim.api.nvim_err_writeln("Error: Could not open tmp python file")
    return
  end
  for _, line in ipairs(lines) do
    file:write(line .. "\n")
  end
  file:close()

  -- Execute the Python file and capture the output
  local output = vim.fn.system("python /tmp/py_code.py")

  -- Insert the output below the visual selection
  vim.fn.append(end_pos[2], vim.split(output, "\n"))
end
