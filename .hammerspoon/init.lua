-- init.lua
-- Author: Q <itsjonq@gmail.com>
-- Source: https://github.com/ItsJonQ/dotfiles
-- =============================================================================

hs.window.animationDuration = 0 -- disable animations

-- Config Watcher
function reloadConfig(files)
  doReload = false
  for _,file in pairs(files) do
    if file:sub(-4) == ".lua" then
      doReload = true
    end
  end
  if doReload then
    hs.reload()
  end
end
local myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()


-- Reload
hs.hotkey.bind({"cmd", "ctrl"}, "R", function()
  hs.reload()
end)
hs.alert.show("Hammerspoon Loaded.")


-- Vars
local win = hs.window.focusedWindow()
local f = win:frame()
local screen = win:screen()
local max = screen:frame()


-- Window Resize: Left
hs.hotkey.bind({"cmd", "ctrl"}, "1", function()
  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)


-- Window Resize: Right
hs.hotkey.bind({"cmd", "ctrl"}, "2", function()
  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)


-- Window Resize: Top
hs.hotkey.bind({"cmd", "ctrl"}, "T", function()
  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h * 0.8
  win:setFrame(f)
end)


-- Window Resize: Bottom
hs.hotkey.bind({"cmd", "ctrl"}, "B", function()
  f.x = max.x
  f.y = max.h * 0.2
  f.w = max.w
  f.h = max.h * 0.8
  win:setFrame(f)
end)


-- Window Resize: Fullscreen
hs.hotkey.bind({"cmd", "ctrl"}, "F", function()
  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)


-- Window Resize: Center
hs.hotkey.bind({"cmd", "ctrl"}, "C", function()
  f.x = max.w * 0.15
  f.y = max.h * 0.15
  f.w = max.w * 0.7
  f.h = max.h * 0.7
  win:setFrame(f)
end)
