getgenv().autoPoints = false

function autoPointsFunction()
    spawn(function()
        if autoPoints then
            while autoPoints do
                game:GetService("ReplicatedStorage").Remotes.HitLobbyTarget:FireServer()
                wait(0.15)
            end
        end
    end)
end











local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("aimblox")

local b = w:CreateFolder("autofarm")

b:Toggle("auto points",function(bool)
    getgenv().autoPoints = bool
    if bool then
        autoPointsFunction()
    end
end)

-- b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color)
--     print(color)
-- end)

-- b:Box("Box","number",function(value)
-- end)

b:DestroyGui()

