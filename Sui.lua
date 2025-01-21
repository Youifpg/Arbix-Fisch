local players = game:GetService("Players")
local player = players.LocalPlayer
local teams = game:GetService("Teams")
local replicatedStorage = game:GetService("ReplicatedStorage")

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

-- Auto
local Main = MakeTab({Name = "MAIN"})

local section = AddSection(Main, {"AUTO GOAL AND GET BALL"})

local isAutoGoalEnabled = false
local isAutoBallEnabled = false

local function AutoGoal()
    local character = player.Character or player.CharacterAdded:Wait()
    local football = workspace:FindFirstChild("Football")

    if football then
        while isAutoGoalEnabled do
            if character:FindFirstChild("Football") then
               
                local goalPosition
                if player.Team.Name == "Away" then
                    goalPosition = workspace.Goals.Away.CFrame
                elseif player.Team.Name == "Home" then
                    goalPosition = workspace.Goals.Home.CFrame
                end

                if goalPosition then
                    character:SetPrimaryPartCFrame(goalPosition)
                    wait(0.1)
                    
                    local args = {
                        [1] = 30,
                        [4] = Vector3.new(0, 0, 0)
                    }
                    replicatedStorage.Packages.Knit.Services.BallService.RE.Shoot:FireServer()
                end

                wait(0.1)
            else
                wait(0.5)
            end
        end
    end
end

local ToggleFarm = AddToggle(Main, {
  Name = "Auto Goal ( need ball )",
  Default = false,
  Callback = function(Value)
    isAutoGoalEnabled = value
        if isAutoGoalEnabled then
            AutoGoal()
        end
  end
})


local function trackFootball()
    local character = player.Character or player.CharacterAdded:Wait()

    while isAutoBallEnabled do
        local football = workspace:FindFirstChild("Football")
        if football then
            if not character:FindFirstChild("Football") then
                character:SetPrimaryPartCFrame(football.CFrame) -- Teleport to the football
            end
        else
            print("Football is not in workspace anymore")
        end
        wait(0.1) -- Wait for 0.1 seconds before checking again
    end
end

local ToggleBall = AddToggle(Main, {
  Name = "Auto Get ball",
  Default = false,
  Callback = function(Value)
    isAutoBallEnabled = value
        if isAutoBallEnabled then
            trackFootball()
        end
  end
})
