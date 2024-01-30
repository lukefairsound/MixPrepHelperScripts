tell application "System Events"
	-- get iZotope RX process
	set RX to the first application process whose name contains "iZotope"
	
	set isOpen to count (windows of RX whose name contains "Spectral Repair")
	if isOpen is 0 then
    	display alert "Couldn't find the window!" message "The Spectral Repair window needs to be open to complete this process. Please open the Spectal Repair window and try again."
	else
		set spectralRepairWindow to 1st window of RX whose name contains "Spectral Repair"
		set box1 to value of checkbox 1 of spectralRepairWindow as boolean
		if box1 then
			click checkbox 2 of spectralRepairWindow
		else
			click checkbox 1 of spectralRepairWindow
		end if
	end if
	
end tell
