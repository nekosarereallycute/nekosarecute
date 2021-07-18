getgenv().jaykillall = false

function killall()
	spawn(function()
		game:GetService"RunService".RenderStepped:Connect(function()
			if jaykillall then
				if game.ReplicatedStorage:FindFirstChild("DamageRemote") then
					for _,player in pairs(game.Players:GetPlayers()) do
						if player ~= game.Players.LocalPlayer then
							game:GetService("ReplicatedStorage").DamageRemote:FireServer({["Limb"] = player.Character.Head, ["Humanoid"] = player.Character.Humanoid})
						end
					end
				end
			end
		end)
	end)
end



local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("[dt] reversal")

local b = w:CreateFolder("kill")

b:Toggle("Kill All",function(bool)
    getgenv().jaykillall = bool
    if bool then
        killall()
    end
end)

b:DestroyGui()


-- b:Slider("Slider",{
--     min = 10; -- min value of the slider
--     max = 50; -- max value of the slider
--     precise = true; -- max 2 decimals
-- },function(value)
--     print(value)
-- end)

-- b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
--     print(mob)
-- end)

-- b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
--     print("Yes")
-- end)

-- b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
--     print(color)
-- end)

-- b:Box("Box","number",function(value) -- "number" or "string"
--     print(value)
-- end)

--[[
How to refresh a dropdown:
1)Create the dropdown and save it in a variable
local yourvariable = b:Dropdown("Hi",yourtable,function(a)
    print(a)
end)
2)Refresh it using the function
yourvariable:Refresh(yourtable)
How to refresh a label:
1)Create your label and save it in a variable
local yourvariable = b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})
2)Refresh it using the function
yourvariable:Refresh("Hello") It will only change the text ofc
]]


