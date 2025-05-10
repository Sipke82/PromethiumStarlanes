-- Require the utils module
local utils = require("data-final-fixes.utils")
local log_message = utils.log_message
local log_prototype = utils.log_prototype

-- Remove unwanted vanilla connections
if data.raw["space-connection"]["shattered-planet-solar-system-edge"] then
  data.raw["space-connection"]["shattered-planet-solar-system-edge"] = nil
  log_message("Removed shattered-planet-solar-system-edge connection in data-final-fixes")
else
  log_message("shattered-planet-solar-system-edge connection not found in data-final-fixes")
end

if data.raw["space-connection"]["solar-system-edge-shattered-planet"] then
  data.raw["space-connection"]["solar-system-edge-shattered-planet"] = nil
  log_message("Removed solar-system-edge-shattered-planet connection in data-final-fixes")
else
  log_message("solar-system-edge-shattered-planet connection not found in data-final-fixes")
end

if data.raw["space-connection"]["aquilo-solar-system-edge"] then
  data.raw["space-connection"]["aquilo-solar-system-edge"] = nil
  log_message("Removed aquilo-solar-system-edge connection in data-final-fixes")
else
  log_message("aquilo-solar-system-edge connection not found in data-final-fixes")
end

-- Update existing vanilla connections with asteroid spawns
local function update_vanilla_connection(name, length, asteroid_spawns)
  if data.raw["space-connection"][name] then
    data.raw["space-connection"][name].length = length or data.raw["space-connection"][name].length
    data.raw["space-connection"][name].asteroid_spawn_definitions = asteroid_spawns
    log_message("Updated space-connection " .. name .. " with asteroid spawns")
  else
    log_message("Warning: Space-connection " .. name .. " not found in vanilla data")
  end
end

-- Define asteroid spawn definitions for vanilla connections
update_vanilla_connection("nauvis-vulcanus", 30000, {
  {
    asteroid = "small-promethium-asteroid",
    spawn_points = {
      { angle_when_stopped = 1.0, distance = 0.0, probability = 0.00001, speed = 0.01666667 },
      { angle_when_stopped = 1.0, distance = 1.0, probability = 0.00001, speed = 0.01666667 }
    }
  }
})

update_vanilla_connection("vulcanus-nauvis", 30000, {
  {
    asteroid = "small-promethium-asteroid",
    spawn_points = {
      { angle_when_stopped = 1.0, distance = 0.0, probability = 0.00001, speed = 0.01666667 },
      { angle_when_stopped = 1.0, distance = 1.0, probability = 0.00001, speed = 0.01666667 }
    }
  }
})

update_vanilla_connection("nauvis-gleba", 35000, {
  {
    asteroid = "small-promethium-asteroid",
    spawn_points = {
      { angle_when_stopped = 1.0, distance = 0.0, probability = 0.000015, speed = 0.01666667 },
      { angle_when_stopped = 1.0, distance = 1.0, probability = 0.000015, speed = 0.01666667 }
    }
  }
})

update_vanilla_connection("gleba-nauvis", 35000, {
  {
    asteroid = "small-promethium-asteroid",
    spawn_points = {
      { angle_when_stopped = 1.0, distance = 0.0, probability = 0.000015, speed = 0.01666667 },
      { angle_when_stopped = 1.0, distance = 1.0, probability = 0.000015, speed = 0.01666667 }
    }
  }
})

update_vanilla_connection("nauvis-fulgora", 30000, {
  {
    asteroid = "small-promethium-asteroid",
    spawn_points = {
      { angle_when_stopped = 1.0, distance = 0.0, probability = 0.0002, speed = 0.01666667 },
      { angle_when_stopped = 1.0, distance = 1.0, probability = 0.0002, speed = 0.01666667 }
    }
  }
})

update_vanilla_connection("fulgora-nauvis", 30000, {
  {
    asteroid = "small-promethium-asteroid",
    spawn_points = {
      { angle_when_stopped = 1.0, distance = 0.0, probability = 0.0002, speed = 0.01666667 },
      { angle_when_stopped = 1.0, distance = 1.0, probability = 0.0002, speed = 0.01666667 }
    }
  }
})

