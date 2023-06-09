
OmniCCDB = {
	["profileKeys"] = {
		["Allevin - Turalyon"] = "Default",
		["Asaam - Turalyon"] = "Default",
		["Amdam - Turalyon"] = "Default",
		["Caldo - Turalyon"] = "Default",
		["Badam - Turalyon"] = "Default",
		["Kaydan - Turalyon"] = "Default",
		["Christoff - Turalyon"] = "Default",
		["Dreg - Turalyon"] = "Default",
		["Amdamn - Bloodscalp"] = "Default",
		["Abel - Turalyon"] = "Default",
		["Adamancy - Turalyon"] = "Default",
		["Adomic - Turalyon"] = "Default",
		["Furrys - Turalyon"] = "Default",
		["Adreya - Bloodscalp"] = "Default",
		["Adamian - Turalyon"] = "Default",
		["Christifur - Turalyon"] = "Default",
		["Aduum - Turalyon"] = "Default",
		["Artoc - Silvermoon"] = "Default",
		["Kayne - Turalyon"] = "Default",
		["Broddah - Doomhammer"] = "Default",
		["Svend - Turalyon"] = "Default",
		["Adamn - Turalyon"] = "Default",
		["Artoc - Zul'jin"] = "Default",
		["Adrid - Turalyon"] = "Default",
		["Shado - Turalyon"] = "Default",
	},
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "10.1.1",
	},
	["profiles"] = {
		["Default"] = {
			["rules"] = {
				{
					["patterns"] = {
						"LossOfControl", -- [1]
						"TotemFrame", -- [2]
					},
					["id"] = "Ignore",
					["priority"] = 1,
					["theme"] = "Ignore",
				}, -- [1]
				{
					["patterns"] = {
						"PlaterMainAuraIcon", -- [1]
						"PlaterSecondaryAuraIcon", -- [2]
						"ExtraIconRowIcon", -- [3]
					},
					["id"] = "Plater Nameplates Rule",
					["priority"] = 2,
					["theme"] = "Plater Nameplates Theme",
				}, -- [2]
			},
			["themes"] = {
				["Plater Nameplates Theme"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["soon"] = {
						},
						["minutes"] = {
						},
					},
				},
				["Default"] = {
					["textStyles"] = {
						["soon"] = {
							["scale"] = 1.20000001043081,
						},
						["seconds"] = {
							["scale"] = 0.800000004470348,
						},
						["minutes"] = {
							["scale"] = 1.00000000745058,
						},
						["hours"] = {
							["scale"] = 0.75000000372529,
						},
						["charging"] = {
							["r"] = 1,
							["scale"] = 0.650000002235174,
							["g"] = 0.98,
							["b"] = 0.4,
						},
						["controlled"] = {
							["scale"] = 1.50000001490116,
						},
					},
					["minDuration"] = 3,
					["spiralOpacity"] = 1.00999997742474,
					["version"] = "3.1.4",
				},
				["Ignore"] = {
					["textStyles"] = {
						["soon"] = {
						},
						["seconds"] = {
						},
						["minutes"] = {
						},
						["charging"] = {
							["r"] = 1,
							["scale"] = 0.65,
							["g"] = 0.98,
							["b"] = 0.4,
						},
					},
					["minDuration"] = 3,
					["enableText"] = false,
					["spiralOpacity"] = 1,
					["version"] = "3.1.4",
				},
			},
		},
	},
}
OmniCC4Config = {
	["version"] = "8.2.5",
	["groups"] = {
		{
			["id"] = "Ignore",
			["rules"] = {
				"LossOfControl", -- [1]
				"TotemFrame", -- [2]
			},
			["enabled"] = true,
		}, -- [1]
	},
	["engine"] = "AniUpdater",
	["groupSettings"] = {
		["base"] = {
			["styles"] = {
				["seconds"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 0.800000004470348,
					["g"] = 1,
					["b"] = 0.1,
				},
				["soon"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.20000001043081,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["minutes"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.00000000745058,
					["g"] = 1,
					["b"] = 1,
				},
				["hours"] = {
					["a"] = 1,
					["r"] = 0.7,
					["scale"] = 0.75000000372529,
					["g"] = 0.7,
					["b"] = 0.7,
				},
				["charging"] = {
					["a"] = 0.8,
					["r"] = 1,
					["scale"] = 0.650000002235174,
					["g"] = 0.98,
					["b"] = 0.4,
				},
				["controlled"] = {
					["scale"] = 1.50000001490116,
				},
			},
			["minDuration"] = 3,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["anchor"] = "CENTER",
			["mmSSDuration"] = 0,
			["enabled"] = true,
			["effect"] = "pulse",
			["spiralOpacity"] = 1.00999997742474,
			["yOff"] = 0,
			["xOff"] = 0,
			["version"] = "3.1.4",
			["fontFace"] = "Fonts\\FRIZQT__.TTF",
			["fontSize"] = 18,
			["minEffectDuration"] = 30,
			["minSize"] = 0.5,
			["scaleText"] = true,
		},
		["Ignore"] = {
			["fontSize"] = 18,
			["minDuration"] = 3,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["anchor"] = "CENTER",
			["mmSSDuration"] = 0,
			["enabled"] = false,
			["effect"] = "pulse",
			["spiralOpacity"] = 1,
			["yOff"] = 0,
			["xOff"] = 0,
			["version"] = "3.1.4",
			["scaleText"] = true,
			["minSize"] = 0.5,
			["minEffectDuration"] = 30,
			["styles"] = {
				["soon"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.5,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["minutes"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["seconds"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1,
					["g"] = 1,
					["b"] = 0.1,
				},
				["hours"] = {
					["a"] = 1,
					["r"] = 0.7,
					["scale"] = 0.75,
					["g"] = 0.7,
					["b"] = 0.7,
				},
				["charging"] = {
					["a"] = 0.8,
					["r"] = 1,
					["scale"] = 0.65,
					["g"] = 0.98,
					["b"] = 0.4,
				},
				["controlled"] = {
				},
			},
			["fontFace"] = "Fonts\\FRIZQT__.TTF",
		},
	},
}
