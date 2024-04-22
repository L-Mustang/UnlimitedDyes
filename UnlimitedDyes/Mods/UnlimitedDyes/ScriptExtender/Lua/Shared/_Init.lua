Ext.Require("Shared/Config.lua")
Ext.Require("Shared/Handlers.lua")
Ext.Require("Shared/Listeners.lua")

local MODVERSION = Ext.Mod.GetMod(ModuleUUID).Info.ModVersion
if MODVERSION == nil then
    _P("LordMustang's Unlimited Dyes version (version unknown)")
else
    -- Remove the last element (build/revision number) from the MODVERSION table
    table.remove(MODVERSION)

    local versionNumber = table.concat(MODVERSION, ".")
    _P("LordMustang's Unlimited Dyes version " .. versionNumber .. " loaded")
end

Listeners.RegisterListeners();