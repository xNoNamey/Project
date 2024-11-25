local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Kirainc Hub",
    SubTitle = "Blox Fruits",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.RightControl
})

-- https://lucide.dev/icons/
local Tabs = {
    Main = Window:AddTab({ Title = "General", Icon = "home" }),
    Auto = Window:AddTab({ Title = "Automatic", Icon = "swords" }),
    Stats = Window:AddTab({ Title = "Stats", Icon = "bar-chart-4" }),
    Settings = Window:AddTab({ Title = "Setting", Icon = "settings" })
}

local Options = Fluent.Options
do

-- [ Quest ] --

if game.PlaceId == 2753915549 then
  OldWorld = true
elseif game.PlaceId == 4442272183 then
  NewWorld = true
elseif game.PlaceId == 7449423635 then
  ThirdWorld = true
end

function CheckQuest() 
  MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
  if OldWorld then
      if MyLevel == 1 or MyLevel <= 9 then
          Mon = "Bandit"
          LevelQuest = 1
          NameQuest = "BanditQuest1"
          NameMon = "Bandit"
          CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
          CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
      elseif MyLevel == 10 or MyLevel <= 14 then
          Mon = "Monkey"
          LevelQuest = 1
          NameQuest = "JungleQuest"
          NameMon = "Monkey"
          CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
          CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
      elseif MyLevel == 15 or MyLevel <= 29 then
          Mon = "Gorilla"
          LevelQuest = 2
          NameQuest = "JungleQuest"
          NameMon = "Gorilla"
          CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
          CFrameMon = CFrame.new(-1230.667724609375, 6.279364109039307, -516.2539672851562)
      elseif MyLevel == 30 or MyLevel <= 39 then
          Mon = "Pirate"
          LevelQuest = 1
          NameQuest = "BuggyQuest1"
          NameMon = "Pirate"
          CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
          CFrameMon = CFrame.new(-1218.242431640625, 4.75205135345459, 3915.81103515625)
      elseif MyLevel == 40 or MyLevel <= 59 then
          Mon = "Brute"
          LevelQuest = 2
          NameQuest = "BuggyQuest1"
          NameMon = "Brute"
          CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
          CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
      elseif MyLevel == 60 or MyLevel <= 74 then
          Mon = "Desert Bandit"
          LevelQuest = 1
          NameQuest = "DesertQuest"
          NameMon = "Desert Bandit"
          CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
          CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
      elseif MyLevel == 75 or MyLevel <= 89 then
          Mon = "Desert Officer"
          LevelQuest = 2
          NameQuest = "DesertQuest"
          NameMon = "Desert Officer"
          CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
          CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
      elseif MyLevel == 90 or MyLevel <= 99 then
          Mon = "Snow Bandit"
          LevelQuest = 1
          NameQuest = "SnowQuest"
          NameMon = "Snow Bandit"
          CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
          CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
      elseif MyLevel == 100 or MyLevel <= 119 then
          Mon = "Snowman"
          LevelQuest = 2
          NameQuest = "SnowQuest"
          NameMon = "Snowman"
          CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
          CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
      elseif MyLevel == 120 or MyLevel <= 149 then
          Mon = "Chief Petty Officer"
          LevelQuest = 1
          NameQuest = "MarineQuest2"
          NameMon = "Chief Petty Officer"
          CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
      elseif MyLevel == 150 or MyLevel <= 174 then
          Mon = "Sky Bandit"
          LevelQuest = 1
          NameQuest = "SkyQuest"
          NameMon = "Sky Bandit"
          CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
          CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
      elseif MyLevel == 175 or MyLevel <= 189 then
          Mon = "Dark Master"
          LevelQuest = 2
          NameQuest = "SkyQuest"
          NameMon = "Dark Master"
          CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
          CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
      elseif MyLevel == 190 or MyLevel <= 209 then
          Mon = "Prisoner"
          LevelQuest = 1
          NameQuest = "PrisonerQuest"
          NameMon = "Prisoner"
          CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
          CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
      elseif MyLevel == 210 or MyLevel <= 249 then
          Mon = "Dangerous Prisoner"
          LevelQuest = 2
          NameQuest = "PrisonerQuest"
          NameMon = "Dangerous Prisoner"
          CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
          CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
      elseif MyLevel == 250 or MyLevel <= 274 then
          Mon = "Toga Warrior"
          LevelQuest = 1
          NameQuest = "ColosseumQuest"
          NameMon = "Toga Warrior"
          CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
          CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
      elseif MyLevel == 275 or MyLevel <= 299 then
          Mon = "Gladiator"
          LevelQuest = 2
          NameQuest = "ColosseumQuest"
          NameMon = "Gladiator"
          CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
          CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
      elseif MyLevel == 300 or MyLevel <= 324 then
          Mon = "Military Soldier"
          LevelQuest = 1
          NameQuest = "MagmaQuest"
          NameMon = "Military Soldier"
          CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
          CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
      elseif MyLevel == 325 or MyLevel <= 374 then
          Mon = "Military Spy"
          LevelQuest = 2
          NameQuest = "MagmaQuest"
          NameMon = "Military Spy"
          CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
          CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
      elseif MyLevel == 375 or MyLevel <= 399 then
          Mon = "Fishman Warrior"
          LevelQuest = 1
          NameQuest = "FishmanQuest"
          NameMon = "Fishman Warrior"
          CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
          CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
          if Auto_Farm_Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
          end
      elseif MyLevel == 400 or MyLevel <= 449 then
          Mon = "Fishman Commando"
          LevelQuest = 2
          NameQuest = "FishmanQuest"
          NameMon = "Fishman Commando"
          CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
          CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
          if Auto_Farm_Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
          end
      elseif MyLevel == 450 or MyLevel <= 474 then
          Mon = "God's Guard"
          LevelQuest = 1
          NameQuest = "SkyExp1Quest"
          NameMon = "God's Guard"
          CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
          CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
          if Auto_Farm_Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
          end
      elseif MyLevel == 475 or MyLevel <= 524 then
          Mon = "Shanda"
          LevelQuest = 2
          NameQuest = "SkyExp1Quest"
          NameMon = "Shanda"
          CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
          CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
          if Auto_Farm_Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
          end
      elseif MyLevel == 525 or MyLevel <= 549 then
          Mon = "Royal Squad"
          LevelQuest = 1
          NameQuest = "SkyExp2Quest"
          NameMon = "Royal Squad"
          CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
      elseif MyLevel == 550 or MyLevel <= 624 then
          Mon = "Royal Soldier"
          LevelQuest = 2
          NameQuest = "SkyExp2Quest"
          NameMon = "Royal Soldier"
          CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
      elseif MyLevel == 625 or MyLevel <= 649 then
          Mon = "Galley Pirate"
          LevelQuest = 1
          NameQuest = "FountainQuest"
          NameMon = "Galley Pirate"
          CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
          CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
      elseif MyLevel >= 650 then
          Mon = "Galley Captain"
          LevelQuest = 2
          NameQuest = "FountainQuest"
          NameMon = "Galley Captain"
          CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
          CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
      end
  elseif NewWorld then
      if MyLevel == 700 or MyLevel <= 724 then
          Mon = "Raider"
          LevelQuest = 1
          NameQuest = "Area1Quest"
          NameMon = "Raider"
          CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
          CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
      elseif MyLevel == 725 or MyLevel <= 774 then
          Mon = "Mercenary"
          LevelQuest = 2
          NameQuest = "Area1Quest"
          NameMon = "Mercenary"
          CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
          CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
      elseif MyLevel == 775 or MyLevel <= 799 then
          Mon = "Swan Pirate"
          LevelQuest = 1
          NameQuest = "Area2Quest"
          NameMon = "Swan Pirate"
          CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
          CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
      elseif MyLevel == 800 or MyLevel <= 874 then
          Mon = "Factory Staff"
          NameQuest = "Area2Quest"
          LevelQuest = 2
          NameMon = "Factory Staff"
          CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
          CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
      elseif MyLevel == 875 or MyLevel <= 899 then
          Mon = "Marine Lieutenant"
          LevelQuest = 1
          NameQuest = "MarineQuest3"
          NameMon = "Marine Lieutenant"
          CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
          CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
      elseif MyLevel == 900 or MyLevel <= 949 then
          Mon = "Marine Captain"
          LevelQuest = 2
          NameQuest = "MarineQuest3"
          NameMon = "Marine Captain"
          CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
          CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
      elseif MyLevel == 950 or MyLevel <= 974 then
          Mon = "Zombie"
          LevelQuest = 1
          NameQuest = "ZombieQuest"
          NameMon = "Zombie"
          CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
          CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
      elseif MyLevel == 975 or MyLevel <= 999 then
          Mon = "Vampire"
          LevelQuest = 2
          NameQuest = "ZombieQuest"
          NameMon = "Vampire"
          CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
          CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
      elseif MyLevel == 1000 or MyLevel <= 1049 then
          Mon = "Snow Trooper"
          LevelQuest = 1
          NameQuest = "SnowMountainQuest"
          NameMon = "Snow Trooper"
          CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
          CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
      elseif MyLevel == 1050 or MyLevel <= 1099 then
          Mon = "Winter Warrior"
          LevelQuest = 2
          NameQuest = "SnowMountainQuest"
          NameMon = "Winter Warrior"
          CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
          CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
      elseif MyLevel == 1100 or MyLevel <= 1124 then
          Mon = "Lab Subordinate"
          LevelQuest = 1
          NameQuest = "IceSideQuest"
          NameMon = "Lab Subordinate"
          CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
          CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
      elseif MyLevel == 1125 or MyLevel <= 1174 then
          Mon = "Horned Warrior"
          LevelQuest = 2
          NameQuest = "IceSideQuest"
          NameMon = "Horned Warrior"
          CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
          CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
      elseif MyLevel == 1175 or MyLevel <= 1199 then
          Mon = "Magma Ninja"
          LevelQuest = 1
          NameQuest = "FireSideQuest"
          NameMon = "Magma Ninja"
          CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
          CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
      elseif MyLevel == 1200 or MyLevel <= 1249 then
          Mon = "Lava Pirate"
          LevelQuest = 2
          NameQuest = "FireSideQuest"
          NameMon = "Lava Pirate"
          CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
          CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
      elseif MyLevel == 1250 or MyLevel <= 1274 then
          Mon = "Ship Deckhand"
          LevelQuest = 1
          NameQuest = "ShipQuest1"
          NameMon = "Ship Deckhand"
          CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
          CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
          if Auto_Farm_Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
          end
      elseif MyLevel == 1275 or MyLevel <= 1299 then
          Mon = "Ship Engineer"
          LevelQuest = 2
          NameQuest = "ShipQuest1"
          NameMon = "Ship Engineer"
          CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
          CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
          if Auto_Farm_Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
          end             
      elseif MyLevel == 1300 or MyLevel <= 1324 then
          Mon = "Ship Steward"
          LevelQuest = 1
          NameQuest = "ShipQuest2"
          NameMon = "Ship Steward"
          CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
          CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
          if Auto_Farm_Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
          end
      elseif MyLevel == 1325 or MyLevel <= 1349 then
          Mon = "Ship Officer"
          LevelQuest = 2
          NameQuest = "ShipQuest2"
          NameMon = "Ship Officer"
          CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
          CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
          if Auto_Farm_Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
          end
      elseif MyLevel == 1350 or MyLevel <= 1374 then
          Mon = "Arctic Warrior"
          LevelQuest = 1
          NameQuest = "FrostQuest"
          NameMon = "Arctic Warrior"
          CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
          CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
          if Auto_Farm_Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
          end
      elseif MyLevel == 1375 or MyLevel <= 1424 then
          Mon = "Snow Lurker"
          LevelQuest = 2
          NameQuest = "FrostQuest"
          NameMon = "Snow Lurker"
          CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
          CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
      elseif MyLevel == 1425 or MyLevel <= 1449 then
          Mon = "Sea Soldier"
          LevelQuest = 1
          NameQuest = "ForgottenQuest"
          NameMon = "Sea Soldier"
          CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
          CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
      elseif MyLevel >= 1450 then
          Mon = "Water Fighter"
          LevelQuest = 2
          NameQuest = "ForgottenQuest"
          NameMon = "Water Fighter"
          CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
          CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
      end
  elseif ThirdWorld then
      if MyLevel == 1500 or MyLevel <= 1524 then
          Mon = "Pirate Millionaire"
          LevelQuest = 1
          NameQuest = "PiratePortQuest"
          NameMon = "Pirate Millionaire"
          CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
          CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
      elseif MyLevel == 1525 or MyLevel <= 1574 then
          Mon = "Pistol Billionaire"
          LevelQuest = 2
          NameQuest = "PiratePortQuest"
          NameMon = "Pistol Billionaire"
          CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
          CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
      elseif MyLevel == 1575 or MyLevel <= 1599 then
          Mon = "Dragon Crew Warrior"
          LevelQuest = 1
          NameQuest = "AmazonQuest"
          NameMon = "Dragon Crew Warrior"
          CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
          CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
      elseif MyLevel == 1600 or MyLevel <= 1624 then 
          Mon = "Dragon Crew Archer"
          NameQuest = "AmazonQuest"
          LevelQuest = 2
          NameMon = "Dragon Crew Archer"
          CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
          CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
      elseif MyLevel == 1625 or MyLevel <= 1649 then
          Mon = "Female Islander"
          NameQuest = "AmazonQuest2"
          LevelQuest = 1
          NameMon = "Female Islander"
          CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
          CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
      elseif MyLevel == 1650 or MyLevel <= 1699 then 
          Mon = "Giant Islander"
          NameQuest = "AmazonQuest2"
          LevelQuest = 2
          NameMon = "Giant Islander"
          CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
          CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
      elseif MyLevel == 1700 or MyLevel <= 1724 then
          Mon = "Marine Commodore"
          LevelQuest = 1
          NameQuest = "MarineTreeIsland"
          NameMon = "Marine Commodore"
          CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
          CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
      elseif MyLevel == 1725 or MyLevel <= 1774 then
          Mon = "Marine Rear Admiral"
          NameMon = "Marine Rear Admiral"
          NameQuest = "MarineTreeIsland"
          LevelQuest = 2
          CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
          CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
      elseif MyLevel == 1775 or MyLevel <= 1799 then
          Mon = "Fishman Raider"
          LevelQuest = 1
          NameQuest = "DeepForestIsland3"
          NameMon = "Fishman Raider"
          CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
          CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
      elseif MyLevel == 1800 or MyLevel <= 1824 then
          Mon = "Fishman Captain"
          LevelQuest = 2
          NameQuest = "DeepForestIsland3"
          NameMon = "Fishman Captain"
          CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
          CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
      elseif MyLevel == 1825 or MyLevel <= 1849 then
          Mon = "Forest Pirate"
          LevelQuest = 1
          NameQuest = "DeepForestIsland"
          NameMon = "Forest Pirate"
          CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
          CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
      elseif MyLevel == 1850 or MyLevel <= 1899 then
          Mon = "Mythological Pirate"
          LevelQuest = 2
          NameQuest = "DeepForestIsland"
          NameMon = "Mythological Pirate"
          CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
          CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
      elseif MyLevel == 1900 or MyLevel <= 1924 then
          Mon = "Jungle Pirate"
          LevelQuest = 1
          NameQuest = "DeepForestIsland2"
          NameMon = "Jungle Pirate"
          CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
          CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
      elseif MyLevel == 1925 or MyLevel <= 1974 then
          Mon = "Musketeer Pirate"
          LevelQuest = 2
          NameQuest = "DeepForestIsland2"
          NameMon = "Musketeer Pirate"
          CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
          CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
      elseif MyLevel == 1975 or MyLevel <= 1999 then
          Mon = "Reborn Skeleton"
          LevelQuest = 1
          NameQuest = "HauntedQuest1"
          NameMon = "Reborn Skeleton"
          CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
          CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
      elseif MyLevel == 2000 or MyLevel <= 2024 then
          Mon = "Living Zombie"
          LevelQuest = 2
          NameQuest = "HauntedQuest1"
          NameMon = "Living Zombie"
          CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
          CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
      elseif MyLevel == 2025 or MyLevel <= 2049 then
          Mon = "Demonic Soul"
          LevelQuest = 1
          NameQuest = "HauntedQuest2"
          NameMon = "Demonic Soul"
          CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
          CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
      elseif MyLevel == 2050 or MyLevel <= 2074 then
          Mon = "Posessed Mummy"
          LevelQuest = 2
          NameQuest = "HauntedQuest2"
          NameMon = "Posessed Mummy"
          CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
      elseif MyLevel == 2075 or MyLevel <= 2099 then
          Mon = "Peanut Scout"
          LevelQuest = 1
          NameQuest = "NutsIslandQuest"
          NameMon = "Peanut Scout"
          CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
      elseif MyLevel == 2100 or MyLevel <= 2124 then
          Mon = "Peanut President"
          LevelQuest = 2
          NameQuest = "NutsIslandQuest"
          NameMon = "Peanut President"
          CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
      elseif MyLevel == 2125 or MyLevel <= 2149 then
          Mon = "Ice Cream Chef"
          LevelQuest = 1
          NameQuest = "IceCreamIslandQuest"
          NameMon = "Ice Cream Chef"
          CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
      elseif MyLevel == 2150 or MyLevel <= 2199 then
          Mon = "Ice Cream Commander"
          LevelQuest = 2
          NameQuest = "IceCreamIslandQuest"
          NameMon = "Ice Cream Commander"
          CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
      elseif MyLevel == 2200 or MyLevel <= 2224 then
          Mon = "Cookie Crafter"
          LevelQuest = 1
          NameQuest = "CakeQuest1"
          NameMon = "Cookie Crafter"
          CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
          CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
      elseif MyLevel == 2225 or MyLevel <= 2249 then
          Mon = "Cake Guard"
          LevelQuest = 2
          NameQuest = "CakeQuest1"
          NameMon = "Cake Guard"
          CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
          CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
      elseif MyLevel == 2250 or MyLevel <= 2274 then
          Mon = "Baking Staff"
          LevelQuest = 1
          NameQuest = "CakeQuest2"
          NameMon = "Baking Staff"
          CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
          CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
      elseif MyLevel == 2275 or MyLevel <= 2299 then
          Mon = "Head Baker"
          LevelQuest = 2
          NameQuest = "CakeQuest2"
          NameMon = "Head Baker"
          CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
          CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
      elseif MyLevel == 2300 or MyLevel <= 2324 then
          Mon = "Cocoa Warrior"
          LevelQuest = 1
          NameQuest = "ChocQuest1"
          NameMon = "Cocoa Warrior"
          CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
          CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
      elseif MyLevel == 2325 or MyLevel <= 2349 then
          Mon = "Chocolate Bar Battler"
          LevelQuest = 2
          NameQuest = "ChocQuest1"
          NameMon = "Chocolate Bar Battler"
          CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
          CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
      elseif MyLevel == 2350 or MyLevel <= 2374 then
          Mon = "Sweet Thief"
          LevelQuest = 1
          NameQuest = "ChocQuest2"
          NameMon = "Sweet Thief"
          CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
          CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
      elseif MyLevel == 2375 or MyLevel <= 2399 then
          Mon = "Candy Rebel"
          LevelQuest = 2
          NameQuest = "ChocQuest2"
          NameMon = "Candy Rebel"
          CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
          CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
      elseif MyLevel == 2400 or MyLevel <= 2424 then
          Mon = "Candy Pirate"
          LevelQuest = 1
          NameQuest = "CandyQuest1"
          NameMon = "Candy Pirate"
          CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
          CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
      elseif MyLevel == 2425 or MyLevel <= 2449 then
          Mon = "Snow Demon"
          LevelQuest = 2
          NameQuest = "CandyQuest1"
          NameMon = "Snow Demon"
          CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
          CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
      elseif MyLevel == 2450 or MyLevel <= 2474 then
          Mon = "Isle Outlaw"
          LevelQuest = 1
          NameQuest = "TikiQuest1"
          NameMon = "Isle Outlaw"
          CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
          CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
      elseif MyLevel == 2475 or MyLevel <= 2499 then
          Mon = "Island Boy"
          LevelQuest = 2
          NameQuest = "TikiQuest1"
          NameMon = "Island Boy"
          CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
          CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
      elseif MyLevel == 2500 or MyLevel <= 2524 then
          Mon = "Sun-kissed Warrior"
          LevelQuest = 1
          NameQuest = "TikiQuest2"
          NameMon = "kissed"
          CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
          CFrameMon = CFrame.new(-16349.8779296875, 92.0808334350586, 1123.4169921875)
      elseif MyLevel >= 2525 then
          Mon = "Isle Champion"
          LevelQuest = 2
          NameQuest = "TikiQuest2"
          NameMon = "Isle Champion"
          CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
          CFrameMon = CFrame.new(-17003, 175, 1050)
      end
  end
