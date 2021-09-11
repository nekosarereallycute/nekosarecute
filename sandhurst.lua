













getgenv().silentaimyes = false
getgenv().JumpEnabled = false
getgenv().killpeople = false



local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
local namecallMethod = getnamecallmethod or get_namecall_method
local newClose = newcclosure or function(f) return f end

mt.__namecall = newClose(function(...)
    local method = namecallMethod()
    local args = {...}

    if tostring(method) == "FireServer" and tostring(args[1]) == "Fire" then
        args[4] = math.huge

        return oldNamecall(unpack(args))
    end

    return oldNamecall(...)
end)

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
            if game.Players.LocalPlayer.Character then
                for i,v in pairs(game:GetService("Workspace").Map.Contents.Misc.UniformRacks.Physical:GetDescendants()) do
                    if v.Name == "TouchInterest" and v.Parent then
                        firetouchinterest(head, v.Parent, 0)
                        wait(0.01)
                        firetouchinterest(head, v.Parent, 1)
                end
            end
        end
    end)
end

function getST()
    spawn(function()
            if game.Players.LocalPlayer.Character then
                for i,v in pairs(game:GetService("Workspace").Map.Contents.Misc.UniformRacks.Standard:GetDescendants()) do
                    if v.Name == "TouchInterest" and v.Parent then
                        firetouchinterest(head, v.Parent, 0)
                        wait(0.01)
                        firetouchinterest(head, v.Parent, 1)
                end
            end
        end
    end)
end

function getFormals()
    spawn(function()
            if game.Players.LocalPlayer.Character then
                for i,v in pairs(game:GetService("Workspace").Map.Contents.Misc.UniformRacks.Formal:GetDescendants()) do
                    if v.Name == "TouchInterest" and v.Parent then
                        firetouchinterest(head, v.Parent, 0)
                        wait(0.01)
                        firetouchinterest(head, v.Parent, 1)
                end
            end
        end
    end)
end


-- // Index Version // --
local mt = getrawmetatable(game)
local backupindex = mt.__index
local ValiantAimHacks = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/nekomancer69420/timeless/main/nice.lua"))()
ValiantAimHacks["TeamCheck"] = true
setreadonly(mt, false)


function silentaim()
    spawn(function()
        while wait() do
            if not silentaimyes then
                ValiantAimHacks["SilentAimEnabled"] = false
            end
            if silentaimyes then
                ValiantAimHacks["SilentAimEnabled"] = true
            end
        end
        mt.__index = newcclosure(function(t, k)
            if t:IsA("Mouse") and (k == "Hit" or k == "Target") then
                if ValiantAimHacks.checkSilentAim() then
                    local CPlayer = rawget(ValiantAimHacks, "Selected")
                    if CPlayer and CPlayer.Character and CPlayer.Character.FindFirstChild(CPlayer.Character, "Head") then
                        return (k == "Hit" and CPlayer.Character.Head.CFrame or CPlayer.Character.Head)
                    end
                end
            end
            return backupindex(t, k)
        end)
    end)
end















function killall()
    spawn(function()
            for i , all in pairs(game:GetService("Players"):GetPlayers()) do
                if all.Team ~= game.Players.LocalPlayer.Team then
                    while killpeople do
                        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                            if v.Team ~= game.Players.LocalPlayer.Team then
                                    local args = {
                                        [1] = game.Players[v.Name].Character,
                                        [2] = Vector3.new(9e37,9e37,9e37),
                                        [3] = game.Players[v.Name].Character.Head
                                    }
                                    game:GetService("ReplicatedStorage").GunSystem.Remotes.Hit:InvokeServer(unpack(args))
                                end
                        end
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
b:Toggle("Silent Aim",function(bool)
    getgenv().silentaimyes = bool
    if bool then
        silentaim()
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
c:Button("Get PT",function()
    getPT()
end)
c:Button("Get ST",function()
    getST()
end)
c:Button("Get Formals",function()
    getFormals()
end)
c:DestroyGui()









