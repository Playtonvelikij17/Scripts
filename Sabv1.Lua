local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local TableBrainrots = {
	"Los Candies",
	"Los Jolly Combinasionas",
	"",
	"Naughty Naughty",
	"Bunnyman",
	"Triplito Tralaleritos",
	"Los 25",
	"Noo my Present",
	"Santa Hotspot",
	"Chimnino",
	"Ho Ho Ho Sahur",
	"Please my Present",
	"Los Cucarachas",
	"Giftini Spyderini",
	"Cuadramat and Pakrahmatmamat",
	"Santteo",
	"Reindeer Tralala",
	"La Vacca Prese Presente",
	"Secret Lucky Block",
	"W or L",
	"Tung Tung Tung Sahur",
	"Guerriro Digitale",
	"1x1x1x1",
	"67",
	"Matteo",
	"Agarrini La Palini",
	"Aquatic Index",
	"Bicicleteira Family",
	"Bisonte Giuppitere",
	"Blackhole Goat",
	"Boatito Auratito",
	"Burguro and Fryuro",
	"Burrito Bandito",
	"Capitano Moby",
	"Celularcini Viciosini",
	"Chachechi",
	"Chicleteira Bicicleteira",
	"Chicleteirina Bicicleteirina",
	"Chillin Chili",
	"Chimpanzini Spiderini",
	"Chipso and Queso",
	"Combinasions",
	"Cooki and Milki",
	"Dragon Cannelloni",
	"Dul Dul Dul",
	"Esok Sekolah",
	"Eviledon",
	"Extinct Matteo",
	"Extinct Tralalero",
	"Fragola La La La",
	"Fragrama and Chocrama",
	"Frankentteo",
	"Garama and Madundung",
	"Graipuss Medussi",
	"Guest 666",
	"Headless Horseman",
	"Horegini Boom",
	"Jackorilla",
	"Job Job Job Sahur",
	"Karker Sahur",
	"Karkerkar Kurkur",
	"Karkerkur Family",
	"Ketchuru and Musturu",
	"Ketupat Kepat",
	"La Casa Boo",
	"La Cucaracha",
	"La Extinct Grande",
	"La Grande Combinasion",
	"La Karkerkar Combinasion",
	"La Sahur Combinasion",
	"La Secret Combinasion",
	"La Spooky Grande",
	"La Supreme Combinasion",
	"La Taco Combinasion",
	"La Vacca Jacko Linterino",
	"La Vacca Saturno Saturnita",
	"Las Sis",
	"Las Tralaleritas",
	"Las Vaquitas Saturnitas",
	"Los 67",
	"Los Bros",
	"Los Chicleteiras",
	"Los Combinasionas",
	"Los Hotspotsitos",
	"Los Jobcitos",
	"Los Karkeritos",
	"Los Matteos",
	"Los Mobilis",
	"Los Nooo My Hotspotsitos",
	"Los Primos",
	"Los Spaghettis",
	"Los Spooky Combinasionas",
	"Los Spyderinis",
	"Los Tacoritas",
	"Los Tortus",
	"Los Tralaleritos",
	"Mariachi Corazoni",
	"Mieteteira Bicicleteira",
	"Money Money Puggy",
	"Noo my Candy",
	"Noo my examine",
	"Nooo My Hotspot",
	"Nuclearo Dinossauro",
	"Perrito Burrito",
	"Pirulitoita Bicicleteira",
	"Pot Hotspot",
	"Pot Pumpkin",
	"Pumpkini Spyderini",
	"Quesadilla Crocodila",
	"Quesadillo Vampiro",
	"Rang Ring Bus",
	"Sammyni Spyderini",
	"Spaghetti Tualetti",
	"Spooky and Pumpky",
	"Spooky Juggle",
	"Tacorita Bicicleta",
	"Tamaluk un Meass",
	"Tang Tang Keletang",
	"Tictac Sahur",
	"To to to Sahur",
	"Torrtuginni Dragonfrutini",
	"Tralaledon",
	"Trenostruzzo Turbo 4000",
	"Trickolino",
	"Vulturino Skeletono",
	"Yess my examine",
	"Zombie Tralala"
}

task.wait(1)

LocalPlayer:SetAttribute("MegaStun", false)

