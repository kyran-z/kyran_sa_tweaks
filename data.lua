-- stuff
require("prototypes.entities")
require("prototypes.items.items")
require("prototypes.items.fluids")
require("prototypes.items.fish")
require("prototypes.items.mine")
require("prototypes.recipes")
require("prototypes.fixes")
require("prototypes.resources")
require("prototypes.technologies")
require("prototypes.categories")
-- planet gen
require("prototypes.planet.vulcanus")
require("prototypes.planet.aquilo")
require("prototypes.surface-conditions")

-- proposed changes

-- vulcanus
---- change coal for carbon in planet generation 
---- remove coal to carbon recipe, no longer needed
---- add sulfur crystallization (100 sulfuric acid -> 1 sulfur)
---- rebalance coal synthesis (1 sulfur + 5 carbon + 10 water -> 5 coal) and add it also to vulcanus tech

---- add alternative recipe for uranium piercing rounds that uses tunsgten carbide instead (rename them heavy piercing rounds)

-- fulgora
---- remove solid fuel and holmium from scrap sorting
---- change heavy oil ocean into oily sludge ocean
---- sludge turns into water and holmium (100 sludge -> 10 heavy oil, 75 light oil, 15 holmium solution)
---- add holmium crystallization (10 holmium solution -> 1 holmium ore) 

---- holmium bacteria loop
---- get some bacteria from solution (50 solution -> 1 bacteria) bacteria spoils into holmium ore
---- standard bacteria loop (1 bacteria + 1 bioflux -> 4 bacteria)
---- solution recipe (1 bacteria + 10 water -> 10 solution)

-- gleba
---- make gleba trees give wood as well as fruits
---- wood to carbon and the new coal synthesis
---- make bio-oil from pentapod eggs and coal (1 egg + 1 coal + 50 water -> 100 bio-oil) -- burnable in flamethrowers
---- adjust gleba recipes, add bio-oil to plastic, rocket fuel and carbon fiber (very low amounts)

-- aquilo
---- change crude oil into bitumen, add bitumen separation (100 bitumen -> 4 coal + 100 petroleum gas) (chemistry)
---- new recipe for concrete (500 bitumen + 1 iron plate -> 20 concrete) (metallurgy)
---- change solid fuel from ammonia recipe (15 ammonia + 5 petroleum -> 1 solid fuel)
---- add quartz resource minable
---- quartz smelting (1 quartz  -> 1 silicon) (metallurgy)
---- silicon cell (1 silicon + 1 plastic + 5 sulfuric acid -> 2 silicon cell) (electromagnetic)
---- quantum processor (move recipe to cryogenics)
