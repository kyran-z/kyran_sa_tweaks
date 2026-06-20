-- makes uranium lighter for rocket launch
data.raw.item["uranium-235"].weight = 2000
data.raw.item["uranium-238"].weight = 2000

-- cheaper atomic bomb recipe
data.raw.recipe["atomic-bomb"].ingredients = {
    {
        type = "item",
        name = "explosives",
        amount = 10
    }, {
        type = "item",
        name = "processing-unit",
        amount = 10
    }, {
        type = "item",
        name = "uranium-235",
        amount = 10
    }
}
