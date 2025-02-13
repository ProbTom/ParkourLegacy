local v0 = game:GetService("Players");
local v1 = game:GetService("RunService");
local v2 = game:GetService("UserInputService");
local v3 = v0.LocalPlayer;
local v4 = workspace.CurrentCamera;
local v5 = Instance.new("ScreenGui");
v5.Name = "BagESP";
v5.ResetOnSpawn = false;
v5.Parent = v3.PlayerGui;
local v10 = Instance.new("ScreenGui");
v10.Name = "ESPControl";
v10.ResetOnSpawn = false;
v10.Parent = v3.PlayerGui;
local v14 = Instance.new("Frame");
v14.Name = "ControlFrame";
v14.Size = UDim2.new(117 - (32 + 85), 295 + 5, 0, 30);
v14.Position = UDim2.new(0.5 + 0, -(1107 - (892 + 65)), 0.14, 0 - 0);
v14.BackgroundColor3 = Color3.fromRGB(30, 30, 55 - 25);
v14.BorderSizePixel = 0;
v14.Active = true;
v14.Draggable = true;
v14.Parent = v10;
local v23 = Instance.new("TextBox");
v23.Name = "DistanceInput";
v23.Size = UDim2.new(0.4, 0, 1 - 0, 350 - (87 + 263));
v23.Position = UDim2.new(180.6 - (67 + 113), 0 + 0, 0 - 0, 0 + 0);
v23.BackgroundColor3 = Color3.fromRGB(198 - 148, 50, 50);
v23.BorderSizePixel = 952 - (802 + 150);
v23.TextColor3 = Color3.fromRGB(686 - 431, 462 - 207, 186 + 69);
v23.Font = Enum.Font.SourceSansBold;
v23.TextSize = 1011 - (915 + 82);
v23.Text = "1000";
v23.Parent = v14;
local v35 = Instance.new("TextLabel");
v35.Size = UDim2.new(0.6, 0 - 0, 1 + 0, 0 - 0);
v35.Position = UDim2.new(1187 - (1069 + 118), 0 - 0, 0 - 0, 0 + 0);
v35.BackgroundTransparency = 1 - 0;
v35.TextColor3 = Color3.fromRGB(255, 255, 253 + 2);
v35.Font = Enum.Font.SourceSansBold;
v35.TextSize = 805 - (368 + 423);
v35.Text = "Max ESP distance:";
v35.Parent = v14;
local v44 = Instance.new("TextLabel");
v44.Name = "HelpText";
v44.Size = UDim2.new(3 - 2, 18 - (10 + 8), 0 - 0, 462 - (416 + 26));
v44.Position = UDim2.new(0, 0 - 0, 1, 0 + 0);
v44.BackgroundTransparency = 0 - 0;
v44.BackgroundColor3 = Color3.fromRGB(30, 30, 468 - (145 + 293));
v44.BorderSizePixel = 0;
v44.TextColor3 = Color3.fromRGB(255, 685 - (44 + 386), 1741 - (998 + 488));
v44.Font = Enum.Font.SourceSansBold;
v44.TextSize = 5 + 9;
v44.Text = "Press X to hide esp";
v44.Parent = v14;
local v56 = {};
local v57 = workspace;
local v58 = true;
local v59 = {common=Color3.fromRGB(64 + 14, 825 - (201 + 571), 1174 - (116 + 1022)),uncommon=Color3.fromRGB(47, 1036 - 787, 22 + 14),rare=Color3.fromRGB(467 - 339, 173 - 124, 1026 - (814 + 45)),epic=Color3.fromRGB(0 - 0, 11 + 177, 81 + 146),legendary=Color3.fromRGB(1140 - (261 + 624), 413 - 180, 1080 - (1020 + 60)),ultimate=Color3.fromRGB(128, 5, 1423 - (630 + 793)),resplendent=Color3.fromRGB(84 - 59, 118 - 93, 10 + 15)};
local v60 = 0.1;
local v61 = 3443 - 2443;
local v62 = 1747 - (760 + 987);
local function v63()
	local v69 = 0;
	while true do
		if (v69 == (1914 - (1789 + 124))) then
			v10.Enabled = v58;
			for v99, v100 in pairs(v56) do
				if v100.Billboard then
					v100.Billboard.Enabled = v58;
				end
			end
			break;
		end
		if (v69 == 0) then
			v58 = not v58;
			v5.Enabled = v58;
			v69 = 1;
		end
	end
