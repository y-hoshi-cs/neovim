local status, autopairs = pcall(require, "nvim-autopairs")
if (not status) then
  print("Nvim AutoPairs load failed")
  return
end

autopairs.setup({
  disable_filetype = { "TelescopePrompt", "vim" },
})
