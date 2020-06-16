
dtext = {}
id = {}
position = {}
content = {}
color = {}
distance = {}
scale = {}
font = {}
dtext[id] = 0



createText = function(thePlayer,text, color, distance, scale, font)
  dtext[id] = dtext[id] + 1
  dtext[position] = thePlayer:getPosition()
  dtext[content] = text
  dtext[color] = tocolor(color)
  dtext[distance] = distance
  dtext[scale] = scale
  dtext[font] = font
end

addEvent("text",true)
addEventHandler("text", getRootElement(), function(thePlayer)
  local texts = getElementsByType("dtext", getRootElement(), true)
  local x, y, z = thePlayer:getPosition()
    for i, position in ipairs(texts) do 
      local pX, pY, pZ = i[dtext[position]]
        local distance = getDistanceBetweenPoints3D(x, y, z, pX, pY, pZ) 
          if distance > 5 then 
            return end 
            if distance < 5 then 
              text = {}
              table.insert(text, {dtext[id], {pX, pY, pZ}, dtext[content], dtext[color], dtext[distance], dtext[scale], dtext[font]})
              triggerClientEvent(getRootElement(), "table:3dtext", thePlayer)           
             end 
          end 
        end)


function removeText(id)
  for k,id in ipairs(dtext) do
        table.remove(dtext,k[id])
end
end
