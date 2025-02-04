local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()
local Window = Rayfield:CreateWindow({
   Name = "Arrayfield Example Window",
   LoadingTitle = "Arrayfield Interface Suite",
   LoadingSubtitle = "by Arrays",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Arrayfield"
   },
local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image
local Tab2 = Window:CreateTab("Tab Example 2") -- Title, Image
local Section = Tab:CreateSection("Section Example",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element
local Button = Tab:CreateButton({
   Name = "Button Example",
   Info = "Button info/Description.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
   print('Pressed')
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   Info = "Toggle info/Description.", -- Speaks for itself, Remove if none.
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      print(Value)
   end,
})
Tab:CreateInput({
   Name = "11 Characters Limit",
   Info = "Input info/Description.",
   PlaceholderText = "Text",
   CharacterLimit = 15,
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
      print(Text)
   end,
})
