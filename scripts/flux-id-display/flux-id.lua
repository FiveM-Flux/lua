Citizen.CreateThread(function()
    while true do
    FluxCoords(0.517, 1.270, 1.0,1.0,0.50, "~r~ID:~r~  ".. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. '', 255, 255, 255, 255)
    Citizen.Wait(0)
    end
end)

function FluxCoords(c1, c2, widthValue, heightValue, proportions, textDisplay, r,g,b,a)
SetTextScale(proportions, proportions)
SetTextEntry("string")
AddTextComponentString(textDisplay)
SetTextFont(4) -- There are 8 fonts available, ranging from 1-8
SetTextColour(0, 0, 0, 255) -- This is calculated in RGBA, which means it supports RGB and Alpha colors.
DrawText(c1 - widthValue/2, c2 - heightValue/2)
end
