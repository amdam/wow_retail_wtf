
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Amdam - Turalyon"] = "Amdam - Turalyon",
		["Adamancy - Turalyon"] = "Adamancy - Turalyon",
		["Furrys - Turalyon"] = "Default",
		["Kaydan - Turalyon"] = "Default",
		["Adamn - Turalyon"] = "Default",
		["Kayne - Turalyon"] = "Default",
		["Badam - Turalyon"] = "Default",
		["Adrid - Turalyon"] = "Default",
	},
	["profiles"] = {
		["Adamancy - Turalyon"] = {
			["runOnce"] = {
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceReloadClassDefaultOptions_20220306_63"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["reviseDisplayModes_20180709"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
				["forceReloadClassDefaultOptions_20220306_64"] = true,
				["forceReloadClassDefaultOptions_20220306_62"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["forceSpellFlashBrightness_20221030"] = true,
			},
			["displays"] = {
				["Interrupts"] = {
					["rel"] = "CENTER",
					["x"] = -55.00000381469727,
				},
				["Cooldowns"] = {
					["rel"] = "CENTER",
					["y"] = -280.0000305175781,
				},
				["Primary"] = {
					["rel"] = "CENTER",
					["y"] = -197.1480712890625,
					["x"] = 196.7407531738281,
				},
				["AOE"] = {
					["rel"] = "CENTER",
					["y"] = -142.7406005859375,
					["x"] = 196.1483459472656,
				},
				["Defensives"] = {
					["rel"] = "CENTER",
					["x"] = -110.0000076293945,
				},
			},
			["enabled"] = false,
			["specs"] = {
				[64] = {
					["settings"] = {
						["manual_water_jet"] = false,
						["limit_ice_lance"] = false,
						["check_explosion_range"] = true,
					},
					["buffPadding"] = 0.25,
					["debuffPadding"] = 0,
					["maxRefresh"] = 10,
					["potion"] = "potion_of_rising_death",
					["potionsReset"] = 20180919.1,
				},
				[63] = {
					["settings"] = {
						["prevent_hardcasts"] = false,
						["check_explosion_range"] = true,
						["pyroblast_pull"] = false,
					},
					["buffPadding"] = 0.25,
					["debuffPadding"] = 0,
					["maxRefresh"] = 10,
					["potion"] = "battle_potion_of_intellect",
					["potionsReset"] = 20180919.1,
				},
				[62] = {
					["settings"] = {
						["check_explosion_range"] = true,
					},
					["buffPadding"] = 0.25,
					["debuffPadding"] = 0,
					["maxRefresh"] = 10,
					["potion"] = "battle_potion_of_intellect",
					["potionsReset"] = 20180919.1,
				},
			},
			["packs"] = {
				["Frost Mage"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230512,
					["author"] = "SimC",
					["desc"] = "2023-05-12:  Update Spoils trinket.\n\n2023-05-08:  Updates from SimC; limited_ice_lance now factors in Slick Ice as well.\n\n2023-05-02:  Update for 10.1.\n\n2023-03-28:  Add experimental option for the \"less Ice Lance\" build.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "counterspell",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.flurry.charges_fractional < 1",
								["action"] = "water_jet",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies >= 7 & ! set_bonus.tier30_2pc || active_enemies >= 3 & talent.ice_caller.enabled",
								["list_name"] = "aoe",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "st",
							}, -- [5]
						},
						["precombat"] = {
							{
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "water_elemental",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2",
								["action"] = "blizzard",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1",
								["action"] = "frostbolt",
							}, -- [4]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.snowstorm.stack = buff.snowstorm.max_stack & debuff.frozen.up & ( prev_gcd.1.frost_nova || prev_gcd.1.ice_nova || prev_off_gcd.freeze )",
								["action"] = "cone_of_cold",
							}, -- [1]
							{
								["action"] = "frozen_orb",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "blizzard",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "comet_storm",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( target.level < level + 3 || target.is_add ) & ( ! talent.snowstorm.enabled & debuff.frozen.down || cooldown.cone_of_cold.ready & buff.snowstorm.stack = buff.snowstorm.max_stack )",
								["action"] = "freeze",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( target.level < level + 3 || target.is_add ) & ( prev_gcd.1.comet_storm || cooldown.cone_of_cold.ready & buff.snowstorm.stack = buff.snowstorm.max_stack & gcd.max < 1 )",
								["action"] = "ice_nova",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( target.level < level + 3 || target.is_add ) & active_enemies >= 5 & cooldown.cone_of_cold.ready & buff.snowstorm.stack = buff.snowstorm.max_stack & gcd.max < 1",
								["action"] = "frost_nova",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.snowstorm.stack = buff.snowstorm.max_stack",
								["action"] = "cone_of_cold",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & remaining_winters_chill = 0",
								["action"] = "flurry",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.fingers_of_frost.react || debuff.frozen.remains > travel_time || remaining_winters_chill",
								["action"] = "ice_lance",
							}, -- [10]
							{
								["action"] = "shifting_power",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "ice_nova",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 7",
								["action"] = "dragons_breath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct > 30 & active_enemies >= 7",
								["action"] = "arcane_explosion",
							}, -- [15]
							{
								["action"] = "ebonbolt",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "movement",
							}, -- [18]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.exhaustion.up & buff.bloodlust.down",
								["action"] = "time_warp",
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "spoils_of_neltharus",
								["action"] = "spoils_of_neltharus",
								["criteria"] = "buff.spoils_of_neltharus_mastery.up || buff.spoils_of_neltharus_haste.up & buff.bloodlust.down & buff.temporal_warp.down & time > 0 || buff.spoils_of_neltharus_vers.up & ( buff.bloodlust.up || buff.temporal_warp.up )",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "prev_off_gcd.icy_veins || boss & fight_remains < 60",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "time = 0 & active_enemies <= 2",
								["action"] = "flurry",
								["description"] = "The Mage Discord doesn't check remaining_winters_chill, but that's because sims start with a fresh state and the addon doesn't.",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & ( buff.icy_veins.down || talent.rune_of_power.enabled & ( remaining_winters_chill = 2 || active_enemies >= 3 & talent.ice_caller.enabled ) )",
								["action"] = "icy_veins",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & cooldown.icy_veins.remains > 20 & ( remaining_winters_chill = 2 || active_enemies >= 3 & talent.ice_caller.enabled )",
								["action"] = "rune_of_power",
							}, -- [6]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [12]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.flurry",
								["action"] = "meteor",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.flurry",
								["action"] = "comet_storm",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & remaining_winters_chill = 0 & debuff.winters_chill.down & ( prev_gcd.1.frostbolt || prev_gcd.1.glacial_spike )",
								["action"] = "flurry",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "remaining_winters_chill = 1 & buff.freezing_winds.down",
								["action"] = "ray_of_frost",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "remaining_winters_chill",
								["action"] = "glacial_spike",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.snowstorm.stack = buff.snowstorm.max_stack & remaining_winters_chill",
								["action"] = "cone_of_cold",
							}, -- [6]
							{
								["action"] = "frozen_orb",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & talent.ice_caller.enabled & talent.freezing_rain.enabled",
								["action"] = "blizzard",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & buff.icy_veins.down || cooldown.icy_veins.remains < 20",
								["action"] = "shifting_power",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! limited_ice_lance & ( buff.fingers_of_frost.react & ! prev_gcd.1.glacial_spike || remaining_winters_chill )",
								["action"] = "ice_lance",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "limited_ice_lance & active_enemies >= 2 & ( remaining_winters_chill = 2 || remaining_winters_chill = 1 & buff.brain_freeze.react || remaining_winters_chill & buff.rune_of_power.up || buff.fingers_of_frost.react )",
								["action"] = "ice_lance",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "limited_ice_lance & active_enemies = 1 & ( remaining_winters_chill = 2 || remaining_winters_chill = 1 & buff.brain_freeze.react )",
								["action"] = "ice_lance",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "limited_ice_lance & active_enemies = 1 & ( remaining_winters_chill || buff.fingers_of_frost.react ) & buff.icy_veins.remains < 10 & cooldown.icy_veins.remains > 30",
								["action"] = "ice_lance",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 4",
								["action"] = "ice_nova",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "action.flurry.cooldown_react",
								["action"] = "glacial_spike",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.flurry.charges_fractional < 1",
								["action"] = "ebonbolt",
							}, -- [16]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "movement",
							}, -- [19]
						},
						["movement"] = {
							{
								["enabled"] = true,
								["criteria"] = "movement.distance > 10",
								["action"] = "blink",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ice_floes.down",
								["action"] = "ice_floes",
							}, -- [2]
							{
								["action"] = "ice_nova",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct > 30 & active_enemies >= 2",
								["action"] = "arcane_explosion",
							}, -- [4]
							{
								["action"] = "fire_blast",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "ice_lance",
								["enabled"] = true,
							}, -- [6]
						},
					},
					["version"] = 20230512,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 4: Converted 'talent.ice_caller' to 'talent.ice_caller.enabled' (1x).\n\nThe import for 'aoe' required some automated changes.\nLine 5: Converted 'talent.snowstorm' to 'talent.snowstorm.enabled' (1x).\n\nThe import for 'cds' required some automated changes.\nLine 5: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 5: Converted 'talent.ice_caller' to 'talent.ice_caller.enabled' (1x).\nLine 6: Converted 'talent.ice_caller' to 'talent.ice_caller.enabled' (1x).\n\nThe import for 'st' required some automated changes.\nLine 8: Converted 'talent.ice_caller' to 'talent.ice_caller.enabled' (1x).\nLine 8: Converted 'talent.freezing_rain' to 'talent.freezing_rain.enabled' (1x).\n\nImported 6 action lists.\n",
					["spec"] = 64,
					["profile"] = "actions.precombat+=/arcane_intellect\nactions.precombat+=/summon_water_elemental\nactions.precombat+=/blizzard,if=active_enemies>=2\nactions.precombat+=/frostbolt,if=active_enemies=1\n\nactions=counterspell\nactions+=/water_jet,if=cooldown.flurry.charges_fractional<1\nactions+=/call_action_list,name=cds\nactions+=/run_action_list,name=aoe,strict=1,if=active_enemies>=7&!set_bonus.tier30_2pc||active_enemies>=3&talent.ice_caller\nactions+=/run_action_list,name=st\n\nactions.aoe=cone_of_cold,if=buff.snowstorm.stack=buff.snowstorm.max_stack&debuff.frozen.up&(prev_gcd.1.frost_nova||prev_gcd.1.ice_nova||prev_off_gcd.freeze)\nactions.aoe+=/frozen_orb\nactions.aoe+=/blizzard\nactions.aoe+=/comet_storm\nactions.aoe+=/freeze,if=(target.level<level+3||target.is_add)&(!talent.snowstorm&debuff.frozen.down||cooldown.cone_of_cold.ready&buff.snowstorm.stack=buff.snowstorm.max_stack)\nactions.aoe+=/ice_nova,if=(target.level<level+3||target.is_add)&(prev_gcd.1.comet_storm||cooldown.cone_of_cold.ready&buff.snowstorm.stack=buff.snowstorm.max_stack&gcd.max<1)\nactions.aoe+=/frost_nova,if=(target.level<level+3||target.is_add)&active_enemies>=5&cooldown.cone_of_cold.ready&buff.snowstorm.stack=buff.snowstorm.max_stack&gcd.max<1\nactions.aoe+=/cone_of_cold,if=buff.snowstorm.stack=buff.snowstorm.max_stack\nactions.aoe+=/flurry,if=cooldown_react&remaining_winters_chill=0\nactions.aoe+=/ice_lance,if=buff.fingers_of_frost.react||debuff.frozen.remains>travel_time||remaining_winters_chill\nactions.aoe+=/shifting_power\nactions.aoe+=/ice_nova\nactions.aoe+=/meteor\nactions.aoe+=/dragons_breath,if=active_enemies>=7\nactions.aoe+=/arcane_explosion,if=mana.pct>30&active_enemies>=7\nactions.aoe+=/ebonbolt\nactions.aoe+=/frostbolt\nactions.aoe+=/call_action_list,name=movement\n\nactions.cds+=/time_warp,if=buff.exhaustion.up&buff.bloodlust.down\nactions.cds+=/use_item,name=spoils_of_neltharus,if=buff.spoils_of_neltharus_mastery.up||buff.spoils_of_neltharus_haste.up&buff.bloodlust.down&buff.temporal_warp.down&time>0||buff.spoils_of_neltharus_vers.up&(buff.bloodlust.up||buff.temporal_warp.up)\nactions.cds+=/potion,if=prev_off_gcd.icy_veins||boss&fight_remains<60\n# The Mage Discord doesn't check remaining_winters_chill, but that's because sims start with a fresh state and the addon doesn't.\nactions.cds+=/flurry,if=time=0&active_enemies<=2\nactions.cds+=/icy_veins,if=buff.rune_of_power.down&(buff.icy_veins.down||talent.rune_of_power&(remaining_winters_chill=2||active_enemies>=3&talent.ice_caller))\nactions.cds+=/rune_of_power,if=buff.rune_of_power.down&cooldown.icy_veins.remains>20&(remaining_winters_chill=2||active_enemies>=3&talent.ice_caller)\nactions.cds+=/use_items\n## External buffs are not invoked by the addon, as the player can't choose to trigger them personally.\n## actions.cds+=/invoke_external_buff,name=power_infusion,if=buff.power_infusion.down\n## actions.cds+=/invoke_external_buff,name=blessing_of_summer,if=buff.blessing_of_summer.down\nactions.cds+=/blood_fury\nactions.cds+=/berserking\nactions.cds+=/lights_judgment\nactions.cds+=/fireblood\nactions.cds+=/ancestral_call\n\nactions.movement=blink_any,if=movement.distance>10\nactions.movement+=/ice_floes,if=buff.ice_floes.down\nactions.movement+=/ice_nova\nactions.movement+=/arcane_explosion,if=mana.pct>30&active_enemies>=2\nactions.movement+=/fire_blast\nactions.movement+=/ice_lance\n\nactions.st=meteor,if=prev_gcd.1.flurry\nactions.st+=/comet_storm,if=prev_gcd.1.flurry\nactions.st+=/flurry,if=cooldown_react&remaining_winters_chill=0&debuff.winters_chill.down&(prev_gcd.1.frostbolt||prev_gcd.1.glacial_spike)\nactions.st+=/ray_of_frost,if=remaining_winters_chill=1&buff.freezing_winds.down\nactions.st+=/glacial_spike,if=remaining_winters_chill\nactions.st+=/cone_of_cold,if=buff.snowstorm.stack=buff.snowstorm.max_stack&remaining_winters_chill\nactions.st+=/frozen_orb\nactions.st+=/blizzard,if=active_enemies>=2&talent.ice_caller&talent.freezing_rain\nactions.st+=/shifting_power,if=buff.rune_of_power.down&buff.icy_veins.down||cooldown.icy_veins.remains<20\nactions.st+=/ice_lance,if=!limited_ice_lance&(buff.fingers_of_frost.react&!prev_gcd.1.glacial_spike||remaining_winters_chill)\nactions.st+=/ice_lance,if=limited_ice_lance&active_enemies>=2&(remaining_winters_chill=2||remaining_winters_chill=1&buff.brain_freeze.react||remaining_winters_chill&buff.rune_of_power.up||buff.fingers_of_frost.react)\nactions.st+=/ice_lance,if=limited_ice_lance&active_enemies=1&(remaining_winters_chill=2||remaining_winters_chill=1&buff.brain_freeze.react)\nactions.st+=/ice_lance,if=limited_ice_lance&active_enemies=1&(remaining_winters_chill||buff.fingers_of_frost.react)&buff.icy_veins.remains<10&cooldown.icy_veins.remains>30\nactions.st+=/ice_nova,if=active_enemies>=4\nactions.st+=/glacial_spike,if=action.flurry.cooldown_react\nactions.st+=/ebonbolt,if=cooldown.flurry.charges_fractional<1\nactions.st+=/bag_of_tricks\nactions.st+=/frostbolt\nactions.st+=/call_action_list,name=movement",
				},
				["Fire"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230508,
					["author"] = "SimC",
					["desc"] = "2023-05-08:  Updates for 10.1, including many variables shifted from priority to internal code.\n\n2023-03-20:  Modify priority for \"Instant-Only When Moving\" setting.\n\n2023-03-27:  Remove Scorch > Pyroblast hardcast scenario.\n\n2023-04-02:  Revise Scorch > Pyroblast to check Hot Streak.",
					["lists"] = {
						["combustion_cooldowns"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.up",
								["action"] = "berserking",
							}, -- [3]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( talent.temporal_warp.enabled || runeforge.temporal_warp.enabled ) & buff.exhaustion.up",
								["action"] = "time_warp",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "gladiators_badge",
								["effect_name"] = "gladiators_badge",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "irideus_fragment",
								["action"] = "irideus_fragment",
							}, -- [8]
							{
								["enabled"] = true,
								["name"] = "spoils_of_neltharus",
								["action"] = "spoils_of_neltharus",
							}, -- [9]
							{
								["enabled"] = true,
								["name"] = "tome_of_unstable_power",
								["action"] = "tome_of_unstable_power",
							}, -- [10]
							{
								["enabled"] = true,
								["name"] = "timebreaching_talon",
								["action"] = "timebreaching_talon",
							}, -- [11]
							{
								["enabled"] = true,
								["name"] = "voidmenders_shadowgem",
								["action"] = "voidmenders_shadowgem",
							}, -- [12]
							{
								["enabled"] = true,
								["name"] = "horn_of_valor",
								["action"] = "horn_of_valor",
							}, -- [13]
						},
						["combustion_phase"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "lights_judgment",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "bag_of_tricks",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.combustion.down",
								["action"] = "living_bomb",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Other cooldowns that should be used with Combustion should only be used with an actual Combustion cast and not with a Sun King's Blessing proc.",
								["criteria"] = "buff.combustion.remains > variable.skb_duration || fight_remains < 20",
								["list_name"] = "combustion_cooldowns",
							}, -- [4]
							{
								["enabled"] = true,
								["name"] = "hyperthread_wristwraps",
								["action"] = "hyperthread_wristwraps",
								["criteria"] = "prev.1.fire_blast + prev.2.fire_blast + prev.3.fire_blast >= 2 & action.fire_blast.charges = 0",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "neural_synapse_enhancer",
								["action"] = "neural_synapse_enhancer",
								["criteria"] = "variable.time_to_combustion > 60",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & cooldown.combustion.remains < cast_time & active_enemies >= variable.combustion_flamestrike",
								["action"] = "flamestrike",
								["description"] = "If Combustion is down, precast something before activating it.",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > cast_time & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "pyroblast",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & buff.pyroclasm.react & buff.pyroclasm.remains > cast_time",
								["action"] = "pyroblast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & cooldown.combustion.remains < cast_time & ! conduit.flame_accretion.enabled",
								["action"] = "fireball",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & cooldown.combustion.remains < cast_time",
								["action"] = "scorch",
							}, -- [12]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "hot_streak_spells_in_flight = 0 & buff.combustion.down & variable.time_to_combustion <= 0 & ( ! runeforge.disciplinary_command.enabled || buff.disciplinary_command.up || buff.disciplinary_command_frost.up & talent.rune_of_power.enabled & cooldown.buff_disciplinary_command.ready ) & ( ! runeforge.grisly_icicle.enabled || debuff.grisly_icicle.up ) & ( ! covenant.necrolord || cooldown.deathborne.remains || buff.deathborne.up ) & ( ! covenant.venthyr || cooldown.mirrors_of_torment.remains ) & ( action.scorch.executing & action.scorch.execute_remains < variable.combustion_cast_remains || action.fireball.executing & action.fireball.execute_remains < variable.combustion_cast_remains || action.pyroblast.executing & action.pyroblast.execute_remains < variable.combustion_cast_remains || action.flamestrike.executing & action.flamestrike.execute_remains < variable.combustion_cast_remains )",
								["use_off_gcd"] = 1,
								["description"] = "Combustion should be used when the precast is almost finished.",
								["action"] = "combustion",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & variable.extended_combustion_remains > variable.skb_duration",
								["action"] = "rune_of_power",
								["description"] = "Rune of Power can be used in Combustion if it is down, but this should only be done if there is more Combustion time to benefit from than there would be from an SKB Combustion later.",
							}, -- [14]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! talent.feel_the_burn.enabled & ! conduit.infernal_cascade.enabled & ! variable.fire_blast_pooling & ( ! set_bonus.tier28_4pc || debuff.mirrors_of_torment.down || buff.sun_kings_blessing_ready.down || action.pyroblast.executing ) & buff.combustion.up & ! ( buff.firestorm.react || buff.hyperthermia.react ) & ! buff.hot_streak.react & hot_streak_spells_in_flight + buff.heating_up.react * ( gcd.remains > 0 ) < 2",
								["use_off_gcd"] = 1,
								["description"] = "Without Feel the Burn, just use Fire Blasts when they won't munch crits and when Firestorm is down.",
								["action"] = "fire_blast",
							}, -- [15]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "conduit.infernal_cascade.enabled & ! variable.fire_blast_pooling & ( ! set_bonus.tier28_4pc || debuff.mirrors_of_torment.down || buff.sun_kings_blessing_ready.down || action.pyroblast.executing ) & ( ! equipped.hyperthread_wristwraps || ! cooldown.hyperthread_wristwraps_300142.ready || charges > 1 || debuff.mirrors_of_torment.up ) & ( variable.expected_fire_blasts >= variable.needed_fire_blasts || buff.combustion.remains < gcd.max || variable.extended_combustion_remains <= buff.infernal_cascade.duration || buff.infernal_cascade.stack < 2 || buff.infernal_cascade.remains < gcd.max || cooldown.shifting_power.ready & variable.use_shifting_power || equipped.hyperthread_wristwraps & cooldown.hyperthread_wristwraps_300142.ready ) & buff.combustion.up & ( ! ( buff.firestorm.react || buff.hyperthermia.react ) || buff.infernal_cascade.remains < 0.5 ) & ! buff.hot_streak.react & hot_streak_spells_in_flight + buff.heating_up.react * ( gcd.remains > 0 ) < 2",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
							}, -- [16]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "talent.feel_the_burn.enabled & ! variable.fire_blast_pooling & ( ! set_bonus.tier28_4pc || debuff.mirrors_of_torment.down || buff.sun_kings_blessing_ready.down || action.pyroblast.executing ) & ( ! equipped.hyperthread_wristwraps || ! cooldown.hyperthread_wristwraps_300142.ready || charges > 1 || debuff.mirrors_of_torment.up ) & ( variable.expected_fire_blasts >= variable.needed_fire_blasts || buff.combustion.remains < gcd.max || variable.extended_combustion_remains <= buff.feel_the_burn.duration || buff.feel_the_burn.stack < 2 || buff.feel_the_burn.remains < gcd.max || cooldown.shifting_power.ready & variable.use_shifting_power || equipped.hyperthread_wristwraps & cooldown.hyperthread_wristwraps_300142.ready ) & buff.combustion.up & ( ! ( buff.firestorm.react || buff.hyperthermia.react ) || buff.feel_the_burn.remains < 0.5 ) & ! buff.hot_streak.react & hot_streak_spells_in_flight + buff.heating_up.react * ( gcd.remains > 0 ) < 2",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( buff.hot_streak.react & active_enemies >= variable.combustion_flamestrike ) || ( ( buff.firestorm.react || buff.hyperthermia.react ) & active_enemies >= variable.combustion_flamestrike - ( runeforge.firestorm.enabled || talent.hyperthermia.enabled ) )",
								["action"] = "flamestrike",
								["description"] = "Spend Hot Streaks during Combustion at high priority.",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.up & 2 * buff.hot_streak.react + buff.heating_up.react + hot_streak_spells_in_flight = 2",
								["action"] = "radiant_spark",
								["description"] = "Radiant Spark should be used with a Hot Streak ready to use immediately after the cast finishes. This will naturally set up a Hot Streak spent for the final stack of Radiant Spark.",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "( buff.firestorm.react || buff.hyperthermia.react )",
								["action"] = "pyroblast",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & buff.combustion.up",
								["action"] = "pyroblast",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.react & active_enemies < variable.combustion_flamestrike & buff.combustion.up",
								["action"] = "pyroblast",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "variable.use_shifting_power & buff.combustion.up & ! action.fire_blast.charges & ( action.phoenix_flames.charges < action.phoenix_flames.max_charges || talent.alexstraszas_fury.enabled )",
								["action"] = "shifting_power",
								["description"] = "Using Shifting Power during Combustion to restore Fire Blast and Phoenix Flame charges can be beneficial, but usually only on AoE.",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > execute_time + action.flamestrike.cast_time & buff.rune_of_power.remains < action.flamestrike.cast_time & active_enemies >= variable.combustion_flamestrike",
								["action"] = "rune_of_power",
								["description"] = "If a Sun King's Blessing proc would be used, Rune of Power should be used first if the existing Rune of Power will expire during the cast.",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > cast_time & active_enemies >= variable.combustion_flamestrike & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "flamestrike",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > execute_time + action.pyroblast.cast_time & buff.rune_of_power.remains < action.pyroblast.cast_time",
								["action"] = "rune_of_power",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > cast_time & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "pyroblast",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc & travel_time < buff.combustion.remains & buff.heating_up.react + hot_streak_spells_in_flight < 2 & ( debuff.charring_embers.remains < 2 * gcd.max || buff.flames_fury.up )",
								["action"] = "phoenix_flames",
								["description"] = "With the T30 set, Phoenix Flames should be used to maintain Charring Embers during Combustion and Flame's Fury procs should be spent.",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & buff.pyroclasm.remains > cast_time & buff.combustion.remains > cast_time & active_enemies < variable.combustion_flamestrike & ( ! talent.feel_the_burn.enabled || buff.feel_the_burn.remains > execute_time || buff.heating_up.react + hot_streak_spells_in_flight < 2 )",
								["action"] = "pyroblast",
								["description"] = "Pyroclasm procs should be used in Combustion at higher priority than Phoenix Flames and Scorch.",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc & charges_fractional > 2.5 & ( travel_time < buff.combustion.remains || talent.alexstraszas_fury.enabled )",
								["action"] = "phoenix_flames",
								["description"] = "Avoid capping Phoenix Flames charges during Combustion. TODO: Is there a better way to spend these?",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains > cast_time & buff.flame_accelerant.react",
								["action"] = "fireball",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "! set_bonus.tier30_2pc & ! talent.alexstraszas_fury.enabled & travel_time < buff.combustion.remains & buff.heating_up.react + hot_streak_spells_in_flight < 2 & ( ! talent.from_the_ashes.enabled || variable.extended_combustion_remains < 10 )",
								["action"] = "phoenix_flames",
								["description"] = "Use Phoenix Flames and Scorch in Combustion to help generate Hot Streaks when Fire Blasts are not available or need to be conserved.",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains > cast_time & cast_time >= gcd.max",
								["action"] = "scorch",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains > cast_time",
								["action"] = "fireball",
							}, -- [34]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains < gcd.max & active_enemies > 1",
								["action"] = "living_bomb",
								["description"] = "If there isn't enough time left in Combustion for a Phoenix Flames or Scorch to hit inside of Combustion, use something else.",
							}, -- [35]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains < gcd.max",
								["action"] = "ice_nova",
							}, -- [36]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "! runeforge.disciplinary_command.enabled",
								["action"] = "counterspell",
								["description"] = "Executed every time the actor is available.",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.temporal_warp.enabled & ( buff.exhaustion.up || interpolated_fight_remains < buff.bloodlust.duration )",
								["action"] = "time_warp",
								["description"] = "The second Time Warp is usually best used immediately on pull with Temporal Warp so that it comes off cooldown earlier, this can sometimes be slightly worse if doing so will not result in additional Time Warp(s) throughout the encounter. Additionally, it should always be used at the end of the fight regardless of Combustion being ready if it is available.",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.potion.duration > variable.time_to_combustion + buff.combustion.duration",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion > action_cooldown - 5",
								["action"] = "gladiators_badge",
								["effect_name"] = "gladiators_badge",
							}, -- [4]
							{
								["enabled"] = true,
								["name"] = "empyreal_ordnance",
								["action"] = "empyreal_ordnance",
								["criteria"] = "variable.time_to_combustion <= variable.empyreal_ordnance_delay & variable.time_to_combustion > variable.empyreal_ordnance_delay - 5",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "shadowed_orb_of_torment",
								["action"] = "shadowed_orb_of_torment",
								["criteria"] = "( variable.time_to_combustion <= variable.combustion_precast_time + 2 || fight_remains < variable.time_to_combustion ) & buff.combustion.down & ( ! equipped.the_first_sigil || cooldown.the_first_sigil_367241.remains > 40 )",
							}, -- [6]
							{
								["enabled"] = true,
								["name"] = "grim_eclipse",
								["action"] = "grim_eclipse",
								["criteria"] = "variable.time_to_combustion <= 8 || fight_remains < variable.time_to_combustion",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "moonlit_prism",
								["action"] = "moonlit_prism",
								["criteria"] = "variable.time_to_combustion <= 5 || fight_remains < variable.time_to_combustion",
							}, -- [8]
							{
								["enabled"] = true,
								["name"] = "glyph_of_assimilation",
								["action"] = "glyph_of_assimilation",
								["criteria"] = "! variable.item_cutoff_active",
							}, -- [9]
							{
								["enabled"] = true,
								["name"] = "macabre_sheet_music",
								["action"] = "macabre_sheet_music",
								["criteria"] = "variable.time_to_combustion <= 5",
							}, -- [10]
							{
								["enabled"] = true,
								["name"] = "dreadfire_vessel",
								["action"] = "dreadfire_vessel",
								["criteria"] = "! variable.item_cutoff_active & ( buff.infernal_cascade.stack = buff.infernal_cascade.max_stack || ! conduit.infernal_cascade.enabled || variable.combustion_on_use & ! ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled ) || variable.time_to_combustion > interpolated_fight_remains %  ( action_cooldown + 10 ) )",
								["description"] = "If using a steroid on-use item, always use Dreadfire Vessel outside of Combustion. Otherwise, prioritize using Dreadfire Vessel with Combustion only if Feel the Burn is enabled and a usage won't be lost over the duration of the fight. This adds a small value to the cooldown of Dreadfire Vessel when doing this calculation because it is unrealstic to assume that it will be used perfectly on cooldown. Note that with Sun King's Blessing, it is possible to sync this with SKB Combustions regardless of on-use trinkets.",
							}, -- [11]
							{
								["enabled"] = true,
								["name"] = "soul_igniter",
								["action"] = "soul_igniter",
								["criteria"] = "( cooldown.hyperthread_wristwraps.remains || ! variable.item_cutoff_active ) & ( ! conduit.infernal_cascade.enabled || buff.infernal_cascade.up || buff.combustion.up ) & ( ! equipped.dreadfire_vessel || cooldown.dreadfire_vessel_349857.remains > 5 )",
								["description"] = "Soul Igniter should be used in a way that doesn't interfere with other on-use trinkets. Other trinkets do not trigger a shared ICD on it, so it can be used right after any other on-use trinket.",
							}, -- [12]
							{
								["buff_name"] = "soul_ignition",
								["criteria"] = "! conduit.infernal_cascade.enabled & time < 5 || buff.infernal_cascade.stack = buff.infernal_cascade.max_stack",
								["description"] = "Trigger Soul Igniter early with Infernal Cascade or when it was precast.",
								["enabled"] = true,
								["action"] = "cancel_buff",
							}, -- [13]
							{
								["enabled"] = true,
								["name"] = "inscrutable_quantum_device",
								["action"] = "inscrutable_quantum_device",
								["criteria"] = "equipped.gladiators_badge & ( buff.combustion.down & variable.time_to_combustion >= variable.on_use_cutoff || variable.on_use_cutoff = 0 )",
								["description"] = "Items that do not benefit Combustion should just be used outside of Combustion at some point.",
							}, -- [14]
							{
								["enabled"] = true,
								["name"] = "flame_of_battle",
								["action"] = "flame_of_battle",
								["criteria"] = "equipped.gladiators_badge & ! variable.item_cutoff_active",
							}, -- [15]
							{
								["enabled"] = true,
								["name"] = "wakeners_frond",
								["action"] = "wakeners_frond",
								["criteria"] = "equipped.gladiators_badge & ! variable.item_cutoff_active",
							}, -- [16]
							{
								["enabled"] = true,
								["name"] = "instructors_divine_bell",
								["action"] = "instructors_divine_bell",
								["criteria"] = "equipped.gladiators_badge & ! variable.item_cutoff_active",
							}, -- [17]
							{
								["enabled"] = true,
								["name"] = "sunblood_amethyst",
								["action"] = "sunblood_amethyst",
								["criteria"] = "equipped.gladiators_badge & ! variable.item_cutoff_active",
							}, -- [18]
							{
								["enabled"] = true,
								["name"] = "scars_of_fraternal_strife",
								["action"] = "scars_of_fraternal_strife",
								["criteria"] = "buff.scars_of_fraternal_strife_4.down",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! variable.item_cutoff_active",
								["action"] = "use_items",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.grisly_icicle.enabled & buff.combustion.down & ( variable.time_to_combustion > action_cooldown || variable.time_to_combustion < variable.combustion_precast_time + execute_time )",
								["action"] = "frost_nova",
								["description"] = "Use Frost Nova to trigger Grisly Icicle.",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.disciplinary_command.enabled & cooldown.buff_disciplinary_command.ready & buff.disciplinary_command_arcane.down & ! buff.disciplinary_command.up & ( variable.time_to_combustion + action.frostbolt.cast_time > cooldown.buff_disciplinary_command.duration || variable.time_to_combustion < 5 )",
								["action"] = "counterspell",
								["description"] = "Get the Disciplinary Command buff up, unless combustion is soon.",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.disciplinary_command.enabled & cooldown.buff_disciplinary_command.ready & buff.disciplinary_command_arcane.down & ! buff.disciplinary_command.up & ( variable.time_to_combustion + execute_time + action.frostbolt.cast_time > cooldown.buff_disciplinary_command.duration || variable.time_to_combustion < 5 & ! talent.rune_of_power.enabled )",
								["action"] = "arcane_explosion",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.disciplinary_command.enabled & cooldown.buff_disciplinary_command.remains < cast_time & buff.disciplinary_command_frost.down & ! buff.disciplinary_command.up & ( variable.time_to_combustion + cast_time > cooldown.buff_disciplinary_command.duration || variable.time_to_combustion < 5 )",
								["action"] = "frostbolt",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.disciplinary_command.enabled & cooldown.buff_disciplinary_command.ready & buff.disciplinary_command_frost.down & ! buff.disciplinary_command.up & ( variable.time_to_combustion > cooldown.buff_disciplinary_command.duration || variable.time_to_combustion < 5 )",
								["action"] = "frost_nova",
							}, -- [25]
							{
								["enabled"] = true,
								["op"] = "set",
								["description"] = "Pool as many Fire Blasts as possible for Combustion.",
								["use_while_casting"] = 1,
								["value"] = "variable.extended_combustion_remains < variable.time_to_combustion & action.fire_blast.charges_fractional + ( variable.time_to_combustion + action.shifting_power.full_reduction * variable.shifting_power_before_combustion + ( debuff.mirrors_of_torment.max_stack - 1 ) * variable.mot_recharge_amount * covenant.venthyr * ( cooldown.mirrors_of_torment.remains <= variable.time_to_combustion ) ) / cooldown.fire_blast.duration - 1 < cooldown.fire_blast.max_charges + variable.overpool_fire_blasts / cooldown.fire_blast.duration - ( buff.combustion.duration / cooldown.fire_blast.duration )  % 1 & variable.time_to_combustion < fight_remains",
								["var_name"] = "fire_blast_pooling",
								["use_off_gcd"] = 1,
								["action"] = "variable",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "variable.time_to_combustion <= 0 || buff.combustion.up || variable.time_to_combustion < variable.combustion_precast_time & cooldown.combustion.remains < variable.combustion_precast_time",
								["list_name"] = "combustion_phase",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & buff.rune_of_power.down & ! ( buff.firestorm.react || buff.hyperthermia.react ) & ( variable.time_to_combustion >= buff.rune_of_power.duration & variable.time_to_combustion > action.fire_blast.full_recharge_time || variable.time_to_combustion > fight_remains ) & ( ! ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled ) || active_enemies >= variable.hard_cast_flamestrike || buff.sun_kings_blessing_ready.up || buff.sun_kings_blessing.react >= buff.sun_kings_blessing.max_stack - 1 || fight_remains < buff.rune_of_power.duration || firestarter.active )",
								["action"] = "rune_of_power",
							}, -- [28]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["description"] = "Adjust the variable that controls Fire Blast usage to save Fire Blasts while Searing Touch is active with Sun King's Blessing.",
								["op"] = "set",
								["criteria"] = "! variable.fire_blast_pooling & ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled )",
								["value"] = "searing_touch.active & action.fire_blast.full_recharge_time > 3 * gcd.max",
								["var_name"] = "fire_blast_pooling",
								["action"] = "variable",
								["use_off_gcd"] = 1,
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & ( action.fire_blast.charges = 0 || variable.fire_blast_pooling ) & ( cooldown.rune_of_power.remains || ! talent.rune_of_power.enabled ) & ! buff.hot_streak.react & variable.shifting_power_before_combustion",
								["action"] = "shifting_power",
							}, -- [30]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "When using Flamestrike in Combustion, save as many charges as possible for Combustion without capping.",
								["criteria"] = "buff.rune_of_power.up & buff.combustion.down & variable.time_to_combustion > 0",
								["list_name"] = "rop_phase",
							}, -- [31]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["description"] = "Adjust the variable that controls Fire Blast usage to ensure its charges are also pooled for Rune of Power.",
								["op"] = "set",
								["criteria"] = "! variable.fire_blast_pooling & talent.rune_of_power.enabled & buff.rune_of_power.down",
								["value"] = "( ! ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled ) || buff.sun_kings_blessing.stack > buff.sun_kings_blessing.max_stack - 1 ) & cooldown.rune_of_power.remains < action.fire_blast.full_recharge_time - action.shifting_power.full_reduction * ( variable.shifting_power_before_combustion & cooldown.shifting_power.remains < cooldown.rune_of_power.remains ) & cooldown.rune_of_power.remains < fight_remains",
								["var_name"] = "fire_blast_pooling",
								["action"] = "variable",
								["use_off_gcd"] = 1,
							}, -- [32]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! variable.fire_blast_pooling & variable.time_to_combustion > 0 & active_enemies >= variable.hard_cast_flamestrike & ! firestarter.active & ! buff.hot_streak.react & ( buff.heating_up.react & action.flamestrike.execute_remains < 0.5 || charges_fractional >= 2 )",
								["use_off_gcd"] = 1,
								["description"] = "When Hardcasting Flamestrike, Fire Blasts should be used to generate Hot Streaks and to extend Feel the Burn.",
								["action"] = "fire_blast",
							}, -- [33]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "During Firestarter, Fire Blasts are used similarly to during Combustion. Generally, they are used to generate Hot Streaks when crits will not be wasted and with Feel the Burn, they should be spread out to maintain the Feel the Burn buff.",
								["criteria"] = "buff.combustion.down & firestarter.active & variable.time_to_combustion > 0",
								["list_name"] = "firestarter_fire_blasts",
							}, -- [34]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["action"] = "fire_blast",
								["criteria"] = "action.shifting_power.executing & full_recharge_time < action.shifting_power.tick_reduction",
								["description"] = "Avoid capping Fire Blast charges while channeling Shifting Power",
							}, -- [35]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "variable.time_to_combustion > 0 & buff.rune_of_power.down & buff.combustion.down",
								["list_name"] = "standard_rotation",
							}, -- [36]
							{
								["action"] = "scorch",
								["enabled"] = true,
							}, -- [37]
						},
						["precombat"] = {
							{
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "soul_igniter",
								["action"] = "soul_igniter",
								["criteria"] = "! variable.combustion_on_use & ! equipped.dreadfire_vessel & ( ! talent.firestarter.enabled || variable.firestarter_combustion )",
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "shadowed_orb_of_torment",
								["action"] = "shadowed_orb_of_torment",
								["criteria"] = "! equipped.the_first_sigil",
							}, -- [3]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "fleshcraft",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "pyroblast",
								["enabled"] = true,
							}, -- [6]
						},
						["firestarter_fire_blasts"] = {
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["action"] = "fire_blast",
								["criteria"] = "! variable.fire_blast_pooling & ! buff.hot_streak.react & ( action.fireball.execute_remains > gcd.remains || action.pyroblast.executing ) & buff.heating_up.react + hot_streak_spells_in_flight = 1 & ( cooldown.shifting_power.ready || charges > 1 || buff.feel_the_burn.remains < 2 * gcd.max )",
								["description"] = "While casting Fireball or Pyroblast, convert Heating Up to a Hot Streak!",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! variable.fire_blast_pooling & buff.heating_up.react + hot_streak_spells_in_flight = 1 & ( talent.feel_the_burn.enabled & buff.feel_the_burn.remains < gcd.remains || cooldown.shifting_power.ready & ( ! set_bonus.tier30_2pc || debuff.charring_embers.remains > 2 * gcd.max ) )",
								["use_off_gcd"] = 1,
								["description"] = "If not casting anything, use Fire Blast to trigger Hot Streak! only if Feel the Burn is talented and would expire before the GCD ends or if Shifting Power is available.",
								["action"] = "fire_blast",
							}, -- [2]
						},
						["active_talents"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.combustion.down & ( variable.time_to_combustion > cooldown.living_bomb.duration || variable.time_to_combustion <= 0 )",
								["action"] = "living_bomb",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion <= 0 || buff.combustion.remains > travel_time || ( cooldown.meteor.duration < variable.time_to_combustion & ! talent.rune_of_power.enabled ) || talent.rune_of_power.enabled & buff.rune_of_power.up & variable.time_to_combustion > action.meteor.cooldown || fight_remains < variable.time_to_combustion",
								["action"] = "meteor",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.alexstraszas_fury.enabled & ( buff.combustion.down & ! buff.hot_streak.react ) & ( buff.feel_the_burn.up || time > 15 ) & ! firestarter.remains & ! talent.tempered_flames.enabled",
								["action"] = "dragons_breath",
								["description"] = "With Alexstrasza's Fury when Combustion is not active, Dragon's Breath should be used to convert Heating Up to a Hot Streak.",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.alexstraszas_fury.enabled & ( buff.combustion.down & ! buff.hot_streak.react ) & ( buff.feel_the_burn.up || time > 15 ) & talent.tempered_flames.enabled",
								["action"] = "dragons_breath",
							}, -- [4]
						},
						["standard_rotation"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.hot_streak_flamestrike & ( buff.hot_streak.react || ( buff.firestorm.react || buff.hyperthermia.react ) )",
								["action"] = "flamestrike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.hyperthermia.react",
								["action"] = "pyroblast",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & ( buff.hot_streak.remains < action.fireball.execute_time || talent.alexstraszas_fury.enabled & action.phoenix_flames.charges > 0 )",
								["action"] = "pyroblast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & ( prev_gcd.1.fireball || fireball_hardcast_prevented || firestarter.active || action.pyroblast.in_flight )",
								["action"] = "pyroblast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.hard_cast_flamestrike & buff.sun_kings_blessing_ready.up & ( cooldown.rune_of_power.remains + action.rune_of_power.execute_time + cast_time > buff.sun_kings_blessing_ready.remains || ! talent.rune_of_power.enabled ) & variable.time_to_combustion + cast_time > buff.sun_kings_blessing_ready.remains & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "flamestrike",
								["description"] = "Try to get SKB procs inside RoP phases or Combustion phases when possible.",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & ( cooldown.rune_of_power.remains + action.rune_of_power.execute_time + cast_time > buff.sun_kings_blessing_ready.remains || ! talent.rune_of_power.enabled ) & variable.time_to_combustion + cast_time > buff.sun_kings_blessing_ready.remains & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "pyroblast",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & searing_touch.active",
								["action"] = "pyroblast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & cast_time < buff.pyroclasm.remains & ( ! ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled ) || buff.pyroclasm.remains < action.fireball.cast_time + cast_time * buff.pyroclasm.react )",
								["action"] = "pyroblast",
							}, -- [8]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! firestarter.active & ! variable.fire_blast_pooling & buff.sun_kings_blessing_ready.down & ( ( ( action.fireball.executing & ( action.fireball.execute_remains < 0.5 || ! ( runeforge.firestorm.enabled || talent.hyperthermia.enabled ) ) || action.pyroblast.executing & ( action.pyroblast.execute_remains < 0.5 || ! ( runeforge.firestorm.enabled || talent.hyperthermia.enabled ) ) || ( ! searing_touch.active & fireball_hardcast_prevented ) ) & buff.heating_up.react ) || ( searing_touch.active & ( buff.heating_up.react & ! action.scorch.executing || ! buff.hot_streak.react & ! buff.heating_up.react & action.scorch.executing & ! hot_streak_spells_in_flight ) ) )",
								["use_off_gcd"] = 1,
								["description"] = "During the standard rotation, only use Fire Blasts when they are not being pooled for RoP or Combustion. Use Fire Blast either during a Fireball/Pyroblast cast when Heating Up is active or during execute with Searing Touch.",
								["action"] = "fire_blast",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.hot_streak.react & searing_touch.active & active_enemies < variable.hot_streak_flamestrike",
								["action"] = "pyroblast",
								["description"] = "Modified, changed to Hot Streak to avoid hardcasted Pyroblasts.",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! talent.alexstraszas_fury.enabled & ! buff.hot_streak.react & ( ! variable.phoenix_pooling || set_bonus.tier30_2pc & debuff.charring_embers.remains < 2 * gcd.max ) & ( debuff.charring_embers.remains < 2 * gcd.max || buff.flames_fury.up )",
								["action"] = "phoenix_flames",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.alexstraszas_fury.enabled & ! buff.hot_streak.react & ( ! variable.phoenix_pooling || set_bonus.tier30_2pc & debuff.charring_embers.remains < 2 * gcd.max || buff.flames_fury.up ) & ! hot_streak_spells_in_flight & ! action.phoenix_flames.in_flight & ( debuff.charring_embers.remains < 2 * gcd.max || buff.flames_fury.up || charges > 1 )",
								["action"] = "phoenix_flames",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "dragons_breath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "searing_touch.active",
								["action"] = "scorch",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.arcane_explosion & mana.pct >= variable.arcane_explosion_mana",
								["action"] = "arcane_explosion",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.hard_cast_flamestrike",
								["action"] = "flamestrike",
								["description"] = "With enough targets, it is a gain to cast Flamestrike as filler instead of Fireball.",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "talent.tempered_flames.enabled & ! buff.flame_accelerant.react",
								["action"] = "pyroblast",
							}, -- [18]
							{
								["action"] = "fireball",
								["enabled"] = true,
							}, -- [19]
						},
						["rop_phase"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.hot_streak_flamestrike & ( buff.hot_streak.react || ( buff.firestorm.react || buff.hyperthermia.react ) )",
								["action"] = "flamestrike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.deathborne.up & runeforge.deaths_fathom.enabled & variable.time_to_combustion < buff.deathborne.remains & active_enemies >= 2",
								["action"] = "fireball",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.hard_cast_flamestrike & buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > cast_time & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "flamestrike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > cast_time & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "pyroblast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.firestorm.react || buff.hyperthermia.react )",
								["action"] = "pyroblast",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react",
								["action"] = "pyroblast",
							}, -- [6]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! variable.fire_blast_pooling & buff.sun_kings_blessing_ready.down & active_enemies < variable.hard_cast_flamestrike & ! firestarter.active & ( ! buff.heating_up.react & ! buff.hot_streak.react & ! prev_off_gcd.fire_blast & ( action.fire_blast.charges >= 2 || ( talent.alexstraszas_fury.enabled & cooldown.dragons_breath.ready ) || searing_touch.active ) )",
								["use_off_gcd"] = 1,
								["description"] = "Use one Fire Blast early in RoP if you don't have either Heating Up or Hot Streak yet and either: (a) have more than two already, (b) have Alexstrasza's Fury ready to use, or (c) Searing Touch is active. Don't do this while hard casting Flamestrikes or when Sun King's Blessing is ready.",
								["action"] = "fire_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! variable.fire_blast_pooling & ! firestarter.active & buff.sun_kings_blessing_ready.down & ( ( ( action.fireball.executing & ( action.fireball.execute_remains < 0.5 || ! ( runeforge.firestorm.enabled || talent.hyperthermia.enabled ) ) || action.pyroblast.executing & ( action.pyroblast.execute_remains < 0.5 || ! ( runeforge.firestorm.enabled || talent.hyperthermia.enabled ) ) ) & buff.heating_up.react ) || ( searing_touch.active & ( buff.heating_up.react & ! action.scorch.executing || ! buff.hot_streak.react & ! buff.heating_up.react & action.scorch.executing & ! hot_streak_spells_in_flight ) ) )",
								["use_off_gcd"] = 1,
								["description"] = "Use Fire Blast either during a Fireball/Pyroblast cast when Heating Up is active or during execute with Searing Touch.",
								["action"] = "fire_blast",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & cast_time < buff.pyroclasm.remains & cast_time < buff.rune_of_power.remains & ( ! ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled ) || buff.pyroclasm.remains < action.fireball.cast_time + cast_time * buff.pyroclasm.react )",
								["action"] = "pyroblast",
								["description"] = "actions.rop_phase+=/scorch,if=searing_touch.active&talent.improved_scorch&debuff.improved_scorch.remains<3*gcd.max",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.react & searing_touch.active & active_enemies < variable.hot_streak_flamestrike",
								["action"] = "pyroblast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.alexstraszas_fury.enabled & ( ! variable.phoenix_pooling || set_bonus.tier30_2pc & debuff.charring_embers.remains < 2 * gcd.max ) & ( debuff.charring_embers.remains < 2 * gcd.max || buff.flames_fury.up )",
								["action"] = "phoenix_flames",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.alexstraszas_fury.enabled & ( ! variable.phoenix_pooling || set_bonus.tier30_2pc & debuff.charring_embers.remains < 2 * gcd.max || buff.flames_fury.up ) & ! hot_streak_spells_in_flight & ! action.phoenix_flames.in_flight & ( debuff.charring_embers.remains < 2 * gcd.max || buff.flames_fury.up || charges > 1 )",
								["action"] = "phoenix_flames",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "searing_touch.active",
								["action"] = "scorch",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "dragons_breath",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.arcane_explosion & mana.pct >= variable.arcane_explosion_mana",
								["action"] = "arcane_explosion",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.hard_cast_flamestrike",
								["action"] = "flamestrike",
								["description"] = "With enough targets, it is a gain to cast Flamestrike as filler instead of Fireball.",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "talent.tempered_flames.enabled & ! buff.flame_accelerant.react",
								["action"] = "pyroblast",
							}, -- [18]
							{
								["action"] = "fireball",
								["enabled"] = true,
							}, -- [19]
						},
					},
					["version"] = 20230508,
					["warnings"] = "The import for 'combustion_phase' required some automated changes.\nLine 11: Converted 'conduit.flame_accretion' to 'conduit.flame_accretion.enabled' (1x).\nLine 13: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 13: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 13: Converted 'runeforge.grisly_icicle' to 'runeforge.grisly_icicle.enabled' (1x).\nLine 15: Converted 'talent.feel_the_burn' to 'talent.feel_the_burn.enabled' (1x).\nLine 15: Converted 'conduit.infernal_cascade' to 'conduit.infernal_cascade.enabled' (1x).\nLine 16: Converted 'conduit.infernal_cascade' to 'conduit.infernal_cascade.enabled' (1x).\nLine 17: Converted 'talent.feel_the_burn' to 'talent.feel_the_burn.enabled' (1x).\nLine 18: Converted 'runeforge.firestorm' to 'runeforge.firestorm.enabled' (1x).\nLine 18: Converted 'talent.hyperthermia' to 'talent.hyperthermia.enabled' (1x).\nLine 23: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 29: Converted 'talent.feel_the_burn' to 'talent.feel_the_burn.enabled' (1x).\nLine 30: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 32: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 32: Converted 'talent.from_the_ashes' to 'talent.from_the_ashes.enabled' (1x).\n\nThe import for 'rop_phase' required some automated changes.\nLine 2: Converted 'runeforge.deaths_fathom' to 'runeforge.deaths_fathom.enabled' (1x).\nLine 7: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 8: Converted 'runeforge.firestorm' to 'runeforge.firestorm.enabled' (1x).\nLine 8: Converted 'talent.hyperthermia' to 'talent.hyperthermia.enabled' (1x).\nLine 8: Converted 'runeforge.firestorm' to 'runeforge.firestorm.enabled' (1x).\nLine 8: Converted 'talent.hyperthermia' to 'talent.hyperthermia.enabled' (1x).\nLine 10: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 10: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 12: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 13: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 18: Converted 'talent.tempered_flames' to 'talent.tempered_flames.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 1: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 2: Converted 'talent.temporal_warp' to 'talent.temporal_warp.enabled' (1x).\nLine 11: Converted 'conduit.infernal_cascade' to 'conduit.infernal_cascade.enabled' (1x).\nLine 11: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 11: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 11: Converted operations in '!variable.item_cutoff_active&(buff.infernal_cascade.stack=buff.infernal_cascade.max_stack||!conduit.infernal_cascade.enabled||variable.combustion_on_use&!(runeforge.sun_kings_blessing.enabled||talent.sun_kings_blessing.enabled)||variable.time_to_combustion>interpolated_fight_remains%%(action_cooldown+10))' to '!variable.item_cutoff_active&(buff.infernal_cascade.stack=buff.infernal_cascade.max_stack||!conduit.infernal_cascade.enabled||variable.combustion_on_use&!(runeforge.sun_kings_blessing.enabled||talent.sun_kings_blessing.enabled)||variable.time_to_combustion>interpolated_fight_remains%(action_cooldown+10))'.\nLine 12: Converted 'conduit.infernal_cascade' to 'conduit.infernal_cascade.enabled' (1x).\nLine 13: Converted 'conduit.infernal_cascade' to 'conduit.infernal_cascade.enabled' (1x).\nLine 21: Converted 'runeforge.grisly_icicle' to 'runeforge.grisly_icicle.enabled' (1x).\nLine 22: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 23: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 23: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 24: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 25: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 26: Converted operations in 'variable.extended_combustion_remains<variable.time_to_combustion&action.fire_blast.charges_fractional+(variable.time_to_combustion+action.shifting_power.full_reduction*variable.shifting_power_before_combustion+(debuff.mirrors_of_torment.max_stack-1)*variable.mot_recharge_amount*covenant.venthyr*(cooldown.mirrors_of_torment.remains<=variable.time_to_combustion))%cooldown.fire_blast.duration-1<cooldown.fire_blast.max_charges+variable.overpool_fire_blasts%cooldown.fire_blast.duration-(buff.combustion.duration%cooldown.fire_blast.duration)%%1&variable.time_to_combustion<fight_remains' to 'variable.extended_combustion_remains<variable.time_to_combustion&action.fire_blast.charges_fractional+(variable.time_to_combustion+action.shifting_power.full_reduction*variable.shifting_power_before_combustion+(debuff.mirrors_of_torment.max_stack-1)*variable.mot_recharge_amount*covenant.venthyr*(cooldown.mirrors_of_torment.remains<=variable.time_to_combustion))/cooldown.fire_blast.duration-1<cooldown.fire_blast.max_charges+variable.overpool_fire_blasts/cooldown.fire_blast.duration-(buff.combustion.duration/cooldown.fire_blast.duration)%1&variable.time_to_combustion<fight_remains'.\nLine 28: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 28: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 29: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 29: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 30: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 32: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 32: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 32: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 2: Converted 'talent.firestarter' to 'talent.firestarter.enabled' (1x).\n\nThe import for 'firestarter_fire_blasts' required some automated changes.\nLine 2: Converted 'talent.feel_the_burn' to 'talent.feel_the_burn.enabled' (1x).\n\nThe import for 'active_talents' required some automated changes.\nLine 2: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 2: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 3: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 3: Converted 'talent.tempered_flames' to 'talent.tempered_flames.enabled' (1x).\nLine 4: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 4: Converted 'talent.tempered_flames' to 'talent.tempered_flames.enabled' (1x).\n\nThe import for 'standard_rotation' required some automated changes.\nLine 3: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 5: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 6: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 8: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 8: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 9: Converted 'runeforge.firestorm' to 'runeforge.firestorm.enabled' (1x).\nLine 9: Converted 'talent.hyperthermia' to 'talent.hyperthermia.enabled' (1x).\nLine 9: Converted 'runeforge.firestorm' to 'runeforge.firestorm.enabled' (1x).\nLine 9: Converted 'talent.hyperthermia' to 'talent.hyperthermia.enabled' (1x).\nLine 11: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 12: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 18: Converted 'talent.tempered_flames' to 'talent.tempered_flames.enabled' (1x).\n\nThe import for 'combustion_cooldowns' required some automated changes.\nLine 6: Converted 'talent.temporal_warp' to 'talent.temporal_warp.enabled' (1x).\nLine 6: Converted 'runeforge.temporal_warp' to 'runeforge.temporal_warp.enabled' (1x).\n\nImported 8 action lists.\n",
					["profile"] = "actions.precombat+=/arcane_intellect\nactions.precombat+=/use_item,name=soul_igniter,if=!variable.combustion_on_use&!equipped.dreadfire_vessel&(!talent.firestarter||variable.firestarter_combustion)\nactions.precombat+=/use_item,name=shadowed_orb_of_torment,if=!equipped.the_first_sigil\nactions.precombat+=/mirror_image\nactions.precombat+=/fleshcraft\nactions.precombat+=/pyroblast\n\n# Executed every time the actor is available.\nactions=counterspell,if=!runeforge.disciplinary_command\n# The second Time Warp is usually best used immediately on pull with Temporal Warp so that it comes off cooldown earlier; this can sometimes be slightly worse if doing so will not result in additional Time Warp(s) throughout the encounter. Additionally, it should always be used at the end of the fight regardless of Combustion being ready if it is available.\nactions+=/time_warp,if=talent.temporal_warp&(buff.exhaustion.up||interpolated_fight_remains<buff.bloodlust.duration)\nactions+=/potion,if=buff.potion.duration>variable.time_to_combustion+buff.combustion.duration\nactions+=/use_item,effect_name=gladiators_badge,if=variable.time_to_combustion>cooldown-5\nactions+=/use_item,name=empyreal_ordnance,if=variable.time_to_combustion<=variable.empyreal_ordnance_delay&variable.time_to_combustion>variable.empyreal_ordnance_delay-5\nactions+=/use_item,name=shadowed_orb_of_torment,if=(variable.time_to_combustion<=variable.combustion_precast_time+2||fight_remains<variable.time_to_combustion)&buff.combustion.down&(!equipped.the_first_sigil||cooldown.the_first_sigil_367241.remains>40)\nactions+=/use_item,name=grim_eclipse,if=variable.time_to_combustion<=8||fight_remains<variable.time_to_combustion\nactions+=/use_item,name=moonlit_prism,if=variable.time_to_combustion<=5||fight_remains<variable.time_to_combustion\nactions+=/use_item,name=glyph_of_assimilation,if=!variable.item_cutoff_active\nactions+=/use_item,name=macabre_sheet_music,if=variable.time_to_combustion<=5\n# If using a steroid on-use item, always use Dreadfire Vessel outside of Combustion. Otherwise, prioritize using Dreadfire Vessel with Combustion only if Feel the Burn is enabled and a usage won't be lost over the duration of the fight. This adds a small value to the cooldown of Dreadfire Vessel when doing this calculation because it is unrealstic to assume that it will be used perfectly on cooldown. Note that with Sun King's Blessing, it is possible to sync this with SKB Combustions regardless of on-use trinkets.\nactions+=/use_item,name=dreadfire_vessel,if=!variable.item_cutoff_active&(buff.infernal_cascade.stack=buff.infernal_cascade.max_stack||!conduit.infernal_cascade||variable.combustion_on_use&!(runeforge.sun_kings_blessing||talent.sun_kings_blessing)||variable.time_to_combustion>interpolated_fight_remains%%(cooldown+10))\n# Soul Igniter should be used in a way that doesn't interfere with other on-use trinkets. Other trinkets do not trigger a shared ICD on it, so it can be used right after any other on-use trinket.\nactions+=/use_item,name=soul_igniter,if=(cooldown.hyperthread_wristwraps.remains||!variable.item_cutoff_active)&(!conduit.infernal_cascade||buff.infernal_cascade.up||buff.combustion.up)&(!equipped.dreadfire_vessel||cooldown.dreadfire_vessel_349857.remains>5)\n# Trigger Soul Igniter early with Infernal Cascade or when it was precast.\nactions+=/cancel_buff,name=soul_ignition,if=!conduit.infernal_cascade&time<5||buff.infernal_cascade.stack=buff.infernal_cascade.max_stack\n# Items that do not benefit Combustion should just be used outside of Combustion at some point.\nactions+=/use_item,name=inscrutable_quantum_device,if=equipped.gladiators_badge&(buff.combustion.down&variable.time_to_combustion>=variable.on_use_cutoff||variable.on_use_cutoff=0)\nactions+=/use_item,name=flame_of_battle,if=equipped.gladiators_badge&!variable.item_cutoff_active\nactions+=/use_item,name=wakeners_frond,if=equipped.gladiators_badge&!variable.item_cutoff_active\nactions+=/use_item,name=instructors_divine_bell,if=equipped.gladiators_badge&!variable.item_cutoff_active\nactions+=/use_item,name=sunblood_amethyst,if=equipped.gladiators_badge&!variable.item_cutoff_active\nactions+=/use_item,name=scars_of_fraternal_strife,if=buff.scars_of_fraternal_strife_4.down\nactions+=/use_items,if=!variable.item_cutoff_active\n# Use Frost Nova to trigger Grisly Icicle.\nactions+=/frost_nova,if=runeforge.grisly_icicle&buff.combustion.down&(variable.time_to_combustion>cooldown||variable.time_to_combustion<variable.combustion_precast_time+execute_time)\n# Get the Disciplinary Command buff up, unless combustion is soon.\nactions+=/counterspell,if=runeforge.disciplinary_command&cooldown.buff_disciplinary_command.ready&buff.disciplinary_command_arcane.down&!buff.disciplinary_command.up&(variable.time_to_combustion+action.frostbolt.cast_time>cooldown.buff_disciplinary_command.duration||variable.time_to_combustion<5)\nactions+=/arcane_explosion,if=runeforge.disciplinary_command&cooldown.buff_disciplinary_command.ready&buff.disciplinary_command_arcane.down&!buff.disciplinary_command.up&(variable.time_to_combustion+execute_time+action.frostbolt.cast_time>cooldown.buff_disciplinary_command.duration||variable.time_to_combustion<5&!talent.rune_of_power)\nactions+=/frostbolt,if=runeforge.disciplinary_command&cooldown.buff_disciplinary_command.remains<cast_time&buff.disciplinary_command_frost.down&!buff.disciplinary_command.up&(variable.time_to_combustion+cast_time>cooldown.buff_disciplinary_command.duration||variable.time_to_combustion<5)\nactions+=/frost_nova,if=runeforge.disciplinary_command&cooldown.buff_disciplinary_command.ready&buff.disciplinary_command_frost.down&!buff.disciplinary_command.up&(variable.time_to_combustion>cooldown.buff_disciplinary_command.duration||variable.time_to_combustion<5)\n# Pool as many Fire Blasts as possible for Combustion.\nactions+=/variable,use_off_gcd=1,use_while_casting=1,name=fire_blast_pooling,value=variable.extended_combustion_remains<variable.time_to_combustion&action.fire_blast.charges_fractional+(variable.time_to_combustion+action.shifting_power.full_reduction*variable.shifting_power_before_combustion+(debuff.mirrors_of_torment.max_stack-1)*variable.mot_recharge_amount*covenant.venthyr*(cooldown.mirrors_of_torment.remains<=variable.time_to_combustion))%cooldown.fire_blast.duration-1<cooldown.fire_blast.max_charges+variable.overpool_fire_blasts%cooldown.fire_blast.duration-(buff.combustion.duration%cooldown.fire_blast.duration)%%1&variable.time_to_combustion<fight_remains\nactions+=/call_action_list,name=combustion_phase,if=variable.time_to_combustion<=0||buff.combustion.up||variable.time_to_combustion<variable.combustion_precast_time&cooldown.combustion.remains<variable.combustion_precast_time\nactions+=/rune_of_power,if=buff.combustion.down&buff.rune_of_power.down&!(buff.firestorm.react||buff.hyperthermia.react)&(variable.time_to_combustion>=buff.rune_of_power.duration&variable.time_to_combustion>action.fire_blast.full_recharge_time||variable.time_to_combustion>fight_remains)&(!(runeforge.sun_kings_blessing||talent.sun_kings_blessing)||active_enemies>=variable.hard_cast_flamestrike||buff.sun_kings_blessing_ready.up||buff.sun_kings_blessing.react>=buff.sun_kings_blessing.max_stack-1||fight_remains<buff.rune_of_power.duration||firestarter.active)\n# Adjust the variable that controls Fire Blast usage to save Fire Blasts while Searing Touch is active with Sun King's Blessing.\nactions+=/variable,use_off_gcd=1,use_while_casting=1,name=fire_blast_pooling,value=searing_touch.active&action.fire_blast.full_recharge_time>3*gcd.max,if=!variable.fire_blast_pooling&(runeforge.sun_kings_blessing||talent.sun_kings_blessing)\nactions+=/shifting_power,if=buff.combustion.down&(action.fire_blast.charges=0||variable.fire_blast_pooling)&(cooldown.rune_of_power.remains||!talent.rune_of_power)&!buff.hot_streak.react&variable.shifting_power_before_combustion\n# When using Flamestrike in Combustion, save as many charges as possible for Combustion without capping.\nactions+=/call_action_list,name=rop_phase,if=buff.rune_of_power.up&buff.combustion.down&variable.time_to_combustion>0\n# Adjust the variable that controls Fire Blast usage to ensure its charges are also pooled for Rune of Power.\nactions+=/variable,use_off_gcd=1,use_while_casting=1,name=fire_blast_pooling,value=(!(runeforge.sun_kings_blessing||talent.sun_kings_blessing)||buff.sun_kings_blessing.stack>buff.sun_kings_blessing.max_stack-1)&cooldown.rune_of_power.remains<action.fire_blast.full_recharge_time-action.shifting_power.full_reduction*(variable.shifting_power_before_combustion&cooldown.shifting_power.remains<cooldown.rune_of_power.remains)&cooldown.rune_of_power.remains<fight_remains,if=!variable.fire_blast_pooling&talent.rune_of_power&buff.rune_of_power.down\n# When Hardcasting Flamestrike, Fire Blasts should be used to generate Hot Streaks and to extend Feel the Burn.\nactions+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!variable.fire_blast_pooling&variable.time_to_combustion>0&active_enemies>=variable.hard_cast_flamestrike&!firestarter.active&!buff.hot_streak.react&(buff.heating_up.react&action.flamestrike.execute_remains<0.5||charges_fractional>=2)\n# During Firestarter, Fire Blasts are used similarly to during Combustion. Generally, they are used to generate Hot Streaks when crits will not be wasted and with Feel the Burn, they should be spread out to maintain the Feel the Burn buff.\nactions+=/call_action_list,name=firestarter_fire_blasts,if=buff.combustion.down&firestarter.active&variable.time_to_combustion>0\n# Avoid capping Fire Blast charges while channeling Shifting Power\nactions+=/fire_blast,use_while_casting=1,if=action.shifting_power.executing&full_recharge_time<action.shifting_power.tick_reduction\nactions+=/call_action_list,name=standard_rotation,if=variable.time_to_combustion>0&buff.rune_of_power.down&buff.combustion.down\nactions+=/scorch\n\n# While casting Fireball or Pyroblast, convert Heating Up to a Hot Streak!\nactions.firestarter_fire_blasts+=/fire_blast,use_while_casting=1,if=!variable.fire_blast_pooling&!buff.hot_streak.react&(action.fireball.execute_remains>gcd.remains||action.pyroblast.executing)&buff.heating_up.react+hot_streak_spells_in_flight=1&(cooldown.shifting_power.ready||charges>1||buff.feel_the_burn.remains<2*gcd.max)\n# If not casting anything, use Fire Blast to trigger Hot Streak! only if Feel the Burn is talented and would expire before the GCD ends or if Shifting Power is available.\nactions.firestarter_fire_blasts+=/fire_blast,use_off_gcd=1,if=!variable.fire_blast_pooling&buff.heating_up.react+hot_streak_spells_in_flight=1&(talent.feel_the_burn&buff.feel_the_burn.remains<gcd.remains||cooldown.shifting_power.ready&(!set_bonus.tier30_2pc||debuff.charring_embers.remains>2*gcd.max))\n\nactions.active_talents=living_bomb,if=active_enemies>1&buff.combustion.down&(variable.time_to_combustion>cooldown.living_bomb.duration||variable.time_to_combustion<=0)\nactions.active_talents+=/meteor,if=variable.time_to_combustion<=0||buff.combustion.remains>travel_time||(cooldown.meteor.duration<variable.time_to_combustion&!talent.rune_of_power)||talent.rune_of_power&buff.rune_of_power.up&variable.time_to_combustion>action.meteor.cooldown||fight_remains<variable.time_to_combustion\n# With Alexstrasza's Fury when Combustion is not active, Dragon's Breath should be used to convert Heating Up to a Hot Streak.\nactions.active_talents+=/dragons_breath,if=talent.alexstraszas_fury&(buff.combustion.down&!buff.hot_streak.react)&(buff.feel_the_burn.up||time>15)&!firestarter.remains&!talent.tempered_flames\nactions.active_talents+=/dragons_breath,if=talent.alexstraszas_fury&(buff.combustion.down&!buff.hot_streak.react)&(buff.feel_the_burn.up||time>15)&talent.tempered_flames\n\nactions.combustion_cooldowns=potion\nactions.combustion_cooldowns+=/blood_fury\nactions.combustion_cooldowns+=/berserking,if=buff.combustion.up\nactions.combustion_cooldowns+=/fireblood\nactions.combustion_cooldowns+=/ancestral_call\n## The addon does not invoke external buffs, because they player cannot actually choose to trigger them personally.\n## actions.combustion_cooldowns+=/invoke_external_buff,name=power_infusion,if=buff.power_infusion.down\n## actions.combustion_cooldowns+=/invoke_external_buff,name=blessing_of_summer,if=buff.blessing_of_summer.down\nactions.combustion_cooldowns+=/time_warp,if=(talent.temporal_warp||runeforge.temporal_warp)&buff.exhaustion.up\nactions.combustion_cooldowns+=/use_item,effect_name=gladiators_badge\nactions.combustion_cooldowns+=/use_item,name=irideus_fragment\nactions.combustion_cooldowns+=/use_item,name=spoils_of_neltharus\nactions.combustion_cooldowns+=/use_item,name=tome_of_unstable_power\nactions.combustion_cooldowns+=/use_item,name=timebreaching_talon\nactions.combustion_cooldowns+=/use_item,name=voidmenders_shadowgem\nactions.combustion_cooldowns+=/use_item,name=horn_of_valor\n\nactions.combustion_phase=lights_judgment,if=buff.combustion.down\nactions.combustion_phase+=/bag_of_tricks,if=buff.combustion.down\nactions.combustion_phase+=/living_bomb,if=active_enemies>1&buff.combustion.down\n# Other cooldowns that should be used with Combustion should only be used with an actual Combustion cast and not with a Sun King's Blessing proc.\nactions.combustion_phase+=/call_action_list,name=combustion_cooldowns,if=buff.combustion.remains>variable.skb_duration||fight_remains<20\nactions.combustion_phase+=/use_item,name=hyperthread_wristwraps,if=prev.1.fire_blast+prev.2.fire_blast+prev.3.fire_blast>=2&action.fire_blast.charges=0\nactions.combustion_phase+=/use_item,name=neural_synapse_enhancer,if=variable.time_to_combustion>60\nactions.combustion_phase+=/call_action_list,name=active_talents\n# If Combustion is down, precast something before activating it.\nactions.combustion_phase+=/flamestrike,if=buff.combustion.down&cooldown.combustion.remains<cast_time&active_enemies>=variable.combustion_flamestrike\nactions.combustion_phase+=/pyroblast,if=buff.combustion.down&buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>cast_time&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.combustion_phase+=/pyroblast,if=buff.combustion.down&buff.pyroclasm.react&buff.pyroclasm.remains>cast_time\nactions.combustion_phase+=/fireball,if=buff.combustion.down&cooldown.combustion.remains<cast_time&!conduit.flame_accretion\nactions.combustion_phase+=/scorch,if=buff.combustion.down&cooldown.combustion.remains<cast_time\n# Combustion should be used when the precast is almost finished.\nactions.combustion_phase+=/combustion,use_off_gcd=1,use_while_casting=1,if=hot_streak_spells_in_flight=0&buff.combustion.down&variable.time_to_combustion<=0&(!runeforge.disciplinary_command||buff.disciplinary_command.up||buff.disciplinary_command_frost.up&talent.rune_of_power&cooldown.buff_disciplinary_command.ready)&(!runeforge.grisly_icicle||debuff.grisly_icicle.up)&(!covenant.necrolord||cooldown.deathborne.remains||buff.deathborne.up)&(!covenant.venthyr||cooldown.mirrors_of_torment.remains)&(action.scorch.executing&action.scorch.execute_remains<variable.combustion_cast_remains||action.fireball.executing&action.fireball.execute_remains<variable.combustion_cast_remains||action.pyroblast.executing&action.pyroblast.execute_remains<variable.combustion_cast_remains||action.flamestrike.executing&action.flamestrike.execute_remains<variable.combustion_cast_remains)\n# Rune of Power can be used in Combustion if it is down, but this should only be done if there is more Combustion time to benefit from than there would be from an SKB Combustion later.\nactions.combustion_phase+=/rune_of_power,if=buff.rune_of_power.down&variable.extended_combustion_remains>variable.skb_duration\n# Without Feel the Burn, just use Fire Blasts when they won't munch crits and when Firestorm is down.\nactions.combustion_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!talent.feel_the_burn&!conduit.infernal_cascade&!variable.fire_blast_pooling&(!set_bonus.tier28_4pc||debuff.mirrors_of_torment.down||buff.sun_kings_blessing_ready.down||action.pyroblast.executing)&buff.combustion.up&!(buff.firestorm.react||buff.hyperthermia.react)&!buff.hot_streak.react&hot_streak_spells_in_flight+buff.heating_up.react*(gcd.remains>0)<2\nactions.combustion_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=conduit.infernal_cascade&!variable.fire_blast_pooling&(!set_bonus.tier28_4pc||debuff.mirrors_of_torment.down||buff.sun_kings_blessing_ready.down||action.pyroblast.executing)&(!equipped.hyperthread_wristwraps||!cooldown.hyperthread_wristwraps_300142.ready||charges>1||debuff.mirrors_of_torment.up)&(variable.expected_fire_blasts>=variable.needed_fire_blasts||buff.combustion.remains<gcd.max||variable.extended_combustion_remains<=buff.infernal_cascade.duration||buff.infernal_cascade.stack<2||buff.infernal_cascade.remains<gcd.max||cooldown.shifting_power.ready&variable.use_shifting_power||equipped.hyperthread_wristwraps&cooldown.hyperthread_wristwraps_300142.ready)&buff.combustion.up&(!(buff.firestorm.react||buff.hyperthermia.react)||buff.infernal_cascade.remains<0.5)&!buff.hot_streak.react&hot_streak_spells_in_flight+buff.heating_up.react*(gcd.remains>0)<2\nactions.combustion_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=talent.feel_the_burn&!variable.fire_blast_pooling&(!set_bonus.tier28_4pc||debuff.mirrors_of_torment.down||buff.sun_kings_blessing_ready.down||action.pyroblast.executing)&(!equipped.hyperthread_wristwraps||!cooldown.hyperthread_wristwraps_300142.ready||charges>1||debuff.mirrors_of_torment.up)&(variable.expected_fire_blasts>=variable.needed_fire_blasts||buff.combustion.remains<gcd.max||variable.extended_combustion_remains<=buff.feel_the_burn.duration||buff.feel_the_burn.stack<2||buff.feel_the_burn.remains<gcd.max||cooldown.shifting_power.ready&variable.use_shifting_power||equipped.hyperthread_wristwraps&cooldown.hyperthread_wristwraps_300142.ready)&buff.combustion.up&(!(buff.firestorm.react||buff.hyperthermia.react)||buff.feel_the_burn.remains<0.5)&!buff.hot_streak.react&hot_streak_spells_in_flight+buff.heating_up.react*(gcd.remains>0)<2\n# Spend Hot Streaks during Combustion at high priority.\nactions.combustion_phase+=/flamestrike,if=(buff.hot_streak.react&active_enemies>=variable.combustion_flamestrike)||((buff.firestorm.react||buff.hyperthermia.react)&active_enemies>=variable.combustion_flamestrike-(runeforge.firestorm||talent.hyperthermia))\n# Radiant Spark should be used with a Hot Streak ready to use immediately after the cast finishes. This will naturally set up a Hot Streak spent for the final stack of Radiant Spark.\nactions.combustion_phase+=/radiant_spark,if=buff.combustion.up&2*buff.hot_streak.react+buff.heating_up.react+hot_streak_spells_in_flight=2\nactions.combustion_phase+=/pyroblast,if=(buff.firestorm.react||buff.hyperthermia.react)\n## With Sun King's Blessing, there is a brief delay before the Sun King's Blessing ready buff is removed after consuming it. It is beneficial to wait for this delay before spending Hot Streaks to not waste a stack.\n## actions.combustion_phase+=/wait,sec=0.01,if=buff.hot_streak.react&active_enemies<variable.combustion_flamestrike&(buff.sun_kings_blessing_ready.expiration_delay_remains||time-buff.sun_kings_blessing_ready.last_expire<variable.skb_delay-0.03)\nactions.combustion_phase+=/pyroblast,if=buff.hot_streak.react&buff.combustion.up\nactions.combustion_phase+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.react&active_enemies<variable.combustion_flamestrike&buff.combustion.up\n# Using Shifting Power during Combustion to restore Fire Blast and Phoenix Flame charges can be beneficial, but usually only on AoE.\nactions.combustion_phase+=/shifting_power,if=variable.use_shifting_power&buff.combustion.up&!action.fire_blast.charges&(action.phoenix_flames.charges<action.phoenix_flames.max_charges||talent.alexstraszas_fury)\n# If a Sun King's Blessing proc would be used, Rune of Power should be used first if the existing Rune of Power will expire during the cast.\nactions.combustion_phase+=/rune_of_power,if=buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>execute_time+action.flamestrike.cast_time&buff.rune_of_power.remains<action.flamestrike.cast_time&active_enemies>=variable.combustion_flamestrike\nactions.combustion_phase+=/flamestrike,if=buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>cast_time&active_enemies>=variable.combustion_flamestrike&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.combustion_phase+=/rune_of_power,if=buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>execute_time+action.pyroblast.cast_time&buff.rune_of_power.remains<action.pyroblast.cast_time\nactions.combustion_phase+=/pyroblast,if=buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>cast_time&buff.sun_kings_blessing_ready.expiration_delay_remains=0\n# With the T30 set, Phoenix Flames should be used to maintain Charring Embers during Combustion and Flame's Fury procs should be spent.\nactions.combustion_phase+=/phoenix_flames,if=set_bonus.tier30_2pc&travel_time<buff.combustion.remains&buff.heating_up.react+hot_streak_spells_in_flight<2&(debuff.charring_embers.remains<2*gcd.max||buff.flames_fury.up)\n# Pyroclasm procs should be used in Combustion at higher priority than Phoenix Flames and Scorch.\nactions.combustion_phase+=/pyroblast,if=buff.pyroclasm.react&buff.pyroclasm.remains>cast_time&buff.combustion.remains>cast_time&active_enemies<variable.combustion_flamestrike&(!talent.feel_the_burn||buff.feel_the_burn.remains>execute_time||buff.heating_up.react+hot_streak_spells_in_flight<2)\n# Avoid capping Phoenix Flames charges during Combustion. TODO: Is there a better way to spend these?\nactions.combustion_phase+=/phoenix_flames,if=set_bonus.tier30_2pc&charges_fractional>2.5&(travel_time<buff.combustion.remains||talent.alexstraszas_fury)\nactions.combustion_phase+=/fireball,if=buff.combustion.remains>cast_time&buff.flame_accelerant.react\n# Use Phoenix Flames and Scorch in Combustion to help generate Hot Streaks when Fire Blasts are not available or need to be conserved.\nactions.combustion_phase+=/phoenix_flames,if=!set_bonus.tier30_2pc&!talent.alexstraszas_fury&travel_time<buff.combustion.remains&buff.heating_up.react+hot_streak_spells_in_flight<2&(!talent.from_the_ashes||variable.extended_combustion_remains<10)\nactions.combustion_phase+=/scorch,if=buff.combustion.remains>cast_time&cast_time>=gcd.max\nactions.combustion_phase+=/fireball,if=buff.combustion.remains>cast_time\n# If there isn't enough time left in Combustion for a Phoenix Flames or Scorch to hit inside of Combustion, use something else.\nactions.combustion_phase+=/living_bomb,if=buff.combustion.remains<gcd.max&active_enemies>1\nactions.combustion_phase+=/ice_nova,if=buff.combustion.remains<gcd.max\n\nactions.rop_phase=flamestrike,if=active_enemies>=variable.hot_streak_flamestrike&(buff.hot_streak.react||(buff.firestorm.react||buff.hyperthermia.react))\nactions.rop_phase+=/fireball,if=buff.deathborne.up&runeforge.deaths_fathom&variable.time_to_combustion<buff.deathborne.remains&active_enemies>=2\nactions.rop_phase+=/flamestrike,if=active_enemies>=variable.hard_cast_flamestrike&buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>cast_time&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.rop_phase+=/pyroblast,if=buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>cast_time&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.rop_phase+=/pyroblast,if=(buff.firestorm.react||buff.hyperthermia.react)\nactions.rop_phase+=/pyroblast,if=buff.hot_streak.react\n# Use one Fire Blast early in RoP if you don't have either Heating Up or Hot Streak yet and either: (a) have more than two already, (b) have Alexstrasza's Fury ready to use, or (c) Searing Touch is active. Don't do this while hard casting Flamestrikes or when Sun King's Blessing is ready.\nactions.rop_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!variable.fire_blast_pooling&buff.sun_kings_blessing_ready.down&active_enemies<variable.hard_cast_flamestrike&!firestarter.active&(!buff.heating_up.react&!buff.hot_streak.react&!prev_off_gcd.fire_blast&(action.fire_blast.charges>=2||(talent.alexstraszas_fury&cooldown.dragons_breath.ready)||searing_touch.active))\n# Use Fire Blast either during a Fireball/Pyroblast cast when Heating Up is active or during execute with Searing Touch.\nactions.rop_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!variable.fire_blast_pooling&!firestarter.active&buff.sun_kings_blessing_ready.down&(((action.fireball.executing&(action.fireball.execute_remains<0.5||!(runeforge.firestorm||talent.hyperthermia))||action.pyroblast.executing&(action.pyroblast.execute_remains<0.5||!(runeforge.firestorm||talent.hyperthermia)))&buff.heating_up.react)||(searing_touch.active&(buff.heating_up.react&!action.scorch.executing||!buff.hot_streak.react&!buff.heating_up.react&action.scorch.executing&!hot_streak_spells_in_flight)))\nactions.rop_phase+=/call_action_list,name=active_talents\n# actions.rop_phase+=/scorch,if=searing_touch.active&talent.improved_scorch&debuff.improved_scorch.remains<3*gcd.max\nactions.rop_phase+=/pyroblast,if=buff.pyroclasm.react&cast_time<buff.pyroclasm.remains&cast_time<buff.rune_of_power.remains&(!(runeforge.sun_kings_blessing||talent.sun_kings_blessing)||buff.pyroclasm.remains<action.fireball.cast_time+cast_time*buff.pyroclasm.react)\nactions.rop_phase+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.react&searing_touch.active&active_enemies<variable.hot_streak_flamestrike\nactions.rop_phase+=/phoenix_flames,if=!talent.alexstraszas_fury&(!variable.phoenix_pooling||set_bonus.tier30_2pc&debuff.charring_embers.remains<2*gcd.max)&(debuff.charring_embers.remains<2*gcd.max||buff.flames_fury.up)\nactions.rop_phase+=/phoenix_flames,if=talent.alexstraszas_fury&(!variable.phoenix_pooling||set_bonus.tier30_2pc&debuff.charring_embers.remains<2*gcd.max||buff.flames_fury.up)&!hot_streak_spells_in_flight&!action.phoenix_flames.in_flight&(debuff.charring_embers.remains<2*gcd.max||buff.flames_fury.up||charges>1)\nactions.rop_phase+=/scorch,if=searing_touch.active\nactions.rop_phase+=/dragons_breath,if=active_enemies>2\nactions.rop_phase+=/arcane_explosion,if=active_enemies>=variable.arcane_explosion&mana.pct>=variable.arcane_explosion_mana\n# With enough targets, it is a gain to cast Flamestrike as filler instead of Fireball.\nactions.rop_phase+=/flamestrike,if=active_enemies>=variable.hard_cast_flamestrike\nactions.rop_phase+=/pyroblast,if=talent.tempered_flames&!buff.flame_accelerant.react\nactions.rop_phase+=/fireball\n\nactions.standard_rotation=flamestrike,if=active_enemies>=variable.hot_streak_flamestrike&(buff.hot_streak.react||(buff.firestorm.react||buff.hyperthermia.react))\nactions.standard_rotation+=/pyroblast,if=buff.hyperthermia.react\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&(buff.hot_streak.remains<action.fireball.execute_time||talent.alexstraszas_fury&action.phoenix_flames.charges>0)\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&(prev_gcd.1.fireball||fireball_hardcast_prevented||firestarter.active||action.pyroblast.in_flight)\n# Try to get SKB procs inside RoP phases or Combustion phases when possible.\nactions.standard_rotation+=/flamestrike,if=active_enemies>=variable.hard_cast_flamestrike&buff.sun_kings_blessing_ready.up&(cooldown.rune_of_power.remains+action.rune_of_power.execute_time+cast_time>buff.sun_kings_blessing_ready.remains||!talent.rune_of_power)&variable.time_to_combustion+cast_time>buff.sun_kings_blessing_ready.remains&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.standard_rotation+=/pyroblast,if=buff.sun_kings_blessing_ready.up&(cooldown.rune_of_power.remains+action.rune_of_power.execute_time+cast_time>buff.sun_kings_blessing_ready.remains||!talent.rune_of_power)&variable.time_to_combustion+cast_time>buff.sun_kings_blessing_ready.remains&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&searing_touch.active\nactions.standard_rotation+=/pyroblast,if=buff.pyroclasm.react&cast_time<buff.pyroclasm.remains&(!(runeforge.sun_kings_blessing||talent.sun_kings_blessing)||buff.pyroclasm.remains<action.fireball.cast_time+cast_time*buff.pyroclasm.react)\n# During the standard rotation, only use Fire Blasts when they are not being pooled for RoP or Combustion. Use Fire Blast either during a Fireball/Pyroblast cast when Heating Up is active or during execute with Searing Touch.\nactions.standard_rotation+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!firestarter.active&!variable.fire_blast_pooling&buff.sun_kings_blessing_ready.down&(((action.fireball.executing&(action.fireball.execute_remains<0.5||!(runeforge.firestorm||talent.hyperthermia))||action.pyroblast.executing&(action.pyroblast.execute_remains<0.5||!(runeforge.firestorm||talent.hyperthermia))||(!searing_touch.active&fireball_hardcast_prevented))&buff.heating_up.react)||(searing_touch.active&(buff.heating_up.react&!action.scorch.executing||!buff.hot_streak.react&!buff.heating_up.react&action.scorch.executing&!hot_streak_spells_in_flight)))\n# Modified; changed to Hot Streak to avoid hardcasted Pyroblasts.\nactions.standard_rotation+=/pyroblast,if=prev_gcd.1.scorch&buff.hot_streak.react&searing_touch.active&active_enemies<variable.hot_streak_flamestrike\nactions.standard_rotation+=/phoenix_flames,if=!talent.alexstraszas_fury&!buff.hot_streak.react&(!variable.phoenix_pooling||set_bonus.tier30_2pc&debuff.charring_embers.remains<2*gcd.max)&(debuff.charring_embers.remains<2*gcd.max||buff.flames_fury.up)\nactions.standard_rotation+=/phoenix_flames,if=talent.alexstraszas_fury&!buff.hot_streak.react&(!variable.phoenix_pooling||set_bonus.tier30_2pc&debuff.charring_embers.remains<2*gcd.max||buff.flames_fury.up)&!hot_streak_spells_in_flight&!action.phoenix_flames.in_flight&(debuff.charring_embers.remains<2*gcd.max||buff.flames_fury.up||charges>1)\nactions.standard_rotation+=/call_action_list,name=active_talents\nactions.standard_rotation+=/dragons_breath,if=active_enemies>1\nactions.standard_rotation+=/scorch,if=searing_touch.active\nactions.standard_rotation+=/arcane_explosion,if=active_enemies>=variable.arcane_explosion&mana.pct>=variable.arcane_explosion_mana\n# With enough targets, it is a gain to cast Flamestrike as filler instead of Fireball.\nactions.standard_rotation+=/flamestrike,if=active_enemies>=variable.hard_cast_flamestrike\nactions.standard_rotation+=/pyroblast,if=talent.tempered_flames&!buff.flame_accelerant.react\nactions.standard_rotation+=/fireball",
					["spec"] = 63,
				},
				["Arcane"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230526,
					["spec"] = 62,
					["desc"] = "2023-05-26:  Tweak to Arcane Blasts at high haste.\n\n2023-05-21:  Re-enable Evocation out of boss fights.\n\n2023-05-20:  Even more adjustments to timed priority entries.\n\n2023-05-15:  Relax some line cooldowns to help ensure transition into Arcane Surge.\n\n2023-05-13:  Minor update.\n\n2023-05-12:  Added T30 priority from SimC.\n\n2023-05-02:  Update for 10.1.",
					["lists"] = {
						["aoe_rotation"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack < 2 & cooldown.touch_of_the_magi.remains > 18",
								["action"] = "arcane_orb",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.evocation.enabled || cooldown.evocation.remains > 12 ) & ( ! talent.arcane_surge.enabled || cooldown.arcane_surge.remains > 12 ) & ( ! talent.touch_of_the_magi.enabled || cooldown.touch_of_the_magi.remains > 12 ) & buff.arcane_surge.down",
								["action"] = "shifting_power",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.down",
								["action"] = "ice_nova",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || ! ticking ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack & buff.arcane_surge.down",
								["action"] = "nether_tempest",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & talent.arcane_harmony.enabled & talent.rune_of_power.enabled & cooldown.rune_of_power.remains < ( gcd.max * 2 )",
								["action"] = "arcane_missiles",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack || mana.pct < 10",
								["action"] = "arcane_barrage",
							}, -- [6]
							{
								["action"] = "arcane_explosion",
								["enabled"] = true,
							}, -- [7]
						},
						["t30_rotation"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack < 3 & ( buff.bloodlust.down || mana.pct > 70 )",
								["action"] = "arcane_orb",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.down & cooldown.arcane_surge.remains > 45 & set_bonus.tier30_4pc",
								["action"] = "shifting_power",
							}, -- [2]
							{
								["action"] = "rune_of_power",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack < 3 & target.health.pct < 35 & talent.arcane_bombardment.enabled",
								["action"] = "presence_of_mind",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.presence_of_mind.up & target.health.pct < 35 & talent.arcane_bombardment.enabled & buff.arcane_charge.stack < 3",
								["action"] = "arcane_blast",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & buff.clearcasting.stack = buff.clearcasting.max_stack",
								["action"] = "arcane_missiles",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || ! ticking ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack & ( ( ( buff.temporal_warp.up || mana.pct < 10 || ! talent.shifting_power.enabled ) & buff.arcane_surge.down ) || equipped.neltharions_call_to_chaos ) & fight_remains >= 12",
								["action"] = "nether_tempest",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & mana.pct < 50 & ! talent.evocation.enabled & fight_remains > 20",
								["action"] = "arcane_barrage",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & mana.pct < 70 & variable.conserve_mana & buff.bloodlust.up & cooldown.touch_of_the_magi.remains > 5 & fight_remains > 20",
								["action"] = "arcane_barrage",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & buff.concentration.up & buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "arcane_missiles",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & buff.nether_precision.up",
								["action"] = "arcane_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & mana.pct < 60 & variable.conserve_mana & ( ! talent.rune_of_power.enabled || cooldown.rune_of_power.remains > 5 ) & cooldown.touch_of_the_magi.remains > 10 & cooldown.evocation.remains > 40 & fight_remains > 20",
								["action"] = "arcane_barrage",
							}, -- [12]
							{
								["enabled"] = true,
								["interrupt_if"] = "gcd.remains=0&buff.nether_precision.up&(mana.pct>30&cooldown.rune_of_power.remains>30||mana.pct>70)",
								["action"] = "arcane_missiles",
								["criteria"] = "buff.clearcasting.react & buff.nether_precision.down",
							}, -- [13]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [15]
						},
						["aoe_spark_phase"] = {
							{
								["enabled"] = true,
								["buff_name"] = "presence_of_mind",
								["criteria"] = "prev_gcd.1.arcane_blast & cooldown.arcane_surge.remains > 75",
								["action"] = "cancel_buff",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.arcane_surge.remains < 75 & cooldown.arcane_surge.remains > 30",
								["action"] = "rune_of_power",
							}, -- [2]
							{
								["action"] = "radiant_spark",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.arcane_surge.remains <= ( gcd.max * 2 ) & ( ! variable.talon_dbluse || ! buff.bloodlust.up )",
								["name"] = "timebreaching_talon",
								["action"] = "timebreaching_talon",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack >= 3 & prev_gcd.1.radiant_spark",
								["action"] = "arcane_explosion",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "arcane_orb",
								["criteria"] = "buff.arcane_charge.stack < 3",
								["line_cd"] = "15",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "nether_tempest",
								["criteria"] = "talent.arcane_echo.enabled",
								["line_cd"] = "15",
							}, -- [7]
							{
								["action"] = "arcane_surge",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.arcane_surge.remains < 75 & debuff.radiant_spark_vulnerability.stack = 4",
								["action"] = "arcane_barrage",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( debuff.radiant_spark_vulnerability.stack = 2 & cooldown.arcane_surge.remains > 75 ) || ( debuff.radiant_spark_vulnerability.stack = 1 & cooldown.arcane_surge.remains < 75 )",
								["action"] = "arcane_barrage",
							}, -- [10]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "prev_gcd.1.arcane_barrage",
								["action"] = "touch_of_the_magi",
							}, -- [11]
							{
								["action"] = "presence_of_mind",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "debuff.radiant_spark_vulnerability.stack = 2 || debuff.radiant_spark_vulnerability.stack = 3",
								["action"] = "arcane_blast",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( debuff.radiant_spark_vulnerability.stack = 4 & buff.arcane_surge.up ) || ( debuff.radiant_spark_vulnerability.stack = 3 & buff.arcane_surge.down )",
								["action"] = "arcane_barrage",
							}, -- [14]
						},
						["aoe_touch_phase"] = {
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.arcane_bombardment.enabled & target.health.pct < 35 & debuff.touch_of_the_magi.remains <= gcd.max",
								["action"] = "arcane_barrage",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & active_enemies >= variable.aoe_target_count & cooldown.arcane_orb.remains <= execute_time",
								["action"] = "arcane_barrage",
							}, -- [3]
							{
								["enabled"] = true,
								["chain"] = "1",
								["criteria"] = "buff.clearcasting.react & ( talent.arcane_echo.enabled & ( talent.arcane_harmony.enabled || talent.orb_barrage.enabled ) )",
								["action"] = "arcane_missiles",
							}, -- [4]
							{
								["enabled"] = true,
								["chain"] = "1",
								["criteria"] = "buff.clearcasting.stack > 1 & talent.conjure_mana_gem.enabled & cooldown.use_mana_gem.ready & ( talent.arcane_echo.enabled & ( talent.arcane_harmony.enabled || talent.orb_barrage.enabled ) )",
								["action"] = "arcane_missiles",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack < 2",
								["action"] = "arcane_orb",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "arcane_barrage",
							}, -- [7]
							{
								["action"] = "arcane_explosion",
								["enabled"] = true,
							}, -- [8]
						},
						["touch_phase"] = {
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( debuff.touch_of_the_magi.remains <= gcd.max || buff.rune_of_power.remains <= gcd.max )",
								["action"] = "presence_of_mind",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.presence_of_mind.up & buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "arcane_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( buff.arcane_harmony.up || ( talent.arcane_bombardment.enabled & target.health.pct < 35 ) ) & debuff.touch_of_the_magi.remains <= gcd.max",
								["action"] = "arcane_barrage",
							}, -- [4]
							{
								["enabled"] = true,
								["chain"] = "1",
								["criteria"] = "buff.clearcasting.stack > 1 & talent.conjure_mana_gem.enabled & cooldown.use_mana_gem.ready",
								["action"] = "arcane_missiles",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.nether_precision.up",
								["action"] = "arcane_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "arcane_missiles",
								["interrupt_if"] = "gcd.remains=0&mana.pct>30&buff.nether_precision.up",
								["chain"] = "1",
								["criteria"] = "buff.clearcasting.react & ( debuff.touch_of_the_magi.remains > execute_time || ! talent.presence_of_mind.enabled )",
							}, -- [7]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [9]
						},
						["rotation"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack < 3 & ( buff.bloodlust.down || mana.pct > 70 || cooldown.touch_of_the_magi.remains > 30 )",
								["action"] = "arcane_orb",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.evocation.enabled || cooldown.evocation.remains > 12 ) & ( ! talent.arcane_surge.enabled || cooldown.arcane_surge.remains > 12 ) & ( ! talent.touch_of_the_magi.enabled || cooldown.touch_of_the_magi.remains > 12 ) & buff.arcane_surge.down & fight_remains > 15",
								["action"] = "shifting_power",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack < 3 & target.health.pct < 35 & talent.arcane_bombardment.enabled",
								["action"] = "presence_of_mind",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.presence_of_mind.up & target.health.pct < 35 & talent.arcane_bombardment.enabled & buff.arcane_charge.stack < 3",
								["action"] = "arcane_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & buff.clearcasting.stack = buff.clearcasting.max_stack",
								["action"] = "arcane_missiles",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || ! ticking ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack & ( ( ( buff.temporal_warp.up || mana.pct < 10 || ! talent.shifting_power.enabled ) & buff.arcane_surge.down ) || equipped.neltharions_call_to_chaos ) & fight_remains >= 12",
								["action"] = "nether_tempest",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & mana.pct < 50 & ! talent.evocation.enabled & fight_remains > 20",
								["action"] = "arcane_barrage",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & mana.pct < 70 & variable.conserve_mana & buff.bloodlust.up & cooldown.touch_of_the_magi.remains > 5 & fight_remains > 20",
								["action"] = "arcane_barrage",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & buff.concentration.up & buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "arcane_missiles",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & buff.nether_precision.up",
								["action"] = "arcane_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & mana.pct < 60 & variable.conserve_mana & ( ! talent.rune_of_power.enabled || cooldown.rune_of_power.remains > 5 ) & cooldown.touch_of_the_magi.remains > 10 & cooldown.evocation.remains > 40 & fight_remains > 20",
								["action"] = "arcane_barrage",
							}, -- [11]
							{
								["enabled"] = true,
								["interrupt_if"] = "gcd.remains=0&mana.pct>30&buff.nether_precision.up&!talent.arcane_harmony",
								["action"] = "arcane_missiles",
								["criteria"] = "buff.clearcasting.react & buff.nether_precision.down",
							}, -- [12]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [14]
						},
						["standard_cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "arcane_surge",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge & talent.arcane_echo.enabled",
								["action"] = "nether_tempest",
								["line_cd"] = "5",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.up & cooldown.touch_of_the_magi.ready",
								["action"] = "meteor",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.up & cooldown.touch_of_the_magi.ready",
								["action"] = "arcane_barrage",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.touch_of_the_magi.remains <= ( gcd.max * 2 ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "rune_of_power",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.touch_of_the_magi.remains <= ( gcd.max * 2 ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "meteor",
							}, -- [6]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "prev_gcd.1.arcane_barrage",
								["action"] = "touch_of_the_magi",
							}, -- [7]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "counterspell",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.arcane_surge.ready",
								["action"] = "potion",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "This is a backup measure in case you fail to pre-evocate with Siphon Storm.",
								["criteria"] = "talent.siphon_storm.enabled & time < 10 & cooldown.arcane_surge.remains < 5",
								["action"] = "evocation",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.temporal_warp.enabled & buff.exhaustion.up & ( cooldown.arcane_surge.ready || fight_remains <= 40 || buff.arcane_surge.up & fight_remains <= 80 )",
								["action"] = "time_warp",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.down & buff.rune_of_power.down & debuff.touch_of_the_magi.down",
								["action"] = "lights_judgment",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.down & buff.rune_of_power.down & debuff.touch_of_the_magi.down",
								["action"] = "bag_of_tricks",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( prev_gcd.1.arcane_surge & ! ( buff.temporal_warp.up & buff.bloodlust.up ) ) || ( buff.arcane_surge.up & debuff.touch_of_the_magi.up )",
								["action"] = "berserking",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge",
								["action"] = "blood_fury",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge",
								["action"] = "fireblood",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge",
								["action"] = "ancestral_call",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( ( prev_gcd.1.arcane_surge & ! set_bonus.tier30_4pc ) || ( prev_gcd.2.arcane_surge & debuff.touch_of_the_magi.up & set_bonus.tier30_4pc ) ) || ( active_enemies >= variable.aoe_target_count & cooldown.arcane_surge.ready & prev_gcd.1.nether_tempest )",
								["action"] = "use_items",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct > 65 & ( ! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20 )",
								["name"] = "conjured_chillglobe",
								["action"] = "conjured_chillglobe",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20",
								["name"] = "darkmoon_deck_rime",
								["action"] = "darkmoon_deck_rime",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20",
								["name"] = "darkmoon_deck_dance",
								["action"] = "darkmoon_deck_dance",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20",
								["name"] = "darkmoon_deck_inferno",
								["action"] = "darkmoon_deck_inferno",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20",
								["name"] = "desperate_invokers_codex",
								["action"] = "desperate_invokers_codex",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20",
								["name"] = "iceblood_deathsnare",
								["action"] = "iceblood_deathsnare",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains < 2",
								["action"] = "arcane_barrage",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & buff.arcane_surge.down & debuff.touch_of_the_magi.down & ( ( mana.pct < 10 & ( ( cooldown.touch_of_the_magi.remains < 15 & set_bonus.tier30_4pc ) || cooldown.touch_of_the_magi.remains < 25 & ! set_bonus.tier30_4pc ) ) || ( ( cooldown.touch_of_the_magi.remains < 10 & set_bonus.tier30_4pc ) || cooldown.touch_of_the_magi.remains < 20 & ! set_bonus.tier30_4pc ) ) & mana.pct < fight_remains * 4",
								["action"] = "evocation",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & debuff.touch_of_the_magi.down & buff.arcane_surge.down & cooldown.arcane_surge.remains < fight_remains & ! mana_gem_charges & buff.arcane_overload.down",
								["action"] = "conjure_mana_gem",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "talent.cascading_power.enabled & buff.clearcasting.stack < 2 & buff.arcane_surge.up",
								["action"] = "mana_gem",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "! talent.cascading_power.enabled & prev_gcd.1.arcane_surge",
								["action"] = "mana_gem",
								["line_cd"] = "5",
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "( cooldown.arcane_surge.remains <= gcd.max * 2 || buff.arcane_surge.up || buff.arcane_overload.up ) & ( ! talent.siphon_storm.enabled || cooldown.evocation.remains > 45 ) & ( ( cooldown.touch_of_the_magi.remains < gcd.max * 4 ) || cooldown.touch_of_the_magi.remains > 20 ) & set_bonus.tier30_4pc & active_enemies < variable.aoe_target_count",
								["list_name"] = "t30_burst_phase",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "cooldown.arcane_surge.remains > 30 & ( cooldown.radiant_spark.ready || dot.radiant_spark.remains || debuff.radiant_spark_vulnerability.up ) & ( cooldown.touch_of_the_magi.remains <= ( gcd.max * 3 ) || debuff.touch_of_the_magi.up ) & set_bonus.tier30_4pc & active_enemies < variable.aoe_target_count",
								["list_name"] = "t30_mini",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.radiant_spark.enabled & variable.aoe_spark_phase",
								["list_name"] = "aoe_spark_phase",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.radiant_spark.enabled & variable.spark_phase",
								["list_name"] = "spark_phase",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "debuff.touch_of_the_magi.up & active_enemies >= variable.aoe_target_count",
								["list_name"] = "aoe_touch_phase",
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "debuff.touch_of_the_magi.up & active_enemies < variable.aoe_target_count & ! set_bonus.tier30_4pc",
								["list_name"] = "touch_phase",
							}, -- [28]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "variable.rop_phase",
								["list_name"] = "rop_phase",
							}, -- [29]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "! talent.radiant_spark.enabled & ( ! talent.rune_of_power.enabled || active_enemies >= variable.aoe_target_count )",
								["list_name"] = "standard_cooldowns",
							}, -- [30]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies >= variable.aoe_target_count",
								["list_name"] = "aoe_rotation",
							}, -- [31]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "set_bonus.tier30_4pc",
								["list_name"] = "t30_rotation",
							}, -- [32]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "rotation",
							}, -- [33]
						},
						["precombat"] = {
							{
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "arcane_familiar",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "conjure_mana_gem",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "opener_min_mana",
								["value"] = "225000",
								["value_else"] = "200000",
								["criteria"] = "talent.arcane_harmony.enabled",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "equipped.gladiators_badge || equipped.irideus_fragment || equipped.erupting_spear_fragment || equipped.spoils_of_neltharus || equipped.tome_of_unstable_power || equipped.timebreaching_talon || equipped.horn_of_valor",
								["var_name"] = "steroid_trinket_equipped",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "equipped.timebreaching_talon & equipped.irideus_fragment",
								["var_name"] = "talon_dbluse",
							}, -- [6]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! talent.siphon_storm.enabled",
								["action"] = "arcane_blast",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.siphon_storm.enabled",
								["action"] = "evocation",
							}, -- [9]
						},
						["spark_phase"] = {
							{
								["enabled"] = true,
								["action"] = "nether_tempest",
								["criteria"] = "! ticking & variable.opener & buff.bloodlust.up",
								["line_cd"] = "45",
							}, -- [1]
							{
								["action"] = "rune_of_power",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.opener & cooldown.arcane_surge.ready & buff.bloodlust.up & mana >= variable.opener_min_mana & buff.rune_of_power.remains > gcd.max * 4",
								["action"] = "arcane_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["chain"] = "1",
								["criteria"] = "variable.opener & buff.bloodlust.up & buff.clearcasting.react & buff.clearcasting.stack >= 2 & cooldown.radiant_spark.remains < 5 & buff.nether_precision.down",
								["action"] = "arcane_missiles",
							}, -- [4]
							{
								["enabled"] = true,
								["chain"] = "1",
								["criteria"] = "talent.arcane_harmony.enabled & buff.arcane_harmony.stack < 15 & ( ( variable.opener & buff.bloodlust.up ) || buff.clearcasting.react & cooldown.radiant_spark.remains < 5 ) & cooldown.arcane_surge.remains < 30",
								["action"] = "arcane_missiles",
							}, -- [5]
							{
								["action"] = "radiant_spark",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.arcane_surge.remains <= ( gcd.max * 3 )",
								["name"] = "timebreaching_talon",
								["action"] = "timebreaching_talon",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.nether_tempest = 0 & ( ( prev_gcd.4.radiant_spark & cooldown.arcane_surge.remains <= execute_time ) || prev_gcd.5.radiant_spark )",
								["action"] = "nether_tempest",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.nether_tempest.enabled & prev_gcd.4.radiant_spark ) || prev_gcd.1.nether_tempest",
								["action"] = "arcane_surge",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( talent.nether_tempest.enabled & prev_gcd.6.radiant_spark ) || ( ! talent.nether_tempest.enabled & prev_gcd.5.radiant_spark )",
								["action"] = "meteor",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cast_time >= gcd.max & execute_time < debuff.radiant_spark_vulnerability.remains & ( ! talent.arcane_bombardment.enabled || target.health.pct >= 35 ) & ( talent.nether_tempest.enabled & prev_gcd.6.radiant_spark || ! talent.nether_tempest.enabled & prev_gcd.5.radiant_spark ) & ! talent.meteor.enabled",
								["action"] = "arcane_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "debuff.radiant_spark_vulnerability.stack = 4",
								["action"] = "arcane_barrage",
							}, -- [12]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "prev_gcd.1.arcane_barrage & ( action.arcane_barrage.in_flight_remains <= 0.2 || gcd.remains <= 0.2 )",
								["action"] = "touch_of_the_magi",
							}, -- [13]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [15]
						},
						["rop_phase"] = {
							{
								["action"] = "rune_of_power",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.rune_of_power",
								["action"] = "arcane_blast",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_blast & prev_gcd.2.rune_of_power",
								["action"] = "arcane_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_blast & prev_gcd.3.rune_of_power",
								["action"] = "arcane_blast",
							}, -- [4]
							{
								["action"] = "arcane_surge",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_blast & prev_gcd.4.rune_of_power",
								["action"] = "arcane_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.arcane_echo.enabled & active_dot.nether_tempest = 0",
								["action"] = "nether_tempest",
							}, -- [7]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "prev_gcd.1.arcane_barrage",
								["action"] = "touch_of_the_magi",
							}, -- [10]
						},
						["t30_burst_phase"] = {
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "prev_gcd.1.arcane_barrage",
								["action"] = "touch_of_the_magi",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.radiant_spark_vulnerability.up & cooldown.radiant_spark.ready & buff.arcane_charge.stack < buff.arcane_charge.max_stack",
								["action"] = "arcane_orb",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.radiant_spark_vulnerability.up & cooldown.radiant_spark.ready & ( buff.arcane_charge.stack < 2 || ( buff.arcane_charge.stack < buff.arcane_charge.max_stack & cooldown.arcane_orb.remains >= gcd.max ) )",
								["action"] = "arcane_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & ! debuff.radiant_spark_vulnerability.up & cooldown.radiant_spark.ready & ( buff.nether_precision.down || buff.nether_precision.remains < gcd.max )",
								["action"] = "arcane_missiles",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.arcane_surge.remains <= gcd.max * 2",
								["action"] = "radiant_spark",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.radiant_spark & buff.arcane_charge.stack < buff.arcane_charge.max_stack",
								["action"] = "arcane_orb",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "nether_tempest",
								["criteria"] = "cooldown.arcane_surge.remains <= gcd.max",
								["line_cd"] = "45",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( ( ! talent.nether_tempest.enabled & prev_gcd.2.radiant_spark ) || prev_gcd.1.nether_tempest )",
								["action"] = "arcane_surge",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge & ( ! variable.talon_dbluse || ! buff.bloodlust.up )",
								["name"] = "timebreaching_talon",
								["action"] = "timebreaching_talon",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & debuff.touch_of_the_magi.down & cooldown.arcane_surge.remains > 22",
								["action"] = "rune_of_power",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge",
								["action"] = "arcane_barrage",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "debuff.radiant_spark_vulnerability.stack = 3",
								["action"] = "meteor",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( debuff.radiant_spark_vulnerability.stack > 0 & debuff.radiant_spark_vulnerability.stack < 4 ) || ( cast_time < gcd.max & debuff.radiant_spark_vulnerability.stack = 4 )",
								["action"] = "arcane_blast",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "debuff.touch_of_the_magi.remains <= gcd.max",
								["action"] = "presence_of_mind",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.presence_of_mind.up & buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "arcane_blast",
							}, -- [15]
							{
								["enabled"] = true,
								["interrupt_if"] = "gcd.remains=0&mana.pct>30&buff.nether_precision.up",
								["action"] = "arcane_missiles",
								["criteria"] = "buff.nether_precision.down & buff.clearcasting.react",
							}, -- [16]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [17]
						},
						["t30_mini"] = {
							{
								["action"] = "radiant_spark",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.nether_tempest = 0 & ( prev_gcd.1.radiant_spark || prev_gcd.1.shifting_power )",
								["action"] = "nether_tempest",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "debuff.radiant_spark_vulnerability.stack = 0",
								["action"] = "meteor",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.meteor || ( prev_gcd.1.nether_tempest & ( prev_gcd.2.radiant_spark || prev_gcd.3.radiant_spark ) )",
								["action"] = "arcane_barrage",
								["line_cd"] = "5",
							}, -- [4]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "prev_gcd.1.arcane_barrage & ( action.arcane_barrage.in_flight_remains <= 0.2 || gcd.remains <= 0.2 )",
								["action"] = "touch_of_the_magi",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ( debuff.radiant_spark_vulnerability.stack > 0 & debuff.radiant_spark_vulnerability.stack < 4 ) || ( cast_time < gcd.max & debuff.radiant_spark_vulnerability.stack = 4 ) ) || buff.nether_precision.up",
								["action"] = "arcane_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( debuff.touch_of_the_magi.remains <= gcd.max || buff.rune_of_power.remains <= gcd.max )",
								["action"] = "presence_of_mind",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "arcane_missiles",
								["interrupt_if"] = "gcd.remains=0&mana.pct>30&buff.nether_precision.up",
								["chain"] = "1",
								["criteria"] = "buff.clearcasting.react & ( debuff.touch_of_the_magi.remains > execute_time || ! talent.presence_of_mind.enabled )",
							}, -- [8]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [10]
						},
					},
					["version"] = 20230526,
					["warnings"] = "The import for 'aoe_rotation' required some automated changes.\nLine 2: Converted 'talent.evocation' to 'talent.evocation.enabled' (1x).\nLine 2: Converted 'talent.arcane_surge' to 'talent.arcane_surge.enabled' (1x).\nLine 2: Converted 'talent.touch_of_the_magi' to 'talent.touch_of_the_magi.enabled' (1x).\nLine 5: Converted 'talent.arcane_harmony' to 'talent.arcane_harmony.enabled' (1x).\nLine 5: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\n\nThe import for 't30_rotation' required some automated changes.\nLine 4: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 5: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 7: Converted 'talent.shifting_power' to 'talent.shifting_power.enabled' (1x).\nLine 8: Converted 'talent.evocation' to 'talent.evocation.enabled' (1x).\nLine 12: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\n\nThe import for 'aoe_spark_phase' required some automated changes.\nLine 7: Converted 'talent.arcane_echo' to 'talent.arcane_echo.enabled' (1x).\n\nThe import for 'aoe_touch_phase' required some automated changes.\nLine 2: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 4: Converted 'talent.arcane_echo' to 'talent.arcane_echo.enabled' (1x).\nLine 4: Converted 'talent.arcane_harmony' to 'talent.arcane_harmony.enabled' (1x).\nLine 4: Converted 'talent.orb_barrage' to 'talent.orb_barrage.enabled' (1x).\nLine 5: Converted 'talent.conjure_mana_gem' to 'talent.conjure_mana_gem.enabled' (1x).\nLine 5: Converted 'talent.arcane_echo' to 'talent.arcane_echo.enabled' (1x).\nLine 5: Converted 'talent.arcane_harmony' to 'talent.arcane_harmony.enabled' (1x).\nLine 5: Converted 'talent.orb_barrage' to 'talent.orb_barrage.enabled' (1x).\n\nThe import for 'touch_phase' required some automated changes.\nLine 4: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 5: Converted 'talent.conjure_mana_gem' to 'talent.conjure_mana_gem.enabled' (1x).\nLine 7: Converted 'talent.presence_of_mind' to 'talent.presence_of_mind.enabled' (1x).\n\nThe import for 'rotation' required some automated changes.\nLine 2: Converted 'talent.evocation' to 'talent.evocation.enabled' (1x).\nLine 2: Converted 'talent.arcane_surge' to 'talent.arcane_surge.enabled' (1x).\nLine 2: Converted 'talent.touch_of_the_magi' to 'talent.touch_of_the_magi.enabled' (1x).\nLine 3: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 4: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 6: Converted 'talent.shifting_power' to 'talent.shifting_power.enabled' (1x).\nLine 7: Converted 'talent.evocation' to 'talent.evocation.enabled' (1x).\nLine 11: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\n\nThe import for 'standard_cooldowns' required some automated changes.\nLine 2: Converted 'talent.arcane_echo' to 'talent.arcane_echo.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 3: Converted 'talent.siphon_storm' to 'talent.siphon_storm.enabled' (1x).\nLine 4: Converted 'talent.temporal_warp' to 'talent.temporal_warp.enabled' (1x).\nLine 21: Converted 'talent.cascading_power' to 'talent.cascading_power.enabled' (1x).\nLine 22: Converted 'talent.cascading_power' to 'talent.cascading_power.enabled' (1x).\nLine 23: Converted 'talent.siphon_storm' to 'talent.siphon_storm.enabled' (1x).\nLine 25: Converted 'talent.radiant_spark' to 'talent.radiant_spark.enabled' (1x).\nLine 26: Converted 'talent.radiant_spark' to 'talent.radiant_spark.enabled' (1x).\nLine 30: Converted 'talent.radiant_spark' to 'talent.radiant_spark.enabled' (1x).\nLine 30: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\n\nThe import for 'rop_phase' required some automated changes.\nLine 7: Converted 'talent.arcane_echo' to 'talent.arcane_echo.enabled' (1x).\n\nThe import for 't30_mini' required some automated changes.\nLine 8: Converted 'talent.presence_of_mind' to 'talent.presence_of_mind.enabled' (1x).\n\nThe import for 't30_burst_phase' required some automated changes.\nLine 8: Converted 'talent.nether_tempest' to 'talent.nether_tempest.enabled' (1x).\n\nThe import for 'spark_phase' required some automated changes.\nLine 5: Converted 'talent.arcane_harmony' to 'talent.arcane_harmony.enabled' (1x).\nLine 9: Converted 'talent.nether_tempest' to 'talent.nether_tempest.enabled' (1x).\nLine 10: Converted 'talent.nether_tempest' to 'talent.nether_tempest.enabled' (1x).\nLine 10: Converted 'talent.nether_tempest' to 'talent.nether_tempest.enabled' (1x).\nLine 11: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 11: Converted 'talent.nether_tempest' to 'talent.nether_tempest.enabled' (1x).\nLine 11: Converted 'talent.nether_tempest' to 'talent.nether_tempest.enabled' (1x).\nLine 11: Converted 'talent.meteor' to 'talent.meteor.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 4: Converted 'talent.arcane_harmony' to 'talent.arcane_harmony.enabled' (1x).\nLine 8: Converted 'talent.siphon_storm' to 'talent.siphon_storm.enabled' (1x).\nLine 9: Converted 'talent.siphon_storm' to 'talent.siphon_storm.enabled' (1x).\n\nImported 13 action lists.\n",
					["author"] = "SimulationCraft",
					["profile"] = "actions.precombat+=/arcane_intellect\nactions.precombat+=/arcane_familiar\nactions.precombat+=/conjure_mana_gem\n## actions.precombat+=/variable,name=aoe_target_count,op=reset,default=3\n## actions.precombat+=/variable,name=conserve_mana,op=set,value=0\nactions.precombat+=/variable,name=opener_min_mana,op=setif,condition=talent.arcane_harmony,value=225000,value_else=200000\nactions.precombat+=/variable,name=steroid_trinket_equipped,op=set,value=equipped.gladiators_badge||equipped.irideus_fragment||equipped.erupting_spear_fragment||equipped.spoils_of_neltharus||equipped.tome_of_unstable_power||equipped.timebreaching_talon||equipped.horn_of_valor\nactions.precombat+=/variable,name=talon_dbluse,op=set,value=equipped.timebreaching_talon&equipped.irideus_fragment\nactions.precombat+=/mirror_image\nactions.precombat+=/arcane_blast,if=!talent.siphon_storm\nactions.precombat+=/evocation,if=talent.siphon_storm\n\n# Executed every time the actor is available.\nactions=counterspell\nactions+=/potion,if=cooldown.arcane_surge.ready\n# This is a backup measure in case you fail to pre-evocate with Siphon Storm.\nactions+=/evocation,if=talent.siphon_storm&time<10&cooldown.arcane_surge.remains<5\nactions+=/time_warp,if=talent.temporal_warp&buff.exhaustion.up&(cooldown.arcane_surge.ready||fight_remains<=40||buff.arcane_surge.up&fight_remains<=80)\nactions+=/lights_judgment,if=buff.arcane_surge.down&buff.rune_of_power.down&debuff.touch_of_the_magi.down\nactions+=/bag_of_tricks,if=buff.arcane_surge.down&buff.rune_of_power.down&debuff.touch_of_the_magi.down\nactions+=/berserking,if=(prev_gcd.1.arcane_surge&!(buff.temporal_warp.up&buff.bloodlust.up))||(buff.arcane_surge.up&debuff.touch_of_the_magi.up)\nactions+=/blood_fury,if=prev_gcd.1.arcane_surge\nactions+=/fireblood,if=prev_gcd.1.arcane_surge\nactions+=/ancestral_call,if=prev_gcd.1.arcane_surge\n## Not supported by the addon; cannot control if another player grants Power Infusion.\n## actions+=/invoke_external_buff,name=power_infusion,if=!talent.radiant_spark&prev_gcd.1.arcane_surge\nactions+=/use_items,if=((prev_gcd.1.arcane_surge&!set_bonus.tier30_4pc)||(prev_gcd.2.arcane_surge&debuff.touch_of_the_magi.up&set_bonus.tier30_4pc))||(active_enemies>=variable.aoe_target_count&cooldown.arcane_surge.ready&prev_gcd.1.nether_tempest)\n## TODO: actions+=/use_item,name=tinker_breath_of_neltharion,if=cooldown.arcane_surge.remains&buff.rune_of_power.down&buff.arcane_surge.down&debuff.touch_of_the_magi.down\nactions+=/use_item,name=conjured_chillglobe,if=mana.pct>65&(!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20)\nactions+=/use_item,name=darkmoon_deck_rime,if=!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20\nactions+=/use_item,name=darkmoon_deck_dance,if=!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20\nactions+=/use_item,name=darkmoon_deck_inferno,if=!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20\nactions+=/use_item,name=desperate_invokers_codex,if=!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20\nactions+=/use_item,name=iceblood_deathsnare,if=!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20\n## actions+=/variable,name=aoe_spark_phase,op=set,value=1,if=active_enemies>=variable.aoe_target_count&(action.arcane_orb.charges>0||buff.arcane_charge.stack>=3)&(!talent.rune_of_power||cooldown.rune_of_power.ready)&cooldown.radiant_spark.ready&cooldown.touch_of_the_magi.remains<=(gcd.max*2)\n## actions+=/variable,name=aoe_spark_phase,op=set,value=0,if=variable.aoe_spark_phase&debuff.radiant_spark_vulnerability.down&dot.radiant_spark.remains<7&cooldown.radiant_spark.remains\n## actions+=/variable,name=spark_phase,op=set,value=1,if=buff.arcane_charge.stack>=3&active_enemies<variable.aoe_target_count&(!talent.rune_of_power||cooldown.rune_of_power.ready)&cooldown.radiant_spark.ready&cooldown.touch_of_the_magi.remains<=(gcd.max*7)&!set_bonus.tier30_4pc\n## actions+=/variable,name=spark_phase,op=set,value=0,if=variable.spark_phase&debuff.radiant_spark_vulnerability.down&dot.radiant_spark.remains<7&cooldown.radiant_spark.remains\n## actions+=/variable,name=rop_phase,op=set,value=1,if=talent.rune_of_power&!talent.radiant_spark&buff.arcane_charge.stack>=3&cooldown.rune_of_power.ready&active_enemies<variable.aoe_target_count\n## actions+=/variable,name=rop_phase,op=set,value=0,if=debuff.touch_of_the_magi.up||!talent.rune_of_power\n## actions+=/variable,name=opener,op=set,if=debuff.touch_of_the_magi.up&variable.opener,value=0\n## actions+=/cancel_action,if=action.evocation.channeling&mana.pct>=95&!talent.siphon_storm\n## actions+=/cancel_action,if=action.evocation.channeling&(mana.pct>fight_remains*4)&!(fight_remains>10&cooldown.arcane_surge.remains<1)\nactions+=/arcane_barrage,if=fight_remains<2\nactions+=/evocation,if=buff.rune_of_power.down&buff.arcane_surge.down&debuff.touch_of_the_magi.down&((mana.pct<10&((cooldown.touch_of_the_magi.remains<15&set_bonus.tier30_4pc)||cooldown.touch_of_the_magi.remains<25&!set_bonus.tier30_4pc))||((cooldown.touch_of_the_magi.remains<10&set_bonus.tier30_4pc)||cooldown.touch_of_the_magi.remains<20&!set_bonus.tier30_4pc))&mana.pct<fight_remains*4\nactions+=/conjure_mana_gem,if=buff.rune_of_power.down&debuff.touch_of_the_magi.down&buff.arcane_surge.down&cooldown.arcane_surge.remains<fight_remains&!mana_gem_charges&buff.arcane_overload.down\nactions+=/use_mana_gem,if=talent.cascading_power&buff.clearcasting.stack<2&buff.arcane_surge.up\nactions+=/use_mana_gem,line_cd=5,if=!talent.cascading_power&prev_gcd.1.arcane_surge\n## TODO: Revisit strict flag on these entries.\nactions+=/call_action_list,name=t30_burst_phase,strict=1,if=(cooldown.arcane_surge.remains<=gcd.max*2||buff.arcane_surge.up||buff.arcane_overload.up)&(!talent.siphon_storm||cooldown.evocation.remains>45)&((cooldown.touch_of_the_magi.remains<gcd.max*4)||cooldown.touch_of_the_magi.remains>20)&set_bonus.tier30_4pc&active_enemies<variable.aoe_target_count\nactions+=/call_action_list,name=t30_mini,strict=1,if=cooldown.arcane_surge.remains>30&(cooldown.radiant_spark.ready||dot.radiant_spark.remains||debuff.radiant_spark_vulnerability.up)&(cooldown.touch_of_the_magi.remains<=(gcd.max*3)||debuff.touch_of_the_magi.up)&set_bonus.tier30_4pc&active_enemies<variable.aoe_target_count\nactions+=/call_action_list,name=aoe_spark_phase,strict=1,if=talent.radiant_spark&variable.aoe_spark_phase\nactions+=/call_action_list,name=spark_phase,strict=1,if=talent.radiant_spark&variable.spark_phase\nactions+=/call_action_list,name=aoe_touch_phase,strict=1,if=debuff.touch_of_the_magi.up&active_enemies>=variable.aoe_target_count\nactions+=/call_action_list,name=touch_phase,strict=1,if=debuff.touch_of_the_magi.up&active_enemies<variable.aoe_target_count&!set_bonus.tier30_4pc\nactions+=/call_action_list,name=rop_phase,strict=1,if=variable.rop_phase\nactions+=/call_action_list,name=standard_cooldowns,strict=1,if=!talent.radiant_spark&(!talent.rune_of_power||active_enemies>=variable.aoe_target_count)\nactions+=/call_action_list,name=aoe_rotation,strict=1,if=active_enemies>=variable.aoe_target_count\nactions+=/call_action_list,name=t30_rotation,strict=1,if=set_bonus.tier30_4pc\nactions+=/call_action_list,name=rotation\n\nactions.aoe_rotation+=/arcane_orb,if=buff.arcane_charge.stack<2&cooldown.touch_of_the_magi.remains>18\nactions.aoe_rotation+=/shifting_power,if=(!talent.evocation||cooldown.evocation.remains>12)&(!talent.arcane_surge||cooldown.arcane_surge.remains>12)&(!talent.touch_of_the_magi||cooldown.touch_of_the_magi.remains>12)&buff.arcane_surge.down\nactions.aoe_rotation+=/ice_nova,if=buff.arcane_surge.down\nactions.aoe_rotation+=/nether_tempest,if=(refreshable||!ticking)&buff.arcane_charge.stack=buff.arcane_charge.max_stack&buff.arcane_surge.down\nactions.aoe_rotation+=/arcane_missiles,if=buff.clearcasting.react&talent.arcane_harmony&talent.rune_of_power&cooldown.rune_of_power.remains<(gcd.max*2)\nactions.aoe_rotation+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack||mana.pct<10\nactions.aoe_rotation+=/arcane_explosion\n\nactions.aoe_spark_phase=cancel_buff,name=presence_of_mind,if=prev_gcd.1.arcane_blast&cooldown.arcane_surge.remains>75\nactions.aoe_spark_phase+=/rune_of_power,if=cooldown.arcane_surge.remains<75&cooldown.arcane_surge.remains>30\nactions.aoe_spark_phase+=/radiant_spark\nactions.aoe_spark_phase+=/use_item,name=timebreaching_talon,if=cooldown.arcane_surge.remains<=(gcd.max*2)&(!variable.talon_dbluse||!buff.bloodlust.up)\nactions.aoe_spark_phase+=/arcane_explosion,if=buff.arcane_charge.stack>=3&prev_gcd.1.radiant_spark\nactions.aoe_spark_phase+=/arcane_orb,if=buff.arcane_charge.stack<3,line_cd=15\nactions.aoe_spark_phase+=/nether_tempest,if=talent.arcane_echo,line_cd=15\nactions.aoe_spark_phase+=/arcane_surge\n## actions.aoe_spark_phase+=/wait,sec=0.05,if=cooldown.arcane_surge.remains>75&prev_gcd.1.arcane_blast&!talent.presence_of_mind,line_cd=15\n## actions.aoe_spark_phase+=/wait,sec=0.05,if=prev_gcd.1.arcane_surge,line_cd=15\n## actions.aoe_spark_phase+=/wait,sec=0.05,if=cooldown.arcane_surge.remains<75&debuff.radiant_spark_vulnerability.stack=3&!talent.presence_of_mind,line_cd=15\nactions.aoe_spark_phase+=/arcane_barrage,if=cooldown.arcane_surge.remains<75&debuff.radiant_spark_vulnerability.stack=4\nactions.aoe_spark_phase+=/arcane_barrage,if=(debuff.radiant_spark_vulnerability.stack=2&cooldown.arcane_surge.remains>75)||(debuff.radiant_spark_vulnerability.stack=1&cooldown.arcane_surge.remains<75)\nactions.aoe_spark_phase+=/touch_of_the_magi,use_off_gcd=1,if=prev_gcd.1.arcane_barrage\nactions.aoe_spark_phase+=/presence_of_mind\nactions.aoe_spark_phase+=/arcane_blast,if=debuff.radiant_spark_vulnerability.stack=2||debuff.radiant_spark_vulnerability.stack=3\nactions.aoe_spark_phase+=/arcane_barrage,if=(debuff.radiant_spark_vulnerability.stack=4&buff.arcane_surge.up)||(debuff.radiant_spark_vulnerability.stack=3&buff.arcane_surge.down)\n\n## actions.aoe_touch_phase+=/variable,name=conserve_mana,op=set,if=debuff.touch_of_the_magi.remains>9,value=1-variable.conserve_mana\nactions.aoe_touch_phase+=/meteor\nactions.aoe_touch_phase+=/arcane_barrage,if=talent.arcane_bombardment&target.health.pct<35&debuff.touch_of_the_magi.remains<=gcd.max\nactions.aoe_touch_phase+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&active_enemies>=variable.aoe_target_count&cooldown.arcane_orb.remains<=execute_time\nactions.aoe_touch_phase+=/arcane_missiles,if=buff.clearcasting.react&(talent.arcane_echo&(talent.arcane_harmony||talent.orb_barrage)),chain=1\nactions.aoe_touch_phase+=/arcane_missiles,if=buff.clearcasting.stack>1&talent.conjure_mana_gem&cooldown.use_mana_gem.ready&(talent.arcane_echo&(talent.arcane_harmony||talent.orb_barrage)),chain=1\nactions.aoe_touch_phase+=/arcane_orb,if=buff.arcane_charge.stack<2\nactions.aoe_touch_phase+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.aoe_touch_phase+=/arcane_explosion\n\nactions.rop_phase=rune_of_power\nactions.rop_phase+=/arcane_blast,if=prev_gcd.1.rune_of_power\nactions.rop_phase+=/arcane_blast,if=prev_gcd.1.arcane_blast&prev_gcd.2.rune_of_power\nactions.rop_phase+=/arcane_blast,if=prev_gcd.1.arcane_blast&prev_gcd.3.rune_of_power\nactions.rop_phase+=/arcane_surge\nactions.rop_phase+=/arcane_blast,if=prev_gcd.1.arcane_blast&prev_gcd.4.rune_of_power\nactions.rop_phase+=/nether_tempest,if=talent.arcane_echo&active_dot.nether_tempest=0\nactions.rop_phase+=/meteor\nactions.rop_phase+=/arcane_barrage\nactions.rop_phase+=/touch_of_the_magi,use_off_gcd=1,if=prev_gcd.1.arcane_barrage\n\nactions.rotation+=/arcane_orb,if=buff.arcane_charge.stack<3&(buff.bloodlust.down||mana.pct>70||cooldown.touch_of_the_magi.remains>30)\nactions.rotation+=/shifting_power,if=(!talent.evocation||cooldown.evocation.remains>12)&(!talent.arcane_surge||cooldown.arcane_surge.remains>12)&(!talent.touch_of_the_magi||cooldown.touch_of_the_magi.remains>12)&buff.arcane_surge.down&fight_remains>15\nactions.rotation+=/presence_of_mind,if=buff.arcane_charge.stack<3&target.health.pct<35&talent.arcane_bombardment\nactions.rotation+=/arcane_blast,if=buff.presence_of_mind.up&target.health.pct<35&talent.arcane_bombardment&buff.arcane_charge.stack<3\nactions.rotation+=/arcane_missiles,if=buff.clearcasting.react&buff.clearcasting.stack=buff.clearcasting.max_stack\nactions.rotation+=/nether_tempest,if=(refreshable||!ticking)&buff.arcane_charge.stack=buff.arcane_charge.max_stack&(((buff.temporal_warp.up||mana.pct<10||!talent.shifting_power)&buff.arcane_surge.down)||equipped.neltharions_call_to_chaos)&fight_remains>=12\nactions.rotation+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&mana.pct<50&!talent.evocation&fight_remains>20\nactions.rotation+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&mana.pct<70&variable.conserve_mana&buff.bloodlust.up&cooldown.touch_of_the_magi.remains>5&fight_remains>20\nactions.rotation+=/arcane_missiles,if=buff.clearcasting.react&buff.concentration.up&buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.rotation+=/arcane_blast,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&buff.nether_precision.up\nactions.rotation+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&mana.pct<60&variable.conserve_mana&(!talent.rune_of_power||cooldown.rune_of_power.remains>5)&cooldown.touch_of_the_magi.remains>10&cooldown.evocation.remains>40&fight_remains>20\nactions.rotation+=/arcane_missiles,if=buff.clearcasting.react&buff.nether_precision.down,interrupt_if=gcd.remains=0&mana.pct>30&buff.nether_precision.up&!talent.arcane_harmony\nactions.rotation+=/arcane_blast\nactions.rotation+=/arcane_barrage\n\nactions.spark_phase+=/nether_tempest,if=!ticking&variable.opener&buff.bloodlust.up,line_cd=45\nactions.spark_phase+=/rune_of_power\nactions.spark_phase+=/arcane_blast,if=variable.opener&cooldown.arcane_surge.ready&buff.bloodlust.up&mana>=variable.opener_min_mana&buff.rune_of_power.remains>gcd.max*4\nactions.spark_phase+=/arcane_missiles,if=variable.opener&buff.bloodlust.up&buff.clearcasting.react&buff.clearcasting.stack>=2&cooldown.radiant_spark.remains<5&buff.nether_precision.down,chain=1\nactions.spark_phase+=/arcane_missiles,if=talent.arcane_harmony&buff.arcane_harmony.stack<15&((variable.opener&buff.bloodlust.up)||buff.clearcasting.react&cooldown.radiant_spark.remains<5)&cooldown.arcane_surge.remains<30,chain=1\nactions.spark_phase+=/radiant_spark\nactions.spark_phase+=/use_item,name=timebreaching_talon,if=cooldown.arcane_surge.remains<=(gcd.max*3)\n## actions.spark_phase+=/invoke_external_buff,name=power_infusion,if=prev_gcd.1.radiant_spark&cooldown.arcane_surge.remains<=(gcd.max*3)\nactions.spark_phase+=/nether_tempest,if=active_dot.nether_tempest=0&((prev_gcd.4.radiant_spark&cooldown.arcane_surge.remains<=execute_time)||prev_gcd.5.radiant_spark)\nactions.spark_phase+=/arcane_surge,if=(!talent.nether_tempest&prev_gcd.4.radiant_spark)||prev_gcd.1.nether_tempest\nactions.spark_phase+=/meteor,if=(talent.nether_tempest&prev_gcd.6.radiant_spark)||(!talent.nether_tempest&prev_gcd.5.radiant_spark)\nactions.spark_phase+=/arcane_blast,if=cast_time>=gcd&execute_time<debuff.radiant_spark_vulnerability.remains&(!talent.arcane_bombardment||target.health.pct>=35)&(talent.nether_tempest&prev_gcd.6.radiant_spark||!talent.nether_tempest&prev_gcd.5.radiant_spark)&!talent.meteor\n## actions.spark_phase+=/wait,sec=0.05,if=!talent.meteor&(talent.nether_tempest&prev_gcd.6.radiant_spark)||(!talent.nether_tempest&prev_gcd.5.radiant_spark),line_cd=15\nactions.spark_phase+=/arcane_barrage,if=debuff.radiant_spark_vulnerability.stack=4\nactions.spark_phase+=/touch_of_the_magi,use_off_gcd=1,if=prev_gcd.1.arcane_barrage&(action.arcane_barrage.in_flight_remains<=0.2||gcd.remains<=0.2)\nactions.spark_phase+=/arcane_blast\nactions.spark_phase+=/arcane_barrage\n\nactions.standard_cooldowns+=/arcane_surge,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.standard_cooldowns+=/nether_tempest,line_cd=5,if=prev_gcd.1.arcane_surge&talent.arcane_echo\nactions.standard_cooldowns+=/meteor,if=buff.arcane_surge.up&cooldown.touch_of_the_magi.ready\nactions.standard_cooldowns+=/arcane_barrage,if=buff.arcane_surge.up&cooldown.touch_of_the_magi.ready\nactions.standard_cooldowns+=/rune_of_power,if=cooldown.touch_of_the_magi.remains<=(gcd.max*2)&buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.standard_cooldowns+=/meteor,if=cooldown.touch_of_the_magi.remains<=(gcd.max*2)&buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.standard_cooldowns+=/touch_of_the_magi,use_off_gcd=1,if=prev_gcd.1.arcane_barrage\n\nactions.t30_burst_phase+=/touch_of_the_magi,use_off_gcd=1,if=prev_gcd.1.arcane_barrage\n## actions.t30_burst_phase+=/variable,name=conserve_mana,op=set,value=1\nactions.t30_burst_phase+=/arcane_orb,if=!debuff.radiant_spark_vulnerability.up&cooldown.radiant_spark.ready&buff.arcane_charge.stack<buff.arcane_charge.max_stack\nactions.t30_burst_phase+=/arcane_blast,if=!debuff.radiant_spark_vulnerability.up&cooldown.radiant_spark.ready&(buff.arcane_charge.stack<2||(buff.arcane_charge.stack<buff.arcane_charge.max_stack&cooldown.arcane_orb.remains>=gcd.max))\nactions.t30_burst_phase+=/arcane_missiles,if=buff.clearcasting.react&!debuff.radiant_spark_vulnerability.up&cooldown.radiant_spark.ready&(buff.nether_precision.down||buff.nether_precision.remains<gcd.max)\nactions.t30_burst_phase+=/radiant_spark,if=cooldown.arcane_surge.remains<=gcd.max*2\nactions.t30_burst_phase+=/arcane_orb,if=prev_gcd.1.radiant_spark&buff.arcane_charge.stack<buff.arcane_charge.max_stack\nactions.t30_burst_phase+=/nether_tempest,if=cooldown.arcane_surge.remains<=gcd.max,line_cd=45\nactions.t30_burst_phase+=/arcane_surge,if=((!talent.nether_tempest&prev_gcd.2.radiant_spark)||prev_gcd.1.nether_tempest)\nactions.t30_burst_phase+=/use_item,name=timebreaching_talon,if=prev_gcd.1.arcane_surge&(!variable.talon_dbluse||!buff.bloodlust.up)\nactions.t30_burst_phase+=/rune_of_power,if=buff.rune_of_power.down&debuff.touch_of_the_magi.down&cooldown.arcane_surge.remains>22\n## actions.t30_burst_phase+=/wait,sec=0.05,if=prev_gcd.1.arcane_surge,line_cd=15\nactions.t30_burst_phase+=/arcane_barrage,if=prev_gcd.1.arcane_surge\nactions.t30_burst_phase+=/meteor,if=debuff.radiant_spark_vulnerability.stack=3\nactions.t30_burst_phase+=/arcane_blast,if=(debuff.radiant_spark_vulnerability.stack>0&debuff.radiant_spark_vulnerability.stack<4)||(cast_time<gcd&debuff.radiant_spark_vulnerability.stack=4)\nactions.t30_burst_phase+=/presence_of_mind,if=debuff.touch_of_the_magi.remains<=gcd.max\nactions.t30_burst_phase+=/arcane_blast,if=buff.presence_of_mind.up&buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.t30_burst_phase+=/arcane_missiles,if=buff.nether_precision.down&buff.clearcasting.react,interrupt_if=gcd.remains=0&mana.pct>30&buff.nether_precision.up\nactions.t30_burst_phase+=/arcane_blast\n\n## actions.t30_mini+=/variable,name=conserve_mana,op=set,if=debuff.touch_of_the_magi.remains>9,value=1-variable.conserve_mana\nactions.t30_mini+=/radiant_spark\nactions.t30_mini+=/nether_tempest,if=active_dot.nether_tempest=0&(prev_gcd.1.radiant_spark||prev_gcd.1.shifting_power)\nactions.t30_mini+=/meteor,if=debuff.radiant_spark_vulnerability.stack=0\nactions.t30_mini+=/arcane_barrage,line_cd=5,if=prev_gcd.1.meteor||(prev_gcd.1.nether_tempest&(prev_gcd.2.radiant_spark||prev_gcd.3.radiant_spark))\nactions.t30_mini+=/touch_of_the_magi,use_off_gcd=1,if=prev_gcd.1.arcane_barrage&(action.arcane_barrage.in_flight_remains<=0.2||gcd.remains<=0.2)\nactions.t30_mini+=/arcane_blast,if=((debuff.radiant_spark_vulnerability.stack>0&debuff.radiant_spark_vulnerability.stack<4)||(cast_time<gcd&debuff.radiant_spark_vulnerability.stack=4))||buff.nether_precision.up\nactions.t30_mini+=/presence_of_mind,if=(debuff.touch_of_the_magi.remains<=gcd.max||buff.rune_of_power.remains<=gcd.max)\nactions.t30_mini+=/arcane_missiles,if=buff.clearcasting.react&(debuff.touch_of_the_magi.remains>execute_time||!talent.presence_of_mind),chain=1,interrupt_if=gcd.remains=0&mana.pct>30&buff.nether_precision.up\nactions.t30_mini+=/arcane_blast\nactions.t30_mini+=/arcane_barrage\n\nactions.t30_rotation+=/arcane_orb,if=buff.arcane_charge.stack<3&(buff.bloodlust.down||mana.pct>70)\nactions.t30_rotation+=/shifting_power,if=buff.arcane_surge.down&cooldown.arcane_surge.remains>45&set_bonus.tier30_4pc\nactions.t30_rotation+=/rune_of_power\nactions.t30_rotation+=/presence_of_mind,if=buff.arcane_charge.stack<3&target.health.pct<35&talent.arcane_bombardment\nactions.t30_rotation+=/arcane_blast,if=buff.presence_of_mind.up&target.health.pct<35&talent.arcane_bombardment&buff.arcane_charge.stack<3\nactions.t30_rotation+=/arcane_missiles,if=buff.clearcasting.react&buff.clearcasting.stack=buff.clearcasting.max_stack\nactions.t30_rotation+=/nether_tempest,if=(refreshable||!ticking)&buff.arcane_charge.stack=buff.arcane_charge.max_stack&(((buff.temporal_warp.up||mana.pct<10||!talent.shifting_power)&buff.arcane_surge.down)||equipped.neltharions_call_to_chaos)&fight_remains>=12\nactions.t30_rotation+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&mana.pct<50&!talent.evocation&fight_remains>20\nactions.t30_rotation+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&mana.pct<70&variable.conserve_mana&buff.bloodlust.up&cooldown.touch_of_the_magi.remains>5&fight_remains>20\nactions.t30_rotation+=/arcane_missiles,if=buff.clearcasting.react&buff.concentration.up&buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.t30_rotation+=/arcane_blast,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&buff.nether_precision.up\nactions.t30_rotation+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&mana.pct<60&variable.conserve_mana&(!talent.rune_of_power||cooldown.rune_of_power.remains>5)&cooldown.touch_of_the_magi.remains>10&cooldown.evocation.remains>40&fight_remains>20\nactions.t30_rotation+=/arcane_missiles,if=buff.clearcasting.react&buff.nether_precision.down,interrupt_if=gcd.remains=0&buff.nether_precision.up&(mana.pct>30&cooldown.rune_of_power.remains>30||mana.pct>70)\nactions.t30_rotation+=/arcane_blast\nactions.t30_rotation+=/arcane_barrage\n\n## actions.touch_phase+=/variable,name=conserve_mana,op=set,if=debuff.touch_of_the_magi.remains>9,value=1-variable.conserve_mana\nactions.touch_phase+=/meteor\nactions.touch_phase+=/presence_of_mind,if=(debuff.touch_of_the_magi.remains<=gcd.max||buff.rune_of_power.remains<=gcd.max)\nactions.touch_phase+=/arcane_blast,if=buff.presence_of_mind.up&buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.touch_phase+=/arcane_barrage,if=(buff.arcane_harmony.up||(talent.arcane_bombardment&target.health.pct<35))&debuff.touch_of_the_magi.remains<=gcd.max\nactions.touch_phase+=/arcane_missiles,if=buff.clearcasting.stack>1&talent.conjure_mana_gem&cooldown.use_mana_gem.ready,chain=1\nactions.touch_phase+=/arcane_blast,if=buff.nether_precision.up\nactions.touch_phase+=/arcane_missiles,if=buff.clearcasting.react&(debuff.touch_of_the_magi.remains>execute_time||!talent.presence_of_mind),chain=1,interrupt_if=gcd.remains=0&mana.pct>30&buff.nether_precision.up\nactions.touch_phase+=/arcane_blast\nactions.touch_phase+=/arcane_barrage",
				},
			},
		},
		["Default"] = {
			["runOnce"] = {
				["forceReloadClassDefaultOptions_20220306_252"] = true,
				["forceReloadClassDefaultOptions_20220306_71"] = true,
				["forceReloadClassDefaultOptions_20220306_254"] = true,
				["forceReloadClassDefaultOptions_20220306_577"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
				["forceReloadClassDefaultOptions_20220306_255"] = true,
				["forceReloadClassDefaultOptions_20220306_259"] = true,
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceReloadClassDefaultOptions_20220306_250"] = true,
				["forceReloadClassDefaultOptions_20220306_268"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["forceReloadClassDefaultOptions_20220306_270"] = true,
				["forceReloadClassDefaultOptions_20220306_73"] = true,
				["forceReloadClassDefaultOptions_20220306_72"] = true,
				["forceReloadClassDefaultOptions_20220306_581"] = true,
				["forceReloadClassDefaultOptions_20220306_261"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["forceReloadClassDefaultOptions_20220306_251"] = true,
				["forceReloadClassDefaultOptions_20220306_269"] = true,
				["forceReloadClassDefaultOptions_20220306_253"] = true,
				["forceReloadClassDefaultOptions_20220306_260"] = true,
				["forceSpellFlashBrightness_20221030"] = true,
			},
			["specs"] = {
				[255] = {
					["settings"] = {
						["allow_focus_overcap"] = false,
						["use_harpoon"] = true,
						["manual_kill_shot"] = false,
					},
				},
				[270] = {
					["settings"] = {
						["roll_movement"] = 5,
						["save_faeline"] = false,
					},
				},
				[252] = {
					["settings"] = {
						["dps_shell"] = false,
					},
				},
				[72] = {
					["package"] = "Fury",
					["settings"] = {
						["check_ww_range"] = false,
						["shockwave_interrupt"] = true,
						["t30_bloodthirst_crit"] = 95,
						["heroic_charge"] = false,
					},
				},
				[577] = {
					["settings"] = {
						["retreat_and_return"] = "off",
						["retreat_filler"] = false,
						["demon_blades_acknowledged"] = false,
						["throw_glaive_charges"] = 0,
						["fel_rush_filler"] = true,
						["fel_rush_charges"] = 0,
					},
				},
				[259] = {
					["settings"] = {
						["solo_vanish"] = true,
						["mfd_points"] = 3,
						["priority_rotation"] = false,
						["envenom_pool_pct"] = 50,
					},
				},
				[71] = {
					["settings"] = {
						["shockwave_interrupt"] = true,
						["heroic_charge"] = false,
					},
				},
				[250] = {
					["settings"] = {
						["ibf_damage"] = 40,
						["vb_damage"] = 50,
						["rt_damage"] = 30,
						["save_blood_shield"] = true,
					},
				},
				[254] = {
					["settings"] = {
						["prevent_hardcasts"] = false,
					},
				},
				[260] = {
					["settings"] = {
						["mfd_points"] = 3,
						["use_ld_opener"] = false,
						["no_rtb_in_dance_cto"] = true,
						["ambush_anyway"] = false,
						["solo_vanish"] = true,
						["allow_shadowmeld"] = false,
					},
				},
				[268] = {
					["settings"] = {
						["purify_stagger_maxhp"] = 6,
						["purify_for_celestial"] = true,
						["purify_for_niuzao"] = true,
						["bof_percent"] = 50,
						["eh_percent"] = 65,
						["purify_stagger_currhp"] = 12,
					},
				},
				[73] = {
					["settings"] = {
						["shield_wall_amount"] = 50,
						["rallying_cry_amount"] = 50,
						["overlap_ignore_pain"] = false,
						["last_stand_condition"] = false,
						["shockwave_interrupt"] = true,
						["shield_wall_health"] = 50,
						["rallying_cry_condition"] = false,
						["last_stand_offensively"] = false,
						["stack_shield_block"] = false,
						["stance_weaving"] = false,
						["shield_wall_condition"] = false,
						["last_stand_amount"] = 50,
						["last_stand_health"] = 50,
						["rallying_cry_health"] = 50,
						["reserve_rage"] = 35,
					},
				},
				[581] = {
					["settings"] = {
						["infernal_charges"] = 1,
						["frailty_stacks"] = 1,
					},
				},
				[261] = {
					["settings"] = {
						["solo_vanish"] = true,
						["mfd_points"] = 3,
						["priority_rotation"] = false,
					},
				},
				[269] = {
					["settings"] = {
						["sef_one_charge"] = false,
						["tok_damage"] = 1,
						["check_wdp_range"] = false,
						["allow_fsk"] = false,
						["use_diffuse"] = false,
						["check_sck_range"] = false,
					},
				},
				[251] = {
					["settings"] = {
						["bos_rp"] = 50,
						["ams_usage"] = "damage",
					},
				},
				[253] = {
					["settings"] = {
						["avoid_bw_overlap"] = false,
						["check_pet_range"] = false,
						["barbed_shot_grace_period"] = 0.5,
					},
				},
			},
			["displays"] = {
				["Interrupts"] = {
					["rel"] = "CENTER",
					["x"] = -55.00000381469727,
				},
				["Cooldowns"] = {
					["rel"] = "CENTER",
					["y"] = -280.0000305175781,
				},
				["Primary"] = {
					["rel"] = "CENTER",
					["x"] = 176.592529296875,
					["y"] = -235.6667022705078,
				},
				["AOE"] = {
					["rel"] = "CENTER",
					["x"] = 176.0008544921875,
					["y"] = -180.0740356445313,
				},
				["Defensives"] = {
					["rel"] = "CENTER",
					["x"] = -110.0000076293945,
				},
			},
			["packs"] = {
				["Windwalker"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/dragonflight/profiles/PreRaids/PR_Monk_Windwalker.simc",
					["builtIn"] = true,
					["date"] = 20230528,
					["spec"] = 269,
					["desc"] = "2023-05-28:  Minor updates.\n\n2023-05-24:  SCK, RSK, and FoF usage update.\n\n2023-05-17:  Minor trinket, Skyreach, and ST priority revisions.\n\n2023-05-02:  Update for 10.1.\n\n2023-04-17:  Translate and reimplement Fists of Fury usage/cancellation during Serenity.\n\n2023-04-15:  Update from SimulationCraft.\n\n2023-03-25:  Adjust Touch of Death.\n\n2023-02-21:   Revise to ensure Fists of Fury is only broken when Serenity is active.\n\n2023-02-20:  Major changes to align with latest SimulationCraft priority.\n\n2023-03-08:  Revise Manic Grieftorch usage; added requirement that target is expected to live longer than the cast time to reduce risk of partial cast.",
					["lists"] = {
						["opener"] = {
							{
								["enabled"] = true,
								["description"] = "Opener",
								["action"] = "summon_white_tiger_statue",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled & chi.max - chi >= 3",
								["action"] = "expel_harm",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & chi.max - chi >= ( 2 + buff.power_strikes.up )",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled & chi = 3",
								["action"] = "expel_harm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi = 2",
								["action"] = "chi_wave",
							}, -- [5]
							{
								["action"] = "expel_harm",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi > 1 & chi.max - chi >= 2",
								["action"] = "chi_burst",
							}, -- [7]
						},
						["serenity_trinkets"] = {
							{
								["enabled"] = true,
								["description"] = "Serenity Trinkets",
								["criteria"] = "pet.xuen_the_white_tiger.active || ! talent.invoke_xuen_the_white_tiger.enabled & buff.storm_earth_and_fire.up || boss & fight_remains < 30",
								["action"] = "horn_of_valor",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( boss || target.time_to_die > 1 + cast_time ) & ( trinket.t1.is.manic_grieftorch & ! trinket.t2.has_use_buff || trinket.t2.is.manic_grieftorch & ! trinket.t1.has_use_buff )",
								["action"] = "manic_grieftorch",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( pet.xuen_the_white_tiger.active || ! talent.invoke_xuen_the_white_tiger.enabled ) & ! buff.storm_earth_and_fire.up || boss & fight_remains < 25",
								["action"] = "algethar_puzzle_box",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "trinket.t1.has_use_buff & ! ( trinket.t1.is.horn_of_valor || trinket.t1.is.manic_grieftorch || trinket.t1.is.algethar_puzzle_box ) & buff.serenity.remains > 10 || boss & fight_remains < 30",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! trinket.t1.has_use_buff & ! ( trinket.t1.is.horn_of_valor || trinket.t1.is.manic_grieftorch || trinket.t1.is.algethar_puzzle_box ) & ( cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || ! talent.invoke_xuen_the_white_tiger.enabled ) || boss & fight_remains < 30",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "trinket.t2.has_use_buff & ! ( trinket.t2.is.horn_of_valor || trinket.t2.is.manic_grieftorch || trinket.t2.is.algethar_puzzle_box ) & buff.serenity.remains > 10 || boss & fight_remains < 30",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! trinket.t2.has_use_buff & ! ( trinket.t2.is.horn_of_valor || trinket.t2.is.manic_grieftorch || trinket.t2.is.algethar_puzzle_box ) & ( cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || ! talent.invoke_xuen_the_white_tiger.enabled ) || boss & fight_remains < 30",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || ! talent.invoke_xuen_the_white_tiger.enabled",
								["action"] = "use_items",
							}, -- [8]
						},
						["cleave"] = {
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
								["description"] = "3 Targets",
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3 & talent.shadowboxing_treads.enabled",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
							}, -- [3]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & buff.pressure_point.up & set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & combo_strike",
								["action"] = "spinning_crane_kick",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bonedust_brew.up & buff.pressure_point.up",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 2",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["action"] = "strike_of_the_windlord",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.up & ( talent.shadowboxing_treads.enabled || cooldown.rising_sun_kick.remains > 1 )",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & cooldown.fists_of_fury.remains < 3 & buff.chi_energy.stack > 15",
								["action"] = "spinning_crane_kick",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fists_of_fury.remains > 4 & chi > 3",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & cooldown.rising_sun_kick.remains & cooldown.fists_of_fury.remains & chi > 4 & ( talent.storm_earth_and_fire.enabled & ! talent.bonedust_brew.enabled || talent.serenity.enabled )",
								["action"] = "spinning_crane_kick",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & cooldown.fists_of_fury.remains",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & talent.shadowboxing_treads.enabled & ! spinning_crane_kick.max",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "( combo_strike & chi > 5 & talent.storm_earth_and_fire.enabled || combo_strike & chi > 4 & talent.serenity.enabled )",
								["action"] = "spinning_crane_kick",
							}, -- [20]
						},
						["serenity"] = {
							{
								["enabled"] = true,
								["description"] = "Serenity Priority",
								["criteria"] = "buff.serenity.remains < 1",
								["action"] = "fists_of_fury",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ! spinning_crane_kick.max & active_enemies > 4 & talent.shdaowboxing_treads.enabled",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.teachings_of_the_monastery.stack = 3 & buff.teachings_of_the_monastery.remains < 1",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 4 & buff.pressure_point.up & ! talent.bonedust_brew.enabled",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies <= 3 & buff.pressure_point.up",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.pressure_point.up & set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.invokers_delight.up & active_enemies < 3 & talent.jade_ignition.enabled",
								["action"] = "fists_of_fury",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up",
								["action"] = "fists_of_fury",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.invokers_delight.up & active_enemies > 4",
								["action"] = "fists_of_fury",
							}, -- [11]
							{
								["enabled"] = true,
								["interrupt_if"] = "buff.serenity.up&(buff.invokers_delight.up&(active_enemies<3&talent.jade_ignition||active_enemies>4)||buff.bloodlust.up||active_enemies=2)",
								["action"] = "fists_of_fury",
								["criteria"] = "active_enemies = 2",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up & active_enemies >= 2",
								["action"] = "spinning_crane_kick",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 4 & buff.pressure_point.up",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 6 & combo_strike & set_bonus.tier30_2pc",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & active_enemies >= 3 & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & active_enemies > 1 & active_enemies < 4 & buff.teachings_of_the_monastery.stack = 2",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up & active_enemies >= 5",
								["action"] = "rushing_jade_wind",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "talent.shadowboxing_treads.enabled & active_enemies >= 3 & combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( active_enemies > 3 || active_enemies > 2 & spinning_crane_kick.modifier >= 2.3 )",
								["action"] = "spinning_crane_kick",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "strike_of_the_windlord",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 2 & cooldown.fists_of_fury.remains > 5",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 2 & cooldown.fists_of_fury.remains > 5 & talent.shadowboxing_treads.enabled & buff.teachings_of_the_monastery.stack = 1 & combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & active_enemies > 1",
								["action"] = "spinning_crane_kick",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "whirling_dragon_punch",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up & active_enemies >= 3",
								["action"] = "rushing_jade_wind",
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [30]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "talent.teachings_of_the_monastery.enabled & buff.teachings_of_the_monastery.stack < 3",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [32]
						},
						["cd_serenity"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Serenity Cooldowns",
								["list_name"] = "serenity_trinkets",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! cooldown.invoke_xuen_the_white_tiger.remains || active_enemies > 4 || cooldown.invoke_xuen_the_white_tiger.remains > 50 || boss & fight_remains <= 30",
								["action"] = "summon_white_tiger_statue",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! variable.hold_xuen & talent.bonedust_brew.enabled & cooldown.bonedust_brew.remains <= 5 & target.time_to_die > 25 || boss & fight_remains < 25",
								["action"] = "invoke_xuen",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! variable.hold_xuen & ! talent.bonedust_brew.enabled & ( cooldown.rising_sun_kick.remains < 2 ) & target.time_to_die > 25 || boss & fight_remains < 25",
								["action"] = "invoke_xuen",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bonedust_brew.up & ( cooldown.serenity.up || cooldown.serenity.remains > 15 || boss & fight_remains < 30 & fight_remains > 10 ) || boss & fight_remains < 10",
								["action"] = "bonedust_brew",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "pet.xuen_the_white_tiger.active || ! talent.invoke_xuen_the_white_tiger.enabled || boss & fight_remains < 15",
								["action"] = "serenity",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ! buff.serenity.up & ( target.health.current < health || buff.hidden_masters_forbidden_touch.up & ( buff.hidden_masters_forbidden_touch.remains < 2 || buff.hidden_masters_forbidden_touch.remains > target.time_to_die ) || target.time_to_die > 60 || debuff.bonedust_brew_debuff.up || boss & fight_remains < 10 )",
								["action"] = "touch_of_death",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 90 || boss & fight_remains < 10",
								["action"] = "touch_of_karma",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || boss & fight_remains < 20",
								["action"] = "blood_fury",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || boss & fight_remains < 20",
								["action"] = "berserking",
							}, -- [10]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || boss & fight_remains < 20",
								["action"] = "fireblood",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || boss & fight_remains < 20",
								["action"] = "ancestral_call",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || boss & fight_remains < 20",
								["action"] = "bag_of_tricks",
							}, -- [14]
						},
						["st"] = {
							{
								["enabled"] = true,
								["description"] = "1 Target",
								["criteria"] = "! buff.pressure_point.up & ! cooldown.rising_sun_kick.remains",
								["action"] = "fists_of_fury",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.pressure_point.up",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.kicks_of_flowing_momentum.up || buff.pressure_point.up",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "rising_sun_kick",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 2",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["action"] = "strike_of_the_windlord",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.up & cooldown.rising_sun_kick.remains > 1",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [15]
						},
						["st_cleave"] = {
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
								["description"] = "2 Targets",
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3 & talent.shadowboxing_treads.enabled",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
							}, -- [2]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.kicks_of_flowing_momentum.up || buff.pressure_point.up",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 2",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [7]
							{
								["action"] = "strike_of_the_windlord",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.up & ( talent.shadowboxing_treads.enabled || cooldown.rising_sun_kick.remains > 1 )",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.shadowboxing_treads.enabled & cooldown.fists_of_fury.remains > 4 & talent.xuens_battlegear.enabled",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & cooldown.rising_sun_kick.remains & cooldown.fists_of_fury.remains & ( ! buff.bonedust_brew.up || spinning_crane_kick.modifier < 1.5 )",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & combo_strike & spinning_crane_kick.modifier >= 2.7",
								["action"] = "spinning_crane_kick",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( combo_strike & chi > 5 & talent.storm_earth_and_fire.enabled || combo_strike & chi > 4 & talent.serenity.enabled )",
								["action"] = "spinning_crane_kick",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
								["description"] = "ST Priority (<3 Targets)",
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3 & talent.shadowboxing_treads.enabled",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & buff.kicks_of_flowing_momentum.up || buff.pressure_point.up",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 2 & talent.shadowboxing_treads.enabled",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["action"] = "strike_of_the_windlord",
								["enabled"] = true,
							}, -- [24]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.up & ( talent.shadowboxing_treads.enabled & active_enemies > 1 || cooldown.rising_sun_kick.remains > 1 )",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 2",
								["action"] = "whirling_dragon_punch",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies = 1 || ! talent.shadowboxing_treads.enabled ) & cooldown.fists_of_fury.remains > 4 & talent.xuens_battlegear.enabled",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & active_enemies = 2 & cooldown.rising_sun_kick.remains & cooldown.fists_of_fury.remains & ( ! buff.bonedust_brew.up || spinning_crane_kick.modifier < 1.5 )",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up & active_enemies = 2",
								["action"] = "rushing_jade_wind",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & combo_strike & ( active_enemies > 1 || spinning_crane_kick.modifier >= 2.7 )",
								["action"] = "spinning_crane_kick",
							}, -- [32]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [33]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [34]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [35]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [36]
						},
						["cd_sef"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Storm, Earth and Fire Cooldowns",
								["list_name"] = "sef_trinkets",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "pet.xuen_the_white_tiger.active",
								["action"] = "summon_white_tiger_statue",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! variable.hold_xuen & fight_remains > 25 & talent.bonedust_brew.enabled & cooldown.bonedust_brew.remains <= 5 & ( active_enemies < 3 & chi >= 3 || active_enemies >= 3 & chi >= 2 ) || boss & fight_remains < 25",
								["action"] = "invoke_xuen",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! variable.hold_xuen & fight_remains > 25 & ! talent.bonedust_brew.enabled & ( cooldown.rising_sun_kick.remains < 2 ) & chi >= 3",
								["action"] = "invoke_xuen",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.bonedust_brew.enabled & ( fight_remains < 30 & cooldown.bonedust_brew.remains < 4 & chi >= 4 || buff.bonedust_brew.up || ! spinning_crane_kick.max & active_enemies >= 3 & cooldown.bonedust_brew.remains <= 2 & chi >= 2 ) & ( pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > cooldown.storm_earth_and_fire.full_recharge_time )",
								["action"] = "storm_earth_and_fire",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ! buff.bonedust_brew.up & buff.storm_earth_and_fire.up & buff.storm_earth_and_fire.remains < 11 & spinning_crane_kick.max ) || ( ! buff.bonedust_brew.up & fight_remains < 30 & fight_remains > 10 & spinning_crane_kick.max & chi >= 4 ) || fight_remains < 10 || ( ! debuff.skyreach_exhaustion.up & active_enemies >= 4 & spinning_crane_kick.modifier >= 2 ) || ( pet.xuen_the_white_tiger.active & spinning_crane_kick.max & active_enemies >= 4 )",
								["action"] = "bonedust_brew",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "! buff.bonedust_brew.up & talent.bonedust_brew.enabled & cooldown.bonedust_brew.remains <= 2 & ( fight_remains > 60 & ( cooldown.storm_earth_and_fire.charges > 0 || cooldown.storm_earth_and_fire.remains > 10 ) & ( pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > 10 || variable.hold_xuen ) || ( ( pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > 13 ) & ( cooldown.storm_earth_and_fire.charges > 0 || cooldown.storm_earth_and_fire.remains > 13 || buff.storm_earth_and_fire.up ) ) )",
								["list_name"] = "bdb_setup",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "boss & fight_remains < 20 || ( cooldown.storm_earth_and_fire.charges = 2 & cooldown.invoke_xuen_the_white_tiger.remains > cooldown.storm_earth_and_fire.full_recharge_time ) & cooldown.fists_of_fury.remains <= 9 & chi >= 2 & cooldown.whirling_dragon_punch.remains <= 12",
								["action"] = "storm_earth_and_fire",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.bonedust_brew.enabled & ( pet.xuen_the_white_tiger.active || fight_remains > 15 & cooldown.storm_earth_and_fire.full_recharge_time < cooldown.invoke_xuen_the_white_tiger.remains )",
								["action"] = "storm_earth_and_fire",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "touch_of_death",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 90 || pet.xuen_the_white_tiger.active || variable.hold_xuen || boss & fight_remains < 16",
								["action"] = "touch_of_karma",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 159 || variable.hold_xuen",
								["action"] = "touch_of_karma",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 20",
								["action"] = "blood_fury",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 15",
								["action"] = "berserking",
							}, -- [14]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 10",
								["action"] = "fireblood",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 20",
								["action"] = "ancestral_call",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.storm_earth_and_fire.down",
								["action"] = "bag_of_tricks",
							}, -- [18]
						},
						["sef_trinkets"] = {
							{
								["enabled"] = true,
								["description"] = "SEF Trinkets",
								["criteria"] = "pet.xuen_the_white_tiger.active || ! talent.invoke_xuen_the_white_tiger.enabled & buff.storm_earth_and_fire.up || boss & fight_remains < 30",
								["action"] = "horn_of_valor",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( boss || target.time_to_die > 1 + cast_time ) & ( trinket.t1.is.manic_grieftorch & ! trinket.t2.has_use_buff || trinket.t2.is.manic_grieftorch & ! trinket.t1.has_use_buff )",
								["action"] = "manic_grieftorch",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( pet.xuen_the_white_tiger.active || ! talent.invoke_xuen_the_white_tiger.enabled ) & ! buff.storm_earth_and_fire.up || boss & fight_remains < 25",
								["action"] = "algethar_puzzle_box",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "trinket.t1.has_use_buff & ! ( trinket.t1.is.horn_of_valor || trinket.t1.is.manic_grieftorch || trinket.t1.is.algethar_puzzle_box ) & ( cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || action_cooldown <= 60 & buff.storm_earth_and_fire.remains > 10 || ! talent.invoke_xuen_the_white_tiger.enabled ) || boss & fight_remains < 30",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! trinket.t1.has_use_buff & ! ( trinket.t1.is.horn_of_valor || trinket.t1.is.manic_grieftorch || trinket.t1.is.algethar_puzzle_box ) & ( cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || ! talent.invoke_xuen_the_white_tiger.enabled ) || boss & fight_remains < 30",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "trinket.t2.has_use_buff & ! ( trinket.t2.is.horn_of_valor || trinket.t2.is.manic_grieftorch || trinket.t2.is.algethar_puzzle_box ) & ( cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || action_cooldown <= 60 & buff.storm_earth_and_fire.remains > 10 || ! talent.invoke_xuen_the_white_tiger.enabled ) || boss & fight_remains < 30",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! trinket.t2.has_use_buff & ! ( trinket.t2.is.horn_of_valor || trinket.t2.is.manic_grieftorch || trinket.t2.is.algethar_puzzle_box ) & ( cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || ! talent.invoke_xuen_the_white_tiger.enabled ) || boss & fight_remains < 30",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [7]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "spear_hand_strike",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.invoke_xuen_the_white_tiger.enabled || cooldown.invoke_xuen_the_white_tiger.remains > fight_remains || fight_remains - cooldown.invoke_xuen_the_white_tiger.remains < 120 & ( ( talent.serenity.enabled & fight_remains > cooldown.serenity.remains & cooldown.serenity.remains > 10 ) || ( cooldown.storm_earth_and_fire.full_recharge_time < fight_remains & cooldown.storm_earth_and_fire.full_recharge_time > 15 ) || ( cooldown.storm_earth_and_fire.charges = 0 & cooldown.storm_earth_and_fire.remains < fight_remains ) )",
								["var_name"] = "hold_xuen",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Potion",
								["criteria"] = "( buff.serenity.up || buff.storm_earth_and_fire.up ) & ( ! talent.xuen_the_white_tiger.enabled || pet.xuen_the_white_tiger.active ) || boss & fight_remains <= 60",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Build Chi at the start of combat",
								["criteria"] = "time < 4 & chi < 5 & ! pet.xuen_the_white_tiger.active & ! talent.serenity.enabled",
								["list_name"] = "opener",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Use Trinkets (SEF)",
								["strict"] = 1,
								["criteria"] = "! talent.serenity.enabled",
								["list_name"] = "sef_trinkets",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.serenity.enabled",
								["list_name"] = "serenity_trinkets",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "faeline_stomp",
								["cycle_targets"] = 1,
								["description"] = "Prioritize Faeline Stomp if playing with Faeline Harmony",
								["criteria"] = "combo_strike & talent.faeline_harmony.enabled & debuff.fae_exposure_damage.remains < 1",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
								["description"] = "TP if not overcapping Chi or TotM",
								["criteria"] = "! buff.serenity.up & buff.teachings_of_the_monastery.stack < 3 & combo_strike & chi.max - chi >= ( 2 + buff.power_strikes.up ) & ( ! talent.invoke_xuen_the_white_tiger.enabled & ! talent.serenity.enabled || ( ! talent.skyreach.enabled || time > 5 || pet.xuen_the_white_tiger.active ) )",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
								["description"] = "TP during serenity to activate skyreach",
								["criteria"] = "active_enemies = 1 & buff.serenity.up & pet.xuen_the_white_tiger.active & ! debuff.skyreach_exhaustion.up & combo_strike",
							}, -- [9]
							{
								["enabled"] = true,
								["description"] = "Use Chi Burst to reset Faeline Stomp",
								["criteria"] = "talent.faeline_stomp.enabled & cooldown.faeline_stomp.remains & ( chi.max - chi >= 1 & active_enemies = 1 || chi.max - chi >= 2 & active_enemies >= 2 ) & ! talent.faeline_harmony.enabled",
								["action"] = "chi_burst",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Use Cooldowns",
								["strict"] = 1,
								["criteria"] = "! talent.serenity.enabled",
								["list_name"] = "cd_sef",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.serenity.enabled",
								["list_name"] = "cd_serenity",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Serenity / Default Priority",
								["strict"] = 1,
								["criteria"] = "buff.serenity.up",
								["list_name"] = "serenity",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 4",
								["list_name"] = "heavy_aoe",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies = 4",
								["list_name"] = "aoe",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies = 3",
								["list_name"] = "cleave",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies = 2",
								["list_name"] = "st_cleave",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies = 1",
								["list_name"] = "st",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "fallthru",
							}, -- [19]
						},
						["precombat"] = {
							{
								["action"] = "summon_white_tiger_statue",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "chi < chi.max",
								["action"] = "expel_harm",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.faeline_stomp.enabled",
								["action"] = "chi_burst",
							}, -- [3]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [4]
						},
						["heavy_aoe"] = {
							{
								["enabled"] = true,
								["description"] = ">4 Targets",
								["criteria"] = "combo_strike & buff.dance_of_chiji.up & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 8",
								["action"] = "whirling_dragon_punch",
							}, -- [3]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & combo_strike & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & buff.pressure_point.up & set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3 & talent.shadowboxing_treads.enabled",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 5",
								["action"] = "whirling_dragon_punch",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.pressure_point.up & set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.whirling_dragon_punch.enabled & cooldown.whirling_dragon_punch.remains < 3 & cooldown.fists_of_fury.remains > 3 & ! buff.kicks_of_flowing_momentum.up",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & cooldown.fists_of_fury.remains < 5 & buff.chi_energy.stack > 10",
								["action"] = "spinning_crane_kick",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( cooldown.fists_of_fury.remains > 3 || chi > 2 ) & spinning_crane_kick.max & buff.bloodlust.up",
								["action"] = "spinning_crane_kick",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( cooldown.fists_of_fury.remains > 3 || chi > 2 ) & spinning_crane_kick.max & buff.invokers_delight.up",
								["action"] = "spinning_crane_kick",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.shadowboxing_treads.enabled & combo_strike & set_bonus.tier30_2pc & ! buff.bonedust_brew.up & active_enemies < 15 & ! talent.crane_vortex.enabled",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.shadowboxing_treads.enabled & combo_strike & set_bonus.tier30_2pc & ! buff.bonedust_brew.up & active_enemies < 8",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( cooldown.fists_of_fury.remains > 3 || chi > 4 ) & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [19]
							{
								["action"] = "strike_of_the_windlord",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "talent.shadowboxing_treads.enabled & combo_strike & ! spinning_crane_kick.max",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & active_enemies = 1 & raid_event.adds.in > 20 || chi.max - chi >= 2",
								["action"] = "chi_burst",
							}, -- [22]
						},
						["fallthru"] = {
							{
								["enabled"] = true,
								["description"] = "Fallthru",
								["criteria"] = "buff.the_emperors_capacitor.stack > 19 & energy.time_to_max > execute_time - 1 & cooldown.rising_sun_kick.remains > execute_time || buff.the_emperors_capacitor.stack > 14 & ( cooldown.serenity.remains < 5 & talent.serenity.enabled || boss & fight_remains < 5 )",
								["action"] = "crackling_jade_lightning",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "faeline_stomp",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & chi.max - chi >= ( 2 + buff.power_strikes.up )",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & active_enemies > 2",
								["action"] = "expel_harm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & active_enemies = 1 & raid_event.adds.in > 20 || chi.max - chi >= 2 & active_enemies >= 2",
								["action"] = "chi_burst",
							}, -- [5]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "expel_harm",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & active_enemies >= 5",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.chi_energy.stack > 30 - 5 * active_enemies & buff.storm_earth_and_fire.down & ( cooldown.rising_sun_kick.remains > 2 & cooldown.fists_of_fury.remains > 2 || cooldown.rising_sun_kick.remains < 3 & cooldown.fists_of_fury.remains > 3 & chi > 3 || cooldown.rising_sun_kick.remains > 3 & cooldown.fists_of_fury.remains < 3 & chi > 4 || chi.max - chi <= 1 & energy.time_to_max < 2 ) || buff.chi_energy.stack > 10 & fight_remains < 7",
								["action"] = "spinning_crane_kick",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "arcane_torrent",
							}, -- [10]
							{
								["interrupt"] = "1",
								["action"] = "flying_serpent_kick",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "tiger_palm",
								["enabled"] = true,
							}, -- [12]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["description"] = "4 Targets",
								["criteria"] = "combo_strike & buff.dance_of_chiji.up & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
							}, -- [2]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & buff.pressure_point.up & set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & combo_strike & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bonedust_brew.up & buff.pressure_point.up & cooldown.fists_of_fury.remains > 5",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3 & talent.shadowboxing_treads.enabled",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & cooldown.fists_of_fury.remains > 3 & buff.chi_energy.stack > 10",
								["action"] = "spinning_crane_kick",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & set_bonus.tier30_2pc",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( cooldown.fists_of_fury.remains > 3 || chi > 4 ) & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
							}, -- [11]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [14]
							{
								["action"] = "strike_of_the_windlord",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( cooldown.fists_of_fury.remains > 3 || chi > 4 )",
								["action"] = "spinning_crane_kick",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [17]
						},
						["bdb_setup"] = {
							{
								["enabled"] = true,
								["description"] = "Bonedust Brew Setup",
								["criteria"] = "talent.thunderfist.enabled & active_enemies > 3",
								["action"] = "strike_of_the_windlord",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spinning_crane_kick.max & chi >= 4",
								["action"] = "bonedust_brew",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & chi.max - chi >= 2 & buff.storm_earth_and_fire.up",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ! talent.whirling_dragon_punch.enabled & ! spinning_crane_kick.max",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & chi >= 5 & talent.whirling_dragon_punch.enabled",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & active_enemies >= 2 & talent.whirling_dragon_punch.enabled",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [6]
						},
					},
					["version"] = 20230528,
					["warnings"] = "The import for 'serenity_trinkets' required some automated changes.\nLine 1: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 2: Converted 'trinket.1.is.manic_grieftorch' to 'trinket.t1.is.manic_grieftorch' (1x).\nLine 2: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 2: Converted 'trinket.2.is.manic_grieftorch' to 'trinket.t2.is.manic_grieftorch' (1x).\nLine 2: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 4: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.is.horn_of_valor' to 'trinket.t1.is.horn_of_valor' (1x).\nLine 4: Converted 'trinket.1.is.manic_grieftorch' to 'trinket.t1.is.manic_grieftorch' (1x).\nLine 4: Converted 'trinket.1.is.algethar_puzzle_box' to 'trinket.t1.is.algethar_puzzle_box' (1x).\nLine 5: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.is.horn_of_valor' to 'trinket.t1.is.horn_of_valor' (1x).\nLine 5: Converted 'trinket.1.is.manic_grieftorch' to 'trinket.t1.is.manic_grieftorch' (1x).\nLine 5: Converted 'trinket.1.is.algethar_puzzle_box' to 'trinket.t1.is.algethar_puzzle_box' (1x).\nLine 5: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 5: Converted operations in '!trinket.t1.has_use_buff&!(trinket.t1.is.horn_of_valor||trinket.t1.is.manic_grieftorch||trinket.t1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30' to '!trinket.t1.has_use_buff&!(trinket.t1.is.horn_of_valor||trinket.t1.is.manic_grieftorch||trinket.t1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30'.\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.is.horn_of_valor' to 'trinket.t2.is.horn_of_valor' (1x).\nLine 6: Converted 'trinket.2.is.manic_grieftorch' to 'trinket.t2.is.manic_grieftorch' (1x).\nLine 6: Converted 'trinket.2.is.algethar_puzzle_box' to 'trinket.t2.is.algethar_puzzle_box' (1x).\nLine 7: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 7: Converted 'trinket.2.is.horn_of_valor' to 'trinket.t2.is.horn_of_valor' (1x).\nLine 7: Converted 'trinket.2.is.manic_grieftorch' to 'trinket.t2.is.manic_grieftorch' (1x).\nLine 7: Converted 'trinket.2.is.algethar_puzzle_box' to 'trinket.t2.is.algethar_puzzle_box' (1x).\nLine 7: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 7: Converted operations in '!trinket.t2.has_use_buff&!(trinket.t2.is.horn_of_valor||trinket.t2.is.manic_grieftorch||trinket.t2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30' to '!trinket.t2.has_use_buff&!(trinket.t2.is.horn_of_valor||trinket.t2.is.manic_grieftorch||trinket.t2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30'.\nLine 8: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 8: Converted operations in 'cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled' to 'cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled'.\n\nThe import for 'cleave' required some automated changes.\nLine 1: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 3: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 11: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 16: Converted 'talent.storm_earth_and_fire' to 'talent.storm_earth_and_fire.enabled' (1x).\nLine 16: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 16: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 19: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 20: Converted 'talent.storm_earth_and_fire' to 'talent.storm_earth_and_fire.enabled' (1x).\nLine 20: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\n\nThe import for 'serenity' required some automated changes.\nLine 2: Converted 'talent.shdaowboxing_treads' to 'talent.shdaowboxing_treads.enabled' (1x).\nLine 4: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 9: Converted 'talent.jade_ignition' to 'talent.jade_ignition.enabled' (1x).\nLine 13: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 20: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 24: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 32: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\n\nThe import for 'cd_serenity' required some automated changes.\nLine 3: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 4: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 6: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\n\nThe import for 'st' required some automated changes.\nLine 3: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\n\nThe import for 'heavy_aoe' required some automated changes.\nLine 2: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 7: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 11: Converted 'talent.whirling_dragon_punch' to 'talent.whirling_dragon_punch.enabled' (1x).\nLine 15: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 15: Converted 'talent.crane_vortex' to 'talent.crane_vortex.enabled' (1x).\nLine 16: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 21: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\n\nThe import for 'cd_sef' required some automated changes.\nLine 3: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 4: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 5: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 7: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 9: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\n\nThe import for 'sef_trinkets' required some automated changes.\nLine 1: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 2: Converted 'trinket.1.is.manic_grieftorch' to 'trinket.t1.is.manic_grieftorch' (1x).\nLine 2: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 2: Converted 'trinket.2.is.manic_grieftorch' to 'trinket.t2.is.manic_grieftorch' (1x).\nLine 2: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 4: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.is.horn_of_valor' to 'trinket.t1.is.horn_of_valor' (1x).\nLine 4: Converted 'trinket.1.is.manic_grieftorch' to 'trinket.t1.is.manic_grieftorch' (1x).\nLine 4: Converted 'trinket.1.is.algethar_puzzle_box' to 'trinket.t1.is.algethar_puzzle_box' (1x).\nLine 4: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 4: Converted operations in 'trinket.t1.has_use_buff&!(trinket.t1.is.horn_of_valor||trinket.t1.is.manic_grieftorch||trinket.t1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||action_cooldown<=60&buff.storm_earth_and_fire.remains>10||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30' to 'trinket.t1.has_use_buff&!(trinket.t1.is.horn_of_valor||trinket.t1.is.manic_grieftorch||trinket.t1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||action_cooldown<=60&buff.storm_earth_and_fire.remains>10||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30'.\nLine 5: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.is.horn_of_valor' to 'trinket.t1.is.horn_of_valor' (1x).\nLine 5: Converted 'trinket.1.is.manic_grieftorch' to 'trinket.t1.is.manic_grieftorch' (1x).\nLine 5: Converted 'trinket.1.is.algethar_puzzle_box' to 'trinket.t1.is.algethar_puzzle_box' (1x).\nLine 5: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 5: Converted operations in '!trinket.t1.has_use_buff&!(trinket.t1.is.horn_of_valor||trinket.t1.is.manic_grieftorch||trinket.t1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30' to '!trinket.t1.has_use_buff&!(trinket.t1.is.horn_of_valor||trinket.t1.is.manic_grieftorch||trinket.t1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30'.\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.is.horn_of_valor' to 'trinket.t2.is.horn_of_valor' (1x).\nLine 6: Converted 'trinket.2.is.manic_grieftorch' to 'trinket.t2.is.manic_grieftorch' (1x).\nLine 6: Converted 'trinket.2.is.algethar_puzzle_box' to 'trinket.t2.is.algethar_puzzle_box' (1x).\nLine 6: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 6: Converted operations in 'trinket.t2.has_use_buff&!(trinket.t2.is.horn_of_valor||trinket.t2.is.manic_grieftorch||trinket.t2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||action_cooldown<=60&buff.storm_earth_and_fire.remains>10||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30' to 'trinket.t2.has_use_buff&!(trinket.t2.is.horn_of_valor||trinket.t2.is.manic_grieftorch||trinket.t2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||action_cooldown<=60&buff.storm_earth_and_fire.remains>10||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30'.\nLine 7: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 7: Converted 'trinket.2.is.horn_of_valor' to 'trinket.t2.is.horn_of_valor' (1x).\nLine 7: Converted 'trinket.2.is.manic_grieftorch' to 'trinket.t2.is.manic_grieftorch' (1x).\nLine 7: Converted 'trinket.2.is.algethar_puzzle_box' to 'trinket.t2.is.algethar_puzzle_box' (1x).\nLine 7: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 7: Converted operations in '!trinket.t2.has_use_buff&!(trinket.t2.is.horn_of_valor||trinket.t2.is.manic_grieftorch||trinket.t2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30' to '!trinket.t2.has_use_buff&!(trinket.t2.is.horn_of_valor||trinket.t2.is.manic_grieftorch||trinket.t2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30'.\n\nThe import for 'st_cleave' required some automated changes.\nLine 1: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 2: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 9: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 12: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 12: Converted 'talent.xuens_battlegear' to 'talent.xuens_battlegear.enabled' (1x).\nLine 18: Converted 'talent.storm_earth_and_fire' to 'talent.storm_earth_and_fire.enabled' (1x).\nLine 18: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 19: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 21: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 23: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 26: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 29: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 29: Converted 'talent.xuens_battlegear' to 'talent.xuens_battlegear.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 3: Converted 'talent.faeline_stomp' to 'talent.faeline_stomp.enabled' (1x).\n\nThe import for 'aoe' required some automated changes.\nLine 2: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 7: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\n\nThe import for 'fallthru' required some automated changes.\nLine 1: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 2: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 2: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 3: Converted 'talent.xuen_the_white_tiger' to 'talent.xuen_the_white_tiger.enabled' (1x).\nLine 4: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 5: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 6: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 7: Converted 'talent.faeline_harmony' to 'talent.faeline_harmony.enabled' (1x).\nLine 8: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 8: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 8: Converted 'talent.skyreach' to 'talent.skyreach.enabled' (1x).\nLine 10: Converted 'talent.faeline_stomp' to 'talent.faeline_stomp.enabled' (1x).\nLine 10: Converted 'talent.faeline_harmony' to 'talent.faeline_harmony.enabled' (1x).\nLine 11: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 12: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\n\nThe import for 'bdb_setup' required some automated changes.\nLine 1: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 4: Converted 'talent.whirling_dragon_punch' to 'talent.whirling_dragon_punch.enabled' (1x).\nLine 5: Converted 'talent.whirling_dragon_punch' to 'talent.whirling_dragon_punch.enabled' (1x).\nLine 6: Converted 'talent.whirling_dragon_punch' to 'talent.whirling_dragon_punch.enabled' (1x).\n\nImported 15 action lists.\n",
					["author"] = "SimC",
					["profile"] = "actions.precombat+=/summon_white_tiger_statue\nactions.precombat+=/expel_harm,if=chi<chi.max\nactions.precombat+=/chi_burst,if=!talent.faeline_stomp\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=spear_hand_strike\nactions+=/variable,name=hold_xuen,op=set,value=!talent.invoke_xuen_the_white_tiger||cooldown.invoke_xuen_the_white_tiger.remains>fight_remains||fight_remains-cooldown.invoke_xuen_the_white_tiger.remains<120&((talent.serenity&fight_remains>cooldown.serenity.remains&cooldown.serenity.remains>10)||(cooldown.storm_earth_and_fire.full_recharge_time<fight_remains&cooldown.storm_earth_and_fire.full_recharge_time>15)||(cooldown.storm_earth_and_fire.charges=0&cooldown.storm_earth_and_fire.remains<fight_remains))\n# Potion\nactions+=/potion,if=(buff.serenity.up||buff.storm_earth_and_fire.up)&(!talent.xuen_the_white_tiger||pet.xuen_the_white_tiger.active)||boss&fight_remains<=60\n# Build Chi at the start of combat\nactions+=/call_action_list,name=opener,if=time<4&chi<5&!pet.xuen_the_white_tiger.active&!talent.serenity\n# Use Trinkets (SEF)\nactions+=/call_action_list,name=sef_trinkets,strict=1,if=!talent.serenity\nactions+=/call_action_list,name=serenity_trinkets,strict=1,if=talent.serenity\n# Prioritize Faeline Stomp if playing with Faeline Harmony\nactions+=/faeline_stomp,cycle_targets=1,if=combo_strike&talent.faeline_harmony&debuff.fae_exposure_damage.remains<1\n# TP if not overcapping Chi or TotM\nactions+=/tiger_palm,cycle_targets=1,if=!buff.serenity.up&buff.teachings_of_the_monastery.stack<3&combo_strike&chi.max-chi>=(2+buff.power_strikes.up)&(!talent.invoke_xuen_the_white_tiger&!talent.serenity||(!talent.skyreach||time>5||pet.xuen_the_white_tiger.active))\n# TP during serenity to activate skyreach\nactions+=/tiger_palm,cycle_targets=1,if=active_enemies=1&buff.serenity.up&pet.xuen_the_white_tiger.active&!debuff.skyreach_exhaustion.up&combo_strike\n# Use Chi Burst to reset Faeline Stomp\nactions+=/chi_burst,if=talent.faeline_stomp&cooldown.faeline_stomp.remains&(chi.max-chi>=1&active_enemies=1||chi.max-chi>=2&active_enemies>=2)&!talent.faeline_harmony\n# Use Cooldowns\nactions+=/call_action_list,name=cd_sef,strict=1,if=!talent.serenity\nactions+=/call_action_list,name=cd_serenity,strict=1,if=talent.serenity\n# Serenity / Default Priority\nactions+=/call_action_list,name=serenity,strict=1,if=buff.serenity.up\nactions+=/call_action_list,name=heavy_aoe,strict=1,if=active_enemies>4\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies=4\nactions+=/call_action_list,name=cleave,strict=1,if=active_enemies=3\nactions+=/call_action_list,name=st_cleave,strict=1,if=active_enemies=2\nactions+=/call_action_list,name=st,strict=1,if=active_enemies=1\nactions+=/call_action_list,name=fallthru\n\n# >4 Targets\nactions.heavy_aoe+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up&spinning_crane_kick.max\nactions.heavy_aoe+=/strike_of_the_windlord,if=talent.thunderfist\nactions.heavy_aoe+=/whirling_dragon_punch,if=active_enemies>8\nactions.heavy_aoe+=/fists_of_fury\nactions.heavy_aoe+=/spinning_crane_kick,if=buff.bonedust_brew.up&combo_strike&spinning_crane_kick.max\nactions.heavy_aoe+=/rising_sun_kick,cycle_targets=1,if=buff.bonedust_brew.up&buff.pressure_point.up&set_bonus.tier30_2pc\nactions.heavy_aoe+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3&talent.shadowboxing_treads\nactions.heavy_aoe+=/whirling_dragon_punch,if=active_enemies>=5\nactions.heavy_aoe+=/rising_sun_kick,cycle_targets=1,if=buff.pressure_point.up&set_bonus.tier30_2pc\nactions.heavy_aoe+=/rising_sun_kick,cycle_targets=1,if=set_bonus.tier30_2pc\nactions.heavy_aoe+=/rising_sun_kick,cycle_targets=1,if=talent.whirling_dragon_punch&cooldown.whirling_dragon_punch.remains<3&cooldown.fists_of_fury.remains>3&!buff.kicks_of_flowing_momentum.up\nactions.heavy_aoe+=/spinning_crane_kick,if=combo_strike&cooldown.fists_of_fury.remains<5&buff.chi_energy.stack>10\nactions.heavy_aoe+=/spinning_crane_kick,if=combo_strike&(cooldown.fists_of_fury.remains>3||chi>2)&spinning_crane_kick.max&buff.bloodlust.up\nactions.heavy_aoe+=/spinning_crane_kick,if=combo_strike&(cooldown.fists_of_fury.remains>3||chi>2)&spinning_crane_kick.max&buff.invokers_delight.up\nactions.heavy_aoe+=/blackout_kick,cycle_targets=1,if=talent.shadowboxing_treads&combo_strike&set_bonus.tier30_2pc&!buff.bonedust_brew.up&active_enemies<15&!talent.crane_vortex\nactions.heavy_aoe+=/blackout_kick,cycle_targets=1,if=talent.shadowboxing_treads&combo_strike&set_bonus.tier30_2pc&!buff.bonedust_brew.up&active_enemies<8\nactions.heavy_aoe+=/spinning_crane_kick,if=combo_strike&(cooldown.fists_of_fury.remains>3||chi>4)&spinning_crane_kick.max\nactions.heavy_aoe+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.heavy_aoe+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3\nactions.heavy_aoe+=/strike_of_the_windlord\nactions.heavy_aoe+=/blackout_kick,cycle_targets=1,if=talent.shadowboxing_treads&combo_strike&!spinning_crane_kick.max\nactions.heavy_aoe+=/chi_burst,if=chi.max-chi>=1&active_enemies=1&raid_event.adds.in>20||chi.max-chi>=2\n\n# 4 Targets\nactions.aoe+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up&spinning_crane_kick.max\nactions.aoe+=/strike_of_the_windlord,if=talent.thunderfist\nactions.aoe+=/fists_of_fury\nactions.aoe+=/rising_sun_kick,cycle_targets=1,if=buff.bonedust_brew.up&buff.pressure_point.up&set_bonus.tier30_2pc\nactions.aoe+=/spinning_crane_kick,if=buff.bonedust_brew.up&combo_strike&spinning_crane_kick.max\nactions.aoe+=/rising_sun_kick,cycle_targets=1,if=!buff.bonedust_brew.up&buff.pressure_point.up&cooldown.fists_of_fury.remains>5\nactions.aoe+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3&talent.shadowboxing_treads\nactions.aoe+=/rising_sun_kick,cycle_targets=1,if=set_bonus.tier30_2pc\nactions.aoe+=/spinning_crane_kick,if=combo_strike&cooldown.fists_of_fury.remains>3&buff.chi_energy.stack>10\nactions.aoe+=/blackout_kick,cycle_targets=1,if=combo_strike&set_bonus.tier30_2pc\nactions.aoe+=/spinning_crane_kick,if=combo_strike&(cooldown.fists_of_fury.remains>3||chi>4)&spinning_crane_kick.max\nactions.aoe+=/whirling_dragon_punch\nactions.aoe+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3\nactions.aoe+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.aoe+=/strike_of_the_windlord\nactions.aoe+=/spinning_crane_kick,if=combo_strike&(cooldown.fists_of_fury.remains>3||chi>4)\nactions.aoe+=/blackout_kick,cycle_targets=1,if=combo_strike\n\n# 3 Targets\nactions.cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3&talent.shadowboxing_treads\nactions.cleave+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.cleave+=/strike_of_the_windlord,if=talent.thunderfist\nactions.cleave+=/fists_of_fury\nactions.cleave+=/rising_sun_kick,cycle_targets=1,if=buff.bonedust_brew.up&buff.pressure_point.up&set_bonus.tier30_2pc\nactions.cleave+=/spinning_crane_kick,if=buff.bonedust_brew.up&combo_strike\nactions.cleave+=/rising_sun_kick,cycle_targets=1,if=!buff.bonedust_brew.up&buff.pressure_point.up\nactions.cleave+=/rising_sun_kick,cycle_targets=1,if=set_bonus.tier30_2pc\nactions.cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=2\nactions.cleave+=/strike_of_the_windlord\nactions.cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.up&(talent.shadowboxing_treads||cooldown.rising_sun_kick.remains>1)\nactions.cleave+=/whirling_dragon_punch\nactions.cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3\nactions.cleave+=/spinning_crane_kick,if=combo_strike&cooldown.fists_of_fury.remains<3&buff.chi_energy.stack>15\nactions.cleave+=/rising_sun_kick,cycle_targets=1,if=cooldown.fists_of_fury.remains>4&chi>3\nactions.cleave+=/spinning_crane_kick,if=combo_strike&cooldown.rising_sun_kick.remains&cooldown.fists_of_fury.remains&chi>4&(talent.storm_earth_and_fire&!talent.bonedust_brew||talent.serenity)\nactions.cleave+=/blackout_kick,cycle_targets=1,if=combo_strike&cooldown.fists_of_fury.remains\nactions.cleave+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.cleave+=/blackout_kick,cycle_targets=1,if=combo_strike&talent.shadowboxing_treads&!spinning_crane_kick.max\nactions.cleave+=/spinning_crane_kick,if=(combo_strike&chi>5&talent.storm_earth_and_fire||combo_strike&chi>4&talent.serenity)\n\n# 2 Targets\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3&talent.shadowboxing_treads\nactions.st_cleave+=/strike_of_the_windlord,if=talent.thunderfist\nactions.st_cleave+=/fists_of_fury\nactions.st_cleave+=/rising_sun_kick,cycle_targets=1,if=set_bonus.tier30_2pc\nactions.st_cleave+=/rising_sun_kick,cycle_targets=1,if=buff.kicks_of_flowing_momentum.up||buff.pressure_point.up\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=2\nactions.st_cleave+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.st_cleave+=/strike_of_the_windlord\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.up&(talent.shadowboxing_treads||cooldown.rising_sun_kick.remains>1)\nactions.st_cleave+=/whirling_dragon_punch\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3\nactions.st_cleave+=/rising_sun_kick,cycle_targets=1,if=!talent.shadowboxing_treads&cooldown.fists_of_fury.remains>4&talent.xuens_battlegear\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=combo_strike&cooldown.rising_sun_kick.remains&cooldown.fists_of_fury.remains&(!buff.bonedust_brew.up||spinning_crane_kick.modifier<1.5)\nactions.st_cleave+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.st_cleave+=/spinning_crane_kick,if=buff.bonedust_brew.up&combo_strike&spinning_crane_kick.modifier>=2.7\nactions.st_cleave+=/rising_sun_kick,cycle_targets=1\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=combo_strike\nactions.st_cleave+=/spinning_crane_kick,if=(combo_strike&chi>5&talent.storm_earth_and_fire||combo_strike&chi>4&talent.serenity)\n\n# 1 Target\nactions.st+=/fists_of_fury,if=!buff.pressure_point.up&!cooldown.rising_sun_kick.remains\nactions.st+=/rising_sun_kick,cycle_targets=1,if=buff.pressure_point.up\nactions.st+=/strike_of_the_windlord,if=talent.thunderfist\nactions.st+=/rising_sun_kick,cycle_targets=1,if=buff.kicks_of_flowing_momentum.up||buff.pressure_point.up\nactions.st+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3\nactions.st+=/fists_of_fury\nactions.st+=/rising_sun_kick\nactions.st+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=2\nactions.st+=/strike_of_the_windlord\nactions.st+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.st+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.up&cooldown.rising_sun_kick.remains>1\nactions.st+=/rising_sun_kick,cycle_targets=1\nactions.st+=/whirling_dragon_punch\nactions.st+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.st+=/blackout_kick,cycle_targets=1,if=combo_strike\n\n# Bonedust Brew Setup\nactions.bdb_setup+=/strike_of_the_windlord,if=talent.thunderfist&active_enemies>3\nactions.bdb_setup+=/bonedust_brew,if=spinning_crane_kick.max&chi>=4\nactions.bdb_setup+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=2&buff.storm_earth_and_fire.up\nactions.bdb_setup+=/blackout_kick,cycle_targets=1,if=combo_strike&!talent.whirling_dragon_punch&!spinning_crane_kick.max\nactions.bdb_setup+=/rising_sun_kick,cycle_targets=1,if=combo_strike&chi>=5&talent.whirling_dragon_punch\nactions.bdb_setup+=/rising_sun_kick,cycle_targets=1,if=combo_strike&active_enemies>=2&talent.whirling_dragon_punch\n\n# Storm, Earth and Fire Cooldowns\nactions.cd_sef+=/call_action_list,name=sef_trinkets\nactions.cd_sef+=/summon_white_tiger_statue,if=pet.xuen_the_white_tiger.active\nactions.cd_sef+=/invoke_xuen_the_white_tiger,if=!variable.hold_xuen&fight_remains>25&talent.bonedust_brew&cooldown.bonedust_brew.remains<=5&(active_enemies<3&chi>=3||active_enemies>=3&chi>=2)||boss&fight_remains<25\nactions.cd_sef+=/invoke_xuen_the_white_tiger,if=!variable.hold_xuen&fight_remains>25&!talent.bonedust_brew&(cooldown.rising_sun_kick.remains<2)&chi>=3\nactions.cd_sef+=/storm_earth_and_fire,if=talent.bonedust_brew&(fight_remains<30&cooldown.bonedust_brew.remains<4&chi>=4||buff.bonedust_brew.up||!spinning_crane_kick.max&active_enemies>=3&cooldown.bonedust_brew.remains<=2&chi>=2)&(pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>cooldown.storm_earth_and_fire.full_recharge_time)\nactions.cd_sef+=/bonedust_brew,if=(!buff.bonedust_brew.up&buff.storm_earth_and_fire.up&buff.storm_earth_and_fire.remains<11&spinning_crane_kick.max)||(!buff.bonedust_brew.up&fight_remains<30&fight_remains>10&spinning_crane_kick.max&chi>=4)||fight_remains<10||(!debuff.skyreach_exhaustion.up&active_enemies>=4&spinning_crane_kick.modifier>=2)||(pet.xuen_the_white_tiger.active&spinning_crane_kick.max&active_enemies>=4)\nactions.cd_sef+=/call_action_list,name=bdb_setup,if=!buff.bonedust_brew.up&talent.bonedust_brew&cooldown.bonedust_brew.remains<=2&(fight_remains>60&(cooldown.storm_earth_and_fire.charges>0||cooldown.storm_earth_and_fire.remains>10)&(pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>10||variable.hold_xuen)||((pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>13)&(cooldown.storm_earth_and_fire.charges>0||cooldown.storm_earth_and_fire.remains>13||buff.storm_earth_and_fire.up)))\nactions.cd_sef+=/storm_earth_and_fire,if=boss&fight_remains<20||(cooldown.storm_earth_and_fire.charges=2&cooldown.invoke_xuen_the_white_tiger.remains>cooldown.storm_earth_and_fire.full_recharge_time)&cooldown.fists_of_fury.remains<=9&chi>=2&cooldown.whirling_dragon_punch.remains<=12\nactions.cd_sef+=/storm_earth_and_fire,if=!talent.bonedust_brew&(pet.xuen_the_white_tiger.active||fight_remains>15&cooldown.storm_earth_and_fire.full_recharge_time<cooldown.invoke_xuen_the_white_tiger.remains)\n## actions.cd_sef+=/touch_of_death,cycle_targets=1,if=!boss&combo_strike&target.health<health\n## actions.cd_sef+=/touch_of_death,cycle_targets=1,if=!boss&combo_strike&(target.time_to_die>60||debuff.bonedust_brew_debuff.up||fight_remains<10)\nactions.cd_sef+=/touch_of_death,cycle_targets=1,if=combo_strike\nactions.cd_sef+=/touch_of_karma,cycle_targets=1,if=fight_remains>90||pet.xuen_the_white_tiger.active||variable.hold_xuen||boss&fight_remains<16\nactions.cd_sef+=/touch_of_karma,if=fight_remains>159||variable.hold_xuen\nactions.cd_sef+=/blood_fury,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<20\nactions.cd_sef+=/berserking,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<15\nactions.cd_sef+=/lights_judgment\nactions.cd_sef+=/fireblood,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<10\nactions.cd_sef+=/ancestral_call,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<20\nactions.cd_sef+=/bag_of_tricks,if=buff.storm_earth_and_fire.down\n\n# Serenity Cooldowns\nactions.cd_serenity+=/call_action_list,name=serenity_trinkets\nactions.cd_serenity+=/summon_white_tiger_statue,if=!cooldown.invoke_xuen_the_white_tiger.remains||active_enemies>4||cooldown.invoke_xuen_the_white_tiger.remains>50||boss&fight_remains<=30\nactions.cd_serenity+=/invoke_xuen_the_white_tiger,if=!variable.hold_xuen&talent.bonedust_brew&cooldown.bonedust_brew.remains<=5&target.time_to_die>25||boss&fight_remains<25\nactions.cd_serenity+=/invoke_xuen_the_white_tiger,if=!variable.hold_xuen&!talent.bonedust_brew&(cooldown.rising_sun_kick.remains<2)&target.time_to_die>25||boss&fight_remains<25\nactions.cd_serenity+=/bonedust_brew,if=!buff.bonedust_brew.up&(cooldown.serenity.up||cooldown.serenity.remains>15||boss&fight_remains<30&fight_remains>10)||boss&fight_remains<10\nactions.cd_serenity+=/serenity,if=pet.xuen_the_white_tiger.active||!talent.invoke_xuen_the_white_tiger||boss&fight_remains<15\n## actions.cd_serenity+=/touch_of_death,cycle_targets=1,if=!boss&combo_strike&target.health<health\n## actions.cd_serenity+=/touch_of_death,cycle_targets=1,if=!boss&combo_strike&(target.time_to_die>60||debuff.bonedust_brew_debuff.up||fight_remains<10)\nactions.cd_serenity+=/touch_of_death,cycle_targets=1,if=combo_strike&!buff.serenity.up&(target.health.current<health||buff.hidden_masters_forbidden_touch.up&(buff.hidden_masters_forbidden_touch.remains<2||buff.hidden_masters_forbidden_touch.remains>target.time_to_die)||target.time_to_die>60||debuff.bonedust_brew_debuff.up||boss&fight_remains<10)\nactions.cd_serenity+=/touch_of_karma,if=fight_remains>90||boss&fight_remains<10\nactions.cd_serenity+=/blood_fury,if=buff.serenity.up||boss&fight_remains<20\nactions.cd_serenity+=/berserking,if=buff.serenity.up||boss&fight_remains<20\nactions.cd_serenity+=/lights_judgment\nactions.cd_serenity+=/fireblood,if=buff.serenity.up||boss&fight_remains<20\nactions.cd_serenity+=/ancestral_call,if=buff.serenity.up||boss&fight_remains<20\nactions.cd_serenity+=/bag_of_tricks,if=buff.serenity.up||boss&fight_remains<20\n\n# Fallthru\nactions.fallthru+=/crackling_jade_lightning,if=buff.the_emperors_capacitor.stack>19&energy.time_to_max>execute_time-1&cooldown.rising_sun_kick.remains>execute_time||buff.the_emperors_capacitor.stack>14&(cooldown.serenity.remains<5&talent.serenity||boss&fight_remains<5)\nactions.fallthru+=/faeline_stomp,if=combo_strike\nactions.fallthru+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=(2+buff.power_strikes.up)\nactions.fallthru+=/expel_harm,if=chi.max-chi>=1&active_enemies>2\nactions.fallthru+=/chi_burst,if=chi.max-chi>=1&active_enemies=1&raid_event.adds.in>20||chi.max-chi>=2&active_enemies>=2\nactions.fallthru+=/chi_wave\nactions.fallthru+=/expel_harm,if=chi.max-chi>=1\nactions.fallthru+=/blackout_kick,cycle_targets=1,if=combo_strike&active_enemies>=5\nactions.fallthru+=/spinning_crane_kick,if=combo_strike&buff.chi_energy.stack>30-5*active_enemies&buff.storm_earth_and_fire.down&(cooldown.rising_sun_kick.remains>2&cooldown.fists_of_fury.remains>2||cooldown.rising_sun_kick.remains<3&cooldown.fists_of_fury.remains>3&chi>3||cooldown.rising_sun_kick.remains>3&cooldown.fists_of_fury.remains<3&chi>4||chi.max-chi<=1&energy.time_to_max<2)||buff.chi_energy.stack>10&fight_remains<7\nactions.fallthru+=/arcane_torrent,if=chi.max-chi>=1\nactions.fallthru+=/flying_serpent_kick,interrupt=1\nactions.fallthru+=/tiger_palm\n\n# Opener\nactions.opener+=/summon_white_tiger_statue\nactions.opener+=/expel_harm,if=talent.chi_burst.enabled&chi.max-chi>=3\nactions.opener+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=(2+buff.power_strikes.up)\nactions.opener+=/expel_harm,if=talent.chi_burst.enabled&chi=3\nactions.opener+=/chi_wave,if=chi.max-chi=2\nactions.opener+=/expel_harm\nactions.opener+=/chi_burst,if=chi>1&chi.max-chi>=2\n\n# Serenity Priority\nactions.serenity+=/fists_of_fury,if=buff.serenity.remains<1\nactions.serenity+=/blackout_kick,cycle_targets=1,if=combo_strike&!spinning_crane_kick.max&active_enemies>4&talent.shdaowboxing_treads\nactions.serenity+=/blackout_kick,cycle_targets=1,if=combo_strike&buff.teachings_of_the_monastery.stack=3&buff.teachings_of_the_monastery.remains<1\nactions.serenity+=/rising_sun_kick,cycle_targets=1,if=active_enemies=4&buff.pressure_point.up&!talent.bonedust_brew\nactions.serenity+=/rising_sun_kick,cycle_targets=1,if=active_enemies=1\nactions.serenity+=/rising_sun_kick,cycle_targets=1,if=active_enemies<=3&buff.pressure_point.up\nactions.serenity+=/rising_sun_kick,cycle_targets=1,if=buff.pressure_point.up&set_bonus.tier30_2pc\nactions.serenity+=/rising_sun_kick,cycle_targets=1,if=set_bonus.tier30_2pc\nactions.serenity+=/fists_of_fury,if=buff.invokers_delight.up&active_enemies<3&talent.jade_ignition\nactions.serenity+=/fists_of_fury,if=buff.bloodlust.up\nactions.serenity+=/fists_of_fury,if=buff.invokers_delight.up&active_enemies>4\nactions.serenity+=/fists_of_fury,if=active_enemies=2,interrupt_if=buff.serenity.up&(buff.invokers_delight.up&(active_enemies<3&talent.jade_ignition||active_enemies>4)||buff.bloodlust.up||active_enemies=2)\nactions.serenity+=/strike_of_the_windlord,if=talent.thunderfist\nactions.serenity+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up&active_enemies>=2\nactions.serenity+=/rising_sun_kick,cycle_targets=1,if=active_enemies=4&buff.pressure_point.up\nactions.serenity+=/blackout_kick,cycle_targets=1,if=active_enemies<6&combo_strike&set_bonus.tier30_2pc\nactions.serenity+=/spinning_crane_kick,if=combo_strike&active_enemies>=3&spinning_crane_kick.max\nactions.serenity+=/blackout_kick,cycle_targets=1,if=combo_strike&active_enemies>1&active_enemies<4&buff.teachings_of_the_monastery.stack=2\nactions.serenity+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up&active_enemies>=5\nactions.serenity+=/blackout_kick,cycle_targets=1,if=talent.shadowboxing_treads&active_enemies>=3&combo_strike\nactions.serenity+=/spinning_crane_kick,if=combo_strike&(active_enemies>3||active_enemies>2&spinning_crane_kick.modifier>=2.3)\nactions.serenity+=/strike_of_the_windlord,if=active_enemies>=3\nactions.serenity+=/rising_sun_kick,cycle_targets=1,if=active_enemies=2&cooldown.fists_of_fury.remains>5\nactions.serenity+=/blackout_kick,cycle_targets=1,if=active_enemies=2&cooldown.fists_of_fury.remains>5&talent.shadowboxing_treads&buff.teachings_of_the_monastery.stack=1&combo_strike\nactions.serenity+=/spinning_crane_kick,if=combo_strike&active_enemies>1\nactions.serenity+=/whirling_dragon_punch,if=active_enemies>1\nactions.serenity+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up&active_enemies>=3\nactions.serenity+=/rising_sun_kick,cycle_targets=1\nactions.serenity+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.serenity+=/blackout_kick,cycle_targets=1,if=combo_strike\nactions.serenity+=/whirling_dragon_punch\nactions.serenity+=/tiger_palm,cycle_targets=1,if=talent.teachings_of_the_monastery&buff.teachings_of_the_monastery.stack<3\n\n# ST Priority (<3 Targets)\nactions.st_cleave=blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3&talent.shadowboxing_treads\nactions.st_cleave+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.st_cleave+=/strike_of_the_windlord,if=talent.thunderfist\nactions.st_cleave+=/rising_sun_kick,cycle_targets=1,if=active_enemies=1&buff.kicks_of_flowing_momentum.up||buff.pressure_point.up\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=2&talent.shadowboxing_treads\nactions.st_cleave+=/strike_of_the_windlord\nactions.st_cleave+=/fists_of_fury\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.up&(talent.shadowboxing_treads&active_enemies>1||cooldown.rising_sun_kick.remains>1)\nactions.st_cleave+=/whirling_dragon_punch,if=active_enemies=2\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3\nactions.st_cleave+=/rising_sun_kick,cycle_targets=1,if=(active_enemies=1||!talent.shadowboxing_treads)&cooldown.fists_of_fury.remains>4&talent.xuens_battlegear\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=combo_strike&active_enemies=2&cooldown.rising_sun_kick.remains&cooldown.fists_of_fury.remains&(!buff.bonedust_brew.up||spinning_crane_kick.modifier<1.5)\nactions.st_cleave+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up&active_enemies=2\nactions.st_cleave+=/spinning_crane_kick,if=buff.bonedust_brew.up&combo_strike&(active_enemies>1||spinning_crane_kick.modifier>=2.7)\nactions.st_cleave+=/rising_sun_kick,cycle_targets=1\nactions.st_cleave+=/whirling_dragon_punch\nactions.st_cleave+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=combo_strike\n\n# SEF Trinkets\nactions.sef_trinkets+=/horn_of_valor,if=pet.xuen_the_white_tiger.active||!talent.invoke_xuen_the_white_tiger&buff.storm_earth_and_fire.up||boss&fight_remains<30\nactions.sef_trinkets+=/manic_grieftorch,if=(boss||target.time_to_die>1+cast_time)&(trinket.1.is.manic_grieftorch&!trinket.2.has_use_buff||trinket.2.is.manic_grieftorch&!trinket.1.has_use_buff)\nactions.sef_trinkets+=/algethar_puzzle_box,if=(pet.xuen_the_white_tiger.active||!talent.invoke_xuen_the_white_tiger)&!buff.storm_earth_and_fire.up||boss&fight_remains<25\nactions.sef_trinkets+=/use_item,slot=trinket1,if=trinket.1.has_use_buff&!(trinket.1.is.horn_of_valor||trinket.1.is.manic_grieftorch||trinket.1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||cooldown<=60&buff.storm_earth_and_fire.remains>10||!talent.invoke_xuen_the_white_tiger)||boss&fight_remains<30\nactions.sef_trinkets+=/use_item,slot=trinket1,if=!trinket.1.has_use_buff&!(trinket.1.is.horn_of_valor||trinket.1.is.manic_grieftorch||trinket.1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger)||boss&fight_remains<30\nactions.sef_trinkets+=/use_item,slot=trinket2,if=trinket.2.has_use_buff&!(trinket.2.is.horn_of_valor||trinket.2.is.manic_grieftorch||trinket.2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||cooldown<=60&buff.storm_earth_and_fire.remains>10||!talent.invoke_xuen_the_white_tiger)||boss&fight_remains<30\nactions.sef_trinkets+=/use_item,slot=trinket2,if=!trinket.2.has_use_buff&!(trinket.2.is.horn_of_valor||trinket.2.is.manic_grieftorch||trinket.2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger)||boss&fight_remains<30\n\n# Serenity Trinkets\nactions.serenity_trinkets+=/horn_of_valor,if=pet.xuen_the_white_tiger.active||!talent.invoke_xuen_the_white_tiger&buff.storm_earth_and_fire.up||boss&fight_remains<30\nactions.serenity_trinkets+=/manic_grieftorch,if=(boss||target.time_to_die>1+cast_time)&(trinket.1.is.manic_grieftorch&!trinket.2.has_use_buff||trinket.2.is.manic_grieftorch&!trinket.1.has_use_buff)\nactions.serenity_trinkets+=/algethar_puzzle_box,if=(pet.xuen_the_white_tiger.active||!talent.invoke_xuen_the_white_tiger)&!buff.storm_earth_and_fire.up||boss&fight_remains<25\nactions.serenity_trinkets+=/use_item,slot=trinket1,if=trinket.1.has_use_buff&!(trinket.1.is.horn_of_valor||trinket.1.is.manic_grieftorch||trinket.1.is.algethar_puzzle_box)&buff.serenity.remains>10||boss&fight_remains<30\nactions.serenity_trinkets+=/use_item,slot=trinket1,if=!trinket.1.has_use_buff&!(trinket.1.is.horn_of_valor||trinket.1.is.manic_grieftorch||trinket.1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger)||boss&fight_remains<30\nactions.serenity_trinkets+=/use_item,slot=trinket2,if=trinket.2.has_use_buff&!(trinket.2.is.horn_of_valor||trinket.2.is.manic_grieftorch||trinket.2.is.algethar_puzzle_box)&buff.serenity.remains>10||boss&fight_remains<30\nactions.serenity_trinkets+=/use_item,slot=trinket2,if=!trinket.2.has_use_buff&!(trinket.2.is.horn_of_valor||trinket.2.is.manic_grieftorch||trinket.2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger)||boss&fight_remains<30\nactions.serenity_trinkets+=/use_items,if=cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger",
				},
				["Beast Mastery"] = {
					["source"] = "# https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230426,
					["author"] = "SimC",
					["desc"] = "2023-04-26: Update from SimulationCraft.\n\n2023-03-28:  Racial cooldown usage adjusted for Call of the Wild vs. Bestial Wrath.",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "counter_shot",
							}, -- [1]
							{
								["action"] = "tranquilizing_shot",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies < 2 || ! talent.beast_cleave.enabled & active_enemies < 3",
								["list_name"] = "st",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 2 || talent.beast_cleave.enabled & active_enemies > 1",
								["list_name"] = "cleave",
							}, -- [6]
						},
						["precombat"] = {
							{
								["action"] = "summon_pet",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "bottled_flayedwing_toxin",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["precast_time"] = "1.5",
								["action"] = "steel_trap",
								["criteria"] = "! talent.wailing_arrow.enabled & talent.steel_trap.enabled",
							}, -- [3]
						},
						["cleave"] = {
							{
								["enabled"] = true,
								["action"] = "barbed_shot",
								["criteria"] = "debuff.latent_poison.stack > 9 & ( buff.frenzy.up & buff.frenzy.remains <= gcd.max + 0.25 || talent.scent_of_blood.enabled & cooldown.bestial_wrath.remains < 12 + gcd.max || full_recharge_time < gcd.max & cooldown.bestial_wrath.remains )",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "barbed_shot",
								["criteria"] = "buff.frenzy.up & buff.frenzy.remains <= gcd.max + 0.25 + barbed_shot_grace_period || talent.scent_of_blood.enabled & cooldown.bestial_wrath.remains < 12 + gcd.max || full_recharge_time < gcd.max & cooldown.bestial_wrath.remains",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.beast_cleave.remains < 0.25 + gcd.max",
								["action"] = "multishot",
							}, -- [3]
							{
								["action"] = "bestial_wrath",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "full_recharge_time < gcd.max & talent.alpha_predator.enabled & talent.kill_cleave.enabled",
								["action"] = "kill_command",
							}, -- [5]
							{
								["action"] = "call_of_the_wild",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "explosive_shot",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bestial_wrath.up || boss & fight_remains < 15",
								["action"] = "stampede",
							}, -- [8]
							{
								["action"] = "bloodshed",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "death_chakram",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "steel_trap",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "a_murder_of_crows",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "barbed_shot",
								["criteria"] = "debuff.latent_poison.stack > 9 & ( talent.wild_instincts.enabled & buff.call_of_the_wild.up || boss & fight_remains < 9 || talent.wild_call.enabled & charges_fractional > 1.2 )",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "barbed_shot",
								["criteria"] = "talent.wild_instincts.enabled & buff.call_of_the_wild.up || boss & fight_remains < 9 || talent.wild_call.enabled & charges_fractional > 1.2",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["action"] = "kill_command",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "dire_beast",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "refreshable & target.time_to_die > duration",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.frenzy.remains > execute_time",
								["action"] = "barrage",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.beast_cleave.remains < gcd.max * 2",
								["action"] = "multishot",
							}, -- [19]
							{
								["action"] = "aspect_of_the_wild",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "focus.time_to_max < gcd.max * 2 || buff.aspect_of_the_wild.up & focus.time_to_max < gcd.max * 4",
								["action"] = "cobra_shot",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.frenzy.remains > execute_time || boss & fight_remains < 5",
								["action"] = "wailing_arrow",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.bestial_wrath.down || boss & fight_remains < 5",
								["action"] = "bag_of_tricks",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "( focus + focus.regen + 30 ) < focus.max",
								["action"] = "arcane_torrent",
							}, -- [24]
							{
								["action"] = "kill_shot",
								["enabled"] = true,
							}, -- [25]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.call_of_the_wild.up || ! talent.call_of_the_wild.enabled & buff.bestial_wrath.up || boss & fight_remains < 13",
								["action"] = "berserking",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.call_of_the_wild.up || ! talent.call_of_the_wild.enabled & buff.bestial_wrath.up || boss & fight_remains < 16",
								["action"] = "blood_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.call_of_the_wild.up || ! talent.call_of_the_wild.enabled & buff.bestial_wrath.up || boss & fight_remains < 16",
								["action"] = "ancestral_call",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.call_of_the_wild.up || ! talent.call_of_the_wild.enabled & buff.bestial_wrath.up || boss & fight_remains < 9",
								["action"] = "fireblood",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.call_of_the_wild.up || ! talent.call_of_the_wild.enabled & ( buff.bestial_wrath.up & ( buff.bloodlust.up || target.health.pct < 20 ) ) || boss & fight_remains < 31",
								["action"] = "potion",
							}, -- [5]
						},
						["st"] = {
							{
								["enabled"] = true,
								["action"] = "barbed_shot",
								["criteria"] = "buff.frenzy.up & buff.frenzy.remains <= gcd.max + 0.25 + barbed_shot_grace_period || talent.scent_of_blood.enabled & buff.frenzy.stack < 3 & cooldown.bestial_wrath.ready",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "full_recharge_time < gcd.max & talent.alpha_predator.enabled",
								["action"] = "kill_command",
							}, -- [2]
							{
								["action"] = "call_of_the_wild",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "death_chakram",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "bloodshed",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "stampede",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "a_murder_of_crows",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "steel_trap",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "explosive_shot",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "bestial_wrath",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "kill_command",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "barbed_shot",
								["criteria"] = "talent.wild_instincts.enabled & buff.call_of_the_wild.up || talent.wild_call.enabled & charges_fractional > 1.4 || full_recharge_time < gcd.max & cooldown.bestial_wrath.remains || talent.scent_of_blood.enabled & ( cooldown.bestial_wrath.remains < 12 + gcd.max || full_recharge_time + gcd.max < 8 & cooldown.bestial_wrath.remains < 24 + ( 8 - gcd.max ) + full_recharge_time ) || boss & fight_remains < 9",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["action"] = "dire_beast",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "refreshable & target.time_to_die > duration",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["action"] = "kill_shot",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "aspect_of_the_wild",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "cobra_shot",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.frenzy.remains > execute_time || boss & fight_remains < 5",
								["action"] = "wailing_arrow",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.bestial_wrath.down || boss & fight_remains < 5",
								["action"] = "bag_of_tricks",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.bestial_wrath.down || boss & fight_remains < 5",
								["action"] = "arcane_pulse",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "( focus + focus.regen + 15 ) < focus.max",
								["action"] = "arcane_torrent",
							}, -- [21]
						},
						["trinkets"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.call_of_the_wild.up || cooldown.call_of_the_wild.remains < 2 || ! talent.call_of_the_wild.enabled & ( prev_gcd.1.bestial_wrath || cooldown.bestial_wrath.remains_guess < 2 )",
								["var_name"] = "sync_up",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "sync_remains",
								["criteria"] = "! talent.call_of_the_wild.enabled",
								["value_else"] = "cooldown.call_of_the_wild.remains",
								["value"] = "cooldown.bestial_wrath.remains_guess",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! trinket.t2.has_cooldown || trinket.t1.has_use_buff & ( ! trinket.t2.has_use_buff || trinket.t2.cooldown.duration < trinket.t1.cooldown.duration || trinket.t2.cast_time < trinket.t1.cast_time || trinket.t2.cast_time = trinket.t1.cast_time & trinket.t2.cooldown.duration = trinket.t1.cooldown.duration ) || ! trinket.t1.has_use_buff & ( ! trinket.t2.has_use_buff & ( trinket.t2.cooldown.duration < trinket.t1.cooldown.duration || trinket.t2.cast_time < trinket.t1.cast_time || trinket.t2.cast_time = trinket.t1.cast_time & trinket.t2.cooldown.duration = trinket.t1.cooldown.duration ) )",
								["var_name"] = "trinket_1_stronger",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! trinket.t1.has_cooldown || trinket.t2.has_use_buff & ( ! trinket.t1.has_use_buff || trinket.t1.cooldown.duration < trinket.t2.cooldown.duration || trinket.t1.cast_time < trinket.t2.cast_time || trinket.t1.cast_time = trinket.t2.cast_time & trinket.t1.cooldown.duration = trinket.t2.cooldown.duration ) || ! trinket.t2.has_use_buff & ( ! trinket.t1.has_use_buff & ( trinket.t1.cooldown.duration < trinket.t2.cooldown.duration || trinket.t1.cast_time < trinket.t2.cast_time || trinket.t1.cast_time = trinket.t2.cast_time & trinket.t1.cooldown.duration = trinket.t2.cooldown.duration ) )",
								["var_name"] = "trinket_2_stronger",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
								["use_off_gcd"] = 1,
								["criteria"] = "( trinket.t1.has_use_buff & ( variable.sync_up & ( variable.trinket_1_stronger || trinket.t2.cooldown.remains ) || ! variable.sync_up & ( variable.trinket_1_stronger & ( variable.sync_remains > trinket.t1.cooldown.duration / 2 || trinket.t2.has_use_buff & trinket.t2.cooldown.remains > variable.sync_remains - 15 & trinket.t2.cooldown.remains - 5 < variable.sync_remains & variable.sync_remains + 40 > fight_remains ) || variable.trinket_2_stronger & ( trinket.t2.cooldown.remains & ( trinket.t2.cooldown.remains - 5 < variable.sync_remains & variable.sync_remains >= 20 || trinket.t2.cooldown.remains - 5 >= variable.sync_remains & ( variable.sync_remains > trinket.t1.cooldown.duration / 2 || trinket.t1.cooldown.duration < fight_remains & ( variable.sync_remains + trinket.t1.cooldown.duration > fight_remains ) ) ) || trinket.t2.cooldown.ready & variable.sync_remains > 20 & variable.sync_remains < trinket.t2.cooldown.duration / 2 ) ) ) || ! trinket.t1.has_use_buff & ( ( ! trinket.t2.has_use_buff & ( variable.trinket_1_stronger || trinket.t2.cooldown.remains ) || trinket.t2.has_use_buff & ( variable.sync_remains > 20 || trinket.t2.cooldown.remains > 20 ) ) ) || target.time_to_die < 25 & ( variable.trinket_1_stronger || trinket.t2.cooldown.remains ) ) & buff.frenzy.remains > trinket.t1.cast_time",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["slot"] = "trinket2",
								["use_off_gcd"] = 1,
								["criteria"] = "( trinket.t2.has_use_buff & ( variable.sync_up & ( variable.trinket_2_stronger || trinket.t1.cooldown.remains ) || ! variable.sync_up & ( variable.trinket_2_stronger & ( variable.sync_remains > trinket.t2.cooldown.duration / 2 || trinket.t1.has_use_buff & trinket.t1.cooldown.remains > variable.sync_remains - 15 & trinket.t1.cooldown.remains - 5 < variable.sync_remains & variable.sync_remains + 40 > fight_remains ) || variable.trinket_1_stronger & ( trinket.t1.cooldown.remains & ( trinket.t1.cooldown.remains - 5 < variable.sync_remains & variable.sync_remains >= 20 || trinket.t1.cooldown.remains - 5 >= variable.sync_remains & ( variable.sync_remains > trinket.t2.cooldown.duration / 2 || trinket.t2.cooldown.duration < fight_remains & ( variable.sync_remains + trinket.t2.cooldown.duration > fight_remains ) ) ) || trinket.t1.cooldown.ready & variable.sync_remains > 20 & variable.sync_remains < trinket.t1.cooldown.duration / 2 ) ) ) || ! trinket.t2.has_use_buff & ( ( ! trinket.t1.has_use_buff & ( variable.trinket_2_stronger || trinket.t1.cooldown.remains ) || trinket.t1.has_use_buff & ( variable.sync_remains > 20 || trinket.t1.cooldown.remains > 20 ) ) ) || target.time_to_die < 25 & ( variable.trinket_2_stronger || trinket.t1.cooldown.remains ) ) & buff.frenzy.remains > trinket.t2.cast_time",
							}, -- [6]
						},
					},
					["version"] = 20230426,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 5: Converted 'talent.beast_cleave' to 'talent.beast_cleave.enabled' (1x).\nLine 6: Converted 'talent.beast_cleave' to 'talent.beast_cleave.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 3: Converted 'talent.wailing_arrow' to 'talent.wailing_arrow.enabled' (1x).\nLine 3: Converted 'talent.steel_trap' to 'talent.steel_trap.enabled' (1x).\n\nThe import for 'trinkets' required some automated changes.\nLine 1: Converted 'talent.call_of_the_wild' to 'talent.call_of_the_wild.enabled' (1x).\nLine 2: Converted 'talent.call_of_the_wild' to 'talent.call_of_the_wild.enabled' (1x).\nLine 3: Converted 'trinket.2.has_cooldown' to 'trinket.t2.has_cooldown' (1x).\nLine 3: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 3: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 3: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 3: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 3: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 3: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 3: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 3: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 3: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 3: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 4: Converted 'trinket.1.has_cooldown' to 'trinket.t1.has_cooldown' (1x).\nLine 4: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 4: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 4: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 4: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 4: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 4: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 4: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 4: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 4: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 4: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 5: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready' (1x).\nLine 5: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready'.\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 5: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 5: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 5: Converted 'pet.main.buff.frenzy.remains' to 'buff.frenzy.remains' (1x).\nLine 5: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 5: Converted operations in '(trinket.t1.has_use_buff&(variable.sync_up&(variable.trinket_1_stronger||trinket.t2.cooldown.remains)||!variable.sync_up&(variable.trinket_1_stronger&(variable.sync_remains>trinket.t1.cooldown.duration%2||trinket.t2.has_use_buff&trinket.t2.cooldown.remains>variable.sync_remains-15&trinket.t2.cooldown.remains-5<variable.sync_remains&variable.sync_remains+40>fight_remains)||variable.trinket_2_stronger&(trinket.t2.cooldown.remains&(trinket.t2.cooldown.remains-5<variable.sync_remains&variable.sync_remains>=20||trinket.t2.cooldown.remains-5>=variable.sync_remains&(variable.sync_remains>trinket.t1.cooldown.duration%2||trinket.t1.cooldown.duration<fight_remains&(variable.sync_remains+trinket.t1.cooldown.duration>fight_remains)))||trinket.t2.cooldown.ready&variable.sync_remains>20&variable.sync_remains<trinket.t2.cooldown.duration%2)))||!trinket.t1.has_use_buff&((!trinket.t2.has_use_buff&(variable.trinket_1_stronger||trinket.t2.cooldown.remains)||trinket.t2.has_use_buff&(variable.sync_remains>20||trinket.t2.cooldown.remains>20)))||target.time_to_die<25&(variable.trinket_1_stronger||trinket.t2.cooldown.remains))&buff.frenzy.remains>trinket.t1.cast_time' to '(trinket.t1.has_use_buff&(variable.sync_up&(variable.trinket_1_stronger||trinket.t2.cooldown.remains)||!variable.sync_up&(variable.trinket_1_stronger&(variable.sync_remains>trinket.t1.cooldown.duration/2||trinket.t2.has_use_buff&trinket.t2.cooldown.remains>variable.sync_remains-15&trinket.t2.cooldown.remains-5<variable.sync_remains&variable.sync_remains+40>fight_remains)||variable.trinket_2_stronger&(trinket.t2.cooldown.remains&(trinket.t2.cooldown.remains-5<variable.sync_remains&variable.sync_remains>=20||trinket.t2.cooldown.remains-5>=variable.sync_remains&(variable.sync_remains>trinket.t1.cooldown.duration/2||trinket.t1.cooldown.duration<fight_remains&(variable.sync_remains+trinket.t1.cooldown.duration>fight_remains)))||trinket.t2.cooldown.ready&variable.sync_remains>20&variable.sync_remains<trinket.t2.cooldown.duration/2)))||!trinket.t1.has_use_buff&((!trinket.t2.has_use_buff&(variable.trinket_1_stronger||trinket.t2.cooldown.remains)||trinket.t2.has_use_buff&(variable.sync_remains>20||trinket.t2.cooldown.remains>20)))||target.time_to_die<25&(variable.trinket_1_stronger||trinket.t2.cooldown.remains))&buff.frenzy.remains>trinket.t1.cast_time'.\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready' (1x).\nLine 6: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready'.\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 6: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 6: Converted 'pet.main.buff.frenzy.remains' to 'buff.frenzy.remains' (1x).\nLine 6: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 6: Converted operations in '(trinket.t2.has_use_buff&(variable.sync_up&(variable.trinket_2_stronger||trinket.t1.cooldown.remains)||!variable.sync_up&(variable.trinket_2_stronger&(variable.sync_remains>trinket.t2.cooldown.duration%2||trinket.t1.has_use_buff&trinket.t1.cooldown.remains>variable.sync_remains-15&trinket.t1.cooldown.remains-5<variable.sync_remains&variable.sync_remains+40>fight_remains)||variable.trinket_1_stronger&(trinket.t1.cooldown.remains&(trinket.t1.cooldown.remains-5<variable.sync_remains&variable.sync_remains>=20||trinket.t1.cooldown.remains-5>=variable.sync_remains&(variable.sync_remains>trinket.t2.cooldown.duration%2||trinket.t2.cooldown.duration<fight_remains&(variable.sync_remains+trinket.t2.cooldown.duration>fight_remains)))||trinket.t1.cooldown.ready&variable.sync_remains>20&variable.sync_remains<trinket.t1.cooldown.duration%2)))||!trinket.t2.has_use_buff&((!trinket.t1.has_use_buff&(variable.trinket_2_stronger||trinket.t1.cooldown.remains)||trinket.t1.has_use_buff&(variable.sync_remains>20||trinket.t1.cooldown.remains>20)))||target.time_to_die<25&(variable.trinket_2_stronger||trinket.t1.cooldown.remains))&buff.frenzy.remains>trinket.t2.cast_time' to '(trinket.t2.has_use_buff&(variable.sync_up&(variable.trinket_2_stronger||trinket.t1.cooldown.remains)||!variable.sync_up&(variable.trinket_2_stronger&(variable.sync_remains>trinket.t2.cooldown.duration/2||trinket.t1.has_use_buff&trinket.t1.cooldown.remains>variable.sync_remains-15&trinket.t1.cooldown.remains-5<variable.sync_remains&variable.sync_remains+40>fight_remains)||variable.trinket_1_stronger&(trinket.t1.cooldown.remains&(trinket.t1.cooldown.remains-5<variable.sync_remains&variable.sync_remains>=20||trinket.t1.cooldown.remains-5>=variable.sync_remains&(variable.sync_remains>trinket.t2.cooldown.duration/2||trinket.t2.cooldown.duration<fight_remains&(variable.sync_remains+trinket.t2.cooldown.duration>fight_remains)))||trinket.t1.cooldown.ready&variable.sync_remains>20&variable.sync_remains<trinket.t1.cooldown.duration/2)))||!trinket.t2.has_use_buff&((!trinket.t1.has_use_buff&(variable.trinket_2_stronger||trinket.t1.cooldown.remains)||trinket.t1.has_use_buff&(variable.sync_remains>20||trinket.t1.cooldown.remains>20)))||target.time_to_die<25&(variable.trinket_2_stronger||trinket.t1.cooldown.remains))&buff.frenzy.remains>trinket.t2.cast_time'.\n\nThe import for 'cds' required some automated changes.\nLine 1: Converted 'talent.call_of_the_wild' to 'talent.call_of_the_wild.enabled' (1x).\nLine 2: Converted 'talent.call_of_the_wild' to 'talent.call_of_the_wild.enabled' (1x).\nLine 3: Converted 'talent.call_of_the_wild' to 'talent.call_of_the_wild.enabled' (1x).\nLine 4: Converted 'talent.call_of_the_wild' to 'talent.call_of_the_wild.enabled' (1x).\nLine 5: Converted 'talent.call_of_the_wild' to 'talent.call_of_the_wild.enabled' (1x).\n\nThe import for 'st' required some automated changes.\nLine 1: Converted 'pet.main.buff.frenzy.up' to 'buff.frenzy.up' (1x).\nLine 1: Converted 'pet.main.buff.frenzy.remains' to 'buff.frenzy.remains' (1x).\nLine 1: Converted 'talent.scent_of_blood' to 'talent.scent_of_blood.enabled' (1x).\nLine 1: Converted 'pet.main.buff.frenzy.stack' to 'buff.frenzy.stack' (1x).\nLine 2: Converted 'talent.alpha_predator' to 'talent.alpha_predator.enabled' (1x).\nLine 12: Converted 'talent.wild_instincts' to 'talent.wild_instincts.enabled' (1x).\nLine 12: Converted 'talent.wild_call' to 'talent.wild_call.enabled' (1x).\nLine 12: Converted 'talent.scent_of_blood' to 'talent.scent_of_blood.enabled' (1x).\nLine 18: Converted 'pet.main.buff.frenzy.remains' to 'buff.frenzy.remains' (1x).\n\nThe import for 'cleave' required some automated changes.\nLine 1: Converted 'pet.main.buff.frenzy.up' to 'buff.frenzy.up' (1x).\nLine 1: Converted 'pet.main.buff.frenzy.remains' to 'buff.frenzy.remains' (1x).\nLine 1: Converted 'talent.scent_of_blood' to 'talent.scent_of_blood.enabled' (1x).\nLine 2: Converted 'pet.main.buff.frenzy.up' to 'buff.frenzy.up' (1x).\nLine 2: Converted 'pet.main.buff.frenzy.remains' to 'buff.frenzy.remains' (1x).\nLine 2: Converted 'talent.scent_of_blood' to 'talent.scent_of_blood.enabled' (1x).\nLine 3: Converted 'pet.main.buff.beast_cleave.remains' to 'buff.beast_cleave.remains' (1x).\nLine 5: Converted 'talent.alpha_predator' to 'talent.alpha_predator.enabled' (1x).\nLine 5: Converted 'talent.kill_cleave' to 'talent.kill_cleave.enabled' (1x).\nLine 13: Converted 'talent.wild_instincts' to 'talent.wild_instincts.enabled' (1x).\nLine 13: Converted 'talent.wild_call' to 'talent.wild_call.enabled' (1x).\nLine 14: Converted 'talent.wild_instincts' to 'talent.wild_instincts.enabled' (1x).\nLine 14: Converted 'talent.wild_call' to 'talent.wild_call.enabled' (1x).\nLine 18: Converted 'pet.main.buff.frenzy.remains' to 'buff.frenzy.remains' (1x).\nLine 19: Converted 'pet.main.buff.beast_cleave.remains' to 'buff.beast_cleave.remains' (1x).\nLine 22: Converted 'pet.main.buff.frenzy.remains' to 'buff.frenzy.remains' (1x).\n\nImported 6 action lists.\n",
					["profile"] = "actions.precombat+=/summon_pet\nactions.precombat+=/bottled_flayedwing_toxin\nactions.precombat+=/steel_trap,precast_time=1.5,if=!talent.wailing_arrow&talent.steel_trap\n\n# Executed every time the actor is available.\nactions=counter_shot\nactions+=/tranquilizing_shot\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=trinkets\nactions+=/call_action_list,name=st,strict=1,if=active_enemies<2||!talent.beast_cleave&active_enemies<3\nactions+=/call_action_list,name=cleave,strict=1,if=active_enemies>2||talent.beast_cleave&active_enemies>1\n\n## Call for Power Infusion when Bestial Wrath is running, or is close to coming off cooldown (PI lasts 20 seconds and Bestial Wrath lasts 15, so 30 seconds when accounting for Barbed Shot reduction of Bestial Wrath is a good approximate fit).\n## actions.cds+=/invoke_external_buff,name=power_infusion,if=buff.bestial_wrath.up||cooldown.bestial_wrath.remains<30\nactions.cds+=/berserking,if=buff.call_of_the_wild.up||!talent.call_of_the_wild&buff.bestial_wrath.up||boss&fight_remains<13\nactions.cds+=/blood_fury,if=buff.call_of_the_wild.up||!talent.call_of_the_wild&buff.bestial_wrath.up||boss&fight_remains<16\nactions.cds+=/ancestral_call,if=buff.call_of_the_wild.up||!talent.call_of_the_wild&buff.bestial_wrath.up||boss&fight_remains<16\nactions.cds+=/fireblood,if=buff.call_of_the_wild.up||!talent.call_of_the_wild&buff.bestial_wrath.up||boss&fight_remains<9\nactions.cds+=/potion,if=buff.call_of_the_wild.up||!talent.call_of_the_wild&(buff.bestial_wrath.up&(buff.bloodlust.up||target.health.pct<20))||boss&fight_remains<31\n\nactions.cleave+=/barbed_shot,cycle_targets=1,if=debuff.latent_poison.stack>9&(pet.main.buff.frenzy.up&pet.main.buff.frenzy.remains<=gcd+0.25||talent.scent_of_blood&cooldown.bestial_wrath.remains<12+gcd||full_recharge_time<gcd&cooldown.bestial_wrath.remains)\nactions.cleave+=/barbed_shot,cycle_targets=1,if=pet.main.buff.frenzy.up&pet.main.buff.frenzy.remains<=gcd+0.25+barbed_shot_grace_period||talent.scent_of_blood&cooldown.bestial_wrath.remains<12+gcd||full_recharge_time<gcd&cooldown.bestial_wrath.remains\nactions.cleave+=/multishot,if=pet.main.buff.beast_cleave.remains<0.25+gcd\nactions.cleave+=/bestial_wrath\nactions.cleave+=/kill_command,if=full_recharge_time<gcd&talent.alpha_predator&talent.kill_cleave\nactions.cleave+=/call_of_the_wild\nactions.cleave+=/explosive_shot\nactions.cleave+=/stampede,if=buff.bestial_wrath.up||boss&fight_remains<15\nactions.cleave+=/bloodshed\nactions.cleave+=/death_chakram\nactions.cleave+=/steel_trap\nactions.cleave+=/a_murder_of_crows\nactions.cleave+=/barbed_shot,cycle_targets=1,if=debuff.latent_poison.stack>9&(talent.wild_instincts&buff.call_of_the_wild.up||boss&fight_remains<9||talent.wild_call&charges_fractional>1.2)\nactions.cleave+=/barbed_shot,cycle_targets=1,if=talent.wild_instincts&buff.call_of_the_wild.up||boss&fight_remains<9||talent.wild_call&charges_fractional>1.2\nactions.cleave+=/kill_command\nactions.cleave+=/dire_beast\nactions.cleave+=/serpent_sting,cycle_targets=1,if=refreshable&target.time_to_die>duration\nactions.cleave+=/barrage,if=pet.main.buff.frenzy.remains>execute_time\nactions.cleave+=/multishot,if=pet.main.buff.beast_cleave.remains<gcd*2\nactions.cleave+=/aspect_of_the_wild\nactions.cleave+=/cobra_shot,if=focus.time_to_max<gcd*2||buff.aspect_of_the_wild.up&focus.time_to_max<gcd*4\nactions.cleave+=/wailing_arrow,if=pet.main.buff.frenzy.remains>execute_time||boss&fight_remains<5\nactions.cleave+=/bag_of_tricks,if=buff.bestial_wrath.down||boss&fight_remains<5\nactions.cleave+=/arcane_torrent,if=(focus+focus.regen+30)<focus.max\nactions.cleave+=/kill_shot\n\nactions.st+=/barbed_shot,cycle_targets=1,if=pet.main.buff.frenzy.up&pet.main.buff.frenzy.remains<=gcd+0.25+barbed_shot_grace_period||talent.scent_of_blood&pet.main.buff.frenzy.stack<3&cooldown.bestial_wrath.ready\nactions.st+=/kill_command,if=full_recharge_time<gcd&talent.alpha_predator\nactions.st+=/call_of_the_wild\nactions.st+=/death_chakram\nactions.st+=/bloodshed\nactions.st+=/stampede\nactions.st+=/a_murder_of_crows\nactions.st+=/steel_trap\nactions.st+=/explosive_shot\nactions.st+=/bestial_wrath\nactions.st+=/kill_command\nactions.st+=/barbed_shot,cycle_targets=1,if=talent.wild_instincts&buff.call_of_the_wild.up||talent.wild_call&charges_fractional>1.4||full_recharge_time<gcd&cooldown.bestial_wrath.remains||talent.scent_of_blood&(cooldown.bestial_wrath.remains<12+gcd||full_recharge_time+gcd<8&cooldown.bestial_wrath.remains<24+(8-gcd)+full_recharge_time)||boss&fight_remains<9\nactions.st+=/dire_beast\nactions.st+=/serpent_sting,cycle_targets=1,if=refreshable&target.time_to_die>duration\nactions.st+=/kill_shot\nactions.st+=/aspect_of_the_wild\nactions.st+=/cobra_shot\nactions.st+=/wailing_arrow,if=pet.main.buff.frenzy.remains>execute_time||boss&fight_remains<5\nactions.st+=/bag_of_tricks,if=buff.bestial_wrath.down||boss&fight_remains<5\nactions.st+=/arcane_pulse,if=buff.bestial_wrath.down||boss&fight_remains<5\nactions.st+=/arcane_torrent,if=(focus+focus.regen+15)<focus.max\n\nactions.trinkets+=/variable,name=sync_up,value=buff.call_of_the_wild.up||cooldown.call_of_the_wild.remains<2||!talent.call_of_the_wild&(prev_gcd.1.bestial_wrath||cooldown.bestial_wrath.remains_guess<2)\nactions.trinkets+=/variable,name=sync_remains,op=setif,value=cooldown.bestial_wrath.remains_guess,value_else=cooldown.call_of_the_wild.remains,condition=!talent.call_of_the_wild\nactions.trinkets+=/variable,name=trinket_1_stronger,value=!trinket.2.has_cooldown||trinket.1.has_use_buff&(!trinket.2.has_use_buff||trinket.2.cooldown.duration<trinket.1.cooldown.duration||trinket.2.cast_time<trinket.1.cast_time||trinket.2.cast_time=trinket.1.cast_time&trinket.2.cooldown.duration=trinket.1.cooldown.duration)||!trinket.1.has_use_buff&(!trinket.2.has_use_buff&(trinket.2.cooldown.duration<trinket.1.cooldown.duration||trinket.2.cast_time<trinket.1.cast_time||trinket.2.cast_time=trinket.1.cast_time&trinket.2.cooldown.duration=trinket.1.cooldown.duration))\nactions.trinkets+=/variable,name=trinket_2_stronger,value=!trinket.1.has_cooldown||trinket.2.has_use_buff&(!trinket.1.has_use_buff||trinket.1.cooldown.duration<trinket.2.cooldown.duration||trinket.1.cast_time<trinket.2.cast_time||trinket.1.cast_time=trinket.2.cast_time&trinket.1.cooldown.duration=trinket.2.cooldown.duration)||!trinket.2.has_use_buff&(!trinket.1.has_use_buff&(trinket.1.cooldown.duration<trinket.2.cooldown.duration||trinket.1.cast_time<trinket.2.cast_time||trinket.1.cast_time=trinket.2.cast_time&trinket.1.cooldown.duration=trinket.2.cooldown.duration))\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket1,if=(trinket.1.has_use_buff&(variable.sync_up&(variable.trinket_1_stronger||trinket.2.cooldown.remains)||!variable.sync_up&(variable.trinket_1_stronger&(variable.sync_remains>trinket.1.cooldown.duration%2||trinket.2.has_use_buff&trinket.2.cooldown.remains>variable.sync_remains-15&trinket.2.cooldown.remains-5<variable.sync_remains&variable.sync_remains+40>fight_remains)||variable.trinket_2_stronger&(trinket.2.cooldown.remains&(trinket.2.cooldown.remains-5<variable.sync_remains&variable.sync_remains>=20||trinket.2.cooldown.remains-5>=variable.sync_remains&(variable.sync_remains>trinket.1.cooldown.duration%2||trinket.1.cooldown.duration<fight_remains&(variable.sync_remains+trinket.1.cooldown.duration>fight_remains)))||trinket.2.cooldown.ready&variable.sync_remains>20&variable.sync_remains<trinket.2.cooldown.duration%2)))||!trinket.1.has_use_buff&((!trinket.2.has_use_buff&(variable.trinket_1_stronger||trinket.2.cooldown.remains)||trinket.2.has_use_buff&(variable.sync_remains>20||trinket.2.cooldown.remains>20)))||target.time_to_die<25&(variable.trinket_1_stronger||trinket.2.cooldown.remains))&pet.main.buff.frenzy.remains>trinket.1.cast_time\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket2,if=(trinket.2.has_use_buff&(variable.sync_up&(variable.trinket_2_stronger||trinket.1.cooldown.remains)||!variable.sync_up&(variable.trinket_2_stronger&(variable.sync_remains>trinket.2.cooldown.duration%2||trinket.1.has_use_buff&trinket.1.cooldown.remains>variable.sync_remains-15&trinket.1.cooldown.remains-5<variable.sync_remains&variable.sync_remains+40>fight_remains)||variable.trinket_1_stronger&(trinket.1.cooldown.remains&(trinket.1.cooldown.remains-5<variable.sync_remains&variable.sync_remains>=20||trinket.1.cooldown.remains-5>=variable.sync_remains&(variable.sync_remains>trinket.2.cooldown.duration%2||trinket.2.cooldown.duration<fight_remains&(variable.sync_remains+trinket.2.cooldown.duration>fight_remains)))||trinket.1.cooldown.ready&variable.sync_remains>20&variable.sync_remains<trinket.1.cooldown.duration%2)))||!trinket.2.has_use_buff&((!trinket.1.has_use_buff&(variable.trinket_2_stronger||trinket.1.cooldown.remains)||trinket.1.has_use_buff&(variable.sync_remains>20||trinket.1.cooldown.remains>20)))||target.time_to_die<25&(variable.trinket_2_stronger||trinket.1.cooldown.remains))&pet.main.buff.frenzy.remains>trinket.2.cast_time",
					["spec"] = 253,
				},
				["Vengeance"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230520,
					["spec"] = 581,
					["desc"] = "2023-05-20: Added trinkets.",
					["profile"] = "actions.precombat+=/variable,name=spirit_bomb_soul_fragments_not_in_meta,op=setif,value=4,value_else=5,condition=talent.fracture\nactions.precombat+=/variable,name=spirit_bomb_soul_fragments_in_meta,op=setif,value=3,value_else=4,condition=talent.fracture\n## actions.precombat+=/variable,name=vulnerability_frailty_stack,op=setif,value=1,value_else=0,condition=talent.vulnerability\n## actions.precombat+=/variable,name=cooldown_frailty_requirement_st,op=setif,value=6*variable.vulnerability_frailty_stack,value_else=variable.vulnerability_frailty_stack,condition=talent.soulcrush\n## actions.precombat+=/variable,name=cooldown_frailty_requirement_aoe,op=setif,value=5*variable.vulnerability_frailty_stack,value_else=variable.vulnerability_frailty_stack,condition=talent.soulcrush\nactions.precombat+=/sigil_of_flame\nactions.precombat+=/immolation_aura,if=active_enemies=1||!talent.fallout\n\nactions+=/disrupt\nactions+=/consume_magic\nactions+=/infernal_strike,use_off_gcd=1,if=charges=max_charges&target.distance>10\nactions+=/demon_spikes,use_off_gcd=1,if=!buff.demon_spikes.up&tanking\nactions+=/metamorphosis\nactions+=/fel_devastation,if=!talent.fiery_demise.enabled\nactions+=/fiery_brand,if=!talent.fiery_demise.enabled&!dot.fiery_brand.ticking\nactions+=/bulk_extraction\nactions+=/potion\nactions+=/use_item,name=dragonfire_bomb_dispenser,use_off_gcd=1,if=boss&fight_remains<20||charges=3\nactions+=/use_item,name=elementium_pocket_anvil,use_off_gcd=1\nactions+=/use_item,slot=trinket1\nactions+=/use_item,slot=trinket2\nactions+=/variable,name=the_hunt_on_cooldown,value=talent.the_hunt&cooldown.the_hunt.remains||!talent.the_hunt\nactions+=/variable,name=elysian_decree_on_cooldown,value=talent.elysian_decree&cooldown.elysian_decree.remains||!talent.elysian_decree\nactions+=/variable,name=soul_carver_on_cooldown,value=talent.soul_carver&cooldown.soul_carver.remains||!talent.soul_carver\nactions+=/variable,name=fel_devastation_on_cooldown,value=talent.fel_devastation&cooldown.fel_devastation.remains||!talent.fel_devastation\nactions+=/variable,name=fiery_demise_fiery_brand_is_ticking_on_current_target,value=talent.fiery_brand&talent.fiery_demise&dot.fiery_brand.ticking\nactions+=/variable,name=fiery_demise_fiery_brand_is_not_ticking_on_current_target,value=talent.fiery_brand&((talent.fiery_demise&!dot.fiery_brand.ticking)||!talent.fiery_demise)\nactions+=/variable,name=fiery_demise_fiery_brand_is_ticking_on_any_target,value=talent.fiery_brand&talent.fiery_demise&active_dot.fiery_brand_dot>0\nactions+=/variable,name=fiery_demise_fiery_brand_is_not_ticking_on_any_target,value=talent.fiery_brand&((talent.fiery_demise&active_dot.fiery_brand_dot=0)||!talent.fiery_demise)\nactions+=/variable,name=spirit_bomb_soul_fragments,op=setif,value=variable.spirit_bomb_soul_fragments_in_meta,value_else=variable.spirit_bomb_soul_fragments_not_in_meta,condition=buff.metamorphosis.up\n## actions+=/variable,name=cooldown_frailty_requirement,op=setif,value=variable.cooldown_frailty_requirement_aoe,value_else=variable.cooldown_frailty_requirement_st,condition=talent.spirit_bomb&(spell_targets.spirit_bomb>1||variable.fiery_demise_fiery_brand_is_ticking_on_any_target)\nactions+=/the_hunt,if=variable.fiery_demise_fiery_brand_is_not_ticking_on_current_target&frailty_threshold_met\nactions+=/elysian_decree,if=variable.fiery_demise_fiery_brand_is_not_ticking_on_current_target&frailty_threshold_met\nactions+=/soul_carver,if=!talent.fiery_demise&soul_fragments<=3&frailty_threshold_met\nactions+=/soul_carver,if=variable.fiery_demise_fiery_brand_is_ticking_on_current_target&soul_fragments<=3&frailty_threshold_met\nactions+=/fel_devastation,if=variable.fiery_demise_fiery_brand_is_ticking_on_current_target&dot.fiery_brand.remains<3\nactions+=/fiery_brand,if=variable.fiery_demise_fiery_brand_is_not_ticking_on_any_target&variable.the_hunt_on_cooldown&variable.elysian_decree_on_cooldown&((talent.soul_carver&(cooldown.soul_carver.up||cooldown.soul_carver.remains<10))||(talent.fel_devastation&(cooldown.fel_devastation.up||cooldown.fel_devastation.remains<10)))\nactions+=/immolation_aura,if=talent.fiery_demise&variable.fiery_demise_fiery_brand_is_ticking_on_any_target\nactions+=/sigil_of_flame,if=talent.fiery_demise&variable.fiery_demise_fiery_brand_is_ticking_on_any_target\nactions+=/spirit_bomb,if=soul_fragments>=variable.spirit_bomb_soul_fragments&(spell_targets>1||variable.fiery_demise_fiery_brand_is_ticking_on_any_target)\nactions+=/soul_cleave,if=(soul_fragments<=1&spell_targets>1)||spell_targets=1\nactions+=/sigil_of_flame\nactions+=/immolation_aura\nactions+=/fracture\nactions+=/shear\nactions+=/throw_glaive\nactions+=/felblade",
					["version"] = 20230520,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 14: Converted 'talent.the_hunt' to 'talent.the_hunt.enabled' (1x).\nLine 14: Converted 'talent.the_hunt' to 'talent.the_hunt.enabled' (1x).\nLine 15: Converted 'talent.elysian_decree' to 'talent.elysian_decree.enabled' (1x).\nLine 15: Converted 'talent.elysian_decree' to 'talent.elysian_decree.enabled' (1x).\nLine 16: Converted 'talent.soul_carver' to 'talent.soul_carver.enabled' (1x).\nLine 16: Converted 'talent.soul_carver' to 'talent.soul_carver.enabled' (1x).\nLine 17: Converted 'talent.fel_devastation' to 'talent.fel_devastation.enabled' (1x).\nLine 17: Converted 'talent.fel_devastation' to 'talent.fel_devastation.enabled' (1x).\nLine 18: Converted 'talent.fiery_brand' to 'talent.fiery_brand.enabled' (1x).\nLine 18: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 19: Converted 'talent.fiery_brand' to 'talent.fiery_brand.enabled' (1x).\nLine 19: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 19: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 20: Converted 'talent.fiery_brand' to 'talent.fiery_brand.enabled' (1x).\nLine 20: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 21: Converted 'talent.fiery_brand' to 'talent.fiery_brand.enabled' (1x).\nLine 21: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 21: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 25: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 28: Converted 'talent.soul_carver' to 'talent.soul_carver.enabled' (1x).\nLine 28: Converted 'talent.fel_devastation' to 'talent.fel_devastation.enabled' (1x).\nLine 29: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 30: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 1: Converted 'talent.fracture' to 'talent.fracture.enabled' (1x).\nLine 2: Converted 'talent.fracture' to 'talent.fracture.enabled' (1x).\nLine 4: Converted 'talent.fallout' to 'talent.fallout.enabled' (1x).\n\nImported 2 action lists.\n",
					["author"] = "SimC",
					["lists"] = {
						["default"] = {
							{
								["action"] = "disrupt",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "consume_magic",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "infernal_strike",
								["criteria"] = "charges = max_charges & target.distance > 10",
							}, -- [3]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "demon_spikes",
								["criteria"] = "! buff.demon_spikes.up & tanking",
							}, -- [4]
							{
								["action"] = "metamorphosis",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! talent.fiery_demise.enabled",
								["action"] = "fel_devastation",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.fiery_demise.enabled & ! dot.fiery_brand.ticking",
								["action"] = "fiery_brand",
							}, -- [7]
							{
								["action"] = "bulk_extraction",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "dragonfire_bomb_dispenser",
								["use_off_gcd"] = 1,
								["criteria"] = "boss & fight_remains < 20 || charges = 3",
								["name"] = "dragonfire_bomb_dispenser",
							}, -- [10]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["name"] = "elementium_pocket_anvil",
								["action"] = "elementium_pocket_anvil",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [13]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.the_hunt.enabled & cooldown.the_hunt.remains || ! talent.the_hunt.enabled",
								["var_name"] = "the_hunt_on_cooldown",
							}, -- [14]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.elysian_decree.enabled & cooldown.elysian_decree.remains || ! talent.elysian_decree.enabled",
								["var_name"] = "elysian_decree_on_cooldown",
							}, -- [15]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.soul_carver.enabled & cooldown.soul_carver.remains || ! talent.soul_carver.enabled",
								["var_name"] = "soul_carver_on_cooldown",
							}, -- [16]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.fel_devastation.enabled & cooldown.fel_devastation.remains || ! talent.fel_devastation.enabled",
								["var_name"] = "fel_devastation_on_cooldown",
							}, -- [17]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.fiery_brand.enabled & talent.fiery_demise.enabled & dot.fiery_brand.ticking",
								["var_name"] = "fiery_demise_fiery_brand_is_ticking_on_current_target",
							}, -- [18]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.fiery_brand.enabled & ( ( talent.fiery_demise.enabled & ! dot.fiery_brand.ticking ) || ! talent.fiery_demise.enabled )",
								["var_name"] = "fiery_demise_fiery_brand_is_not_ticking_on_current_target",
							}, -- [19]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.fiery_brand.enabled & talent.fiery_demise.enabled & active_dot.fiery_brand_dot > 0",
								["var_name"] = "fiery_demise_fiery_brand_is_ticking_on_any_target",
							}, -- [20]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.fiery_brand.enabled & ( ( talent.fiery_demise.enabled & active_dot.fiery_brand_dot = 0 ) || ! talent.fiery_demise.enabled )",
								["var_name"] = "fiery_demise_fiery_brand_is_not_ticking_on_any_target",
							}, -- [21]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "spirit_bomb_soul_fragments",
								["value"] = "variable.spirit_bomb_soul_fragments_in_meta",
								["value_else"] = "variable.spirit_bomb_soul_fragments_not_in_meta",
								["criteria"] = "buff.metamorphosis.up",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "variable.fiery_demise_fiery_brand_is_not_ticking_on_current_target & frailty_threshold_met",
								["action"] = "the_hunt",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "variable.fiery_demise_fiery_brand_is_not_ticking_on_current_target & frailty_threshold_met",
								["action"] = "elysian_decree",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "! talent.fiery_demise.enabled & soul_fragments <= 3 & frailty_threshold_met",
								["action"] = "soul_carver",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "variable.fiery_demise_fiery_brand_is_ticking_on_current_target & soul_fragments <= 3 & frailty_threshold_met",
								["action"] = "soul_carver",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "variable.fiery_demise_fiery_brand_is_ticking_on_current_target & dot.fiery_brand.remains < 3",
								["action"] = "fel_devastation",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "variable.fiery_demise_fiery_brand_is_not_ticking_on_any_target & variable.the_hunt_on_cooldown & variable.elysian_decree_on_cooldown & ( ( talent.soul_carver.enabled & ( cooldown.soul_carver.up || cooldown.soul_carver.remains < 10 ) ) || ( talent.fel_devastation.enabled & ( cooldown.fel_devastation.up || cooldown.fel_devastation.remains < 10 ) ) )",
								["action"] = "fiery_brand",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "talent.fiery_demise.enabled & variable.fiery_demise_fiery_brand_is_ticking_on_any_target",
								["action"] = "immolation_aura",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "talent.fiery_demise.enabled & variable.fiery_demise_fiery_brand_is_ticking_on_any_target",
								["action"] = "sigil_of_flame",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "soul_fragments >= variable.spirit_bomb_soul_fragments & ( spell_targets > 1 || variable.fiery_demise_fiery_brand_is_ticking_on_any_target )",
								["action"] = "spirit_bomb",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "( soul_fragments <= 1 & spell_targets > 1 ) || spell_targets = 1",
								["action"] = "soul_cleave",
							}, -- [32]
							{
								["action"] = "sigil_of_flame",
								["enabled"] = true,
							}, -- [33]
							{
								["action"] = "immolation_aura",
								["enabled"] = true,
							}, -- [34]
							{
								["action"] = "fracture",
								["enabled"] = true,
							}, -- [35]
							{
								["action"] = "shear",
								["enabled"] = true,
							}, -- [36]
							{
								["action"] = "throw_glaive",
								["enabled"] = true,
							}, -- [37]
							{
								["action"] = "felblade",
								["enabled"] = true,
							}, -- [38]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "spirit_bomb_soul_fragments_not_in_meta",
								["value"] = "4",
								["value_else"] = "5",
								["criteria"] = "talent.fracture.enabled",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "spirit_bomb_soul_fragments_in_meta",
								["value"] = "3",
								["value_else"] = "4",
								["criteria"] = "talent.fracture.enabled",
							}, -- [2]
							{
								["action"] = "sigil_of_flame",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 || ! talent.fallout.enabled",
								["action"] = "immolation_aura",
							}, -- [4]
						},
					},
				},
				["Unholy"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230520,
					["spec"] = 252,
					["desc"] = "2023-05-20: Add Vial trinket.\n\n2023-05-17: Update trinkets again.\n\n2023-04-30: Update trinket logic from SimC.\n\n2023-04-15: Minor tweak to use Festering Strike in preparation for Apocalypse.\n\n2023-04-04: Unholy update from SimC.\n\n2023-03-20: More updates for 10.0.7.\n\n2023-03-13: Update for 10.0.7.",
					["lists"] = {
						["aoe_setup"] = {
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.bursting_sores.enabled || death_knight.fwounded_targets >= cycle_enemies || death_knight.fwounded_targets >= 8 || raid_event.adds.exists & raid_event.adds.remains <= 11 & raid_event.adds.remains > 5 )",
								["action"] = "any_dnd",
								["description"] = "AoE Setup",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "festering_strike",
								["criteria"] = "death_knight.fwounded_targets < active_enemies & talent.bursting_sores.enabled",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power || fight_remains < 10",
								["action"] = "epidemic",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "festering_strike",
								["criteria"] = "death_knight.fwounded_targets < active_enemies",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "festering_strike",
								["criteria"] = "cooldown.apocalypse.remains < variable.apoc_timing & debuff.festering_wound.stack < 4",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power & ! talent.epidemic.enabled",
								["action"] = "death_coil",
							}, -- [6]
						},
						["high_priority"] = {
							{
								["enabled"] = true,
								["criteria"] = "pet.gargoyle.remains <= 30 || ( ! talent.summon_gargoyle.enabled || cooldown.summon_gargoyle.remains > 60 || cooldown.summon_gargoyle.ready ) & ( buff.dark_transformation.up & 30 >= buff.dark_transformation.remains || pet.army_ghoul.active & pet.army_ghoul.remains <= 30 || pet.apoc_ghoul.active & pet.apoc_ghoul.remains <= 30 ) || boss & fight_remains <= 30",
								["action"] = "potion",
								["description"] = "Priority Actions",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.summon_gargoyle.enabled & cooldown.summon_gargoyle.remains < 2 || ! talent.summon_gargoyle.enabled || boss & fight_remains < 35",
								["action"] = "army_of_the_dead",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies <= 3 || ! talent.epidemic.enabled ) & ( pet.gargoyle.active & talent.commander_of_the_dead.enabled & buff.commander_of_the_dead.up & cooldown.apocalypse.remains < 5 & buff.commander_of_the_dead.remains > 26 || debuff.death_rot.up & debuff.death_rot.remains < gcd.max )",
								["action"] = "death_coil",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 4 & ( talent.commander_of_the_dead.enabled & buff.commander_of_the_dead.up & cooldown.apocalypse.remains < 5 || debuff.death_rot.up & debuff.death_rot.remains < gcd.max )",
								["action"] = "epidemic",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.festering_wound.up & ( cooldown.apocalypse.remains > variable.apoc_timing + 3 || active_enemies >= 3 ) & talent.plaguebringer.enabled & ( talent.superstrain.enabled || talent.unholy_blight.enabled ) & buff.plaguebringer.remains < gcd.max",
								["action"] = "wound_spender",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.st_planning & ( ( ! talent.apocalypse.enabled || cooldown.apocalypse.remains ) & talent.morbidity.enabled || ! talent.morbidity.enabled ) || variable.adds_remain || boss & fight_remains < 21",
								["action"] = "unholy_blight",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "outbreak",
								["criteria"] = "target.time_to_die > dot.virulent_plague.remains & ( dot.virulent_plague.refreshable || talent.superstrain.enabled & ( dot.frost_fever_superstrain.refreshable || dot.blood_plague_superstrain.refreshable ) ) & ( ! talent.unholy_blight.enabled || talent.unholy_blight.enabled & cooldown.unholy_blight.remains > 15 / ( ( talent.superstrain.enabled * 3 ) + ( talent.plaguebringer.enabled * 2 ) + ( talent.ebon_fever.enabled * 2 ) ) )",
								["cycle_targets"] = 1,
							}, -- [7]
						},
						["aoe_burst"] = {
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.bursting_sores.enabled || rune < 1 || talent.bursting_sores.enabled & debuff.festering_wound.stack = 0 ) & ! variable.pooling_runic_power & ( active_enemies >= 6 || runic_power.deficit < 30 || buff.festermight.stack = 20 )",
								["action"] = "epidemic",
								["description"] = "AoE Burst",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "wound_spender",
								["criteria"] = "debuff.festering_wound.stack >= 1",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power || fight_remains < 10",
								["action"] = "epidemic",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power & ! talent.epidemic.enabled",
								["action"] = "death_coil",
							}, -- [4]
							{
								["action"] = "wound_spender",
								["enabled"] = true,
							}, -- [5]
						},
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "strangulate",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 40 & ( pet.gargoyle.active || ! talent.summon_gargoyle.enabled || cooldown.summon_gargoyle.remains > cooldown.antimagic_shell.duration )",
								["action"] = "antimagic_shell",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "death_knight.amz_absorb_percent > 0 & runic_power.deficit > 70 & talent.assimilation.enabled & ( pet.gargoyle.active || ! talent.summon_gargoyle.enabled )",
								["action"] = "antimagic_zone",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "setif",
								["description"] = "Variables",
								["criteria"] = "talent.improved_death_coil.enabled & ! talent.coil_of_devastation.enabled & active_enemies >= 3 || talent.coil_of_devastation.enabled & active_enemies >= 4 || ! talent.improved_death_coil.enabled & active_enemies >= 2",
								["var_name"] = "epidemic_priority",
								["action"] = "variable",
								["value_else"] = "0",
								["value"] = "1",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "garg_setup",
								["criteria"] = "active_enemies >= 3 || cooldown.summon_gargoyle.remains > 1 & cooldown.apocalypse.remains > 1 || ! talent.apocalypse.enabled & cooldown.summon_gargoyle.remains > 1 || ! talent.summon_gargoyle.enabled || time > 20",
								["value_else"] = "0",
								["value"] = "1",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "apoc_timing",
								["criteria"] = "cooldown.apocalypse.remains < 10 & debuff.festering_wound.stack <= 4 & cooldown.unholy_assault.remains > 10",
								["value_else"] = "2",
								["value"] = "10",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "festermight_tracker",
								["criteria"] = "! pet.gargoyle.active & talent.festermight.enabled & buff.festermight.up & ( buff.festermight.remains / ( 5 * gcd.max ) ) >= 1",
								["value_else"] = "debuff.festering_wound.stack >= ( 3 - talent.infected_claws.enabled )",
								["value"] = "debuff.festering_wound.stack >= 1",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "pop_wounds",
								["criteria"] = "( cooldown.apocalypse.remains > variable.apoc_timing || ! talent.apocalypse.enabled ) & ( variable.festermight_tracker || debuff.festering_wound.stack >= 1 & ! talent.apocalypse.enabled || debuff.festering_wound.stack >= 1 & cooldown.unholy_assault.remains < 20 & talent.unholy_assault.enabled & variable.st_planning || debuff.rotten_touch.up & debuff.festering_wound.stack >= 1 || debuff.festering_wound.stack > 4 ) || fight_remains < 5 & debuff.festering_wound.stack >= 1",
								["value_else"] = "0",
								["value"] = "1",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "pooling_runic_power",
								["criteria"] = "talent.vile_contagion.enabled & cooldown.vile_contagion.remains < 3 & runic_power < 60 & ! variable.st_planning",
								["value_else"] = "0",
								["value"] = "1",
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "st_planning",
								["criteria"] = "active_enemies <= 3 & ( ! raid_event.adds.exists || raid_event.adds.in > 15 )",
								["value_else"] = "0",
								["value"] = "1",
							}, -- [11]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "adds_remain",
								["criteria"] = "active_enemies >= 4 & ( ! raid_event.adds.exists || raid_event.adds.exists & raid_event.adds.remains > 6 )",
								["value_else"] = "0",
								["value"] = "1",
							}, -- [12]
							{
								["enabled"] = true,
								["description"] = "Call Action Lists",
								["action"] = "call_action_list",
								["list_name"] = "high_priority",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "variable.garg_setup = 0",
								["list_name"] = "garg_setup",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "variable.st_planning",
								["list_name"] = "cooldowns",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "variable.adds_remain",
								["list_name"] = "aoe_cooldowns",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "racials",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "variable.adds_remain & cooldown.any_dnd.remains < 10 & ! death_and_decay.ticking",
								["action"] = "call_action_list",
								["list_name"] = "aoe_setup",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies >= 4 & death_and_decay.ticking",
								["list_name"] = "aoe_burst",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 4 & ( cooldown.any_dnd.remains > 10 & ! death_and_decay.ticking || ! variable.adds_remain )",
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies <= 3",
								["list_name"] = "generic",
							}, -- [22]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.commander_of_the_dead.up || ! talent.commander_of_the_dead.enabled",
								["action"] = "summon_gargoyle",
								["description"] = "ST/Cleave Cooldowns",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! pet.ghoul.active",
								["action"] = "raise_dead",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.apocalypse.remains < 5",
								["action"] = "dark_transformation",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "apocalypse",
								["criteria"] = "variable.st_planning & debuff.festering_wound.stack >= 4",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.st_planning & ( pet.gargoyle.active & pet.gargoyle.remains <= 21 || ! talent.summon_gargoyle.enabled & talent.army_of_the_damned.enabled & pet.army_ghoul.active & pet.apoc_ghoul.active || ! talent.summon_gargoyle.enabled & ! talent.army_of_the_damned.enabled & buff.dark_transformation.up || ! talent.summon_gargoyle.enabled & ! talent.summon_gargoyle.enabled & buff.dark_transformation.up ) || boss & fight_remains <= 21",
								["action"] = "empower_rune_weapon",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "rune < 3 & variable.st_planning",
								["action"] = "abomination_limb",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "unholy_assault",
								["criteria"] = "variable.st_planning",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & target.time_to_pct_35 < 5 & target.time_to_die > 5",
								["action"] = "soul_reaper",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "soul_reaper",
								["criteria"] = "target.time_to_pct_35 < 5 & active_enemies >= 2 & target.time_to_die > ( dot.soul_reaper.remains + 5 )",
								["cycle_targets"] = 1,
							}, -- [9]
						},
						["generic"] = {
							{
								["enabled"] = true,
								["criteria"] = "! variable.epidemic_priority & ( ! variable.pooling_runic_power & ( rune < 3 || pet.gargoyle.active || buff.sudden_doom.react || cooldown.apocalypse.remains < 10 & debuff.festering_wound.stack > 3 ) || boss & fight_remains < 10 )",
								["action"] = "death_coil",
								["description"] = "Generic",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.epidemic_priority & ( ! variable.pooling_runic_power & ( rune < 3 || pet.gargoyle.active || buff.sudden_doom.react || cooldown.apocalypse.remains < 10 & debuff.festering_wound.stack > 3 ) || boss & fight_remains < 10 )",
								["action"] = "epidemic",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! death_and_decay.ticking & ( active_enemies >= 2 || talent.unholy_ground.enabled & ( pet.apoc_ghoul.active & pet.apoc_ghoul.remains >= 10 || pet.gargoyle.active & pet.gargoyle.remains > 5 || pet.army_ghoul.active & pet.army_ghoul.remains > 5 ) ) & death_knight.fwounded_targets >= cycle_enemies",
								["action"] = "any_dnd",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "wound_spender",
								["criteria"] = "variable.pop_wounds || active_enemies >= 2 & death_and_decay.ticking",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "festering_strike",
								["criteria"] = "! variable.pop_wounds",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["action"] = "death_coil",
								["enabled"] = true,
							}, -- [6]
						},
						["aoe_cooldowns"] = {
							{
								["enabled"] = true,
								["action"] = "vile_contagion",
								["cycle_targets"] = 1,
								["criteria"] = "debuff.festering_wound.stack >= 4 & cooldown.any_dnd.remains < 3",
								["description"] = "AoE Cooldowns",
							}, -- [1]
							{
								["action"] = "summon_gargoyle",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "rune < 2 || buff.festermight.stack > 10 || ! talent.festermight.enabled || buff.festermight.up & buff.festermight.remains < 12",
								["action"] = "abomination_limb",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "apocalypse",
								["criteria"] = "talent.bursting_sores.enabled & debuff.festering_wound.up & ( ! death_and_decay.ticking & cooldown.death_and_decay.remains & rune < 3 || death_and_decay.ticking & rune = 0 ) || ! talent.bursting_sores.enabled & debuff.festering_wound.stack >= 4",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "unholy_assault",
								["criteria"] = "debuff.festering_wound.stack <= 2 || buff.dark_transformation.up",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! pet.ghoul.active",
								["action"] = "raise_dead",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.any_dnd.remains < 10 & talent.infected_claws.enabled & ( ( cooldown.vile_contagion.remains || raid_event.adds.exists & raid_event.adds.in > 10 ) & death_knight.fwounded_targets < active_enemies || ! talent.vile_contagion.enabled ) & ( raid_event.adds.remains > 5 || ! raid_event.adds.exists ) || ! talent.infected_claws.enabled )",
								["action"] = "dark_transformation",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.dark_transformation.up",
								["action"] = "empower_rune_weapon",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! buff.dark_transformation.up & cooldown.dark_transformation.remains > 6 || boss & fight_remains < gcd.max",
								["action"] = "sacrificial_pact",
							}, -- [9]
						},
						["precombat"] = {
							{
								["action"] = "raise_dead",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "army_of_the_dead",
								["precombat_time"] = "2",
							}, -- [2]
						},
						["racials"] = {
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 20 & ( cooldown.summon_gargoyle.remains < gcd.max || ! talent.summon_gargoyle.enabled || pet.gargoyle.active & rune < 2 & debuff.festering_wound.stack < 1 )",
								["action"] = "arcane_torrent",
								["description"] = "Racials",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( buff.blood_fury.duration >= pet.gargoyle.remains & pet.gargoyle.active ) || ( ! talent.summon_gargoyle.enabled || cooldown.summon_gargoyle.remains > 60 ) & ( pet.army_ghoul.active & pet.army_ghoul.remains <= buff.blood_fury.duration || pet.apoc_ghoul.active & pet.apoc_ghoul.remains <= buff.blood_fury.duration || active_enemies >= 2 & death_and_decay.ticking ) || boss & fight_remains <= buff.blood_fury.duration",
								["action"] = "blood_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( buff.berserking.duration >= pet.gargoyle.remains & pet.gargoyle.active ) || ( ! talent.summon_gargoyle.enabled || cooldown.summon_gargoyle.remains > 60 ) & ( pet.army_ghoul.active & pet.army_ghoul.remains <= buff.berserking.duration || pet.apoc_ghoul.active & pet.apoc_ghoul.remains <= buff.berserking.duration || active_enemies >= 2 & death_and_decay.ticking ) || boss & fight_remains <= buff.berserking.duration",
								["action"] = "berserking",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up & ( ! talent.festermight.enabled || buff.festermight.remains < target.time_to_die || buff.unholy_strength.remains < target.time_to_die )",
								["action"] = "lights_judgment",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( pet.gargoyle.remains < 15 & pet.gargoyle.active ) || ( ! talent.summon_gargoyle.enabled || cooldown.summon_gargoyle.remains > 60 ) & ( pet.army_ghoul.active & pet.army_ghoul.remains <= 15 || pet.apoc_ghoul.active & pet.apoc_ghoul.remains <= 15 || active_enemies >= 2 & death_and_decay.ticking ) || boss & fight_remains <= 15",
								["action"] = "ancestral_call",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 || ( rune.deficit >= 5 & runic_power.deficit >= 60 )",
								["action"] = "arcane_pulse",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( buff.fireblood.duration >= pet.gargoyle.remains & pet.gargoyle.active ) || ( ! talent.summon_gargoyle.enabled || cooldown.summon_gargoyle.remains > 60 ) & ( pet.army_ghoul.active & pet.army_ghoul.remains <= buff.fireblood.duration || pet.apoc_ghoul.active & pet.apoc_ghoul.remains <= buff.fireblood.duration || active_enemies >= 2 & death_and_decay.ticking ) || boss & fight_remains <= buff.fireblood.duration",
								["action"] = "fireblood",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & ( buff.unholy_strength.up || boss & fight_remains < 5 )",
								["action"] = "bag_of_tricks",
							}, -- [8]
						},
						["trinkets"] = {
							{
								["enabled"] = true,
								["name"] = "gavel_of_the_first_arbiter",
								["action"] = "gavel_of_the_first_arbiter",
								["description"] = "Trinkets",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.is.ruby_whelp_shell || trinket.t1.is.whispering_incarnate_icon",
								["var_name"] = "trinket_1_exclude",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.is.ruby_whelp_shell || trinket.t2.is.whispering_incarnate_icon",
								["var_name"] = "trinket_2_exclude",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.has_use_buff || ( trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff ) & ! variable.trinket_1_exclude",
								["var_name"] = "trinket_1_buffs",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.has_use_buff || ( trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff ) & ! variable.trinket_2_exclude",
								["var_name"] = "trinket_2_buffs",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_1_sync",
								["criteria"] = "variable.trinket_1_buffs & ( trinket.t1.cooldown.duration % 45 = 0 )",
								["value_else"] = "0.5",
								["value"] = "1",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_2_sync",
								["criteria"] = "variable.trinket_2_buffs & ( trinket.t2.cooldown.duration % 45 = 0 )",
								["value_else"] = "0.5",
								["value"] = "1",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.is.algethar_puzzle_box || trinket.t1.is.irideus_fragment || trinket.t1.is.vial_of_animated_blood",
								["var_name"] = "trinket_1_manual",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.is.algethar_puzzle_box || trinket.t2.is.irideus_fragment || trinket.t2.is.vial_of_animated_blood",
								["var_name"] = "trinket_2_manual",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_priority",
								["criteria"] = "! variable.trinket_1_buffs & variable.trinket_2_buffs & ( trinket.t2.has_cooldown & ! variable.trinket_2_exclude || ! trinket.t1.has_cooldown ) || variable.trinket_2_buffs & ( ( trinket.t2.cooldown.duration / trinket.t2.buff_duration ) * ( 1.5 + trinket.t2.has_use_buff ) * ( variable.trinket_2_sync ) ) > ( ( trinket.t1.cooldown.duration / trinket.t1.buff_duration ) * ( 1.5 + trinket.t1.has_use_buff ) * ( variable.trinket_1_sync ) )",
								["value_else"] = "1",
								["value"] = "2",
							}, -- [10]
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["use_off_gcd"] = 1,
								["action"] = "algethar_puzzle_box",
								["criteria"] = "cooldown.summon_gargoyle.remains < 5 & rune <= 4 || ! talent.summon_gargoyle.enabled & pet.army_ghoul.active || active_enemies > 3 & variable.adds_remain & ( buff.dark_transformation.up || talent.bursting_sores.enabled & cooldown.any_dnd.remains < 10 & ! death_and_decay.ticking )",
							}, -- [11]
							{
								["enabled"] = true,
								["name"] = "irideus_fragment",
								["use_off_gcd"] = 1,
								["action"] = "irideus_fragment",
								["criteria"] = "( pet.gargoyle.active & pet.gargoyle.remains < 13 || ! talent.summon_gargoyle.enabled & pet.army_ghoul.active ) || active_enemies > 3 & variable.adds_remain & ( buff.dark_transformation.up || talent.bursting_sores.enabled & death_and_decay.ticking )",
							}, -- [12]
							{
								["enabled"] = true,
								["name"] = "vial_of_animated_blood",
								["use_off_gcd"] = 1,
								["action"] = "vial_of_animated_blood",
								["criteria"] = "pet.apoc_ghoul.active & pet.apoc_ghoul.remains <= 15 || ! talent.apocalypse.enabled & buff.dark_transformation.up || active_enemies > 3 & variable.adds_remain & ( buff.dark_transformation.up || talent.bursting_sores.enabled & death_and_decay.ticking )",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
								["use_off_gcd"] = 1,
								["criteria"] = "! variable.trinket_1_manual & variable.trinket_1_buffs & ( ( ! talent.summon_gargoyle.enabled & ( ( ! talent.army_of_the_dead.enabled || cooldown.army_of_the_dead.remains_expected > 60 || death_knight.disable_aotd ) & ( pet.apoc_ghoul.active || ( ! talent.apocalypse.enabled || active_enemies >= 2 ) & buff.dark_transformation.up ) || pet.army_ghoul.active ) || talent.summon_gargoyle.enabled & pet.gargoyle.active || cooldown.summon_gargoyle.remains > 80 ) & ( pet.apoc_ghoul.active || ( ! talent.apocalypse.enabled || active_enemies >= 2 ) & buff.dark_transformation.up ) & ( variable.trinket_2_exclude || variable.trinket_priority = 1 || trinket.t2.cooldown.remains || ! trinket.t2.has_cooldown ) ) || boss & trinket.t1.buff_duration >= fight_remains",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["slot"] = "trinket2",
								["use_off_gcd"] = 1,
								["criteria"] = "! variable.trinket_2_manual & variable.trinket_2_buffs & ( ( ! talent.summon_gargoyle.enabled & ( ( ! talent.army_of_the_dead.enabled || cooldown.army_of_the_dead.remains_expected > 60 || death_knight.disable_aotd ) & ( pet.apoc_ghoul.active || ( ! talent.apocalypse.enabled || active_enemies >= 2 ) & buff.dark_transformation.up ) || pet.army_ghoul.active ) || talent.summon_gargoyle.enabled & pet.gargoyle.active || cooldown.summon_gargoyle.remains > 80 ) & ( pet.apoc_ghoul.active || ( ! talent.apocalypse.enabled || active_enemies >= 2 ) & buff.dark_transformation.up ) & ( variable.trinket_1_exclude || variable.trinket_priority = 2 || trinket.t1.cooldown.remains || ! trinket.t1.has_cooldown ) ) || boss & trinket.t2.buff_duration >= fight_remains",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
								["use_off_gcd"] = 1,
								["criteria"] = "! variable.trinket_1_manual & ! variable.trinket_1_buffs & ( trinket.t2.cooldown.remains || ! trinket.t2.has_cooldown || ! variable.trinket_2_buffs || ! talent.summon_gargoyle.enabled & ! talent.army_of_the_dead.enabled || ! talent.summon_gargoyle.enabled & talent.army_of_the_dead.enabled & cooldown.army_of_the_dead.remains_expected > 20 || ! talent.summon_gargoyle.enabled & ! talent.army_of_the_dead.enabled & cooldown.dark_transformation.remains > 20 || cooldown.summon_gargoyle.remains > 20 & ! pet.gargoyle.active ) || boss & fight_remains < 15",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["slot"] = "trinket2",
								["use_off_gcd"] = 1,
								["criteria"] = "! variable.trinket_2_manual & ! variable.trinket_2_buffs & ( trinket.t1.cooldown.remains || ! trinket.t1.has_cooldown || ! variable.trinket_1_buffs || ! talent.summon_gargoyle.enabled & ! talent.army_of_the_dead.enabled || ! talent.summon_gargoyle.enabled & talent.army_of_the_dead.enabled & cooldown.army_of_the_dead.remains_expected > 20 || ! talent.summon_gargoyle.enabled & ! talent.army_of_the_dead.enabled & cooldown.dark_transformation.remains > 20 || cooldown.summon_gargoyle.remains > 20 & ! pet.gargoyle.active ) || boss & fight_remains < 15",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( ! variable.trinket_1_buffs || trinket.t1.cooldown.remains ) & ( ! variable.trinket_2_buffs || trinket.t2.cooldown.remains )",
								["action"] = "use_items",
								["use_off_gcd"] = 1,
							}, -- [18]
						},
						["garg_setup"] = {
							{
								["enabled"] = true,
								["criteria"] = "debuff.festering_wound.stack >= 4 & ( buff.commander_of_the_dead.up & pet.gargoyle.remains < 21 || ! talent.commander_of_the_dead.enabled )",
								["action"] = "apocalypse",
								["description"] = "Garg Setup",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.commander_of_the_dead.enabled & ( cooldown.dark_transformation.remains < 3 || buff.commander_of_the_dead.up ) || ! talent.commander_of_the_dead.enabled & talent.unholy_assault.enabled & cooldown.unholy_assault.remains < 10 || ! talent.unholy_assault.enabled & ! talent.commander_of_the_dead.enabled",
								["action"] = "army_of_the_dead",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & target.time_to_pct_35 < 5 & target.time_to_die > 5",
								["action"] = "soul_reaper",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.commander_of_the_dead.up || ! talent.commander_of_the_dead.enabled & runic_power >= 40",
								["action"] = "summon_gargoyle",
								["use_off_gcd"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "pet.gargoyle.active & pet.gargoyle.remains <= 21",
								["action"] = "empower_rune_weapon",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "pet.gargoyle.active & pet.gargoyle.remains <= 21",
								["action"] = "unholy_assault",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( pet.gargoyle.remains < 30 & pet.gargoyle.active ) || ( ! talent.summon_gargoyle.enabled || cooldown.summon_gargoyle.remains > 60 || cooldown.summon_gargoyle.ready ) & ( buff.dark_transformation.up & buff.dark_transformation.remains < 30 || pet.army_ghoul.active & pet.army_ghoul.remains <= 30 || pet.apoc_ghoul.active & pet.apoc_ghoul.remains <= 30 )",
								["action"] = "potion",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.commander_of_the_dead.enabled & runic_power >= 40 || ! talent.commander_of_the_dead.enabled",
								["action"] = "dark_transformation",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! death_and_decay.ticking & debuff.festering_wound.stack > 0",
								["action"] = "any_dnd",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "debuff.festering_wound.stack = 0 || talent.apocalypse.enabled & cooldown.apocalypse.remains < 3 * gcd.max & debuff.festering_wound.stack < 4 || runic_power < 40 || ! talent.apocalypse.enabled",
								["action"] = "festering_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "rune <= 1",
								["action"] = "death_coil",
							}, -- [11]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power || fight_remains < 10",
								["action"] = "epidemic",
								["description"] = "Generic AoE",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "wound_spender",
								["criteria"] = "variable.pop_wounds",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "festering_strike",
								["criteria"] = "! variable.pop_wounds",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power & ! talent.epidemic.enabled",
								["action"] = "death_coil",
							}, -- [4]
						},
					},
					["version"] = 20230520,
					["warnings"] = "The import for 'aoe_setup' required some automated changes.\nLine 1: Converted 'talent.bursting_sores' to 'talent.bursting_sores.enabled' (1x).\nLine 2: Converted 'talent.bursting_sores' to 'talent.bursting_sores.enabled' (1x).\nLine 6: Converted 'talent.epidemic' to 'talent.epidemic.enabled' (1x).\n\nThe import for 'garg_setup' required some automated changes.\nLine 1: Converted 'talent.commander_of_the_dead' to 'talent.commander_of_the_dead.enabled' (1x).\nLine 2: Converted 'talent.commander_of_the_dead' to 'talent.commander_of_the_dead.enabled' (1x).\nLine 2: Converted 'talent.commander_of_the_dead' to 'talent.commander_of_the_dead.enabled' (1x).\nLine 2: Converted 'talent.unholy_assault' to 'talent.unholy_assault.enabled' (1x).\nLine 2: Converted 'talent.unholy_assault' to 'talent.unholy_assault.enabled' (1x).\nLine 2: Converted 'talent.commander_of_the_dead' to 'talent.commander_of_the_dead.enabled' (1x).\nLine 4: Converted 'talent.commander_of_the_dead' to 'talent.commander_of_the_dead.enabled' (1x).\nLine 7: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 8: Converted 'talent.commander_of_the_dead' to 'talent.commander_of_the_dead.enabled' (1x).\nLine 8: Converted 'talent.commander_of_the_dead' to 'talent.commander_of_the_dead.enabled' (1x).\nLine 10: Converted 'talent.apocalypse' to 'talent.apocalypse.enabled' (1x).\nLine 10: Converted 'talent.apocalypse' to 'talent.apocalypse.enabled' (1x).\n\nThe import for 'aoe_burst' required some automated changes.\nLine 1: Converted 'talent.bursting_sores' to 'talent.bursting_sores.enabled' (1x).\nLine 1: Converted 'talent.bursting_sores' to 'talent.bursting_sores.enabled' (1x).\nLine 4: Converted 'talent.epidemic' to 'talent.epidemic.enabled' (1x).\n\nThe import for 'racials' required some automated changes.\nLine 2: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 3: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 4: Converted 'talent.festermight' to 'talent.festermight.enabled' (1x).\nLine 5: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 7: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\n\nThe import for 'high_priority' required some automated changes.\nLine 1: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 2: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 2: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 3: Converted 'talent.epidemic' to 'talent.epidemic.enabled' (1x).\nLine 3: Converted 'talent.commander_of_the_dead' to 'talent.commander_of_the_dead.enabled' (1x).\nLine 4: Converted 'talent.commander_of_the_dead' to 'talent.commander_of_the_dead.enabled' (1x).\nLine 5: Converted 'talent.plaguebringer' to 'talent.plaguebringer.enabled' (1x).\nLine 5: Converted 'talent.superstrain' to 'talent.superstrain.enabled' (1x).\nLine 5: Converted 'talent.unholy_blight' to 'talent.unholy_blight.enabled' (1x).\nLine 6: Converted 'talent.apocalypse' to 'talent.apocalypse.enabled' (1x).\nLine 6: Converted 'talent.morbidity' to 'talent.morbidity.enabled' (1x).\nLine 6: Converted 'talent.morbidity' to 'talent.morbidity.enabled' (1x).\nLine 7: Converted 'talent.superstrain' to 'talent.superstrain.enabled' (1x).\nLine 7: Converted 'talent.unholy_blight' to 'talent.unholy_blight.enabled' (1x).\nLine 7: Converted 'talent.unholy_blight' to 'talent.unholy_blight.enabled' (1x).\nLine 7: Converted 'talent.superstrain' to 'talent.superstrain.enabled' (1x).\nLine 7: Converted 'talent.plaguebringer' to 'talent.plaguebringer.enabled' (1x).\nLine 7: Converted 'talent.ebon_fever' to 'talent.ebon_fever.enabled' (1x).\nLine 7: Converted operations in 'target.time_to_die>dot.virulent_plague.remains&(dot.virulent_plague.refreshable||talent.superstrain.enabled&(dot.frost_fever_superstrain.refreshable||dot.blood_plague_superstrain.refreshable))&(!talent.unholy_blight.enabled||talent.unholy_blight.enabled&cooldown.unholy_blight.remains>15%((talent.superstrain.enabled*3)+(talent.plaguebringer.enabled*2)+(talent.ebon_fever.enabled*2)))' to 'target.time_to_die>dot.virulent_plague.remains&(dot.virulent_plague.refreshable||talent.superstrain.enabled&(dot.frost_fever_superstrain.refreshable||dot.blood_plague_superstrain.refreshable))&(!talent.unholy_blight.enabled||talent.unholy_blight.enabled&cooldown.unholy_blight.remains>15/((talent.superstrain.enabled*3)+(talent.plaguebringer.enabled*2)+(talent.ebon_fever.enabled*2)))'.\n\nThe import for 'generic' required some automated changes.\nLine 3: Converted 'talent.unholy_ground' to 'talent.unholy_ground.enabled' (1x).\n\nThe import for 'aoe_cooldowns' required some automated changes.\nLine 3: Converted 'talent.festermight' to 'talent.festermight.enabled' (1x).\nLine 4: Converted 'talent.bursting_sores' to 'talent.bursting_sores.enabled' (1x).\nLine 4: Converted 'talent.bursting_sores' to 'talent.bursting_sores.enabled' (1x).\nLine 7: Converted 'talent.infected_claws' to 'talent.infected_claws.enabled' (1x).\nLine 7: Converted 'talent.vile_contagion' to 'talent.vile_contagion.enabled' (1x).\nLine 7: Converted 'talent.infected_claws' to 'talent.infected_claws.enabled' (1x).\n\nThe import for 'cooldowns' required some automated changes.\nLine 1: Converted 'talent.commander_of_the_dead' to 'talent.commander_of_the_dead.enabled' (1x).\nLine 5: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 5: Converted 'talent.army_of_the_damned' to 'talent.army_of_the_damned.enabled' (1x).\nLine 5: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 5: Converted 'talent.army_of_the_damned' to 'talent.army_of_the_damned.enabled' (1x).\nLine 5: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 5: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\n\nThe import for 'trinkets' required some automated changes.\nLine 2: Converted 'trinket.1.is.ruby_whelp_shell' to 'trinket.t1.is.ruby_whelp_shell' (1x).\nLine 2: Converted 'trinket.1.is.whispering_incarnate_icon' to 'trinket.t1.is.whispering_incarnate_icon' (1x).\nLine 3: Converted 'trinket.2.is.ruby_whelp_shell' to 'trinket.t2.is.ruby_whelp_shell' (1x).\nLine 3: Converted 'trinket.2.is.whispering_incarnate_icon' to 'trinket.t2.is.whispering_incarnate_icon' (1x).\nLine 4: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_buff.strength' (1x).\nLine 4: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_buff.mastery' (1x).\nLine 4: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_buff.versatility' (1x).\nLine 4: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_buff.haste' (1x).\nLine 4: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_buff.crit' (1x).\nLine 4: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_buff.strength' (1x).\nLine 5: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_buff.mastery' (1x).\nLine 5: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_buff.versatility' (1x).\nLine 5: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_buff.haste' (1x).\nLine 5: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_buff.crit' (1x).\nLine 5: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 6: Converted operations in 'variable.trinket_1_buffs&(trinket.t1.cooldown.duration%%45=0)' to 'variable.trinket_1_buffs&(trinket.t1.cooldown.duration%45=0)'.\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 7: Converted operations in 'variable.trinket_2_buffs&(trinket.t2.cooldown.duration%%45=0)' to 'variable.trinket_2_buffs&(trinket.t2.cooldown.duration%45=0)'.\nLine 8: Converted 'trinket.1.is.algethar_puzzle_box' to 'trinket.t1.is.algethar_puzzle_box' (1x).\nLine 8: Converted 'trinket.1.is.irideus_fragment' to 'trinket.t1.is.irideus_fragment' (1x).\nLine 8: Converted 'trinket.1.is.vial_of_animated_blood' to 'trinket.t1.is.vial_of_animated_blood' (1x).\nLine 9: Converted 'trinket.2.is.algethar_puzzle_box' to 'trinket.t2.is.algethar_puzzle_box' (1x).\nLine 9: Converted 'trinket.2.is.irideus_fragment' to 'trinket.t2.is.irideus_fragment' (1x).\nLine 9: Converted 'trinket.2.is.vial_of_animated_blood' to 'trinket.t2.is.vial_of_animated_blood' (1x).\nLine 10: Converted 'trinket.2.has_cooldown' to 'trinket.t2.has_cooldown' (1x).\nLine 10: Converted 'trinket.1.has_cooldown' to 'trinket.t1.has_cooldown' (1x).\nLine 10: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 10: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 10: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 10: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 10: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_buff.strength' (1x).\nLine 10: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_use_buff' (1x).\nLine 10: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 10: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 10: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 10: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 10: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_buff.strength' (1x).\nLine 10: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_use_buff' (1x).\nLine 10: Converted operations in '!variable.trinket_1_buffs&variable.trinket_2_buffs&(trinket.t2.has_cooldown&!variable.trinket_2_exclude||!trinket.t1.has_cooldown)||variable.trinket_2_buffs&((trinket.t2.cooldown.duration%trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration%trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))' to '!variable.trinket_1_buffs&variable.trinket_2_buffs&(trinket.t2.has_cooldown&!variable.trinket_2_exclude||!trinket.t1.has_cooldown)||variable.trinket_2_buffs&((trinket.t2.cooldown.duration/trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration/trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))'.\nLine 11: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 11: Converted 'talent.bursting_sores' to 'talent.bursting_sores.enabled' (1x).\nLine 12: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 12: Converted 'talent.bursting_sores' to 'talent.bursting_sores.enabled' (1x).\nLine 13: Converted 'talent.apocalypse' to 'talent.apocalypse.enabled' (1x).\nLine 13: Converted 'talent.bursting_sores' to 'talent.bursting_sores.enabled' (1x).\nLine 14: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 14: Converted 'talent.army_of_the_dead' to 'talent.army_of_the_dead.enabled' (1x).\nLine 14: Converted 'talent.apocalypse' to 'talent.apocalypse.enabled' (1x).\nLine 14: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 14: Converted 'talent.apocalypse' to 'talent.apocalypse.enabled' (1x).\nLine 14: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 14: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 14: Converted 'trinket.2.has_cooldown' to 'trinket.t2.has_cooldown' (1x).\nLine 14: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 14: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 15: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 15: Converted 'talent.army_of_the_dead' to 'talent.army_of_the_dead.enabled' (1x).\nLine 15: Converted 'talent.apocalypse' to 'talent.apocalypse.enabled' (1x).\nLine 15: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 15: Converted 'talent.apocalypse' to 'talent.apocalypse.enabled' (1x).\nLine 15: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 15: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 15: Converted 'trinket.1.has_cooldown' to 'trinket.t1.has_cooldown' (1x).\nLine 15: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 15: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 16: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 16: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 16: Converted 'trinket.2.has_cooldown' to 'trinket.t2.has_cooldown' (1x).\nLine 16: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 16: Converted 'talent.army_of_the_dead' to 'talent.army_of_the_dead.enabled' (1x).\nLine 16: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 16: Converted 'talent.army_of_the_dead' to 'talent.army_of_the_dead.enabled' (1x).\nLine 16: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 16: Converted 'talent.army_of_the_dead' to 'talent.army_of_the_dead.enabled' (1x).\nLine 17: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 17: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 17: Converted 'trinket.1.has_cooldown' to 'trinket.t1.has_cooldown' (1x).\nLine 17: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 17: Converted 'talent.army_of_the_dead' to 'talent.army_of_the_dead.enabled' (1x).\nLine 17: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 17: Converted 'talent.army_of_the_dead' to 'talent.army_of_the_dead.enabled' (1x).\nLine 17: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 17: Converted 'talent.army_of_the_dead' to 'talent.army_of_the_dead.enabled' (1x).\nLine 18: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 18: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 18: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 18: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nThe following auras were used in the action list but were not found in the addon database:\n - crit\n\nThe import for 'default' required some automated changes.\nLine 3: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 4: Converted 'talent.assimilation' to 'talent.assimilation.enabled' (1x).\nLine 4: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 5: Converted 'talent.improved_death_coil' to 'talent.improved_death_coil.enabled' (1x).\nLine 5: Converted 'talent.coil_of_devastation' to 'talent.coil_of_devastation.enabled' (1x).\nLine 5: Converted 'talent.coil_of_devastation' to 'talent.coil_of_devastation.enabled' (1x).\nLine 5: Converted 'talent.improved_death_coil' to 'talent.improved_death_coil.enabled' (1x).\nLine 6: Converted 'talent.apocalypse' to 'talent.apocalypse.enabled' (1x).\nLine 6: Converted 'talent.summon_gargoyle' to 'talent.summon_gargoyle.enabled' (1x).\nLine 8: Converted 'talent.infected_claws' to 'talent.infected_claws.enabled' (1x).\nLine 8: Converted 'talent.festermight' to 'talent.festermight.enabled' (1x).\nLine 8: Converted operations in '!pet.gargoyle.active&talent.festermight.enabled&buff.festermight.up&(buff.festermight.remains%(5*gcd.max))>=1' to '!pet.gargoyle.active&talent.festermight.enabled&buff.festermight.up&(buff.festermight.remains/(5*gcd.max))>=1'.\nLine 9: Converted 'talent.apocalypse' to 'talent.apocalypse.enabled' (1x).\nLine 9: Converted 'talent.apocalypse' to 'talent.apocalypse.enabled' (1x).\nLine 9: Converted 'talent.unholy_assault' to 'talent.unholy_assault.enabled' (1x).\nLine 10: Converted 'talent.vile_contagion' to 'talent.vile_contagion.enabled' (1x).\n\nThe import for 'aoe' required some automated changes.\nLine 4: Converted 'talent.epidemic' to 'talent.epidemic.enabled' (1x).\n\nImported 12 action lists.\n",
					["author"] = "SimulationCraft",
					["profile"] = "actions.precombat+=/raise_dead\nactions.precombat+=/army_of_the_dead,precombat_time=2\n\nactions+=/mind_freeze\nactions+=/strangulate\nactions+=/antimagic_shell,if=runic_power.deficit>40&(pet.gargoyle.active||!talent.summon_gargoyle||cooldown.summon_gargoyle.remains>cooldown.antimagic_shell.duration)\nactions+=/antimagic_zone,if=death_knight.amz_absorb_percent>0&runic_power.deficit>70&talent.assimilation&(pet.gargoyle.active||!talent.summon_gargoyle)\n# Variables\nactions+=/variable,name=epidemic_priority,op=setif,value=1,value_else=0,condition=talent.improved_death_coil&!talent.coil_of_devastation&active_enemies>=3||talent.coil_of_devastation&active_enemies>=4||!talent.improved_death_coil&active_enemies>=2\nactions+=/variable,name=garg_setup,op=setif,value=1,value_else=0,condition=active_enemies>=3||cooldown.summon_gargoyle.remains>1&cooldown.apocalypse.remains>1||!talent.apocalypse&cooldown.summon_gargoyle.remains>1||!talent.summon_gargoyle||time>20\nactions+=/variable,name=apoc_timing,op=setif,value=10,value_else=2,condition=cooldown.apocalypse.remains<10&debuff.festering_wound.stack<=4&cooldown.unholy_assault.remains>10\nactions+=/variable,name=festermight_tracker,op=setif,value=debuff.festering_wound.stack>=1,value_else=debuff.festering_wound.stack>=(3-talent.infected_claws),condition=!pet.gargoyle.active&talent.festermight&buff.festermight.up&(buff.festermight.remains%(5*gcd.max))>=1\nactions+=/variable,name=pop_wounds,op=setif,value=1,value_else=0,condition=(cooldown.apocalypse.remains>variable.apoc_timing||!talent.apocalypse)&(variable.festermight_tracker||debuff.festering_wound.stack>=1&!talent.apocalypse||debuff.festering_wound.stack>=1&cooldown.unholy_assault.remains<20&talent.unholy_assault&variable.st_planning||debuff.rotten_touch.up&debuff.festering_wound.stack>=1||debuff.festering_wound.stack>4)||fight_remains<5&debuff.festering_wound.stack>=1\nactions+=/variable,name=pooling_runic_power,op=setif,value=1,value_else=0,condition=talent.vile_contagion&cooldown.vile_contagion.remains<3&runic_power<60&!variable.st_planning\nactions+=/variable,name=st_planning,op=setif,value=1,value_else=0,condition=active_enemies<=3&(!raid_event.adds.exists||raid_event.adds.in>15)\nactions+=/variable,name=adds_remain,op=setif,value=1,value_else=0,condition=active_enemies>=4&(!raid_event.adds.exists||raid_event.adds.exists&raid_event.adds.remains>6)\n## Use <a href='https://www.wowhead.com/spell=10060/power-infusion'>Power Infusion</a> while <a href='https://www.wowhead.com/spell=49206/summon-gargoyle'>Gargoyle</a> is up, as well as <a href='https://www.wowhead.com/spell=275699/apocalypse'>Apocalypse</a> or with <a href='https://www.wowhead.com/spell=63560/dark-transformation'>Dark Transformation</a> if <a href='https://www.wowhead.com/spell=275699/apocalypse'>Apocalypse</a> or <a href='https://www.wowhead.com/spell=49206/summon-gargoyle'>Gargoyle</a> are not talented\n## actions+=/invoke_external_buff,name=power_infusion,if=variable.st_planning&(pet.gargoyle.active&pet.gargoyle.remains<=20||!talent.summon_gargoyle&talent.army_of_the_dead&pet.army_ghoul.active&pet.apoc_ghoul.active||!talent.summon_gargoyle&!talent.army_of_the_dead&buff.dark_transformation.up||!talent.summon_gargoyle&buff.dark_transformation.up||!pet.gargoyle.active&cooldown.summon_gargoyle.remains+5>cooldown.invoke_external_buff.duration||active_enemies>=3&(buff.dark_transformation.up||death_and_decay.ticking))||boss&fight_remains<=21\n# Call Action Lists\nactions+=/call_action_list,name=high_priority\nactions+=/call_action_list,name=trinkets\nactions+=/run_action_list,name=garg_setup,strict=1,if=variable.garg_setup=0\nactions+=/call_action_list,name=cooldowns,strict=1,if=variable.st_planning\nactions+=/call_action_list,name=aoe_cooldowns,strict=1,if=variable.adds_remain\nactions+=/call_action_list,name=racials\nactions+=/call_action_list,name=aoe_setup,if=variable.adds_remain&cooldown.any_dnd.remains<10&!death_and_decay.ticking\nactions+=/call_action_list,name=aoe_burst,strict=1,if=active_enemies>=4&death_and_decay.ticking\nactions+=/call_action_list,name=aoe,if=active_enemies>=4&(cooldown.any_dnd.remains>10&!death_and_decay.ticking||!variable.adds_remain)\nactions+=/call_action_list,name=generic,strict=1,if=active_enemies<=3\n\n# Generic AoE\nactions.aoe+=/epidemic,if=!variable.pooling_runic_power||fight_remains<10\nactions.aoe+=/wound_spender,cycle_targets=1,if=variable.pop_wounds\nactions.aoe+=/festering_strike,cycle_targets=1,if=!variable.pop_wounds\nactions.aoe+=/death_coil,if=!variable.pooling_runic_power&!talent.epidemic\n\n# AoE Burst\nactions.aoe_burst+=/epidemic,if=(!talent.bursting_sores||rune<1||talent.bursting_sores&debuff.festering_wound.stack=0)&!variable.pooling_runic_power&(active_enemies>=6||runic_power.deficit<30||buff.festermight.stack=20)\nactions.aoe_burst+=/wound_spender,cycle_targets=1,if=debuff.festering_wound.stack>=1\nactions.aoe_burst+=/epidemic,if=!variable.pooling_runic_power||fight_remains<10\nactions.aoe_burst+=/death_coil,if=!variable.pooling_runic_power&!talent.epidemic\nactions.aoe_burst+=/wound_spender\n\n# AoE Cooldowns\nactions.aoe_cooldowns+=/vile_contagion,cycle_targets=1,if=debuff.festering_wound.stack>=4&cooldown.any_dnd.remains<3\nactions.aoe_cooldowns+=/summon_gargoyle\nactions.aoe_cooldowns+=/abomination_limb,if=rune<2||buff.festermight.stack>10||!talent.festermight||buff.festermight.up&buff.festermight.remains<12\nactions.aoe_cooldowns+=/apocalypse,cycle_targets=1,if=talent.bursting_sores&debuff.festering_wound.up&(!death_and_decay.ticking&cooldown.death_and_decay.remains&rune<3||death_and_decay.ticking&rune=0)||!talent.bursting_sores&debuff.festering_wound.stack>=4\nactions.aoe_cooldowns+=/unholy_assault,cycle_targets=1,if=debuff.festering_wound.stack<=2||buff.dark_transformation.up\nactions.aoe_cooldowns+=/raise_dead,if=!pet.ghoul.active\nactions.aoe_cooldowns+=/dark_transformation,if=(cooldown.any_dnd.remains<10&talent.infected_claws&((cooldown.vile_contagion.remains||raid_event.adds.exists&raid_event.adds.in>10)&death_knight.fwounded_targets<active_enemies||!talent.vile_contagion)&(raid_event.adds.remains>5||!raid_event.adds.exists)||!talent.infected_claws)\nactions.aoe_cooldowns+=/empower_rune_weapon,if=buff.dark_transformation.up\nactions.aoe_cooldowns+=/sacrificial_pact,if=!buff.dark_transformation.up&cooldown.dark_transformation.remains>6||boss&fight_remains<gcd\n\n# AoE Setup\nactions.aoe_setup+=/any_dnd,if=(!talent.bursting_sores||death_knight.fwounded_targets>=cycle_enemies||death_knight.fwounded_targets>=8||raid_event.adds.exists&raid_event.adds.remains<=11&raid_event.adds.remains>5)\nactions.aoe_setup+=/festering_strike,cycle_targets=1,if=death_knight.fwounded_targets<active_enemies&talent.bursting_sores\nactions.aoe_setup+=/epidemic,if=!variable.pooling_runic_power||fight_remains<10\nactions.aoe_setup+=/festering_strike,cycle_targets=1,if=death_knight.fwounded_targets<active_enemies\nactions.aoe_setup+=/festering_strike,cycle_targets=1,if=cooldown.apocalypse.remains<variable.apoc_timing&debuff.festering_wound.stack<4\nactions.aoe_setup+=/death_coil,if=!variable.pooling_runic_power&!talent.epidemic\n\n# ST/Cleave Cooldowns\nactions.cooldowns+=/summon_gargoyle,if=buff.commander_of_the_dead.up||!talent.commander_of_the_dead\nactions.cooldowns+=/raise_dead,if=!pet.ghoul.active\nactions.cooldowns+=/dark_transformation,if=cooldown.apocalypse.remains<5\nactions.cooldowns+=/apocalypse,cycle_targets=1,if=variable.st_planning&debuff.festering_wound.stack>=4\nactions.cooldowns+=/empower_rune_weapon,if=variable.st_planning&(pet.gargoyle.active&pet.gargoyle.remains<=21||!talent.summon_gargoyle&talent.army_of_the_damned&pet.army_ghoul.active&pet.apoc_ghoul.active||!talent.summon_gargoyle&!talent.army_of_the_damned&buff.dark_transformation.up||!talent.summon_gargoyle&!talent.summon_gargoyle&buff.dark_transformation.up)||boss&fight_remains<=21\nactions.cooldowns+=/abomination_limb,if=rune<3&variable.st_planning\nactions.cooldowns+=/unholy_assault,cycle_targets=1,if=variable.st_planning\nactions.cooldowns+=/soul_reaper,if=active_enemies=1&target.time_to_pct_35<5&target.time_to_die>5\nactions.cooldowns+=/soul_reaper,cycle_targets=1,if=target.time_to_pct_35<5&active_enemies>=2&target.time_to_die>(dot.soul_reaper.remains+5)\n\n# Garg Setup\nactions.garg_setup+=/apocalypse,if=debuff.festering_wound.stack>=4&(buff.commander_of_the_dead.up&pet.gargoyle.remains<21||!talent.commander_of_the_dead)\nactions.garg_setup+=/army_of_the_dead,if=talent.commander_of_the_dead&(cooldown.dark_transformation.remains<3||buff.commander_of_the_dead.up)||!talent.commander_of_the_dead&talent.unholy_assault&cooldown.unholy_assault.remains<10||!talent.unholy_assault&!talent.commander_of_the_dead\nactions.garg_setup+=/soul_reaper,if=active_enemies=1&target.time_to_pct_35<5&target.time_to_die>5\nactions.garg_setup+=/summon_gargoyle,use_off_gcd=1,if=buff.commander_of_the_dead.up||!talent.commander_of_the_dead&runic_power>=40\nactions.garg_setup+=/empower_rune_weapon,if=pet.gargoyle.active&pet.gargoyle.remains<=21\nactions.garg_setup+=/unholy_assault,if=pet.gargoyle.active&pet.gargoyle.remains<=21\nactions.garg_setup+=/potion,if=(pet.gargoyle.remains<30&pet.gargoyle.active)||(!talent.summon_gargoyle||cooldown.summon_gargoyle.remains>60||cooldown.summon_gargoyle.ready)&(buff.dark_transformation.up&buff.dark_transformation.remains<30||pet.army_ghoul.active&pet.army_ghoul.remains<=30||pet.apoc_ghoul.active&pet.apoc_ghoul.remains<=30)\nactions.garg_setup+=/dark_transformation,if=talent.commander_of_the_dead&runic_power>=40||!talent.commander_of_the_dead\nactions.garg_setup+=/any_dnd,if=!death_and_decay.ticking&debuff.festering_wound.stack>0\nactions.garg_setup+=/festering_strike,if=debuff.festering_wound.stack=0||talent.apocalypse&cooldown.apocalypse.remains<3*gcd.max&debuff.festering_wound.stack<4||runic_power<40||!talent.apocalypse\nactions.garg_setup+=/death_coil,if=rune<=1\n\n# Generic\nactions.generic+=/death_coil,if=!variable.epidemic_priority&(!variable.pooling_runic_power&(rune<3||pet.gargoyle.active||buff.sudden_doom.react||cooldown.apocalypse.remains<10&debuff.festering_wound.stack>3)||boss&fight_remains<10)\nactions.generic+=/epidemic,if=variable.epidemic_priority&(!variable.pooling_runic_power&(rune<3||pet.gargoyle.active||buff.sudden_doom.react||cooldown.apocalypse.remains<10&debuff.festering_wound.stack>3)||boss&fight_remains<10)\nactions.generic+=/any_dnd,if=!death_and_decay.ticking&(active_enemies>=2||talent.unholy_ground&(pet.apoc_ghoul.active&pet.apoc_ghoul.remains>=10||pet.gargoyle.active&pet.gargoyle.remains>5||pet.army_ghoul.active&pet.army_ghoul.remains>5))&death_knight.fwounded_targets>=cycle_enemies\nactions.generic+=/wound_spender,cycle_targets=1,if=variable.pop_wounds||active_enemies>=2&death_and_decay.ticking\nactions.generic+=/festering_strike,cycle_targets=1,if=!variable.pop_wounds\nactions.generic+=/death_coil\n\n# Priority Actions\nactions.high_priority+=/potion,if=pet.gargoyle.remains<=30||(!talent.summon_gargoyle||cooldown.summon_gargoyle.remains>60||cooldown.summon_gargoyle.ready)&(buff.dark_transformation.up&30>=buff.dark_transformation.remains||pet.army_ghoul.active&pet.army_ghoul.remains<=30||pet.apoc_ghoul.active&pet.apoc_ghoul.remains<=30)||boss&fight_remains<=30\nactions.high_priority+=/army_of_the_dead,if=talent.summon_gargoyle&cooldown.summon_gargoyle.remains<2||!talent.summon_gargoyle||boss&fight_remains<35\nactions.high_priority+=/death_coil,if=(active_enemies<=3||!talent.epidemic)&(pet.gargoyle.active&talent.commander_of_the_dead&buff.commander_of_the_dead.up&cooldown.apocalypse.remains<5&buff.commander_of_the_dead.remains>26||debuff.death_rot.up&debuff.death_rot.remains<gcd.max)\nactions.high_priority+=/epidemic,if=active_enemies>=4&(talent.commander_of_the_dead&buff.commander_of_the_dead.up&cooldown.apocalypse.remains<5||debuff.death_rot.up&debuff.death_rot.remains<gcd.max)\nactions.high_priority+=/wound_spender,if=debuff.festering_wound.up&(cooldown.apocalypse.remains>variable.apoc_timing+3||active_enemies>=3)&talent.plaguebringer&(talent.superstrain||talent.unholy_blight)&buff.plaguebringer.remains<gcd\nactions.high_priority+=/unholy_blight,if=variable.st_planning&((!talent.apocalypse||cooldown.apocalypse.remains)&talent.morbidity||!talent.morbidity)||variable.adds_remain||boss&fight_remains<21\nactions.high_priority+=/outbreak,cycle_targets=1,if=target.time_to_die>dot.virulent_plague.remains&(dot.virulent_plague.refreshable||talent.superstrain&(dot.frost_fever_superstrain.refreshable||dot.blood_plague_superstrain.refreshable))&(!talent.unholy_blight||talent.unholy_blight&cooldown.unholy_blight.remains>15%((talent.superstrain*3)+(talent.plaguebringer*2)+(talent.ebon_fever*2)))\n\n# Racials\nactions.racials+=/arcane_torrent,if=runic_power.deficit>20&(cooldown.summon_gargoyle.remains<gcd.max||!talent.summon_gargoyle.enabled||pet.gargoyle.active&rune<2&debuff.festering_wound.stack<1)\nactions.racials+=/blood_fury,if=(buff.blood_fury.duration>=pet.gargoyle.remains&pet.gargoyle.active)||(!talent.summon_gargoyle||cooldown.summon_gargoyle.remains>60)&(pet.army_ghoul.active&pet.army_ghoul.remains<=buff.blood_fury.duration||pet.apoc_ghoul.active&pet.apoc_ghoul.remains<=buff.blood_fury.duration||active_enemies>=2&death_and_decay.ticking)||boss&fight_remains<=buff.blood_fury.duration\nactions.racials+=/berserking,if=(buff.berserking.duration>=pet.gargoyle.remains&pet.gargoyle.active)||(!talent.summon_gargoyle||cooldown.summon_gargoyle.remains>60)&(pet.army_ghoul.active&pet.army_ghoul.remains<=buff.berserking.duration||pet.apoc_ghoul.active&pet.apoc_ghoul.remains<=buff.berserking.duration||active_enemies>=2&death_and_decay.ticking)||boss&fight_remains<=buff.berserking.duration\nactions.racials+=/lights_judgment,if=buff.unholy_strength.up&(!talent.festermight||buff.festermight.remains<target.time_to_die||buff.unholy_strength.remains<target.time_to_die)\nactions.racials+=/ancestral_call,if=(pet.gargoyle.remains<15&pet.gargoyle.active)||(!talent.summon_gargoyle||cooldown.summon_gargoyle.remains>60)&(pet.army_ghoul.active&pet.army_ghoul.remains<=15||pet.apoc_ghoul.active&pet.apoc_ghoul.remains<=15||active_enemies>=2&death_and_decay.ticking)||boss&fight_remains<=15\nactions.racials+=/arcane_pulse,if=active_enemies>=2||(rune.deficit>=5&runic_power.deficit>=60)\nactions.racials+=/fireblood,if=(buff.fireblood.duration>=pet.gargoyle.remains&pet.gargoyle.active)||(!talent.summon_gargoyle||cooldown.summon_gargoyle.remains>60)&(pet.army_ghoul.active&pet.army_ghoul.remains<=buff.fireblood.duration||pet.apoc_ghoul.active&pet.apoc_ghoul.remains<=buff.fireblood.duration||active_enemies>=2&death_and_decay.ticking)||boss&fight_remains<=buff.fireblood.duration\nactions.racials+=/bag_of_tricks,if=active_enemies=1&(buff.unholy_strength.up||boss&fight_remains<5)\n\n# Trinkets\nactions.trinkets=use_item,name=gavel_of_the_first_arbiter\nactions.trinkets+=/variable,name=trinket_1_exclude,value=trinket.1.is.ruby_whelp_shell||trinket.1.is.whispering_incarnate_icon\nactions.trinkets+=/variable,name=trinket_2_exclude,value=trinket.2.is.ruby_whelp_shell||trinket.2.is.whispering_incarnate_icon\nactions.trinkets+=/variable,name=trinket_1_buffs,value=trinket.1.has_use_buff||(trinket.1.has_buff.strength||trinket.1.has_buff.mastery||trinket.1.has_buff.versatility||trinket.1.has_buff.haste||trinket.1.has_buff.crit)&!variable.trinket_1_exclude\nactions.trinkets+=/variable,name=trinket_2_buffs,value=trinket.2.has_use_buff||(trinket.2.has_buff.strength||trinket.2.has_buff.mastery||trinket.2.has_buff.versatility||trinket.2.has_buff.haste||trinket.2.has_buff.crit)&!variable.trinket_2_exclude\nactions.trinkets+=/variable,name=trinket_1_sync,op=setif,value=1,value_else=0.5,condition=variable.trinket_1_buffs&(trinket.1.cooldown.duration%%45=0)\nactions.trinkets+=/variable,name=trinket_2_sync,op=setif,value=1,value_else=0.5,condition=variable.trinket_2_buffs&(trinket.2.cooldown.duration%%45=0)\nactions.trinkets+=/variable,name=trinket_1_manual,value=trinket.1.is.algethar_puzzle_box||trinket.1.is.irideus_fragment||trinket.1.is.vial_of_animated_blood\nactions.trinkets+=/variable,name=trinket_2_manual,value=trinket.2.is.algethar_puzzle_box||trinket.2.is.irideus_fragment||trinket.2.is.vial_of_animated_blood\nactions.trinkets+=/variable,name=trinket_priority,op=setif,value=2,value_else=1,condition=!variable.trinket_1_buffs&variable.trinket_2_buffs&(trinket.2.has_cooldown&!variable.trinket_2_exclude||!trinket.1.has_cooldown)||variable.trinket_2_buffs&((trinket.2.cooldown.duration%trinket.2.proc.any_dps.duration)*(1.5+trinket.2.has_buff.strength)*(variable.trinket_2_sync))>((trinket.1.cooldown.duration%trinket.1.proc.any_dps.duration)*(1.5+trinket.1.has_buff.strength)*(variable.trinket_1_sync))\nactions.trinkets+=/use_item,use_off_gcd=1,name=algethar_puzzle_box,if=cooldown.summon_gargoyle.remains<5&rune<=4||!talent.summon_gargoyle&pet.army_ghoul.active||active_enemies>3&variable.adds_remain&(buff.dark_transformation.up||talent.bursting_sores&cooldown.any_dnd.remains<10&!death_and_decay.ticking)\nactions.trinkets+=/use_item,use_off_gcd=1,name=irideus_fragment,if=(pet.gargoyle.active&pet.gargoyle.remains<13||!talent.summon_gargoyle&pet.army_ghoul.active)||active_enemies>3&variable.adds_remain&(buff.dark_transformation.up||talent.bursting_sores&death_and_decay.ticking)\nactions.trinkets+=/use_item,use_off_gcd=1,name=vial_of_animated_blood,if=pet.apoc_ghoul.active&pet.apoc_ghoul.remains<=15||!talent.apocalypse&buff.dark_transformation.up||active_enemies>3&variable.adds_remain&(buff.dark_transformation.up||talent.bursting_sores&death_and_decay.ticking)\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket1,if=!variable.trinket_1_manual&variable.trinket_1_buffs&((!talent.summon_gargoyle&((!talent.army_of_the_dead||cooldown.army_of_the_dead.remains_expected>60||death_knight.disable_aotd)&(pet.apoc_ghoul.active||(!talent.apocalypse||active_enemies>=2)&buff.dark_transformation.up)||pet.army_ghoul.active)||talent.summon_gargoyle&pet.gargoyle.active||cooldown.summon_gargoyle.remains>80)&(pet.apoc_ghoul.active||(!talent.apocalypse||active_enemies>=2)&buff.dark_transformation.up)&(variable.trinket_2_exclude||variable.trinket_priority=1||trinket.2.cooldown.remains||!trinket.2.has_cooldown))||boss&trinket.1.proc.any_dps.duration>=fight_remains\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket2,if=!variable.trinket_2_manual&variable.trinket_2_buffs&((!talent.summon_gargoyle&((!talent.army_of_the_dead||cooldown.army_of_the_dead.remains_expected>60||death_knight.disable_aotd)&(pet.apoc_ghoul.active||(!talent.apocalypse||active_enemies>=2)&buff.dark_transformation.up)||pet.army_ghoul.active)||talent.summon_gargoyle&pet.gargoyle.active||cooldown.summon_gargoyle.remains>80)&(pet.apoc_ghoul.active||(!talent.apocalypse||active_enemies>=2)&buff.dark_transformation.up)&(variable.trinket_1_exclude||variable.trinket_priority=2||trinket.1.cooldown.remains||!trinket.1.has_cooldown))||boss&trinket.2.proc.any_dps.duration>=fight_remains\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket1,if=!variable.trinket_1_manual&!variable.trinket_1_buffs&(trinket.2.cooldown.remains||!trinket.2.has_cooldown||!variable.trinket_2_buffs||!talent.summon_gargoyle&!talent.army_of_the_dead||!talent.summon_gargoyle&talent.army_of_the_dead&cooldown.army_of_the_dead.remains_expected>20||!talent.summon_gargoyle&!talent.army_of_the_dead&cooldown.dark_transformation.remains>20||cooldown.summon_gargoyle.remains>20&!pet.gargoyle.active)||boss&fight_remains<15\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket2,if=!variable.trinket_2_manual&!variable.trinket_2_buffs&(trinket.1.cooldown.remains||!trinket.1.has_cooldown||!variable.trinket_1_buffs||!talent.summon_gargoyle&!talent.army_of_the_dead||!talent.summon_gargoyle&talent.army_of_the_dead&cooldown.army_of_the_dead.remains_expected>20||!talent.summon_gargoyle&!talent.army_of_the_dead&cooldown.dark_transformation.remains>20||cooldown.summon_gargoyle.remains>20&!pet.gargoyle.active)||boss&fight_remains<15\nactions.trinkets+=/use_items,use_off_gcd=1,if=(!variable.trinket_1_buffs||trinket.1.cooldown.remains)&(!variable.trinket_2_buffs||trinket.2.cooldown.remains)",
				},
				["Frost DK"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230528,
					["author"] = "SimC",
					["desc"] = "2023-05-28: Minor priority update.\n\n2023-05-24:  Update Obliterate usage with T30.\n\n2023-05-21:  Minor updates.\n\n2023-04-30:  Trinket logic updated from SimC.\n\n2023-03-27:  Minor SimC updates.\n\n2023-03-25:  Updates (mainly to Obliteration).\n\n2023-03-21:  Fix Breath of Sindragosa.\n\n2023-03-13:  Updates for 10.0.7.\n\n2023-02-20:  Additional adjustments for leveling and/or taking Obliteration without ERW.\n\n2023-02-19:  Adjusted variable.pooling_runes such that you are not pooling when you are already at max runes.  It is unclear why this check isn't needed in SimulationCraft, but is required in-game.",
					["lists"] = {
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.rw_buffs || variable.adds_remain",
								["action"] = "remorseless_winter",
								["description"] = "Single Target Rotation",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.stack < 2 & runic_power.deficit < 20 & ! variable.two_hand_check",
								["action"] = "frost_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up & set_bonus.tier30_2pc & buff.killing_machine.stack < 2",
								["action"] = "howling_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up & variable.frostscythe_priority",
								["action"] = "frostscythe",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.react",
								["action"] = "obliterate",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up & talent.icebreaker.rank = 2",
								["action"] = "howling_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "rune < 4 & runic_power.deficit > 25 & talent.obliteration.enabled & talent.breath_of_sindragosa.enabled",
								["action"] = "horn_of_winter",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power & ( variable.rp_buffs || runic_power.deficit < 25 || debuff.razorice.stack = 5 & talent.shattering_blade.enabled )",
								["action"] = "frost_strike",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.rime_buffs",
								["action"] = "howling_blast",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power & ! death_knight.runeforge.razorice & ( debuff.razorice.stack < 5 || debuff.razorice.remains < gcd.max * 3 )",
								["action"] = "glacial_advance",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runes",
								["action"] = "obliterate",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "rune < 4 & runic_power.deficit > 25 & ( ! talent.breath_of_sindragosa.enabled || cooldown.breath_of_sindragosa.remains > cooldown.horn_of_winter.duration )",
								["action"] = "horn_of_winter",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 20",
								["action"] = "arcane_torrent",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power",
								["action"] = "frost_strike",
							}, -- [14]
						},
						["cold_heart"] = {
							{
								["enabled"] = true,
								["criteria"] = "boss & fight_remains < gcd.max & ( rune < 2 || ! buff.killing_machine.up & ( ! variable.two_hand_check & buff.cold_heart.stack >= 4 || variable.two_hand_check & buff.cold_heart.stack > 8 ) || buff.killing_machine.up & ( ! variable.two_hand_check & buff.cold_heart.stack > 8 || variable.two_hand_check & buff.cold_heart.stack > 10 ) )",
								["action"] = "chains_of_ice",
								["description"] = "Cold Heart",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! talent.obliteration.enabled & buff.pillar_of_frost.up & buff.cold_heart.stack >= 10 & ( buff.pillar_of_frost.remains < gcd.max * ( 1 + ( talent.frostwyrms_fury.enabled & cooldown.frostwyrms_fury.ready ) ) || buff.unholy_strength.up & buff.unholy_strength.remains < gcd.max )",
								["action"] = "chains_of_ice",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.obliteration.enabled & death_knight.runeforge.fallen_crusader & ! buff.pillar_of_frost.up & cooldown.pillar_of_frost.remains_expected > 15 & ( buff.cold_heart.stack >= 10 & buff.unholy_strength.up || buff.cold_heart.stack >= 13 )",
								["action"] = "chains_of_ice",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! talent.obliteration.enabled & ! death_knight.runeforge.fallen_crusader & buff.cold_heart.stack >= 10 & ! buff.pillar_of_frost.up & cooldown.pillar_of_frost.remains_expected > 20",
								["action"] = "chains_of_ice",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.obliteration.enabled & ! buff.pillar_of_frost.up & ( buff.cold_heart.stack >= 14 & ( buff.unholy_strength.up || buff.chaos_bane.up ) || buff.cold_heart.stack >= 19 || cooldown.pillar_of_frost.remains_expected < 3 & buff.cold_heart.stack >= 14 )",
								["action"] = "chains_of_ice",
							}, -- [5]
						},
						["obliteration"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "remorseless_winter",
								["description"] = "Obliteration Active Rotation",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.stack < 2 & buff.pillar_of_frost.remains < gcd.max & buff.rime.up",
								["action"] = "howling_blast",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.stack < 2 & buff.pillar_of_frost.remains < gcd.max",
								["action"] = "frost_strike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.stack < 2 & buff.pillar_of_frost.remains < gcd.max & ! death_and_decay.ticking",
								["action"] = "glacial_advance",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "buff.killing_machine.up & ! variable.frostscythe_priority",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up & variable.frostscythe_priority",
								["action"] = "frostscythe",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking & ! buff.killing_machine.up",
								["action"] = "howling_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! death_knight.runeforge.razorice & ! buff.killing_machine.react & ( debuff.razorice.stack < 5 || debuff.razorice.remains < gcd.max * 3 )",
								["action"] = "glacial_advance",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["criteria"] = "! buff.killing_machine.up & ( rune < 2 || variable.rp_buffs || debuff.razorice.stack = 5 & talent.shattering_blade.enabled ) & ! variable.pooling_runic_power & ( ! talent.glacial_advance.enabled || active_enemies = 1 )",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up & ! buff.killing_machine.up",
								["action"] = "howling_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power & variable.rp_buffs & ! buff.killing_machine.up & active_enemies >= 2",
								["action"] = "glacial_advance",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["criteria"] = "! buff.killing_machine.up & ! variable.pooling_runic_power & ( ! talent.glacial_advance.enabled || active_enemies = 1 )",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! buff.killing_machine.up & runic_power < 25",
								["action"] = "howling_blast",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "rune < 1 & runic_power < 25",
								["action"] = "arcane_torrent",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power & active_enemies >= 2",
								["action"] = "glacial_advance",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["criteria"] = "! variable.pooling_runic_power & ( ! talent.glacial_advance.enabled || active_enemies = 1 )",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["cycle_targets"] = 1,
							}, -- [18]
						},
						["breath"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.rw_buffs || variable.adds_remain",
								["action"] = "remorseless_winter",
								["description"] = "Breath Active Rotation",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.rime_buffs & runic_power > ( 45 - talent.rage_of_the_frozen_champion.enabled * 8 )",
								["action"] = "howling_blast",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "rune < 2 & runic_power.deficit > 25",
								["action"] = "horn_of_winter",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "buff.killing_machine.up & ! variable.frostscythe_priority",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up & variable.frostscythe_priority",
								["action"] = "frostscythe",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.frostscythe_priority & runic_power > 45",
								["action"] = "frostscythe",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "runic_power.deficit > 40 || buff.pillar_of_frost.up & runic_power.deficit > 15",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! death_and_decay.ticking & runic_power < 32 & rune.time_to_2 > runic_power / 16",
								["action"] = "death_and_decay",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "runic_power < 32 & rune.time_to_2 > runic_power / 16",
								["action"] = "remorseless_winter",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "runic_power < 32 & rune.time_to_2 > runic_power / 16",
								["action"] = "howling_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "runic_power.deficit > 25",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "runic_power < 60",
								["action"] = "arcane_torrent",
							}, -- [13]
						},
						["breath_oblit"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up & variable.frostscythe_priority",
								["action"] = "frostscythe",
								["description"] = "Breath & Obliteration Active Rotation",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "buff.killing_machine.up",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.killing_machine.up",
								["action"] = "howling_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 25",
								["action"] = "horn_of_winter",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 20",
								["action"] = "arcane_torrent",
							}, -- [6]
						},
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "strangulate",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 40",
								["action"] = "antimagic_shell",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "death_knight.amz_absorb_percent > 0 & runic_power.deficit > 70 & talent.assimilation.enabled & ( buff.breath_of_sindragosa.up & cooldown.empower_rune_weapon.charges < 2 || ! talent.breath_of_sindragosa.enabled & ! buff.pillar_of_frost.up )",
								["action"] = "antimagic_zone",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "active_enemies = 1 & ( raid_event.adds.in > 15 || ! raid_event.adds.exists )",
								["var_name"] = "st_planning",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "active_enemies >= 2 & ( ! raid_event.adds.exists || raid_event.adds.exists & raid_event.adds.remains > 5 )",
								["var_name"] = "adds_remain",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.rime.up & ( talent.rage_of_the_frozen_champion.enabled || talent.avalanche.enabled || talent.icebreaker.enabled )",
								["var_name"] = "rime_buffs",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.unleashed_frenzy.enabled & ( buff.unleashed_frenzy.remains < gcd.max * 3 || buff.unleashed_frenzy.stack < 3 ) || talent.icy_talons.enabled & ( buff.icy_talons.remains < gcd.max * 3 || buff.icy_talons.stack < 3 )",
								["var_name"] = "rp_buffs",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.pillar_of_frost.enabled & buff.pillar_of_frost.up & ( talent.obliteration.enabled & buff.pillar_of_frost.remains < 6 || ! talent.obliteration.enabled ) || ! talent.pillar_of_frost.enabled & buff.empower_rune_weapon.up || ! talent.pillar_of_frost.enabled & ! talent.empower_rune_weapon.enabled || active_enemies >= 2 & buff.pillar_of_frost.up",
								["var_name"] = "cooldown_check",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.frostscythe.enabled & ( buff.killing_machine.react || active_enemies >= 3 ) & ( ! talent.improved_obliterate.enabled & ! talent.frigid_executioner.enabled & ! talent.frostreaper.enabled & ! talent.might_of_the_frozen_wastes.enabled || ! talent.cleaving_strikes.enabled || talent.cleaving_strikes.enabled & ( active_enemies > 6 || ! death_and_decay.ticking & active_enemies > 3 ) )",
								["var_name"] = "frostscythe_priority",
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "setif",
								["description"] = "Formulaic approach to determine the time before these abilities come off cooldown that the simulation should star to pool resources. Capped at 15s in the run_action_list call.",
								["criteria"] = "runic_power < 35 & rune < 2 & cooldown.pillar_of_frost.remains_expected < 10",
								["var_name"] = "oblit_pooling_time",
								["action"] = "variable",
								["value_else"] = "3",
								["value"] = "( ( cooldown.pillar_of_frost.remains_expected + 1 ) / gcd.max ) / ( ( rune + 3 ) * ( runic_power + 5 ) ) * 100",
							}, -- [11]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "breath_pooling_time",
								["criteria"] = "runic_power.deficit > 10 & cooldown.breath_of_sindragosa.remains < 10",
								["value_else"] = "3",
								["value"] = "( ( cooldown.breath_of_sindragosa.remains + 1 ) / gcd.max ) / ( ( rune + 1 ) * ( runic_power + 20 ) ) * 100",
							}, -- [12]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "rune < 4 & talent.obliteration.enabled & cooldown.pillar_of_frost.remains_expected < variable.oblit_pooling_time",
								["var_name"] = "pooling_runes",
							}, -- [13]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.breath_of_sindragosa.enabled & cooldown.breath_of_sindragosa.remains < variable.breath_pooling_time || talent.obliteration.enabled & runic_power < 35 & cooldown.pillar_of_frost.remains_expected < variable.oblit_pooling_time",
								["var_name"] = "pooling_runic_power",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking & active_enemies >= 2 & ( ! talent.obliteration.enabled || talent.obliteration.enabled & ( ! buff.pillar_of_frost.up || buff.pillar_of_frost.up & ! buff.killing_machine.react ) )",
								["action"] = "howling_blast",
								["description"] = "Maintain Frost Fever, Icy Talons and Unleashed Frenzy",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & variable.rp_buffs & talent.obliteration.enabled & talent.breath_of_sindragosa.enabled & ! buff.pillar_of_frost.up & ! buff.breath_of_sindragosa.up & cooldown.breath_of_sindragosa.remains > variable.breath_pooling_time",
								["action"] = "glacial_advance",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & variable.rp_buffs & talent.breath_of_sindragosa.enabled & ! buff.breath_of_sindragosa.up & cooldown.breath_of_sindragosa.remains > variable.breath_pooling_time",
								["action"] = "glacial_advance",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & variable.rp_buffs & ! talent.breath_of_sindragosa.enabled & talent.obliteration.enabled & ! buff.pillar_of_frost.up",
								["action"] = "glacial_advance",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & variable.rp_buffs & talent.obliteration.enabled & talent.breath_of_sindragosa.enabled & ! buff.pillar_of_frost.up & ! buff.breath_of_sindragosa.up & cooldown.breath_of_sindragosa.remains > variable.breath_pooling_time",
								["action"] = "frost_strike",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & variable.rp_buffs & talent.breath_of_sindragosa.enabled & ! buff.breath_of_sindragosa.up & cooldown.breath_of_sindragosa.remains > variable.breath_pooling_time",
								["action"] = "frost_strike",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & variable.rp_buffs & ! talent.breath_of_sindragosa.enabled & talent.obliteration.enabled & ! buff.pillar_of_frost.up",
								["action"] = "frost_strike",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "! talent.breath_of_sindragosa.enabled & ! talent.obliteration.enabled & variable.rw_buffs",
								["action"] = "remorseless_winter",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.obliteration.enabled & active_enemies >= 3 & variable.adds_remain",
								["action"] = "remorseless_winter",
							}, -- [23]
							{
								["enabled"] = true,
								["description"] = "Choose Action list to run",
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "racials",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "talent.cold_heart.enabled & ( ! buff.killing_machine.up || talent.breath_of_sindragosa.enabled ) & ( ( debuff.razorice.stack = 5 || ! death_knight.runeforge.razorice & ! talent.glacial_advance.enabled & ! talent.avalanche.enabled ) || boss & fight_remains <= gcd.max )",
								["action"] = "call_action_list",
								["list_name"] = "cold_heart",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "buff.breath_of_sindragosa.up & talent.obliteration.enabled & buff.pillar_of_frost.up",
								["action"] = "run_action_list",
								["list_name"] = "breath_oblit",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "buff.breath_of_sindragosa.up & ( ! talent.obliteration.enabled || talent.obliteration.enabled & ! buff.pillar_of_frost.up )",
								["action"] = "run_action_list",
								["list_name"] = "breath",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "talent.obliteration.enabled & buff.pillar_of_frost.up & ! buff.breath_of_sindragosa.up",
								["action"] = "run_action_list",
								["list_name"] = "obliteration",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2",
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1",
								["action"] = "call_action_list",
								["list_name"] = "single_target",
							}, -- [32]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.is.ruby_whelp_shell || trinket.t1.is.whispering_incarnate_icon",
								["var_name"] = "trinket_1_exclude",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.is.ruby_whelp_shell || trinket.t2.is.whispering_incarnate_icon",
								["var_name"] = "trinket_2_exclude",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "setif",
								["description"] = "Evaluates a trinkets cooldown, divided by pillar of frost, empower rune weapon, or breath of sindragosa's cooldown. If it's value has no remainder return 1, else return 0.5.",
								["criteria"] = "trinket.t1.has_use_buff & ( talent.pillar_of_frost.enabled & ! talent.breath_of_sindragosa.enabled & ( trinket.t1.cooldown.duration % cooldown.pillar_of_frost.duration = 0 ) || talent.breath_of_sindragosa.enabled & ( cooldown.breath_of_sindragosa.duration % trinket.t1.cooldown.duration = 0 ) )",
								["var_name"] = "trinket_1_sync",
								["action"] = "variable",
								["value_else"] = "0.5",
								["value"] = "1",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_2_sync",
								["criteria"] = "trinket.t2.has_use_buff & ( talent.pillar_of_frost.enabled & ! talent.breath_of_sindragosa.enabled & ( trinket.t2.cooldown.duration % cooldown.pillar_of_frost.duration = 0 ) || talent.breath_of_sindragosa.enabled & ( cooldown.breath_of_sindragosa.duration % trinket.t2.cooldown.duration = 0 ) )",
								["value_else"] = "0.5",
								["value"] = "1",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.has_use_buff || ( trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff & ! variable.trinket_1_exclude )",
								["var_name"] = "trinket_1_buffs",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.has_use_buff || ( trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff & ! variable.trinket_2_exclude )",
								["var_name"] = "trinket_2_buffs",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_priority",
								["criteria"] = "! variable.trinket_1_buffs & variable.trinket_2_buffs || variable.trinket_2_buffs & ( ( trinket.t2.cooldown.duration / trinket.t2.buff_duration ) * ( 1.5 + trinket.t2.has_use_buff ) * ( variable.trinket_2_sync ) ) > ( ( trinket.t1.cooldown.duration / trinket.t1.buff_duration ) * ( 1.5 + trinket.t1.has_use_buff ) * ( variable.trinket_1_sync ) )",
								["value_else"] = "1",
								["value"] = "2",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.is.algethar_puzzle_box",
								["var_name"] = "trinket_1_manual",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.is.algethar_puzzle_box",
								["var_name"] = "trinket_2_manual",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.gathering_storm.enabled || talent.everfrost.enabled",
								["var_name"] = "rw_buffs",
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "main_hand.2h",
								["var_name"] = "two_hand_check",
							}, -- [11]
						},
						["racials"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_check",
								["action"] = "blood_fury",
								["description"] = "Racial Abilities",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_check",
								["action"] = "berserking",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_check",
								["action"] = "arcane_pulse",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_check",
								["action"] = "lights_judgment",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_check",
								["action"] = "ancestral_call",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_check",
								["action"] = "fireblood",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.obliteration.enabled & ! buff.pillar_of_frost.up & buff.unholy_strength.up",
								["action"] = "bag_of_tricks",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! talent.obliteration.enabled & buff.pillar_of_frost.up & ( buff.unholy_strength.up & buff.unholy_strength.remains < gcd.max * 3 || buff.pillar_of_frost.remains < gcd.max * 3 )",
								["action"] = "bag_of_tricks",
							}, -- [8]
						},
						["trinkets"] = {
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["use_off_gcd"] = 1,
								["action"] = "algethar_puzzle_box",
								["criteria"] = "! buff.pillar_of_frost.up & cooldown.pillar_of_frost.remains < 2 & ( ! talent.breath_of_sindragosa.enabled || runic_power > 60 & ( buff.breath_of_sindragosa.up || cooldown.breath_of_sindragosa.remains < 2 ) )",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
								["use_off_gcd"] = 1,
								["criteria"] = "variable.trinket_1_buffs & ! variable.trinket_1_manual & ( talent.obliteration.enabled & cooldown.empower_rune_weapon.charges < 1 || ! talent.obliteration.enabled ) & ( ! buff.pillar_of_frost.up & trinket.t1.cast_time > 0 || ! trinket.t1.cast_time > 0 ) & ( buff.breath_of_sindragosa.up || buff.pillar_of_frost.up ) & ( variable.trinket_2_exclude || ! trinket.t2.has_cooldown || trinket.t2.cooldown.remains || variable.trinket_priority = 1 ) || boss & trinket.t1.buff_duration >= fight_remains",
								["description"] = "The trinket with the highest estimated value, will be used first and paired with Pillar of Frost.",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["slot"] = "trinket2",
								["use_off_gcd"] = 1,
								["criteria"] = "variable.trinket_2_buffs & ! variable.trinket_2_manual & ( talent.obliteration.enabled & cooldown.empower_rune_weapon.charges < 1 || ! talent.obliteration.enabled ) & ( ! buff.pillar_of_frost.up & trinket.t2.cast_time > 0 || ! trinket.t2.cast_time > 0 ) & ( buff.breath_of_sindragosa.up || buff.pillar_of_frost.up ) & ( variable.trinket_1_exclude || ! trinket.t1.has_cooldown || trinket.t1.cooldown.remains || variable.trinket_priority = 2 ) || boss & trinket.t2.buff_duration >= fight_remains",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
								["use_off_gcd"] = 1,
								["criteria"] = "! variable.trinket_1_buffs & ! variable.trinket_1_manual & ( ! variable.trinket_1_buffs & ( trinket.t2.cooldown.remains || ! variable.trinket_2_buffs ) || ( trinket.t1.cast_time > 0 & ! buff.pillar_of_frost.up || ! trinket.t1.cast_time > 0 ) || talent.pillar_of_frost.enabled & cooldown.pillar_of_frost.remains_expected > 20 || ! talent.pillar_of_frost.enabled )",
								["description"] = "If only one on use trinket provides a buff, use the other on cooldown. Or if neither trinket provides a buff, use both on cooldown.",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["slot"] = "trinket2",
								["use_off_gcd"] = 1,
								["criteria"] = "! variable.trinket_2_buffs & ! variable.trinket_2_manual & ( ! variable.trinket_2_buffs & ( trinket.t1.cooldown.remains || ! variable.trinket_1_buffs ) || ( trinket.t2.cast_time > 0 & ! buff.pillar_of_frost.up || ! trinket.t2.cast_time > 0 ) || talent.pillar_of_frost.enabled & cooldown.pillar_of_frost.remains_expected > 20 || ! talent.pillar_of_frost.enabled )",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ! variable.trinket_1_buffs || trinket.t1.cooldown.remains ) & ( ! variable.trinket_2_buffs || trinket.t2.cooldown.remains )",
								["action"] = "use_items",
								["use_off_gcd"] = 1,
							}, -- [6]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_check || boss & fight_remains < 25",
								["action"] = "potion",
								["description"] = "Cooldowns",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.obliteration.enabled & ! buff.empower_rune_weapon.up & rune < 6 & ( cooldown.pillar_of_frost.remains_expected < 7 & ( variable.adds_remain || variable.st_planning ) || buff.pillar_of_frost.up ) || boss & fight_remains < 20",
								["action"] = "empower_rune_weapon",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.breath_of_sindragosa.up & talent.breath_of_sindragosa.enabled & ! buff.empower_rune_weapon.up & ( runic_power < 70 & rune < 3 || time < 10 )",
								["action"] = "empower_rune_weapon",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! talent.breath_of_sindragosa.enabled & ! talent.obliteration.enabled & ! buff.empower_rune_weapon.up & rune < 5 & ( cooldown.pillar_of_frost.remains_expected < 7 || buff.pillar_of_frost.up || ! talent.pillar_of_frost.enabled )",
								["action"] = "empower_rune_weapon",
								["use_off_gcd"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.obliteration.enabled & ! buff.pillar_of_frost.up & cooldown.pillar_of_frost.remains < 3 & ( variable.adds_remain || variable.st_planning ) || boss & fight_remains < 12",
								["action"] = "abomination_limb",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.breath_of_sindragosa.enabled & ( variable.adds_remain || variable.st_planning )",
								["action"] = "abomination_limb",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.breath_of_sindragosa.enabled & ! talent.obliteration.enabled & ( variable.adds_remain || variable.st_planning )",
								["action"] = "abomination_limb",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & ( ! death_and_decay.ticking & talent.cleaving_strikes.enabled || ! talent.cleaving_strikes.enabled || active_enemies <= 5 )",
								["action"] = "chill_streak",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.obliteration.enabled & ( variable.adds_remain || variable.st_planning ) & ( ! talent.empower_rune_weapon.enabled || buff.empower_rune_weapon.up || cooldown.empower_rune_weapon.remains ) || boss & fight_remains < 12",
								["action"] = "pillar_of_frost",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.breath_of_sindragosa.enabled & ( variable.adds_remain || variable.st_planning ) & ( ! talent.icecap.enabled & ( runic_power > 70 || cooldown.breath_of_sindragosa.remains > 40 ) || talent.icecap.enabled & ( cooldown.breath_of_sindragosa.remains > 10 || buff.breath_of_sindragosa.up ) )",
								["action"] = "pillar_of_frost",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.icecap.enabled & ! talent.obliteration.enabled & ! talent.breath_of_sindragosa.enabled & ( variable.adds_remain || variable.st_planning )",
								["action"] = "pillar_of_frost",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! buff.breath_of_sindragosa.up & runic_power > 60 & ( variable.adds_remain || variable.st_planning ) || boss & fight_remains < 30",
								["action"] = "breath_of_sindragosa",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & ( talent.pillar_of_frost.enabled & buff.pillar_of_frost.remains < gcd.max * 2 & buff.pillar_of_frost.up & ! talent.obliteration.enabled || ! talent.pillar_of_frost.enabled ) & ( ! raid_event.adds.exists || ( raid_event.adds.in > 15 + raid_event.adds.duration || talent.absolute_zero.enabled & raid_event.adds.in > 15 + raid_event.adds.duration ) ) || boss & fight_remains < 3",
								["action"] = "frostwyrms_fury",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & ( talent.pillar_of_frost.enabled & buff.pillar_of_frost.up || raid_event.adds.exists & raid_event.adds.up & raid_event.adds.in > cooldown.pillar_of_frost.remains_expected - raid_event.adds.in - raid_event.adds.duration ) & ( buff.pillar_of_frost.remains < gcd.max * 2 || raid_event.adds.exists & raid_event.adds.remains < gcd.max * 2 )",
								["action"] = "frostwyrms_fury",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.obliteration.enabled & cooldown.empower_rune_weapon.charges < 1 & ( talent.pillar_of_frost.enabled & buff.pillar_of_frost.up & ! variable.two_hand_check || ! buff.pillar_of_frost.up & variable.two_hand_check & cooldown.pillar_of_frost.remains > 10 || ! talent.pillar_of_frost.enabled ) & ( ( buff.pillar_of_frost.remains < gcd.max || buff.unholy_strength.up & buff.unholy_strength.remains < gcd.max ) & ( debuff.razorice.stack = 5 || ! death_knight.runeforge.razorice & ! talent.glacial_advance.enabled ) )",
								["action"] = "frostwyrms_fury",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.obliteration.enabled & ( talent.pillar_of_frost.enabled & buff.pillar_of_frost.up & ! variable.two_hand_check || ! buff.pillar_of_frost.up & variable.two_hand_check & cooldown.pillar_of_frost.remains || ! talent.pillar_of_frost.enabled ) & ( ( buff.pillar_of_frost.remains < gcd.max || buff.unholy_strength.up & buff.unholy_strength.remains < gcd.max ) & ( debuff.razorice.stack = 5 || ! death_knight.runeforge.razorice & ! talent.glacial_advance.enabled ) )",
								["action"] = "frostwyrms_fury",
							}, -- [16]
							{
								["action"] = "raise_dead",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 5 & target.time_to_pct_35 < 5 & active_enemies <= 2 & ( talent.obliteration.enabled & ( buff.pillar_of_frost.up & ! buff.killing_machine.up || ! buff.pillar_of_frost.up ) || talent.breath_of_sindragosa.enabled & ( buff.breath_of_sindragosa.up & runic_power > 40 || ! buff.breath_of_sindragosa.up ) || ! talent.breath_of_sindragosa.enabled & ! talent.obliteration.enabled )",
								["action"] = "soul_reaper",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! talent.glacial_advance.enabled & ! buff.breath_of_sindragosa.up & pet.ghoul.remains < gcd.max * 2 & active_enemies > 3",
								["action"] = "sacrificial_pact",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! death_and_decay.ticking & variable.adds_remain & ( buff.pillar_of_frost.up & buff.pillar_of_frost.remains > 5 & buff.pillar_of_frost.remains < 11 || ! buff.pillar_of_frost.up & cooldown.pillar_of_frost.remains > 10 || boss & fight_remains < 11 ) & ( active_enemies > 5 || talent.cleaving_strikes.enabled & active_enemies >= 2 )",
								["action"] = "any_dnd",
							}, -- [20]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["description"] = "AoE Action List",
								["action"] = "remorseless_winter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up || ! dot.frost_fever.ticking",
								["action"] = "howling_blast",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power & variable.rp_buffs",
								["action"] = "glacial_advance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up & talent.cleaving_strikes.enabled & death_and_decay.ticking & ! variable.frostscythe_priority",
								["action"] = "obliterate",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power",
								["action"] = "glacial_advance",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.frostscythe_priority",
								["action"] = "frostscythe",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! variable.frostscythe_priority",
								["action"] = "obliterate",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power & ! talent.glacial_advance.enabled",
								["action"] = "frost_strike",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "rune < 2 & runic_power.deficit > 25",
								["action"] = "horn_of_winter",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 25",
								["action"] = "arcane_torrent",
							}, -- [10]
						},
					},
					["version"] = 20230528,
					["warnings"] = "The import for 'single_target' required some automated changes.\nLine 7: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 7: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 8: Converted 'talent.shattering_blade' to 'talent.shattering_blade.enabled' (1x).\nLine 12: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\n\nThe import for 'cold_heart' required some automated changes.\nLine 2: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 2: Converted 'talent.frostwyrms_fury' to 'talent.frostwyrms_fury.enabled' (1x).\nLine 3: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 4: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 5: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\n\nThe import for 'breath' required some automated changes.\nLine 2: Converted 'talent.rage_of_the_frozen_champion' to 'talent.rage_of_the_frozen_champion.enabled' (1x).\nLine 8: Converted operations in '!death_and_decay.ticking&runic_power<32&rune.time_to_2>runic_power%16' to '!death_and_decay.ticking&runic_power<32&rune.time_to_2>runic_power/16'.\nLine 9: Converted operations in 'runic_power<32&rune.time_to_2>runic_power%16' to 'runic_power<32&rune.time_to_2>runic_power/16'.\nLine 10: Converted operations in 'runic_power<32&rune.time_to_2>runic_power%16' to 'runic_power<32&rune.time_to_2>runic_power/16'.\n\nThe import for 'racials' required some automated changes.\nLine 7: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 8: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 4: Converted 'talent.assimilation' to 'talent.assimilation.enabled' (1x).\nLine 4: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 7: Converted 'talent.rage_of_the_frozen_champion' to 'talent.rage_of_the_frozen_champion.enabled' (1x).\nLine 7: Converted 'talent.avalanche' to 'talent.avalanche.enabled' (1x).\nLine 7: Converted 'talent.icebreaker' to 'talent.icebreaker.enabled' (1x).\nLine 8: Converted 'talent.unleashed_frenzy' to 'talent.unleashed_frenzy.enabled' (1x).\nLine 8: Converted 'talent.icy_talons' to 'talent.icy_talons.enabled' (1x).\nLine 9: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 9: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 9: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 9: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 9: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 9: Converted 'talent.empower_rune_weapon' to 'talent.empower_rune_weapon.enabled' (1x).\nLine 10: Converted 'talent.frostscythe' to 'talent.frostscythe.enabled' (1x).\nLine 10: Converted 'talent.improved_obliterate' to 'talent.improved_obliterate.enabled' (1x).\nLine 10: Converted 'talent.frigid_executioner' to 'talent.frigid_executioner.enabled' (1x).\nLine 10: Converted 'talent.frostreaper' to 'talent.frostreaper.enabled' (1x).\nLine 10: Converted 'talent.might_of_the_frozen_wastes' to 'talent.might_of_the_frozen_wastes.enabled' (1x).\nLine 10: Converted 'talent.cleaving_strikes' to 'talent.cleaving_strikes.enabled' (1x).\nLine 10: Converted 'talent.cleaving_strikes' to 'talent.cleaving_strikes.enabled' (1x).\nLine 11: Converted operations in '((cooldown.pillar_of_frost.remains_expected+1)%gcd.max)%((rune+3)*(runic_power+5))*100' to '((cooldown.pillar_of_frost.remains_expected+1)/gcd.max)/((rune+3)*(runic_power+5))*100'.\nLine 12: Converted operations in '((cooldown.breath_of_sindragosa.remains+1)%gcd.max)%((rune+1)*(runic_power+20))*100' to '((cooldown.breath_of_sindragosa.remains+1)/gcd.max)/((rune+1)*(runic_power+20))*100'.\nLine 13: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 14: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 14: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 15: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 15: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 16: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 16: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 17: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 18: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 18: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 19: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 19: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 20: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 21: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 21: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 22: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 22: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 23: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 27: Converted 'talent.cold_heart' to 'talent.cold_heart.enabled' (1x).\nLine 27: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 27: Converted 'talent.glacial_advance' to 'talent.glacial_advance.enabled' (1x).\nLine 27: Converted 'talent.avalanche' to 'talent.avalanche.enabled' (1x).\nLine 28: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 29: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 29: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 30: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 1: Converted 'trinket.1.is.ruby_whelp_shell' to 'trinket.t1.is.ruby_whelp_shell' (1x).\nLine 1: Converted 'trinket.1.is.whispering_incarnate_icon' to 'trinket.t1.is.whispering_incarnate_icon' (1x).\nLine 2: Converted 'trinket.2.is.ruby_whelp_shell' to 'trinket.t2.is.ruby_whelp_shell' (1x).\nLine 2: Converted 'trinket.2.is.whispering_incarnate_icon' to 'trinket.t2.is.whispering_incarnate_icon' (1x).\nLine 3: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 3: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 3: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 3: Converted operations in 'trinket.t1.has_use_buff&(talent.pillar_of_frost.enabled&!talent.breath_of_sindragosa.enabled&(trinket.t1.cooldown.duration%%cooldown.pillar_of_frost.duration=0)||talent.breath_of_sindragosa.enabled&(cooldown.breath_of_sindragosa.duration%%trinket.t1.cooldown.duration=0))' to 'trinket.t1.has_use_buff&(talent.pillar_of_frost.enabled&!talent.breath_of_sindragosa.enabled&(trinket.t1.cooldown.duration%cooldown.pillar_of_frost.duration=0)||talent.breath_of_sindragosa.enabled&(cooldown.breath_of_sindragosa.duration%trinket.t1.cooldown.duration=0))'.\nLine 4: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 4: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 4: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 4: Converted operations in 'trinket.t2.has_use_buff&(talent.pillar_of_frost.enabled&!talent.breath_of_sindragosa.enabled&(trinket.t2.cooldown.duration%%cooldown.pillar_of_frost.duration=0)||talent.breath_of_sindragosa.enabled&(cooldown.breath_of_sindragosa.duration%%trinket.t2.cooldown.duration=0))' to 'trinket.t2.has_use_buff&(talent.pillar_of_frost.enabled&!talent.breath_of_sindragosa.enabled&(trinket.t2.cooldown.duration%cooldown.pillar_of_frost.duration=0)||talent.breath_of_sindragosa.enabled&(cooldown.breath_of_sindragosa.duration%trinket.t2.cooldown.duration=0))'.\nLine 5: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_buff.strength' (1x).\nLine 5: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_buff.mastery' (1x).\nLine 5: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_buff.versatility' (1x).\nLine 5: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_buff.haste' (1x).\nLine 5: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_buff.crit' (1x).\nLine 5: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_buff.strength' (1x).\nLine 6: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_buff.mastery' (1x).\nLine 6: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_buff.versatility' (1x).\nLine 6: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_buff.haste' (1x).\nLine 6: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_buff.crit' (1x).\nLine 6: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_use_buff' (1x).\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 7: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 7: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 7: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_buff.strength' (1x).\nLine 7: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_use_buff' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 7: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 7: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 7: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_buff.strength' (1x).\nLine 7: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_use_buff' (1x).\nLine 7: Converted operations in '!variable.trinket_1_buffs&variable.trinket_2_buffs||variable.trinket_2_buffs&((trinket.t2.cooldown.duration%trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration%trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))' to '!variable.trinket_1_buffs&variable.trinket_2_buffs||variable.trinket_2_buffs&((trinket.t2.cooldown.duration/trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration/trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))'.\nLine 8: Converted 'trinket.1.is.algethar_puzzle_box' to 'trinket.t1.is.algethar_puzzle_box' (1x).\nLine 9: Converted 'trinket.2.is.algethar_puzzle_box' to 'trinket.t2.is.algethar_puzzle_box' (1x).\nLine 10: Converted 'talent.gathering_storm' to 'talent.gathering_storm.enabled' (1x).\nLine 10: Converted 'talent.everfrost' to 'talent.everfrost.enabled' (1x).\nThe following auras were used in the action list but were not found in the addon database:\n - crit\n\nThe import for 'cooldowns' required some automated changes.\nLine 2: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 3: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 4: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 4: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 4: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 5: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 6: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 7: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 7: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 8: Converted 'talent.cleaving_strikes' to 'talent.cleaving_strikes.enabled' (1x).\nLine 8: Converted 'talent.cleaving_strikes' to 'talent.cleaving_strikes.enabled' (1x).\nLine 9: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 9: Converted 'talent.empower_rune_weapon' to 'talent.empower_rune_weapon.enabled' (1x).\nLine 10: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 10: Converted 'talent.icecap' to 'talent.icecap.enabled' (1x).\nLine 10: Converted 'talent.icecap' to 'talent.icecap.enabled' (1x).\nLine 11: Converted 'talent.icecap' to 'talent.icecap.enabled' (1x).\nLine 11: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 11: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 13: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 13: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 13: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 13: Converted 'talent.absolute_zero' to 'talent.absolute_zero.enabled' (1x).\nLine 14: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 15: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 15: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 15: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 15: Converted 'talent.glacial_advance' to 'talent.glacial_advance.enabled' (1x).\nLine 16: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 16: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 16: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 16: Converted 'talent.glacial_advance' to 'talent.glacial_advance.enabled' (1x).\nLine 18: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 18: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 18: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 18: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 19: Converted 'talent.glacial_advance' to 'talent.glacial_advance.enabled' (1x).\nLine 20: Converted 'talent.cleaving_strikes' to 'talent.cleaving_strikes.enabled' (1x).\n\nThe import for 'trinkets' required some automated changes.\nLine 1: Converted 'talent.breath_of_sindragosa' to 'talent.breath_of_sindragosa.enabled' (1x).\nLine 2: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 2: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 2: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 2: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 2: Converted 'trinket.2.has_cooldown' to 'trinket.t2.has_cooldown' (1x).\nLine 2: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 2: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 2: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 2: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 3: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 3: Converted 'talent.obliteration' to 'talent.obliteration.enabled' (1x).\nLine 3: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 3: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 3: Converted 'trinket.1.has_cooldown' to 'trinket.t1.has_cooldown' (1x).\nLine 3: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 3: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 3: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 3: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 4: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 4: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 4: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 4: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 4: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 4: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 5: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 5: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 5: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 5: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 5: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 5: Converted 'talent.pillar_of_frost' to 'talent.pillar_of_frost.enabled' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\n\nThe import for 'obliteration' required some automated changes.\nLine 9: Converted 'talent.shattering_blade' to 'talent.shattering_blade.enabled' (1x).\nLine 9: Converted 'talent.glacial_advance' to 'talent.glacial_advance.enabled' (1x).\nLine 12: Converted 'talent.glacial_advance' to 'talent.glacial_advance.enabled' (1x).\nLine 16: Converted 'talent.glacial_advance' to 'talent.glacial_advance.enabled' (1x).\n\nThe import for 'aoe' required some automated changes.\nLine 4: Converted 'talent.cleaving_strikes' to 'talent.cleaving_strikes.enabled' (1x).\nLine 8: Converted 'talent.glacial_advance' to 'talent.glacial_advance.enabled' (1x).\n\nImported 11 action lists.\n",
					["profile"] = "actions.precombat+=/variable,name=trinket_1_exclude,value=trinket.1.is.ruby_whelp_shell||trinket.1.is.whispering_incarnate_icon\nactions.precombat+=/variable,name=trinket_2_exclude,value=trinket.2.is.ruby_whelp_shell||trinket.2.is.whispering_incarnate_icon\n# Evaluates a trinkets cooldown, divided by pillar of frost, empower rune weapon, or breath of sindragosa's cooldown. If it's value has no remainder return 1, else return 0.5.\nactions.precombat+=/variable,name=trinket_1_sync,op=setif,value=1,value_else=0.5,condition=trinket.1.has_use_buff&(talent.pillar_of_frost&!talent.breath_of_sindragosa&(trinket.1.cooldown.duration%%cooldown.pillar_of_frost.duration=0)||talent.breath_of_sindragosa&(cooldown.breath_of_sindragosa.duration%%trinket.1.cooldown.duration=0))\nactions.precombat+=/variable,name=trinket_2_sync,op=setif,value=1,value_else=0.5,condition=trinket.2.has_use_buff&(talent.pillar_of_frost&!talent.breath_of_sindragosa&(trinket.2.cooldown.duration%%cooldown.pillar_of_frost.duration=0)||talent.breath_of_sindragosa&(cooldown.breath_of_sindragosa.duration%%trinket.2.cooldown.duration=0))\nactions.precombat+=/variable,name=trinket_1_buffs,value=trinket.1.has_use_buff||(trinket.1.has_buff.strength||trinket.1.has_buff.mastery||trinket.1.has_buff.versatility||trinket.1.has_buff.haste||trinket.1.has_buff.crit&!variable.trinket_1_exclude)\nactions.precombat+=/variable,name=trinket_2_buffs,value=trinket.2.has_use_buff||(trinket.2.has_buff.strength||trinket.2.has_buff.mastery||trinket.2.has_buff.versatility||trinket.2.has_buff.haste||trinket.2.has_buff.crit&!variable.trinket_2_exclude)\nactions.precombat+=/variable,name=trinket_priority,op=setif,value=2,value_else=1,condition=!variable.trinket_1_buffs&variable.trinket_2_buffs||variable.trinket_2_buffs&((trinket.2.cooldown.duration%trinket.2.proc.any_dps.duration)*(1.5+trinket.2.has_buff.strength)*(variable.trinket_2_sync))>((trinket.1.cooldown.duration%trinket.1.proc.any_dps.duration)*(1.5+trinket.1.has_buff.strength)*(variable.trinket_1_sync))\nactions.precombat+=/variable,name=trinket_1_manual,value=trinket.1.is.algethar_puzzle_box\nactions.precombat+=/variable,name=trinket_2_manual,value=trinket.2.is.algethar_puzzle_box\nactions.precombat+=/variable,name=rw_buffs,value=talent.gathering_storm||talent.everfrost\nactions.precombat+=/variable,name=two_hand_check,value=main_hand.2h\n\nactions+=/mind_freeze\nactions+=/strangulate\nactions+=/antimagic_shell,if=runic_power.deficit>40\nactions+=/antimagic_zone,if=death_knight.amz_absorb_percent>0&runic_power.deficit>70&talent.assimilation&(buff.breath_of_sindragosa.up&cooldown.empower_rune_weapon.charges<2||!talent.breath_of_sindragosa&!buff.pillar_of_frost.up)\nactions+=/variable,name=st_planning,value=active_enemies=1&(raid_event.adds.in>15||!raid_event.adds.exists)\nactions+=/variable,name=adds_remain,value=active_enemies>=2&(!raid_event.adds.exists||raid_event.adds.exists&raid_event.adds.remains>5)\nactions+=/variable,name=rime_buffs,value=buff.rime.up&(talent.rage_of_the_frozen_champion||talent.avalanche||talent.icebreaker)\nactions+=/variable,name=rp_buffs,value=talent.unleashed_frenzy&(buff.unleashed_frenzy.remains<gcd.max*3||buff.unleashed_frenzy.stack<3)||talent.icy_talons&(buff.icy_talons.remains<gcd.max*3||buff.icy_talons.stack<3)\nactions+=/variable,name=cooldown_check,value=talent.pillar_of_frost&buff.pillar_of_frost.up&(talent.obliteration&buff.pillar_of_frost.remains<6||!talent.obliteration)||!talent.pillar_of_frost&buff.empower_rune_weapon.up||!talent.pillar_of_frost&!talent.empower_rune_weapon||active_enemies>=2&buff.pillar_of_frost.up\nactions+=/variable,name=frostscythe_priority,value=talent.frostscythe&(buff.killing_machine.react||active_enemies>=3)&(!talent.improved_obliterate&!talent.frigid_executioner&!talent.frostreaper&!talent.might_of_the_frozen_wastes||!talent.cleaving_strikes||talent.cleaving_strikes&(active_enemies>6||!death_and_decay.ticking&active_enemies>3))\n# Formulaic approach to determine the time before these abilities come off cooldown that the simulation should star to pool resources. Capped at 15s in the run_action_list call.\nactions+=/variable,name=oblit_pooling_time,op=setif,value=((cooldown.pillar_of_frost.remains_expected+1)%gcd.max)%((rune+3)*(runic_power+5))*100,value_else=3,condition=runic_power<35&rune<2&cooldown.pillar_of_frost.remains_expected<10\nactions+=/variable,name=breath_pooling_time,op=setif,value=((cooldown.breath_of_sindragosa.remains+1)%gcd.max)%((rune+1)*(runic_power+20))*100,value_else=3,condition=runic_power.deficit>10&cooldown.breath_of_sindragosa.remains<10\nactions+=/variable,name=pooling_runes,value=rune<4&talent.obliteration&cooldown.pillar_of_frost.remains_expected<variable.oblit_pooling_time\nactions+=/variable,name=pooling_runic_power,value=talent.breath_of_sindragosa&cooldown.breath_of_sindragosa.remains<variable.breath_pooling_time||talent.obliteration&runic_power<35&cooldown.pillar_of_frost.remains_expected<variable.oblit_pooling_time\n# Use <a href='https://www.wowhead.com/spell=10060/power-infusion'>Power Infusion</a> while <a href='https://www.wowhead.com/spell=51271/pillar-of-frost'>Pillar of Frost</a> is up, as well as <a href='https://www.wowhead.com/spell=152279/breath-of-sindragosa'>Breath of Sindragosa</a> or on cooldown if <a href='https://www.wowhead.com/spell=51271/pillar-of-frost'>Pillar of Frost</a> and <a href='https://www.wowhead.com/spell=152279/breath-of-sindragosa'>Breath of Sindragosa</a> are not talented\n## actions+=/invoke_external_buff,name=power_infusion,if=(buff.pillar_of_frost.up||!talent.pillar_of_frost)&(talent.obliteration||talent.breath_of_sindragosa&buff.breath_of_sindragosa.up||!talent.breath_of_sindragosa&!talent.obliteration)\n# Maintain Frost Fever, Icy Talons and Unleashed Frenzy\nactions+=/howling_blast,if=!dot.frost_fever.ticking&active_enemies>=2&(!talent.obliteration||talent.obliteration&(!buff.pillar_of_frost.up||buff.pillar_of_frost.up&!buff.killing_machine.react))\nactions+=/glacial_advance,if=active_enemies>=2&variable.rp_buffs&talent.obliteration&talent.breath_of_sindragosa&!buff.pillar_of_frost.up&!buff.breath_of_sindragosa.up&cooldown.breath_of_sindragosa.remains>variable.breath_pooling_time\nactions+=/glacial_advance,if=active_enemies>=2&variable.rp_buffs&talent.breath_of_sindragosa&!buff.breath_of_sindragosa.up&cooldown.breath_of_sindragosa.remains>variable.breath_pooling_time\nactions+=/glacial_advance,if=active_enemies>=2&variable.rp_buffs&!talent.breath_of_sindragosa&talent.obliteration&!buff.pillar_of_frost.up\nactions+=/frost_strike,if=active_enemies=1&variable.rp_buffs&talent.obliteration&talent.breath_of_sindragosa&!buff.pillar_of_frost.up&!buff.breath_of_sindragosa.up&cooldown.breath_of_sindragosa.remains>variable.breath_pooling_time\nactions+=/frost_strike,if=active_enemies=1&variable.rp_buffs&talent.breath_of_sindragosa&!buff.breath_of_sindragosa.up&cooldown.breath_of_sindragosa.remains>variable.breath_pooling_time\nactions+=/frost_strike,if=active_enemies=1&variable.rp_buffs&!talent.breath_of_sindragosa&talent.obliteration&!buff.pillar_of_frost.up\nactions+=/remorseless_winter,if=!talent.breath_of_sindragosa&!talent.obliteration&variable.rw_buffs\nactions+=/remorseless_winter,if=talent.obliteration&active_enemies>=3&variable.adds_remain\n# Choose Action list to run\nactions+=/call_action_list,name=trinkets\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=racials\nactions+=/call_action_list,name=cold_heart,if=talent.cold_heart&(!buff.killing_machine.up||talent.breath_of_sindragosa)&((debuff.razorice.stack=5||!death_knight.runeforge.razorice&!talent.glacial_advance&!talent.avalanche)||boss&fight_remains<=gcd.max)\nactions+=/run_action_list,name=breath_oblit,if=buff.breath_of_sindragosa.up&talent.obliteration&buff.pillar_of_frost.up\nactions+=/run_action_list,name=breath,if=buff.breath_of_sindragosa.up&(!talent.obliteration||talent.obliteration&!buff.pillar_of_frost.up)\nactions+=/run_action_list,name=obliteration,if=talent.obliteration&buff.pillar_of_frost.up&!buff.breath_of_sindragosa.up\nactions+=/call_action_list,name=aoe,if=active_enemies>=2\nactions+=/call_action_list,name=single_target,if=active_enemies=1\n\n# AoE Action List\nactions.aoe+=/remorseless_winter\nactions.aoe+=/howling_blast,if=buff.rime.up||!dot.frost_fever.ticking\nactions.aoe+=/glacial_advance,if=!variable.pooling_runic_power&variable.rp_buffs\nactions.aoe+=/obliterate,if=buff.killing_machine.up&talent.cleaving_strikes&death_and_decay.ticking&!variable.frostscythe_priority\nactions.aoe+=/glacial_advance,if=!variable.pooling_runic_power\nactions.aoe+=/frostscythe,if=variable.frostscythe_priority\nactions.aoe+=/obliterate,if=!variable.frostscythe_priority\nactions.aoe+=/frost_strike,if=!variable.pooling_runic_power&!talent.glacial_advance\nactions.aoe+=/horn_of_winter,if=rune<2&runic_power.deficit>25\nactions.aoe+=/arcane_torrent,if=runic_power.deficit>25\n\n# Breath Active Rotation\nactions.breath+=/remorseless_winter,if=variable.rw_buffs||variable.adds_remain\nactions.breath+=/howling_blast,if=variable.rime_buffs&runic_power>(45-talent.rage_of_the_frozen_champion*8)\nactions.breath+=/horn_of_winter,if=rune<2&runic_power.deficit>25\nactions.breath+=/obliterate,cycle_targets=1,if=buff.killing_machine.up&!variable.frostscythe_priority\nactions.breath+=/frostscythe,if=buff.killing_machine.up&variable.frostscythe_priority\nactions.breath+=/frostscythe,if=variable.frostscythe_priority&runic_power>45\nactions.breath+=/obliterate,cycle_targets=1,if=runic_power.deficit>40||buff.pillar_of_frost.up&runic_power.deficit>15\nactions.breath+=/death_and_decay,if=!death_and_decay.ticking&runic_power<32&rune.time_to_2>runic_power%16\nactions.breath+=/remorseless_winter,if=runic_power<32&rune.time_to_2>runic_power%16\nactions.breath+=/howling_blast,if=runic_power<32&rune.time_to_2>runic_power%16\nactions.breath+=/obliterate,cycle_targets=1,if=runic_power.deficit>25\nactions.breath+=/howling_blast,if=buff.rime.up\nactions.breath+=/arcane_torrent,if=runic_power<60\n\n# Breath & Obliteration Active Rotation\nactions.breath_oblit+=/frostscythe,if=buff.killing_machine.up&variable.frostscythe_priority\nactions.breath_oblit+=/obliterate,cycle_targets=1,if=buff.killing_machine.up\nactions.breath_oblit+=/howling_blast,if=buff.rime.up\nactions.breath_oblit+=/howling_blast,if=!buff.killing_machine.up\nactions.breath_oblit+=/horn_of_winter,if=runic_power.deficit>25\nactions.breath_oblit+=/arcane_torrent,if=runic_power.deficit>20\n\n# Cold Heart\nactions.cold_heart+=/chains_of_ice,if=boss&fight_remains<gcd.max&(rune<2||!buff.killing_machine.up&(!variable.two_hand_check&buff.cold_heart.stack>=4||variable.two_hand_check&buff.cold_heart.stack>8)||buff.killing_machine.up&(!variable.two_hand_check&buff.cold_heart.stack>8||variable.two_hand_check&buff.cold_heart.stack>10))\nactions.cold_heart+=/chains_of_ice,if=!talent.obliteration&buff.pillar_of_frost.up&buff.cold_heart.stack>=10&(buff.pillar_of_frost.remains<gcd*(1+(talent.frostwyrms_fury&cooldown.frostwyrms_fury.ready))||buff.unholy_strength.up&buff.unholy_strength.remains<gcd)\nactions.cold_heart+=/chains_of_ice,if=!talent.obliteration&death_knight.runeforge.fallen_crusader&!buff.pillar_of_frost.up&cooldown.pillar_of_frost.remains_expected>15&(buff.cold_heart.stack>=10&buff.unholy_strength.up||buff.cold_heart.stack>=13)\nactions.cold_heart+=/chains_of_ice,if=!talent.obliteration&!death_knight.runeforge.fallen_crusader&buff.cold_heart.stack>=10&!buff.pillar_of_frost.up&cooldown.pillar_of_frost.remains_expected>20\nactions.cold_heart+=/chains_of_ice,if=talent.obliteration&!buff.pillar_of_frost.up&(buff.cold_heart.stack>=14&(buff.unholy_strength.up||buff.chaos_bane.up)||buff.cold_heart.stack>=19||cooldown.pillar_of_frost.remains_expected<3&buff.cold_heart.stack>=14)\n\n# Cooldowns\nactions.cooldowns+=/potion,if=variable.cooldown_check||boss&fight_remains<25\nactions.cooldowns+=/empower_rune_weapon,if=talent.obliteration&!buff.empower_rune_weapon.up&rune<6&(cooldown.pillar_of_frost.remains_expected<7&(variable.adds_remain||variable.st_planning)||buff.pillar_of_frost.up)||boss&fight_remains<20\nactions.cooldowns+=/empower_rune_weapon,use_off_gcd=1,if=buff.breath_of_sindragosa.up&talent.breath_of_sindragosa&!buff.empower_rune_weapon.up&(runic_power<70&rune<3||time<10)\nactions.cooldowns+=/empower_rune_weapon,use_off_gcd=1,if=!talent.breath_of_sindragosa&!talent.obliteration&!buff.empower_rune_weapon.up&rune<5&(cooldown.pillar_of_frost.remains_expected<7||buff.pillar_of_frost.up||!talent.pillar_of_frost)\nactions.cooldowns+=/abomination_limb,if=talent.obliteration&!buff.pillar_of_frost.up&cooldown.pillar_of_frost.remains<3&(variable.adds_remain||variable.st_planning)||boss&fight_remains<12\nactions.cooldowns+=/abomination_limb,if=talent.breath_of_sindragosa&(variable.adds_remain||variable.st_planning)\nactions.cooldowns+=/abomination_limb,if=!talent.breath_of_sindragosa&!talent.obliteration&(variable.adds_remain||variable.st_planning)\nactions.cooldowns+=/chill_streak,if=active_enemies>=2&(!death_and_decay.ticking&talent.cleaving_strikes||!talent.cleaving_strikes||active_enemies<=5)\nactions.cooldowns+=/pillar_of_frost,if=talent.obliteration&(variable.adds_remain||variable.st_planning)&(!talent.empower_rune_weapon||buff.empower_rune_weapon.up||cooldown.empower_rune_weapon.remains)||boss&fight_remains<12\nactions.cooldowns+=/pillar_of_frost,if=talent.breath_of_sindragosa&(variable.adds_remain||variable.st_planning)&(!talent.icecap&(runic_power>70||cooldown.breath_of_sindragosa.remains>40)||talent.icecap&(cooldown.breath_of_sindragosa.remains>10||buff.breath_of_sindragosa.up))\nactions.cooldowns+=/pillar_of_frost,if=talent.icecap&!talent.obliteration&!talent.breath_of_sindragosa&(variable.adds_remain||variable.st_planning)\nactions.cooldowns+=/breath_of_sindragosa,if=!buff.breath_of_sindragosa.up&runic_power>60&(variable.adds_remain||variable.st_planning)||boss&fight_remains<30\nactions.cooldowns+=/frostwyrms_fury,if=active_enemies=1&(talent.pillar_of_frost&buff.pillar_of_frost.remains<gcd*2&buff.pillar_of_frost.up&!talent.obliteration||!talent.pillar_of_frost)&(!raid_event.adds.exists||(raid_event.adds.in>15+raid_event.adds.duration||talent.absolute_zero&raid_event.adds.in>15+raid_event.adds.duration))||boss&fight_remains<3\nactions.cooldowns+=/frostwyrms_fury,if=active_enemies>=2&(talent.pillar_of_frost&buff.pillar_of_frost.up||raid_event.adds.exists&raid_event.adds.up&raid_event.adds.in>cooldown.pillar_of_frost.remains_expected-raid_event.adds.in-raid_event.adds.duration)&(buff.pillar_of_frost.remains<gcd*2||raid_event.adds.exists&raid_event.adds.remains<gcd*2)\nactions.cooldowns+=/frostwyrms_fury,if=talent.obliteration&cooldown.empower_rune_weapon.charges<1&(talent.pillar_of_frost&buff.pillar_of_frost.up&!variable.two_hand_check||!buff.pillar_of_frost.up&variable.two_hand_check&cooldown.pillar_of_frost.remains>10||!talent.pillar_of_frost)&((buff.pillar_of_frost.remains<gcd||buff.unholy_strength.up&buff.unholy_strength.remains<gcd)&(debuff.razorice.stack=5||!death_knight.runeforge.razorice&!talent.glacial_advance))\nactions.cooldowns+=/frostwyrms_fury,if=talent.obliteration&(talent.pillar_of_frost&buff.pillar_of_frost.up&!variable.two_hand_check||!buff.pillar_of_frost.up&variable.two_hand_check&cooldown.pillar_of_frost.remains||!talent.pillar_of_frost)&((buff.pillar_of_frost.remains<gcd||buff.unholy_strength.up&buff.unholy_strength.remains<gcd)&(debuff.razorice.stack=5||!death_knight.runeforge.razorice&!talent.glacial_advance))\nactions.cooldowns+=/raise_dead\nactions.cooldowns+=/soul_reaper,if=fight_remains>5&target.time_to_pct_35<5&active_enemies<=2&(talent.obliteration&(buff.pillar_of_frost.up&!buff.killing_machine.up||!buff.pillar_of_frost.up)||talent.breath_of_sindragosa&(buff.breath_of_sindragosa.up&runic_power>40||!buff.breath_of_sindragosa.up)||!talent.breath_of_sindragosa&!talent.obliteration)\nactions.cooldowns+=/sacrificial_pact,if=!talent.glacial_advance&!buff.breath_of_sindragosa.up&pet.ghoul.remains<gcd*2&active_enemies>3\nactions.cooldowns+=/any_dnd,if=!death_and_decay.ticking&variable.adds_remain&(buff.pillar_of_frost.up&buff.pillar_of_frost.remains>5&buff.pillar_of_frost.remains<11||!buff.pillar_of_frost.up&cooldown.pillar_of_frost.remains>10||boss&fight_remains<11)&(active_enemies>5||talent.cleaving_strikes&active_enemies>=2)\n\n# Obliteration Active Rotation\nactions.obliteration+=/remorseless_winter,if=active_enemies>3\nactions.obliteration+=/howling_blast,if=buff.killing_machine.stack<2&buff.pillar_of_frost.remains<gcd&buff.rime.up\nactions.obliteration+=/frost_strike,if=buff.killing_machine.stack<2&buff.pillar_of_frost.remains<gcd\nactions.obliteration+=/glacial_advance,if=buff.killing_machine.stack<2&buff.pillar_of_frost.remains<gcd&!death_and_decay.ticking\nactions.obliteration+=/obliterate,cycle_targets=1,if=buff.killing_machine.up&!variable.frostscythe_priority\nactions.obliteration+=/frostscythe,if=buff.killing_machine.up&variable.frostscythe_priority\nactions.obliteration+=/howling_blast,if=!dot.frost_fever.ticking&!buff.killing_machine.up\nactions.obliteration+=/glacial_advance,if=!death_knight.runeforge.razorice&!buff.killing_machine.react&(debuff.razorice.stack<5||debuff.razorice.remains<gcd*3)\nactions.obliteration+=/frost_strike,cycle_targets=1,if=!buff.killing_machine.up&(rune<2||variable.rp_buffs||debuff.razorice.stack=5&talent.shattering_blade)&!variable.pooling_runic_power&(!talent.glacial_advance||active_enemies=1)\nactions.obliteration+=/howling_blast,if=buff.rime.up&!buff.killing_machine.up\nactions.obliteration+=/glacial_advance,if=!variable.pooling_runic_power&variable.rp_buffs&!buff.killing_machine.up&active_enemies>=2\nactions.obliteration+=/frost_strike,cycle_targets=1,if=!buff.killing_machine.up&!variable.pooling_runic_power&(!talent.glacial_advance||active_enemies=1)\nactions.obliteration+=/howling_blast,if=!buff.killing_machine.up&runic_power<25\nactions.obliteration+=/arcane_torrent,if=rune<1&runic_power<25\nactions.obliteration+=/glacial_advance,if=!variable.pooling_runic_power&active_enemies>=2\nactions.obliteration+=/frost_strike,cycle_targets=1,if=!variable.pooling_runic_power&(!talent.glacial_advance||active_enemies=1)\nactions.obliteration+=/howling_blast,if=buff.rime.up\nactions.obliteration+=/obliterate,cycle_targets=1\n\n# Racial Abilities\nactions.racials+=/blood_fury,if=variable.cooldown_check\nactions.racials+=/berserking,if=variable.cooldown_check\nactions.racials+=/arcane_pulse,if=variable.cooldown_check\nactions.racials+=/lights_judgment,if=variable.cooldown_check\nactions.racials+=/ancestral_call,if=variable.cooldown_check\nactions.racials+=/fireblood,if=variable.cooldown_check\nactions.racials+=/bag_of_tricks,if=talent.obliteration&!buff.pillar_of_frost.up&buff.unholy_strength.up\nactions.racials+=/bag_of_tricks,if=!talent.obliteration&buff.pillar_of_frost.up&(buff.unholy_strength.up&buff.unholy_strength.remains<gcd*3||buff.pillar_of_frost.remains<gcd*3)\n\n# Single Target Rotation\nactions.single_target+=/remorseless_winter,if=variable.rw_buffs||variable.adds_remain\nactions.single_target+=/frost_strike,if=buff.killing_machine.stack<2&runic_power.deficit<20&!variable.two_hand_check\nactions.single_target+=/howling_blast,if=buff.rime.up&set_bonus.tier30_2pc&buff.killing_machine.stack<2\nactions.single_target+=/frostscythe,if=buff.killing_machine.up&variable.frostscythe_priority\nactions.single_target+=/obliterate,if=buff.killing_machine.react\nactions.single_target+=/howling_blast,if=buff.rime.up&talent.icebreaker.rank=2\nactions.single_target+=/horn_of_winter,if=rune<4&runic_power.deficit>25&talent.obliteration&talent.breath_of_sindragosa\nactions.single_target+=/frost_strike,if=!variable.pooling_runic_power&(variable.rp_buffs||runic_power.deficit<25||debuff.razorice.stack=5&talent.shattering_blade)\nactions.single_target+=/howling_blast,if=variable.rime_buffs\nactions.single_target+=/glacial_advance,if=!variable.pooling_runic_power&!death_knight.runeforge.razorice&(debuff.razorice.stack<5||debuff.razorice.remains<gcd*3)\nactions.single_target+=/obliterate,if=!variable.pooling_runes\nactions.single_target+=/horn_of_winter,if=rune<4&runic_power.deficit>25&(!talent.breath_of_sindragosa||cooldown.breath_of_sindragosa.remains>cooldown.horn_of_winter.duration)\nactions.single_target+=/arcane_torrent,if=runic_power.deficit>20\nactions.single_target+=/frost_strike,if=!variable.pooling_runic_power\n\nactions.trinkets+=/use_item,use_off_gcd=1,name=algethar_puzzle_box,if=!buff.pillar_of_frost.up&cooldown.pillar_of_frost.remains<2&(!talent.breath_of_sindragosa||runic_power>60&(buff.breath_of_sindragosa.up||cooldown.breath_of_sindragosa.remains<2))\n# The trinket with the highest estimated value, will be used first and paired with Pillar of Frost.\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket1,if=variable.trinket_1_buffs&!variable.trinket_1_manual&(talent.obliteration&cooldown.empower_rune_weapon.charges<1||!talent.obliteration)&(!buff.pillar_of_frost.up&trinket.1.cast_time>0||!trinket.1.cast_time>0)&(buff.breath_of_sindragosa.up||buff.pillar_of_frost.up)&(variable.trinket_2_exclude||!trinket.2.has_cooldown||trinket.2.cooldown.remains||variable.trinket_priority=1)||boss&trinket.1.proc.any_dps.duration>=fight_remains\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket2,if=variable.trinket_2_buffs&!variable.trinket_2_manual&(talent.obliteration&cooldown.empower_rune_weapon.charges<1||!talent.obliteration)&(!buff.pillar_of_frost.up&trinket.2.cast_time>0||!trinket.2.cast_time>0)&(buff.breath_of_sindragosa.up||buff.pillar_of_frost.up)&(variable.trinket_1_exclude||!trinket.1.has_cooldown||trinket.1.cooldown.remains||variable.trinket_priority=2)||boss&trinket.2.proc.any_dps.duration>=fight_remains\n# If only one on use trinket provides a buff, use the other on cooldown. Or if neither trinket provides a buff, use both on cooldown.\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket1,if=!variable.trinket_1_buffs&!variable.trinket_1_manual&(!variable.trinket_1_buffs&(trinket.2.cooldown.remains||!variable.trinket_2_buffs)||(trinket.1.cast_time>0&!buff.pillar_of_frost.up||!trinket.1.cast_time>0)||talent.pillar_of_frost&cooldown.pillar_of_frost.remains_expected>20||!talent.pillar_of_frost)\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket2,if=!variable.trinket_2_buffs&!variable.trinket_2_manual&(!variable.trinket_2_buffs&(trinket.1.cooldown.remains||!variable.trinket_1_buffs)||(trinket.2.cast_time>0&!buff.pillar_of_frost.up||!trinket.2.cast_time>0)||talent.pillar_of_frost&cooldown.pillar_of_frost.remains_expected>20||!talent.pillar_of_frost)\nactions.trinkets+=/use_items,use_off_gcd=1,if=(!variable.trinket_1_buffs||trinket.1.cooldown.remains)&(!variable.trinket_2_buffs||trinket.2.cooldown.remains)",
					["spec"] = 251,
				},
				["Survival"] = {
					["source"] = "# https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230521,
					["author"] = "SimC",
					["desc"] = "2023-05-21: Kill Shot moved higher in priority.\n\n2023-05-12: Added setting to use Kill Shot during Coordinated Assault for folks using Kill Shot macros.\n\n2023-05-08: High priority Kill Command in cleave should be used for targets that will live long enough to matter.\n\n2023-04-26: Update from SimulationCraft.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "muzzle",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "tranquilizing_shot",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies < 3",
								["list_name"] = "st",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 2",
								["list_name"] = "cleave",
							}, -- [5]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [6]
						},
						["cleave"] = {
							{
								["enabled"] = true,
								["criteria"] = "debuff.shredded_armor.down & set_bonus.tier30_4pc & target.time_to_die > 6",
								["action"] = "kill_command",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.coordinated_assault_empower.up || coordinated_assault_kill_shot",
								["action"] = "kill_shot",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "full_recharge_time < gcd.max || ! cooldown.coordinated_assault.remains || buff.coordinated_assault.remains & ! buff.coordinated_assault_empower.up",
								["action"] = "wildfire_bomb",
							}, -- [3]
							{
								["action"] = "death_chakram",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "stampede",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fury_of_the_eagle.remains || ! talent.fury_of_the_eagle.enabled",
								["action"] = "coordinated_assault",
							}, -- [6]
							{
								["action"] = "explosive_shot",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.wildfire_bomb.full_recharge_time > spell_targets / 2",
								["action"] = "carve",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "full_recharge_time < gcd.max || dot.shrapnel_bomb.ticking & ( dot.internal_bleeding.stack < 2 || dot.shrapnel_bomb.remains < gcd.max )",
								["action"] = "butchery",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! dot.wildfire_bomb.ticking",
								["action"] = "wildfire_bomb",
							}, -- [10]
							{
								["action"] = "fury_of_the_eagle",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "dot.shrapnel_bomb.ticking",
								["action"] = "carve",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "flanking_strike",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( ! next_wi_bomb.shrapnel || ! talent.wildfire_infusion.enabled )",
								["action"] = "butchery",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "mongoose_bite",
								["criteria"] = "debuff.latent_poison.stack > 8",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "raptor_strike",
								["criteria"] = "debuff.latent_poison.stack > 8",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "kill_command",
								["criteria"] = "focus + cast_regen < focus.max & full_recharge_time < gcd.max",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["action"] = "carve",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! buff.coordinated_assault.up",
								["action"] = "kill_shot",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "steel_trap",
							}, -- [20]
							{
								["action"] = "spearhead",
								["enabled"] = true,
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "mongoose_bite",
								["criteria"] = "buff.spearhead.remains",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "refreshable & target.time_to_die > 8 & ( ! talent.vipers_venom.enabled || talent.hydras_bite.enabled )",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "mongoose_bite",
								["cycle_targets"] = 1,
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "raptor_strike",
								["cycle_targets"] = 1,
							}, -- [25]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.coordinated_assault.up || buff.spearhead.up || ! talent.spearhead.enabled & ! talent.coordinated_assault.enabled",
								["action"] = "blood_fury",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.terms_of_engagement.enabled & focus < focus.max || target.outside10",
								["action"] = "harpoon",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.coordinated_assault.up || buff.spearhead.up || ! talent.spearhead.enabled & ! talent.coordinated_assault.enabled",
								["action"] = "ancestral_call",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.coordinated_assault.up || buff.spearhead.up || ! talent.spearhead.enabled & ! talent.coordinated_assault.enabled",
								["action"] = "fireblood",
							}, -- [4]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.kill_command.full_recharge_time > gcd.max",
								["action"] = "bag_of_tricks",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.coordinated_assault.up || buff.spearhead.up || ! talent.spearhead.enabled & ! talent.coordinated_assault.enabled || boss & fight_remains < 13",
								["action"] = "berserking",
							}, -- [7]
							{
								["action"] = "muzzle",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "target.boss & fight_remains < 25 || buff.coordinated_assault.up || buff.spearhead.up || ! talent.spearhead.enabled & ! talent.coordinated_assault.enabled",
								["action"] = "potion",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "algethar_puzzle_box",
								["use_off_gcd"] = 1,
								["name"] = "algethar_puzzle_box",
								["criteria"] = "gcd.remains > gcd.max - 0.1 || settings.gcdSync",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "manic_grieftorch",
								["use_off_gcd"] = 1,
								["name"] = "manic_grieftorch",
								["criteria"] = "gcd.remains > gcd.max - 0.1 & ! buff.spearhead.up",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "use_items",
								["description"] = "Sim would use off GCD just after GCD is invoked, but it is awkward to present in-game.",
								["criteria"] = "! buff.spearhead.up",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "target.distance >= 6",
								["action"] = "aspect_of_the_eagle",
							}, -- [13]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max || talent.spearhead.enabled & ! cooldown.spearhead.remains",
								["action"] = "death_chakram",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "focus + action.kill_command.cast_regen > focus.max - 10 & ( cooldown.death_chakram.remains || ! talent.death_chakram.enabled )",
								["action"] = "spearhead",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.coordinated_assault_empower.up || coordinated_assault_kill_shot",
								["action"] = "kill_shot",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.adds.in > cooldown.wildfire_bomb.full_recharge_time - ( cooldown.wildfire_bomb.full_recharge_time / 3.5 ) & debuff.shredded_armor.up & ( full_recharge_time < 2 * gcd.max || talent.bombardier.enabled & ! cooldown.coordinated_assault.remains || talent.bombardier.enabled & buff.coordinated_assault.up & buff.coordinated_assault.remains < 2 * gcd.max ) || ! raid_event.adds.exists & time_to_die < 7 ) & set_bonus.tier30_4pc",
								["action"] = "wildfire_bomb",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "kill_command",
								["criteria"] = "full_recharge_time < gcd.max & focus + cast_regen < focus.max & buff.deadly_duo.stack > 1",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "kill_command",
								["criteria"] = "cooldown.wildfire_bomb.full_recharge_time < 2 * gcd.max & debuff.shredded_armor.down & set_bonus.tier30_4pc",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.spearhead.remains",
								["action"] = "mongoose_bite",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & boss & fight_remains < focus / ( variable.mb_rs_cost - cast_regen ) * gcd.max || buff.mongoose_fury.up & buff.mongoose_fury.remains < gcd.max",
								["action"] = "mongoose_bite",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! buff.coordinated_assault.up",
								["action"] = "kill_shot",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & boss & fight_remains < focus / ( variable.mb_rs_cost - cast_regen ) * gcd.max",
								["action"] = "raptor_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "refreshable & target.time_to_die > 7 & ! talent.vipers_venom.enabled",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.alpha_predator.enabled & buff.mongoose_fury.up & buff.mongoose_fury.remains < focus / ( variable.mb_rs_cost - cast_regen ) * gcd.max",
								["action"] = "mongoose_bite",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "flanking_strike",
							}, -- [13]
							{
								["action"] = "stampede",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! talent.coordinated_kill.enabled & target.health.pct < 20 & ( ! buff.spearhead.remains & cooldown.spearhead.remains || ! talent.spearhead.enabled ) || talent.coordinated_kill.enabled & ( ! buff.spearhead.remains & cooldown.spearhead.remains || ! talent.spearhead.enabled )",
								["action"] = "coordinated_assault",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "kill_command",
								["criteria"] = "full_recharge_time < gcd.max & focus + cast_regen < focus.max & ( cooldown.flanking_strike.remains || ! talent.flanking_strike.enabled ) || debuff.shredded_armor.down & set_bonus.tier30_4pc",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "dot.shrapnel_bomb.ticking",
								["action"] = "mongoose_bite",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "refreshable & ! talent.vipers_venom.enabled",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > cooldown.wildfire_bomb.full_recharge_time - ( cooldown.wildfire_bomb.full_recharge_time / 3.5 ) & full_recharge_time < gcd.max & ( ! set_bonus.tier29_2pc || active_enemies > 1 )",
								["action"] = "wildfire_bomb",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "mongoose_bite",
								["criteria"] = "buff.mongoose_fury.up",
								["cycle_targets"] = 1,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "talent.ranger.enabled",
								["action"] = "explosive_shot",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > cooldown.wildfire_bomb.full_recharge_time - ( cooldown.wildfire_bomb.full_recharge_time / 3.5 ) & ( full_recharge_time < gcd.max || ! dot.wildfire_bomb.ticking & set_bonus.tier30_4pc )",
								["action"] = "wildfire_bomb",
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "mongoose_bite",
								["criteria"] = "focus + action.kill_command.cast_regen > focus.max - 10 || set_bonus.tier30_4pc",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "raptor_strike",
								["cycle_targets"] = 1,
							}, -- [24]
							{
								["action"] = "steel_trap",
								["enabled"] = true,
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > cooldown.wildfire_bomb.full_recharge_time - ( cooldown.wildfire_bomb.full_recharge_time / 3.5 ) & ! dot.wildfire_bomb.ticking",
								["action"] = "wildfire_bomb",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "kill_command",
								["criteria"] = "focus + cast_regen < focus.max",
								["cycle_targets"] = 1,
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "! talent.coordinated_kill.enabled & time_to_die > 140",
								["action"] = "coordinated_assault",
							}, -- [28]
							{
								["interrupt"] = "1",
								["action"] = "fury_of_the_eagle",
								["enabled"] = true,
							}, -- [29]
						},
						["precombat"] = {
							{
								["action"] = "summon_pet",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "algethar_puzzle_box",
								["description"] = "Snapshot raid buffed stats before combat begins and pre-potting is done.",
								["name"] = "algethar_puzzle_box",
							}, -- [2]
							{
								["enabled"] = true,
								["precast_time"] = "2",
								["action"] = "steel_trap",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "mb_rs_cost",
								["criteria"] = "talent.mongoose_bite.enabled",
								["value_else"] = "action.raptor_strike.cost",
								["value"] = "action.mongoose_bite.cost",
							}, -- [4]
						},
					},
					["version"] = 20230521,
					["warnings"] = "The import for 'precombat' required some automated changes.\nLine 4: Converted 'talent.mongoose_bite' to 'talent.mongoose_bite.enabled' (1x).\n\nThe import for 'cds' required some automated changes.\nLine 1: Converted 'talent.spearhead' to 'talent.spearhead.enabled' (1x).\nLine 1: Converted 'talent.coordinated_assault' to 'talent.coordinated_assault.enabled' (1x).\nLine 3: Converted 'talent.spearhead' to 'talent.spearhead.enabled' (1x).\nLine 3: Converted 'talent.coordinated_assault' to 'talent.coordinated_assault.enabled' (1x).\nLine 4: Converted 'talent.spearhead' to 'talent.spearhead.enabled' (1x).\nLine 4: Converted 'talent.coordinated_assault' to 'talent.coordinated_assault.enabled' (1x).\nLine 7: Converted 'talent.spearhead' to 'talent.spearhead.enabled' (1x).\nLine 7: Converted 'talent.coordinated_assault' to 'talent.coordinated_assault.enabled' (1x).\nLine 9: Converted 'talent.spearhead' to 'talent.spearhead.enabled' (1x).\nLine 9: Converted 'talent.coordinated_assault' to 'talent.coordinated_assault.enabled' (1x).\n\nThe import for 'st' required some automated changes.\nLine 1: Converted 'talent.spearhead' to 'talent.spearhead.enabled' (1x).\nLine 2: Converted 'talent.death_chakram' to 'talent.death_chakram.enabled' (1x).\nLine 4: Converted 'talent.bombardier' to 'talent.bombardier.enabled' (1x).\nLine 4: Converted 'talent.bombardier' to 'talent.bombardier.enabled' (1x).\nLine 4: Converted operations in '(raid_event.adds.in>cooldown.wildfire_bomb.full_recharge_time-(cooldown.wildfire_bomb.full_recharge_time%3.5)&debuff.shredded_armor.up&(full_recharge_time<2*gcd.max||talent.bombardier.enabled&!cooldown.coordinated_assault.remains||talent.bombardier.enabled&buff.coordinated_assault.up&buff.coordinated_assault.remains<2*gcd.max)||!raid_event.adds.exists&time_to_die<7)&set_bonus.tier30_4pc' to '(raid_event.adds.in>cooldown.wildfire_bomb.full_recharge_time-(cooldown.wildfire_bomb.full_recharge_time/3.5)&debuff.shredded_armor.up&(full_recharge_time<2*gcd.max||talent.bombardier.enabled&!cooldown.coordinated_assault.remains||talent.bombardier.enabled&buff.coordinated_assault.up&buff.coordinated_assault.remains<2*gcd.max)||!raid_event.adds.exists&time_to_die<7)&set_bonus.tier30_4pc'.\nLine 8: Converted operations in 'active_enemies=1&boss&fight_remains<focus%(variable.mb_rs_cost-cast_regen)*gcd.max||buff.mongoose_fury.up&buff.mongoose_fury.remains<gcd.max' to 'active_enemies=1&boss&fight_remains<focus/(variable.mb_rs_cost-cast_regen)*gcd.max||buff.mongoose_fury.up&buff.mongoose_fury.remains<gcd.max'.\nLine 10: Converted operations in 'active_enemies=1&boss&fight_remains<focus%(variable.mb_rs_cost-cast_regen)*gcd.max' to 'active_enemies=1&boss&fight_remains<focus/(variable.mb_rs_cost-cast_regen)*gcd.max'.\nLine 11: Converted 'talent.vipers_venom' to 'talent.vipers_venom.enabled' (1x).\nLine 12: Converted 'talent.alpha_predator' to 'talent.alpha_predator.enabled' (1x).\nLine 12: Converted operations in 'talent.alpha_predator.enabled&buff.mongoose_fury.up&buff.mongoose_fury.remains<focus%(variable.mb_rs_cost-cast_regen)*gcd.max' to 'talent.alpha_predator.enabled&buff.mongoose_fury.up&buff.mongoose_fury.remains<focus/(variable.mb_rs_cost-cast_regen)*gcd.max'.\nLine 15: Converted 'talent.coordinated_kill' to 'talent.coordinated_kill.enabled' (1x).\nLine 15: Converted 'talent.spearhead' to 'talent.spearhead.enabled' (1x).\nLine 15: Converted 'talent.coordinated_kill' to 'talent.coordinated_kill.enabled' (1x).\nLine 15: Converted 'talent.spearhead' to 'talent.spearhead.enabled' (1x).\nLine 16: Converted 'talent.flanking_strike' to 'talent.flanking_strike.enabled' (1x).\nLine 18: Converted 'talent.vipers_venom' to 'talent.vipers_venom.enabled' (1x).\nLine 19: Converted operations in 'raid_event.adds.in>cooldown.wildfire_bomb.full_recharge_time-(cooldown.wildfire_bomb.full_recharge_time%3.5)&full_recharge_time<gcd.max&(!set_bonus.tier29_2pc||active_enemies>1)' to 'raid_event.adds.in>cooldown.wildfire_bomb.full_recharge_time-(cooldown.wildfire_bomb.full_recharge_time/3.5)&full_recharge_time<gcd.max&(!set_bonus.tier29_2pc||active_enemies>1)'.\nLine 21: Converted 'talent.ranger' to 'talent.ranger.enabled' (1x).\nLine 22: Converted operations in 'raid_event.adds.in>cooldown.wildfire_bomb.full_recharge_time-(cooldown.wildfire_bomb.full_recharge_time%3.5)&(full_recharge_time<gcd.max||!dot.wildfire_bomb.ticking&set_bonus.tier30_4pc)' to 'raid_event.adds.in>cooldown.wildfire_bomb.full_recharge_time-(cooldown.wildfire_bomb.full_recharge_time/3.5)&(full_recharge_time<gcd.max||!dot.wildfire_bomb.ticking&set_bonus.tier30_4pc)'.\nLine 26: Converted operations in 'raid_event.adds.in>cooldown.wildfire_bomb.full_recharge_time-(cooldown.wildfire_bomb.full_recharge_time%3.5)&!dot.wildfire_bomb.ticking' to 'raid_event.adds.in>cooldown.wildfire_bomb.full_recharge_time-(cooldown.wildfire_bomb.full_recharge_time/3.5)&!dot.wildfire_bomb.ticking'.\nLine 28: Converted 'talent.coordinated_kill' to 'talent.coordinated_kill.enabled' (1x).\n\nThe import for 'cleave' required some automated changes.\nLine 6: Converted 'talent.fury_of_the_eagle' to 'talent.fury_of_the_eagle.enabled' (1x).\nLine 8: Converted operations in 'cooldown.wildfire_bomb.full_recharge_time>spell_targets%2' to 'cooldown.wildfire_bomb.full_recharge_time>spell_targets/2'.\nLine 14: Converted 'talent.wildfire_infusion' to 'talent.wildfire_infusion.enabled' (1x).\nLine 23: Converted 'talent.vipers_venom' to 'talent.vipers_venom.enabled' (1x).\nLine 23: Converted 'talent.hydras_bite' to 'talent.hydras_bite.enabled' (1x).\n\nImported 5 action lists.\n",
					["profile"] = "actions.precombat+=/summon_pet\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/use_item,name=algethar_puzzle_box\nactions.precombat+=/steel_trap,precast_time=2\nactions.precombat+=/variable,name=mb_rs_cost,op=setif,value=action.mongoose_bite.cost,value_else=action.raptor_strike.cost,condition=talent.mongoose_bite\n\nactions+=/muzzle\nactions+=/tranquilizing_shot\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=st,strict=1,if=active_enemies<3\nactions+=/call_action_list,name=cleave,strict=1,if=active_enemies>2\nactions+=/arcane_torrent\n\nactions.cds+=/blood_fury,if=buff.coordinated_assault.up||buff.spearhead.up||!talent.spearhead&!talent.coordinated_assault\nactions.cds+=/harpoon,if=talent.terms_of_engagement.enabled&focus<focus.max||target.outside10\nactions.cds+=/ancestral_call,if=buff.coordinated_assault.up||buff.spearhead.up||!talent.spearhead&!talent.coordinated_assault\nactions.cds+=/fireblood,if=buff.coordinated_assault.up||buff.spearhead.up||!talent.spearhead&!talent.coordinated_assault\nactions.cds+=/lights_judgment\nactions.cds+=/bag_of_tricks,if=cooldown.kill_command.full_recharge_time>gcd\nactions.cds+=/berserking,if=buff.coordinated_assault.up||buff.spearhead.up||!talent.spearhead&!talent.coordinated_assault||boss&fight_remains<13\nactions.cds+=/muzzle\nactions.cds+=/potion,if=target.boss&fight_remains<25||buff.coordinated_assault.up||buff.spearhead.up||!talent.spearhead&!talent.coordinated_assault\nactions.cds+=/use_item,name=algethar_puzzle_box,use_off_gcd=1,if=gcd.remains>gcd.max-0.1||settings.gcdSync\nactions.cds+=/use_item,name=manic_grieftorch,use_off_gcd=1,if=gcd.remains>gcd.max-0.1&!buff.spearhead.up\n# Sim would use off GCD just after GCD is invoked, but it is awkward to present in-game.\nactions.cds+=/use_items,if=!buff.spearhead.up\nactions.cds+=/aspect_of_the_eagle,if=target.distance>=6\n\nactions.cleave+=/kill_command,if=debuff.shredded_armor.down&set_bonus.tier30_4pc&target.time_to_die>6\nactions.cleave+=/kill_shot,if=buff.coordinated_assault_empower.up||coordinated_assault_kill_shot\nactions.cleave+=/wildfire_bomb,if=full_recharge_time<gcd||!cooldown.coordinated_assault.remains||buff.coordinated_assault.remains&!buff.coordinated_assault_empower.up\nactions.cleave+=/death_chakram\nactions.cleave+=/stampede\nactions.cleave+=/coordinated_assault,if=cooldown.fury_of_the_eagle.remains||!talent.fury_of_the_eagle\nactions.cleave+=/explosive_shot\nactions.cleave+=/carve,if=cooldown.wildfire_bomb.full_recharge_time>spell_targets%2\nactions.cleave+=/butchery,if=full_recharge_time<gcd||dot.shrapnel_bomb.ticking&(dot.internal_bleeding.stack<2||dot.shrapnel_bomb.remains<gcd)\nactions.cleave+=/wildfire_bomb,if=!dot.wildfire_bomb.ticking\nactions.cleave+=/fury_of_the_eagle\nactions.cleave+=/carve,if=dot.shrapnel_bomb.ticking\nactions.cleave+=/flanking_strike,if=focus+cast_regen<focus.max\nactions.cleave+=/butchery,if=(!next_wi_bomb.shrapnel||!talent.wildfire_infusion)\nactions.cleave+=/mongoose_bite,cycle_targets=1,if=debuff.latent_poison.stack>8\nactions.cleave+=/raptor_strike,cycle_targets=1,if=debuff.latent_poison.stack>8\nactions.cleave+=/kill_command,cycle_targets=1,if=focus+cast_regen<focus.max&full_recharge_time<gcd\nactions.cleave+=/carve\nactions.cleave+=/kill_shot,if=!buff.coordinated_assault.up\nactions.cleave+=/steel_trap,if=focus+cast_regen<focus.max\nactions.cleave+=/spearhead\nactions.cleave+=/mongoose_bite,cycle_targets=1,if=buff.spearhead.remains\nactions.cleave+=/serpent_sting,cycle_targets=1,if=refreshable&target.time_to_die>8&(!talent.vipers_venom||talent.hydras_bite)\nactions.cleave+=/mongoose_bite,cycle_targets=1\nactions.cleave+=/raptor_strike,cycle_targets=1\n\nactions.st+=/death_chakram,if=focus+cast_regen<focus.max||talent.spearhead&!cooldown.spearhead.remains\nactions.st+=/spearhead,if=focus+action.kill_command.cast_regen>focus.max-10&(cooldown.death_chakram.remains||!talent.death_chakram)\nactions.st+=/kill_shot,if=buff.coordinated_assault_empower.up||coordinated_assault_kill_shot\nactions.st+=/wildfire_bomb,if=(raid_event.adds.in>cooldown.wildfire_bomb.full_recharge_time-(cooldown.wildfire_bomb.full_recharge_time%3.5)&debuff.shredded_armor.up&(full_recharge_time<2*gcd||talent.bombardier&!cooldown.coordinated_assault.remains||talent.bombardier&buff.coordinated_assault.up&buff.coordinated_assault.remains<2*gcd)||!raid_event.adds.exists&time_to_die<7)&set_bonus.tier30_4pc\nactions.st+=/kill_command,cycle_targets=1,if=full_recharge_time<gcd&focus+cast_regen<focus.max&buff.deadly_duo.stack>1\nactions.st+=/kill_command,cycle_targets=1,if=cooldown.wildfire_bomb.full_recharge_time<2*gcd&debuff.shredded_armor.down&set_bonus.tier30_4pc\nactions.st+=/mongoose_bite,if=buff.spearhead.remains\nactions.st+=/mongoose_bite,if=active_enemies=1&boss&fight_remains<focus%(variable.mb_rs_cost-cast_regen)*gcd||buff.mongoose_fury.up&buff.mongoose_fury.remains<gcd\nactions.st+=/kill_shot,if=!buff.coordinated_assault.up\nactions.st+=/raptor_strike,if=active_enemies=1&boss&fight_remains<focus%(variable.mb_rs_cost-cast_regen)*gcd\nactions.st+=/serpent_sting,cycle_targets=1,if=refreshable&target.time_to_die>7&!talent.vipers_venom\nactions.st+=/mongoose_bite,if=talent.alpha_predator&buff.mongoose_fury.up&buff.mongoose_fury.remains<focus%(variable.mb_rs_cost-cast_regen)*gcd\nactions.st+=/flanking_strike,if=focus+cast_regen<focus.max\nactions.st+=/stampede\nactions.st+=/coordinated_assault,if=!talent.coordinated_kill&target.health.pct<20&(!buff.spearhead.remains&cooldown.spearhead.remains||!talent.spearhead)||talent.coordinated_kill&(!buff.spearhead.remains&cooldown.spearhead.remains||!talent.spearhead)\nactions.st+=/kill_command,cycle_targets=1,if=full_recharge_time<gcd&focus+cast_regen<focus.max&(cooldown.flanking_strike.remains||!talent.flanking_strike)||debuff.shredded_armor.down&set_bonus.tier30_4pc\nactions.st+=/mongoose_bite,if=dot.shrapnel_bomb.ticking\nactions.st+=/serpent_sting,cycle_targets=1,if=refreshable&!talent.vipers_venom\nactions.st+=/wildfire_bomb,if=raid_event.adds.in>cooldown.wildfire_bomb.full_recharge_time-(cooldown.wildfire_bomb.full_recharge_time%3.5)&full_recharge_time<gcd&(!set_bonus.tier29_2pc||active_enemies>1)\nactions.st+=/mongoose_bite,cycle_targets=1,if=buff.mongoose_fury.up\nactions.st+=/explosive_shot,if=talent.ranger\nactions.st+=/wildfire_bomb,if=raid_event.adds.in>cooldown.wildfire_bomb.full_recharge_time-(cooldown.wildfire_bomb.full_recharge_time%3.5)&(full_recharge_time<gcd||!dot.wildfire_bomb.ticking&set_bonus.tier30_4pc)\nactions.st+=/mongoose_bite,cycle_targets=1,if=focus+action.kill_command.cast_regen>focus.max-10||set_bonus.tier30_4pc\nactions.st+=/raptor_strike,cycle_targets=1\nactions.st+=/steel_trap\nactions.st+=/wildfire_bomb,if=raid_event.adds.in>cooldown.wildfire_bomb.full_recharge_time-(cooldown.wildfire_bomb.full_recharge_time%3.5)&!dot.wildfire_bomb.ticking\nactions.st+=/kill_command,cycle_targets=1,if=focus+cast_regen<focus.max\nactions.st+=/coordinated_assault,if=!talent.coordinated_kill&time_to_die>140\nactions.st+=/fury_of_the_eagle,interrupt=1",
					["spec"] = 255,
				},
				["Arms"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230520,
					["author"] = "SimulationCraft",
					["desc"] = "2023-05-20:  Update trinket/CDs.\n\n2023-05-08:  Use Arcane Torrent at pretty low priority in single-target.\n\n2023-05-02:  Update for 10.1.\n\n2023-03-26:  Include Spell Reflection.",
					["lists"] = {
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1",
								["action"] = "sweeping_strikes",
							}, -- [1]
							{
								["action"] = "mortal_strike",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "remains <= gcd.max || talent.tide_of_blood.enabled & cooldown.skullsplitter.remains <= gcd.max & ( cooldown.colossus_smash.remains <= gcd.max || debuff.colossus_smash.up ) & dot.rend.remains < dot.rend.duration * 0.85",
								["action"] = "rend",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.warlords_torment.enabled & rage.pct < 33 & ( cooldown.colossus_smash.ready || debuff.colossus_smash.up || buff.test_of_might.up ) || ! talent.warlords_torment.enabled & ( cooldown.colossus_smash.ready || debuff.colossus_smash.up )",
								["action"] = "avatar",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.colossus_smash.remains <= gcd.max || cooldown.warbreaker.remains <= gcd.max",
								["action"] = "spear_of_bastion",
							}, -- [5]
							{
								["action"] = "warbreaker",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "colossus_smash",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.test_of_might.up || talent.test_of_might.enabled & debuff.colossus_smash.up & rage.pct < 33 || ! talent.test_of_might.enabled & debuff.colossus_smash.up",
								["action"] = "thunderous_roar",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.hurricane.enabled & ( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up ) || talent.unhinged.enabled & ( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up )",
								["action"] = "bladestorm",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.tide_of_blood.enabled & dot.rend.remains & ( debuff.colossus_smash.up || cooldown.colossus_smash.remains > gcd.max * 4 & buff.test_of_might.up || ! talent.test_of_might.enabled & cooldown.colossus_smash.remains > gcd.max * 4 ) || rage < 30",
								["action"] = "skullsplitter",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_death.react",
								["action"] = "execute",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.sonic_boom.enabled",
								["action"] = "shockwave",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.anger_management.enabled || talent.test_of_might.enabled & debuff.colossus_smash.up",
								["action"] = "ignore_pain",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_of_swords.enabled & talent.battlelord.enabled & rage.pct > 80 & debuff.colossus_smash.up",
								["action"] = "whirlwind",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "charges = 2 & ! talent.battlelord.enabled & ( debuff.colossus_smash.down || rage.pct < 25 ) || talent.battlelord.enabled",
								["action"] = "overpower",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_of_swords.enabled || talent.fervor_of_battle.enabled & active_enemies > 1",
								["action"] = "whirlwind",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "talent.battlelord.enabled & talent.blood_and_thunder.enabled",
								["action"] = "thunder_clap",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.down & rage.pct < 50 & ! talent.battlelord.enabled || rage.pct < 25",
								["action"] = "overpower",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.merciless_bonegrinder.up",
								["action"] = "whirlwind",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier29_2pc & ! talent.crushing_force.enabled",
								["action"] = "cleave",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "rage > 30 & ( ! talent.fervor_of_battle.enabled || talent.fervor_of_battle.enabled & active_enemies = 1 )",
								["action"] = "slam",
							}, -- [21]
							{
								["action"] = "bladestorm",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "cleave",
								["enabled"] = true,
							}, -- [24]
							{
								["action"] = "wrecking_throw",
								["enabled"] = true,
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "remains < duration * 0.3",
								["action"] = "rend",
							}, -- [26]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "time <= 0.5 || movement.distance > 8",
								["action"] = "charge",
							}, -- [1]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "spell_reflection",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "gcd.remains = 0 & debuff.colossus_smash.remains > 8 || boss & fight_remains < 25",
								["action"] = "potion",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.avatar.remains < 3",
								["action"] = "algethar_puzzle_box",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.avatar.up",
								["action"] = "vial_of_animated_blood",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.avatar.up",
								["action"] = "irideus_fragment",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.avatar.up & ! debuff.colossus_smash.up",
								["action"] = "manic_grieftorch",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "gcd.remains = 0 & debuff.colossus_smash.remains > 8 || boss & fight_remains < 25",
								["action"] = "gladiators_badge",
							}, -- [9]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.mortal_strike.remains > 1.5 & rage < 50",
								["action"] = "arcane_torrent",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.down & cooldown.mortal_strike.remains",
								["action"] = "lights_judgment",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.down & cooldown.mortal_strike.remains",
								["action"] = "bag_of_tricks",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.remains > 6",
								["action"] = "berserking",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.up",
								["action"] = "ancestral_call",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.up",
								["action"] = "blood_fury",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.up",
								["action"] = "ancestral_call",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "raid_event.adds.exists || active_enemies > 2",
								["list_name"] = "hac",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["cycle_targets"] = 1,
								["strict"] = 1,
								["criteria"] = "( talent.massacre.enabled & target.health.pct < 35 ) || target.health.pct < 20",
								["list_name"] = "execute",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "! raid_event.adds.exists",
								["list_name"] = "single_target",
							}, -- [20]
						},
						["precombat"] = {
							{
								["action"] = "battle_stance",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "battle_shout",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [3]
						},
						["execute"] = {
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1",
								["action"] = "sweeping_strikes",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "remains <= gcd.max & ( ! talent.warbreaker.enabled & cooldown.colossus_smash.remains < 4 || talent.warbreaker.enabled & cooldown.warbreaker.remains < 4 ) & target.time_to_die > 12",
								["action"] = "rend",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.colossus_smash.ready || debuff.colossus_smash.up || boss & fight_remains < 20",
								["action"] = "avatar",
							}, -- [3]
							{
								["action"] = "warbreaker",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "colossus_smash",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up",
								["action"] = "thunderous_roar",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.up || buff.test_of_might.up",
								["action"] = "spear_of_bastion",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "rage < 40",
								["action"] = "skullsplitter",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 2 & dot.deep_wounds.remains < gcd.max",
								["action"] = "cleave",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "rage < 40 & buff.martial_prowess.stack < 2",
								["action"] = "overpower",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "debuff.executioners_precision.stack = 2 || dot.deep_wounds.remains <= gcd.max",
								["action"] = "mortal_strike",
							}, -- [11]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.sonic_boom.enabled",
								["action"] = "shockwave",
							}, -- [13]
							{
								["action"] = "overpower",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "bladestorm",
								["enabled"] = true,
							}, -- [15]
						},
						["hac"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.juggernaut.up & buff.juggernaut.remains < gcd.max",
								["action"] = "execute",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & talent.thunder_clap.enabled & talent.blood_and_thunder.enabled & talent.rend.enabled & dot.rend.remains <= dot.rend.duration * 0.3",
								["action"] = "thunder_clap",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & ( cooldown.bladestorm.remains > 15 || ! talent.bladestorm.enabled )",
								["action"] = "sweeping_strikes",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & remains <= gcd.max & ( target.health.pct > 20 || talent.massacre.enabled & target.health.pct > 35 ) || talent.tide_of_blood.enabled & cooldown.skullsplitter.remains <= gcd.max & ( cooldown.colossus_smash.remains <= gcd.max || debuff.colossus_smash.up ) & dot.rend.remains < dot.rend.duration * 0.85",
								["action"] = "rend",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 15 || talent.blademasters_torment.enabled & active_enemies > 1 || target.time_to_die < 20",
								["action"] = "avatar",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 22 || active_enemies > 1",
								["action"] = "warbreaker",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "colossus_smash",
								["criteria"] = "( target.health.pct < 20 || talent.massacre.enabled & target.health.pct < 35 )",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["action"] = "colossus_smash",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up ) & raid_event.adds.in > 15 || active_enemies > 1 & dot.deep_wounds.remains",
								["action"] = "thunderous_roar",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up ) & raid_event.adds.in > 15",
								["action"] = "spear_of_bastion",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.unhinged.enabled & ( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up )",
								["action"] = "bladestorm",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up ) & raid_event.adds.in > 30 || active_enemies > 1 & dot.deep_wounds.remains",
								["action"] = "bladestorm",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 || ! talent.battlelord.enabled & buff.merciless_bonegrinder.up & cooldown.mortal_strike.remains > gcd.max",
								["action"] = "cleave",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 || talent.storm_of_swords.enabled & ( buff.merciless_bonegrinder.up || buff.hurricane.up )",
								["action"] = "whirlwind",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "rage < 40 || talent.tide_of_blood.enabled & dot.rend.remains & ( buff.sweeping_strikes.up & active_enemies >= 2 || debuff.colossus_smash.up || buff.test_of_might.up )",
								["action"] = "skullsplitter",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_4pc",
								["action"] = "mortal_strike",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.sweeping_strikes.up & talent.dreadnaught.enabled",
								["action"] = "overpower",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "mortal_strike",
								["criteria"] = "debuff.executioners_precision.stack = 2 || dot.deep_wounds.remains <= gcd.max || talent.dreadnaught.enabled & talent.battlelord.enabled & active_enemies <= 2",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "execute",
								["criteria"] = "buff.sudden_death.react || active_enemies <= 2 & ( target.health.pct < 20 || talent.massacre.enabled & target.health.pct < 35 ) || buff.sweeping_strikes.up",
								["cycle_targets"] = 1,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 15",
								["action"] = "thunderous_roar",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & talent.sonic_boom.enabled",
								["action"] = "shockwave",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & ( charges = 2 & ! talent.battlelord.enabled & ( debuff.colossus_smash.down || rage.pct < 25 ) || talent.battlelord.enabled )",
								["action"] = "overpower",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & ! talent.battlelord.enabled & rage.pct > 70",
								["action"] = "slam",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "charges = 2 & ( ! talent.test_of_might.enabled || talent.test_of_might.enabled & debuff.colossus_smash.down || talent.battlelord.enabled ) || rage < 70",
								["action"] = "overpower",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "thunder_clap",
							}, -- [25]
							{
								["action"] = "mortal_strike",
								["enabled"] = true,
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & dot.rend.remains < duration * 0.3",
								["action"] = "rend",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_of_swords.enabled || talent.fervor_of_battle.enabled & active_enemies > 1",
								["action"] = "whirlwind",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "! talent.crushing_force.enabled",
								["action"] = "cleave",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "talent.battlelord.enabled & talent.anger_management.enabled & rage > 30 & ( target.health.pct > 20 || talent.massacre.enabled & target.health.pct > 35 )",
								["action"] = "ignore_pain",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "talent.crushing_force.enabled & rage > 30 & ( talent.fervor_of_battle.enabled & active_enemies = 1 || ! talent.fervor_of_battle.enabled )",
								["action"] = "slam",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "talent.sonic_boom.enabled",
								["action"] = "shockwave",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 30",
								["action"] = "bladestorm",
							}, -- [33]
							{
								["action"] = "wrecking_throw",
								["enabled"] = true,
							}, -- [34]
						},
					},
					["version"] = 20230520,
					["warnings"] = "The import for 'single_target' required some automated changes.\nLine 3: Converted 'talent.tide_of_blood' to 'talent.tide_of_blood.enabled' (1x).\nLine 4: Converted 'talent.warlords_torment' to 'talent.warlords_torment.enabled' (1x).\nLine 4: Converted 'talent.warlords_torment' to 'talent.warlords_torment.enabled' (1x).\nLine 8: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 8: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 9: Converted 'talent.hurricane' to 'talent.hurricane.enabled' (1x).\nLine 9: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 9: Converted 'talent.unhinged' to 'talent.unhinged.enabled' (1x).\nLine 9: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 10: Converted 'talent.tide_of_blood' to 'talent.tide_of_blood.enabled' (1x).\nLine 10: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 13: Converted 'talent.anger_management' to 'talent.anger_management.enabled' (1x).\nLine 13: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 14: Converted 'talent.storm_of_swords' to 'talent.storm_of_swords.enabled' (1x).\nLine 14: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 15: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 15: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 16: Converted 'talent.storm_of_swords' to 'talent.storm_of_swords.enabled' (1x).\nLine 16: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\nLine 17: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 17: Converted 'talent.blood_and_thunder' to 'talent.blood_and_thunder.enabled' (1x).\nLine 18: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 20: Converted 'talent.crushing_force' to 'talent.crushing_force.enabled' (1x).\nLine 21: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\nLine 21: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\n\nThe import for 'execute' required some automated changes.\nLine 2: Converted 'talent.warbreaker' to 'talent.warbreaker.enabled' (1x).\nLine 2: Converted 'talent.warbreaker' to 'talent.warbreaker.enabled' (1x).\nLine 6: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 13: Converted 'talent.sonic_boom' to 'talent.sonic_boom.enabled' (1x).\n\nThe import for 'hac' required some automated changes.\nLine 2: Converted 'talent.thunder_clap' to 'talent.thunder_clap.enabled' (1x).\nLine 2: Converted 'talent.blood_and_thunder' to 'talent.blood_and_thunder.enabled' (1x).\nLine 2: Converted 'talent.rend' to 'talent.rend.enabled' (1x).\nLine 3: Converted 'talent.bladestorm' to 'talent.bladestorm.enabled' (1x).\nLine 4: Converted 'talent.massacre' to 'talent.massacre.enabled' (1x).\nLine 4: Converted 'talent.tide_of_blood' to 'talent.tide_of_blood.enabled' (1x).\nLine 5: Converted 'talent.blademasters_torment' to 'talent.blademasters_torment.enabled' (1x).\nLine 7: Converted 'talent.massacre' to 'talent.massacre.enabled' (1x).\nLine 9: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 10: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 11: Converted 'talent.unhinged' to 'talent.unhinged.enabled' (1x).\nLine 11: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 12: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 13: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 14: Converted 'talent.storm_of_swords' to 'talent.storm_of_swords.enabled' (1x).\nLine 15: Converted 'talent.tide_of_blood' to 'talent.tide_of_blood.enabled' (1x).\nLine 17: Converted 'talent.dreadnaught' to 'talent.dreadnaught.enabled' (1x).\nLine 18: Converted 'talent.dreadnaught' to 'talent.dreadnaught.enabled' (1x).\nLine 18: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 19: Converted 'talent.massacre' to 'talent.massacre.enabled' (1x).\nLine 21: Converted 'talent.sonic_boom' to 'talent.sonic_boom.enabled' (1x).\nLine 22: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 22: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 23: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 24: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 24: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 24: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 28: Converted 'talent.storm_of_swords' to 'talent.storm_of_swords.enabled' (1x).\nLine 28: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\nLine 29: Converted 'talent.crushing_force' to 'talent.crushing_force.enabled' (1x).\nLine 30: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 30: Converted 'talent.anger_management' to 'talent.anger_management.enabled' (1x).\nLine 30: Converted 'talent.massacre' to 'talent.massacre.enabled' (1x).\nLine 31: Converted 'talent.crushing_force' to 'talent.crushing_force.enabled' (1x).\nLine 31: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\nLine 31: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\nLine 32: Converted 'talent.sonic_boom' to 'talent.sonic_boom.enabled' (1x).\n\nImported 5 action lists.\n",
					["profile"] = "actions.precombat+=/battle_stance\nactions.precombat+=/battle_shout\nactions.precombat+=/use_item,name=algethar_puzzle_box\n\nactions+=/charge,if=time<=0.5||movement.distance>8\nactions+=/pummel\nactions+=/spell_reflection\nactions+=/potion,if=gcd.remains=0&debuff.colossus_smash.remains>8||boss&fight_remains<25\nactions+=/algethar_puzzle_box,if=cooldown.avatar.remains<3\nactions+=/vial_of_animated_blood,if=buff.avatar.up\nactions+=/irideus_fragment,if=buff.avatar.up\nactions+=/manic_grieftorch,if=!buff.avatar.up&!debuff.colossus_smash.up\nactions+=/gladiators_badge,if=gcd.remains=0&debuff.colossus_smash.remains>8||boss&fight_remains<25\nactions+=/use_items\nactions+=/arcane_torrent,if=cooldown.mortal_strike.remains>1.5&rage<50\nactions+=/lights_judgment,if=debuff.colossus_smash.down&cooldown.mortal_strike.remains\nactions+=/bag_of_tricks,if=debuff.colossus_smash.down&cooldown.mortal_strike.remains\nactions+=/berserking,if=debuff.colossus_smash.remains>6\nactions+=/ancestral_call,if=debuff.colossus_smash.up\nactions+=/blood_fury,if=debuff.colossus_smash.up\nactions+=/ancestral_call,if=debuff.colossus_smash.up\nactions+=/run_action_list,name=hac,strict=1,if=raid_event.adds.exists||active_enemies>2\nactions+=/call_action_list,name=execute,cycle_targets=1,strict=1,if=(talent.massacre.enabled&target.health.pct<35)||target.health.pct<20\nactions+=/run_action_list,name=single_target,strict=1,if=!raid_event.adds.exists\n\nactions.execute+=/sweeping_strikes,if=spell_targets.whirlwind>1\nactions.execute+=/rend,if=remains<=gcd&(!talent.warbreaker&cooldown.colossus_smash.remains<4||talent.warbreaker&cooldown.warbreaker.remains<4)&target.time_to_die>12\nactions.execute+=/avatar,if=cooldown.colossus_smash.ready||debuff.colossus_smash.up||boss&fight_remains<20\nactions.execute+=/warbreaker\nactions.execute+=/colossus_smash\nactions.execute+=/thunderous_roar,if=buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up\nactions.execute+=/spear_of_bastion,if=debuff.colossus_smash.up||buff.test_of_might.up\nactions.execute+=/skullsplitter,if=rage<40\nactions.execute+=/cleave,if=spell_targets.whirlwind>2&dot.deep_wounds.remains<gcd\nactions.execute+=/overpower,if=rage<40&buff.martial_prowess.stack<2\nactions.execute+=/mortal_strike,if=debuff.executioners_precision.stack=2||dot.deep_wounds.remains<=gcd\nactions.execute+=/execute\nactions.execute+=/shockwave,if=talent.sonic_boom\nactions.execute+=/overpower\nactions.execute+=/bladestorm\n\nactions.hac+=/execute,if=buff.juggernaut.up&buff.juggernaut.remains<gcd\nactions.hac+=/thunder_clap,if=active_enemies>2&talent.thunder_clap&talent.blood_and_thunder&talent.rend&dot.rend.remains<=dot.rend.duration*0.3\nactions.hac+=/sweeping_strikes,if=active_enemies>=2&(cooldown.bladestorm.remains>15||!talent.bladestorm)\nactions.hac+=/rend,if=active_enemies=1&remains<=gcd&(target.health.pct>20||talent.massacre&target.health.pct>35)||talent.tide_of_blood&cooldown.skullsplitter.remains<=gcd&(cooldown.colossus_smash.remains<=gcd||debuff.colossus_smash.up)&dot.rend.remains<dot.rend.duration*0.85\nactions.hac+=/avatar,if=raid_event.adds.in>15||talent.blademasters_torment&active_enemies>1||target.time_to_die<20\nactions.hac+=/warbreaker,if=raid_event.adds.in>22||active_enemies>1\nactions.hac+=/colossus_smash,cycle_targets=1,if=(target.health.pct<20||talent.massacre&target.health.pct<35)\nactions.hac+=/colossus_smash\nactions.hac+=/thunderous_roar,if=(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)&raid_event.adds.in>15||active_enemies>1&dot.deep_wounds.remains\nactions.hac+=/spear_of_bastion,if=(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)&raid_event.adds.in>15\nactions.hac+=/bladestorm,if=talent.unhinged&(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)\nactions.hac+=/bladestorm,if=active_enemies>1&(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)&raid_event.adds.in>30||active_enemies>1&dot.deep_wounds.remains\nactions.hac+=/cleave,if=active_enemies>2||!talent.battlelord&buff.merciless_bonegrinder.up&cooldown.mortal_strike.remains>gcd\nactions.hac+=/whirlwind,if=active_enemies>2||talent.storm_of_swords&(buff.merciless_bonegrinder.up||buff.hurricane.up)\nactions.hac+=/skullsplitter,if=rage<40||talent.tide_of_blood&dot.rend.remains&(buff.sweeping_strikes.up&active_enemies>=2||debuff.colossus_smash.up||buff.test_of_might.up)\nactions.hac+=/mortal_strike,if=buff.sweeping_strikes.up&buff.crushing_advance.stack=3,if=set_bonus.tier30_4pc\nactions.hac+=/overpower,if=buff.sweeping_strikes.up&talent.dreadnaught\nactions.hac+=/mortal_strike,cycle_targets=1,if=debuff.executioners_precision.stack=2||dot.deep_wounds.remains<=gcd||talent.dreadnaught&talent.battlelord&active_enemies<=2\nactions.hac+=/execute,cycle_targets=1,if=buff.sudden_death.react||active_enemies<=2&(target.health.pct<20||talent.massacre&target.health.pct<35)||buff.sweeping_strikes.up\nactions.hac+=/thunderous_roar,if=raid_event.adds.in>15\nactions.hac+=/shockwave,if=active_enemies>2&talent.sonic_boom\nactions.hac+=/overpower,if=active_enemies=1&(charges=2&!talent.battlelord&(debuff.colossus_smash.down||rage.pct<25)||talent.battlelord)\nactions.hac+=/slam,if=active_enemies=1&!talent.battlelord&rage.pct>70\nactions.hac+=/overpower,if=charges=2&(!talent.test_of_might||talent.test_of_might&debuff.colossus_smash.down||talent.battlelord)||rage<70\nactions.hac+=/thunder_clap,if=active_enemies>2\nactions.hac+=/mortal_strike\nactions.hac+=/rend,if=active_enemies=1&dot.rend.remains<duration*0.3\nactions.hac+=/whirlwind,if=talent.storm_of_swords||talent.fervor_of_battle&active_enemies>1\nactions.hac+=/cleave,if=!talent.crushing_force\nactions.hac+=/ignore_pain,if=talent.battlelord&talent.anger_management&rage>30&(target.health.pct>20||talent.massacre&target.health.pct>35)\nactions.hac+=/slam,if=talent.crushing_force&rage>30&(talent.fervor_of_battle&active_enemies=1||!talent.fervor_of_battle)\nactions.hac+=/shockwave,if=talent.sonic_boom\nactions.hac+=/bladestorm,if=raid_event.adds.in>30\nactions.hac+=/wrecking_throw\n\nactions.single_target+=/sweeping_strikes,if=spell_targets.whirlwind>1\nactions.single_target+=/mortal_strike\nactions.single_target+=/rend,if=remains<=gcd||talent.tide_of_blood&cooldown.skullsplitter.remains<=gcd&(cooldown.colossus_smash.remains<=gcd||debuff.colossus_smash.up)&dot.rend.remains<dot.rend.duration*0.85\nactions.single_target+=/avatar,if=talent.warlords_torment&rage.pct<33&(cooldown.colossus_smash.ready||debuff.colossus_smash.up||buff.test_of_might.up)||!talent.warlords_torment&(cooldown.colossus_smash.ready||debuff.colossus_smash.up)\nactions.single_target+=/spear_of_bastion,if=cooldown.colossus_smash.remains<=gcd||cooldown.warbreaker.remains<=gcd\nactions.single_target+=/warbreaker\nactions.single_target+=/colossus_smash\nactions.single_target+=/thunderous_roar,if=buff.test_of_might.up||talent.test_of_might&debuff.colossus_smash.up&rage.pct<33||!talent.test_of_might&debuff.colossus_smash.up\nactions.single_target+=/bladestorm,if=talent.hurricane&(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)||talent.unhinged&(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)\nactions.single_target+=/skullsplitter,if=talent.tide_of_blood&dot.rend.remains&(debuff.colossus_smash.up||cooldown.colossus_smash.remains>gcd*4&buff.test_of_might.up||!talent.test_of_might&cooldown.colossus_smash.remains>gcd*4)||rage<30\nactions.single_target+=/execute,if=buff.sudden_death.react\nactions.single_target+=/shockwave,if=talent.sonic_boom.enabled\nactions.single_target+=/ignore_pain,if=talent.anger_management||talent.test_of_might&debuff.colossus_smash.up\nactions.single_target+=/whirlwind,if=talent.storm_of_swords&talent.battlelord&rage.pct>80&debuff.colossus_smash.up\nactions.single_target+=/overpower,if=charges=2&!talent.battlelord&(debuff.colossus_smash.down||rage.pct<25)||talent.battlelord\nactions.single_target+=/whirlwind,if=talent.storm_of_swords||talent.fervor_of_battle&active_enemies>1\nactions.single_target+=/thunder_clap,if=talent.battlelord&talent.blood_and_thunder\nactions.single_target+=/overpower,if=debuff.colossus_smash.down&rage.pct<50&!talent.battlelord||rage.pct<25\nactions.single_target+=/whirlwind,if=buff.merciless_bonegrinder.up\nactions.single_target+=/cleave,if=set_bonus.tier29_2pc&!talent.crushing_force\nactions.single_target+=/slam,if=rage>30&(!talent.fervor_of_battle||talent.fervor_of_battle&active_enemies=1)\nactions.single_target+=/bladestorm\nactions.single_target+=/arcane_torrent\nactions.single_target+=/cleave\nactions.single_target+=/wrecking_throw\nactions.single_target+=/rend,if=remains<duration*0.3",
					["spec"] = 71,
				},
				["Outlaw"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230526,
					["author"] = "SimC",
					["desc"] = "2023-05-26:  Relax Beacon to the Beyond timing so it doesn't vanish after hitting the previous button.  Use it immediately after the previous ability; don't wait for the GCD!\n\n2023-05-14:  Shiv.\n\n2023-05-12:  Add Beacon to the Beyond.\n\n2023-02-15:  Added option to use Adrenaline Rush before Roll the Bones in the opener if Loaded Dice is talented, to guarantee two buffs.  This would mainly be used by folks taking Count the Odds and Loaded Dice.  See Outlaw specialization options (at left).\n\nAdded logic to prevent Vanish in the first 10s of combat (in case of delayed opener).\n\n2023-03-13:  Update Manic Grieftorch usage.",
					["lists"] = {
						["build"] = {
							{
								["enabled"] = true,
								["action"] = "sepsis",
								["cycle_targets"] = 1,
								["criteria"] = "target.time_to_die > 11 & debuff.between_the_eyes.up || boss & fight_remains < 11",
								["description"] = "Builders",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "debuff.ghostly_strike.remains <= 3 & ( spell_targets.blade_flurry <= 2 || buff.dreadblades.up ) & ! buff.subterfuge.up & target.time_to_die >= 5",
								["action"] = "ghostly_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "ambush",
								["description"] = "High priority Ambush line to apply Find Weakness or consume Audacity/Sepsis buff before Pistol Shot",
								["criteria"] = "settings.ambush_anyway || ( talent.hidden_opportunity.enabled || talent.keep_it_rolling.enabled ) & ( buff.audacity.up || buff.sepsis_buff.up || buff.subterfuge.up & cooldown.keep_it_rolling.ready ) || talent.find_weakness.enabled & debuff.find_weakness.down",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "pistol_shot",
								["description"] = "With Audacity + Hidden Opportunity + Fan the Hammer, use Pistol Shot to proc Audacity any time Ambush is not available",
								["criteria"] = "talent.fan_the_hammer.enabled & talent.audacity.enabled & talent.hidden_opportunity.enabled & buff.opportunity.up & ! buff.audacity.up & ! buff.subterfuge.up & ! buff.shadow_dance.up",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "pistol_shot",
								["description"] = "Use Greenskins Wickers buff immediately with Opportunity unless running Fan the Hammer",
								["criteria"] = "buff.greenskins_wickers.up & ( ! talent.fan_the_hammer.enabled & buff.opportunity.up || buff.greenskins_wickers.remains < 1.5 )",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "pistol_shot",
								["description"] = "With Fan the Hammer, consume Opportunity at max stacks or if we will get max 4+ CP and Dreadblades is not up",
								["criteria"] = "talent.fan_the_hammer.enabled & buff.opportunity.up & ( buff.opportunity.stack >= buff.opportunity.max_stack || buff.opportunity.remains < 2 )",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.fan_the_hammer.enabled & buff.opportunity.up & combo_points.deficit > ( ( 1 + talent.quick_draw.enabled ) * talent.fan_the_hammer.rank ) & ! buff.dreadblades.up & ( ! talent.hidden_opportunity.enabled || ! buff.subterfuge.up & ! buff.shadow_dance.up )",
								["action"] = "pistol_shot",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.dreadblades.up",
								["action"] = "echoing_reprimand",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "settings.ambush_anyway || talent.hidden_opportunity.enabled || talent.find_weakness.enabled & debuff.find_weakness.down",
								["action"] = "ambush",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "pistol_shot",
								["description"] = "Use Pistol Shot with Opportunity if Combat Potency won't overcap energy, when it will exactly cap CP, or when using Quick Draw",
								["criteria"] = "! talent.fan_the_hammer.enabled & buff.opportunity.up & ( energy.base_deficit > energy.regen * 1.5 || ! talent.weaponmaster.enabled & combo_points.deficit <= 1 + buff.broadside.up || talent.quick_draw.enabled || talent.audacity.enabled & ! buff.audacity.up )",
							}, -- [10]
							{
								["action"] = "sinister_strike",
								["enabled"] = true,
							}, -- [11]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Restealth if possible (no vulnerable enemies in combat)",
								["action"] = "stealth",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Interrupt on cooldown to allow simming interactions with that",
								["action"] = "kick",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "shiv",
								["description"] = "Shiv to dispel Enrage effects.",
								["criteria"] = "debuff.dispellable_enrage.up",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.count_the_odds.enabled & ( stealthed.basic || buff.shadowmeld.up || buff.shadow_dance.up )",
								["description"] = "Checks if we are in an appropriate Stealth state for triggering the Count the Odds bonus",
								["var_name"] = "stealthed_cto",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "rtb_reroll",
								["criteria"] = "! talent.hidden_opportunity.enabled",
								["description"] = "Roll the Bones Reroll Conditions",
								["value"] = "rtb_buffs < 2 & ( ! buff.broadside.up & ( ! talent.fan_the_hammer.enabled || ! buff.skull_and_crossbones.up ) & ! buff.true_bearing.up || buff.loaded_dice.up ) || rtb_buffs = 2 & ( buff.buried_treasure.up & buff.grand_melee.up || ! buff.broadside.up & ! buff.true_bearing.up & buff.loaded_dice.up )",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "rtb_reroll",
								["criteria"] = "! talent.hidden_opportunity.enabled & ( talent.keep_it_rolling.enabled || talent.count_the_odds.enabled )",
								["description"] = "Additional Reroll Conditions for Keep it Rolling or Count the Odds",
								["value"] = "variable.rtb_reroll || ( ( rtb_buffs_normal = 0 & rtb_buffs_longer >= 1 ) & ! ( buff.broadside.up & buff.true_bearing.up & buff.skull_and_crossbones.up ) & ! ( buff.broadside.remains > 39 || buff.true_bearing.remains > 39 || buff.ruthless_precision.remains > 39 || buff.skull_and_crossbones.remains > 39 ) )",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "rtb_reroll",
								["criteria"] = "talent.hidden_opportunity.enabled",
								["description"] = "With Hidden Opportunity, prioritize rerolling for Skull and Crossbones over everything else",
								["value"] = "! rtb_buffs_will_lose_buff.skull_and_crossbones & ( rtb_buffs_will_lose - rtb_buffs_will_lose_buff.grand_melee ) < 2 & buff.shadow_dance.down & buff.subterfuge.down",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "reset",
								["action"] = "variable",
								["var_name"] = "rtb_reroll",
								["criteria"] = "! ( raid_event.adds.remains > 12 || raid_event.adds.up & ( raid_event.adds.in - raid_event.adds.remains ) < 6 || target.time_to_die > 12 ) || boss & fight_remains < 12",
								["description"] = "Avoid rerolls when we will not have time remaining on the fight or add wave to recoup the opportunity cost of the global",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( talent.hidden_opportunity.enabled || combo_points.deficit >= 2 + talent.improved_ambush.enabled + buff.broadside.up || buff.vicious_followup.up || settings.ambush_anyway ) & energy >= 50",
								["description"] = "Ensure we want to cast Ambush prior to triggering a Stealth cooldown",
								["var_name"] = "ambush_condition",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "combo_points >= ( ( cp_max_spend - 1 ) <? ( 6 - talent.summarily_dispatched.enabled ) ) || effective_combo_points >= cp_max_spend",
								["description"] = "Finish at 6 (5 with Summarily Dispatched talented) CP or CP Max-1, whichever is greater of the two",
								["var_name"] = "finish_condition",
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.blade_flurry < 2 & raid_event.adds.in > 20 || buff.blade_flurry.remains > 1 + talent.killing_spree.enabled",
								["description"] = "With multiple targets, this variable is checked to decide whether some CDs should be synced with Blade Flurry",
								["var_name"] = "blade_flurry_sync",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Higher priority Stealth list for Count the Odds or true Stealth/Vanish that will break in a single global",
								["criteria"] = "stealthed.basic || buff.shadowmeld.up",
								["list_name"] = "stealth",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Lower priority Stealth list for Shadow Dance",
								["criteria"] = "variable.stealthed_cto",
								["list_name"] = "stealth",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "variable.finish_condition",
								["action"] = "run_action_list",
								["list_name"] = "finish",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "build",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "energy.base_deficit >= 15 + energy.regen",
								["action"] = "arcane_torrent",
							}, -- [17]
							{
								["action"] = "arcane_pulse",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [20]
						},
						["precombat"] = {
							{
								["action"] = "apply_poison",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "bottled_flayedwing_toxin",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [3]
							{
								["action"] = "stealth",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "marked_for_death",
								["criteria"] = "raid_event.adds.in > 25",
								["precombat_seconds"] = "10",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "adrenaline_rush",
								["criteria"] = "talent.improved_adrenaline_rush.enabled || settings.use_ld_opener & cooldown.roll_the_bones.remains < 1 & ( buff.roll_the_bones.remains < 3 || rtb_buffs_normal = 0 )",
								["precombat_seconds"] = "3",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "roll_the_bones",
								["criteria"] = "remains < 3 || rtb_buffs_normal = 0",
								["precombat_seconds"] = "2",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "slice_and_dice",
								["criteria"] = "refreshable & buff.grand_melee.down & ! settings.use_ld_opener",
								["precombat_seconds"] = "1",
							}, -- [8]
						},
						["stealth"] = {
							{
								["enabled"] = true,
								["action"] = "blade_flurry",
								["description"] = "Stealth",
								["criteria"] = "talent.subterfuge.enabled & talent.hidden_opportunity.enabled & spell_targets >= 2 & ! buff.blade_flurry.up",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.finish_condition",
								["action"] = "cold_blood",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.finish_condition",
								["action"] = "dispatch",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.stealthed_cto || stealthed.basic & ( settings.ambush_anyway || talent.find_weakness.enabled & ! debuff.find_weakness.up || talent.hidden_opportunity.enabled )",
								["action"] = "ambush",
							}, -- [4]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["action"] = "adrenaline_rush",
								["description"] = "Cooldowns",
								["criteria"] = "! buff.adrenaline_rush.up & ( ! talent.improved_adrenaline_rush.enabled || combo_points <= 2 )",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2 & buff.blade_flurry.remains < gcd.max",
								["action"] = "blade_flurry",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.dreadblades.down & ( rtb_buffs = 0 || variable.rtb_reroll )",
								["action"] = "roll_the_bones",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! variable.rtb_reroll & ( buff.broadside.up + buff.true_bearing.up + buff.skull_and_crossbones.up + buff.ruthless_precision.up ) > 2 & ( buff.shadow_dance.down || rtb_buffs >= 6 )",
								["action"] = "keep_it_rolling",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_flurry_sync & ! buff.dreadblades.up & ( energy.base_time_to_max > 4 + stealthed.rogue - spell_targets / 3 )",
								["action"] = "blade_rush",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! stealthed.all || talent.count_the_odds.enabled & ! talent.hidden_opportunity.enabled & ! variable.stealthed_cto",
								["action"] = "call_action_list",
								["list_name"] = "stealth_cds",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! ( variable.stealthed_cto || stealthed.basic || talent.hidden_opportunity.enabled & stealthed.rogue ) & combo_points <= 2 & ( ! talent.marked_for_death.enabled || ! cooldown.marked_for_death.ready ) & target.time_to_die >= 10",
								["action"] = "dreadblades",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "marked_for_death",
								["line_cd"] = "1.5",
								["cycle_targets"] = 1,
								["criteria"] = "raid_event.adds.up & ( target.time_to_die < combo_points.deficit || combo_points.deficit >= cp_max_spend - 1 ) & ! buff.dreadblades.up",
								["description"] = "If adds are up, snipe the one with lowest TTD. Use when dying faster than CP deficit or without any CP.",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "marked_for_death",
								["description"] = "If no adds will die within the next 30s, use MfD on boss without any CP.",
								["criteria"] = "raid_event.adds.in > 30 - raid_event.adds.duration & combo_points.deficit >= cp_max_spend - 1 & ! buff.dreadblades.up",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! buff.thistle_tea.up & ( energy.base_deficit >= 100 || boss & fight_remains < charges * 6 )",
								["action"] = "thistle_tea",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_flurry_sync & ! stealthed.rogue & debuff.between_the_eyes.up & energy.base_time_to_max > 4",
								["action"] = "killing_spree",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! stealthed.all & ( talent.count_the_odds.enabled & variable.finish_condition || ! talent.weaponmaster.enabled & variable.ambush_condition )",
								["action"] = "shadowmeld",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.react || boss & fight_remains < 30 || buff.adrenaline_rush.up",
								["action"] = "potion",
							}, -- [13]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "manic_grieftorch",
								["use_off_gcd"] = 1,
								["name"] = "manic_grieftorch",
								["criteria"] = "! stealthed.all & debuff.between_the_eyes.up & ( ! talent.ghostly_strike.enabled || debuff.ghostly_strike.up || spell_targets.blade_flurry > 2 ) || boss & fight_remains <= 5",
								["description"] = "Default conditions for usable items.",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "beacon_to_the_beyond",
								["use_off_gcd"] = 1,
								["name"] = "beacon_to_the_beyond",
								["criteria"] = "! stealthed.all & debuff.between_the_eyes.up & ( ! talent.ghostly_strike.enabled || debuff.ghostly_strike.up || spell_targets.blade_flurry > 2 ) || boss & fight_remains <= 5",
								["description"] = "Note: SimulationCraft tries to use Beacon only in the first 0.1s of the GCD, which I've relaxed here because that's too narrow a window.",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "stormeaters_boon",
								["criteria"] = "spell_targets.blade_flurry > desired_targets || raid_event.adds.in > 60 || boss & fight_remains < 10",
								["name"] = "stormeaters_boon",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "windscar_whetstone",
								["criteria"] = "spell_targets.blade_flurry > desired_targets || raid_event.adds.in > 60 || boss & fight_remains < 7",
								["name"] = "windscar_whetstone",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["criteria"] = "debuff.between_the_eyes.up || trinket.t1.has_stat.any_dps || boss & fight_remains <= 20",
								["slots"] = "trinket1",
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["criteria"] = "debuff.between_the_eyes.up || trinket.t2.has_stat.any_dps || boss & fight_remains <= 20",
								["slots"] = "trinket2",
							}, -- [23]
						},
						["stealth_cds"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "time > 10 & ( talent.hidden_opportunity.enabled || ! talent.shadow_dance.enabled || ! cooldown.shadow_dance.ready )",
								["description"] = "Stealth Cooldowns",
								["var_name"] = "vanish_condition",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.shadow_dance.enabled & talent.fan_the_hammer.rank + talent.quick_draw.enabled + talent.audacity.enabled < talent.count_the_odds.enabled + talent.keep_it_rolling.enabled",
								["var_name"] = "vanish_opportunity_condition",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.find_weakness.enabled & ! talent.audacity.enabled & debuff.find_weakness.down & variable.ambush_condition & variable.vanish_condition",
								["action"] = "vanish",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.hidden_opportunity.enabled & ! buff.audacity.up & ( variable.vanish_opportunity_condition || buff.opportunity.stack < buff.opportunity.max_stack ) & variable.ambush_condition & variable.vanish_condition",
								["action"] = "vanish",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.find_weakness.enabled || talent.audacity.enabled ) & ! talent.hidden_opportunity.enabled & variable.finish_condition & variable.vanish_condition",
								["action"] = "vanish",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.shadow_dance.enabled & debuff.between_the_eyes.up & ( ! talent.ghostly_strike.enabled || debuff.ghostly_strike.up ) & ( ! talent.dreadblades.enabled || ! cooldown.dreadblades.ready ) & ( ! talent.hidden_opportunity.enabled || ! buff.audacity.up & ( talent.fan_the_hammer.rank < 2 || ! buff.opportunity.up ) )",
								["var_name"] = "shadow_dance_condition",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.keep_it_rolling.enabled & variable.shadow_dance_condition & buff.slice_and_dice.up & ( variable.finish_condition || talent.hidden_opportunity.enabled ) & ( ! talent.hidden_opportunity.enabled || ! cooldown.vanish.ready )",
								["action"] = "shadow_dance",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.keep_it_rolling.enabled & variable.shadow_dance_condition & ( cooldown.keep_it_rolling.remains <= 30 || cooldown.keep_it_rolling.remains > 120 & ( variable.finish_condition || talent.hidden_opportunity.enabled ) )",
								["action"] = "shadow_dance",
							}, -- [8]
						},
						["finish"] = {
							{
								["enabled"] = true,
								["action"] = "between_the_eyes",
								["description"] = "Finishers  BtE to keep the Crit debuff up, if RP is up, or for Greenskins, unless the target is about to die.",
								["criteria"] = "target.time_to_die > 3 & ( debuff.between_the_eyes.remains < 4 || talent.greenskins_wickers.enabled & ! buff.greenskins_wickers.up || ! talent.greenskins_wickers.enabled & talent.improved_between_the_eyes.enabled & buff.ruthless_precision.up )",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.slice_and_dice.remains < fight_remains & refreshable & buff.grand_melee.down & ( ! talent.swift_slasher.enabled || combo_points >= cp_max_spend )",
								["action"] = "slice_and_dice",
							}, -- [2]
							{
								["action"] = "cold_blood",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "dispatch",
								["enabled"] = true,
							}, -- [4]
						},
					},
					["version"] = 20230526,
					["warnings"] = "The import for 'stealth' required some automated changes.\nLine 1: Converted 'talent.subterfuge' to 'talent.subterfuge.enabled' (1x).\nLine 1: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 4: Converted 'talent.find_weakness' to 'talent.find_weakness.enabled' (1x).\nLine 4: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 4: Converted 'talent.count_the_odds' to 'talent.count_the_odds.enabled' (1x).\nLine 5: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 5: Converted 'talent.fan_the_hammer' to 'talent.fan_the_hammer.enabled' (1x).\nLine 6: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 6: Converted 'talent.keep_it_rolling' to 'talent.keep_it_rolling.enabled' (1x).\nLine 6: Converted 'talent.count_the_odds' to 'talent.count_the_odds.enabled' (1x).\nLine 7: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 7: Converted 'rtb_buffs.will_lose.skull_and_crossbones' to 'rtb_buffs_will_lose_buff.skull_and_crossbones' (1x).\nLine 7: Converted 'rtb_buffs.will_lose.grand_melee' to 'rtb_buffs_will_lose_buff.grand_melee' (1x).\nLine 9: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 9: Converted 'talent.improved_ambush' to 'talent.improved_ambush.enabled' (1x).\nLine 10: Converted 'talent.summarily_dispatched' to 'talent.summarily_dispatched.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 6: Converted 'talent.improved_adrenaline_rush' to 'talent.improved_adrenaline_rush.enabled' (1x).\n\nThe import for 'finish' required some automated changes.\nLine 1: Converted 'talent.greenskins_wickers' to 'talent.greenskins_wickers.enabled' (1x).\nLine 1: Converted 'talent.greenskins_wickers' to 'talent.greenskins_wickers.enabled' (1x).\nLine 1: Converted 'talent.improved_between_the_eyes' to 'talent.improved_between_the_eyes.enabled' (1x).\nLine 2: Converted 'talent.swift_slasher' to 'talent.swift_slasher.enabled' (1x).\n\nThe import for 'cds' required some automated changes.\nLine 1: Converted 'talent.improved_adrenaline_rush' to 'talent.improved_adrenaline_rush.enabled' (1x).\nLine 5: Converted operations in 'variable.blade_flurry_sync&!buff.dreadblades.up&(energy.base_time_to_max>4+stealthed.rogue-spell_targets%3)' to 'variable.blade_flurry_sync&!buff.dreadblades.up&(energy.base_time_to_max>4+stealthed.rogue-spell_targets/3)'.\nLine 6: Converted 'talent.count_the_odds' to 'talent.count_the_odds.enabled' (1x).\nLine 6: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 7: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 7: Converted 'talent.marked_for_death' to 'talent.marked_for_death.enabled' (1x).\nLine 12: Converted 'talent.count_the_odds' to 'talent.count_the_odds.enabled' (1x).\nLine 18: Converted 'talent.ghostly_strike' to 'talent.ghostly_strike.enabled' (1x).\nLine 19: Converted 'talent.ghostly_strike' to 'talent.ghostly_strike.enabled' (1x).\nLine 22: Converted 'trinket.1.has_stat.any_dps' to 'trinket.t1.has_stat.any_dps' (1x).\nLine 23: Converted 'trinket.2.has_stat.any_dps' to 'trinket.t2.has_stat.any_dps' (1x).\n\nThe import for 'stealth_cds' required some automated changes.\nLine 1: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 1: Converted 'talent.shadow_dance' to 'talent.shadow_dance.enabled' (1x).\nLine 2: Converted 'talent.shadow_dance' to 'talent.shadow_dance.enabled' (1x).\nLine 2: Converted 'talent.quick_draw' to 'talent.quick_draw.enabled' (1x).\nLine 2: Converted 'talent.audacity' to 'talent.audacity.enabled' (1x).\nLine 2: Converted 'talent.count_the_odds' to 'talent.count_the_odds.enabled' (1x).\nLine 2: Converted 'talent.keep_it_rolling' to 'talent.keep_it_rolling.enabled' (1x).\nLine 3: Converted 'talent.find_weakness' to 'talent.find_weakness.enabled' (1x).\nLine 3: Converted 'talent.audacity' to 'talent.audacity.enabled' (1x).\nLine 4: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 5: Converted 'talent.find_weakness' to 'talent.find_weakness.enabled' (1x).\nLine 5: Converted 'talent.audacity' to 'talent.audacity.enabled' (1x).\nLine 5: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 6: Converted 'talent.shadow_dance' to 'talent.shadow_dance.enabled' (1x).\nLine 6: Converted 'talent.ghostly_strike' to 'talent.ghostly_strike.enabled' (1x).\nLine 6: Converted 'talent.dreadblades' to 'talent.dreadblades.enabled' (1x).\nLine 6: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 7: Converted 'talent.keep_it_rolling' to 'talent.keep_it_rolling.enabled' (1x).\nLine 7: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 7: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 8: Converted 'talent.keep_it_rolling' to 'talent.keep_it_rolling.enabled' (1x).\nLine 8: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\n\nThe import for 'build' required some automated changes.\nLine 3: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 3: Converted 'talent.keep_it_rolling' to 'talent.keep_it_rolling.enabled' (1x).\nLine 3: Converted 'talent.find_weakness' to 'talent.find_weakness.enabled' (1x).\nLine 4: Converted 'talent.fan_the_hammer' to 'talent.fan_the_hammer.enabled' (1x).\nLine 4: Converted 'talent.audacity' to 'talent.audacity.enabled' (1x).\nLine 4: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 5: Converted 'talent.fan_the_hammer' to 'talent.fan_the_hammer.enabled' (1x).\nLine 6: Converted 'talent.fan_the_hammer' to 'talent.fan_the_hammer.enabled' (1x).\nLine 7: Converted 'talent.fan_the_hammer' to 'talent.fan_the_hammer.enabled' (1x).\nLine 7: Converted 'talent.quick_draw' to 'talent.quick_draw.enabled' (1x).\nLine 7: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 9: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 9: Converted 'talent.find_weakness' to 'talent.find_weakness.enabled' (1x).\nLine 10: Converted 'talent.fan_the_hammer' to 'talent.fan_the_hammer.enabled' (1x).\nLine 10: Converted 'talent.weaponmaster' to 'talent.weaponmaster.enabled' (1x).\n\nImported 7 action lists.\n",
					["spec"] = 260,
					["profile"] = "actions.precombat+=/apply_poison\nactions.precombat+=/bottled_flayedwing_toxin\nactions.precombat+=/use_item,name=algethar_puzzle_box\nactions.precombat+=/stealth\nactions.precombat+=/marked_for_death,precombat_seconds=10,if=raid_event.adds.in>25\nactions.precombat+=/adrenaline_rush,precombat_seconds=3,if=talent.improved_adrenaline_rush||settings.use_ld_opener&cooldown.roll_the_bones.remains<1&(buff.roll_the_bones.remains<3||rtb_buffs.normal=0)\nactions.precombat+=/roll_the_bones,precombat_seconds=2,if=remains<3||rtb_buffs.normal=0\nactions.precombat+=/slice_and_dice,precombat_seconds=1,if=refreshable&buff.grand_melee.down&!settings.use_ld_opener\n\n# Restealth if possible (no vulnerable enemies in combat)\nactions+=/stealth\n# Interrupt on cooldown to allow simming interactions with that\nactions+=/kick\n# Shiv to dispel Enrage effects.\nactions+=/shiv,if=debuff.dispellable_enrage.up\n# Checks if we are in an appropriate Stealth state for triggering the Count the Odds bonus\nactions+=/variable,name=stealthed_cto,value=talent.count_the_odds&(stealthed.basic||buff.shadowmeld.up||buff.shadow_dance.up)\n# Roll the Bones Reroll Conditions\nactions+=/variable,name=rtb_reroll,if=!talent.hidden_opportunity,value=rtb_buffs<2&(!buff.broadside.up&(!talent.fan_the_hammer||!buff.skull_and_crossbones.up)&!buff.true_bearing.up||buff.loaded_dice.up)||rtb_buffs=2&(buff.buried_treasure.up&buff.grand_melee.up||!buff.broadside.up&!buff.true_bearing.up&buff.loaded_dice.up)\n# Additional Reroll Conditions for Keep it Rolling or Count the Odds\nactions+=/variable,name=rtb_reroll,if=!talent.hidden_opportunity&(talent.keep_it_rolling||talent.count_the_odds),value=variable.rtb_reroll||((rtb_buffs.normal=0&rtb_buffs.longer>=1)&!(buff.broadside.up&buff.true_bearing.up&buff.skull_and_crossbones.up)&!(buff.broadside.remains>39||buff.true_bearing.remains>39||buff.ruthless_precision.remains>39||buff.skull_and_crossbones.remains>39))\n# With Hidden Opportunity, prioritize rerolling for Skull and Crossbones over everything else\nactions+=/variable,name=rtb_reroll,if=talent.hidden_opportunity,value=!rtb_buffs.will_lose.skull_and_crossbones&(rtb_buffs.will_lose-rtb_buffs.will_lose.grand_melee)<2&buff.shadow_dance.down&buff.subterfuge.down\n# Avoid rerolls when we will not have time remaining on the fight or add wave to recoup the opportunity cost of the global\nactions+=/variable,name=rtb_reroll,op=reset,if=!(raid_event.adds.remains>12||raid_event.adds.up&(raid_event.adds.in-raid_event.adds.remains)<6||target.time_to_die>12)||boss&fight_remains<12\n# Ensure we want to cast Ambush prior to triggering a Stealth cooldown\nactions+=/variable,name=ambush_condition,value=(talent.hidden_opportunity||combo_points.deficit>=2+talent.improved_ambush+buff.broadside.up||buff.vicious_followup.up||settings.ambush_anyway)&energy>=50\n# Finish at 6 (5 with Summarily Dispatched talented) CP or CP Max-1, whichever is greater of the two\nactions+=/variable,name=finish_condition,value=combo_points>=((cp_max_spend-1)<?(6-talent.summarily_dispatched))||effective_combo_points>=cp_max_spend\n# With multiple targets, this variable is checked to decide whether some CDs should be synced with Blade Flurry\nactions+=/variable,name=blade_flurry_sync,value=spell_targets.blade_flurry<2&raid_event.adds.in>20||buff.blade_flurry.remains>1+talent.killing_spree.enabled\n# Higher priority Stealth list for Count the Odds or true Stealth/Vanish that will break in a single global\nactions+=/call_action_list,name=stealth,if=stealthed.basic||buff.shadowmeld.up\nactions+=/call_action_list,name=cds\n# Lower priority Stealth list for Shadow Dance\nactions+=/call_action_list,name=stealth,if=variable.stealthed_cto\nactions+=/run_action_list,name=finish,if=variable.finish_condition\nactions+=/call_action_list,name=build\nactions+=/arcane_torrent,if=energy.base_deficit>=15+energy.regen\nactions+=/arcane_pulse\nactions+=/lights_judgment\nactions+=/bag_of_tricks\n\n# Builders\nactions.build+=/sepsis,cycle_targets=1,if=target.time_to_die>11&debuff.between_the_eyes.up||boss&fight_remains<11\nactions.build+=/ghostly_strike,if=debuff.ghostly_strike.remains<=3&(spell_targets.blade_flurry<=2||buff.dreadblades.up)&!buff.subterfuge.up&target.time_to_die>=5\n# High priority Ambush line to apply Find Weakness or consume Audacity/Sepsis buff before Pistol Shot\nactions.build+=/ambush,if=settings.ambush_anyway||(talent.hidden_opportunity||talent.keep_it_rolling)&(buff.audacity.up||buff.sepsis_buff.up||buff.subterfuge.up&cooldown.keep_it_rolling.ready)||talent.find_weakness&debuff.find_weakness.down\n# With Audacity + Hidden Opportunity + Fan the Hammer, use Pistol Shot to proc Audacity any time Ambush is not available\nactions.build+=/pistol_shot,if=talent.fan_the_hammer&talent.audacity&talent.hidden_opportunity&buff.opportunity.up&!buff.audacity.up&!buff.subterfuge.up&!buff.shadow_dance.up\n# Use Greenskins Wickers buff immediately with Opportunity unless running Fan the Hammer\nactions.build+=/pistol_shot,if=buff.greenskins_wickers.up&(!talent.fan_the_hammer&buff.opportunity.up||buff.greenskins_wickers.remains<1.5)\n# With Fan the Hammer, consume Opportunity at max stacks or if we will get max 4+ CP and Dreadblades is not up\nactions.build+=/pistol_shot,if=talent.fan_the_hammer&buff.opportunity.up&(buff.opportunity.stack>=buff.opportunity.max_stack||buff.opportunity.remains<2)\nactions.build+=/pistol_shot,if=talent.fan_the_hammer&buff.opportunity.up&combo_points.deficit>((1+talent.quick_draw)*talent.fan_the_hammer.rank)&!buff.dreadblades.up&(!talent.hidden_opportunity||!buff.subterfuge.up&!buff.shadow_dance.up)\nactions.build+=/echoing_reprimand,if=!buff.dreadblades.up\n## actions.build+=/pool_resource,for_next=1\nactions.build+=/ambush,if=settings.ambush_anyway||talent.hidden_opportunity||talent.find_weakness&debuff.find_weakness.down\n# Use Pistol Shot with Opportunity if Combat Potency won't overcap energy, when it will exactly cap CP, or when using Quick Draw\nactions.build+=/pistol_shot,if=!talent.fan_the_hammer&buff.opportunity.up&(energy.base_deficit>energy.regen*1.5||!talent.weaponmaster&combo_points.deficit<=1+buff.broadside.up||talent.quick_draw.enabled||talent.audacity.enabled&!buff.audacity.up)\nactions.build+=/sinister_strike\n\n# Cooldowns\nactions.cds+=/adrenaline_rush,if=!buff.adrenaline_rush.up&(!talent.improved_adrenaline_rush||combo_points<=2)\nactions.cds+=/blade_flurry,if=spell_targets>=2&buff.blade_flurry.remains<gcd\nactions.cds+=/roll_the_bones,if=buff.dreadblades.down&(rtb_buffs.total=0||variable.rtb_reroll)\nactions.cds+=/keep_it_rolling,if=!variable.rtb_reroll&(buff.broadside.up+buff.true_bearing.up+buff.skull_and_crossbones.up+buff.ruthless_precision.up)>2&(buff.shadow_dance.down||rtb_buffs>=6)\nactions.cds+=/blade_rush,if=variable.blade_flurry_sync&!buff.dreadblades.up&(energy.base_time_to_max>4+stealthed.rogue-spell_targets%3)\nactions.cds+=/call_action_list,name=stealth_cds,if=!stealthed.all||talent.count_the_odds&!talent.hidden_opportunity&!variable.stealthed_cto\nactions.cds+=/dreadblades,if=!(variable.stealthed_cto||stealthed.basic||talent.hidden_opportunity&stealthed.rogue)&combo_points<=2&(!talent.marked_for_death||!cooldown.marked_for_death.ready)&target.time_to_die>=10\n# If adds are up, snipe the one with lowest TTD. Use when dying faster than CP deficit or without any CP.\nactions.cds+=/marked_for_death,line_cd=1.5,cycle_targets=1,if=raid_event.adds.up&(target.time_to_die<combo_points.deficit||combo_points.deficit>=cp_max_spend-1)&!buff.dreadblades.up\n# If no adds will die within the next 30s, use MfD on boss without any CP.\nactions.cds+=/marked_for_death,if=raid_event.adds.in>30-raid_event.adds.duration&combo_points.deficit>=cp_max_spend-1&!buff.dreadblades.up\nactions.cds+=/thistle_tea,if=!buff.thistle_tea.up&(energy.base_deficit>=100||boss&fight_remains<charges*6)\nactions.cds+=/killing_spree,if=variable.blade_flurry_sync&!stealthed.rogue&debuff.between_the_eyes.up&energy.base_time_to_max>4\nactions.cds+=/shadowmeld,if=!stealthed.all&(talent.count_the_odds&variable.finish_condition||!talent.weaponmaster.enabled&variable.ambush_condition)\nactions.cds+=/potion,if=buff.bloodlust.react||boss&fight_remains<30||buff.adrenaline_rush.up\nactions.cds+=/blood_fury\nactions.cds+=/berserking\nactions.cds+=/fireblood\nactions.cds+=/ancestral_call\n# Default conditions for usable items.\nactions.cds+=/use_item,name=manic_grieftorch,use_off_gcd=1,if=!stealthed.all&debuff.between_the_eyes.up&(!talent.ghostly_strike||debuff.ghostly_strike.up||spell_targets.blade_flurry>2)||boss&fight_remains<=5\n# Note: SimulationCraft tries to use Beacon only in the first 0.1s of the GCD, which I've relaxed here because that's too narrow a window.\nactions.cds+=/use_item,name=beacon_to_the_beyond,use_off_gcd=1,if=!stealthed.all&debuff.between_the_eyes.up&(!talent.ghostly_strike||debuff.ghostly_strike.up||spell_targets.blade_flurry>2)||boss&fight_remains<=5\nactions.cds+=/use_item,name=stormeaters_boon,if=spell_targets.blade_flurry>desired_targets||raid_event.adds.in>60||boss&fight_remains<10\nactions.cds+=/use_item,name=windscar_whetstone,if=spell_targets.blade_flurry>desired_targets||raid_event.adds.in>60||boss&fight_remains<7\nactions.cds+=/use_items,slots=trinket1,if=debuff.between_the_eyes.up||trinket.1.has_stat.any_dps||boss&fight_remains<=20\nactions.cds+=/use_items,slots=trinket2,if=debuff.between_the_eyes.up||trinket.2.has_stat.any_dps||boss&fight_remains<=20\n\n# Stealth Cooldowns\nactions.stealth_cds+=/variable,name=vanish_condition,value=time>10&(talent.hidden_opportunity||!talent.shadow_dance||!cooldown.shadow_dance.ready)\nactions.stealth_cds+=/variable,name=vanish_opportunity_condition,value=!talent.shadow_dance&talent.fan_the_hammer.rank+talent.quick_draw+talent.audacity<talent.count_the_odds+talent.keep_it_rolling\nactions.stealth_cds+=/vanish,if=talent.find_weakness&!talent.audacity&debuff.find_weakness.down&variable.ambush_condition&variable.vanish_condition\nactions.stealth_cds+=/vanish,if=talent.hidden_opportunity&!buff.audacity.up&(variable.vanish_opportunity_condition||buff.opportunity.stack<buff.opportunity.max_stack)&variable.ambush_condition&variable.vanish_condition\nactions.stealth_cds+=/vanish,if=(!talent.find_weakness||talent.audacity)&!talent.hidden_opportunity&variable.finish_condition&variable.vanish_condition\nactions.stealth_cds+=/variable,name=shadow_dance_condition,value=talent.shadow_dance&debuff.between_the_eyes.up&(!talent.ghostly_strike||debuff.ghostly_strike.up)&(!talent.dreadblades||!cooldown.dreadblades.ready)&(!talent.hidden_opportunity||!buff.audacity.up&(talent.fan_the_hammer.rank<2||!buff.opportunity.up))\nactions.stealth_cds+=/shadow_dance,if=!talent.keep_it_rolling&variable.shadow_dance_condition&buff.slice_and_dice.up&(variable.finish_condition||talent.hidden_opportunity)&(!talent.hidden_opportunity||!cooldown.vanish.ready)\nactions.stealth_cds+=/shadow_dance,if=talent.keep_it_rolling&variable.shadow_dance_condition&(cooldown.keep_it_rolling.remains<=30||cooldown.keep_it_rolling.remains>120&(variable.finish_condition||talent.hidden_opportunity))\n\n# Finishers  BtE to keep the Crit debuff up, if RP is up, or for Greenskins, unless the target is about to die.\nactions.finish+=/between_the_eyes,if=target.time_to_die>3&(debuff.between_the_eyes.remains<4||talent.greenskins_wickers&!buff.greenskins_wickers.up||!talent.greenskins_wickers&talent.improved_between_the_eyes&buff.ruthless_precision.up)\nactions.finish+=/slice_and_dice,if=buff.slice_and_dice.remains<fight_remains&refreshable&buff.grand_melee.down&(!talent.swift_slasher||combo_points>=cp_max_spend)\nactions.finish+=/cold_blood\nactions.finish+=/dispatch\n\n# Stealth\nactions.stealth+=/blade_flurry,if=talent.subterfuge&talent.hidden_opportunity&spell_targets>=2&!buff.blade_flurry.up\nactions.stealth+=/cold_blood,if=variable.finish_condition\nactions.stealth+=/dispatch,if=variable.finish_condition\nactions.stealth+=/ambush,if=variable.stealthed_cto||stealthed.basic&(settings.ambush_anyway||talent.find_weakness&!debuff.find_weakness.up||talent.hidden_opportunity)",
				},
				["Marksmanship"] = {
					["source"] = "# https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230512,
					["author"] = "SimC",
					["desc"] = "2023-05-12: Simplify Trueshot logic and remove a Steady Shot entry.\n\n2023-04-30: Trigger Salvo with Multi-Shot when Volley isn't talented.\n\n2023-04-26: Update from SimulationCraft.",
					["lists"] = {
						["trickshots"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.steady_focus.enabled & steady_focus_count & buff.steady_focus.remains < 8",
								["action"] = "steady_shot",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.razor_fragments.up",
								["action"] = "kill_shot",
							}, -- [2]
							{
								["action"] = "explosive_shot",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "death_chakram",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "stampede",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "wailing_arrow",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "refreshable & talent.hydras_bite.enabled & ! talent.serpentstalkers_trickery.enabled",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 7",
								["action"] = "barrage",
							}, -- [8]
							{
								["action"] = "volley",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "trueshot",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.trick_shots.remains >= execute_time & talent.surging_shots.enabled",
								["action"] = "rapid_fire",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "aimed_shot",
								["cycle_targets"] = 1,
								["criteria"] = "talent.serpentstalkers_trickery.enabled & ( buff.trick_shots.remains >= execute_time & ( buff.precise_shots.down || buff.trueshot.up || full_recharge_time < cast_time + gcd.max ) )",
								["description"] = "For Serpentstalker's Trickery, target the lowest remaining Serpent Sting. Generally only cast if it would cleave with Trick Shots. Don't overwrite Precise Shots unless Trueshot is up or Aimed Shot would cap otherwise.",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "aimed_shot",
								["cycle_targets"] = 1,
								["criteria"] = "( buff.trick_shots.remains >= execute_time & ( buff.precise_shots.down || buff.trueshot.up || full_recharge_time < cast_time + gcd.max ) )",
								["description"] = "For no Serpentstalker's Trickery, target the highest Latent Poison stack. Same general rules as the previous line.",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.trick_shots.remains >= execute_time",
								["action"] = "rapid_fire",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.trick_shots.up & buff.precise_shots.up & focus > cost + action.aimed_shot.cost & active_enemies < 4",
								["action"] = "chimaera_shot",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.trick_shots.down || ( buff.precise_shots.up || buff.bulletstorm.stack = 10 ) & focus > cost + action.aimed_shot.cost",
								["action"] = "multishot",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable & talent.poison_injection.enabled & ! talent.serpentstalkers_trickery.enabled",
								["description"] = "Only use baseline Serpent Sting as a filler in cleave if it's the only source of applying Latent Poison.",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.down",
								["action"] = "steel_trap",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "focus > cost + action.aimed_shot.cost",
								["action"] = "kill_shot",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "focus > cost + action.aimed_shot.cost",
								["action"] = "multishot",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.down",
								["action"] = "bag_of_tricks",
							}, -- [21]
							{
								["action"] = "steady_shot",
								["enabled"] = true,
							}, -- [22]
						},
						["default"] = {
							{
								["action"] = "counter_shot",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "tranquilizing_shot",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.trueshot.ready & ( active_enemies = 1 & ( ! talent.bullseye.enabled || fight_remains > cooldown.trueshot.duration_guess + buff.trueshot.duration / 2 || buff.bullseye.stack = buff.bullseye.max_stack ) & ( ! trinket.t1.has_use_buff || trinket.t1.cooldown.remains > 30 || trinket.t1.cooldown.ready ) & ( ! trinket.t2.has_use_buff || trinket.t2.cooldown.remains > 30 || trinket.t2.cooldown.ready ) || active_enemies > 1 || fight_remains < 25 )",
								["description"] = "Determine if it is a good time to use Trueshot. Raid event optimization takes priority so usage is saved for multiple targets as long as it won't delay over half its duration. Otherwise allow for small delays to line up buff effect trinkets, and when using Bullseye, delay the last usage of the fight for max stacks.",
								["var_name"] = "trueshot_ready",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies < 3 || ! talent.trick_shots.enabled",
								["list_name"] = "st",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 2",
								["list_name"] = "trickshots",
							}, -- [7]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! talent.lone_wolf.enabled",
								["action"] = "summon_pet",
							}, -- [1]
							{
								["enabled"] = true,
								["precast_time"] = "10",
								["action"] = "salvo",
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "aimed_shot",
								["description"] = "Precast Aimed Shot on one or two targets unless we could cleave it with Volley on two targets.",
								["criteria"] = "active_enemies < 3 & ( ! talent.volley.enabled || active_enemies < 2 )",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 || ! talent.steady_focus.enabled",
								["action"] = "wailing_arrow",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "steady_shot",
								["description"] = "Precast Steady Shot on two targets if we are saving Aimed Shot to cleave with Volley, otherwise on three or more targets.",
								["criteria"] = "active_enemies > 2 || talent.volley.enabled & active_enemies = 2",
							}, -- [6]
						},
						["trinkets"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.trueshot_ready",
								["description"] = "Signals that cooldowns are active or ready to activate that is desirable to sync a buff effect with.",
								["var_name"] = "sync_ready",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.trueshot.up",
								["description"] = "Signals that the cooldowns that are desirable to sync a buff with are active.",
								["var_name"] = "sync_active",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.trueshot.remains",
								["description"] = "The amount of time until the cooldowns will be ready that are desirable to sync a buff effect with.",
								["var_name"] = "sync_remains",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! trinket.t2.has_cooldown || trinket.t1.has_use_buff & ( ! trinket.t2.has_use_buff || trinket.t2.cooldown.duration < trinket.t1.cooldown.duration || trinket.t2.cast_time < trinket.t1.cast_time || trinket.t2.cast_time = trinket.t1.cast_time & trinket.t2.cooldown.duration = trinket.t1.cooldown.duration ) || ! trinket.t1.has_use_buff & ( ! trinket.t2.has_use_buff & ( trinket.t2.cooldown.duration < trinket.t1.cooldown.duration || trinket.t2.cast_time < trinket.t1.cast_time || trinket.t2.cast_time = trinket.t1.cast_time & trinket.t2.cooldown.duration = trinket.t1.cooldown.duration ) )",
								["description"] = "Determine the stronger trinket to sync with cooldowns. In descending priority: buff effects > damage effects, longer > shorter cooldowns, longer > shorter cast times.",
								["var_name"] = "trinket_1_stronger",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! trinket.t1.has_cooldown || trinket.t2.has_use_buff & ( ! trinket.t1.has_use_buff || trinket.t1.cooldown.duration < trinket.t2.cooldown.duration || trinket.t1.cast_time < trinket.t2.cast_time || trinket.t1.cast_time = trinket.t2.cast_time & trinket.t1.cooldown.duration = trinket.t2.cooldown.duration ) || ! trinket.t2.has_use_buff & ( ! trinket.t1.has_use_buff & ( trinket.t1.cooldown.duration < trinket.t2.cooldown.duration || trinket.t1.cast_time < trinket.t2.cast_time || trinket.t1.cast_time = trinket.t2.cast_time & trinket.t1.cooldown.duration = trinket.t2.cooldown.duration ) )",
								["var_name"] = "trinket_2_stronger",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
								["use_off_gcd"] = 1,
								["criteria"] = "trinket.t1.has_use_buff & ( variable.sync_ready & ( variable.trinket_1_stronger || trinket.t2.cooldown.remains ) || ! variable.sync_ready & ( variable.trinket_1_stronger & ( variable.sync_remains > trinket.t1.cooldown.duration / 2 || trinket.t2.has_use_buff & trinket.t2.cooldown.remains > variable.sync_remains - 15 & trinket.t2.cooldown.remains - 5 < variable.sync_remains & variable.sync_remains + 40 > fight_remains ) || variable.trinket_2_stronger & ( trinket.t2.cooldown.remains & ( trinket.t2.cooldown.remains - 5 < variable.sync_remains & variable.sync_remains >= 20 || trinket.t2.cooldown.remains - 5 >= variable.sync_remains & ( variable.sync_remains > trinket.t1.cooldown.duration / 2 || boss & trinket.t1.cooldown.duration < fight_remains & ( variable.sync_remains + trinket.t1.cooldown.duration > fight_remains ) ) ) || trinket.t2.cooldown.ready & variable.sync_remains > 20 & variable.sync_remains < trinket.t2.cooldown.duration / 2 ) ) ) || ! trinket.t1.has_use_buff & ( trinket.t1.cast_time = 0 || ! variable.sync_active ) & ( ( ! trinket.t2.has_use_buff & ( variable.trinket_1_stronger || trinket.t2.cooldown.remains ) || trinket.t2.has_use_buff & ( variable.sync_remains > 20 || trinket.t2.cooldown.remains > 20 ) ) ) || target.time_to_die < 25 & ( variable.trinket_1_stronger || trinket.t2.cooldown.remains )",
								["description"] = "Uses buff effect trinkets with cooldowns and is willing to delay usage up to half the trinket cooldown if it won't lose a usage in the fight. Fills in downtime with weaker buff effects if they won't also be saved for later cooldowns (happens if it won't delay over half the trinket cooldown and a stronger trinket won't be up in time) or damage effects if they won't inferfere with any buff effect usage. Intended to be slot-agnostic so that any order of the same trinket pair should result in the same usage.",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["slot"] = "trinket2",
								["use_off_gcd"] = 1,
								["criteria"] = "trinket.t2.has_use_buff & ( variable.sync_ready & ( variable.trinket_2_stronger || trinket.t1.cooldown.remains ) || ! variable.sync_ready & ( variable.trinket_2_stronger & ( variable.sync_remains > trinket.t2.cooldown.duration / 2 || trinket.t1.has_use_buff & trinket.t1.cooldown.remains > variable.sync_remains - 15 & trinket.t1.cooldown.remains - 5 < variable.sync_remains & variable.sync_remains + 40 > fight_remains ) || variable.trinket_1_stronger & ( trinket.t1.cooldown.remains & ( trinket.t1.cooldown.remains - 5 < variable.sync_remains & variable.sync_remains >= 20 || trinket.t1.cooldown.remains - 5 >= variable.sync_remains & ( variable.sync_remains > trinket.t2.cooldown.duration / 2 || boss & trinket.t2.cooldown.duration < fight_remains & ( variable.sync_remains + trinket.t2.cooldown.duration > fight_remains ) ) ) || trinket.t1.cooldown.ready & variable.sync_remains > 20 & variable.sync_remains < trinket.t1.cooldown.duration / 2 ) ) ) || ! trinket.t2.has_use_buff & ( trinket.t2.cast_time = 0 || ! variable.sync_active ) & ( ( ! trinket.t1.has_use_buff & ( variable.trinket_2_stronger || trinket.t1.cooldown.remains ) || trinket.t1.has_use_buff & ( variable.sync_remains > 20 || trinket.t1.cooldown.remains > 20 ) ) ) || target.time_to_die < 25 & ( variable.trinket_2_stronger || trinket.t1.cooldown.remains )",
							}, -- [7]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.steady_focus.enabled & ( steady_focus_count & buff.steady_focus.remains < 5 || buff.steady_focus.down & ! buff.trueshot.up )",
								["action"] = "steady_shot",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.up & full_recharge_time < gcd.max + cast_time & talent.legacy_of_the_windrunners.enabled & talent.windrunners_guidance.enabled",
								["action"] = "aimed_shot",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.down",
								["action"] = "kill_shot",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.salvo.up",
								["action"] = "volley",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.down",
								["action"] = "steel_trap",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "refreshable & ! talent.serpentstalkers_trickery.enabled & buff.trueshot.down",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["action"] = "explosive_shot",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "stampede",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "death_chakram",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "wailing_arrow",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.surging_shots.enabled",
								["action"] = "rapid_fire",
							}, -- [11]
							{
								["action"] = "kill_shot",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.trueshot_ready & ( buff.trueshot.down || buff.trueshot.remains < 5 )",
								["action"] = "trueshot",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "multishot",
								["description"] = "Trigger Salvo if Volley isn't being used to trigger it.",
								["criteria"] = "buff.salvo.up & ! talent.volley.enabled",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "aimed_shot",
								["cycle_targets"] = 1,
								["criteria"] = "talent.serpentstalkers_trickery.enabled & ( buff.precise_shots.down || ( buff.trueshot.up || full_recharge_time < gcd.max + cast_time ) & ( ! talent.chimaera_shot.enabled || active_enemies < 2 || ca_active ) || buff.trick_shots.remains > execute_time & active_enemies > 1 )",
								["description"] = "With Serpentstalker's Trickery target the lowest remaining Serpent Sting. Without Chimaera Shot don't overwrite Precise Shots unless either Trueshot is active or Aimed Shot would cap before its next cast. On two targets with Chimaera Shot don't overwrite Precise Shots unless the target is within Careful Aim range in addition to either Trueshot being active or Aimed Shot capping before its next cast. Overwrite freely if it can cleave.",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "aimed_shot",
								["cycle_targets"] = 1,
								["criteria"] = "buff.precise_shots.down || ( buff.trueshot.up || full_recharge_time < gcd.max + cast_time ) & ( ! talent.chimaera_shot.enabled || active_enemies < 2 || ca_active ) || buff.trick_shots.remains > execute_time & active_enemies > 1",
								["description"] = "Without Serpentstalker's Trickery, target the highest Latent Poison stack. Same rules as the previous line.",
							}, -- [16]
							{
								["action"] = "volley",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "rapid_fire",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.down",
								["action"] = "wailing_arrow",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.down",
								["action"] = "kill_command",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.precise_shots.up || focus > cost + action.aimed_shot.cost",
								["action"] = "chimaera_shot",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.precise_shots.up || focus > cost + action.aimed_shot.cost",
								["action"] = "arcane_shot",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.down",
								["action"] = "bag_of_tricks",
							}, -- [23]
							{
								["action"] = "steady_shot",
								["enabled"] = true,
							}, -- [24]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["criteria"] = "boss & fight_remains < 13",
								["action"] = "berserking",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.up || cooldown.trueshot.remains > 30 || boss & fight_remains < 16",
								["action"] = "blood_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.up || cooldown.trueshot.remains > 30 || boss & fight_remains < 16",
								["action"] = "ancestral_call",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.up || cooldown.trueshot.remains > 30 || boss & fight_remains < 9",
								["action"] = "fireblood",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.down",
								["action"] = "lights_judgment",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.up & ( buff.bloodlust.up || target.health.pct < 20 ) || boss & fight_remains < 26",
								["action"] = "potion",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 || cooldown.volley.remains < 10",
								["action"] = "salvo",
							}, -- [7]
						},
					},
					["version"] = 20230512,
					["warnings"] = "The import for 'trickshots' required some automated changes.\nLine 1: Converted 'talent.steady_focus' to 'talent.steady_focus.enabled' (1x).\nLine 7: Converted 'talent.hydras_bite' to 'talent.hydras_bite.enabled' (1x).\nLine 7: Converted 'talent.serpentstalkers_trickery' to 'talent.serpentstalkers_trickery.enabled' (1x).\nLine 11: Converted 'talent.surging_shots' to 'talent.surging_shots.enabled' (1x).\nLine 12: Converted 'talent.serpentstalkers_trickery' to 'talent.serpentstalkers_trickery.enabled' (1x).\nLine 17: Converted 'talent.poison_injection' to 'talent.poison_injection.enabled' (1x).\nLine 17: Converted 'talent.serpentstalkers_trickery' to 'talent.serpentstalkers_trickery.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 3: Converted 'talent.bullseye' to 'talent.bullseye.enabled' (1x).\nLine 3: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 3: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 3: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready' (1x).\nLine 3: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready'.\nLine 3: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 3: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 3: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready' (1x).\nLine 3: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready'.\nLine 3: Converted operations in 'cooldown.trueshot.ready&(active_enemies=1&(!talent.bullseye.enabled||fight_remains>cooldown.trueshot.duration_guess+buff.trueshot.duration%2||buff.bullseye.stack=buff.bullseye.max_stack)&(!trinket.t1.has_use_buff||trinket.t1.cooldown.remains>30||trinket.t1.cooldown.ready)&(!trinket.t2.has_use_buff||trinket.t2.cooldown.remains>30||trinket.t2.cooldown.ready)||active_enemies>1||fight_remains<25)' to 'cooldown.trueshot.ready&(active_enemies=1&(!talent.bullseye.enabled||fight_remains>cooldown.trueshot.duration_guess+buff.trueshot.duration/2||buff.bullseye.stack=buff.bullseye.max_stack)&(!trinket.t1.has_use_buff||trinket.t1.cooldown.remains>30||trinket.t1.cooldown.ready)&(!trinket.t2.has_use_buff||trinket.t2.cooldown.remains>30||trinket.t2.cooldown.ready)||active_enemies>1||fight_remains<25)'.\nLine 6: Converted 'talent.trick_shots' to 'talent.trick_shots.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 1: Converted 'talent.lone_wolf' to 'talent.lone_wolf.enabled' (1x).\nLine 4: Converted 'talent.volley' to 'talent.volley.enabled' (1x).\nLine 5: Converted 'talent.steady_focus' to 'talent.steady_focus.enabled' (1x).\nLine 6: Converted 'talent.volley' to 'talent.volley.enabled' (1x).\n\nThe import for 'st' required some automated changes.\nLine 1: Converted 'talent.steady_focus' to 'talent.steady_focus.enabled' (1x).\nLine 2: Converted 'talent.legacy_of_the_windrunners' to 'talent.legacy_of_the_windrunners.enabled' (1x).\nLine 2: Converted 'talent.windrunners_guidance' to 'talent.windrunners_guidance.enabled' (1x).\nLine 6: Converted 'talent.serpentstalkers_trickery' to 'talent.serpentstalkers_trickery.enabled' (1x).\nLine 11: Converted 'talent.surging_shots' to 'talent.surging_shots.enabled' (1x).\nLine 14: Converted 'talent.volley' to 'talent.volley.enabled' (1x).\nLine 15: Converted 'talent.serpentstalkers_trickery' to 'talent.serpentstalkers_trickery.enabled' (1x).\nLine 15: Converted 'talent.chimaera_shot' to 'talent.chimaera_shot.enabled' (1x).\nLine 16: Converted 'talent.chimaera_shot' to 'talent.chimaera_shot.enabled' (1x).\n\nThe import for 'trinkets' required some automated changes.\nLine 4: Converted 'trinket.2.has_cooldown' to 'trinket.t2.has_cooldown' (1x).\nLine 4: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 4: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 4: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 4: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 4: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 4: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 4: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 4: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 4: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 4: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.1.has_cooldown' to 'trinket.t1.has_cooldown' (1x).\nLine 5: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 5: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 5: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 5: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 5: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 5: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 5: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 5: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 5: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 5: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 6: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready' (1x).\nLine 6: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready'.\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 6: Converted 'trinket.1.cast_time' to 'trinket.t1.cast_time' (1x).\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 6: Converted operations in 'trinket.t1.has_use_buff&(variable.sync_ready&(variable.trinket_1_stronger||trinket.t2.cooldown.remains)||!variable.sync_ready&(variable.trinket_1_stronger&(variable.sync_remains>trinket.t1.cooldown.duration%2||trinket.t2.has_use_buff&trinket.t2.cooldown.remains>variable.sync_remains-15&trinket.t2.cooldown.remains-5<variable.sync_remains&variable.sync_remains+40>fight_remains)||variable.trinket_2_stronger&(trinket.t2.cooldown.remains&(trinket.t2.cooldown.remains-5<variable.sync_remains&variable.sync_remains>=20||trinket.t2.cooldown.remains-5>=variable.sync_remains&(variable.sync_remains>trinket.t1.cooldown.duration%2||boss&trinket.t1.cooldown.duration<fight_remains&(variable.sync_remains+trinket.t1.cooldown.duration>fight_remains)))||trinket.t2.cooldown.ready&variable.sync_remains>20&variable.sync_remains<trinket.t2.cooldown.duration%2)))||!trinket.t1.has_use_buff&(trinket.t1.cast_time=0||!variable.sync_active)&((!trinket.t2.has_use_buff&(variable.trinket_1_stronger||trinket.t2.cooldown.remains)||trinket.t2.has_use_buff&(variable.sync_remains>20||trinket.t2.cooldown.remains>20)))||target.time_to_die<25&(variable.trinket_1_stronger||trinket.t2.cooldown.remains)' to 'trinket.t1.has_use_buff&(variable.sync_ready&(variable.trinket_1_stronger||trinket.t2.cooldown.remains)||!variable.sync_ready&(variable.trinket_1_stronger&(variable.sync_remains>trinket.t1.cooldown.duration/2||trinket.t2.has_use_buff&trinket.t2.cooldown.remains>variable.sync_remains-15&trinket.t2.cooldown.remains-5<variable.sync_remains&variable.sync_remains+40>fight_remains)||variable.trinket_2_stronger&(trinket.t2.cooldown.remains&(trinket.t2.cooldown.remains-5<variable.sync_remains&variable.sync_remains>=20||trinket.t2.cooldown.remains-5>=variable.sync_remains&(variable.sync_remains>trinket.t1.cooldown.duration/2||boss&trinket.t1.cooldown.duration<fight_remains&(variable.sync_remains+trinket.t1.cooldown.duration>fight_remains)))||trinket.t2.cooldown.ready&variable.sync_remains>20&variable.sync_remains<trinket.t2.cooldown.duration/2)))||!trinket.t1.has_use_buff&(trinket.t1.cast_time=0||!variable.sync_active)&((!trinket.t2.has_use_buff&(variable.trinket_1_stronger||trinket.t2.cooldown.remains)||trinket.t2.has_use_buff&(variable.sync_remains>20||trinket.t2.cooldown.remains>20)))||target.time_to_die<25&(variable.trinket_1_stronger||trinket.t2.cooldown.remains)'.\nLine 7: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 7: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 7: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready' (1x).\nLine 7: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready'.\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 7: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 7: Converted 'trinket.2.cast_time' to 'trinket.t2.cast_time' (1x).\nLine 7: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 7: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 7: Converted operations in 'trinket.t2.has_use_buff&(variable.sync_ready&(variable.trinket_2_stronger||trinket.t1.cooldown.remains)||!variable.sync_ready&(variable.trinket_2_stronger&(variable.sync_remains>trinket.t2.cooldown.duration%2||trinket.t1.has_use_buff&trinket.t1.cooldown.remains>variable.sync_remains-15&trinket.t1.cooldown.remains-5<variable.sync_remains&variable.sync_remains+40>fight_remains)||variable.trinket_1_stronger&(trinket.t1.cooldown.remains&(trinket.t1.cooldown.remains-5<variable.sync_remains&variable.sync_remains>=20||trinket.t1.cooldown.remains-5>=variable.sync_remains&(variable.sync_remains>trinket.t2.cooldown.duration%2||boss&trinket.t2.cooldown.duration<fight_remains&(variable.sync_remains+trinket.t2.cooldown.duration>fight_remains)))||trinket.t1.cooldown.ready&variable.sync_remains>20&variable.sync_remains<trinket.t1.cooldown.duration%2)))||!trinket.t2.has_use_buff&(trinket.t2.cast_time=0||!variable.sync_active)&((!trinket.t1.has_use_buff&(variable.trinket_2_stronger||trinket.t1.cooldown.remains)||trinket.t1.has_use_buff&(variable.sync_remains>20||trinket.t1.cooldown.remains>20)))||target.time_to_die<25&(variable.trinket_2_stronger||trinket.t1.cooldown.remains)' to 'trinket.t2.has_use_buff&(variable.sync_ready&(variable.trinket_2_stronger||trinket.t1.cooldown.remains)||!variable.sync_ready&(variable.trinket_2_stronger&(variable.sync_remains>trinket.t2.cooldown.duration/2||trinket.t1.has_use_buff&trinket.t1.cooldown.remains>variable.sync_remains-15&trinket.t1.cooldown.remains-5<variable.sync_remains&variable.sync_remains+40>fight_remains)||variable.trinket_1_stronger&(trinket.t1.cooldown.remains&(trinket.t1.cooldown.remains-5<variable.sync_remains&variable.sync_remains>=20||trinket.t1.cooldown.remains-5>=variable.sync_remains&(variable.sync_remains>trinket.t2.cooldown.duration/2||boss&trinket.t2.cooldown.duration<fight_remains&(variable.sync_remains+trinket.t2.cooldown.duration>fight_remains)))||trinket.t1.cooldown.ready&variable.sync_remains>20&variable.sync_remains<trinket.t1.cooldown.duration/2)))||!trinket.t2.has_use_buff&(trinket.t2.cast_time=0||!variable.sync_active)&((!trinket.t1.has_use_buff&(variable.trinket_2_stronger||trinket.t1.cooldown.remains)||trinket.t1.has_use_buff&(variable.sync_remains>20||trinket.t1.cooldown.remains>20)))||target.time_to_die<25&(variable.trinket_2_stronger||trinket.t1.cooldown.remains)'.\n\nImported 6 action lists.\n",
					["spec"] = 254,
					["profile"] = "actions.precombat+=/summon_pet,if=!talent.lone_wolf\nactions.precombat+=/salvo,precast_time=10\nactions.precombat+=/use_item,name=algethar_puzzle_box\n# Precast Aimed Shot on one or two targets unless we could cleave it with Volley on two targets.\nactions.precombat+=/aimed_shot,if=active_enemies<3&(!talent.volley||active_enemies<2)\nactions.precombat+=/wailing_arrow,if=active_enemies>2||!talent.steady_focus\n# Precast Steady Shot on two targets if we are saving Aimed Shot to cleave with Volley, otherwise on three or more targets.\nactions.precombat+=/steady_shot,if=active_enemies>2||talent.volley&active_enemies=2\n\nactions=counter_shot\nactions+=/tranquilizing_shot\n# Determine if it is a good time to use Trueshot. Raid event optimization takes priority so usage is saved for multiple targets as long as it won't delay over half its duration. Otherwise allow for small delays to line up buff effect trinkets, and when using Bullseye, delay the last usage of the fight for max stacks.\nactions+=/variable,name=trueshot_ready,value=cooldown.trueshot.ready&(active_enemies=1&(!talent.bullseye||fight_remains>cooldown.trueshot.duration_guess+buff.trueshot.duration%2||buff.bullseye.stack=buff.bullseye.max_stack)&(!trinket.1.has_use_buff||trinket.1.cooldown.remains>30||trinket.1.cooldown.ready)&(!trinket.2.has_use_buff||trinket.2.cooldown.remains>30||trinket.2.cooldown.ready)||active_enemies>1||fight_remains<25)\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=trinkets\nactions+=/call_action_list,name=st,strict=1,if=active_enemies<3||!talent.trick_shots\nactions+=/call_action_list,name=trickshots,strict=1,if=active_enemies>2\n\nactions.cds+=/berserking,if=boss&fight_remains<13\nactions.cds+=/blood_fury,if=buff.trueshot.up||cooldown.trueshot.remains>30||boss&fight_remains<16\nactions.cds+=/ancestral_call,if=buff.trueshot.up||cooldown.trueshot.remains>30||boss&fight_remains<16\nactions.cds+=/fireblood,if=buff.trueshot.up||cooldown.trueshot.remains>30||boss&fight_remains<9\nactions.cds+=/lights_judgment,if=buff.trueshot.down\nactions.cds+=/potion,if=buff.trueshot.up&(buff.bloodlust.up||target.health.pct<20)||boss&fight_remains<26\nactions.cds+=/salvo,if=active_enemies>2||cooldown.volley.remains<10\n\nactions.st+=/steady_shot,if=talent.steady_focus&(steady_focus_count&buff.steady_focus.remains<5||buff.steady_focus.down&!buff.trueshot.up)\nactions.st+=/aimed_shot,if=buff.trueshot.up&full_recharge_time<gcd+cast_time&talent.legacy_of_the_windrunners&talent.windrunners_guidance\nactions.st+=/kill_shot,if=buff.trueshot.down\nactions.st+=/volley,if=buff.salvo.up\nactions.st+=/steel_trap,if=buff.trueshot.down\nactions.st+=/serpent_sting,cycle_targets=1,if=refreshable&!talent.serpentstalkers_trickery&buff.trueshot.down\nactions.st+=/explosive_shot\nactions.st+=/stampede\nactions.st+=/death_chakram\nactions.st+=/wailing_arrow,if=active_enemies>1\nactions.st+=/rapid_fire,if=talent.surging_shots\nactions.st+=/kill_shot\nactions.st+=/trueshot,if=variable.trueshot_ready&(buff.trueshot.down||buff.trueshot.remains<5)\n# Trigger Salvo if Volley isn't being used to trigger it.\nactions.st+=/multishot,if=buff.salvo.up&!talent.volley\n# With Serpentstalker's Trickery target the lowest remaining Serpent Sting. Without Chimaera Shot don't overwrite Precise Shots unless either Trueshot is active or Aimed Shot would cap before its next cast. On two targets with Chimaera Shot don't overwrite Precise Shots unless the target is within Careful Aim range in addition to either Trueshot being active or Aimed Shot capping before its next cast. Overwrite freely if it can cleave.\nactions.st+=/aimed_shot,cycle_targets=1,if=talent.serpentstalkers_trickery&(buff.precise_shots.down||(buff.trueshot.up||full_recharge_time<gcd+cast_time)&(!talent.chimaera_shot||active_enemies<2||ca_active)||buff.trick_shots.remains>execute_time&active_enemies>1)\n# Without Serpentstalker's Trickery, target the highest Latent Poison stack. Same rules as the previous line.\nactions.st+=/aimed_shot,cycle_targets=1,if=buff.precise_shots.down||(buff.trueshot.up||full_recharge_time<gcd+cast_time)&(!talent.chimaera_shot||active_enemies<2||ca_active)||buff.trick_shots.remains>execute_time&active_enemies>1\nactions.st+=/volley\nactions.st+=/rapid_fire\nactions.st+=/wailing_arrow,if=buff.trueshot.down\nactions.st+=/kill_command,if=buff.trueshot.down\nactions.st+=/chimaera_shot,if=buff.precise_shots.up||focus>cost+action.aimed_shot.cost\nactions.st+=/arcane_shot,if=buff.precise_shots.up||focus>cost+action.aimed_shot.cost\nactions.st+=/bag_of_tricks,if=buff.trueshot.down\nactions.st+=/steady_shot\n\nactions.trickshots+=/steady_shot,if=talent.steady_focus&steady_focus_count&buff.steady_focus.remains<8\nactions.trickshots+=/kill_shot,if=buff.razor_fragments.up\nactions.trickshots+=/explosive_shot\nactions.trickshots+=/death_chakram\nactions.trickshots+=/stampede\nactions.trickshots+=/wailing_arrow\nactions.trickshots+=/serpent_sting,cycle_targets=1,if=refreshable&talent.hydras_bite&!talent.serpentstalkers_trickery\nactions.trickshots+=/barrage,if=active_enemies>7\nactions.trickshots+=/volley\nactions.trickshots+=/trueshot\nactions.trickshots+=/rapid_fire,if=buff.trick_shots.remains>=execute_time&talent.surging_shots\n# For Serpentstalker's Trickery, target the lowest remaining Serpent Sting. Generally only cast if it would cleave with Trick Shots. Don't overwrite Precise Shots unless Trueshot is up or Aimed Shot would cap otherwise.\nactions.trickshots+=/aimed_shot,cycle_targets=1,if=talent.serpentstalkers_trickery&(buff.trick_shots.remains>=execute_time&(buff.precise_shots.down||buff.trueshot.up||full_recharge_time<cast_time+gcd))\n# For no Serpentstalker's Trickery, target the highest Latent Poison stack. Same general rules as the previous line.\nactions.trickshots+=/aimed_shot,cycle_targets=1,if=(buff.trick_shots.remains>=execute_time&(buff.precise_shots.down||buff.trueshot.up||full_recharge_time<cast_time+gcd))\nactions.trickshots+=/rapid_fire,if=buff.trick_shots.remains>=execute_time\nactions.trickshots+=/chimaera_shot,if=buff.trick_shots.up&buff.precise_shots.up&focus>cost+action.aimed_shot.cost&active_enemies<4\nactions.trickshots+=/multishot,if=buff.trick_shots.down||(buff.precise_shots.up||buff.bulletstorm.stack=10)&focus>cost+action.aimed_shot.cost\n# Only use baseline Serpent Sting as a filler in cleave if it's the only source of applying Latent Poison.\nactions.trickshots+=/serpent_sting,cycle_targets=1,if=refreshable&talent.poison_injection&!talent.serpentstalkers_trickery\nactions.trickshots+=/steel_trap,if=buff.trueshot.down\nactions.trickshots+=/kill_shot,if=focus>cost+action.aimed_shot.cost\nactions.trickshots+=/multishot,if=focus>cost+action.aimed_shot.cost\nactions.trickshots+=/bag_of_tricks,if=buff.trueshot.down\nactions.trickshots+=/steady_shot\n\n# Signals that cooldowns are active or ready to activate that is desirable to sync a buff effect with.\nactions.trinkets+=/variable,name=sync_ready,value=variable.trueshot_ready\n# Signals that the cooldowns that are desirable to sync a buff with are active.\nactions.trinkets+=/variable,name=sync_active,value=buff.trueshot.up\n# The amount of time until the cooldowns will be ready that are desirable to sync a buff effect with.\nactions.trinkets+=/variable,name=sync_remains,value=cooldown.trueshot.remains\n# Determine the stronger trinket to sync with cooldowns. In descending priority: buff effects > damage effects, longer > shorter cooldowns, longer > shorter cast times.\nactions.trinkets+=/variable,name=trinket_1_stronger,value=!trinket.2.has_cooldown||trinket.1.has_use_buff&(!trinket.2.has_use_buff||trinket.2.cooldown.duration<trinket.1.cooldown.duration||trinket.2.cast_time<trinket.1.cast_time||trinket.2.cast_time=trinket.1.cast_time&trinket.2.cooldown.duration=trinket.1.cooldown.duration)||!trinket.1.has_use_buff&(!trinket.2.has_use_buff&(trinket.2.cooldown.duration<trinket.1.cooldown.duration||trinket.2.cast_time<trinket.1.cast_time||trinket.2.cast_time=trinket.1.cast_time&trinket.2.cooldown.duration=trinket.1.cooldown.duration))\nactions.trinkets+=/variable,name=trinket_2_stronger,value=!trinket.1.has_cooldown||trinket.2.has_use_buff&(!trinket.1.has_use_buff||trinket.1.cooldown.duration<trinket.2.cooldown.duration||trinket.1.cast_time<trinket.2.cast_time||trinket.1.cast_time=trinket.2.cast_time&trinket.1.cooldown.duration=trinket.2.cooldown.duration)||!trinket.2.has_use_buff&(!trinket.1.has_use_buff&(trinket.1.cooldown.duration<trinket.2.cooldown.duration||trinket.1.cast_time<trinket.2.cast_time||trinket.1.cast_time=trinket.2.cast_time&trinket.1.cooldown.duration=trinket.2.cooldown.duration))\n# Uses buff effect trinkets with cooldowns and is willing to delay usage up to half the trinket cooldown if it won't lose a usage in the fight. Fills in downtime with weaker buff effects if they won't also be saved for later cooldowns (happens if it won't delay over half the trinket cooldown and a stronger trinket won't be up in time) or damage effects if they won't inferfere with any buff effect usage. Intended to be slot-agnostic so that any order of the same trinket pair should result in the same usage.\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket1,if=trinket.1.has_use_buff&(variable.sync_ready&(variable.trinket_1_stronger||trinket.2.cooldown.remains)||!variable.sync_ready&(variable.trinket_1_stronger&(variable.sync_remains>trinket.1.cooldown.duration%2||trinket.2.has_use_buff&trinket.2.cooldown.remains>variable.sync_remains-15&trinket.2.cooldown.remains-5<variable.sync_remains&variable.sync_remains+40>fight_remains)||variable.trinket_2_stronger&(trinket.2.cooldown.remains&(trinket.2.cooldown.remains-5<variable.sync_remains&variable.sync_remains>=20||trinket.2.cooldown.remains-5>=variable.sync_remains&(variable.sync_remains>trinket.1.cooldown.duration%2||boss&trinket.1.cooldown.duration<fight_remains&(variable.sync_remains+trinket.1.cooldown.duration>fight_remains)))||trinket.2.cooldown.ready&variable.sync_remains>20&variable.sync_remains<trinket.2.cooldown.duration%2)))||!trinket.1.has_use_buff&(trinket.1.cast_time=0||!variable.sync_active)&((!trinket.2.has_use_buff&(variable.trinket_1_stronger||trinket.2.cooldown.remains)||trinket.2.has_use_buff&(variable.sync_remains>20||trinket.2.cooldown.remains>20)))||target.time_to_die<25&(variable.trinket_1_stronger||trinket.2.cooldown.remains)\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket2,if=trinket.2.has_use_buff&(variable.sync_ready&(variable.trinket_2_stronger||trinket.1.cooldown.remains)||!variable.sync_ready&(variable.trinket_2_stronger&(variable.sync_remains>trinket.2.cooldown.duration%2||trinket.1.has_use_buff&trinket.1.cooldown.remains>variable.sync_remains-15&trinket.1.cooldown.remains-5<variable.sync_remains&variable.sync_remains+40>fight_remains)||variable.trinket_1_stronger&(trinket.1.cooldown.remains&(trinket.1.cooldown.remains-5<variable.sync_remains&variable.sync_remains>=20||trinket.1.cooldown.remains-5>=variable.sync_remains&(variable.sync_remains>trinket.2.cooldown.duration%2||boss&trinket.2.cooldown.duration<fight_remains&(variable.sync_remains+trinket.2.cooldown.duration>fight_remains)))||trinket.1.cooldown.ready&variable.sync_remains>20&variable.sync_remains<trinket.1.cooldown.duration%2)))||!trinket.2.has_use_buff&(trinket.2.cast_time=0||!variable.sync_active)&((!trinket.1.has_use_buff&(variable.trinket_2_stronger||trinket.1.cooldown.remains)||trinket.1.has_use_buff&(variable.sync_remains>20||trinket.1.cooldown.remains>20)))||target.time_to_die<25&(variable.trinket_2_stronger||trinket.1.cooldown.remains)",
				},
				["Subtlety"] = {
					["builtIn"] = true,
					["date"] = 20230603,
					["spec"] = 261,
					["desc"] = "2023-06-03: Skip Rupture in multi-target when Rupture is on another enemy or your target will die relatively soon.\n\n2023-05-14:  Relax stealth_cds action list requirements.\n - Shiv.\n\n2023-05-12:  10.1 updates.\n\n2023-03-19:  10.0.7 update.\n\n2023-03-28:  Optimize efficiency.\n\n2023-04-05:  Move precombat Al'gethar Puzzle Box before Stealth.",
					["lists"] = {
						["stealthed"] = {
							{
								["enabled"] = true,
								["action"] = "shadowstrike",
								["description"] = "Stealthed Rotation  If Stealth/vanish are up, use Shadowstrike to benefit from the passive bonus and Find Weakness, even if we are at max CP (unless using Master Assassin)",
								["criteria"] = "( buff.stealth.up || buff.vanish.up ) & ( spell_targets.shuriken_storm < 4 || variable.priority_rotation )",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.danse_macabre.stack < 5 & ( combo_points.deficit = 2 || combo_points.deficit = 3 ) & ( buff.premeditation.up || effective_combo_points < 7 ) & ( spell_targets.shuriken_storm <= 8 || talent.lingering_shadow.enabled )",
								["description"] = "Variable to Gloomblade / Backstab when on 4 or 5 combo points with premediation and when the combo point is not anima charged",
								["var_name"] = "gloomblade_condition",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.gloomblade_condition & buff.silent_storm.up & ! debuff.find_weakness.remains & talent.improved_shuriken_storm.enabled || combo_points <= 1 & ! used_for_danse & spell_targets.shuriken_storm = 2 & talent.danse_macabre.enabled",
								["action"] = "shuriken_storm",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.gloomblade_condition & ( ! used_for_danse || spell_targets.shuriken_storm != 2 ) || combo_points <= 2 & buff.the_rotten.up & spell_targets.shuriken_storm <= 3",
								["action"] = "gloomblade",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.gloomblade_condition & talent.danse_macabre.enabled & buff.danse_macabre.stack <= 2 & spell_targets.shuriken_storm <= 2",
								["action"] = "backstab",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "variable.effective_combo_points >= cp_max_spend",
								["list_name"] = "finish",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Finish earlier with Shuriken tornado up.",
								["strict"] = 1,
								["criteria"] = "buff.shuriken_tornado.up & combo_points.deficit <= 2",
								["list_name"] = "finish",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Also safe to finish at 4+ CP with exactly 4 targets. (Same as outside stealth.)",
								["strict"] = 1,
								["criteria"] = "spell_targets.shuriken_storm >= 4 - talent.seal_fate.enabled & variable.effective_combo_points >= 4",
								["list_name"] = "finish",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Finish at lower combo points if you are talented in DS, SS or Seal Fate",
								["strict"] = 1,
								["criteria"] = "combo_points.deficit <= 1 + ( talent.seal_fate.enabled || talent.deeper_stratagem.enabled || talent.secret_stratagem.enabled )",
								["list_name"] = "finish",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "gloomblade",
								["description"] = "Use Gloomblade or Backstab when close to hitting max PV stacks",
								["criteria"] = "buff.perforated_veins.stack >= 5 & spell_targets.shuriken_storm < 3",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.perforated_veins.stack >= 5 & spell_targets.shuriken_storm < 3",
								["action"] = "backstab",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "stealthed.sepsis & spell_targets.shuriken_storm < 4",
								["action"] = "shadowstrike",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 3 + buff.the_rotten.up & ( ! buff.premeditation.up || spell_targets >= 7 & ! variable.priority_rotation )",
								["action"] = "shuriken_storm",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "shadowstrike",
								["description"] = "Shadowstrike to refresh Find Weakness and to ensure we can carry over a full FW into the next SoD if possible.",
								["criteria"] = "debuff.find_weakness.remains <= 1 || cooldown.symbols_of_death.remains < 18 & debuff.find_weakness.remains < cooldown.symbols_of_death.remains",
							}, -- [14]
							{
								["action"] = "shadowstrike",
								["enabled"] = true,
							}, -- [15]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Restealth if possible (no vulnerable enemies in combat)",
								["action"] = "stealth",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Interrupt on cooldown to allow simming interactions with that",
								["action"] = "kick",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "shiv",
								["description"] = "Dispel Enrages with Shiv.",
								["criteria"] = "debuff.dispellable_enrage.up",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.slice_and_dice.up || spell_targets.shuriken_storm >= cp_max_spend",
								["description"] = "Used to determine whether cooldowns wait for SnD based on targets.",
								["var_name"] = "snd_condition",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "is_next_cp_animacharged",
								["criteria"] = "talent.echoing_reprimand.enabled",
								["description"] = "Check to see if the next CP (in the event of a ShT proc) is Animacharged",
								["value"] = "combo_points = 1 & buff.echoing_reprimand_2.up || combo_points = 2 & buff.echoing_reprimand_3.up || combo_points = 3 & buff.echoing_reprimand_4.up || combo_points = 4 & buff.echoing_reprimand_5.up",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "effective_combo_points",
								["description"] = "Account for ShT reaction time by ignoring low-CP animacharged matches in the 0.5s preceeding a potential ShT proc",
								["var_name"] = "effective_combo_points",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "combo_points",
								["criteria"] = "talent.echoing_reprimand.enabled & effective_combo_points > combo_points & combo_points.deficit > 2 & time_to_sht_plus.4 < 0.5 & ! variable.is_next_cp_animacharged",
								["var_name"] = "effective_combo_points",
							}, -- [7]
							{
								["enabled"] = true,
								["description"] = "Check CDs at first",
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "slice_and_dice",
								["description"] = "Apply Slice and Dice at 4+ CP if it expires within the next GCD or is not up",
								["criteria"] = "spell_targets.shuriken_storm < cp_max_spend & buff.slice_and_dice.remains < gcd.max & fight_remains > 6 & combo_points >= 4",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "Run fully switches to the Stealthed Rotation (by doing so, it forces pooling if nothing is available).",
								["strict"] = 1,
								["criteria"] = "stealthed.all",
								["list_name"] = "stealthed",
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "25 + talent.vigor.enabled * 20 + talent.master_of_shadows.enabled * 20 + talent.shadow_focus.enabled * 25 + talent.alacrity.enabled * 20 + 25 * ( spell_targets.shuriken_storm >= 4 )",
								["description"] = "Used to define when to use stealth CDs or builders",
								["var_name"] = "stealth_threshold",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Consider using a Stealth CD when reaching the energy threshold",
								["criteria"] = "energy.deficit <= variable.stealth_threshold",
								["list_name"] = "stealth_cds",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Finish at maximum or close to maximum combo point value or at 4+ against 4 targets (outside stealth)",
								["strict"] = 1,
								["criteria"] = "variable.effective_combo_points >= cp_max_spend || combo_points.deficit <= 1 + buff.the_rotten.up || boss & fight_remains <= 1 & variable.effective_combo_points >= 3 || spell_targets.shuriken_storm >= ( 4 - talent.seal_fate.enabled ) & variable.effective_combo_points >= 4",
								["list_name"] = "finish",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Use a builder when reaching the energy threshold",
								["criteria"] = "energy.deficit <= variable.stealth_threshold",
								["list_name"] = "build",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "arcane_torrent",
								["description"] = "Lowest priority in all of the APL because it causes a GCD",
								["criteria"] = "energy.deficit >= 15 + energy.regen",
							}, -- [15]
							{
								["action"] = "arcane_pulse",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [18]
						},
						["precombat"] = {
							{
								["action"] = "apply_poison",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [2]
							{
								["action"] = "stealth",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "marked_for_death",
								["precombat_seconds"] = "15",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "slice_and_dice",
								["criteria"] = "refreshable",
								["precombat_seconds"] = "1",
							}, -- [5]
						},
						["build"] = {
							{
								["enabled"] = true,
								["action"] = "shuriken_storm",
								["description"] = "Builders",
								["criteria"] = "spell_targets >= 2 + ( talent.gloomblade.enabled & buff.lingering_shadow.remains >= 6 || buff.perforated_veins.up )",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.echoing_reprimand.enabled || ! ( variable.is_next_cp_animacharged & ( time_to_sht_plus.3 < 0.5 || time_to_sht_plus.4 < 1 ) & energy < 60 )",
								["description"] = "Build immediately unless the next CP is Animacharged and we won't cap energy waiting for it.",
								["var_name"] = "anima_helper",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.anima_helper",
								["action"] = "gloomblade",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.anima_helper",
								["action"] = "backstab",
							}, -- [4]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! buff.premeditation.up & spell_targets.shuriken_storm = 1 || ! talent.the_rotten.enabled || spell_targets.shuriken_storm > 1",
								["description"] = "Cooldowns",
								["var_name"] = "rotten_condition",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.shadow_dance.up & buff.shuriken_tornado.up & buff.shuriken_tornado.remains <= 3.5",
								["use_off_gcd"] = 1,
								["action"] = "shadow_dance",
								["description"] = "Use Dance off-gcd before the first Shuriken Storm from Tornado comes in.",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.shuriken_tornado.up & buff.shuriken_tornado.remains <= 3.5",
								["use_off_gcd"] = 1,
								["action"] = "symbols_of_death",
								["description"] = "(Unless already up because we took Shadow Focus) use Symbols off-gcd before the first Shuriken Storm from Tornado comes in.",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "vanish",
								["description"] = "Vanish for Shadowstrike with Danse Macabre at adaquate stacks",
								["criteria"] = "buff.danse_macabre.stack > 3 & combo_points <= 2 & ( cooldown.secret_technique.remains >= 30 || ! talent.secret_technique.enabled )",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "cold_blood",
								["description"] = "Cold Blood on 5 combo points when not playing Secret Technique",
								["criteria"] = "! talent.secret_technique.enabled & combo_points >= 5",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "flagellation",
								["criteria"] = "variable.snd_condition & combo_points >= 5 & target.time_to_die > 10",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["description"] = "Pool for Tornado pre-SoD with ShD ready when not running SF.",
								["criteria"] = "talent.shuriken_tornado.enabled & ! talent.shadow_focus.enabled",
								["action"] = "pool_resource",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "shuriken_tornado",
								["description"] = "Use Tornado pre SoD when we have the energy whether from pooling without SF or just generally.",
								["criteria"] = "spell_targets.shuriken_storm <= 1 & energy >= 60 & variable.snd_condition & cooldown.symbols_of_death.up & cooldown.shadow_dance.charges >= 1 & ( ! talent.flagellation.enabled & ! cooldown.flagellation.up || buff.flagellation_buff.up || spell_targets.shuriken_storm >= 5 ) & combo_points <= 2 & ! buff.premeditation.up",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.snd_condition & combo_points.deficit >= 1 & target.time_to_die >= 16",
								["action"] = "sepsis",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "symbols_of_death",
								["description"] = "Use Symbols on cooldown (after first SnD) unless we are going to pop Tornado and do not have Shadow Focus.",
								["criteria"] = "( buff.symbols_of_death.remains <= 3 & ! cooldown.shadow_dance.ready || ! set_bonus.tier30_2pc ) & variable.rotten_condition & variable.snd_condition & ( ! talent.flagellation.enabled & ( combo_points <= 1 || ! talent.the_rotten.enabled ) || cooldown.flagellation.remains > 10 || cooldown.flagellation.up & combo_points >= 5 )",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "marked_for_death",
								["line_cd"] = "1.5",
								["cycle_targets"] = 1,
								["criteria"] = "raid_event.adds.up & ( target.time_to_die < combo_points.deficit || ! stealthed.all & combo_points.deficit >= cp_max_spend )",
								["description"] = "If adds are up, snipe the one with lowest TTD. Use when dying faster than CP deficit or not stealthed without any CP.",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "marked_for_death",
								["description"] = "If no adds will die within the next 30s, use MfD on boss without any CP.",
								["criteria"] = "raid_event.adds.in > 30 - raid_event.adds.duration & combo_points.deficit >= cp_max_spend",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.snd_condition & combo_points.deficit >= 2 & target.time_to_die >= 10 & ( dot.sepsis.ticking || cooldown.sepsis.remains <= 8 || ! talent.sepsis.enabled ) || boss & fight_remains <= 20",
								["action"] = "shadow_blades",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "variable.snd_condition & combo_points.deficit >= 3 & ( variable.priority_rotation || spell_targets.shuriken_storm <= 4 || talent.resounding_clarity.enabled ) & ( buff.shadow_dance.up || ! talent.danse_macabre.enabled )",
								["action"] = "echoing_reprimand",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "shuriken_tornado",
								["description"] = "With SF, if not already done, use Tornado with SoD up.",
								["criteria"] = "variable.snd_condition & buff.symbols_of_death.up & combo_points <= 2 & ( ! buff.premeditation.up || spell_targets.shuriken_storm > 4 )",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shadow_dance.ready & ! stealthed.all & spell_targets.shuriken_storm >= 3 & ! talent.flagellation.enabled",
								["action"] = "shuriken_tornado",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! buff.shadow_dance.up & boss & fight_remains <= 8 + talent.subterfuge.enabled",
								["action"] = "shadow_dance",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.symbols_of_death.remains >= 3 || buff.symbols_of_death.up ) & ! buff.thistle_tea.up & ( energy.deficit >= 100 & ( combo_points.deficit >= 2 || spell_targets.shuriken_storm >= 3 ) || cooldown.thistle_tea.charges_fractional >= 2.75 & buff.shadow_dance.up ) || buff.shadow_dance.remains >= 4 & ! buff.thistle_tea.up & spell_targets.shuriken_storm >= 3 || ! buff.thistle_tea.up & fight_remains <= ( 6 * cooldown.thistle_tea.charges )",
								["action"] = "thistle_tea",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.react || boss & fight_remains < 30 || buff.symbols_of_death.up & ( buff.shadow_blades.up || cooldown.shadow_blades.remains <= 10 )",
								["action"] = "potion",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.symbols_of_death.up",
								["action"] = "blood_fury",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.symbols_of_death.up",
								["action"] = "berserking",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.symbols_of_death.up",
								["action"] = "fireblood",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.symbols_of_death.up",
								["action"] = "ancestral_call",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "beacon_to_the_beyond",
								["use_off_gcd"] = 1,
								["name"] = "beacon_to_the_beyond",
								["criteria"] = "! stealthed.all & ( buff.deeper_daggers.up || ! talent.deeper_daggers.enabled ) & ( ! raid_event.adds.up || ! equipped.stormeaters_boon || cooldown.stormeaters_boon.remains > 20 )",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "manic_grieftorch",
								["use_off_gcd"] = 1,
								["name"] = "manic_grieftorch",
								["criteria"] = "! stealthed.all & ( ! raid_event.adds.up || ! equipped.stormeaters_boon || cooldown.stormeaters_boon.remains > 20 )",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "use_items",
								["description"] = "Default fallback for usable items: Use with Symbols of Death.",
								["criteria"] = "! stealthed.all || boss & fight_remains < 20",
							}, -- [26]
						},
						["stealth_cds"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.shadow_dance.charges_fractional >= 0.75 + talent.shadow_dance.enabled",
								["description"] = "Stealth Cooldowns  Helper Variable",
								["var_name"] = "shd_threshold",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! buff.the_rotten.up || spell_targets.shuriken_storm > 1 || combo_points <= 2 & buff.the_rotten.up & ! set_bonus.tier30_2pc",
								["var_name"] = "rotten_threshold",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.danse_macabre.enabled || spell_targets.shuriken_storm >= 3 ) & ! variable.shd_threshold & combo_points.deficit > 1 & ( cooldown.flagellation.remains >= 60 || ! talent.flagellation.enabled || fight_remains <= ( 30 * cooldown.vanish.charges ) )",
								["action"] = "vanish",
							}, -- [3]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["description"] = "Pool for Shadowmeld + Shadowstrike unless we are about to cap on Dance charges. Only when Find Weakness is about to run out.",
								["criteria"] = "race.night_elf",
								["extra_amount"] = "40",
								["action"] = "pool_resource",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "energy >= 40 & energy.deficit >= 10 & ! variable.shd_threshold & combo_points.deficit > 4",
								["action"] = "shadowmeld",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "combo_points <= 1",
								["description"] = "CP thresholds for entering Shadow Dance Default to start dance with 0 or 1 combo point",
								["var_name"] = "shd_combo_points",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "shd_combo_points",
								["criteria"] = "spell_targets.shuriken_storm > ( 4 - 2 * talent.shuriken_tornado.enabled ) || variable.priority_rotation & spell_targets.shuriken_storm >= 4",
								["description"] = "Use stealth cooldowns with high combo points when playing shuriken tornado or with high target counts",
								["value"] = "combo_points.deficit <= 1",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "shd_combo_points",
								["criteria"] = "spell_targets.shuriken_storm = ( 4 - talent.seal_fate.enabled )",
								["description"] = "Use stealth cooldowns on any combo point on 4 targets",
								["value"] = "1",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "shadow_dance",
								["description"] = "Dance during Symbols or above threshold.",
								["criteria"] = "( variable.shd_combo_points & ( ! talent.shadow_dance.enabled & buff.symbols_of_death.remains >= ( 2.2 - talent.flagellation.enabled ) || variable.shd_threshold ) || talent.shadow_dance.enabled & cooldown.secret_technique.remains <= 9 & ( spell_targets.shuriken_storm <= 3 || talent.danse_macabre.enabled ) || buff.flagellation.up || buff.flagellation_persist.remains >= 6 || spell_targets.shuriken_storm >= 4 & cooldown.symbols_of_death.remains > 10 ) & variable.rotten_threshold",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "shadow_dance",
								["description"] = "Burn Dances charges if before the fight ends if SoD won't be ready in time.",
								["criteria"] = "variable.shd_combo_points & fight_remains < cooldown.symbols_of_death.remains || ! talent.shadow_dance.enabled & dot.rupture.ticking & spell_targets.shuriken_storm <= 4 & variable.rotten_threshold",
							}, -- [10]
						},
						["finish"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.premeditation.enabled & spell_targets.shuriken_storm < 5",
								["description"] = "Finishers  While using Premeditation, avoid casting Slice and Dice when Shadow Dance is soon to be used, except for Kyrian",
								["var_name"] = "premed_snd_condition",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.shadow_dance.up & ( buff.danse_macabre.stack >= 3 || ! talent.danse_macabre.enabled ) & ( ! buff.premeditation.up || spell_targets.shuriken_storm != 2 )",
								["var_name"] = "secret_condition",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! variable.premed_snd_condition & spell_targets.shuriken_storm < 6 & ! buff.shadow_dance.up & buff.slice_and_dice.remains < fight_remains & refreshable",
								["action"] = "slice_and_dice",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.premed_snd_condition & cooldown.shadow_dance.charges_fractional < 1.75 & buff.slice_and_dice.remains < cooldown.symbols_of_death.remains & ( cooldown.shadow_dance.ready & buff.symbols_of_death.remains - buff.shadow_dance.remains < 1.2 )",
								["action"] = "slice_and_dice",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.thistle_tea.up & spell_targets.shuriken_storm = 1 || buff.shadow_dance.up & ( spell_targets.shuriken_storm = 1 || ( active_dot.rupture > 0 || target.time_to_die < 15 ) & spell_targets.shuriken_storm >= 2 )",
								["var_name"] = "skip_rupture",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "rupture",
								["description"] = "Keep up Rupture if it is about to run out.",
								["criteria"] = "( ! variable.skip_rupture || variable.priority_rotation ) & target.time_to_die - remains > 6 & refreshable",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "rupture",
								["description"] = "Refresh Rupture early for Finality",
								["criteria"] = "! variable.skip_rupture & buff.finality_rupture.up & cooldown.shadow_dance.remains < 12 & cooldown.shadow_dance.charges_fractional <= 1 & spell_targets.shuriken_storm = 1 & ( talent.dark_brew.enabled || talent.danse_macabre.enabled )",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "cold_blood",
								["description"] = "Sync Cold Blood with Secret Technique when possible",
								["criteria"] = "variable.secret_condition & cooldown.secret_technique.ready",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.secret_condition & ( ! talent.cold_blood.enabled || cooldown.cold_blood.remains > buff.shadow_dance.remains - 2 )",
								["action"] = "secret_technique",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "rupture",
								["cycle_targets"] = 1,
								["criteria"] = "! variable.skip_rupture & ! variable.priority_rotation & spell_targets.shuriken_storm >= 2 & target.time_to_die >= ( 2 * combo_points ) & refreshable",
								["description"] = "Multidotting targets that will live for the duration of Rupture, refresh during pandemic.",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "rupture",
								["description"] = "Refresh Rupture early if it will expire during Symbols. Do that refresh if SoD gets ready in the next 5s.",
								["criteria"] = "! variable.skip_rupture & remains < cooldown.symbols_of_death.remains + 10 & cooldown.symbols_of_death.remains <= 5 & target.time_to_die - remains > cooldown.symbols_of_death.remains + 5",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! variable.priority_rotation & spell_targets >= 3 || ! used_for_danse & buff.shadow_dance.up & spell_targets.shuriken_storm = 2 & talent.danse_macabre.enabled",
								["action"] = "black_powder",
							}, -- [12]
							{
								["action"] = "eviscerate",
								["enabled"] = true,
							}, -- [13]
						},
					},
					["version"] = 20230603,
					["warnings"] = "The import for 'stealthed' required some automated changes.\nLine 2: Converted 'talent.lingering_shadow' to 'talent.lingering_shadow.enabled' (1x).\nLine 3: Converted 'talent.danse_macabre' to 'talent.danse_macabre.enabled' (1x).\nLine 5: Converted 'talent.danse_macabre' to 'talent.danse_macabre.enabled' (1x).\nLine 8: Converted 'talent.seal_fate' to 'talent.seal_fate.enabled' (1x).\nLine 9: Converted 'talent.seal_fate' to 'talent.seal_fate.enabled' (1x).\nLine 9: Converted 'talent.deeper_stratagem' to 'talent.deeper_stratagem.enabled' (1x).\nLine 9: Converted 'talent.secret_stratagem' to 'talent.secret_stratagem.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 7: Converted 'time_to_sht.4.plus' to 'time_to_sht_plus.4' (1x).\nLine 13: Converted 'talent.seal_fate' to 'talent.seal_fate.enabled' (1x).\n\nThe import for 'finish' required some automated changes.\nLine 2: Converted 'talent.danse_macabre' to 'talent.danse_macabre.enabled' (1x).\nLine 7: Converted 'talent.dark_brew' to 'talent.dark_brew.enabled' (1x).\nLine 7: Converted 'talent.danse_macabre' to 'talent.danse_macabre.enabled' (1x).\nLine 9: Converted 'talent.cold_blood' to 'talent.cold_blood.enabled' (1x).\nLine 12: Converted 'talent.danse_macabre' to 'talent.danse_macabre.enabled' (1x).\n\nThe import for 'cds' required some automated changes.\nLine 1: Converted 'talent.the_rotten' to 'talent.the_rotten.enabled' (1x).\nLine 4: Converted 'talent.secret_technique' to 'talent.secret_technique.enabled' (1x).\nLine 5: Converted 'talent.secret_technique' to 'talent.secret_technique.enabled' (1x).\nLine 10: Converted 'talent.flagellation' to 'talent.flagellation.enabled' (1x).\nLine 10: Converted 'talent.the_rotten' to 'talent.the_rotten.enabled' (1x).\nLine 13: Converted 'talent.sepsis' to 'talent.sepsis.enabled' (1x).\nLine 14: Converted 'talent.resounding_clarity' to 'talent.resounding_clarity.enabled' (1x).\nLine 14: Converted 'talent.danse_macabre' to 'talent.danse_macabre.enabled' (1x).\nLine 24: Converted 'talent.deeper_daggers' to 'talent.deeper_daggers.enabled' (1x).\nLine 24: Converted 'trinket.stormeaters_boon.cooldown.remains' to 'cooldown.stormeaters_boon.remains'.\nLine 25: Converted 'trinket.stormeaters_boon.cooldown.remains' to 'cooldown.stormeaters_boon.remains'.\n\nThe import for 'stealth_cds' required some automated changes.\nLine 1: Converted 'talent.shadow_dance' to 'talent.shadow_dance.enabled' (1x).\nLine 3: Converted 'talent.danse_macabre' to 'talent.danse_macabre.enabled' (1x).\nLine 3: Converted 'talent.flagellation' to 'talent.flagellation.enabled' (1x).\nLine 8: Converted 'talent.seal_fate' to 'talent.seal_fate.enabled' (1x).\nLine 9: Converted 'talent.shadow_dance' to 'talent.shadow_dance.enabled' (1x).\nLine 9: Converted 'talent.shadow_dance' to 'talent.shadow_dance.enabled' (1x).\nLine 9: Converted 'talent.danse_macabre' to 'talent.danse_macabre.enabled' (1x).\nLine 10: Converted 'talent.shadow_dance' to 'talent.shadow_dance.enabled' (1x).\n\nThe import for 'build' required some automated changes.\nLine 1: Converted 'talent.gloomblade' to 'talent.gloomblade.enabled' (1x).\nLine 2: Converted 'time_to_sht.3.plus' to 'time_to_sht_plus.3' (1x).\nLine 2: Converted 'time_to_sht.4.plus' to 'time_to_sht_plus.4' (1x).\n\nImported 7 action lists.\n",
					["author"] = "SimC",
					["profile"] = "actions.precombat+=/apply_poison\nactions.precombat+=/use_item,name=algethar_puzzle_box\nactions.precombat+=/stealth\nactions.precombat+=/marked_for_death,precombat_seconds=15\nactions.precombat+=/slice_and_dice,precombat_seconds=1,if=refreshable\n\n# Restealth if possible (no vulnerable enemies in combat)\nactions+=/stealth\n# Interrupt on cooldown to allow simming interactions with that\nactions+=/kick\n# Dispel Enrages with Shiv.\nactions+=/shiv,if=debuff.dispellable_enrage.up\n# Used to determine whether cooldowns wait for SnD based on targets.\nactions+=/variable,name=snd_condition,value=buff.slice_and_dice.up||spell_targets.shuriken_storm>=cp_max_spend\n# Check to see if the next CP (in the event of a ShT proc) is Animacharged\nactions+=/variable,name=is_next_cp_animacharged,if=talent.echoing_reprimand.enabled,value=combo_points=1&buff.echoing_reprimand_2.up||combo_points=2&buff.echoing_reprimand_3.up||combo_points=3&buff.echoing_reprimand_4.up||combo_points=4&buff.echoing_reprimand_5.up\n# Account for ShT reaction time by ignoring low-CP animacharged matches in the 0.5s preceeding a potential ShT proc\nactions+=/variable,name=effective_combo_points,value=effective_combo_points\nactions+=/variable,name=effective_combo_points,if=talent.echoing_reprimand.enabled&effective_combo_points>combo_points&combo_points.deficit>2&time_to_sht.4.plus<0.5&!variable.is_next_cp_animacharged,value=combo_points\n# Check CDs at first\nactions+=/call_action_list,name=cds\n# Apply Slice and Dice at 4+ CP if it expires within the next GCD or is not up\nactions+=/slice_and_dice,if=spell_targets.shuriken_storm<cp_max_spend&buff.slice_and_dice.remains<gcd.max&fight_remains>6&combo_points>=4\n# Run fully switches to the Stealthed Rotation (by doing so, it forces pooling if nothing is available).\nactions+=/run_action_list,name=stealthed,strict=1,if=stealthed.all\n## Only change rotation if we have priority_rotation set.\n## actions+=/variable,name=priority_rotation,value=priority_rotation\n# Used to define when to use stealth CDs or builders\nactions+=/variable,name=stealth_threshold,value=25+talent.vigor.enabled*20+talent.master_of_shadows.enabled*20+talent.shadow_focus.enabled*25+talent.alacrity.enabled*20+25*(spell_targets.shuriken_storm>=4)\n# Consider using a Stealth CD when reaching the energy threshold\nactions+=/call_action_list,name=stealth_cds,if=energy.deficit<=variable.stealth_threshold\n# Finish at maximum or close to maximum combo point value or at 4+ against 4 targets (outside stealth)\nactions+=/call_action_list,name=finish,strict=1,if=variable.effective_combo_points>=cp_max_spend||combo_points.deficit<=1+buff.the_rotten.up||boss&fight_remains<=1&variable.effective_combo_points>=3||spell_targets.shuriken_storm>=(4-talent.seal_fate)&variable.effective_combo_points>=4\n# Use a builder when reaching the energy threshold\nactions+=/call_action_list,name=build,if=energy.deficit<=variable.stealth_threshold\n# Lowest priority in all of the APL because it causes a GCD\nactions+=/arcane_torrent,if=energy.deficit>=15+energy.regen\nactions+=/arcane_pulse\nactions+=/lights_judgment\nactions+=/bag_of_tricks\n\n# Builders\nactions.build+=/shuriken_storm,if=spell_targets>=2+(talent.gloomblade&buff.lingering_shadow.remains>=6||buff.perforated_veins.up)\n# Build immediately unless the next CP is Animacharged and we won't cap energy waiting for it.\nactions.build+=/variable,name=anima_helper,value=!talent.echoing_reprimand.enabled||!(variable.is_next_cp_animacharged&(time_to_sht.3.plus<0.5||time_to_sht.4.plus<1)&energy<60)\nactions.build+=/gloomblade,if=variable.anima_helper\nactions.build+=/backstab,if=variable.anima_helper\n\n# Cooldowns\nactions.cds+=/variable,name=rotten_condition,value=!buff.premeditation.up&spell_targets.shuriken_storm=1||!talent.the_rotten||spell_targets.shuriken_storm>1\n# Use Dance off-gcd before the first Shuriken Storm from Tornado comes in.\nactions.cds+=/shadow_dance,use_off_gcd=1,if=!buff.shadow_dance.up&buff.shuriken_tornado.up&buff.shuriken_tornado.remains<=3.5\n# (Unless already up because we took Shadow Focus) use Symbols off-gcd before the first Shuriken Storm from Tornado comes in.\nactions.cds+=/symbols_of_death,use_off_gcd=1,if=buff.shuriken_tornado.up&buff.shuriken_tornado.remains<=3.5\n# Vanish for Shadowstrike with Danse Macabre at adaquate stacks\nactions.cds+=/vanish,if=buff.danse_macabre.stack>3&combo_points<=2&(cooldown.secret_technique.remains>=30||!talent.secret_technique)\n# Cold Blood on 5 combo points when not playing Secret Technique\nactions.cds+=/cold_blood,if=!talent.secret_technique&combo_points>=5\nactions.cds+=/flagellation,cycle_targets=1,if=variable.snd_condition&combo_points>=5&target.time_to_die>10\n# Pool for Tornado pre-SoD with ShD ready when not running SF.\nactions.cds+=/pool_resource,for_next=1,if=talent.shuriken_tornado.enabled&!talent.shadow_focus.enabled\n# Use Tornado pre SoD when we have the energy whether from pooling without SF or just generally.\nactions.cds+=/shuriken_tornado,if=spell_targets.shuriken_storm<=1&energy>=60&variable.snd_condition&cooldown.symbols_of_death.up&cooldown.shadow_dance.charges>=1&(!talent.flagellation.enabled&!cooldown.flagellation.up||buff.flagellation_buff.up||spell_targets.shuriken_storm>=5)&combo_points<=2&!buff.premeditation.up\nactions.cds+=/sepsis,if=variable.snd_condition&combo_points.deficit>=1&target.time_to_die>=16\n# Use Symbols on cooldown (after first SnD) unless we are going to pop Tornado and do not have Shadow Focus.\nactions.cds+=/symbols_of_death,if=(buff.symbols_of_death.remains<=3&!cooldown.shadow_dance.ready||!set_bonus.tier30_2pc)&variable.rotten_condition&variable.snd_condition&(!talent.flagellation&(combo_points<=1||!talent.the_rotten)||cooldown.flagellation.remains>10||cooldown.flagellation.up&combo_points>=5)\n# If adds are up, snipe the one with lowest TTD. Use when dying faster than CP deficit or not stealthed without any CP.\nactions.cds+=/marked_for_death,line_cd=1.5,cycle_targets=1,if=raid_event.adds.up&(target.time_to_die<combo_points.deficit||!stealthed.all&combo_points.deficit>=cp_max_spend)\n# If no adds will die within the next 30s, use MfD on boss without any CP.\nactions.cds+=/marked_for_death,if=raid_event.adds.in>30-raid_event.adds.duration&combo_points.deficit>=cp_max_spend\nactions.cds+=/shadow_blades,if=variable.snd_condition&combo_points.deficit>=2&target.time_to_die>=10&(dot.sepsis.ticking||cooldown.sepsis.remains<=8||!talent.sepsis)||boss&fight_remains<=20\nactions.cds+=/echoing_reprimand,if=variable.snd_condition&combo_points.deficit>=3&(variable.priority_rotation||spell_targets.shuriken_storm<=4||talent.resounding_clarity)&(buff.shadow_dance.up||!talent.danse_macabre)\n# With SF, if not already done, use Tornado with SoD up.\nactions.cds+=/shuriken_tornado,if=variable.snd_condition&buff.symbols_of_death.up&combo_points<=2&(!buff.premeditation.up||spell_targets.shuriken_storm>4)\nactions.cds+=/shuriken_tornado,if=cooldown.shadow_dance.ready&!stealthed.all&spell_targets.shuriken_storm>=3&!talent.flagellation.enabled\nactions.cds+=/shadow_dance,if=!buff.shadow_dance.up&boss&fight_remains<=8+talent.subterfuge.enabled\nactions.cds+=/thistle_tea,if=(cooldown.symbols_of_death.remains>=3||buff.symbols_of_death.up)&!buff.thistle_tea.up&(energy.deficit>=100&(combo_points.deficit>=2||spell_targets.shuriken_storm>=3)||cooldown.thistle_tea.charges_fractional>=2.75&buff.shadow_dance.up)||buff.shadow_dance.remains>=4&!buff.thistle_tea.up&spell_targets.shuriken_storm>=3||!buff.thistle_tea.up&fight_remains<=(6*cooldown.thistle_tea.charges)\nactions.cds+=/potion,if=buff.bloodlust.react||boss&fight_remains<30||buff.symbols_of_death.up&(buff.shadow_blades.up||cooldown.shadow_blades.remains<=10)\nactions.cds+=/blood_fury,if=buff.symbols_of_death.up\nactions.cds+=/berserking,if=buff.symbols_of_death.up\nactions.cds+=/fireblood,if=buff.symbols_of_death.up\nactions.cds+=/ancestral_call,if=buff.symbols_of_death.up\nactions.cds+=/use_item,name=beacon_to_the_beyond,use_off_gcd=1,if=!stealthed.all&(buff.deeper_daggers.up||!talent.deeper_daggers)&(!raid_event.adds.up||!equipped.stormeaters_boon||trinket.stormeaters_boon.cooldown.remains>20)\nactions.cds+=/use_item,name=manic_grieftorch,use_off_gcd=1,if=!stealthed.all&(!raid_event.adds.up||!equipped.stormeaters_boon||trinket.stormeaters_boon.cooldown.remains>20)\n# Default fallback for usable items: Use with Symbols of Death.\nactions.cds+=/use_items,if=!stealthed.all||boss&fight_remains<20\n\n# Finishers  While using Premeditation, avoid casting Slice and Dice when Shadow Dance is soon to be used, except for Kyrian\nactions.finish+=/variable,name=premed_snd_condition,value=talent.premeditation.enabled&spell_targets.shuriken_storm<5\nactions.finish+=/variable,name=secret_condition,value=buff.shadow_dance.up&(buff.danse_macabre.stack>=3||!talent.danse_macabre)&(!buff.premeditation.up||spell_targets.shuriken_storm!=2)\nactions.finish+=/slice_and_dice,if=!variable.premed_snd_condition&spell_targets.shuriken_storm<6&!buff.shadow_dance.up&buff.slice_and_dice.remains<fight_remains&refreshable\nactions.finish+=/slice_and_dice,if=variable.premed_snd_condition&cooldown.shadow_dance.charges_fractional<1.75&buff.slice_and_dice.remains<cooldown.symbols_of_death.remains&(cooldown.shadow_dance.ready&buff.symbols_of_death.remains-buff.shadow_dance.remains<1.2)\nactions.finish+=/variable,name=skip_rupture,value=buff.thistle_tea.up&spell_targets.shuriken_storm=1||buff.shadow_dance.up&(spell_targets.shuriken_storm=1||(active_dot.rupture>0||target.time_to_die<15)&spell_targets.shuriken_storm>=2)\n# Keep up Rupture if it is about to run out.\nactions.finish+=/rupture,if=(!variable.skip_rupture||variable.priority_rotation)&target.time_to_die-remains>6&refreshable\n# Refresh Rupture early for Finality\nactions.finish+=/rupture,if=!variable.skip_rupture&buff.finality_rupture.up&cooldown.shadow_dance.remains<12&cooldown.shadow_dance.charges_fractional<=1&spell_targets.shuriken_storm=1&(talent.dark_brew||talent.danse_macabre)\n# Sync Cold Blood with Secret Technique when possible\nactions.finish+=/cold_blood,if=variable.secret_condition&cooldown.secret_technique.ready\nactions.finish+=/secret_technique,if=variable.secret_condition&(!talent.cold_blood||cooldown.cold_blood.remains>buff.shadow_dance.remains-2)\n# Multidotting targets that will live for the duration of Rupture, refresh during pandemic.\nactions.finish+=/rupture,cycle_targets=1,if=!variable.skip_rupture&!variable.priority_rotation&spell_targets.shuriken_storm>=2&target.time_to_die>=(2*combo_points)&refreshable\n# Refresh Rupture early if it will expire during Symbols. Do that refresh if SoD gets ready in the next 5s.\nactions.finish+=/rupture,if=!variable.skip_rupture&remains<cooldown.symbols_of_death.remains+10&cooldown.symbols_of_death.remains<=5&target.time_to_die-remains>cooldown.symbols_of_death.remains+5\nactions.finish+=/black_powder,if=!variable.priority_rotation&spell_targets>=3||!used_for_danse&buff.shadow_dance.up&spell_targets.shuriken_storm=2&talent.danse_macabre\nactions.finish+=/eviscerate\n\n# Stealth Cooldowns  Helper Variable\nactions.stealth_cds+=/variable,name=shd_threshold,value=cooldown.shadow_dance.charges_fractional>=0.75+talent.shadow_dance\nactions.stealth_cds+=/variable,name=rotten_threshold,value=!buff.the_rotten.up||spell_targets.shuriken_storm>1||combo_points<=2&buff.the_rotten.up&!set_bonus.tier30_2pc\nactions.stealth_cds+=/vanish,if=(!talent.danse_macabre||spell_targets.shuriken_storm>=3)&!variable.shd_threshold&combo_points.deficit>1&(cooldown.flagellation.remains>=60||!talent.flagellation||fight_remains<=(30*cooldown.vanish.charges))\n# Pool for Shadowmeld + Shadowstrike unless we are about to cap on Dance charges. Only when Find Weakness is about to run out.\nactions.stealth_cds+=/pool_resource,for_next=1,extra_amount=40,if=race.night_elf\nactions.stealth_cds+=/shadowmeld,if=energy>=40&energy.deficit>=10&!variable.shd_threshold&combo_points.deficit>4\n# CP thresholds for entering Shadow Dance Default to start dance with 0 or 1 combo point\nactions.stealth_cds+=/variable,name=shd_combo_points,value=combo_points<=1\n# Use stealth cooldowns with high combo points when playing shuriken tornado or with high target counts\nactions.stealth_cds+=/variable,name=shd_combo_points,value=combo_points.deficit<=1,if=spell_targets.shuriken_storm>(4-2*talent.shuriken_tornado.enabled)||variable.priority_rotation&spell_targets.shuriken_storm>=4\n# Use stealth cooldowns on any combo point on 4 targets\nactions.stealth_cds+=/variable,name=shd_combo_points,value=1,if=spell_targets.shuriken_storm=(4-talent.seal_fate)\n# Dance during Symbols or above threshold.\nactions.stealth_cds+=/shadow_dance,if=(variable.shd_combo_points&(!talent.shadow_dance&buff.symbols_of_death.remains>=(2.2-talent.flagellation.enabled)||variable.shd_threshold)||talent.shadow_dance&cooldown.secret_technique.remains<=9&(spell_targets.shuriken_storm<=3||talent.danse_macabre)||buff.flagellation.up||buff.flagellation_persist.remains>=6||spell_targets.shuriken_storm>=4&cooldown.symbols_of_death.remains>10)&variable.rotten_threshold\n# Burn Dances charges if before the fight ends if SoD won't be ready in time.\nactions.stealth_cds+=/shadow_dance,if=variable.shd_combo_points&fight_remains<cooldown.symbols_of_death.remains||!talent.shadow_dance&dot.rupture.ticking&spell_targets.shuriken_storm<=4&variable.rotten_threshold\n\n# Stealthed Rotation  If Stealth/vanish are up, use Shadowstrike to benefit from the passive bonus and Find Weakness, even if we are at max CP (unless using Master Assassin)\nactions.stealthed+=/shadowstrike,if=(buff.stealth.up||buff.vanish.up)&(spell_targets.shuriken_storm<4||variable.priority_rotation)\n# Variable to Gloomblade / Backstab when on 4 or 5 combo points with premediation and when the combo point is not anima charged\nactions.stealthed+=/variable,name=gloomblade_condition,value=buff.danse_macabre.stack<5&(combo_points.deficit=2||combo_points.deficit=3)&(buff.premeditation.up||effective_combo_points<7)&(spell_targets.shuriken_storm<=8||talent.lingering_shadow)\nactions.stealthed+=/shuriken_storm,if=variable.gloomblade_condition&buff.silent_storm.up&!debuff.find_weakness.remains&talent.improved_shuriken_storm.enabled||combo_points<=1&!used_for_danse&spell_targets.shuriken_storm=2&talent.danse_macabre\nactions.stealthed+=/gloomblade,if=variable.gloomblade_condition&(!used_for_danse||spell_targets.shuriken_storm!=2)||combo_points<=2&buff.the_rotten.up&spell_targets.shuriken_storm<=3\nactions.stealthed+=/backstab,if=variable.gloomblade_condition&talent.danse_macabre&buff.danse_macabre.stack<=2&spell_targets.shuriken_storm<=2\nactions.stealthed+=/call_action_list,name=finish,strict=1,if=variable.effective_combo_points>=cp_max_spend\n# Finish earlier with Shuriken tornado up.\nactions.stealthed+=/call_action_list,name=finish,strict=1,if=buff.shuriken_tornado.up&combo_points.deficit<=2\n# Also safe to finish at 4+ CP with exactly 4 targets. (Same as outside stealth.)\nactions.stealthed+=/call_action_list,name=finish,strict=1,if=spell_targets.shuriken_storm>=4-talent.seal_fate&variable.effective_combo_points>=4\n# Finish at lower combo points if you are talented in DS, SS or Seal Fate\nactions.stealthed+=/call_action_list,name=finish,strict=1,if=combo_points.deficit<=1+(talent.seal_fate||talent.deeper_stratagem||talent.secret_stratagem)\n# Use Gloomblade or Backstab when close to hitting max PV stacks\nactions.stealthed+=/gloomblade,if=buff.perforated_veins.stack>=5&spell_targets.shuriken_storm<3\nactions.stealthed+=/backstab,if=buff.perforated_veins.stack>=5&spell_targets.shuriken_storm<3\nactions.stealthed+=/shadowstrike,if=stealthed.sepsis&spell_targets.shuriken_storm<4\nactions.stealthed+=/shuriken_storm,if=spell_targets>=3+buff.the_rotten.up&(!buff.premeditation.up||spell_targets>=7&!variable.priority_rotation)\n# Shadowstrike to refresh Find Weakness and to ensure we can carry over a full FW into the next SoD if possible.\nactions.stealthed+=/shadowstrike,if=debuff.find_weakness.remains<=1||cooldown.symbols_of_death.remains<18&debuff.find_weakness.remains<cooldown.symbols_of_death.remains\nactions.stealthed+=/shadowstrike",
				},
				["Blood"] = {
					["source"] = "SimulationCraft",
					["builtIn"] = true,
					["date"] = 20230506,
					["spec"] = 250,
					["desc"] = "2023-05-06:  Removed Death's Caress during DRW.\n\n2023-04-30:  Updated for 10.1 from SimC.\n\n2023-04-04:  Minor update from SimC (Vampiric Blood usage).\n\n2023-03-08:  Adjust Tombstone logic for Shattering Bones / Death and Decay.",
					["lists"] = {
						["drw_up"] = {
							{
								["enabled"] = true,
								["action"] = "blood_boil",
								["description"] = "Use Blood Boil if Blood Plague is not active.",
								["criteria"] = "! dot.blood_plague.ticking",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "tombstone",
								["description"] = "Use Tombstone if you have 5+ Bone Shield stacks, 2+ runes, 30+ Runic Power, and Shattering Bones is not talented or Death and Decay is not ticking.",
								["criteria"] = "buff.bone_shield.stack > 5 & rune >= 2 & runic_power.deficit >= 30 & ! talent.shattering_bone.enabled || ( talent.shattering_bone.enabled & death_and_decay.ticking )",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "death_strike",
								["description"] = "Use Death Strike if Coagulatopathy is down or about to expire or if Icy Talons is down or about to expire.",
								["criteria"] = "buff.coagulopathy.remains <= gcd.max || buff.icy_talons.remains <= gcd.max",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( buff.bone_shield.remains <= 4 || buff.bone_shield.stack < variable.bone_shield_refresh_value ) & runic_power.deficit > 20",
								["action"] = "marrowrend",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & target.time_to_pct_35 < 5 & target.time_to_die > ( dot.soul_reaper.remains + 5 )",
								["action"] = "soul_reaper",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "soul_reaper",
								["criteria"] = "target.time_to_pct_35 < 5 & active_enemies >= 2 & target.time_to_die > ( dot.soul_reaper.remains + 5 )",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! death_and_decay.ticking & ( talent.sanguine_ground.enabled || talent.unholy_ground.enabled )",
								["action"] = "death_and_decay",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.blood_boil > 2 & charges_fractional >= 1.1",
								["action"] = "blood_boil",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( 25 + spell_targets.heart_strike * talent.heartbreaker.enabled * 2 )",
								["var_name"] = "heart_strike_rp_drw",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit <= variable.heart_strike_rp_drw || runic_power >= variable.death_strike_dump_amount",
								["action"] = "death_strike",
							}, -- [10]
							{
								["action"] = "consumption",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "charges_fractional >= 1.1 & buff.hemostasis.stack < 5",
								["action"] = "blood_boil",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "rune.time_to_2 < gcd.max || runic_power.deficit >= variable.heart_strike_rp_drw",
								["action"] = "heart_strike",
							}, -- [13]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Interrupt.",
								["action"] = "mind_freeze",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Interrupt.",
								["action"] = "strangulate",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "65",
								["description"] = "Death Strike at 65+ Runic Power.",
								["var_name"] = "death_strike_dump_amount",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "setif",
								["criteria"] = "! talent.deaths_caress.enabled || talent.consumption.enabled || talent.blooddrinker.enabled",
								["description"] = "Refresh Bone Shield at 4 stacks with Death's Caress, Consumption, or Blooddrinker, otherwise 5 stacks.",
								["value"] = "4",
								["action"] = "variable",
								["value_else"] = "5",
								["var_name"] = "bone_shield_refresh_value",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "potion",
								["description"] = "Use a Potion during Dancing Rune Weapon.",
								["criteria"] = "buff.dancing_rune_weapon.up",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "Call the trinkets action list.",
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [6]
							{
								["enabled"] = true,
								["description"] = "Raise Dead if it's off cooldown.",
								["action"] = "raise_dead",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "icebound_fortitude",
								["description"] = "Use Icebound Fortitude if you're taking sufficient damage and you don't have Dancing Rune Weapon or Vampiric Blood up.",
								["criteria"] = "tanking & incoming_damage_5s >= ibf_damage & ! ( buff.dancing_rune_weapon.up || buff.vampiric_blood.up )",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "vampiric_blood",
								["description"] = "Use Vampiric Blood if you're taking sufficient damage and you don't have Dancing Rune Weapon, Icebound Fortitude, Vampiric Blood, or Vampiric Strength up.",
								["criteria"] = "tanking & incoming_damage_5s >= vb_damage & ! ( buff.dancing_rune_weapon.up || buff.icebound_fortitude.up || buff.vampiric_blood.up || buff.vampiric_strength.up )",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "rune_tap",
								["description"] = "Use Rune Tap if you're taking sufficient damage and you don't have Dancing Rune Weapon, Vampiric Blood, or Icebound Fortitude up.",
								["criteria"] = "tanking & incoming_damage_5s >= rt_damage & ! ( buff.dancing_rune_weapon.up || buff.vampiric_blood.up || buff.icebound_fortitude.up )",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "death_strike",
								["description"] = "Use Death Strike if your Blood Shield is going to expire.",
								["criteria"] = "buff.blood_shield.up & buff.blood_shield.remains <= gcd.max",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "deaths_caress",
								["description"] = "Use Death's Caress if Bone Shield is not up.",
								["criteria"] = "! buff.bone_shield.up",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "death_and_decay",
								["description"] = "Use Death and Decay if it's not already up and you have 4 targets, Unholy Ground, Sanguine Ground, or Crimson Scourge.",
								["criteria"] = "! death_and_decay.ticking & ( talent.unholy_ground.enabled || talent.sanguine_ground.enabled || spell_targets.death_and_decay > 3 || buff.crimson_scourge.up )",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "death_strike",
								["description"] = "Use Death Strike if Coagulatopathy is down or about to expire, if Icy Talons is down or about to expire, if you're below the Death Strike dump amount, if you're below the Heart Strike Runic Power threshold, or if the target is about to die.",
								["criteria"] = "buff.coagulopathy.remains <= gcd.max || buff.icy_talons.remains <= gcd.max || runic_power >= variable.death_strike_dump_amount || runic_power.deficit <= variable.heart_strike_rp || boss & fight_remains < 10",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "blooddrinker",
								["description"] = "Use Blooddrinker if Dancing Rune Weapon is not up.",
								["criteria"] = "! buff.dancing_rune_weapon.up",
							}, -- [15]
							{
								["enabled"] = true,
								["description"] = "Call the racials action list.",
								["action"] = "call_action_list",
								["list_name"] = "racials",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "sacrificial_pact",
								["description"] = "Use Sacrificial Pact if Dancing Rune Weapon is not active and the Ghoul is about to expire or the bossfight is about to end.",
								["criteria"] = "! buff.dancing_rune_weapon.up & ( pet.ghoul.remains < 2 || boss & fight_remains < gcd.max )",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Call the covenants action list if they are active and valid.",
								["strict"] = 1,
								["criteria"] = "! covenant.none",
								["list_name"] = "covenants",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "blood_tap",
								["description"] = "Use Blood Tap if you have 2 or fewer runes, you won't reach 4 charges within the global cooldown, and you're about to cap charges, or if you will not reach 3 runes within global cooldown.",
								["criteria"] = "( rune <= 2 & rune.time_to_4 > gcd.max & charges_fractional >= 1.8 ) || rune.time_to_3 > gcd.max",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "gorefiends_grasp",
								["description"] = "Use Gorefiend's Grasp if Tightening Grasp is talented.",
								["criteria"] = "talent.tightening_grasp.enabled",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "empower_rune_weapon",
								["description"] = "Use Empower Ruen Weapon if you have 6 or fewer runes and you're not about to cap Runic Power.",
								["criteria"] = "rune < 6 & runic_power.deficit > 5",
							}, -- [21]
							{
								["enabled"] = true,
								["description"] = "Use Abomination's Limb on cooldown.",
								["action"] = "abomination_limb",
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "dancing_rune_weapon",
								["description"] = "Use Dancing Rune Weapon if it is not already active.",
								["criteria"] = "! buff.dancing_rune_weapon.up",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "Use the drw_up action list if Dancing Rune Weapon is active.",
								["strict"] = 1,
								["criteria"] = "buff.dancing_rune_weapon.up",
								["list_name"] = "drw_up",
							}, -- [24]
							{
								["enabled"] = true,
								["description"] = "Call the standard action list (which will not be used if Dancing Rune Weapon is active).",
								["action"] = "call_action_list",
								["list_name"] = "standard",
							}, -- [25]
						},
						["precombat"] = {
							{
								["action"] = "fleshcraft",
								["enabled"] = true,
							}, -- [1]
						},
						["standard"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.bone_shield.stack > 5 & rune >= 2 & runic_power.deficit >= 30 & ! talent.shattering_bone.enabled || ( talent.shattering_bone.enabled & death_and_decay.ticking ) & cooldown.dancing_rune_weapon.remains >= 25",
								["action"] = "tombstone",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( 10 + spell_targets.heart_strike * talent.heartbreaker.enabled * 2 )",
								["var_name"] = "heart_strike_rp",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.coagulopathy.remains <= gcd.max || buff.icy_talons.remains <= gcd.max || runic_power >= variable.death_strike_dump_amount || runic_power.deficit <= variable.heart_strike_rp || boss & fight_remains < 10",
								["action"] = "death_strike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( buff.bone_shield.remains <= 4 || ( buff.bone_shield.stack < variable.bone_shield_refresh_value + 1 ) ) & runic_power.deficit > 10 & ! ( talent.insatiable_blade.enabled & cooldown.dancing_rune_weapon.remains < buff.bone_shield.remains ) & ! talent.consumption.enabled & ! talent.blooddrinker.enabled & rune.time_to_3 > gcd.max",
								["action"] = "deaths_caress",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.bone_shield.remains <= 4 || buff.bone_shield.stack < variable.bone_shield_refresh_value ) & runic_power.deficit > 20 & ! ( talent.insatiable_blade.enabled & cooldown.dancing_rune_weapon.remains < buff.bone_shield.remains )",
								["action"] = "marrowrend",
							}, -- [5]
							{
								["action"] = "consumption",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & target.time_to_pct_35 < 5 & target.time_to_die > ( dot.soul_reaper.remains + 5 )",
								["action"] = "soul_reaper",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "soul_reaper",
								["criteria"] = "target.time_to_pct_35 < 5 & active_enemies >= 2 & target.time_to_die > ( dot.soul_reaper.remains + 5 )",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "runic_power >= 100",
								["action"] = "bonestorm",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "charges_fractional >= 1.8 & ( buff.hemostasis.stack <= ( 5 - spell_targets.blood_boil ) || spell_targets.blood_boil > 2 )",
								["action"] = "blood_boil",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "rune.time_to_4 < gcd.max",
								["action"] = "heart_strike",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "charges_fractional >= 1.1",
								["action"] = "blood_boil",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( rune > 1 & ( rune.time_to_3 < gcd.max || buff.bone_shield.stack > 7 ) )",
								["action"] = "heart_strike",
							}, -- [13]
						},
						["trinkets"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.has_use_buff || ( trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff )",
								["description"] = "Prioritize damage dealing on use trinkets over trinkets that give buffs",
								["var_name"] = "trinket_1_buffs",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.has_use_buff || ( trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff )",
								["var_name"] = "trinket_2_buffs",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.is.ruby_whelp_shell || trinket.t1.is.whispering_incarnate_icon",
								["var_name"] = "trinket_1_exclude",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.is.ruby_whelp_shell || trinket.t2.is.whispering_incarnate_icon",
								["var_name"] = "trinket_2_exclude",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
								["use_off_gcd"] = 1,
								["criteria"] = "! variable.trinket_1_buffs",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["slot"] = "trinket2",
								["use_off_gcd"] = 1,
								["criteria"] = "! variable.trinket_2_buffs",
							}, -- [6]
							{
								["use_off_gcd"] = 1,
								["action"] = "use_items",
								["criteria"] = "( variable.trinket_1_buffs || trinket.t1.cooldown.remains ) & ( variable.trinket_2_buffs || trinket.t2.cooldown.remains )",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
								["use_off_gcd"] = 1,
								["criteria"] = "variable.trinket_1_buffs & ( buff.dancing_rune_weapon.up || ! talent.dancing_rune_weapon.enabled || cooldown.dancing_rune_weapon.remains > 20 ) & ( variable.trinket_2_exclude || trinket.t2.cooldown.remains || ! trinket.t2.has_cooldown || variable.trinket_2_buffs )",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["slot"] = "trinket2",
								["use_off_gcd"] = 1,
								["criteria"] = "variable.trinket_2_buffs & ( buff.dancing_rune_weapon.up || ! talent.dancing_rune_weapon.enabled || cooldown.dancing_rune_weapon.remains > 20 ) & ( variable.trinket_1_exclude || trinket.t1.cooldown.remains || ! trinket.t1.has_cooldown || variable.trinket_1_buffs )",
							}, -- [9]
						},
						["covenants"] = {
							{
								["enabled"] = true,
								["action"] = "deaths_due",
								["description"] = "Use Death's Due if Death and Decay is not ticking and you don't have Death's Due or Crimson Scourge up.",
								["criteria"] = "! death_and_decay.ticking & ( ! buff.deaths_due.up || buff.deaths_due.remains < 4 || buff.crimson_scourge.up )",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "swarming_mist",
								["description"] = "Use Swarming Mist if Dancing Rune Weapon is active for 3+ seconds and you have 90+ Runic Power (offset by number of targets).",
								["criteria"] = "cooldown.dancing_rune_weapon.remains > 3 & runic_power >= ( 90 - ( spell_targets.swarming_mist * 3 ) )",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled || soulbind.volatile_solvent.enabled & ! buff.volatile_solvent_humanoid.up",
								["description"] = "Use Fleshcraft if you have Pustule Eruption or Volatile Solvent and Volatile Solvent is not active.",
								["interrupt_if"] = "soulbind.volatile_solvent",
								["interrupt_immediate"] = "1",
								["action"] = "fleshcraft",
								["interrupt_global"] = "1",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "shackle_the_unworthy",
								["description"] = "Use Shackle the Unworthy if you have 3 or fewer runes and Runic Power is below 100.",
								["criteria"] = "rune < 3 & runic_power < 100",
							}, -- [4]
						},
						["racials"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.dancing_rune_weapon.ready & ( ! cooldown.blooddrinker.ready || ! talent.blooddrinker.enabled )",
								["action"] = "blood_fury",
							}, -- [1]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 || rune < 1 & runic_power.deficit > 60",
								["action"] = "arcane_pulse",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up",
								["action"] = "lights_judgment",
							}, -- [4]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 20",
								["action"] = "arcane_torrent",
							}, -- [8]
						},
					},
					["version"] = 20230506,
					["warnings"] = "The import for 'drw_up' required some automated changes.\nLine 2: Converted 'talent.shattering_bone' to 'talent.shattering_bone.enabled' (1x).\nLine 7: Converted 'talent.sanguine_ground' to 'talent.sanguine_ground.enabled' (1x).\nLine 7: Converted 'talent.unholy_ground' to 'talent.unholy_ground.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 13: Converted 'talent.unholy_ground' to 'talent.unholy_ground.enabled' (1x).\nLine 13: Converted 'talent.sanguine_ground' to 'talent.sanguine_ground.enabled' (1x).\n\nThe import for 'trinkets' required some automated changes.\nLine 1: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 1: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_buff.strength' (1x).\nLine 1: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_use_buff' (1x).\nLine 1: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_buff.mastery' (1x).\nLine 1: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_use_buff' (1x).\nLine 1: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_buff.versatility' (1x).\nLine 1: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_use_buff' (1x).\nLine 1: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_buff.haste' (1x).\nLine 1: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_use_buff' (1x).\nLine 1: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_buff.crit' (1x).\nLine 1: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_use_buff' (1x).\nLine 2: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 2: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_buff.strength' (1x).\nLine 2: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_use_buff' (1x).\nLine 2: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_buff.mastery' (1x).\nLine 2: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_use_buff' (1x).\nLine 2: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_buff.versatility' (1x).\nLine 2: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_use_buff' (1x).\nLine 2: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_buff.haste' (1x).\nLine 2: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_use_buff' (1x).\nLine 2: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_buff.crit' (1x).\nLine 2: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.is.ruby_whelp_shell' to 'trinket.t1.is.ruby_whelp_shell' (1x).\nLine 3: Converted 'trinket.1.is.whispering_incarnate_icon' to 'trinket.t1.is.whispering_incarnate_icon' (1x).\nLine 4: Converted 'trinket.2.is.ruby_whelp_shell' to 'trinket.t2.is.ruby_whelp_shell' (1x).\nLine 4: Converted 'trinket.2.is.whispering_incarnate_icon' to 'trinket.t2.is.whispering_incarnate_icon' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 7: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 7: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 8: Converted 'talent.dancing_rune_weapon' to 'talent.dancing_rune_weapon.enabled' (1x).\nLine 8: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 8: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 8: Converted 'trinket.2.has_cooldown' to 'trinket.t2.has_cooldown' (1x).\nLine 9: Converted 'talent.dancing_rune_weapon' to 'talent.dancing_rune_weapon.enabled' (1x).\nLine 9: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 9: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 9: Converted 'trinket.1.has_cooldown' to 'trinket.t1.has_cooldown' (1x).\nThe following auras were used in the action list but were not found in the addon database:\n - crit\n\nThe import for 'standard' required some automated changes.\nLine 1: Converted 'talent.shattering_bone' to 'talent.shattering_bone.enabled' (1x).\nLine 4: Converted 'talent.insatiable_blade' to 'talent.insatiable_blade.enabled' (1x).\nLine 5: Converted 'talent.insatiable_blade' to 'talent.insatiable_blade.enabled' (1x).\n\nThe import for 'covenants' required some automated changes.\nLine 3: Converted 'soulbind.pustule_eruption' to 'soulbind.pustule_eruption.enabled' (1x).\nLine 3: Converted 'soulbind.volatile_solvent' to 'soulbind.volatile_solvent.enabled' (1x).\n\nImported 7 action lists.\n",
					["profile"] = "actions.precombat+=/fleshcraft\n\n# Interrupt.\nactions+=/mind_freeze\n# Interrupt.\nactions+=/strangulate\n# Death Strike at 65+ Runic Power.\nactions+=/variable,name=death_strike_dump_amount,value=65\n# Refresh Bone Shield at 4 stacks with Death's Caress, Consumption, or Blooddrinker; otherwise 5 stacks.\nactions+=/variable,name=bone_shield_refresh_value,value=4,op=setif,condition=!talent.deaths_caress.enabled||talent.consumption.enabled||talent.blooddrinker.enabled,value_else=5\n# Use a Potion during Dancing Rune Weapon.\nactions+=/potion,if=buff.dancing_rune_weapon.up\n# Call the trinkets action list.\nactions+=/call_action_list,name=trinkets\n# Raise Dead if it's off cooldown.\nactions+=/raise_dead\n# Use Icebound Fortitude if you're taking sufficient damage and you don't have Dancing Rune Weapon or Vampiric Blood up.\nactions+=/icebound_fortitude,if=tanking&incoming_damage_5s>=ibf_damage&!(buff.dancing_rune_weapon.up||buff.vampiric_blood.up)\n# Use Vampiric Blood if you're taking sufficient damage and you don't have Dancing Rune Weapon, Icebound Fortitude, Vampiric Blood, or Vampiric Strength up.\nactions+=/vampiric_blood,if=tanking&incoming_damage_5s>=vb_damage&!(buff.dancing_rune_weapon.up||buff.icebound_fortitude.up||buff.vampiric_blood.up||buff.vampiric_strength.up)\n# Use Rune Tap if you're taking sufficient damage and you don't have Dancing Rune Weapon, Vampiric Blood, or Icebound Fortitude up.\nactions+=/rune_tap,if=tanking&incoming_damage_5s>=rt_damage&!(buff.dancing_rune_weapon.up||buff.vampiric_blood.up||buff.icebound_fortitude.up)\n# Use Death Strike if your Blood Shield is going to expire.\nactions+=/death_strike,if=buff.blood_shield.up&buff.blood_shield.remains<=gcd.max\n# Use Death's Caress if Bone Shield is not up.\nactions+=/deaths_caress,if=!buff.bone_shield.up\n# Use Death and Decay if it's not already up and you have 4 targets, Unholy Ground, Sanguine Ground, or Crimson Scourge.\nactions+=/death_and_decay,if=!death_and_decay.ticking&(talent.unholy_ground||talent.sanguine_ground||spell_targets.death_and_decay>3||buff.crimson_scourge.up)\n# Use Death Strike if Coagulatopathy is down or about to expire, if Icy Talons is down or about to expire, if you're below the Death Strike dump amount, if you're below the Heart Strike Runic Power threshold, or if the target is about to die.\nactions+=/death_strike,if=buff.coagulopathy.remains<=gcd||buff.icy_talons.remains<=gcd||runic_power>=variable.death_strike_dump_amount||runic_power.deficit<=variable.heart_strike_rp||boss&fight_remains<10\n# Use Blooddrinker if Dancing Rune Weapon is not up.\nactions+=/blooddrinker,if=!buff.dancing_rune_weapon.up\n# Call the racials action list.\nactions+=/call_action_list,name=racials\n# Use Sacrificial Pact if Dancing Rune Weapon is not active and the Ghoul is about to expire or the bossfight is about to end.\nactions+=/sacrificial_pact,if=!buff.dancing_rune_weapon.up&(pet.ghoul.remains<2||boss&fight_remains<gcd)\n# Call the covenants action list if they are active and valid.\nactions+=/call_action_list,name=covenants,strict=1,if=!covenant.none\n# Use Blood Tap if you have 2 or fewer runes, you won't reach 4 charges within the global cooldown, and you're about to cap charges, or if you will not reach 3 runes within global cooldown.\nactions+=/blood_tap,if=(rune<=2&rune.time_to_4>gcd&charges_fractional>=1.8)||rune.time_to_3>gcd\n# Use Gorefiend's Grasp if Tightening Grasp is talented.\nactions+=/gorefiends_grasp,if=talent.tightening_grasp.enabled\n# Use Empower Ruen Weapon if you have 6 or fewer runes and you're not about to cap Runic Power.\nactions+=/empower_rune_weapon,if=rune<6&runic_power.deficit>5\n# Use Abomination's Limb on cooldown.\nactions+=/abomination_limb\n# Use Dancing Rune Weapon if it is not already active.\nactions+=/dancing_rune_weapon,if=!buff.dancing_rune_weapon.up\n# Use the drw_up action list if Dancing Rune Weapon is active.\nactions+=/run_action_list,name=drw_up,strict=1,if=buff.dancing_rune_weapon.up\n# Call the standard action list (which will not be used if Dancing Rune Weapon is active).\nactions+=/call_action_list,name=standard\n\n# Use Death's Due if Death and Decay is not ticking and you don't have Death's Due or Crimson Scourge up.\nactions.covenants=deaths_due,if=!death_and_decay.ticking&(!buff.deaths_due.up||buff.deaths_due.remains<4||buff.crimson_scourge.up)\n# Use Swarming Mist if Dancing Rune Weapon is active for 3+ seconds and you have 90+ Runic Power (offset by number of targets).\nactions.covenants+=/swarming_mist,if=cooldown.dancing_rune_weapon.remains>3&runic_power>=(90-(spell_targets.swarming_mist*3))\n# Use Fleshcraft if you have Pustule Eruption or Volatile Solvent and Volatile Solvent is not active.\nactions.covenants+=/fleshcraft,if=soulbind.pustule_eruption||soulbind.volatile_solvent&!buff.volatile_solvent_humanoid.up,interrupt_immediate=1,interrupt_global=1,interrupt_if=soulbind.volatile_solvent\n# Use Shackle the Unworthy if you have 3 or fewer runes and Runic Power is below 100.\nactions.covenants+=/shackle_the_unworthy,if=rune<3&runic_power<100\n\n# Use Blood Boil if Blood Plague is not active.\nactions.drw_up+=/blood_boil,if=!dot.blood_plague.ticking\n# Use Tombstone if you have 5+ Bone Shield stacks, 2+ runes, 30+ Runic Power, and Shattering Bones is not talented or Death and Decay is not ticking.\nactions.drw_up+=/tombstone,if=buff.bone_shield.stack>5&rune>=2&runic_power.deficit>=30&!talent.shattering_bone||(talent.shattering_bone.enabled&death_and_decay.ticking)\n# Use Death Strike if Coagulatopathy is down or about to expire or if Icy Talons is down or about to expire.\nactions.drw_up+=/death_strike,if=buff.coagulopathy.remains<=gcd||buff.icy_talons.remains<=gcd\nactions.drw_up+=/marrowrend,if=(buff.bone_shield.remains<=4||buff.bone_shield.stack<variable.bone_shield_refresh_value)&runic_power.deficit>20\nactions.drw_up+=/soul_reaper,if=active_enemies=1&target.time_to_pct_35<5&target.time_to_die>(dot.soul_reaper.remains+5)\nactions.drw_up+=/soul_reaper,cycle_targets=1,if=target.time_to_pct_35<5&active_enemies>=2&target.time_to_die>(dot.soul_reaper.remains+5)\nactions.drw_up+=/death_and_decay,if=!death_and_decay.ticking&(talent.sanguine_ground||talent.unholy_ground)\nactions.drw_up+=/blood_boil,if=spell_targets.blood_boil>2&charges_fractional>=1.1\nactions.drw_up+=/variable,name=heart_strike_rp_drw,value=(25+spell_targets.heart_strike*talent.heartbreaker.enabled*2)\nactions.drw_up+=/death_strike,if=runic_power.deficit<=variable.heart_strike_rp_drw||runic_power>=variable.death_strike_dump_amount\nactions.drw_up+=/consumption\nactions.drw_up+=/blood_boil,if=charges_fractional>=1.1&buff.hemostasis.stack<5\nactions.drw_up+=/heart_strike,if=rune.time_to_2<gcd||runic_power.deficit>=variable.heart_strike_rp_drw\n\nactions.racials=blood_fury,if=cooldown.dancing_rune_weapon.ready&(!cooldown.blooddrinker.ready||!talent.blooddrinker.enabled)\nactions.racials+=/berserking\nactions.racials+=/arcane_pulse,if=active_enemies>=2||rune<1&runic_power.deficit>60\nactions.racials+=/lights_judgment,if=buff.unholy_strength.up\nactions.racials+=/ancestral_call\nactions.racials+=/fireblood\nactions.racials+=/bag_of_tricks\nactions.racials+=/arcane_torrent,if=runic_power.deficit>20\n\nactions.standard+=/tombstone,if=buff.bone_shield.stack>5&rune>=2&runic_power.deficit>=30&!talent.shattering_bone||(talent.shattering_bone.enabled&death_and_decay.ticking)&cooldown.dancing_rune_weapon.remains>=25\nactions.standard+=/variable,name=heart_strike_rp,value=(10+spell_targets.heart_strike*talent.heartbreaker.enabled*2)\nactions.standard+=/death_strike,if=buff.coagulopathy.remains<=gcd||buff.icy_talons.remains<=gcd||runic_power>=variable.death_strike_dump_amount||runic_power.deficit<=variable.heart_strike_rp||boss&fight_remains<10\nactions.standard+=/deaths_caress,if=(buff.bone_shield.remains<=4||(buff.bone_shield.stack<variable.bone_shield_refresh_value+1))&runic_power.deficit>10&!(talent.insatiable_blade&cooldown.dancing_rune_weapon.remains<buff.bone_shield.remains)&!talent.consumption.enabled&!talent.blooddrinker.enabled&rune.time_to_3>gcd\nactions.standard+=/marrowrend,if=(buff.bone_shield.remains<=4||buff.bone_shield.stack<variable.bone_shield_refresh_value)&runic_power.deficit>20&!(talent.insatiable_blade&cooldown.dancing_rune_weapon.remains<buff.bone_shield.remains)\nactions.standard+=/consumption\nactions.standard+=/soul_reaper,if=active_enemies=1&target.time_to_pct_35<5&target.time_to_die>(dot.soul_reaper.remains+5)\nactions.standard+=/soul_reaper,cycle_targets=1,if=target.time_to_pct_35<5&active_enemies>=2&target.time_to_die>(dot.soul_reaper.remains+5)\nactions.standard+=/bonestorm,if=runic_power>=100\nactions.standard+=/blood_boil,if=charges_fractional>=1.8&(buff.hemostasis.stack<=(5-spell_targets.blood_boil)||spell_targets.blood_boil>2)\nactions.standard+=/heart_strike,if=rune.time_to_4<gcd\nactions.standard+=/blood_boil,if=charges_fractional>=1.1\nactions.standard+=/heart_strike,if=(rune>1&(rune.time_to_3<gcd||buff.bone_shield.stack>7))\n\n# Prioritize damage dealing on use trinkets over trinkets that give buffs\nactions.trinkets+=/variable,name=trinket_1_buffs,value=trinket.1.has_use_buff||(trinket.1.has_buff.strength||trinket.1.has_buff.mastery||trinket.1.has_buff.versatility||trinket.1.has_buff.haste||trinket.1.has_buff.crit)\nactions.trinkets+=/variable,name=trinket_2_buffs,value=trinket.2.has_use_buff||(trinket.2.has_buff.strength||trinket.2.has_buff.mastery||trinket.2.has_buff.versatility||trinket.2.has_buff.haste||trinket.2.has_buff.crit)\nactions.trinkets+=/variable,name=trinket_1_exclude,value=trinket.1.is.ruby_whelp_shell||trinket.1.is.whispering_incarnate_icon\nactions.trinkets+=/variable,name=trinket_2_exclude,value=trinket.2.is.ruby_whelp_shell||trinket.2.is.whispering_incarnate_icon\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket1,if=!variable.trinket_1_buffs\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket2,if=!variable.trinket_2_buffs\nactions.trinkets+=/use_items,use_off_gcd=1,if=(variable.trinket_1_buffs||trinket.1.cooldown.remains)&(variable.trinket_2_buffs||trinket.2.cooldown.remains)\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket1,if=variable.trinket_1_buffs&(buff.dancing_rune_weapon.up||!talent.dancing_rune_weapon||cooldown.dancing_rune_weapon.remains>20)&(variable.trinket_2_exclude||trinket.2.cooldown.remains||!trinket.2.has_cooldown||variable.trinket_2_buffs)\nactions.trinkets+=/use_item,use_off_gcd=1,slot=trinket2,if=variable.trinket_2_buffs&(buff.dancing_rune_weapon.up||!talent.dancing_rune_weapon||cooldown.dancing_rune_weapon.remains>20)&(variable.trinket_1_exclude||trinket.1.cooldown.remains||!trinket.1.has_cooldown||variable.trinket_1_buffs)",
					["author"] = "SimC",
				},
				["Mistweaver"] = {
					["builtIn"] = true,
					["date"] = 20230325,
					["spec"] = 270,
					["desc"] = "2023-02-16:  Added option to avoid recasting Faeline Stomp when standing in an existing faeline (for mana efficiency).\n\n2023-03-25:  Add Roll/Chi Torpedo with specialization option.",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies <= 3",
								["action"] = "thunder_focus_tea",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies <= 3",
								["action"] = "rising_sun_kick",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.teachings_of_the_monastery.enabled || buff.teachings_of_the_monastery.up & active_enemies <= 3",
								["action"] = "blackout_kick",
							}, -- [3]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "spinning_crane_kick",
								["enabled"] = true,
							}, -- [6]
						},
						["default"] = {
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "distance_check",
								["action"] = "roll",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "distance_check",
								["action"] = "chi_torpedo",
							}, -- [3]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! settings.save_faeline || ! ( buff.ancient_concordance.up || buff.awakened_faeline.up )",
								["action"] = "faeline_stomp",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies >= 3",
								["list_name"] = "aoe",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies < 3",
								["list_name"] = "st",
							}, -- [14]
						},
						["st"] = {
							{
								["action"] = "thunder_focus_tea",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "rising_sun_kick",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.teachings_of_the_monastery.enabled || buff.teachings_of_the_monastery.up & cooldown.rising_sun_kick.remains > gcd.max",
								["action"] = "blackout_kick",
							}, -- [3]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! talent.teachings_of_the_monastery.enabled || buff.teachings_of_the_monastery.stack < 3 || buff.teachings_of_the_monastery.remains < 2",
								["action"] = "tiger_palm",
							}, -- [6]
						},
						["precombat"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [3]
						},
					},
					["version"] = 20230325,
					["warnings"] = "The import for 'aoe' required some automated changes.\nLine 3: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\n\nThe import for 'st' required some automated changes.\nLine 3: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\nLine 6: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\n\nImported 4 action lists.\n",
					["author"] = "Aikanaka",
					["profile"] = "actions.precombat+=/potion\nactions.precombat+=/chi_burst\nactions.precombat+=/chi_wave\n\nactions+=/spear_hand_strike\nactions+=/roll,if=distance_check\nactions+=/chi_torpedo,if=distance_check\nactions+=/use_items\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/potion\nactions+=/faeline_stomp,if=!settings.save_faeline||!(buff.ancient_concordance.up||buff.awakened_faeline.up)\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>=3\nactions+=/call_action_list,name=st,strict=1,if=active_enemies<3\n\nactions.st+=/thunder_focus_tea\nactions.st+=/rising_sun_kick\nactions.st+=/blackout_kick,if=!talent.teachings_of_the_monastery||buff.teachings_of_the_monastery.up&cooldown.rising_sun_kick.remains>gcd.max\nactions.st+=/chi_wave\nactions.st+=/chi_burst\nactions.st+=/tiger_palm,if=!talent.teachings_of_the_monastery||buff.teachings_of_the_monastery.stack<3||buff.teachings_of_the_monastery.remains<2\n\nactions.aoe+=/thunder_focus_tea,if=active_enemies<=3\nactions.aoe+=/rising_sun_kick,if=active_enemies<=3\nactions.aoe+=/blackout_kick,if=!talent.teachings_of_the_monastery||buff.teachings_of_the_monastery.up&active_enemies<=3\nactions.aoe+=/chi_wave\nactions.aoe+=/chi_burst\nactions.aoe+=/spinning_crane_kick",
				},
				["Brewmaster"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230524,
					["author"] = "SimC",
					["desc"] = "2023-05-24:  Beacon/WoO alignment no longer needed.\n\n2023-05-15:  Oops, reimplement fallback rotation.\n\n2023-05-08:  SCK and Beacon to the Beyond changes.\n\n2023-02-26:  Added Touch of Death back to the priority (appears to be missing from SimC).\n\nThe SimC Brewmaster priority uses Purifying Brew and Celestial Brew aggressively for DPS.  The addon has pared this back to support survivability.",
					["lists"] = {
						["cooldowns_niuzao_woo"] = {
							{
								["action"] = "weapons_of_order",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bonedust_brew.up & debuff.weapons_of_order_debuff.stack > 3",
								["action"] = "bonedust_brew",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bonedust_brew.up & ! buff.weapons_of_order.up & cooldown.weapons_of_order.remains > 10",
								["action"] = "bonedust_brew",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up",
								["action"] = "exploding_keg",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.weapons_of_order.remains <= 16 & talent.weapons_of_order.enabled",
								["action"] = "invoke_niuzao_the_black_ox",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! talent.weapons_of_order.enabled",
								["action"] = "invoke_niuzao_the_black_ox",
							}, -- [6]
						},
						["cooldowns_improved_niuzao_cta"] = {
							{
								["action"] = "weapons_of_order",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bonedust_brew.up & debuff.weapons_of_order_debuff.stack > 3",
								["action"] = "bonedust_brew",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bonedust_brew.up & ! buff.weapons_of_order.up & cooldown.weapons_of_order.remains > 10",
								["action"] = "bonedust_brew",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up",
								["action"] = "exploding_keg",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.weapons_of_order.remains <= 30 - 17 & action.purifying_brew.last_used > action.weapons_of_order.last_used + 10 + 2 * 0.05",
								["action"] = "invoke_niuzao_the_black_ox",
							}, -- [5]
						},
						["rotation_boc_dfb"] = {
							{
								["action"] = "blackout_kick",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.rising_sun_kick.enabled",
								["action"] = "rising_sun_kick",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled & buff.rushing_jade_wind.remains < 1",
								["action"] = "rushing_jade_wind",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.up",
								["action"] = "breath_of_fire",
							}, -- [4]
							{
								["action"] = "keg_smash",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( cooldown.keg_smash.full_recharge_time * ( 1 - cooldown.keg_smash.charges_fractional ) ) >= 65 & talent.black_ox_brew.enabled",
								["action"] = "black_ox_brew",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled",
								["action"] = "rushing_jade_wind",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & energy + energy.regen * ( cooldown.keg_smash.full_recharge_time * ( 1 - cooldown.keg_smash.charges_fractional ) ) >= 65",
								["action"] = "spinning_crane_kick",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 || ( talent.walk_with_the_ox.enabled & talent.charred_passions.enabled )",
								["action"] = "spinning_crane_kick",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( cooldown.keg_smash.full_recharge_time * ( 1 - cooldown.keg_smash.charges_fractional ) ) >= 65",
								["action"] = "expel_harm",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1",
								["action"] = "tiger_palm",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.celestial_brew.enabled & ! buff.blackout_combo.up",
								["action"] = "celestial_brew",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_wave.enabled",
								["action"] = "chi_wave",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled",
								["action"] = "chi_burst",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "rotation_fallback",
							}, -- [15]
						},
						["rotation_chp"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.charred_passions.up",
								["action"] = "breath_of_fire",
							}, -- [1]
							{
								["action"] = "blackout_kick",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.rising_sun_kick.enabled",
								["action"] = "rising_sun_kick",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled & buff.rushing_jade_wind.remains < 1",
								["action"] = "rushing_jade_wind",
							}, -- [4]
							{
								["action"] = "keg_smash",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( cooldown.keg_smash.full_recharge_time * ( 1 - cooldown.keg_smash.charges_fractional ) ) >= 65 & talent.black_ox_brew.enabled",
								["action"] = "black_ox_brew",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled",
								["action"] = "rushing_jade_wind",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 || ( talent.walk_with_the_ox.enabled & talent.charred_passions.enabled )",
								["action"] = "spinning_crane_kick",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( cooldown.keg_smash.full_recharge_time * ( 1 - cooldown.keg_smash.charges_fractional ) ) >= 65",
								["action"] = "expel_harm",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1",
								["action"] = "tiger_palm",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.celestial_brew.enabled & ! buff.blackout_combo.up",
								["action"] = "celestial_brew",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_wave.enabled",
								["action"] = "chi_wave",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled",
								["action"] = "chi_burst",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "rotation_fallback",
							}, -- [14]
						},
						["default"] = {
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "diffuse_magic",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_for_celestial & ( time_to_max_charges < gcd.max || buff.purified_chi.up & buff.purified_chi.remains < 1.5 * gcd.max ) || cooldown.celestial_brew.remains < 2 * gcd.max & charges_fractional > 1.5",
								["action"] = "purifying_brew",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "tanking & ( ! talent.improved_celestial_brew.enabled || buff.purified_chi.up ) & buff.blackout_combo.down",
								["action"] = "celestial_brew",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_invoke_niuzao_the_black_ox.enabled & settings.purify_for_niuzao & pet.niuzao_the_black_ox.active",
								["action"] = "purifying_brew",
								["line_cd"] = "5",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "Use configured purify_stagger_currhp from Brewmaster options.",
								["criteria"] = "group & buff.blackout_combo.down & settings.purify_stagger_currhp > 0 & stagger.pct >= settings.purify_stagger_currhp",
								["action"] = "purifying_brew",
							}, -- [6]
							{
								["enabled"] = true,
								["description"] = "Use configured purify_stagger_currhp from Brewmaster options.",
								["criteria"] = "solo & buff.blackout_combo.down & settings.purify_stagger_currhp > 0 & stagger.pct >= settings.purify_stagger_currhp * 0.5",
								["action"] = "purifying_brew",
							}, -- [7]
							{
								["enabled"] = true,
								["description"] = "Use configured purify_stagger_maxhp from Brewmaster options.",
								["criteria"] = "group & buff.blackout_combo.down & settings.purify_stagger_maxhp > 0 & stagger.pct >= settings.purify_stagger_maxhp",
								["action"] = "purifying_brew",
							}, -- [8]
							{
								["enabled"] = true,
								["description"] = "Use configured purify_stagger_maxhp from Brewmaster options.",
								["criteria"] = "solo & buff.blackout_combo.down & settings.purify_stagger_maxhp > 0 & stagger.pct >= settings.purify_stagger_maxhp * 0.5",
								["action"] = "purifying_brew",
							}, -- [9]
							{
								["enabled"] = true,
								["description"] = "Stagger % of 20 will kill you in 2.5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.",
								["criteria"] = "group & buff.blackout_combo.down & settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & stagger.pct > 20",
								["action"] = "purifying_brew",
							}, -- [10]
							{
								["enabled"] = true,
								["description"] = "Stagger % of 10 will kill you in 5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.",
								["criteria"] = "solo & buff.blackout_combo.down & settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & stagger.pct > 10",
								["action"] = "purifying_brew",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 75 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & buff.fortifying_brew.down",
								["action"] = "dampen_harm",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & ( buff.dampen_harm.down )",
								["action"] = "fortifying_brew",
							}, -- [13]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.summon_white_tiger_statue.enabled",
								["action"] = "summon_white_tiger_statue",
							}, -- [15]
							{
								["action"] = "touch_of_death",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "debuff.weapons_of_order_debuff.stack > 3 || talent.weapons_of_order.enabled || boss & fight_remains < 25",
								["action"] = "use_items",
							}, -- [17]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [20]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "( talent.invoke_niuzao_the_black_ox.rank + talent.improved_invoke_niuzao_the_black_ox.rank ) = 2 & ( talent.weapons_of_order.rank + talent.call_to_arms.rank ) <= 1",
								["list_name"] = "cooldowns_improved_niuzao_woo",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "( talent.invoke_niuzao_the_black_ox.rank + talent.improved_invoke_niuzao_the_black_ox.rank ) = 2 & ( talent.weapons_of_order.rank + talent.call_to_arms.rank ) = 2",
								["list_name"] = "cooldowns_improved_niuzao_cta",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "( talent.invoke_niuzao_the_black_ox.rank + talent.improved_invoke_niuzao_the_black_ox.rank ) <= 1",
								["list_name"] = "cooldowns_niuzao_woo",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.blackout_combo.enabled & talent.dragonfire_brew.enabled & talent.salsalabims_strength.enabled",
								["list_name"] = "rotation_boc_dfb",
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.dragonfire_brew.enabled & talent.salsalabims_strength.enabled",
								["list_name"] = "rotation_dfb",
							}, -- [28]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.charred_passions.enabled & talent.salsalabims_strength.enabled",
								["list_name"] = "rotation_chp",
							}, -- [29]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "! talent.salsalabims_strength.enabled || ! ( talent.dragonfire_brew.enabled || talent.charred_passions.enabled )",
								["list_name"] = "rotation_fallback",
							}, -- [30]
						},
						["precombat"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled",
								["action"] = "chi_burst",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_wave.enabled",
								["action"] = "chi_wave",
							}, -- [3]
						},
						["rotation_fallback"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.rising_sun_kick.enabled",
								["action"] = "rising_sun_kick",
							}, -- [1]
							{
								["action"] = "keg_smash",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.breath_of_fire.enabled",
								["action"] = "breath_of_fire",
							}, -- [3]
							{
								["action"] = "blackout_kick",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( cooldown.keg_smash.remains + execute_time ) >= 65 & talent.black_ox_brew.enabled",
								["action"] = "black_ox_brew",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled",
								["action"] = "rushing_jade_wind",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 || ( talent.walk_with_the_ox.enabled & talent.charred_passions.enabled )",
								["action"] = "spinning_crane_kick",
							}, -- [7]
							{
								["action"] = "expel_harm",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1",
								["action"] = "tiger_palm",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! buff.blackout_combo.up & talent.celestial_brew.enabled",
								["action"] = "celestial_brew",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_wave.enabled",
								["action"] = "chi_wave",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled",
								["action"] = "chi_burst",
							}, -- [12]
						},
						["cooldowns_improved_niuzao_woo"] = {
							{
								["action"] = "weapons_of_order",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bonedust_brew.up & debuff.weapons_of_order_debuff.stack > 3",
								["action"] = "bonedust_brew",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bonedust_brew.up & ! buff.weapons_of_order.up & cooldown.weapons_of_order.remains > 10",
								["action"] = "bonedust_brew",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up",
								["action"] = "exploding_keg",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "time - action.purifying_brew.last_used <= 5",
								["action"] = "invoke_niuzao_the_black_ox",
							}, -- [5]
						},
						["rotation_dfb"] = {
							{
								["action"] = "blackout_kick",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.rising_sun_kick.enabled",
								["action"] = "rising_sun_kick",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled & buff.rushing_jade_wind.remains < 1",
								["action"] = "rushing_jade_wind",
							}, -- [3]
							{
								["action"] = "breath_of_fire",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "keg_smash",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( cooldown.keg_smash.full_recharge_time * ( 1 - cooldown.keg_smash.charges_fractional ) ) >= 65 & talent.black_ox_brew.enabled",
								["action"] = "black_ox_brew",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled",
								["action"] = "rushing_jade_wind",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 || ( talent.walk_with_the_ox.enabled & talent.charred_passions.enabled )",
								["action"] = "spinning_crane_kick",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen * ( cooldown.keg_smash.full_recharge_time * ( 1 - cooldown.keg_smash.charges_fractional ) ) >= 65",
								["action"] = "expel_harm",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1",
								["action"] = "tiger_palm",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.celestial_brew.enabled",
								["action"] = "celestial_brew",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_wave.enabled",
								["action"] = "chi_wave",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled",
								["action"] = "chi_burst",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "rotation_fallback",
							}, -- [14]
						},
					},
					["version"] = 20230524,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 4: Converted 'talent.improved_celestial_brew' to 'talent.improved_celestial_brew.enabled' (1x).\nLine 5: Converted 'talent.improved_invoke_niuzao_the_black_ox' to 'talent.improved_invoke_niuzao_the_black_ox.enabled' (1x).\nLine 17: Converted 'talent.weapons_of_order' to 'talent.weapons_of_order.enabled' (1x).\n\nImported 9 action lists.\n",
					["profile"] = "actions.precombat+=/potion\nactions.precombat+=/chi_burst,if=talent.chi_burst.enabled\nactions.precombat+=/chi_wave,if=talent.chi_wave.enabled\n## Blackout Combo\n## actions.precombat+=/variable,name=boc_count,op=set,value=0\n\nactions+=/spear_hand_strike\nactions+=/diffuse_magic\nactions+=/purifying_brew,if=settings.purify_for_celestial&(time_to_max_charges<gcd.max||buff.purified_chi.up&buff.purified_chi.remains<1.5*gcd.max)||cooldown.celestial_brew.remains<2*gcd.max&charges_fractional>1.5\nactions+=/celestial_brew,if=tanking&(!talent.improved_celestial_brew||buff.purified_chi.up)&buff.blackout_combo.down\nactions+=/purifying_brew,line_cd=5,if=talent.improved_invoke_niuzao_the_black_ox&settings.purify_for_niuzao&pet.niuzao_the_black_ox.active\n# Use configured purify_stagger_currhp from Brewmaster options.\nactions+=/purifying_brew,if=group&buff.blackout_combo.down&settings.purify_stagger_currhp>0&stagger.pct>=settings.purify_stagger_currhp\n# Use configured purify_stagger_currhp from Brewmaster options.\nactions+=/purifying_brew,if=solo&buff.blackout_combo.down&settings.purify_stagger_currhp>0&stagger.pct>=settings.purify_stagger_currhp*0.5\n# Use configured purify_stagger_maxhp from Brewmaster options.\nactions+=/purifying_brew,if=group&buff.blackout_combo.down&settings.purify_stagger_maxhp>0&stagger.pct>=settings.purify_stagger_maxhp\n# Use configured purify_stagger_maxhp from Brewmaster options.\nactions+=/purifying_brew,if=solo&buff.blackout_combo.down&settings.purify_stagger_maxhp>0&stagger.pct>=settings.purify_stagger_maxhp*0.5\n# Stagger % of 20 will kill you in 2.5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.\nactions+=/purifying_brew,if=group&buff.blackout_combo.down&settings.purify_stagger_currhp=0&settings.purify_stagger_maxhp=0&stagger.pct>20\n# Stagger % of 10 will kill you in 5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.\nactions+=/purifying_brew,if=solo&buff.blackout_combo.down&settings.purify_stagger_currhp=0&settings.purify_stagger_maxhp=0&stagger.pct>10\nactions+=/dampen_harm,if=health.pct<75&incoming_damage_3s>health.max*(0.2+(0.2*group))&buff.fortifying_brew.down\nactions+=/fortifying_brew,if=health.pct<50&incoming_damage_3s>health.max*(0.2+(0.2*group))&(buff.dampen_harm.down)\nactions+=/potion\nactions+=/summon_white_tiger_statue,if=talent.summon_white_tiger_statue.enabled\nactions+=/touch_of_death\nactions+=/use_items,if=debuff.weapons_of_order_debuff.stack>3||talent.weapons_of_order||boss&fight_remains<25\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/call_action_list,name=cooldowns_improved_niuzao_woo,strict=1,if=(talent.invoke_niuzao_the_black_ox.rank+talent.improved_invoke_niuzao_the_black_ox.rank)=2&(talent.weapons_of_order.rank+talent.call_to_arms.rank)<=1\nactions+=/call_action_list,name=cooldowns_improved_niuzao_cta,strict=1,if=(talent.invoke_niuzao_the_black_ox.rank+talent.improved_invoke_niuzao_the_black_ox.rank)=2&(talent.weapons_of_order.rank+talent.call_to_arms.rank)=2\nactions+=/call_action_list,name=cooldowns_niuzao_woo,strict=1,if=(talent.invoke_niuzao_the_black_ox.rank+talent.improved_invoke_niuzao_the_black_ox.rank)<=1\nactions+=/call_action_list,name=rotation_boc_dfb,strict=1,if=talent.blackout_combo.enabled&talent.dragonfire_brew.enabled&talent.salsalabims_strength.enabled\nactions+=/call_action_list,name=rotation_dfb,strict=1,if=talent.dragonfire_brew.enabled&talent.salsalabims_strength.enabled\nactions+=/call_action_list,name=rotation_chp,strict=1,if=talent.charred_passions.enabled&talent.salsalabims_strength.enabled\nactions+=/call_action_list,name=rotation_fallback,strict=1,if=!talent.salsalabims_strength.enabled||!(talent.dragonfire_brew.enabled||talent.charred_passions.enabled)\n\n## Use <a href='https://www.wowhead.com/spell=10060/power-infusion'>Power Infusion</a> when <a href='https://www.wowhead.com/spell=387184/weapons-of-order'>Weapons of Order</a> reaches 4 stacks.\n## actions.cooldowns_niuzao_woo+=/invoke_external_buff,name=power_infusion,if=buff.weapons_of_order.remains<=20\nactions.cooldowns_niuzao_woo+=/weapons_of_order\nactions.cooldowns_niuzao_woo+=/bonedust_brew,if=!buff.bonedust_brew.up&debuff.weapons_of_order_debuff.stack>3\nactions.cooldowns_niuzao_woo+=/bonedust_brew,if=!buff.bonedust_brew.up&!buff.weapons_of_order.up&cooldown.weapons_of_order.remains>10\nactions.cooldowns_niuzao_woo+=/exploding_keg,if=buff.bonedust_brew.up\nactions.cooldowns_niuzao_woo+=/invoke_niuzao_the_black_ox,if=buff.weapons_of_order.remains<=16&talent.weapons_of_order.enabled\nactions.cooldowns_niuzao_woo+=/invoke_niuzao_the_black_ox,if=!talent.weapons_of_order.enabled\n## actions.cooldowns_niuzao_woo+=/purifying_brew,if=stagger.amounttototalpct>=0.7&!buff.blackout_combo.up\n## actions.cooldowns_niuzao_woo+=/purifying_brew,if=cooldown.purifying_brew.remains_expected<5&!buff.blackout_combo.up\n\n## Use <a href='https://www.wowhead.com/spell=10060/power-infusion'>Power Infusion</a> when <a href='https://www.wowhead.com/spell=387184/weapons-of-order'>Weapons of Order</a> reaches 4 stacks.\n## actions.cooldowns_improved_niuzao_woo+=/invoke_external_buff,name=power_infusion,if=buff.weapons_of_order.remains<=20\n## actions.cooldowns_improved_niuzao_woo+=/variable,name=pb_in_window,op=set,value=floor(cooldown.purifying_brew.charges_fractional+(20+4*0.05)%cooldown.purifying_brew.duration%0.65),if=prev.invoke_niuzao_the_black_ox\n## actions.cooldowns_improved_niuzao_woo+=/variable,name=pb_in_window,op=sub,value=1,if=prev.purifying_brew&time-action.invoke_niuzao_the_black_ox.last_used<=20+4*0.05\n## actions.cooldowns_improved_niuzao_woo+=/purifying_brew,if=(time-action.purifying_brew.last_used>=20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used%variable.pb_in_window&time-action.invoke_niuzao_the_black_ox.last_used<=20+4*0.05)\n## actions.cooldowns_improved_niuzao_woo+=/purifying_brew,use_off_gcd=1,if=(variable.pb_in_window=0&20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used<1&20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used>0)\nactions.cooldowns_improved_niuzao_woo+=/weapons_of_order\nactions.cooldowns_improved_niuzao_woo+=/bonedust_brew,if=!buff.bonedust_brew.up&debuff.weapons_of_order_debuff.stack>3\nactions.cooldowns_improved_niuzao_woo+=/bonedust_brew,if=!buff.bonedust_brew.up&!buff.weapons_of_order.up&cooldown.weapons_of_order.remains>10\nactions.cooldowns_improved_niuzao_woo+=/exploding_keg,if=buff.bonedust_brew.up\n## actions.cooldowns_improved_niuzao_woo+=/purifying_brew,if=cooldown.invoke_niuzao_the_black_ox.remains<=3.5&time-action.purifying_brew.last_used>=3.5+cooldown.invoke_niuzao_the_black_ox.remains\nactions.cooldowns_improved_niuzao_woo+=/invoke_niuzao_the_black_ox,if=time-action.purifying_brew.last_used<=5\n## actions.cooldowns_improved_niuzao_woo+=/purifying_brew,if=cooldown.purifying_brew.full_recharge_time*2<=cooldown.invoke_niuzao_the_black_ox.remains-3.5\n\n## Use <a href='https://www.wowhead.com/spell=10060/power-infusion'>Power Infusion</a> when <a href='https://www.wowhead.com/spell=387184/weapons-of-order'>Weapons of Order</a> reaches 4 stacks.\n## actions.cooldowns_improved_niuzao_cta+=/invoke_external_buff,name=power_infusion,if=buff.weapons_of_order.remains<=20\n## actions.cooldowns_improved_niuzao_cta+=/variable,name=pb_in_window,op=set,value=floor(cooldown.purifying_brew.charges_fractional+(10+2*0.05)%cooldown.purifying_brew.duration%0.65),if=prev.weapons_of_order\n## actions.cooldowns_improved_niuzao_cta+=/variable,name=pb_in_window,op=set,value=floor(cooldown.purifying_brew.charges_fractional+(20+4*0.05)%cooldown.purifying_brew.duration%0.65),if=prev.invoke_niuzao_the_black_ox\n## actions.cooldowns_improved_niuzao_cta+=/variable,name=pb_in_window,op=sub,value=1,if=prev.purifying_brew&(time-action.weapons_of_order.last_used<=10+2*0.05||time-action.invoke_niuzao_the_black_ox.last_used<=20+4*0.05)\n## actions.cooldowns_improved_niuzao_cta+=/purifying_brew,if=(time-action.purifying_brew.last_used>=10+2*0.05-time+action.weapons_of_order.last_used%variable.pb_in_window&time-action.weapons_of_order.last_used<=10+2*0.05)\n## actions.cooldowns_improved_niuzao_cta+=/purifying_brew,if=(time-action.purifying_brew.last_used>=20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used%variable.pb_in_window&time-action.invoke_niuzao_the_black_ox.last_used<=20+4*0.05)\n## actions.cooldowns_improved_niuzao_cta+=/purifying_brew,use_off_gcd=1,if=(variable.pb_in_window=0&20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used<1&20+4*0.05-time+action.invoke_niuzao_the_black_ox.last_used>0)\n## actions.cooldowns_improved_niuzao_cta+=/purifying_brew,if=cooldown.weapons_of_order.remains<=3.5&time-action.purifying_brew.last_used>=3.5+cooldown.weapons_of_order.remains\nactions.cooldowns_improved_niuzao_cta+=/weapons_of_order\nactions.cooldowns_improved_niuzao_cta+=/bonedust_brew,if=!buff.bonedust_brew.up&debuff.weapons_of_order_debuff.stack>3\nactions.cooldowns_improved_niuzao_cta+=/bonedust_brew,if=!buff.bonedust_brew.up&!buff.weapons_of_order.up&cooldown.weapons_of_order.remains>10\nactions.cooldowns_improved_niuzao_cta+=/exploding_keg,if=buff.bonedust_brew.up\n## actions.cooldowns_improved_niuzao_cta+=/purifying_brew,if=cooldown.invoke_niuzao_the_black_ox.remains<=3.5&time-action.purifying_brew.last_used>=3.5+cooldown.invoke_niuzao_the_black_ox.remains&buff.weapons_of_order.remains<=30-17\nactions.cooldowns_improved_niuzao_cta+=/invoke_niuzao_the_black_ox,if=buff.weapons_of_order.remains<=30-17&action.purifying_brew.last_used>action.weapons_of_order.last_used+10+2*0.05\n## actions.cooldowns_improved_niuzao_cta+=/purifying_brew,if=cooldown.purifying_brew.full_recharge_time*2<=cooldown.weapons_of_order.remains-3.5&cooldown.purifying_brew.full_recharge_time*2<=cooldown.invoke_niuzao_the_black_ox.remains-3.5\n\nactions.rotation_boc_dfb+=/blackout_kick\nactions.rotation_boc_dfb+=/rising_sun_kick,if=talent.rising_sun_kick.enabled\nactions.rotation_boc_dfb+=/rushing_jade_wind,if=talent.rushing_jade_wind.enabled&buff.rushing_jade_wind.remains<1\nactions.rotation_boc_dfb+=/breath_of_fire,if=buff.blackout_combo.up\nactions.rotation_boc_dfb+=/keg_smash\nactions.rotation_boc_dfb+=/black_ox_brew,if=energy+energy.regen*(cooldown.keg_smash.full_recharge_time*(1-cooldown.keg_smash.charges_fractional))>=65&talent.black_ox_brew.enabled\nactions.rotation_boc_dfb+=/rushing_jade_wind,if=talent.rushing_jade_wind.enabled\nactions.rotation_boc_dfb+=/spinning_crane_kick,if=active_enemies>1&energy+energy.regen*(cooldown.keg_smash.full_recharge_time*(1-cooldown.keg_smash.charges_fractional))>=65\nactions.rotation_boc_dfb+=/spinning_crane_kick,if=active_enemies>1||(talent.walk_with_the_ox.enabled&talent.charred_passions.enabled)\nactions.rotation_boc_dfb+=/expel_harm,if=energy+energy.regen*(cooldown.keg_smash.full_recharge_time*(1-cooldown.keg_smash.charges_fractional))>=65\nactions.rotation_boc_dfb+=/tiger_palm,if=active_enemies=1\nactions.rotation_boc_dfb+=/celestial_brew,if=talent.celestial_brew.enabled&!buff.blackout_combo.up\nactions.rotation_boc_dfb+=/chi_wave,if=talent.chi_wave.enabled\nactions.rotation_boc_dfb+=/chi_burst,if=talent.chi_burst.enabled\nactions.rotation_boc_dfb+=/call_action_list,name=rotation_fallback\n\nactions.rotation_dfb+=/blackout_kick\nactions.rotation_dfb+=/rising_sun_kick,if=talent.rising_sun_kick.enabled\nactions.rotation_dfb+=/rushing_jade_wind,if=talent.rushing_jade_wind.enabled&buff.rushing_jade_wind.remains<1\nactions.rotation_dfb+=/breath_of_fire\nactions.rotation_dfb+=/keg_smash\nactions.rotation_dfb+=/black_ox_brew,if=energy+energy.regen*(cooldown.keg_smash.full_recharge_time*(1-cooldown.keg_smash.charges_fractional))>=65&talent.black_ox_brew.enabled\nactions.rotation_dfb+=/rushing_jade_wind,if=talent.rushing_jade_wind.enabled\nactions.rotation_dfb+=/spinning_crane_kick,if=active_enemies>1||(talent.walk_with_the_ox.enabled&talent.charred_passions.enabled)\nactions.rotation_dfb+=/expel_harm,if=energy+energy.regen*(cooldown.keg_smash.full_recharge_time*(1-cooldown.keg_smash.charges_fractional))>=65\nactions.rotation_dfb+=/tiger_palm,if=active_enemies=1\nactions.rotation_dfb+=/celestial_brew,if=talent.celestial_brew.enabled\nactions.rotation_dfb+=/chi_wave,if=talent.chi_wave.enabled\nactions.rotation_dfb+=/chi_burst,if=talent.chi_burst.enabled\nactions.rotation_dfb+=/call_action_list,name=rotation_fallback\n\nactions.rotation_chp+=/breath_of_fire,if=!buff.charred_passions.up\nactions.rotation_chp+=/blackout_kick\nactions.rotation_chp+=/rising_sun_kick,if=talent.rising_sun_kick.enabled\nactions.rotation_chp+=/rushing_jade_wind,if=talent.rushing_jade_wind.enabled&buff.rushing_jade_wind.remains<1\nactions.rotation_chp+=/keg_smash\nactions.rotation_chp+=/black_ox_brew,if=energy+energy.regen*(cooldown.keg_smash.full_recharge_time*(1-cooldown.keg_smash.charges_fractional))>=65&talent.black_ox_brew.enabled\nactions.rotation_chp+=/rushing_jade_wind,if=talent.rushing_jade_wind.enabled\nactions.rotation_chp+=/spinning_crane_kick,if=active_enemies>1||(talent.walk_with_the_ox.enabled&talent.charred_passions.enabled)\nactions.rotation_chp+=/expel_harm,if=energy+energy.regen*(cooldown.keg_smash.full_recharge_time*(1-cooldown.keg_smash.charges_fractional))>=65\nactions.rotation_chp+=/tiger_palm,if=active_enemies=1\nactions.rotation_chp+=/celestial_brew,if=talent.celestial_brew.enabled&!buff.blackout_combo.up\nactions.rotation_chp+=/chi_wave,if=talent.chi_wave.enabled\nactions.rotation_chp+=/chi_burst,if=talent.chi_burst.enabled\nactions.rotation_chp+=/call_action_list,name=rotation_fallback\n\nactions.rotation_fallback+=/rising_sun_kick,if=talent.rising_sun_kick.enabled\nactions.rotation_fallback+=/keg_smash\nactions.rotation_fallback+=/breath_of_fire,if=talent.breath_of_fire.enabled\nactions.rotation_fallback+=/blackout_kick\nactions.rotation_fallback+=/black_ox_brew,if=energy+energy.regen*(cooldown.keg_smash.remains+execute_time)>=65&talent.black_ox_brew.enabled\nactions.rotation_fallback+=/rushing_jade_wind,if=talent.rushing_jade_wind.enabled\nactions.rotation_fallback+=/spinning_crane_kick,if=active_enemies>1||(talent.walk_with_the_ox.enabled&talent.charred_passions.enabled)\nactions.rotation_fallback+=/expel_harm\nactions.rotation_fallback+=/tiger_palm,if=active_enemies=1\nactions.rotation_fallback+=/celestial_brew,if=!buff.blackout_combo.up&talent.celestial_brew.enabled\nactions.rotation_fallback+=/chi_wave,if=talent.chi_wave.enabled\nactions.rotation_fallback+=/chi_burst,if=talent.chi_burst.enabled",
					["spec"] = 268,
				},
				["Havoc"] = {
					["source"] = "SimulationCraft",
					["builtIn"] = true,
					["date"] = 20230603,
					["spec"] = 577,
					["desc"] = "2023-06-03:  Move trinkets in default priority.\n\n2023-05-12:  Trinket updates from SimC.\n\n2023-04-30:  Updated from SimC for 10.1.\n\n2023-02-27:  If Fel Rush and Vengeful Retreat are disabled (despite Momentum and Tactical Retreat being talented), the priority will allow Essence Break to be recommended.\n\n2023-02-18:  Options regarding Fel Rush and Vengeful Retreat were revised. Only the filler/movement recommendations can be turned off using Havoc's specialization settings.  The entries associated with Isolated Prey, Momentum, Unbound Chaos, Initiative, and Vengeful Retreat may always be recommended if those talents are selected.",
					["profile"] = "actions.precombat+=/variable,name=three_min_trinket,value=trinket.1.cooldown.duration=180||trinket.2.cooldown.duration=180\nactions.precombat+=/arcane_torrent,if=fury.deficit>15\nactions.precombat+=/use_item,name=algethar_puzzle_box,if=cooldown.metamorphosis.remains<5\nactions.precombat+=/sigil_of_flame,if=!equipped.algethar_puzzle_box\nactions.precombat+=/immolation_aura\n\nactions=disrupt\nactions+=/consume_magic\n# Blade Dance with First Blood, Trail of Ruin, or at 2+ targets\nactions+=/variable,name=blade_dance,value=talent.first_blood||talent.trail_of_ruin||talent.chaos_theory&buff.chaos_theory.down||spell_targets.blade_dance1>1\nactions+=/variable,name=pooling_for_blade_dance,value=variable.blade_dance&fury<(75-talent.demon_blades*20)&cooldown.blade_dance.remains<gcd.max\nactions+=/variable,name=pooling_for_eye_beam,value=talent.demonic&!talent.blind_fury&cooldown.eye_beam.remains<(gcd.max*2)&fury.deficit>20\nactions+=/variable,name=waiting_for_momentum,value=talent.momentum&!buff.momentum.up&!(action.fel_rush.disabled&action.vengeful_retreat.disabled)\nactions+=/variable,name=holding_meta,value=(talent.demonic&talent.essence_break)&variable.three_min_trinket&fight_remains>cooldown.metamorphosis.remains+30+talent.shattered_destiny*60&cooldown.metamorphosis.remains<20&cooldown.metamorphosis.remains>action.eye_beam.execute_time+gcd.max*(talent.inner_demon+2)\n## actions+=/invoke_external_buff,name=power_infusion,if=time>170&!variable.holding_meta\nactions+=/immolation_aura,if=talent.ragefire&active_enemies>=3&(cooldown.blade_dance.remains||debuff.essence_break.down)\nactions+=/throw_glaive,if=talent.soulrend&talent.furious_throws&active_enemies>=3&time<1\nactions+=/fel_rush,if=buff.unbound_chaos.up&(buff.unbound_chaos.remains<gcd.max*2||target.time_to_die<gcd.max*2)\nactions+=/call_action_list,name=cooldown\nactions+=/call_action_list,name=meta_end,if=buff.metamorphosis.up&buff.metamorphosis.remains<gcd.max&active_enemies<3\n## actions+=/pick_up_fragment,type=demon,if=demon_soul_fragments>0&(cooldown.eye_beam.remains<6||buff.metamorphosis.remains>5)&buff.empowered_demon_soul.remains<3||fight_remains<17\n## actions+=/pick_up_fragment,mode=nearest,if=talent.demonic_appetite&fury.deficit>=35&(!cooldown.eye_beam.ready||fury<30)\nactions+=/annihilation,if=buff.inner_demon.up&cooldown.metamorphosis.remains<=gcd*3\nactions+=/vengeful_retreat,use_off_gcd=1,if=talent.initiative&talent.essence_break&time>1&(cooldown.essence_break.remains>15||cooldown.essence_break.remains<gcd.max&(!talent.demonic||buff.metamorphosis.up||cooldown.eye_beam.remains>15+(10*talent.cycle_of_hatred)))&(time<30||gcd.remains<1)&!talent.any_means_necessary\nactions+=/vengeful_retreat,use_off_gcd=1,if=talent.initiative&talent.essence_break&time>1&(cooldown.essence_break.remains>15||cooldown.essence_break.remains<gcd.max*2&(buff.initiative.remains<gcd.max&!variable.holding_meta&cooldown.eye_beam.remains<=gcd.remains&(raid_event.adds.in>(40-talent.cycle_of_hatred*15))&fury>30||!talent.demonic||buff.metamorphosis.up||cooldown.eye_beam.remains>15+(10*talent.cycle_of_hatred)))&talent.any_means_necessary\nactions+=/vengeful_retreat,use_off_gcd=1,if=talent.initiative&!talent.essence_break&time>1&!buff.momentum.up\nactions+=/fel_rush,if=talent.momentum.enabled&buff.momentum.remains<gcd.max*2&(charges_fractional>1.8||cooldown.eye_beam.remains<3)&debuff.essence_break.down\nactions+=/essence_break,if=(active_enemies>desired_targets||raid_event.adds.in>40)&!variable.waiting_for_momentum&buff.metamorphosis.up&(!talent.tactical_retreat||buff.tactical_retreat.up||action.vengeful_retreat.disabled)||boss&fight_remains<6\nactions+=/death_sweep,if=variable.blade_dance&(!talent.essence_break||cooldown.essence_break.remains>(cooldown.death_sweep.duration-4))\nactions+=/fel_barrage,if=active_enemies>desired_targets||raid_event.adds.in>30\nactions+=/glaive_tempest,if=active_enemies>desired_targets||raid_event.adds.in>10&(debuff.essence_break.down||active_enemies>1)\nactions+=/annihilation,if=buff.inner_demon.up&cooldown.eye_beam.remains<=gcd\nactions+=/fel_rush,if=talent.momentum.enabled&cooldown.eye_beam.remains<gcd.max*3&buff.momentum.remains<5&buff.metamorphosis.down\nactions+=/the_hunt,if=debuff.essence_break.down&(time<10||cooldown.metamorphosis.remains>10||!equipped.algethar_puzzle_box)&(raid_event.adds.in>90||active_enemies>3||time_to_die<10)&(time>8&debuff.essence_break.down||!set_bonus.tier30_2pc)\nactions+=/throw_glaive,if=talent.serrated_glaive&cooldown.eye_beam.remains<6&!debuff.serrated_glaive.up&!debuff.essence_break.up&cooldown.blade_dance.remains\nactions+=/eye_beam,if=active_enemies>desired_targets||raid_event.adds.in>(40-talent.cycle_of_hatred*15)&!debuff.essence_break.up&(cooldown.metamorphosis.remains>40-talent.cycle_of_hatred*15||!variable.holding_meta)&(buff.metamorphosis.down||buff.metamorphosis.remains>gcd.max||!talent.restless_hunter)&(buff.metamorphosis.down||cooldown.blade_dance.remains>gcd.max)||fight_remains<15\nactions+=/blade_dance,if=variable.blade_dance&(cooldown.eye_beam.remains>5||equipped.algethar_puzzle_box&cooldown.metamorphosis.remains>(cooldown.blade_dance.duration)||!talent.demonic||(raid_event.adds.in>cooldown&raid_event.adds.in<25))\nactions+=/sigil_of_flame,if=talent.any_means_necessary&debuff.essence_break.down&active_enemies>=4\nactions+=/throw_glaive,if=talent.soulrend&(active_enemies>desired_targets||raid_event.adds.in>full_recharge_time+9)&spell_targets>=(2-talent.furious_throws)&!debuff.essence_break.up&(full_recharge_time<gcd.max*3||active_enemies>1)\nactions+=/immolation_aura,if=fury<70&debuff.essence_break.down&time_to_die>3\nactions+=/sigil_of_flame,if=talent.any_means_necessary&debuff.essence_break.down\nactions+=/annihilation,if=!variable.pooling_for_blade_dance\nactions+=/throw_glaive,if=talent.soulrend&(active_enemies>desired_targets||raid_event.adds.in>full_recharge_time+9)&spell_targets>=(2-talent.furious_throws)&!debuff.essence_break.up\nactions+=/immolation_aura,if=!buff.immolation_aura.up&(!talent.ragefire||active_enemies>desired_targets||raid_event.adds.in>15)\nactions+=/fel_rush,if=talent.isolated_prey&active_enemies=1&fury.deficit>=35\nactions+=/chaos_strike,if=!variable.pooling_for_blade_dance&!variable.pooling_for_eye_beam\nactions+=/sigil_of_flame,if=raid_event.adds.in>15&fury.deficit>=30\nactions+=/felblade,if=fury.deficit>=40\nactions+=/fel_rush,if=settings.fel_rush_filler&!talent.momentum&talent.demon_blades&!cooldown.eye_beam.ready&(charges=2||(raid_event.movement.in>10&raid_event.adds.in>10))\nactions+=/demons_bite,cycle_targets=1,if=talent.burning_wound&debuff.burning_wound.remains<4&active_dot.burning_wound<(spell_targets>?3)\nactions+=/fel_rush,if=settings.fel_rush_filler&!talent.momentum&!talent.demon_blades&spell_targets>1&(charges=2||(raid_event.movement.in>10&raid_event.adds.in>10))\nactions+=/sigil_of_flame,if=raid_event.adds.in>15&fury.deficit>=30\nactions+=/demons_bite\nactions+=/fel_rush,if=settings.fel_rush_filler&(movement.distance>15||(buff.out_of_range.up&!talent.momentum))\nactions+=/vengeful_retreat,if=settings.retreat_filler&!talent.initiative&movement.distance>15\nactions+=/throw_glaive,if=(talent.demon_blades||buff.out_of_range.up)&!debuff.essence_break.up\nactions+=/use_item,name=dragonfire_bomb_dispenser,use_off_gcd=1,if=fight_remains<20||charges=3||cooldown.vengeful_retreat.remains<5\nactions+=/use_item,name=elementium_pocket_anvil,use_off_gcd=1\n\nactions.meta_end+=/death_sweep\nactions.meta_end+=/annihilation\n\nactions.cooldown+=/sigil_of_misery,if=talent.misery_in_defeat&!target.is_boss&target.time_to_die>10&(cooldown.metamorphosis.remains<6||talent.demonic&cooldown.eye_beam.remains<6||buff.metamorphosis.remains>10)\n# Cast Metamorphosis if we will get a full Eye Beam refresh or if the encounter is almost over\nactions.cooldown+=/metamorphosis,if=!talent.demonic&((!talent.chaotic_transformation||cooldown.eye_beam.remains>20)&active_enemies>desired_targets||raid_event.adds.in>60||boss&fight_remains<25)\nactions.cooldown+=/metamorphosis,if=talent.demonic&(!talent.chaotic_transformation||cooldown.eye_beam.remains>20&(!variable.blade_dance||cooldown.blade_dance.remains>gcd.max)||boss&fight_remains<25+talent.shattered_destiny*70&cooldown.eye_beam.remains&cooldown.blade_dance.remains)\nactions.cooldown+=/potion,if=buff.metamorphosis.remains>25||buff.metamorphosis.up&cooldown.metamorphosis.ready||boss&fight_remains<60||time>0.1&time<10\nactions.cooldown+=/use_item,name=manic_grieftorch,use_off_gcd=1,if=((buff.initiative.remains>2&debuff.essence_break.down&cooldown.essence_break.remains>gcd.max&time>14||time_to_die<10||time<1&!equipped.algethar_puzzle_box||boss&(fight_remains%%120<5))&!prev_gcd.1.essence_break)\nactions.cooldown+=/use_item,name=algethar_puzzle_box,use_off_gcd=1,if=cooldown.metamorphosis.remains<=gcd.max*5||boss&((fight_remains%%180>10)&(fight_remains%%180<22)||fight_remains<25)\nactions.cooldown+=/elysian_decree,if=(active_enemies>desired_targets||raid_event.adds.in>30)\nactions.cooldown+=/variable,name=trinket_sync_slot,value=1,if=trinket.1.has_stat.any_dps&(!trinket.2.has_stat.any_dps||trinket.1.cooldown.duration>=trinket.2.cooldown.duration)\nactions.cooldown+=/variable,name=trinket_sync_slot,value=2,if=trinket.2.has_stat.any_dps&(!trinket.1.has_stat.any_dps||trinket.2.cooldown.duration>trinket.1.cooldown.duration)\n# Default use item logic\nactions.cooldown+=/use_items,slots=trinket1,if=(variable.trinket_sync_slot=1&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.1.cooldown.duration%2))||boss&fight_remains<=20)||(variable.trinket_sync_slot=2&!trinket.2.cooldown.ready)||!variable.trinket_sync_slot)&(!talent.initiative||buff.initiative.up)\nactions.cooldown+=/use_items,slots=trinket2,if=(variable.trinket_sync_slot=2&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.2.cooldown.duration%2))||boss&fight_remains<=20)||(variable.trinket_sync_slot=1&!trinket.1.cooldown.ready)||!variable.trinket_sync_slot)&(!talent.initiative||buff.initiative.up)\nactions.cooldown+=/use_item,name=stormeaters_boon,use_off_gcd=1,if=cooldown.metamorphosis.remains&(!talent.momentum||buff.momentum.remains>5)&(active_enemies>1||raid_event.adds.in>140)\nactions.cooldown+=/elysian_decree,if=(active_enemies>desired_targets||raid_event.adds.in>30)",
					["version"] = 20230603,
					["warnings"] = "The import for 'cooldown' required some automated changes.\nLine 1: Converted 'talent.misery_in_defeat' to 'talent.misery_in_defeat.enabled' (1x).\nLine 1: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 2: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 2: Converted 'talent.chaotic_transformation' to 'talent.chaotic_transformation.enabled' (1x).\nLine 3: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 3: Converted 'talent.chaotic_transformation' to 'talent.chaotic_transformation.enabled' (1x).\nLine 3: Converted 'talent.shattered_destiny' to 'talent.shattered_destiny.enabled' (1x).\nLine 5: Converted operations in '((buff.initiative.remains>2&debuff.essence_break.down&cooldown.essence_break.remains>gcd.max&time>14||time_to_die<10||time<1&!equipped.algethar_puzzle_box||boss&(fight_remains%%120<5))&!prev_gcd.1.essence_break)' to '((buff.initiative.remains>2&debuff.essence_break.down&cooldown.essence_break.remains>gcd.max&time>14||time_to_die<10||time<1&!equipped.algethar_puzzle_box||boss&(fight_remains%120<5))&!prev_gcd.1.essence_break)'.\nLine 6: Converted operations in 'cooldown.metamorphosis.remains<=gcd.max*5||boss&((fight_remains%%180>10)&(fight_remains%%180<22)||fight_remains<25)' to 'cooldown.metamorphosis.remains<=gcd.max*5||boss&((fight_remains%180>10)&(fight_remains%180<22)||fight_remains<25)'.\nLine 8: Converted 'trinket.1.has_stat.any_dps' to 'trinket.t1.has_stat.any_dps' (1x).\nLine 8: Converted 'trinket.2.has_stat.any_dps' to 'trinket.t2.has_stat.any_dps' (1x).\nLine 8: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 8: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 9: Converted 'trinket.2.has_stat.any_dps' to 'trinket.t2.has_stat.any_dps' (1x).\nLine 9: Converted 'trinket.1.has_stat.any_dps' to 'trinket.t1.has_stat.any_dps' (1x).\nLine 9: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 9: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 9: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 9: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 10: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 10: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 10: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready' (1x).\nLine 10: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready'.\nLine 10: Converted 'talent.initiative' to 'talent.initiative.enabled' (1x).\nLine 10: Converted operations in '(variable.trinket_sync_slot=1&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.t1.cooldown.duration%2))||boss&fight_remains<=20)||(variable.trinket_sync_slot=2&!trinket.t2.cooldown.ready)||!variable.trinket_sync_slot)&(!talent.initiative.enabled||buff.initiative.up)' to '(variable.trinket_sync_slot=1&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.t1.cooldown.duration/2))||boss&fight_remains<=20)||(variable.trinket_sync_slot=2&!trinket.t2.cooldown.ready)||!variable.trinket_sync_slot)&(!talent.initiative.enabled||buff.initiative.up)'.\nLine 11: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 11: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 11: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready' (1x).\nLine 11: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready'.\nLine 11: Converted 'talent.initiative' to 'talent.initiative.enabled' (1x).\nLine 11: Converted operations in '(variable.trinket_sync_slot=2&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.t2.cooldown.duration%2))||boss&fight_remains<=20)||(variable.trinket_sync_slot=1&!trinket.t1.cooldown.ready)||!variable.trinket_sync_slot)&(!talent.initiative.enabled||buff.initiative.up)' to '(variable.trinket_sync_slot=2&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.t2.cooldown.duration/2))||boss&fight_remains<=20)||(variable.trinket_sync_slot=1&!trinket.t1.cooldown.ready)||!variable.trinket_sync_slot)&(!talent.initiative.enabled||buff.initiative.up)'.\nLine 12: Converted 'talent.momentum' to 'talent.momentum.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 3: Converted 'talent.first_blood' to 'talent.first_blood.enabled' (1x).\nLine 3: Converted 'talent.trail_of_ruin' to 'talent.trail_of_ruin.enabled' (1x).\nLine 3: Converted 'talent.chaos_theory' to 'talent.chaos_theory.enabled' (1x).\nLine 4: Converted 'talent.demon_blades' to 'talent.demon_blades.enabled' (1x).\nLine 5: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 5: Converted 'talent.blind_fury' to 'talent.blind_fury.enabled' (1x).\nLine 6: Converted 'talent.momentum' to 'talent.momentum.enabled' (1x).\nLine 7: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 7: Converted 'talent.essence_break' to 'talent.essence_break.enabled' (1x).\nLine 7: Converted 'talent.shattered_destiny' to 'talent.shattered_destiny.enabled' (1x).\nLine 7: Converted 'talent.inner_demon' to 'talent.inner_demon.enabled' (1x).\nLine 8: Converted 'talent.ragefire' to 'talent.ragefire.enabled' (1x).\nLine 9: Converted 'talent.soulrend' to 'talent.soulrend.enabled' (1x).\nLine 9: Converted 'talent.furious_throws' to 'talent.furious_throws.enabled' (1x).\nLine 14: Converted 'talent.initiative' to 'talent.initiative.enabled' (1x).\nLine 14: Converted 'talent.essence_break' to 'talent.essence_break.enabled' (1x).\nLine 14: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 14: Converted 'talent.cycle_of_hatred' to 'talent.cycle_of_hatred.enabled' (1x).\nLine 14: Converted 'talent.any_means_necessary' to 'talent.any_means_necessary.enabled' (1x).\nLine 15: Converted 'talent.initiative' to 'talent.initiative.enabled' (1x).\nLine 15: Converted 'talent.essence_break' to 'talent.essence_break.enabled' (1x).\nLine 15: Converted 'talent.cycle_of_hatred' to 'talent.cycle_of_hatred.enabled' (1x).\nLine 15: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 15: Converted 'talent.cycle_of_hatred' to 'talent.cycle_of_hatred.enabled' (1x).\nLine 15: Converted 'talent.any_means_necessary' to 'talent.any_means_necessary.enabled' (1x).\nLine 16: Converted 'talent.initiative' to 'talent.initiative.enabled' (1x).\nLine 16: Converted 'talent.essence_break' to 'talent.essence_break.enabled' (1x).\nLine 18: Converted 'talent.tactical_retreat' to 'talent.tactical_retreat.enabled' (1x).\nLine 19: Converted 'talent.essence_break' to 'talent.essence_break.enabled' (1x).\nLine 25: Converted 'talent.serrated_glaive' to 'talent.serrated_glaive.enabled' (1x).\nLine 26: Converted 'talent.cycle_of_hatred' to 'talent.cycle_of_hatred.enabled' (1x).\nLine 26: Converted 'talent.cycle_of_hatred' to 'talent.cycle_of_hatred.enabled' (1x).\nLine 26: Converted 'talent.restless_hunter' to 'talent.restless_hunter.enabled' (1x).\nLine 27: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 28: Converted 'talent.any_means_necessary' to 'talent.any_means_necessary.enabled' (1x).\nLine 29: Converted 'talent.soulrend' to 'talent.soulrend.enabled' (1x).\nLine 29: Converted 'talent.furious_throws' to 'talent.furious_throws.enabled' (1x).\nLine 31: Converted 'talent.any_means_necessary' to 'talent.any_means_necessary.enabled' (1x).\nLine 33: Converted 'talent.soulrend' to 'talent.soulrend.enabled' (1x).\nLine 33: Converted 'talent.furious_throws' to 'talent.furious_throws.enabled' (1x).\nLine 34: Converted 'talent.ragefire' to 'talent.ragefire.enabled' (1x).\nLine 35: Converted 'talent.isolated_prey' to 'talent.isolated_prey.enabled' (1x).\nLine 39: Converted 'talent.momentum' to 'talent.momentum.enabled' (1x).\nLine 39: Converted 'talent.demon_blades' to 'talent.demon_blades.enabled' (1x).\nLine 40: Converted 'talent.burning_wound' to 'talent.burning_wound.enabled' (1x).\nLine 41: Converted 'talent.momentum' to 'talent.momentum.enabled' (1x).\nLine 41: Converted 'talent.demon_blades' to 'talent.demon_blades.enabled' (1x).\nLine 44: Converted 'talent.momentum' to 'talent.momentum.enabled' (1x).\nLine 45: Converted 'talent.initiative' to 'talent.initiative.enabled' (1x).\nLine 46: Converted 'talent.demon_blades' to 'talent.demon_blades.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 1: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 1: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\n\nImported 4 action lists.\n",
					["lists"] = {
						["meta_end"] = {
							{
								["action"] = "death_sweep",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "annihilation",
								["enabled"] = true,
							}, -- [2]
						},
						["default"] = {
							{
								["action"] = "disrupt",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "consume_magic",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.first_blood.enabled || talent.trail_of_ruin.enabled || talent.chaos_theory.enabled & buff.chaos_theory.down || spell_targets.blade_dance1 > 1",
								["description"] = "Blade Dance with First Blood, Trail of Ruin, or at 2+ targets",
								["var_name"] = "blade_dance",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.blade_dance & fury < ( 75 - talent.demon_blades.enabled * 20 ) & cooldown.blade_dance.remains < gcd.max",
								["var_name"] = "pooling_for_blade_dance",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.demonic.enabled & ! talent.blind_fury.enabled & cooldown.eye_beam.remains < ( gcd.max * 2 ) & fury.deficit > 20",
								["var_name"] = "pooling_for_eye_beam",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.momentum.enabled & ! buff.momentum.up & ! ( action.fel_rush.disabled & action.vengeful_retreat.disabled )",
								["var_name"] = "waiting_for_momentum",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( talent.demonic.enabled & talent.essence_break.enabled ) & variable.three_min_trinket & fight_remains > cooldown.metamorphosis.remains + 30 + talent.shattered_destiny.enabled * 60 & cooldown.metamorphosis.remains < 20 & cooldown.metamorphosis.remains > action.eye_beam.execute_time + gcd.max * ( talent.inner_demon.enabled + 2 )",
								["var_name"] = "holding_meta",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.ragefire.enabled & active_enemies >= 3 & ( cooldown.blade_dance.remains || debuff.essence_break.down )",
								["action"] = "immolation_aura",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.soulrend.enabled & talent.furious_throws.enabled & active_enemies >= 3 & time < 1",
								["action"] = "throw_glaive",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.unbound_chaos.up & ( buff.unbound_chaos.remains < gcd.max * 2 || target.time_to_die < gcd.max * 2 )",
								["action"] = "fel_rush",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldown",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.metamorphosis.up & buff.metamorphosis.remains < gcd.max & active_enemies < 3",
								["action"] = "call_action_list",
								["list_name"] = "meta_end",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.inner_demon.up & cooldown.metamorphosis.remains <= gcd.max * 3",
								["action"] = "annihilation",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.initiative.enabled & talent.essence_break.enabled & time > 1 & ( cooldown.essence_break.remains > 15 || cooldown.essence_break.remains < gcd.max & ( ! talent.demonic.enabled || buff.metamorphosis.up || cooldown.eye_beam.remains > 15 + ( 10 * talent.cycle_of_hatred.enabled ) ) ) & ( time < 30 || gcd.remains < 1 ) & ! talent.any_means_necessary.enabled",
								["action"] = "vengeful_retreat",
								["use_off_gcd"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.initiative.enabled & talent.essence_break.enabled & time > 1 & ( cooldown.essence_break.remains > 15 || cooldown.essence_break.remains < gcd.max * 2 & ( buff.initiative.remains < gcd.max & ! variable.holding_meta & cooldown.eye_beam.remains <= gcd.remains & ( raid_event.adds.in > ( 40 - talent.cycle_of_hatred.enabled * 15 ) ) & fury > 30 || ! talent.demonic.enabled || buff.metamorphosis.up || cooldown.eye_beam.remains > 15 + ( 10 * talent.cycle_of_hatred.enabled ) ) ) & talent.any_means_necessary.enabled",
								["action"] = "vengeful_retreat",
								["use_off_gcd"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.initiative.enabled & ! talent.essence_break.enabled & time > 1 & ! buff.momentum.up",
								["action"] = "vengeful_retreat",
								["use_off_gcd"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "talent.momentum.enabled & buff.momentum.remains < gcd.max * 2 & ( charges_fractional > 1.8 || cooldown.eye_beam.remains < 3 ) & debuff.essence_break.down",
								["action"] = "fel_rush",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies > desired_targets || raid_event.adds.in > 40 ) & ! variable.waiting_for_momentum & buff.metamorphosis.up & ( ! talent.tactical_retreat.enabled || buff.tactical_retreat.up || action.vengeful_retreat.disabled ) || boss & fight_remains < 6",
								["action"] = "essence_break",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_dance & ( ! talent.essence_break.enabled || cooldown.essence_break.remains > ( cooldown.death_sweep.duration - 4 ) )",
								["action"] = "death_sweep",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || raid_event.adds.in > 30",
								["action"] = "fel_barrage",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || raid_event.adds.in > 10 & ( debuff.essence_break.down || active_enemies > 1 )",
								["action"] = "glaive_tempest",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.inner_demon.up & cooldown.eye_beam.remains <= gcd.max",
								["action"] = "annihilation",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.momentum.enabled & cooldown.eye_beam.remains < gcd.max * 3 & buff.momentum.remains < 5 & buff.metamorphosis.down",
								["action"] = "fel_rush",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "debuff.essence_break.down & ( time < 10 || cooldown.metamorphosis.remains > 10 || ! equipped.algethar_puzzle_box ) & ( raid_event.adds.in > 90 || active_enemies > 3 || time_to_die < 10 ) & ( time > 8 & debuff.essence_break.down || ! set_bonus.tier30_2pc )",
								["action"] = "the_hunt",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "talent.serrated_glaive.enabled & cooldown.eye_beam.remains < 6 & ! debuff.serrated_glaive.up & ! debuff.essence_break.up & cooldown.blade_dance.remains",
								["action"] = "throw_glaive",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || raid_event.adds.in > ( 40 - talent.cycle_of_hatred.enabled * 15 ) & ! debuff.essence_break.up & ( cooldown.metamorphosis.remains > 40 - talent.cycle_of_hatred.enabled * 15 || ! variable.holding_meta ) & ( buff.metamorphosis.down || buff.metamorphosis.remains > gcd.max || ! talent.restless_hunter.enabled ) & ( buff.metamorphosis.down || cooldown.blade_dance.remains > gcd.max ) || fight_remains < 15",
								["action"] = "eye_beam",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_dance & ( cooldown.eye_beam.remains > 5 || equipped.algethar_puzzle_box & cooldown.metamorphosis.remains > ( cooldown.blade_dance.duration ) || ! talent.demonic.enabled || ( raid_event.adds.in > action_cooldown & raid_event.adds.in < 25 ) )",
								["action"] = "blade_dance",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "talent.any_means_necessary.enabled & debuff.essence_break.down & active_enemies >= 4",
								["action"] = "sigil_of_flame",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "talent.soulrend.enabled & ( active_enemies > desired_targets || raid_event.adds.in > full_recharge_time + 9 ) & spell_targets >= ( 2 - talent.furious_throws.enabled ) & ! debuff.essence_break.up & ( full_recharge_time < gcd.max * 3 || active_enemies > 1 )",
								["action"] = "throw_glaive",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "fury < 70 & debuff.essence_break.down & time_to_die > 3",
								["action"] = "immolation_aura",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "talent.any_means_necessary.enabled & debuff.essence_break.down",
								["action"] = "sigil_of_flame",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_for_blade_dance",
								["action"] = "annihilation",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "talent.soulrend.enabled & ( active_enemies > desired_targets || raid_event.adds.in > full_recharge_time + 9 ) & spell_targets >= ( 2 - talent.furious_throws.enabled ) & ! debuff.essence_break.up",
								["action"] = "throw_glaive",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "! buff.immolation_aura.up & ( ! talent.ragefire.enabled || active_enemies > desired_targets || raid_event.adds.in > 15 )",
								["action"] = "immolation_aura",
							}, -- [34]
							{
								["enabled"] = true,
								["criteria"] = "talent.isolated_prey.enabled & active_enemies = 1 & fury.deficit >= 35",
								["action"] = "fel_rush",
							}, -- [35]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_for_blade_dance & ! variable.pooling_for_eye_beam",
								["action"] = "chaos_strike",
							}, -- [36]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 15 & fury.deficit >= 30",
								["action"] = "sigil_of_flame",
							}, -- [37]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 40",
								["action"] = "felblade",
							}, -- [38]
							{
								["enabled"] = true,
								["criteria"] = "settings.fel_rush_filler & ! talent.momentum.enabled & talent.demon_blades.enabled & ! cooldown.eye_beam.ready & ( charges = 2 || ( raid_event.movement.in > 10 & raid_event.adds.in > 10 ) )",
								["action"] = "fel_rush",
							}, -- [39]
							{
								["enabled"] = true,
								["action"] = "demons_bite",
								["criteria"] = "talent.burning_wound.enabled & debuff.burning_wound.remains < 4 & active_dot.burning_wound < ( spell_targets >? 3 )",
								["cycle_targets"] = 1,
							}, -- [40]
							{
								["enabled"] = true,
								["criteria"] = "settings.fel_rush_filler & ! talent.momentum.enabled & ! talent.demon_blades.enabled & spell_targets > 1 & ( charges = 2 || ( raid_event.movement.in > 10 & raid_event.adds.in > 10 ) )",
								["action"] = "fel_rush",
							}, -- [41]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 15 & fury.deficit >= 30",
								["action"] = "sigil_of_flame",
							}, -- [42]
							{
								["action"] = "demons_bite",
								["enabled"] = true,
							}, -- [43]
							{
								["enabled"] = true,
								["criteria"] = "settings.fel_rush_filler & ( movement.distance > 15 || ( buff.out_of_range.up & ! talent.momentum.enabled ) )",
								["action"] = "fel_rush",
							}, -- [44]
							{
								["enabled"] = true,
								["criteria"] = "settings.retreat_filler & ! talent.initiative.enabled & movement.distance > 15",
								["action"] = "vengeful_retreat",
							}, -- [45]
							{
								["enabled"] = true,
								["criteria"] = "( talent.demon_blades.enabled || buff.out_of_range.up ) & ! debuff.essence_break.up",
								["action"] = "throw_glaive",
							}, -- [46]
							{
								["enabled"] = true,
								["action"] = "dragonfire_bomb_dispenser",
								["use_off_gcd"] = 1,
								["name"] = "dragonfire_bomb_dispenser",
								["criteria"] = "fight_remains < 20 || charges = 3 || cooldown.vengeful_retreat.remains < 5",
							}, -- [47]
							{
								["enabled"] = true,
								["action"] = "elementium_pocket_anvil",
								["name"] = "elementium_pocket_anvil",
								["use_off_gcd"] = 1,
							}, -- [48]
						},
						["cooldown"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.misery_in_defeat.enabled & ! target.is_boss & target.time_to_die > 10 & ( cooldown.metamorphosis.remains < 6 || talent.demonic.enabled & cooldown.eye_beam.remains < 6 || buff.metamorphosis.remains > 10 )",
								["action"] = "sigil_of_misery",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Cast Metamorphosis if we will get a full Eye Beam refresh or if the encounter is almost over",
								["criteria"] = "! talent.demonic.enabled & ( ( ! talent.chaotic_transformation.enabled || cooldown.eye_beam.remains > 20 ) & active_enemies > desired_targets || raid_event.adds.in > 60 || boss & fight_remains < 25 )",
								["action"] = "metamorphosis",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.demonic.enabled & ( ! talent.chaotic_transformation.enabled || cooldown.eye_beam.remains > 20 & ( ! variable.blade_dance || cooldown.blade_dance.remains > gcd.max ) || boss & fight_remains < 25 + talent.shattered_destiny.enabled * 70 & cooldown.eye_beam.remains & cooldown.blade_dance.remains )",
								["action"] = "metamorphosis",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.metamorphosis.remains > 25 || buff.metamorphosis.up & cooldown.metamorphosis.ready || boss & fight_remains < 60 || time > 0.1 & time < 10",
								["action"] = "potion",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "manic_grieftorch",
								["use_off_gcd"] = 1,
								["name"] = "manic_grieftorch",
								["criteria"] = "( ( buff.initiative.remains > 2 & debuff.essence_break.down & cooldown.essence_break.remains > gcd.max & time > 14 || time_to_die < 10 || time < 1 & ! equipped.algethar_puzzle_box || boss & ( fight_remains % 120 < 5 ) ) & ! prev_gcd.1.essence_break )",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "algethar_puzzle_box",
								["use_off_gcd"] = 1,
								["name"] = "algethar_puzzle_box",
								["criteria"] = "cooldown.metamorphosis.remains <= gcd.max * 5 || boss & ( ( fight_remains % 180 > 10 ) & ( fight_remains % 180 < 22 ) || fight_remains < 25 )",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies > desired_targets || raid_event.adds.in > 30 )",
								["action"] = "elysian_decree",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "trinket.t1.has_stat.any_dps & ( ! trinket.t2.has_stat.any_dps || trinket.t1.cooldown.duration >= trinket.t2.cooldown.duration )",
								["var_name"] = "trinket_sync_slot",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "2",
								["criteria"] = "trinket.t2.has_stat.any_dps & ( ! trinket.t1.has_stat.any_dps || trinket.t2.cooldown.duration > trinket.t1.cooldown.duration )",
								["var_name"] = "trinket_sync_slot",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( variable.trinket_sync_slot = 1 & ( buff.metamorphosis.up || ( ! talent.demonic.enabled & cooldown.metamorphosis.remains > ( fight_remains >? trinket.t1.cooldown.duration / 2 ) ) || boss & fight_remains <= 20 ) || ( variable.trinket_sync_slot = 2 & ! trinket.t2.cooldown.ready ) || ! variable.trinket_sync_slot ) & ( ! talent.initiative.enabled || buff.initiative.up )",
								["description"] = "Default use item logic",
								["slots"] = "trinket1",
								["action"] = "trinket1",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( variable.trinket_sync_slot = 2 & ( buff.metamorphosis.up || ( ! talent.demonic.enabled & cooldown.metamorphosis.remains > ( fight_remains >? trinket.t2.cooldown.duration / 2 ) ) || boss & fight_remains <= 20 ) || ( variable.trinket_sync_slot = 1 & ! trinket.t1.cooldown.ready ) || ! variable.trinket_sync_slot ) & ( ! talent.initiative.enabled || buff.initiative.up )",
								["slots"] = "trinket2",
								["action"] = "trinket2",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "stormeaters_boon",
								["use_off_gcd"] = 1,
								["name"] = "stormeaters_boon",
								["criteria"] = "cooldown.metamorphosis.remains & ( ! talent.momentum.enabled || buff.momentum.remains > 5 ) & ( active_enemies > 1 || raid_event.adds.in > 140 )",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies > desired_targets || raid_event.adds.in > 30 )",
								["action"] = "elysian_decree",
							}, -- [13]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.cooldown.duration = 180 || trinket.t2.cooldown.duration = 180",
								["var_name"] = "three_min_trinket",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit > 15",
								["action"] = "arcane_torrent",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.metamorphosis.remains < 5",
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! equipped.algethar_puzzle_box",
								["action"] = "sigil_of_flame",
							}, -- [4]
							{
								["action"] = "immolation_aura",
								["enabled"] = true,
							}, -- [5]
						},
					},
					["author"] = "SimC",
				},
				["Protection Warrior"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230528,
					["spec"] = 73,
					["desc"] = "2023-05-28:  Update to Shield Slam usage in AOE.\n\n2023-05-20:  Shield Wall minor update.\n\n2023-05-08:  Add additional Execute in single-target if Rage is 50+ (still impacted by Reserve Rage for Mitigation option).\n\n2023-04-30:  2nd minor update.\n\n2023-04-26:  Minor update from SimulationCraft for 10.1.\n\n2023-03-26:  Shift Shield Charge and Charge above Pummel and Spell Reflection.",
					["profile"] = "actions.precombat+=/defensive_stance,if=buff.stance.down\nactions.precombat+=/battle_shout\nactions.precombat+=/use_item,name=algethar_puzzle_box\nactions.precombat+=/avatar,if=!talent.titans_torment\nactions.precombat+=/recklessness,if=!talent.reckless_abandon\n\n# Executed every time the actor is available.\nactions+=/shield_charge,if=time=0\nactions+=/charge,if=time=0\nactions+=/pummel\nactions+=/spell_reflection\nactions+=/use_items\nactions+=/avatar\n# Usage of Shield Wall is governed by specialization settings; see /hekili > Protection.\nactions+=/shield_wall,if=talent.immovable_object.enabled&buff.avatar.down\nactions+=/blood_fury\nactions+=/berserking\nactions+=/arcane_torrent\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/potion,if=buff.avatar.up\nactions+=/ignore_pain,if=target.health.pct>=20&(rage.deficit<=15&cooldown.shield_slam.ready||rage.deficit<=40&cooldown.shield_charge.ready&talent.champions_bulwark.enabled||rage.deficit<=20&cooldown.shield_charge.ready||rage.deficit<=30&cooldown.demoralizing_shout.ready&talent.booming_voice.enabled||rage.deficit<=20&cooldown.avatar.ready||rage.deficit<=45&cooldown.demoralizing_shout.ready&talent.booming_voice.enabled&buff.last_stand.up&talent.unnerving_focus.enabled||rage.deficit<=30&cooldown.avatar.ready&buff.last_stand.up&talent.unnerving_focus.enabled||rage.deficit<=20||rage.deficit<=40&cooldown.shield_slam.ready&buff.violent_outburst.up&talent.heavy_repercussions.enabled&talent.impenetrable_wall.enabled||rage.deficit<=55&cooldown.shield_slam.ready&buff.violent_outburst.up&buff.last_stand.up&talent.unnerving_focus.enabled&talent.heavy_repercussions.enabled&talent.impenetrable_wall.enabled||rage.deficit<=17&cooldown.shield_slam.ready&talent.heavy_repercussions.enabled||rage.deficit<=18&cooldown.shield_slam.ready&talent.impenetrable_wall.enabled),use_off_gcd=1\n# Usage of Last Stand is also governed by specialization settings; see /hekili > Protection.\nactions+=/last_stand,if=talent.unnerving_focus&(target.health.pct>=90||target.health.pct<=20)||talent.bolster&buff.shield_block.down||!talent.bolster&!talent.unnerving_focus||set_bonus.tier30_2pc>0\n# Usage of Rallying Cry is governed by specialization settings; see /hekili > Protection.\nactions+=/rallying_cry\nactions+=/ravager\nactions+=/demoralizing_shout,if=talent.booming_voice.enabled\nactions+=/spear_of_bastion\nactions+=/thunderous_roar\nactions+=/shockwave,if=talent.sonic_boom.enabled&buff.avatar.up&talent.unstoppable_force.enabled&!talent.rumbling_earth.enabled\nactions+=/shield_charge\nactions+=/shield_block,if=buff.shield_block.duration<=18&talent.enduring_defenses.enabled||buff.shield_block.duration<=12\nactions+=/run_action_list,name=aoe,strict=1,if=spell_targets.thunder_clap>=3\nactions+=/call_action_list,name=generic\n\nactions.aoe+=/thunder_clap,if=dot.rend.remains<=1&talent.blood_and_thunder&talent.rend\nactions.aoe+=/shield_slam,if=(set_bonus.tier30_2pc||set_bonus.tier30_4pc)&spell_targets.thunder_clap<=7||buff.earthen_tenacity.up\nactions.aoe+=/thunder_clap,if=buff.violent_outburst.up&spell_targets.thunderclap>5&buff.avatar.up&talent.unstoppable_force.enabled\nactions.aoe+=/revenge,if=rage>=70&talent.seismic_reverberation.enabled&spell_targets.revenge>=3\nactions.aoe+=/shield_slam,if=rage<=60||buff.violent_outburst.up&spell_targets.thunderclap<=7\nactions.aoe+=/thunder_clap\nactions.aoe+=/revenge,if=rage>=30||rage>=40&talent.barbaric_training.enabled\n\nactions.generic=shield_slam\nactions.generic+=/thunder_clap,if=dot.rend.remains<=1&buff.violent_outburst.down\nactions.generic+=/execute,if=buff.sudden_death.up&talent.sudden_death.enabled\nactions.generic+=/execute,if=spell_targets.revenge=1&rage>=50\nactions.generic+=/thunder_clap,if=(spell_targets.thunder_clap>1||cooldown.shield_slam.remains&!buff.violent_outburst.up)\nactions.generic+=/revenge,if=(rage>=60&target.health.pct>20||buff.revenge.up&target.health.pct<=20&rage<=18&cooldown.shield_slam.remains||buff.revenge.up&target.health.pct>20)||(rage>=60&target.health.pct>35||buff.revenge.up&target.health.pct<=35&rage<=18&cooldown.shield_slam.remains||buff.revenge.up&target.health.pct>35)&talent.massacre.enabled\nactions.generic+=/execute,if=spell_targets.revenge=1\nactions.generic+=/revenge\nactions.generic+=/thunder_clap,if=(spell_targets.thunder_clap>=1||cooldown.shield_slam.remains&buff.violent_outburst.up)\nactions.generic+=/devastate",
					["version"] = 20230528,
					["warnings"] = "The import for 'aoe' required some automated changes.\nLine 1: Converted 'talent.blood_and_thunder' to 'talent.blood_and_thunder.enabled' (1x).\nLine 1: Converted 'talent.rend' to 'talent.rend.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 17: Converted 'talent.unnerving_focus' to 'talent.unnerving_focus.enabled' (1x).\nLine 17: Converted 'talent.bolster' to 'talent.bolster.enabled' (1x).\nLine 17: Converted 'talent.bolster' to 'talent.bolster.enabled' (1x).\nLine 17: Converted 'talent.unnerving_focus' to 'talent.unnerving_focus.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 4: Converted 'talent.titans_torment' to 'talent.titans_torment.enabled' (1x).\nLine 5: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\n\nImported 4 action lists.\n",
					["author"] = "SimulationCraft",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "dot.rend.remains <= 1 & talent.blood_and_thunder.enabled & talent.rend.enabled",
								["action"] = "thunder_clap",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( set_bonus.tier30_2pc || set_bonus.tier30_4pc ) & spell_targets.thunder_clap <= 7 || buff.earthen_tenacity.up",
								["action"] = "shield_slam",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.violent_outburst.up & spell_targets.thunderclap > 5 & buff.avatar.up & talent.unstoppable_force.enabled",
								["action"] = "thunder_clap",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "rage >= 70 & talent.seismic_reverberation.enabled & spell_targets.revenge >= 3",
								["action"] = "revenge",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "rage <= 60 || buff.violent_outburst.up & spell_targets.thunderclap <= 7",
								["action"] = "shield_slam",
							}, -- [5]
							{
								["action"] = "thunder_clap",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "rage >= 30 || rage >= 40 & talent.barbaric_training.enabled",
								["action"] = "revenge",
							}, -- [7]
						},
						["generic"] = {
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "dot.rend.remains <= 1 & buff.violent_outburst.down",
								["action"] = "thunder_clap",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_death.up & talent.sudden_death.enabled",
								["action"] = "execute",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.revenge = 1 & rage >= 50",
								["action"] = "execute",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.thunder_clap > 1 || cooldown.shield_slam.remains & ! buff.violent_outburst.up )",
								["action"] = "thunder_clap",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( rage >= 60 & target.health.pct > 20 || buff.revenge.up & target.health.pct <= 20 & rage <= 18 & cooldown.shield_slam.remains || buff.revenge.up & target.health.pct > 20 ) || ( rage >= 60 & target.health.pct > 35 || buff.revenge.up & target.health.pct <= 35 & rage <= 18 & cooldown.shield_slam.remains || buff.revenge.up & target.health.pct > 35 ) & talent.massacre.enabled",
								["action"] = "revenge",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.revenge = 1",
								["action"] = "execute",
							}, -- [7]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.thunder_clap >= 1 || cooldown.shield_slam.remains & buff.violent_outburst.up )",
								["action"] = "thunder_clap",
							}, -- [9]
							{
								["action"] = "devastate",
								["enabled"] = true,
							}, -- [10]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "shield_charge",
								["description"] = "Executed every time the actor is available.",
								["criteria"] = "time = 0",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "time = 0",
								["action"] = "charge",
							}, -- [2]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "spell_reflection",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "avatar",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "shield_wall",
								["description"] = "Usage of Shield Wall is governed by specialization settings, see /hekili > Protection.",
								["criteria"] = "talent.immovable_object.enabled & buff.avatar.down",
							}, -- [7]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.avatar.up",
								["action"] = "potion",
							}, -- [15]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "target.health.pct >= 20 & ( rage.deficit <= 15 & cooldown.shield_slam.ready || rage.deficit <= 40 & cooldown.shield_charge.ready & talent.champions_bulwark.enabled || rage.deficit <= 20 & cooldown.shield_charge.ready || rage.deficit <= 30 & cooldown.demoralizing_shout.ready & talent.booming_voice.enabled || rage.deficit <= 20 & cooldown.avatar.ready || rage.deficit <= 45 & cooldown.demoralizing_shout.ready & talent.booming_voice.enabled & buff.last_stand.up & talent.unnerving_focus.enabled || rage.deficit <= 30 & cooldown.avatar.ready & buff.last_stand.up & talent.unnerving_focus.enabled || rage.deficit <= 20 || rage.deficit <= 40 & cooldown.shield_slam.ready & buff.violent_outburst.up & talent.heavy_repercussions.enabled & talent.impenetrable_wall.enabled || rage.deficit <= 55 & cooldown.shield_slam.ready & buff.violent_outburst.up & buff.last_stand.up & talent.unnerving_focus.enabled & talent.heavy_repercussions.enabled & talent.impenetrable_wall.enabled || rage.deficit <= 17 & cooldown.shield_slam.ready & talent.heavy_repercussions.enabled || rage.deficit <= 18 & cooldown.shield_slam.ready & talent.impenetrable_wall.enabled )",
								["action"] = "ignore_pain",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "last_stand",
								["description"] = "Usage of Last Stand is also governed by specialization settings, see /hekili > Protection.",
								["criteria"] = "talent.unnerving_focus.enabled & ( target.health.pct >= 90 || target.health.pct <= 20 ) || talent.bolster.enabled & buff.shield_block.down || ! talent.bolster.enabled & ! talent.unnerving_focus.enabled || set_bonus.tier30_2pc > 0",
							}, -- [17]
							{
								["enabled"] = true,
								["description"] = "Usage of Rallying Cry is governed by specialization settings, see /hekili > Protection.",
								["action"] = "rallying_cry",
							}, -- [18]
							{
								["action"] = "ravager",
								["enabled"] = true,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "talent.booming_voice.enabled",
								["action"] = "demoralizing_shout",
							}, -- [20]
							{
								["action"] = "spear_of_bastion",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "thunderous_roar",
								["enabled"] = true,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.sonic_boom.enabled & buff.avatar.up & talent.unstoppable_force.enabled & ! talent.rumbling_earth.enabled",
								["action"] = "shockwave",
							}, -- [23]
							{
								["action"] = "shield_charge",
								["enabled"] = true,
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "buff.shield_block.duration <= 18 & talent.enduring_defenses.enabled || buff.shield_block.duration <= 12",
								["action"] = "shield_block",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "spell_targets.thunder_clap >= 3",
								["list_name"] = "aoe",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "generic",
							}, -- [27]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.stance.down",
								["action"] = "defensive_stance",
							}, -- [1]
							{
								["action"] = "battle_shout",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! talent.titans_torment.enabled",
								["action"] = "avatar",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.reckless_abandon.enabled",
								["action"] = "recklessness",
							}, -- [5]
						},
					},
				},
				["Fury"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230520,
					["author"] = "SimC",
					["desc"] = "2023-05-20:  Trinket/CD update.\n\n2023-05-14:  Add slider for Tier 30 crit % setting.\n\n2023-05-04:  Updates related to Tier 30.\n\n2023-05-02:  Update for 10.1.\n\n2023-03-26:  Include Spell Reflection; remove Heroic Leap.",
					["profile"] = "actions.precombat+=/berserker_stance\nactions.precombat+=/battle_shout\nactions.precombat+=/algethar_puzzle_box\nactions.precombat+=/avatar,if=!talent.titans_torment\nactions.precombat+=/recklessness,if=!talent.reckless_abandon\n\nactions+=/charge,if=time<=0.5||movement.distance>5\n## actions+=/heroic_leap,if=(raid_event.movement.distance>25&raid_event.movement.in>45)\nactions+=/pummel\nactions+=/spell_reflection\nactions+=/potion\nactions+=/algethar_puzzle_box,if=cooldown.recklessness.remains<3||(talent.anger_management&cooldown.avatar.remains<3)\nactions+=/vial_of_animated_blood,if=buff.avatar.up\nactions+=/irideus_fragment,if=buff.avatar.up\nactions+=/manic_grieftorch,if=buff.avatar.down\nactions+=/gladiators_badge,if=cooldown.recklessness.remains>10&(buff.recklessness.up||target.time_to_die<11||target.time_to_die>65)\nactions+=/use_items\nactions+=/ravager,if=cooldown.recklessness.remains<3||buff.recklessness.up\nactions+=/lights_judgment,if=buff.recklessness.down\nactions+=/berserking,if=buff.recklessness.up\nactions+=/blood_fury\nactions+=/fireblood\nactions+=/ancestral_call\n## actions+=/bag_of_tricks,if=buff.recklessness.down&buff.enrage.up\nactions+=/avatar,if=talent.titans_torment&buff.enrage.up&raid_event.adds.in>15||talent.berserkers_torment&buff.enrage.up&!buff.avatar.up&raid_event.adds.in>15||!talent.titans_torment&!talent.berserkers_torment&(buff.recklessness.up||boss&fight_remains<20)\nactions+=/recklessness,if=!raid_event.adds.exists&(talent.annihilator&cooldown.avatar.remains<1||cooldown.avatar.remains>40||!talent.avatar||target.time_to_die<12)\nactions+=/recklessness,if=!raid_event.adds.exists&!talent.annihilator||boss&fight_remains<12\nactions+=/spear_of_bastion,if=buff.enrage.up&(buff.recklessness.up||buff.avatar.up||boss&fight_remains<20||active_enemies>1)&raid_event.adds.in>15\nactions+=/call_action_list,name=multi_target,strict=1,if=active_enemies>2\nactions+=/call_action_list,name=single_target\n\nactions.multi_target+=/recklessness,if=raid_event.adds.in>15||active_enemies>1||boss&fight_remains<12\nactions.multi_target+=/odyns_fury,if=active_enemies>1&talent.titanic_rage&(!buff.meat_cleaver.up||buff.avatar.up||buff.recklessness.up)\nactions.multi_target+=/whirlwind,if=spell_targets.whirlwind>1&talent.improved_whirlwind&!buff.meat_cleaver.up||raid_event.adds.in<2&talent.improved_whirlwind&!buff.meat_cleaver.up\nactions.multi_target+=/execute,if=buff.ashen_juggernaut.up&buff.ashen_juggernaut.remains<gcd\nactions.multi_target+=/thunderous_roar,if=buff.enrage.up&(spell_targets.whirlwind>1||raid_event.adds.in>15)\nactions.multi_target+=/odyns_fury,if=active_enemies>1&buff.enrage.up&raid_event.adds.in>15\nactions.multi_target+=/bloodbath,if=set_bonus.tier30_4pc&action.bloodthirst.crit_pct_current>=bloodthirst_crit_threshold\nactions.multi_target+=/bloodthirst,if=set_bonus.tier30_4pc&action.bloodthirst.crit_pct_current>=bloodthirst_crit_threshold\nactions.multi_target+=/crushing_blow,if=talent.wrath_and_fury&buff.enrage.up\nactions.multi_target+=/execute,if=buff.enrage.up\nactions.multi_target+=/odyns_fury,if=buff.enrage.up&raid_event.adds.in>15\nactions.multi_target+=/rampage,if=buff.recklessness.up||buff.enrage.remains<gcd||(rage>110&talent.overwhelming_rage)||(rage>80&!talent.overwhelming_rage)\nactions.multi_target+=/execute\nactions.multi_target+=/bloodbath,if=buff.enrage.up&talent.reckless_abandon&!talent.wrath_and_fury\nactions.multi_target+=/bloodthirst,if=buff.enrage.down||(talent.annihilator&!buff.recklessness.up)\nactions.multi_target+=/onslaught,if=!talent.annihilator&buff.enrage.up||talent.tenderize\nactions.multi_target+=/raging_blow,if=charges>1&talent.wrath_and_fury\nactions.multi_target+=/crushing_blow,if=charges>1&talent.wrath_and_fury\nactions.multi_target+=/bloodbath,if=buff.enrage.down||!talent.wrath_and_fury\nactions.multi_target+=/crushing_blow,if=buff.enrage.up&talent.reckless_abandon\nactions.multi_target+=/bloodthirst,if=!talent.wrath_and_fury\nactions.multi_target+=/raging_blow,if=charges>=1\nactions.multi_target+=/rampage\nactions.multi_target+=/slam,if=talent.annihilator\nactions.multi_target+=/bloodbath\nactions.multi_target+=/raging_blow\nactions.multi_target+=/crushing_blow\nactions.multi_target+=/whirlwind\n\nactions.single_target+=/whirlwind,if=spell_targets.whirlwind>1&talent.improved_whirlwind&!buff.meat_cleaver.up||raid_event.adds.in<2&talent.improved_whirlwind&!buff.meat_cleaver.up\nactions.single_target+=/execute,if=buff.ashen_juggernaut.up&buff.ashen_juggernaut.remains<gcd\nactions.single_target+=/thunderous_roar,if=buff.enrage.up&(spell_targets.whirlwind>1||raid_event.adds.in>15)\nactions.single_target+=/odyns_fury,if=buff.enrage.up&(spell_targets.whirlwind>1||raid_event.adds.in>15)&(talent.dancing_blades&buff.dancing_blades.remains<5||!talent.dancing_blades)\nactions.single_target+=/rampage,if=talent.anger_management&(buff.recklessness.up||buff.enrage.remains<gcd||rage.pct>85)\nactions.single_target+=/bloodbath,if=set_bonus.tier30_4pc&action.bloodthirst.crit_pct_current>=bloodthirst_crit_threshold\nactions.single_target+=/bloodthirst,if=set_bonus.tier30_4pc&action.bloodthirst.crit_pct_current>=bloodthirst_crit_threshold\nactions.single_target+=/execute,if=buff.enrage.up\nactions.single_target+=/onslaught,if=buff.enrage.up||talent.tenderize\nactions.single_target+=/crushing_blow,if=talent.wrath_and_fury&buff.enrage.up\nactions.single_target+=/rampage,if=talent.reckless_abandon&(buff.recklessness.up||buff.enrage.remains<gcd||rage.pct>85)\nactions.single_target+=/rampage,if=talent.anger_management\nactions.single_target+=/execute\nactions.single_target+=/bloodbath,if=buff.enrage.up&talent.reckless_abandon&!talent.wrath_and_fury\nactions.single_target+=/bloodthirst,if=buff.enrage.down||(talent.annihilator&!buff.recklessness.up)\nactions.single_target+=/raging_blow,if=charges>1&talent.wrath_and_fury\nactions.single_target+=/crushing_blow,if=charges>1&talent.wrath_and_fury\nactions.single_target+=/bloodbath,if=buff.enrage.down||!talent.wrath_and_fury\nactions.single_target+=/crushing_blow,if=buff.enrage.up&talent.reckless_abandon\nactions.single_target+=/bloodthirst,if=!talent.wrath_and_fury\nactions.single_target+=/raging_blow,if=charges>1\nactions.single_target+=/rampage\nactions.single_target+=/slam,if=talent.annihilator\nactions.single_target+=/bloodbath\nactions.single_target+=/raging_blow\nactions.single_target+=/crushing_blow\nactions.single_target+=/bloodthirst\nactions.single_target+=/whirlwind\nactions.single_target+=/wrecking_throw\nactions.single_target+=/storm_bolt",
					["version"] = 20230520,
					["warnings"] = "The import for 'single_target' required some automated changes.\nLine 1: Converted 'talent.improved_whirlwind' to 'talent.improved_whirlwind.enabled' (1x).\nLine 1: Converted 'talent.improved_whirlwind' to 'talent.improved_whirlwind.enabled' (1x).\nLine 4: Converted 'talent.dancing_blades' to 'talent.dancing_blades.enabled' (1x).\nLine 4: Converted 'talent.dancing_blades' to 'talent.dancing_blades.enabled' (1x).\nLine 5: Converted 'talent.anger_management' to 'talent.anger_management.enabled' (1x).\nLine 9: Converted 'talent.tenderize' to 'talent.tenderize.enabled' (1x).\nLine 10: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 11: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\nLine 12: Converted 'talent.anger_management' to 'talent.anger_management.enabled' (1x).\nLine 14: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\nLine 14: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 15: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\nLine 16: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 17: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 18: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 19: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\nLine 20: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 23: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\n\nThe import for 'multi_target' required some automated changes.\nLine 2: Converted 'talent.titanic_rage' to 'talent.titanic_rage.enabled' (1x).\nLine 3: Converted 'talent.improved_whirlwind' to 'talent.improved_whirlwind.enabled' (1x).\nLine 3: Converted 'talent.improved_whirlwind' to 'talent.improved_whirlwind.enabled' (1x).\nLine 9: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 12: Converted 'talent.overwhelming_rage' to 'talent.overwhelming_rage.enabled' (1x).\nLine 12: Converted 'talent.overwhelming_rage' to 'talent.overwhelming_rage.enabled' (1x).\nLine 14: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\nLine 14: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 15: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\nLine 16: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\nLine 16: Converted 'talent.tenderize' to 'talent.tenderize.enabled' (1x).\nLine 17: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 18: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 19: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 20: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\nLine 21: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 24: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 5: Converted 'talent.anger_management' to 'talent.anger_management.enabled' (1x).\nLine 17: Converted 'talent.titans_torment' to 'talent.titans_torment.enabled' (1x).\nLine 17: Converted 'talent.berserkers_torment' to 'talent.berserkers_torment.enabled' (1x).\nLine 17: Converted 'talent.titans_torment' to 'talent.titans_torment.enabled' (1x).\nLine 17: Converted 'talent.berserkers_torment' to 'talent.berserkers_torment.enabled' (1x).\nLine 18: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\nLine 18: Converted 'talent.avatar' to 'talent.avatar.enabled' (1x).\nLine 19: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 4: Converted 'talent.titans_torment' to 'talent.titans_torment.enabled' (1x).\nLine 5: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\n\nImported 4 action lists.\n",
					["lists"] = {
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1 & talent.improved_whirlwind.enabled & ! buff.meat_cleaver.up || raid_event.adds.in < 2 & talent.improved_whirlwind.enabled & ! buff.meat_cleaver.up",
								["action"] = "whirlwind",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ashen_juggernaut.up & buff.ashen_juggernaut.remains < gcd.max",
								["action"] = "execute",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & ( spell_targets.whirlwind > 1 || raid_event.adds.in > 15 )",
								["action"] = "thunderous_roar",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & ( spell_targets.whirlwind > 1 || raid_event.adds.in > 15 ) & ( talent.dancing_blades.enabled & buff.dancing_blades.remains < 5 || ! talent.dancing_blades.enabled )",
								["action"] = "odyns_fury",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.anger_management.enabled & ( buff.recklessness.up || buff.enrage.remains < gcd.max || rage.pct > 85 )",
								["action"] = "rampage",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_4pc & action.bloodthirst.crit_pct_current >= bloodthirst_crit_threshold",
								["action"] = "bloodbath",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_4pc & action.bloodthirst.crit_pct_current >= bloodthirst_crit_threshold",
								["action"] = "bloodthirst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up",
								["action"] = "execute",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up || talent.tenderize.enabled",
								["action"] = "onslaught",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.wrath_and_fury.enabled & buff.enrage.up",
								["action"] = "crushing_blow",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.reckless_abandon.enabled & ( buff.recklessness.up || buff.enrage.remains < gcd.max || rage.pct > 85 )",
								["action"] = "rampage",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.anger_management.enabled",
								["action"] = "rampage",
							}, -- [12]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & talent.reckless_abandon.enabled & ! talent.wrath_and_fury.enabled",
								["action"] = "bloodbath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.down || ( talent.annihilator.enabled & ! buff.recklessness.up )",
								["action"] = "bloodthirst",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1 & talent.wrath_and_fury.enabled",
								["action"] = "raging_blow",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1 & talent.wrath_and_fury.enabled",
								["action"] = "crushing_blow",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.down || ! talent.wrath_and_fury.enabled",
								["action"] = "bloodbath",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & talent.reckless_abandon.enabled",
								["action"] = "crushing_blow",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! talent.wrath_and_fury.enabled",
								["action"] = "bloodthirst",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1",
								["action"] = "raging_blow",
							}, -- [21]
							{
								["action"] = "rampage",
								["enabled"] = true,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.annihilator.enabled",
								["action"] = "slam",
							}, -- [23]
							{
								["action"] = "bloodbath",
								["enabled"] = true,
							}, -- [24]
							{
								["action"] = "raging_blow",
								["enabled"] = true,
							}, -- [25]
							{
								["action"] = "crushing_blow",
								["enabled"] = true,
							}, -- [26]
							{
								["action"] = "bloodthirst",
								["enabled"] = true,
							}, -- [27]
							{
								["action"] = "whirlwind",
								["enabled"] = true,
							}, -- [28]
							{
								["action"] = "wrecking_throw",
								["enabled"] = true,
							}, -- [29]
							{
								["action"] = "storm_bolt",
								["enabled"] = true,
							}, -- [30]
						},
						["multi_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 15 || active_enemies > 1 || boss & fight_remains < 12",
								["action"] = "recklessness",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & talent.titanic_rage.enabled & ( ! buff.meat_cleaver.up || buff.avatar.up || buff.recklessness.up )",
								["action"] = "odyns_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1 & talent.improved_whirlwind.enabled & ! buff.meat_cleaver.up || raid_event.adds.in < 2 & talent.improved_whirlwind.enabled & ! buff.meat_cleaver.up",
								["action"] = "whirlwind",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.ashen_juggernaut.up & buff.ashen_juggernaut.remains < gcd.max",
								["action"] = "execute",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & ( spell_targets.whirlwind > 1 || raid_event.adds.in > 15 )",
								["action"] = "thunderous_roar",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.enrage.up & raid_event.adds.in > 15",
								["action"] = "odyns_fury",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_4pc & action.bloodthirst.crit_pct_current >= bloodthirst_crit_threshold",
								["action"] = "bloodbath",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_4pc & action.bloodthirst.crit_pct_current >= bloodthirst_crit_threshold",
								["action"] = "bloodthirst",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.wrath_and_fury.enabled & buff.enrage.up",
								["action"] = "crushing_blow",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up",
								["action"] = "execute",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & raid_event.adds.in > 15",
								["action"] = "odyns_fury",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.up || buff.enrage.remains < gcd.max || ( rage > 110 & talent.overwhelming_rage.enabled ) || ( rage > 80 & ! talent.overwhelming_rage.enabled )",
								["action"] = "rampage",
							}, -- [12]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & talent.reckless_abandon.enabled & ! talent.wrath_and_fury.enabled",
								["action"] = "bloodbath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.down || ( talent.annihilator.enabled & ! buff.recklessness.up )",
								["action"] = "bloodthirst",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! talent.annihilator.enabled & buff.enrage.up || talent.tenderize.enabled",
								["action"] = "onslaught",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1 & talent.wrath_and_fury.enabled",
								["action"] = "raging_blow",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1 & talent.wrath_and_fury.enabled",
								["action"] = "crushing_blow",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.down || ! talent.wrath_and_fury.enabled",
								["action"] = "bloodbath",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & talent.reckless_abandon.enabled",
								["action"] = "crushing_blow",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! talent.wrath_and_fury.enabled",
								["action"] = "bloodthirst",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "charges >= 1",
								["action"] = "raging_blow",
							}, -- [22]
							{
								["action"] = "rampage",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "talent.annihilator.enabled",
								["action"] = "slam",
							}, -- [24]
							{
								["action"] = "bloodbath",
								["enabled"] = true,
							}, -- [25]
							{
								["action"] = "raging_blow",
								["enabled"] = true,
							}, -- [26]
							{
								["action"] = "crushing_blow",
								["enabled"] = true,
							}, -- [27]
							{
								["action"] = "whirlwind",
								["enabled"] = true,
							}, -- [28]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "time <= 0.5 || movement.distance > 5",
								["action"] = "charge",
							}, -- [1]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "spell_reflection",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.recklessness.remains < 3 || ( talent.anger_management.enabled & cooldown.avatar.remains < 3 )",
								["action"] = "algethar_puzzle_box",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.avatar.up",
								["action"] = "vial_of_animated_blood",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.avatar.up",
								["action"] = "irideus_fragment",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.avatar.down",
								["action"] = "manic_grieftorch",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.recklessness.remains > 10 & ( buff.recklessness.up || target.time_to_die < 11 || target.time_to_die > 65 )",
								["action"] = "gladiators_badge",
							}, -- [9]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.recklessness.remains < 3 || buff.recklessness.up",
								["action"] = "ravager",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.down",
								["action"] = "lights_judgment",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.up",
								["action"] = "berserking",
							}, -- [13]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "talent.titans_torment.enabled & buff.enrage.up & raid_event.adds.in > 15 || talent.berserkers_torment.enabled & buff.enrage.up & ! buff.avatar.up & raid_event.adds.in > 15 || ! talent.titans_torment.enabled & ! talent.berserkers_torment.enabled & ( buff.recklessness.up || boss & fight_remains < 20 )",
								["action"] = "avatar",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! raid_event.adds.exists & ( talent.annihilator.enabled & cooldown.avatar.remains < 1 || cooldown.avatar.remains > 40 || ! talent.avatar.enabled || target.time_to_die < 12 )",
								["action"] = "recklessness",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! raid_event.adds.exists & ! talent.annihilator.enabled || boss & fight_remains < 12",
								["action"] = "recklessness",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & ( buff.recklessness.up || buff.avatar.up || boss & fight_remains < 20 || active_enemies > 1 ) & raid_event.adds.in > 15",
								["action"] = "spear_of_bastion",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 2",
								["list_name"] = "multi_target",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "single_target",
							}, -- [22]
						},
						["precombat"] = {
							{
								["action"] = "berserker_stance",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "battle_shout",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "algethar_puzzle_box",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! talent.titans_torment.enabled",
								["action"] = "avatar",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.reckless_abandon.enabled",
								["action"] = "recklessness",
							}, -- [5]
						},
					},
					["spec"] = 72,
				},
				["Assassination"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230526,
					["author"] = "SimC",
					["desc"] = "2023-05-26: Sepsis sync logic added.\n\n2023-02-25: Allow Envenom as CP spender against a dying target when Rupture and Crimson Tempest would otherwise not be used.\n\n2023-03-19: 10.0.7 update.\n\n2023-03-25: Add missing Shiv entry.",
					["lists"] = {
						["stealthed"] = {
							{
								["enabled"] = true,
								["action"] = "indiscriminate_carnage",
								["description"] = "Stealthed Actions",
								["criteria"] = "spell_targets.fan_of_knives > desired_targets || spell_targets.fan_of_knives > 1 & raid_event.adds.in > 60",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "garrote",
								["cycle_targets"] = 1,
								["criteria"] = "stealthed.improved_garrote & ! will_lose_exsanguinate & ( remains < ( 12 - buff.sepsis_buff.remains ) / exsanguinated_rate || pmultiplier <= 1 ) & target.time_to_die - remains > 2",
								["description"] = "Improved Garrote: Apply or Refresh with buffed Garrotes",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "garrote",
								["description"] = "Improved Garrote + Exsg on 1T: Refresh Garrote at the end of stealth to get max duration before Exsanguinate",
								["criteria"] = "talent.exsanguinate.enabled & stealthed.improved_garrote & active_enemies = 1 & ! will_lose_exsanguinate & ( remains < 18 / exsanguinated_rate || pmultiplier <= 1 ) & variable.exsang_sync_remains < 18 & improved_garrote_remains < 1.3",
							}, -- [3]
						},
						["vanish"] = {
							{
								["enabled"] = true,
								["action"] = "vanish",
								["description"] = "Stealth Cooldowns  Vanish Sync for Improved Garrote with Deathmark",
								["criteria"] = "talent.improved_garrote.enabled & cooldown.garrote.up & ! debuff.garrote.exsanguinated & ( dot.garrote.pmultiplier <= 1 || dot.garrote.refreshable ) & ( debuff.deathmark.up || cooldown.deathmark.remains < 4 ) & combo_points.deficit >= ( spell_targets.fan_of_knives >? 4 )",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "vanish",
								["description"] = "Vanish for Indiscriminate Carnage or Improved Garrote at 2-3+ targets",
								["criteria"] = "talent.improved_garrote.enabled & cooldown.garrote.up & ! debuff.garrote.exsanguinated & ( dot.garrote.pmultiplier <= 1 || dot.garrote.refreshable ) & spell_targets.fan_of_knives > ( 3 - talent.indiscriminate_carnage.enabled ) & ( ! talent.indiscriminate_carnage.enabled || cooldown.indiscriminate_carnage.ready )",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "vanish",
								["description"] = "Vanish with Master Assassin: Rupture+Garrote not in refresh range, during Deathmark+Shiv. Sync with Sepsis final hit if possible.",
								["criteria"] = "! talent.improved_garrote.enabled & talent.master_assassin.enabled & ! dot.rupture.refreshable & dot.garrote.remains > 3 & debuff.deathmark.up & ( debuff.shiv.up || debuff.deathmark.remains < 4 || dot.sepsis.ticking ) & dot.sepsis.remains < 3",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_garrote.enabled & cooldown.garrote.up & ! debuff.garrote.exsanguinated & dot.garrote.pmultiplier <= 1 & ( debuff.deathmark.up || cooldown.deathmark.remains < 4 || cooldown.deathmark.remains > 60 ) & combo_points.deficit >= ( spell_targets.fan_of_knives >? 4 )",
								["action"] = "shadow_dance",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "shadow_dance",
								["description"] = "Shadow Dance for Improved Garrote with Deathmark",
								["criteria"] = "talent.improved_garrote.enabled & cooldown.garrote.up & ! debuff.garrote.exsanguinated & ( dot.garrote.pmultiplier <= 1 || dot.garrote.refreshable ) & ( debuff.deathmark.up || cooldown.deathmark.remains < 12 || cooldown.deathmark.remains > 60 ) & combo_points.deficit >= ( spell_targets.fan_of_knives >? 4 )",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "shadow_dance",
								["description"] = "Shadow Dance with Master Assassin: Rupture+Garrote not in refresh range, during Deathmark+Shiv. Sync with Sepsis final hit if possible.",
								["criteria"] = "! talent.improved_garrote.enabled & talent.master_assassin.enabled & ! dot.rupture.refreshable & dot.garrote.remains > 3 & ( debuff.deathmark.up || cooldown.deathmark.remains > 60 ) & ( debuff.shiv.up || debuff.deathmark.remains < 4 || dot.sepsis.ticking ) & dot.sepsis.remains < 3",
							}, -- [6]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Restealth if possible (no vulnerable enemies in combat)",
								["action"] = "stealth",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "kick",
								["description"] = "Interrupt on cooldown to allow simming interactions with that",
								["criteria"] = "! stealthed.all",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.fan_of_knives < 2",
								["var_name"] = "single_target",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "energy.regen_combined > 35",
								["description"] = "Combined Energy Regen needed to saturate",
								["var_name"] = "regen_saturated",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "setif",
								["description"] = "Next Exsanguinate cooldown time based on Deathmark syncing logic and remaining fight duration",
								["criteria"] = "cooldown.deathmark.remains > cooldown.exsanguinate.remains & cooldown.deathmark.remains < fight_remains",
								["var_name"] = "exsang_sync_remains",
								["action"] = "variable",
								["value_else"] = "cooldown.exsanguinate.remains",
								["value"] = "cooldown.deathmark.remains",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "setif",
								["description"] = "Next Sepsis cooldown time based on Deathmark syncing logic and remaining fight duration",
								["criteria"] = "cooldown.deathmark.remains > cooldown.sepsis.remains & cooldown.deathmark.remains < fight_remains",
								["var_name"] = "sepsis_sync_remains",
								["action"] = "variable",
								["value_else"] = "cooldown.sepsis.remains",
								["value"] = "cooldown.deathmark.remains",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "stealthed.rogue || stealthed.improved_garrote",
								["action"] = "call_action_list",
								["list_name"] = "stealthed",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "slice_and_dice",
								["description"] = "Put SnD up initially for Cut to the Chase, refresh with Envenom if at low duration",
								["criteria"] = "! buff.slice_and_dice.up & combo_points >= 2 || ! talent.cut_to_the_chase.enabled & refreshable & combo_points >= 4",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.cut_to_the_chase.enabled & buff.slice_and_dice.up & buff.slice_and_dice.remains < 5 & combo_points >= 4",
								["action"] = "envenom",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "dot",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "direct",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "energy.deficit >= 15 + energy.regen_combined",
								["action"] = "arcane_torrent",
							}, -- [13]
							{
								["action"] = "arcane_pulse",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [16]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["description"] = "Executed before combat begins. Accepts non-harmful actions only.",
								["action"] = "apply_poison",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "marked_for_death",
								["criteria"] = "raid_event.adds.in > 15",
								["precombat_seconds"] = "10",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "trinket_sync_slot",
								["criteria"] = "trinket.t1.has_stat.any_dps & ( ! trinket.t2.has_stat.any_dps || trinket.t1.cooldown.duration >= trinket.t2.cooldown.duration )",
								["description"] = "Determine which (if any) stat buff trinket we want to attempt to sync with Deathmark.",
								["value"] = "1",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "2",
								["criteria"] = "trinket.t2.has_stat.any_dps & ( ! trinket.t1.has_stat.any_dps || trinket.t2.cooldown.duration > trinket.t1.cooldown.duration )",
								["var_name"] = "trinket_sync_slot",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cp_max_spend <? ( talent.resounding_clarity.enabled * 7 )",
								["description"] = "Determine if we should be be casting our pre-Exsanguinate Rupture with Echoing Reprimand CP",
								["var_name"] = "exsanguinate_rupture_cp",
							}, -- [5]
							{
								["action"] = "stealth",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "slice_and_dice",
								["criteria"] = "refreshable",
								["precombat_seconds"] = "1",
							}, -- [7]
						},
						["direct"] = {
							{
								["enabled"] = true,
								["action"] = "envenom",
								["description"] = "Direct damage abilities  Envenom at 4+ (5+ with DS) CP. Immediately on 2+ targets, with Deathmark, or with TB, otherwise wait for some energy. Also wait if Exsg combo is coming up. Allow as filler on a dying target if CP capped.",
								["criteria"] = "effective_combo_points >= 4 + talent.deeper_stratagem.enabled & ( debuff.deathmark.up || debuff.shiv.up || debuff.amplifying_poison.stack >= 10 || energy.deficit <= 25 + energy.regen_combined || ! variable.single_target || effective_combo_points > cp_max_spend || combo_points.deficit < 1 & target.time_to_die <= 4 + ( talent.dashing_scoundrel.enabled * 5 ) + ( talent.doomblade.enabled * 5 ) + ( variable.regen_saturated * 6 ) ) & ( ! talent.exsanguinate.enabled || variable.exsang_sync_remains > 2 || talent.resounding_clarity.enabled & ( cooldown.echoing_reprimand.ready & combo_points > 2 || effective_combo_points > 5 ) )",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "combo_points.deficit > 1 || energy.deficit <= 25 + energy.regen_combined || ! variable.single_target",
								["var_name"] = "use_filler",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "serrated_bone_spike",
								["description"] = "Apply SBS to all targets without a debuff as priority, preferring targets dying sooner after the primary target",
								["criteria"] = "variable.use_filler & ! dot.serrated_bone_spike_dot.ticking",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "serrated_bone_spike",
								["criteria"] = "variable.use_filler & ! dot.serrated_bone_spike_dot.ticking",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "serrated_bone_spike",
								["description"] = "Keep from capping charges or burn at the end of fights",
								["criteria"] = "variable.use_filler & master_assassin_remains < 0.8 & ( boss & fight_remains <= 5 || cooldown.serrated_bone_spike.max_charges - charges_fractional <= 0.25 )",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "serrated_bone_spike",
								["description"] = "When MA is not at high duration, sync with Shiv",
								["criteria"] = "variable.use_filler & master_assassin_remains < 0.8 & ! variable.single_target & debuff.shiv.up",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.exsanguinate.enabled || ! talent.resounding_clarity.enabled || variable.exsang_sync_remains > 40 ) & variable.use_filler & cooldown.deathmark.remains > 10 || boss & fight_remains < 20",
								["action"] = "echoing_reprimand",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "fan_of_knives",
								["description"] = "Fan of Knives at 3+ targets or 4+ with DTB",
								["criteria"] = "variable.use_filler & ( ! priority_rotation & spell_targets.fan_of_knives >= 3 + stealthed.rogue + talent.dragontempered_blades.enabled )",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "fan_of_knives",
								["cycle_targets"] = 1,
								["criteria"] = "variable.use_filler & spell_targets.fan_of_knives >= 3 & ! dot.deadly_poison_dot.ticking & ( ! priority_rotation || dot.garrote.ticking || dot.rupture.ticking )",
								["description"] = "Fan of Knives to apply poisons if inactive on any target (or any bleeding targets with priority rotation) at 3T",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "ambush",
								["description"] = "Ambush on Blindside/Shadow Dance, or a last resort usage of Sepsis",
								["criteria"] = "variable.use_filler & ( buff.blindside.up || buff.sepsis_buff.remains <= 1 || stealthed.rogue )",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "mutilate",
								["cycle_targets"] = 1,
								["criteria"] = "! dot.deadly_poison_dot.ticking & ! debuff.amplifying_poison.up & variable.use_filler & spell_targets.fan_of_knives = 2",
								["description"] = "Tab-Mutilate to apply Deadly Poison at 2 targets",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.use_filler",
								["action"] = "mutilate",
							}, -- [12]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["action"] = "marked_for_death",
								["line_cd"] = "1.5",
								["cycle_targets"] = 1,
								["criteria"] = "raid_event.adds.up & ( ! variable.single_target || boss & fight_remains < 30 ) & ( target.time_to_die < combo_points.deficit * 1.5 || combo_points.deficit >= cp_max_spend )",
								["description"] = "Cooldowns  If adds are up, snipe the one with lowest TTD. Use when dying faster than CP deficit or without any CP.",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "marked_for_death",
								["description"] = "If no adds will die within the next 30s, use MfD for max CP.",
								["criteria"] = "raid_event.adds.in > 30 - raid_event.adds.duration & combo_points.deficit >= cp_max_spend",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.exsanguinate.enabled || cooldown.exsanguinate.remains > 15 || debuff.rupture.exsanguinated || debuff.garrote.exsanguinated",
								["description"] = "Sync Deathmark window with Exsanguinate if applicable",
								["var_name"] = "deathmark_exsanguinate_condition",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.master_assassin.enabled || dot.garrote.ticking",
								["description"] = "Wait on Deathmark for Garrote with MA",
								["var_name"] = "deathmark_ma_condition",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "sepsis",
								["description"] = "Sepsis unless we're preparing for exsanguinate",
								["criteria"] = "! stealthed.rogue & ! stealthed.improved_garrote & dot.rupture.ticking & ( ! talent.exsanguinate.enabled || variable.exsang_sync_remains > 7 || dot.rupture.remains > 20 ) & ( ! talent.improved_garrote.enabled & dot.garrote.ticking || talent.improved_garrote.enabled & cooldown.garrote.up ) & ( target.time_to_die > 10 || boss & fight_remains < 10 )",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! stealthed.rogue & dot.rupture.ticking & ! debuff.deathmark.up & variable.deathmark_exsanguinate_condition & variable.deathmark_ma_condition",
								["description"] = "Deathmark to be used if not stealthed, Rupture is up, and all other talent conditions are satisfied",
								["var_name"] = "deathmark_condition",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "algethar_puzzle_box",
								["use_off_gcd"] = 1,
								["name"] = "algethar_puzzle_box",
								["criteria"] = "( ! talent.exsanguinate.enabled || cooldown.exsanguinate.remains > 15 || debuff.rupture.exsanguinated || debuff.garrote.exsanguinated ) & dot.rupture.ticking & cooldown.deathmark.remains < 2 || boss & fight_remains <= 22",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( variable.trinket_sync_slot = 1 & ( debuff.deathmark.up || boss & fight_remains <= 20 ) || ( variable.trinket_sync_slot = 2 & ( ! trinket.t2.cooldown.ready || ! debuff.deathmark.up & cooldown.deathmark.remains > 20 ) ) || ! variable.trinket_sync_slot )",
								["description"] = "Sync the priority stat buff trinket with Deathmark, otherwise use on cooldown",
								["slots"] = "trinket1",
								["action"] = "trinket1",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["criteria"] = "( variable.trinket_sync_slot = 2 & ( debuff.deathmark.up || boss & fight_remains <= 20 ) || ( variable.trinket_sync_slot = 1 & ( ! trinket.t1.cooldown.ready || ! debuff.deathmark.up & cooldown.deathmark.remains > 20 ) ) || ! variable.trinket_sync_slot )",
								["slots"] = "trinket2",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.deathmark_condition",
								["action"] = "deathmark",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( debuff.shiv.up || cooldown.shiv.remains < 6 ) & buff.envenom.up & ( cooldown.deathmark.remains >= 50 || dot.deathmark.ticking )",
								["action"] = "kingsbane",
							}, -- [11]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.exsanguinate.enabled & ! stealthed.rogue & ! stealthed.improved_garrote & ! dot.deathmark.ticking & target.time_to_die > variable.exsang_sync_remains + 4 & variable.exsang_sync_remains < 4",
								["description"] = "Exsanguinate when not stealthed and both Rupture and Garrote are up for long enough. Attempt to sync with Deathmark and also Echoing Reprimand if using Resounding Clarity.",
								["var_name"] = "exsanguinate_condition",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.exsanguinate.enabled & talent.resounding_clarity.enabled & ( variable.exsanguinate_condition & combo_points <= 2 & variable.exsang_sync_remains <= 2 & ! dot.garrote.refreshable & dot.rupture.remains > 9.6 )",
								["action"] = "echoing_reprimand",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "variable.exsanguinate_condition & ( ! dot.garrote.refreshable & dot.rupture.remains > 4 + 4 * variable.exsanguinate_rupture_cp || dot.rupture.remains * 0.5 > target.time_to_die )",
								["action"] = "exsanguinate",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "shiv",
								["description"] = "Shiv if DoTs are up, Always Shiv with Kingsbane, otherwise attempt to sync with Sepsis or Deathmark if we won't waste more than half Shiv's cooldown",
								["criteria"] = "talent.kingsbane.enabled & ! debuff.shiv.up & dot.kingsbane.ticking & dot.garrote.ticking & dot.rupture.ticking & ( ! talent.crimson_tempest.enabled || variable.single_target || dot.crimson_tempest.ticking )",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.arterial_precision.enabled & ! debuff.shiv.up & dot.garrote.ticking & dot.rupture.ticking & ( debuff.deathmark.up || cooldown.shiv.charges_fractional > max_charges - 0.5 & cooldown.deathmark.remains > 10 )",
								["action"] = "shiv",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! talent.kingsbane.enabled & ! talent.arterial_precision.enabled & ! talent.sepsis.enabled & ! debuff.shiv.up & dot.garrote.ticking & dot.rupture.ticking & ( ! talent.crimson_tempest.enabled || variable.single_target || dot.crimson_tempest.ticking ) & ( ! talent.exsanguinate.enabled || variable.exsang_sync_remains > 2 )",
								["action"] = "shiv",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "shiv",
								["description"] = "Pool Shiv charges for Sepsis/Deathmark, unless we're about to cap on charges",
								["criteria"] = "talent.sepsis.enabled & ! talent.kingsbane.enabled & ! talent.arterial_precision.enabled & ! debuff.shiv.up & dot.garrote.ticking & dot.rupture.ticking & ( ( cooldown.shiv.charges_fractional > 0.9 + talent.lightweight_shiv.enabled & variable.sepsis_sync_remains > 5 ) || dot.sepsis.ticking || dot.deathmark.ticking || boss & fight_remains < 20 )",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! buff.thistle_tea.up & ( energy.deficit >= 100 || charges = 3 & ( dot.kingsbane.ticking || debuff.deathmark.up ) || boss & fight_remains < charges * 6 )",
								["action"] = "thistle_tea",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.fan_of_knives > desired_targets || spell_targets.fan_of_knives > 1 & raid_event.adds.in > 60 ) & ( ! talent.improved_garrote.enabled || cooldown.vanish.remains > 45 )",
								["action"] = "indiscriminate_carnage",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.react || boss & fight_remains < 30 || debuff.deathmark.up",
								["action"] = "potion",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "debuff.deathmark.up",
								["action"] = "blood_fury",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "debuff.deathmark.up",
								["action"] = "berserking",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "debuff.deathmark.up",
								["action"] = "fireblood",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "debuff.deathmark.up",
								["action"] = "ancestral_call",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "! stealthed.all & master_assassin_remains = 0",
								["action"] = "call_action_list",
								["list_name"] = "vanish",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "combo_points >= 4",
								["action"] = "cold_blood",
							}, -- [27]
						},
						["dot"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "priority_rotation & ( dot.garrote.remains < cooldown.garrote.duration || variable.regen_saturated )",
								["description"] = "Damage over time abilities  Limit secondary Garrotes for priority rotation if we have 35 energy regen or Garrote will expire on the primary target",
								["var_name"] = "skip_cycle_garrote",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "priority_rotation & ( debuff.shiv.up & spell_targets.fan_of_knives > 2 || variable.regen_saturated )",
								["description"] = "Limit secondary Ruptures for priority rotation if we have 35 energy regen or Shiv is up on 2T+",
								["var_name"] = "skip_cycle_rupture",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["description"] = "Limit Ruptures when appropriate, not currently used",
								["var_name"] = "skip_rupture",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "rupture",
								["description"] = "Special Garrote and Rupture setup prior to Exsanguinate cast",
								["criteria"] = "talent.exsanguinate.enabled & ! will_lose_exsanguinate & dot.rupture.pmultiplier <= 1 & ! dot.rupture.ticking & effective_combo_points <= 3 & variable.single_target",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.exsanguinate.enabled & ! will_lose_exsanguinate & dot.garrote.pmultiplier <= 1 & variable.exsang_sync_remains < 2 & spell_targets.fan_of_knives = 1 & raid_event.adds.in > 6 & dot.garrote.remains * 0.5 < target.time_to_die",
								["action"] = "garrote",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.exsanguinate.enabled & ! will_lose_exsanguinate & dot.rupture.pmultiplier <= 1 & variable.exsang_sync_remains < 1 & effective_combo_points >= variable.exsanguinate_rupture_cp & dot.rupture.remains * 0.5 < target.time_to_die",
								["action"] = "rupture",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "garrote",
								["description"] = "Garrote upkeep, also tries to use it as a special generator for the last CP before a finisher",
								["criteria"] = "refreshable & combo_points.deficit >= 1 & ( pmultiplier <= 1 || remains <= tick_time & spell_targets.fan_of_knives >= 3 ) & ( ! will_lose_exsanguinate || remains <= tick_time * 2 & spell_targets.fan_of_knives >= 3 ) & ( target.time_to_die - remains ) > 4 & master_assassin_remains = 0",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "garrote",
								["criteria"] = "! variable.skip_cycle_garrote & refreshable & combo_points.deficit >= 1 & ( pmultiplier <= 1 || remains <= tick_time & spell_targets.fan_of_knives >= 3 ) & ( ! will_lose_exsanguinate || remains <= tick_time * 2 & spell_targets.fan_of_knives >= 3 ) & ( target.time_to_die - remains ) > 12 & master_assassin_remains = 0",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "crimson_tempest",
								["cycle_targets"] = 1,
								["criteria"] = "spell_targets >= 2 & effective_combo_points >= 4 & energy.regen_combined > 20 & ( ! cooldown.deathmark.ready || dot.rupture.ticking ) & remains < ( 2 + 3 * ( spell_targets >= 4 ) )",
								["description"] = "Crimson Tempest on multiple targets at 4+ CP when running out in 2-5s as long as we have enough regen and aren't setting up for Deathmark",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "rupture",
								["description"] = "Keep up Rupture at 4+ on all targets (when living long enough and not snapshot)",
								["criteria"] = "! variable.skip_rupture & effective_combo_points >= 4 & refreshable & ( pmultiplier <= 1 || remains <= tick_time & spell_targets.fan_of_knives >= 3 ) & ( ! will_lose_exsanguinate || remains <= tick_time * 2 & spell_targets.fan_of_knives >= 3 ) & target.time_to_die - remains > ( 4 + ( talent.dashing_scoundrel.enabled * 5 ) + ( talent.doomblade.enabled * 5 ) + ( variable.regen_saturated * 6 ) )",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "rupture",
								["criteria"] = "! variable.skip_cycle_rupture & ! variable.skip_rupture & effective_combo_points >= 4 & refreshable & ( pmultiplier <= 1 || remains <= tick_time & spell_targets.fan_of_knives >= 3 ) & ( ! will_lose_exsanguinate || remains <= tick_time * 2 & spell_targets.fan_of_knives >= 3 ) & target.time_to_die - remains > ( 4 + ( talent.dashing_scoundrel.enabled * 5 ) + ( talent.doomblade.enabled * 5 ) + ( variable.regen_saturated * 6 ) )",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "crimson_tempest",
								["description"] = "Fallback AoE Crimson Tempest with the same logic as above, but ignoring the energy conditions if we aren't using Rupture",
								["criteria"] = "spell_targets >= 2 & effective_combo_points >= 4 & remains < 2 + 3 * ( spell_targets >= 4 )",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "crimson_tempest",
								["description"] = "Crimson Tempest on ST if in pandemic and nearly max energy and if Envenom won't do more damage due to TB/MA",
								["criteria"] = "spell_targets = 1 & ! talent.dashing_scoundrel.enabled & effective_combo_points >= ( cp_max_spend - 1 ) & refreshable & ! will_lose_exsanguinate & ! debuff.shiv.up & debuff.amplifying_poison.stack < 15 & ( ! talent.kingsbane.enabled || buff.envenom.up || ! cooldown.kingsbane.up ) & target.time_to_die - remains > 4",
							}, -- [13]
						},
					},
					["version"] = 20230526,
					["warnings"] = "The import for 'stealthed' required some automated changes.\nLine 2: Converted operations in 'stealthed.improved_garrote&!will_lose_exsanguinate&(remains<(12-buff.sepsis_buff.remains)%exsanguinated_rate||pmultiplier<=1)&target.time_to_die-remains>2' to 'stealthed.improved_garrote&!will_lose_exsanguinate&(remains<(12-buff.sepsis_buff.remains)/exsanguinated_rate||pmultiplier<=1)&target.time_to_die-remains>2'.\nLine 3: Converted operations in 'talent.exsanguinate.enabled&stealthed.improved_garrote&active_enemies=1&!will_lose_exsanguinate&(remains<18%exsanguinated_rate||pmultiplier<=1)&variable.exsang_sync_remains<18&improved_garrote_remains<1.3' to 'talent.exsanguinate.enabled&stealthed.improved_garrote&active_enemies=1&!will_lose_exsanguinate&(remains<18/exsanguinated_rate||pmultiplier<=1)&variable.exsang_sync_remains<18&improved_garrote_remains<1.3'.\n\nThe import for 'vanish' required some automated changes.\nLine 1: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\nLine 1: Converted 'exsanguinated.garrote' to 'debuff.garrote.exsanguinated' (1x).\nLine 2: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\nLine 2: Converted 'exsanguinated.garrote' to 'debuff.garrote.exsanguinated' (1x).\nLine 2: Converted 'talent.indiscriminate_carnage' to 'talent.indiscriminate_carnage.enabled' (1x).\nLine 2: Converted 'talent.indiscriminate_carnage' to 'talent.indiscriminate_carnage.enabled' (1x).\nLine 3: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\nLine 3: Converted 'talent.master_assassin' to 'talent.master_assassin.enabled' (1x).\nLine 4: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\nLine 4: Converted 'exsanguinated.garrote' to 'debuff.garrote.exsanguinated' (1x).\nLine 5: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\nLine 5: Converted 'exsanguinated.garrote' to 'debuff.garrote.exsanguinated' (1x).\nLine 6: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\nLine 6: Converted 'talent.master_assassin' to 'talent.master_assassin.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 9: Converted 'talent.cut_to_the_chase' to 'talent.cut_to_the_chase.enabled' (1x).\nLine 10: Converted 'talent.cut_to_the_chase' to 'talent.cut_to_the_chase.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 3: Converted 'trinket.1.has_stat.any_dps' to 'trinket.t1.has_stat.any_dps' (1x).\nLine 3: Converted 'trinket.2.has_stat.any_dps' to 'trinket.t2.has_stat.any_dps' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 4: Converted 'trinket.2.has_stat.any_dps' to 'trinket.t2.has_stat.any_dps' (1x).\nLine 4: Converted 'trinket.1.has_stat.any_dps' to 'trinket.t1.has_stat.any_dps' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'talent.resounding_clarity' to 'talent.resounding_clarity.enabled' (1x).\n\nThe import for 'direct' required some automated changes.\nLine 1: Converted 'talent.dashing_scoundrel' to 'talent.dashing_scoundrel.enabled' (1x).\nLine 1: Converted 'talent.doomblade' to 'talent.doomblade.enabled' (1x).\nLine 1: Converted 'talent.resounding_clarity' to 'talent.resounding_clarity.enabled' (1x).\nLine 7: Converted 'talent.exsanguinate' to 'talent.exsanguinate.enabled' (1x).\nLine 7: Converted 'talent.resounding_clarity' to 'talent.resounding_clarity.enabled' (1x).\nLine 8: Converted 'talent.dragontempered_blades' to 'talent.dragontempered_blades.enabled' (1x).\n\nThe import for 'cds' required some automated changes.\nLine 3: Converted 'talent.exsanguinate' to 'talent.exsanguinate.enabled' (1x).\nLine 3: Converted 'exsanguinated.rupture' to 'debuff.rupture.exsanguinated' (1x).\nLine 3: Converted 'exsanguinated.garrote' to 'debuff.garrote.exsanguinated' (1x).\nLine 5: Converted 'talent.exsanguinate' to 'talent.exsanguinate.enabled' (1x).\nLine 5: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\nLine 5: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\nLine 7: Converted 'talent.exsanguinate' to 'talent.exsanguinate.enabled' (1x).\nLine 7: Converted 'exsanguinated.rupture' to 'debuff.rupture.exsanguinated' (1x).\nLine 7: Converted 'exsanguinated.garrote' to 'debuff.garrote.exsanguinated' (1x).\nLine 8: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready' (1x).\nLine 8: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready'.\nLine 9: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready' (1x).\nLine 9: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready'.\nLine 12: Converted 'talent.exsanguinate' to 'talent.exsanguinate.enabled' (1x).\nLine 13: Converted 'talent.exsanguinate' to 'talent.exsanguinate.enabled' (1x).\nLine 13: Converted 'talent.resounding_clarity' to 'talent.resounding_clarity.enabled' (1x).\nLine 15: Converted 'talent.kingsbane' to 'talent.kingsbane.enabled' (1x).\nLine 16: Converted 'talent.arterial_precision' to 'talent.arterial_precision.enabled' (1x).\nLine 17: Converted 'talent.kingsbane' to 'talent.kingsbane.enabled' (1x).\nLine 17: Converted 'talent.arterial_precision' to 'talent.arterial_precision.enabled' (1x).\nLine 17: Converted 'talent.sepsis' to 'talent.sepsis.enabled' (1x).\nLine 17: Converted 'talent.exsanguinate' to 'talent.exsanguinate.enabled' (1x).\nLine 18: Converted 'talent.sepsis' to 'talent.sepsis.enabled' (1x).\nLine 18: Converted 'talent.kingsbane' to 'talent.kingsbane.enabled' (1x).\nLine 18: Converted 'talent.arterial_precision' to 'talent.arterial_precision.enabled' (1x).\nLine 20: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\n\nThe import for 'dot' required some automated changes.\nLine 10: Converted 'talent.dashing_scoundrel' to 'talent.dashing_scoundrel.enabled' (1x).\nLine 10: Converted 'talent.doomblade' to 'talent.doomblade.enabled' (1x).\nLine 11: Converted 'talent.dashing_scoundrel' to 'talent.dashing_scoundrel.enabled' (1x).\nLine 11: Converted 'talent.doomblade' to 'talent.doomblade.enabled' (1x).\nLine 13: Converted 'talent.dashing_scoundrel' to 'talent.dashing_scoundrel.enabled' (1x).\nLine 13: Converted 'talent.kingsbane' to 'talent.kingsbane.enabled' (1x).\n\nImported 7 action lists.\n",
					["profile"] = "# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=apply_poison\nactions.precombat+=/marked_for_death,precombat_seconds=10,if=raid_event.adds.in>15\n# Determine which (if any) stat buff trinket we want to attempt to sync with Deathmark.\nactions.precombat+=/variable,name=trinket_sync_slot,value=1,if=trinket.1.has_stat.any_dps&(!trinket.2.has_stat.any_dps||trinket.1.cooldown.duration>=trinket.2.cooldown.duration)\nactions.precombat+=/variable,name=trinket_sync_slot,value=2,if=trinket.2.has_stat.any_dps&(!trinket.1.has_stat.any_dps||trinket.2.cooldown.duration>trinket.1.cooldown.duration)\n# Determine if we should be be casting our pre-Exsanguinate Rupture with Echoing Reprimand CP\nactions.precombat+=/variable,name=exsanguinate_rupture_cp,value=cp_max_spend<?(talent.resounding_clarity*7)\nactions.precombat+=/stealth\nactions.precombat+=/slice_and_dice,precombat_seconds=1,if=refreshable\n\n# Executed every time the actor is available.\n# Restealth if possible (no vulnerable enemies in combat)\nactions=stealth\n# Interrupt on cooldown to allow simming interactions with that\nactions+=/kick,if=!stealthed.all\nactions+=/variable,name=single_target,value=spell_targets.fan_of_knives<2\n# Combined Energy Regen needed to saturate\nactions+=/variable,name=regen_saturated,value=energy.regen_combined>35\n# Next Exsanguinate cooldown time based on Deathmark syncing logic and remaining fight duration\nactions+=/variable,name=exsang_sync_remains,op=setif,condition=cooldown.deathmark.remains>cooldown.exsanguinate.remains&cooldown.deathmark.remains<fight_remains,value=cooldown.deathmark.remains,value_else=cooldown.exsanguinate.remains\n# Next Sepsis cooldown time based on Deathmark syncing logic and remaining fight duration\nactions+=/variable,name=sepsis_sync_remains,op=setif,condition=cooldown.deathmark.remains>cooldown.sepsis.remains&cooldown.deathmark.remains<fight_remains,value=cooldown.deathmark.remains,value_else=cooldown.sepsis.remains\nactions+=/call_action_list,name=stealthed,if=stealthed.rogue||stealthed.improved_garrote\nactions+=/call_action_list,name=cds\n# Put SnD up initially for Cut to the Chase, refresh with Envenom if at low duration\nactions+=/slice_and_dice,if=!buff.slice_and_dice.up&combo_points>=2||!talent.cut_to_the_chase&refreshable&combo_points>=4\nactions+=/envenom,if=talent.cut_to_the_chase&buff.slice_and_dice.up&buff.slice_and_dice.remains<5&combo_points>=4\nactions+=/call_action_list,name=dot\nactions+=/call_action_list,name=direct\nactions+=/arcane_torrent,if=energy.deficit>=15+energy.regen_combined\nactions+=/arcane_pulse\nactions+=/lights_judgment\nactions+=/bag_of_tricks\n\n# Cooldowns  If adds are up, snipe the one with lowest TTD. Use when dying faster than CP deficit or without any CP.\nactions.cds=marked_for_death,line_cd=1.5,cycle_targets=1,if=raid_event.adds.up&(!variable.single_target||boss&fight_remains<30)&(target.time_to_die<combo_points.deficit*1.5||combo_points.deficit>=cp_max_spend)\n# If no adds will die within the next 30s, use MfD for max CP.\nactions.cds+=/marked_for_death,if=raid_event.adds.in>30-raid_event.adds.duration&combo_points.deficit>=cp_max_spend\n# Sync Deathmark window with Exsanguinate if applicable\nactions.cds+=/variable,name=deathmark_exsanguinate_condition,value=!talent.exsanguinate||cooldown.exsanguinate.remains>15||exsanguinated.rupture||exsanguinated.garrote\n# Wait on Deathmark for Garrote with MA\nactions.cds+=/variable,name=deathmark_ma_condition,value=!talent.master_assassin.enabled||dot.garrote.ticking\n# Sepsis unless we're preparing for exsanguinate\nactions.cds+=/sepsis,if=!stealthed.rogue&!stealthed.improved_garrote&dot.rupture.ticking&(!talent.exsanguinate||variable.exsang_sync_remains>7||dot.rupture.remains>20)&(!talent.improved_garrote&dot.garrote.ticking||talent.improved_garrote&cooldown.garrote.up)&(target.time_to_die>10||boss&fight_remains<10)\n# Deathmark to be used if not stealthed, Rupture is up, and all other talent conditions are satisfied\nactions.cds+=/variable,name=deathmark_condition,value=!stealthed.rogue&dot.rupture.ticking&!debuff.deathmark.up&variable.deathmark_exsanguinate_condition&variable.deathmark_ma_condition\nactions.cds+=/use_item,name=algethar_puzzle_box,use_off_gcd=1,if=(!talent.exsanguinate||cooldown.exsanguinate.remains>15||exsanguinated.rupture||exsanguinated.garrote)&dot.rupture.ticking&cooldown.deathmark.remains<2||boss&fight_remains<=22\n# Sync the priority stat buff trinket with Deathmark, otherwise use on cooldown\nactions.cds+=/use_items,slots=trinket1,if=(variable.trinket_sync_slot=1&(debuff.deathmark.up||boss&fight_remains<=20)||(variable.trinket_sync_slot=2&(!trinket.2.cooldown.ready||!debuff.deathmark.up&cooldown.deathmark.remains>20))||!variable.trinket_sync_slot)\nactions.cds+=/use_items,slots=trinket2,if=(variable.trinket_sync_slot=2&(debuff.deathmark.up||boss&fight_remains<=20)||(variable.trinket_sync_slot=1&(!trinket.1.cooldown.ready||!debuff.deathmark.up&cooldown.deathmark.remains>20))||!variable.trinket_sync_slot)\nactions.cds+=/deathmark,if=variable.deathmark_condition\nactions.cds+=/kingsbane,if=(debuff.shiv.up||cooldown.shiv.remains<6)&buff.envenom.up&(cooldown.deathmark.remains>=50||dot.deathmark.ticking)\n# Exsanguinate when not stealthed and both Rupture and Garrote are up for long enough. Attempt to sync with Deathmark and also Echoing Reprimand if using Resounding Clarity.\nactions.cds+=/variable,name=exsanguinate_condition,value=talent.exsanguinate&!stealthed.rogue&!stealthed.improved_garrote&!dot.deathmark.ticking&target.time_to_die>variable.exsang_sync_remains+4&variable.exsang_sync_remains<4\nactions.cds+=/echoing_reprimand,if=talent.exsanguinate&talent.resounding_clarity&(variable.exsanguinate_condition&combo_points<=2&variable.exsang_sync_remains<=2&!dot.garrote.refreshable&dot.rupture.remains>9.6)\nactions.cds+=/exsanguinate,if=variable.exsanguinate_condition&(!dot.garrote.refreshable&dot.rupture.remains>4+4*variable.exsanguinate_rupture_cp||dot.rupture.remains*0.5>target.time_to_die)\n# Shiv if DoTs are up; Always Shiv with Kingsbane, otherwise attempt to sync with Sepsis or Deathmark if we won't waste more than half Shiv's cooldown\nactions.cds+=/shiv,if=talent.kingsbane&!debuff.shiv.up&dot.kingsbane.ticking&dot.garrote.ticking&dot.rupture.ticking&(!talent.crimson_tempest.enabled||variable.single_target||dot.crimson_tempest.ticking)\nactions.cds+=/shiv,if=talent.arterial_precision&!debuff.shiv.up&dot.garrote.ticking&dot.rupture.ticking&(debuff.deathmark.up||cooldown.shiv.charges_fractional>max_charges-0.5&cooldown.deathmark.remains>10)\nactions.cds+=/shiv,if=!talent.kingsbane&!talent.arterial_precision&!talent.sepsis&!debuff.shiv.up&dot.garrote.ticking&dot.rupture.ticking&(!talent.crimson_tempest.enabled||variable.single_target||dot.crimson_tempest.ticking)&(!talent.exsanguinate||variable.exsang_sync_remains>2)\n# Pool Shiv charges for Sepsis/Deathmark, unless we're about to cap on charges\nactions.cds+=/shiv,if=talent.sepsis&!talent.kingsbane&!talent.arterial_precision&!debuff.shiv.up&dot.garrote.ticking&dot.rupture.ticking&((cooldown.shiv.charges_fractional>0.9+talent.lightweight_shiv.enabled&variable.sepsis_sync_remains>5)||dot.sepsis.ticking||dot.deathmark.ticking||boss&fight_remains<20)\nactions.cds+=/thistle_tea,if=!buff.thistle_tea.up&(energy.deficit>=100||charges=3&(dot.kingsbane.ticking||debuff.deathmark.up)||boss&fight_remains<charges*6)\nactions.cds+=/indiscriminate_carnage,if=(spell_targets.fan_of_knives>desired_targets||spell_targets.fan_of_knives>1&raid_event.adds.in>60)&(!talent.improved_garrote||cooldown.vanish.remains>45)\nactions.cds+=/potion,if=buff.bloodlust.react||boss&fight_remains<30||debuff.deathmark.up\nactions.cds+=/blood_fury,if=debuff.deathmark.up\nactions.cds+=/berserking,if=debuff.deathmark.up\nactions.cds+=/fireblood,if=debuff.deathmark.up\nactions.cds+=/ancestral_call,if=debuff.deathmark.up\nactions.cds+=/call_action_list,name=vanish,if=!stealthed.all&master_assassin_remains=0\nactions.cds+=/cold_blood,if=combo_points>=4\n\n# Direct damage abilities  Envenom at 4+ (5+ with DS) CP. Immediately on 2+ targets, with Deathmark, or with TB; otherwise wait for some energy. Also wait if Exsg combo is coming up. Allow as filler on a dying target if CP capped.\nactions.direct+=/envenom,if=effective_combo_points>=4+talent.deeper_stratagem.enabled&(debuff.deathmark.up||debuff.shiv.up||debuff.amplifying_poison.stack>=10||energy.deficit<=25+energy.regen_combined||!variable.single_target||effective_combo_points>cp_max_spend||combo_points.deficit<1&target.time_to_die<=4+(talent.dashing_scoundrel*5)+(talent.doomblade*5)+(variable.regen_saturated*6))&(!talent.exsanguinate.enabled||variable.exsang_sync_remains>2||talent.resounding_clarity&(cooldown.echoing_reprimand.ready&combo_points>2||effective_combo_points>5))\nactions.direct+=/variable,name=use_filler,value=combo_points.deficit>1||energy.deficit<=25+energy.regen_combined||!variable.single_target\n# Apply SBS to all targets without a debuff as priority, preferring targets dying sooner after the primary target\nactions.direct+=/serrated_bone_spike,if=variable.use_filler&!dot.serrated_bone_spike_dot.ticking\nactions.direct+=/serrated_bone_spike,cycle_targets=1,if=variable.use_filler&!dot.serrated_bone_spike_dot.ticking\n# Keep from capping charges or burn at the end of fights\nactions.direct+=/serrated_bone_spike,if=variable.use_filler&master_assassin_remains<0.8&(boss&fight_remains<=5||cooldown.serrated_bone_spike.max_charges-charges_fractional<=0.25)\n# When MA is not at high duration, sync with Shiv\nactions.direct+=/serrated_bone_spike,if=variable.use_filler&master_assassin_remains<0.8&!variable.single_target&debuff.shiv.up\nactions.direct+=/echoing_reprimand,if=(!talent.exsanguinate||!talent.resounding_clarity||variable.exsang_sync_remains>40)&variable.use_filler&cooldown.deathmark.remains>10||boss&fight_remains<20\n# Fan of Knives at 3+ targets or 4+ with DTB\nactions.direct+=/fan_of_knives,if=variable.use_filler&(!priority_rotation&spell_targets.fan_of_knives>=3+stealthed.rogue+talent.dragontempered_blades)\n# Fan of Knives to apply poisons if inactive on any target (or any bleeding targets with priority rotation) at 3T\nactions.direct+=/fan_of_knives,cycle_targets=1,if=variable.use_filler&spell_targets.fan_of_knives>=3&!dot.deadly_poison_dot.ticking&(!priority_rotation||dot.garrote.ticking||dot.rupture.ticking)\n# Ambush on Blindside/Shadow Dance, or a last resort usage of Sepsis\nactions.direct+=/ambush,if=variable.use_filler&(buff.blindside.up||buff.sepsis_buff.remains<=1||stealthed.rogue)\n# Tab-Mutilate to apply Deadly Poison at 2 targets\nactions.direct+=/mutilate,cycle_targets=1,if=!dot.deadly_poison_dot.ticking&!debuff.amplifying_poison.up&variable.use_filler&spell_targets.fan_of_knives=2\nactions.direct+=/mutilate,if=variable.use_filler\n\n# Damage over time abilities  Limit secondary Garrotes for priority rotation if we have 35 energy regen or Garrote will expire on the primary target\nactions.dot+=/variable,name=skip_cycle_garrote,value=priority_rotation&(dot.garrote.remains<cooldown.garrote.duration||variable.regen_saturated)\n# Limit secondary Ruptures for priority rotation if we have 35 energy regen or Shiv is up on 2T+\nactions.dot+=/variable,name=skip_cycle_rupture,value=priority_rotation&(debuff.shiv.up&spell_targets.fan_of_knives>2||variable.regen_saturated)\n# Limit Ruptures when appropriate, not currently used\nactions.dot+=/variable,name=skip_rupture,value=0\n# Special Garrote and Rupture setup prior to Exsanguinate cast\nactions.dot+=/rupture,if=talent.exsanguinate.enabled&!will_lose_exsanguinate&dot.rupture.pmultiplier<=1&!dot.rupture.ticking&effective_combo_points<=3&variable.single_target\nactions.dot+=/garrote,if=talent.exsanguinate.enabled&!will_lose_exsanguinate&dot.garrote.pmultiplier<=1&variable.exsang_sync_remains<2&spell_targets.fan_of_knives=1&raid_event.adds.in>6&dot.garrote.remains*0.5<target.time_to_die\nactions.dot+=/rupture,if=talent.exsanguinate.enabled&!will_lose_exsanguinate&dot.rupture.pmultiplier<=1&variable.exsang_sync_remains<1&effective_combo_points>=variable.exsanguinate_rupture_cp&dot.rupture.remains*0.5<target.time_to_die\n## actions.dot+=/pool_resource,for_next=1\n# Garrote upkeep, also tries to use it as a special generator for the last CP before a finisher\nactions.dot+=/garrote,if=refreshable&combo_points.deficit>=1&(pmultiplier<=1||remains<=tick_time&spell_targets.fan_of_knives>=3)&(!will_lose_exsanguinate||remains<=tick_time*2&spell_targets.fan_of_knives>=3)&(target.time_to_die-remains)>4&master_assassin_remains=0\n## actions.dot+=/pool_resource,for_next=1\nactions.dot+=/garrote,cycle_targets=1,if=!variable.skip_cycle_garrote&refreshable&combo_points.deficit>=1&(pmultiplier<=1||remains<=tick_time&spell_targets.fan_of_knives>=3)&(!will_lose_exsanguinate||remains<=tick_time*2&spell_targets.fan_of_knives>=3)&(target.time_to_die-remains)>12&master_assassin_remains=0\n# Crimson Tempest on multiple targets at 4+ CP when running out in 2-5s as long as we have enough regen and aren't setting up for Deathmark\nactions.dot+=/crimson_tempest,cycle_targets=1,if=spell_targets>=2&effective_combo_points>=4&energy.regen_combined>20&(!cooldown.deathmark.ready||dot.rupture.ticking)&remains<(2+3*(spell_targets>=4))\n# Keep up Rupture at 4+ on all targets (when living long enough and not snapshot)\nactions.dot+=/rupture,if=!variable.skip_rupture&effective_combo_points>=4&refreshable&(pmultiplier<=1||remains<=tick_time&spell_targets.fan_of_knives>=3)&(!will_lose_exsanguinate||remains<=tick_time*2&spell_targets.fan_of_knives>=3)&target.time_to_die-remains>(4+(talent.dashing_scoundrel*5)+(talent.doomblade*5)+(variable.regen_saturated*6))\nactions.dot+=/rupture,cycle_targets=1,if=!variable.skip_cycle_rupture&!variable.skip_rupture&effective_combo_points>=4&refreshable&(pmultiplier<=1||remains<=tick_time&spell_targets.fan_of_knives>=3)&(!will_lose_exsanguinate||remains<=tick_time*2&spell_targets.fan_of_knives>=3)&target.time_to_die-remains>(4+(talent.dashing_scoundrel*5)+(talent.doomblade*5)+(variable.regen_saturated*6))\n# Fallback AoE Crimson Tempest with the same logic as above, but ignoring the energy conditions if we aren't using Rupture\nactions.dot+=/crimson_tempest,if=spell_targets>=2&effective_combo_points>=4&remains<2+3*(spell_targets>=4)\n# Crimson Tempest on ST if in pandemic and nearly max energy and if Envenom won't do more damage due to TB/MA\nactions.dot+=/crimson_tempest,if=spell_targets=1&!talent.dashing_scoundrel&effective_combo_points>=(cp_max_spend-1)&refreshable&!will_lose_exsanguinate&!debuff.shiv.up&debuff.amplifying_poison.stack<15&(!talent.kingsbane||buff.envenom.up||!cooldown.kingsbane.up)&target.time_to_die-remains>4\n\n# Stealthed Actions\nactions.stealthed+=/indiscriminate_carnage,if=spell_targets.fan_of_knives>desired_targets||spell_targets.fan_of_knives>1&raid_event.adds.in>60\n## Improved Garrote: Apply or Refresh with buffed Garrotes, accounting for Sepsis buff time\n## actions.stealthed+=/pool_resource,for_next=1\n# Improved Garrote: Apply or Refresh with buffed Garrotes\nactions.stealthed+=/garrote,cycle_targets=1,if=stealthed.improved_garrote&!will_lose_exsanguinate&(remains<(12-buff.sepsis_buff.remains)%exsanguinated_rate||pmultiplier<=1)&target.time_to_die-remains>2\n## actions.stealthed+=/pool_resource,for_next=1\n# Improved Garrote + Exsg on 1T: Refresh Garrote at the end of stealth to get max duration before Exsanguinate\nactions.stealthed+=/garrote,if=talent.exsanguinate.enabled&stealthed.improved_garrote&active_enemies=1&!will_lose_exsanguinate&(remains<18%exsanguinated_rate||pmultiplier<=1)&variable.exsang_sync_remains<18&improved_garrote_remains<1.3\n\n# Stealth Cooldowns  Vanish Sync for Improved Garrote with Deathmark\nactions.vanish+=/vanish,if=talent.improved_garrote&cooldown.garrote.up&!exsanguinated.garrote&(dot.garrote.pmultiplier<=1||dot.garrote.refreshable)&(debuff.deathmark.up||cooldown.deathmark.remains<4)&combo_points.deficit>=(spell_targets.fan_of_knives>?4)\n# Vanish for Indiscriminate Carnage or Improved Garrote at 2-3+ targets\nactions.vanish+=/vanish,if=talent.improved_garrote&cooldown.garrote.up&!exsanguinated.garrote&(dot.garrote.pmultiplier<=1||dot.garrote.refreshable)&spell_targets.fan_of_knives>(3-talent.indiscriminate_carnage)&(!talent.indiscriminate_carnage||cooldown.indiscriminate_carnage.ready)\n# Vanish with Master Assassin: Rupture+Garrote not in refresh range, during Deathmark+Shiv. Sync with Sepsis final hit if possible.\nactions.vanish+=/vanish,if=!talent.improved_garrote&talent.master_assassin&!dot.rupture.refreshable&dot.garrote.remains>3&debuff.deathmark.up&(debuff.shiv.up||debuff.deathmark.remains<4||dot.sepsis.ticking)&dot.sepsis.remains<3\n## actions.vanish+=/pool_resource,for_next=1,extra_amount=45\nactions.vanish+=/shadow_dance,if=talent.improved_garrote&cooldown.garrote.up&!exsanguinated.garrote&dot.garrote.pmultiplier<=1&(debuff.deathmark.up||cooldown.deathmark.remains<4||cooldown.deathmark.remains>60)&combo_points.deficit>=(spell_targets.fan_of_knives>?4)\n# Shadow Dance for Improved Garrote with Deathmark\nactions.vanish+=/shadow_dance,if=talent.improved_garrote&cooldown.garrote.up&!exsanguinated.garrote&(dot.garrote.pmultiplier<=1||dot.garrote.refreshable)&(debuff.deathmark.up||cooldown.deathmark.remains<12||cooldown.deathmark.remains>60)&combo_points.deficit>=(spell_targets.fan_of_knives>?4)\n# Shadow Dance with Master Assassin: Rupture+Garrote not in refresh range, during Deathmark+Shiv. Sync with Sepsis final hit if possible.\nactions.vanish+=/shadow_dance,if=!talent.improved_garrote&talent.master_assassin&!dot.rupture.refreshable&dot.garrote.remains>3&(debuff.deathmark.up||cooldown.deathmark.remains>60)&(debuff.shiv.up||debuff.deathmark.remains<4||dot.sepsis.ticking)&dot.sepsis.remains<3",
					["spec"] = 259,
				},
			},
		},
		["Amdam - Turalyon"] = {
			["runOnce"] = {
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["forceReloadClassDefaultOptions_20220306_70"] = true,
				["forceReloadClassDefaultOptions_20220306_65"] = true,
				["forceReloadClassDefaultOptions_20220306_66"] = true,
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["forceSpellFlashBrightness_20221030"] = true,
			},
			["specs"] = {
				[70] = {
					["debuffPadding"] = 0,
					["abilities"] = {
						["crusade"] = {
							["disabled"] = true,
						},
						["avenging_wrath"] = {
							["disabled"] = true,
						},
					},
					["potion"] = "battle_potion_of_strength",
					["potionsReset"] = 20180919.1,
					["maxRefresh"] = 10,
					["settings"] = {
						["sov_damage"] = 20,
						["check_wake_range"] = false,
					},
					["buffPadding"] = 0.25,
				},
				[66] = {
					["debuffPadding"] = 0,
					["settings"] = {
						["wog_health"] = 40,
						["goak_damage"] = 40,
						["ds_damage"] = 60,
					},
					["potionsReset"] = 20180919.1,
					["potion"] = "potion_of_bursting_blood",
					["maxRefresh"] = 10,
					["buffPadding"] = 0.25,
				},
			},
			["displays"] = {
				["Interrupts"] = {
					["rel"] = "CENTER",
					["x"] = -166.6309509277344,
					["y"] = -157.1181335449219,
				},
				["Cooldowns"] = {
					["rel"] = "CENTER",
					["x"] = -6.519773483276367,
					["elvuiCooldown"] = true,
					["y"] = 186.9631805419922,
				},
				["Primary"] = {
					["rel"] = "CENTER",
					["elvuiCooldown"] = true,
					["primaryHeight"] = 75,
					["x"] = 197.92724609375,
					["y"] = -192.5466766357422,
					["primaryWidth"] = 75,
					["queue"] = {
						["elvuiCooldown"] = true,
					},
				},
				["AOE"] = {
					["rel"] = "CENTER",
					["elvuiCooldown"] = true,
					["y"] = -139,
				},
				["Defensives"] = {
					["rel"] = "CENTER",
					["x"] = -223.2471771240234,
					["y"] = -157.1182556152344,
				},
			},
			["packs"] = {
				["Protection Paladin"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230524,
					["author"] = "SimC",
					["desc"] = "2023-05-24:  Update Light's Judgment, Divine Toll, Eye of Tyr usage.\n\n2023-02-27:  Use SotR with Bastion of Light, Divine Purpose, or 3+ Holy Power if Righteous Protector is not talented or is outside its ICD.\n\n2023-03-06:  Check for Of Dusk and Dawn buffs before spending using SotR at 3 CP.\n\n2023-03-19:  Updated for 10.0.7.\n\n2023-03-21:  Oops, Blessed Hammer still exists.\n\n2023-03-26:  Updates from SimulationCraft (Avenger's Shield usage for 2pc Tier 29, SotR if ICD is bypassed).",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "rebuke",
							}, -- [1]
							{
								["action"] = "cleanse_toxins",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "standard",
							}, -- [6]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.paladin_aura.down",
								["action"] = "devotion_aura",
							}, -- [1]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [4]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "tanking & buff.shield_of_the_righteous.down & ( holy_power.deficit = 0 || buff.divine_purpose.up )",
								["action"] = "shield_of_the_righteous",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < wog_health & ( holy_power.deficit = 0 || buff.divine_purpose.up || buff.shining_light_free.up )",
								["action"] = "word_of_glory",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "tanking & incoming_damage_5s > goak_damage & ! ( buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "guardian_of_ancient_kings",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.final_stand.enabled & tanking & incoming_damage_5s > ds_damage & ! ( buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "divine_shield",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "tanking & incoming_damage_5s > goak_damage & ! ( buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "ardent_defender",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 15",
								["action"] = "lay_on_hands",
							}, -- [6]
						},
						["trinkets"] = {
							{
								["enabled"] = true,
								["op"] = "setif",
								["description"] = "Evaluates a trinkets cooldown, divided by moment of glory or avenging wraths's cooldown. If it's value has no remainder return 1, else return 0.5.",
								["var_name"] = "trinket_1_sync",
								["value"] = "1",
								["action"] = "variable",
								["value_else"] = "0.5",
								["criteria"] = "trinket.t1.has_use_buff & ( ( talent.moment_of_glory.enabled & trinket.t1.cooldown.duration % cooldown.moment_of_glory.duration = 0 ) || ( ! talent.moment_of_glory.enabled & trinket.t1.cooldown.duration % cooldown.avenging_wrath.duration = 0 ) )",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_2_sync",
								["value"] = "1",
								["value_else"] = "0.5",
								["criteria"] = "trinket.t2.has_use_buff & ( ( talent.moment_of_glory.enabled & trinket.t2.cooldown.duration % cooldown.moment_of_glory.duration = 0 ) || ( ! talent.moment_of_glory.enabled & trinket.t2.cooldown.duration % cooldown.avenging_wrath.duration = 0 ) )",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_priority",
								["value"] = "2",
								["value_else"] = "1",
								["criteria"] = "! trinket.t1.has_use_buff & trinket.t2.has_use_buff || trinket.t2.has_use_buff & ( ( trinket.t2.cooldown.duration / trinket.t2.buff_duration ) * ( 1.5 + trinket.t2.has_use_buff ) * ( variable.trinket_2_sync ) ) > ( ( trinket.t1.cooldown.duration / trinket.t1.buff_duration ) * ( 1.5 + trinket.t1.has_use_buff ) * ( variable.trinket_1_sync ) )",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff",
								["var_name"] = "trinket_1_buffs",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff",
								["var_name"] = "trinket_2_buffs",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.moment_of_glory.up || ! talent.moment_of_glory_enabled.enabled & buff.aw_sentinel.up ) & ( ! trinket.t2.has_cooldown || trinket.t2.cooldown.remains || variable.trinket_priority = 1 ) || boss & trinket.t1.buff_duration >= fight_remains",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( buff.moment_of_glory.up || ! talent.moment_of_glory_enabled.enabled & buff.aw_sentinel.up ) & ( ! trinket.t1.has_cooldown || trinket.t1.cooldown.remains || variable.trinket_priority = 2 ) || boss & trinket.t2.buff_duration >= fight_remains",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! variable.trinket_1_buffs & ( trinket.t2.cooldown.remains || ! variable.trinket_2_buffs || ( cooldown.moment_of_glory.remains > 20 || ( ! talent.moment_of_glory.enabled & ( cooldown.sentinel.remains > 20 || cooldown.avenging_wrath.remains > 20 ) ) ) )",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! variable.trinket_2_buffs & ( trinket.t1.cooldown.remains || ! variable.trinket_1_buffs || ( cooldown.moment_of_glory.remains > 20 || ( ! talent.moment_of_glory.enabled & ( cooldown.sentinel.remains > 20 || cooldown.avenging_wrath.remains > 20 ) ) ) )",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [9]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [10]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["action"] = "avengers_shield",
								["description"] = "Use Avenger's Shield as first priority before anything else, if t29 2pc is equipped.",
								["criteria"] = "time = 0 & set_bonus.tier29_2pc",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.lights_judgment >= 2 || ! raid_event.adds.exists || raid_event.adds.in > 75 || raid_event.adds.up",
								["action"] = "lights_judgment",
							}, -- [2]
							{
								["action"] = "avenging_wrath",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "avenging_wrath",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.aw_sentinel.up",
								["action"] = "potion",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.aw_sentinel.remains < 15 || ( time > 10 || cooldown.sentinel.remains > 15 || cooldown.avenging_wrath.remains > 15 ) & ( cooldown.avengers_shield.remains & cooldown.judgment.remains & cooldown.hammer_of_wrath.remains ) )",
								["action"] = "moment_of_glory",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.shield_of_the_righteous >= 3",
								["action"] = "divine_toll",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.inmost_light.enabled & spell_targets.shield_of_the_righteous >= 3",
								["action"] = "eye_of_tyr",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.aw_sentinel.up",
								["action"] = "bastion_of_light",
							}, -- [9]
						},
						["standard"] = {
							{
								["enabled"] = true,
								["action"] = "shield_of_the_righteous",
								["description"] = "Use Shield of the Righteous according to Righteous Protector's ICD, but use it asap if it's a free proc (Bugged interaction, this ignores ICD)",
								["criteria"] = "( ( ! talent.righteous_protector.enabled || buff.righteous_protector_icd.down ) & holy_power > 2 ) || buff.bastion_of_light.up || buff.divine_purpose.up",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "avengers_shield",
								["description"] = "Use Avenger's Shield as First Priority when 2pc buff is missing.",
								["criteria"] = "buff.moment_of_glory.up || ( set_bonus.tier29_2pc & ( ! buff.ally_of_the_light.up || buff.ally_of_the_light.remains < gcd.max ) )",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.aw_sentinel.up",
								["action"] = "hammer_of_wrath",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.crusaders_judgment.enabled & ( charges = 2 || cooldown.judgment.remains < 4 ) || ! talent.crusaders_judgment.enabled",
								["action"] = "judgment",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( time > 20 & ( ! raid_event.adds.exists || raid_event.adds.in > 10 ) ) || ( ( buff.avenging_wrath.up || ! talent.avenging_wrath.enabled ) & ( buff.moment_of_glory.up || ! talent.moment_of_glory.enabled ) )",
								["action"] = "divine_toll",
							}, -- [5]
							{
								["action"] = "avengers_shield",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "judgment",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up",
								["action"] = "consecration",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! talent.inmost_light.enabled || raid_event.adds.in >= 45",
								["action"] = "eye_of_tyr",
							}, -- [10]
							{
								["action"] = "blessed_hammer",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "hammer_of_the_righteous",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.shining_light_free.up",
								["action"] = "word_of_glory",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "holy_power < 5",
								["action"] = "arcane_torrent",
							}, -- [15]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [16]
						},
					},
					["version"] = 20230524,
					["warnings"] = "The import for 'trinkets' required some automated changes.\nLine 1: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 1: Converted operations in 'trinket.t1.has_use_buff&((talent.moment_of_glory.enabled&trinket.t1.cooldown.duration%%cooldown.moment_of_glory.duration=0)||(!talent.moment_of_glory.enabled&trinket.t1.cooldown.duration%%cooldown.avenging_wrath.duration=0))' to 'trinket.t1.has_use_buff&((talent.moment_of_glory.enabled&trinket.t1.cooldown.duration%cooldown.moment_of_glory.duration=0)||(!talent.moment_of_glory.enabled&trinket.t1.cooldown.duration%cooldown.avenging_wrath.duration=0))'.\nLine 2: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 2: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 2: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 2: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 2: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 2: Converted operations in 'trinket.t2.has_use_buff&((talent.moment_of_glory.enabled&trinket.t2.cooldown.duration%%cooldown.moment_of_glory.duration=0)||(!talent.moment_of_glory.enabled&trinket.t2.cooldown.duration%%cooldown.avenging_wrath.duration=0))' to 'trinket.t2.has_use_buff&((talent.moment_of_glory.enabled&trinket.t2.cooldown.duration%cooldown.moment_of_glory.duration=0)||(!talent.moment_of_glory.enabled&trinket.t2.cooldown.duration%cooldown.avenging_wrath.duration=0))'.\nLine 3: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 3: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 3: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 3: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_buff.strength' (1x).\nLine 3: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 3: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 3: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 3: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_buff.strength' (1x).\nLine 3: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted operations in '!trinket.t1.has_use_buff&trinket.t2.has_use_buff||trinket.t2.has_use_buff&((trinket.t2.cooldown.duration%trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration%trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))' to '!trinket.t1.has_use_buff&trinket.t2.has_use_buff||trinket.t2.has_use_buff&((trinket.t2.cooldown.duration/trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration/trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))'.\nLine 4: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_buff.strength' (1x).\nLine 4: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_buff.mastery' (1x).\nLine 4: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_buff.versatility' (1x).\nLine 4: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_buff.haste' (1x).\nLine 4: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_buff.crit' (1x).\nLine 4: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_buff.strength' (1x).\nLine 5: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_buff.mastery' (1x).\nLine 5: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_buff.versatility' (1x).\nLine 5: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_buff.haste' (1x).\nLine 5: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_buff.crit' (1x).\nLine 5: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'talent.moment_of_glory_enabled' to 'talent.moment_of_glory_enabled.enabled' (1x).\nLine 6: Converted 'trinket.2.has_cooldown' to 'trinket.t2.has_cooldown' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 6: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 6: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 7: Converted 'talent.moment_of_glory_enabled' to 'talent.moment_of_glory_enabled.enabled' (1x).\nLine 7: Converted 'trinket.1.has_cooldown' to 'trinket.t1.has_cooldown' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 7: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 7: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 8: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 8: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 9: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 9: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nThe following auras were used in the action list but were not found in the addon database:\n - crit\n\nImported 6 action lists.\n",
					["profile"] = "actions.precombat+=/devotion_aura,if=buff.paladin_aura.down\nactions.precombat+=/lights_judgment\nactions.precombat+=/arcane_torrent\nactions.precombat+=/consecration\n\n# Executed every time the actor is available.\nactions=rebuke\nactions+=/cleanse_toxins\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=mitigation\nactions+=/call_action_list,name=trinkets\nactions+=/call_action_list,name=standard\n\n# Use Avenger's Shield as first priority before anything else, if t29 2pc is equipped.\nactions.cooldowns+=/avengers_shield,if=time=0&set_bonus.tier29_2pc\nactions.cooldowns+=/lights_judgment,if=spell_targets.lights_judgment>=2||!raid_event.adds.exists||raid_event.adds.in>75||raid_event.adds.up\nactions.cooldowns+=/avenging_wrath\nactions.cooldowns+=/sentinel\nactions.cooldowns+=/potion,if=buff.aw_sentinel.up\nactions.cooldowns+=/moment_of_glory,if=(buff.aw_sentinel.remains<15||(time>10||cooldown.sentinel.remains>15||cooldown.avenging_wrath.remains>15)&(cooldown.avengers_shield.remains&cooldown.judgment.remains&cooldown.hammer_of_wrath.remains))\nactions.cooldowns+=/divine_toll,if=spell_targets.shield_of_the_righteous>=3\nactions.cooldowns+=/eye_of_tyr,if=talent.inmost_light.enabled&spell_targets.shield_of_the_righteous>=3\nactions.cooldowns+=/bastion_of_light,if=buff.aw_sentinel.up\n\nactions.mitigation=shield_of_the_righteous,if=tanking&buff.shield_of_the_righteous.down&(holy_power.deficit=0||buff.divine_purpose.up)\nactions.mitigation+=/word_of_glory,if=health.pct<wog_health&(holy_power.deficit=0||buff.divine_purpose.up||buff.shining_light_free.up)\nactions.mitigation+=/guardian_of_ancient_kings,if=tanking&incoming_damage_5s>goak_damage&!(buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/divine_shield,if=talent.final_stand.enabled&tanking&incoming_damage_5s>ds_damage&!(buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/ardent_defender,if=tanking&incoming_damage_5s>goak_damage&!(buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/lay_on_hands,if=health.pct<15\n\n# Use Shield of the Righteous according to Righteous Protector's ICD, but use it asap if it's a free proc (Bugged interaction, this ignores ICD)\nactions.standard+=/shield_of_the_righteous,if=((!talent.righteous_protector.enabled||buff.righteous_protector_icd.down)&holy_power>2)||buff.bastion_of_light.up||buff.divine_purpose.up\n# Use Avenger's Shield as First Priority when 2pc buff is missing.\nactions.standard+=/avengers_shield,if=buff.moment_of_glory.up||(set_bonus.tier29_2pc&(!buff.ally_of_the_light.up||buff.ally_of_the_light.remains<gcd))\nactions.standard+=/hammer_of_wrath,if=buff.aw_sentinel.up\nactions.standard+=/judgment,cycle_targets=1,if=talent.crusaders_judgment.enabled&(charges=2||cooldown.judgment.remains<4)||!talent.crusaders_judgment.enabled\nactions.standard+=/divine_toll,if=(time>20&(!raid_event.adds.exists||raid_event.adds.in>10))||((buff.avenging_wrath.up||!talent.avenging_wrath.enabled)&(buff.moment_of_glory.up||!talent.moment_of_glory.enabled))\nactions.standard+=/avengers_shield\nactions.standard+=/hammer_of_wrath\nactions.standard+=/judgment,cycle_targets=1\nactions.standard+=/consecration,if=!consecration.up\nactions.standard+=/eye_of_tyr,if=!talent.inmost_light.enabled||raid_event.adds.in>=45\nactions.standard+=/blessed_hammer\nactions.standard+=/hammer_of_the_righteous\nactions.standard+=/crusader_strike\nactions.standard+=/word_of_glory,if=buff.shining_light_free.up\nactions.standard+=/arcane_torrent,if=holy_power<5\nactions.standard+=/consecration\n\n# Evaluates a trinkets cooldown, divided by moment of glory or avenging wraths's cooldown. If it's value has no remainder return 1, else return 0.5.\nactions.trinkets+=/variable,name=trinket_1_sync,op=setif,value=1,value_else=0.5,condition=trinket.1.has_use_buff&((talent.moment_of_glory.enabled&trinket.1.cooldown.duration%%cooldown.moment_of_glory.duration=0)||(!talent.moment_of_glory.enabled&trinket.1.cooldown.duration%%cooldown.avenging_wrath.duration=0))\nactions.trinkets+=/variable,name=trinket_2_sync,op=setif,value=1,value_else=0.5,condition=trinket.2.has_use_buff&((talent.moment_of_glory.enabled&trinket.2.cooldown.duration%%cooldown.moment_of_glory.duration=0)||(!talent.moment_of_glory.enabled&trinket.2.cooldown.duration%%cooldown.avenging_wrath.duration=0))\nactions.trinkets+=/variable,name=trinket_priority,op=setif,value=2,value_else=1,condition=!trinket.1.has_use_buff&trinket.2.has_use_buff||trinket.2.has_use_buff&((trinket.2.cooldown.duration%trinket.2.proc.any_dps.duration)*(1.5+trinket.2.has_buff.strength)*(variable.trinket_2_sync))>((trinket.1.cooldown.duration%trinket.1.proc.any_dps.duration)*(1.5+trinket.1.has_buff.strength)*(variable.trinket_1_sync))\nactions.trinkets+=/variable,name=trinket_1_buffs,value=trinket.1.has_buff.strength||trinket.1.has_buff.mastery||trinket.1.has_buff.versatility||trinket.1.has_buff.haste||trinket.1.has_buff.crit\nactions.trinkets+=/variable,name=trinket_2_buffs,value=trinket.2.has_buff.strength||trinket.2.has_buff.mastery||trinket.2.has_buff.versatility||trinket.2.has_buff.haste||trinket.2.has_buff.crit\nactions.trinkets+=/use_item,slot=trinket1,if=(buff.moment_of_glory.up||!talent.moment_of_glory_enabled&buff.aw_sentinel.up)&(!trinket.2.has_cooldown||trinket.2.cooldown.remains||variable.trinket_priority=1)||boss&trinket.1.proc.any_dps.duration>=fight_remains\nactions.trinkets+=/use_item,slot=trinket2,if=(buff.moment_of_glory.up||!talent.moment_of_glory_enabled&buff.aw_sentinel.up)&(!trinket.1.has_cooldown||trinket.1.cooldown.remains||variable.trinket_priority=2)||boss&trinket.2.proc.any_dps.duration>=fight_remains\nactions.trinkets+=/use_item,slot=trinket1,if=!variable.trinket_1_buffs&(trinket.2.cooldown.remains||!variable.trinket_2_buffs||(cooldown.moment_of_glory.remains>20||(!talent.moment_of_glory.enabled&(cooldown.sentinel.remains>20||cooldown.avenging_wrath.remains>20))))\nactions.trinkets+=/use_item,slot=trinket2,if=!variable.trinket_2_buffs&(trinket.1.cooldown.remains||!variable.trinket_1_buffs||(cooldown.moment_of_glory.remains>20||(!talent.moment_of_glory.enabled&(cooldown.sentinel.remains>20||cooldown.avenging_wrath.remains>20))))\nactions.trinkets+=/use_items",
					["spec"] = 66,
				},
				["Holy Paladin"] = {
					["builtIn"] = true,
					["date"] = 20230327,
					["spec"] = 65,
					["desc"] = "2023-03-22:  Updated for 10.0.7 (Seraphim removed, Avenging Wrath and Avenging Crusader split).",
					["lists"] = {
						["spenders"] = {
							{
								["enabled"] = true,
								["criteria"] = "! talent.awakening.enabled || active_enemies > 1",
								["action"] = "shield_of_the_righteous",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.awakening.enabled & group",
								["action"] = "light_of_dawn",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.awakening.enabled",
								["action"] = "word_of_glory",
							}, -- [3]
						},
						["default"] = {
							{
								["action"] = "rebuke",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "avenging_wrath",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "avenging_crusader",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "blessing_of_summer",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "blessing_of_autumn",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "blessing_of_winter",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "blessing_of_spring",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "! talent.avenging_crusader.enabled || cooldown.avenging_crusader.remains > gcd.max || holy_power.deficit = 0",
								["list_name"] = "spenders",
							}, -- [9]
							{
								["action"] = "divine_toll",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "lights_hammer",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "holy_prism",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up & target.within10",
								["action"] = "consecration",
							}, -- [13]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "judgment",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "holy_shock",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.holy_shock.remains > gcd.max",
								["action"] = "crusader_strike",
							}, -- [17]
						},
					},
					["version"] = 20230327,
					["warnings"] = "The import for 'spenders' required some automated changes.\nLine 1: Converted 'talent.awakening' to 'talent.awakening.enabled' (1x).\nLine 2: Converted 'talent.awakening' to 'talent.awakening.enabled' (1x).\nLine 3: Converted 'talent.awakening' to 'talent.awakening.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 9: Converted 'talent.avenging_crusader' to 'talent.avenging_crusader.enabled' (1x).\n\nImported 3 action lists.\n",
					["author"] = "Kaleokalani",
					["profile"] = "actions+=/rebuke\nactions+=/avenging_wrath\nactions+=/avenging_crusader\nactions+=/blessing_of_summer\nactions+=/blessing_of_autumn\nactions+=/blessing_of_winter\nactions+=/blessing_of_spring\nactions+=/use_items\nactions+=/call_action_list,name=spenders,strict=1,if=!talent.avenging_crusader||cooldown.avenging_crusader.remains>gcd.max||holy_power.deficit=0\nactions+=/divine_toll\nactions+=/lights_hammer\nactions+=/holy_prism\nactions+=/consecration,if=!consecration.up&target.within10\nactions+=/hammer_of_wrath\nactions+=/judgment\nactions+=/holy_shock\nactions+=/crusader_strike,if=cooldown.holy_shock.remains>gcd.max\n\nactions.spenders+=/shield_of_the_righteous,if=!talent.awakening||active_enemies>1\nactions.spenders+=/light_of_dawn,if=talent.awakening&group\nactions.spenders+=/word_of_glory,if=talent.awakening",
				},
				["Retribution"] = {
					["builtIn"] = true,
					["date"] = 20230518,
					["spec"] = 70,
					["desc"] = "2023-05-18: More work to let abilities synced abilities desync if the other ability is disabled/toggled/etc.\n\n2023-05-17: Iterate on FR/AW sync to allow spenders to be used while waiting for FR/AW.\n\n2023-05-14:  Improve FR/AW sync.\n\n2023-05-08:  More 10.1 updates.\n\n2023-05-02:  10.1 update.\n\n2023-03-28:  Update potion end-of-fight usage to check for boss.\n\n2023-03-21:  10.0.7 priority update.\n\n2023-03-13:  Edits to support finishers during Crusade procs from Retribution Aura.\n\n2023-02-21:  Iterate on trinket timing (end of bossfight logic).",
					["profile"] = "actions.precombat+=/arcane_torrent,if=talent.final_reckoning\nactions.precombat+=/shield_of_vengeance\nactions.precombat+=/variable,name=trinket_1_buffs,value=trinket.1.has_buff.strength||trinket.1.has_buff.mastery||trinket.1.has_buff.versatility||trinket.1.has_buff.haste||trinket.1.has_buff.crit\nactions.precombat+=/variable,name=trinket_2_buffs,value=trinket.2.has_buff.strength||trinket.2.has_buff.mastery||trinket.2.has_buff.versatility||trinket.2.has_buff.haste||trinket.2.has_buff.crit\nactions.precombat+=/variable,name=trinket_1_manual,value=trinket.1.is.manic_grieftorch\nactions.precombat+=/variable,name=trinket_2_manual,value=trinket.2.is.manic_grieftorch\nactions.precombat+=/variable,name=trinket_1_sync,op=setif,value=1,value_else=0.5,condition=variable.trinket_1_buffs&(trinket.1.cooldown.duration%%cooldown.crusade.duration=0||cooldown.crusade.duration%%trinket.1.cooldown.duration=0||trinket.1.cooldown.duration%%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%%trinket.1.cooldown.duration=0)\nactions.precombat+=/variable,name=trinket_2_sync,op=setif,value=1,value_else=0.5,condition=variable.trinket_2_buffs&(trinket.2.cooldown.duration%%cooldown.crusade.duration=0||cooldown.crusade.duration%%trinket.2.cooldown.duration=0||trinket.2.cooldown.duration%%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%%trinket.2.cooldown.duration=0)\nactions.precombat+=/variable,name=trinket_priority,op=setif,value=2,value_else=1,condition=!variable.trinket_1_buffs&variable.trinket_2_buffs||variable.trinket_2_buffs&((trinket.2.cooldown.duration%trinket.2.proc.any_dps.duration)*(1.5+trinket.2.has_buff.strength)*(variable.trinket_2_sync))>((trinket.1.cooldown.duration%trinket.1.proc.any_dps.duration)*(1.5+trinket.1.has_buff.strength)*(variable.trinket_1_sync))\n\n# Executed every time the actor is available.\nactions+=/rebuke\nactions+=/variable,name=time_to_crusade,op=setif,value=cooldown.crusade.remains<?buff.crusade.remains,value_else=0,condition=talent.crusade\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=generators\n\nactions.cooldowns=potion,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10||boss&fight_remains<25\nactions.cooldowns+=/lights_judgment,if=spell_targets.lights_judgment>=2||!raid_event.adds.exists||raid_event.adds.in>75||raid_event.adds.up\nactions.cooldowns+=/fireblood,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\nactions.cooldowns+=/use_item,name=algethar_puzzle_box,if=(cooldown.avenging_wrath.remains<5&!talent.crusade||variable.time_to_crusade<5&talent.crusade)&(holy_power>=5&time<5||holy_power>=3&time>5)\nactions.cooldowns+=/use_item,slot=trinket1,if=(buff.avenging_wrath.up&cooldown.avenging_wrath.remains>40||buff.crusade.up&buff.crusade.stack=10)&(!trinket.2.has_cooldown||trinket.2.cooldown.remains||variable.trinket_priority=1)||trinket.1.proc.any_dps.duration>=fight_remains\nactions.cooldowns+=/use_item,slot=trinket2,if=(buff.avenging_wrath.up&cooldown.avenging_wrath.remains>40||buff.crusade.up&buff.crusade.stack=10)&(!trinket.1.has_cooldown||trinket.1.cooldown.remains||variable.trinket_priority=2)||trinket.2.proc.any_dps.duration>=fight_remains\nactions.cooldowns+=/use_item,slot=trinket1,if=!variable.trinket_1_buffs&(!variable.trinket_1_manual||buff.avenging_wrath.down&buff.crusade.down)&(trinket.2.cooldown.remains||!variable.trinket_2_buffs||!buff.crusade.up&cooldown.crusade.remains>20||!buff.avenging_wrath.up&cooldown.avenging_wrath.remains>20)\nactions.cooldowns+=/use_item,slot=trinket2,if=!variable.trinket_2_buffs&(!variable.trinket_2_manual||buff.avenging_wrath.down&buff.crusade.down)&(trinket.1.cooldown.remains||!variable.trinket_1_buffs||!buff.crusade.up&cooldown.crusade.remains>20||!buff.avenging_wrath.up&cooldown.avenging_wrath.remains>20)\nactions.cooldowns+=/use_item,name=shadowed_razing_annihilator,if=(trinket.2.cooldown.remains||!variable.trinket_2_buffs)&(trinket.2.cooldown.remains||!variable.trinket_2_buffs)\nactions.cooldowns+=/shield_of_vengeance,if=fight_remains>15\nactions.cooldowns+=/avenging_wrath,if=holy_power>=4&time<5||holy_power>=3&time>5||holy_power>=2&talent.divine_auxiliary&(talent.execution_sentence&(cooldown.execution_sentence.remains=0||cooldown.execution_sentence.remains>15||action.execution_sentence.disabled)||talent.final_reckoning&(cooldown.final_reckoning.remains=0||cooldown.final_reckoning.remains>30||action.final_reckoning.disabled))\nactions.cooldowns+=/crusade,if=buff.crusade.remains<gcd.max&(holy_power>=5&time<5||holy_power>=3&time>5)\nactions.cooldowns+=/execution_sentence,if=(!buff.crusade.up&cooldown.crusade.remains>10||buff.crusade.stack=10||cooldown.avenging_wrath.remains>10)&(holy_power>=3||holy_power>=2&talent.divine_auxiliary)&target.time_to_die>8\nactions.cooldowns+=/final_reckoning,if=(holy_power>=4&time<8||holy_power>=3&time>=8||holy_power>=2&talent.divine_auxiliary)&(!talent.crusade&(buff.avenging_wrath.up||cooldown.avenging_wrath.remains>30||action.avenging_wrath.disabled)||talent.crusade&(cooldown.crusade.remains>30&(!buff.crusade.up||buff.crusade.stack>=10)||action.crusade.disabled))&(time_to_hpg>0||holy_power=5||holy_power>=2&talent.divine_auxiliary)\n\nactions.finishers+=/variable,name=ds_castable,value=spell_targets.divine_storm>=2||buff.empyrean_power.up\n# Modified to allow DS to be used when Final Reckoning isn't being recommended due to CD alignment with Avenging Wrath.\nactions.finishers+=/divine_storm,if=variable.ds_castable&!buff.empyrean_legacy.up&!(buff.divine_arbiter.up&buff.divine_arbiter.stack>24)&(!talent.crusade||cooldown.crusade.remains>gcd*3)&(!talent.final_reckoning||talent.divine_auxiliary||cooldown.final_reckoning.remains>gcd*2||action.final_reckoning.disabled||!talent.crusade&(buff.avenging_wrath.down&cooldown.avenging_wrath.remains>gcd*3)||buff.crusade.up&buff.crusade.stack<10)\nactions.finishers+=/justicars_vengeance,if=(!talent.crusade||cooldown.crusade.remains>gcd*3)&(!talent.final_reckoning||talent.divine_auxiliary||cooldown.final_reckoning.remains>gcd*2||!talent.crusade&buff.avenging_wrath.down&cooldown.avenging_wrath.remains>gcd*3)||buff.crusade.up&buff.crusade.stack<10\nactions.finishers+=/templars_verdict,if=(!talent.crusade||cooldown.crusade.remains>gcd*3)&(!talent.final_reckoning||talent.divine_auxiliary||cooldown.final_reckoning.remains>gcd*2||!talent.crusade&buff.avenging_wrath.down&cooldown.avenging_wrath.remains>gcd*3)||buff.crusade.up&buff.crusade.stack<10\n\nactions.generators+=/call_action_list,name=finishers,strict=1,if=holy_power=5||(debuff.judgment.up||holy_power=4)&buff.divine_resonance.up\nactions.generators+=/wake_of_ashes,if=holy_power<=2&(cooldown.avenging_wrath.remains||cooldown.crusade.remains||!talent.crusade&action.avenging_wrath.disabled||talent.crusade&action.crusade.disabled)&(!talent.execution_sentence||cooldown.execution_sentence.remains>4||target.time_to_die<8||action.execution_sentence.disabled)\nactions.generators+=/divine_toll,if=holy_power<=2&!debuff.judgment.up&(cooldown.avenging_wrath.remains>15||cooldown.crusade.remains>15||!talent.crusade&action.avenging_wrath.disabled||talent.crusade&action.crusade.disabled||fight_remains<8)\nactions.generators+=/call_action_list,name=finishers,strict=1,if=holy_power>=3&buff.crusade.up&buff.crusade.stack<10\nactions.generators+=/templar_slash,if=buff.templar_strikes.remains<gcd&spell_targets.divine_storm>=2\nactions.generators+=/judgment,if=!debuff.judgment.up&(holy_power<=3||!talent.boundless_judgment)&spell_targets.divine_storm>=2\nactions.generators+=/blade_of_justice,if=(holy_power<=3||!talent.holy_blade)&spell_targets.divine_storm>=2\nactions.generators+=/hammer_of_wrath,if=(spell_targets.divine_storm<2||!talent.blessed_champion||set_bonus.tier30_4pc)&(holy_power<=3||target.health.pct>20||!talent.vanguards_momentum)\nactions.generators+=/templar_slash,if=buff.templar_strikes.remains<gcd\nactions.generators+=/judgment,if=!buff.avenging_wrath.up&(holy_power<=3||!talent.boundless_judgment)&talent.crusading_strikes\nactions.generators+=/blade_of_justice,if=holy_power<=3||!talent.holy_blade\nactions.generators+=/judgment,if=!debuff.judgment.up&(holy_power<=3||!talent.boundless_judgment)\nactions.generators+=/call_action_list,name=finishers,strict=1,if=(target.health.pct<=20||buff.avenging_wrath.up||buff.crusade.up||buff.empyrean_power.up)\nactions.generators+=/consecration,if=!consecration.up&spell_targets.divine_storm>=2\nactions.generators+=/divine_hammer,if=spell_targets.divine_storm>=2\nactions.generators+=/crusader_strike,if=cooldown.crusader_strike.charges_fractional>=1.75&(holy_power<=2||holy_power<=3&cooldown.blade_of_justice.remains>gcd*2||holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2)\nactions.generators+=/call_action_list,name=finishers\nactions.generators+=/templar_slash\nactions.generators+=/templar_strike\nactions.generators+=/judgment,if=holy_power<=3||!talent.boundless_judgment\nactions.generators+=/hammer_of_wrath,if=holy_power<=3||target.health.pct>20||!talent.vanguards_momentum\nactions.generators+=/crusader_strike\nactions.generators+=/arcane_torrent\nactions.generators+=/consecration\nactions.generators+=/divine_hammer",
					["version"] = 20230518,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 2: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 1: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 3: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_buff.strength' (1x).\nLine 3: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_buff.mastery' (1x).\nLine 3: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_buff.versatility' (1x).\nLine 3: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_buff.haste' (1x).\nLine 3: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_buff.crit' (1x).\nLine 3: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_buff.strength' (1x).\nLine 4: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_buff.mastery' (1x).\nLine 4: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_buff.versatility' (1x).\nLine 4: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_buff.haste' (1x).\nLine 4: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_buff.crit' (1x).\nLine 4: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.is.manic_grieftorch' to 'trinket.t1.is.manic_grieftorch' (1x).\nLine 6: Converted 'trinket.2.is.manic_grieftorch' to 'trinket.t2.is.manic_grieftorch' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 7: Converted operations in 'variable.trinket_1_buffs&(trinket.t1.cooldown.duration%%cooldown.crusade.duration=0||cooldown.crusade.duration%%trinket.t1.cooldown.duration=0||trinket.t1.cooldown.duration%%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%%trinket.t1.cooldown.duration=0)' to 'variable.trinket_1_buffs&(trinket.t1.cooldown.duration%cooldown.crusade.duration=0||cooldown.crusade.duration%trinket.t1.cooldown.duration=0||trinket.t1.cooldown.duration%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%trinket.t1.cooldown.duration=0)'.\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 8: Converted operations in 'variable.trinket_2_buffs&(trinket.t2.cooldown.duration%%cooldown.crusade.duration=0||cooldown.crusade.duration%%trinket.t2.cooldown.duration=0||trinket.t2.cooldown.duration%%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%%trinket.t2.cooldown.duration=0)' to 'variable.trinket_2_buffs&(trinket.t2.cooldown.duration%cooldown.crusade.duration=0||cooldown.crusade.duration%trinket.t2.cooldown.duration=0||trinket.t2.cooldown.duration%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%trinket.t2.cooldown.duration=0)'.\nLine 9: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 9: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 9: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 9: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 9: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_buff.strength' (1x).\nLine 9: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_use_buff' (1x).\nLine 9: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 9: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 9: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 9: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 9: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_buff.strength' (1x).\nLine 9: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_use_buff' (1x).\nLine 9: Converted operations in '!variable.trinket_1_buffs&variable.trinket_2_buffs||variable.trinket_2_buffs&((trinket.t2.cooldown.duration%trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration%trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))' to '!variable.trinket_1_buffs&variable.trinket_2_buffs||variable.trinket_2_buffs&((trinket.t2.cooldown.duration/trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration/trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))'.\nThe following auras were used in the action list but were not found in the addon database:\n - crit\n\nThe import for 'cooldowns' required some automated changes.\nLine 4: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 4: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 5: Converted 'trinket.2.has_cooldown' to 'trinket.t2.has_cooldown' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 5: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 5: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 6: Converted 'trinket.1.has_cooldown' to 'trinket.t1.has_cooldown' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 6: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 6: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 7: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 7: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 8: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 8: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 9: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 9: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 9: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 9: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 9: Unsupported use_item action [ shadowed_razing_annihilator]; entry disabled.\nLine 11: Converted 'talent.divine_auxiliary' to 'talent.divine_auxiliary.enabled' (1x).\nLine 11: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 11: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 13: Converted 'talent.divine_auxiliary' to 'talent.divine_auxiliary.enabled' (1x).\nLine 14: Converted 'talent.divine_auxiliary' to 'talent.divine_auxiliary.enabled' (1x).\nLine 14: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 14: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 14: Converted 'talent.divine_auxiliary' to 'talent.divine_auxiliary.enabled' (1x).\n\nThe import for 'finishers' required some automated changes.\nLine 2: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 2: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 2: Converted 'talent.divine_auxiliary' to 'talent.divine_auxiliary.enabled' (1x).\nLine 2: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 3: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 3: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 3: Converted 'talent.divine_auxiliary' to 'talent.divine_auxiliary.enabled' (1x).\nLine 3: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 4: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 4: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 4: Converted 'talent.divine_auxiliary' to 'talent.divine_auxiliary.enabled' (1x).\nLine 4: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\n\nThe import for 'generators' required some automated changes.\nLine 2: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 2: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 2: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 3: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 3: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 6: Converted 'talent.boundless_judgment' to 'talent.boundless_judgment.enabled' (1x).\nLine 7: Converted 'talent.holy_blade' to 'talent.holy_blade.enabled' (1x).\nLine 8: Converted 'talent.blessed_champion' to 'talent.blessed_champion.enabled' (1x).\nLine 8: Converted 'talent.vanguards_momentum' to 'talent.vanguards_momentum.enabled' (1x).\nLine 10: Converted 'talent.boundless_judgment' to 'talent.boundless_judgment.enabled' (1x).\nLine 10: Converted 'talent.crusading_strikes' to 'talent.crusading_strikes.enabled' (1x).\nLine 11: Converted 'talent.holy_blade' to 'talent.holy_blade.enabled' (1x).\nLine 12: Converted 'talent.boundless_judgment' to 'talent.boundless_judgment.enabled' (1x).\nLine 20: Converted 'talent.boundless_judgment' to 'talent.boundless_judgment.enabled' (1x).\nLine 21: Converted 'talent.vanguards_momentum' to 'talent.vanguards_momentum.enabled' (1x).\n\nImported 5 action lists.\n",
					["author"] = "SimC",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "rebuke",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "time_to_crusade",
								["value"] = "cooldown.crusade.remains <? buff.crusade.remains",
								["value_else"] = "0",
								["criteria"] = "talent.crusade.enabled",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "generators",
							}, -- [4]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.final_reckoning.enabled",
								["action"] = "arcane_torrent",
							}, -- [1]
							{
								["action"] = "shield_of_vengeance",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff",
								["var_name"] = "trinket_1_buffs",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff",
								["var_name"] = "trinket_2_buffs",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.is.manic_grieftorch",
								["var_name"] = "trinket_1_manual",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.is.manic_grieftorch",
								["var_name"] = "trinket_2_manual",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_1_sync",
								["value"] = "1",
								["value_else"] = "0.5",
								["criteria"] = "variable.trinket_1_buffs & ( trinket.t1.cooldown.duration % cooldown.crusade.duration = 0 || cooldown.crusade.duration % trinket.t1.cooldown.duration = 0 || trinket.t1.cooldown.duration % cooldown.avenging_wrath.duration = 0 || cooldown.avenging_wrath.duration % trinket.t1.cooldown.duration = 0 )",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_2_sync",
								["value"] = "1",
								["value_else"] = "0.5",
								["criteria"] = "variable.trinket_2_buffs & ( trinket.t2.cooldown.duration % cooldown.crusade.duration = 0 || cooldown.crusade.duration % trinket.t2.cooldown.duration = 0 || trinket.t2.cooldown.duration % cooldown.avenging_wrath.duration = 0 || cooldown.avenging_wrath.duration % trinket.t2.cooldown.duration = 0 )",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_priority",
								["value"] = "2",
								["value_else"] = "1",
								["criteria"] = "! variable.trinket_1_buffs & variable.trinket_2_buffs || variable.trinket_2_buffs & ( ( trinket.t2.cooldown.duration / trinket.t2.buff_duration ) * ( 1.5 + trinket.t2.has_use_buff ) * ( variable.trinket_2_sync ) ) > ( ( trinket.t1.cooldown.duration / trinket.t1.buff_duration ) * ( 1.5 + trinket.t1.has_use_buff ) * ( variable.trinket_1_sync ) )",
							}, -- [9]
						},
						["generators"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "holy_power = 5 || ( debuff.judgment.up || holy_power = 4 ) & buff.divine_resonance.up",
								["list_name"] = "finishers",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 & ( cooldown.avenging_wrath.remains || cooldown.crusade.remains || ! talent.crusade.enabled & action.avenging_wrath.disabled || talent.crusade.enabled & action.crusade.disabled ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains > 4 || target.time_to_die < 8 || action.execution_sentence.disabled )",
								["action"] = "wake_of_ashes",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 & ! debuff.judgment.up & ( cooldown.avenging_wrath.remains > 15 || cooldown.crusade.remains > 15 || ! talent.crusade.enabled & action.avenging_wrath.disabled || talent.crusade.enabled & action.crusade.disabled || fight_remains < 8 )",
								["action"] = "divine_toll",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "holy_power >= 3 & buff.crusade.up & buff.crusade.stack < 10",
								["list_name"] = "finishers",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.templar_strikes.remains < gcd.max & spell_targets.divine_storm >= 2",
								["action"] = "templar_slash",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.judgment.up & ( holy_power <= 3 || ! talent.boundless_judgment.enabled ) & spell_targets.divine_storm >= 2",
								["action"] = "judgment",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( holy_power <= 3 || ! talent.holy_blade.enabled ) & spell_targets.divine_storm >= 2",
								["action"] = "blade_of_justice",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.divine_storm < 2 || ! talent.blessed_champion.enabled || set_bonus.tier30_4pc ) & ( holy_power <= 3 || target.health.pct > 20 || ! talent.vanguards_momentum.enabled )",
								["action"] = "hammer_of_wrath",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.templar_strikes.remains < gcd.max",
								["action"] = "templar_slash",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! buff.avenging_wrath.up & ( holy_power <= 3 || ! talent.boundless_judgment.enabled ) & talent.crusading_strikes.enabled",
								["action"] = "judgment",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 3 || ! talent.holy_blade.enabled",
								["action"] = "blade_of_justice",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.judgment.up & ( holy_power <= 3 || ! talent.boundless_judgment.enabled )",
								["action"] = "judgment",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "( target.health.pct <= 20 || buff.avenging_wrath.up || buff.crusade.up || buff.empyrean_power.up )",
								["list_name"] = "finishers",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up & spell_targets.divine_storm >= 2",
								["action"] = "consecration",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.divine_storm >= 2",
								["action"] = "divine_hammer",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.crusader_strike.charges_fractional >= 1.75 & ( holy_power <= 2 || holy_power <= 3 & cooldown.blade_of_justice.remains > gcd.max * 2 || holy_power = 4 & cooldown.blade_of_justice.remains > gcd.max * 2 & cooldown.judgment.remains > gcd.max * 2 )",
								["action"] = "crusader_strike",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [17]
							{
								["action"] = "templar_slash",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "templar_strike",
								["enabled"] = true,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 3 || ! talent.boundless_judgment.enabled",
								["action"] = "judgment",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 3 || target.health.pct > 20 || ! talent.vanguards_momentum.enabled",
								["action"] = "hammer_of_wrath",
							}, -- [21]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [24]
							{
								["action"] = "divine_hammer",
								["enabled"] = true,
							}, -- [25]
						},
						["finishers"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.divine_storm >= 2 || buff.empyrean_power.up",
								["var_name"] = "ds_castable",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "divine_storm",
								["description"] = "Modified to allow DS to be used when Final Reckoning isn't being recommended due to CD alignment with Avenging Wrath.",
								["criteria"] = "variable.ds_castable & ! buff.empyrean_legacy.up & ! ( buff.divine_arbiter.up & buff.divine_arbiter.stack > 24 ) & ( ! talent.crusade.enabled || cooldown.crusade.remains > gcd.max * 3 ) & ( ! talent.final_reckoning.enabled || talent.divine_auxiliary.enabled || cooldown.final_reckoning.remains > gcd.max * 2 || action.final_reckoning.disabled || ! talent.crusade.enabled & ( buff.avenging_wrath.down & cooldown.avenging_wrath.remains > gcd.max * 3 ) || buff.crusade.up & buff.crusade.stack < 10 )",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.crusade.enabled || cooldown.crusade.remains > gcd.max * 3 ) & ( ! talent.final_reckoning.enabled || talent.divine_auxiliary.enabled || cooldown.final_reckoning.remains > gcd.max * 2 || ! talent.crusade.enabled & buff.avenging_wrath.down & cooldown.avenging_wrath.remains > gcd.max * 3 ) || buff.crusade.up & buff.crusade.stack < 10",
								["action"] = "justicars_vengeance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.crusade.enabled || cooldown.crusade.remains > gcd.max * 3 ) & ( ! talent.final_reckoning.enabled || talent.divine_auxiliary.enabled || cooldown.final_reckoning.remains > gcd.max * 2 || ! talent.crusade.enabled & buff.avenging_wrath.down & cooldown.avenging_wrath.remains > gcd.max * 3 ) || buff.crusade.up & buff.crusade.stack < 10",
								["action"] = "templars_verdict",
							}, -- [4]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 || boss & fight_remains < 25",
								["action"] = "potion",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.lights_judgment >= 2 || ! raid_event.adds.exists || raid_event.adds.in > 75 || raid_event.adds.up",
								["action"] = "lights_judgment",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
								["action"] = "fireblood",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "algethar_puzzle_box",
								["criteria"] = "( cooldown.avenging_wrath.remains < 5 & ! talent.crusade.enabled || variable.time_to_crusade < 5 & talent.crusade.enabled ) & ( holy_power >= 5 & time < 5 || holy_power >= 3 & time > 5 )",
								["name"] = "algethar_puzzle_box",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up & cooldown.avenging_wrath.remains > 40 || buff.crusade.up & buff.crusade.stack = 10 ) & ( ! trinket.t2.has_cooldown || trinket.t2.cooldown.remains || variable.trinket_priority = 1 ) || trinket.t1.buff_duration >= fight_remains",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up & cooldown.avenging_wrath.remains > 40 || buff.crusade.up & buff.crusade.stack = 10 ) & ( ! trinket.t1.has_cooldown || trinket.t1.cooldown.remains || variable.trinket_priority = 2 ) || trinket.t2.buff_duration >= fight_remains",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! variable.trinket_1_buffs & ( ! variable.trinket_1_manual || buff.avenging_wrath.down & buff.crusade.down ) & ( trinket.t2.cooldown.remains || ! variable.trinket_2_buffs || ! buff.crusade.up & cooldown.crusade.remains > 20 || ! buff.avenging_wrath.up & cooldown.avenging_wrath.remains > 20 )",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! variable.trinket_2_buffs & ( ! variable.trinket_2_manual || buff.avenging_wrath.down & buff.crusade.down ) & ( trinket.t1.cooldown.remains || ! variable.trinket_1_buffs || ! buff.crusade.up & cooldown.crusade.remains > 20 || ! buff.avenging_wrath.up & cooldown.avenging_wrath.remains > 20 )",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [8]
							{
								["enabled"] = false,
								["criteria"] = "( trinket.t2.cooldown.remains || ! variable.trinket_2_buffs ) & ( trinket.t2.cooldown.remains || ! variable.trinket_2_buffs )",
								["name"] = "shadowed_razing_annihilator",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 15",
								["action"] = "shield_of_vengeance",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "holy_power >= 4 & time < 5 || holy_power >= 3 & time > 5 || holy_power >= 2 & talent.divine_auxiliary.enabled & ( talent.execution_sentence.enabled & ( cooldown.execution_sentence.remains = 0 || cooldown.execution_sentence.remains > 15 || action.execution_sentence.disabled ) || talent.final_reckoning.enabled & ( cooldown.final_reckoning.remains = 0 || cooldown.final_reckoning.remains > 30 || action.final_reckoning.disabled ) )",
								["action"] = "avenging_wrath",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.crusade.remains < gcd.max & ( holy_power >= 5 & time < 5 || holy_power >= 3 & time > 5 )",
								["action"] = "crusade",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( ! buff.crusade.up & cooldown.crusade.remains > 10 || buff.crusade.stack = 10 || cooldown.avenging_wrath.remains > 10 ) & ( holy_power >= 3 || holy_power >= 2 & talent.divine_auxiliary.enabled ) & target.time_to_die > 8",
								["action"] = "execution_sentence",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( holy_power >= 4 & time < 8 || holy_power >= 3 & time >= 8 || holy_power >= 2 & talent.divine_auxiliary.enabled ) & ( ! talent.crusade.enabled & ( buff.avenging_wrath.up || cooldown.avenging_wrath.remains > 30 || action.avenging_wrath.disabled ) || talent.crusade.enabled & ( cooldown.crusade.remains > 30 & ( ! buff.crusade.up || buff.crusade.stack >= 10 ) || action.crusade.disabled ) ) & ( time_to_hpg > 0 || holy_power = 5 || holy_power >= 2 & talent.divine_auxiliary.enabled )",
								["action"] = "final_reckoning",
							}, -- [14]
						},
					},
				},
			},
			["notifications"] = {
				["y"] = 471.7037963867188,
			},
		},
	},
}