end

-- [ toTarget ] --

function ToTarget(p)
	task.spawn(function()
		pcall(function()
			if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 200 then 
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
				if game.Players.LocalPlayer.Character:FindFirstChild("Root") then
					game.Players.LocalPlayer.Character:FindFirstChild("Root"):Destroy();
					wait()
					ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end;
				if game.Players.LocalPlayer.Character:FindFirstChild("Root") then
					game.Players.LocalPlayer.Character:FindFirstChild("Root"):Remove();
				end;
			elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
				local K = Instance.new("Part",game.Players.LocalPlayer.Character)
				K.Size = Vector3.new(1,0.5,1)
				K.Name = "Root"
				K.Anchored = true
				K.Transparency = 1
				K.CanCollide = false
				K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
			end
			local r = game:GetService("Players").LocalPlayer
			local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude
			local z = game:service("TweenService")
			local B = TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
			local S,g = pcall(function()
				local q = z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame = p})
				q:Play()
			end)
			if _G.StopTween == true then
            q:Cancel()
            _G.Clip = false
        end
			if not S then 
				return g
			end
			game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
				pcall(function()
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 50 then 
						task.spawn(function()
							pcall(function()
								if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 200 then 
									game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
								else 
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
								end
							end)
						end)
					elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 25 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 40 then 
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 25 then 
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					end
				end)
			end
		end)
	end)    