local function Notifications()
	StarterGui:SetCore("SendNotification", {Title = "???"
		, Text = "Press to Z for toggle Massles!", Duration = 3.5})
	task.delay(0.5, function()
		StarterGui:SetCore("SendNotification", {Title = "???"
			, Text = "Press to F for use  auto Quantum Cloner!", Duration = 3.5})
		task.delay(0.5, function()
			StarterGui:SetCore("SendNotification", {Title = "???"
				, Text = "Press to C for activate MegaStun!", Duration = 3.5})
			task.delay(0.5, function()
				StarterGui:SetCore("SendNotification", {Title = "???"
					, Text = "Press to V for toggle Esps!", Duration = 3.5})
				task.delay(0.5, function()
					StarterGui:SetCore("SendNotification", {Title = "???"
						, Text = "Press to N for toggle Anti Knockback!", Duration = 3.5})
					task.delay(0.5, function()
						StarterGui:SetCore("SendNotification", {Title = "???"
							, Text = "Press to X for toggle Jump Boost!", Duration = 3.5})
					end)
				end)
			end)
		end)
	end)
end

if UserInputService.KeyboardEnabled then
	Notifications()
end

local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Hrp:BasePart = nil
local Humanoid:Humanoid = Character:WaitForChild("Humanoid")

local Is_Massles = true

local IsJumpBoost = false
local IsSpeedBoost = false

local IsEspPlayers = false
local IsShow_Brainrots = false
local IsShow_TimeBase = false

local IsAntiKnockBack_Player = false

local Is_Dragged_Gui = false

local PlayerDevice = "PC"

local Default_JumpPower = Humanoid.JumpPower

local Activated_JumpPower = 80
local Activated_WalkSpeed = 30

--local CheatGui = game.StarterGui:WaitForChild("NewGuiStealABrainrotGui")
local CheatGui = game:GetObjects("rbxassetid://97629701367484")[1]
CheatGui.Parent = LocalPlayer.PlayerGui

local MainFrame = CheatGui:WaitForChild("Main")
local MainScrolls = MainFrame:WaitForChild("MainScrolls")
local MainDrag = MainFrame:WaitForChild("MainDrag")

local ButtonStealer = MainFrame:WaitForChild("ButtonStealer")
local ButtonMisc = MainFrame:WaitForChild("ButtonMisc")

local ButtonCloseFrame = MainDrag:WaitForChild("ImageButton")

local ButtonJumpBoost = MainScrolls:WaitForChild("ScrollStealer"):WaitForChild("ButtonJumpBoost")
local ButtonSpeedBoost = MainScrolls:WaitForChild("ScrollStealer"):WaitForChild("ButtonSpeedBoost")
local ButtonMassles = MainScrolls:WaitForChild("ScrollMisc"):WaitForChild("ButtonMassles")
local ButtonAntiknockback = MainScrolls:WaitForChild("ScrollMisc"):WaitForChild("ButtonAntiKnockback")
local ButtonUseMegaStun = MainScrolls:WaitForChild("ScrollStealer"):WaitForChild("ButtonUseMegaStun")
local ButtonEsps = MainScrolls:WaitForChild("ScrollMisc"):WaitForChild("ButtonEsps")
local ButtonUseQuantumCloner = MainScrolls:WaitForChild("ScrollStealer"):WaitForChild("ButtonUseQuantumCloner")

ButtonCloseFrame.Image = "http://www.roblox.com/asset/?id=11622919444"

if UserInputService.KeyboardEnabled then
	PlayerDevice = "PC"
	MainFrame.Visible = false
else
	PlayerDevice = "Mobile"
	MainFrame.Visible = true
end

local function RenameTextButton(Button, Text)
	Button.Text = tostring(Text)
end

