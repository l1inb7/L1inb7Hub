-- GUI PARENT
local parent = game:GetService("CoreGui")
pcall(function()
	if gethui then parent = gethui() end
end)

local KEY = "L1inb7FREE"
local unlocked = false

local gui = Instance.new("ScreenGui")
gui.Parent = parent
gui.Name = "L1inb7Hub"

------------------------------------------------
-- CLICK SOUND
------------------------------------------------

local clickSound = Instance.new("Sound")
clickSound.SoundId = "rbxassetid://9118823102"
clickSound.Volume = 1
clickSound.Parent = gui

------------------------------------------------
-- OPEN BUTTON
------------------------------------------------

local open = Instance.new("TextButton")
open.Size = UDim2.new(0,40,0,40)
open.Position = UDim2.new(0,20,0.5,-20)
open.Text = "Lin"
open.Font = Enum.Font.GothamBold
open.TextSize = 14
open.TextColor3 = Color3.new(1,1,1)
open.BackgroundColor3 = Color3.fromRGB(120,80,255)
open.Parent = gui

local openCorner = Instance.new("UICorner")
openCorner.CornerRadius = UDim.new(1,0)
openCorner.Parent = open

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
keyFrame.Active = true
keyFrame.Draggable = true
keyFrame.Parent = gui

local keyCorner = Instance.new("UICorner")
keyCorner.CornerRadius = UDim.new(0,16)
keyCorner.Parent = keyFrame

local keyTitle = Instance.new("TextLabel")
keyTitle.Text = "L1inb7 Hub Key"
keyTitle.Font = Enum.Font.GothamBold
keyTitle.TextSize = 18
keyTitle.TextColor3 = Color3.new(1,1,1)
keyTitle.BackgroundTransparency = 1
keyTitle.Size = UDim2.new(1,0,0,35)
keyTitle.Parent = keyFrame

local keyBox = Instance.new("TextBox")
keyBox.PlaceholderText = "Enter Key"
keyBox.Size = UDim2.new(0.8,0,0,30)
keyBox.Position = UDim2.new(0.1,0,0.4,0)
keyBox.Font = Enum.Font.Gotham
keyBox.TextColor3 = Color3.new(1,1,1)
keyBox.BackgroundColor3 = Color3.fromRGB(45,45,60)
keyBox.Parent = keyFrame

local keyBoxCorner = Instance.new("UICorner")
keyBoxCorner.CornerRadius = UDim.new(0,10)
keyBoxCorner.Parent = keyBox

local unlock = Instance.new("TextButton")
unlock.Text = "Unlock"
unlock.Size = UDim2.new(0.5,0,0,30)
unlock.Position = UDim2.new(0.25,0,0.7,0)
unlock.Font = Enum.Font.GothamSemibold
unlock.TextColor3 = Color3.new(1,1,1)
unlock.BackgroundColor3 = Color3.fromRGB(120,80,255)
unlock.Parent = keyFrame

local unlockCorner = Instance.new("UICorner")
unlockCorner.CornerRadius = UDim.new(0,10)
unlockCorner.Parent = unlock

------------------------------------------------
-- MAIN MENU
------------------------------------------------

local main = Instance.new("Frame")
main.Size = UDim2.new(0,600,0,340)
main.Position = UDim2.new(0.5,-300,0.5,-170)
main.BackgroundColor3 = Color3.fromRGB(25,25,35)
main.Visible = false
main.Active = true
main.Draggable = true
main.Parent = gui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0,18)
mainCorner.Parent = main

------------------------------------------------
-- CLOSE BUTTON
------------------------------------------------

local close = Instance.new("TextButton")
close.Size = UDim2.new(0,28,0,28)
close.Position = UDim2.new(1,-35,0,7)
close.Text = "X"
close.Font = Enum.Font.GothamBold
close.TextSize = 14
close.TextColor3 = Color3.new(1,1,1)
close.BackgroundColor3 = Color3.fromRGB(200,60,60)
close.Parent = main

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(1,0)
closeCorner.Parent = close

close.MouseButton1Click:Connect(function()
	clickSound:Play()
	main.Visible = false
end)

------------------------------------------------
-- SIDEBAR
------------------------------------------------

local sidebar = Instance.new("Frame")
sidebar.Size = UDim2.new(0,150,1,0)
sidebar.BackgroundColor3 = Color3.fromRGB(35,35,50)
sidebar.Parent = main

local sidebarCorner = Instance.new("UICorner")
sidebarCorner.CornerRadius = UDim.new(0,18)
sidebarCorner.Parent = sidebar

local title = Instance.new("TextLabel")
title.Text = "L1inb7 Hub"
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1
title.Size = UDim2.new(1,0,0,50)
title.Parent = sidebar

------------------------------------------------
-- CONTENT
------------------------------------------------

