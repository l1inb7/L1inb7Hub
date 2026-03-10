-- SERVICES
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

-- GUI PARENT
local parent = game:GetService("CoreGui")
pcall(function()
    if gethui then parent = gethui() end
end)

local KEY = "WIP"
local unlocked = false

local gui = Instance.new("ScreenGui")
gui.Parent = parent
gui.Name = "L1inb7Hub"

-- CLICK SOUND
local clickSound = Instance.new("Sound")
clickSound.SoundId = "rbxassetid://9118823102"
clickSound.Volume = 1
clickSound.Parent = gui

------------------------------------------------
-- OPEN BUTTON (Lin)
------------------------------------------------
local open = Instance.new("TextButton")
open.Size = UDim2.new(0,50,0,50)
open.Position = UDim2.new(0,20,0.5,-25)
open.Text = "Lin"
open.Font = Enum.Font.FredokaOne
open.TextSize = 16
open.TextColor3 = Color3.new(1,1,1)
open.BackgroundColor3 = Color3.fromRGB(30,30,30)
open.Parent = gui
local openCorner = Instance.new("UICorner")
openCorner.CornerRadius = UDim.new(1,0)
openCorner.Parent = open
local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0,0,0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(70,0,140))
}
gradient.Rotation = 45
gradient.Parent = open
open.Active = true
open.Draggable = true

------------------------------------------------
-- KEY FRAME
------------------------------------------------
local keyFrame = Instance.new("Frame")
keyFrame.Size = UDim2.new(0,250,0,130)
keyFrame.Position = UDim2.new(0.5,-125,0.5,-65)
keyFrame.BackgroundColor3 = Color3.fromRGB(30,30,40)
keyFrame.Visible = true
keyFrame.Parent = gui
Instance.new("UICorner", keyFrame).CornerRadius = UDim.new(0,16)

local keyTitle = Instance.new("TextLabel")
keyTitle.Text = "L1inb7 Hub Key"
keyTitle.Font = Enum.Font.FredokaOne
keyTitle.TextSize = 18
keyTitle.TextColor3 = Color3.new(1,1,1)
keyTitle.BackgroundTransparency = 1
keyTitle.Size = UDim2.new(1,0,0,35)
keyTitle.Parent = keyFrame

local keyBox = Instance.new("TextBox")
keyBox.PlaceholderText = "Enter Key"
keyBox.Size = UDim2.new(0.8,0,0,30)
keyBox.Position = UDim2.new(0.1,0,0.4,0)
keyBox.Font = Enum.Font.FredokaOne
keyBox.TextColor3 = Color3.new(1,1,1)
keyBox.BackgroundColor3 = Color3.fromRGB(45,45,60)
keyBox.Parent = keyFrame
Instance.new("UICorner", keyBox).CornerRadius = UDim.new(0,10)

local unlock = Instance.new("TextButton")
unlock.Text = "Unlock"
unlock.Size = UDim2.new(0.5,0,0,30)
unlock.Position = UDim2.new(0.25,0,0.7,0)
unlock.Font = Enum.Font.FredokaOne
unlock.TextColor3 = Color3.new(1,1,1)
unlock.BackgroundColor3 = Color3.fromRGB(120,80,255)
unlock.Parent = keyFrame
Instance.new("UICorner",unlock).CornerRadius = UDim.new(0,10)

------------------------------------------------
-- MAIN MENU
------------------------------------------------
local main = Instance.new("Frame")
main.Size = UDim2.new(0,650,0,380)
main.Position = UDim2.new(0.5,-325,0.5,-190)
main.BackgroundColor3 = Color3.fromRGB(40,20,60)
main.Visible = false
main.Parent = gui
Instance.new("UICorner", main).CornerRadius = UDim.new(0,20)
main.Active = true
main.Draggable = true

local close = Instance.new("TextButton")
close.Size = UDim2.new(0,24,0,24)
close.Position = UDim2.new(1,-32,0,8)
close.Text = "X"
close.Font = Enum.Font.FredokaOne
close.TextSize = 14
close.TextColor3 = Color3.new(1,1,1)
close.BackgroundColor3 = Color3.fromRGB(200,60,60)
close.Parent = main
close.ZIndex = 10
Instance.new("UICorner",close).CornerRadius = UDim.new(1,0)
close.MouseButton1Click:Connect(function()
    main.Visible = false
end)

