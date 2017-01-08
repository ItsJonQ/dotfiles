-- watcher.lua
-- Author: Q <itsjonq@gmail.com>
-- Source: https://github.com/ItsJonQ/dotfiles
-- =============================================================================

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
