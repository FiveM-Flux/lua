local temp_01 = GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1)))

function FluxCoords()
    SetTextScale(0.5, 0.5)
    SetTextEntry("string")
    AddTextComponentString("~g~Your ID:~w~  "..temp_01)
    SetTextFont(4)
    SetTextColour(0, 0, 0, 255)
    DrawText(0.517 - 1.0/2, 1.270 - 1.0/2)
end


Citizen.CreateThread(function()
    while true do
        FluxCoords()
        Citizen.Wait(0)
    end
end)
