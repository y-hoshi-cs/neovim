local status, gitsigns = pcall(require, "gitsigns")
if (not status) then
  print("GitSigns not loaded")
  return
end

gitsigns.setup {}
