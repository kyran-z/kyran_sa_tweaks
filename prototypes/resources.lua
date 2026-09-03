require("__base__/prototypes/factoriopedia-util");
local util = require("data-util")

local carbon_resource = util.copyTable(data.raw["resource"]["coal"])
carbon_resource.name = "carbon"
carbon_resource.minable.result = "carbon"
carbon_resource.icon = "__space-age__/graphics/icons/carbon.png"
carbon_resource.factoriopedia_simulation = {
    init = make_resource("carbon")
}

data:extend({carbon_resource})

