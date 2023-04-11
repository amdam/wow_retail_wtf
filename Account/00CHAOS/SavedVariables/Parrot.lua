
ParrotDB = {
	["namespaces"] = {
		["CombatEvents"] = {
			["profiles"] = {
				["Default"] = {
					["disabled"] = false,
					["dbver"] = 5,
				},
			},
		},
		["Debug"] = {
		},
		["Suppressions"] = {
		},
		["Display"] = {
		},
		["Cooldowns"] = {
		},
		["ScrollAreas"] = {
			["profiles"] = {
				["Default"] = {
					["areas"] = {
						["Notification"] = {
							["stickyDirection"] = "UP;CENTER",
							["direction"] = "UP;CENTER",
							["yOffset"] = 175,
							["xOffset"] = 0,
							["size"] = 150,
							["animationStyle"] = "Straight",
							["stickyAnimationStyle"] = "Pow",
						},
						["Outgoing"] = {
							["stickyDirection"] = "DOWN;LEFT",
							["direction"] = "DOWN;RIGHT",
							["yOffset"] = -30,
							["xOffset"] = 60,
							["size"] = 260,
							["animationStyle"] = "Parabola",
							["stickyAnimationStyle"] = "Pow",
						},
						["Incoming"] = {
							["stickyDirection"] = "DOWN;RIGHT",
							["direction"] = "DOWN;LEFT",
							["yOffset"] = -30,
							["iconSide"] = "RIGHT",
							["xOffset"] = -60,
							["size"] = 260,
							["animationStyle"] = "Parabola",
							["stickyAnimationStyle"] = "Pow",
						},
					},
				},
			},
		},
		["Triggers"] = {
			["profiles"] = {
				["Default"] = {
					["dbver"] = 9,
					["triggers2"] = {
						[1009] = {
							["conditions"] = {
								["Unit power"] = {
									{
										["powerType"] = 0,
									}, -- [1]
								},
							},
						},
					},
				},
			},
		},
	},
	["profileKeys"] = {
		["Everux - Bloodscalp"] = "Default",
		["Everux - Turalyon"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
		},
	},
}
