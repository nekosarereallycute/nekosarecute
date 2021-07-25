getgenv().jaykillall = false
getgenv().jayexpand = false

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

function toogay()
	spawn(function()
		if jayexpand then
			for i,v in pairs(game.Players:GetChildren()) do
			if v and v.Character ~= nil and v ~= game.Players.LocalPlayer and v.TeamColor ~= game.Players.LocalPlayer.TeamColor then
				v.Character.Head.Size = Vector3.new(25,25,25)
			v.Character.Head.Material = "Neon"
			v.Character.Head.BrickColor = BrickColor.new("Really blue")
				v.Character.Head.Transparency = 0.7
			end
			end
		end
	end)
end



local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("[dt] reversal")

local b = w:CreateFolder("hax stuff")

local c = w:CreateFolder("hi jay n time")

b:Toggle("Kill All",function(bool)
    getgenv().jaykillall = bool
    if bool then
        killall()
    end
end)

b:Toggle("Expand Head",function(bool)
    getgenv().jayexpand = bool
    if bool then
        toogay()
    end
end)

b:DestroyGui()


