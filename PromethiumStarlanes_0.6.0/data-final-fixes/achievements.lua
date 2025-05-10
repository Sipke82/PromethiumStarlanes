-- Require the utils module
local utils = require("data-final-fixes.utils")
local log_message = utils.log_message

-- Disable shattered-planet achievements
if data.raw["space-connection-distance-traveled-achievement"]["shattered-planet-1"] then
  data.raw["space-connection-distance-traveled-achievement"]["shattered-planet-1"] = nil
  log_message("Disabled shattered-planet-1 achievement")
end
if data.raw["space-connection-distance-traveled-achievement"]["shattered-planet-2"] then
  data.raw["space-connection-distance-traveled-achievement"]["shattered-planet-2"] = nil
  log_message("Disabled shattered-planet-2 achievement")
end
if data.raw["space-connection-distance-traveled-achievement"]["shattered-planet-3"] then
  data.raw["space-connection-distance-traveled-achievement"]["shattered-planet-3"] = nil
  log_message("Disabled shattered-planet-3 achievement")
end