end

function InstantTP(P)
    repeat wait()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500
end

task.spawn(function()
	while task.wait() do 
		pcall(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.Root.CFrame;
			if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1 then
				game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
			end
		end)
	end
end)

-- [ InstantAttk Function ] --

InstantAttack = true

spawn(function()
    while wait() do
        pcall(function()
            if InstantAttack then
                repeat wait(Delay)
                    AttackFunction()
                until not InstantAttack
            end
        end)
    end
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if InstantAttack then
             pcall(function()
                game:GetService'VirtualUser':CaptureController()
			    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)
        end
    end)
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if InstantAttack == true then
            game.Players.LocalPlayer.Character.Stun.Value = 0
            game.Players.LocalPlayer.Character.Busy.Value = false        
        end
    end)
end)

task.spawn(function()
	if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
		game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
			pcall(function()
				if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
					game.Players.LocalPlayer.Character.Stun.Value = 0
				end
			end)
		end)
	end
end)

spawn(function()
	while wait() do
		for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
			pcall(function()
				if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
					v:Destroy()
				end
			end)
		end
	end
end)

function Signature()
    local ac = CombatFrameworkR.activeController
    if ac and ac.equipped then
     for Ryuen = 1, 1 do
        local bladehit = getAllBladeHits(100)
        if #bladehit > 0 then
            local AcAttack8 = debug.getupvalue(ac.attack, 5)
            local AcAttack9 = debug.getupvalue(ac.attack, 6)
            local AcAttack7 = debug.getupvalue(ac.attack, 4)
            local AcAttack10 = debug.getupvalue(ac.attack, 7)
            local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
            local NumberAc13 = AcAttack7 * 798405
            (function() 
                NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
                AcAttack8 = math.floor(NumberAc12 / AcAttack9)
                AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
            end)()
            AcAttack10 = AcAttack10 + 1
            debug.setupvalue(ac.attack, 5, AcAttack8)
            debug.setupvalue(ac.attack, 6, AcAttack9)
            debug.setupvalue(ac.attack, 4, AcAttack7)
            debug.setupvalue(ac.attack, 7, AcAttack10)
            for k, v in pairs(ac.animator.anims.basic) do
                v:Play(0.01, 0.01, 0.01)
            end
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 1, "")
            end
        end
    end
    end
    end

