-- Sussy Skid
local function createGUI()
    local gui = Instance.new("ScreenGui")
    gui.Name = "MyGUI"
    gui.ResetOnSpawn = false
    gui.Parent = game.Players.LocalPlayer.PlayerGui
    
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 200, 0, 200)
    frame.Position = UDim2.new(0.5, -100, 0.5, -100)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    frame.BackgroundTransparency = 0.5
    frame.Parent = gui
    
    local dropdown = Instance.new("TextButton")
    dropdown.Size = UDim2.new(0, 150, 0, 30)
    dropdown.Position = UDim2.new(0.5, -75, 0, 20)
    dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
    dropdown.Text = "Dropdown"
    dropdown.Parent = frame
    
    local dropdownList = Instance.new("Frame")
    dropdownList.Size = UDim2.new(0, 150, 0, 150)
    dropdownList.Position = UDim2.new(0.5, -75, 0, 50)
    dropdownList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dropdownList.Visible = false
    dropdownList.Parent = frame
    
    for i = 1, 10 do
        local button = Instance.new("TextButton")
        button.Size = UDim2.new(0, 150, 0, 30)
        button.Position = UDim2.new(0, 0, 0, (i - 1) * 30)
        button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        button.TextColor3 = Color3.fromRGB(0, 0, 0)
        button.Text = "Button " .. i
        button.Parent = dropdownList
    end
end

-- Check if the place ID matches
if game.PlaceId == 6872274481 then
    -- Create 4 GUIs
    for i = 1, 4 do
        createGUI()
    end
end

-- Keybind function
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.V then
        -- Toggle visibility of all GUIs
        for _, gui in ipairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
            if gui.Name == "MyGUI" then
                gui.Enabled = not gui.Enabled
            end
        end
    end
end)

