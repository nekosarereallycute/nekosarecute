function infgemsFunction()
    spawn(function()
        game:GetService("ReplicatedStorage").GiveQuestReward:FireServer("Gems",370000000000000)
    end)
end








local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("infinity power simulator")

local b = w:CreateFolder("inf stuff")

local c = w:CreateFolder("made by timeless")


b:Button("inf gems",function()
    infgemsFunction()
end)


-- b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color)
--     print(color)
-- end)

-- b:Box("Box","number",function(value)
--     print(value)
-- end)

b:DestroyGui()
