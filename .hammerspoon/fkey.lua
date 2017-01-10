-- fkey.lua
-- Author: Q <itsjonq@gmail.com>
-- Source: https://github.com/ItsJonQ/dotfiles
-- =============================================================================

-- Docs
-- http://www.hammerspoon.org/docs/hs.eventtap.event.html#newSystemKeyEvent

local function fKeyCode(key, media)
  return function()
    hs.eventtap.event.newSystemKeyEvent(string.upper(key), true):post()
    hs.timer.usleep(1000)
    hs.eventtap.event.newSystemKeyEvent(string.upper(key), false):post()

    if key == 'previous' then
      hs.spotify.previous()
    end
    if key == 'play' then
      hs.spotify.playpause()
    end
    if key == 'next' then
      hs.spotify.next()
    end
  end
end

hs.hotkey.bind({}, 'f1', fKeyCode('brightness_down'), nil, fKeyCode('brightness_down'))
hs.hotkey.bind({}, 'f2', fKeyCode('brightness_up'), nil, fKeyCode('brightness_up'))
hs.hotkey.bind({}, 'f3', fKeyCode('launch_panel'), nil, fKeyCode('launch_panel'))
hs.hotkey.bind({}, 'f5', fKeyCode('illumination_down'), nil, fKeyCode('illumination_down'))
hs.hotkey.bind({}, 'f6', fKeyCode('illumination_up'), nil, fKeyCode('illumination_up'))
hs.hotkey.bind({}, 'f7', fKeyCode('previous'), nil, fKeyCode('previous'))
hs.hotkey.bind({}, 'f8', fKeyCode('play'), nil, fKeyCode('play'))
hs.hotkey.bind({}, 'f9', fKeyCode('next'), nil, fKeyCode('next'))
hs.hotkey.bind({}, 'f10', fKeyCode('mute'), nil, fKeyCode('mute'))
hs.hotkey.bind({}, 'f11', fKeyCode('sound_down'), nil, fKeyCode('sound_down'))
hs.hotkey.bind({}, 'f12', fKeyCode('sound_up'), nil, fKeyCode('sound_up'))