local function UseMegaStun()
	if not LocalPlayer:GetAttribute("MegaStun") then
		LocalPlayer:SetAttribute("MegaStun", true)

		if PlayerDevice == "PC" then
			StarterGui:SetCore("SendNotification", {Title = "???", Text = "!", Duration = 1})
		end

		local Find_Megaphone = LocalPlayer.Backpack:FindFirstChild("Megaphone") or LocalPlayer.Character:FindFirstChild("Megaphone")
		local Find_BeeHive = LocalPlayer.Backpack:FindFirstChild("BeeHive") or LocalPlayer.Character:FindFirstChild("BeeHive")
		local Find_SubspaceMine = LocalPlayer.Backpack:FindFirstChild("Subspace Mine") or LocalPlayer.Character:FindFirstChild("Subspace Mine")
		local Find_BeeLauncher = LocalPlayer.Backpack:FindFirstChild("Bee Launcher") or LocalPlayer.Character:FindFirstChild("Bee Launcher")
		local Find_MedusasHead = LocalPlayer.Backpack:FindFirstChild("Medusa's Head") or LocalPlayer.Character:FindFirstChild("Medusa's Head")
		local Find_BoogieBomb = LocalPlayer.Backpack:FindFirstChild("Boogie Bomb") or LocalPlayer.Character:FindFirstChild("Boogie Bomb")

		Humanoid:UnequipTools()

		if Find_Megaphone then
			Humanoid:EquipTool(Find_Megaphone)
			Find_Megaphone:Activate()
		end

		task.delay(0.3, function()
			Humanoid:UnequipTools()

			if Find_BeeHive then
				Humanoid:EquipTool(Find_BeeHive)
				Find_BeeHive:Activate()
			end

			task.delay(0.3, function()
				Humanoid:UnequipTools()

				if Find_SubspaceMine then
					Humanoid:EquipTool(Find_SubspaceMine)
					Find_SubspaceMine:Activate()
				end

				task.delay(0.3, function()
					Humanoid:UnequipTools()

					if Find_BeeLauncher then
						Humanoid:EquipTool(Find_BeeLauncher)
						Find_BeeLauncher:Activate()
						task.delay(0.1, function()
							pcall(function()
								mouse1click()
							end)
						end)
					end

					task.delay(0.3, function()
						Humanoid:UnequipTools()

						if Find_BoogieBomb then
							Humanoid:EquipTool(Find_BoogieBomb)
							Find_BoogieBomb:Activate()
						end

						task.delay(0.3, function()
							Humanoid:UnequipTools()

							if Find_MedusasHead then
								Humanoid:EquipTool(Find_MedusasHead)
								Find_MedusasHead:Activate()
							end

							task.delay(0.3, function()
								Humanoid:UnequipTools()
							end)
						end)
					end)
				end)
			end)
		end)

		task.delay(3, function()
			LocalPlayer:SetAttribute("MegaStun", false)
		end)
	end
end

local function UseQuantumCloner()
	local Find_QuantumCloner = LocalPlayer.Backpack:FindFirstChild("Quantum Cloner") or LocalPlayer.Character:FindFirstChild("Quantum Cloner")


	if Find_QuantumCloner then
		local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
		local Humanoid:Humanoid = Character:WaitForChild("Humanoid")

		Humanoid:UnequipTools()
		Humanoid:EquipTool(Find_QuantumCloner)

		local ToolsFrames = LocalPlayer.PlayerGui:WaitForChild("ToolsFrames")
		local QuantumCloner = ToolsFrames:WaitForChild("QuantumCloner")

		Find_QuantumCloner:Activate()

		task.delay(0.01, function()
			local Packages = game:GetService("ReplicatedStorage"):WaitForChild("Packages")
			local Net = Packages:WaitForChild("Net")

			local Find_QuantumClonerEvent:RemoteEvent = Net:FindFirstChild("RE/QuantumCloner/OnTeleport")

			if Find_QuantumClonerEvent then
				Find_QuantumClonerEvent:FireServer()
			end
		end)
	end	

	if PlayerDevice == "PC" then
		StarterGui:SetCore("SendNotification", {Title = "???", Text = "Quantum Cloner Used!", Duration = 1})
	end
end

ButtonJumpBoost.MouseButton1Click:Connect(function()
	IsJumpBoost = not IsJumpBoost
	if IsJumpBoost then
		IsSpeedBoost = false
		RenameTextButton(ButtonSpeedBoost, "Speed Boost: OFF")
		ButtonJumpBoost.Text = "Jump Boost: ON"
	else
		ButtonJumpBoost.Text = "Jump Boost: OFF"
	end
end)

