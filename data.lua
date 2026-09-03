-- technologies
require("prototypes.technologies")

-- items
require("prototypes.items.fish")
require("prototypes.items.mine")
require("prototypes.items.sludge")
require("prototypes.recipes")
require("prototypes.fixes")
require("prototypes.categories")
require("prototypes.resources")
-- planet gen
require("prototypes.planet.vulcanus")

-- proposed changes

-- vulcanus
---- change coal for carbon in planet generation 
---- remove coal to carbon recipe, no longer needed
---- add sulfur crystallization (100 sulfuric acid -> 1 sulfur)
---- rebalance coal synthesis (1 sulfur + 5 carbon + 10 water -> 5 coal) and add it also to vulcanus tech

-- fulgora
---- remove solid fuel, ice and holmium from scrap sorting
---- change heavy oil ocean into oily sludge ocean
---- sludge turns into water and holmium (100 sludge -> 10 water, 90 heavy oil, 1% holmium) or
---- add recipe for water to ice 100 to 1
