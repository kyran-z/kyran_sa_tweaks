local function set_conditions(recipe, conditions)
    data.raw["recipe"][recipe].surface_conditions = { conditions }
end

local conditions = {}

conditions.only_vulcanus = function()
    return { property = "pressure", min = 4000, max = 4000 }
end
conditions.only_fulgora = function()
    return { property = "magnetic-field", min = 99, max = 99 }
end
conditions.only_gleba = function()
    return { property = "pressure", max = 2000, min = 2000 }
end
conditions.only_aquilo = function()
    return { property = "pressure", max = 600, min = 600 }
end

set_conditions("sulfur-crystallization", conditions.only_vulcanus())
set_conditions("plastic-vulcanization", conditions.only_vulcanus())

set_conditions("bio-oil", conditions.only_gleba())

set_conditions("silicon", conditions.only_aquilo())
set_conditions("silicon-cell", conditions.only_aquilo())

set_conditions("holmium-ore", conditions.only_fulgora())
set_conditions("holmium-plate", conditions.only_fulgora())
set_conditions("electrolyte", conditions.only_fulgora())
set_conditions("superconductor", conditions.only_fulgora())
set_conditions("supercapacitor", conditions.only_fulgora())
