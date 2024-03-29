set RXVersion to "10"

tell application "Finder"
	tell application "System Events"
		set PT to the first application process whose creator type is "PTul"
		tell PT
			activate
			set frontmost to true
			
			-- Check if RX Connect is open.
			set RXopen to count (windows whose name contains ("Audio Suite: RX " & RXVersion & " Connect"))
			
			-- Open RX Connect if needed.
			if RXopen is 0 then
				click menu item ("RX " & RXVersion & " Connect") of menu "Noise Reduction" of menu item "Noise Reduction" of menu "AudioSuite" of menu bar item "AudioSuite" of menu bar 1
				
				-- Wait until the window opens.
				repeat while RXopen is 0
					delay 0.05
					set RXopen to count (windows whose name contains ("Audio Suite: RX " & RXVersion & " Connect"))
				end repeat
			end if
			
			-- Click SEND button
			tell (1st window whose name contains "Audio Suite: RX" and name contains "Connect") to click button "Analyze"
			
		end tell
	end tell
end tell
