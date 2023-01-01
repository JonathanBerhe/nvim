local status, _ = pcall(vim.cmd, "colorscheme nord")
if not status then
  return
end
