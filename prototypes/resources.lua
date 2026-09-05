require("__base__/prototypes/factoriopedia-util");
local resource_autoplace = require("resource-autoplace")
local util = require("data-util")

local carbon_resource = util.copyTable(data.raw["resource"]["coal"])
carbon_resource.name = "carbon"
carbon_resource.minable.result = "carbon"
carbon_resource.map_color = { 25, 25, 25 }
carbon_resource.icon = "__space-age__/graphics/icons/carbon.png"
carbon_resource.factoriopedia_simulation = { init = make_resource("carbon") }
data.raw["autoplace-control"]["vulcanus_coal"].localised_name = {
    "", "[entity=carbon] ", { "entity-name.carbon" }
}

local quartz_resource = util.copyTable(data.raw["resource"]["calcite"])
quartz_resource.name = "quartz"
quartz_resource.minable.result = "quartz"
quartz_resource.map_color = { 225, 250, 250 }
quartz_resource.icon = "__kyran_sa_tweaks__/graphics/items/quartz.png"
quartz_resource.factoriopedia_simulation = { init = make_resource("quartz") }
quartz_resource.autoplace = resource_autoplace.resource_autoplace_settings {
    name = "quartz", base_density = 50, base_spots_per_km2 = 25,
    has_starting_area_placement = true, regular_rq_factor_multiplier = 0.8,
    candidate_spot_count = 50
}

local bitumen_resource = util.copyTable(data.raw["resource"]["crude-oil"])
bitumen_resource.name = "bitumen"
bitumen_resource.minable.results = {
    { type = "fluid", name = "bitumen", amount = 10 }
}
bitumen_resource.autoplace = resource_autoplace.resource_autoplace_settings {
    name = "bitumen", order = "a", base_density = 12,
    random_probability = 1 / 20, random_spot_size_minimum = 1,
    random_spot_size_maximum = 1, additional_richness = 300000,
    has_starting_area_placement = true, regular_rq_factor_multiplier = 1
}

bitumen_resource.map_color = { 0, 1, 20 }
data.raw["autoplace-control"]["aquilo_crude_oil"].localised_name = {
    "", "[entity=bitumen] ", { "entity-name.bitumen" }
}

data:extend({ carbon_resource, quartz_resource, bitumen_resource })
