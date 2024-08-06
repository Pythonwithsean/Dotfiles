return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
............................................-==+++++++=-:...........................................
....................................:--:==-----------=++=-++==+-....................................
..................................:+-=+==:.....+--=-......=-*%--=...................................
..................................=-*%-=:#%.....=-=*@+....=--=--=...................................
...................................++--=-%%.....=-=:*.....=---#-....................................
....................................+---==....--%@@*=:::+-----=.....................................
...................................:+---------=:-=-:-=----------....................................
....................................+----------*:=.*+-----------....................................
....................................+----------=-+-+-----------=....................................
....................................+--------------------------=....................................
....................................+--------------------------=....................................
....................................=--------------------------=....................................
.................................:=:---------------------------=:=:.................................
.................................:+++--------------------------*+=..................................
....................................+--------------------------+....................................
....................................+--------------------------+....................................
....................................+--------------------------+....................................
....................................+--------------------------+....................................
....................................+--------------------------=....................................
....................................--------------------------=:....................................
....................................:*-----------------------=-.....................................
......................................+---------------------+-......................................
.....................................:=:==----------------+-:=......................................
.....................................+-:+::-+*+======++=:..+-*:.....................................
    ]]

    dashboard.section.header.val = logo
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
    }
    local handle = io.popen("fortune")
    local fortune = handle:read("*a")
    handle:close()
    dashboard.section.footer.val = fortune
    alpha.setup(dashboard.opts)
  end,
}
