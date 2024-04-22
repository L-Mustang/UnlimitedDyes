Handlers = {}

function Handlers.IsDye(item1)
  return string.find(item1, "LOOT_Dye")
end

function Handlers.Combined(item1, item2, item3, item4, item5, character, newItem)
  if Osi.GetStackAmount(item1) > 1 then
    if Handlers.IsDye(item1) then
      _P("UnlimitedDyes: Dye found, incremented on Combined")
      Osi.SetStackAmount(item1, Osi.GetStackAmount(item1) + 1)
    end
  end
end

function Handlers.RequestCanCombine(character, item1, item2, item3, item4, item5, requestID)
  if Osi.GetStackAmount(item1) == 1 then
    if Handlers.IsDye(item1) then
      _P("UnlimitedDyes: Dye found, but stack size was 1, incremented on earlier event RequestCanCombine")
      Osi.SetStackAmount(item1, 2)
    end
  end
end

return Handlers
