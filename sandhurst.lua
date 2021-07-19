if not getgenv().MTAPIMutex then loadstring(game:HttpGet("https://raw.githubusercontent.com/nekomancer69420/nekosarecute/main/bypassanticheat.lua", true))() end



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

imgay()

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Sandhurst Military Academy")

local b = w:CreateFolder("hitbox expander")

local c = w:CreateFolder("hi jay n time")

b:Button("expand head hitbox",function()
    imgay()
end)



-- b:Button("Button",function()
--     print("Elym Winning")
-- end)

-- b:Toggle("Toggle",function(bool)
--     shared.toggle = bool
--     print(shared.toggle)
-- end)

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

-- b:DestroyGui()

-- --[[
-- How to refresh a dropdown:
-- 1)Create the dropdown and save it in a variable
-- local yourvariable = b:Dropdown("Hi",yourtable,function(a)
--     print(a)
-- end)
-- 2)Refresh it using the function
-- yourvariable:Refresh(yourtable)
-- How to refresh a label:
-- 1)Create your label and save it in a variable
-- local yourvariable = b:Label("Pretty Useless NGL",{
--     TextSize = 25; -- Self Explaining
--     TextColor = Color3.fromRGB(255,255,255);
--     BgColor = Color3.fromRGB(69,69,69);
-- })
-- 2)Refresh it using the function
-- yourvariable:Refresh("Hello") It will only change the text ofc
-- ]]










