-- stuff
require("prototypes.items.items")
require("prototypes.items.fluids")
require("prototypes.items.fish")
require("prototypes.items.mine")
require("prototypes.recipes")
require("prototypes.fixes")
require("prototypes.categories")
require("prototypes.resources")
require("prototypes.technologies")
-- planet gen
require("prototypes.planet.vulcanus")
require("prototypes.planet.aquilo")

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
---- sludge turns into water and holmium (100 sludge -> 50 heavy oil, 40 light oil, 10 holmium solution) -- too much maybe
---- add holmium crystallization (100 holmium solution + 5 stone -> 10 holmium ore) 

---- add post-gleba way to get more holmium solution with new biochamber recipe ???

-- gleba
---- make gleba trees give wood as well as fruits
---- wood to carbon and the new coal synthesis
---- make bio-oil from pentapod eggs and coal (1 egg + 1 coal + 50 water -> 100 bio-oil) -- burnable in flamethrowers
---- adjust gleba recipes, add bio-oil to plastic, rocket fuel and carbon fiber (very low amounts)

---- fix bio-oil pic

-- aquilo
---- change crude oil into bitumen, add bitumen separation (100 bitumen -> 4 coal + 100 petroleum gas) (chemistry)
---- new recipe for concrete (500 bitumen + 1 iron plate -> 20 concrete) (metallurgy)
---- change solid fuel from ammonia recipe (15 ammonia + 5 petroleum -> 1 solid fuel)

---- add quartz resource minable
---- quartz smelting (1 quartz + 1 coal -> 2 silicon) (metallurgy)
---- silicon cell (1 silicon + 5 sulfuric acid -> 1 silicon cell) (electromagnetic)
---- alternative blue circuit recipe (1 lithium plate + 2 silicon cell + 5 ammonia -> 2 blue circuit) (electromagnetic)
---- quantum processor (move recipe to cryogenics)
