local MODULE_NAME = "SkuMob"
local L = Sku.L

SkuMob.InCombatSounds = {
	["Interface\\AddOns\\Sku\\SkuMob\\assets\\Target_in_combat_low.mp3"] = L["Default beep sound"],
}

SkuMob.options = {
	name = MODULE_NAME,
	type = "group",
	args = {
		vocalizeRaidTargetOnly = {
			name = L["Only raid icon for targets with icon"],
			desc = "",
			type = "toggle",
			set = function(info, val) 
				SkuOptions.db.profile[MODULE_NAME].vocalizeRaidTargetOnly = val
			end,
			get = function(info) 
				return SkuOptions.db.profile[MODULE_NAME].vocalizeRaidTargetOnly
			end
		},
		dontVocalizePlayerReactionAndLevelInCombat  = {
			name = L["Don't vocalize reaction and level for players in combat"],
			order = 2,
			desc = "",
			type = "toggle",
			set = function(info, val) 
				SkuOptions.db.profile[MODULE_NAME].dontVocalizePlayerReactionAndLevelInCombat  = val
			end,
			get = function(info) 
				return SkuOptions.db.profile[MODULE_NAME].dontVocalizePlayerReactionAndLevelInCombat 
			end
		},				
		vocalizePlayerNamePlaceholders  = {
			name = L["Announce friendly and hostile players"],
			desc = "",
			type = "toggle",
			set = function(info, val) 
				SkuOptions.db.profile[MODULE_NAME].vocalizePlayerNamePlaceholders  = val
			end,
			get = function(info) 
				return SkuOptions.db.profile[MODULE_NAME].vocalizePlayerNamePlaceholders 
			end
		},		
		vocalizePlayerNamePlaceholdersSkuTts = {
			name = L["Announce player controled units with generic descriptions"],
			desc = "",
			type = "toggle",
			set = function(info, val) 
				SkuOptions.db.profile[MODULE_NAME].vocalizePlayerNamePlaceholdersSkuTts = val
			end,
			get = function(info) 
				return SkuOptions.db.profile[MODULE_NAME].vocalizePlayerNamePlaceholdersSkuTts
			end
		},
		repeatRaidTargetMarkers = {
			name = L["Repeat raid target markers on units"],
			desc = "",
			type = "toggle",
			set = function(info, val) 
				SkuOptions.db.profile[MODULE_NAME].repeatRaidTargetMarkers = val
			end,
			get = function(info) 
				return SkuOptions.db.profile[MODULE_NAME].repeatRaidTargetMarkers
			end
		},
		autoSetSkuRaidTargetsToInCombatCreatures = {
			name = L["Auto set private Sku raid targets on in combat targets without a raid target"],
			order = 6,
			desc = "",
			type = "toggle",
			set = function(info, val) 
				SkuOptions.db.profile[MODULE_NAME].autoSetSkuRaidTargetsToInCombatCreatures = val
			end,
			get = function(info) 
				return SkuOptions.db.profile[MODULE_NAME].autoSetSkuRaidTargetsToInCombatCreatures
			end
		},		
		InCombatSound={
			name = L["Sound if target is in combat"],
			order = 7,
			desc = "",
			type = "select",
			values = SkuMob.InCombatSounds,
			set = function(info,val)
				SkuOptions.db.profile[MODULE_NAME].InCombatSound = val
			end,
			get = function(info)
				return SkuOptions.db.profile[MODULE_NAME].InCombatSound
			end
		},
	}
}
---------------------------------------------------------------------------------------------------------------------------------------
SkuMob.defaults = {
	enable = true,
	vocalizeRaidTargetOnly = false,
	dontVocalizePlayerReactionAndLevelInCombat = true,
	vocalizePlayerNamePlaceholders = true,
	vocalizePlayerNamePlaceholdersSkuTts = false,
	repeatRaidTargetMarkers = true,
	autoSetSkuRaidTargetsToInCombatCreatures = false,
	autoSetSkuRaidTargetsToInCombatCreatures = false,
	InCombatSound = "Interface\\AddOns\\Sku\\SkuMob\\assets\\Target_in_combat_low.mp3",	
}
---------------------------------------------------------------------------------------------------------------------------------------
function SkuMob:MenuBuilder(aParentEntry)
	--dprint("SkuMob:MenuBuilder", aParentEntry)
	local tNewSubMenuEntry = SkuOptions:InjectMenuItems(aParentEntry, {L["Target menu"]}, SkuGenericMenuItem)
	if _G["TargetFrame"] then
		tNewSubMenuEntry.macrotext = "/click TargetFrame RightButton"
	end

	local tNewMenuEntry =  SkuOptions:InjectMenuItems(aParentEntry, {L["Options"]}, SkuGenericMenuItem)
	tNewMenuEntry.filterable = true
	SkuOptions:IterateOptionsArgs(SkuMob.options.args, tNewMenuEntry, SkuOptions.db.profile[MODULE_NAME])
