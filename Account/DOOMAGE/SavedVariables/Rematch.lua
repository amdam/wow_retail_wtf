
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
["PetCardNoMouseoverFlip"] = false,
["HideNotesBadges"] = false,
["StandaloneLayout"] = "3-teams",
["PetSatchelIndex"] = 1,
["DefaultPreferences"] = {
},
["AutoWinRecord"] = false,
["ReverseToolbar"] = false,
["JournalLayout"] = "3-teams",
["ShowAbilityNumbers"] = false,
["GroupOrder"] = {
"group:favorites",
"group:none",
},
["HideNonBattlePets"] = false,
["PetCardInBattle"] = false,
["DontSortByRelevance"] = false,
["NoBackupReminder"] = false,
["ToolbarDismiss"] = false,
["ShowSpeciesID"] = false,
["DontConfirmCaging"] = true,
["XPos"] = 1668.212280273438,
["AllowHiddenPets"] = false,
["ShowAfterBattle"] = false,
["UseDefaultJournal"] = false,
["HideTruncatedTooltips"] = false,
["HideLevelBubbles"] = false,
["PetCardCompactCollected"] = false,
["FavoriteFilters"] = {
},
["LockWindow"] = false,
["PetCardForLinks"] = false,
["HideRarityBorders"] = false,
["ExpandedOptionsHeaders"] = {
},
["LoadHealthiest"] = false,
["WasShownOnLogout"] = false,
["PetMarkerNames"] = {
},
["CompactQueueList"] = false,
["ResetExceptSearch"] = false,
["ColorTargetNames"] = true,
["QueueAutoLearn"] = false,
["PanelTabAnchor"] = "BOTTOMRIGHT",
["HidePreferenceBadges"] = false,
["PetCardAlwaysShowHPXPText"] = false,
["CollapseOnEsc"] = false,
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
["RawSearchText"] = "\"Green Wing Macaw\"",
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
["PetCardShowExpansionStat"] = false,
["StickyNewPets"] = false,
["ResetFilters"] = false,
["CustomScaleValue"] = 100,
["StrongVsLevel"] = false,
["QueueActiveSort"] = false,
["KeepCompanion"] = false,
["HideMarkerBadges"] = false,
["CompactTargetList"] = false,
["ExpandedGroups"] = {
},
["ShowLoadedTeamPreferences"] = false,
["LockPosition"] = false,
["BreedFormat"] = 1,
["HidePetToast"] = true,
["PetCardCanPin"] = false,
["InteractOnMouseover"] = 0,
["QueueRandomWhenEmpty"] = false,
["BackupCount"] = 0,
["HideToolbarTooltips"] = false,
["DisplayUniqueTotal"] = false,
["SafariHatShine"] = false,
["TooltipBehavior"] = "Normal",
["HideOptionTooltips"] = false,
["MousewheelSpeed"] = "Normal",
["LastOpenJournal"] = true,
["HideTeamBadges"] = false,
["HideNotesButtonInBattle"] = false,
["QueueSortOrder"] = 1,
["ShowNewGroupTab"] = true,
["NoSummonOnDblClick"] = false,
["HideLevelingBadges"] = false,
["LowerStrata"] = false,
["PetCardFlipKey"] = "Alt",
["MinimapButtonPosition"] = -162,
["RandomPetRules"] = 2,
["PetCardAlwaysShowHPBar"] = false,
["YPos"] = 395.1818542480469,
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
["SpecialSlots"] = {
},
["CardBehavior"] = "Normal",
["BoringLoreFont"] = false,
["NotesFont"] = "GameFontHighlight",
["InteractOnTarget"] = 0,
["MaximizedLayout"] = "3-teams",
["ShowAbilityID"] = false,
["CombineGroupKey"] = "None",
["InteractOnSoftInteract"] = 0,
["AlwaysUsePetSatchel"] = false,
["TypeBarTab"] = 1,
["AlwaysTeamTabs"] = false,
["HideTooltips"] = false,
["ShowNewGroupTabFix"] = true,
["NeverTeamTabs"] = false,
["SortByNickname"] = false,
["KeepNotesOnScreen"] = false,
["ResetSortWithFilters"] = false,
["CompactTeamList"] = false,
["Anchor"] = "BOTTOMRIGHT",
["LevelingQueue"] = {
},
["PreferencesPaused"] = false,
["LockNotesPosition"] = false,
["PetMarkers"] = {
},
["AbilityBackground"] = "Icon",
["HideMenuHelp"] = false,
["LockDrawer"] = false,
["PetNotes"] = {
},
["UseTypeBar"] = false,
["PetCardBackground"] = "Expansion",
["ConvertedTeams"] = {
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
["YPos"] = 338,
["CustomScaleValue"] = 100,
["PetNotes"] = {
},
}
RematchSaved = nil
RematchSettings = nil