ButtonSpeedBoost.MouseButton1Click:Connect(function()
	IsSpeedBoost = not IsSpeedBoost

	if IsSpeedBoost then
		ButtonSpeedBoost.Text = "Speed Boost: ON"
		Is_Massles = true
		RenameTextButton(ButtonMassles, "    Massles: ON    ")

		IsJumpBoost = false
		RenameTextButton(ButtonJumpBoost, "Jump Boost: OFF")
	else
		ButtonSpeedBoost.Text = "Speed Boost: OFF"
	end
end)

ButtonEsps.MouseButton1Click:Connect(function()
	IsEspPlayers = not IsEspPlayers
	IsShow_Brainrots = not IsShow_Brainrots
	IsShow_TimeBase = not IsShow_TimeBase

	if IsEspPlayers then
		ButtonEsps.Text = "        Esps: ON        "
	else
		ButtonEsps.Text = "        Esps: OFF        "
	end
end)

ButtonUseQuantumCloner.MouseButton1Click:Connect(function()
	UseQuantumCloner()	
end)

ButtonAntiknockback.MouseButton1Click:Connect(function()
	IsAntiKnockBack_Player = not IsAntiKnockBack_Player
	if IsAntiKnockBack_Player then
		ButtonAntiknockback.Text = "Anti Knockback: ON"
	else
		ButtonAntiknockback.Text = "Anti Knockback: OFF"
	end
end)

ButtonMassles.MouseButton1Click:Connect(function()
	Is_Massles = not Is_Massles
	if Is_Massles then
		ButtonMassles.Text = "    Massles: ON    "
	else
		ButtonMassles.Text = "    Massles: OFF    "
	end
end)

ButtonUseMegaStun.MouseButton1Click:Connect(function()
	UseMegaStun()
end)

MainDrag:WaitForChild("HitBoxTouch").InputBegan:Connect(function(Input:InputObject)
	if UserInputService.KeyboardEnabled then
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			Is_Dragged_Gui = true
		end
	else
		if Input.UserInputType == Enum.UserInputType.Touch then
			Is_Dragged_Gui = true
		end
	end
end)

ButtonCloseFrame.MouseButton1Click:Connect(function()
	if MainFrame.BackgroundTransparency == 0 then
		MainFrame.BackgroundTransparency = 1
		MainScrolls.Visible = false

		ButtonStealer.Visible = false
		ButtonMisc.Visible = false

		ButtonCloseFrame.Image = "http://www.roblox.com/asset/?id=12072054746"
	else
		MainFrame.BackgroundTransparency = 0
		MainScrolls.Visible = true

		ButtonStealer.Visible = true
		ButtonMisc.Visible = true

		ButtonCloseFrame.Image = "http://www.roblox.com/asset/?id=11622919444"
	end
end)

ButtonStealer.MouseButton1Click:Connect(function()
	ButtonStealer.BackgroundColor3 = Color3.fromRGB(0, 64, 104)
	ButtonMisc.BackgroundColor3 = Color3.fromRGB(0, 49, 81)

	MainScrolls:WaitForChild("ScrollStealer").Visible = true
	MainScrolls:WaitForChild("ScrollMisc").Visible = false
end)

ButtonMisc.MouseButton1Click:Connect(function()
	ButtonStealer.BackgroundColor3 = Color3.fromRGB(0, 49, 81)
	ButtonMisc.BackgroundColor3 = Color3.fromRGB(0, 64, 104)

	MainScrolls:WaitForChild("ScrollStealer").Visible = false	
	MainScrolls:WaitForChild("ScrollMisc").Visible = true
end)

UserInputService.InputEnded:Connect(function(Input:InputObject, Processed)
	if UserInputService.KeyboardEnabled then
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			if Is_Dragged_Gui then
				Is_Dragged_Gui = false
			end
		end
	else
		if Input.UserInputType == Enum.UserInputType.Touch then
			if Is_Dragged_Gui then
				Is_Dragged_Gui = false
			end
		end
	end
end)

