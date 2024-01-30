tell application "System Events"
	-- get iZotope RX process
	set RX to the first application process whose name contains "iZotope"
	
	set isOpen to count (windows of RX whose name contains "Spectral Repair")
	if isOpen is 0 then
		display dialog "Open Spectral Repair window to change direction mode"
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