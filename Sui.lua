local players = game:GetService("Players") -- Corrected the order of declaration
local player = players.LocalPlayer -- Moved this line after players is defined
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

local sectionFarms = AddSection(Main, {"AUTO GOAL AND GET BALL"})

local isAutoGoalEnabled = false
local isAutoBallEnabled = false

local function AutoGoal()
    local character = player.Character or player.CharacterAdded:Wait()
    local football = workspace:FindFirstChild("Football")

    if football then
        while isAutoGoalEnabled do
            if character:FindFirstChild("Football") then
                -- Teleport to the goal based on the player's team
                local goalPosition
                if player.Team.Name == "Away" then
                    goalPosition = workspace.Goals.Away.CFrame
                elseif player.Team.Name == "Home" then
                    goalPosition = workspace.Goals.Home.CFrame
                end

                if goalPosition then
                    character:SetPrimaryPartCFrame(goalPosition) -- Teleport to the goal
                    wait(0.1) -- Short wait to ensure teleportation is processed
                    -- Immediately shoot the ball after teleporting
                    local args = {
                        [1] = 30,
                        [4] = Vector3.new(0, 0, 0)
                    }
                    replicatedStorage.Packages.Knit.Services.BallService.RE.Shoot:FireServer()
                end

                wait(1) -- Wait before the next action to avoid spamming
            else
                wait(0.5) -- Shorter wait if the player doesn't have the football
            end
        end
    end
end

local Toggle1 = AddToggle(Main, {
    Name = "Auto Goal ( need ball )",
    Default = false,
    Callback = function(value)
        isAutoGoalEnabled = value
        if isAutoGoalEnabled then
            AutoGoal() -- Start the AutoGoal function
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
        wait() -- Wait for 0.1 seconds before checking again
    end
end

local Toggle2 = AddToggle(Main, {
    Name = "Auto Teleport to Football",
    Default = false,
    Callback = function(value)
        isAutoBallEnabled = value
        if isAutoBallEnabled then
            trackFootball() -- Start tracking the football
        end
    end
})

local sectionS = AddSection(Main, {"SPEED AND INF STAIMNA"})

AddButton(Main, {
  Name = "GET SPEED ( DONT SPAM )",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Bqbsph7s"))()
  end
})

AddButton(Main, {
  Name = "INF STAMINA",
  Callback = function()
    local args = {
    [1] = 0/0
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.StaminaService.RE.DecreaseStamina:FireServer(unpack(args))
  end
})
local sectionGK = AddSection(Main, {"GK"})

AddButton(Main, {
  Name = "GK V1 ( MORE LEGIT )",
  Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/CfqfA9pw"))()
  end
})

AddButton(Main, {
  Name = "GK V2",
  Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/4r9yzMEK"))()
  end
})

local Main = MakeTab({Name = "STYLE AND FLOW"})

local sectionStyle = AddSection(Main, {"Styles ( Most of them works with skils"})
