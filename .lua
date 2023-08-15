local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()

local games = {
    [{13680982680}] = "https://raw.githubusercontent.com/BigHacker123/velocitycc2/main/strengthsimulator.lua",
    [{13253735473}] = "https://raw.githubusercontent.com/BigHacker123/velocitycc/main/free",
    -- Games
}

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        Notification.Notify("velocity.cc", "Loading "..GameName,"rbxassetid://4483345998");
        loadstring(game:HttpGet(url))()
        break
    end
end
