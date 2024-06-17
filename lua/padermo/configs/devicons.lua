local status, devicons = pcall(require, "nvim-web-devicons")
if not status then
  return
end

devicons.setup({
  default = true,
  override = {
    Folder = {
      icon = "",
      color = "#B3EB49",
      name = "Folder",
    },
    FolderClosed = {
      icon = "",
      color = "#7ebae4",
      name = "FolderClosed",
    },
    File = {
      icon = "",
      color = "#a074c4",
      name = "File",
    },
  };
})
