
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
["StandaloneLayout"] = "3-teams",
["FavoriteFilters"] = {
},
["DefaultPreferences"] = {
},
["AutoWinRecord"] = false,
["PetSatchelIndex"] = 1,
["PetCardInBattle"] = false,
["PetCardBackground"] = "Expansion",
["GroupOrder"] = {
"group:favorites",
"group:none",
},
["HideNonBattlePets"] = false,
["UseTypeBar"] = false,
["DontSortByRelevance"] = false,
["ConvertedTeams"] = {
},
["LockDrawer"] = false,
["ShowSpeciesID"] = false,
["DontConfirmCaging"] = true,
["XPos"] = 1668.212280273438,
["AllowHiddenPets"] = false,
["ShowAfterBattle"] = false,
["PetCardCompactCollected"] = false,
["PetCardNoMouseoverFlip"] = false,
["AbilityBackground"] = "Icon",
["HideNotesBadges"] = false,
["LevelingQueue"] = {
},
["LockWindow"] = false,
["PetCardForLinks"] = false,
["HideRarityBorders"] = false,
["ExpandedOptionsHeaders"] = {
},
["LoadHealthiest"] = false,
["HideLevelBubbles"] = false,
["CompactTeamList"] = false,
["CompactQueueList"] = false,
["ColorTargetNames"] = true,
["KeepNotesOnScreen"] = false,
["QueueAutoLearn"] = false,
["PanelTabAnchor"] = "BOTTOMRIGHT",
["ResetSortWithFilters"] = false,
["PetCardAlwaysShowHPXPText"] = false,
["CollapseOnEsc"] = false,
["HidePreferenceBadges"] = false,
["NeverTeamTabs"] = false,
["PetCardShowExpansionStat"] = false,
["StickyNewPets"] = false,
["CustomScaleValue"] = 100,
["StrongVsLevel"] = false,
["QueueActiveSort"] = false,
["KeepCompanion"] = false,
["AlwaysTeamTabs"] = false,
["TypeBarTab"] = 1,
["AlwaysUsePetSatchel"] = false,
["InteractOnSoftInteract"] = 0,
["ShowLoadedTeamPreferences"] = false,
["ShowAbilityID"] = false,
["HidePetToast"] = true,
["MaximizedLayout"] = "3-teams",
["InteractOnTarget"] = 0,
["NotesFont"] = "GameFontHighlight",
["BackupCount"] = 0,
["HideToolbarTooltips"] = false,
["DisplayUniqueTotal"] = false,
["SafariHatShine"] = false,
["TooltipBehavior"] = "Normal",
["HideOptionTooltips"] = false,
["MousewheelSpeed"] = "Normal",
["BoringLoreFont"] = false,
["HideTeamBadges"] = false,
["HideNotesButtonInBattle"] = false,
["YPos"] = 395.1818542480469,
["SpecialSlots"] = {
},
["LastOpenJournal"] = true,
["ScriptFilters"] = {
{
"Unnamed Pets",
"-- Collected pets that still have their original name.\n\nreturn owned and not customName",
},
{
"Partially Leveled",
"-- Pets that have earned some xp in battle.\n\nreturn xp and xp>0",
},
{
"Unique Abilities",
"-- Pets with abilities not shared by other pets.\n\nif not count then\n  -- create count of each ability per species\n  count = {}\n  for speciesID in AllSpeciesIDs() do\n    for abilityID in AllAbilities(speciesID) do\n      if not count[abilityID] then\n        count[abilityID] = 0\n      end\n      count[abilityID] = count[abilityID] + 1\n    end\n  end\nend\n\nfor _,abilityID in ipairs(abilityList) do\n  if count[abilityID]==1 then\n    return true\n  end\nend",
},
{
"Pets Without Rares",
"-- Collected battle pets that have no rare version.\n\nif not rares then\n  rares = {}\n  for petID in AllPetIDs() do\n    if select(5,C_PetJournal.GetPetStats(petID))==4 then\n      rares[C_PetJournal.GetPetInfoByPetID(petID)]=true\n    end\n  end\nend\n\nif canBattle and owned and not rares[speciesID] then\n  return true\nend",
},
{
"Hybrid Counters",
"-- Pets with three or more attack types different than their pet type.\n\nlocal count = 0\nfor _,abilityID in ipairs(abilityList) do\n  local abilityType,noHints = select(7, C_PetBattles.GetAbilityInfoByID(abilityID) )\n  if not noHints and abilityType~=petType then\n    count = count + 1\n  end\nend\n\nreturn count>=3\n",
},
},
["LowerStrata"] = false,
["PetCardFlipKey"] = "Alt",
["MinimapButtonPosition"] = -162,
["RandomPetRules"] = 2,
["PetCardAlwaysShowHPBar"] = false,
["HideLevelingBadges"] = false,
["ShowNewGroupTab"] = true,
["QueueSortOrder"] = 1,
["CardBehavior"] = "Normal",
["QueueRandomWhenEmpty"] = false,
["InteractOnMouseover"] = 0,
["PetCardCanPin"] = false,
["BreedFormat"] = 1,
["LockPosition"] = false,
["CombineGroupKey"] = "None",
["ExpandedGroups"] = {
},
["CompactTargetList"] = false,
["HideMarkerBadges"] = false,
["ResetFilters"] = false,
["HideTooltips"] = false,
["ShowNewGroupTabFix"] = true,
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
["RawSearchText"] = "delver",
["Similar"] = {
},
["Search"] = {
["Pattern"] = "[dD][eE][lL][vV][eE][rR]",
["Length"] = 6,
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
["SortByNickname"] = false,
["ResetExceptSearch"] = false,
["PetMarkerNames"] = {
},
["WasShownOnLogout"] = false,
["HideTruncatedTooltips"] = false,
["Anchor"] = "BOTTOMRIGHT",
["PreferencesPaused"] = false,
["LockNotesPosition"] = false,
["PetMarkers"] = {
},
["JournalLayout"] = "3-teams",
["UseDefaultJournal"] = false,
["NoBackupReminder"] = false,
["HideMenuHelp"] = false,
["ShowAbilityNumbers"] = false,
["ReverseToolbar"] = false,
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
["isExpanded"] = true,
["meta"] = true,
["icon"] = "Interface\\Icons\\ACHIEVEMENT_GUILDPERK_MRPOPULARITY_RANK2",
["groupID"] = "group:favorites",
["teams"] = {
},
},
["group:none"] = {
["showTab"] = true,
["sortMode"] = 1,
["name"] = "Ungrouped Teams",
["isExpanded"] = true,
["meta"] = true,
["icon"] = "Interface\\Icons\\PetJournalPortrait",
["groupID"] = "group:none",
["teams"] = {
},
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
"General",
"Interface\\Icons\\PetJournalPortrait",
},
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
["Types"] = {
},
["Favorite"] = {
},
["Collected"] = {
},
["Similar"] = {
},
["Sources"] = {
},
["Breed"] = {
},
["Rarity"] = {
},
["Strong"] = {
},
["Level"] = {
},
["Tough"] = {
},
["Moveset"] = {
},
},
["ExpandedOptHeaders"] = {
},
["CustomScaleValue"] = 100,
["SpecialSlots"] = {
},
["ScriptFilters"] = {
{
"Unnamed Pets",
"-- Collected pets that still have their original name.\n\nreturn owned and not customName",
},
{
"Partially Leveled",
"-- Pets that have earned some xp in battle.\n\nreturn xp and xp>0",
},
{
"Unique Abilities",
"-- Pets with abilities not shared by other pets.\n\nif not count then\n  -- create count of each ability per species\n  count = {}\n  for speciesID in AllSpeciesIDs() do\n    for abilityID in AllAbilities(speciesID) do\n      if not count[abilityID] then\n        count[abilityID] = 0\n      end\n      count[abilityID] = count[abilityID] + 1\n    end\n  end\nend\n\nfor _,abilityID in ipairs(abilityList) do\n  if count[abilityID]==1 then\n    return true\n  end\nend",
},
{
"Pets Without Rares",
"-- Collected battle pets that have no rare version.\n\nif not rares then\n  rares = {}\n  for petID in AllPetIDs() do\n    if select(5,C_PetJournal.GetPetStats(petID))==4 then\n      rares[C_PetJournal.GetPetInfoByPetID(petID)]=true\n    end\n  end\nend\n\nif canBattle and owned and not rares[speciesID] then\n  return true\nend",
},
{
"Hybrid Counters",
"-- Pets with three or more attack types different than their pet type.\n\nlocal count = 0\nfor _,abilityID in ipairs(abilityList) do\n  local abilityType,noHints = select(7, C_PetBattles.GetAbilityInfoByID(abilityID) )\n  if not noHints and abilityType~=petType then\n    count = count + 1\n  end\nend\n\nreturn count>=3\n",
},
},
["PreferredMode"] = 1,
["ExpandedTargetHeaders"] = {
},
["ElvUIToastDefaulted"] = true,
["ActivePanel"] = 1,
["Sanctuary"] = {
},
["JournalPanel"] = 1,
["CornerPos"] = "BOTTOMLEFT",
["QueueSortOrder"] = 1,
["LevelingQueue"] = {
},
["YPos"] = 338,
["SelectedTab"] = 1,
["PetNotes"] = {
},
}
RematchSaved = nil
RematchSettings = nil
