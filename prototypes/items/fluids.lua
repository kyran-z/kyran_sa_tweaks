data:extend({{
    type = "fluid",
    name = "oil-sludge",
    icon = "__kyran_sa_tweaks__/graphics/oil-sludge.png",
    base_color = {60, 40, 40},
    flow_color = {20, 20, 20},
    default_temperature = 5,
    auto_barrel = false
}, {
    type = "fluid",
    name = "bio-oil",
    icon = "__kyran_sa_tweaks__/graphics/bio-oil.png",
    base_color = {60, 130, 50},
    flow_color = {60, 100, 50},
    default_temperature = 5,
    auto_barrel = false
}})

data.raw["tile"]["oil-ocean-shallow"].fluid = "oil-sludge"
data.raw["tile"]["oil-ocean-shallow-2"].fluid = "oil-sludge"
data.raw["tile"]["oil-ocean-deep"].fluid = "oil-sludge"
data.raw["tile"]["oil-ocean-deep-2"].fluid = "oil-sludge"