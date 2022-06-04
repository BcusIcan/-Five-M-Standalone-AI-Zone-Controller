---------------------------------------------------------------------------------------------------------------------------------------------------------
-- [AI SPEEDZONE]
---------------------------------------------------------------------------------------------------------------------------------------------------------
-- By: Jacooob | V1 | Config.lua | Client
---------------------------------------------------------------------------------------------------------------------------------------------------------
-- [RESOURCES]

-- https://docs.fivem.net/docs/game-references/blips/ (A List Of Blip Colors Can Be Found Here)

-- https://gist.github.com/leonardosnt/061e691a1c6c0597d633 (A List Of Notification Colors Can Be Found Here)

---------------------------------------------------------------------------------------------------------------------------------------------------------
config = {}
---------------------------------------------------------------------------------------------------------------------------------------------------------
-- [Command Settings]

-- NOTE: If These Are Changed you Must Manually Change The Suggestions Found in "c_zoneframework/c_coms.lua"

-- Input Command Name (args[0])
config.CommandName = 'zone'

-- Clear Zone Name (args[1])
config.ClearZoneName = 'clear'

-- Stop Zone Name (args[1])
config.StopZoneName = 'stop'

-- Slow Zone Name (args[1])
config.SlowZoneName = 'slow'

---------------------------------------------------------------------------------------------------------------------------------------------------------
-- [Blip/Zone Settings]

-- Blip Transparency (-/+ For Effect)
config.BlipAlpha = 80

-- Slow Blip Color
config.BlipColorSlow = 47

-- Stop Blip Color
config.BlipColorStop = 1

-- Radius Blip Will Display / Zone Affectivness Radius (Float Value)
config.Radius = 30.0

-- Designated Speed For Slow Zone (Float Value)
config.SlowZoneSpeed = 5.0

---------------------------------------------------------------------------------------------------------------------------------------------------------
-- [Blip Notification Settings]

-- Toggles Notify Display
config.EnableNotifications = true

-- Limitation Error Text
config.LimitErrorNotify = "~w~You May Only Have ".. "~y~One Active " .. "~w~Zone."

-- Slow Zone Activation Text
config.ZoneSlowNotify = "~y~Slow " .. "~w~Zone Activated"

-- Stop Zone Activation Notify
config.ZoneStopNotify = "~r~Stop " .. "~w~Zone Activated"

-- Clear Zones Notify
config.ZoneClearNotify = "~y~Zone " .. "~w~Deactivated"

---------------------------------------------------------------------------------------------------------------------------------------------------------
-- [Chat Message Settings]

-- Toggles Chat Message
config.EnableChatMsg = true

-- Name Of Sender
config.MessageSender = "ZONE CNTRL | "

-- Color Of Message (R/G/B)
config.SenderColor = {220, 84, 42}

-- Clear Zone Message Text
config.ClearMessage = "Active Zone Cleared."

-- Stop Zone Message Text
config.StopMessage = "You Have Set A Stop Zone Use /zone clear To Delete It."

-- Slow Zone Message Text
config.SlowMessage = "You Have Set A Slow Zone Use /zone clear To Delete It."

---------------------------------------------------------------------------------------------------------------------------------------------------------

print("------------------------------------------------------")
print("")
print("                  AI ZONE CNTRL IS ACTIVE")
print("                    |By:Jacooob | V:1 |")
print("")
print("  (OPEN SOURCE PROJECT)")
print("------------------------------------------------------")
