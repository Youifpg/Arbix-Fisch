local library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Youifpg/U-ARE-MY-SUNSHINE/refs/heads/main/Gui.lua")))()

MakeWindow({
  Hub = {
    Title = "TheBillDev | Hub",
    Animation = "by : TEST"
  },
  Key = {
    KeySystem = true,
    Title = "TheBillDev | KEY",
    Description = "^ Best Hub ^",
    KeyLink = "https://pastebin.com/raw/42434df8",
    Keys = {"TESTKEY"},
    Notifi = {
      Notifications = true,
      CorrectKey = "Running the Script...",
      Incorrectkey = "The key is incorrect",
      CopyKeyLink = "Copied to Clipboard"
    }
  }
})


MinimizeButton({
  Image = "rbxassetid://71515603931996",
  Size = {40, 40},
  Color = Color3.fromRGB(10, 10, 10),
  Corner = true,
  Stroke = true,
  StrokeColor = Color3.fromRGB(127, 0, 255)
})

MakeNotifi({
  Title = "TheBillDev | HUB",
  Text = "JOIN OUR DISCORD",
  Time = 5
})

local Main = MakeTab({Name = "INFO"})

local Image = AddImageLabel(Main, {
  Name = "TBD | HUB",
  Image = "rbxassetid://71515603931996"
})
local Label = AddTextLabel(Main, "Simple And Easy use , Good hub | By TOUKA and ARBIX team and TBD owner")
