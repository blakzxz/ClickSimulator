local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
-- https://www.roblox.com/games/14400545236/Click-Simulator


local Window = Rayfield:CreateWindow({
    Name = "Auto Farm / Rebirth Click Simulator!",
    LoadingTitle = "Auto Farm / Rebirth by Borges",
    LoadingSubtitle = "by Borges",
    Discord = {
        Enabled = true,
        Invite = "DvgHH6H6fy",
        RememberJoins = true 
     },
     KeySystem = true,
     KeySettings = {
        Title = "Get a Key in our discord to acess the script",
        Subtitle = "",
        Note = "https://discord.gg/SGV4GbhBwF",
        FileName = "Key",
        SaveKey = false,
        GrabKeyFromSite = true,
        Key = {"https://raw.githubusercontent.com/blakzxz/Key/main/keyfile"} 
     }
 }) 
 local Playertab = Window:CreateTab("Farms/Rebirth", 4483362458)


 local Toggle = Playertab:CreateToggle({
    Name = "Auto Farm",
    CurrentValue = false,
    Callback = function(Value)
        autoFarmActive = Value 

        while autoFarmActive do
            game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ClickService"):WaitForChild("RF"):WaitForChild("Click"):InvokeServer()
            wait(0.001) 
        end
    end,
})
local autoFarmActive = false


local autoRebirthActive = false
local Toggle = Playertab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Callback = function(Value)
        autoRebirthActive = Value

        while autoRebirthActive do
            local args = {
                [1] = game:GetService("Players").LocalPlayer
            }

            game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("RebirthService"):WaitForChild("RF"):WaitForChild("RequestRebirth"):InvokeServer(unpack(args))

            wait(1)
        end
    end,
})
