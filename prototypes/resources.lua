require("__base__/prototypes/factoriopedia-util");
local resource_autoplace = require("resource-autoplace")
local util = require("data-util")

local carbon_resource = util.copyTable(data.raw["resource"]["coal"])
carbon_resource.name = "carbon"
carbon_resource.minable.result = "carbon"
carbon_resource.map_color = {25, 25, 25}
carbon_resource.icon = "__space-age__/graphics/icons/carbon.png"
carbon_resource.factoriopedia_simulation = {
    init = make_resource("carbon")
}

local ice_resource = util.copyTable(data.raw["resource"]["calcite"])
ice_resource.name = "ice"
ice_resource.minable.result = "ice"
ice_resource.map_color = {225, 250, 250}
ice_resource.icon = "__space-age__/graphics/icons/ice.png"
ice_resource.factoriopedia_simulation = {
    init = make_resource("ice")
}
ice_resource.autoplace = resource_autoplace.resource_autoplace_settings {
    name = "ice",
    base_density = 100,
    has_starting_area_placement = true,
    regular_rq_factor_multiplier = 1.1,
    starting_rq_factor_multiplier = 1.5,
    candidate_spot_count = 50
}

data:extend({carbon_resource, ice_resource})
