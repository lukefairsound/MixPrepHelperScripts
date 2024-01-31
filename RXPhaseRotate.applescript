tell application "System Events"
	set RX to the first application process whose name contains "iZotope"
	
	set isOpen to count (windows of RX whose name contains "Phase")
	
	if isOpen is 0 then
		display alert "Couldn't find the window!" message "The Phase window needs to be open to complete this process. Please open the Phase window and try again."
	else
		set phaseWindow to the 1st window of RX whose name contains "Phase"
		set i to the (number of windows of RX) + 1
		
		click 3rd button of phaseWindow
		
		repeat while window i of RX exists
			delay 0.1
		end repeat
		
		set renderButton to button 1 of group 2 of group 1 of phaseWindow
		click renderButton
	end if
	
end tell
