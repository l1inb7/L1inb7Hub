local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "L1inb7 Hub",
   LoadingTitle = "L1inb7 Hub",
   LoadingSubtitle = "Multi Game Script",
   ConfigurationSaving = {
      Enabled = true,
      FileName = "L1inb7Hub"
   },
   KeySystem = true,
   KeySettings = {
      Title = "L1inb7 Hub Key",
      Subtitle = "Key System",
      Note = "Key from YouTube",
      FileName = "L1inb7Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"L1inb7FREE"}
   }
})

local GamesTab = Window:CreateTab("Games", 4483362458)
local InfoTab = Window:CreateTab("Info", 4483362458)

-------------------------------------------------
-- GAME SCRIPTS
-------------------------------------------------

GamesTab:CreateButton({
   Name = "+1 Speed Escape Skateboard",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/l1inb7/L1inb7Hub-1SpeedEscapeSkateboard/main/script.lua"))()
   end,
})

-------------------------------------------------
-- INFO
-------------------------------------------------

InfoTab:CreateButton({
   Name = "Copy YouTube",
   Callback = function()
      setclipboard("https://youtube.com/@L1inb7_Scriptss")
      Rayfield:Notify({
         Title = "L1inb7 Hub",
         Content = "YouTube copied!",
         Duration = 4
      })
   end,
})

InfoTab:CreateButton({
   Name = "Thanks for using L1inb7 Hub",
   Callback = function()
      Rayfield:Notify({
         Title = "L1inb7 Hub",
         Content = "More games coming soon!",
         Duration = 5
      })
   end,
