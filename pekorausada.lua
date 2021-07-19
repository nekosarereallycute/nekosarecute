if not getgenv().MTAPIMutex then loadstring(game:HttpGet("https://raw.githubusercontent.com/nekomancer69420/nekosarecute/main/bypassanticheat.lua", true))() end




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

local c = w:CreateFolder("hi jay n time")

b:Toggle("Kill All",function(bool)
    getgenv().jaykillall = bool
    if bool then
        killall()
    end
end)

b:DestroyGui()


-- b:Slider("Slider",{
--     min = 10;
--     max = 50;
--     precise = true;
-- },function(value)
--     print(value)
-- end)

-- b:Dropdown("Dropdown",{"A","B","C"},true,function(mob)
--     print(mob)
-- end)

-- b:Bind("Bind",Enum.KeyCode.C,function()
--     print("Yes")
-- end)

-- b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color)
--     print(color)
-- end)

-- b:Box("Box","number",function(value)
--     print(value)
-- end)


