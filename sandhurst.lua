getgenv().jaymod = true

local weapon = game:GetService("Workspace").ExclusiveRaidd.GLOCK.GunConfiguration

local v1 = {
	Animations = {}
};
v1.Animations.Idle = {
	Id = "rbxassetid://6373651601", 
	Speed = 1, 
	Looped = true
};
v1.Animations.Fire = {
	Id = "rbxassetid://6373712979", 
	Speed = 1, 
	Looped = false
};
v1.Animations.Reload = {
	Id = "rbxassetid://6374025767", 
	Speed = 2, 
	Looped = false
};
v1.Animations.Rest = {
	Id = "rbxassetid://6374032494", 
	Speed = 1, 
	Looped = true
};
v1.Animations.Sprint = {
	Id = "rbxassetid://6374032494", 
	Speed = 1, 
	Looped = true
};
v1.Animations.CrouchWalk = {
	Id = "rbxassetid://6363450413", 
	Speed = 1, 
	Looped = true
};
v1.Animations.CrouchIdle = {
	Id = "rbxassetid://6363451489", 
	Speed = 1, 
	Looped = true
};

function jaystation()
    if jaymod then
        local weaponstats = require(weapon)
        weaponstats.v1.MagSize = math.huge
        weaponstats.v1.Recoil = 0
        weaponstats.v1.BaseDamage = math.huge
        weaponstats.v1.StoredAmmo = math.huge
        return v1
    end
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Sandhurst Military Academy") -- Creates the window

local b = w:CreateFolder("gun mod") -- Creates the folder(U will put here your buttons,etc)

b:Button("Mod SCAR-H",function()
    jaystation()
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










