-- Debug logging function
local function log_message(message)
  log("[PromethiumStarlanes] " .. message)
end

-- Adjust planet positions
data.raw["space-location"]["shattered-planet"].orientation = 0.36
data.raw["space-location"]["shattered-planet"].distance = 51

data.raw["space-location"]["solar-system-edge"].orientation = 0.25
data.raw["space-location"]["solar-system-edge"].distance = 150

data.raw["planet"]["aquilo"].orientation = 0.25
data.raw["planet"]["aquilo"].distance = 63

-- Override refinery technology
if data.raw.technology["refinery"] then
  local tech = data.raw.technology["refinery"]
  
  -- Copy science pack ingredients from the prerequisite technology (quality-module-2)
  if data.raw.technology["quality-module-2"] then
    local ref_tech = data.raw.technology["quality-module-2"]
    local new_ingredients = {}
    
    -- Copy existing ingredients from quality-module-2
    for _, ingredient in pairs(ref_tech.unit.ingredients) do
      table.insert(new_ingredients, {ingredient[1], ingredient[2]})
    end
    
    -- Add promethium-science-pack if it exists (from promethium-quality mod)
    if data.raw.item["promethium-science-pack"] then
      -- Check if promethium-science-pack is already in the list
      local found = false
      for _, ingredient in pairs(new_ingredients) do
        if ingredient[1] == "promethium-science-pack" then
          found = true
          break
        end
      end
      if not found then
        table.insert(new_ingredients, {"promethium-science-pack", 1})
      end
    end
    
    -- Update the technology's unit
    tech.unit = {
      count = 1000, -- Total units for other science packs
      ingredients = new_ingredients,
      time = 60
    }
    
    -- Adjust promethium-science-pack count to 25% (250 units)
    if data.raw.item["promethium-science-pack"] then
      for _, ingredient in pairs(tech.unit.ingredients) do
        if ingredient[1] == "promethium-science-pack" then
          ingredient[2] = 0.25 -- 25% of the other packs (1000 * 0.25 = 250 units)
          break
        end
      end
    end
    
    log_message("Refinery technology updated with science packs from quality-module-2: " .. serpent.block(tech.unit.ingredients))
  else
    log_message("Error: quality-module-2 technology not found")
  end
  
  -- Keep the prerequisite
  tech.prerequisites = {"quality-module-2"}
else
  log_message("Error: refinery technology not found")
end
