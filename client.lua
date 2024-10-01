local JumpThreshold = 15

Citizen.CreateThread(function()
    local jumpCounter = 0
    
    while true do
        Citizen.Wait(500)
        
        local playerPed = PlayerPedId()
        
        if IsPedOnFoot(playerPed) 
           and not IsPedSwimming(playerPed) 
           and (IsPedRunning(playerPed) or IsPedSprinting(playerPed)) 
           and not IsPedClimbing(playerPed) 
           and IsPedJumping(playerPed) 
           and not IsPedRagdoll(playerPed) then
           
            jumpCounter = jumpCounter + 1
            
            if jumpCounter >= JumpThreshold then
                SetPedToRagdoll(playerPed, 5000, 1400, 2)
                jumpCounter = 0
            end
            
            Citizen.Wait(1)
        else
            jumpCounter = 0
        end
    end
end)
