function imgay()
    for i,v in pairs(game.Players:GetChildren()) do
    if v and v.Character ~= nil and v ~= game.Players.LocalPlayer and v.TeamColor ~= game.Players.LocalPlayer.TeamColor then
          v.Character.Head.Size = Vector3.new(25,25,25)
    v.Character.Head.Material = "Neon"
    v.Character.Head.BrickColor = BrickColor.new("Really blue")
          v.Character.Head.Transparency = 0.7
    end
    end
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Sandhurst Military Academy")

local b = w:CreateFolder("hitbox expander")

local c = w:CreateFolder("hi jay n time")

b:Button("expand head hitbox",function()
    imgay()
end)