UserInputService.InputBegan:Connect(function(Input, IsTyping)
	if IsTyping then return end

	if Input.KeyCode == Enum.KeyCode.V then
		IsEspPlayers = not IsEspPlayers
		IsShow_Brainrots = not IsShow_Brainrots
		IsShow_TimeBase = not IsShow_TimeBase

		if IsEspPlayers then
			RenameTextButton(ButtonEsps, "        Esps: ON        ")
		else
			RenameTextButton(ButtonEsps, "        Esps: OFF        ")
		end

		if PlayerDevice == "PC" then
			if IsEspPlayers and IsShow_Brainrots and IsShow_TimeBase then
				StarterGui:SetCore("SendNotification", {Title = "???", Text = "Esps Turn ON!", Duration = 1})
			else 
				StarterGui:SetCore("SendNotification", {Title = "???", Text = "Esps Turn OFF!", Duration = 1})
			end
		end

	elseif Input.KeyCode == Enum.KeyCode.N then
		IsAntiKnockBack_Player = not IsAntiKnockBack_Player

		if IsAntiKnockBack_Player then
			RenameTextButton(ButtonEsps, "Anti Knockback: ON")
		else
			RenameTextButton(ButtonEsps, "Anti Knockback: OFF")
		end

		if PlayerDevice == "PC" then
			if IsAntiKnockBack_Player then
				StarterGui:SetCore("SendNotification", {Title = "???", Text = "Anti Knockback Turn ON!", Duration = 1})
			else 
				StarterGui:SetCore("SendNotification", {Title = "???", Text = "Anti Knockback Turn OFF!", Duration = 1})
			end
		end
	elseif Input.KeyCode == Enum.KeyCode.X then
		IsJumpBoost = not IsJumpBoost

		if IsJumpBoost then
			IsSpeedBoost = false
			RenameTextButton(ButtonSpeedBoost, "Speed Boost: OFF")

			RenameTextButton(ButtonJumpBoost, "Jump Boost: ON")
		else
			RenameTextButton(ButtonJumpBoost, "Jump Boost: OFF")
		end

		if IsJumpBoost then
			if PlayerDevice == "PC" then
				StarterGui:SetCore("SendNotification", {Title = "???", Text = "JumpBoost Turn ON!", Duration = 1})
			end
		else 
			if PlayerDevice == "PC" then
				StarterGui:SetCore("SendNotification", {Title = "???", Text = "JumpBoost Turn OFF!", Duration = 1})
			end
		end
	elseif Input.KeyCode == Enum.KeyCode.B then
		IsSpeedBoost = not IsSpeedBoost

		if IsSpeedBoost then
			RenameTextButton(ButtonSpeedBoost, "Speed Boost: ON")

			Is_Massles = true
			RenameTextButton(ButtonMassles, "    Massles: ON    ")

			IsJumpBoost = false
			RenameTextButton(ButtonJumpBoost, "Jump Boost: OFF")
		else
			RenameTextButton(ButtonSpeedBoost, "Speed Boost: OFF")
		end

		if IsSpeedBoost then
			if PlayerDevice == "PC" then
				StarterGui:SetCore("SendNotification", {Title = "???", Text = "SpeedBoost Turn ON!", Duration = 1})
			end
		else 
			if PlayerDevice == "PC" then
				StarterGui:SetCore("SendNotification", {Title = "???", Text = "SpeedBoost Turn OFF!", Duration = 1})
			end
		end
	elseif Input.KeyCode == Enum.KeyCode.Z then
		Is_Massles = not Is_Massles

		if Is_Massles then
			RenameTextButton(ButtonMassles, "    Massles: ON    ")
		else
			RenameTextButton(ButtonMassles, "    Massles: OFF    ")

			IsSpeedBoost = false
			RenameTextButton(ButtonJumpBoost, "Speed Boost: OFF")
		end

		if Is_Massles then
			StarterGui:SetCore("SendNotification", {Title = "???", Text = "Massles Turn ON!", Duration = 1})
		else
			StarterGui:SetCore("SendNotification", {Title = "???", Text = "Massles Turn OFF!", Duration = 1})
		end

	elseif Input.KeyCode == Enum.KeyCode.C then
		UseMegaStun()
	elseif Input.KeyCode == Enum.KeyCode.F then
		UseQuantumCloner()
	end
end)

