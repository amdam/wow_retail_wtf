
HealBot_Config = {
	["CrashProtStartTime"] = 2,
	["SkinDefault"] = {
		["Standard"] = {
			["Raid 10"] = false,
			["Solo"] = true,
			["BG 40"] = false,
			["Party"] = false,
			["BG 10"] = false,
			["Raid 25"] = false,
			["Raid 40"] = false,
			["Arena"] = false,
			["BG 15"] = false,
			["Pet Battle"] = false,
		},
		["Raid"] = {
			["Raid 10"] = true,
			["Solo"] = false,
			["BG 40"] = false,
			["Party"] = false,
			["BG 10"] = false,
			["Raid 25"] = true,
			["Raid 40"] = true,
			["Arena"] = false,
			["BG 15"] = false,
			["Pet Battle"] = false,
		},
		["Group"] = {
			["Raid 10"] = false,
			["Solo"] = false,
			["BG 40"] = false,
			["Party"] = true,
			["BG 10"] = false,
			["Raid 25"] = false,
			["Raid 40"] = false,
			["Arena"] = true,
			["BG 15"] = false,
			["Pet Battle"] = true,
		},
		["Alterac Valley"] = {
			["Raid 10"] = false,
			["Solo"] = false,
			["BG 40"] = true,
			["Party"] = false,
			["BG 10"] = true,
			["Raid 25"] = false,
			["Raid 40"] = false,
			["Arena"] = false,
			["BG 15"] = true,
			["Pet Battle"] = false,
		},
	},
	["DisableHealBot"] = false,
	["BuffReset"] = "6.0.0",
	["AdjustMaxHealth"] = false,
	["LastVersionSkinUpdate"] = "8.1.0.3",
	["EnableHealthy"] = true,
	["ActionVisible"] = {
		true, -- [1]
		false, -- [2]
		false, -- [3]
		false, -- [4]
		false, -- [5]
		false, -- [6]
		false, -- [7]
		true, -- [8]
		false, -- [9]
		false, -- [10]
	},
	["MacroUse10"] = 0,
	["LastAutoSkinChangeType"] = "Solo",
	["LastAutoSkinChangeTime"] = 0,
	["Current_Skin"] = "Standard",
	["Profile"] = 1,
	["Skin_ID"] = 1,
	["Version"] = "8.1.0.3",
	["CurrentSpec"] = 1,
	["DisableSolo"] = false,
	["CrashProtMacroName"] = "hbCrashProt",
	["HealBot_BuffWatchGUID"] = {
	},
	["DisabledNow"] = 0,
}
HealBot_Config_Spells = {
	["EnabledSpellTrinket2"] = {
	},
	["EnabledSpellTarget"] = {
	},
	["EnemySpellTrinket1"] = {
	},
	["EnemyAvoidBlueCursor"] = {
	},
	["EnemySpellTrinket2"] = {
	},
	["EnabledSpellTrinket1"] = {
	},
	["DisabledKeyCombo"] = {
		["AltLeft1"] = "Resurrection",
		["Right3"] = "Assist",
		["Right"] = "Assist",
		["Left"] = "Target",
		["Ctrl-ShiftRight"] = "HBmenu",
		["Middle"] = "Renew",
		["Middle1"] = "Renew",
		["Left4"] = "Target",
		["Ctrl-ShiftLeft2"] = "Flash Heal",
		["Middle2"] = "Renew",
		["Ctrl-ShiftRight2"] = "HBmenu",
		["Ctrl-ShiftLeft4"] = "Flash Heal",
		["AltLeft3"] = "Resurrection",
		["Ctrl-ShiftLeft3"] = "Flash Heal",
		["Right2"] = "Assist",
		["Left1"] = "Target",
		["AltLeft2"] = "Resurrection",
		["AltLeft4"] = "Resurrection",
		["Middle4"] = "Renew",
		["ShiftRight3"] = "Holy Word: Serenity",
		["Left3"] = "Target",
		["Ctrl-ShiftRight3"] = "HBmenu",
		["Ctrl-ShiftRight4"] = "HBmenu",
		["Left2"] = "Target",
		["ShiftRight1"] = "Holy Word: Serenity",
		["Ctrl-ShiftLeft"] = "Flash Heal",
		["ShiftRight"] = "Holy Word: Serenity",
		["Right4"] = "Assist",
		["AltLeft"] = "Resurrection",
		["Middle3"] = "Renew",
		["Right1"] = "Assist",
		["Ctrl-ShiftRight1"] = "HBmenu",
		["ShiftRight2"] = "Holy Word: Serenity",
		["Ctrl-ShiftLeft1"] = "Flash Heal",
		["ShiftRight4"] = "Holy Word: Serenity",
	},
	["DisabledSpellTarget"] = {
	},
	["ButtonCastMethod"] = 2,
	["DisabledSpellTrinket1"] = {
	},
	["EnabledKeyCombo"] = {
		["Alt-ShiftRight4"] = "Assist",
		["CtrlMiddle1"] = "Divine Hymn",
		["Right1"] = "Heal",
		["ShiftMiddle3"] = "Prayer of Mending",
		["Right"] = "Heal",
		["Alt-ShiftRight2"] = "Assist",
		["AltMiddle3"] = "Prayer of Healing",
		["Middle"] = "Renew",
		["Middle1"] = "Renew",
		["Middle2"] = "Renew",
		["Ctrl-ShiftRight2"] = "HBmenu",
		["ShiftMiddle2"] = "Prayer of Mending",
		["CtrlRight1"] = "Mass Dispel",
		["Right2"] = "Heal",
		["Alt-ShiftLeft3"] = "Target",
		["Left1"] = "Flash Heal",
		["Alt-ShiftLeft"] = "Target",
		["CtrlRight3"] = "Mass Dispel",
		["CtrlLeft3"] = "Purify",
		["ShiftRight3"] = "Holy Word: Serenity",
		["Alt-ShiftRight1"] = "Assist",
		["CtrlLeft1"] = "Purify",
		["Alt-ShiftLeft4"] = "Target",
		["Ctrl-ShiftRight4"] = "HBmenu",
		["Left2"] = "Flash Heal",
		["ShiftRight1"] = "Holy Word: Serenity",
		["ShiftRight"] = "Holy Word: Serenity",
		["ShiftMiddle"] = "Prayer of Mending",
		["CtrlLeft4"] = "Purify",
		["Right4"] = "Heal",
		["Middle3"] = "Renew",
		["CtrlMiddle"] = "Divine Hymn",
		["CtrlRight4"] = "Mass Dispel",
		["Alt-ShiftLeft2"] = "Target",
		["Right3"] = "Heal",
		["CtrlRight"] = "Mass Dispel",
		["Left"] = "Flash Heal",
		["Ctrl-ShiftRight"] = "HBmenu",
		["CtrlMiddle3"] = "Divine Hymn",
		["Left4"] = "Flash Heal",
		["Ctrl-ShiftRight1"] = "HBmenu",
		["ShiftMiddle4"] = "Prayer of Mending",
		["Alt-ShiftRight3"] = "Assist",
		["ShiftMiddle1"] = "Prayer of Mending",
		["AltMiddle"] = "Prayer of Healing",
		["CtrlRight2"] = "Mass Dispel",
		["Left3"] = "Flash Heal",
		["ShiftRight4"] = "Holy Word: Serenity",
		["ShiftLeft2"] = "Binding Heal",
		["Ctrl-ShiftRight3"] = "HBmenu",
		["CtrlLeft"] = "Purify",
		["Middle4"] = "Renew",
		["Alt-ShiftLeft1"] = "Target",
		["ShiftLeft3"] = "Binding Heal",
		["AltMiddle1"] = "Prayer of Healing",
		["Alt-ShiftRight"] = "Assist",
		["ShiftLeft"] = "Binding Heal",
		["ShiftLeft1"] = "Binding Heal",
		["CtrlMiddle2"] = "Divine Hymn",
		["AltMiddle4"] = "Prayer of Healing",
		["AltMiddle2"] = "Prayer of Healing",
		["CtrlMiddle4"] = "Divine Hymn",
		["ShiftRight2"] = "Holy Word: Serenity",
		["ShiftLeft4"] = "Binding Heal",
		["CtrlLeft2"] = "Purify",
	},
	["DisabledAvoidBlueCursor"] = {
	},
	["DisabledSpellTrinket2"] = {
	},
	["EnabledAvoidBlueCursor"] = {
	},
	["EnemySpellTarget"] = {
	},
	["EnemyKeyCombo"] = {
	},
}
HealBot_Config_Buffs = {
	["LongBuffTimer"] = 120,
	["BuffWatchInCombat"] = false,
	["HealBotBuffDropDown"] = {
		4, -- [1]
		4, -- [2]
		4, -- [3]
		4, -- [4]
		4, -- [5]
		4, -- [6]
		2, -- [7]
		2, -- [8]
		2, -- [9]
		["42"] = 4,
		["43"] = 4,
		["32"] = 4,
		["41"] = 4,
		["47"] = 2,
		["46"] = 4,
		["34"] = 4,
		["44"] = 4,
		["48"] = 2,
		["11"] = 4,
		["28"] = 2,
		["38"] = 2,
		["12"] = 4,
		["31"] = 4,
		["26"] = 4,
		["16"] = 4,
		["24"] = 4,
		["14"] = 4,
		["22"] = 4,
		["36"] = 4,
		["37"] = 2,
		["18"] = 2,
		["45"] = 4,
		["35"] = 4,
		["25"] = 4,
		["15"] = 4,
		["27"] = 2,
		["17"] = 2,
		["13"] = 4,
		["21"] = 4,
		["33"] = 4,
		["23"] = 4,
	},
	["HealBotBuffColG"] = {
		1, -- [1]
		1, -- [2]
		1, -- [3]
		1, -- [4]
		1, -- [5]
		1, -- [6]
		1, -- [7]
		1, -- [8]
	},
	["HealBotBuffColB"] = {
		1, -- [1]
		1, -- [2]
		1, -- [3]
		1, -- [4]
		1, -- [5]
		1, -- [6]
		1, -- [7]
		1, -- [8]
	},
	["HealBotBuffText"] = {
		"None", -- [1]
		"None", -- [2]
		"None", -- [3]
		"None", -- [4]
		"None", -- [5]
		"None", -- [6]
		"None", -- [7]
		"None", -- [8]
		"None", -- [9]
		["42"] = "None",
		["43"] = "None",
		["32"] = "None",
		["41"] = "None",
		["47"] = "None",
		["46"] = "None",
		["34"] = "None",
		["44"] = "None",
		["48"] = "None",
		["11"] = "None",
		["28"] = "None",
		["38"] = "None",
		["12"] = "None",
		["31"] = "None",
		["26"] = "None",
		["16"] = "None",
		["24"] = "None",
		["14"] = "None",
		["22"] = "None",
		["36"] = "None",
		["37"] = "None",
		["18"] = "None",
		["45"] = "None",
		["35"] = "None",
		["25"] = "None",
		["15"] = "None",
		["27"] = "None",
		["17"] = "None",
		["13"] = "None",
		["21"] = "None",
		["33"] = "None",
		["23"] = "None",
	},
	["HealBotBuffColR"] = {
		1, -- [1]
		1, -- [2]
		1, -- [3]
		1, -- [4]
		1, -- [5]
		1, -- [6]
		1, -- [7]
		1, -- [8]
	},
	["NoAuraWhenRested"] = false,
	["BuffWatch"] = true,
	["BuffWatchWhenGrouped"] = true,
	["ShortBuffTimer"] = 10,
}
HealBot_Config_Cures = {
	["CDCshownHB"] = true,
	["DebuffWatch"] = true,
	["HealBotDebuffText"] = {
		"None", -- [1]
		"None", -- [2]
		"None", -- [3]
		["42"] = "None",
		["43"] = "None",
		["41"] = "None",
		["32"] = "None",
		["11"] = "None",
		["21"] = "None",
		["31"] = "None",
		["22"] = "None",
		["13"] = "None",
		["12"] = "None",
		["33"] = "None",
		["23"] = "None",
	},
	["IgnoreFastDurDebuffs"] = true,
	["ShowDebuffWarning"] = true,
	["HealBot_CDCWarnRange_Screen"] = 2,
	["DebuffWatchInCombat"] = true,
	["IgnoreMovementDebuffs"] = true,
	["HealBot_CDCWarnRange_Aggro"] = 2,
	["IgnoreNonHarmfulDebuffs"] = true,
	["IgnoreClassDebuffs"] = true,
	["IgnoreFastDurDebuffsSecs"] = 2,
	["AlwaysShowBossStrict"] = true,
	["HealBot_CDCWarnRange_Bar"] = 3,
	["HealBot_Custom_Defuffs_All"] = {
		["Curse"] = false,
		["Disease"] = false,
		["Magic"] = false,
		["Poison"] = false,
	},
	["HealBot_CDCWarnRange_Sound"] = 3,
	["SoundDebuffPlay"] = "Tribal Bass Drum",
	["SoundDebuffWarning"] = false,
	["CDCshownAB"] = false,
	["IgnoreFriendDebuffs"] = true,
	["HealBotDebuffDropDown"] = {
		4, -- [1]
		4, -- [2]
		4, -- [3]
		["42"] = 4,
		["43"] = 4,
		["41"] = 4,
		["32"] = 4,
		["11"] = 4,
		["21"] = 4,
		["31"] = 4,
		["22"] = 4,
		["13"] = 4,
		["12"] = 4,
		["33"] = 4,
		["23"] = 4,
	},
	["IgnoreOnCooldownDebuffs"] = false,
	["DebuffWatchWhenGrouped"] = false,
	["CDCBarColour"] = {
		["Curse"] = {
			["R"] = 0.83,
			["G"] = 0.43,
			["B"] = 0.09,
		},
		["Disease"] = {
			["R"] = 0.55,
			["G"] = 0.19,
			["B"] = 0.7,
		},
		["Magic"] = {
			["R"] = 0.26,
			["G"] = 0.33,
			["B"] = 0.83,
		},
		["Poison"] = {
			["R"] = 0.12,
			["G"] = 0.46,
			["B"] = 0.24,
		},
	},
	["HealBotDebuffPriority"] = {
		["Disease"] = 7,
		["Custom"] = 10,
		["Poison"] = 8,
		["Magic"] = 5,
		["Curse"] = 6,
	},
	["AlwaysShowBoss"] = true,
}
