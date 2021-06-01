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

-- hs.hotkey.bind({ "ctrl", "shift" }, '1', fKeyCode('brightness_down'), nil, fKeyCode('brightness_down'))
-- hs.hotkey.bind({ "ctrl", "shift" }, '2', fKeyCode('brightness_up'), nil, fKeyCode('brightness_up'))
-- hs.hotkey.bind({ "ctrl", "shift" }, '3', fKeyCode('launch_panel'), nil, fKeyCode('launch_panel'))
-- hs.hotkey.bind({ "ctrl", "shift" }, '5', fKeyCode('illumination_down'), nil, fKeyCode('illumination_down'))
-- hs.hotkey.bind({ "ctrl", "shift" }, '6', fKeyCode('illumination_up'), nil, fKeyCode('illumination_up'))
-- hs.hotkey.bind({ "ctrl", "shift" }, '7', fKeyCode('previous'), nil, fKeyCode('previous'))
-- hs.hotkey.bind({ "ctrl", "shift" }, '8', fKeyCode('play'), nil, fKeyCode('play'))
-- hs.hotkey.bind({ "ctrl", "shift" }, '9', fKeyCode('next'), nil, fKeyCode('next'))
-- hs.hotkey.bind({ "ctrl", "shift" }, '10', fKeyCode('mute'), nil, fKeyCode('mute'))
-- hs.hotkey.bind({ "ctrl", "shift" }, '11', fKeyCode('sound_down'), nil, fKeyCode('sound_down'))
-- hs.hotkey.bind({ "ctrl", "shift" }, '12', fKeyCode('sound_up'), nil, fKeyCode('sound_up'))

-- hs.hotkey.bind({ "rightcmd" }, '1', fKeyCode('brightness_down'), nil, fKeyCode('brightness_down'))
-- hs.hotkey.bind({ "rightcmd" }, '2', fKeyCode('brightness_up'), nil, fKeyCode('brightness_up'))
-- hs.hotkey.bind({ "rightcmd" }, '3', fKeyCode('launch_panel'), nil, fKeyCode('launch_panel'))
-- hs.hotkey.bind({ "rightcmd" }, '5', fKeyCode('illumination_down'), nil, fKeyCode('illumination_down'))
-- hs.hotkey.bind({ "rightcmd" }, '6', fKeyCode('illumination_up'), nil, fKeyCode('illumination_up'))
-- hs.hotkey.bind({ "rightcmd" }, '7', fKeyCode('previous'), nil, fKeyCode('previous'))
-- hs.hotkey.bind({ "rightcmd" }, '8', fKeyCode('play'), nil, fKeyCode('play'))
-- hs.hotkey.bind({ "rightcmd" }, '9', fKeyCode('next'), nil, fKeyCode('next'))
-- hs.hotkey.bind({ "rightcmd" }, '10', fKeyCode('mute'), nil, fKeyCode('mute'))
-- hs.hotkey.bind({ "rightcmd" }, '11', fKeyCode('sound_down'), nil, fKeyCode('sound_down'))
-- hs.hotkey.bind({ "rightcmd" }, '12', fKeyCode('sound_up'), nil, fKeyCode('sound_up'))

