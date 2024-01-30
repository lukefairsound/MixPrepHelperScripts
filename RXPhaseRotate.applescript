set d to 0.1

tell application "Finder" to tell application "System Events" to tell process "iZotope RX 10"
	activate
	set frontmost to true
	
	set isOpen to count (windows whose name contains "Phase")
	
	if isOpen is 0 then
		display alert "Couldn't find the window!" message "The Phase window needs to be open to complete this process. Please open the Phase window and try again."
	else
		click 3rd button of window "Phase"
		
		set i to the number of windows
		set a to the name of window i
		
		repeat while window i exists
			delay d
		end repeat
		
		key code 35 using [control down, shift down, command down, option down]
	end if
	
end tell