update_vanilla_connection("vulcanus-gleba", 35000, {
  {
    asteroid = "small-promethium-asteroid",
    spawn_points = {
      { angle_when_stopped = 1.0, distance = 0.0, probability = 0.000005, speed = 0.01666667 },
      { angle_when_stopped = 1.0, distance = 1.0, probability = 0.000005, speed = 0.01666667 }
    }
  }
})

update_vanilla_connection("gleba-vulcanus", 35000, {
  {
    asteroid = "small-promethium-asteroid",
    spawn_points = {
      { angle_when_stopped = 1.0, distance = 0.0, probability = 0.000005, speed = 0.01666667 },
      { angle_when_stopped = 1.0, distance = 1.0, probability = 0.000005, speed = 0.01666667 }
    }
  }
})

update_vanilla_connection("gleba-fulgora", 50000, {
  {
    asteroid = "small-promethium-asteroid",
    spawn_points = {
      { angle_when_stopped = 0.6, distance = 0.0, probability = 0.0018, speed = 0.01666667 },
      { angle_when_stopped = 0.6, distance = 1.0, probability = 0.0018, speed = 0.01666667 }
    }
  }
})

update_vanilla_connection("gleba-aquilo", 120000, {
  {
    asteroid = "small-promethium-asteroid",
    spawn_points = {
      { angle_when_stopped = 1.0, distance = 0.0, probability = 0.00001, speed = 0.01666667 },
      { angle_when_stopped = 1.0, distance = 1.0, probability = 0.00001, speed = 0.01666667 }
    }
  }
})

update_vanilla_connection("aquilo-gleba", 120000, {
  {
    asteroid = "small-promethium-asteroid",
    spawn_points = {
      { angle_when_stopped = 1.0, distance = 0.0, probability = 0.00001, speed = 0.01666667 },
      { angle_when_stopped = 1.0, distance = 1.0, probability = 0.00001, speed = 0.01666667 }
    }
  }
})

update_vanilla_connection("fulgora-aquilo", 90000, {
  {
    asteroid = "small-promethium-asteroid",
    spawn_points = {
      { angle_when_stopped = 1.0, distance = 0.0, probability = 0.0001, speed = 0.01666667 },
      { angle_when_stopped = 1.0, distance = 1.0, probability = 0.0001, speed = 0.01666667 }
    }
  },
  {
    asteroid = "medium-promethium-asteroid",
    spawn_points = {
      { angle_when_stopped = 0.6, distance = 0.2, probability = 0.00, speed = 0.01666667 },
      { angle_when_stopped = 0.6, distance = 0.4, probability = 0.00002, speed = 0.01666667 },
      { angle_when_stopped = 0.6, distance = 0.6, probability = 0.00, speed = 0.01666667 }
    }
  }
})

