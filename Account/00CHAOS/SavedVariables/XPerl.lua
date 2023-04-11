
XPerlConfig = nil
XPerlConfig_Global = nil
XPerlConfigNew = {
	["ConfigVersion"] = "3.6.30",
	["global"] = {
		["highlight"] = {
			["enable"] = 1,
			["HOT"] = 1,
			["AGGRO"] = 1,
			["SHIELD"] = 1,
		},
		["highlightSelection"] = 1,
		["bar"] = {
			["fat"] = 1,
			["background"] = 1,
			["fadeTime"] = 0.5,
			["texture"] = {
				"Perl v2", -- [1]
				"Interface\\Addons\\XPerl\\Images\\XPerl_StatusBar", -- [2]
			},
		},
		["rangeFinder"] = {
			["StatsFrame"] = {
				["spell"] = "Holy Light",
				["FadeAmount"] = 0.5,
				["item"] = "Heavy Netherweave Bandage",
				["HealthLowPoint"] = 0.85,
			},
			["Main"] = {
				["enabled"] = true,
				["spell"] = "Holy Light",
				["item"] = "Heavy Netherweave Bandage",
				["FadeAmount"] = 0.5,
				["HealthLowPoint"] = 0.85,
			},
			["NameFrame"] = {
				["spell"] = "Holy Light",
				["FadeAmount"] = 0.5,
				["item"] = "Heavy Netherweave Bandage",
				["HealthLowPoint"] = 0.85,
			},
		},
		["showAFK"] = 1,
		["ShowTutorials"] = true,
		["buffHelper"] = {
			["enable"] = 1,
			["sort"] = "group",
			["visible"] = 1,
		},
		["focus"] = {
			["debuffs"] = {
				["enable"] = 1,
				["big"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["portrait"] = 1,
			["combo"] = {
				["enable"] = 1,
				["blizzard"] = 1,
				["pos"] = "top",
			},
			["enable"] = 1,
			["mana"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["hitIndicator"] = 1,
			["level"] = 1,
			["sound"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["mobType"] = 1,
			["highlightDebuffs"] = {
				["who"] = 2,
			},
			["raidIconAlternate"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["threatMode"] = "portraitFrame",
			["elite"] = 1,
			["scale"] = 0.8,
			["values"] = 1,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 3,
				["size"] = 22,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["target"] = {
			["debuffs"] = {
				["enable"] = 1,
				["big"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["portrait"] = 1,
			["combo"] = {
				["enable"] = 1,
				["blizzard"] = 1,
				["pos"] = "top",
			},
			["enable"] = 1,
			["mana"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["hitIndicator"] = 1,
			["level"] = 1,
			["sound"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["mobType"] = 1,
			["highlightDebuffs"] = {
				["who"] = 2,
			},
			["raidIconAlternate"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["threatMode"] = "portraitFrame",
			["elite"] = 1,
			["scale"] = 0.8,
			["values"] = 1,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 3,
				["size"] = 22,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["raid"] = {
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 20,
			},
			["enable"] = 1,
			["scale"] = 0.8,
			["class"] = {
				{
					["enable"] = true,
					["name"] = "WARRIOR",
				}, -- [1]
				{
					["enable"] = true,
					["name"] = "DEATHKNIGHT",
				}, -- [2]
				{
					["enable"] = true,
					["name"] = "ROGUE",
				}, -- [3]
				{
					["enable"] = true,
					["name"] = "HUNTER",
				}, -- [4]
				{
					["enable"] = true,
					["name"] = "MAGE",
				}, -- [5]
				{
					["enable"] = true,
					["name"] = "WARLOCK",
				}, -- [6]
				{
					["enable"] = true,
					["name"] = "PRIEST",
				}, -- [7]
				{
					["enable"] = true,
					["name"] = "DRUID",
				}, -- [8]
				{
					["enable"] = true,
					["name"] = "SHAMAN",
				}, -- [9]
				{
					["enable"] = true,
					["name"] = "PALADIN",
				}, -- [10]
				{
					["enable"] = true,
					["name"] = "MONK",
				}, -- [11]
			},
			["hideframemanager"] = {
				["enable"] = 0,
			},
			["group"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
				1, -- [6]
				1, -- [7]
				1, -- [8]
				1, -- [9]
			},
			["titles"] = 1,
			["hideframecontainer"] = {
				["enable"] = 1,
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["spacing"] = 0,
			["anchor"] = "TOP",
			["buffs"] = {
				["castable"] = 0,
				["maxrows"] = 2,
				["right"] = 1,
				["size"] = 20,
				["inside"] = 1,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["raidpet"] = {
			["enable"] = 1,
			["hunter"] = 1,
			["warlock"] = 1,
		},
		["colour"] = {
			["guildList"] = 1,
			["frame"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["reaction"] = {
				["tapped"] = {
					["b"] = 0.5,
					["g"] = 0.5,
					["r"] = 0.5,
				},
				["none"] = {
					["b"] = 1,
					["g"] = 0.5,
					["r"] = 0.5,
				},
				["neutral"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 1,
				},
				["unfriendly"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["friend"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0,
				},
				["enemy"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
			},
			["gradient"] = {
				["enable"] = 1,
				["s"] = {
					["a"] = 1,
					["b"] = 0.25,
					["g"] = 0.25,
					["r"] = 0.25,
				},
				["e"] = {
					["a"] = 0,
					["b"] = 0.1,
					["g"] = 0.1,
					["r"] = 0.1,
				},
			},
			["classic"] = 1,
			["class"] = 1,
			["border"] = {
				["a"] = 1,
				["b"] = 0.5,
				["g"] = 0.5,
				["r"] = 0.5,
			},
			["bar"] = {
				["rage"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
				["healthFull"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0,
				},
				["focus"] = {
					["b"] = 0.25,
					["g"] = 0.5,
					["r"] = 1,
				},
				["runic_power"] = {
					["b"] = 1,
					["g"] = 0.82,
					["r"] = 0,
				},
				["mana"] = {
					["b"] = 1,
					["g"] = 0,
					["r"] = 0,
				},
				["energy"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 1,
				},
				["healthEmpty"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
			},
		},
		["minimap"] = {
			["enable"] = 1,
			["radius"] = 78,
			["pos"] = 186,
		},
		["targettargettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["scale"] = 0.7,
			["mana"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 22,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["pet"] = {
			["threat"] = 1,
			["portrait"] = 1,
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 20,
			},
			["scale"] = 0.7,
			["portrait3D"] = 1,
			["buffs"] = {
				["enable"] = 1,
				["maxrows"] = 2,
				["size"] = 18,
			},
			["values"] = 1,
			["happiness"] = {
				["enabled"] = 1,
				["flashWhenSad"] = 1,
				["onlyWhenSad"] = 1,
			},
			["threatMode"] = "portraitFrame",
			["name"] = 1,
			["hitIndicator"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["level"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["size"] = {
				["enable"] = 1,
				["size"] = 20,
				["width"] = 0,
			},
		},
		["tooltip"] = {
			["enable"] = 1,
			["enableBuffs"] = 1,
			["modifier"] = "all",
		},
		["player"] = {
			["partyNumber"] = 1,
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 25,
			},
			["portrait"] = 1,
			["scale"] = 0.9,
			["castBar"] = {
				["enable"] = 1,
			},
			["fullScreen"] = {
				["enable"] = 1,
				["highHP"] = 40,
				["lowHP"] = 30,
			},
			["hitIndicator"] = 1,
			["dockRunes"] = 1,
			["level"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["showRunes"] = 1,
			["threatMode"] = "portraitFrame",
			["energyTicker"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["values"] = 1,
			["buffs"] = {
				["enable"] = 1,
				["wrap"] = 1,
				["flash"] = 1,
				["count"] = 40,
				["maxrows"] = 2,
				["rows"] = 2,
				["hideBlizzard"] = 1,
				["cooldown"] = 1,
				["size"] = 25,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["focustarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 22,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["targettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 22,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["partypet"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 12,
			},
			["name"] = 1,
			["scale"] = 0.7,
			["enable"] = 1,
			["buffs"] = {
				["enable"] = 1,
				["maxrows"] = 2,
				["size"] = 12,
				["castable"] = 0,
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["size"] = {
				["width"] = 0,
			},
		},
		["highlightDebuffs"] = {
			["enable"] = 1,
			["frame"] = 1,
			["border"] = 1,
			["class"] = 1,
		},
		["transparency"] = {
			["text"] = 1,
			["frame"] = 1,
		},
		["pettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 22,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["party"] = {
			["debuffs"] = {
				["halfSize"] = 1,
				["below"] = 1,
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 32,
			},
			["portrait"] = 1,
			["scale"] = 0.8,
			["castBar"] = {
				["enable"] = 1,
				["castTime"] = 1,
			},
			["spacing"] = 23,
			["anchor"] = "TOP",
			["level"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["values"] = 1,
			["inRaid"] = 1,
			["threatMode"] = "portraitFrame",
			["name"] = 1,
			["hitIndicator"] = 1,
			["target"] = {
				["enable"] = 1,
				["size"] = 120,
				["large"] = 1,
			},
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 2,
				["size"] = 22,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["combatFlash"] = 1,
		["buffs"] = {
			["countdown"] = 1,
			["cooldown"] = 1,
			["countdownStart"] = 20,
		},
		["maximumScale"] = 1.5,
		["optionsColour"] = {
			["b"] = 0.2,
			["g"] = 0.2,
			["r"] = 0.7,
		},
	},
	["savedPositions"] = {
		["Turalyon"] = {
			["Everux"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 498,
					["height"] = 250.0000152587891,
					["left"] = 507.666748046875,
					["width"] = 350.0000305175781,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 652.769287109375,
					["height"] = 124,
					["left"] = 885.2564086914063,
					["width"] = 330.0000305175781,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 424,
					["height"] = 79.99999237060547,
					["left"] = 579.6666259765625,
					["width"] = 206.0001068115234,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 809.5385374536891,
					["left"] = 425.6000063419342,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 665.7692260742188,
					["height"] = 150.0000152587891,
					["left"] = 980.2564697265625,
					["width"] = 140.0000457763672,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 1021.538556822052,
					["left"] = 414.7000478693408,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 809.5385374536891,
					["left"] = 182.4000027179718,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 809.5385374536891,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 1170.738579825862,
					["left"] = 20.69999945163727,
				},
				["XPerl_PetTarget"] = {
					["top"] = 1122.038542903516,
					["left"] = 164.500018560886,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 809.5385374536891,
					["left"] = 486.4000560760505,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 809.5385374536891,
					["left"] = 243.2000280380253,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 1119.2385429512,
					["left"] = 72.09999877214432,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 1173.138542033288,
					["left"] = 413.0000356912606,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 809.5385374536891,
					["left"] = 304.0000289440159,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 504.0000305175781,
					["height"] = 240.0000457763672,
					["left"] = 432.666748046875,
					["width"] = 500.0000305175781,
				},
				["XPerl_Focus"] = {
					["top"] = 1021.538589440861,
					["left"] = 216.8000032305718,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 1061.538590036907,
					["left"] = 0,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 809.5385374536891,
					["left"] = 364.8000054359436,
				},
				["XPerl_Raid_Title11"] = {
					["top"] = 809.5385374536891,
					["left"] = 608.0000578880317,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 809.5385374536891,
					["left"] = 547.2000569820411,
				},
				["XPerl_Target"] = {
					["top"] = 1171.938494025744,
					["left"] = 216.8000032305718,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 809.5385374536891,
					["left"] = 60.80000700950632,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 809.5385374536891,
					["left"] = 121.6000140190126,
				},
			},
		},
		["Bloodscalp"] = {
			["Everux"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 498,
					["height"] = 250.0000152587891,
					["left"] = 507.666748046875,
					["width"] = 350.0000305175781,
				},
				["XPerl_Focus"] = {
					["top"] = 1021.538498274145,
					["left"] = 216.8000086468412,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 424,
					["height"] = 79.99999237060547,
					["left"] = 579.6666259765625,
					["width"] = 206.0001068115234,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 809.53853948474,
					["left"] = 425.6000135636268,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 665.7692260742188,
					["height"] = 150.0000152587891,
					["left"] = 980.2564697265625,
					["width"] = 140.0000457763672,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 1021.538479661045,
					["left"] = 414.6999959399009,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 809.53853948474,
					["left"] = 182.4000178178745,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 809.53853948474,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 1170.738527783761,
					["left"] = 20.70000012867092,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 809.53853948474,
					["left"] = 243.200023757166,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 809.53853948474,
					["left"] = 486.400047514332,
				},
				["XPerl_Raid_Title11"] = {
					["top"] = 809.5385374536891,
					["left"] = 608.0000578880317,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 1119.238519993827,
					["left"] = 72.09999700091484,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 1173.138528697999,
					["left"] = 413.0000323166688,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 809.53853948474,
					["left"] = 304.0000296964575,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 504.0000305175781,
					["height"] = 240.0000457763672,
					["left"] = 432.666748046875,
					["width"] = 500.0000305175781,
				},
				["XPerl_PetTarget"] = {
					["top"] = 1122.038540817928,
					["left"] = 164.5000101716408,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 1061.53857294725,
					["left"] = 0,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 809.53853948474,
					["left"] = 547.1999974307961,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 809.53853948474,
					["left"] = 364.800035635749,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 652.769287109375,
					["height"] = 124,
					["left"] = 885.2564086914063,
					["width"] = 330.0000305175781,
				},
				["XPerl_Target"] = {
					["top"] = 1171.938501171797,
					["left"] = 216.8000086468412,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 809.53853948474,
					["left"] = 60.8000059392915,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 809.53853948474,
					["left"] = 121.600011878583,
				},
			},
		},
	},
}
XPerlConfigSavePerCharacter = nil