local plr = game.Players.LocalPlayer
local CbFw = debug.getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

task.spawn(function()
    local CombatFrameworkOld = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
    local CombatFrameworkR = getupvalues(CombatFrameworkOld)[2]
    local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)

    function maxincrement()
        return #CombatFrameworkR.activeController.anims.basic
    end

    spawn(function()
        local old
        old = hookmetamethod(game, "__namecall",function(self,...)
            local method = getnamecallmethod() local args = {...}
            if method:lower() == "fireserver" then
                if args[1] == "hit" then
                    args[3] = maxincrement()
                    return old(self,unpack(args))
                end 
            end
        return old(self,...)
        end) 
    end)
end)

function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then 
    return 
    end
    while ret.Parent ~= game.Players.LocalPlayer.Character do 
        ret = ret.Parent end
    return ret
end

function AttackNoCD(Num)
    if Num == 1 then
        local AC = CbFw2.activeController
        for i = 1,1 do tick()
            local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                plr.Character,
                {plr.Character.HumanoidRootPart},
                60
            )
            local cac = {}
            local hash = {}
            for k, v in pairs(bladehit) do
                if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                    table.insert(cac, v.Parent.HumanoidRootPart)
                    hash[v.Parent] = true
                end
            end
            bladehit = cac
            if #bladehit > 0 then
                local u8 = debug.getupvalue(AC.attack, 5)
                local u9 = debug.getupvalue(AC.attack, 6)
                local u7 = debug.getupvalue(AC.attack, 4)
                local u10 = debug.getupvalue(AC.attack, 7)
                local u12 = (u8 * 798405 + u7 * 727595) % u9
                local u13 = u7 * 798405
                (function()
                    u12 = (u12 * u9 + u13) % 1099511627776
                    u8 = math.floor(u12 / u9)
                    u7 = u12 - u8 * u9
                end)()
                u10 = u10 + 1
                debug.setupvalue(AC.attack, 5, u8)
                debug.setupvalue(AC.attack, 6, u9)
                debug.setupvalue(AC.attack, 4, u7)
                debug.setupvalue(AC.attack, 7, u10)
                pcall(function()
                    if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                        AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                        game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "")
                    end
                end)
            end
        end
    elseif Num == 0 then
        local AC = CbFw2.activeController
        for i = 1,1 do tick()
            local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                plr.Character,
                {plr.Character.HumanoidRootPart},
                60
            )
            local cac = {}
            local hash = {}
            for k, v in pairs(bladehit) do
                if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                    table.insert(cac, v.Parent.HumanoidRootPart)
                    hash[v.Parent] = true
                end
            end
            bladehit = cac
            if #bladehit > 0 then
                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                end
                pcall(function()
                    if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                        for i,CombatFrameworkR in pairs(CbFw) do
                            pcall(function()
                                if i == 2 then
                                    local AC = CbFw2.activeController
                                    local CSR = require(game.ReplicatedStorage.Util.CameraShaker)
                                    CSR:Stop()
                                    CombatFrameworkR.activeController.attacking = false
                                    CombatFrameworkR.activeController.blocking = false
                                    CombatFrameworkR.activeController.focusStart = 1655503339.0980349
                                    CombatFrameworkR.activeController.increment = 4
                                    CombatFrameworkR.activeController.hitboxMagnitude = 55
                                    CombatFrameworkR.activeController.timeToNextBlock = tick()
                                    CombatFrameworkR.activeController.timeToNextAttack = tick()
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):ClickButton1(Vector2.new(1300,760), game:GetService("Workspace").Camera.CFrame)
                                    AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                                end
                            end)
                        end
                    end
                end)
            end
        end
    end
