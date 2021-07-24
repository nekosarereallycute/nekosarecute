getgenv().spamUP = false
getgenv().spamDOWN = false
getgenv().spamSpawn = false

function spamUPFunction()
    spawn(function()
        while spamUP do
            wait()
            for i,part in pairs(game.Workspace.Carts:GetDescendants()) do
                if part.Name == "Up" then
                    fireclickdetector(part.Click)
                end
            end
        end
    end)
end

function spamDOWNFunction()
    spawn(function()
        while spamDOWN do
            wait()
            for i,part in pairs(game.Workspace.Carts:GetDescendants()) do
                if part.Name == "Down" then
                    fireclickdetector(part.Click)
                end
            end
        end
    end)
end

function spamSpawn1Function()
    spawn(function()
        while spamSpawn do
            wait()
            for i,part in pairs(game.Workspace.Carts:GetDescendants()) do
                if part.Name == "1Regen" then
                    fireclickdetector(part.Click)
                end
            end
        end
    end)
end

function spamSpawn2Function()
    spawn(function()
        while spamSpawn do
            wait()
            for i,part in pairs(game.Workspace.Carts:GetDescendants()) do
                if part.Name == "4Regen" then
                    fireclickdetector(part.Click)
                end
            end
        end
    end)
end

function spamSpawn3Function()
    spawn(function()
        while spamSpawn do
            wait()
            for i,part in pairs(game.Workspace.Carts:GetDescendants()) do
                if part.Name == "8Regen" then
                    fireclickdetector(part.Click)
                end
            end
        end
    end)
end

function spamSpawn4Function()
    spawn(function()
        while spamSpawn do
            wait()
            for i,part in pairs(game.Workspace.Carts:GetDescendants()) do
                if part.Name == "2Regen" then
                    fireclickdetector(part.Click)
                end
            end
        end
    end)
end

function spamSpawnFunction()
    spawn(function()
        while spamSpawn do
            wait()
            spamSpawn1Function()
            spamSpawn2Function()
            spamSpawn3Function()
            spamSpawn4Function()
        end
    end)
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("cart ride flamgo")

local b = w:CreateFolder("annoy ppl")

b:Toggle("Make everyone fast",function(bool)
    getgenv().spamUP = bool
    if bool then
        spamUPFunction()
    end
end)

b:Toggle("Make everyone slow",function(bool)
    getgenv().spamDOWN = bool
    if bool then
        spamDOWNFunction()
    end
end)

b:Toggle("spam spawn",function(bool)
    getgenv().spamSpawn = bool
    if bool then
        spamSpawnFunction()
    end
end)

b:DestroyGui()



