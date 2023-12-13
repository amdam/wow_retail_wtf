
Rematch5Settings = {
	["UseMinimapButton"] = false,
	["ExpandedTargets"] = {
	},
	["CustomScale"] = false,
	["CompactPetList"] = false,
	["BreedSource"] = false,
	["LastOpenLayout"] = "3-teams",
	["CurrentLayout"] = "3-teams",
	["ColorPetNames"] = true,
	["ToolbarDismiss"] = false,
	["DefaultPreferences"] = {
	},
	["AutoWinRecord"] = false,
	["JournalLayout"] = "3-teams",
	["GroupOrder"] = {
		"group:favorites", -- [1]
		"group:none", -- [2]
	},
	["HideNonBattlePets"] = false,
	["DontSortByRelevance"] = false,
	["ShowSpeciesID"] = false,
	["UseDefaultJournal"] = false,
	["AllowHiddenPets"] = false,
	["PetCardNoMouseoverFlip"] = false,
	["LevelingQueue"] = {
	},
	["PetCardForLinks"] = false,
	["HideRarityBorders"] = false,
	["CompactQueueList"] = false,
	["KeepNotesOnScreen"] = false,
	["QueueAutoLearn"] = false,
	["PanelTabAnchor"] = "BOTTOMRIGHT",
	["PetCardAlwaysShowHPXPText"] = false,
	["CollapseOnEsc"] = false,
	["QueueActiveSort"] = false,
	["MaximizedLayout"] = "3-teams",
	["HideMenuHelp"] = false,
	["ReverseToolbar"] = false,
	["ShowAbilityNumbers"] = false,
	["HideTruncatedTooltips"] = false,
	["PetMarkerNames"] = {
	},
	["ResetExceptSearch"] = false,
	["HidePetToast"] = true,
	["PetCardCompactCollected"] = false,
	["FavoriteFilters"] = {
	},
	["PetCardCanPin"] = false,
	["BackupCount"] = 0,
	["HideToolbarTooltips"] = false,
	["DisplayUniqueTotal"] = false,
	["BreedFormat"] = 1,
	["TooltipBehavior"] = "Normal",
	["HideOptionTooltips"] = false,
	["ShowAbilityID"] = false,
	["ShowLoadedTeamPreferences"] = false,
	["PetCardShowExpansionStat"] = false,
	["InteractOnMouseover"] = 0,
	["ConvertedTeams"] = {
	},
	["InteractOnTarget"] = 0,
	["LastOpenJournal"] = true,
	["ShowNewGroupTab"] = true,
	["QueueSortOrder"] = 1,
	["PetCardFlipKey"] = "Alt",
	["MinimapButtonPosition"] = -162,
	["RandomPetRules"] = 2,
	["PetCardAlwaysShowHPBar"] = false,
	["Filters"] = {
		["Other"] = {
		},
		["Stats"] = {
		},
		["Strong"] = {
		},
		["Marker"] = {
		},
		["Sources"] = {
		},
		["Sort"] = {
		},
		["Level"] = {
		},
		["Tough"] = {
		},
		["Types"] = {
		},
		["Expansion"] = {
		},
		["Rarity"] = {
		},
		["RawSearchText"] = "e",
		["Similar"] = {
		},
		["Search"] = {
		},
		["Breed"] = {
		},
		["Script"] = {
		},
		["Collected"] = {
		},
		["Favorite"] = {
		},
		["Moveset"] = {
		},
	},
	["ScriptFilters"] = {
		{
			"Unnamed Pets", -- [1]
			"-- Collected pets that still have their original name.\n\nreturn owned and not customName", -- [2]
		}, -- [1]
		{
			"Partially Leveled", -- [1]
			"-- Pets that have earned some xp in battle.\n\nreturn xp and xp>0", -- [2]
		}, -- [2]
		{
			"Unique Abilities", -- [1]
			"-- Pets with abilities not shared by other pets.\n\nif not count then\n  -- create count of each ability per species\n  count = {}\n  for speciesID in AllSpeciesIDs() do\n    for abilityID in AllAbilities(speciesID) do\n      if not count[abilityID] then\n        count[abilityID] = 0\n      end\n      count[abilityID] = count[abilityID] + 1\n    end\n  end\nend\n\nfor _,abilityID in ipairs(abilityList) do\n  if count[abilityID]==1 then\n    return true\n  end\nend", -- [2]
		}, -- [3]
		{
			"Pets Without Rares", -- [1]
			"-- Collected battle pets that have no rare version.\n\nif not rares then\n  rares = {}\n  for petID in AllPetIDs() do\n    if select(5,C_PetJournal.GetPetStats(petID))==4 then\n      rares[C_PetJournal.GetPetInfoByPetID(petID)]=true\n    end\n  end\nend\n\nif canBattle and owned and not rares[speciesID] then\n  return true\nend", -- [2]
		}, -- [4]
		{
			"Hybrid Counters", -- [1]
			"-- Pets with three or more attack types different than their pet type.\n\nlocal count = 0\nfor _,abilityID in ipairs(abilityList) do\n  local abilityType,noHints = select(7, C_PetBattles.GetAbilityInfoByID(abilityID) )\n  if not noHints and abilityType~=petType then\n    count = count + 1\n  end\nend\n\nreturn count>=3\n", -- [2]
		}, -- [5]
	},
	["SpecialSlots"] = {
	},
	["CardBehavior"] = "Normal",
	["BoringLoreFont"] = false,
	["LockPosition"] = false,
	["NotesFont"] = "GameFontHighlight",
	["ResetFilters"] = false,
	["ExpandedGroups"] = {
	},
	["CompactTargetList"] = false,
	["InteractOnSoftInteract"] = 0,
	["AlwaysUsePetSatchel"] = false,
	["TypeBarTab"] = 1,
	["AlwaysTeamTabs"] = false,
	["HideTooltips"] = false,
	["ShowNewGroupTabFix"] = true,
	["NeverTeamTabs"] = false,
	["SortByNickname"] = false,
	["SafariHatShine"] = false,
	["ResetSortWithFilters"] = false,
	["CompactTeamList"] = false,
	["HideLevelBubbles"] = false,
	["LockWindow"] = false,
	["StickyNewPets"] = false,
	["LockNotesPosition"] = false,
	["PetMarkers"] = {
	},
	["AbilityBackground"] = "Icon",
	["Anchor"] = "BOTTOMRIGHT",
	["NoBackupReminder"] = false,
	["ExpandedOptionsHeaders"] = {
	},
	["UseTypeBar"] = false,
	["PetCardBackground"] = "Expansion",
	["PetNotes"] = {
	},
}
Rematch5SavedTeams = {
}
Rematch5SavedGroups = {
	["group:favorites"] = {
		["showTab"] = true,
		["sortMode"] = 1,
		["name"] = "Favorite Teams",
		["teams"] = {
		},
		["meta"] = true,
		["groupID"] = "group:favorites",
		["icon"] = "Interface\\Icons\\ACHIEVEMENT_GUILDPERK_MRPOPULARITY_RANK2",
		["isExpanded"] = true,
	},
	["group:none"] = {
		["showTab"] = true,
		["sortMode"] = 1,
		["name"] = "Ungrouped Teams",
		["teams"] = {
		},
		["meta"] = true,
		["groupID"] = "group:none",
		["icon"] = "Interface\\Icons\\PetJournalPortrait",
		["isExpanded"] = true,
	},
}
Rematch5SavedTargets = {
}
Rematch4Saved = {
}
Rematch4Settings = {
	["NotesFont"] = "GameFontHighlight",
	["JournalUsed"] = true,
	["XPos"] = 852.7777099609375,
	["HidePetToast"] = true,
	["FavoriteFilters"] = {
	},
	["Sort"] = {
		["Order"] = 1,
		["FavoritesFirst"] = true,
	},
	["AllowHiddenPetsDefaulted"] = true,
	["BackupCount"] = 0,
	["TeamGroups"] = {
		{
			"General", -- [1]
			"Interface\\Icons\\PetJournalPortrait", -- [2]
		}, -- [1]
	},
	["QueueSanctuary"] = {
	},
	["Filters"] = {
		["Other"] = {
		},
		["Expansion"] = {
		},
		["Script"] = {
		},
		["Moveset"] = {
		},
		["Tough"] = {
		},
		["Level"] = {
		},
		["Strong"] = {
		},
		["Similar"] = {
		},
		["Breed"] = {
		},
		["Rarity"] = {
		},
		["Sources"] = {
		},
		["Collected"] = {
		},
		["Favorite"] = {
		},
		["Types"] = {
		},
	},
	["ExpandedOptHeaders"] = {
	},
	["SelectedTab"] = 1,
	["SpecialSlots"] = {
	},
	["LevelingQueue"] = {
	},
	["QueueSortOrder"] = 1,
	["ExpandedTargetHeaders"] = {
	},
	["PreferredMode"] = 1,
	["ActivePanel"] = 1,
	["Sanctuary"] = {
	},
	["JournalPanel"] = 1,
	["CornerPos"] = "BOTTOMLEFT",
	["ElvUIToastDefaulted"] = true,
	["ScriptFilters"] = {
		{
			"Unnamed Pets", -- [1]
			"-- Collected pets that still have their original name.\n\nreturn owned and not customName", -- [2]
		}, -- [1]
		{
			"Partially Leveled", -- [1]
			"-- Pets that have earned some xp in battle.\n\nreturn xp and xp>0", -- [2]
		}, -- [2]
		{
			"Unique Abilities", -- [1]
			"-- Pets with abilities not shared by other pets.\n\nif not count then\n  -- create count of each ability per species\n  count = {}\n  for speciesID in AllSpeciesIDs() do\n    for abilityID in AllAbilities(speciesID) do\n      if not count[abilityID] then\n        count[abilityID] = 0\n      end\n      count[abilityID] = count[abilityID] + 1\n    end\n  end\nend\n\nfor _,abilityID in ipairs(abilityList) do\n  if count[abilityID]==1 then\n    return true\n  end\nend", -- [2]
		}, -- [3]
		{
			"Pets Without Rares", -- [1]
			"-- Collected battle pets that have no rare version.\n\nif not rares then\n  rares = {}\n  for petID in AllPetIDs() do\n    if select(5,C_PetJournal.GetPetStats(petID))==4 then\n      rares[C_PetJournal.GetPetInfoByPetID(petID)]=true\n    end\n  end\nend\n\nif canBattle and owned and not rares[speciesID] then\n  return true\nend", -- [2]
		}, -- [4]
		{
			"Hybrid Counters", -- [1]
			"-- Pets with three or more attack types different than their pet type.\n\nlocal count = 0\nfor _,abilityID in ipairs(abilityList) do\n  local abilityType,noHints = select(7, C_PetBattles.GetAbilityInfoByID(abilityID) )\n  if not noHints and abilityType~=petType then\n    count = count + 1\n  end\nend\n\nreturn count>=3\n", -- [2]
		}, -- [5]
	},
	["YPos"] = 338,
	["CustomScaleValue"] = 100,
	["PetNotes"] = {
	},
}
RematchSaved = nil
RematchSettings = nil