end

local STOP = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)

if not shared.orl then
    shared.orl = STOPRL.wrapAttackAnimationAsync
end

if not shared.cpc then
    shared.cpc = STOP.play 
end

spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
            local Hits = STOPRL.getBladeHits(b,c,d)
            if Hits then
                STOP.play = function() end
                a:Play(0.01,0.01,0.01)
                func(Hits)
                STOP.play = shared.cpc
                wait(a.length * 0.5)
                a:Stop()
            end
        end
    end)
end)

if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
	game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
	game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

function Click()
	game:GetService('VirtualUser'):CaptureController()
	game:GetService('VirtualUser'):Button1Down(Vector2.new(851, 158))
end

local Module =  require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
local CombatFramework = debug.getupvalues(Module)[2]
local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)

spawn(function()
	while true do
		if InstantAttack then
			pcall(function()
				CameraShakerR:Stop()
				CombatFramework.activeController.attacking = false
				CombatFramework.activeController.timeToNextAttack = 0
				CombatFramework.activeController.increment = 3
				CombatFramework.activeController.hitboxMagnitude = 100
				CombatFramework.activeController.blocking = false
				CombatFramework.activeController.timeToNextBlock = 0
				CombatFramework.activeController.focusStart = 0
				CombatFramework.activeController.humanoid.AutoRotate = true
			end)
		end
		task.wait()
	end
end)

