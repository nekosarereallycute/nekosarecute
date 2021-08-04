-- among us?
getgenv().settings = {
    ['on'] = true,
    ['sell'] = {
        ['enabled'] = true,
        ['min'] = 100
    },
    ['upgrades'] = {
        ['AxeStrength'] = true,
        ['Speed'] = true,
        ['TreeGrowth'] = true,
        ['GoldenChance'] = true, 
        ['WCount'] = true,
        ['WStrength'] = true,
        ['WSpeed'] = true,
        ['WLogs'] = true,
        ['RSpeed'] = true
    },
    ['expand'] = true
}

getgenv().autofarm = true
-- locals 



local runServ = game:GetService("RunService")
local player = game:GetService("Players").LocalPlayer
local remStorage = game:GetService("ReplicatedStorage").Communication.Remotes 
local HitTree = remStorage.HitTree 
local containsTrees = {}
local searched = {}


function getPlot()
    for i , v in pairs(workspace.Plots:GetChildren()) do 
        if v:FindFirstChild("Owner") and v.Owner.Value == player then 
            return v
        end 
    end
end
local plot = getPlot()

-- check if already searched for trees
function hasSearched(v) 
    for i2,v2 in pairs(containsTrees) do 
        if v2.Name == v.Name then 
            return true 
        end 
    end    
    return false
end

coroutine.wrap(function()
    while wait(1) do
        if getgenv().settings.on == false then 
            break
        end
        for i , v in pairs(plot:GetChildren()) do  
            if v.ClassName == "Model" and not hasSearched(v) then 
                for i2,v2 in pairs(v:GetChildren()) do 
                    if string.match(v2.Name,"Tree") then 
                        print("tree")
                        table.insert(containsTrees,v)
                        break
                    end
                end
            end
        end
    end
end)()


function auto2()
    spawn(function()
        while getgenv().autofarm do 
            runServ.Heartbeat:wait()
            for i,v in pairs(containsTrees) do 
                for i,v in pairs(v:GetChildren()) do 
                    if string.match(v.Name,"Tree") then 
                        local treeNum = tonumber(string.split(v.Name,"_")[2])
                        repeat 
                            runServ.Heartbeat:wait()   
                            if v.Parent == nil then 
                                break
                            else
                                player.Character.PrimaryPart.CFrame = v.Base.CFrame 
                                HitTree:FireServer(tonumber(plot.Name),v.Parent.Name,treeNum)
                                wait(1.12)
                            end
                        until v.Parent == nil 
                        print("wwww")
                    end
                end
            end
        end
    end)
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("timber")

local b = w:CreateFolder("auto")

local c = w:CreateFolder("jay hub winning")



b:Toggle("auto chop",function(bool)
    getgenv().autofarm = bool
    if bool then
        auto2()
    end
end)


b:DestroyGui()

