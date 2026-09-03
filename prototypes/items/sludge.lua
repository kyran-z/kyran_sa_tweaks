data:extend({{
    type = "fluid",
    name = "oil-sludge",
    icon = "__kyran_sa_tweaks__/graphics/oil-sludge.png",
    base_color = {
        r = 0.24,
        g = 0.16,
        b = 0.16
    },
    flow_color = {
        r = 0.08,
        g = 0.08,
        b = 0.08
    },
    default_temperature = 5,
    auto_barrel = true
}})

data.raw["tile"]["oil-ocean-shallow"].fluid = "oil-sludge"
data.raw["tile"]["oil-ocean-deep"].fluid = "oil-sludge"
