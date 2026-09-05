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
    table.insert(technology.effects,
        { type = "unlock-recipe", recipe = recipe_name })
end

function data_util.remove_result(recipe_name, result_name)
    local recipe = data.raw["recipe"][recipe_name]
    for i, result in ipairs(recipe.results) do
        if result.name == result_name then
            table.remove(recipe.results, i)
            return
        end
    end
end

function data_util.remove_ingredient(recipe_name, ingredient_name)
    local recipe = data.raw["recipe"][recipe_name]
    for i, ingredient in ipairs(recipe.ingredients) do
        if ingredient.name == ingredient_name then
            table.remove(recipe.ingredients, i)
            return
        end
    end
end

return data_util
