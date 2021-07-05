-- Press Left ALT to put your hands up.
-- It is possible to walk, jog and run while holding your hands up.
-- You only need to press the toggle - not hold.

Citizen.CreateThread(function()
    local dict = "missminuteman_1ig_2"
    
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
	Citizen.Wait(100)
    end
    local handsup = false
    while true do
        Citizen.Wait(0)
	if IsControlJustPressed(1, 19) then -- Want to change the keybind? Find the fitting one on https://docs.fivem.net/docs/game-references/controls/
            if not handsup then
                TaskPlayAnim(GetPlayerPed(-1), dict, "handsup_enter", 8.0, 8.0, -1, 50, 0, false, false, false)
                handsup = true
            else
                handsup = false
                ClearPedTasks(GetPlayerPed(-1))
            end
        end
    end
end)