-- Define new connections
data:extend({
  -- Aquilo to Shattered Planet
  {
    type = "space-connection",
    name = "aquilo-shattered-planet",
    subgroup = "planet-connections",
    from = "aquilo",
    to = "shattered-planet",
    order = "aquilo-shattered-planet",
    length = 75000,
    icons = {
      { icon = "__space-age__/graphics/icons/planet-route.png", icon_size = 64 }
    },
    asteroid_spawn_definitions = {
      {
        asteroid = "small-carbonic-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.0, probability = 0.015, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 0.5, probability = 0.008, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.002, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-carbonic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.02, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.01, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 1.0, probability = 0.005, speed = 0.01666667 }
        }
      },
      {
        asteroid = "small-oxide-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.0, probability = 0.007, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 0.5, probability = 0.005, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.003, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-oxide-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.01, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.008, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 1.0, probability = 0.006, speed = 0.01666667 }
        }
      },
      {
        asteroid = "small-metallic-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.0, probability = 0.01, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 0.5, probability = 0.007, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.004, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-metallic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.03, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.02, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 1.0, probability = 0.01, speed = 0.01666667 }
        }
      },
      {
        asteroid = "small-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.0, probability = 0.0001, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.0001, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.2, probability = 0.01, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.6, probability = 0.05, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.8, probability = 0.005, speed = 0.01666667 }
        }
      },
      {
        asteroid = "big-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.5, distance = 0.0, probability = 0.00005, speed = 0.01666667 },
		  { angle_when_stopped = 0.5, distance = 0.4, probability = 0.0005, speed = 0.01666667 },
		  { angle_when_stopped = 0.5, distance = 0.55, probability = 0.005, speed = 0.01666667 },
          { angle_when_stopped = 0.5, distance = 1.0, probability = 0.25, speed = 0.01666667 }
        }
      },
      {
        asteroid = "huge-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.4, distance = 0.0, probability = 0.000, speed = 0.01666667 },
		  { angle_when_stopped = 0.4, distance = 0.3, probability = 0.00, speed = 0.01666667 },
		  { angle_when_stopped = 0.4, distance = 0.5, probability = 0.0005, speed = 0.01666667 },
		  { angle_when_stopped = 0.4, distance = 0.8, probability = 0.2, speed = 0.01666667 },
          { angle_when_stopped = 0.4, distance = 1.0, probability = 0.8, speed = 0.01666667 }
        }
      }
    }
  },
  -- Shattered Planet to Aquilo
  {
    type = "space-connection",
    name = "shattered-planet-aquilo",
    subgroup = "planet-connections",
    from = "shattered-planet",
    to = "aquilo",
    order = "shattered-planet-aquilo",
    length = 75000,
    icons = {
      { icon = "__space-age__/graphics/icons/planet-route.png", icon_size = 64 }
    },
     asteroid_spawn_definitions = {
      {
        asteroid = "small-carbonic-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.1, probability = 0.002, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 0.5, probability = 0.008, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.015, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-carbonic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.1, probability = 0.002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.01, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 1.0, probability = 0.02, speed = 0.01666667 }
        }
      },
      {
        asteroid = "small-oxide-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.1, probability = 0.001, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 0.5, probability = 0.005, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.007, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-oxide-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.1, probability = 0.002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.008, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 1.0, probability = 0.01, speed = 0.01666667 }
        }
      },
      {
        asteroid = "small-metallic-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.1, probability = 0.001, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 0.5, probability = 0.007, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.01, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-metallic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.1, probability = 0.002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.02, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 1.0, probability = 0.03, speed = 0.01666667 }
        }
      },
      {
        asteroid = "small-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.0, probability = 0.0001, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.0001, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.005, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.4, probability = 0.05, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.8, probability = 0.01, speed = 0.01666667 }
        }
      },
      {
        asteroid = "big-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.5, distance = 0.0, probability = 0.25, speed = 0.01666667 },
          { angle_when_stopped = 0.5, distance = 0.45, probability = 0.05, speed = 0.01666667 },
		  { angle_when_stopped = 0.5, distance = 0.6, probability = 0.005, speed = 0.01666667 },
		  { angle_when_stopped = 0.5, distance = 1.0, probability = 0.00005, speed = 0.01666667 }
        }
      },
      {
        asteroid = "huge-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.4, distance = 0.0, probability = 0.8, speed = 0.01666667 },
		  { angle_when_stopped = 0.4, distance = 0.2, probability = 0.2, speed = 0.01666667 },
		  { angle_when_stopped = 0.4, distance = 0.5, probability = 0.0005, speed = 0.01666667 },
		  { angle_when_stopped = 0.4, distance = 0.7, probability = 0.00, speed = 0.01666667 },
          { angle_when_stopped = 0.4, distance = 1.0, probability = 0.0000, speed = 0.01666667 }
        }
      }
    }
  },
  -- Fulgora to Shattered Planet
  {
    type = "space-connection",
    name = "fulgora-shattered-planet",
    subgroup = "planet-connections",
    from = "fulgora",
    to = "shattered-planet",
    order = "fulgora-shattered-planet",
    length = 65000,
    icons = {
      { icon = "__space-age__/graphics/icons/planet-route.png", icon_size = 64 }
    },
    asteroid_spawn_definitions = {
      {
        asteroid = "small-carbonic-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.0, probability = 0.015, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 0.5, probability = 0.008, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.002, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-carbonic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.02, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.01, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 1.0, probability = 0.005, speed = 0.01666667 }
        }
      },
      {
        asteroid = "small-oxide-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.0, probability = 0.007, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 0.5, probability = 0.005, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.003, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-oxide-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.01, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.008, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 1.0, probability = 0.006, speed = 0.01666667 }
        }
      },
      {
        asteroid = "small-metallic-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.0, probability = 0.01, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 0.5, probability = 0.007, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.004, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-metallic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.03, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.02, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 1.0, probability = 0.01, speed = 0.01666667 }
        }
      },
      {
        asteroid = "small-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.0, probability = 0.0001, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.0001, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.2, probability = 0.01, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.6, probability = 0.05, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.8, probability = 0.005, speed = 0.01666667 }
        }
      },
      {
        asteroid = "big-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.5, distance = 0.0, probability = 0.00005, speed = 0.01666667 },
		  { angle_when_stopped = 0.5, distance = 0.4, probability = 0.0005, speed = 0.01666667 },
		  { angle_when_stopped = 0.5, distance = 0.55, probability = 0.005, speed = 0.01666667 },
          { angle_when_stopped = 0.5, distance = 1.0, probability = 0.25, speed = 0.01666667 }
        }
      },
      {
        asteroid = "huge-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.4, distance = 0.0, probability = 0.000, speed = 0.01666667 },
		  { angle_when_stopped = 0.4, distance = 0.3, probability = 0.00, speed = 0.01666667 },
		  { angle_when_stopped = 0.4, distance = 0.5, probability = 0.0005, speed = 0.01666667 },
		  { angle_when_stopped = 0.4, distance = 0.8, probability = 0.2, speed = 0.01666667 },
          { angle_when_stopped = 0.4, distance = 1.0, probability = 0.8, speed = 0.01666667 }
        }
      }
    }
  },
  -- Shattered Planet to Fulgora
  {
    type = "space-connection",
    name = "shattered-planet-fulgora",
    subgroup = "planet-connections",
    from = "shattered-planet",
    to = "fulgora",
    order = "shattered-planet-fulgora",
    length = 65000,
    icons = {
      { icon = "__space-age__/graphics/icons/planet-route.png", icon_size = 64 }
    },
    asteroid_spawn_definitions = {
      {
        asteroid = "small-carbonic-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.1, probability = 0.002, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 0.5, probability = 0.008, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.015, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-carbonic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.1, probability = 0.002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.01, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 1.0, probability = 0.02, speed = 0.01666667 }
        }
      },
      {
        asteroid = "small-oxide-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.1, probability = 0.001, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 0.5, probability = 0.005, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.007, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-oxide-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.1, probability = 0.002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.008, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 1.0, probability = 0.01, speed = 0.01666667 }
        }
      },
      {
        asteroid = "small-metallic-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.1, probability = 0.001, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 0.5, probability = 0.007, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.01, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-metallic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.1, probability = 0.002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.02, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 1.0, probability = 0.03, speed = 0.01666667 }
        }
      },
      {
        asteroid = "small-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.0, probability = 0.0001, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 1.0, probability = 0.0001, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.005, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.4, probability = 0.05, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.8, probability = 0.01, speed = 0.01666667 }
        }
      },
      {
        asteroid = "big-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.5, distance = 0.0, probability = 0.25, speed = 0.01666667 },
          { angle_when_stopped = 0.5, distance = 0.45, probability = 0.05, speed = 0.01666667 },
		  { angle_when_stopped = 0.5, distance = 0.6, probability = 0.005, speed = 0.01666667 },
		  { angle_when_stopped = 0.5, distance = 1.0, probability = 0.00005, speed = 0.01666667 }
        }
      },
      {
        asteroid = "huge-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.4, distance = 0.0, probability = 0.8, speed = 0.01666667 },
		  { angle_when_stopped = 0.4, distance = 0.2, probability = 0.2, speed = 0.01666667 },
		  { angle_when_stopped = 0.4, distance = 0.5, probability = 0.0005, speed = 0.01666667 },
		  { angle_when_stopped = 0.4, distance = 0.7, probability = 0.00, speed = 0.01666667 },
          { angle_when_stopped = 0.4, distance = 1.0, probability = 0.0000, speed = 0.01666667 }
        }
      }
    }
  },
  -- Aquilo to Solar System Edge
  {
    type = "space-connection",
    name = "aquilo-solar-system-edge",
    subgroup = "planet-connections",
    from = "aquilo",
    to = "solar-system-edge",
    order = "aquilo-solar-system-edge",
    length = 300000,
    icons = {
      { icon = "__space-age__/graphics/icons/planet-route.png", icon_size = 64 }
    },
    asteroid_spawn_definitions = {
	  {
        asteroid = "small-promethium-asteroid",
        spawn_points = {
          { angle_when_stopped = 1.0, distance = 0.0, probability = 0.0001, speed = 0.01666667 },
          { angle_when_stopped = 1.0, distance = 0.25, probability = 0.00, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-carbonic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.001, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.1, probability = 0.002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.2, probability = 0.5, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.4, probability = 0.5, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.5, probability = 0.0002, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.0, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-oxide-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.001, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.1, probability = 0.002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.2, probability = 0.5, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.4, probability = 0.5, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.5, probability = 0.0002, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.0, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-metallic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.001, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.1, probability = 0.002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.2, probability = 0.5, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.4, probability = 0.5, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.5, probability = 0.0002, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.0, speed = 0.01666667 }
        }
      },
      {
        asteroid = "big-carbonic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.0001, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.1, probability = 0.0002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.2, probability = 0.05, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.4, probability = 0.05, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.5, probability = 0.00002, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.0, speed = 0.01666667 }
        }
      },
      {
        asteroid = "big-oxide-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.0001, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.1, probability = 0.0002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.2, probability = 0.05, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.4, probability = 0.05, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.5, probability = 0.00002, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.0, speed = 0.01666667 }
        }
      },
      {
        asteroid = "big-metallic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.0001, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.1, probability = 0.0002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.2, probability = 0.05, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.4, probability = 0.05, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.5, probability = 0.00002, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.0, speed = 0.01666667 }
        }
      },
      {
        asteroid = "huge-carbonic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.00005, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.1, probability = 0.0001, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.2, probability = 0.025, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.4, probability = 0.025, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.5, probability = 0.00001, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.0, speed = 0.01666667 }
        }
      },
      {
        asteroid = "huge-oxide-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.00005, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.1, probability = 0.0001, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.2, probability = 0.025, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.4, probability = 0.025, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.5, probability = 0.00001, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.0, speed = 0.01666667 }
        }
      },
      {
        asteroid = "huge-metallic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.00005, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.1, probability = 0.0001, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.2, probability = 0.025, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.4, probability = 0.025, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.5, probability = 0.00001, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.0, speed = 0.01666667 }
        }
      }
    }
  },
  -- Solar System Edge to Aquilo
  {
    type = "space-connection",
    name = "solar-system-edge-aquilo",
    subgroup = "planet-connections",
    from = "solar-system-edge",
    to = "aquilo",
    order = "solar-system-edge-aquilo",
    length = 300000,
    icons = {
      { icon = "__space-age__/graphics/icons/planet-route.png", icon_size = 64 }
    },
    asteroid_spawn_definitions = {
      {
        asteroid = "medium-carbonic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.0, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.0002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.6, probability = 0.5, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.8, probability = 0.5, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.9, probability = 0.002, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.0001, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-oxide-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.0, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.0002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.6, probability = 0.5, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.8, probability = 0.5, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.9, probability = 0.002, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.0001, speed = 0.01666667 }
        }
      },
      {
        asteroid = "medium-metallic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.0, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.0002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.6, probability = 0.5, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.8, probability = 0.5, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.9, probability = 0.002, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.0001, speed = 0.01666667 }
        }
      },
      {
        asteroid = "big-carbonic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.0, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.00002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.6, probability = 0.05, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.8, probability = 0.05, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.9, probability = 0.0002, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.00001, speed = 0.01666667 }
        }
      },
      {
        asteroid = "big-oxide-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.0, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.00002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.6, probability = 0.05, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.8, probability = 0.05, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.9, probability = 0.0002, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.00001, speed = 0.01666667 }
        }
      },
      {
        asteroid = "big-metallic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.0, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.00002, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.6, probability = 0.05, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.8, probability = 0.05, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.9, probability = 0.0002, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.00001, speed = 0.01666667 }
        }
      },
      {
        asteroid = "huge-carbonic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.0, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.00001, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.6, probability = 0.025, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.8, probability = 0.025, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.9, probability = 0.0001, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.000005, speed = 0.01666667 }
        }
      },
      {
        asteroid = "huge-oxide-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.0, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.00001, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.6, probability = 0.025, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.8, probability = 0.025, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.9, probability = 0.0001, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.000005, speed = 0.01666667 }
        }
      },
      {
        asteroid = "huge-metallic-asteroid",
        spawn_points = {
          { angle_when_stopped = 0.6, distance = 0.0, probability = 0.0, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.5, probability = 0.00001, speed = 0.01666667 },
          { angle_when_stopped = 0.6, distance = 0.6, probability = 0.025, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.8, probability = 0.025, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 0.9, probability = 0.0001, speed = 0.01666667 },
		  { angle_when_stopped = 0.6, distance = 1.0, probability = 0.000005, speed = 0.01666667 }
        }
      }
    }
  }
})

