Citizen.CreateThread(function()
    while Citizen.Wait(50) do
	local ped = PlayerPedId()
        if IsPedArmed(ped, 6) then
	    DisableControlAction(1, 140, true) -- This is the button R, it disables whipping using R
	    -- DisableControlAction(1, 141, true) -- This is the button Q, it disables whipping using heavy weapons with Q
            DisableControlAction(1, 142, true) -- This is LMB, it disables whipping using the left mouse button
        end
    end
end)
 
-- To enable certain keybinds (such as using R to whip, but not LMB, simply toggle it by changing the "true" and "false" values.
