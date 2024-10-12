-- Project name: MacBatteryChargeNotifier
-- Script name: MacBatteryChargeNotifier.scpt
-- Description: This script notify you when MacBook's battery is low or full
-- Author: DeathArmy25
-- Email: armandoromeo25@outlook.it
-- Creation date: October 12, 2024
-- Version: 1.0
-- License: GPL V3
-- Changelog:
-- 1.0 - 12/10/2024 - Script creation

repeat
	-- Setting variables
	set chargeState to do shell script "pmset -g batt | awk '{printf \"%s %s\\n\", $4,$5;exit}'"
	set percentLeft to do shell script "pmset -g batt | egrep -ow '([0-9]{1,3})[%]' | egrep -ow '[0-9]{1,3}'"

	-- Setting Telegram variables
	set token to "your_telegram_bot_token"
	set chat_id to "your_telegram_id"
	
	considering numeric strings
		if chargeState contains "Battery Power" and percentLeft < low_level then
			set title to "LOW battery!"
			set message to "Your battery charge status is " & percentLeft & "%. It's time to plug me 😢"

			display notification message with title title
			set post_data to "chat_id=" & chat_id & "&text=" & title & "%0A%0A" & message

			do shell script "curl -X POST https://api.telegram.org/bot" & token & "/sendMessage -d \"" & post_data & "\""
		else if chargeState contains "AC Power" and percentLeft > full_level then
			set title to "FULL battery!"
			set message to "Your battery charge status is " & percentLeft & "%. Stop, unplug me from charger, please! 🙂"
			
			display notification message with title title
			set post_data to "chat_id=" & chat_id & "&text=" & title & "%0A%0A" & message

			do shell script "curl -X POST https://api.telegram.org/bot" & token & "/sendMessage -d \"" & post_data & "\""
		end if
	end considering

    -- Awaiting
	delay 60*minutes
end repeat