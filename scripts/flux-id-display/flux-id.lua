local temp_01 = GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1)))

function FluxCoords()
    SetTextScale(0.5, 0.5) 
    SetTextEntry("string")
    AddTextComponentString("~g~Your ID:~w~  "..temp_01) -- Colors can be found here: http://www.kronzky.info/fivemwiki/index.php/Text_Colors
    SetTextFont(4) -- There are 8 fonts ranging from 1-8. The fourth font is a bold arial-type font.
    SetTextColour(0, 0, 0, 255) -- RGBA
    DrawText(0.517 - 1.0/2, 1.270 - 1.0/2)
end


Citizen.CreateThread(function()
    while Citizen.Wait(0) do
        FluxCoords()
    end
end)
