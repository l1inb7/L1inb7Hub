local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
   Name = "🎲 L1inb7 Hub",
   LoadingTitle = "🎲 L1inb7 Hub",
   LoadingSubtitle = "by L1inb7",
   ConfigurationSaving = {
      Enabled = false,
      FileName = "L1inb7Hub"
   },
   KeySystem = false
})

----------------------------------------------------
-- SCRIPTS TAB
----------------------------------------------------

local ScriptsTab = Window:CreateTab("Scripts", 4483362458)

-- SCRIPT 1
ScriptsTab:CreateButton({
   Name = "🛹 +1 Speed Escape Skateboard Script",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/l1inb7/L1inb7Hub-1SpeedEscapeSkateboard/main/script.lua"))()
   end,
})

-- SCRIPT 2
ScriptsTab:CreateButton({
   Name = "Soon...",
   Callback = function()
      loadstring(game:HttpGet("PASTE_YOUR_RAW_LINK_HERE"))()
   end,
})

-- SCRIPT 3
ScriptsTab:CreateButton({
   Name = "Soon..",
   Callback = function()
      loadstring(game:HttpGet("PASTE_YOUR_RAW_LINK_HERE"))()
   end,
})

----------------------------------------------------
-- INFO TAB
----------------------------------------------------

local InfoTab = Window:CreateTab("Info", 4483362458)

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
