--PlaceID Check lol
local placeId = game.PlaceId -- Retrieves the current place ID

if placeId == 6872274481 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    -- The library is loaded here since the place ID matches
else
    warn("Invalid place ID!")
end

-- using gae gui cuz bad at making guis
local Window = Library.CreateLib("GlacierZ", "Midnight")
local Tab = Window:NewTab("Combat")
local Tab = Window:NewTab("Blatant")
local Tab = Window:NewTab("Utility")
local Tab = Window:NewTab("World")
local Tab = Window:NewTab("Misc")

Section:NewButton("Autoclick", "ButtonInfo", function()
    local clickDelay = 0.5 -- Adjust the delay between clicks (in seconds)
local mouse = game.Players.LocalPlayer:GetMouse()

while true do
    mouse.Button1Down:Wait()
    wait(clickDelay)
end

end)

Section:NewButton("NoClickdelay", "ButtonInfo", function()
    local userInputService = game:GetService("UserInputService")
local mouse = game.Players.LocalPlayer:GetMouse()

userInputService.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        mouse.Button1Down:Fire()
    end
end)

end)