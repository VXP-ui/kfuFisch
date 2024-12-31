-- Create a ScreenGui to hold the watermark
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "WatermarkGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a TextLabel for the watermark
local watermark = Instance.new("TextLabel")
watermark.Name = "Watermark"
watermark.Parent = screenGui
watermark.Size = UDim2.new(1, 0, 1, 0) -- Cover the entire screen
watermark.Position = UDim2.new(0, 0, 0, 0) -- Start from the top-left corner
watermark.BackgroundTransparency = 1 -- Transparent background
watermark.Text = "KFU ON TOP"
watermark.TextColor3 = Color3.fromRGB(255, 50, 50) -- Vibrant red text
watermark.TextStrokeTransparency = 0 -- Fully visible stroke for boldness
watermark.TextStrokeColor3 = Color3.new(0, 0, 0) -- Black stroke
watermark.TextScaled = true -- Automatically scale text
watermark.Font = Enum.Font.GothamBlack -- Bold and modern font
watermark.TextTransparency = 0.1 -- Slight transparency for effect
watermark.ZIndex = 10 -- Ensure it's on top of other UI elements

-- Add a subtle text glow effect
local uiGradient = Instance.new("UIGradient", watermark)
uiGradient.Color = ColorSequence.new(
    Color3.fromRGB(255, 0, 0),
    Color3.fromRGB(255, 255, 0)
) -- Gradient from red to yellow
uiGradient.Rotation = 45 -- Diagonal gradient
