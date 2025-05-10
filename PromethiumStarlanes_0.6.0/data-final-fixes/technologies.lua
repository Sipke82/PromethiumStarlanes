-- Require the utils module
local utils = require("data-final-fixes.utils")
local log_message = utils.log_message

-- Create discovery technologies
data:extend({
  -- Shattered Planet discovery technology
  {
    type = "technology",
    name = "shattered-planet-discovery",
    icon = "__PromethiumStarlanes__/graphics/icons/shattered-planet-tech.png",
    icon_size = 512,
    prerequisites = {"space-platform"}, -- Base prerequisite
    effects = {
      { type = "unlock-space-location", space_location = "shattered-planet" }
    },
    unit = {
      count = 10000, -- Increased from 1000 to 10000
      ingredients = {}, -- Populated dynamically below
      time = 60
    },
    order = "z-a"
  },
  -- Navigation to the Finish (Solar System Edge discovery)
  {
    type = "technology",
    name = "navigation-to-the-finish",
    icon = "__PromethiumStarlanes__/graphics/icons/solar-system-edge-tech.png",
    icon_size = 256,
    localised_description = {
      "technology-description.navigation-to-the-finish",
      "This is the final destination. Reaching the Solar System Edge completes your journey and wins the game!"
    },
    prerequisites = {
      "shattered-planet-discovery",
      "promethium-science-pack"
    },
    unit = {
      count = 1000, -- High cost to reflect endgame challenge
      ingredients = {}, -- Populated dynamically below
      time = 240
    },
    order = "z-b"
  }
})

-- Dynamically set science packs for shattered-planet-discovery
if data.raw.technology["planet-discovery-aquilo"] then
  local ref_tech = data.raw.technology["planet-discovery-aquilo"]
  local tech = data.raw.technology["shattered-planet-discovery"]
  local new_ingredients = {}
  local new_prerequisites = {"space-platform"} -- Base prerequisite

  -- Copy science pack ingredients from planet-discovery-aquilo
  for _, ingredient in pairs(ref_tech.unit.ingredients) do
    table.insert(new_ingredients, {ingredient[1], ingredient[2]})
    -- Add the science pack as a prerequisite (if it's a science pack)
    if data.raw.item[ingredient[1]] and ingredient[1]:match("science%-pack$") then
      table.insert(new_prerequisites, ingredient[1])
    end
  end

  -- Update the technology
  tech.unit.ingredients = new_ingredients
  tech.prerequisites = new_prerequisites

  log_message("Shattered Planet Discovery technology updated with science packs from planet-discovery-aquilo: " .. serpent.block(tech.unit.ingredients))
else
  log_message("Error: planet-discovery-aquilo technology not found")
end

-- Dynamically set science packs for navigation-to-the-finish
local science_packs = {}
local prerequisites = {
  "shattered-planet-discovery",
  "promethium-science-pack"
}

-- Dynamically collect all science packs
for _, tool in pairs(data.raw["tool"]) do
  if tool.subgroup and data.raw["item-subgroup"][tool.subgroup].name == "science-pack" then
    local quantity = (tool.name == "promethium-science-pack") and 25 or 100
    table.insert(science_packs, {tool.name, quantity})
  end
end

-- Update navigation-to-the-finish technology
local tech = data.raw.technology["navigation-to-the-finish"]
tech.unit.ingredients = science_packs
tech.prerequisites = prerequisites

log_message("Navigation to the Finish technology updated with science packs: " .. serpent.block(tech.unit.ingredients))

-- Modify promethium-science-pack to remove planet unlocks and dynamically include all previous science packs
local technologies = data.raw["technology"]
if technologies["promethium-science-pack"] then
  local promethium_ingredients = {}
  local promethium_prerequisites = {"space-platform"}

  -- Dynamically collect all science packs except promethium-science-pack
  for _, tool in pairs(data.raw["tool"]) do
    if tool.subgroup and data.raw["item-subgroup"][tool.subgroup].name == "science-pack" and tool.name ~= "promethium-science-pack" then
      -- Add as ingredient
      table.insert(promethium_ingredients, {tool.name, 1})
      -- Add corresponding technology as prerequisite (if it exists)
      local tech_name = tool.name
      if data.raw["technology"][tech_name] then
        table.insert(promethium_prerequisites, tech_name)
      end
    end
  end

  technologies["promethium-science-pack"].effects = {} -- Remove planet unlocks
  technologies["promethium-science-pack"].prerequisites = promethium_prerequisites
  technologies["promethium-science-pack"].unit = {
    count = 1000,
    ingredients = promethium_ingredients,
    time = 60
  }
  log_message("Promethium Science Pack technology updated with science packs: " .. serpent.block(promethium_ingredients))
else
  log_message("Error: Promethium Science Pack technology not found")
end
