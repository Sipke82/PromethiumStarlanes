-- planet-asteroids.lua for PromethiumStarlanes mod
-- Configures asteroid spawning in planetary orbits for Shattered Planet and other planets

-- Function to add asteroid spawn definitions to a planet's orbit
local function add_asteroids_to_orbit(planet_name, asteroid_definitions)
  local planet = data.raw.planet[planet_name]
  if not planet then
    log("[PromethiumStarlanes] Warning: Planet " .. planet_name .. " not found")
    return
  end

  -- Initialize or preserve existing asteroid_spawn_definitions
  planet.asteroid_spawn_definitions = planet.asteroid_spawn_definitions or {}

  -- Add specified asteroids
  for _, asteroid in ipairs(asteroid_definitions) do
    -- Check if the asteroid prototype exists
    if not data.raw["asteroid"][asteroid.name] then
      log("[PromethiumStarlanes] Warning: Asteroid " .. asteroid.name .. " not found for planet " .. planet_name)
    else
      table.insert(planet.asteroid_spawn_definitions, {
        asteroid = asteroid.name,
        probability = asteroid.probability,
        speed = 0.016666666666666665, -- Matches space-connections.lua from log
        angle_when_stopped = asteroid.angle or 1
        -- No 'type' field to avoid asteroid-chunk error
      })
      log("[PromethiumStarlanes] Added " .. asteroid.name .. " to " .. planet_name .. " orbit with probability " .. asteroid.probability)
    end
  end
end

-- Shattered Planet asteroid definitions
local shattered_planet_asteroids = {
  { name = "small-carbonic-asteroid", probability = 0.00002, angle = 1 },
  { name = "medium-carbonic-asteroid", probability = 0.00003, angle = 0.8 },
  { name = "small-oxide-asteroid", probability = 0.00001, angle = 1 },
  { name = "medium-oxide-asteroid", probability = 0.00002, angle = 0.7 },
  { name = "small-metallic-asteroid", probability = 0.00003, angle = 1 },
  { name = "medium-metallic-asteroid", probability = 0.00005, angle = 0.6 },
  { name = "small-promethium-asteroid", probability = 0.001, angle = 1 },
  { name = "medium-promethium-asteroid", probability = 0.01, angle = 0.8 },
  { name = "big-promethium-asteroid", probability = 0.02, angle = 0.6 },
  { name = "huge-promethium-asteroid", probability = 0.05, angle = 0.5 }
}

-- Other planets' asteroid definitions (only small-promethium-asteroid)
local small_promethium_asteroid = {
  { name = "small-promethium-asteroid", probability = 0.00005, angle = 1 }
}

-- Apply asteroid definitions to planets
add_asteroids_to_orbit("shattered-planet", shattered_planet_asteroids)
add_asteroids_to_orbit("nauvis", small_promethium_asteroid)
add_asteroids_to_orbit("vulcanus", small_promethium_asteroid)
add_asteroids_to_orbit("gleba", small_promethium_asteroid)
add_asteroids_to_orbit("fulgora", small_promethium_asteroid)
add_asteroids_to_orbit("aquilo", small_promethium_asteroid)

-- Log all planet asteroid definitions for debugging
for planet_name, planet in pairs(data.raw.planet) do
  if planet.asteroid_spawn_definitions then
    for _, spawn in ipairs(planet.asteroid_spawn_definitions) do
      log("[PromethiumStarlanes] Planet " .. planet_name .. " has asteroid " .. spawn.asteroid .. " with probability " .. tostring(spawn.probability))
    end
  end
end