------------------------------------------------
-- SIDEBAR
------------------------------------------------
local sidebar = Instance.new("Frame")
sidebar.Size = UDim2.new(0,150,1,0)
sidebar.BackgroundColor3 = Color3.fromRGB(55,30,85)
sidebar.Parent = main
Instance.new("UICorner", sidebar).CornerRadius = UDim.new(0,18)

local title = Instance.new("ImageLabel")
title.BackgroundTransparency = 1
title.Size = UDim2.new(1,-10,0,100)
title.Position = UDim2.new(0,5,0,0)
title.Image = "rbxassetid://71810792321588"
title.ScaleType = Enum.ScaleType.Fit
title.Parent = sidebar

------------------------------------------------
-- CONTENT SCROLL
------------------------------------------------
local content = Instance.new("ScrollingFrame")
content.Size = UDim2.new(1,-170,1,-20)
content.Position = UDim2.new(0,160,0,10)
content.BackgroundTransparency = 1
content.ScrollBarThickness = 8
content.CanvasSize = UDim2.new(0,0,0,0)
content.Parent = main

------------------------------------------------
-- GAMES PAGE
------------------------------------------------
local gamesPage = Instance.new("Frame")
gamesPage.Size = UDim2.new(1,0,1,0)
gamesPage.BackgroundTransparency = 1
gamesPage.Parent = content

local gameCards = {
 {title="+1 Speed Escape Skateboard", url="https://raw.githubusercontent.com/l1inb7/L1inb7Hub-1SpeedEscapeSkateboard/main/script.lua", image=true},
 {title="soon...", url="", image=false},{title="soon...", url="", image=false},
 {title="soon...", url="", image=false},{title="soon...", url="", image=false},
 {title="soon...", url="", image=false},{title="soon...", url="", image=false},
 {title="soon...", url="", image=false},{title="soon...", url="", image=false},
 {title="soon...", url="", image=false}
}

local cardWidth = 200
local cardHeight = 120
local spacingX = 15
local spacingY = 15
local cardsPerRow = 2

for i,data in ipairs(gameCards) do
 local row = math.floor((i-1)/cardsPerRow)
 local col = (i-1)%cardsPerRow
 local card = Instance.new("Frame")
 card.Size = UDim2.new(0,cardWidth,0,cardHeight)
 card.Position = UDim2.new(0,col*(cardWidth+spacingX),0,row*(cardHeight+spacingY))
 card.BackgroundColor3 = Color3.fromRGB(70,40,110)
 card.Parent = gamesPage
 Instance.new("UICorner", card).CornerRadius = UDim.new(0,16)

 if data.image then
     local img = Instance.new("ImageLabel")
     img.Size = UDim2.new(1,0,1,0)
     img.BackgroundTransparency = 1
     img.Image = "rbxassetid://122159037834888"
     img.Parent = card
     Instance.new("UICorner",img).CornerRadius = UDim.new(0,16)

     local overlay = Instance.new("Frame")
     overlay.Size = UDim2.new(1,0,1,0)
     overlay.BackgroundColor3 = Color3.new(0,0,0)
     overlay.BackgroundTransparency = 0.4
     overlay.Parent = card
     Instance.new("UICorner",overlay).CornerRadius = UDim.new(0,16)
 end

 local titleLabel = Instance.new("TextLabel")
 titleLabel.Text = data.title
 titleLabel.Font = Enum.Font.FredokaOne
 titleLabel.TextSize = 16
 titleLabel.TextColor3 = Color3.new(1,1,1)
 titleLabel.BackgroundTransparency = 1
 titleLabel.Position = UDim2.new(0,5,0,5)
 titleLabel.Size = UDim2.new(1,-10,0,30)
 titleLabel.TextXAlignment = Enum.TextXAlignment.Left
 titleLabel.ZIndex = 3
 titleLabel.Parent = card

 local run = Instance.new("TextButton")
 run.Text = "Run"
 run.Font = Enum.Font.FredokaOne
 run.TextSize = 14
 run.TextColor3 = Color3.new(1,1,1)
 run.BackgroundColor3 = Color3.fromRGB(120,80,255)
 run.Size = UDim2.new(0,80,0,28)
 run.Position = UDim2.new(0,10,1,-35)
 run.Parent = card
 Instance.new("UICorner",run).CornerRadius = UDim.new(0,10)

 run.MouseButton1Click:Connect(function()
     if data.url~="" then
         loadstring(game:HttpGet(data.url))()
     end
 end)
