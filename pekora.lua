getgenv().hitbox = true
getgenv().infjump = true

function imgay(gamer)
    spawn(function()
        while wait() do
            if hitbox then
                for i,v in pairs(game.Players:GetChildren()) do
                    if v and v.Character ~= nil and v ~= game.Players.LocalPlayer and v.TeamColor ~= game.Players.LocalPlayer.TeamColor then
                        v.Character.Head.Size = Vector3.new(gamer,gamer,gamer)
                        v.Character.Head.Material = "Neon"
                        v.Character.Head.BrickColor = BrickColor.new("Really blue")
                        v.Character.Head.Transparency = 0.7
                    end
                end
            end
        end
    end)
end

local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

getgenv().JumpHeight = 50;

function infinitejump()
UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)


function anticheatbypass()
    local rm = getrawmetatable(game) or debug.getrawmetatable(game) or getmetatable(game);
    if setreadonly then setreadonly(rm, false) else make_writeable(rm, true) end
    local caller = checkcaller or is_protosmasher_caller
    local ncall = rm.__namecall

    rm.__namecall = newcclosure(function(self, ...)
        if caller() then return ncall(self, ...) end
        local Args, Method = {...}, getnamecallmethod() or get_namecall_method();
        if Method == "FireServer" and Args[1] == "WalkSpeed" or Args[1] == "JumpPower" or Args[1] == "HipHeight" then 
            return nil 
        end
        if Method == "FireServer" and tostring(self) == "Input" then 
            if Args[1] == "bv" or Args[1] == "hb" or Args[1] == "ws" then 
                return wait(9e9)
            end
        end
        return ncall(self, unpack(Args))
    end)
    if setreadonly then setreadonly(rm, true) else make_writeable(rm, false) end
end








local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Universal")

local b = w:CreateFolder("stuff")

local c = w:CreateFolder("made by timelessoveragain")





b:Button("inf jump",function()
    infinitejump()
end)

local jaynoob;

b:Slider("hitboxsize",{
    min = 10;
    max = 50;
    precise = true;
},function(something)
    jaynoob = something
    
end)
b:Toggle("Hitbox Expander",function(bool)
    getgenv().hitbox = bool
    if bool then
        imgay(jaynoob)
    end
end)

b:Button("fly walkspeed jumppower bypass",function()
    anticheatbypass()
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

b:DestroyGui()

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





