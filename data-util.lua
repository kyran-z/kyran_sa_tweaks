local data_util = {}

-- function to get deep clone of passed table
function data_util.copyTable(datatable)
    local tblRes = {}
    if type(datatable) == "table" then
        for k, v in pairs(datatable) do
            tblRes[k] = data_util.copyTable(v)
        end
    else
        tblRes = datatable
    end
    return tblRes
end

function data_util.add_recipe_unlock(tech_name, recipe_name)
    local technology = data.raw.technology[tech_name]
    table.insert(technology.effects, {
        type = "unlock-recipe",
        recipe = recipe_name
    })
end

return data_util
