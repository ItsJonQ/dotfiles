-- window.lua
-- Author: Q <itsjonq@gmail.com>
-- Source: https://github.com/ItsJonQ/dotfiles
-- =============================================================================

hs.window.animationDuration = 0 -- disable animations


-- Window Resize: Left
hs.hotkey.bind({"cmd", "ctrl"}, "1", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)


-- Window Resize: Right
hs.hotkey.bind({"cmd", "ctrl"}, "2", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)


-- Window Resize: Top
hs.hotkey.bind({"cmd", "ctrl"}, "T", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h * 0.8
  win:setFrame(f)
end)


-- Window Resize: Bottom
hs.hotkey.bind({"cmd", "ctrl"}, "B", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.h * 0.2
  f.w = max.w
  f.h = max.h * 0.8
  win:setFrame(f)
end)


-- Window Resize: Fullscreen
hs.hotkey.bind({"cmd", "ctrl"}, "F", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)


-- Window Resize: Center
hs.hotkey.bind({"cmd", "ctrl"}, "C", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.w * 0.15
  f.y = max.h * 0.15
  f.w = max.w * 0.7
  f.h = max.h * 0.7
  win:setFrame(f)
end)
