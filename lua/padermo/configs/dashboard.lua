local status, dashboard = pcall(require, "dashboard")
if not status then
    return
end

dashboard.setup({
    theme = 'hyper',
    config = {
      week_header = {
       enable = true,
      },
      footer = { "UwU" }
    },
  })