-- Verify and log space-connection prototypes
local connections = {
  "nauvis-vulcanus",
  "vulcanus-nauvis",
  "nauvis-gleba",
  "gleba-nauvis",
  "nauvis-fulgora",
  "fulgora-nauvis",
  "vulcanus-gleba",
  "gleba-vulcanus",
  "gleba-fulgora",
  "gleba-aquilo",
  "aquilo-gleba",
  "fulgora-aquilo",
  "aquilo-shattered-planet",
  "shattered-planet-aquilo",
  "fulgora-shattered-planet",
  "shattered-planet-fulgora",
  "aquilo-solar-system-edge",
  "solar-system-edge-aquilo"
}

for _, name in pairs(connections) do
  log_prototype("space-connection", name)
end

-- Function to update connection icons
local function update_connection_icons(prototype)
  local from = data.raw["planet"][prototype.from] or data.raw["space-location"][prototype.from]
  local to = data.raw["planet"][prototype.to] or data.raw["space-location"][prototype.to]
  if from and to and from.icon and to.icon then
    prototype.icons = {
      { icon = "__space-age__/graphics/icons/planet-route.png", icon_size = 64 },
      { icon = from.icon, icon_size = from.icon_size or 64, scale = 0.333 * (64 / (from.icon_size or 64)), shift = {-6, -6} },
      { icon = to.icon, icon_size = to.icon_size or 64, scale = 0.333 * (64 / (to.icon_size or 64)), shift = {6, 6} }
    }
    log_message("Updated icons for " .. prototype.name .. ": " .. serpent.block(prototype.icons))
  else
    log_message("Warning: Could not update icons for " .. prototype.name .. " - from or to icons not found, keeping default")
  end
end

-- Update icons for all connections
for _, name in pairs(connections) do
  if data.raw["space-connection"][name] then
    update_connection_icons(data.raw["space-connection"][name])
  else
    log_message("Warning: Space-connection " .. name .. " not found for icon update")
  end
end
