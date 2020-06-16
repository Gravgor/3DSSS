
setTimer(function()
    triggerServerEvent("text", root)
end, 500, 1)

addEvent("table:3dtext", true)
addEventHandler("table:3dtext", getRootElement(), function(dtexts)
    for k, v in ipairs(dtext) do 
        local id = v[1]
        local x, y, z = v[2]
        local content = v[3]
        local color = v[4]
        local distance = v[5]
        local scale = v[6]
        local font = v[7]
    end
    local x, y = getScreenFromWorldPosition(x, y, z)
     if (x and y) then 
        addEventHandler("onClientRender", root, function()
        dxDrawText(content, x, y, _, _, color, scale, font, "center", "center", false, false, false, false, false)
        end)
     end
    end)