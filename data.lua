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

-- Vulcanus
---- Changed coal for carbon in planet generation 
---- Removed coal to carbon recipe
---- Added sulfur crystallization for turning sulfuric acid directly into sulfur (only on vulcanus)
---- Rebalanced coal synthesis to give more coal and added it to vulcanus tech

-- Fulgora
---- Removed solid fuel and holmium from scrap sorting
---- Changed heavy oil ocean into oily sludge ocean, refined into heavy oil, light oil and holmium solution
---- Changed holmium chain, you get ore from solution, then smelt it into plates
---- Added holmium bacteria, post gleba, to breed as much holmium as you like from bioflux

-- Gleba
---- Gleba trees now give wood as well as fruits
---- Added a way to get carbon out of wood
---- Added bio-oil, crafted from coal and jelly, a new required ingredient in various gleba recipe
---- Bio-oil can also be used as flamethrower fuel, extremely effective against pentapods

-- Aquilo
---- Completely changed planet generation to create a full arcipelago of icy islands
---- Changed crude oil into bitumen seeps, separated into coal and petroleum gas
---- Added quartz as a minable resource
---- Quartz can be smelted into silicon and further processed into silicon cells, used in quantum processors