RunService.RenderStepped:Connect(function()
	Character = LocalPlayer.Character
	Humanoid = Character:WaitForChild("Humanoid")
	Hrp = Character:WaitForChild("HumanoidRootPart")

	if Is_Dragged_Gui then
		if PlayerDevice == "PC" then
			MainFrame.Position = UDim2.fromOffset(Mouse.X - 195, Mouse.Y)
		elseif PlayerDevice == "Mobile" then
			MainFrame.Position = UDim2.fromOffset(Mouse.X - 35, Mouse.Y)
		end
	end

	if Humanoid and IsJumpBoost then
		Humanoid.UseJumpPower = true
		Humanoid.JumpPower = Activated_JumpPower
	else 
		Humanoid.UseJumpPower = true
		Humanoid.JumpPower = Default_JumpPower
	end

	if Hrp and IsSpeedBoost then
		Hrp.AssemblyLinearVelocity = Hrp.CFrame.LookVector * Activated_WalkSpeed
	end
end)
task.spawn(function()
	while task.wait(0.1) do

		if not Is_Massles then
			if Character then
				for i,v in pairs(Character:GetChildren()) do
					if v:IsA("BasePart") and v.Name == "__HITBOX" then
						v.Massless = false
					end
				end
			end
		else
			if Character then
				for i,v in pairs(Character:GetChildren()) do
					if v:IsA("BasePart") and v.Name == "__HITBOX" then
						v.Massless = true
					end
				end
			end
		end

		if IsAntiKnockBack_Player then
			local IsTeleport = false

			if Humanoid and Humanoid:GetState() == Enum.HumanoidStateType.Physics then
				for i,v in pairs(Character:GetChildren()) do
					if v:IsA("BasePart") then
						v.Anchored = true
					end
				end

				IsTeleport = true
			else 
				for i,v in pairs(Character:GetChildren()) do
					if v:IsA("BasePart") then
						v.Anchored = false
					end
				end

				if IsTeleport then
					Hrp.CFrame = Hrp.CFrame * CFrame.new(0,50,0)
					IsTeleport = false
				end
			end
		end	

		if IsEspPlayers then
			pcall(function()
				for i,v in pairs(Players:GetPlayers()) do
					local Character = v.Character
					local Find_HightLight = Character:FindFirstChild("HackHightLight")


					for i,part in pairs(Character:GetChildren()) do
						if part:IsA("BasePart") and v.UserId ~= LocalPlayer.UserId then
							if part.Name == "HumanoidRootPart" or part.Name == "__HITBOX" then
								part.Transparency = 1
							else 
								part.Transparency = 0
							end
						end
					end

					if Character and not Find_HightLight and v.UserId ~= LocalPlayer.UserId then
						local HightLight = Instance.new("Highlight")
						HightLight.Name = "HackHightLight"
						--HightLight.FillColor = Color3.fromRGB(255, 255, 255)
						--HightLight.OutlineColor = Color3.fromRGB(255, 0, 4)
						HightLight.OutlineTransparency = 0
						HightLight.FillTransparency = 0.7
						HightLight.Parent = Character
					end
				end
			end)
		else 
			pcall(function()
				for i,v in pairs(Players:GetPlayers()) do
					local Character = v.Character
					local Find_HightLight = Character:FindFirstChild("HackHightLight")

					for i,part in pairs(Character:GetChildren()) do
						if part:IsA("BasePart") and v.UserId ~= LocalPlayer.UserId then
							if part.Name == "HumanoidRootPart" or part.Name == "__HITBOX" then
								part.Transparency = 1
							else 
								part.Transparency = 0
							end
						end
					end

					if Character and Find_HightLight then
						Find_HightLight:Destroy()
					end
				end
			end)
		end

		if IsShow_Brainrots then
			local PlotsFolder = workspace:WaitForChild("Plots")
			if PlotsFolder then
				for indexPlot,plot in pairs(PlotsFolder:GetChildren()) do
					for indexBase, brainrot in pairs(plot:GetChildren()) do
						local Find_BillBoardGui = brainrot:FindFirstChild("BillBoardUI")
						if brainrot:IsA("Model") and brainrot.Name ~= "Model" and brainrot.Name ~= "FriendPanel" and not Find_BillBoardGui then
							for indexbrainrot, namebrainrot in ipairs(TableBrainrots) do
								if brainrot.Name == namebrainrot then
									local BillBoardGui = Instance.new("BillboardGui")
									BillBoardGui.Name = "BillBoardUI"
									BillBoardGui.AlwaysOnTop = true
									--BillBoardGui.Size = UDim2.new(10, 0,4, 0)
									BillBoardGui.Size = UDim2.fromOffset(50,50)
									BillBoardGui.ResetOnSpawn = false
									BillBoardGui.Parent = brainrot

									local TextLabel = Instance.new("TextLabel")
									TextLabel.Size = UDim2.new(1,0,1,0)
									TextLabel.BackgroundTransparency = 1
									TextLabel.TextScaled = true
									TextLabel.TextStrokeTransparency = 0
									TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
									TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
									TextLabel.Text = brainrot.Name
									TextLabel.Parent = BillBoardGui
									--		print("Found brainrot in table: " .. tostring(namebrainrot))
								end
							end
						end
					end
				end
			end
		else 
			local PlotsFolder = workspace:WaitForChild("Plots")
			if PlotsFolder then
				for indexPlot,plot in pairs(PlotsFolder:GetChildren()) do
					for indexBase, brainrot in pairs(plot:GetChildren()) do
						if brainrot:IsA("Model") and brainrot.Name ~= "Model" and brainrot.Name ~= "FriendPanel" then
							local BillBoardGui = brainrot:FindFirstChild("BillBoardUI")
							if BillBoardGui then
								BillBoardGui:Destroy()
							end
						end
					end
				end
			end
		end
	end
end)

