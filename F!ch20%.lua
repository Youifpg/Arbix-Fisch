--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 



local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==81) then local v89=0;while true do if (v89==0) then v19=v0(v3(v30,1,1));return "";end end else local v90=0;local v91;while true do if (v90==0) then v91=v2(v0(v30,16));if v19 then local v126=0;local v127;while true do if (v126==1) then return v127;end if (v126==0) then v127=v5(v91,v19);v19=nil;v126=1;end end else return v91;end break;end end end end);local function v20(v31,v32,v33) if v33 then local v92=0 -0 ;local v93;while true do if (v92==(0 -0)) then v93=(v31/((879 -(282 + 595))^(v32-(1 -0))))%((4 -2)^(((v33-((2257 -(1523 + 114)) -(555 + 64))) -(v32-(1 + 0))) + (932 -(857 + 74)))) ;return v93-(v93%1) ;end end else local v94=(570 -(367 + 201))^(v32-(928 -(214 + 713))) ;return (((v31%(v94 + v94))>=v94) and (1 + 0)) or (0 + 0) ;end end local function v21() local v34=0;local v35;while true do if (v34==(0 -0)) then v35=v1(v16,v18,v18);v18=v18 + (1066 -(68 + (1114 -(32 + 85)))) ;v34=1271 -(226 + 1044) ;end if (v34==(4 -3)) then return v35;end end end local function v22() local v36=0 + 0 ;local v37;local v38;while true do if (v36==0) then v37,v38=v1(v16,v18,v18 + 2 );v18=v18 + (1 -0) + 1 ;v36=958 -(892 + 65) ;end if (v36==(2 -1)) then return (v38 * (472 -216)) + v37 ;end end end local function v23() local v39=0;local v40;local v41;local v42;local v43;while true do if (((0 -0) -0)==v39) then v40,v41,v42,v43=v1(v16,v18,v18 + (955 -(802 + 150)) );v18=v18 + (10 -6) ;v39=351 -(87 + 263) ;end if (v39==(181 -(67 + 113))) then return (v43 * (12302277 + 4474939)) + (v42 * (160901 -(55555 + 39810))) + (v41 * (189 + 67)) + v40 ;end end end local function v24() local v44=(0 + 0) -0 ;local v45;local v46;local v47;local v48;local v49;local v50;while true do if (v44==(1190 -(]]
--]]
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Youifpg/U-ARE-MY-SUNSHINE/refs/heads/main/Gui.txt")))()

MakeWindow({
  Hub = {
    Title = "ARBIX HUB | FISCH",
    Animation = "by : TOUKA"
  },
  Key = {
    KeySystem = true,
    Title = "ARBIX | KEY",
    Description = "key is : TOUKA x UGPHONE",
    KeyLink = "https://pastebin.com/raw/42434df8",
    Keys = {"TOUKA x UGPHONE"},
    Notifi = {
      Notifications = true,
      CorrectKey = "Running the Script...",
      Incorrectkey = "The key is incorrect",
      CopyKeyLink = "Copied to Clipboard"
    }
  }
})


MinimizeButton({
  Image = "rbxassetid://126511980185658",
  Size = {40, 40},
  Color = Color3.fromRGB(10, 10, 10),
  Corner = true,
  Stroke = true,
  StrokeColor = Color3.fromRGB(255, 0, 0)
})

MakeNotifi({
  Title = "ARBIX HUB",
  Text = "JOIN OUR DISCORD",
  Time = 5
})

local Main = MakeTab({Name = "INFO"})

local Image = AddImageLabel(Main, {
  Name = "",
  Image = "rbxassetid://126511980185658"
})

local textlabe1 = AddTextLabel(Main, "This is TOUKA x UGPHONE script if you want inf money farm for 24/7 offline go discord")
local textlabe2 = AddTextLabel(Main, "discord : https://discord.gg/VRHYbyj8Dy")

local Main = MakeTab({Name = "SERVERS"})

local section = AddSection(Main, {"press button to find old server"})

AddButton(Main, {
  Name = "Hop old servers",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Spectrum-Trash/Addons/refs/heads/main/FindServer.lua"))()
  end
})
local Main = MakeTab({Name = "MONEY"})

local section = AddSection(Main, {"DUPE"})

AddButton(Main, {
  Name = "GET MONEY (PRESS 3 TIMES)",
  Callback = function()
  local replicated_storage = game:GetService("ReplicatedStorage");

game:GetService("RunService").RenderStepped:Connect(function()
    replicated_storage.packages.Net["RE/DailyReward/Claim"]:FireServer();
end)
  end
})
