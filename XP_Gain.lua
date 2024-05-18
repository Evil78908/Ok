local Players = game:GetService("Players")

local function giveXP(player)
    local leaderstats = player:FindFirstChild("leaderstats")
    if leaderstats then
        local xp = leaderstats:FindFirstChild("XP")
        if xp then
            xp.Value = xp.Value + 20
        end
    end
end

local function onPlayerAdded(player)
    player.CharacterAdded:Connect(function()
        while player and player.Parent do
            wait(60) -- Waits for 1 minute
            giveXP(player)
        end
    end)
end

Players.PlayerAdded:Connect(onPlayerAdded)
