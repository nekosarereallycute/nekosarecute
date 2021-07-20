getgenv().autoDrink = false
getgenv().autoGems = true

function autoEnergyDrink()
    spawn(function()
        if autoDrink then
            game:GetService"RunService".RenderStepped:Connect(function()
                local args = {
                    [1] = "123ase"
                }
                
                workspace.Events.AddBite1:FireServer(unpack(args))
            end)
        end
    end)
end

local variable1 = game.Players.LocalPlayer.Character.Head

function touchGems(gaming)
    spawn(function()
        if autoGems then
            game:GetService"RunService".RenderStepped:Connect(function()
                for i, v in pairs(game:GetService("Workspace")[gaming].Script:GetDescendants()) do
                    if v.Name == "TouchInterest" and v.Parent then
                        firetouchinterest(variable1, v.Parent, 0)
                        wait(0.01)
                        firetouchinterest(variable1, v.Parent, 1)
                    end
                end
            end)
        end
    end)
end


local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("speed simulator")

local b = w:CreateFolder("Autofarm")

local c = w:CreateFolder("made by timeless")

local d = w:CreateFolder("close gui")

b:Toggle("Auto Drink",function(bool)
    getgenv().autoDrink = bool
    if bool then
        autoEnergyDrink()
    end
end)

b:Button("Collect Zone 1",function()
    touchGems("Zone 1")
end)

b:Button("Collect Zone 2",function()
    touchGems("Zone 2")
end)

b:Button("Collect Zone 3",function()
    touchGems("Zone 3")
end)

b:Button("Collect Zone 4",function()
    touchGems("Zone 4")
end)

b:Button("Collect Zone 5",function()
    touchGems("Zone 5")
end)

b:Button("Collect Zone 6",function()
    touchGems("Zone 6")
end)

b:Button("Collect Zone 7",function()
    touchGems("Zone 7")
end)

b:Button("Collect Zone 8",function()
    touchGems("Zone 8")
end)

b:Button("Collect Zone 9",function()
    touchGems("Zone 9")
end)


b:Button("Collect Zone 10",function()
    touchGems("Zone 10")
end)

b:Button("Collect VIP Zone",function()
    touchGems("VIPZone")
end)


d:DestroyGui()



-- b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
--     print(color)
-- end)

-- b:Box("Box","number",function(value) -- "number" or "string"
--     print(value)
-- end)
