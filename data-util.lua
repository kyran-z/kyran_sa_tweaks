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

return data_util