end

---------------------------------------------------------------------------------------------------------------------------------------
--hook CreateContextMenu to get notified
local thooked = MenuUtil.CreateContextMenu
local function hooknew(a, b, c, d)
	print("CreateContextMenu", a, b, c, d)
	C_Timer.After(0.1, function()
		SkuMob:CreateAndUpdateSkuMenuFrame()
	end)
	local result = thooked(a, b, c, d)
	return result
end
MenuUtil.CreateContextMenu = hooknew

---------------------------------------------------------------------------------------------------------------------------------------
-- build SABs to be mapped to unnamed menu entries to reference them by a name
function SkuMob:CreateAndUpdateSkuMenuFrame()
	if SkuCore.inCombat == true then
		return
	end
	
	if not _G["SkuMenuFrame"] then
		local tSkuMenuFrame = CreateFrame("Button", "SkuMenuFrame", _G["UIParent"])
		tSkuMenuFrame:SetPoint("CENTER", _G["UIParent"], "CENTER")
		tSkuMenuFrame:SetSize(0, 0)
		tSkuMenuFrame:Hide()

		for x = 1, 100 do
			local tFrame = CreateFrame("Button", "SkuCoreSecureMenuButton"..x, tSkuMenuFrame, "SecureActionButtonTemplate, UIPanelButtonTemplate")
			tFrame:SetAttribute("type", "click")
			tFrame:SetAttribute("clickbutton", nil)		
			tFrame:SetPoint("CENTER", _G["SkuMenuFrame"], "CENTER", 0, -(x * 20))
			tFrame:SetSize(0, 0)
			tFrame:SetText("")
			tFrame:RegisterForClicks("AnyDown", "AnyUp")
			tFrame:Hide()
		end
	end

	if _G["SkuMenuFrame"]:IsShown() then
		_G["SkuMenuFrame"]:Hide()
	end
	for x = 1, 100 do
		if _G["SkuCoreSecureMenuButton"..x]:IsShown() then
			_G["SkuCoreSecureMenuButton"..x]:Hide()
		end
	end

	if not Menu.GetManager() then
		return
	end
	if not Menu.GetManager():GetOpenMenu() then
		return
	end
	if not Menu.GetManager():GetOpenMenu():GetLayoutChildren() then
		return
	end

	local counter = 1
	for i, child in ipairs(Menu.GetManager():GetOpenMenu():GetLayoutChildren()) do
		if child.frameTemplateOrFrameType == "Button" then
			if child.fontString then
				if child.fontString.GetText then
					_G["SkuMenuFrame"]:Show()
					local tFrame = _G["SkuCoreSecureMenuButton"..counter]
					tFrame:SetAttribute("type", "click")
					tFrame:SetAttribute("clickbutton", child)
					tFrame:SetText(child.fontString:GetText())
					tFrame:Show()
					counter = counter + 1
				end
			end
		end
	end
end