local content = Instance.new("Frame")
content.Size = UDim2.new(1,-170,1,-20)
content.Position = UDim2.new(0,160,0,10)
content.BackgroundTransparency = 1
content.Parent = main

local gamesPage = Instance.new("Frame")
gamesPage.Size = UDim2.new(1,0,1,0)
gamesPage.BackgroundTransparency = 1
gamesPage.Parent = content

local infoPage = Instance.new("Frame")
infoPage.Size = UDim2.new(1,0,1,0)
infoPage.BackgroundTransparency = 1
infoPage.Visible = false
infoPage.Parent = content

------------------------------------------------
-- GAME CARD
------------------------------------------------

local card = Instance.new("Frame")
card.Size = UDim2.new(0,240,0,150)
card.BackgroundColor3 = Color3.fromRGB(40,40,65)
card.Parent = gamesPage

local cardCorner = Instance.new("UICorner")
cardCorner.CornerRadius = UDim.new(0,18)
cardCorner.Parent = card

-- IMAGE BACKGROUND
local image = Instance.new("ImageLabel")
image.Size = UDim2.new(1,0,1,0)
image.BackgroundTransparency = 1
image.Image = "rbxassetid://128973598543744"
image.Parent = card

local imgCorner = Instance.new("UICorner")
imgCorner.CornerRadius = UDim.new(0,18)
imgCorner.Parent = image

-- DARK OVERLAY
local overlay = Instance.new("Frame")
overlay.Size = UDim2.new(1,0,1,0)
overlay.BackgroundColor3 = Color3.new(0,0,0)
overlay.BackgroundTransparency = 0.4
overlay.Parent = card

local overlayCorner = Instance.new("UICorner")
overlayCorner.CornerRadius = UDim.new(0,18)
overlayCorner.Parent = overlay

-- GAME TITLE
local gameTitle = Instance.new("TextLabel")
gameTitle.Text = "+1 Speed Escape Skateboard"
gameTitle.Font = Enum.Font.GothamSemibold
gameTitle.TextSize = 16
gameTitle.TextColor3 = Color3.new(1,1,1)
gameTitle.BackgroundTransparency = 1
gameTitle.Position = UDim2.new(0,10,0,10)
gameTitle.Size = UDim2.new(1,-20,0,30)
gameTitle.TextXAlignment = Enum.TextXAlignment.Left
gameTitle.Parent = card

-- RUN BUTTON
local run = Instance.new("TextButton")
run.Text = "Run"
run.Font = Enum.Font.GothamBold
run.TextSize = 14
run.TextColor3 = Color3.new(1,1,1)
run.BackgroundColor3 = Color3.fromRGB(120,80,255)
run.Size = UDim2.new(0,90,0,32)
run.Position = UDim2.new(0,10,1,-40)
run.Parent = card

local runCorner = Instance.new("UICorner")
runCorner.CornerRadius = UDim.new(0,10)
runCorner.Parent = run

run.MouseButton1Click:Connect(function()
	clickSound:Play()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/l1inb7/L1inb7Hub-1SpeedEscapeSkateboard/main/script.lua"))()
end)

------------------------------------------------
-- INFO PAGE
------------------------------------------------

local yt = Instance.new("TextButton")
yt.Text = "My YouTube"
yt.Size = UDim2.new(0,160,0,40)
yt.Position = UDim2.new(0,20,0,20)
yt.Font = Enum.Font.GothamBold
yt.TextColor3 = Color3.new(1,1,1)
yt.BackgroundColor3 = Color3.fromRGB(255,60,60)
yt.Parent = infoPage

local ytCorner = Instance.new("UICorner")
ytCorner.CornerRadius = UDim.new(0,10)
ytCorner.Parent = yt

yt.MouseButton1Click:Connect(function()
	clickSound:Play()
	setclipboard("@L1nb7_Scriptss")
	yt.Text = "Copied!"
	wait(2)
	yt.Text = "My YouTube"
end)

------------------------------------------------
-- SIDEBAR BUTTONS
------------------------------------------------

local function tab(name,y,callback)

	local b = Instance.new("TextButton")
	b.Text = name
	b.Font = Enum.Font.Gotham
	b.TextSize = 14
	b.TextColor3 = Color3.new(1,1,1)
	b.BackgroundColor3 = Color3.fromRGB(50,50,70)
	b.Size = UDim2.new(1,-20,0,36)
	b.Position = UDim2.new(0,10,0,y)
	b.Parent = sidebar

	local bCorner = Instance.new("UICorner")
	bCorner.CornerRadius = UDim.new(0,10)
	bCorner.Parent = b

	b.MouseButton1Click:Connect(function()
		clickSound:Play()
		callback()
	end)

end

tab("Games",70,function()
	infoPage.Visible = false
	gamesPage.Visible = true
end)

tab("Info",115,function()
	gamesPage.Visible = false
	infoPage.Visible = true
end)

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
