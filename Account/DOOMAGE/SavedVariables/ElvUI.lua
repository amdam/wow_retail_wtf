
ElvDB = {
	["global"] = {
		["general"] = {
			["smallerWorldMap"] = false,
			["autoScale"] = false,
			["UIScale"] = 0.6,
		},
		["uiScale"] = "0.69999998807907",
		["unitframe"] = {
			["aurafilters"] = {
				["Blacklist"] = {
					["spells"] = {
						[203539] = {
							["enable"] = true,
							["priority"] = 0,
						},
						[2479] = {
							["enable"] = true,
							["priority"] = 0,
						},
						[1459] = {
							["enable"] = true,
							["priority"] = 0,
						},
					},
				},
			},
			["ChannelTicks"] = {
				["Penance"] = 3,
			},
			["aurawatch"] = {
				["PALADIN"] = {
					[1044] = {
						["style"] = "texturedIcon",
					},
					[200025] = {
						["style"] = "texturedIcon",
					},
					[287280] = {
						["style"] = "texturedIcon",
					},
					[156910] = {
						["style"] = "texturedIcon",
					},
					[157047] = {
						["style"] = "texturedIcon",
					},
					[1022] = {
						["style"] = "texturedIcon",
					},
					[223306] = {
						["style"] = "texturedIcon",
					},
					[53563] = {
						["style"] = "texturedIcon",
					},
					[204018] = {
						["style"] = "texturedIcon",
					},
					[6940] = {
						["style"] = "texturedIcon",
					},
				},
			},
		},
		["datatexts"] = {
			["customPanels"] = {
				["BuiMiddleDTPanel"] = {
					["numPoints"] = 4,
					["enable"] = true,
					["width"] = 414,
					["height"] = 19,
					["tooltipXOffset"] = 3,
					["benikuiStyle"] = false,
				},
			},
			["settings"] = {
				["Currencies"] = {
					["tooltipData"] = {
						[5] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[10] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[14] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[27] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[38] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[51] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[58] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[60] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
					},
				},
			},
		},
		["nameplates"] = {
			["filters"] = {
				["Boss"] = {
					["triggers"] = {
						["nameplateType"] = {
							["neutral"] = false,
							["healer"] = false,
						},
					},
				},
			},
		},
	},
	["DisabledAddOns"] = {
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Abel - Turalyon"] = {
					"Healing Layout", -- [1]
					"Healing Layout", -- [2]
					"Normal Layout", -- [3]
					["enabled"] = true,
				},
				["Furrys - Turalyon"] = {
					"Normal Layout", -- [1]
					"Healing Layout", -- [2]
					"Normal Layout", -- [3]
					["enabled"] = true,
				},
				["Christoff - Turalyon"] = {
					"Normal Layout", -- [1]
					"Normal Layout", -- [2]
					"Normal Layout", -- [3]
					"Healing Layout", -- [4]
					["enabled"] = true,
				},
				["Dreg - Turalyon"] = {
					"Normal Layout", -- [1]
					"Normal Layout", -- [2]
					"Healing Layout", -- [3]
					["enabled"] = true,
				},
				["Caldo - Turalyon"] = {
					"Healing Layout", -- [1]
					"Healing Layout", -- [2]
					"Normal Layout", -- [3]
					["enabled"] = true,
				},
				["Amdam - Turalyon"] = {
					"Healing Layout", -- [1]
					"Normal Layout", -- [2]
					"Normal Layout", -- [3]
					["enabled"] = true,
				},
			},
		},
	},
	["class"] = {
		["Zul'jin"] = {
			["Artoc"] = "HUNTER",
		},
		["Doomhammer"] = {
			["Broddah"] = "PALADIN",
		},
		["Turalyon"] = {
			["Amdam"] = "PALADIN",
			["Kaydan"] = "DEMONHUNTER",
			["Kayne"] = "DEATHKNIGHT",
			["Allevin"] = "WARLOCK",
			["Adamancy"] = "MAGE",
			["Adamian"] = "EVOKER",
			["Furrys"] = "MONK",
			["Adomic"] = "DEMONHUNTER",
			["Aduum"] = "SHAMAN",
			["Christoff"] = "DRUID",
			["Abel"] = "PRIEST",
			["Adris"] = "DEMONHUNTER",
			["Christifur"] = "WARLOCK",
			["Dreg"] = "SHAMAN",
			["Adrid"] = "HUNTER",
			["Badam"] = "WARRIOR",
			["Svend"] = "WARRIOR",
			["Caris"] = "DRUID",
			["Asaam"] = "DEATHKNIGHT",
			["Shado"] = "ROGUE",
			["Adamn"] = "ROGUE",
			["Caldo"] = "PRIEST",
		},
		["Silvermoon"] = {
			["Artoc"] = "HUNTER",
		},
		["Bloodscalp"] = {
			["Adreya"] = "DEATHKNIGHT",
			["Amdamn"] = "PRIEST",
		},
	},
	["profiles"] = {
		["Healing Layout"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["width"] = 412,
					["height"] = 6,
					["font"] = "Expressway",
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["azerite"] = {
					["orientation"] = "VERTICAL",
					["height"] = 303,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 2,
			["general"] = {
				["font"] = "Expressway",
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["objectiveFrameHeight"] = 750,
				["minimap"] = {
					["locationText"] = "HIDE",
					["size"] = 150,
				},
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Expressway",
				["panelColor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["panelSnapLeftID"] = 1,
				["font"] = "Expressway",
				["tabFontSize"] = 11,
				["panelHeight"] = 300,
				["panelColorConverted"] = true,
				["panelWidthRight"] = 400,
				["timeStampFormat"] = "%H:%M ",
				["panelBackdrop"] = "LEFT",
			},
			["dbConverted"] = 13.29,
			["layoutSet"] = "dpsCaster",
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-512,407",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-323,201",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["ElvUF_Raid3Mover"] = "BOTTOM,UIParent,BOTTOM,0,68",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["TargetPowerBarMover"] = "BOTTOM,UIParent,BOTTOM,324,275",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,490,373",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,490,373",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PlayerPowerBarMover"] = "BOTTOM,UIParent,BOTTOM,-325,275",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-325,229",
				["ElvUF_RaidpetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-278,69",
				["PlayerPortraitMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,582,229",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,-583,344",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-89,-317",
				["ElvUF_PetMover"] = "BOTTOM,UIParent,BOTTOM,-268,175",
				["ClassBarMover"] = "BOTTOM,UIParent,BOTTOM,0,72",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-338,228",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,324,229",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,66",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,36",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,-694,176",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["TargetPortraitMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,-582,229",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-459",
				["ElvUF_Raid1Mover"] = "BOTTOM,UIParent,BOTTOM,0,70",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-205,4",
				["ElvAB_2"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,324,211",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,205,4",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,418,24",
				["ElvAB_3"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,856,93",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ExperienceBarMover"] = "BOTTOM,UIParent,BOTTOM,0,65",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,801",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-333,37",
				["ElvUF_PartyMover"] = "BOTTOM,UIParent,BOTTOM,0,229",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
			},
			["convertPages"] = true,
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["fontSize"] = 10,
				["headerFontSize"] = 11,
			},
			["unitframe"] = {
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["font"] = "Bui Tukui",
				["statusbar"] = "BuiFlat",
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
							["iconXOffset"] = 2,
						},
						["width"] = 210,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 58,
						["buffs"] = {
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["anchorPoint"] = "CENTER",
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["threatStyle"] = "GLOW",
						["width"] = 110,
					},
					["party"] = {
						["debuffs"] = {
							["countFontSize"] = 14,
							["fontSize"] = 14,
							["position"] = "RIGHT",
							["sizeOverride"] = 0,
							["attachTo"] = "HEALTH",
							["anchorPoint"] = "TOPRIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_DOWN",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["attachTo"] = "InfoPanel",
							["xOffset"] = -2,
							["size"] = 12,
						},
						["targetsGroup"] = {
							["disableFocusGlow"] = false,
							["disableTargetGlow"] = false,
							["height"] = 16,
							["width"] = 70,
							["disableMouseoverGlow"] = false,
							["yOffset"] = -12,
						},
						["power"] = {
							["position"] = "LEFT",
							["height"] = 8,
							["xOffset"] = 2,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 80,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 2,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["position"] = "TOPLEFT",
						},
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 18,
							["xOffset"] = 2,
							["yOffset"] = -10,
						},
						["height"] = 50,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["disableFocusGlow"] = false,
							["width"] = 60,
							["disableTargetGlow"] = false,
							["height"] = 18,
							["xOffset"] = 0,
							["name"] = {
								["position"] = "LEFT",
							},
							["disableMouseoverGlow"] = false,
							["yOffset"] = -1,
						},
						["health"] = {
							["xOffset"] = 0,
							["yOffset"] = -2,
							["text_format"] = "[health:current-percent]",
							["position"] = "RIGHT",
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["height"] = 16,
							["enable"] = false,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["attachTextTo"] = "InfoPanel",
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["detachedWidth"] = 240,
							["height"] = 6,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["xOffset"] = 2,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["frequentUpdates"] = true,
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["fontSize"] = 14,
							["enable"] = true,
							["sizeOverride"] = 26,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid1"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["size"] = 20,
							["yOffset"] = 12,
						},
						["numGroups"] = 6,
						["width"] = 78,
						["infoPanel"] = {
							["height"] = 15,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["yOffset"] = 0,
							["position"] = "CENTER",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["verticalSpacing"] = 5,
						["height"] = 25,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
							["yOffset"] = 0,
						},
						["colorOverride"] = "FORCE_ON",
					},
					["raidpet"] = {
						["enable"] = true,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["xOffset"] = 4,
							["height"] = 6,
							["detachedWidth"] = 240,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -25,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["orientation"] = "LEFT",
						["height"] = 34,
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["raid3"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["enable"] = true,
							["font"] = "Bui Visitor1",
							["size"] = 20,
							["yOffset"] = 4,
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 78,
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["height"] = 23,
						["verticalSpacing"] = 5,
						["health"] = {
							["yOffset"] = 1,
						},
						["roleIcon"] = {
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 10,
							["enable"] = true,
							["yOffset"] = 0,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["portrait"] = {
							["overlay"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["font"] = "Expressway",
				["fontSize"] = 11,
				["battlePanel"] = {
					["BuiMiddleDTPanel"] = {
						"", -- [1]
						"", -- [2]
						"", -- [3]
						"", -- [4]
					},
				},
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiMiddleDTPanel"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						"", -- [4]
						["enable"] = false,
						["battleground"] = false,
					},
					["BuiRightChatDTPanel"] = {
						["left"] = "Spec Switch (BenikUI)",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["middle"] = "Orderhall (BenikUI)",
						["left"] = "Attack Power",
					},
					["LeftChatDataPanel"] = {
						[3] = "BuiMail",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonSize"] = 26,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonSpacing"] = 4,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonSpacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonSize"] = 30,
				},
				["bar2"] = {
					["buttonSize"] = 18,
				},
				["bar1"] = {
					["buttonSpacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonSize"] = 30,
				},
				["bar5"] = {
					["buttonSize"] = 30,
					["buttons"] = 12,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 3,
					["buttonSpacing"] = 4,
				},
				["font"] = "Bui Visitor1",
				["bar4"] = {
					["widthMult"] = 2,
					["buttonSpacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonSize"] = 26,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["buttons"] = 11,
				},
				["stanceBar"] = {
					["buttonSize"] = 24,
				},
				["barPet"] = {
					["buttonSize"] = 22,
					["backdropSpacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["buttonSpacing"] = 4,
				},
				["backdropSpacingConverted"] = true,
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["dashboards"] = {
					["DashboardDBConverted"] = "4.27",
				},
				["datatexts"] = {
					["middle"] = {
						["width"] = 412,
						["backdrop"] = true,
						["transparent"] = false,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["v11NamePlateReset"] = true,
		},
		["Christifur - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["width"] = 412,
					["font"] = "Expressway",
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["fontSize"] = 11,
				["backdropcolor"] = {
					["r"] = 0.025,
					["g"] = 0.025,
					["b"] = 0.025,
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["minimap"] = {
					["locationText"] = "HIDE",
					["icons"] = {
						["classHall"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["size"] = 150,
				},
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["objectiveFrameHeight"] = 750,
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,234",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,241",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,907,141",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["font"] = "Expressway",
					["fontSize"] = 9,
				},
				["headerFontSize"] = 11,
				["font"] = "Expressway",
				["smallTextFontSize"] = 11,
			},
			["hideTutorial"] = true,
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["nameplates"] = {
				["fontSize"] = 10,
				["statusbar"] = "BuiFlat",
				["font"] = "Expressway",
				["displayStyle"] = "BLIZZARD",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
			["unitframe"] = {
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.14901960784314,
						["g"] = 0.003921568627451,
						["b"] = 0.003921568627451,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["statusbar"] = "BuiFlat",
				["font"] = "Bui Tukui",
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["width"] = 110,
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["yOffset"] = 15,
							["attachTo"] = "InfoPanel",
							["size"] = 12,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["xOffset"] = 2,
							["position"] = "LEFT",
							["enable"] = false,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["targetsGroup"] = {
							["height"] = 16,
							["yOffset"] = -12,
							["width"] = 70,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
							["text_format"] = "[health:current-percent]",
							["yOffset"] = -2,
						},
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
							["yOffset"] = -1,
							["xOffset"] = 0,
							["width"] = 60,
						},
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["yOffset"] = 16,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["yOffset"] = 4,
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["roleIcon"] = {
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["enable"] = true,
							["size"] = 10,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["health"] = {
							["yOffset"] = 1,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 16,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachFromFrame"] = true,
							["detachedWidth"] = 240,
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["height"] = 6,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["orientation"] = "LEFT",
						["buffs"] = {
							["sizeOverride"] = 26,
							["fontSize"] = 14,
							["yOffset"] = 1,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["size"] = 12,
						},
						["health"] = {
							["position"] = "CENTER",
							["yOffset"] = 0,
						},
						["width"] = 78,
						["height"] = 40,
						["verticalSpacing"] = 5,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["attachTextTo"] = "InfoPanel",
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["xOffset"] = 2,
							["detachedWidth"] = 240,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["height"] = 6,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["fontSize"] = 14,
							["enable"] = true,
							["sizeOverride"] = 26,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconXOffset"] = 2,
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
						},
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "Orderhall (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Crit Chance",
						["left"] = "Haste",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["buttonspacing"] = 4,
					["enabled"] = true,
					["backdropSpacing"] = 3,
					["buttonsize"] = 30,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["backdropSpacingConverted"] = true,
				["fontOutline"] = "MONOCROMEOUTLINE",
				["barPet"] = {
					["buttonsize"] = 22,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["backdropSpacing"] = 4,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["bar4"] = {
					["buttonspacing"] = 4,
					["widthMult"] = 2,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
			},
			["layoutSet"] = "dpsCaster",
			["chat"] = {
				["fontSize"] = 10,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Expressway",
				["panelColor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 208,
				["timeStampFormat"] = "%H:%M ",
				["panelWidthRight"] = 400,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["flightMode"] = false,
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 412,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Kayne - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["textYoffset"] = 10,
					["font"] = "Expressway",
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["width"] = 412,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["font"] = "Expressway",
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["backdropcolor"] = {
					["r"] = 0.025,
					["g"] = 0.025,
					["b"] = 0.025,
				},
				["objectiveFrameHeight"] = 750,
				["minimap"] = {
					["icons"] = {
						["classHall"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["locationText"] = "HIDE",
					["size"] = 150,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,234",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,241",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,907,141",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["font"] = "Expressway",
					["fontSize"] = 9,
				},
				["smallTextFontSize"] = 11,
				["font"] = "Expressway",
				["headerFontSize"] = 11,
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["nameplates"] = {
				["fontSize"] = 10,
				["font"] = "Expressway",
				["statusbar"] = "BuiFlat",
				["displayStyle"] = "BLIZZARD",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
			["unitframe"] = {
				["filters"] = {
					["aurawatch"] = {
					},
				},
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["castReactionColor"] = true,
					["transparentAurabars"] = true,
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.14901960784314,
						["g"] = 0.003921568627451,
						["b"] = 0.003921568627451,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["statusbar"] = "BuiFlat",
				["font"] = "Bui Tukui",
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["width"] = 110,
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["castbar"] = {
							["height"] = 28,
							["format"] = "REMAININGMAX",
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["width"] = 240,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 6,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["detachedWidth"] = 240,
							["xOffset"] = 2,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["frequentUpdates"] = true,
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["fontSize"] = 14,
							["enable"] = true,
							["sizeOverride"] = 26,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 12,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["yOffset"] = 0,
							["position"] = "CENTER",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
							["yOffset"] = 0,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
							["iconXOffset"] = 2,
						},
						["width"] = 210,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["size"] = 20,
							["yOffset"] = 4,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["health"] = {
							["yOffset"] = 1,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 10,
							["enable"] = true,
							["yOffset"] = 0,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["height"] = 16,
							["enable"] = false,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -25,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["orientation"] = "LEFT",
						["buffs"] = {
							["sizeOverride"] = 26,
							["fontSize"] = 14,
							["yOffset"] = 1,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["threatStyle"] = "GLOW",
							["height"] = 6,
							["detachedWidth"] = 240,
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["attachTextTo"] = "InfoPanel",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["size"] = 12,
							["attachTo"] = "InfoPanel",
							["yOffset"] = 15,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["xOffset"] = 2,
							["position"] = "LEFT",
							["enable"] = false,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["health"] = {
							["xOffset"] = 0,
							["yOffset"] = -2,
							["text_format"] = "[health:current-percent]",
							["position"] = "RIGHT",
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = 16,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["position"] = "TOPLEFT",
						},
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["xOffset"] = 0,
							["width"] = 60,
							["height"] = 18,
							["yOffset"] = -1,
						},
						["targetsGroup"] = {
							["height"] = 16,
							["width"] = 70,
							["yOffset"] = -12,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
						["portrait"] = {
							["overlay"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["middle"] = "Orderhall (BenikUI)",
						["left"] = "Attack Power",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Crit Chance",
						["middle"] = "Mastery",
						["left"] = "Haste",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 3,
					["buttonsize"] = 30,
					["enabled"] = true,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["bar4"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
					["widthMult"] = 2,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["buttonsize"] = 22,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdropSpacing"] = 4,
					["backdrop"] = false,
				},
				["backdropSpacingConverted"] = true,
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 412,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Expressway",
				["panelColor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 208,
				["timeStampFormat"] = "%H:%M ",
				["panelWidthRight"] = 400,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
			["layoutSet"] = "dpsCaster",
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Sterbodhehm - Turalyon"] = {
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1093",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Beebo - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["textYoffset"] = 10,
					["font"] = "Expressway",
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["width"] = 412,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["fontSize"] = 11,
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["minimap"] = {
					["locationText"] = "HIDE",
					["size"] = 150,
				},
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["objectiveFrameHeight"] = 750,
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["vendorGrays"] = true,
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,181",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,201",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,97",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,269",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,907,141",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["font"] = "Expressway",
				["headerFontSize"] = 11,
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 10,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Expressway",
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 208,
				["panelWidthRight"] = 400,
				["timeStampFormat"] = "%H:%M ",
				["panelBackdrop"] = "LEFT",
			},
			["nameplates"] = {
				["statusbar"] = "BuiFlat",
				["displayStyle"] = "BLIZZARD",
				["font"] = "Expressway",
				["fontSize"] = 10,
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["alwaysShow"] = true,
					},
				},
			},
			["unitframe"] = {
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["font"] = "Bui Tukui",
				["statusbar"] = "BuiFlat",
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconXOffset"] = 2,
							["iconAttached"] = false,
							["iconPosition"] = "RIGHT",
						},
						["height"] = 58,
						["buffs"] = {
							["xOffset"] = 16,
							["anchorPoint"] = "CENTER",
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["size"] = 12,
							["attachTo"] = "InfoPanel",
							["yOffset"] = 15,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["xOffset"] = 2,
							["position"] = "LEFT",
							["enable"] = false,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = 16,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["position"] = "TOPLEFT",
						},
						["health"] = {
							["xOffset"] = 0,
							["yOffset"] = -2,
							["text_format"] = "[health:current-percent]",
							["position"] = "RIGHT",
						},
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
							["yOffset"] = -1,
							["xOffset"] = 0,
							["width"] = 60,
						},
						["targetsGroup"] = {
							["anchorPoint"] = "RIGHT",
							["height"] = 16,
							["yOffset"] = -12,
							["xOffset"] = 1,
							["width"] = 70,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["size"] = 20,
							["yOffset"] = 4,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["health"] = {
							["yOffset"] = 1,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["position"] = "RIGHT",
							["enable"] = true,
							["size"] = 10,
							["xOffset"] = -2,
							["yOffset"] = 0,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["castbar"] = {
							["iconSize"] = 26,
							["enable"] = false,
							["height"] = 16,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
						},
						["castbar"] = {
							["iconXOffset"] = 10,
							["iconPosition"] = "RIGHT",
							["icon"] = false,
							["width"] = 240,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -25,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["orientation"] = "LEFT",
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["threatStyle"] = "GLOW",
							["detachedWidth"] = 240,
							["xOffset"] = 4,
							["height"] = 6,
							["text_format"] = "[powercolor][power:current-percent]",
							["attachTextTo"] = "InfoPanel",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 12,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["health"] = {
							["yOffset"] = 0,
							["position"] = "CENTER",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
							["yOffset"] = 0,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["detachFromFrame"] = true,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["detachedWidth"] = 240,
							["xOffset"] = 2,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["height"] = 6,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["fontSize"] = 14,
							["noDuration"] = false,
							["enable"] = true,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["width"] = 110,
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["left"] = "Spec Switch (BenikUI)",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "Orderhall (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Crit Chance",
						["left"] = "Haste",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 30,
					["backdropSpacing"] = 3,
					["enabled"] = true,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["bar4"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 26,
					["backdropSpacing"] = 4,
					["widthMult"] = 2,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["barPet"] = {
					["buttonsize"] = 22,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["backdropSpacing"] = 4,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "dpsCaster",
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["flightMode"] = false,
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["width"] = 412,
						["backdrop"] = true,
						["transparent"] = false,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Badam - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["width"] = 412,
					["height"] = 6,
					["font"] = "Expressway",
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["azerite"] = {
					["orientation"] = "VERTICAL",
					["height"] = 231,
					["width"] = 7,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["objectiveFrameHeight"] = 750,
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["minimap"] = {
					["locationText"] = "HIDE",
					["icons"] = {
						["classHall"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["size"] = 150,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,136",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,234",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,146",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,241",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-16,-228",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,4",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,359,237",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-85",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,932,136",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Expressway",
				},
				["headerFontSize"] = 11,
				["font"] = "Expressway",
				["smallTextFontSize"] = 11,
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["timeStampFormat"] = "%H:%M ",
				["panelColor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 208,
				["tabFont"] = "Expressway",
				["panelWidthRight"] = 400,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
			["nameplates"] = {
				["fontSize"] = 10,
				["displayStyle"] = "BLIZZARD",
				["font"] = "Expressway",
				["statusbar"] = "BuiFlat",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["threatStyle"] = "GLOW",
						["width"] = 110,
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["yOffset"] = 15,
							["attachTo"] = "InfoPanel",
							["size"] = 12,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["xOffset"] = 2,
							["position"] = "LEFT",
							["enable"] = false,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["targetsGroup"] = {
							["height"] = 16,
							["yOffset"] = -12,
							["width"] = 70,
						},
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["yOffset"] = 16,
						},
						["verticalSpacing"] = 30,
						["height"] = 40,
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["xOffset"] = 0,
							["yOffset"] = -1,
							["height"] = 18,
							["width"] = 60,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
							["text_format"] = "[health:current-percent]",
							["yOffset"] = -2,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["size"] = 12,
						},
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["size"] = 20,
						},
						["numGroups"] = 6,
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["width"] = 78,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["health"] = {
							["position"] = "CENTER",
							["yOffset"] = 0,
						},
						["colorOverride"] = "FORCE_ON",
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["detachFromFrame"] = true,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["xOffset"] = 2,
							["height"] = 6,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachedWidth"] = 240,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["fontSize"] = 14,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["yOffset"] = 4,
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["roleIcon"] = {
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["enable"] = true,
							["size"] = 10,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["health"] = {
							["yOffset"] = 1,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 16,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachFromFrame"] = true,
							["detachedWidth"] = 240,
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["height"] = 6,
						},
						["width"] = 240,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["orientation"] = "LEFT",
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["castbar"] = {
							["iconXOffset"] = 2,
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
						},
						["width"] = 210,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["power"] = {
							["height"] = 5,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
					},
				},
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "BuiFlat",
				["smoothbars"] = true,
				["font"] = "Bui Tukui",
				["filters"] = {
					["aurawatch"] = {
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["middle"] = "Orderhall (BenikUI)",
						["left"] = "Attack Power",
					},
					["BuiRightChatDTPanel"] = {
						["left"] = "Time",
						["middle"] = "Bags",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["buttonspacing"] = 4,
					["enabled"] = true,
					["buttonsize"] = 30,
					["backdropSpacing"] = 3,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["backdropSpacingConverted"] = true,
				["fontOutline"] = "MONOCROMEOUTLINE",
				["barPet"] = {
					["buttonsize"] = 22,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["backdropSpacing"] = 4,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["bar4"] = {
					["buttonspacing"] = 4,
					["widthMult"] = 2,
					["buttonsize"] = 26,
					["backdropSpacing"] = 4,
				},
			},
			["layoutSet"] = "dpsCaster",
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["width"] = 412,
						["backdrop"] = true,
						["transparent"] = false,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Kaydan - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["textYoffset"] = 10,
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["font"] = "Expressway",
					["textSize"] = 10,
					["width"] = 412,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["objectiveFrameHeight"] = 750,
				["backdropcolor"] = {
					["r"] = 0.025,
					["g"] = 0.025,
					["b"] = 0.025,
				},
				["minimap"] = {
					["icons"] = {
						["classHall"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["locationText"] = "HIDE",
					["size"] = 150,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,136",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["ElvUF_Raid3Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,241",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvUF_Raid1Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,234",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_3"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,932,136",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,146",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
			},
			["convertPages"] = true,
			["v11NamePlateReset"] = true,
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
					["fontSize"] = 9,
				},
				["headerFontSize"] = 11,
				["fontSize"] = 10,
				["smallTextFontSize"] = 11,
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["timeStampFormat"] = "%H:%M ",
				["panelColor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["panelSnapLeftID"] = 1,
				["font"] = "Expressway",
				["tabFont"] = "Expressway",
				["panelHeight"] = 208,
				["panelColorConverted"] = true,
				["panelWidthRight"] = 400,
				["tabFontSize"] = 11,
				["panelBackdrop"] = "LEFT",
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["dbConverted"] = 13.29,
			["datatexts"] = {
				["fontSize"] = 11,
				["battlePanel"] = {
					["BuiMiddleDTPanel"] = {
						"", -- [1]
						"", -- [2]
						"", -- [3]
						"", -- [4]
					},
				},
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["left"] = "Spec Switch (BenikUI)",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "Orderhall (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						"", -- [4]
						["enable"] = false,
						["battleground"] = false,
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonSpacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonSize"] = 26,
				},
				["bar6"] = {
					["enabled"] = true,
					["backdropSpacing"] = 4,
					["buttonSpacing"] = 4,
					["buttonSize"] = 30,
				},
				["bar2"] = {
					["buttonSize"] = 18,
				},
				["bar1"] = {
					["backdropSpacing"] = 4,
					["buttonSpacing"] = 4,
					["buttonSize"] = 30,
				},
				["bar5"] = {
					["buttons"] = 12,
					["buttonSpacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 3,
					["buttonSize"] = 30,
				},
				["font"] = "Bui Visitor1",
				["backdropSpacingConverted"] = true,
				["fontOutline"] = "MONOCROMEOUTLINE",
				["barPet"] = {
					["buttonSize"] = 22,
					["backdropSpacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["buttonSpacing"] = 4,
				},
				["stanceBar"] = {
					["buttonSize"] = 24,
				},
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["buttons"] = 11,
				},
				["bar4"] = {
					["widthMult"] = 2,
					["backdropSpacing"] = 4,
					["buttonSpacing"] = 4,
					["buttonSize"] = 26,
				},
			},
			["layoutSet"] = "dpsCaster",
			["unitframe"] = {
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.14901960784314,
						["g"] = 0.003921568627451,
						["b"] = 0.003921568627451,
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "BuiFlat",
				["smoothbars"] = true,
				["font"] = "Bui Tukui",
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["threatStyle"] = "GLOW",
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["width"] = 110,
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["yOffset"] = 15,
							["attachTo"] = "InfoPanel",
							["size"] = 12,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "LEFT",
							["height"] = 8,
							["xOffset"] = 2,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["targetsGroup"] = {
							["disableFocusGlow"] = false,
							["disableTargetGlow"] = false,
							["height"] = 16,
							["width"] = 70,
							["disableMouseoverGlow"] = false,
							["yOffset"] = -12,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
							["text_format"] = "[health:current-percent]",
							["yOffset"] = -2,
						},
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 18,
							["xOffset"] = 2,
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["disableFocusGlow"] = false,
							["width"] = 60,
							["disableTargetGlow"] = false,
							["xOffset"] = 0,
							["height"] = 18,
							["name"] = {
								["position"] = "LEFT",
							},
							["disableMouseoverGlow"] = false,
							["yOffset"] = -1,
						},
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["yOffset"] = 16,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["detachedWidth"] = 240,
							["height"] = 6,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["fontSize"] = 14,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 2,
							["iconAttached"] = false,
						},
						["width"] = 210,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["height"] = 58,
						["buffs"] = {
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["anchorPoint"] = "CENTER",
							["yOffset"] = 0,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
					},
					["raid1"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["numGroups"] = 6,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["yOffset"] = 12,
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["size"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["health"] = {
							["position"] = "CENTER",
							["yOffset"] = 0,
						},
						["width"] = 78,
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 16,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["castbar"] = {
							["iconXOffset"] = 10,
							["iconPosition"] = "RIGHT",
							["icon"] = false,
							["width"] = 240,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachFromFrame"] = true,
							["xOffset"] = 4,
							["height"] = 6,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachedWidth"] = 240,
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["orientation"] = "LEFT",
						["buffs"] = {
							["sizeOverride"] = 26,
							["fontSize"] = 14,
							["yOffset"] = 1,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["raid3"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["enable"] = true,
							["font"] = "Bui Visitor1",
							["yOffset"] = 4,
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["roleIcon"] = {
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["enable"] = true,
							["size"] = 10,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["health"] = {
							["yOffset"] = 1,
						},
						["width"] = 78,
					},
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
				},
			},
			["benikui"] = {
				["databars"] = {
					["artifact"] = {
						["notifiers"] = {
							["position"] = "RIGHT",
						},
						["buttonStyle"] = "DEFAULT",
					},
					["experience"] = {
						["buiStyle"] = false,
					},
					["honor"] = {
						["notifiers"] = {
							["position"] = "LEFT",
						},
					},
				},
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["dashboards"] = {
					["DashboardDBConverted"] = "4.35",
				},
				["installed"] = true,
				["datatexts"] = {
					["middle"] = {
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 412,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
		},
		["Christoff - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["width"] = 412,
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["font"] = "Expressway",
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["font"] = "Expressway",
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["objectiveFrameHeight"] = 750,
				["minimap"] = {
					["icons"] = {
						["classHall"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["locationText"] = "HIDE",
					["size"] = 150,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,136",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,234",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,146",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,241",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-16,-228",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-85",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,932,136",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["timeStampFormat"] = "%H:%M ",
				["panelColor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 208,
				["tabFont"] = "Expressway",
				["panelWidthRight"] = 400,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["datatexts"] = {
					["middle"] = {
						["width"] = 412,
						["backdrop"] = true,
						["transparent"] = false,
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["unitframe"] = {
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Bui Tukui",
				["statusbar"] = "BuiFlat",
				["smoothbars"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["detachedWidth"] = 240,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["height"] = 6,
							["xOffset"] = 2,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["frequentUpdates"] = true,
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["fontSize"] = 14,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["portrait"] = {
							["overlay"] = true,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
							["iconXOffset"] = 2,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["size"] = 12,
							["attachTo"] = "InfoPanel",
							["yOffset"] = 15,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = 16,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["position"] = "TOPLEFT",
						},
						["health"] = {
							["xOffset"] = 0,
							["yOffset"] = -2,
							["text_format"] = "[health:current-percent]",
							["position"] = "RIGHT",
						},
						["verticalSpacing"] = 30,
						["height"] = 40,
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["xOffset"] = 0,
							["yOffset"] = -1,
							["height"] = 18,
							["width"] = 60,
						},
						["targetsGroup"] = {
							["height"] = 16,
							["yOffset"] = -12,
							["width"] = 70,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["size"] = 20,
							["yOffset"] = 4,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["health"] = {
							["yOffset"] = 1,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 10,
							["enable"] = true,
							["yOffset"] = 0,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["castbar"] = {
							["height"] = 16,
							["enable"] = false,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
						},
						["castbar"] = {
							["iconXOffset"] = 10,
							["iconPosition"] = "RIGHT",
							["icon"] = false,
							["width"] = 240,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["width"] = 240,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -25,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["height"] = 34,
						["orientation"] = "LEFT",
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachedWidth"] = 240,
							["height"] = 6,
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["numGroups"] = 6,
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 12,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["health"] = {
							["yOffset"] = 0,
							["position"] = "CENTER",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
							["yOffset"] = 0,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["width"] = 110,
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "Orderhall (BenikUI)",
					},
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Time",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 30,
					["backdropSpacing"] = 3,
					["enabled"] = true,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["bar4"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 26,
					["backdropSpacing"] = 4,
					["widthMult"] = 2,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdropSpacing"] = 4,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["buttonsize"] = 22,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "dpsCaster",
			["nameplates"] = {
				["fontSize"] = 10,
				["displayStyle"] = "BLIZZARD",
				["statusbar"] = "BuiFlat",
				["font"] = "Expressway",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["font"] = "Expressway",
				["headerFontSize"] = 11,
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Adreya - Bloodscalp"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["textYoffset"] = 10,
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["font"] = "Expressway",
					["textSize"] = 10,
					["width"] = 412,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["objectiveFrameHeight"] = 750,
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["minimap"] = {
					["locationText"] = "HIDE",
					["size"] = 150,
				},
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["dbConverted"] = 13.06,
			["layoutSet"] = "dpsCaster",
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["ElvUF_Raid3Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,269",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,200",
				["PetAB"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-150,177",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,2",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,97",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-56,346",
				["ElvUF_Raid1Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,180",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,60",
				["ElvAB_2"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-256,2",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,0,22",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,907,141",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,257,2",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-56,-397",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
			},
			["convertPages"] = true,
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Expressway",
				},
				["headerFontSize"] = 11,
				["fontSize"] = 10,
				["smallTextFontSize"] = 11,
			},
			["unitframe"] = {
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["castReactionColor"] = true,
					["transparentAurabars"] = true,
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "BuiFlat",
				["font"] = "Bui Tukui",
				["smoothbars"] = true,
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
					["raid3"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["enable"] = true,
							["font"] = "Bui Visitor1",
							["yOffset"] = 4,
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["roleIcon"] = {
							["position"] = "RIGHT",
							["enable"] = true,
							["yOffset"] = 0,
							["xOffset"] = -2,
							["size"] = 10,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["health"] = {
							["yOffset"] = 1,
						},
						["width"] = 78,
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["power"] = {
							["height"] = 5,
						},
						["height"] = 58,
						["buffs"] = {
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["anchorPoint"] = "CENTER",
							["yOffset"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 2,
							["iconAttached"] = false,
						},
						["width"] = 210,
					},
					["raid1"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["yOffset"] = 12,
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["size"] = 12,
						},
						["health"] = {
							["position"] = "CENTER",
							["yOffset"] = 0,
						},
						["verticalSpacing"] = 5,
						["height"] = 40,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["width"] = 78,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 16,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachFromFrame"] = true,
							["detachedWidth"] = 240,
							["height"] = 6,
							["text_format"] = "[powercolor][power:current-percent]",
							["xOffset"] = 4,
						},
						["smartAuraDisplay"] = "DISABLED",
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["orientation"] = "LEFT",
						["height"] = 34,
						["buffs"] = {
							["sizeOverride"] = 26,
							["fontSize"] = 14,
							["yOffset"] = 1,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["height"] = 6,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["xOffset"] = 2,
							["detachedWidth"] = 240,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["attachTextTo"] = "InfoPanel",
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["fontSize"] = 14,
							["enable"] = true,
							["sizeOverride"] = 26,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["threatStyle"] = "GLOW",
						["width"] = 110,
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["yOffset"] = 15,
							["attachTo"] = "InfoPanel",
							["size"] = 12,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["xOffset"] = 2,
							["position"] = "LEFT",
							["height"] = 8,
							["enable"] = false,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["targetsGroup"] = {
							["disableFocusGlow"] = false,
							["disableTargetGlow"] = false,
							["height"] = 16,
							["width"] = 70,
							["disableMouseoverGlow"] = false,
							["yOffset"] = -12,
						},
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["yOffset"] = 16,
						},
						["verticalSpacing"] = 30,
						["height"] = 40,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 18,
							["xOffset"] = 2,
							["yOffset"] = -10,
						},
						["petsGroup"] = {
							["disableFocusGlow"] = false,
							["width"] = 60,
							["disableTargetGlow"] = false,
							["xOffset"] = 0,
							["height"] = 18,
							["name"] = {
								["position"] = "LEFT",
							},
							["disableMouseoverGlow"] = false,
							["yOffset"] = -1,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
							["text_format"] = "[health:current-percent]",
							["yOffset"] = -2,
						},
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["middle"] = "Orderhall (BenikUI)",
						["left"] = "Attack Power",
					},
					["BuiMiddleDTPanel"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						"", -- [4]
						["right"] = "Crit Chance",
						["left"] = "Haste",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonSize"] = 23,
					["backdropSpacing"] = 1,
					["buttonsPerRow"] = 4,
					["buttonSpacing"] = 1,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonSize"] = 23,
					["buttonsPerRow"] = 4,
					["buttonSpacing"] = 1,
					["backdropSpacing"] = 1,
				},
				["bar2"] = {
					["buttonSize"] = 18,
				},
				["bar1"] = {
					["buttonSpacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonSize"] = 30,
				},
				["bar5"] = {
					["heightMult"] = 2,
					["backdropSpacing"] = 3,
					["buttonSize"] = 30,
					["buttonSpacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdrop"] = true,
					["buttons"] = 12,
				},
				["font"] = "Bui Visitor1",
				["backdropSpacingConverted"] = true,
				["fontOutline"] = "MONOCROMEOUTLINE",
				["barPet"] = {
					["buttonSize"] = 22,
					["backdropSpacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["buttonSpacing"] = 4,
				},
				["stanceBar"] = {
					["buttonSize"] = 24,
				},
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["buttons"] = 11,
				},
				["bar4"] = {
					["buttonSpacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonSize"] = 26,
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["width"] = 412,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["timeStampFormat"] = "%H:%M ",
				["panelColor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["panelSnapLeftID"] = 1,
				["font"] = "Expressway",
				["tabFont"] = "Expressway",
				["panelHeight"] = 150,
				["panelColorConverted"] = true,
				["panelWidthRight"] = 400,
				["tabFontSize"] = 11,
				["panelBackdrop"] = "LEFT",
			},
			["nameplates"] = {
				["fontSize"] = 10,
				["statusbar"] = "BuiFlat",
				["displayStyle"] = "BLIZZARD",
				["font"] = "Expressway",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
		},
		["Abel - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["textYoffset"] = 10,
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["font"] = "Expressway",
					["textSize"] = 10,
					["width"] = 412,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["objectiveFrameHeight"] = 750,
				["backdropcolor"] = {
					["r"] = 0.025,
					["g"] = 0.025,
					["b"] = 0.025,
				},
				["minimap"] = {
					["locationText"] = "HIDE",
					["size"] = 150,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,180",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,201",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,97",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,269",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,907,141",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["font"] = "Expressway",
					["fontSize"] = 9,
				},
				["headerFontSize"] = 11,
				["font"] = "Expressway",
				["smallTextFontSize"] = 11,
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["chat"] = {
				["tabFont"] = "Expressway",
				["font"] = "Expressway",
				["tabFontOutline"] = "OUTLINE",
				["panelHeight"] = 150,
				["timeStampFormat"] = "%H:%M ",
				["panelWidthRight"] = 400,
				["tabFontSize"] = 11,
				["panelBackdrop"] = "LEFT",
			},
			["layoutSet"] = "dpsCaster",
			["dbConverted"] = 12.12,
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["left"] = "Spec Switch (BenikUI)",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["middle"] = "Orderhall (BenikUI)",
						["left"] = "Attack Power",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Crit Chance",
						["middle"] = "Mastery",
						["left"] = "Haste",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttonspacing"] = 4,
					["backdropSpacing"] = 3,
					["buttonsize"] = 30,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["backdropSpacingConverted"] = true,
				["fontOutline"] = "MONOCROMEOUTLINE",
				["barPet"] = {
					["backdropSpacing"] = 4,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["buttonsize"] = 22,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["buttons"] = 11,
				},
				["bar4"] = {
					["buttonspacing"] = 4,
					["widthMult"] = 2,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
			},
			["nameplates"] = {
				["fontSize"] = 10,
				["statusbar"] = "BuiFlat",
				["font"] = "Expressway",
				["displayStyle"] = "BLIZZARD",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["width"] = 412,
						["backdrop"] = true,
						["transparent"] = false,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["unitframe"] = {
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["castReactionColor"] = true,
					["transparentAurabars"] = true,
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.14901960784314,
						["g"] = 0.003921568627451,
						["b"] = 0.003921568627451,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["statusbar"] = "BuiFlat",
				["font"] = "Bui Tukui",
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["power"] = {
							["height"] = 5,
						},
						["threatStyle"] = "GLOW",
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["width"] = 110,
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["power"] = {
							["height"] = 5,
						},
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["castbar"] = {
							["iconXOffset"] = 2,
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
						},
						["width"] = 210,
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["yOffset"] = 4,
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["roleIcon"] = {
							["position"] = "RIGHT",
							["enable"] = true,
							["yOffset"] = 0,
							["xOffset"] = -2,
							["size"] = 10,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["health"] = {
							["yOffset"] = 1,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 16,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachFromFrame"] = true,
							["detachedWidth"] = 240,
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["height"] = 6,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["height"] = 34,
						["orientation"] = "LEFT",
						["buffs"] = {
							["sizeOverride"] = 26,
							["fontSize"] = 14,
							["yOffset"] = 1,
						},
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["size"] = 12,
						},
						["health"] = {
							["position"] = "CENTER",
							["yOffset"] = 0,
						},
						["width"] = 78,
						["height"] = 40,
						["verticalSpacing"] = 5,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["attachTextTo"] = "InfoPanel",
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["xOffset"] = 2,
							["detachedWidth"] = 240,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["height"] = 6,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["fontSize"] = 14,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["yOffset"] = 15,
							["attachTo"] = "InfoPanel",
							["size"] = 12,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["xOffset"] = 2,
							["position"] = "LEFT",
							["enable"] = false,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["targetsGroup"] = {
							["height"] = 16,
							["yOffset"] = -12,
							["width"] = 70,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
							["text_format"] = "[health:current-percent]",
							["yOffset"] = -2,
						},
						["verticalSpacing"] = 30,
						["height"] = 40,
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
							["yOffset"] = -1,
							["xOffset"] = 0,
							["width"] = 60,
						},
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["yOffset"] = 16,
						},
					},
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Adamancy - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["textYoffset"] = 10,
					["height"] = 6,
					["font"] = "Expressway",
					["textSize"] = 10,
					["width"] = 412,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["azerite"] = {
					["height"] = 323,
					["orientation"] = "VERTICAL",
					["width"] = 7,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["font"] = "Expressway",
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["objectiveFrameHeight"] = 750,
				["minimap"] = {
					["icons"] = {
						["classHall"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["locationText"] = "HIDE",
					["size"] = 150,
				},
			},
			["movers"] = {
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,136",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,234",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,146",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,241",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-16,-228",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-85",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,359,237",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,4",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["DTPanelBuiMiddleDTPanelMover"] = "BOTTOM,ElvUIParent,BOTTOM,2,95",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,932,136",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["font"] = "Expressway",
				["headerFontSize"] = 11,
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Expressway",
				["panelColor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 300,
				["timeStampFormat"] = "%H:%M ",
				["panelWidthRight"] = 400,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["width"] = 412,
						["backdrop"] = true,
						["transparent"] = false,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["unitframe"] = {
				["filters"] = {
					["aurawatch"] = {
					},
				},
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["statusbar"] = "BuiFlat",
				["font"] = "Bui Tukui",
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["size"] = 12,
							["attachTo"] = "InfoPanel",
							["yOffset"] = 15,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = 16,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["position"] = "TOPLEFT",
						},
						["health"] = {
							["xOffset"] = 0,
							["yOffset"] = -2,
							["text_format"] = "[health:current-percent]",
							["position"] = "RIGHT",
						},
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["xOffset"] = 0,
							["yOffset"] = -1,
							["height"] = 18,
							["width"] = 60,
						},
						["targetsGroup"] = {
							["height"] = 16,
							["yOffset"] = -12,
							["width"] = 70,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 6,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["detachedWidth"] = 240,
							["xOffset"] = 2,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["frequentUpdates"] = true,
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["fontSize"] = 14,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["numGroups"] = 6,
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 12,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["health"] = {
							["yOffset"] = 0,
							["position"] = "CENTER",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
							["yOffset"] = 0,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
							["iconXOffset"] = 2,
						},
						["width"] = 210,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["size"] = 20,
							["yOffset"] = 4,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["health"] = {
							["yOffset"] = 1,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["position"] = "RIGHT",
							["enable"] = true,
							["size"] = 10,
							["xOffset"] = -2,
							["yOffset"] = 0,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["height"] = 16,
							["enable"] = false,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -25,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["orientation"] = "LEFT",
						["height"] = 34,
						["buffs"] = {
							["sizeOverride"] = 26,
							["fontSize"] = 14,
							["yOffset"] = 1,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachedWidth"] = 240,
							["height"] = 6,
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["width"] = 110,
					},
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
						["portrait"] = {
							["overlay"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["left"] = "Time",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["middle"] = "Orderhall (BenikUI)",
						["left"] = "Attack Power",
					},
					["BuiMiddleDTPanel"] = {
						["enable"] = true,
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 30,
					["backdropSpacing"] = 3,
					["enabled"] = true,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["bar4"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 26,
					["backdropSpacing"] = 4,
					["widthMult"] = 2,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdropSpacing"] = 4,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 22,
					["backdrop"] = false,
				},
				["backdropSpacingConverted"] = true,
			},
			["nameplates"] = {
				["fontSize"] = 10,
				["statusbar"] = "BuiFlat",
				["font"] = "Expressway",
				["displayStyle"] = "BLIZZARD",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["layoutSet"] = "dpsCaster",
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Minimalistic"] = {
			["currentTutorial"] = 2,
			["general"] = {
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["r"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["b"] = 0.058823529411765,
				},
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["bordercolor"] = {
					["r"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["b"] = 0.30588235294118,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["fontSize"] = 11,
			},
			["movers"] = {
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-428",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,51,120",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,50",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-50",
				["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-117,-298",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,249,-216",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,827",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-52",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,51,-87",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,143",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,392,1073",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,50",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,90",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-394",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-186",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,305,50",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-305,50",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-393",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,232",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,1150",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,133",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,330",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
			},
			["bags"] = {
				["itemLevelFontSize"] = 9,
				["countFontSize"] = 9,
			},
			["hideTutorial"] = true,
			["auras"] = {
				["font"] = "Expressway",
				["buffs"] = {
					["maxWraps"] = 2,
				},
				["fontSize"] = 11,
			},
			["unitframe"] = {
				["statusbar"] = "ElvUI Blank",
				["fontOutline"] = "THICKOUTLINE",
				["smoothbars"] = true,
				["font"] = "Expressway",
				["fontSize"] = 9,
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -2,
							["position"] = "TOP",
						},
						["height"] = 50,
						["width"] = 122,
					},
					["pet"] = {
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 14,
						},
						["debuffs"] = {
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["width"] = 122,
						},
						["height"] = 50,
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["width"] = 122,
					},
					["player"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["combatfade"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["height"] = 80,
						["castbar"] = {
							["iconAttached"] = false,
							["iconSize"] = 54,
							["height"] = 35,
							["width"] = 478,
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
					},
					["party"] = {
						["horizontalSpacing"] = 3,
						["debuffs"] = {
							["numrows"] = 4,
							["anchorPoint"] = "BOTTOM",
							["perrow"] = 1,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 5,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["growthDirection"] = "RIGHT_DOWN",
						["infoPanel"] = {
							["enable"] = true,
						},
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
						["healPrediction"] = true,
						["height"] = 59,
						["verticalSpacing"] = 0,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
						},
						["width"] = 110,
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 17,
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["iconSize"] = 26,
							["width"] = 122,
						},
						["height"] = 56,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current]",
						},
						["width"] = 189,
					},
					["assist"] = {
						["enable"] = false,
					},
					["arena"] = {
						["castbar"] = {
							["width"] = 246,
						},
						["spacing"] = 26,
					},
					["raid"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["debuffs"] = {
							["enable"] = true,
							["sizeOverride"] = 27,
							["perrow"] = 4,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Expressway",
						},
						["growthDirection"] = "UP_RIGHT",
						["health"] = {
							["yOffset"] = -6,
						},
						["width"] = 140,
						["height"] = 28,
						["name"] = {
							["position"] = "LEFT",
						},
						["visibility"] = "[nogroup] hide;show",
						["groupsPerRowCol"] = 5,
					},
					["target"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["hideonnpc"] = false,
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["leftChatPanel"] = false,
				["goldFormat"] = "SHORT",
				["panelTransparency"] = true,
				["font"] = "Expressway",
				["panels"] = {
					["BottomMiniPanel"] = "Time",
					["RightMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["LeftMiniPanel"] = "",
					["LeftChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["fontSize"] = 9,
				["bar2"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["globalFadeAlpha"] = 0.87,
				["stanceBar"] = {
					["inheritGlobalFade"] = true,
				},
				["bar6"] = {
					["buttonsize"] = 38,
				},
				["bar4"] = {
					["enabled"] = false,
					["backdrop"] = false,
					["buttonsize"] = 38,
				},
			},
			["layoutSet"] = "dpsMelee",
			["chat"] = {
				["chatHistory"] = false,
				["fontSize"] = 11,
				["tabFont"] = "Expressway",
				["tabFontSize"] = 11,
				["fadeUndockedTabs"] = false,
				["editBoxPosition"] = "ABOVE_CHAT",
				["fadeTabsNoBackdrop"] = false,
				["font"] = "Expressway",
				["panelBackdrop"] = "HIDEBOTH",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["fontSize"] = 11,
				["headerFontSize"] = 11,
			},
			["nameplates"] = {
				["filters"] = {
				},
			},
		},
		["Furrys - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["textYoffset"] = 10,
					["font"] = "Expressway",
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["width"] = 412,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["font"] = "Expressway",
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["backdropcolor"] = {
					["r"] = 0.025,
					["g"] = 0.025,
					["b"] = 0.025,
				},
				["objectiveFrameHeight"] = 750,
				["minimap"] = {
					["icons"] = {
						["classHall"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["locationText"] = "HIDE",
					["size"] = 150,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,234",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,241",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,907,141",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["font"] = "Expressway",
					["fontSize"] = 9,
				},
				["smallTextFontSize"] = 11,
				["font"] = "Expressway",
				["headerFontSize"] = 11,
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["datatexts"] = {
					["middle"] = {
						["width"] = 412,
						["backdrop"] = true,
						["transparent"] = false,
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["unitframe"] = {
				["filters"] = {
					["aurawatch"] = {
					},
				},
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["castReactionColor"] = true,
					["transparentAurabars"] = true,
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.14901960784314,
						["g"] = 0.003921568627451,
						["b"] = 0.003921568627451,
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Bui Tukui",
				["smoothbars"] = true,
				["statusbar"] = "BuiFlat",
				["units"] = {
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["power"] = {
							["height"] = 5,
						},
						["threatStyle"] = "GLOW",
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["width"] = 110,
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["detachedWidth"] = 240,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["height"] = 6,
							["xOffset"] = 2,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["attachTextTo"] = "InfoPanel",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["fontSize"] = 14,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["size"] = 12,
							["attachTo"] = "InfoPanel",
							["yOffset"] = 15,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = 16,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["position"] = "TOPLEFT",
						},
						["health"] = {
							["xOffset"] = 0,
							["yOffset"] = -2,
							["text_format"] = "[health:current-percent]",
							["position"] = "RIGHT",
						},
						["verticalSpacing"] = 30,
						["height"] = 40,
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
							["yOffset"] = -1,
							["xOffset"] = 0,
							["width"] = 60,
						},
						["targetsGroup"] = {
							["height"] = 16,
							["yOffset"] = -12,
							["width"] = 70,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["size"] = 20,
							["yOffset"] = 4,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["health"] = {
							["yOffset"] = 1,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["position"] = "RIGHT",
							["enable"] = true,
							["size"] = 10,
							["xOffset"] = -2,
							["yOffset"] = 0,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["castbar"] = {
							["height"] = 16,
							["enable"] = false,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachedWidth"] = 240,
							["height"] = 6,
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -25,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["orientation"] = "LEFT",
						["buffs"] = {
							["sizeOverride"] = 26,
							["fontSize"] = 14,
							["yOffset"] = 1,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 12,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["health"] = {
							["yOffset"] = 0,
							["position"] = "CENTER",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
							["yOffset"] = 0,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["power"] = {
							["height"] = 5,
						},
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["castbar"] = {
							["iconXOffset"] = 2,
							["iconAttached"] = false,
							["iconPosition"] = "RIGHT",
						},
						["width"] = 210,
					},
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["left"] = "Spec Switch (BenikUI)",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["middle"] = "Orderhall (BenikUI)",
						["left"] = "Attack Power",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Crit Chance",
						["middle"] = "Mastery",
						["left"] = "Haste",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 30,
					["backdropSpacing"] = 3,
					["enabled"] = true,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["bar4"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 26,
					["backdropSpacing"] = 4,
					["widthMult"] = 2,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["buttonsize"] = 22,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["backdropSpacing"] = 4,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "dpsCaster",
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Expressway",
				["panelColor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 208,
				["timeStampFormat"] = "%H:%M ",
				["panelWidthRight"] = 400,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
			["nameplates"] = {
				["fontSize"] = 10,
				["font"] = "Expressway",
				["statusbar"] = "BuiFlat",
				["displayStyle"] = "BLIZZARD",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Dreg - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["width"] = 412,
					["font"] = "Expressway",
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["objectiveFrameHeight"] = 750,
				["backdropcolor"] = {
					["r"] = 0.025,
					["g"] = 0.025,
					["b"] = 0.025,
				},
				["minimap"] = {
					["locationText"] = "HIDE",
					["icons"] = {
						["classHall"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["size"] = 150,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,136",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,234",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-285,115",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,241",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,907,141",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["timeStampFormat"] = "%H:%M ",
				["panelColor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 208,
				["tabFont"] = "Expressway",
				["panelWidthRight"] = 400,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["font"] = "Expressway",
					["fontSize"] = 9,
				},
				["headerFontSize"] = 11,
				["font"] = "Expressway",
				["smallTextFontSize"] = 11,
			},
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["width"] = 110,
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["yOffset"] = 15,
							["attachTo"] = "InfoPanel",
							["size"] = 12,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["fontSize"] = 14,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["sizeOverride"] = 23,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["targetsGroup"] = {
							["height"] = 16,
							["yOffset"] = -12,
							["width"] = 70,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
							["text_format"] = "[health:current-percent]",
							["yOffset"] = -2,
						},
						["verticalSpacing"] = 30,
						["height"] = 40,
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["xOffset"] = 0,
							["yOffset"] = -1,
							["height"] = 18,
							["width"] = 60,
						},
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["yOffset"] = 16,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["size"] = 12,
						},
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["size"] = 20,
						},
						["numGroups"] = 6,
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["width"] = 78,
						["health"] = {
							["position"] = "CENTER",
							["yOffset"] = 0,
						},
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["colorOverride"] = "FORCE_ON",
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 2,
							["iconAttached"] = false,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["yOffset"] = 4,
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["roleIcon"] = {
							["position"] = "RIGHT",
							["enable"] = true,
							["yOffset"] = 0,
							["xOffset"] = -2,
							["size"] = 10,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["health"] = {
							["yOffset"] = 1,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 16,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachFromFrame"] = true,
							["height"] = 6,
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachedWidth"] = 240,
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["height"] = 34,
						["orientation"] = "LEFT",
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["attachTextTo"] = "InfoPanel",
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["xOffset"] = 2,
							["detachedWidth"] = 240,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["height"] = 6,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["fontSize"] = 14,
							["enable"] = true,
							["sizeOverride"] = 26,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.14901960784314,
						["g"] = 0.003921568627451,
						["b"] = 0.003921568627451,
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "BuiFlat",
				["font"] = "Bui Tukui",
				["smoothbars"] = true,
				["filters"] = {
					["aurawatch"] = {
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "Orderhall (BenikUI)",
					},
					["BuiRightChatDTPanel"] = {
						["left"] = "Spec Switch (BenikUI)",
						["middle"] = "Bags",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["buttonspacing"] = 4,
					["enabled"] = true,
					["backdropSpacing"] = 3,
					["buttonsize"] = 30,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["backdropSpacingConverted"] = true,
				["fontOutline"] = "MONOCROMEOUTLINE",
				["barPet"] = {
					["backdropSpacing"] = 4,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["buttonsize"] = 22,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["bar4"] = {
					["buttonspacing"] = 4,
					["widthMult"] = 2,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
			},
			["layoutSet"] = "dpsCaster",
			["nameplates"] = {
				["fontSize"] = 10,
				["statusbar"] = "BuiFlat",
				["displayStyle"] = "BLIZZARD",
				["font"] = "Expressway",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["datatexts"] = {
					["middle"] = {
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 412,
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Amdam - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["width"] = 412,
					["height"] = 6,
					["font"] = "Expressway",
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["azerite"] = {
					["height"] = 323,
					["orientation"] = "VERTICAL",
					["width"] = 7,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["objectiveFrameHeight"] = 750,
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["minimap"] = {
					["locationText"] = "HIDE",
					["icons"] = {
						["classHall"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["size"] = 150,
				},
			},
			["movers"] = {
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,136",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,234",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,146",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,241",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-16,-228",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,4",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-85",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,359,237",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["DTPanelBuiMiddleDTPanelMover"] = "BOTTOM,ElvUIParent,BOTTOM,2,95",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,932,136",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Expressway",
				},
				["headerFontSize"] = 11,
				["font"] = "Expressway",
				["smallTextFontSize"] = 11,
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["timeStampFormat"] = "%H:%M ",
				["panelColor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 300,
				["tabFont"] = "Expressway",
				["panelWidthRight"] = 400,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 412,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["detachFromFrame"] = true,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["xOffset"] = 2,
							["height"] = 6,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachedWidth"] = 240,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["fontSize"] = 14,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["size"] = 12,
						},
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["size"] = 20,
						},
						["numGroups"] = 6,
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["width"] = 78,
						["health"] = {
							["position"] = "CENTER",
							["yOffset"] = 0,
						},
						["verticalSpacing"] = 5,
						["height"] = 40,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["colorOverride"] = "FORCE_ON",
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 2,
							["iconAttached"] = false,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["yOffset"] = 4,
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["roleIcon"] = {
							["position"] = "RIGHT",
							["enable"] = true,
							["yOffset"] = 0,
							["xOffset"] = -2,
							["size"] = 10,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["health"] = {
							["yOffset"] = 1,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 16,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachFromFrame"] = true,
							["height"] = 6,
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachedWidth"] = 240,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["width"] = 240,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["orientation"] = "LEFT",
						["height"] = 34,
						["buffs"] = {
							["sizeOverride"] = 26,
							["fontSize"] = 14,
							["yOffset"] = 1,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["yOffset"] = 15,
							["attachTo"] = "InfoPanel",
							["size"] = 12,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["targetsGroup"] = {
							["height"] = 16,
							["width"] = 70,
							["yOffset"] = -12,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
							["text_format"] = "[health:current-percent]",
							["yOffset"] = -2,
						},
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
							["width"] = 60,
							["xOffset"] = 0,
							["yOffset"] = -1,
						},
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["yOffset"] = 16,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["threatStyle"] = "GLOW",
						["width"] = 110,
					},
				},
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["castReactionColor"] = true,
					["transparentAurabars"] = true,
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "BuiFlat",
				["smoothbars"] = true,
				["font"] = "Bui Tukui",
				["filters"] = {
					["aurawatch"] = {
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Time",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "Orderhall (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["enable"] = true,
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["buttonspacing"] = 4,
					["enabled"] = true,
					["backdropSpacing"] = 3,
					["buttonsize"] = 30,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["backdropSpacingConverted"] = true,
				["fontOutline"] = "MONOCROMEOUTLINE",
				["barPet"] = {
					["backdropSpacing"] = 4,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["buttonsize"] = 22,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["bar4"] = {
					["buttonspacing"] = 4,
					["widthMult"] = 2,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
			},
			["layoutSet"] = "dpsCaster",
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["nameplates"] = {
				["fontSize"] = 10,
				["statusbar"] = "BuiFlat",
				["displayStyle"] = "BLIZZARD",
				["font"] = "Expressway",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Aduum - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["width"] = 412,
					["height"] = 6,
					["font"] = "Expressway",
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["font"] = "Expressway",
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["backdropcolor"] = {
					["r"] = 0.025,
					["g"] = 0.025,
					["b"] = 0.025,
				},
				["objectiveFrameHeight"] = 750,
				["minimap"] = {
					["locationText"] = "HIDE",
					["size"] = 150,
				},
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["dbConverted"] = 13.06,
			["layoutSet"] = "dpsCaster",
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["ElvUF_Raid3Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,269",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvUF_Raid1Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,180",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_3"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,907,141",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,97",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,201",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
			},
			["convertPages"] = true,
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
					["fontSize"] = 9,
				},
				["smallTextFontSize"] = 11,
				["fontSize"] = 10,
				["headerFontSize"] = 11,
			},
			["unitframe"] = {
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.14901960784314,
						["g"] = 0.003921568627451,
						["b"] = 0.003921568627451,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["font"] = "Bui Tukui",
				["statusbar"] = "BuiFlat",
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["width"] = 110,
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["size"] = 12,
							["attachTo"] = "InfoPanel",
							["yOffset"] = 15,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["height"] = 8,
							["position"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["health"] = {
							["xOffset"] = 0,
							["yOffset"] = -2,
							["text_format"] = "[health:current-percent]",
							["position"] = "RIGHT",
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = 16,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["position"] = "TOPLEFT",
						},
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 18,
							["xOffset"] = 2,
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["disableFocusGlow"] = false,
							["yOffset"] = -1,
							["disableTargetGlow"] = false,
							["height"] = 18,
							["xOffset"] = 0,
							["name"] = {
								["position"] = "LEFT",
							},
							["disableMouseoverGlow"] = false,
							["width"] = 60,
						},
						["targetsGroup"] = {
							["disableFocusGlow"] = false,
							["disableTargetGlow"] = false,
							["height"] = 16,
							["yOffset"] = -12,
							["disableMouseoverGlow"] = false,
							["width"] = 70,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
							["iconXOffset"] = 2,
						},
						["width"] = 210,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 58,
						["buffs"] = {
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["anchorPoint"] = "CENTER",
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
					},
					["raid3"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["enable"] = true,
							["font"] = "Bui Visitor1",
							["size"] = 20,
							["yOffset"] = 4,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["width"] = 78,
						["height"] = 35,
						["verticalSpacing"] = 5,
						["health"] = {
							["yOffset"] = 1,
						},
						["roleIcon"] = {
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 10,
							["enable"] = true,
							["yOffset"] = 0,
						},
					},
					["raid1"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["size"] = 20,
							["yOffset"] = 12,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["yOffset"] = 0,
							["position"] = "CENTER",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["width"] = 78,
						["height"] = 40,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["verticalSpacing"] = 5,
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
							["yOffset"] = 0,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["castbar"] = {
							["height"] = 16,
							["enable"] = false,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["castbar"] = {
							["iconXOffset"] = 10,
							["iconPosition"] = "RIGHT",
							["icon"] = false,
							["width"] = 240,
						},
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -25,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["orientation"] = "LEFT",
						["height"] = 34,
						["buffs"] = {
							["sizeOverride"] = 26,
							["fontSize"] = 14,
							["yOffset"] = 1,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["height"] = 6,
							["xOffset"] = 4,
							["detachedWidth"] = 240,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["attachTextTo"] = "InfoPanel",
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["detachedWidth"] = 240,
							["xOffset"] = 2,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["height"] = 6,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["frequentUpdates"] = true,
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["fontSize"] = 14,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["portrait"] = {
							["overlay"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["left"] = "Spec Switch (BenikUI)",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "Orderhall (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						"", -- [4]
						["right"] = "Crit Chance",
						["left"] = "Haste",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["point"] = "TOPLEFT",
					["buttonSize"] = 26,
					["buttons"] = 12,
					["buttonsPerRow"] = 1,
					["buttonSpacing"] = 4,
					["backdropSpacing"] = 4,
				},
				["bar6"] = {
					["enabled"] = true,
					["backdropSpacing"] = 4,
					["buttonSpacing"] = 4,
					["buttonSize"] = 30,
				},
				["bar2"] = {
					["buttonSize"] = 18,
				},
				["bar1"] = {
					["backdropSpacing"] = 4,
					["buttonSpacing"] = 4,
					["buttonSize"] = 30,
				},
				["bar5"] = {
					["buttons"] = 12,
					["buttonSize"] = 30,
					["buttonsPerRow"] = 12,
					["buttonSpacing"] = 4,
					["backdropSpacing"] = 3,
				},
				["font"] = "Bui Visitor1",
				["bar4"] = {
					["widthMult"] = 2,
					["backdropSpacing"] = 4,
					["buttonSpacing"] = 4,
					["buttonSize"] = 26,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["buttons"] = 11,
				},
				["stanceBar"] = {
					["buttonSize"] = 24,
				},
				["barPet"] = {
					["buttonSize"] = 22,
					["backdropSpacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["buttonSpacing"] = 4,
				},
				["backdropSpacingConverted"] = true,
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["width"] = 412,
						["backdrop"] = true,
						["transparent"] = false,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["timeStampFormat"] = "%H:%M ",
				["panelColor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["panelSnapLeftID"] = 1,
				["font"] = "Expressway",
				["tabFont"] = "Expressway",
				["panelHeight"] = 150,
				["tabFontSize"] = 11,
				["panelWidthRight"] = 400,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
			["nameplates"] = {
				["fontSize"] = 10,
				["displayStyle"] = "BLIZZARD",
				["font"] = "Expressway",
				["statusbar"] = "BuiFlat",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
		},
		["Adris - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["width"] = 412,
					["font"] = "Expressway",
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["fontSize"] = 11,
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["minimap"] = {
					["locationText"] = "HIDE",
					["icons"] = {
						["classHall"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["size"] = 150,
				},
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["objectiveFrameHeight"] = 750,
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,234",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,241",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,907,141",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
			},
			["v11NamePlateReset"] = true,
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["hideTutorial"] = true,
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Expressway",
				},
				["headerFontSize"] = 11,
				["font"] = "Expressway",
				["smallTextFontSize"] = 11,
			},
			["unitframe"] = {
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["castReactionColor"] = true,
					["transparentAurabars"] = true,
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["font"] = "Bui Tukui",
				["statusbar"] = "BuiFlat",
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconXOffset"] = 2,
							["iconAttached"] = false,
							["iconPosition"] = "RIGHT",
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["yOffset"] = 15,
							["attachTo"] = "InfoPanel",
							["size"] = 12,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["targetsGroup"] = {
							["anchorPoint"] = "RIGHT",
							["height"] = 16,
							["yOffset"] = -12,
							["xOffset"] = 1,
							["width"] = 70,
						},
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["yOffset"] = 16,
						},
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
							["yOffset"] = -1,
							["xOffset"] = 0,
							["width"] = 60,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
							["text_format"] = "[health:current-percent]",
							["yOffset"] = -2,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["yOffset"] = 4,
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["roleIcon"] = {
							["position"] = "RIGHT",
							["enable"] = true,
							["yOffset"] = 0,
							["xOffset"] = -2,
							["size"] = 10,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["health"] = {
							["yOffset"] = 1,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 16,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachFromFrame"] = true,
							["detachedWidth"] = 240,
							["height"] = 6,
							["text_format"] = "[powercolor][power:current-percent]",
							["xOffset"] = 4,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["orientation"] = "LEFT",
						["height"] = 34,
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["size"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["width"] = 78,
						["height"] = 40,
						["verticalSpacing"] = 5,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["health"] = {
							["position"] = "CENTER",
							["yOffset"] = 0,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["attachTextTo"] = "InfoPanel",
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["height"] = 6,
							["detachedWidth"] = 240,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["xOffset"] = 2,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["fontSize"] = 14,
							["enable"] = true,
							["sizeOverride"] = 26,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["width"] = 110,
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["left"] = "Spec Switch (BenikUI)",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "Orderhall (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Crit Chance",
						["left"] = "Haste",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["buttonspacing"] = 4,
					["enabled"] = true,
					["buttonsize"] = 30,
					["backdropSpacing"] = 3,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["backdropSpacingConverted"] = true,
				["fontOutline"] = "MONOCROMEOUTLINE",
				["barPet"] = {
					["backdrop"] = false,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdropSpacing"] = 4,
					["buttonsize"] = 22,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["bar4"] = {
					["buttonspacing"] = 4,
					["widthMult"] = 2,
					["buttonsize"] = 26,
					["backdropSpacing"] = 4,
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["flightMode"] = false,
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 412,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["chat"] = {
				["fontSize"] = 10,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Expressway",
				["panelColor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 208,
				["timeStampFormat"] = "%H:%M ",
				["panelWidthRight"] = 400,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
			["layoutSet"] = "dpsCaster",
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Caris - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["width"] = 412,
					["font"] = "Expressway",
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["fontSize"] = 11,
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["minimap"] = {
					["locationText"] = "HIDE",
					["size"] = 150,
				},
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["objectiveFrameHeight"] = 750,
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,181",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,201",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,97",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,269",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,907,141",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Expressway",
				},
				["headerFontSize"] = 11,
				["font"] = "Expressway",
				["smallTextFontSize"] = 11,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 10,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Expressway",
				["panelColor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 208,
				["timeStampFormat"] = "%H:%M ",
				["panelWidthRight"] = 400,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
			["layoutSet"] = "dpsCaster",
			["unitframe"] = {
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["castReactionColor"] = true,
					["transparentAurabars"] = true,
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["font"] = "Bui Tukui",
				["statusbar"] = "BuiFlat",
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconXOffset"] = 2,
							["iconAttached"] = false,
							["iconPosition"] = "RIGHT",
						},
						["height"] = 58,
						["buffs"] = {
							["xOffset"] = 16,
							["anchorPoint"] = "CENTER",
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["yOffset"] = 15,
							["attachTo"] = "InfoPanel",
							["size"] = 12,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["xOffset"] = 2,
							["position"] = "LEFT",
							["enable"] = false,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["targetsGroup"] = {
							["anchorPoint"] = "RIGHT",
							["height"] = 16,
							["yOffset"] = -12,
							["xOffset"] = 1,
							["width"] = 70,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
							["text_format"] = "[health:current-percent]",
							["yOffset"] = -2,
						},
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
							["yOffset"] = -1,
							["xOffset"] = 0,
							["width"] = 60,
						},
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["yOffset"] = 16,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["yOffset"] = 4,
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["roleIcon"] = {
							["position"] = "RIGHT",
							["enable"] = true,
							["yOffset"] = 0,
							["xOffset"] = -2,
							["size"] = 10,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["health"] = {
							["yOffset"] = 1,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["castbar"] = {
							["iconSize"] = 26,
							["enable"] = false,
							["height"] = 16,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachFromFrame"] = true,
							["xOffset"] = 4,
							["height"] = 6,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachedWidth"] = 240,
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["height"] = 34,
						["orientation"] = "LEFT",
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["size"] = 12,
						},
						["health"] = {
							["position"] = "CENTER",
							["yOffset"] = 0,
						},
						["width"] = 78,
						["height"] = 40,
						["verticalSpacing"] = 5,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["attachTextTo"] = "InfoPanel",
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["height"] = 6,
							["xOffset"] = 2,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachedWidth"] = 240,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["fontSize"] = 14,
							["noDuration"] = false,
							["enable"] = true,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["width"] = 110,
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["left"] = "Spec Switch (BenikUI)",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "Orderhall (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Crit Chance",
						["left"] = "Haste",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["buttonspacing"] = 4,
					["enabled"] = true,
					["backdropSpacing"] = 3,
					["buttonsize"] = 30,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["backdropSpacingConverted"] = true,
				["fontOutline"] = "MONOCROMEOUTLINE",
				["barPet"] = {
					["backdrop"] = false,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdropSpacing"] = 4,
					["buttonsize"] = 22,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["bar4"] = {
					["buttonspacing"] = 4,
					["widthMult"] = 2,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["flightMode"] = false,
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 412,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["nameplates"] = {
				["fontSize"] = 10,
				["font"] = "Expressway",
				["statusbar"] = "BuiFlat",
				["displayStyle"] = "BLIZZARD",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["alwaysShow"] = true,
					},
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Adamn - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["width"] = 412,
					["height"] = 6,
					["font"] = "Expressway",
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["azerite"] = {
					["orientation"] = "VERTICAL",
					["height"] = 231,
					["width"] = 7,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["objectiveFrameHeight"] = 750,
				["backdropcolor"] = {
					["r"] = 0.025,
					["g"] = 0.025,
					["b"] = 0.025,
				},
				["minimap"] = {
					["locationText"] = "HIDE",
					["icons"] = {
						["classHall"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["size"] = 150,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,136",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,234",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,241",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-16,-228",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,4",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,359,237",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-85",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,932,136",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,146",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["timeStampFormat"] = "%H:%M ",
				["panelColor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 208,
				["tabFont"] = "Expressway",
				["panelWidthRight"] = 400,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["font"] = "Expressway",
					["fontSize"] = 9,
				},
				["headerFontSize"] = 11,
				["font"] = "Expressway",
				["smallTextFontSize"] = 11,
			},
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["threatStyle"] = "GLOW",
						["width"] = 110,
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["yOffset"] = 15,
							["attachTo"] = "InfoPanel",
							["size"] = 12,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["targetsGroup"] = {
							["height"] = 16,
							["width"] = 70,
							["yOffset"] = -12,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
							["text_format"] = "[health:current-percent]",
							["yOffset"] = -2,
						},
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["xOffset"] = 0,
							["width"] = 60,
							["height"] = 18,
							["yOffset"] = -1,
						},
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["yOffset"] = 16,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["detachFromFrame"] = true,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["xOffset"] = 2,
							["detachedWidth"] = 240,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["height"] = 6,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["fontSize"] = 14,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["yOffset"] = 4,
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["roleIcon"] = {
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["enable"] = true,
							["size"] = 10,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["health"] = {
							["yOffset"] = 1,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 16,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachFromFrame"] = true,
							["detachedWidth"] = 240,
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["height"] = 6,
						},
						["width"] = 240,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["orientation"] = "LEFT",
						["height"] = 34,
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["size"] = 12,
						},
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["width"] = 78,
						["health"] = {
							["position"] = "CENTER",
							["yOffset"] = 0,
						},
						["verticalSpacing"] = 5,
						["height"] = 40,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["numGroups"] = 6,
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["castbar"] = {
							["iconXOffset"] = 2,
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
						},
						["width"] = 210,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["power"] = {
							["height"] = 5,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
					},
				},
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.14901960784314,
						["g"] = 0.003921568627451,
						["b"] = 0.003921568627451,
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Bui Tukui",
				["statusbar"] = "BuiFlat",
				["smoothbars"] = true,
				["filters"] = {
					["aurawatch"] = {
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["middle"] = "Orderhall (BenikUI)",
						["left"] = "Attack Power",
					},
					["BuiRightChatDTPanel"] = {
						["left"] = "Time",
						["middle"] = "Bags",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["buttonspacing"] = 4,
					["enabled"] = true,
					["backdropSpacing"] = 3,
					["buttonsize"] = 30,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["backdropSpacingConverted"] = true,
				["fontOutline"] = "MONOCROMEOUTLINE",
				["barPet"] = {
					["buttonsize"] = 22,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdropSpacing"] = 4,
					["backdrop"] = false,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["bar4"] = {
					["buttonspacing"] = 4,
					["widthMult"] = 2,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
			},
			["layoutSet"] = "dpsCaster",
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 412,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["nameplates"] = {
				["fontSize"] = 10,
				["font"] = "Expressway",
				["displayStyle"] = "BLIZZARD",
				["statusbar"] = "BuiFlat",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Default"] = {
			["dbConverted"] = 13.1,
			["datatexts"] = {
				["panels"] = {
					["BuiMiddleDTPanel"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						"", -- [4]
					},
				},
			},
			["actionbar"] = {
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttons"] = 6,
				},
				["microbar"] = {
					["buttons"] = 11,
				},
				["bar5"] = {
					["enabled"] = false,
					["buttonsPerRow"] = 12,
					["buttons"] = 12,
				},
			},
			["convertPages"] = true,
			["unitframe"] = {
				["units"] = {
					["party"] = {
						["petsGroup"] = {
							["disableFocusGlow"] = false,
							["disableTargetGlow"] = false,
							["disableMouseoverGlow"] = false,
						},
						["targetsGroup"] = {
							["disableFocusGlow"] = false,
							["disableMouseoverGlow"] = false,
							["disableTargetGlow"] = false,
						},
					},
				},
			},
			["benikui"] = {
				["installed"] = true,
			},
			["chat"] = {
				["panelSnapRightID"] = 4,
				["panelSnapLeftID"] = 1,
			},
		},
		["Dogs - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["textYoffset"] = 10,
					["font"] = "Expressway",
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["width"] = 412,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["fontSize"] = 11,
				["backdropcolor"] = {
					["r"] = 0.025,
					["g"] = 0.025,
					["b"] = 0.025,
				},
				["vendorGrays"] = true,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["minimap"] = {
					["locationText"] = "HIDE",
					["size"] = 150,
				},
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["objectiveFrameHeight"] = 750,
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["topPanel"] = false,
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,180",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,665",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,2",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,97",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-56,-397",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,207",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,60",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,22",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-56,346",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,257,2",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,907,141",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-256,2",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,201",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["font"] = "Expressway",
					["fontSize"] = 9,
				},
				["smallTextFontSize"] = 11,
				["font"] = "Expressway",
				["headerFontSize"] = 11,
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 10,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Expressway",
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 150,
				["panelWidthRight"] = 400,
				["timeStampFormat"] = "%H:%M ",
				["panelBackdrop"] = "LEFT",
			},
			["nameplates"] = {
				["statusbar"] = "BuiFlat",
				["displayStyle"] = "BLIZZARD",
				["font"] = "Expressway",
				["fontSize"] = 10,
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["alwaysShow"] = true,
					},
				},
			},
			["unitframe"] = {
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["castReactionColor"] = true,
					["transparentAurabars"] = true,
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.14901960784314,
						["g"] = 0.003921568627451,
						["b"] = 0.003921568627451,
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Bui Tukui",
				["statusbar"] = "BuiFlat",
				["smoothbars"] = true,
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["width"] = 110,
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["size"] = 12,
							["attachTo"] = "InfoPanel",
							["yOffset"] = 15,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["priority"] = "Friendly:CastByPlayers,Blacklist,Boss,RaidDebuffs,CCDebuffs,Dispellable,Whitelist",
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = 16,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["position"] = "TOPLEFT",
						},
						["health"] = {
							["xOffset"] = 0,
							["yOffset"] = -2,
							["text_format"] = "[health:current-percent]",
							["position"] = "RIGHT",
						},
						["verticalSpacing"] = 30,
						["height"] = 40,
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
							["width"] = 60,
							["xOffset"] = 0,
							["yOffset"] = -1,
						},
						["targetsGroup"] = {
							["anchorPoint"] = "RIGHT",
							["height"] = 16,
							["width"] = 70,
							["xOffset"] = 1,
							["yOffset"] = -12,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["size"] = 20,
							["yOffset"] = 4,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["health"] = {
							["yOffset"] = 1,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["position"] = "RIGHT",
							["enable"] = true,
							["size"] = 10,
							["xOffset"] = -2,
							["yOffset"] = 0,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["castbar"] = {
							["iconSize"] = 26,
							["enable"] = false,
							["height"] = 16,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["yOffset"] = -2,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["yOffset"] = -2,
								["text_format"] = "[health:current-percent]",
								["size"] = 20,
							},
						},
						["castbar"] = {
							["iconXOffset"] = 10,
							["iconPosition"] = "RIGHT",
							["icon"] = false,
							["width"] = 240,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -25,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["orientation"] = "LEFT",
						["height"] = 34,
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["threatStyle"] = "GLOW",
							["height"] = 6,
							["xOffset"] = 4,
							["detachedWidth"] = 240,
							["text_format"] = "[powercolor][power:current-percent]",
							["attachTextTo"] = "InfoPanel",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 12,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["yOffset"] = 0,
							["position"] = "CENTER",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
							["yOffset"] = 0,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["yOffset"] = -2,
								["text_format"] = "[health:current-percent]",
								["size"] = 20,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["yOffset"] = -2,
								["text_format"] = "[name]",
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["detachFromFrame"] = true,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["height"] = 6,
							["xOffset"] = 2,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachedWidth"] = 240,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["fontSize"] = 14,
							["noDuration"] = false,
							["enable"] = true,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconXOffset"] = 2,
							["iconAttached"] = false,
							["iconPosition"] = "RIGHT",
						},
						["height"] = 58,
						["buffs"] = {
							["xOffset"] = 16,
							["anchorPoint"] = "CENTER",
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["left"] = "Spec Switch (BenikUI)",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "Orderhall (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Crit Chance",
						["left"] = "Haste",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 4,
					["backdropSpacing"] = 1,
					["buttonsize"] = 23,
				},
				["bar2"] = {
					["heightMult"] = 2,
					["buttonsize"] = 30,
					["buttonspacing"] = 4,
					["backdrop"] = true,
					["backdropSpacing"] = 3,
					["enabled"] = true,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["buttons"] = 12,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 4,
					["backdropSpacing"] = 1,
					["buttonsize"] = 23,
				},
				["font"] = "Bui Visitor1",
				["backdropSpacingConverted"] = true,
				["fontOutline"] = "MONOCROMEOUTLINE",
				["barPet"] = {
					["backdropSpacing"] = 4,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 22,
					["backdrop"] = false,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["bar4"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["width"] = 412,
						["backdrop"] = true,
						["transparent"] = false,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["font"] = "Bui Visitor1",
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["debuffs"] = {
					["size"] = 30,
				},
			},
			["layoutSet"] = "dpsCaster",
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Normal Layout"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["honor"] = {
					["textSize"] = 9,
					["width"] = 8,
					["height"] = 152,
				},
				["reputation"] = {
					["enable"] = true,
					["textSize"] = 9,
					["width"] = 8,
					["height"] = 150,
				},
				["experience"] = {
					["textSize"] = 10,
					["textYoffset"] = 10,
					["textFormat"] = "CURPERC",
					["width"] = 412,
					["font"] = "Expressway",
					["height"] = 6,
				},
				["azerite"] = {
					["enable"] = false,
					["width"] = 7,
					["height"] = 323,
					["orientation"] = "VERTICAL",
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["bottomPanel"] = false,
				["minimap"] = {
					["icons"] = {
						["mail"] = {
							["yOffset"] = 5,
						},
					},
					["size"] = 150,
				},
				["fontSize"] = 11,
				["objectiveFrameHeight"] = 750,
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["font"] = "Expressway",
			},
			["bags"] = {
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["sortInverted"] = false,
				["countFont"] = "Expressway",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["countFontOutline"] = "OUTLINE",
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fadeThreshold"] = 10,
				["font"] = "Bui Visitor1",
				["fontOutline"] = "MONOCROMEOUTLINE",
				["buffs"] = {
					["size"] = 30,
					["horizontalSpacing"] = 3,
				},
			},
			["dbConverted"] = 13.29,
			["layoutSet"] = "dpsCaster",
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "TOP,UIParent,TOP,0,-570",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,257",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,204",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_Raid1Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,341",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,4",
				["ElvUF_Raid2Mover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,4,338",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,932,136",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,146",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-375",
				["ThreatBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,217",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid3Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,337",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,136",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-16,-228",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-85",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ElvAB_3"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-37,398",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,359,237",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["DTPanelBuiMiddleDTPanelMover"] = "BOTTOM,ElvUIParent,BOTTOM,2,95",
				["ElvAB_4"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,-4,394",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["TooltipMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,-340,373",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-188",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,333",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
			},
			["convertPages"] = true,
			["tooltip"] = {
				["headerFontSize"] = 11,
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Expressway",
				},
				["font"] = "Expressway",
				["smallTextFontSize"] = 11,
				["fontSize"] = 10,
				["textFontSize"] = 11,
			},
			["nameplates"] = {
				["fontSize"] = 10,
				["statusbar"] = "BuiFlat",
				["units"] = {
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
				},
				["font"] = "Expressway",
				["displayStyle"] = "BLIZZARD",
			},
			["unitframe"] = {
				["fontSize"] = 15,
				["font"] = "Bui Tukui",
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["portrait"] = {
							["enable"] = true,
							["width"] = 60,
							["transparent"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
						},
						["targetsGroup"] = {
							["width"] = 70,
							["disableMouseoverGlow"] = false,
							["yOffset"] = -12,
							["disableFocusGlow"] = false,
							["height"] = 16,
							["disableTargetGlow"] = false,
						},
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["name"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 2,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["yOffset"] = 16,
						},
						["height"] = 40,
						["verticalSpacing"] = 35,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["buffIndicator"] = {
							["size"] = 12,
						},
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["yOffset"] = 15,
							["attachTo"] = "InfoPanel",
							["size"] = 12,
						},
						["power"] = {
							["text_format"] = "",
							["yOffset"] = -2,
							["position"] = "LEFT",
							["height"] = 8,
							["xOffset"] = 2,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["fontSize"] = 14,
							["xOffset"] = 2,
							["yOffset"] = 8,
							["anchorPoint"] = "TOPRIGHT",
							["position"] = "RIGHT",
							["sizeOverride"] = 23,
						},
						["width"] = 220,
						["health"] = {
							["position"] = "RIGHT",
							["xOffset"] = 0,
							["text_format"] = "[health:current-percent]",
							["yOffset"] = -2,
						},
						["buffs"] = {
							["sizeOverride"] = 18,
							["yOffset"] = -10,
							["anchorPoint"] = "RIGHT",
							["xOffset"] = 2,
						},
						["petsGroup"] = {
							["width"] = 60,
							["disableTargetGlow"] = false,
							["xOffset"] = 0,
							["disableMouseoverGlow"] = false,
							["yOffset"] = -1,
							["disableFocusGlow"] = false,
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
						},
					},
					["focus"] = {
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["castbar"] = {
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 400,
							["strataAndLevel"] = {
								["frameStrata"] = "HIGH",
							},
							["height"] = 33,
						},
						["width"] = 110,
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["yOffset"] = 2,
							["sizeOverride"] = 32,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
						},
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["position"] = "RIGHT",
							["xOffset"] = 8,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["fontSize"] = 14,
							["yOffset"] = 1,
							["sizeOverride"] = 26,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-percent]",
							["threatStyle"] = "GLOW",
							["xOffset"] = 4,
							["detachFromFrame"] = true,
							["height"] = 6,
							["detachedWidth"] = 240,
						},
						["width"] = 240,
						["portrait"] = {
							["enable"] = true,
							["width"] = 0,
							["camDistanceScale"] = 1,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["orientation"] = "LEFT",
						["castbar"] = {
							["iconXOffset"] = 10,
							["iconPosition"] = "RIGHT",
							["icon"] = false,
							["width"] = 240,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
					},
					["raid2"] = {
						["numGroups"] = 6,
					},
					["focustarget"] = {
						["enable"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["infoPanel"] = {
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
					["player"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["yOffset"] = 2,
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["enable"] = true,
							["width"] = 0,
							["camDistanceScale"] = 1,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
						},
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["height"] = 34,
						["buffs"] = {
							["sizeOverride"] = 26,
							["enable"] = true,
							["yOffset"] = 1,
							["noDuration"] = false,
							["attachTo"] = "FRAME",
							["fontSize"] = 14,
						},
						["castbar"] = {
							["icon"] = false,
							["width"] = 240,
							["height"] = 28,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["text_format"] = "[powercolor][power:current-percent]",
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["detachedWidth"] = 240,
							["hideonnpc"] = true,
							["detachFromFrame"] = true,
							["height"] = 6,
						},
						["width"] = 240,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
					},
					["raid1"] = {
						["numGroups"] = 6,
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
							["xOffset"] = 2,
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Bui Visitor1",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["roleIcon"] = {
							["yOffset"] = 0,
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
						},
						["power"] = {
							["height"] = 5,
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
							["yOffset"] = -17,
							["anchorPoint"] = "TOPRIGHT",
						},
						["width"] = 78,
						["health"] = {
							["position"] = "CENTER",
							["yOffset"] = 0,
						},
						["buffs"] = {
							["sizeOverride"] = 22,
						},
					},
					["raid3"] = {
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["enable"] = true,
							["yOffset"] = 4,
							["font"] = "Bui Visitor1",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["roleIcon"] = {
							["enable"] = true,
							["yOffset"] = 0,
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 10,
						},
						["health"] = {
							["yOffset"] = 1,
						},
						["width"] = 78,
					},
					["boss"] = {
						["debuffs"] = {
							["sizeOverride"] = 24,
							["xOffset"] = -1,
							["yOffset"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
							["xOffset"] = 2,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 58,
						["buffs"] = {
							["xOffset"] = 16,
							["yOffset"] = 0,
							["anchorPoint"] = "CENTER",
							["attachTo"] = "HEALTH",
						},
						["castbar"] = {
							["iconXOffset"] = 2,
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["width"] = 110,
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
					},
				},
				["statusbar"] = "BuiFlat",
				["colors"] = {
					["healthclass"] = true,
					["castReactionColor"] = true,
					["transparentHealth"] = true,
					["powerclass"] = true,
					["colorhealthbyvalue"] = false,
					["castClassColor"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["useDeadBackdrop"] = true,
					["transparentAurabars"] = true,
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["panelTransparency"] = true,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["left"] = "Time",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["middle"] = "Orderhall (BenikUI)",
						["left"] = "Attack Power",
					},
					["BuiMiddleDTPanel"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						"Versatility", -- [4]
						["enable"] = true,
						["battleground"] = false,
					},
					["RightChatDataPanel"] = {
						"Difficulty", -- [1]
					},
					["LeftChatDataPanel"] = {
						[3] = "Mail",
					},
				},
				["battlePanel"] = {
					["BuiMiddleDTPanel"] = {
						"", -- [1]
						"", -- [2]
						"", -- [3]
						"", -- [4]
					},
				},
				["fontOutline"] = "OUTLINE",
				["leftChatPanel"] = false,
				["font"] = "Expressway",
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsPerRow"] = 1,
					["point"] = "TOPLEFT",
					["buttonSpacing"] = 4,
					["backdropSpacing"] = 4,
					["buttons"] = 12,
					["buttonSize"] = 26,
				},
				["checkSelfCast"] = false,
				["fontOutline"] = "MONOCROMEOUTLINE",
				["bar1"] = {
					["backdropSpacing"] = 4,
					["buttonSize"] = 30,
					["buttonSpacing"] = 4,
				},
				["font"] = "Bui Visitor1",
				["barPet"] = {
					["buttonsPerRow"] = 10,
					["buttonSpacing"] = 4,
					["buttonSize"] = 22,
					["backdropSpacing"] = 4,
					["backdrop"] = false,
				},
				["backdropSpacingConverted"] = true,
				["bar6"] = {
					["enabled"] = true,
					["backdropSpacing"] = 4,
					["buttonSize"] = 30,
					["buttonSpacing"] = 4,
				},
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["buttons"] = 11,
				},
				["bar2"] = {
					["buttonSize"] = 18,
				},
				["bar5"] = {
					["buttonsPerRow"] = 12,
					["buttonSpacing"] = 4,
					["backdropSpacing"] = 3,
					["buttonSize"] = 30,
					["buttons"] = 12,
				},
				["stanceBar"] = {
					["buttonSize"] = 24,
				},
				["bar4"] = {
					["backdropSpacing"] = 4,
					["buttonSize"] = 26,
					["buttonSpacing"] = 4,
					["widthMult"] = 2,
				},
			},
			["benikui"] = {
				["databars"] = {
					["artifact"] = {
						["notifiers"] = {
							["position"] = "RIGHT",
						},
						["buttonStyle"] = "DEFAULT",
					},
					["experience"] = {
						["buiStyle"] = false,
					},
					["honor"] = {
						["notifiers"] = {
							["position"] = "LEFT",
						},
					},
					["azerite"] = {
						["enable"] = false,
					},
				},
				["misc"] = {
					["ilevel"] = {
						["font"] = "Expressway",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["unitframes"] = {
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
					["player"] = {
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["detachPortrait"] = true,
					},
					["target"] = {
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["detachPortrait"] = true,
						["getPlayerPortraitSize"] = false,
					},
				},
				["installed"] = true,
				["datatexts"] = {
					["mail"] = {
						["toggle"] = false,
					},
					["middle"] = {
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 412,
					},
					["chat"] = {
						["enable"] = false,
					},
				},
				["dashboards"] = {
					["system"] = {
						["instance"] = false,
					},
					["DashboardDBConverted"] = "4.27",
				},
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["font"] = "Expressway",
				["panelHeight"] = 300,
				["panelWidthRight"] = 400,
				["panelBackdrop"] = "LEFT",
				["panelColor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["timeStampFormat"] = "%H:%M ",
				["panelSnapLeftID"] = 1,
				["panelColorConverted"] = true,
				["tabFontSize"] = 11,
				["tabFont"] = "Expressway",
				["maxLines"] = 2000,
			},
		},
		["Adrid - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["textYoffset"] = 10,
					["height"] = 6,
					["font"] = "Expressway",
					["textSize"] = 10,
					["width"] = 412,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["azerite"] = {
					["height"] = 231,
					["orientation"] = "VERTICAL",
					["width"] = 7,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["font"] = "Expressway",
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["objectiveFrameHeight"] = 750,
				["minimap"] = {
					["icons"] = {
						["classHall"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["locationText"] = "HIDE",
					["size"] = 150,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,136",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,234",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,146",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,241",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-16,-228",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,4",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,359,237",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-85",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,932,136",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["font"] = "Expressway",
				["headerFontSize"] = 11,
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["timeStampFormat"] = "%H:%M ",
				["panelColor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 208,
				["tabFont"] = "Expressway",
				["panelWidthRight"] = 400,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
			["layoutSet"] = "dpsCaster",
			["unitframe"] = {
				["filters"] = {
					["aurawatch"] = {
					},
				},
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["castReactionColor"] = true,
					["transparentAurabars"] = true,
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["statusbar"] = "BuiFlat",
				["font"] = "Bui Tukui",
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["portrait"] = {
							["overlay"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["threatStyle"] = "GLOW",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 110,
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
							["iconXOffset"] = 2,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["colorOverride"] = "FORCE_ON",
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 12,
						},
						["numGroups"] = 6,
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["yOffset"] = 0,
							["position"] = "CENTER",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["verticalSpacing"] = 5,
						["height"] = 40,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["width"] = 78,
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
							["yOffset"] = 0,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["size"] = 12,
							["attachTo"] = "InfoPanel",
							["yOffset"] = 15,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["health"] = {
							["xOffset"] = 0,
							["yOffset"] = -2,
							["text_format"] = "[health:current-percent]",
							["position"] = "RIGHT",
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = 16,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["position"] = "TOPLEFT",
						},
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["xOffset"] = 0,
							["width"] = 60,
							["height"] = 18,
							["yOffset"] = -1,
						},
						["targetsGroup"] = {
							["height"] = 16,
							["width"] = 70,
							["yOffset"] = -12,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["size"] = 20,
							["yOffset"] = 4,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["health"] = {
							["yOffset"] = 1,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["position"] = "RIGHT",
							["enable"] = true,
							["size"] = 10,
							["xOffset"] = -2,
							["yOffset"] = 0,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["height"] = 16,
							["enable"] = false,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["width"] = 240,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -25,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["orientation"] = "LEFT",
						["height"] = 34,
						["buffs"] = {
							["sizeOverride"] = 26,
							["fontSize"] = 14,
							["yOffset"] = 1,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachedWidth"] = 240,
							["height"] = 6,
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
							["fontSize"] = 14,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 6,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["detachedWidth"] = 240,
							["xOffset"] = 2,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["frequentUpdates"] = true,
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["fontSize"] = 14,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "Orderhall (BenikUI)",
					},
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Time",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 3,
					["buttonsize"] = 30,
					["enabled"] = true,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["bar4"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
					["widthMult"] = 2,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdrop"] = false,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 22,
					["backdropSpacing"] = 4,
				},
				["backdropSpacingConverted"] = true,
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["width"] = 412,
						["backdrop"] = true,
						["transparent"] = false,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["nameplates"] = {
				["fontSize"] = 10,
				["statusbar"] = "BuiFlat",
				["font"] = "Expressway",
				["displayStyle"] = "BLIZZARD",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Allevin - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["textYoffset"] = 10,
					["height"] = 6,
					["font"] = "Expressway",
					["textSize"] = 10,
					["width"] = 412,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["azerite"] = {
					["orientation"] = "VERTICAL",
					["height"] = 231,
					["width"] = 7,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["font"] = "Expressway",
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["backdropcolor"] = {
					["r"] = 0.025,
					["g"] = 0.025,
					["b"] = 0.025,
				},
				["objectiveFrameHeight"] = 750,
				["minimap"] = {
					["icons"] = {
						["classHall"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["locationText"] = "HIDE",
					["size"] = 150,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,4",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,932,136",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
				["ThreatBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,216",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,136",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,241",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-16,-228",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,234",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,359,237",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["DTPanelBuiMiddleDTPanelMover"] = "BOTTOM,ElvUIParent,BOTTOM,2,95",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,146",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-85",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
			},
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["font"] = "Expressway",
					["fontSize"] = 9,
				},
				["smallTextFontSize"] = 11,
				["font"] = "Expressway",
				["headerFontSize"] = 11,
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["nameplates"] = {
				["fontSize"] = 10,
				["font"] = "Expressway",
				["statusbar"] = "BuiFlat",
				["displayStyle"] = "BLIZZARD",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
			["unitframe"] = {
				["filters"] = {
					["aurawatch"] = {
					},
				},
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.14901960784314,
						["g"] = 0.003921568627451,
						["b"] = 0.003921568627451,
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "BuiFlat",
				["smoothbars"] = true,
				["font"] = "Bui Tukui",
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["portrait"] = {
							["overlay"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["threatStyle"] = "GLOW",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 110,
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["castbar"] = {
							["iconXOffset"] = 2,
							["iconAttached"] = false,
							["iconPosition"] = "RIGHT",
						},
						["width"] = 210,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["size"] = 12,
							["attachTo"] = "InfoPanel",
							["yOffset"] = 15,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["xOffset"] = 2,
							["position"] = "LEFT",
							["enable"] = false,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = 16,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["position"] = "TOPLEFT",
						},
						["health"] = {
							["xOffset"] = 0,
							["yOffset"] = -2,
							["text_format"] = "[health:current-percent]",
							["position"] = "RIGHT",
						},
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["xOffset"] = 0,
							["width"] = 60,
							["height"] = 18,
							["yOffset"] = -1,
						},
						["targetsGroup"] = {
							["height"] = 16,
							["width"] = 70,
							["yOffset"] = -12,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["size"] = 20,
							["yOffset"] = 4,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["health"] = {
							["yOffset"] = 1,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 10,
							["enable"] = true,
							["yOffset"] = 0,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["height"] = 16,
							["enable"] = false,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["height"] = 6,
							["detachedWidth"] = 240,
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["width"] = 240,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -25,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["orientation"] = "LEFT",
						["height"] = 34,
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["colorOverride"] = "FORCE_ON",
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 12,
						},
						["numGroups"] = 6,
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["health"] = {
							["yOffset"] = 0,
							["position"] = "CENTER",
						},
						["verticalSpacing"] = 5,
						["height"] = 40,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["width"] = 78,
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
							["yOffset"] = 0,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["detachedWidth"] = 240,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["height"] = 6,
							["xOffset"] = 2,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 20,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["frequentUpdates"] = true,
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["fontSize"] = 14,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["left"] = "Time",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["middle"] = "Orderhall (BenikUI)",
						["left"] = "Attack Power",
					},
					["BuiMiddleDTPanel"] = {
						["enable"] = true,
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 30,
					["backdropSpacing"] = 3,
					["enabled"] = true,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["bar4"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 26,
					["backdropSpacing"] = 4,
					["widthMult"] = 2,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdropSpacing"] = 4,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["buttonsize"] = 22,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "dpsCaster",
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["timeStampFormat"] = "%H:%M ",
				["panelColor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 208,
				["tabFont"] = "Expressway",
				["panelWidthRight"] = 400,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 412,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
		["Svend - Turalyon"] = {
			["databars"] = {
				["artifact"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["width"] = 412,
					["height"] = 6,
					["font"] = "Expressway",
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["font"] = "Expressway",
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["objectiveFrameHeight"] = 750,
				["minimap"] = {
					["icons"] = {
						["classHall"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["locationText"] = "HIDE",
					["size"] = 150,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,136",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,234",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-257,139",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,663",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,95",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,202",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,241",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,290",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-352",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-128",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-39,-357",
				["ArtifactBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,932,136",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-280",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,146",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-92,346",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
			},
			["v11NamePlateReset"] = true,
			["bags"] = {
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["timeStampFormat"] = "%H:%M ",
				["panelColor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Expressway",
				["panelHeight"] = 208,
				["tabFont"] = "Expressway",
				["panelWidthRight"] = 400,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Expressway",
					},
				},
				["general"] = {
					["splashScreen"] = false,
					["loginMessage"] = false,
					["auras"] = false,
				},
				["datatexts"] = {
					["middle"] = {
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 412,
					},
				},
				["unitframes"] = {
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["target"] = {
								["yOffset"] = -18,
							},
							["player"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["unitframe"] = {
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["castReactionColor"] = true,
					["transparentAurabars"] = true,
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "BuiFlat",
				["smoothbars"] = true,
				["font"] = "Bui Tukui",
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["width"] = 110,
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["size"] = 12,
							["attachTo"] = "InfoPanel",
							["yOffset"] = 15,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["xOffset"] = 2,
							["position"] = "LEFT",
							["enable"] = false,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = 16,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["position"] = "TOPLEFT",
						},
						["health"] = {
							["xOffset"] = 0,
							["yOffset"] = -2,
							["text_format"] = "[health:current-percent]",
							["position"] = "RIGHT",
						},
						["verticalSpacing"] = 30,
						["height"] = 40,
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["xOffset"] = 0,
							["yOffset"] = -1,
							["height"] = 18,
							["width"] = 60,
						},
						["targetsGroup"] = {
							["height"] = 16,
							["yOffset"] = -12,
							["width"] = 70,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["colorOverride"] = "FORCE_ON",
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 12,
						},
						["numGroups"] = 6,
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["health"] = {
							["yOffset"] = 0,
							["position"] = "CENTER",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
							["yOffset"] = 0,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["detachedWidth"] = 240,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["height"] = 6,
							["xOffset"] = 2,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["frequentUpdates"] = true,
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["fontSize"] = 14,
							["noDuration"] = false,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Bui Visitor1",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["size"] = 20,
							["yOffset"] = 4,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["health"] = {
							["yOffset"] = 1,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 10,
							["enable"] = true,
							["yOffset"] = 0,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["castbar"] = {
							["height"] = 16,
							["enable"] = false,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Bui Tukui",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 20,
							},
						},
						["castbar"] = {
							["iconXOffset"] = 10,
							["iconPosition"] = "RIGHT",
							["icon"] = false,
							["width"] = 240,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["width"] = 240,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -25,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["height"] = 34,
						["orientation"] = "LEFT",
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachedWidth"] = 240,
							["height"] = 6,
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["xOffset"] = 16,
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
							["iconXOffset"] = 2,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["portrait"] = {
							["overlay"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "Orderhall (BenikUI)",
					},
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 30,
					["backdropSpacing"] = 3,
					["enabled"] = true,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["backdropSpacing"] = 4,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["buttonsize"] = 26,
				},
				["font"] = "Bui Visitor1",
				["bar4"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 26,
					["backdropSpacing"] = 4,
					["widthMult"] = 2,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdrop"] = false,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 22,
					["backdropSpacing"] = 4,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "dpsCaster",
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 10,
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["font"] = "Expressway",
				["headerFontSize"] = 11,
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
				},
				["font"] = "Bui Visitor1",
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
			},
		},
	},
	["serverID"] = {
		[1185] = {
			["Bloodscalp"] = true,
		},
		[86] = {
			["Silvermoon"] = true,
		},
		[3685] = {
			["Turalyon"] = true,
		},
		[1190] = {
			["Doomhammer"] = true,
		},
		[61] = {
			["Zul'jin"] = true,
		},
	},
	["faction"] = {
		["Zul'jin"] = {
			["Artoc"] = "Horde",
		},
		["Doomhammer"] = {
			["Broddah"] = "Horde",
		},
		["Turalyon"] = {
			["Amdam"] = "Alliance",
			["Kaydan"] = "Horde",
			["Kayne"] = "Alliance",
			["Allevin"] = "Alliance",
			["Adamancy"] = "Alliance",
			["Adamian"] = "Alliance",
			["Furrys"] = "Alliance",
			["Adomic"] = "Alliance",
			["Aduum"] = "Alliance",
			["Christoff"] = "Alliance",
			["Christifur"] = "Alliance",
			["Dreg"] = "Alliance",
			["Adrid"] = "Alliance",
			["Badam"] = "Alliance",
			["Svend"] = "Alliance",
			["Abel"] = "Alliance",
			["Asaam"] = "Alliance",
			["Shado"] = "Horde",
			["Adamn"] = "Alliance",
			["Caldo"] = "Alliance",
		},
		["Silvermoon"] = {
			["Artoc"] = "Horde",
		},
		["Bloodscalp"] = {
			["Adreya"] = "Horde",
			["Amdamn"] = "Horde",
		},
	},
	["gold"] = {
		["Zul'jin"] = {
			["Artoc"] = 10000,
		},
		["Doomhammer"] = {
			["Broddah"] = 10200,
		},
		["Turalyon"] = {
			["Dogs"] = 318075,
			["Kaydan"] = 462962507,
			["Kayne"] = 553084667,
			["Sterbodhehm"] = 4,
			["Allevin"] = 113578976,
			["Adamancy"] = 21424289222,
			["Beebo"] = 100000,
			["Furrys"] = 658313354,
			["Adomic"] = 2544400,
			["Aduum"] = 342023861,
			["Adamian"] = 13863702,
			["Adamn"] = 2673339678,
			["Christoff"] = 1432287753,
			["Amdam"] = 14288645981,
			["Adrid"] = 1397414744,
			["Christifur"] = 279127,
			["Dreg"] = 323903796,
			["Asaam"] = 16284118,
			["Badam"] = 2504422855,
			["Caris"] = 864072247,
			["Svend"] = 8378,
			["Abel"] = 427884735,
			["Shado"] = 611702,
			["Adris"] = 18699145,
			["Caldo"] = 1877668,
		},
		["Silvermoon"] = {
			["Artoc"] = 10000,
		},
		["Bloodscalp"] = {
			["Adreya"] = 15830165,
			["Amdamn"] = 3992,
		},
	},
	["LuaErrorDisabledAddOns"] = {
	},
	["profileKeys"] = {
		["Shado - Turalyon"] = "Normal Layout",
		["Christifur - Turalyon"] = "Christifur - Turalyon",
		["Adrid - Turalyon"] = "Normal Layout",
		["Kayne - Turalyon"] = "Normal Layout",
		["Sterbodhehm - Turalyon"] = "Sterbodhehm - Turalyon",
		["Beebo - Turalyon"] = "Beebo - Turalyon",
		["Caldo - Turalyon"] = "Healing Layout",
		["Aduum - Turalyon"] = "Normal Layout",
		["Adreya - Bloodscalp"] = "Adreya - Bloodscalp",
		["Kaydan - Turalyon"] = "Normal Layout",
		["Adamian - Turalyon"] = "Normal Layout",
		["Artoc - Zul'jin"] = "Normal Layout",
		["Adris - Turalyon"] = "Adris - Turalyon",
		["Amdamn - Bloodscalp"] = "Default",
		["Abel - Turalyon"] = "Normal Layout",
		["Adamancy - Turalyon"] = "Normal Layout",
		["Dogs - Turalyon"] = "Dogs - Turalyon",
		["Furrys - Turalyon"] = "Normal Layout",
		["Artoc - Silvermoon"] = "Normal Layout",
		["Amdam - Turalyon"] = "Normal Layout",
		["Badam - Turalyon"] = "Normal Layout",
		["Dreg - Turalyon"] = "Healing Layout",
		["Caris - Turalyon"] = "Caris - Turalyon",
		["Allevin - Turalyon"] = "Normal Layout",
		["Broddah - Doomhammer"] = "Normal Layout",
		["Asaam - Turalyon"] = "Normal Layout",
		["Adamn - Turalyon"] = "Normal Layout",
		["Christoff - Turalyon"] = "Normal Layout",
		["Svend - Turalyon"] = "Normal Layout",
		["Adomic - Turalyon"] = "Normal Layout",
	},
	["BuiErrorDisabledAddOns"] = {
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Shado - Turalyon"] = "Shado - Turalyon",
		["Christifur - Turalyon"] = "Christifur - Turalyon",
		["Adrid - Turalyon"] = "Adrid - Turalyon",
		["Kayne - Turalyon"] = "Kayne - Turalyon",
		["Sterbodhehm - Turalyon"] = "Sterbodhehm - Turalyon",
		["Beebo - Turalyon"] = "Beebo - Turalyon",
		["Caldo - Turalyon"] = "Caldo - Turalyon",
		["Aduum - Turalyon"] = "Aduum - Turalyon",
		["Adreya - Bloodscalp"] = "Adreya - Bloodscalp",
		["Kaydan - Turalyon"] = "Kaydan - Turalyon",
		["Adamian - Turalyon"] = "Adamian - Turalyon",
		["Artoc - Zul'jin"] = "Artoc - Zul'jin",
		["Adris - Turalyon"] = "Adris - Turalyon",
		["Amdamn - Bloodscalp"] = "Amdamn - Bloodscalp",
		["Abel - Turalyon"] = "Abel - Turalyon",
		["Adamancy - Turalyon"] = "Adamancy - Turalyon",
		["Dogs - Turalyon"] = "Dogs - Turalyon",
		["Furrys - Turalyon"] = "Furrys - Turalyon",
		["Artoc - Silvermoon"] = "Artoc - Silvermoon",
		["Amdam - Turalyon"] = "Amdam - Turalyon",
		["Badam - Turalyon"] = "Badam - Turalyon",
		["Dreg - Turalyon"] = "Dreg - Turalyon",
		["Caris - Turalyon"] = "Caris - Turalyon",
		["Allevin - Turalyon"] = "Allevin - Turalyon",
		["Broddah - Doomhammer"] = "Broddah - Doomhammer",
		["Asaam - Turalyon"] = "Asaam - Turalyon",
		["Adamn - Turalyon"] = "Adamn - Turalyon",
		["Christoff - Turalyon"] = "Christoff - Turalyon",
		["Svend - Turalyon"] = "Svend - Turalyon",
		["Adomic - Turalyon"] = "Adomic - Turalyon",
	},
	["profiles"] = {
		["Shado - Turalyon"] = {
			["benikui"] = {
				["session"] = {
					["day"] = 27,
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.8,
		},
		["Christifur - Turalyon"] = {
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[241] = false,
						[1174] = false,
						[980] = false,
						[1587] = false,
						[615] = false,
						[1508] = false,
						[385] = false,
						[393] = false,
						[1191] = false,
						[401] = false,
						[1716] = false,
						[1129] = false,
						[1717] = false,
						[823] = false,
						[1273] = false,
						[1416] = false,
						[1718] = false,
						[1226] = false,
						[752] = false,
						[776] = false,
						[394] = false,
						[398] = false,
						[402] = false,
						[824] = false,
						[1275] = false,
						[1355] = false,
						[1149] = false,
						[777] = false,
						[1356] = false,
						[944] = false,
						[61] = false,
						[1166] = false,
						[738] = false,
						[1357] = false,
						[754] = false,
						[391] = false,
						[395] = false,
						[1580] = false,
						[1342] = false,
						[1533] = false,
						[81] = false,
						[1534] = false,
						[676] = false,
						[1154] = false,
						[1710] = false,
						[994] = false,
						[384] = false,
						[1155] = false,
						[1314] = false,
						[400] = false,
						[677] = false,
						[1535] = false,
						[416] = false,
						[828] = false,
						[515] = false,
						[1299] = false,
						[1560] = false,
						[361] = false,
						[614] = false,
						[1101] = false,
						[1172] = false,
						[1268] = false,
						[1220] = false,
						[1173] = false,
						[789] = false,
						[697] = false,
						[397] = false,
						[829] = false,
						[821] = false,
						[399] = false,
					},
				},
			},
			["general"] = {
				["chatBubbleFontSize"] = 12,
				["normTex"] = "BuiFlat",
				["dmgfont"] = "Expressway",
				["chatBubbleFont"] = "Expressway",
				["namefont"] = "Expressway",
				["glossTex"] = "BuiFlat",
			},
			["benikui"] = {
				["install_complete"] = "3.33",
				["expressway"] = true,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "10.69",
		},
		["Adrid - Turalyon"] = {
			["skins"] = {
				["parchmentRemover"] = {
					["enable"] = true,
				},
			},
			["benikui"] = {
				["dashboards"] = {
					["tokens"] = {
						["chooseTokens"] = {
							[395] = false,
							[1565] = false,
							[944] = false,
							[1580] = false,
							[1533] = false,
							[1717] = false,
							[1721] = false,
							[1560] = false,
							[1719] = false,
							[1718] = false,
							[1755] = false,
						},
					},
				},
				["session"] = {
					["day"] = 2,
				},
				["install_complete"] = "3.32",
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "10.69",
		},
		["Kayne - Turalyon"] = {
			["general"] = {
				["normTex"] = "BuiFlat",
				["chatBubbleFont"] = "Expressway",
				["glossTex"] = "BuiFlat",
			},
			["benikui"] = {
				["install_complete"] = "3.32",
				["dashboards"] = {
					["tokens"] = {
						["chooseTokens"] = {
							[395] = false,
							[1565] = false,
							[824] = false,
							[1220] = false,
							[1580] = false,
							[1560] = false,
							[1533] = false,
							[1710] = false,
							[1721] = false,
							[1155] = false,
							[1166] = false,
							[1718] = false,
							[1299] = false,
						},
					},
				},
				["session"] = {
					["day"] = 7,
				},
				["expressway"] = true,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "10.69",
		},
		["Sterbodhehm - Turalyon"] = {
			["benikui"] = {
				["session"] = {
					["day"] = 7,
				},
			},
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[241] = false,
						[1174] = false,
						[980] = false,
						[1587] = false,
						[615] = false,
						[1508] = false,
						[385] = false,
						[393] = false,
						[397] = false,
						[401] = false,
						[1716] = false,
						[1129] = false,
						[1717] = false,
						[823] = false,
						[1273] = false,
						[1416] = false,
						[1718] = false,
						[1226] = false,
						[752] = false,
						[776] = false,
						[1560] = false,
						[398] = false,
						[402] = false,
						[824] = false,
						[1275] = false,
						[1355] = false,
						[1149] = false,
						[777] = false,
						[1356] = false,
						[944] = false,
						[61] = false,
						[1166] = false,
						[738] = false,
						[1357] = false,
						[754] = false,
						[391] = false,
						[1580] = false,
						[1342] = false,
						[1533] = false,
						[81] = false,
						[1534] = false,
						[676] = false,
						[1154] = false,
						[1710] = false,
						[994] = false,
						[384] = false,
						[1155] = false,
						[1314] = false,
						[400] = false,
						[677] = false,
						[515] = false,
						[416] = false,
						[828] = false,
						[697] = false,
						[1299] = false,
						[361] = false,
						[1101] = false,
						[1220] = false,
						[1172] = false,
						[1535] = false,
						[1268] = false,
						[614] = false,
						[1173] = false,
						[789] = false,
						[1191] = false,
						[829] = false,
						[394] = false,
						[821] = false,
						[399] = false,
					},
				},
			},
		},
		["Beebo - Turalyon"] = {
			["install_complete"] = "10.75",
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["benikui"] = {
				["session"] = {
					["day"] = 4,
				},
				["install_complete"] = "3.43",
			},
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[416] = false,
						[828] = false,
						[515] = false,
						[361] = false,
						[1101] = false,
						[1357] = false,
						[1172] = false,
						[777] = false,
						[1149] = false,
						[789] = false,
						[980] = false,
						[1129] = false,
						[677] = false,
						[61] = false,
						[697] = false,
						[738] = false,
						[1275] = false,
						[1342] = false,
						[1220] = false,
						[752] = false,
						[384] = false,
						[81] = false,
						[1173] = false,
						[754] = false,
						[385] = false,
						[821] = false,
						[823] = false,
						[1508] = false,
						[391] = false,
						[829] = false,
						[1268] = false,
						[1155] = false,
						[1355] = false,
						[1154] = false,
						[776] = false,
						[393] = false,
						[394] = false,
						[676] = false,
						[1174] = false,
						[397] = false,
						[398] = false,
						[399] = false,
						[400] = false,
						[401] = false,
						[402] = false,
						[1166] = false,
						[1191] = false,
						[1273] = false,
						[615] = false,
						[1533] = false,
						[1314] = false,
						[1226] = false,
						[1356] = false,
						[1299] = false,
						[994] = false,
						[944] = false,
						[614] = false,
						[241] = false,
						[1416] = false,
					},
				},
			},
		},
		["Caldo - Turalyon"] = {
			["benikui"] = {
				["session"] = {
					["day"] = 25,
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 13.06,
		},
		["Aduum - Turalyon"] = {
			["install_complete"] = "10.69",
			["general"] = {
				["normTex"] = "BuiFlat",
				["chatBubbleFont"] = "Expressway",
				["glossTex"] = "BuiFlat",
			},
			["benikui"] = {
				["expressway"] = true,
				["session"] = {
					["day"] = 23,
				},
				["install_complete"] = "3.33",
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[395] = false,
					},
				},
			},
		},
		["Adreya - Bloodscalp"] = {
			["general"] = {
				["normTex"] = "BuiFlat",
				["chatBubbleFont"] = "Expressway",
				["glossTex"] = "BuiFlat",
			},
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[829] = false,
						[1174] = false,
						[980] = false,
						[1587] = false,
						[615] = false,
						[1508] = false,
						[385] = false,
						[393] = false,
						[397] = false,
						[401] = false,
						[1716] = false,
						[1129] = false,
						[1717] = false,
						[823] = false,
						[1273] = false,
						[1416] = false,
						[1718] = false,
						[1226] = false,
						[752] = false,
						[776] = false,
						[394] = false,
						[398] = false,
						[402] = false,
						[824] = false,
						[1275] = false,
						[1355] = false,
						[1149] = false,
						[777] = false,
						[1356] = false,
						[944] = false,
						[61] = false,
						[1166] = false,
						[738] = false,
						[1357] = false,
						[754] = false,
						[391] = false,
						[1580] = false,
						[1342] = false,
						[1533] = false,
						[81] = false,
						[1534] = false,
						[676] = false,
						[1154] = false,
						[1710] = false,
						[994] = false,
						[384] = false,
						[1155] = false,
						[1314] = false,
						[400] = false,
						[677] = false,
						[399] = false,
						[828] = false,
						[1172] = false,
						[1299] = false,
						[697] = false,
						[1191] = false,
						[1220] = false,
						[614] = false,
						[1101] = false,
						[1268] = false,
						[1560] = false,
						[1173] = false,
						[789] = false,
						[361] = false,
						[1535] = false,
						[515] = false,
						[821] = false,
						[416] = false,
					},
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["benikui"] = {
				["install_complete"] = "3.32",
				["session"] = {
					["day"] = 25,
				},
				["expressway"] = true,
			},
			["theme"] = "class",
			["install_complete"] = "10.69",
		},
		["Kaydan - Turalyon"] = {
			["benikui"] = {
				["dashboards"] = {
					["tokens"] = {
						["chooseTokens"] = {
							[1580] = false,
							[1220] = false,
							[1560] = false,
							[1533] = false,
							[1166] = false,
							[1721] = false,
						},
					},
				},
				["install_complete"] = "3.71",
			},
			["bags"] = {
				["enable"] = false,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = "11.25",
		},
		["Adamian - Turalyon"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["benikui"] = {
				["session"] = {
					["day"] = 23,
				},
			},
			["install_complete"] = 13.06,
		},
		["Artoc - Zul'jin"] = {
			["benikui"] = {
				["session"] = {
					["day"] = 2,
				},
				["install_complete"] = "3.952",
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.06,
		},
		["Adris - Turalyon"] = {
			["general"] = {
				["chatBubbleFontSize"] = 12,
				["normTex"] = "BuiFlat",
				["dmgfont"] = "Expressway",
				["chatBubbleFont"] = "Expressway",
				["namefont"] = "Expressway",
				["glossTex"] = "BuiFlat",
			},
			["benikui"] = {
				["install_complete"] = "3.52",
				["session"] = {
					["day"] = 2,
				},
				["expressway"] = true,
			},
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[241] = false,
						[1174] = false,
						[980] = false,
						[1587] = false,
						[615] = false,
						[1508] = false,
						[385] = false,
						[393] = false,
						[397] = false,
						[401] = false,
						[1716] = false,
						[1129] = false,
						[1717] = false,
						[823] = false,
						[1273] = false,
						[1416] = false,
						[1718] = false,
						[752] = false,
						[776] = false,
						[1560] = false,
						[398] = false,
						[402] = false,
						[824] = false,
						[1275] = false,
						[1355] = false,
						[1149] = false,
						[777] = false,
						[1721] = false,
						[1356] = false,
						[944] = false,
						[61] = false,
						[1166] = false,
						[738] = false,
						[1357] = false,
						[754] = false,
						[391] = false,
						[1580] = false,
						[1342] = false,
						[1533] = false,
						[81] = false,
						[1534] = false,
						[676] = false,
						[1154] = false,
						[1710] = false,
						[994] = false,
						[384] = false,
						[1155] = false,
						[1314] = false,
						[400] = false,
						[677] = false,
						[399] = false,
						[416] = false,
						[828] = false,
						[394] = false,
						[1299] = false,
						[829] = false,
						[1191] = false,
						[1220] = false,
						[1172] = false,
						[697] = false,
						[1268] = false,
						[1535] = false,
						[1173] = false,
						[789] = false,
						[614] = false,
						[1101] = false,
						[361] = false,
						[821] = false,
						[515] = false,
					},
				},
			},
			["theme"] = "class",
			["install_complete"] = "10.84",
		},
		["Amdamn - Bloodscalp"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["benikui"] = {
				["session"] = {
					["day"] = 25,
				},
			},
			["install_complete"] = 13.06,
		},
		["Abel - Turalyon"] = {
			["general"] = {
				["normTex"] = "BuiFlat",
				["chatBubbleFont"] = "Expressway",
				["glossTex"] = "BuiFlat",
			},
			["benikui"] = {
				["install_complete"] = "3.33",
				["dashboards"] = {
					["tokens"] = {
						["chooseTokens"] = {
							[395] = false,
						},
					},
				},
				["session"] = {
					["day"] = 13,
				},
				["expressway"] = true,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "10.69",
		},
		["Adamancy - Turalyon"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["general"] = {
				["normTex"] = "BuiFlat",
				["chatBubbleFont"] = "Expressway",
				["glossTex"] = "BuiFlat",
			},
			["skins"] = {
				["parchmentRemover"] = {
					["enable"] = true,
				},
			},
			["benikui"] = {
				["expressway"] = true,
				["dashboards"] = {
					["tokens"] = {
						["chooseTokens"] = {
							[1565] = false,
							[944] = false,
							[1813] = false,
							[515] = false,
							[2118] = true,
							[1710] = false,
							[1580] = false,
							[2003] = true,
							[1560] = false,
						},
					},
				},
				["session"] = {
					["day"] = 4,
				},
				["install_complete"] = "3.32",
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "10.69",
		},
		["Dogs - Turalyon"] = {
			["install_complete"] = "10.69",
			["skins"] = {
				["blizzard"] = {
					["alertframes"] = true,
				},
			},
			["general"] = {
				["chatBubbleFontSize"] = 12,
				["normTex"] = "BuiFlat",
				["dmgfont"] = "Expressway",
				["namefont"] = "Expressway",
				["chatBubbleFont"] = "Expressway",
				["glossTex"] = "BuiFlat",
			},
			["benikui"] = {
				["expressway"] = true,
				["session"] = {
					["day"] = 22,
				},
				["install_complete"] = "3.33",
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[416] = false,
						[828] = false,
						[515] = false,
						[824] = false,
						[1101] = false,
						[361] = false,
						[1416] = false,
						[1357] = false,
						[1172] = false,
						[1191] = false,
						[944] = false,
						[789] = false,
						[980] = false,
						[1129] = false,
						[677] = false,
						[614] = false,
						[823] = false,
						[738] = false,
						[1275] = false,
						[1342] = false,
						[1220] = false,
						[752] = false,
						[385] = false,
						[81] = false,
						[1173] = false,
						[754] = false,
						[1533] = false,
						[821] = false,
						[697] = false,
						[1508] = false,
						[994] = false,
						[829] = false,
						[1268] = false,
						[1273] = false,
						[1355] = false,
						[1154] = false,
						[776] = false,
						[393] = false,
						[394] = false,
						[395] = false,
						[1174] = false,
						[397] = false,
						[398] = false,
						[399] = false,
						[400] = false,
						[401] = false,
						[402] = false,
						[1166] = false,
						[391] = false,
						[676] = false,
						[615] = false,
						[1155] = false,
						[384] = false,
						[1226] = false,
						[1356] = false,
						[1149] = false,
						[1299] = false,
						[61] = false,
						[1314] = false,
						[241] = false,
						[777] = false,
					},
				},
			},
		},
		["Furrys - Turalyon"] = {
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[1565] = false,
						[1273] = false,
						[1155] = false,
						[1533] = false,
						[1342] = false,
						[1166] = false,
						[1275] = false,
						[1268] = false,
						[1508] = false,
						[1226] = false,
					},
				},
			},
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
				["normTex"] = "BuiFlat",
				["chatBubbleFont"] = "Expressway",
				["glossTex"] = "BuiFlat",
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["benikui"] = {
				["install_complete"] = "3.34",
				["session"] = {
					["day"] = 4,
				},
				["expressway"] = true,
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "10.69",
		},
		["Artoc - Silvermoon"] = {
			["benikui"] = {
				["session"] = {
					["day"] = 15,
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.12,
		},
		["Amdam - Turalyon"] = {
			["general"] = {
				["normTex"] = "BuiFlat",
				["chatBubbleFont"] = "Expressway",
				["glossTex"] = "BuiFlat",
			},
			["bags"] = {
				["enable"] = false,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["skins"] = {
				["parchmentRemover"] = {
					["enable"] = true,
				},
			},
			["benikui"] = {
				["expressway"] = true,
				["dashboards"] = {
					["tokens"] = {
						["chooseTokens"] = {
							[1565] = false,
							[1719] = false,
							[1813] = false,
							[1710] = false,
							[1173] = false,
							[2003] = true,
							[1721] = false,
							[1755] = false,
							[1580] = false,
							[1718] = false,
							[1560] = false,
						},
					},
				},
				["install_complete"] = "3.32",
			},
			["theme"] = "class",
			["install_complete"] = "10.69",
		},
		["Badam - Turalyon"] = {
			["general"] = {
				["normTex"] = "BuiFlat",
				["chatBubbleFont"] = "Expressway",
				["glossTex"] = "BuiFlat",
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["benikui"] = {
				["expressway"] = true,
				["install_complete"] = "3.32",
				["session"] = {
					["day"] = 3,
				},
				["dashboards"] = {
					["tokens"] = {
						["chooseTokens"] = {
							[2003] = true,
							[1580] = false,
							[1560] = false,
							[1721] = false,
							[1718] = false,
							[1813] = false,
							[2118] = true,
							[2122] = true,
						},
					},
				},
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "10.69",
		},
		["Dreg - Turalyon"] = {
			["benikui"] = {
				["session"] = {
					["day"] = 2,
				},
				["install_complete"] = "3.52",
			},
			["install_complete"] = "10.84",
			["nameplates"] = {
				["enable"] = false,
			},
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[1166] = false,
					},
				},
			},
		},
		["Caris - Turalyon"] = {
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
			},
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[416] = false,
						[828] = false,
						[515] = false,
						[1534] = false,
						[361] = false,
						[1101] = false,
						[1357] = false,
						[1172] = false,
						[1416] = false,
						[1314] = false,
						[789] = false,
						[980] = false,
						[1129] = false,
						[677] = false,
						[944] = false,
						[1716] = false,
						[738] = false,
						[614] = false,
						[994] = false,
						[1535] = false,
						[752] = false,
						[697] = false,
						[81] = false,
						[1173] = false,
						[754] = false,
						[1560] = false,
						[821] = false,
						[384] = false,
						[385] = false,
						[1718] = false,
						[829] = false,
						[1268] = false,
						[1587] = false,
						[1717] = false,
						[391] = false,
						[776] = false,
						[393] = false,
						[394] = false,
						[395] = false,
						[1174] = false,
						[397] = false,
						[398] = false,
						[399] = false,
						[400] = false,
						[401] = false,
						[402] = false,
						[1580] = false,
						[1710] = false,
						[676] = false,
						[615] = false,
						[823] = false,
						[1355] = false,
						[1154] = false,
						[1356] = false,
						[1299] = false,
						[1149] = false,
						[61] = false,
						[1191] = false,
						[241] = false,
						[777] = false,
					},
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["benikui"] = {
				["session"] = {
					["day"] = 5,
				},
				["install_complete"] = "3.32",
			},
			["install_complete"] = "10.69",
		},
		["Allevin - Turalyon"] = {
			["benikui"] = {
				["session"] = {
					["day"] = 7,
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = 11.372,
		},
		["Broddah - Doomhammer"] = {
			["benikui"] = {
				["session"] = {
					["day"] = 23,
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 13.06,
		},
		["Asaam - Turalyon"] = {
			["benikui"] = {
				["session"] = {
					["day"] = 12,
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.12,
		},
		["Adamn - Turalyon"] = {
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[1580] = false,
						[1710] = false,
						[1721] = false,
						[1560] = false,
						[1565] = false,
						[1717] = false,
					},
				},
			},
			["general"] = {
				["normTex"] = "BuiFlat",
				["chatBubbleFont"] = "Expressway",
				["glossTex"] = "BuiFlat",
			},
			["benikui"] = {
				["expressway"] = true,
				["session"] = {
					["day"] = 4,
				},
				["install_complete"] = "3.32",
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "10.69",
		},
		["Christoff - Turalyon"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["benikui"] = {
				["dashboards"] = {
					["tokens"] = {
						["chooseTokens"] = {
							[1560] = false,
						},
					},
				},
			},
			["install_complete"] = "11.06",
		},
		["Svend - Turalyon"] = {
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["benikui"] = {
				["session"] = {
					["day"] = 2,
				},
				["install_complete"] = "3.811",
			},
			["theme"] = "class",
			["install_complete"] = 11.4,
		},
		["Adomic - Turalyon"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["benikui"] = {
				["session"] = {
					["day"] = 10,
				},
			},
			["install_complete"] = 13.1,
		},
	},
}