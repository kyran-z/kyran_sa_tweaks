local function add_recipe_category(recipe_name, category)
    local recipe = data.raw["recipe"][recipe_name]
    recipe.categories = recipe.categories or { "crafting" }
    table.insert(recipe.categories, category)
end

add_recipe_category("electric-engine-unit", "electromagnetics")
add_recipe_category("flying-robot-frame", "electromagnetics")
add_recipe_category("logistic-robot", "electromagnetics")
add_recipe_category("construction-robot", "electromagnetics")
add_recipe_category("roboport", "electromagnetics")

add_recipe_category("engine-unit", "metallurgy")
add_recipe_category("lithium-plate", "metallurgy")
add_recipe_category("coal-synthesis", "organic")

add_recipe_category("ice-melting", "cryogenics")
data.raw["recipe"]["quantum-processor"].categories = { "cryogenics" }
data.raw["recipe"]["electrolyte"].categories = { "chemistry" }
data.raw["recipe"]["holmium-plate"].categories = { "smelting", "metallurgy" }
data.raw["recipe"]["holmium-solution"].categories = { "organic" }
