Listeners = {}

function Listeners.RegisterListeners()
  Ext.Osiris.RegisterListener("Combined", 7, "after", Handlers.Combined)
  Ext.Osiris.RegisterListener("RequestCanCombine", 7, "after", Handlers.RequestCanCombine)
end

return Listeners
