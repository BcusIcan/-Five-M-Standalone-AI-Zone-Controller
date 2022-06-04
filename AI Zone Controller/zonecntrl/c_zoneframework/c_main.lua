---------------------------------------------------------------------------------------------------------------------------------------------------------
-- [AI SPEEDZONE]
---------------------------------------------------------------------------------------------------------------------------------------------------------
-- By: Jacooob | V1 | Main.lua | Client
---------------------------------------------------------------------------------------------------------------------------------------------------------
-- [LOCAL VARIABLES]

-- Limit To Active Zones
local zoneLimit = 1

-- Amount Of Active Zones (Will Break If >0 )
local activeZones = 0

-- Zone Table
local zones = {}

-- Speed Zone Node And Blip Variables
local blip = nil
local speedzone = nil
---------------------------------------------------------------------------------------------------------------------------------------------------------
-- [NOTIFY FUNCTION]
-- Function To Display Notification
function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true, false)
end

---------------------------------------------------------------------------------------------------------------------------------------------------------
-- [ZONE FUNCTIONS]

-- Slow Zone
function activateSlowSpeedZone()
    local player = GetPlayerPed(-1)
    local playerPos = GetEntityCoords(player)

    zones[activeZones] = blip
    activeZones = activeZones + 1

    if (activeZones <= zoneLimit) then 

        speedzone = AddRoadNodeSpeedZone(playerPos.x, playerPos.y, playerPos.z, config.Radius, config.SlowZoneSpeed, true)
        blip = AddBlipForRadius(playerPos.x, playerPos.y, playerPos.z, config.Radius)
        SetBlipAlpha(blip, config.BlipAlpha)
        SetBlipColour(blip, config.BlipColorSlow)

        if config.EnableNotifications then 

            notify(config.ZoneSlowNotify)

        end

    elseif (activeZones > zoneLimit) then 

        if config.EnableNotifications then 

            notify(config.LimitErrorNotify)

        end
    end
end

-- Stop Zone
function activateStopSpeedZone()
    local player = GetPlayerPed(-1)
    local playerPos = GetEntityCoords(player)

    zones[activeZones] = blip
    activeZones = activeZones + 1

    if (activeZones <= zoneLimit) then 

        speedzone = AddRoadNodeSpeedZone(playerPos.x, playerPos.y, playerPos.z, config.Radius, 0.0, true)
        blip = AddBlipForRadius(playerPos.x, playerPos.y, playerPos.z, config.Radius)
        SetBlipAlpha(blip, config.BlipAlpha)
        SetBlipColour(blip, config.BlipColorStop)

        if config.EnableNotifications then 
            notify(config.ZoneStopNotify)
        end

    elseif (activeZones > zoneLimit) then 

        if config.EnableNotifications then

            notify(config.LimitErrorNotify)

        end
    end
end

-- Clear Zone
function clearActiveSpeedZones()

    RemoveBlip(blip)
    RemoveRoadNodeSpeedZone(speedzone)
    activeZones = 0
    speedzone = nil
    zoneBlip = nil 

    if config.EnableNotifications then

        notify(config.ZoneClearNotify)
        
    end
end