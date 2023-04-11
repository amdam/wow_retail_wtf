
OmniCCDB = {
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "9.0.7",
	},
	["profileKeys"] = {
		["Beefbutt - Silvermoon"] = "Default",
		["Mollyporph - Turalyon"] = "Default",
		["Releaf - Turalyon"] = "Default",
		["Asteriia - Turalyon"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["rules"] = {
				{
					["enabled"] = false,
					["patterns"] = {
						"Aura", -- [1]
						"Buff", -- [2]
						"Debuff", -- [3]
					},
					["name"] = "Auras",
					["id"] = "auras",
				}, -- [1]
				{
					["enabled"] = false,
					["patterns"] = {
						"Plate", -- [1]
					},
					["name"] = "Unit Nameplates",
					["id"] = "plates",
				}, -- [2]
				{
					["enabled"] = false,
					["patterns"] = {
						"ActionButton", -- [1]
					},
					["name"] = "ActionBars",
					["id"] = "actions",
				}, -- [3]
			},
			["themes"] = {
				["Default"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["soon"] = {
						},
						["minutes"] = {
						},
					},
					["spiralOpacity"] = 1.00999997742474,
					["minEffectDuration"] = 30.0000004470348,
					["minDuration"] = 2.00000002980232,
				},
			},
		},
	},
}
OmniCC4Config = {
	["version"] = "8.1.1",
	["groupSettings"] = {
		["base"] = {
			["minDuration"] = 2.00000002980232,
			["styles"] = {
				["seconds"] = {
				},
				["minutes"] = {
				},
				["soon"] = {
				},
				["hours"] = {
				},
				["charging"] = {
				},
				["controlled"] = {
				},
			},
			["tenthsDuration"] = 0,
			["minSize"] = 0.5,
			["minEffectDuration"] = 30.0000004470348,
			["mmSSDuration"] = 0,
			["spiralOpacity"] = 1.00999997742474,
		},
	},
	["groups"] = {
	},
}
