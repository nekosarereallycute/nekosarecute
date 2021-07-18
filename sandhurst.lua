local stuff = game:GetService("ReplicatedStorage").GunSystem.GunModels
local v1 = {
	Animations = {}
};
v1.Animations.Idle = {
	Id = "rbxassetid://6374115061", 
	Speed = 1, 
	Looped = true
};
v1.Animations.Fire = {
	Id = "rbxassetid://6374135990", 
	Speed = 1.5, 
	Looped = false
};
v1.Animations.Reload = {
	Id = "rbxassetid://6374198554", 
	Speed = 1, 
	Looped = false
};
v1.Animations.Rest = {
	Id = "rbxassetid://6374208065", 
	Speed = 1, 
	Looped = true
};
v1.Animations.Sprint = {
	Id = "rbxassetid://6374208065", 
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

function jaystation(gunmod)
    if stuff then
        local v = require(stuff[gunmod].GunConfiguration)
        v.v1.BaseDamage = 9e9;
        v.v1.HeadshotMultiplier = 9e9;
        v.v1.BulletVelocity = 9e9;
        v.v1.MagSize = math.huge;
        v.v1.StoredAmmo = 9e9;
        v.v1.RecoilSpeed = 0;
        v.v1.Recoil = 0;
    end
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Sandhurst Military Academy") -- Creates the window

local b = w:CreateFolder("gun mod") -- Creates the folder(U will put here your buttons,etc)

local selectedMod


b:Dropdown("Choose Gun",{"SCAR-H"},true,function(mod) --true/false, replaces the current title "Dropdown" with the option that t
    selectedMod = mod
end)

b:Button("Mod Selected",function()
    jaystation(selectedMod)
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










