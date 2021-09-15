if game then
    if not game:IsLoaded() then
        game:Shutdown() -- the script will break if you are not loaded in
    end
    if game.PlaceId ~= 4292776423  then
        game:Shutdown()
    end
else
    game:Shutdown()
end


local Characters = {}
for i = 48,  57 do table.insert(Characters, string.char(i)) end
for i = 65,  90 do table.insert(Characters, string.char(i)) end
for i = 97, 122 do table.insert(Characters, string.char(i)) end

function RandomCharacters(Length)
    return Length > 0 and RandomCharacters(Length - 1) .. Characters[Random.new():NextInteger(1, #Characters)] or ""
end

local LoadedStorage = Instance.new("Folder")
LoadedStorage.Name = RandomCharacters(17)
LoadedStorage.Parent = nil

WeaponClone = game.ReplicatedStorage.Weapons:Clone()
WeaponClone.Parent = LoadedStorage

function InfAmmo(Ens)
    if Ens == true then
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) or cheese.Type == "Grenade" then
                    cheese.Ammo = math.huge
                    cheese.Storage = math.huge
                end
            end
        end
    else
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            local origcheese = require(LoadedStorage.Weapons[Weapon.Name]).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) or cheese.Type == "Grenade" then
                    cheese.Ammo = origcheese.Ammo
                    cheese.Storage = origcheese.Storage
                end
            end
        end
    end
end

function NoSpread(Ens)
    if Ens == true then
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) or cheese.Type == "Grenade" then
                    cheese.RunningSpread = 0
                    cheese.JumpingSpread = 0
                    cheese.HipFireSpread = 0
                    cheese.BaseSpread = 0
                end
            end
        end
    else
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            local origcheese = require(LoadedStorage.Weapons[Weapon.Name]).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) or cheese.Type == "Grenade" then
                    cheese.RunningSpread = origcheese.RunningSpread
                    cheese.JumpingSpread = origcheese.JumpingSpread
                    cheese.HipFireSpread = origcheese.HipFireSpread
                    cheese.BaseSpread = origcheese.BaseSpread
                end
            end
        end
    end
end

function NoRecoil(Ens)
    if Ens == true then
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) then
                    cheese.Recoil = {0, 0}
                end
            end
        end
    else
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            local origcheese = require(LoadedStorage.Weapons[Weapon.Name]).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) or cheese.Type == "Grenade" then
                    cheese.Recoil = origcheese.Recoil
                end
            end
        end
    end
end

function NoBulletDrop(Ens)
    if Ens == true then
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon and cheese.Explode) then
                    cheese.BulletDrop = 0
                end
            end
        end
    else
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            local origcheese = require(LoadedStorage.Weapons[Weapon.Name]).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon and cheese.Explode) or cheese.Type == "Grenade" then
                    cheese.BulletDrop = origcheese.BulletDrop
                end
            end
        end
    end
end

function InstRecharge(Ens)
    if Ens == true then
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) or cheese.Type == "Grenade" then
                    cheese.Recharge = 0
                    cheese.StartRecharge = -1
                end
            end
        end
    else
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            local origcheese = require(LoadedStorage.Weapons[Weapon.Name]).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) or cheese.Type == "Grenade" then
                    cheese.Recharge = origcheese.Recharge
                    cheese.StartRecharge = origcheese.StartRecharge
                end
            end
        end
    end
end

function InstFire(Ens)
    if Ens == true then
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) or cheese.Type == "Grenade" then
                    cheese.FireRate = 0
                end
            end
        end
    else
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            local origcheese = require(LoadedStorage.Weapons[Weapon.Name]).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) or cheese.Type == "Grenade" then
                    cheese.FireRate = origcheese.FireRate
                end
            end
        end
    end
end

function NoBullDrop(Ens)
    if Ens == true then
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) or cheese.Type == "Grenade" then
                    cheese.BulletDrop = 0
                end
            end
        end
    else
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            local origcheese = require(LoadedStorage.Weapons[Weapon.Name]).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) or cheese.Type == "Grenade" then
                    cheese.BulletDrop = origcheese.BulletDrop
                end
            end
        end
    end
end

function SemiWallbang(Ens)
    if Ens == true then
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) or cheese.Type == "Grenade" then
                    cheese.Penetration = math.huge
                end
            end
        end
    else
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            local origcheese = require(LoadedStorage.Weapons[Weapon.Name]).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) or cheese.Type == "Grenade" then
                    cheese.Penetration = origcheese.Penetration
                end
            end
        end
    end
end

function AutoGun(Ens)
    if Ens == true then
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) or cheese.Type == "Grenade" then
                    cheese.Pellets = 10
                    cheese.Automatic = true
                end
            end
        end
    else
        for i,Weapon in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            local cheese = require(Weapon).Stats
            local origcheese = require(LoadedStorage.Weapons[Weapon.Name]).Stats
            if cheese.Description then
                if not (cheese.NotAGun and cheese.NotAWeapon) or cheese.Type == "Grenade" then
                    cheese.Pellets = origcheese.Pellets
                    cheese.Automatic = origcheese.Automatic
                end
            end
        end
    end
end


local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Unit: Classified") -- Creates the window

local b = w:CreateFolder("Misc") -- Creates the folder(U will put here your buttons,etc)

b:Toggle("Infinite Ammo",function(Value)
    wait()
    InfAmmo(Value)
end)
b:Toggle("No Spread", function(Value)
    wait()
    NoSpread(Value)
end)

b:Toggle("No Recoil", function(Value)
    wait()
    NoRecoil(Value)
end)

b:Toggle("No Bullet Drop", function(Value)
    wait()
    NoBulletDrop(Value)
end)

b:Toggle("Instant Recharge", function(Value)
    wait()
    InstRecharge(Value)
end)

b:Toggle("Instant Shoot", function(Value)
    wait()
    InstFire(Value)
end)

b:Toggle("Semi-WallBang", function(Value)
    wait()
    SemiWallbang(Value)
end)

b:Toggle("Automatic Gun", function(Value)
    wait()
    AutoGun(Value)
end)