task.spawn(function()
	while task.wait(0.1) do
		if IsShow_TimeBase then
			local PlotsFolder = workspace:WaitForChild("Plots")

			if PlotsFolder then
				for indexplot, plot in pairs(PlotsFolder:GetChildren()) do
					for indexfolder, folder in pairs(plot:GetChildren()) do
						if folder:IsA("Folder") and folder.Name == "Purchases" then
							for indexModel,model in pairs(folder:GetChildren()) do
								if model:IsA("Model") then
									if indexModel == 1 then
										local Find_HitBox = model:FindFirstChild("Hitbox")

										if Find_HitBox then
											local Find_BillBoardGui = Find_HitBox:FindFirstChild("BillBoardHackedUI")

											if not Find_BillBoardGui then
												local Find_MainPart = model:FindFirstChild("Main")
												local RemainTime = Find_MainPart:FindFirstChild("BillboardGui"):FindFirstChild("RemainingTime")

												local BillBoardGui = Instance.new("BillboardGui")
												BillBoardGui.Name = "BillBoardHackedUI"
												BillBoardGui.AlwaysOnTop = true
												BillBoardGui.Enabled = true

												--	BillBoardGui.Size = UDim2.new(13, 0,4.5, 0)
												BillBoardGui.Size = UDim2.fromOffset(50,50)
												BillBoardGui.Parent = Find_HitBox

												local TextLabel = Instance.new("TextLabel")
												TextLabel.Size = UDim2.fromScale(1,1)

												TextLabel.BackgroundTransparency = 1
												TextLabel.TextStrokeTransparency = 0

												TextLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
												TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)

												TextLabel.TextScaled = true

												TextLabel.Text = "Unlock in nil?"

												TextLabel.Parent = BillBoardGui

												--			print("BillBoardGui Parent: " .. tostring(BillBoardGui.Parent) .. " TextLabel Parent: " .. tostring(TextLabel.Parent))

												pcall(function()
													task.spawn(function()
														while IsShow_TimeBase do
															--TextLabel.Text = "Unlock in: " .. tostring(RemainTime.Text)
															TextLabel.Text = "" .. tostring(RemainTime.Text)
															task.wait(0.1)
														end
													end)
												end)

												break
											end
										end
									end
								end
							end
						end
					end
				end
			end
		else 
			local PlotsFolder = workspace:WaitForChild("Plots")

			if PlotsFolder then
				for indexplot, plot in pairs(PlotsFolder:GetChildren()) do
					for indexfolder, folder in pairs(plot:GetChildren()) do
						if folder:IsA("Folder") and folder.Name == "Purchases" then
							for IndexModel,Model in pairs(folder:GetChildren()) do
								if Model:IsA("Model") then
									pcall(function()
										local Find_BillBoardGui = Model:FindFirstChild("Hitbox"):FindFirstChild("BillBoardHackedUI")

										if Find_BillBoardGui then
											Find_BillBoardGui:Destroy()
										end
									end)
								end
							end
						end
					end
				end
			end
		end
	end
end)

-- hello?