function GetBladeHit()
    local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local p13 = CmrFwLib.activeController
    local weapon = p13.blades[1]
    if not weapon then 
        return weapon
    end
    while weapon.Parent ~= game.Players.LocalPlayer.Character do
        weapon = weapon.Parent 
    end
    return weapon
end
function AttackHit()
    local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local plr = game.Players.LocalPlayer
    for i = 1, 1 do
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,{plr.Character.HumanoidRootPart},60)
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            pcall(function()
                CmrFwLib.activeController.timeToNextAttack = 1
                CmrFwLib.activeController.attacking = false
                CmrFwLib.activeController.blocking = false
                CmrFwLib.activeController.timeToNextBlock = 0
                CmrFwLib.activeController.increment = 3
                CmrFwLib.activeController.hitboxMagnitude = 100
                CmrFwLib.activeController.focusStart = 0
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetBladeHit()))
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
            end)
        end
    end
end

spawn(function()
    while wait(.1) do
        if InstantAttack then
            pcall(function()
                repeat task.wait(Delay)
                    AttackHit()
                until not InstantAttack
            end)
        end
    end
end)

function ActiveHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
    end
end

function EquipWeapon(ToolSe)
    if not game.Players.LocalPlayer.Character:FindFirstChild(ToolSe) then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

