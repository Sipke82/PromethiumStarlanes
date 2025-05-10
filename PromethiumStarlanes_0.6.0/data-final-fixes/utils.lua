-- Debug logging function
local function log_message(message)
  log("[PromethiumStarlanes] " .. message)
end

-- Log full prototype data for debugging
local function log_prototype(type_name, name)
  local proto = data.raw[type_name][name]
  if proto then
    log_message("Prototype " .. type_name .. "." .. name .. ": " .. serpent.block(proto, {sparse = true}))
  else
    log_message("Prototype " .. type_name .. "." .. name .. " not found")
  end
end

-- Export the functions so they can be used in other files
return {
  log_message = log_message,
  log_prototype = log_prototype
}
