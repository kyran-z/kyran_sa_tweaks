-- technologies
require("prototypes.technologies")

-- items
require("prototypes.recipes")
require("prototypes.fixes")
require("prototypes.items.fish")
require("prototypes.items.mine")
require("prototypes.categories")
require("prototypes.resources")
-- planet gen
require("prototypes.planet.vulcanus")

-- proposed changes

-- vulcanus
---- change coal for carbon in planet generation 
------- remove coal to carbon recipe, no longer needed
------- add sulfur crystallization (100 sulfuric acid -> 1 sulfur)
------- rebalance coal synthesis (1 sulfur + 5 carbon + 10 water -> 5 coal) and add it also to vulcanus tech
