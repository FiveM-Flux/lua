Citizen.CreateThread(function()
    -- Code usage from GitHub repository:
    -- https://github.com/Blumlaut/anticheese-anticheat/blob/master/ac_c.lua

    while Citizen.Wait(60000) do
        local currentPlayer = PlayerPedId()
        local currentHealth = GetEntityHealth(currentPlayer)

        -- 200hp Exploit Checker
        if currentHealth == 200 then
            local setTo = currentHealth-math.random(1,10)
            SetEntityHealth(currentPlayer, setTo)
            Citizen.Wait(math.random(35,100))
            if not IsPlayerDead(currentPlayer) then
                if GetEntityHealth(currentPlayer) == 200 then
                    SetEntityHealth(currentPlayer, 0)
                else
                    SetEntityHealth(currentPlayer, 200)
                end
            end
        end


    end
end)
