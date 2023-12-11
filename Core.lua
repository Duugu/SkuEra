---@diagnostic disable: undefined-field, undefined-doc-name, undefined-doc-param

--[[
local oGetEngravingModeEnabled = C_Engraving.GetEngravingModeEnabled
C_Engraving.GetEngravingModeEnabled = function()
	--local oValue = oGetEngravingModeEnabled()
	return true
end

local oIsEngravingEnabled = C_Engraving.IsEngravingEnabled
C_Engraving.IsEngravingEnabled = function()
	--local oValue = oIsEngravingEnabled()
	return true
end
]]

local oIsInventorySlotEngravable = C_Engraving.IsInventorySlotEngravable
C_Engraving.IsInventorySlotEngravable = function(containerIndex, slotIndex)
	if containerIndex >= 0 then
		return oIsInventorySlotEngravable(containerIndex, slotIndex) --bool
	else
		return false
	end
end


--[[
local oGetRuneCategories = C_Engraving.GetRuneCategories
C_Engraving.GetRuneCategories = function(shouldFilter, ownedOnly)
	--local oValue = oGetRuneCategories(false, false)
	return {INVSLOT_LEGS, INVSLOT_FEET}
end

local oGetRunesForCategory = C_Engraving.GetRunesForCategory
C_Engraving.GetRunesForCategory = function(category, ownedOnly)
	--local oValue = oGetRunesForCategory(category, ownedOnly)
	return {
		[1] = {
		skillLineAbilityID = 48626,--", Type = "number", Nilable = false },
		itemEnchantmentID = 1,--", Type = "number", Nilable = false },
		name = "Rune of Furious Thunder", --", Type = "cstring", Nilable = false },
		iconTexture = 133816,--", Type = "number", Nilable = false },
		equipmentSlot = INVSLOT_LEGS,--", Type = "number", Nilable = false },
		level = 1, --", Type = "number", Nilable = false },
		learnedAbilitySpellIDs = {409999,},-- Type = "table", InnerType = "number", Nilable = false },
	},
	[2] = {
		skillLineAbilityID = 48626,--", Type = "number", Nilable = false },
		itemEnchantmentID = 168598,--", Type = "number", Nilable = false },
		name = "Rune of Furious Thunder", --", Type = "cstring", Nilable = false },
		iconTexture = 133816,--", Type = "number", Nilable = false },
		equipmentSlot = INVSLOT_LEGS,--", Type = "number", Nilable = false },
		level = 1, --", Type = "number", Nilable = false },
		learnedAbilitySpellIDs = {409999,},-- Type = "table", InnerType = "number", Nilable = false },
	},
}
end

SetCVar("alwaysShowRuneIcons", "1")

C_AddOns.LoadAddOn("Blizzard_EngravingUI")
]]
---------------------------------------------------------------------------------------------------------------------------------------
local MODULE_NAME = "Sku"
local ADDON_NAME = ...

Sku = {}
Sku.L = LibStub("AceLocale-3.0"):GetLocale("Sku", false)
Sku.Loc = Sku.L["locale"]
Sku.Locs = {"enUS", "deDE",}

Sku.LocsPartly = {["deDE"] = true, ["enUS"] = true, ["zhCN"] = true, ["ruRU"] = true,}
Sku.LocP = GetLocale()
if not Sku.LocsPartly[GetLocale()] then
	Sku.LocP = "enUS"
end

---------------------------------------------------------------------------------------------------------------------------------------
Sku.AudiodataPath = ""
if Sku.Loc == "deDE" then
	Sku.AudiodataPath = "SkuAudioData"
elseif Sku.Loc == "enUS" or Sku.Loc == "enGB" or Sku.Loc == "enAU" then
	Sku.AudiodataPath = "SkuAudioData_en"
end

---------------------------------------------------------------------------------------------------------------------------------------
Sku.testMode = false

---------------------------------------------------------------------------------------------------------------------------------------
-- tmp fixes for 11404 ptr
Sku.toc = select(4, GetBuildInfo())
if Sku.toc > 11403 then
	PickupContainerItem = C_Container.PickupContainerItem
	GetContainerNumSlots = C_Container.GetContainerNumSlots
	GetContainerNumFreeSlots = C_Container.GetContainerNumFreeSlots
	UseContainerItem = C_Container.UseContainerItem
	GetContainerItemID = C_Container.GetContainerItemID
	GetItemCooldown = C_Container.GetItemCooldown
	GetContainerItemQuestInfo = function(bag, slot)
		local t = C_Container.GetContainerItemQuestInfo(bag, slot)
		return t.isQuestItem
	end
	GetContainerItemInfo = function(bag, slot)
		slot = slot or 0
		local t = C_Container.GetContainerItemInfo(bag, slot)
		if not t then
			return
		end		
		return t.iconFileID, t.stackCount, t.isLocked, t.quality, t.isReadable, t.hasLoot, t.hyperlink, t.isFiltered, t.hasNoValue, t.itemID, t.isBound
	end
	SocketContainerItem = C_Container.SocketContainerItem
	SplitContainerItem = C_Container.SplitContainerItem
	GetContainerItemLink = C_Container.GetContainerItemLink
	GetContainerItemCooldown = C_Container.GetContainerItemCooldown

	SetTracking = C_Minimap.SetTracking
	GetTrackingInfo = C_Minimap.GetTrackingInfo
	GetNumTrackingTypes = C_Minimap.GetNumTrackingTypes
end
---------------------------------------------------------------------------------------------------------------------------------------

Sku.IsEraSoD = false
if C_Engraving.IsEngravingEnabled() == true then
	Sku.IsEraSoD = true
end

---------------------------------------------------------------------------------------------------------------------------------------
Sku.metric = {}
debugprofilestart()
function Sku:MetricPoint(aText)
	Sku.metric[#Sku.metric + 1] = {aText, debugprofilestop()/1000}
end

---------------------------------------------------------------------------------------------------------------------------------------
Sku.debug = false
function dprint(...)
	if Sku.debug == true then
		print(...)
	end
end