task.spawn(function()
	while wait() do
		pcall(function()
			if Weapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							Weapon = v.Name
						end
					end
				end
			elseif Weapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							Weapon = v.Name
						end
					end
				end
			elseif Weapon == "Fruits" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							Weapon = v.Name
						end
					end
				end
			end
		end)
	end
end)

spawn(function()
    pcall(function()
        while wait() do
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then 
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)

function EquipTool(ToolSe)
    if not _G.NotAutoEquip then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

-- [ Isnetwork Owner ] --

_G.StartMagnet = true
getgenv().Magnitude = 350

spawn(function()
	while task.wait() do
		pcall(function()
            CheckQuest()
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.StartMagnet then
					if StartMagnet and v.Name == MonFarm or v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= getgenv().Magnitude then
						if v.Name == "Factory Staff" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 250 then
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								v.HumanoidRootPart.CFrame = PosMon
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
							end
						elseif v.Name == MonFarm or v.Name == Mon then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= getgenv().Magnitude then
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                v.HumanoidRootPart.CFrame = PosMon
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end
				end
			end
		end)
	end
end)

function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= getgenv().Magnitude then 
			return true
		end
		return false
	end
end

-- [ Optimize Function ] --

spawn(function()
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
        pcall(function()
            if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
                v:Destroy()
            end
        end)
    end
end)

-- [ AFK Checking Function ] --

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- [ Get Count Function ] --

function CheckItem(ah)
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v.Name == ah then
            return v
        end
    end
end

function GetMaterial(matname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Material" then
				if v.Name == matname then
					return v.Count
				end
			end
		end
	end
	return 0
end

-- [ Get Weapon ] --

function GetWeaponInventory(Weaponname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Sword" then
				if v.Name == Weaponname then
					return true
				end
			end
		end
	end
	return false
end

function EquipWeaponSword()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end

-- [ Automatic Farm Tabs ] --

local MainTab = Tabs.Main:AddSection("[⚔️] Main")

local Auto_Farm_Level = Tabs.Main:AddToggle("Auto_Farm_Level", {Title = "Auto Farm Level", Default = false })

Auto_Farm_Level:OnChanged(function(value)
    Auto_Farm_Level = value
end)

spawn(function()
    while wait() do
        if Auto_Farm_Level then
            pcall(function()
                CheckQuest()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    if InstantTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
					    InstantTP(CFrameQuest)
					elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
					    ToTarget(CFrameQuest)
					end
				else
					ToTarget(CFrameQuest)
				end
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            ActiveHaki()                                            
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            StartMagnet = true
                                            ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                        until not Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMagnet = false
                                    end
                                end
                            end
                        end
                    else
                        ToTarget(CFrameMon)
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                            ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end
            end)
        end
    end
end)

local Auto_Farm_Nearest = Tabs.Main:AddToggle("Auto_Farm_Nearest", {Title = "Auto Farm Nearest", Default = false })

Auto_Farm_Nearest:OnChanged(function(value)
    Auto_Farm_Nearest = value
end)

spawn(function()
    while wait(.1) do
        if Auto_Farm_Nearest then
            pcall(function()
                for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        if v.Name then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
                                repeat wait()
                                    StartMagnet = true
                                    EquipWeapon(Weapon)
                                    ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                until not Auto_Farm_Nearest or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                                StartMagnet = false
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local Mastery = Tabs.Main:AddSection("[🥋] Mastery")

local Auto_Farm_Fruit = Tabs.Main:AddToggle("Auto_Farm_Fruit", {Title = "Auto Farm Fruit", Default = false })

Auto_Farm_Fruit:OnChanged(function(value)
    Auto_Farm_Fruit  = value
end)

local Auto_Farm_Gun = Tabs.Main:AddToggle("Auto_Farm_Gun", {Title = "Auto Farm Gun", Default = false })

Auto_Farm_Gun:OnChanged(function(value)
    Auto_Farm_Gun  = value
end)

local Auto_Farm_Melee = Tabs.Main:AddToggle("Auto_Farm_Melee", {Title = "Auto Farm Melee", Default = false })

Auto_Farm_Melee:OnChanged(function(value)
    Auto_Farm_Melee  = value
end)

local Travelling = Tabs.Main:AddSection("[✈️] Travelling")

local Auto_Second_Sea = Tabs.Main:AddToggle("Auto_Second_Sea", {Title = "Auto Second Sea", Default = false })

Auto_Second_Sea:OnChanged(function(value)
    Auto_Second_Sea  = value
end)

spawn(function()
    while wait() do
        if Auto_Second_Sea then
            Auto_Farm_Level = false
            pcall(function()
                if game.Players.LocalPlayer.Data.Level.Value >= 700 and OldWorld then
                    if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                        repeat wait() ToTarget(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)) until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Auto_Second_Sea
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                        EquipWeapon("Key")
                        local Key_Dressrosa = CFrame.new(1347.7124, 37.3751602, -1325.6488)
                        repeat wait() ToTarget(Key_Dressrosa) until (Key_Dressrosa.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Auto_Second_Sea
                        wait(3)
                    elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        ActiveHaki()
                                        EquipWeapon(Weapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        v.HumanoidRootPart.Transparency = 1
                                        ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                                    until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Second_Sea
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                end
                            end
                        else
                            ToTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    end
                end
            end)
        end
    end
end)

local Auto_Third_Sea = Tabs.Main:AddToggle("Auto_Third_Sea", {Title = "Auto Third Sea", Default = false })

Auto_Third_Sea:OnChanged(function(value)
    Auto_Third_Sea  = value
end)

spawn(function()
    while wait() do
        if Auto_Third_Sea then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and NewWorld then
                    Auto_Farm_Level = false
                    if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then
                        ToTarget(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                        if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                        end
                        wait(1.8)
                        if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "rip_indra" then
                                    if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and Auto_Third_Sea then
                                        OldCFrameThird = v.HumanoidRootPart.CFrame
                                        repeat task.wait()
                                            ActiveHaki()
                                            EquipWeapon(Weapon)
                                            ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                                            v.HumanoidRootPart.CFrame = OldCFrameThird
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until Auto_Third_Sea == false or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            end
                        elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            ToTarget(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                        end
                    end
                end
            end)
        end
    end
end)

local Boss = Tabs.Main:AddSection("[🏰] Bosses")

if OldWorld then
    tableBoss = {"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
elseif NewWorld then
    tableBoss = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
elseif ThirdWorld then
    tableBoss = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
end

local Select_Boss = Tabs.Main:AddDropdown("Select_Boss", {
    Title = "Select Boss",
    Description = "",
    Values = tableBoss,
    Multi = false,
    Default = 1,
})

Select_Boss:OnChanged(function(Value)
    Select_Boss = Value
end)

local Auto_Farm_Boss = Tabs.Main:AddToggle("Auto_Farm_Boss", {Title = "Auto Farm Boss", Default = false })

Auto_Farm_Boss:OnChanged(function(value)
    Auto_Farm_Boss  = value
end)

spawn(function()
    while wait() do
        if Auto_Farm_Boss then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(Select_Boss) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == Select_Boss then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                    ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not Auto_Farm_Boss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild() then
                        ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Select_Boss).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                    end
                end
            end)
        end
    end
end)

local Settings = Tabs.Main:AddSection("[⚙️] Setting")

local WeaponType = Tabs.Main:AddDropdown("WeaponType", {
    Title = "Select Weapon Type",
    Values = {"Melee","Sword","Fruits"},
    Multi = false,
    Default = 1,
})

WeaponType:OnChanged(function(Value)
    Weapon = Value
end)

local AttackType = Tabs.Main:AddDropdown("AttackType", {
    Title = "Select Attack Type",
    Values = {"Normal Fast Attack","Fast Attack","Super Fast Attack"},
    Multi = false,
    Default = 1,
})

AttackType:OnChanged(function(Value)
    Delay = Value
	if Delay == "Normal Fast Attack" then
		Delay = 0.5
	elseif Delay == "Fast Attack" then
		Delay = 0.3
	elseif Delay == "Super Fast Attack" then
		Delay = 0.1
	end
end)

local InstantTP = Tabs.Main:AddToggle("InstantTP", {Title = "Instant Teleport", Default = true })

InstantTP:OnChanged(function(value)
    InstantTP = value
end)

end

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("Kirainc Hub")
SaveManager:SetFolder("KiraincHub/Blox-Fruits")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)

Fluent:Notify({
    Title = "Kirainc Hub",
    Content = "Loading Successfully",
    Duration = 8
})

SaveManager:LoadAutoloadConfig()