end
v2.InputBegan:Connect(function(v70, v71)
	if (not v71 and (v70.KeyCode == Enum.KeyCode.X)) then
		v63();
	end
end);
v23.FocusLost:Connect(function()
	local v72 = 766 - (745 + 21);
	local v73;
	while true do
		if (v72 == 0) then
			v73 = tonumber(v23.Text);
			if (v73 and (v73 > 0)) then
				v61 = v73;
			else
				v23.Text = tostring(v61);
			end
			break;
		end
	end
end);
local v64 = {AlwaysOnTop=true,Size=UDim2.new(0, 200, 0, 7 + 13),StudsOffset=Vector3.new(0, 5 - 3, 0 - 0),LightInfluence=0,MaxDistance=v61};
local function v65(v74, v75)
	local v76 = 0 + 0;
	local v77;
	local v78;
	while true do
		if ((0 + 0) == v76) then
			v77 = Instance.new("BillboardGui");
			for v101, v102 in pairs(v64) do
				v77[v101] = v102;
			end
			v77.Parent = v74;
			v76 = 1056 - (87 + 968);
		end
		if (v76 == 3) then
			v78.TextStrokeColor3 = Color3.new(0 - 0, 0 + 0, 0 - 0);
			v78.TextColor3 = v75;
			v78.Parent = v77;
			v76 = 1417 - (447 + 966);
		end
		if (v76 == (5 - 3)) then
			v78.Font = Enum.Font.SourceSansBold;
			v78.TextSize = 1833 - (1703 + 114);
			v78.TextStrokeTransparency = 701 - (376 + 325);
			v76 = 4 - 1;
		end
		if (v76 == (12 - 8)) then
			return v77;
		end
		if (v76 == (1 + 0)) then
			v78 = Instance.new("TextLabel");
			v78.BackgroundTransparency = 2 - 1;
			v78.Size = UDim2.new(1, 14 - (9 + 5), 377 - (85 + 291), 0);
			v76 = 1267 - (243 + 1022);
		end
	end
end
local function v66()
	local v79 = 0 - 0;
	local v80;
	while true do
		if (v79 == (0 + 0)) then
			v80 = v3.Character;
			return (v80 and v80:FindFirstChild("HumanoidRootPart") and v80.HumanoidRootPart.Position) or v4.CFrame.Position;
		end
	end
end
local function v67()
	local v81 = 0;
	local v82;
	local v83;
	while true do
		if (v81 == (1181 - (1123 + 57))) then
			v62 = v82;
			v83 = v66();
			v81 = 2;
		end
		if (v81 == (2 + 0)) then
			for v104, v105 in ipairs(v57:GetDescendants()) do
				local v106 = v105:FindFirstChild("Pillow");
				if (not v106 or not v106:IsA("StringValue")) then
					continue;
				end
				local v107 = v56[v105];
				if not v107 then
					local v112 = v106.Value:lower();
					local v113 = v59[v112] or v59.default;
					local v114;
					if v105:IsA("BasePart") then
						v114 = v105;
					elseif (v105:IsA("Model") and v105.PrimaryPart) then
						v114 = v105.PrimaryPart;
					else
						continue;
					end
					v107 = {Billboard=v65(v114, v113),Type=v112};
					v107.Billboard.Enabled = v58;
					v56[v105] = v107;
				end
				if v107.Billboard.Parent then
					local v117 = 254 - (163 + 91);
					local v118;
					while true do
						if (v117 == (1930 - (1869 + 61))) then
							v118 = (v83 - v107.Billboard.Parent.Position).Magnitude;
							if ((v118 <= v61) and v58) then
								v107.Billboard.Enabled = true;
								v107.Billboard.TextLabel.Text = string.format("%s (%d)", v107.Type:upper(), math.floor(v118));
							else
								v107.Billboard.Enabled = false;
							end
							break;
						end
					end
				end
			end
			for v108, v109 in pairs(v56) do
				if not v108:IsDescendantOf(v57) then
					local v119 = 0;
					while true do
						if (v119 == (0 + 0)) then
							v109.Billboard:Destroy();
							v56[v108] = nil;
							break;
						end
					end
				end
			end
			break;
		end
		if (v81 == 0) then
			v82 = tick();
			if ((v82 - v62) < v60) then
				return;
			end
			v81 = 1;
		end
	end
end
local v68 = v1.Heartbeat:Connect(function()
	local v84, v85 = pcall(v67);
	if not v84 then
		warn("ESP Error:", v85);
	end
end);
if _G.previousESPConnection then
	_G.previousESPConnection:Disconnect();
end
_G.previousESPConnection = v68;
if _G.previousControlGui then
	_G.previousControlGui:Destroy();
end
_G.previousControlGui = v10;
if _G.previousESPGui then
	_G.previousESPGui:Destroy();
end
_G.previousESPGui = v5;
