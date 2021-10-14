local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/nekomancer69420/nekosarecute/main/infinity%20power%20sim.lua')))()
local w = library:CreateWindow("ufo sim")
local b = w:CreateFolder("autofarm")
local f = w:CreateFolder("auto purchase")
Level = ""
SelectedEgg = "Bunny Egg"
Eggs = {}
for i,v in pairs(game:GetService("Workspace").EggCapsules:GetChildren()) do
    a = string.gsub(v.Name,"Capsule -- ","")
    table.insert(Eggs,a)
end

b:Toggle("kill people",function(bool)
    shared.toggle = bool
    AutoKill = bool
end)

b:Box("Level","number",function(a)
    Level = a
end)

b:Toggle("collect drop",function(bool)
    shared.toggle = bool
    AutoCollectDrop = bool
end)

f:Dropdown("selected egg",Eggs,true,function(a)
    SelectedEgg = a
end)

f:Toggle("egg",function(bool)
    shared.toggle = bool
    Egg = bool
end)

f:Toggle("ufo",function(bool)
    shared.toggle = bool
    UFO = bool
end)

f:Toggle("upgrade ufo",function(bool)
    shared.toggle = bool
    UFOUpgrade = bool
end)
spawn(function()
    while wait() do
        if Egg == true then
            for i,v in pairs(Eggs) do
                if SelectedEgg == v then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Purchase One Egg",i,{["Pets"] = {},["Hats"] = {}})
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if AutoKill == true then
            for i,v in pairs(game.Workspace.Humans:GetChildren()) do
                if v.HumanGui.StarFrame.Star1.StarAmount.Text == Level then
                    spawn(function()
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Damage Humans",{[tostring(v.Name)] = {["Last"] = 0,["Current"] = 99999999999999999999999}})
                    end)
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if AutoCollectDrop == true then
            for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                if string.find(v.Name,"Item") then
                    for i1,v1 in pairs(v:GetChildren()) do
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1, 1)
                    end
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if UFO == true then
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Buy +1 UFO", 1)
        end
    end
end)

spawn(function()
    while wait() do
        if UFOUpgrade == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.UFOFrame.UFOContents.Contents.ScrollingFrame:GetChildren()) do
                pcall(function()
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Buy UFO Upgrade", 1, tonumber(v.Name))
                end)
            end
        end
    end
end)

spawn(function()
    while wait() do
        if KillLevel == true then
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Damage Humans",{[Enemyid] = {["Last"] = 0,["Current"] = 99999999999999999999999}})
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Retreat UFOs")
        end
    end
end)

pcall(function()
    if game:GetService("CoreGui"):FindFirstChild("PurchasePromptApp") then
        game:GetService("CoreGui").PurchasePromptApp:Destroy()
    end
end)