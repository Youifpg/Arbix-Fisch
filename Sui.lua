local players = game:GetService("Players") -- Corrected the order of declaration
local player = players.LocalPlayer -- Moved this line after players is defined
local teams = game:GetService("Teams")
local replicatedStorage = game:GetService("ReplicatedStorage")
local library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Youifpg/U-ARE-MY-SUNSHINE/refs/heads/main/Gui.lua")))()

MakeWindow({
  Hub = {
    Title = "TheBillDev | Hub",
    Animation = "by : TOUKA | ARBIX"
  },
  Key = {
    KeySystem = true,
    Title = "TheBillDev | KEY",
    Description = "^ Best Hub ^",
    KeyLink = "",
    Keys = {"OWNERSKEY1", "ARBIX_TR651FGAQAK", "ARBIX_YHTQHUAJ12","ARBIX_HTAYHQYNOW", "ARBIX_TYAYYAWKK"},
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
local Paragraph1 = AddParagraph(Main, {"CREDIT", "THIS SCRIPT MADE BY TOUKA ARBIX HUB OWENR"})
local Paragraph2 = AddParagraph(Main, {"INFO", "Simple And Easy use , Good hub and The best hub, I hope You enjoy in it"})
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

local function set_style(desired_style)
    if player:FindFirstChild("PlayerStats") then
        local playerStats = player.PlayerStats
        if playerStats:FindFirstChild("Style") then
            playerStats.Style.Value = desired_style
        end
    end
end

local function set_flow(desired_flow)
    if player:FindFirstChild("PlayerStats") then
        local playerStats = player.PlayerStats
        if playerStats:FindFirstChild("Flow") then
            playerStats.Flow.Value = desired_flow
        end
    end
end

local StyleTextBox = AddTextBox(Main, { 
  Name = "Stye Name", 
  Default = "", 
  TextDisappear = false, 
  PlaceholderText = "PUT NAME", 
  ClearText = true, 
  Callback = function(value) 


      styleId = value 
  end 
}) 


AddButton(Main, { 
  Name = "GET THE STYLE", 
  Description = "DONT SPAM!", 
  Callback = function() 

      if styleId and styleId ~= "" then 
        set_style(styleId)
        MakeNotifi({
          Title = "SUCCES",
          Text = " by touka",
          Time = 5
        })
      
      else 

        MakeNotifi({
          Title = "WRONG PLS BE CARFULLY",
          Text = "By touka",
          Time = 5
        })
      end 
  end 
})
local sectionFlow = AddSection(Main, {"Flows"})

local FlowTextBox = AddTextBox(Main, { 
  Name = "Flow Name", 
  Default = "", 
  TextDisappear = false, 
  PlaceholderText = "PUT NAME", 
  ClearText = true, 
  Callback = function(value) 


      flow_name = value 
  end 
}) 


AddButton(Main, { 
  Name = "GET THE FLOW", 
  Description = "DONT SPAM!", 
  Callback = function() 

      if flow_name and flow_name ~= "" then 
        set_flow(flow_name)
        MakeNotifi({
          Title = "SUCCES",
          Text = "By touka",
          Time = 5
        })
      
      else 

        MakeNotifi({
          Title = "WRONG PLS BE CARFULLY",
          Text = "By touka",
          Time = 5
        })
      end 
  end 
})

local sectionFlow2 = AddSection(Main, {"Flows Function"})

local localPlayer = game:GetService("Players").LocalPlayer

AddButton(Main, { 
  Name = "ALWAYS FLOW ON (FE)", 
  Description = "DONT SPAM!", 
  Callback = function()
    if localPlayer:FindFirstChild("PlayerStats") and localPlayer.PlayerStats:FindFirstChild("InFlow") then
        localPlayer.PlayerStats.InFlow.Value = true
        local args = {
        [1] = "true"
    }
    game:GetService("ReplicatedStorage").Packages.Knit.Services.FlowService.RE.AuraEquip:FireServer(unpack(args))
       end
    end
})

AddButton(Main, { 
  Name = "Prodigy", 
  Description = "INF CURVE SHOT AND SPEED LEGIT ( PRESS ALWAYS FLOW ON)", 
  Callback = function()
      set_flow("Prodigy")
    end
  })
local Main = MakeTab({Name = "ITEMS"})

local section100 = AddSection(Main, {"GOAL EFFECT"})
local GoalsTextBox = AddTextBox(Main, { 
  Name = "Goal effect Name", 
  Default = "", 
  TextDisappear = false, 
  PlaceholderText = "PUT NAME", 
  ClearText = true, 
  Callback = function(value) 


      goal_name = value 
  end 
}) 


AddButton(Main, { 
  Name = "GET THE EFFECT", 
  Description = "DONT SPAM!", 
  Callback = function()
      if goal_name and goal_name ~= "" then
            local args = {
                [1] = "GoalEffects",
                [2] = goal_name
            }
            game:GetService("ReplicatedStorage").Packages.Knit.Services.CustomizationService.RE.Customize:FireServer(unpack(args))
        MakeNotifi({
          Title = "SUCCES",
          Text = "By touka",
          Time = 5
        })
      
      else 

        MakeNotifi({
          Title = "WRONG PLS BE CARFULLY",
          Text = "By touka",
          Time = 5
        })
      end 
  end 
})


local section15 = AddSection(Main, {"CARDS"})
local CardsTextBox = AddTextBox(Main, { 
  Name = "Card Name", 
  Default = "", 
  TextDisappear = false, 
  PlaceholderText = "PUT NAME", 
  ClearText = true, 
  Callback = function(value) 


      card_name = value 
  end 
}) 


AddButton(Main, { 
  Name = "GET THE CARD", 
  Description = "DONT SPAM!", 
  Callback = function()
      if card_name and card_name ~= "" then
            local args = {
                [1] = "Cards",
                [2] = card_name
            }
            game:GetService("ReplicatedStorage").Packages.Knit.Services.CustomizationService.RE.Customize:FireServer(unpack(args))
        MakeNotifi({
          Title = "SUCCES",
          Text = "By touka",
          Time = 5
        })
      
      else 

        MakeNotifi({
          Title = "WRONG PLS BE CARFULLY",
          Text = "By touka",
          Time = 5
        })
      end 
  end 
})

local section12 = AddSection(Main, {"COSMETICS"})
local CardsTextBox = AddTextBox(Main, { 
  Name = "Cosmetics Name", 
  Default = "", 
  TextDisappear = false, 
  PlaceholderText = "PUT NAME", 
  ClearText = true, 
  Callback = function(value) 


      cos_name = value 
  end 
}) 


AddButton(Main, { 
  Name = "GET THE Coametic", 
  Description = "DONT SPAM!", 
  Callback = function()
      if cos_name and cos_name ~= "" then
            local args = {
                [1] = "Cosmetics",
                [2] = cos_name
            }
            game:GetService("ReplicatedStorage").Packages.Knit.Services.CustomizationService.RE.Customize:FireServer(unpack(args))
        MakeNotifi({
          Title = "SUCCES",
          Text = "By touka",
          Time = 5
        })
      
      else 

        MakeNotifi({
          Title = "WRONG PLS BE CARFULLY",
          Text = "By touka",
          Time = 5
        })
      end 
  end 
})


local section176 = AddSection(Main, {"Goal effects one tap"})
AddButton(Main, { 
    Name = "get Wonderland effect", -- Fixed the button name
    Callback = function()
    local args = {
    [1] = "GoalEffects",
    [2] = "Wonderland"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CustomizationService.RE.Customize:FireServer(unpack(args))
        end          
    })


AddButton(Main, { 
    Name = "get Conquer effect", -- Fixed the button name
    Callback = function()
    local args = {
    [1] = "GoalEffects",
    [2] = "Conquer"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CustomizationService.RE.Customize:FireServer(unpack(args))
        end          
    })


AddButton(Main, { 
    Name = "get Time Stop effect", -- Fixed the button name
    Callback = function()
    local args = {
    [1] = "GoalEffects",
    [2] = "Time Stop"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CustomizationService.RE.Customize:FireServer(unpack(args))       
        end          
    })


AddButton(Main, { 
    Name = "get Presents Effect", -- Fixed the button name
    Callback = function()
    local args = {
    [1] = "GoalEffects",
    [2] = "Presents"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CustomizationService.RE.Customize:FireServer(unpack(args))
        end          
    })
--
local section178 = AddSection(Main, {"Cards One tap"})
AddButton(Main, { 
    Name = "get VIP card", -- Fixed the button name
    Callback = function()
    local args = {
    [1] = "Cards",
    [2] = "VIP"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CustomizationService.RE.Customize:FireServer(unpack(args))
        end          
    })
AddButton(Main, { 
    Name = "get Legend card", -- Fixed the button name
    Callback = function()
    local args = {
    [1] = "Cards",
    [2] = "Legend"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CustomizationService.RE.Customize:FireServer(unpack(args))
        end          
    })


AddButton(Main, { 
    Name = "get Crystal card ( best )", -- Fixed the button name
    Callback = function()
    local args = {
    [1] = "Cards",
    [2] = "Crystal"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CustomizationService.RE.Customize:FireServer(unpack(args))
        end          
    })


AddButton(Main, { 
    Name = "get Admin card", -- Fixed the button name
    Callback = function()
    local args = {
    [1] = "Cards",
    [2] = "YingYang"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CustomizationService.RE.Customize:FireServer(unpack(args))
        end          
    })
local section179 = AddSection(Main, {"Cosmetics One tap"})
AddButton(Main, { 
    Name = "Get admin SHADOW Aura ( the best )", -- Fixed the button name
    Callback = function()
    local args = {
    [1] = "Cosmetics",
    [2] = "SHADOW"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CustomizationService.RE.Customize:FireServer(unpack(args))
        end          
    })

AddButton(Main, { 
    Name = "get Snowman Cape", -- Fixed the button name
    Callback = function()
    local args = {
    [1] = "Cosmetics",
    [2] = "Snowman Cape"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CustomizationService.RE.Customize:FireServer(unpack(args))
        end          
    })

AddButton(Main, { 
    Name = "get Peppermint Cape ( best normal )", -- Fixed the button name
    Callback = function()
    local args = {
    [1] = "Cosmetics",
    [2] = "Peppermint Cape"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CustomizationService.RE.Customize:FireServer(unpack(args))
        end          
    })

AddButton(Main, { 
    Name = "get Christmas Aura", -- Fixed the button name
    Callback = function()
    local args = {
    [1] = "Cosmetics",
    [2] = "Christmas Aura"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CustomizationService.RE.Customize:FireServer(unpack(args))
        end          
    })
local Main = MakeTab({Name = "OTHERS"})

local sectionShoot = AddSection(Main, {"Shoot power"})

local ShotTextBox = AddTextBox(Main, { 
  Name = "Shoot power ( Max: 300 )", 
  Default = "", 
  TextDisappear = false, 
  PlaceholderText = "PUT NUMBER", 
  ClearText = true, 
  Callback = function(value) 


      shoot = value 
  end 
}) 


AddButton(Main, { 
  Name = "GET POWER", 
  Description = "DONT SPAM!", 
  Callback = function() 

      if shoot and shoot ~= "" then 
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StarterGui = game:GetService("StarterGui")

local function fireShootRemote()
    local args = {
        [1] = shoot
    }
    
   
    ReplicatedStorage.Packages.Knit.Services.BallService.RE.Shoot:FireServer(unpack(args))
end

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local mobileGui = playerGui:WaitForChild("Mobile")

local shootButton = mobileGui:WaitForChild("Ball"):WaitForChild("Shoot")

shootButton.MouseButton1Click:Connect(fireShootRemote)
        MakeNotifi({
          Title = "SUCCES",
          Text = "By touka arbix",
          Time = 5
        })
      
      else 

        MakeNotifi({
          Title = "WRONG PLS BE CARFULLY",
          Text = "By touka arbix",
          Time = 5
        })
      end 
  end 
})
local Main = MakeTab({Name = "VISUALS"})

local localPlayer = game:GetService("Players").LocalPlayer

local sectionMoney = AddSection(Main, {"Money"})

local MoneyTextBox = AddTextBox(Main, { 
  Name = "MONEY AMMOUNT", 
  Default = "", 
  TextDisappear = false, 
  PlaceholderText = "PUT NUMBER", 
  ClearText = true, 
  Callback = function(value) 
      money = value 
  end 
})

AddButton(Main, { 
  Name = "GET MONEY", 
  Description = "DONT SPAM!", 
  Callback = function() 
      if money and money ~= "" then 
          if localPlayer:FindFirstChild("ProfileStats") and localPlayer.ProfileStats:FindFirstChild("Money") then
              localPlayer.ProfileStats.Money.Value = money
              MakeNotifi({
                  Title = "SUCCES",
                  Text = "By touka arbix",
                  Time = 5
              })
          else
              MakeNotifi({
                  Title = "WRONG PLS BE CARFULLY",
                  Text = "By touka arbix",
                  Time = 5
              })
          end 
      end 
  end 
})
  
local sectionLevel = AddSection(Main, {"Levels"})

local levelTextBox = AddTextBox(Main, { 
  Name = "Level number", 
  Default = "", 
  TextDisappear = false, 
  PlaceholderText = "PUT NUMBER", 
  ClearText = true, 
  Callback = function(value) 


      lvl = value 
  end 
}) 


AddButton(Main, { 
  Name = "GET LEVEL", 
  Description = "DONT SPAM!", 
  Callback = function() 
      if lvl and lvl ~= "" then 
          if localPlayer:FindFirstChild("ProfileStats") and localPlayer.ProfileStats:FindFirstChild("Level") then
              localPlayer.ProfileStats.Level.Value = lvl
              MakeNotifi({
                  Title = "SUCCES",
                  Text = "By touka arbix",
                  Time = 5
              })
          else
              MakeNotifi({
                  Title = "WRONG PLS BE CARFULLY",
                  Text = "By touka arbix",
                  Time = 5
              })
          end 
      end 
  end 
})

local sectionStyS = AddSection(Main, {"Style Spins"})
    
local StySTextBox = AddTextBox(Main, { 
  Name = "Spins AMMOUNT", 
  Default = "", 
  TextDisappear = false, 
  PlaceholderText = "PUT NUMBER", 
  ClearText = true, 
  Callback = function(value) 


      Sty = value 
  end 
}) 


AddButton(Main, { 
  Name = "GET SPINS", 
  Description = "DONT SPAM!", 
  Callback = function() 
      if Sty and Sty ~= "" then 
          if localPlayer:FindFirstChild("ProfileStats") and localPlayer.ProfileStats:FindFirstChild("Spins") then
              localPlayer.ProfileStats.Spins.Value = Sty
              MakeNotifi({
                  Title = "SUCCES",
                  Text = "By touka arbix",
                  Time = 5
              })
          else
              MakeNotifi({
                  Title = "WRONG PLS BE CARFULLY",
                  Text = "By touka arbix",
                  Time = 5
              })
          end 
      end 
  end 
})

local sectionFLOWS = AddSection(Main, {"FLOWS SPINS"})
    
local FLOWTextBox = AddTextBox(Main, { 
  Name = "Spins Ammount", 
  Default = "", 
  TextDisappear = false, 
  PlaceholderText = "PUT NUMBER", 
  ClearText = true, 
  Callback = function(value) 


      FLS = value 
  end 
}) 


AddButton(Main, { 
  Name = "GET SPINS", 
  Description = "DONT SPAM!", 
  Callback = function() 
      if FLS and FLS ~= "" then 
          if localPlayer:FindFirstChild("ProfileStats") and localPlayer.ProfileStats:FindFirstChild("FlowSpins") then
              localPlayer.ProfileStats.FlowSpins.Value = FLS
              MakeNotifi({
                  Title = "SUCCES",
                  Text = "By touka arbix",
                  Time = 5
              })
          else
              MakeNotifi({
                  Title = "WRONG PLS BE CARFULLY",
                  Text = "By touka arbix",
                  Time = 5
              })
          end 
      end 
  end 
})
