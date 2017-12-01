local config = {}

-- no animation of window moving, please
hs.window.animationDuration = 0

config.modules = {
   -- "app_selector",
   "hint",
   "launcher",
   "mgrid",
   "aerosnap",
   "fullscreen",
   -- "slide",
   -- "arrangement",
   -- "monitors",
   -- "repl",
   -- "reload",
   -- "arrows",
   -- "lock",
   -- "hop"
}

mash_keys = {"cmd", "ctrl"}

-- Maps monitor id -> screen index.
config.fullscreen = {
    mash = mash_keys,
    key = "Z"
}

-- Maps monitor id -> screen index.
config.monitors = {
   autodiscover = true,
   rows = 1
}

-- Launch applications
config.launcher = {
   mash = mash_keys,
   bindings = {
      -- { key = "E", application = "Terminal" },
      { key = "E", application = "iTerm" },
      { key = "Q", application = "QQ" },
      -- { key = "T", application = "iTerm" },
      { key = "C", application = "Google Chrome" },
      { key = "D", application = "钉钉" },
      { key = "V", application = "IntelliJ IDEA" },
      { key = 'M', application = "Foxmail" },
      { key = 'S', application = "Dictionary.app" },
      { key = 'F', application = "Finder"}
      -- { key = "V", application = "MacVim" },
      -- { key = "S", command     = "/Users/" .. os.getenv('USER') .. "/bin/excluded/blink1-tool --red" },
      -- { key = "D", command     = "/Users/" .. os.getenv('USER') .. "/bin/excluded/blink1-tool --green" },
      -- { key = "F19", command   = "/Users/" .. os.getenv('USER') .. "/bin/blink1-panic" }
      -- { key = "S", command     = "/Users/" .. os.getenv('USER') .. "/bin/excluded/blink1-tool --red" },
      -- { key = "D", command     = "/Users/" .. os.getenv('USER') .. "/bin/excluded/blink1-tool --green" }
   }
}

-- Window arrangements.
config.arrangements = {
   fuzzy_search = {
      mash = {"cmd", "ctrl", "alt"},
      key = "Z"
   },
   {
      name = "zen",
      alert = true,
      mash = { "cmd", "ctrl", "alt" },
      key = "A",
      arrangement = {
         {
            app_title = "^Mail",
            monitor = 1,
            position = "full_screen",
         },
         {
            app_title = "^Slack",
            monitor = 4,
            position = "left"
         },
         {
            app_title = "^Messages",
            monitor = 4,
            position = function(d)
               return d:translate_from('bottom_right', {
                                          y = 42,
                                          h = -40
               })
            end
         },
         {
            app_title = "^ChronoMate",
            monitor = 4,
            position = function(d)
               return d:translate_from('top_right', {
                                          h = 42
               })
            end
         },
         {
            app_title = "^Spotify",
            monitor = 6,
            position = "full_screen",
         }
      }
   }
}

return config
