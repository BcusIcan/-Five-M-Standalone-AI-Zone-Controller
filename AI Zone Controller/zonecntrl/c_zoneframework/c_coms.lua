---------------------------------------------------------------------------------------------------------------------------------------------------------
-- [AI SPEEDZONE]
---------------------------------------------------------------------------------------------------------------------------------------------------------
-- By: Jacooob | V1 | Coms.lua | Client
---------------------------------------------------------------------------------------------------------------------------------------------------------
-- [COMMAND]

RegisterCommand(config.CommandName, function(source, args)

    local command = args[1]

    if command == config.SlowZoneName then 

        TriggerEvent('speedzone:ZoneSlow')

        if config.EnableChatMsg then

            TriggerEvent('chat:addMessage', {
                color = config.SenderColor,
                multiline = true,
                args = {config.MessageSender .. config.SlowMessage}
            })
        end

    elseif command == config.StopZoneName then 

        TriggerEvent('speedzone:ZoneStop')

        if config.EnableChatMsg then 

            TriggerEvent('chat:addMessage', {
                color = config.SenderColor,
                multiline = true,
                args = {config.MessageSender .. config.StopMessage}
            })
        end

    elseif command == config.ClearZoneName then 

        TriggerEvent('speedzone:ZoneClear')

        if config.EnableChatMsg then 

            TriggerEvent('chat:addMessage', {
                color = config.SenderColor,
                multiline = true,
                args = {config.MessageSender .. config.ClearMessage}
            })
        end
    end

end)

---------------------------------------------------------------------------------------------------------------------------------------------------------
-- [EVENTS]

RegisterNetEvent('speedzone:ZoneSlow')
AddEventHandler("speedzone:ZoneSlow", function(source)
    activateSlowSpeedZone()
end)

RegisterNetEvent('speedzone:ZoneStop')
AddEventHandler("speedzone:ZoneStop", function(source)
    activateStopSpeedZone()
end)

RegisterNetEvent('speedzone:ZoneClear')
AddEventHandler("speedzone:ZoneClear", function(source)
    clearActiveSpeedZones()
end)
---------------------------------------------------------------------------------------------------------------------------------------------------------
-- [SUGGESTION]

TriggerEvent('chat:addSuggestion','/zone', 'Activates A SpeedZone', {
    { name="slow, stop, clear", help="Activates/Deactivates A SpeedZone" }
})