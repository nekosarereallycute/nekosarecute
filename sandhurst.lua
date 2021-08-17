getgenv().JumpEnabled = false
getgenv().GetClothing = false
getgenv().GetClothing2 = false
getgenv().GetClothing3 = false
getgenv().killpeople = false
local head = game.Players.LocalPlayer.Character.Head

local chara = game.Players.LocalPlayer.Character
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

local dict = {[1] = 'one',[2] = 'two',[3] = 'three',[4] = 'four',[5] = 'five',[6] = 'six',[7] = 'seven',[8] = 'eight',[9] = 'nine',[10] = 'ten',[11] = 'eleven',[12] = 'twelve',[13] = 'thirteen',[14] = 'fourteen',[15] = 'fifteen',[16] = 'sixteen',[17] = 'seventeen',[18] = 'eighteen',[19] = 'nineteen',[20] = 'twenty',[30] = 'thirty',[40] = 'fourty',[50] = 'fifty',[60] = 'sixty',[70] = 'seventy',[80] = 'eighty',[90] = 'ninety'}

local function word_to_num(n)
if n == 0 then
return ""
end

if dict[n] then
return dict[n]
else
if n >= 100 then
local round = math.floor(n / 100)

return word_to_num(round) .. " hundred " .. word_to_num(n - (round * 100))
else
local round = math.floor(n / 10) * 10

return word_to_num(round) .. " " .. word_to_num(n - round)
end
end
end

function AutoJJs(amt)
    spawn(function()
        for i = 1, amt do
            if JumpEnabled == false then break end
            wait(0.8)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(string.upper(word_to_num(i)), "All")
            wait(0.3)
            game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
        end
    end)
end


function getPT()
    spawn(function()
        while GetClothing do
            if game.Players.LocalPlayer.Character then
                for i,v in pairs(game:GetService("Workspace").Map.Contents.Misc.UniformRacks.Physical:GetDescendants()) do
                    if v.Name == "TouchInterest" and v.Parent then
                        firetouchinterest(head, v.Parent, 0)
                        wait(0.01)
                        firetouchinterest(head, v.Parent, 1)
                    end
                end
            end
        end
    end)
end

function getST()
    spawn(function()
        while GetClothing2 do
            if game.Players.LocalPlayer.Character then
                for i,v in pairs(game:GetService("Workspace").Map.Contents.Misc.UniformRacks.Standard:GetDescendants()) do
                    if v.Name == "TouchInterest" and v.Parent then
                        firetouchinterest(head, v.Parent, 0)
                        wait(0.01)
                        firetouchinterest(head, v.Parent, 1)
                    end
                end
            end
        end
    end)
end

function getFormals()
    spawn(function()
        while GetClothing3 do
            if game.Players.LocalPlayer.Character then
                for i,v in pairs(game:GetService("Workspace").Map.Contents.Misc.UniformRacks.Formal:GetDescendants()) do
                    if v.Name == "TouchInterest" and v.Parent then
                        firetouchinterest(head, v.Parent, 0)
                        wait(0.01)
                        firetouchinterest(head, v.Parent, 1)
                    end
                end
            end
        end
    end)
end
local gAMING 
gAMING = hookfunction(wait, function(gay)
    gay = 0;
    return gAMING(gay);
end);


local gmt = getrawmetatable(game)
local oldnc = gmt.__namecall
local oldnc2 = gmt.__namecall
local oldni = gmt.__newindex
local oldi = gmt.__index
setreadonly(gmt,false)
gmt.__namecall = newcclosure(function(self,...)
    if checkcaller() then
        return oldnc(self,...)
    end
    local args = {...}
    local method = getnamecallmethod()
    if self == game:GetService("Players").LocalPlayer and method == "kick" or method == "Kick" then
        return
        wait(9e9)
    end
    return oldnc(self,...)
end)

gmt.__index = newcclosure(function(epic,gamer)
    if checkcaller() then
        return oldi(epic,gamer)
    end
    if epic == "Humanoid" and gamer == "WalkSpeed" or "JumpPower" then
        return
    end
    return oldi(epic,gamer)
end

local ws = game.Players.LocalPlayer.Humanoid.WalkSpeed
local jp = game.Players.LocalPlayer.Humanoid.JumpPower


gmt.__newindex = newcclosure(function(jay,gaming,gamer)
    if checkcaller() then
        return oldni(jay,gaming,gamer)
    end
    if jay == "Humanoid" and gaming == "WalkSpeed" then
        gamer = ws
        return
    end
    return oldni(jay,gaming,gamer)
end)
gmt.__newindex = newcclosure(function(e,x,d)
    if checkcaller() then
        return oldni(jay,gaming,gamer)
    end
    if e == "Humanoid" and x == "JumpPower" then
        d = jp
        return
    end
    return oldni(jay,gaming,gamer)
end)


setreadonly(gmt,true)














function killall()
    spawn(function()
        while killpeople do
            for i , v in pairs(game:GetService("Players"):GetPlayers()) do
                if v ~= game.Players.LocalPlayer then
                    game:GetService("ReplicatedStorage").GunSystem.Remotes.Hit:InvokeServer(v.Character,Vector3.new(1,9e37,1),v.Character.Head)
                end
            end
        end
    end)
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Sandhurst Military Academy")

local b = w:CreateFolder("kill stuff")

local c = w:CreateFolder("misc stuff")

local d = w:CreateFolder("hi jay n time")


b:Button("expand head hitbox",function()
    imgay()
end)

b:Toggle("Kill All",function(bool)
    getgenv().killpeople = bool
    if bool then
        killall()
    end
end)

local sussybaka
c:Slider("Amount of JJs",{
    min = 1;
    max = 6969;
    precise = false;
},function(amongus123)
    sussybaka = amongus123
end)

c:Toggle("Auto JJs",function(bool)
    getgenv().JumpEnabled = bool
    if bool then
        AutoJJs(sussybaka)
    end
end)
c:Toggle("Get PT",function(bool)
    getgenv().GetClothing = bool
    if bool then
        getPT()
    end
end)
c:Toggle("Get ST",function(bool)
    getgenv().GetClothing2 = bool
    if bool then
        getST()
    end
end)
c:Toggle("Get Formals",function(bool)
    getgenv().GetClothing3 = bool
    if bool then
        getFormals()
    end
end)
c:DestroyGui()