end

-- Обновляем CanvasSize для Games
local totalRows = math.ceil(#gameCards / cardsPerRow)
gamesPage.Size = UDim2.new(1,0,0,(totalRows*(cardHeight+spacingY)))
content.CanvasSize = UDim2.new(0,0,0,gamesPage.Size.Y.Offset)

------------------------------------------------
-- UNIVERSAL SCRIPTS PAGE
------------------------------------------------
local universalPage = Instance.new("Frame")
universalPage.Size = UDim2.new(1,0,1,0)
universalPage.BackgroundTransparency = 1
universalPage.Visible = false
universalPage.Parent = content

local universalCards = {
 {title="Dex Explorer", url="https://rawscripts.net/raw/Universal-Script-DeX-Explorer-114771"},
 {title="Remote Spy", url="https://rawscripts.net/raw/Universal-Script-Simple-Spy-V3-Mobile-53593"},
 {title="Infinite Yield", url="https://rawscripts.net/raw/Infinite-Yield_500"}
}

for i,data in ipairs(universalCards) do
 local row = math.floor((i-1)/2)
 local col = (i-1)%2

 local card = Instance.new("Frame")
 card.Size = UDim2.new(0,200,0,120)
 card.Position = UDim2.new(0,col*(200+15),0,row*(120+15))
 card.BackgroundColor3 = Color3.fromRGB(70,40,110)
 card.Parent = universalPage
 Instance.new("UICorner", card).CornerRadius = UDim.new(0,16)

 local titleLabel = Instance.new("TextLabel")
 titleLabel.Text = data.title
 titleLabel.Font = Enum.Font.FredokaOne
 titleLabel.TextSize = 16
 titleLabel.TextColor3 = Color3.new(1,1,1)
 titleLabel.BackgroundTransparency = 1
 titleLabel.Position = UDim2.new(0,5,0,5)
 titleLabel.Size = UDim2.new(1,-10,0,30)
 titleLabel.TextXAlignment = Enum.TextXAlignment.Left
 titleLabel.Parent = card

 local run = Instance.new("TextButton")
 run.Text = "Run"
 run.Font = Enum.Font.FredokaOne
 run.TextSize = 14
 run.TextColor3 = Color3.new(1,1,1)
 run.BackgroundColor3 = Color3.fromRGB(120,80,255)
 run.Size = UDim2.new(0,80,0,28)
 run.Position = UDim2.new(0,10,1,-35)
 run.Parent = card
 Instance.new("UICorner",run).CornerRadius = UDim.new(0,10)

 run.MouseButton1Click:Connect(function()
     loadstring(game:HttpGet(data.url))()
 end)
end

-- Обновляем CanvasSize для Universal Scripts
local uTotalRows = math.ceil(#universalCards / 2)
universalPage.Size = UDim2.new(1,0,0,(uTotalRows*(120+15)))

------------------------------------------------
-- INFO PAGE
------------------------------------------------
local infoPage = Instance.new("Frame")
infoPage.Size = UDim2.new(1,0,1,0)
infoPage.BackgroundTransparency = 1
infoPage.Visible = false
infoPage.Parent = content

local infoCards = {
 {title="YouTube", subtitle="l1inb7_scriptss", url="https://youtube.com/@l1inb7_scriptss", icon="rbxassetid://6031075938", color=Color3.fromRGB(200,40,40)},
 {title="Discord", subtitle="Join Server", url="https://discord.gg/", icon="rbxassetid://6031071053", color=Color3.fromRGB(90,120,255)}
}

local infoCardWidth = 200
local spacing = 25

for i,data in ipairs(infoCards) do
 local card = Instance.new("Frame")
 card.Size = UDim2.new(0,infoCardWidth,0,140)
 card.Position = UDim2.new(0,(i-1)*(infoCardWidth+spacing),0,40)
 card.BackgroundColor3 = data.color
 card.Parent = infoPage
 Instance.new("UICorner", card).CornerRadius = UDim.new(0,16)

 local icon = Instance.new("ImageLabel")
 icon.Size = UDim2.new(0,40,0,40)
 icon.Position = UDim2.new(0,10,0,10)
 icon.BackgroundTransparency = 1
 icon.Image = data.icon
 icon.Parent = card

 local titleLabel = Instance.new("TextLabel")
 titleLabel.Text = data.title
 titleLabel.Font = Enum.Font.FredokaOne
 titleLabel.TextSize = 20
 titleLabel.TextColor3 = Color3.new(1,1,1)
 titleLabel.BackgroundTransparency = 1
 titleLabel.Position = UDim2.new(0,60,0,10)
 titleLabel.Size = UDim2.new(1,-70,0,25)
 titleLabel.TextXAlignment = Enum.TextXAlignment.Left
 titleLabel.Parent = card

 local subtitle = Instance.new("TextLabel")
 subtitle.Text = data.subtitle
 subtitle.Font = Enum.Font.FredokaOne
 subtitle.TextSize = 14
 subtitle.TextColor3 = Color3.fromRGB(220,220,220)
 subtitle.BackgroundTransparency = 1
 subtitle.Position = UDim2.new(0,60,0,35)
 subtitle.Size = UDim2.new(1,-70,0,20)
 subtitle.TextXAlignment = Enum.TextXAlignment.Left
 subtitle.Parent = card

 local btn = Instance.new("TextButton")
 btn.Text = "Open"
 btn.Font = Enum.Font.FredokaOne
 btn.TextSize = 16
 btn.TextColor3 = Color3.new(1,1,1)
 btn.BackgroundColor3 = Color3.fromRGB(30,30,40)
 btn.Size = UDim2.new(0,100,0,30)
 btn.Position = UDim2.new(0.5,-50,1,-40)
 btn.Parent = card
 Instance.new("UICorner", btn).CornerRadius = UDim.new(0,10)

 if data.title == "YouTube" then
     btn.MouseButton1Click:Connect(function()
         setclipboard(data.url)
         local oldText = btn.Text
         btn.Text = "Copied!"
         delay(3,function() btn.Text = oldText end)
     end)
 else
     btn.MouseButton1Click:Connect(function()
         setclipboard(data.url)
     end)
 end
end

local credit = Instance.new("TextLabel")
credit.Text = "created by L1inb7, work in progress"
credit.Font = Enum.Font.FredokaOne
credit.TextSize = 18
credit.TextColor3 = Color3.fromRGB(200,200,200)
credit.BackgroundTransparency = 1
credit.Size = UDim2.new(1,0,0,40)
credit.Position = UDim2.new(0,0,1,-50)
credit.Parent = infoPage

-- Обновляем CanvasSize для Info
local iTotalWidth = #infoCards * (infoCardWidth + spacing)
infoPage.Size = UDim2.new(0,iTotalWidth,1,0)

------------------------------------------------
-- TABS
------------------------------------------------
local function tab(name,y,page)
 local b = Instance.new("TextButton")
 b.Text = name
 b.Font = Enum.Font.FredokaOne
 b.TextSize = 14
 b.TextColor3 = Color3.new(1,1,1)
 b.BackgroundColor3 = Color3.fromRGB(80,50,120)
 b.Size = UDim2.new(1,-20,0,36)
 b.Position = UDim2.new(0,10,0,y)
 b.Parent = sidebar
 Instance.new("UICorner", b).CornerRadius = UDim.new(0,10)

 b.MouseButton1Click:Connect(function()
     gamesPage.Visible = false
     universalPage.Visible = false
     infoPage.Visible = false
     page.Visible = true
 end)
end

tab("Games",90,gamesPage)
tab("Universal Scripts",135,universalPage)
tab("Info",180,infoPage)

------------------------------------------------
-- KEY SYSTEM
------------------------------------------------
open.MouseButton1Click:Connect(function()
 clickSound:Play()
 if main.Visible then
     main.Visible = false
 else
     if unlocked then
         main.Visible = true
     else
         keyFrame.Visible = true
     end
 end
end)

unlock.MouseButton1Click:Connect(function()
 clickSound:Play()
 if keyBox.Text == KEY then
     unlocked = true
     keyFrame.Visible = false
     main.Visible = true
 else
     keyBox.Text = "Wrong Key"
 end
end)

