function RainbowBlockFunction()
    spawn(function()
        for i=1, 500 do
            game.ReplicatedStorage.SpawnRainbowBlock:FireServer()
        end
    end)
end

function GalaxyBlockFunction()
    spawn(function()
        for i=1, 500 do
            game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
        end
    end)
end

function SpawnSuperBlock()
    spawn(function()
        for i=1, 500 do
            game.ReplicatedStorage.SpawnSuperBlock:FireServer()
        end
    end)
end

function SpawnDiamondBlock()
    spawn(function()
        for i=1, 500 do
            game.ReplicatedStorage.SpawnDiamondBlock:FireServer()
        end
    end)
end

function SpawnLuckyBlock()
    spawn(function()
        for i=1, 500 do
            game.ReplicatedStorage.SpawnLuckyBlock:FireServer()
        end
    end)
end

function SpawnAllBlocks()
    spawn(function()
        for i=1, 500 do
            game.ReplicatedStorage.SpawnLuckyBlock:FireServer()
            game.ReplicatedStorage.SpawnDiamondBlock:FireServer()
            game.ReplicatedStorage.SpawnSuperBlock:FireServer()
            game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
            game.ReplicatedStorage.SpawnRainbowBlock:FireServer()
        end
    end)
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("luckyblock")

local b = w:CreateFolder("Blocks")

local c = w:CreateFolder("jay hub winning")

local d = w:CreateFolder("Close GUI")

b:Button("Lucky Block",function()
    SpawnLuckyBlock()
end)

b:Button("Super Block",function()
    SpawnSuperBlock()
end)

b:Button("Diamond Block",function()
    SpawnDiamondBlock()
end)


b:Button("Rainbow Block",function()
    SpawnRainbowBlock()
end)

b:Button("Galaxy Block",function()
    SpawnGalaxyBlock()
end)

b:Button("All items",function()
    SpawnAllBlocks()
end)

d:DestroyGui()
