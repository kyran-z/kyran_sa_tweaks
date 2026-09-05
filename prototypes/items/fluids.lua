data:extend({
    {
        type = "fluid", name = "oil-sludge", subgroup = "fluid",
        icon = "__kyran_sa_tweaks__/graphics/fluids/oil-sludge.png",
        base_color = { 114, 35, 22 }, flow_color = { 114, 35, 22 },
        default_temperature = 5, auto_barrel = false, order = "b-b-d"
    }, {
        type = "fluid", name = "bio-oil", subgroup = "fluid",
        icon = "__kyran_sa_tweaks__/graphics/fluids/bio-oil.png",
        base_color = { 166, 137, 43 }, flow_color = { 166, 137, 43 },
        default_temperature = 5, auto_barrel = false, order = "b-b-c"
    }, {
        type = "fluid", name = "bitumen", subgroup = "fluid",
        icon = "__kyran_sa_tweaks__/graphics/fluids/bitumen.png",
        base_color = { 0, 1, 24 }, flow_color = { 0, 1, 24 },
        default_temperature = 5, auto_barrel = false, order = "b-e-d"
    }
})

data.raw["tile"]["oil-ocean-shallow"].fluid = "oil-sludge"
data.raw["tile"]["oil-ocean-shallow-2"].fluid = "oil-sludge"
data.raw["tile"]["oil-ocean-deep"].fluid = "oil-sludge"
data.raw["tile"]["oil-ocean-deep-2"].fluid = "oil-sludge"
