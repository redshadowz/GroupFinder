local GF_CurrentVersion						= 7150 -- New revisions cause a reset of basic settings

GF_SavedVariables 							= {}
GF_PerCharVariables							= {}
GF_RealmName								= GetRealmName()
local GF_CurrentZone						= GetRealZoneText()
GF_PlayingOnEpoch							= nil
GF_PlayingOnTurtle							= nil
GF_OnUpdateFunctions						= {}
local GF_Hardcore							= nil
local GF_WhoCooldownTime					= 10
local GF_NextAvailableWhoTime				= 0
local GF_UrgentWhoRequest					= {}
local GF_BlockNextWho						= nil
GF_WhoQueue									= {}
GF_WhoTable									= {}
GF_ClassWhoTable							= {}
GF_MainFrameShowBoth						= nil
local GF_LFGLFMData							= {}
local GF_ClassWhoQueue						= {} -- Who queue of /who searches. Searches
local GF_ClassWhoMatchingResults			= 0
local GF_GetClassWhoState					= 1
local GF_GetWhoName							= ""
local GF_GetWhoParams						= {}
local GF_GetWhoResetTimer					= 900
local GF_ClassWhoRequest					= nil -- The Who Update function will search for GetWho classes. Turns off when done, or when button is clicked again, or if clicking whisper/skip button.
local GF_LFGInviteTime						= {}
local GF_RequestInviteTime					= {}
GF_LFGDescriptionEditBoxHasFocus			= { nil,0 }
GF_ButtonIDAliases 							= {}

GF_MessageList								= {}
GF_BlackList								= {}
GF_FilteredResultsList						= {}
GF_ResultsBaseListOffsetSize				= 22
GF_ResultsListOffset						= 0
GF_ResultsListOffsetSize					= GF_ResultsBaseListOffsetSize
GF_BlackListOffset							= 0
GF_LogHistory								= {}
GF_LogFilters								= {}
GF_GroupFilters								= {}
GF_SpecialFilters							= {}
GF_ConvertMessagesToLinks					= nil

local GF_OnStartupQueueURequest				= nil
local GF_AddonWhoDataToBeSentBuffer			= {}
local GF_AddonAllNamesForResponseToLogin	= {}
local GF_AddonNamesToBeSentAsARequest		= {}
local GF_AddonOPSentNamesOnLogin			= {}
local GF_AddonGroupDataToBeSentBuffer		= {}
local GF_AddonMakeAListOfGroupsForSending	= nil
local GF_AddonListOfGuildAndPartyMembersWithAddon = {}
local GF_AddonNamesFromWhoSinceLoggedOn		= {}
local GF_AddonNeedToBroadcastSomething		= nil

GF_AutoAnnounceTimer						= nil
local GF_NumPartyMembers					= 0
local GF_NumPartyMembersOnline				= 0
local GF_WasPartyLeaderBefore				= nil
local GF_PlayersCurrentlyInGroup			= {[UnitName("player")] = "player"}
local GF_PetCurrentlyInGroup				= {}
local GF_Friends							= {}
local GF_Guildies							= {}
local GF_ExcludeNames						= {}
local GF_CurrentNumFriends					= 0
local GF_CurrentNumGuildies					= 0
local GF_UpdateTicker						= GetTime() + 10000
local GF_TimeTillNextBroadcast				= 1
local GF_UpdateAndRequestTimer				= 1
local GF_UpdateWhoDataViaFriendsListTimer	= 5
local GF_RequestWhoDataPeriodicallyTimer	= 30
local GF_UpdateDPSMeterTimer				= 1
GF_PlayerMessages							= {}
GF_IncomingMessagePrune						= 0
local GF_PreviousMessage					= {}
local GF_ProcessedFirstMessage				= {}
local GF_PlayerSystemMessage				= {}
local GF_MiniMapMessages					= {0,0,0,0,0,0,{}}
local GF_LogMessageCodes = { GF_LOGGED_GROUPS,GF_LOGGED_OLD,GF_LOGGED_FILTERED,GF_LOGGED_ME,GF_LOGGED_CHAT,GF_LOGGED_LOOT,GF_LOGGED_SPAM,GF_LOGGED_GUILD,GF_LOGGED_TRADES,GF_LOGGED_BLACKLIST,GF_LOGGED_BELOWLEVEL }
local info 									= {}
GF_PlayerNotes								= {}
local GF_PlaySoundNextUpdate				= nil
local GF_BaseFontSize						= 12
local GF_ChatChannelsGroups					= {}
GF_ChatJoinedChannels						= {}
local channellist							= {}
GF_WhisperLogCurrentButtonID				= 0
GF_WhisperLogCurrentButtonName				= ""
GF_WhisperLogLastWhisperLog					= 0
GF_WhisperLogData							= {}
GF_WhisperLogOffset							= 0
GF_GroupHistory								= {}
local GF_Classes							= { [GF_PRIEST]="PRIEST",[GF_MAGE]="MAGE",[GF_WARLOCK]="WARLOCK",[GF_DRUID]="DRUID",[GF_HUNTER]="HUNTER",[GF_ROGUE]="ROGUE",[GF_WARRIOR]="WARRIOR",[GF_PALADIN]="PALADIN",[GF_SHAMAN]="SHAMAN",
												["PRIEST"]=GF_PRIEST,["MAGE"]=GF_MAGE,["WARLOCK"]=GF_WARLOCK,["DRUID"]=GF_DRUID,["HUNTER"]=GF_HUNTER,["ROGUE"]=GF_ROGUE,["WARRIOR"]=GF_WARRIOR,["PALADIN"]=GF_PALADIN,["SHAMAN"]=GF_SHAMAN }
local GF_ClassColors						= {	["PRIEST"]="ffffff",["MAGE"]="68ccef",["WARLOCK"]="9382c9",["DRUID"]="ff7c0a",["HUNTER"]="aad372",["ROGUE"]="fff468",["WARRIOR"]="c69b6d",["PALADIN"]="f48cba",["SHAMAN"]="0070dd",["SYSTEM"]="ffff00" }
local GF_ClassIDs = { "PRIEST", "MAGE", "WARLOCK", "DRUID", "HUNTER", "ROGUE", "WARRIOR", "PALADIN", "SHAMAN", ["PRIEST"]=1,["MAGE"]=2,["WARLOCK"]=3,["DRUID"]=4,["HUNTER"]=5,["ROGUE"]=6,["WARRIOR"]=7,["PALADIN"]=8,["SHAMAN"]=9 }
local GF_TextColors = { ["SYSTEM"] = {1,1,0},["SAY"] = {1,1,1},["YELL"] = {1,0.251,0.251},["CHANNEL"] = {1,0.753,0.753},["GUILD"] = {0.251,1,0.251},["OFFICER"] = {0.251,0.753,0.251},["WHISPER"] = {1,0.502,1},["WHISPER_INFORM"] = {1,0.502,1},
["PARTY"] = {0.667,0.667,1},["RAID"] = {1,0.498,0},["RAID_LEADER"] = {1,0.859,0.718},["RAID_WARNING"] = {1,0.859,0.718},["BATTLEGROUND"] = {1,0.498,0},["BATTLEGROUND_LEADER"] = {1,0.859,0.7176},["LOOT"] = {0,0.667,0},["MONEY"] = {1,1,0},
["EMOTE"] = {1,0.502,0.251},["TEXT_EMOTE"] = {1,0.502,0.251},["COMBAT_FACTION_CHANGE"] = {0.502,0.502,1},["COMBAT_XP_GAIN"] = {0.4353,0.4353,1},["COMBAT_HONOR_GAIN"] = {0.8784,0.792,0.0392},["MONSTER_SAY"] = {1,1,1},
["MONSTER_EMOTE"] = {1,0.502,0.251},["MONSTER_YELL"] = {1,0.251,0.251},["HARDCORE"] = {0.902,0.8,0.502}, } --["HARDCORE"] = {0.651,0.6,0.451} }
local EventIDAlias = { ["SAY"] = "[S] ",["YELL"] = "[Y] ",["GUILD"] = "[G] ",["OFFICER"] = "[O] ",["WHISPER"] = "",["WHISPER_INFORM"] = "[To] ",["PARTY"] = "[P] ",["RAID"] = "[R] ",["RAID_LEADER"] = "[RL] ",["RAID_WARNING"] = "[RW] ",
["BATTLEGROUND"] = "[BG] ",["BATTLEGROUND_LEADER"] = "[BL] ",["SYSTEM"] = "",["FRIENDS"] = "[F] ",[strupper(TRADE)] = "[2] ",[strupper(GENERAL)] = "[1] ",}

local GF_ChatNameAlias = { ["OFFICER"] = "GUILD",["RAID"] = "PARTY",["RAID_LEADER"] = "PARTY",["RAID_WARNING"] = "PARTY",["BATTLEGROUND"] = "PARTY",["BATTLEGROUND_LEADER"] = "PARTY",["WHISPER_INFORM"] = "WHISPER",}
local GF_ChatBypass = { ["SYSTEM"] = true,["MONEY"] = true,["LOOT"] = true,["COMBAT_FACTION_CHANGE"] = true,["COMBAT_XP_GAIN"] = true,["COMBAT_HONOR_GAIN"] = true,["EMOTE"] = true,["TEXT_EMOTE"] = true,["MONSTER_SAY"] = true,["MONSTER_EMOTE"] = true,["MONSTER_YELL"] = true,}
local GF_ChatProcess = { ["CHAT_MSG_SYSTEM"] = true,["CHAT_MSG_SAY"] = true,["CHAT_MSG_YELL"] = true,["CHAT_MSG_CHANNEL"] = true,["CHAT_MSG_GUILD"] = true,["CHAT_MSG_OFFICER"] = true,["CHAT_MSG_WHISPER"] = true,["CHAT_MSG_WHISPER_INFORM"] = true,
["CHAT_MSG_PARTY"] = true,["CHAT_MSG_RAID"] = true,["CHAT_MSG_RAID_LEADER"] = true,["CHAT_MSG_RAID_WARNING"] = true,["CHAT_MSG_BATTLEGROUND"] = true,["CHAT_MSG_BATTLEGROUND_LEADER"] = true,["CHAT_MSG_HARDCORE"] = true, }
local ThingsToHide = { "GF_LogBottomButton","GF_LogDownButton","GF_LogUpButton","GF_LogFilterDropdownButton","GF_LogChannelFilterDropdownButton","GF_LogChannelNameDropdown","GF_WhisperLogButton","GF_GroupLogButton",-- 8 Log-related
"GF_MainFrameCloseButton","GF_GroupChatOptionsFrame", -- 2 both
"GF_LFGFrameToggleButton","GF_GetWhoFrameToggleButton","GF_AnnounceToLFGButton", -- 3 Group-related
"GF_SettingsFrameButton","GF_ShowBlacklistButton","GF_ShowGroupsButton","GF_LogFrameButton", -- 4 other(17 to this point)
"GF_ConvertLogMessagesToURL","GF_SaveCurrentGroupButton","GF_ResetCurrentGroupButton","GF_TranslateDropdownButton", -- Turn on/off independently
"GF_QueuetoLFTButton","GF_GetWhoFrame","GF_LFGFrame","GF_MessageFrame","GF_LogFilterDropdownMenu","GF_GroupFilterDropdownMenu","GF_TranslateDropdownMenu","GF_ChatFilterDropdownMenu","GF_LFGHardCore","GF_FontName","GF_AlwaysShow","GF_GroupChannelName","GF_BlockList","GF_AutoBlacklistDropdownMenu","GF_LogChannelName" }
GF_MenusToHide								= {}
local GF_DifficultyColors = { ["RED"] = "ff0000",["ORANGE"] = "ff8040",["YELLOW"] = "ffff00",["GREEN"] = "1eff00",["GREY"] = "808080", }
local GF_TankClasses = { ["DRUID"]=true,["WARRIOR"]=true,["PALADIN"]=true,["SHAMAN"]=true }
local GF_HealingClasses = { ["PRIEST"]=true,["DRUID"]=true,["PALADIN"]=true,["SHAMAN"]=true }
local languageName,foundIgnore,foundGuild,foundGuildExclusion,foundLFM,foundLFG,foundClass,foundDungeon,foundRaid,foundTrades,foundTradesExclusion,numGroupWords,foundPvP,foundHC,foundNotHC,foundBlockList,dontCheckSpam,fixedType,searchButtonHasValues,GF_ERR_GUILD_LEAVE_S
local lfmlfgName,groupName,foundQuest,foundDFlags,foundPFlags,foundCFlags,lfmPosition,groupPosition,LFTGroups,displayWhoMessageName = {},{},{},{},{},{},{},{},{},{}
GF_HELP_TEXT_SIMPLE = HELP_TEXT_SIMPLE
local strataEnum = {"WORLD","BACKGROUND","LOW","MEDIUM","HIGH","DIALOG","FULLSCREEN","FULLSCREEN_DIALOG","TOOLTIP",["WORLD"]=1,["BACKGROUND"]=2,["LOW"]=3,["MEDIUM"]=4,["HIGH"]=5,["DIALOG"]=6,["FULLSCREEN"]=7,["FULLSCREEN_DIALOG"]=8,["TOOLTIP"]=9}
local GF_Parser = {
COMBATHITSELFOTHER,COMBATHITCRITSELFOTHER,COMBATHITSCHOOLSELFOTHER,COMBATHITCRITSCHOOLSELFOTHER, -- Self Hits 1-4
COMBATHITOTHEROTHER,COMBATHITCRITOTHEROTHER,COMBATHITSCHOOLOTHEROTHER,COMBATHITCRITSCHOOLOTHEROTHER, -- Other Hits 5-8
SPELLLOGSELFOTHER,SPELLLOGCRITSELFOTHER,SPELLLOGSCHOOLSELFOTHER,SPELLLOGCRITSCHOOLSELFOTHER, -- Self Spells 9-12
SPELLLOGOTHEROTHER,SPELLLOGCRITOTHEROTHER,SPELLLOGSCHOOLOTHEROTHER,SPELLLOGCRITSCHOOLOTHEROTHER, -- Other Spells 13-16
HEALEDSELFSELF,HEALEDCRITSELFSELF,HEALEDSELFOTHER,HEALEDCRITSELFOTHER, -- Self Heals 17-20
HEALEDOTHERSELF,HEALEDCRITOTHERSELF,HEALEDOTHEROTHER,HEALEDCRITOTHEROTHER, -- Other Heals 21-24
PERIODICAURAHEALOTHERSELF,PERIODICAURAHEALSELFSELF, -- Periodic Heal Self 25-26
PERIODICAURAHEALSELFOTHER,PERIODICAURAHEALOTHEROTHER, -- Periodic Heal Others 27-28
PERIODICAURADAMAGESELFOTHER,PERIODICAURADAMAGEOTHEROTHER, -- Periodic Damage 29-30
DAMAGESHIELDSELFOTHER, -- Self Reflect 31
DAMAGESHIELDOTHERSELF,DAMAGESHIELDOTHEROTHER, } -- Other Reflect 32-33
local factionRaces = { ["Alliance"] = { ["Human"]=true,["Dwarf"]=true,["Gnome"]=true,["NightElf"]=true, }, ["Horde"] = { ["Orc"]=true,["Troll"]=true,["Tauren"]=true,["Scourge"]=true, } }
local minimapShapes = { ["ROUND"] = {true, true, true, true},["SQUARE"] = {false, false, false, false},["CORNER-TOPLEFT"] = {true, false, false, false},["CORNER-TOPRIGHT"] = {false, false, true, false},["CORNER-BOTTOMLEFT"] = {false, true, false, false},["CORNER-BOTTOMRIGHT"] = {false, false, false, true},["SIDE-LEFT"] = {true, true, false, false},["SIDE-RIGHT"] = {false, false, true, true},["SIDE-TOP"] = {true, false, true, false},["SIDE-BOTTOM"] = {false, true, false, true},["TRICORNER-TOPLEFT"] = {true, true, true, false},["TRICORNER-TOPRIGHT"] = {true, false, true, true},["TRICORNER-BOTTOMLEFT"] = {true, true, false, true},["TRICORNER-BOTTOMRIGHT"] = {false, true, true, true},}
local triedToWhoName = nil

local PlayersInCombat = {}
local ShaguDPSLoaded = nil

local ProcessedFirstChannelMessage = nil
local GroupHistoryLogTable = {}
local SomeoneInCombat = nil
local gfind = string.gmatch or string.gfind

local GF_Frame = CreateFrame'Frame'
GF_Frame:Hide()
GF_Frame:SetScript('OnEvent', function() this[event](this) end) -- Changed GF_Frame:SetScript('OnEvent', function(self, event, ...) self[event](self, event, ...) end)
GF_Frame:RegisterEvent("ADDON_LOADED")
GF_Frame:RegisterEvent("PLAYER_ENTERING_WORLD")
GF_IconMovingFrame = CreateFrame'Frame'
GF_IconMovingFrame:Hide()
GF_IconMovingFrame:SetScript('OnUpdate', function() GF_IconDraggingOnUpdate() end)
local old_UIErrorsFrame_OnEvent = UIErrorsFrame_OnEvent
function GF_LoadVariables()
	if not GF_MessageList then GF_MessageList = {} end
	if not GF_MessageList[GF_RealmName] then GF_MessageList[GF_RealmName] = {} end
	if not GF_BlackList then GF_BlackList = {} end
	if not GF_BlackList[GF_RealmName] then GF_BlackList[GF_RealmName] = {} end
	if not GF_LogHistory then GF_LogHistory = {} end
	if not GF_LogHistory[GF_RealmName] then GF_LogHistory[GF_RealmName] = {} end
	if not GF_WhoTable then GF_WhoTable = {} end
	if not GF_WhoTable[GF_RealmName] then GF_WhoTable[GF_RealmName] = {} end
	if not GF_WhoTable[GF_RealmName]["LOADED"] or not GF_WhoTable[GF_RealmName]["LOADED"][4] then GF_WhoTable[GF_RealmName]["LOADED"] = { UnitLevel("player"), ({UnitClass("player")})[2], "", time() - 1 } end
	if not GF_WhisperLogData then GF_WhisperLogData = {} end
	if not GF_WhisperLogData[GF_RealmName] then GF_WhisperLogData[GF_RealmName] = {} table.insert(GF_WhisperLogData[GF_RealmName], "Guild") GF_WhisperLogData[GF_RealmName]["Guild"] = {} end
	if not GF_GroupHistory then GF_GroupHistory = {} end
	if not GF_GroupHistory[GF_RealmName] then GF_GroupHistory[GF_RealmName] = {} table.insert(GF_GroupHistory[GF_RealmName], "Groups") end
	if not GF_GroupHistory[GF_RealmName]["Groups"] then GF_GroupHistory[GF_RealmName]["Groups"] = {} end
	if not GF_GroupHistory[GF_RealmName]["PLAYERS"] then GF_GroupHistory[GF_RealmName]["PLAYERS"] = {} end
	if not GF_PlayerMessages then GF_PlayerMessages = {} end
	if not GF_PlayerNotes then GF_PlayerNotes = {} end
	if not GF_PlayerNotes[GF_RealmName] then GF_PlayerNotes[GF_RealmName] = {} end

	if not GF_SavedVariables then GF_SavedVariables = {} end
	if not GF_SavedVariables.version or GF_SavedVariables.version < GF_CurrentVersion then
		GF_SavedVariables.version = GF_CurrentVersion
		if GF_SavedVariables.addonsendtimeout == nil then GF_SavedVariables.addonsendtimeout = 0 end

		if GF_SavedVariables.showgroupsinchat == nil then GF_SavedVariables.showgroupsinchat = true end
		if GF_SavedVariables.showgroupsnewonly == nil then GF_SavedVariables.showgroupsnewonly = false end
		if GF_SavedVariables.showgroupsinminimap == nil then GF_SavedVariables.showgroupsinminimap = false end
		if GF_SavedVariables.showchattexts == nil then GF_SavedVariables.showchattexts = true end
		if GF_SavedVariables.showtradestexts == nil then GF_SavedVariables.showtradestexts = true end
		if GF_SavedVariables.showloottexts == nil then GF_SavedVariables.showloottexts = true end
		if GF_SavedVariables.showguilds == nil then GF_SavedVariables.showguilds = true end
		if GF_SavedVariables.usewhoongroups == nil then GF_SavedVariables.usewhoongroups = false end
		if GF_SavedVariables.announcetimer == nil then GF_SavedVariables.announcetimer = 300 end

		if GF_SavedVariables.logshowgroup == nil then GF_SavedVariables.logshowgroup = true end
		if GF_SavedVariables.logshowfiltered == nil then GF_SavedVariables.logshowfiltered = true end
		if GF_SavedVariables.logshowchat == nil then GF_SavedVariables.logshowchat = true end
		if GF_SavedVariables.logshowtrades == nil then GF_SavedVariables.logshowtrades = true end
		if GF_SavedVariables.logshowloot == nil then GF_SavedVariables.logshowloot = true end
		if GF_SavedVariables.logshowguilds == nil then GF_SavedVariables.logshowguilds = true end
		if GF_SavedVariables.logshowspam == nil then GF_SavedVariables.logshowspam = true end
		if GF_SavedVariables.logshowblacklist == nil then GF_SavedVariables.logshowblacklist = true end
		if GF_SavedVariables.logshowbelowlevel == nil then GF_SavedVariables.logshowbelowlevel = true end
		if GF_SavedVariables.showwhisperlogs == nil then GF_SavedVariables.showwhisperlogs = false end

		if GF_SavedVariables.logchannels == nil then GF_SavedVariables.logchannels = true end
		if GF_SavedVariables.logparty == nil then GF_SavedVariables.logparty = true end
		if GF_SavedVariables.logguild == nil then GF_SavedVariables.logguild = true end
		if GF_SavedVariables.logwhisper == nil then GF_SavedVariables.logwhisper = true end
		if GF_SavedVariables.logsay == nil then GF_SavedVariables.logsay = true end
		if GF_SavedVariables.logyell == nil then GF_SavedVariables.logyell = true end
		if GF_SavedVariables.loghardcore == nil then GF_SavedVariables.loghardcore = true end

		if GF_SavedVariables.joinworld == nil then GF_SavedVariables.joinworld = true end
		if GF_SavedVariables.spamfilter == nil then GF_SavedVariables.spamfilter = true end
		if GF_SavedVariables.spamfilterduration == nil then GF_SavedVariables.spamfilterduration = 15 end
		if GF_SavedVariables.systemfilter == nil then GF_SavedVariables.systemfilter = false end
		if GF_SavedVariables.autoblacklist == nil then GF_SavedVariables.autoblacklist = true end
		if GF_SavedVariables.autoblacklistminlevel == nil then GF_SavedVariables.autoblacklistminlevel = 12 end
		if GF_SavedVariables.showformattedchat == nil then GF_SavedVariables.showformattedchat = false end
		if GF_SavedVariables.alwaysshowguild == nil then GF_SavedVariables.alwaysshowguild = true end
		if GF_SavedVariables.blockmessagebelowlevel == nil then GF_SavedVariables.blockmessagebelowlevel = 1 end

		if GF_SavedVariables.grouplistingduration == nil then GF_SavedVariables.grouplistingduration = 30 end
		if GF_SavedVariables.showgroupsnewonlytime == nil then GF_SavedVariables.showgroupsnewonlytime = 3 end
		if GF_SavedVariables.FilterLevel == nil then GF_SavedVariables.FilterLevel = 2 end
		if GF_SavedVariables.MainFrameUIScale == nil then GF_SavedVariables.MainFrameUIScale = 10 end
		if GF_SavedVariables.MainFrameTransparency == nil then GF_SavedVariables.MainFrameTransparency = 1 end
		if GF_SavedVariables.squareminimap == nil then GF_SavedVariables.squareminimap = false end

		if GF_SavedVariables.questmod == nil then GF_SavedVariables.questmod = true end
		if GF_SavedVariables.purgepfdb == nil then GF_SavedVariables.purgepfdb = false end

		if GF_SavedVariables.mainframestatus == nil then GF_SavedVariables.mainframestatus = 0 end -- status is 0(normal), 1(left), or 2(right)... save window position and restore
		if GF_SavedVariables.mainframeheight == nil then GF_SavedVariables.mainframeheight = false end
		if GF_SavedVariables.mainframewidth == nil then GF_SavedVariables.mainframewidth = true end
		if GF_SavedVariables.mainframelogisopen == nil then GF_SavedVariables.mainframelogisopen = false end -- whether it was last opened to logs or to group frame, for reloading
		if GF_SavedVariables.mainframeishidden == nil then GF_SavedVariables.mainframeishidden = true end -- if not hidden on login, show

		if GF_SavedVariables.logshowwhisperwindow == nil then GF_SavedVariables.logshowwhisperwindow = true end

		if GF_SavedVariables.groupchannelname == nil then if GF_KNOWN_SERVERS_LIST[GF_RealmName] then GF_SavedVariables.groupchannelname = GF_WORLD_CHANNEL_NAME else GF_SavedVariables.groupchannelname = GF_LFG_CHANNEL_NAME end end
		if GF_SavedVariables.blocklist == nil then GF_SavedVariables.blocklist = {} end

		if GF_SavedVariables.clickcombos == nil then GF_SavedVariables.clickcombos = true end
		if GF_SavedVariables.lfglftintegration == nil then GF_SavedVariables.lfglftintegration = true end
		if GF_SavedVariables.usefriendslist == nil then GF_SavedVariables.usefriendslist = true end
		if GF_SavedVariables.fontname == nil then GF_SavedVariables.fontname = 1 end
		if GF_SavedVariables.blacklisttrades == nil then GF_SavedVariables.blacklisttrades = false end
		if GF_SavedVariables.blacklistguild == nil then GF_SavedVariables.blacklistguild = false end
		if GF_SavedVariables.blacklistchat == nil then GF_SavedVariables.blacklistchat = false end
		if GF_SavedVariables.blacklistforeign == nil then GF_SavedVariables.blacklistforeign = true end
		if GF_SavedVariables.iconpriority == nil then GF_SavedVariables.iconpriority = false end
		if GF_SavedVariables.friendsToRemove == nil then GF_SavedVariables.friendsToRemove = {} end

		if GF_SavedVariables.showtranslate == nil then GF_SavedVariables.showtranslate = false end
		if GF_SavedVariables.showuntranslated == nil then GF_SavedVariables.showuntranslated = false end
		if GF_SavedVariables.blockforeign == nil then GF_SavedVariables.blockforeign = false end
	end
	if not GF_PerCharVariables then GF_PerCharVariables = {} end
	if not GF_PerCharVariables.version or GF_PerCharVariables.version < GF_CurrentVersion then
		GF_PerCharVariables.version = GF_CurrentVersion
		if GF_PerCharVariables.autofilter == nil then GF_PerCharVariables.autofilter = false end
		if GF_PerCharVariables.autofilterlevelvar == nil then GF_PerCharVariables.autofilterlevelvar = 5 end
		if GF_PerCharVariables.searchtext == nil then GF_PerCharVariables.searchtext = "" end
		if GF_PerCharVariables.searchbuttonstext == nil then GF_PerCharVariables.searchbuttonstext = {} end
		if GF_PerCharVariables.searchlfgtext == nil then GF_PerCharVariables.searchlfgtext = "" end
		if GF_PerCharVariables.searchlfgwhispertext == nil then GF_PerCharVariables.searchlfgwhispertext = "" end
		if GF_PerCharVariables.getwhowhisperclass == nil then GF_PerCharVariables.getwhowhisperclass = GF_WARRIOR end
		if GF_PerCharVariables.getwhowhisperlevel == nil then GF_PerCharVariables.getwhowhisperlevel = 0 end
		if GF_PerCharVariables.wholevelrange == nil then GF_PerCharVariables.wholevelrange = 3 end
		if GF_PerCharVariables.lfgauto == nil then GF_PerCharVariables.lfgauto = false end
		if GF_PerCharVariables.lfgsize == nil or not tonumber(GF_PerCharVariables.lfgsize) then GF_PerCharVariables.lfgsize = 1 end
		if GF_PerCharVariables.hardcore == nil then GF_PerCharVariables.hardcore = 1 end
		if GF_PerCharVariables.disablehardcore == nil then GF_PerCharVariables.disablehardcore = false end

		if GF_PerCharVariables.showdungeons == nil then GF_PerCharVariables.showdungeons = true end
		if GF_PerCharVariables.showraids == nil then GF_PerCharVariables.showraids = true end
		if GF_PerCharVariables.showquests == nil then GF_PerCharVariables.showquests = true end
		if GF_PerCharVariables.showother == nil then GF_PerCharVariables.showother = true end
		if GF_PerCharVariables.showlfm == nil then GF_PerCharVariables.showlfm = true end
		if GF_PerCharVariables.showlfg == nil then GF_PerCharVariables.showlfg = true end

		if GF_PerCharVariables.lfglevel == nil then GF_PerCharVariables.lfglevel = false end
		if GF_PerCharVariables.lfgdps == nil then GF_PerCharVariables.lfgdps = false end
		if GF_PerCharVariables.lfgheal == nil then GF_PerCharVariables.lfgheal = false end
		if GF_PerCharVariables.lfgtank == nil then GF_PerCharVariables.lfgtank = false end
		if GF_PerCharVariables.showtank == nil then GF_PerCharVariables.showtank = false end
		if GF_PerCharVariables.showhealer == nil then GF_PerCharVariables.showhealer = false end
		if GF_PerCharVariables.showdps == nil then GF_PerCharVariables.showdps = false end

		if GF_PerCharVariables.playsounds == nil then GF_PerCharVariables.playsounds = false end
		if GF_PerCharVariables.lfgshown == nil then GF_PerCharVariables.lfgshown = false end
		if GF_PerCharVariables.getwhoshown == nil then GF_PerCharVariables.getwhoshown = false end
		if GF_PerCharVariables.blockedchannels == nil then GF_PerCharVariables.blockedchannels = {} end
		if GF_PerCharVariables.dpsmeter == nil then GF_PerCharVariables.dpsmeter = 1 end
		if GF_PerCharVariables.dpsmetershown == nil then GF_PerCharVariables.dpsmetershown = false end
		if GF_PerCharVariables.usedpsmeter == nil then GF_PerCharVariables.usedpsmeter = true end
		if GF_PerCharVariables.sendplayerinfo == nil then GF_PerCharVariables.sendplayerinfo = false end

		if GF_PerCharVariables.dpsmetersenddamage == nil then GF_PerCharVariables.dpsmetersenddamage = true end
		if GF_PerCharVariables.dpsmetersendhealing == nil then GF_PerCharVariables.dpsmetersendhealing = false end
	end
	if not GF_PerCharVariables.friendUnknown then GF_PerCharVariables.friendUnknown = {} end
	if not GF_PerCharVariables.alwaysShown then GF_PerCharVariables.alwaysShown = {["GUILD"]=true,["FRIENDS"]=true,["PARTY"]=true,["SAY"]=true,[strupper(GENERAL)]=true} end
	if GF_WhoTable[GF_RealmName]["LOADED"][4] < time() then -- Prune the WhoTable once per day
		GF_WhoTable[GF_RealmName]["LOADED"] = { UnitLevel("player"),({UnitClass("player")})[2],"",time() + 86400 }
		GF_PruneDataTables()
	end
	GF_WhoTable[GF_RealmName]["SYSTEM"] = { 0,"SYSTEM","",time() + 99999999999 }
	GF_LogHistory[GF_RealmName].lastLogin = time()
	if not GF_LogHistory[GF_RealmName]["Delay"] then GF_LogHistory[GF_RealmName]["Delay"] = {} end
	if not GetGuildRosterShowOffline() then -- Hide and then redisplay the Guild Roster to trigger a scan for Guild Level/Class data
		SetGuildRosterShowOffline(true)
		SetGuildRosterShowOffline(false)
	end
	for i=1, getn(GF_SavedVariables.blocklist) do table.insert(GF_BUTTONS_LIST["BlockList"],{GF_SavedVariables.blocklist[i]}) GF_WORD_BLOCK_LIST[GF_FormatBlockListWords(GF_SavedVariables.blocklist[i])] = true end

	GF_BUTTONS_LIST["FontName"][1][2] = ChatFontNormal:GetFont()
	if IsAddOnLoaded("pfUI") and pfUI.gui and pfUI.gui.dropdowns and pfUI.gui.dropdowns.fonts then
		for i=1, getn(pfUI.gui.dropdowns.fonts) do
			for fontPath,fontName in gfind(pfUI.gui.dropdowns.fonts[i], "(.*):(.*)") do
				if not GF_BUTTONS_LIST["FontName"][strupper(fontName)] then table.insert(GF_BUTTONS_LIST["FontName"],{fontName,fontPath}) end
			end
		end
	end
	table.sort(GF_SystemMessageFilters, function(a,b) if not b then return true end end)
	table.sort(GF_SystemMessageFilters, function(a,b) if not b then return true end end)
	local lfs,lfe
	for i=1, getn(GF_SystemMessageFilters) do if GF_SystemMessageFilters[i] then lfs,lfe = strfind(" "..GF_SystemMessageFilters[i],"%s",1,true) if lfs then GF_SystemMessageFilters[i] = strsub(GF_SystemMessageFilters[i],1,lfs-2).."(%a+)"..strsub(GF_SystemMessageFilters[i],lfe) end end end
	for i=1, getn(GF_ServerMessageFilters) do if GF_ServerMessageFilters[i] then lfs,lfe = strfind(" "..GF_ServerMessageFilters[i],"%s",1,true) if lfs then GF_ServerMessageFilters[i] = strsub(GF_ServerMessageFilters[i],1,lfs-2).."(%a+)"..strsub(GF_ServerMessageFilters[i],lfe) end end end
	for i=1, getn(GF_LootFilters) do
		lfs = 1 while true do lfs,lfe = strfind(GF_LootFilters[i],"%s",lfs,true) if lfs then if lfs == 1 then GF_LootFilters[i] = "(.+)"..strsub(GF_LootFilters[i],lfe+1) else GF_LootFilters[i] = strsub(GF_LootFilters[i],1,lfs-1).."(.+)"..strsub(GF_LootFilters[i],lfe+1) end lfs = lfe + 6 else break end end
		lfs = 1 while true do lfs,lfe = strfind(GF_LootFilters[i],"%d",lfs,true) if lfs then if lfs == 1 then GF_LootFilters[i] = "(%d+)"..strsub(GF_LootFilters[i],lfe+1) else GF_LootFilters[i] = strsub(GF_LootFilters[i],1,lfs-1).."(%d+)"..strsub(GF_LootFilters[i],lfe+1) end lfs = lfe + 4 else break end end
	end
	for i=1, getn(GF_Parser) do
		lfs = 1 while true do lfs,lfe = strfind(GF_Parser[i],"%s",lfs,true) if lfs then if lfs == 1 then GF_Parser[i] = "(.+)"..strsub(GF_Parser[i],lfe+1) else GF_Parser[i] = strsub(GF_Parser[i],1,lfs-1).."(.+)"..strsub(GF_Parser[i],lfe+1) end lfs = lfe + 6 else break end end
		lfs = 1 while true do lfs,lfe = strfind(GF_Parser[i],"%d",lfs,true) if lfs then if lfs == 1 then GF_Parser[i] = "(%d+)"..strsub(GF_Parser[i],lfe+1) else GF_Parser[i] = strsub(GF_Parser[i],1,lfs-1).."(%d+)"..strsub(GF_Parser[i],lfe+1) end lfs = lfe + 4 else break end end
	end
	lfs,lfe = strfind(" "..ERR_GUILD_LEAVE_S,"%s",1,true) if lfs then GF_ERR_GUILD_LEAVE_S = strsub(ERR_GUILD_LEAVE_S,1,lfs-2).."(%a+)"..strsub(ERR_GUILD_LEAVE_S,lfe) else GF_ERR_GUILD_LEAVE_S = ERR_GUILD_LEAVE_S end
	if GF_SavedVariables.systemfilter then HELP_TEXT_SIMPLE = nil else HELP_TEXT_SIMPLE = GF_HELP_TEXT_SIMPLE end

	GF_CurrentZone = GetRealZoneText()
	if not GF_PerCharVariables.CurrentGroup or not GF_PerCharVariables.CurrentGroup["TempData"] then GF_CreateBlankGroupData() end
	GF_CreateCurrentZoneData()

	if not GF_TranslationLoaded then GF_SavedVariables.showtranslate = false GF_SavedVariables.showuntranslated = false GF_SavedVariables.blockforeign = false end
end
function GF_LoadSettings()
	if GF_EPOCH_SERVERS_LIST[GF_RealmName] then GF_AddEpochWoWDungeonsRaids() GF_PlayingOnEpoch = true end -- See if I'm not Epoch servers.
	if GF_TURTLE_SERVERS_LIST[GF_RealmName] then GF_AddTurtleWoWDungeonsRaids() GF_WhoCooldownTime = 30 GF_PlayingOnTurtle = true end -- See if I'm not Turtle servers.
	for i=1,100 do -- Look for Hardcore spell. If the spell also has "Challenge" subtext, assume it is a Turtle server.
		if GetSpellName(i, BOOKTYPE_SPELL) == GF_HARDCORE_SPELL_NAME then
			GF_Hardcore = true
			local _,spellRank = GetSpellName(i, BOOKTYPE_SPELL)
			if spellRank == GF_HARDCORE_TURTLE_SUBTEXT then
				GF_AddTurtleWoWDungeonsRaids()
				GF_WhoCooldownTime = 30
				GF_PlayingOnTurtle = true
			end
			break
		end
	end
	if not GF_PlayingOnTurtle then GF_PerCharVariables.hardcore = 1 GF_TextColors["HARDCORE"] = nil end
	if GF_Hardcore then
		if not GF_PerCharVariables.disablehardcore then
			GF_BUTTONS_LIST.LFGHardCore[1][4] = true
			GF_BUTTONS_LIST.LFGHardCore[2] = {GF_SHOW_HARDCORE,1,60,true,nil,true}
			GF_BUTTONS_LIST.LFGHardCore[3] = {GF_SHOW_NORMAL,1,60,nil,true,nil}
		end
	else
		GF_DisableHardcoreCheckButton:Hide()
	end
	if GF_BUTTONS_LIST.LFGHardCore[GF_PerCharVariables.hardcore][4] then GF_WorldAnnounceMessageTextLabel:SetText(GF_HARDCORE_SEND_TEXT) else GF_WorldAnnounceMessageTextLabel:SetText(GF_WORLD_SEND_TEXT..GF_SavedVariables.groupchannelname.." "..GF_LOG_CHANNEL) end
	GF_LFGHardCoreDropdownTextLabel:SetText(GF_BUTTONS_LIST.LFGHardCore[GF_PerCharVariables.hardcore][1])

	local VarsToSet = { GF_SavedVariables.FilterLevel,GF_SavedVariables.MainFrameTransparency,GF_SavedVariables.autoblacklistminlevel,GF_SavedVariables.blockmessagebelowlevel,
		GF_SavedVariables.grouplistingduration,GF_PerCharVariables.autofilterlevelvar, GF_SavedVariables.MainFrameUIScale, }
	local VarNames = { "GF_FilterLevelSlider",	"GF_FrameTransparencySlider","GF_FrameSpamBlacklistMinLevelSlider","GF_FrameBlockMessagesBelowLevelSlider",
		"GF_GroupListingDurationSlider","GF_AutoFilterLevelSlider","GF_UIScaleSlider", }
	for i=1, getn(VarNames) do getglobal(VarNames[i]):SetValue(VarsToSet[i]) end

	if GF_SavedVariables.announcetimer > 600 then GF_FrameAnnounceTimerSlider:SetValue((GF_SavedVariables.announcetimer-600)/300 + 10) else	GF_FrameAnnounceTimerSlider:SetValue(GF_SavedVariables.announcetimer/60)end
	if GF_SavedVariables.showgroupsnewonlytime > 10 then GF_GroupNewTimeoutSlider:SetValue((GF_SavedVariables.showgroupsnewonlytime-10)/5 + 10) else GF_GroupNewTimeoutSlider:SetValue(GF_SavedVariables.showgroupsnewonlytime) end

	if GF_SavedVariables.spamfilterduration > 600 then GF_FrameSpamFilterDurationSlider:SetValue((GF_SavedVariables.spamfilterduration-600)/300 + 21)
	elseif GF_SavedVariables.spamfilterduration > 60 then GF_FrameSpamFilterDurationSlider:SetValue((GF_SavedVariables.spamfilterduration)/60 + 11)
	elseif GF_SavedVariables.spamfilterduration == 60 then GF_FrameSpamFilterDurationSlider:SetValue(12) else GF_FrameSpamFilterDurationSlider:SetValue(GF_SavedVariables.spamfilterduration/5) end

	VarsToSet = { GF_SavedVariables.showgroupsinchat,GF_SavedVariables.showgroupsinminimap,GF_SavedVariables.showgroupsnewonly,GF_SavedVariables.showchattexts,GF_SavedVariables.showtradestexts,GF_SavedVariables.showloottexts,
		GF_SavedVariables.showguilds,GF_PerCharVariables.autofilter,GF_PerCharVariables.showdungeons,GF_PerCharVariables.showraids,GF_PerCharVariables.showquests,GF_PerCharVariables.showother,GF_PerCharVariables.showlfm,GF_PerCharVariables.showlfg,
		GF_SavedVariables.logshowgroup,	GF_SavedVariables.logshowfiltered,GF_SavedVariables.logshowchat,GF_SavedVariables.logshowtrades,GF_SavedVariables.logshowguilds,GF_SavedVariables.logshowloot,GF_SavedVariables.logshowspam,
		GF_SavedVariables.logshowblacklist,	GF_SavedVariables.logshowbelowlevel,GF_SavedVariables.joinworld,GF_SavedVariables.showformattedchat,GF_SavedVariables.usewhoongroups,GF_SavedVariables.systemfilter,GF_SavedVariables.squareminimap,
		GF_SavedVariables.spamfilter,GF_SavedVariables.autoblacklist,GF_PerCharVariables.playsounds,GF_PerCharVariables.lfgauto,GF_SavedVariables.mainframeheight,GF_SavedVariables.mainframewidth,
		GF_SavedVariables.questmod,GF_SavedVariables.purgepfdb,GF_SavedVariables.logchannels,GF_SavedVariables.logparty,GF_SavedVariables.logguild,GF_SavedVariables.logwhisper,GF_SavedVariables.logsay,GF_SavedVariables.logyell,
		GF_SavedVariables.loghardcore,GF_PerCharVariables.lfglevel,GF_PerCharVariables.lfgdps,GF_PerCharVariables.lfgheal,GF_PerCharVariables.lfgtank,GF_SavedVariables.clickcombos,GF_PerCharVariables.disablehardcore,GF_SavedVariables.usefriendslist,
		GF_SavedVariables.blacklisttrades,GF_SavedVariables.blacklistguild,GF_SavedVariables.blacklistchat,GF_SavedVariables.blacklistforeign,GF_SavedVariables.iconpriority,GF_PerCharVariables.usedpsmeter,GF_SavedVariables.lfglftintegration,
		GF_PerCharVariables.showtank,GF_PerCharVariables.showhealer,GF_PerCharVariables.showdps,GF_PerCharVariables.sendplayerinfo,GF_PerCharVariables.dpsmetersenddamage,GF_PerCharVariables.dpsmetersendhealing,
		GF_SavedVariables.showtranslate,GF_SavedVariables.showuntranslated,GF_SavedVariables.blockforeign, }
	VarNames = { "GF_ChatFilterGroupsInChatCheckButton","GF_ChatFilterGroupsInMinimapCheckButton","GF_ChatFilterGroupsNewOnlyCheckButton","GF_ChatFilterShowChatCheckButton","GF_ChatFilterShowTradesCheckButton","GF_ChatFilterShowLootCheckButton",
		"GF_ChatFilterShowGuildsCheckButton","GF_AutoFilterCheckButton","GF_GroupFilterShowDungeonCheckButton","GF_GroupFilterShowRaidCheckButton","GF_GroupFilterShowQuestCheckButton","GF_GroupFilterShowOtherCheckButton","GF_GroupsFrameShowLFMCheckButton",
		"GF_GroupsFrameShowLFGCheckButton","GF_LogFilterShowGroups","GF_LogFilterShowFiltered","GF_LogFilterShowChat","GF_LogFilterShowTrades","GF_LogFilterShowGuild","GF_LogFilterShowLoot","GF_LogFilterShowSpam","GF_LogFilterShowBlacklist",
		"GF_LogFilterShowBelowLevel","GF_AutoJoinGroupChannelCheckButton","GF_FrameShowFormattedChatCheckButton","GF_FrameUseWhoOnGroupsCheckButton","GF_FrameSystemFilterCheckButton","GF_SquareMinimapCheckButton","GF_FrameSpamFilterCheckButton",
		"GF_AutomaticBlacklistCheckButton","GF_PlaySoundOnResultsCheckButton","GF_GroupAutoCheckButton","GF_HideMainFrameHeight","GF_HideMainFrameWidth","GF_FrameQuestModCheckButton","GF_PurgePFDBCheckButton",
		"GF_LogChannelFilterChannels","GF_LogChannelFilterParty","GF_LogChannelFilterGuild","GF_LogChannelFilterWhisper","GF_LogChannelFilterSay","GF_LogChannelFilterYell","GF_LogChannelFilterHardcore","GF_LFGMyRoleLevelCheckButton",
		"GF_LFGMyRoleDPSCheckButton","GF_LFGMyRoleHealCheckButton","GF_LFGMyRoleTankCheckButton","GF_UseClickCombosCheckButton","GF_DisableHardcoreCheckButton","GF_UseFriendsListCheckButton","GF_AutoBlacklistTradesCheckButton",
		"GF_AutoBlacklistGuildCheckButton","GF_AutoBlacklistChatCheckButton","GF_AutoBlacklistForeignCheckButton","GF_MinimapIconPriorityCheckButton","GF_UseDPSMeterCheckButton","GF_IntegrateWithLFGLFTCheckButton",
		"GF_GroupFilterShowTanksCheckButton","GF_GroupFilterShowHealersCheckButton","GF_GroupFilterShowDPSCheckButton","GF_SendPlayerInfoCheckButton","GF_ShowGroupLogEntryFrameReportDamageCheckButton","GF_ShowGroupLogEntryFrameReportHealingCheckButton",
		"GF_TranslateChatCheckButton","GF_TranslateShowUntranslatedCheckButton","GF_TranslateBlockForeignCheckButton", }
	for i=1, getn(VarNames) do getglobal(VarNames[i]):SetChecked(VarsToSet[i]) end

 	VarsToSet = { GF_PerCharVariables.searchtext, GF_PerCharVariables.searchlfgtext, GF_PerCharVariables.searchlfgwhispertext, GF_BUTTONS_LIST.LFGSize[GF_PerCharVariables.lfgsize][1], GF_PerCharVariables.getwhowhisperclass, GF_SavedVariables.groupchannelname,"Font:  "..GF_BUTTONS_LIST["FontName"][GF_SavedVariables.fontname][1], GF_BUTTONS_LIST["DPSMeter"][GF_PerCharVariables.dpsmeter], }
	VarNames = { "GF_GroupsFrameDescriptionEditBox","GF_LFGDescriptionEditBox","GF_GetWhoWhisperEditBox","GF_LFGSizeDropdownTextLabel","GF_GetWhoClassDropdownTextLabel","GF_GroupChannelEditBox","GF_FontNameDropdownTextLabel","GF_DamageMeterFrameTitleLabel"}
	for i=1, getn(VarNames) do getglobal(VarNames[i]):SetText(VarsToSet[i]) end

	if GF_PerCharVariables.searchlfgwhispertext ~= "" then GF_GetWhoClearButton:Show() end
	if GF_PerCharVariables.searchlfgtext ~= "" then GF_LFGDescriptionClearButton:Show() end
	if GF_PerCharVariables.getwhowhisperlevel == 0 then GF_GetWhoLevelDropdownTextLabel:SetText(LEVEL.." "..UnitLevel("player").."±") elseif GF_PerCharVariables.getwhowhisperlevel > 60 then GF_GetWhoLevelDropdownTextLabel:SetText(LEVEL.." 60±") else GF_GetWhoLevelDropdownTextLabel:SetText(LEVEL.." "..GF_PerCharVariables.getwhowhisperlevel.."±") end

	GF_BUTTONS_LIST["LFGLFM"][2] = { GF_LFG_SPECS[({UnitClass("player")})[2]][1].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][3] = { GF_LFG_SPECS[({UnitClass("player")})[2]][2].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][4] = { GF_LFG_SPECS[({UnitClass("player")})[2]][3].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][5] = { UnitClass("player").." LFG", 1, 60, }

	GF_MainFrame:SetAlpha(GF_FrameTransparencySlider:GetValue())
	GF_MainFrame:SetScale(GF_UIScaleSlider:GetValue()/10)
	if GF_SavedVariables.MainFrameXPos then GF_MainFrame:SetPoint(GF_PerCharVariables.MainFramePoint or "CENTER",UIParent,GF_PerCharVariables.MainFrameRelativePoint or "CENTER", GF_PerCharVariables.MainFrameXPos, GF_SavedVariables.MainFrameYPos) end -- Changed from TOPLEFT to CENTER
	if GF_PerCharVariables.DPSMeterXPos then GF_DamageMeterFrame:SetPoint(GF_PerCharVariables.DPSMeterPoint or "CENTER",UIParent,GF_PerCharVariables.DPSMeterRelativePoint or "CENTER", GF_PerCharVariables.DPSMeterXPos, GF_PerCharVariables.DPSMeterYPos) end -- Changed from TOPLEFT to CENTER
	if GF_PerCharVariables.dpsmetershown then GF_DamageMeterFrame:Show() end
	if GF_SavedVariables.mainframestatus ~= 0 and not GF_SavedVariables.mainframeishidden then if GF_SavedVariables.mainframelogisopen then GF_ToggleMainFrame(2) else GF_ToggleMainFrame(1) end else if GF_SavedVariables.mainframelogisopen then GF_GroupsFrame:Hide() GF_LogFrame:Show() else GF_GroupsFrame:Show() GF_LogFrame:Hide() end end
	if IsAddOnLoaded("pfUI") and GF_SavedVariables.purgepfdb and GF_SavedVariables.showformattedchat then pfUI_playerDB = {} end
	if GF_SavedVariables.iconpriority then if pfMinimap then GF_RelevelMinimapIcons(pfMinimap) else GF_RelevelMinimapIcons(Minimap) end GF_MinimapIcon:SetFrameStrata("HIGH") end
	GF_UpdateMinimapIcon()
	GF_UpdateGuildiesList()
	if GF_SavedVariables.showwhisperlogs == 2 then GF_GroupHistoryUpdateFrame() elseif GF_SavedVariables.showwhisperlogs == 1 then GF_WhisperHistoryUpdateFrame() end
	GF_GetLogFilters()
	GF_GetGroupFilters()
	GF_PruneTheClassWhoTable()
	GF_SetStringSize()
	GF_SetDropdownWidths()
	GF_SetLFGRoleButtons()
	GF_SetupDPSMeter()
	GF_SetAlwaysShowTextLabel()
	GF_Combat_Log_FilterList = { ["SPELL_PERIODIC_DAMAGE"] = GF_FilterDamage,["SPELL_DAMAGE"] = GF_FilterDamage,["SWING_DAMAGE"] = GF_FilterDamage,["RANGE_DAMAGE"] = GF_FilterDamage,["DAMAGE_SHIELD"] = GF_FilterDamage,["DAMAGE_SPLIT"] = GF_FilterDamage,["SPELL_HEAL"] = GF_FilterHealing,["SPELL_PERIODIC_HEAL"] = GF_FilterHealing,["SPELL_HEAL_ABSORBED"] = GF_FilterHealing }
	GF_CheckSearchButtonHasValues()
	if searchButtonHasValues or GF_PerCharVariables.searchbuttonstext[GF_BUTTONS_LIST["SearchList"][getn(GF_BUTTONS_LIST["SearchList"])][4]] then GF_SearchListDropdown:LockHighlight() GF_SearchListClearButton:Show() end
end
function GF_SetStringSize()
	local fontName,fontSizeMinimap,fontSizeLarge,fontSizeButton
	fontName = GF_BUTTONS_LIST["FontName"][GF_SavedVariables.fontname][2]
	GF_UIScaleSliderLabel:SetText("Join the group channel")
	for i=0, 100 do
		GF_UIScaleSliderLabel:SetFont(fontName,20-i)
		if GF_UIScaleSliderLabel:GetStringWidth() < 126 then GF_BaseFontSize = 20-i break end
	end
	GF_UIScaleSliderLabel:SetText("MC hosted by <Weird Vibes> is starting in a couple of minutes! Run")
	for i=0, 100 do
		GF_UIScaleSliderLabel:SetFont(fontName,20-i)
		if GF_UIScaleSliderLabel:GetStringWidth() < 407 then fontSizeLarge = 20-i break end
	end
	GF_UIScaleSliderLabel:SetText("Micromanager")
	for i=0, 100 do
		GF_UIScaleSliderLabel:SetFont(fontName,20-i)
		if GF_UIScaleSliderLabel:GetStringWidth() < 89 then fontSizeButton = 20-i break end
	end
	GF_UIScaleSliderLabel:SetText("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890 ")
	for i=0, 100 do
		GF_UIScaleSliderLabel:SetFont(fontName,20-i)
		if GF_UIScaleSliderLabel:GetStringWidth() < 332 then fontSizeMinimap = 20-i break end
	end
	GF_BaseFont:SetFont(fontName,GF_BaseFontSize)
	GF_MinimapFont:SetFont(fontName,fontSizeMinimap)
	GF_ButtonFont:SetFont(fontName,fontSizeButton)
	GF_ButtonFontWhite:SetFont(fontName,fontSizeButton)
	GF_LargeFontWhite:SetFont(fontName,fontSizeLarge)

	frameNames = { "GF_GroupNewTimeoutSlider","GF_FilterLevelSlider","GF_UIScaleSlider","GF_FrameTransparencySlider","GF_GroupListingDurationSlider","GF_AutoFilterLevelSlider","GF_FrameAnnounceTimerSlider",
	"GF_FrameBlockMessagesBelowLevelSlider","GF_FrameSpamFilterDurationSlider","GF_FrameSpamBlacklistMinLevelSlider", }
	for i=1, getn(frameNames) do
		getglobal(frameNames[i].."Text"):SetFont(fontName,GF_BaseFontSize)
		getglobal(frameNames[i].."Label"):SetFont(fontName,GF_BaseFontSize)
		getglobal(frameNames[i].."High"):SetFont(fontName,GF_BaseFontSize)
		getglobal(frameNames[i].."Low"):SetFont(fontName,GF_BaseFontSize)
	end

	for i=0,19 do getglobal("GF_WhisperHistoryButton"..i):SetFont(fontName,fontSizeButton) end
	for i=1,20 do getglobal("GF_BlackListItem"..i.."DeleteButton"):SetFont(fontName,GF_BaseFontSize) end
	for i=1,22 do
		getglobal("GF_NewItem"..i.."GroupWhoButton"):SetFont(fontName,fontSizeLarge)
		getglobal("GF_NewItem"..i.."LFGInviteButton"):SetFont(fontName,fontSizeLarge)
		getglobal("GF_NewItem"..i.."LFMWhisperRequestInviteButton"):SetFont(fontName,fontSizeLarge)
	end

	frameNames = { "GF_GetWhoTotalNames","GF_AnnounceToLFGButton","GF_GetWhoButton","GF_GetWhoSkipButton","GF_GetWhoWhisperButton","GF_GetWhoNameLabel","GF_ShowGroupsButton","GF_SettingsFrameButton","GF_PlayerNoteFrameOKButton",
	"GF_QueuetoLFTButton","GF_PlayerNoteFrameDeleteButton","GF_ShowBlacklistButton","GF_LogFrameButton","GF_LFGFrameToggleButton","GF_GetWhoFrameToggleButton","GF_ConvertLogMessagesToURL","GF_UIScaleSliderUpdateButton",
	"GF_ResetAllSettingsDialogCloseButton","GF_ShowGroupLogEntryFrameCloseButton","GF_ResetAllSettingsButton","GF_AddPlayerButton","GF_WhisperLogButton","GF_GroupLogButton","GF_AddPlayerFrameOkButton","GF_AddPlayerFrameCloseButton",
	"GF_ResetAllSettingsDialogOkButton","GF_MinimapMessageMoverButton","GF_ToggleDPSMeterButton","GF_SaveCurrentGroupButton","GF_ResetCurrentGroupButton","GF_BlockAddListButton","GF_ShowGroupLogEntryFrameReportButton", }
	for i=1,getn(frameNames) do getglobal(frameNames[i]):SetFont(fontName,fontSizeButton) end -- TODO: Add missing buttons
	for i=1,6 do
		getglobal("GF_MinimapMessageFrameA"..i):SetFont(fontName,fontSizeMinimap)
		getglobal("GF_MinimapMessageFrameB"..i):SetFont(fontName,fontSizeMinimap)
	end
	for i=1,25 do getglobal("GF_GroupHistoryLogPlayer"..i):SetFont(GF_BUTTONS_LIST["FontName"][GF_SavedVariables.fontname][2],GF_BaseFontSize) getglobal("GF_GroupHistoryLogPlayer"..i.."TextLabel"):SetFont(GF_BUTTONS_LIST["FontName"][GF_SavedVariables.fontname][2],GF_BaseFontSize) end
	for i=1,50 do getglobal("GF_GroupHistoryLogItem"..i):SetFont(GF_BUTTONS_LIST["FontName"][GF_SavedVariables.fontname][2],GF_BaseFontSize) getglobal("GF_GroupHistoryLogItem"..i.."TextLabel"):SetFont(GF_BUTTONS_LIST["FontName"][GF_SavedVariables.fontname][2],GF_BaseFontSize) end

	GF_Log:SetFont(fontName,fontSizeLarge)
	GF_LogFilterDropdownButton:SetPoint("LEFT", "GF_LogFrameInternalFrameTitle", "RIGHT", 5, 0)
	GF_LFGMyRoleLevelCheckButton:SetPoint("RIGHT", -1*getglobal(GF_LFGMyRoleLevelCheckButton:GetName().."TextLabel"):GetStringWidth() -2, -3)
	GF_ChatFilterDropdownButton:SetPoint("TOPRIGHT", GF_MainFrameCloseButton, "BOTTOMRIGHT", -1*getglobal(GF_ChatFilterDropdownButton:GetName().."TextLabel"):GetStringWidth() -15, 6)
	GF_UIScaleSliderLabel:SetText("")
end
function GF_FormatBlockListWords(arg1,display)
	local stringA = table.concat(GetModifiedWordList(arg1))
	if display then DEFAULT_CHAT_FRAME:AddMessage(format(GF_ADDING_TO_BLOCK_LIST,stringA),1,1,0.5) end
	return stringA
end

function GF_OnLoad() -- Onload, Tooltips, and Frame/Minimap Functions
	SlashCmdList["GroupFinderCOMMAND"] = GF_SlashHandler
	SLASH_GroupFinderCOMMAND1 = "/gf"
	SLASH_GroupFinderCOMMAND2 = "/groupfinder"
	local old_ChatFrame_OnEvent = ChatFrame_OnEvent
	function ChatFrame_OnEvent(event) -- Changed ChatFrame_OnEvent(self,event,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,isHistory,historyTime,historyName,historyBTag)
-- arg1(message), arg2(sender), arg4("Channel#." "(City/Trade)" "channelName"), arg5, (nameOfPlayerWhoLooted), arg7(zoneChannel#), arg8(channel#), arg9("City/Trade" "channelName")
		if not ProcessedFirstChannelMessage and GetChannelList() then
			ProcessedFirstChannelMessage = true
			GF_Frame:SetScript('OnUpdate', function() GF_OnUpdate() end)
			GF_OnUpdateFunctions = {["Groups"] = GF_UpdateGroupsFrame,["Who"] = GF_SendWhoIfNameInQueue,["Log"] = GF_DisplayLogFirst,["UpdateGroup"] = GF_UpdateGroup,["UpdateMeter"] = GF_UpdateDPSMeterOnLoad,["Delayed"] = GF_CheckForDelayedMessages,["UpdateFriends"] = GF_UpdateFriendsList} -- Changed removed ["Broadcast"] = GF_CheckForBroadCast
			if GF_SavedVariables.usefriendslist then GF_OnUpdateFunctions["Friendslist"] = GF_UpdateWhoDataViaFriendsList end
			GF_UpdateTicker = GetTime() + .1
		end
		if not arg1 or not GF_TextColors[strsub(event,10)] or GF_CHANNEL_BYPASS_LIST[strupper(arg9)] then old_ChatFrame_OnEvent(event) return end -- Changed
		if not arg2 or arg2 == "" then arg2 = "SYSTEM" end
		if not GF_ProcessedFirstMessage[arg2] or GF_ProcessedFirstMessage[arg2][1] ~= arg1 or GF_ProcessedFirstMessage[arg2][2] <= GetTime() then
			GF_ProcessedFirstMessage[arg2] = {arg1,GetTime() + .25}
			--fixedType = nil
			--local origTime = GetTime()
			GF_ChatFunctions(strsub(event,10),arg1,arg2,arg8,arg9)
			--if fixedType then GF_PreviousMessage[arg2][2] = strsub(arg1,3) end
			if GF_ChatProcess[event] and GF_SavedVariables.showformattedchat and GF_PreviousMessage[arg2] and GF_PreviousMessage[arg2][1] then
				if GF_PreviousMessage[arg2][3] then if event == "CHAT_MSG_CHANNEL" then GF_AddChannelMessage(arg1,arg2,arg8,arg9) else GF_AddChatMessage(arg1,arg2,strsub(event,10)) end end
				if event == "CHAT_MSG_CHANNEL" then GF_AddChannelMessage(GF_PreviousMessage[arg2][2] or arg1,arg2,arg8,arg9) else GF_AddChatMessage(GF_PreviousMessage[arg2][2] or arg1,arg2,strsub(event,10)) end
				GF_PreviousMessage[arg2] = {}
			end
			--print(GetTime()-origTime)
		end
		if GF_PreviousMessage[arg2] and GF_PreviousMessage[arg2][1]	then
			if GF_PreviousMessage[arg2][3] then old_ChatFrame_OnEvent(event) end
			if GF_PreviousMessage[arg2][2] then arg1 = GF_PreviousMessage[arg2][2] end
			old_ChatFrame_OnEvent(event) -- Changed
		end
	end
	local old_SendChatMessage = SendChatMessage
	function SendChatMessage(arg1,arg2,arg3,arg4) -- arg1(message), arg2(chatType(WHISPER/GUILD/CHANNEL/SAY/PARTYETC)), arg3(language), arg4(targetname(or channelname)))
		old_SendChatMessage(arg1,arg2,arg3,arg4)
	end
	local old_AddIgnore = AddIgnore
	function AddIgnore(name)
		if not GF_BlackList[GF_RealmName][name] then
			table.insert(GF_BlackList[GF_RealmName], 1, { name, GF_DEFAULT_PLAYER_NOTE })
			GF_BlackList[GF_RealmName][name] = true
			GF_UpdateBlackListItems()
		end
		DEFAULT_CHAT_FRAME:AddMessage(name..GF_NOW_BEING_IGNORED,1,1,0.5)
		--old_AddIgnore(name)
	end
	local old_SendWho = SendWho
	function SendWho(name)
-- GF_SendWhoIfNameInQueue will always delete the tables unless /who returns "failed"... That way if another addon is intercepting /who, it won't get stuck in a loop
-- displayWhoMessageName[whoname] = {playername,time()}... Set only by groupfinder when doing a manual /who... deleted when /who is successful
-- GF_UrgentWhoRequest[1] = name, GF_UrgentWhoRequest[name] = true... Set in SendWho(if name in displayWhoMessageName and /who is on cooldown).. GF_UrgentWhoRequest[1] is deleted if SendWho is successful, GF_UrgentWhoRequest[name] is deleted on GF_WhoListUpdated
-- GF_WhoQueue[1] = name, GF_WhoQueue[name] = true... Set in GF_AddNameToWhoQueue or if strfind(name,"^n\-\"?(%a+)\"?$") or strfind(name,"^(%a+)$").. GF_WhoQueue[1] is deleted if SendWho is successful, GF_WhoQueue[name] is deleted on GF_WhoListUpdated
		if GF_NextAvailableWhoTime < time() then
			GF_NextAvailableWhoTime = time() + GF_WhoCooldownTime
			if displayWhoMessageName[name] and displayWhoMessageName[name][2] + 900 > time() then DEFAULT_CHAT_FRAME:AddMessage(GF_SENDING_WHO_FOR..displayWhoMessageName[name][1],1,1,0.5) end
			displayWhoMessageName[name] = nil
			_,_,triedToWhoName = strfind(name,"^n%-\"?(%a+)\"?$") if not triedToWhoName then _,_,triedToWhoName = strfind(name,"^(%a+)$") end if triedToWhoName == UnitName("player") then triedToWhoName = nil end
			GF_UpdateTicker = GetTime() + 1
			return old_SendWho(name)
		elseif displayWhoMessageName[name] then -- /who is on cooldown.. check if name in displayWhoMessageName... if so, add to GF_UrgentWhoRequest queue
			for i=1, getn(GF_UrgentWhoRequest) do if GF_UrgentWhoRequest[i] == displayWhoMessageName[name][1] then table.remove(GF_UrgentWhoRequest, i) break end end
			DEFAULT_CHAT_FRAME:AddMessage(GF_SENDING_WHO_FOR..displayWhoMessageName[name][1].." - "..ceil(GF_NextAvailableWhoTime - time() + getn(GF_UrgentWhoRequest) * GF_WhoCooldownTime)..GF_SECONDS,1,1,0.5)
			table.insert(GF_UrgentWhoRequest,displayWhoMessageName[name][1])
			GF_UrgentWhoRequest[displayWhoMessageName[name][1]] = true
		elseif strfind(name,"^n%-\"?(%a+)\"?$") or strfind(name,"^(%a+)$") then -- /who is on cooldown, name is a player, but name is not in displayWhoMessageName... add to GF_WhoQueue(this should only ever be called by another addon)
			_,_,name = strfind(name,"^n%-\"?(%a+)\"?$") if not name then _,_,name = strfind(name,"^(%a+)$") end
			if name then
				for i=1, getn(GF_UrgentWhoRequest) do if GF_UrgentWhoRequest[i] == name then table.remove(GF_UrgentWhoRequest, i) break end end
				DEFAULT_CHAT_FRAME:AddMessage(GF_SENDING_WHO_FOR..name.." - "..ceil(GF_NextAvailableWhoTime - time() + getn(GF_UrgentWhoRequest) * GF_WhoCooldownTime)..GF_SECONDS,1,1,0.5)
				table.insert(GF_UrgentWhoRequest,1,name)
				GF_UrgentWhoRequest[name] = time()
				displayWhoMessageName["n-"..name] = {name,time()}
			end
		else
			DEFAULT_CHAT_FRAME:AddMessage(GF_WHO_ON_COOLDOWN..ceil(GF_NextAvailableWhoTime - time() + getn(GF_UrgentWhoRequest) * GF_WhoCooldownTime)..GF_SECONDS,1,1,0.5)
		end
		return "failed"
	end
	local old_FriendsFrame_OnEvent = FriendsFrame_OnEvent
	function FriendsFrame_OnEvent(...) -- Changed
		if event == "FRIENDLIST_UPDATE" then
			for i=1,GetNumFriends() do if GF_SavedVariables.friendsToRemove[GetFriendInfo(i)] then GF_OnUpdateFunctions["UpdateFriends"] = GF_UpdateFriendsList GF_UpdateTicker = GetTime() + .1 return end end
			old_FriendsFrame_OnEvent(event)
		elseif event ~= "WHO_LIST_UPDATE" or not GF_BlockNextWho or WhoFrame:IsVisible() then
			old_FriendsFrame_OnEvent(event)
			GF_BlockNextWho = nil
			if event == "WHO_LIST_UPDATE" then SetWhoToUI(0) end
		end
	end
	local old_SetItemRef = SetItemRef
	function SetItemRef(link,text,button)
		if not GF_HandleItemRefLinks(link,text,button) then old_SetItemRef(link,text,button) end
	end
	local old_ContainerFrameItemButton_OnClick = ContainerFrameItemButton_OnClick
	function ContainerFrameItemButton_OnClick(button,ignoreModifiers) -- Changed to ContainerFrameItemButton_OnClick(self,button)... Removed GF_LFGDescriptionEditBoxHasFocus
		if button == "LeftButton" and IsShiftKeyDown() and GF_LFGDescriptionEditBoxHasFocus[1] and GetContainerItemInfo(this:GetParent():GetID(),this:GetID()) then
			GF_LFGDescriptionEditBox:Insert(GetContainerItemLink(this:GetParent():GetID(),this:GetID()))
			return true
		end
		old_ContainerFrameItemButton_OnClick(button,ignoreModifiers)
	end
	local old_QuestLogTitleButton_OnClick = QuestLogTitleButton_OnClick
	function QuestLogTitleButton_OnClick(button,self) -- Changed to QuestLogTitleButton_OnClick(self,button)
		if GF_SavedVariables.questmod and not IsAddOnLoaded("pfQuest") and not IsAddOnLoaded("Questie") and (ChatFrameEditBox:IsVisible() or GF_LFGDescriptionEditBoxHasFocus[1]) and button == "LeftButton" and IsShiftKeyDown() then
			local qtable = GF_GetQuestInfo(GetQuestLogTitle(this:GetID() + FauxScrollFrame_GetOffset(EQL3_QuestLogListScrollFrame or ShaguQuest_QuestLogListScrollFrame or QuestLogListScrollFrame)),nil)
			if qtable[2] then
				if GF_LFGDescriptionEditBoxHasFocus[1] then
					GF_LFGDescriptionEditBox:Insert(GF_GetDifficultyColor(qtable[2]).."|Hquest:"..qtable[1]..":"..qtable[2].."|h["..GetQuestLogTitle(this:GetID() + FauxScrollFrame_GetOffset(EQL3_QuestLogListScrollFrame or ShaguQuest_QuestLogListScrollFrame or QuestLogListScrollFrame)).."]|h|r")
				else
					ChatFrameEditBox:Insert(GF_GetDifficultyColor(qtable[2]).."|Hquest:"..qtable[1]..":"..qtable[2].."|h["..GetQuestLogTitle(this:GetID() + FauxScrollFrame_GetOffset(EQL3_QuestLogListScrollFrame or ShaguQuest_QuestLogListScrollFrame or QuestLogListScrollFrame)).."]|h|r")
				end
				return true
			end
		end
		old_QuestLogTitleButton_OnClick(button,self)
	end
	local old_JoinChannelByName = JoinChannelByName
	function JoinChannelByName(channel,a2,a3,a4) -- Changed to JoinPermanentChannel
		old_JoinChannelByName(channel,a2,a3,a4)
		GF_PerCharVariables.blockedchannels[strlower(channel)] = nil
		GF_ChatJoinedChannels = {}
	end
	local old_LeaveChannelByName = LeaveChannelByName
	function LeaveChannelByName(channel)
		old_LeaveChannelByName(channel)
		if strlower(channel) == strlower(GF_SavedVariables.groupchannelname) then GF_SavedVariables.joinworld = false GF_AutoJoinGroupChannelCheckButton:SetChecked(false) end
		GF_ChatJoinedChannels = {}
	end
	local old_UIErrorsFrame_OnEvent = UIErrorsFrame_OnEvent
	function UIErrorsFrame_OnEvent(event,message,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9) -- Changed to UIErrorsFrame_OnEvent(self,event,...)
		if not GF_SavedVariables.systemfilter or not GF_Error_Messages[message] then old_UIErrorsFrame_OnEvent(event,message,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9) end
	end
	if LFTFrame and LFTRoleCheckFrameRole1CheckButton and LFTRoleCheckFrameConfirmButton then
		local old_LFTFrame_OnEvent = LFTFrame_OnEvent
		function LFTFrame_OnEvent()
			old_LFTFrame_OnEvent()
			if event == "CHAT_MSG_ADDON" and arg1 == LFT_ADDON_PREFIX then
				if strfind(arg2, "S2C_ROLECHECK_START") then
					if GF_PerCharVariables.lfgtank or GF_PerCharVariables.lfgheal or GF_PerCharVariables.lfgdps then
						if GF_PerCharVariables.lfgdps then if not LFTRoleCheckFrameRole3CheckButton:GetChecked() then LFTRoleCheckFrameRole3CheckButton:Click() end else if LFTRoleCheckFrameRole3CheckButton:GetChecked() then LFTRoleCheckFrameRole3CheckButton:Click() end end
						if GF_PerCharVariables.lfgheal then if not LFTRoleCheckFrameRole2CheckButton:GetChecked() then LFTRoleCheckFrameRole2CheckButton:Click() end else if LFTRoleCheckFrameRole2CheckButton:GetChecked() then LFTRoleCheckFrameRole2CheckButton:Click() end end
						if GF_PerCharVariables.lfgtank then if not LFTRoleCheckFrameRole1CheckButton:GetChecked() then LFTRoleCheckFrameRole1CheckButton:Click() end else if LFTRoleCheckFrameRole1CheckButton:GetChecked() then LFTRoleCheckFrameRole1CheckButton:Click() end end
						LFTRoleCheckFrameConfirmButton:Click()
						DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_AUTO_QUEUE_IN_LFT,1,1,0.5)
					end
				elseif strfind(arg2, "S2C_QUEUE_JOINED") or strfind(arg2, "S2C_QUEUE_LEFT") then
					GF_UpdateQueueLFTButton()
				elseif strfind(arg2, "S2C_OFFER_NEW") then
					if GF_SavedVariables.mainframestatus == 0 and GF_MainFrame:IsVisible() then GF_ToggleMainFrame() end
				end
			end
		end
	end
end
function GF_HandleItemRefLinks(link,text,button)
	if strsub(link,1,6) == "player" then
		local _,_,name = string.find(link,"(%a+)",8)
		if name and strlen(name) > 0 then 
			if button == "LeftButton" then
				if GF_SavedVariables.clickcombos and IsControlKeyDown() then
					for i=1, GetNumRaidMembers() do
						if UnitName("raid"..i) == name then
							TargetUnit("raid"..i)
							return true
						end
					end
					for i=1, GetNumPartyMembers() do
						if UnitName("party"..i) == name then
							TargetUnit("party"..i)
							return true
						end
					end
					TargetByName(name,1)
					return true
				elseif IsShiftKeyDown() then
					if GF_LFGDescriptionEditBoxHasFocus[1] then
						if GF_WhoTable[GF_RealmName][name] then 
							GF_LFGDescriptionEditBox:Insert("|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]] or "ffffff").."|Hplayer:"..name.."|h["..name.."]|h|r")
						else
							GF_LFGDescriptionEditBox:Insert(name)
						end
						return true
					elseif ChatFrameEditBox:IsVisible() then
						if strfind(this:GetName(),"GF_NewItem") then
							ChatFrameEditBox:Insert(text)
						elseif GF_WhoTable[GF_RealmName][name] then 
							ChatFrameEditBox:Insert("|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]] or "ffffff").."|Hplayer:"..name.."|h["..name.."]|h|r")
						else
							ChatFrameEditBox:Insert(name)
						end
						return true
					elseif strfind(this:GetName(),"GF_NewItem") then
						displayWhoMessageName["n-"..name] = {name,time()}
						SendWho("n-"..name)
						return true
					end
					displayWhoMessageName["n-"..name] = {name,time()}
				end
			elseif GF_SavedVariables.clickcombos and button == "RightButton" and IsAltKeyDown() then
				InviteByName(name)
				return true
			end
		end
	elseif strsub(link, 1, 3) == "url" and GF_MainFrame:IsVisible() then
		if strlen(link) > 4 and strsub(link,1,4) == "url:" then
			GF_UrlCopyFrame:Show()
			GF_UrlCopyFrameEditBox:SetText(strsub(link,5,strlen(link)))
			GF_UrlCopyFrameEditBox:HighlightText()
			return true
		end
	elseif strsub(link, 1, 5) == "quest" then
		if IsShiftKeyDown() then
			if GF_LFGDescriptionEditBoxHasFocus[1] then GF_LFGDescriptionEditBox:Insert(text) return true end
		elseif GF_SavedVariables.questmod and not IsAddOnLoaded("pfQuest") and not IsAddOnLoaded("Questie") then
			if not ({GF_GetQuestInfo(text,true)})[1][2] then
				local _,_,questid = strfind(link,"(%d+)")
				if questid then
					questid = tonumber(questid)
					for entryname,wtable in pairs(GF_WORD_QUEST) do
						if wtable[1] == questid then
							if entryname == ({GF_GetQuestInfo(text)})[1][1] then
								DEFAULT_CHAT_FRAME:AddMessage("GF: "..text..GF_IS_LEVEL..GF_WORD_QUEST[entryname][2].."("..GF_QUEST_ZONE_ID[GF_WORD_QUEST[entryname][3]].."}",1,1,0.5)
							else
								DEFAULT_CHAT_FRAME:AddMessage("GF: "..text.."("..entryname..")"..GF_IS_LEVEL..GF_WORD_QUEST[entryname][2].."("..GF_QUEST_ZONE_ID[GF_WORD_QUEST[entryname][3]].."}",1,1,0.5)
							end
							return true
						end
					end
				end
			else
				return true
			end
		end
	elseif strsub(link,1,4) == "item" then
		if IsShiftKeyDown() then
			if GF_LFGDescriptionEditBoxHasFocus[1] then GF_LFGDescriptionEditBox:Insert(text) return true end
		end
	elseif strsub(link,1,4) == "gfgh" then
		local _,_,name,entry = string.find(strsub(link,6),"(.*):(%d+)")
		if name then 
			if button == "RightButton" then
				GF_ToggleGroupHistoryLogDropDownMenu(this,name,entry,button)
			else
				GroupHistoryLogTable = GF_GroupHistory[GF_RealmName][name][tonumber(entry)]
				GF_ShowGroupLogEntryFrame.offset = 0
				GF_ShowGroupLogEntryFrame:Hide()
				GF_ShowGroupLogEntryFrame:Show()
			end
			return true
		end
	elseif strsub(link,1,4) == "gfcg" then
		if strsub(link,6) == GF_CurrentZone then GroupHistoryLogTable = GF_PerCharVariables.CurrentGroup["TempData"] else GroupHistoryLogTable = GF_PerCharVariables.CurrentGroup[strsub(link,6)] end
		GF_ShowGroupLogEntryFrame.offset = 0
		FauxScrollFrame_SetOffset(GF_GroupHistoryLogScrollFrame,0)
		GF_ShowGroupLogEntryFrame:Hide()
		GF_ShowGroupLogEntryFrame:Show()
		return true
	end
end
function GF_GetQuestInfo(text,printinfo) -- TODO: Add full quest name with questid so I can do questname replace without having to search through every quest
	local stringA = table.concat(GetModifiedQuestName(gsub(gsub(text,"|c%x+|+(%w+)[%d:]+|+h%[",""),"%]|+h|+r","")))
	if GF_WORD_QUEST[stringA] then
		if printinfo and GF_QUEST_ZONE_ID[GF_WORD_QUEST[stringA][3]] then
			if GF_QUEST_ZONE_ID[GF_WORD_QUEST[stringA][4]] and GF_WORD_QUEST[stringA][3] ~= GF_WORD_QUEST[stringA][4] then
				DEFAULT_CHAT_FRAME:AddMessage("GF: "..text..GF_IS_LEVEL..GF_WORD_QUEST[stringA][2].."("..GF_QUEST_ZONE_ID[GF_WORD_QUEST[stringA][3]].."), Objective("..GF_QUEST_ZONE_ID[GF_WORD_QUEST[stringA][4]]..")",1,1,0.5)
			else
				DEFAULT_CHAT_FRAME:AddMessage("GF: "..text..GF_IS_LEVEL..GF_WORD_QUEST[stringA][2].."("..GF_QUEST_ZONE_ID[GF_WORD_QUEST[stringA][3]]..")",1,1,0.5)
			end
		end
		return GF_WORD_QUEST[stringA]
	end
	return {stringA}
end
function GF_SlashHandler(msg)
	if strlower(msg) == "reset" then
		GF_MainFrame:ClearAllPoints()
		GF_MainFrame:SetPoint("CENTER", UIParent, "CENTER",0,0)
		GF_SavedVariables.MainFrameXPos = nil
		GF_SavedVariables.MainFrameYPos = nil
		GF_GroupsFrame:Show()
		GF_LogFrame:Hide()
		GF_BlackListFrame:Hide()
		GF_SettingsFrame:Hide()
		GF_SavedVariables.mainframestatus = 0
		GF_SavedVariables.mainframelogisopen = false
		GF_SavedVariables.mainframewidth = false
		GF_SavedVariables.mainframeheight = false
		GF_SavedVariables.mainframeishidden = false
		GF_MainFrame:Show()
		for i=2, 22 do
			getglobal("GF_NewItem"..i):SetPoint("TOP", "GF_NewItem"..(i-1), "BOTTOM", 0, 0)
		end
		GF_UpdateMainFrame()
	elseif strlower(msg) == "toggle" then
		GF_ToggleMainFrame()
	elseif strlen(msg) > 5 and strsub(strlower(msg),1,4) == "test" then
		msg = strsub(msg,6)
		dontCheckSpam = nil GF_FilterMessageType(msg,"R","","SAY",true)
		--local origTime = GetTime()
		--for i=1, 1000 do GF_GetTypes(msg,"R") end -- New is 210 ms minimum for 1000 iterations... Old is 220 ms or so for 1000 iterations... So a very small performance increase... New new is 182 ms.
-- It's pretty impressive how it can even be .2 ms per GetType. Even a long string with translation is only about 1.3 ms... The translation alone is about .3 ms... So more like 1 ms for gettype on a long message... New is down to 1.27 ms for translation
-- "Navigators!Equipa Tuga que valoriza trabalho em equipa, respeito e diversão! encontrarás uma comunidade Portuguesa organizada! Procuramos malta para completar o nosso Core! Recrutamos Druidas, Warlocks, Mages, Warriors, Priests e Hunters"
		--print(GetTime()-origTime)
	else
		DEFAULT_CHAT_FRAME:AddMessage("'/gf reset' to reset screen position",1,1,0.5)
		DEFAULT_CHAT_FRAME:AddMessage("'/gf toggle' to toggle the frame",1,1,0.5)
	end
end
function GF_ShowTooltip()
	if GF_GenTooltips[this:GetName()] then
		GameTooltip:SetOwner(getglobal(this:GetName()), "ANCHOR_TOP")
		GameTooltip:ClearLines()
		GameTooltip:ClearAllPoints()
		GameTooltip:SetPoint("TOPLEFT", this:GetName(), "BOTTOMLEFT", 0, -2)
		GameTooltip:AddLine(GF_GenTooltips[this:GetName()].tooltip1)
		GameTooltip:AddLine(GF_GenTooltips[this:GetName()].tooltip2,1,1,1,1)
		GameTooltip:Show()
	end
end
function GF_ToggleMainFrame(tab)
	if not tab and GF_MainFrameShowBoth then tab = 3 GF_MainFrameShowBoth = nil end
	if GF_SavedVariables.mainframestatus == 0 then if GF_SavedVariables.mainframelogisopen then GF_GroupsFrame:Hide() else GF_LogFrame:Hide() end GF_MainFrameShowBoth = nil end
	PlaySound("igCharacterInfoTab")
	if GF_MainFrame:IsVisible() and tab ~= 3 and tab ~= 4 and (not tab or (tab == 2 and GF_SavedVariables.mainframelogisopen) or (tab == 1 and not GF_SavedVariables.mainframelogisopen)) then
		GF_MainFrame:Hide()
		GF_MainFrameShowBoth = nil
	else
		if tab == 1 then -- GroupsFrame
			GF_GroupsFrame:Show()
			if not GF_MainFrameShowBoth then GF_LogFrame:Hide() else GF_LogFrame:Show() end
			GF_BlackListFrame:Hide()
			GF_SettingsFrame:Hide()
			GF_SavedVariables.mainframelogisopen = false
		elseif tab == 2 then -- LogsFrame
			if not GF_MainFrameShowBoth then GF_GroupsFrame:Hide() else GF_GroupsFrame:Show() end
			GF_LogFrame:Show()
			GF_BlackListFrame:Hide()
			GF_SettingsFrame:Hide()
			GF_SavedVariables.mainframelogisopen = true
		elseif tab == 3 then
			if GF_SavedVariables.mainframelogisopen then
				if not GF_MainFrameShowBoth then GF_GroupsFrame:Hide() else GF_GroupsFrame:Show() end
				GF_LogFrame:Show()
				GF_BlackListFrame:Hide()
				GF_SettingsFrame:Hide()
			else
				GF_GroupsFrame:Show()
				if not GF_MainFrameShowBoth then GF_LogFrame:Hide() else GF_LogFrame:Show() end
				GF_BlackListFrame:Hide()
				GF_SettingsFrame:Hide()
			end
		elseif tab == 4 then
			GF_GroupsFrame:Show()
			GF_LogFrame:Show()
			GF_BlackListFrame:Hide()
			GF_SettingsFrame:Hide()
		elseif tab == 5 then
			if GF_SavedVariables.mainframelogisopen then GF_GroupsFrame:Hide() GF_LogFrame:Show() else GF_GroupsFrame:Show() GF_LogFrame:Hide() end
			GF_BlackListFrame:Hide()
			GF_SettingsFrame:Hide()
		end
		GF_MainFrame:Show()
		GF_SavedVariables.mainframeishidden = false
		if IsAddOnLoaded("pfUI") and pfUI.chat and pfUI.chat.urlcopy then pfUI.chat.urlcopy:SetWidth(700) pfUI.chat.urlcopy.text:SetWidth(680) end
	end
	GF_LFGGetWhoUpdateOffset()
	GF_UpdateMainFrameHeight()
	GF_UpdateMainFrameWidth()
	GF_UpdateMainFramePosition()
	GF_UpdateMainFrame()
	GF_UpdateResults()
end
function GF_UpdateMainFrameHeight()
	if GF_SavedVariables.mainframestatus ~= 0 then
		if GF_SavedVariables.mainframelogisopen then
			if GF_SavedVariables.mainframeheight then
				GF_LogFrameInternalFrame:SetHeight(250)
			else
				GF_LogFrameInternalFrame:SetHeight(400)
			end
		else
			if GF_SavedVariables.mainframeheight then
				GF_ResultsListOffsetSize = 12
			else
				GF_ResultsListOffsetSize = 20
			end
			GF_LogFrameInternalFrame:SetHeight(440)
		end
	else
		GF_LogFrameInternalFrame:SetHeight(440)
	end
end
function GF_UpdateMainFrameWidth()
	if GF_SavedVariables.mainframestatus ~= 0 and GF_SavedVariables.mainframewidth then
		if not GF_SavedVariables.mainframelogisopen then
			for i=1,GF_ResultsBaseListOffsetSize do getglobal("GF_NewItem"..i):SetWidth(320) end
			if GF_SavedVariables.showwhisperlogs then GF_LogFrameInternalFrame:SetWidth(568) GF_WhisperHistoryButtonLog:Show() else GF_LogFrameInternalFrame:SetWidth(669) GF_WhisperHistoryButtonLog:Hide() end
		else
			for i=1,GF_ResultsBaseListOffsetSize do getglobal("GF_NewItem"..i):SetWidth(635) end
			GF_LogFrameInternalFrame:SetWidth(350) GF_WhisperHistoryButtonLog:Hide()
		end
	else
		for i=1,GF_ResultsBaseListOffsetSize do getglobal("GF_NewItem"..i):SetWidth(635) end
		if GF_SavedVariables.showwhisperlogs and (GF_SavedVariables.mainframestatus == 0 or not GF_SavedVariables.mainframelogisopen) then
			GF_LogFrameInternalFrame:SetWidth(568)
			GF_WhisperHistoryButtonLog:Show()
		else
			GF_LogFrameInternalFrame:SetWidth(669)
			GF_WhisperHistoryButtonLog:Hide()
		end
	end
	if GF_SavedVariables.showwhisperlogs == 1 then GF_WhisperLogButton:LockHighlight() GF_GroupLogButton:UnlockHighlight() elseif GF_SavedVariables.showwhisperlogs == 2 then GF_GroupLogButton:LockHighlight() GF_WhisperLogButton:UnlockHighlight() else GF_GroupLogButton:UnlockHighlight() GF_WhisperLogButton:UnlockHighlight() end
end
function GF_UpdateMainFramePosition()
	GF_NewItem1:ClearAllPoints()
	GF_HideMainFrameLeft:ClearAllPoints()
	GF_LogFrameInternalFrame:ClearAllPoints()
	if GF_SavedVariables.mainframestatus == 0 then
		GF_LogFrameInternalFrame:SetParent(GF_LogFrame) GF_NewItem1:SetParent(GF_GroupsFrame_Results)
		GF_NewItem1:SetPoint("TOPLEFT",GF_GroupsFrame,"TOPLEFT", 0, 0)
		GF_LogFrameInternalFrame:SetPoint("TOPLEFT",GF_LogFrame,"TOPLEFT", 29, -64)
		GF_HideMainFrameLeft:SetPoint("TOPLEFT",GF_MainFrame,"TOPLEFT", 6, -64)
		GF_LogFrameInternalFrame:EnableDrawLayer("BACKGROUND")
	elseif GF_SavedVariables.mainframestatus == 1 then
		if GF_SavedVariables.mainframelogisopen then GF_LogFrameInternalFrame:SetParent(UIParent) GF_NewItem1:SetParent(GF_GroupsFrame_Results) GF_LogFrameInternalFrame:SetPoint("TOPLEFT",UIParent,"BOTTOMLEFT", 16, GF_GroupsFrame:GetTop()*(GF_SavedVariables.MainFrameUIScale/10)) GF_NewItem1:SetPoint("TOPLEFT",GF_GroupsFrame,"TOPLEFT", 0, 0) GF_LogFrameInternalFrame:DisableDrawLayer("BACKGROUND")
		else GF_LogFrameInternalFrame:SetParent(GF_LogFrame) GF_NewItem1:SetParent(UIParent) GF_NewItem1:SetPoint("TOPLEFT",UIParent,"BOTTOMLEFT", 50, GF_GroupsFrame:GetTop()*(GF_SavedVariables.MainFrameUIScale/10)) GF_LogFrameInternalFrame:SetPoint("TOPLEFT",GF_LogFrame,"TOPLEFT", 29, -64) end
		GF_HideMainFrameLeft:SetPoint("TOPLEFT",UIParent,"BOTTOMLEFT", 0, GF_GroupsFrame:GetTop()*(GF_SavedVariables.MainFrameUIScale/10))
	elseif GF_SavedVariables.mainframestatus == 2 then
		if GF_SavedVariables.mainframelogisopen then GF_LogFrameInternalFrame:SetParent(UIParent) GF_NewItem1:SetParent(GF_GroupsFrame_Results) GF_LogFrameInternalFrame:SetPoint("TOPRIGHT",UIParent,"BOTTOMRIGHT", -5, GF_GroupsFrame:GetTop()*(GF_SavedVariables.MainFrameUIScale/10))  GF_NewItem1:SetPoint("TOPLEFT",GF_GroupsFrame,"TOPLEFT", 0, 0) GF_LogFrameInternalFrame:DisableDrawLayer("BACKGROUND")
		else GF_LogFrameInternalFrame:SetParent(GF_LogFrame) GF_NewItem1:SetParent(UIParent) GF_NewItem1:SetPoint("TOPRIGHT",UIParent,"BOTTOMRIGHT", 70, GF_GroupsFrame:GetTop()*(GF_SavedVariables.MainFrameUIScale/10)) GF_LogFrameInternalFrame:SetPoint("TOPLEFT",GF_LogFrame,"TOPLEFT", 29, -64) end
		GF_HideMainFrameLeft:SetPoint("TOPRIGHT",UIParent,"BOTTOMRIGHT", 5, GF_GroupsFrame:GetTop()*(GF_SavedVariables.MainFrameUIScale/10))
	end
	for i=2, 22 do
		getglobal("GF_NewItem"..i):SetParent(GF_NewItem1:GetParent())
		getglobal("GF_NewItem"..i):SetPoint("TOP", "GF_NewItem"..(i-1), "BOTTOM", 0, 0)
	end
end
function GF_UpdateMainFrame()
	if GF_SavedVariables.mainframestatus ~= 0 then
		GF_HideMainFrameLeft:SetParent(UIParent)
		GF_HideMainFrameRight:SetParent(UIParent)
		GF_HideMainFrameHeight:SetParent(UIParent)
		GF_HideMainFrameWidth:SetParent(UIParent)
		GF_HideMainFrameToggleBoth:SetParent(UIParent)
		if not GF_MainFrameShowBoth then
			for i=1, getn(ThingsToHide) do
				getglobal(ThingsToHide[i]):Hide()
			end
			GF_MainFrame:SetAlpha(0)
			GF_MainFrame:SetFrameStrata("BACKGROUND")
			GF_MainFrame:EnableMouse(false)
			GF_MainFrame:IsMovable(false)
		else
			if not GF_SavedVariables.mainframelogisopen then
				for i=1,10 do
					getglobal(ThingsToHide[i]):Show()
				end
				for i=11, 13 do
					getglobal(ThingsToHide[i]):Hide()
				end
			else
				for i=1,8 do
					getglobal(ThingsToHide[i]):Hide()
				end
				for i=11,13 do
					getglobal(ThingsToHide[i]):Show()
				end
			end
			GF_MainFrame:SetAlpha(GF_SavedVariables.MainFrameTransparency)
			GF_MainFrame:SetFrameStrata("MEDIUM")
			GF_MainFrame:EnableMouse(true)
			GF_MainFrame:IsMovable(true)
			if GF_TranslationLoaded then GF_TranslateDropdownButton:Show() else GF_TranslateDropdownButton:Hide() end
		end

		GF_HideMainFrameHeight:Show()
		GF_HideMainFrameWidth:Show()
		GF_HideMainFrameToggleBoth:Show()

		if GF_SavedVariables.mainframelogisopen then
			GF_LogFrame:SetAlpha(GF_SavedVariables.MainFrameTransparency)
			GF_LogFrameInternalFrameTitle:SetText("")
			GF_LogFrameInternalFrame:SetBackdropBorderColor(.4,.4,.4,0)
			GF_LogFrameInternalFrame:SetBackdropColor(.14,.14,.14,0)
			if GF_MainFrameShowBoth then
				GF_GroupsFrame:EnableMouse(true)
				GF_GroupsFrame_Results:EnableMouse(true)
				for i=1,GF_ResultsBaseListOffsetSize do
					getglobal("GF_NewItem"..i):EnableMouse(true)
				end
			end
		else
			if GF_MainFrameShowBoth then
				GF_LogFrameInternalFrameTitle:SetText(GF_LOG_HEADER)
				GF_LogFrameInternalFrame:SetBackdropBorderColor(.4,.4,.4,1)
				GF_LogFrameInternalFrame:SetBackdropColor(.14,.14,.14,1)
			end

			GF_GroupsFrame:EnableMouse(false)
			GF_GroupsFrame_Results:EnableMouse(false)
			for i=1,GF_ResultsBaseListOffsetSize do
				getglobal("GF_NewItem"..i):SetAlpha(GF_SavedVariables.MainFrameTransparency)
				getglobal("GF_NewItem"..i):EnableMouse(false)
			end
		end
		for id, word in pairs(UISpecialFrames) do if word == "GF_MainFrame" then UISpecialFrames[id] = nil end end
		if GF_MainFrameShowBoth then tinsert(UISpecialFrames,GF_MainFrame:GetName()) end
	else
		GF_HideMainFrameLeft:SetParent(GF_MainFrame)
		GF_HideMainFrameRight:SetParent(GF_MainFrame)
		GF_HideMainFrameHeight:SetParent(GF_MainFrame)
		GF_HideMainFrameWidth:SetParent(GF_MainFrame)
		GF_HideMainFrameToggleBoth:SetParent(GF_MainFrame)
		for i=1,17 do
			getglobal(ThingsToHide[i]):Show()
		end
		GF_MainFrame:SetAlpha(GF_SavedVariables.MainFrameTransparency)
		GF_MainFrame:SetFrameStrata("MEDIUM")
		GF_MainFrame:EnableMouse(true)
		GF_MainFrame:IsMovable(true)
		if GF_TranslationLoaded then GF_TranslateDropdownButton:Show() else GF_TranslateDropdownButton:Hide() end

		GF_HideMainFrameHeight:Hide()
		GF_HideMainFrameWidth:Hide()
		GF_HideMainFrameToggleBoth:Hide()

		GF_LogFrameInternalFrameTitle:SetText(GF_LOG_HEADER)
		GF_LogFrameInternalFrame:SetBackdropBorderColor(.4,.4,.4,1)
		GF_LogFrameInternalFrame:SetBackdropColor(.14,.14,.14,1)

		GF_GroupsFrame:EnableMouse(true)
		GF_GroupsFrame_Results:EnableMouse(true)
		for i=1,GF_ResultsBaseListOffsetSize do
			getglobal("GF_NewItem"..i):EnableMouse(true)
		end
		tinsert(UISpecialFrames,GF_MainFrame:GetName())
	end
	if (GF_SavedVariables.mainframestatus == 0 or (not GF_SavedVariables.mainframelogisopen and GF_MainFrameShowBoth)) then if GF_WhisperLogLastWhisperLog == 2 and GF_WhisperLogCurrentButtonID > 0 then GF_ConvertLogMessagesToURL:Hide() GF_SaveCurrentGroupButton:Show() GF_ResetCurrentGroupButton:Show() else GF_ConvertLogMessagesToURL:Show() GF_SaveCurrentGroupButton:Hide() GF_ResetCurrentGroupButton:Hide() end end
	GF_UpdateQueueLFTButton()
end
function GF_UpdateMinimapIcon()
	GF_MoveMinimapIcon()
	GF_MessageAnchorButton:ClearAllPoints()
	if GF_PerCharVariables.MessageXPos then
		GF_MessageAnchorButton:SetPoint(GF_PerCharVariables.MessagePoint,UIParent,GF_PerCharVariables.MessageRelativePoint,GF_PerCharVariables.MessageXPos,GF_PerCharVariables.MessageYPos)
	else
		GF_MessageAnchorButton:SetPoint("TOPRIGHT",UIParent,"TOPRIGHT",-50 - Minimap:GetWidth(),-125)
	end
end
function GF_MoveMinimapIcon()
	local angle = math.rad(GF_SavedVariables.MinimapIconPos or 225)
	local x, y, q = math.cos(angle), math.sin(angle), 1
	if x < 0 then q = q + 1 end
	if y > 0 then q = q + 2 end
	local minimapShape = GF_SavedVariables.squareminimap and "SQUARE" or GetMinimapShape and GetMinimapShape() or "ROUND"
	local quadTable = minimapShapes[minimapShape]
	if quadTable[q] then
		x, y = x*80, y*80
	else
		local diagRadius = 103.13708498985 --math.sqrt(2*(80)^2)-10
		x = math.max(-80, math.min(x*diagRadius, 80))
		y = math.max(-80, math.min(y*diagRadius, 80))
	end
	GF_MinimapIcon:SetPoint("CENTER", Minimap, "CENTER", x, y)
end
function GF_IconDraggingOnUpdate()
	local mx, my = Minimap:GetCenter()
	local px, py = GetCursorPosition()
	local scale = Minimap:GetEffectiveScale()
	px, py = px / scale, py / scale
	GF_SavedVariables.MinimapIconPos = math.mod(math.deg(math.atan2(py - my, px - mx)),360)
	GF_MoveMinimapIcon()
end
function GF_RelevelMinimapIcons(frame)
	if strataEnum[frame:GetFrameStrata()] > 4 then frame:SetFrameStrata(strataEnum[4]) end
	local children = { frame:GetChildren() }
	for _,child in pairs(children) do
		if strataEnum[child:GetFrameStrata()] > 4 then child:SetFrameStrata(strataEnum[4]) end
		GF_RelevelMinimapIcons(child)
	end
end
function GF_SetPFUIAddonButtons()
	if IsAddOnLoaded("pfUI") and pfUI.addonbuttons and pfUI_cache and pfUI_cache["abuttons"] and pfUI_cache["abuttons"]["del"] then
		if GF_SavedVariables.iconpriority then
			table.insert(pfUI_cache["abuttons"]["del"],"GF_MinimapIcon")
		else
			for i=1, getn(pfUI_cache["abuttons"]["del"]) do if pfUI_cache["abuttons"]["del"][i] == "GF_MinimapIcon" then pfUI_cache["abuttons"]["del"][i] = nil end end
		end
	end
end
function GF_LFGGetWhoUpdateOffset()
	if GF_SavedVariables.mainframelogisopen or not GF_MainFrameShowBoth then GF_MessageFrame:Show() else GF_MessageFrame:Hide() end -- If logframe then always show
	if GF_PerCharVariables.lfgshown and GF_PerCharVariables.getwhoshown then
		if GF_SavedVariables.mainframelogisopen or not GF_MainFrameShowBoth then GF_GetWhoFrame:Show() GF_LFGFrame:Show() else GF_GetWhoFrame:Hide() GF_LFGFrame:Hide() end
		GF_GetWhoFrameToggleButton:LockHighlight()
		GF_LFGFrameToggleButton:LockHighlight()

		GF_GetWhoFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, -15)
		GF_LFGFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, 10)
		GF_MessageFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, 43)

		GF_GetWhoFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Up")
		GF_LFGFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Up")
		GF_ResultsListOffsetSize = 19
	elseif GF_PerCharVariables.lfgshown then
		GF_GetWhoFrame:Hide()
		GF_GetWhoFrameToggleButton:UnlockHighlight()
		if GF_SavedVariables.mainframelogisopen or not GF_MainFrameShowBoth then GF_LFGFrame:Show() else GF_LFGFrame:Hide() end
		GF_LFGFrameToggleButton:LockHighlight()

		GF_LFGFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, -10)
		GF_MessageFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, 23)

		GF_GetWhoFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Disabled")
		GF_LFGFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Up")
		GF_ResultsListOffsetSize = 20
	elseif GF_PerCharVariables.getwhoshown then
		if GF_SavedVariables.mainframelogisopen or not GF_MainFrameShowBoth then GF_GetWhoFrame:Show() else GF_GetWhoFrame:Hide() end
		GF_GetWhoFrameToggleButton:LockHighlight()
		GF_LFGFrame:Hide()
		GF_LFGFrameToggleButton:UnlockHighlight()

		GF_GetWhoFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, -15)
		GF_MessageFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, 23)

		GF_GetWhoFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Up")
		GF_LFGFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Disabled")
		GF_ResultsListOffsetSize = 20
	else
		GF_GetWhoFrame:Hide()
		GF_GetWhoFrameToggleButton:UnlockHighlight()
		GF_LFGFrame:Hide()
		GF_LFGFrameToggleButton:UnlockHighlight()

		GF_GetWhoFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Disabled")
		GF_LFGFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Disabled")

		GF_MessageFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, -5)
		GF_ResultsListOffsetSize = 22
	end
end

function GF_AddChannelMessage(arg1,arg2,arg8,arg9,delayed) -- Message Handlers
	if GF_SavedVariables.friendsToRemove[arg2] and not delayed then table.insert(GF_LogHistory[GF_RealmName]["Delay"], {"Channel",time()+20,arg1,arg2,arg8,arg9}) return end
	arg9 = string.gsub(arg9, " - .*", "")
	arg1 = "["..arg8..". "..strupper(strsub(arg9,1,1))..strsub(arg9,2).."] "..(UnitName("player") == arg2 and "" or GF_Friends[arg2] and GF_LOGGED_FILTERED or GF_Guildies[arg2] and GF_LOGGED_GROUPS or "")..GF_MakeBasicChatString(arg1,arg2,"CHANNEL")
	local info = ChatTypeInfo["CHANNEL"..arg8]
	for i=1,NUM_CHAT_WINDOWS do
		channellist = { GetChatWindowChannels(i) }
		for j=1, getn(channellist) do
			if channellist[j] == arg9 then getglobal("ChatFrame"..i):AddMessage(arg1,info.r,info.g,info.b,info.id) break end
		end
	end
end
function GF_AddChatMessage(arg1,arg2,event,delayed)
	if arg2 ~= "SYSTEM" and GF_SavedVariables.friendsToRemove[arg2] and not delayed then table.insert(GF_LogHistory[GF_RealmName]["Delay"], {"Chat",time()+20,arg1,arg2,event}) return end
	arg1 = (EventIDAlias[event] or "["..strsub(event,1,1).."] ")..GF_MakeBasicChatString(arg1,arg2,event)
	local info = ChatTypeInfo[event]
	if event == "HARDCORE" and TW_HARDCORE_CHAT1 then
		for i=1,NUM_CHAT_WINDOWS do
			if getglobal("TW_HARDCORE_CHAT"..i) == 1 then getglobal("ChatFrame"..i):AddMessage(arg1,info.r or GF_TextColors[event][1],info.g or GF_TextColors[event][2],info.b or GF_TextColors[event][3]) end
		end
	else
		for i=1,NUM_CHAT_WINDOWS do
			channellist = { GetChatWindowMessages(i) }
			for j=1, getn(channellist) do
				if channellist[j] == event or channellist[j] == GF_ChatNameAlias[event] then getglobal("ChatFrame"..i):AddMessage(arg1,info.r,info.g,info.b,info.id) break end
			end
		end
	end
end
function GF_MakeBasicChatString(arg1,arg2,event)
	if GF_ChatBypass[event] then
		return arg1
	elseif arg2 == UnitName("player") then
		return "|cff"..(GF_ClassColors[({UnitClass("player")})[2]] or "9d9d9d").."|Hplayer:"..arg2.."|h["..arg2..", "..UnitLevel("player").."]|h|r: "..GF_ChatReplaceHplayer(arg1)
	elseif GF_WhoTable[GF_RealmName][arg2] then
		if GF_WhoTable[GF_RealmName][arg2][1] == 0 then
			return "|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "ffffff").."|Hplayer:"..arg2.."|h["..arg2.."]|h|r: "..GF_ChatReplaceItemLink(GF_ChatReplaceHquestLevels(GF_ChatReplaceHplayer(arg1)))
		else
			return "|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "ffffff").."|Hplayer:"..arg2.."|h["..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."]|h|r: "..GF_ChatReplaceItemLink(GF_ChatReplaceHquestLevels(GF_ChatReplaceHplayer(arg1)))
		end
	else
		return "|cff9d9d9d|Hplayer:"..arg2.."|h["..arg2.."]|h|r: "..GF_ChatReplaceItemLink(GF_ChatReplaceHquestLevels(GF_ChatReplaceHplayer(arg1)))
	end
end
function GF_GetJoinedChannels()
	GF_ChatJoinedChannels = {}
	local chanList = {GetChannelList()}
	for _,name in pairs({GetChannelList()}) do
		GF_ChatJoinedChannels[strlower(name)] = true
	end
	for i=1,NUM_CHAT_WINDOWS do
		for _,name in pairs({GetChatWindowChannels(i)}) do
			GF_ChatJoinedChannels[strlower(name)] = true
		end
	end
end
function GF_ChatCheckFilters(logType,arg1,arg2,event)
	if logType == 7 or logType == 11 then
		return
	elseif logType == 1 or logType == 2 then
		if GF_SavedVariables.showgroupsinchat or (logType == 2 and not GF_SavedVariables.showgroupsnewonly) then return true end
	elseif (logType == 5 and GF_SavedVariables.showchattexts) or (logType == 9 and GF_SavedVariables.showtradestexts) or (logType == 8 and GF_SavedVariables.showguilds) then
		return true
	end
end
function GF_ChatReplaceHplayer(arg1)
	local lfs,lfe,stringA
	lfs = 1
	while true do
		lfs,lfe,stringA = strfind(arg1,"|%x+|+Hplayer:(%w+)|+h%[.-%]|+h|+r",lfs)
		if stringA then
			if GF_WhoTable[GF_RealmName][stringA] and GF_WhoTable[GF_RealmName][stringA][1] > 0 then
				arg1 = strsub(arg1,1,lfs).."cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][stringA][2]] or "ffffff").."|Hplayer:"..stringA.."|h["..stringA..", "..GF_WhoTable[GF_RealmName][stringA][1].."]|h|"..strsub(arg1,lfe)
			end
			lfs = lfe + 1
		else
			break
		end
	end
	return arg1
end
function GF_ChatReplaceHquestLevels(arg1) -- TODO: Replace Quest Names once I add them to database
	local lfs,lfe,questID,questLevel,questName
	lfs = 1
	while true do
		lfs,lfe,questID,questLevel,questName = strfind(arg1,"|%x+|+Hquest:(%d+):(%d+)|+h%[(.-)%]|+h|+r",lfs)
		if lfs then
			if questLevel == "0" then questLevel = ({GF_GetQuestInfo(questName)})[1][2] or 0 end
			arg1 = strsub(arg1,1,lfs-1)..(GF_GetDifficultyColor(tonumber(questLevel)) or "|cffffffff").."|Hquest:"..questID..":"..questLevel.."|h["..questName.."]|h|"..strsub(arg1,lfe)
			lfs = lfe + 1
		else
			break
		end
	end
	return arg1
end
function GF_ChatReplaceItemLink(arg1,checkOnly)
	local lfs,lfe,itemName,itemLink,preFix,broken
	lfs = 1
	while true do
		lfs,lfe,preFix,itemLink = strfind(arg1,"|(%x+|H(item:[%d+:]+)|h%[).-%]|h|r",lfs)
		if itemLink then
			itemName = GetItemInfo(itemLink)
			if checkOnly then if not itemName then broken = true ItemRefTooltip:SetOwner(UIParent, "ANCHOR_PRESERVE") ItemRefTooltip:SetHyperlink(itemLink) ItemRefTooltip:Hide() end
			elseif itemName then arg1 = strsub(arg1,1,lfs)..preFix..itemName..strsub(arg1,lfe-4) end
			lfs = lfe + 1
		else
			break
		end
	end
	if broken then return else return arg1 end
end
function GF_CleanUpMessagesOfBadLinks(arg1) -- Replaces CLINK messages with normal links
	if strfind(arg1,"CLINK") then
		arg1 = gsub(arg1, "{CLINK:item:(%x+):([%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-):([^}]-)}", "|c%1|Hitem:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:(%x+):([%d-]-:[%d-]-:[%d-]-:[%d-]-):([^}]-)}", "|c%1|Hitem:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:enchant:(%x+):([%d-]-):([^}]-)}", "|c%1|Henchant:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:spell:(%x+):([%d-]-):([^}]-)}", "|c%1|Hspell:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:quest:(%x+):([%d-]-):([%d-]-):([^}]-)}", "|c%1|Hquest:%2:%3|h[%4]|h|r")
	end
	return arg1
end
function GF_ShowGroupsOnMinimap(arg1,arg2,delayed)
	if GF_SavedVariables.friendsToRemove[arg2] and not delayed then table.insert(GF_LogHistory[GF_RealmName]["Delay"], {"Minimap",time()+20,arg1,arg2}) return end
	for name,mmtable in pairs(GF_MiniMapMessages[7]) do if mmtable[1] <= GetTime() then GF_MiniMapMessages[7][name] = nil end end
	if GF_MiniMapMessages[1] > GetTime() and GF_MiniMapMessages[2] > GetTime() and GF_MiniMapMessages[3] > GetTime() and GF_MiniMapMessages[4] > GetTime() and GF_MiniMapMessages[5] > GetTime() and GF_MiniMapMessages[6] > GetTime() then
		local lowest = { GetTime()+20, 0 }
		for i=1,6 do
			if GF_MiniMapMessages[i] < lowest[1] then lowest[1] = GF_MiniMapMessages[i] lowest[2] = i end
		end
		GF_MiniMapMessages[lowest[2]] = 0
	end
	for i=1,6 do
		if GF_MiniMapMessages[i] <= GetTime() then
			if GF_MiniMapMessages[7][arg2] and GF_MiniMapMessages[7][arg2][1] > GetTime() then i = GF_MiniMapMessages[7][arg2][2] end
			if GF_WhoTable[GF_RealmName][arg2] then
				if GF_WhoTable[GF_RealmName][arg2][1] == 0 then
					getglobal("GF_MinimapMessageFrameA"..i):AddMessage("|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "ffffff").."|Hplayer:"..arg2.."|h "..arg2..", "..GF_WhoTable[GF_RealmName][arg2][2].."|h|r", 1, 1, 1)
				else
					getglobal("GF_MinimapMessageFrameA"..i):AddMessage("|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "ffffff").."|Hplayer:"..arg2.."|h "..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].." "..GF_WhoTable[GF_RealmName][arg2][2].."|h|r", 1, 1, 1)
				end
			else
				getglobal("GF_MinimapMessageFrameA"..i):AddMessage("|Hplayer:"..arg2.."|h "..arg2.."|h",1,1,1)
			end
			getglobal("GF_MinimapMessageFrameB"..i):AddMessage(strsub(gsub(arg1, "|c.*|Hquest:[%d]+:[-]?[%d]+|h%[(.*)%]|h|r", "\[%1\]"),1,105), 187/255, 255/255, 187/255)
			GF_MiniMapMessages[i] = GetTime() + 20
			GF_MiniMapMessages[7][arg2] = { GetTime()+20, i }
			return
		end
	end
end
function GF_AddLogMessage(arg1,logcode,add,arg2,arg8,arg9,event,delayed)
	if GF_SavedVariables.friendsToRemove[arg2] and not delayed then if not arg2 then arg2 = "SYSTEM" end table.insert(GF_LogHistory[GF_RealmName]["Delay"], {"Log",time()+20,arg1,logcode,add,arg2,arg8,arg9,event}) return end
	if add then
		arg1 = GF_MakeBasicChatString(strsub(gsub(gsub(gsub(gsub(" "..arg1," (www%d-)%.([_A-Za-z0-9-]+)%.(%S+)%s?", " |cffccccff|Hurl:%1.%2.%3|h[%1.%2.%3]|h|r")," (%a+)://(%S+)", " |cffccccff|Hurl:%1://%2|h[%1://%2]|h|r")," (%a+)%.(%a+)/(%S+)", " |cffccccff|Hurl:%1.%2/%3|h[%1.%2/%3]|h|r")," ([_A-Za-z0-9-]+)%.([_A-Za-z0-9-]+)%.(%S+)", " |cffccccff|Hurl:%1.%2.%3|h[%1.%2.%3]|h|r"),2),arg2,event)
		if event == "CHANNEL" then
			arg9 = string.gsub(strlower(arg9), " - .*", "")
			arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[logcode].." ".."["..arg8..". "..strupper(strsub(arg9,1,1))..strsub(arg9,2).."] "..arg1
			table.insert(GF_LogHistory[GF_RealmName],1, {arg1,logcode,event,arg9})
		else
			arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[logcode].." "..arg1
			table.insert(GF_LogHistory[GF_RealmName],1, {arg1,logcode,event})
		end
		if getn(GF_LogHistory[GF_RealmName]) > 500 then table.remove(GF_LogHistory[GF_RealmName],501) end
	end
	if GF_WhisperLogCurrentButtonID == 0 and GF_LogFilters[logcode] and GF_LogFilters[event] and not GF_PerCharVariables.blockedchannels[arg9] then
		local info = ChatTypeInfo[event]
		if GF_ConvertMessagesToLinks then
			local _,_,startString,endString = strfind(arg1, "(.-%].-|Hplayer.-|h|r:? )(.*)")
			if startString then
				endString = gsub(gsub(gsub(gsub(endString, "|[cC]%x+|%w+:%w+:[%w:]+|[h]", ""), "|[cC]%x+%p+%w+:(.-)|h.-|h|r", "%1"), "|[cC]%x+", ""), "|[hHrR]?", "")
				GF_Log:AddMessage(startString.."|cffccccff|Hurl:"..endString.."|h"..endString.."|h|r",info.r,info.g,info.b)
				return
			end
		end
		GF_Log:AddMessage(arg1,info.r,info.g,info.b)
	end
end
function GF_DisplayLog()
	if GF_SavedVariables.mainframestatus == 0 or (not GF_SavedVariables.mainframelogisopen and GF_MainFrameShowBoth) then GF_ConvertLogMessagesToURL:Show() end
	GF_SaveCurrentGroupButton:Hide()
	GF_ResetCurrentGroupButton:Hide()
 	GF_GetJoinedChannels()
	GF_Log:SetMaxLines(128)
	local tempHistoryTable = {}
	local counter = 0
	for i=1, getn(GF_LogHistory[GF_RealmName]) do
		if GF_LogFilters[GF_LogHistory[GF_RealmName][i][2]] and GF_LogFilters[GF_LogHistory[GF_RealmName][i][3]] and not GF_PerCharVariables.blockedchannels[GF_LogHistory[GF_RealmName][i][4]] and (GF_LogHistory[GF_RealmName][i][3] ~= "CHANNEL" or GF_ChatJoinedChannels[GF_LogHistory[GF_RealmName][i][4]]) then
			table.insert(tempHistoryTable,1,GF_LogHistory[GF_RealmName][i])
			counter = counter + 1
			if counter == 128 then break end
		end
	end
	if GF_ConvertMessagesToLinks then
		for i=1, getn(tempHistoryTable) do
			local _,_,startString,endString = strfind(tempHistoryTable[i][1], "(.-%].-|Hplayer.-|h|r:? )(.*)")
			local info = ChatTypeInfo[tempHistoryTable[i][3]]
			if startString then
				endString = gsub(gsub(gsub(gsub(endString, "|[cC]%x+|%w+:%w+:[%w:]+|[h]", ""), "|[cC]%x+%p+%w+:.-|h(.-)|h|r", "%1"), "|[cC]%x+", ""), "|[hHrR]?", "")
				GF_Log:AddMessage(startString.."|cffccccff|Hurl:"..endString.."|h"..endString.."|h|r",info.r,info.g,info.b)
			else
				GF_Log:AddMessage(tempHistoryTable[i][1],info.r,info.g,info.b)
			end
		end
	else
		for i=1, getn(tempHistoryTable) do
			local info = ChatTypeInfo[tempHistoryTable[i][3]]
			GF_Log:AddMessage(tempHistoryTable[i][1],info.r,info.g,info.b)
		end
	end
end
function GF_DisplayLogFirst()
	GF_OnUpdateFunctions["Log"] = nil
	GF_DisplayLog()
end
function GF_GetLogFilters()
	GF_LogFilters = { [4]=true,["LOOT"] = true,["MONEY"] = true,["COMBAT_FACTION_CHANGE"] = true,["COMBAT_XP_GAIN"] = true,["COMBAT_HONOR_GAIN"] = true, }
	if GF_SavedVariables.logshowgroup then GF_LogFilters[1] = true GF_LogFilters[2] = true end
	if GF_SavedVariables.logshowfiltered then GF_LogFilters[3] = true end
	if GF_SavedVariables.logshowchat then GF_LogFilters[5] = true end
	if GF_SavedVariables.logshowloot then GF_LogFilters[6] = true end
	if GF_SavedVariables.logshowspam then GF_LogFilters[7] = true end
	if GF_SavedVariables.logshowguilds then GF_LogFilters[8] = true end
	if GF_SavedVariables.logshowtrades then GF_LogFilters[9] = true end
	if GF_SavedVariables.logshowblacklist then GF_LogFilters[10] = true end
	if GF_SavedVariables.logshowbelowlevel then GF_LogFilters[11] = true end

	if GF_SavedVariables.logchannels then GF_LogFilters["CHANNEL"] = true end
	if GF_SavedVariables.logparty then GF_LogFilters["PARTY"] = true GF_LogFilters["RAID"] = true GF_LogFilters["RAID_LEADER"] = true GF_LogFilters["RAID_WARNING"] = true GF_LogFilters["BATTLEGROUND"] = true GF_LogFilters["BATTLEGROUND_LEADER"] = true end
	if GF_SavedVariables.logguild then GF_LogFilters["GUILD"] = true GF_LogFilters["OFFICER"] = true end
	if GF_SavedVariables.logwhisper then GF_LogFilters["WHISPER"] = true GF_LogFilters["WHISPER_INFORM"] = true end
	if GF_SavedVariables.logsay then GF_LogFilters["SAY"] = true end
	if GF_SavedVariables.logyell then GF_LogFilters["YELL"] = true end
	if GF_SavedVariables.loghardcore then GF_LogFilters["HARDCORE"] = true GF_LogFilters["SYSTEM"] = true end
end
function GF_GetGroupFilters()
	GF_GroupFilters = {} -- D/R/Q/N(dungeon/raid/quest/other), 1/2/3/4/5/6/7/8(no flags, heal/dps/tank combination flags)
	if GF_PerCharVariables.showdungeons then GF_GroupFilters["D"] = true end
	if GF_PerCharVariables.showraids then GF_GroupFilters["R"] = true end
	if GF_PerCharVariables.showquests then GF_GroupFilters["Q"] = true end
	if GF_PerCharVariables.showother then GF_GroupFilters["N"] = true end

	if not GF_PerCharVariables.showtank and not GF_PerCharVariables.showhealer and not GF_PerCharVariables.showdps then
		GF_GroupFilters[1] = true GF_GroupFilters[2] = true GF_GroupFilters[3] = true GF_GroupFilters[4] = true GF_GroupFilters[5] = true GF_GroupFilters[6] = true GF_GroupFilters[7] = true GF_GroupFilters[8] = true
	else
		if GF_PerCharVariables.showtank then GF_GroupFilters[2] = true GF_GroupFilters[4] = true GF_GroupFilters[6] = true GF_GroupFilters[8] = true end
		if GF_PerCharVariables.showhealer then GF_GroupFilters[3] = true GF_GroupFilters[4] = true GF_GroupFilters[7] = true GF_GroupFilters[8] = true end
		if GF_PerCharVariables.showdps then GF_GroupFilters[5] = true GF_GroupFilters[6] = true GF_GroupFilters[7] = true GF_GroupFilters[8] = true end
	end

	GF_SpecialFilters = {[3] = true} -- 1/2(LFM/LFG), 3/4(non-LFT/LFT), 5/6(Normal/Hardcore), 7(foreign)
	if GF_PerCharVariables.showlfm then GF_SpecialFilters[1] = true if GF_PerCharVariables.showlfg then GF_SpecialFilters[2] = true end elseif GF_PerCharVariables.showlfg then GF_SpecialFilters[2] = true end
	if GF_SavedVariables.lfglftintegration then GF_SpecialFilters[4] = true end
	if GF_BUTTONS_LIST.LFGHardCore[GF_PerCharVariables.hardcore][5] then GF_SpecialFilters[5] = true end
	if GF_BUTTONS_LIST.LFGHardCore[GF_PerCharVariables.hardcore][6] then GF_SpecialFilters[6] = true end
	if not GF_SavedVariables.blockforeign then GF_SpecialFilters[7] = true end
end

function GF_OnUpdate() -- OnUpdate, SendWho, WhoListUpdated, Announce, Broadcast, Update MessageList
	if GF_UpdateTicker < GetTime() then -- Triggers once per second
		GF_UpdateTicker = GetTime() + 1
		for name,_ in pairs(GF_OnUpdateFunctions) do
			if GF_OnUpdateFunctions[name] then GF_OnUpdateFunctions[name]() end
		end
		if GF_PerCharVariables.groupfinishtimer and GF_PerCharVariables.groupfinishtimer[1] < GetTime() then GF_GroupFinishedAddToGroupHistoryList() end
		if SomeoneInCombat then if not UnitAffectingCombat("player") then UpdateOutOfCombat() elseif GF_PerCharVariables.dpsmetershown then GF_UpdateDPSMeterTimer = GF_UpdateDPSMeterTimer - 1 if GF_UpdateDPSMeterTimer < 0 then GF_UpdateDPSMeterTimer = 5 UpdateInCombat() GF_UpdateDPSMeter() end end end
		if triedToWhoName and not GF_SavedVariables.friendsToRemove[triedToWhoName] then GF_SavedVariables.friendsToRemove[triedToWhoName] = time() + 99950 end
	end
end
function GF_CheckForDelayedMessages()
	local tPos = 1
	while true do
		if GF_LogHistory[GF_RealmName]["Delay"][tPos] then
			if GF_LogHistory[GF_RealmName]["Delay"][tPos][1] == "Log" and (not GF_SavedVariables.friendsToRemove[GF_LogHistory[GF_RealmName]["Delay"][tPos][6]] or GF_SavedVariables.friendsToRemove[GF_LogHistory[GF_RealmName]["Delay"][tPos][6]] + 5 < time()) and (GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][6]] or GF_LogHistory[GF_RealmName]["Delay"][tPos][2] < time()) then
				if GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][6]] and GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][6]][1] ~= 0 and GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][6]][1] < GF_SavedVariables.blockmessagebelowlevel then GF_LogHistory[GF_RealmName]["Delay"][tPos][4] = 9 end
				GF_AddLogMessage(GF_LogHistory[GF_RealmName]["Delay"][tPos][3],GF_LogHistory[GF_RealmName]["Delay"][tPos][4],GF_LogHistory[GF_RealmName]["Delay"][tPos][5],GF_LogHistory[GF_RealmName]["Delay"][tPos][6],GF_LogHistory[GF_RealmName]["Delay"][tPos][7],GF_LogHistory[GF_RealmName]["Delay"][tPos][8],GF_LogHistory[GF_RealmName]["Delay"][tPos][9],true)
				table.remove(GF_LogHistory[GF_RealmName]["Delay"],tPos)
				if not GF_LogHistory[GF_RealmName]["Delay"][tPos] then break end
			elseif GF_LogHistory[GF_RealmName]["Delay"][tPos][1] == "Channel" and (not GF_SavedVariables.friendsToRemove[GF_LogHistory[GF_RealmName]["Delay"][tPos][4]] or GF_SavedVariables.friendsToRemove[GF_LogHistory[GF_RealmName]["Delay"][tPos][4]] + 5 < time()) and (GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][4]] or GF_LogHistory[GF_RealmName]["Delay"][tPos][2] < time()) then
				if not GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][4]] or GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][4]][1] == 0 or GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][4]][1] >= GF_SavedVariables.blockmessagebelowlevel then
					GF_AddChannelMessage(GF_LogHistory[GF_RealmName]["Delay"][tPos][3],GF_LogHistory[GF_RealmName]["Delay"][tPos][4],GF_LogHistory[GF_RealmName]["Delay"][tPos][5],GF_LogHistory[GF_RealmName]["Delay"][tPos][6],true)
				end
				table.remove(GF_LogHistory[GF_RealmName]["Delay"],tPos)
				if not GF_LogHistory[GF_RealmName]["Delay"][tPos] then break end
			elseif GF_LogHistory[GF_RealmName]["Delay"][tPos][1] == "Chat" and (not GF_SavedVariables.friendsToRemove[GF_LogHistory[GF_RealmName]["Delay"][tPos][4]] or GF_SavedVariables.friendsToRemove[GF_LogHistory[GF_RealmName]["Delay"][tPos][4]] + 5 < time()) and (GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][4]] or GF_LogHistory[GF_RealmName]["Delay"][tPos][2] < time()) then
				if not GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][4]] or GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][4]][1] == 0 or GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][4]][1] >= GF_SavedVariables.blockmessagebelowlevel then
					GF_AddChatMessage(GF_LogHistory[GF_RealmName]["Delay"][tPos][3],GF_LogHistory[GF_RealmName]["Delay"][tPos][4],GF_LogHistory[GF_RealmName]["Delay"][tPos][5],true)
				end
				table.remove(GF_LogHistory[GF_RealmName]["Delay"],tPos)
				if not GF_LogHistory[GF_RealmName]["Delay"][tPos] then break end
			elseif GF_LogHistory[GF_RealmName]["Delay"][tPos][1] == "Whisper" and (not GF_SavedVariables.friendsToRemove[GF_LogHistory[GF_RealmName]["Delay"][tPos][4]] or GF_SavedVariables.friendsToRemove[GF_LogHistory[GF_RealmName]["Delay"][tPos][4]] + 5 < time()) and (GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][4]] or GF_LogHistory[GF_RealmName]["Delay"][tPos][2] < time()) then
				GF_WhisperReceivedAddToWhisperHistoryList(GF_LogHistory[GF_RealmName]["Delay"][tPos][3],GF_LogHistory[GF_RealmName]["Delay"][tPos][4],GF_LogHistory[GF_RealmName]["Delay"][tPos][5],true)
				table.remove(GF_LogHistory[GF_RealmName]["Delay"],tPos)
				if not GF_LogHistory[GF_RealmName]["Delay"][tPos] then break end
			elseif GF_LogHistory[GF_RealmName]["Delay"][tPos][1] == "Minimap" and (not GF_SavedVariables.friendsToRemove[GF_LogHistory[GF_RealmName]["Delay"][tPos][4]] or GF_SavedVariables.friendsToRemove[GF_LogHistory[GF_RealmName]["Delay"][tPos][4]] + 5 < time()) and (GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][4]] or GF_LogHistory[GF_RealmName]["Delay"][tPos][2] < time()) then
				if not GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][4]] or GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][4]][1] == 0 or GF_WhoTable[GF_RealmName][GF_LogHistory[GF_RealmName]["Delay"][tPos][4]][1] >= GF_SavedVariables.blockmessagebelowlevel then
					GF_ShowGroupsOnMinimap(GF_LogHistory[GF_RealmName]["Delay"][tPos][3],GF_LogHistory[GF_RealmName]["Delay"][tPos][4],true)
				end
				table.remove(GF_LogHistory[GF_RealmName]["Delay"],tPos)
				if not GF_LogHistory[GF_RealmName]["Delay"][tPos] then break end
			elseif GF_LogHistory[GF_RealmName]["Delay"][tPos][1] == "Item" and (GF_LogHistory[GF_RealmName]["Delay"][tPos][2] < time() and GF_ChatReplaceItemLink(arg1,true) or GF_LogHistory[GF_RealmName]["Delay"][tPos][2] + 2 < time()) then
				GF_ProcessChatMessages(GF_LogHistory[GF_RealmName]["Delay"][tPos][3],GF_LogHistory[GF_RealmName]["Delay"][tPos][4],GF_LogHistory[GF_RealmName]["Delay"][tPos][5],GF_LogHistory[GF_RealmName]["Delay"][tPos][6],GF_LogHistory[GF_RealmName]["Delay"][tPos][7],GF_LogHistory[GF_RealmName]["Delay"][tPos][8],true)
				table.remove(GF_LogHistory[GF_RealmName]["Delay"],tPos)
				if not GF_LogHistory[GF_RealmName]["Delay"][tPos] then break end
			else
				tPos = tPos + 1
			end
		else
			break
		end
	end
end
function GF_SendWhoIfNameInQueue()
	if GF_NextAvailableWhoTime < time() then
		if GF_UrgentWhoRequest[1] then
			SetWhoToUI(0)
			if SendWho("n-"..GF_UrgentWhoRequest[1]) ~= "failed" then table.remove(GF_UrgentWhoRequest,1) end
			GF_BlockNextWho = nil
		elseif not WhoFrame:IsVisible() then
			if GF_ClassWhoRequest then
				if GF_ClassWhoQueue[1] then
					SetWhoToUI(1)
					if SendWho(GF_ClassWhoQueue[1]) ~= "failed" then table.remove(GF_ClassWhoQueue,1) end
					GF_BlockNextWho = true
				else
					GF_ClassWhoRequest = nil
					GF_GetWhoButton:SetText(GF_GET_WHO)
					GF_GetWhoTotalNames:SetText(GF_ClassWhoMatchingResults)
				end
			elseif GF_WhoQueue[1] and GF_SavedVariables.usewhoongroups then
				if (GF_WhoTable[GF_RealmName][GF_WhoQueue[1]] and GF_WhoTable[GF_RealmName][GF_WhoQueue[1]][4] + 86400 > time()) or GF_AddonNamesToBeSentAsARequest[GF_WhoQueue[1]] then
					GF_WhoQueue[GF_WhoQueue[1]] = nil
					table.remove(GF_WhoQueue,1)
					return
				end
				SetWhoToUI(1)
				GF_PerCharVariables.friendUnknown[GF_WhoQueue[1]] = time() + 900
				if SendWho("n-"..GF_WhoQueue[1]) ~= "failed" then table.remove(GF_WhoQueue,1) end
				GF_BlockNextWho = true
			end
		end
	end
end
function GF_WhoListUpdated()
	for i=1,GetNumWhoResults() do
		local name, guild, level, race, class, zone = GetWhoInfo(i)
		if GF_Classes[class] then
			GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], guild, time() }
			GF_AddonWhoDataToBeSentBuffer[name] = GF_WhoTable[GF_RealmName][name]
			GF_AddonNamesFromWhoSinceLoggedOn[name] = time()
		end
		if GF_UrgentWhoRequest[name] or GF_WhoQueue[name] then GF_UrgentWhoRequest[name] = nil GF_WhoQueue[name] = nil if GF_UpdateAndRequestTimer > 4 then GF_UpdateAndRequestTimer = 5 end end
		if GF_IsGuildieOrPartyMemberUsingAddon() then GF_OnUpdateFunctions["Broadcast"] = GF_CheckForBroadCast end
		GF_TimeTillNextBroadcast = 0
		if GF_ClassWhoRequest and not GF_ClassWhoTable[name] and not GF_PlayersCurrentlyInGroup[name] and level >= GF_GetWhoParams[1]-GF_PerCharVariables.wholevelrange and level <= GF_GetWhoParams[1]+GF_PerCharVariables.wholevelrange
		and class == GF_GetWhoParams[2] and (not GF_GetWhoParams[3] or (GF_GetWhoParams[3] and not GF_LFG_GROUP_ZONES[zone])) then
			GF_ClassWhoTable[name] = { level, GF_Classes[class], zone, time() }
			GF_ClassWhoMatchingResults = GF_ClassWhoMatchingResults + 1
		end
	end
	if GF_ClassWhoRequest then
		if not GF_ClassWhoQueue[1] then
			if GetNumWhoResults() >= 49 then
				GF_GetClassWhoState = GF_GetClassWhoState + 1
				GF_GetWhoTotalNames:SetText(GF_ClassWhoMatchingResults)
				GF_CreateGetWhoQueueList(GF_GetWhoParams[1], GF_GetWhoParams[2])
				GF_GetWhoButton:SetText(GF_STOP_WHO.." - "..GF_NextAvailableWhoTime - time())
				for name,entry in pairs(GF_ClassWhoTable) do if entry[4] <= time() then GF_GetWhoName = name GF_GetWhoNameLabel:SetText(GF_CreateGetWhoNameLink(name)) break end end
			else
				GF_ClassWhoRequest = nil
				GF_GetWhoButton:SetText(GF_GET_WHO)
				GF_GetWhoTotalNames:SetText(GF_ClassWhoMatchingResults)
				for name,entry in pairs(GF_ClassWhoTable) do if entry[4] <= time() then GF_GetWhoName = name GF_GetWhoNameLabel:SetText(GF_CreateGetWhoNameLink(name)) break end end
			end
		else
			GF_GetWhoTotalNames:SetText(GF_ClassWhoMatchingResults)
			for name,entry in pairs(GF_ClassWhoTable) do if entry[4] <= time() then GF_GetWhoName = name GF_GetWhoNameLabel:SetText(GF_CreateGetWhoNameLink(name)) break end end
		end
	end
	GF_NextAvailableWhoTime = time() + GF_WhoCooldownTime
	triedToWhoName = nil
end
function GF_AddNameToWhoQueue(name,addToTopOfList)
	if string.len(name) < 2 or name == UnitName("player") then GF_PerCharVariables.friendUnknown[name] = time() + 999999 return end
	for i=1, getn(GF_WhoQueue) do
		if GF_WhoQueue[i] == name then return end
	end
	if GF_SavedVariables.usefriendslist then
		if not GF_SavedVariables.friendsToRemove[name] then
			if addToTopOfList == 3 then GF_SavedVariables.friendsToRemove[name] = time() + 999999 else GF_SavedVariables.friendsToRemove[name] = time() + 999500 end
		end
	elseif addToTopOfList then
		table.insert(GF_WhoQueue,1,name)
		GF_WhoQueue[name] = time()
	else
		table.insert(GF_WhoQueue, name)
		GF_WhoQueue[name] = time()
	end
	if GF_UpdateAndRequestTimer > 4 then GF_UpdateAndRequestTimer = 2 end
end
function GF_GetWhoData(arg2,groupfound)
	if GF_SavedVariables.usewhoongroups and (not GF_WhoQueue[arg2] or GF_WhoQueue[arg2] + 60 < time()) and (groupfound or GF_SavedVariables.showformattedchat)
	and (not GF_WhoTable[GF_RealmName][arg2] or GF_WhoTable[GF_RealmName][arg2][4] + 1209600 < time() or (GF_WhoTable[GF_RealmName][arg2][1] < 60 and GF_WhoTable[GF_RealmName][arg2][4] + 43200 < time())) then -- If level 60, get new whodata after 14 days(for guild name changes). If below level 60, get new data every 24 hours.
		GF_AddNameToWhoQueue(arg2,groupfound)
	else
		return GF_WhoTable[GF_RealmName][arg2]
	end
end
function GF_UpdateWhoDataViaFriendsList()
	if FriendsFrame:IsVisible() then return end
	GF_UpdateWhoDataViaFriendsListTimer = GF_UpdateWhoDataViaFriendsListTimer - 1
	if GF_UpdateWhoDataViaFriendsListTimer < 0 then
		GF_UpdateWhoDataViaFriendsListTimer = 5
		local highestPriorityName
		local highestPriorityTime = time() + 999999
		for name,data in pairs(GF_SavedVariables.friendsToRemove) do if data >= time() then if data < highestPriorityTime and (not GF_PerCharVariables.friendUnknown[highestPriorityName] or GF_PerCharVariables.friendUnknown[highestPriorityName] < time()) then highestPriorityTime = data highestPriorityName = name end end end
		for name,data in pairs(GF_PerCharVariables.friendUnknown) do if data and data < time() then GF_PerCharVariables.friendUnknown[name] = nil end end
		if highestPriorityName then
			AddFriend(highestPriorityName)
			GF_SavedVariables.friendsToRemove[highestPriorityName] = time() return
		end
	end
end
function GF_UpdateFriendsList()
	GF_CurrentNumFriends = GetNumFriends()
	GF_Friends = {}
	local counter = 0
	for i=1,GetNumFriends() do
		local name,level,class,area,online = GetFriendInfo(i)
		if name then
			if name == UNKNOWN then
				RemoveFriend(i)
				counter = counter + 1
			elseif GF_ClassColors[GF_Classes[class]] and level and level ~= 0 then
				GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], "", time()}
				if online and not GF_SavedVariables.friendsToRemove[name] then GF_Friends[name] = true end
			elseif GF_WhoTable[GF_RealmName][name] then
				GF_WhoTable[GF_RealmName][name] = { 0, GF_WhoTable[GF_RealmName][name][2], GF_WhoTable[GF_RealmName][name][3], time()}
			end
			if name == triedToWhoName then
				if GF_WhoTable[GF_RealmName][name] then
					if GF_WhoTable[GF_RealmName][name][1] > 0 then
						DEFAULT_CHAT_FRAME:AddMessage("|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]] or "ffffff").."|Hplayer:"..name.."|h["..name.."]|h|r"..GF_IS_LEVEL..GF_WhoTable[GF_RealmName][name][1]..GF_IN..area,1,1,0.5)
					else
						DEFAULT_CHAT_FRAME:AddMessage(GF_COULDNT_GET_DATA.."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]] or "ffffff").."|Hplayer:"..name.."|h["..name.."]|h|r",1,1,0.5)
					end
				end
				triedToWhoName = nil
			end
			if GF_SavedVariables.friendsToRemove[name] then RemoveFriend(i) GF_PerCharVariables.friendUnknown[name] = time() + 1800 counter = counter + 1 end
			if counter >= 3 then break end
		end
	end
	for name,_ in pairs(GF_SavedVariables.friendsToRemove) do
		if not GF_Friends[name] and GF_SavedVariables.friendsToRemove[name] + 30 < time() then GF_SavedVariables.friendsToRemove[name] = nil end
	end
	GF_UpdateWhoDataViaFriendsListTimer = 1
	GF_OnUpdateFunctions["UpdateFriends"] = nil
	GF_CreateExcludeNamesList()
end
function GF_CheckForAnnounce()
	GF_AutoAnnounceTimer = GF_AutoAnnounceTimer + 1
	if not GF_ChatJoinedChannels[strlower(GF_GroupChannelEditBox:GetText())] then GF_GetJoinedChannels() if not GF_ChatJoinedChannels[strlower(GF_GroupChannelEditBox:GetText())] then GF_TurnOffAnnounce(GF_AUTO_ANNOUNCE_NOT_IN_CHANNEL) return end end
	if GF_LFGDescriptionEditBox:GetText() == "" then GF_TurnOffAnnounce(GF_NOTHING_TO_ANNOUNCE) return end
	if GF_AutoAnnounceTimer > GF_SavedVariables.announcetimer then
		GF_AutoAnnounceTimer = 0
		GF_GetJoinedChannels()
		if not GF_PerCharVariables.disablehardcore and GF_Hardcore and GF_PerCharVariables.hardcore ~= 3 then
			SendChatMessage(GF_LFGDescriptionEditBox:GetText(), "HARDCORE", nil, nil)
		else
			SendChatMessage(GF_LFGDescriptionEditBox:GetText(), "CHANNEL", nil, GetChannelName(GF_SavedVariables.groupchannelname))
		end
		DEFAULT_CHAT_FRAME:AddMessage(GF_SENT..GF_LFGDescriptionEditBox:GetText(),1,1,0.5)
		GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_STOP_ANNOUNCE.."-"..GF_SavedVariables.announcetimer - GF_AutoAnnounceTimer)
		GF_MinimapMessageFrameA1:AddMessage(GF_ANNOUNCED_LFG_EXT,1,1,0.5,1, UIERRORS_HOLD_TIME)
		PlaySound("TellMessage")
	else
		GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_STOP_ANNOUNCE.."-"..GF_SavedVariables.announcetimer - GF_AutoAnnounceTimer)
	end
end
function GF_TurnOffAnnounce(messageText)
	GF_AutoAnnounceTimer = nil
	GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_ANNOUNCE_GROUP)
	DEFAULT_CHAT_FRAME:AddMessage("GF: "..messageText,1,1,0.5)
	GF_OnUpdateFunctions["Announce"] = nil
	GF_WasPartyLeaderBefore = nil
end
function GF_TurnOnAnnounce()
	if not GF_ChatJoinedChannels[strlower(GF_GroupChannelEditBox:GetText())] then GF_GetJoinedChannels() if not GF_ChatJoinedChannels[strlower(GF_GroupChannelEditBox:GetText())] then GF_TurnOffAnnounce(GF_AUTO_ANNOUNCE_NOT_IN_CHANNEL) return end end
	GF_AutoAnnounceTimer = GF_SavedVariables.announcetimer
	if UnitIsPartyLeader("player") or GF_NumPartyMembers == 1 then GF_WasPartyLeaderBefore = true end
	GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_STOP_ANNOUNCE.."-"..GF_SavedVariables.announcetimer)
	DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_AUTO_ANNOUNCE_TURNED_ON,1,1,0.5)
	GF_OnUpdateFunctions["Announce"] = GF_CheckForAnnounce
end
function GF_UpdateGroupsFrame()
	GF_UpdateAndRequestTimer = GF_UpdateAndRequestTimer - 1
	if GF_UpdateAndRequestTimer < 0 then
		GF_UpdateAndRequestTimer = 30
		for i=1, getn(GF_MessageList[GF_RealmName]) do
			if GF_SavedVariables.usewhoongroups and not GF_MessageList[GF_RealmName][i].u and (not GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op] or GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op][1] == 0) and not GF_WhoQueue[GF_MessageList[GF_RealmName][i].op] then
				if not GF_PerCharVariables.friendUnknown[GF_MessageList[GF_RealmName][i].op] or GF_PerCharVariables.friendUnknown[GF_MessageList[GF_RealmName][i].op] < time() then
					if GF_SavedVariables.usefriendslist then
						GF_AddNameToWhoQueue(GF_MessageList[GF_RealmName][i].op,3)
					else
						GF_AddNameToWhoQueue(GF_MessageList[GF_RealmName][i].op,true)
					end
				else
					GF_MessageList[GF_RealmName][i].u = true
				end
			end
			if GF_AddonMakeAListOfGroupsForSending and not GF_AddonOPSentNamesOnLogin[GF_MessageList[GF_RealmName][i].op] and GF_MessageList[GF_RealmName][i].t + 300 > time() then
				GF_AddonGroupDataToBeSentBuffer[GF_MessageList[GF_RealmName][i].op] = GF_MessageList[GF_RealmName][i]
				GF_OnUpdateFunctions["Broadcast"] = GF_CheckForBroadCast
			end
		end
		GF_AddonMakeAListOfGroupsForSending = nil
		GF_AddonOPSentNamesOnLogin = {}
		GF_ApplyFiltersToGroupList()
		for name,data in pairs(GF_ProcessedFirstMessage) do if data and data[2] + .25 < GetTime() then GF_ProcessedFirstMessage[name] = nil end end
		if GF_PlaySoundNextUpdate then PlaySoundFile( "Sound\\Interface\\PickUp\\PutDownRing.wav" ) GF_PlaySoundNextUpdate = nil end
	else
		local timeMin, timeSec
		for i=1,GF_ResultsListOffsetSize do
			if i+GF_ResultsListOffset <= getn(GF_FilteredResultsList) then
				timeMin = floor(((time() - GF_FilteredResultsList[i+GF_ResultsListOffset].t))/60)
				timeSec = (time() - GF_FilteredResultsList[i+GF_ResultsListOffset].t) - timeMin*60
				if timeMin < 10 then timeMin = "0"..timeMin end
				if timeSec < 10 then timeSec = "0"..timeSec end
				getglobal("GF_NewItem"..i.."MoreLeftLabel"):SetText(timeMin..":"..timeSec)
			end
		end
	end
	if GF_ClassWhoRequest and GF_NextAvailableWhoTime >= time() then GF_GetWhoButton:SetText(GF_STOP_WHO.." - "..GF_NextAvailableWhoTime - time()) end
end
function GF_RequestAdditionalWhoDataUpdates() -- Data-Sharing algorithm.... Every 300 seconds you make a list of names in 'GF_AddonNamesToBeSentAsARequest' if the 'GF_MessageList' doesn't have a 'GF_WhoTable' and 'usewhoongroups' is true
	GF_RequestWhoDataPeriodicallyTimer = GF_RequestWhoDataPeriodicallyTimer - 1
	if GF_RequestWhoDataPeriodicallyTimer < 0 then
		GF_RequestWhoDataPeriodicallyTimer = 300
		if GF_SavedVariables.usewhoongroups and GF_IsGuildieOrPartyMemberUsingAddon() then
			for i=1, getn(GF_MessageList[GF_RealmName]) do
				if not GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op] then GF_AddonNamesToBeSentAsARequest[GF_MessageList[GF_RealmName][i].op] = true end
			end
			for i=1, getn(GF_WhoQueue) do
				GF_AddonNamesToBeSentAsARequest[GF_WhoQueue[i]] = true
			end
			GF_TimeTillNextBroadcast = 0
			GF_OnUpdateFunctions["Broadcast"] = GF_CheckForBroadCast
		end
	end
	if not GF_IsGuildieOrPartyMemberUsingAddon() then GF_OnUpdateFunctions["WhoData"] = nil end
end
function GF_CheckForBroadCast()
	GF_OnUpdateFunctions["Broadcast"] = nil
	local counter = 0
	local addonsendstring = "U" -- Send List of Groups on Login
	if GF_OnStartupQueueURequest then
		for i=GF_OnStartupQueueURequest, getn(GF_MessageList[GF_RealmName]) do
			if counter > 2 then GF_OnUpdateFunctions["Broadcast"] = GF_CheckForBroadCast GF_OnStartupQueueURequest = i return end
			if GF_MessageList[GF_RealmName][i].t + 300 > time() then
				addonsendstring = addonsendstring..":"..GF_MessageList[GF_RealmName][i].op
				if strlen(addonsendstring) > 240 then
					if GetGuildInfo("player") then SendAddonMessage("GF", addonsendstring, "GUILD") end
					if GF_NumPartyMembersOnline > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end
					addonsendstring = "U"
					counter = counter + 1
				end
			end
		end
		if counter == 0 or strlen(addonsendstring) > 1 then if GetGuildInfo("player") then SendAddonMessage("GF", addonsendstring, "GUILD") elseif GF_NumPartyMembersOnline > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end end
		GF_OnStartupQueueURequest = nil
	end

	local sendType = GF_IsGuildieOrPartyMemberUsingAddon()
	if not sendType then return end

	for name,entry in pairs(GF_AddonGroupDataToBeSentBuffer) do -- Send Group Data
		GF_AddonGroupDataToBeSentBuffer[name] = nil
		if name then
			if sendType == 1 or sendType == 3 then SendAddonMessage("GF", entry.t..entry.op..":"..entry.message, "GUILD") end
			if sendType > 1 then SendAddonMessage("GF", entry.t..entry.op..":"..entry.message, "PARTY") end
			if GF_WhoTable[GF_RealmName][entry.op] then GF_AddonAllNamesForResponseToLogin[entry.op] = true end
			counter = counter + 1
			if counter > 2 then GF_OnUpdateFunctions["Broadcast"] = GF_CheckForBroadCast return end
		end
	end

	addonsendstring = "W" -- Send Group Name List
	for name,_ in pairs(GF_AddonAllNamesForResponseToLogin) do
		if name then addonsendstring = addonsendstring..":"..name end
		GF_AddonAllNamesForResponseToLogin[name] = nil
		if strlen(addonsendstring) > 240 then
			if sendType == 1 or sendType == 3 then SendAddonMessage("GF", addonsendstring, "GUILD") end if sendType > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end
			addonsendstring = "W"
			counter = counter + 1
			if counter > 2 then GF_OnUpdateFunctions["Broadcast"] = GF_CheckForBroadCast return end
		end
	end
	if strlen(addonsendstring) > 1 then if sendType == 1 or sendType == 3 then SendAddonMessage("GF", addonsendstring, "GUILD") end if sendType > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end end

	addonsendstring = "R" -- Send Request Name List
	for name,_ in pairs(GF_AddonNamesToBeSentAsARequest) do
		if name then addonsendstring = addonsendstring..":"..name end
		GF_AddonNamesToBeSentAsARequest[name] = nil
		if strlen(addonsendstring) > 240 then
			if sendType == 1 or sendType == 3 then SendAddonMessage("GF", addonsendstring, "GUILD") end if sendType > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end
			addonsendstring = "R"
			counter = counter + 1
			if counter > 2 then GF_OnUpdateFunctions["Broadcast"] = GF_CheckForBroadCast return end
		end
	end
	if strlen(addonsendstring) > 1 then if sendType == 1 or sendType == 3 then SendAddonMessage("GF", addonsendstring, "GUILD") end if sendType > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end end

	addonsendstring = "" -- Return WhoData for Requested Names
	for name,whodata in pairs(GF_AddonWhoDataToBeSentBuffer) do
		GF_AddonWhoDataToBeSentBuffer[name] = nil
		if name then
			if whodata[3] == "" then whodata[3] = "Z" end
			addonsendstring = addonsendstring..":"..whodata[1]..name..GF_ClassIDs[whodata[2]]..whodata[3]..whodata[4]
			if strlen(addonsendstring) > 202 then
				if sendType == 1 or sendType == 3 then SendAddonMessage("GF", addonsendstring, "GUILD") end if sendType > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end
				addonsendstring = ""
				counter = counter + 1
				if counter > 2 then GF_OnUpdateFunctions["Broadcast"] = GF_CheckForBroadCast return end
			end
		end
	end
	if strlen(addonsendstring) > 1 then if sendType == 1 or sendType == 3 then SendAddonMessage("GF", addonsendstring, "GUILD") end if sendType > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end end
end
function GF_ParseIncomingAddonMessages(msg)
--I login...
--I send "U" with a list of names from my groupfinder from the last 15 minutes.
--You receive the "U" and make a list of the names in your groupfinder from the last 15 minutes that weren't included in my "U" message.
--You send those names in a "W"(checking off any "W" sent by others before you)(should I just add all new who's to this list?).
--I receive your "W" and cross out the names I already have, then I send a request(R) with the list of names I want.
--You send the full information for the names I requested(and will repeatedly send until all the names are sent, checking off any info sent by others).
--When I /who, the name is added to the "W" broadcast list. This list is resent every 30 seconds.
	--print(msg)

-- This system prevents groups and "W" from being sent for multiple "U"'s... The issue is that, if multiple people log on within 1-30 seconds(random), where one needs all groups and the other needs none, it will send none.
	if strsub(msg,1,1) == "U" then -- (From OP) Sent on login with a list of names from OP's group list(up to 240 characters).
		for name in gfind(strsub(msg,3), "(%w+)") do
			GF_AddonOPSentNamesOnLogin[name] = true
			GF_AddonAllNamesForResponseToLogin[name] = nil
		end
		for name in pairs(GF_AddonNamesFromWhoSinceLoggedOn) do
			if GF_AddonNamesFromWhoSinceLoggedOn[name] + 3600 < time() then -- If my 'GF_AddonNamesFromWhoSinceLoggedOn' is more than an hour old, delete it.
				GF_AddonNamesFromWhoSinceLoggedOn[name] = nil
			elseif not GF_AddonOPSentNamesOnLogin[name] and not GF_AddonWhoDataToBeSentBuffer[name] and GF_WhoTable[GF_RealmName][name][4] + 900 > time() then
				GF_AddonAllNamesForResponseToLogin[name] = true
			end
		end
		GF_TimeTillNextBroadcast = (math.random(80))/4 -- Assuming up to 333ms lag, up to 100 different random slots for responses. To keep down on the spam.
		GF_RequestWhoDataPeriodicallyTimer = 300
		GF_AddonMakeAListOfGroupsForSending = true
		GF_UpdateAndRequestTimer = 0
		GF_OnUpdateFunctions["Broadcast"] = GF_CheckForBroadCast
	elseif strsub(msg,1,1) == "W" then -- (To Everyone) A list of names available to be requested(up to 240 characters). Add to 'GF_AddonNamesToBeSentAsARequest' if the name is not in 'GF_WhoTable'. Then delete from 'GF_AddonAllNamesForResponseToLogin'.
		for sentname in gfind(msg, ":(%w+)") do -- This works 100% correctly. 'GF_AddonAllNamesForResponseToLogin' is removed either when responding with a "R" message or when receiving either a ":" or full group message.
			if not GF_WhoTable[GF_RealmName][sentname] then GF_AddonNamesToBeSentAsARequest[sentname] = true end
			GF_AddonAllNamesForResponseToLogin[sentname] = nil
		end
		GF_TimeTillNextBroadcast = (math.random(80))/4
		GF_OnUpdateFunctions["Broadcast"] = GF_CheckForBroadCast
	elseif strsub(msg,1,1) == "R" then -- (To Everyone) The list of names requested(up to 240 characters). Add to 'GF_AddonWhoDataToBeSentBuffer' if I have 'GF_WhoTable'. Then delete the names I was going to request('GF_AddonNamesToBeSentAsARequest').
		for sentname in gfind(msg, ":(%w+)") do -- This works 100% correctly. 'GF_AddonWhoDataToBeSentBuffer' is removed when sending or receiving a ":" message or a full group message.
			if GF_WhoTable[GF_RealmName][sentname] and (GF_WhoTable[GF_RealmName][sentname][1] == 60 or GF_WhoTable[GF_RealmName][sentname][4] + 43200 > time()) then
				GF_AddonWhoDataToBeSentBuffer[sentname] = GF_WhoTable[GF_RealmName][sentname]
			end
			GF_AddonNamesToBeSentAsARequest[sentname] = nil
		end
		GF_TimeTillNextBroadcast = (math.random(80))/4
		GF_OnUpdateFunctions["Broadcast"] = GF_CheckForBroadCast
	elseif strsub(msg,1,1) == ":" then -- (To Everyone) This is 'GF_WhoTable' data. Add to your 'GF_WhoTable' and delete from 'GF_AddonAllNamesForResponseToLogin', 'GF_AddonNamesToBeSentAsARequest', and 'GF_AddonWhoDataToBeSentBuffer'.
		for sentlevel,sentname,sentclass,sentguild,senttime in gfind(msg, ":(%d+)([a-zA-Z]+)(%d)([a-zA-Z%s]+)(%d+)") do -- This works 100% correctly.
			if sentguild == "Z" then sentguild = "" end
			if tonumber(senttime) <= time() and GF_ClassIDs[tonumber(sentclass)] and (not GF_WhoTable[GF_RealmName][sentname] or tonumber(senttime) > GF_WhoTable[GF_RealmName][sentname][4]) then
				GF_WhoTable[GF_RealmName][sentname] = { tonumber(sentlevel), GF_ClassIDs[tonumber(sentclass)], sentguild, tonumber(senttime) }
			end
			GF_AddonAllNamesForResponseToLogin[sentname] = nil
			GF_AddonNamesToBeSentAsARequest[sentname] = nil
			GF_AddonWhoDataToBeSentBuffer[sentname] = nil
		end
	elseif strlen(msg) > 2 then -- (To Everyone) Add group information to your 'GF_MessageList' and delete from 'GF_AddonAllNamesForResponseToLogin', 'GF_AddonNamesToBeSentAsARequest', 'GF_AddonWhoDataToBeSentBuffer', 'GF_AddonGroupDataToBeSentBuffer'.
		for senttime,sentname,message in gfind(msg, "(%d+)([a-zA-Z]+):(.+)") do -- This works 100% correctly.
			GF_GetTypes(gsub(gsub(gsub(gsub(gsub(strlower(gsub(gsub(gsub(gsub(" "..message.." ", " |+h%[([%w%s%p]+)%]|+h|+r", " %1 "), "|c%x+|+(%w+)[%d:]+|+h", " %1 "), "|+h|+r", " "),"([a-z ][a-z])([A-Z][a-z%s%p])","%1 %2")),".gg/%w+", ""),"([%p%s])(%w%w+)([%p%s])","%1 %2 %3"),"[%s%.%[](%a)[%s%.](%a)[%s%.]","%1%2"),"%s%s+", " "),"[']", ""),sentname)
			for i=1, getn(GF_MessageList[GF_RealmName]) do
				if GF_MessageList[GF_RealmName][i] and GF_MessageList[GF_RealmName][i].op and GF_MessageList[GF_RealmName][i].op == sentname then
					table.remove(GF_MessageList[GF_RealmName], i)
					break
				end
			end
			if getn(GF_MessageList[GF_RealmName]) > 0 then
				for i=1, getn(GF_MessageList[GF_RealmName]) do
					if tonumber(senttime) > GF_MessageList[GF_RealmName][i].t then table.insert(GF_MessageList[GF_RealmName], i, ({GF_GetGroupInformation(message,sentname,tonumber(senttime))})[2]) return end
				end
			end
			table.insert(GF_MessageList[GF_RealmName], ({GF_GetGroupInformation(message,sentname,tonumber(senttime))})[2])
			GF_AddonGroupDataToBeSentBuffer[sentname] = nil
			GF_AddonAllNamesForResponseToLogin[sentname] = nil
			GF_AddonNamesToBeSentAsARequest[sentname] = nil
			GF_AddonWhoDataToBeSentBuffer[sentname] = nil
		end
		if GF_UpdateAndRequestTimer > 5 then GF_UpdateAndRequestTimer = 1 end
	end
end
function UpdateOutOfCombat()
	local combat = nil
	for name,data in pairs(PlayersInCombat) do
		if GF_PlayersCurrentlyInGroup[name] then
			if not UnitAffectingCombat(GF_PlayersCurrentlyInGroup[name]) then GF_PerCharVariables.CurrentGroup["TempData"][3][name][5] = GF_PerCharVariables.CurrentGroup["TempData"][3][name][5] + math.max(GetTime() - data,1) PlayersInCombat[name] = nil else combat = true end
		else
			PlayersInCombat[name] = nil
		end
	end
	if not combat then SomeoneInCombat = nil GF_UpdateDPSMeter() end
end
function UpdateInCombat()
	for name,data in pairs(PlayersInCombat) do
		if GF_PlayersCurrentlyInGroup[name] and GF_PerCharVariables.CurrentGroup["TempData"][3][name] then
			GF_PerCharVariables.CurrentGroup["TempData"][3][name][5] = GF_PerCharVariables.CurrentGroup["TempData"][3][name][5] + math.max(GetTime() - data,1)
			PlayersInCombat[name] = GetTime()
		else
			PlayersInCombat[name] = nil
		end
	end
end
function GF_UpdateDPSMeter()
	local TableA = {}
	for names,data in pairs(GF_PerCharVariables.CurrentGroup["TempData"][3]) do
		if data[5] > 0 then
			table.insert(TableA, {names,data})
		end
	end
	if GF_PerCharVariables.dpsmeter == 1 then table.sort(TableA, function(a,b) return a[2][3]>b[2][3] end) elseif GF_PerCharVariables.dpsmeter == 2 then table.sort(TableA, function(a,b) return a[2][3]/a[2][5]>b[2][3]/b[2][5] end) elseif GF_PerCharVariables.dpsmeter == 3 then table.sort(TableA, function(a,b) return a[2][4]>b[2][4] end) end
	for i=1,10 do
		if TableA[i] then
			getglobal("GF_DPSMeterEntry"..i.."NameLabel"):SetText("|cff"..(GF_ClassColors[TableA[i][2][2]] or "9d9d9d")..TableA[i][1].."|r")
			if GF_PerCharVariables.dpsmeter == 1 then
				if TableA[1][2][3] > 100000 then
					getglobal("GF_DPSMeterEntry"..i.."DataLabel"):SetText(ceil(TableA[i][2][3]/1000).."K")
				else
					getglobal("GF_DPSMeterEntry"..i.."DataLabel"):SetText(TableA[i][2][3])
				end
			elseif GF_PerCharVariables.dpsmeter == 2 then
				getglobal("GF_DPSMeterEntry"..i.."DataLabel"):SetText(ceil(TableA[i][2][3]/TableA[i][2][5]))
			elseif GF_PerCharVariables.dpsmeter == 3 then
				if TableA[1][2][4] > 100000 then
					getglobal("GF_DPSMeterEntry"..i.."DataLabel"):SetText(ceil(TableA[i][2][4]/1000).."K")
				else
					getglobal("GF_DPSMeterEntry"..i.."DataLabel"):SetText(TableA[i][2][4])
				end
			end
			getglobal("GF_DPSMeterEntry"..i.."NameLabel"):Show()
			getglobal("GF_DPSMeterEntry"..i.."DataLabel"):Show()
		else
			getglobal("GF_DPSMeterEntry"..i.."NameLabel"):Hide()
			getglobal("GF_DPSMeterEntry"..i.."DataLabel"):Hide()
		end
	end
	GF_DamageMeterFrame:SetHeight(25 + math.min(getn(TableA),10)*18)
end
function GF_UpdateDPSMeterOnLoad()
	if GF_PerCharVariables.CurrentGroup["TempData"] then
		GF_UpdateDPSMeter()
		GF_OnUpdateFunctions["UpdateMeter"] = nil
	end
end
function GF_SetupDPSMeter()
	if ShaguDPSLoaded or not GF_PerCharVariables.usedpsmeter then
		GF_DamageMeterFrame:Hide()
		GF_ToggleDPSMeterButton:Hide()
		--if UnitGUID("player") then
			--GF_Frame:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
		--else
			for _,event in pairs({ 'CHAT_MSG_COMBAT_SELF_HITS','CHAT_MSG_COMBAT_PARTY_HITS','CHAT_MSG_COMBAT_FRIENDLYPLAYER_HITS','CHAT_MSG_COMBAT_HOSTILEPLAYER_HITS','CHAT_MSG_SPELL_SELF_DAMAGE','CHAT_MSG_SPELL_PARTY_DAMAGE','CHAT_MSG_SPELL_FRIENDLYPLAYER_DAMAGE',
				'CHAT_MSG_SPELL_HOSTILEPLAYER_DAMAGE','CHAT_MSG_SPELL_SELF_BUFF','CHAT_MSG_SPELL_PARTY_BUFF','CHAT_MSG_SPELL_FRIENDLYPLAYER_BUFF','CHAT_MSG_SPELL_HOSTILEPLAYER_BUFF','CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS','CHAT_MSG_SPELL_PERIODIC_PARTY_BUFFS',
				'CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_BUFFS','CHAT_MSG_SPELL_PERIODIC_HOSTILEPLAYER_BUFFS','CHAT_MSG_SPELL_PERIODIC_CREATURE_DAMAGE','CHAT_MSG_COMBAT_PET_HITS','CHAT_MSG_SPELL_PET_DAMAGE','CHAT_MSG_SPELL_DAMAGESHIELDS_ON_SELF','CHAT_MSG_SPELL_DAMAGESHIELDS_ON_OTHERS', }) do
				GF_Frame:UnregisterEvent(event)
			end
		--end
	else
		if GF_PerCharVariables.dpsmetershown then GF_DamageMeterFrame:Show() end
		GF_ToggleDPSMeterButton:Show()
		--if UnitGUID("player") then
			--GF_Frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
		--else
			for _,event in pairs({ 'CHAT_MSG_COMBAT_SELF_HITS','CHAT_MSG_COMBAT_PARTY_HITS','CHAT_MSG_COMBAT_FRIENDLYPLAYER_HITS','CHAT_MSG_COMBAT_HOSTILEPLAYER_HITS','CHAT_MSG_SPELL_SELF_DAMAGE','CHAT_MSG_SPELL_PARTY_DAMAGE','CHAT_MSG_SPELL_FRIENDLYPLAYER_DAMAGE',
				'CHAT_MSG_SPELL_HOSTILEPLAYER_DAMAGE','CHAT_MSG_SPELL_SELF_BUFF','CHAT_MSG_SPELL_PARTY_BUFF','CHAT_MSG_SPELL_FRIENDLYPLAYER_BUFF','CHAT_MSG_SPELL_HOSTILEPLAYER_BUFF','CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS','CHAT_MSG_SPELL_PERIODIC_PARTY_BUFFS',
				'CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_BUFFS','CHAT_MSG_SPELL_PERIODIC_HOSTILEPLAYER_BUFFS','CHAT_MSG_SPELL_PERIODIC_CREATURE_DAMAGE','CHAT_MSG_COMBAT_PET_HITS','CHAT_MSG_SPELL_PET_DAMAGE','CHAT_MSG_SPELL_DAMAGESHIELDS_ON_SELF','CHAT_MSG_SPELL_DAMAGESHIELDS_ON_OTHERS', }) do
				GF_Frame:RegisterEvent(event)
			end
		--end
	end
end

function GF_Frame:ADDON_LOADED() -- Event handlers called directly
	if arg1 == "GroupFinder" then
		GF_Frame:Show()
		GF_OnLoad()
	elseif arg1 == "pfQuest" then
		local old_QuestLogTitleButton_OnClick = QuestLogTitleButton_OnClick
		function QuestLogTitleButton_OnClick(button,self)
			if GF_LFGDescriptionEditBoxHasFocus[1] and button == "LeftButton" and IsShiftKeyDown() then
				local questName, questLevel = pfQuestCompat.GetQuestLogTitle(this:GetID() + FauxScrollFrame_GetOffset(EQL3_QuestLogListScrollFrame or ShaguQuest_QuestLogListScrollFrame or QuestLogListScrollFrame))
				local questids = pfDatabase:GetQuestIDs(this:GetID() + FauxScrollFrame_GetOffset(EQL3_QuestLogListScrollFrame or ShaguQuest_QuestLogListScrollFrame or QuestLogListScrollFrame))
				local questid = questids and tonumber(questids[1]) or 0
				GF_LFGDescriptionEditBox:Insert(GF_GetDifficultyColor(questLevel).."|Hquest:"..questid..":"..questLevel.."|h["..questName.."]|h|r")
				return true
			end
			old_QuestLogTitleButton_OnClick(button,self)
		end
	elseif arg1 == "ShaguDPS" then
		ShaguDPSLoaded = true
		local old_ShaguDPSAddData = ShaguDPS.parser.AddData
		function ShaguDPS.parser.AddData(self,source,action,target,value,school,datatype)
			if datatype == "heal" then
				if GF_PlayersCurrentlyInGroup[source] then
					if GF_PlayersCurrentlyInGroup[target] then
						if UnitExists(GF_PlayersCurrentlyInGroup[target]) then GF_AddHealingToLog(source,GF_PlayersCurrentlyInGroup[target],value) end
					elseif GF_PetCurrentlyInGroup[target] then
						if UnitExists(GF_PetCurrentlyInGroup[target][2]) then GF_AddHealingToLog(source,GF_PetCurrentlyInGroup[target][2],value) end
					end
				end
			elseif datatype == "damage" then
				if GF_PlayersCurrentlyInGroup[source] then GF_AddDamageToLog(source,target,value)
				elseif GF_PetCurrentlyInGroup[source] then GF_AddDamageToLog(GF_PetCurrentlyInGroup[source][1],target,value) end
			end
			old_ShaguDPSAddData(self,source,action,target,value,school,datatype)
		end
	end
end
function GF_Frame:CHAT_MSG_ADDON()
	if arg1 == "GF" and arg4 ~= UnitName("player") then GF_AddonListOfGuildAndPartyMembersWithAddon[arg4] = true GF_ParseIncomingAddonMessages(arg2,arg4) GF_OnUpdateFunctions["WhoData"] = GF_RequestAdditionalWhoDataUpdates end
end
function GF_Frame:FRIENDLIST_UPDATE()
	if GetNumFriends() ~= GF_CurrentNumFriends then GF_OnUpdateFunctions["UpdateFriends"] = GF_UpdateFriendsList GF_UpdateTicker = GetTime() + .1 end
end
function GF_Frame:GUILD_ROSTER_UPDATE()
	if GetNumGuildMembers() ~= GF_CurrentNumGuildies then GF_UpdateGuildiesList() end
end
function GF_Frame:PARTY_INVITE_REQUEST()
	if GF_RequestInviteTime[arg1] and GF_RequestInviteTime[arg1] > time() then AcceptGroup() end
end
function GF_Frame:PARTY_MEMBERS_CHANGED()
	GF_OnUpdateFunctions["UpdateGroup"] = GF_UpdateGroup
	GF_UpdateTicker = GetTime() + .1
end
function GF_Frame:PARTY_LEADER_CHANGED()
	GF_OnUpdateFunctions["UpdateGroup"] = GF_UpdateGroup
	GF_UpdateTicker = GetTime() + .1
end
function GF_Frame:PLAYER_ENTERING_WORLD() -- When logging in in a group, PLAYER_ENTERING_WORLD > PARTY_MEMBERS_CHANGED > PARTY_MEMBERS_CHANGED again > ZONE_CHANGED_NEW_AREA... When party member goes offline, PARTY_MEMBERS_CHANGED... online, PARTY_MEMBERS_CHANGED
-- When switching to raid, PARTY_MEMBERS_CHANGED > RAID_ROSTER_UPDATE... when raid member goes offline PARTY_MEMBERS_CHANGED > RAID_ROSTER_UPDATE... online PARTY_MEMBERS_CHANGED > RAID_ROSTER_UPDATE... reloading UI does nothing
	for _,event in pairs({'PLAYER_LEAVING_WORLD','PARTY_MEMBERS_CHANGED','PARTY_LEADER_CHANGED','RAID_ROSTER_UPDATE','PARTY_INVITE_REQUEST','FRIENDLIST_UPDATE','GUILD_ROSTER_UPDATE','WHO_LIST_UPDATE','UNIT_NAME_UPDATE',
	'UPDATE_MOUSEOVER_UNIT','PLAYER_LEVEL_UP','CHAT_MSG_ADDON','ZONE_CHANGED','ZONE_CHANGED_INDOORS','ZONE_CHANGED_NEW_AREA', }) do
		GF_Frame:RegisterEvent(event)
	end
	GF_LoadVariables()
	GF_LoadSettings()
	GF_UpdateBlackListItems()
	GF_ApplyFiltersToGroupList()
	if not GF_SavedVariables.addonsendtimeout or GF_SavedVariables.addonsendtimeout + 900 < time() then
		GF_SavedVariables.addonsendtimeout = time()
		GF_OnStartupQueueURequest = 1
	else
		if GetGuildInfo("player") then SendAddonMessage("GF", "Z", "GUILD") end
		if GF_NumPartyMembersOnline > 1 then SendAddonMessage("GF", "Z", "PARTY") end
	end
	GF_BindKey("I", "GF_SHOW_FRAME")
	GF_BindKey("SHIFT-G", "GF_SHOW_GROUP")
	GF_BindKey("SHIFT-L", "GF_SHOW_LOG")
	SaveBindings(1)
	GF_JoinWorld()
	GF_Frame:UnregisterEvent("PLAYER_ENTERING_WORLD")
	GF_Frame:UnregisterEvent("ADDON_LOADED")
	--UIErrorsFrame:SetScript('OnEvent', function(self,event,...) if not GF_SavedVariables.systemfilter or not GF_Error_Messages[arg1] then old_UIErrorsFrame_OnEvent(self,event,...) end end)
	--if IsAddOnLoaded("LFG") and LFGMain and LFGRoleCheckRoleTank and LFGRoleCheckAcceptRole then LFGRoleCheck:SetScript("OnShow", GF_LFGRoleCheck_OnShow) LFGGroupReady:SetScript("OnShow", GF_LFGGroupReady_OnShow) findGroupButton:SetScript("OnClick", GF_findGroupButton_OnClick) findMoreButton:SetScript("OnClick", GF_findMoreButton_OnClick) leaveQueueButton:SetScript("OnClick", GF_leaveQueueButton_OnClick) end
end
function GF_Frame:PLAYER_LEAVING_WORLD()
	GF_PerCharVariables.searchtext = GF_GroupsFrameDescriptionEditBox:GetText()
	GF_PerCharVariables.searchlfgtext = GF_LFGDescriptionEditBox:GetText()
	GF_PerCharVariables.searchlfgwhispertext = GF_GetWhoWhisperEditBox:GetText()
	if strlen(GF_GroupChannelEditBox:GetText()) > 1 then GF_SavedVariables.groupchannelname = GF_GroupChannelEditBox:GetText() else GF_GroupChannelEditBox:SetText(GF_SavedVariables.groupchannelname) end
	if GF_PerCharVariables.CurrentGroup["TempData"] then GF_PerCharVariables.CurrentGroup["TempData"][5] = time() end
	if SomeoneInCombat then UpdateInCombat() end
end
function GF_Frame:PLAYER_LEVEL_UP()
	GF_FixLFGStrings()
	if GF_PerCharVariables.getwhowhisperlevel == 0 then GF_GetWhoLevelDropdownTextLabel:SetText(LEVEL.." "..UnitLevel("player").."±") end
	GF_UpdateQueueLFTButton()
end
function GF_Frame:RAID_ROSTER_UPDATE()
	GF_OnUpdateFunctions["UpdateGroup"] = GF_UpdateGroup
	GF_UpdateTicker = GetTime() + .1
end
function GF_Frame:UNIT_NAME_UPDATE()
	if ProcessedFirstChannelMessage and string.sub(arg1,1,2) ~= "0x" then GF_OnUpdateFunctions["UpdateGroup"] = GF_UpdateGroup GF_UpdateTicker = GetTime() + .1 end
end
function GF_Frame:UPDATE_MOUSEOVER_UNIT()
	if UnitIsPlayer("mouseover") and UnitIsFriend("player","mouseover") then GF_WhoTable[GF_RealmName][UnitName("mouseover")] = { UnitLevel("mouseover"), ({UnitClass("mouseover")})[2], GetGuildInfo("mouseover") or "", time() } end
end
function GF_Frame:WHO_LIST_UPDATE()
	GF_WhoListUpdated()
end
function GF_Frame:ZONE_CHANGED()
	GF_UpdateGroup()
end
function GF_Frame:ZONE_CHANGED_INDOORS()
	GF_UpdateGroup()
end
function GF_Frame:ZONE_CHANGED_NEW_AREA()
	GF_UpdateGroup()
end

function GF_AddDamageToLog(source,target,value) -- GF_PerCharVariables.CurrentGroup["TempData"][3][playername] = { level,class,damage,healing,timeincombat }
	if source ~= target then
		GF_PerCharVariables.CurrentGroup["TempData"][3][source][3] = GF_PerCharVariables.CurrentGroup["TempData"][3][source][3] + tonumber(value)
		if not PlayersInCombat[source] then PlayersInCombat[source] = GetTime() SomeoneInCombat = true end
	end
end
function GF_Frame:CHAT_MSG_COMBAT_SELF_HITS() -- You hit (target) for (damage)(W)
--COMBATHITSELFOTHER,COMBATHITCRITSELFOTHER,COMBATHITSCHOOLSELFOTHER,COMBATHITCRITSCHOOLSELFOTHER
--"You hit %s for %d.", "You crit %s for %d.", "You hit %s for %d %s damage.", "You crit %s for %d %s damage."
	for i=1,4 do
		local _,_,target,damage = string.find(arg1,GF_Parser[i])
		if damage then GF_AddDamageToLog(UnitName("player"),target,damage) return end
	end
end
function GF_Frame:CHAT_MSG_COMBAT_PET_HITS() -- 'Your pet' hits (target) for (damage)(W)
--COMBATHITOTHEROTHER,COMBATHITCRITOTHEROTHER,COMBATHITSCHOOLOTHEROTHER,COMBATHITCRITSCHOOLOTHEROTHER
--"%s hits %s for %d.", "%s crits %s for %d.", "%s hits %s for %d %s damage.", "%s crits %s for %d %s damage."
	for i=5,8 do
		local _,_,_,target,damage = string.find(arg1,GF_Parser[i])
		if damage then GF_AddDamageToLog(UnitName("player"),target,damage) return end
	end
end
function GF_Frame:CHAT_MSG_COMBAT_PARTY_HITS()
	GF_Process_Other_COMBAT()
end
function GF_Frame:CHAT_MSG_COMBAT_FRIENDLYPLAYER_HITS()
	GF_Process_Other_COMBAT()
end
function GF_Frame:CHAT_MSG_COMBAT_HOSTILEPLAYER_HITS()
	GF_Process_Other_COMBAT()
end
function GF_Process_Other_COMBAT() -- (source) hits (target) for (damage)(W)
--COMBATHITOTHEROTHER,COMBATHITCRITOTHEROTHER,COMBATHITSCHOOLOTHEROTHER,COMBATHITCRITSCHOOLOTHEROTHER
--"%s hits %s for %d.", "%s crits %s for %d.", "%s hits %s for %d %s damage.", "%s crits %s for %d %s damage."
	for i=5,8 do
		local _,_,source,target,damage = string.find(arg1,GF_Parser[i])
		if damage then
			if GF_PlayersCurrentlyInGroup[source] then
				GF_AddDamageToLog(source,target,damage)
			elseif GF_PetCurrentlyInGroup[source] then
				GF_AddDamageToLog(GF_PetCurrentlyInGroup[source][1],target,damage)
			end
			return
		end
	end
end

function GF_Frame:CHAT_MSG_SPELL_SELF_DAMAGE() -- Your 'spell' hits (target) for (damage)(W)
--SPELLLOGSELFOTHER,SPELLLOGCRITSELFOTHER,SPELLLOGSCHOOLSELFOTHER,SPELLLOGCRITSCHOOLSELFOTHER
--"Your %s hits %s for %d.", "Your %s crits %s for %d.","Your %s hits %s for %d %s damage.", "Your %s crits %s for %d %s damage."
	for i=9,12 do
		local _,_,_,target,damage = string.find(arg1,GF_Parser[i])
		if damage then GF_AddDamageToLog(UnitName("player"),target,damage) return end
	end
end
function GF_Frame:CHAT_MSG_SPELL_PET_DAMAGE() -- 'Your pet' 'spell' hits (target) for (damage)(W)
--SPELLLOGOTHEROTHER,SPELLLOGCRITOTHEROTHER,SPELLLOGSCHOOLOTHEROTHER,SPELLLOGCRITSCHOOLOTHEROTHER
--"%s's %s hits %s for %d.", "%s's %s crits %s for %d.","%s's %s hits %s for %d %s damage.", "%s's %s crits %s for %d %s damage."
	for i=13,16 do
		local _,_,_,_,target,damage = string.find(arg1,GF_Parser[i])
		if damage then GF_AddDamageToLog(UnitName("player"),target,damage) return end
	end
end
function GF_Frame:CHAT_MSG_SPELL_PARTY_DAMAGE()
	GF_Process_Other_SPELL()
end
function GF_Frame:CHAT_MSG_SPELL_FRIENDLYPLAYER_DAMAGE()
	GF_Process_Other_SPELL()
end
function GF_Frame:CHAT_MSG_SPELL_HOSTILEPLAYER_DAMAGE()
	GF_Process_Other_SPELL()
end
function GF_Process_Other_SPELL() -- (source) 'spell' hits (target) for (damage)(W)
--SPELLLOGOTHEROTHER,SPELLLOGCRITOTHEROTHER,SPELLLOGSCHOOLOTHEROTHER,SPELLLOGCRITSCHOOLOTHEROTHER
--"%s's %s hits %s for %d.", "%s's %s crits %s for %d.","%s's %s hits %s for %d %s damage.", "%s's %s crits %s for %d %s damage."
	for i=13,16 do
		local _,_,source,_,target,damage = string.find(arg1,GF_Parser[i])
		if damage then
			if GF_PlayersCurrentlyInGroup[source] then
				GF_AddDamageToLog(source,target,damage)
			elseif GF_PetCurrentlyInGroup[source] then
				GF_AddDamageToLog(GF_PetCurrentlyInGroup[source][1],target,damage)
			end
			return
		end
	end
end

function GF_Frame:CHAT_MSG_SPELL_PERIODIC_CREATURE_DAMAGE() -- (target) suffers (damage) 'school' from (source)(W)
--PERIODICAURADAMAGESELFOTHER,PERIODICAURADAMAGEOTHEROTHER
--"%s suffers %d %s damage from your %s.","%s suffers %d %s damage from %s's %s."
	local _,_,target,damage = string.find(arg1,GF_Parser[29])
	if damage then GF_AddDamageToLog(UnitName("player"),target,damage) return end
	local _,_,target,damage,_,source = string.find(arg1,GF_Parser[30])
	if damage then if GF_PlayersCurrentlyInGroup[source] then GF_AddDamageToLog(source,target,damage) end return end
end

function GF_Frame:CHAT_MSG_SPELL_DAMAGESHIELDS_ON_SELF() -- You reflect (damage) 'school' to (target)(W)
--DAMAGESHIELDSELFOTHER
--"You reflect %d %s damage to %s."
	local _,_,damage,_,target = string.find(arg1,GF_Parser[31])
	if target then GF_AddDamageToLog(UnitName("player"),target,damage) return end
end
function GF_Frame:CHAT_MSG_SPELL_DAMAGESHIELDS_ON_OTHERS() -- (source) reflects (damage) 'school' to (target)(W)
--DAMAGESHIELDOTHERSELF,DAMAGESHIELDOTHEROTHER
--"%s reflects %d %s damage to you.","%s reflects %d %s damage to %s."
	local _,_,source,damage = string.find(arg1,GF_Parser[32])
	if damage then if GF_PlayersCurrentlyInGroup[source] then GF_AddDamageToLog(source,UnitName("player"),damage) end return end
	local _,_,source,damage,_,target = string.find(arg1,GF_Parser[33])
	if target then if GF_PlayersCurrentlyInGroup[source] then GF_AddDamageToLog(source,target,damage) end return end
end

function GF_AddHealingToLog(source,unitid,value)
	if SomeoneInCombat or UnitAffectingCombat(GF_PlayersCurrentlyInGroup[source]) or UnitAffectingCombat(unitid) then
		if not PlayersInCombat[source] then
			PlayersInCombat[source] = GetTime()
			SomeoneInCombat = true
		end
		GF_PerCharVariables.CurrentGroup["TempData"][3][source][4] = GF_PerCharVariables.CurrentGroup["TempData"][3][source][4] + math.min(UnitHealthMax(unitid) - UnitHealth(unitid), tonumber(value))
	end
end
function GF_Frame:CHAT_MSG_SPELL_SELF_BUFF() -- Your 'spell' heals (target) for (healing)(W)
--HEALEDSELFSELF,HEALEDCRITSELFSELF,HEALEDSELFOTHER,HEALEDCRITSELFOTHER
--"Your %s heals you for %d.","Your %s critically heals you for %d.","Your %s heals %s for %d.","Your %s critically heals %s for %d."
	for i=17,18 do
		local _,_,_,healing = string.find(arg1,GF_Parser[i])
		if healing then GF_AddHealingToLog(UnitName("player"),"player",healing) return end
	end
	for i=19,20 do
		local _,_,_,target,healing = string.find(arg1,GF_Parser[i])
		if healing then
			if GF_PlayersCurrentlyInGroup[target] then
				if UnitExists(GF_PlayersCurrentlyInGroup[target]) then GF_AddHealingToLog(UnitName("player"),GF_PlayersCurrentlyInGroup[target],healing) end
			elseif GF_PetCurrentlyInGroup[target] then
				if UnitExists(GF_PetCurrentlyInGroup[target][2]) then GF_AddHealingToLog(UnitName("player"),GF_PetCurrentlyInGroup[target][2],healing) end
			end
			return
		end
	end
end
function GF_Frame:CHAT_MSG_SPELL_PARTY_BUFF()
	GF_Process_Other_BUFF()
end
function GF_Frame:CHAT_MSG_SPELL_FRIENDLYPLAYER_BUFF()
	GF_Process_Other_BUFF()
end
function GF_Frame:CHAT_MSG_SPELL_HOSTILEPLAYER_BUFF()
	GF_Process_Other_BUFF()
end
function GF_Process_Other_BUFF() -- (source) 'spell' heals (target) for (healing)(W)
--HEALEDOTHERSELF,HEALEDCRITOTHERSELF,HEALEDOTHEROTHER,HEALEDCRITOTHEROTHER
--"%s's %s heals you for %d.","%s's %s critically heals you for %d.","%s's %s heals %s for %d.","%s's %s critically heals %s for %d."
	for i=21,22 do
		local _,_,source,_,healing = string.find(arg1,GF_Parser[i])
		if healing then if GF_PlayersCurrentlyInGroup[source] then GF_AddHealingToLog(source,"player",healing) end return end
	end
	for i=23,24 do
		local _,_,source,_,target,healing = string.find(arg1,GF_Parser[i])
		if healing then
			if GF_PlayersCurrentlyInGroup[source] then
				if GF_PlayersCurrentlyInGroup[target] then
					if UnitExists(GF_PlayersCurrentlyInGroup[target]) then GF_AddHealingToLog(source,GF_PlayersCurrentlyInGroup[target],healing) end
				elseif GF_PetCurrentlyInGroup[target] then
					if UnitExists(GF_PetCurrentlyInGroup[target][2]) then GF_AddHealingToLog(source,GF_PetCurrentlyInGroup[target][2],healing) end
				end
			end
			return
		end
	end
end

function GF_Frame:CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS() -- You gain (healing) from (target) 'spell'
--PERIODICAURAHEALOTHERSELF,PERIODICAURAHEALSELFSELF
--"You gain %d health from %s's %s.","You gain %d health from %s."
	local _,_,healing,source = string.find(arg1,GF_Parser[25])
	if source then if GF_PlayersCurrentlyInGroup[source] then GF_AddHealingToLog(source,"player",healing) return end end
	local _,_,healing = string.find(arg1,GF_Parser[26])
	if healing then GF_AddHealingToLog(UnitName("player"),"player",healing) return end
end
function GF_Frame:CHAT_MSG_SPELL_PERIODIC_PARTY_BUFFS()
	GF_Process_Other_PERIODIC()
end
function GF_Frame:CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_BUFFS()
	GF_Process_Other_PERIODIC()
end
function GF_Frame:CHAT_MSG_SPELL_PERIODIC_HOSTILEPLAYER_BUFFS()
	GF_Process_Other_PERIODIC()
end
function GF_Process_Other_PERIODIC() -- (target) gains (healing) from (source) 'spell'
--PERIODICAURAHEALSELFOTHER,PERIODICAURAHEALOTHEROTHER
--"%s gains %d health from your %s.","%s gains %d health from %s's %s."
	local _,_,target,healing = string.find(arg1,GF_Parser[27])
	if healing then
		if GF_PlayersCurrentlyInGroup[target] then
			if UnitExists(GF_PlayersCurrentlyInGroup[target]) then GF_AddHealingToLog(UnitName("player"),GF_PlayersCurrentlyInGroup[target],healing) end
		elseif GF_PetCurrentlyInGroup[target] then
			if UnitExists(GF_PetCurrentlyInGroup[target][2]) then GF_AddHealingToLog(UnitName("player"),GF_PetCurrentlyInGroup[target][2],healing) end
		end
	end
	local _,_,target,healing,source = string.find(arg1,GF_Parser[28])
	if healing and GF_PlayersCurrentlyInGroup[source] then
		if GF_PlayersCurrentlyInGroup[target] then
			if UnitExists(GF_PlayersCurrentlyInGroup[target]) then GF_AddHealingToLog(source,GF_PlayersCurrentlyInGroup[target],healing) end
		elseif GF_PetCurrentlyInGroup[target] then
			if UnitExists(GF_PetCurrentlyInGroup[target][2]) then GF_AddHealingToLog(source,GF_PetCurrentlyInGroup[target][2],healing) end
		end
	end
end

function GF_Frame:COMBAT_LOG_EVENT_UNFILTERED(event,tim,token,sourceGUID,source,sourceFlag,targetGUID,target,targetFlag,value,spellName,spellType,amount,over) -- TBC/WOTLK process
	local parseFunc = GF_Combat_Log_FilterList[token]
	if parseFunc then
		if GF_PlayersCurrentlyInGroup[source] then
			parseFunc(source,target,amount or value,over)
		elseif GF_PetCurrentlyInGroup[source] then
			parseFunc(GF_PetCurrentlyInGroup[source][1],target,amount or value or 0,over or 0)
		end
	end
end
function GF_FilterDamage(source,target,damage,over)
	if GF_PerCharVariables.CurrentGroup["TempData"][3][source] and source ~= target then
		GF_PerCharVariables.CurrentGroup["TempData"][3][source][3] = GF_PerCharVariables.CurrentGroup["TempData"][3][source][3] + damage
		if not PlayersInCombat[source] then PlayersInCombat[source] = GetTime() SomeoneInCombat = true end
	end
end
function GF_FilterHealing(source,target,healing,over)
	local unitid
	if GF_PlayersCurrentlyInGroup[target] and UnitExists(GF_PlayersCurrentlyInGroup[target]) then unitid = GF_PlayersCurrentlyInGroup[target] elseif GF_PetCurrentlyInGroup[target] and UnitExists(GF_PetCurrentlyInGroup[target][2]) then unitid = GF_PetCurrentlyInGroup[target][2] end
	if GF_PerCharVariables.CurrentGroup["TempData"][3][source] and unitid and (SomeoneInCombat or UnitAffectingCombat(GF_PlayersCurrentlyInGroup[source]) or UnitAffectingCombat(unitid)) then
		if not PlayersInCombat[source] then
			PlayersInCombat[source] = GetTime()
			SomeoneInCombat = true
		end
		GF_PerCharVariables.CurrentGroup["TempData"][3][source][4] = GF_PerCharVariables.CurrentGroup["TempData"][3][source][4] + (healing - over)
	end
end

function GF_ChatFunctions(event,arg1,arg2,arg8,arg9) -- Functions above reset the chat processing below. Don't have to worry about lag and timers this way.
	getglobal("GF_"..event)(event,arg1,arg2,arg8,arg9)
end

function GF_BATTLEGROUND(event,arg1,arg2,arg8,arg9)
	if not GF_WhoTable[GF_RealmName][arg2] or GF_WhoTable[GF_RealmName][arg2][1] == 0 then GF_GetPlayersCurrentlyInGroup() end
	GF_PreviousMessage[arg2] = {true}
	if GF_TranslationLoaded and GF_SavedVariables.showtranslate then
		local StringA = GF_TranslateString(arg1)
		if languageName ~= GF_MY_LANGUAGE then GF_PreviousMessage[arg2][2] = StringA if GF_SavedVariables.showuntranslated then GF_AddLogMessage(arg1,4,true,arg2,arg8,arg9,event) GF_PreviousMessage[arg2][3] = true end end
		GF_AddLogMessage(StringA,4,true,arg2,arg8,arg9,event)
	else
		GF_AddLogMessage(arg1,4,true,arg2,arg8,arg9,event)
	end
end
function GF_BATTLEGROUND_LEADER(event,arg1,arg2,arg8,arg9)
	if not GF_WhoTable[GF_RealmName][arg2] or GF_WhoTable[GF_RealmName][arg2][1] == 0 then GF_GetPlayersCurrentlyInGroup() end
	GF_PreviousMessage[arg2] = {true}
	if GF_TranslationLoaded and GF_SavedVariables.showtranslate then
		local StringA = GF_TranslateString(arg1)
		if languageName ~= GF_MY_LANGUAGE then GF_PreviousMessage[arg2][2] = StringA if GF_SavedVariables.showuntranslated then GF_AddLogMessage(arg1,4,true,arg2,arg8,arg9,event) GF_PreviousMessage[arg2][3] = true end end
		GF_AddLogMessage(StringA,4,true,arg2,arg8,arg9,event)
	else
		GF_AddLogMessage(arg1,4,true,arg2,arg8,arg9,event)
	end
end
function GF_CHANNEL(event,arg1,arg2,arg8,arg9)
	GF_ProcessChatMessages(event,arg1,arg2,arg8,arg9)
end
function GF_COMBAT_FACTION_CHANGE(event,arg1,arg2,arg8,arg9)
	GF_AddLogMessage(arg1,6,true,"SYSTEM",arg8,arg9,event)
	if GF_SavedVariables.showloottexts then GF_PreviousMessage["SYSTEM"] = {true} else GF_PreviousMessage["SYSTEM"] = {} end
end
function GF_COMBAT_HONOR_GAIN(event,arg1,arg2,arg8,arg9)
	GF_AddLogMessage(arg1,6,true,"SYSTEM",arg8,arg9,event)
	if GF_SavedVariables.showloottexts then GF_PreviousMessage["SYSTEM"] = {true} else GF_PreviousMessage["SYSTEM"] = {} end
end
function GF_COMBAT_XP_GAIN(event,arg1,arg2,arg8,arg9)
	GF_AddLogMessage(arg1,6,true,"SYSTEM",arg8,arg9,event)
	if GF_SavedVariables.showloottexts then GF_PreviousMessage["SYSTEM"] = {true} else GF_PreviousMessage["SYSTEM"] = {} end
end
function GF_EMOTE(event,arg1,arg2,arg8,arg9)
	GF_CheckForEmotes(arg1,arg2)
end
function GF_GUILD(event,arg1,arg2,arg8,arg9)
	GF_PreviousMessage[arg2] = {true}
	if GF_TranslationLoaded and GF_SavedVariables.showtranslate then
		local StringA = GF_TranslateString(arg1)
		if languageName ~= GF_MY_LANGUAGE then GF_PreviousMessage[arg2][2] = StringA if GF_SavedVariables.showuntranslated then GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,event) GF_PreviousMessage[arg2][3] = true end end
		GF_WhisperReceivedAddToWhisperHistoryList(StringA,arg2,event)
	else
		GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,event)
	end
end
function GF_HARDCORE(event,arg1,arg2,arg8,arg9)
	GF_ProcessChatMessages(event,arg1,arg2,arg8,arg9)
end
function GF_LOOT(event,arg1,arg2,arg8,arg9)
	GF_AddLogMessage(arg1,6,true,"SYSTEM",arg8,arg9,event)
	GF_CheckForLoot(arg1)
end
function GF_MONEY(event,arg1,arg2,arg8,arg9)
	GF_AddLogMessage(arg1,6,true,"SYSTEM",arg8,arg9,event)
	if GF_SavedVariables.showloottexts then GF_PreviousMessage["SYSTEM"] = {true} else GF_PreviousMessage["SYSTEM"] = {} end
end
function GF_MONSTER_EMOTE(event,arg1,arg2,arg8,arg9)
	GF_CheckForMonsterEmote(arg1,arg2)
end
function GF_MONSTER_SAY(event,arg1,arg2,arg8,arg9)
	GF_CheckForMonsterEmote(arg1,arg2)
end
function GF_MONSTER_YELL(event,arg1,arg2,arg8,arg9)
	GF_CheckForMonsterEmote(arg1,arg2)
end
function GF_OFFICER(event,arg1,arg2,arg8,arg9)
	GF_PreviousMessage[arg2] = {true}
	if GF_TranslationLoaded and GF_SavedVariables.showtranslate then
		local StringA = GF_TranslateString(arg1)
		if languageName ~= GF_MY_LANGUAGE then GF_PreviousMessage[arg2][2] = StringA if GF_SavedVariables.showuntranslated then GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,event) GF_PreviousMessage[arg2][3] = true end end
		GF_WhisperReceivedAddToWhisperHistoryList(StringA,arg2,event)
	else
		GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,event)
	end
end
function GF_PARTY(event,arg1,arg2,arg8,arg9)
	if not GF_WhoTable[GF_RealmName][arg2] or GF_WhoTable[GF_RealmName][arg2][1] == 0 then GF_GetPlayersCurrentlyInGroup() end
	GF_PreviousMessage[arg2] = {true}
	if GF_TranslationLoaded and GF_SavedVariables.showtranslate then
		local StringA = GF_TranslateString(arg1)
		if languageName ~= GF_MY_LANGUAGE then GF_PreviousMessage[arg2][2] = StringA if GF_SavedVariables.showuntranslated then GF_AddLogMessage(arg1,4,true,arg2,arg8,arg9,event) GF_PreviousMessage[arg2][3] = true end end
		GF_AddLogMessage(StringA,4,true,arg2,arg8,arg9,event)
	else
		GF_AddLogMessage(arg1,4,true,arg2,arg8,arg9,event)
	end
end
function GF_RAID(event,arg1,arg2,arg8,arg9)
	if not GF_WhoTable[GF_RealmName][arg2] or GF_WhoTable[GF_RealmName][arg2][1] == 0 then GF_GetPlayersCurrentlyInGroup() end
	GF_PreviousMessage[arg2] = {true}
	if GF_TranslationLoaded and GF_SavedVariables.showtranslate then
		local StringA = GF_TranslateString(arg1)
		if languageName ~= GF_MY_LANGUAGE then GF_PreviousMessage[arg2][2] = StringA if GF_SavedVariables.showuntranslated then GF_AddLogMessage(arg1,4,true,arg2,arg8,arg9,event) GF_PreviousMessage[arg2][3] = true end end
		GF_AddLogMessage(StringA,4,true,arg2,arg8,arg9,event)
	else
		GF_AddLogMessage(arg1,4,true,arg2,arg8,arg9,event)
	end
end
function GF_RAID_LEADER(event,arg1,arg2,arg8,arg9)
	if not GF_WhoTable[GF_RealmName][arg2] or GF_WhoTable[GF_RealmName][arg2][1] == 0 then GF_GetPlayersCurrentlyInGroup() end
	GF_PreviousMessage[arg2] = {true}
	if GF_TranslationLoaded and GF_SavedVariables.showtranslate then
		local StringA = GF_TranslateString(arg1)
		if languageName ~= GF_MY_LANGUAGE then GF_PreviousMessage[arg2][2] = StringA if GF_SavedVariables.showuntranslated then GF_AddLogMessage(arg1,4,true,arg2,arg8,arg9,event) GF_PreviousMessage[arg2][3] = true end end
		GF_AddLogMessage(StringA,4,true,arg2,arg8,arg9,event)
	else
		GF_AddLogMessage(arg1,4,true,arg2,arg8,arg9,event)
	end
end
function GF_RAID_WARNING(event,arg1,arg2,arg8,arg9)
	if not GF_WhoTable[GF_RealmName][arg2] or GF_WhoTable[GF_RealmName][arg2][1] == 0 then GF_GetPlayersCurrentlyInGroup() end
	GF_PreviousMessage[arg2] = {true}
	if GF_TranslationLoaded and GF_SavedVariables.showtranslate then
		local StringA = GF_TranslateString(arg1)
		if languageName ~= GF_MY_LANGUAGE then GF_PreviousMessage[arg2][2] = StringA if GF_SavedVariables.showuntranslated then GF_AddLogMessage(arg1,4,true,arg2,arg8,arg9,event) GF_PreviousMessage[arg2][3] = true end end
		GF_AddLogMessage(StringA,4,true,arg2,arg8,arg9,event)
	else
		GF_AddLogMessage(arg1,4,true,arg2,arg8,arg9,event)
	end
end
function GF_SAY(event,arg1,arg2,arg8,arg9)
	GF_ProcessChatMessages(event,arg1,arg2,arg8,arg9)
end
function GF_SYSTEM(event,arg1,arg2,arg8,arg9)
	if strfind(arg1, MARKED_AFK) then if GF_AutoAnnounceTimer then GF_TurnOffAnnounce(GF_AFK_ANNOUNCE_OFF) end return end
	GF_CheckForSystem(arg1)
end
function GF_TEXT_EMOTE(event,arg1,arg2,arg8,arg9)
	GF_CheckForEmotes(arg1,arg2)
end
function GF_WHISPER(event,arg1,arg2,arg8,arg9)
	if GF_BlackList[GF_RealmName][arg2] and not GF_ExcludeNames[arg2] then GF_PreviousMessage[arg2] = {} return end
	if not GF_WhoTable[GF_RealmName][arg2] and GF_PlayingOnTurtle and GF_SavedVariables.usewhoongroups and GF_SavedVariables.usefriendslist then GF_GetWhoData(arg2) end
	GF_PreviousMessage[arg2] = {true}
	if GF_TranslationLoaded and GF_SavedVariables.showtranslate then
		local StringA = GF_TranslateString(arg1)
		if languageName ~= GF_MY_LANGUAGE then GF_PreviousMessage[arg2][2] = StringA if GF_SavedVariables.showuntranslated then GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,event) GF_PreviousMessage[arg2][3] = true end end
		GF_WhisperReceivedAddToWhisperHistoryList(StringA,arg2,event)
	else
		GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,event)
		table.insert(DEFAULT_CHAT_FRAME.editBox.lastTell,1,arg2)
	end
end
function GF_WHISPER_INFORM(event,arg1,arg2,arg8,arg9)
	if not GF_WhoTable[GF_RealmName][arg2] and GF_PlayingOnTurtle and GF_SavedVariables.usewhoongroups and GF_SavedVariables.usefriendslist then GF_GetWhoData(arg2) end
	GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,event)
	table.insert(DEFAULT_CHAT_FRAME.editBox.lastTell,1,arg2)
	GF_PreviousMessage[arg2] = {true}
end
function GF_YELL(event,arg1,arg2,arg8,arg9)
	GF_ProcessChatMessages(event,arg1,arg2,arg8,arg9)
end

function GF_ProcessChatMessages(event,arg1,arg2,arg8,arg9,delayed) -- Chat processing functions
	if GF_SavedVariables.showformattedchat and not ItemRefTooltip:IsVisible() and not delayed and not GF_ChatReplaceItemLink(arg1,true) then table.insert(GF_LogHistory[GF_RealmName]["Delay"], {"Item",time()+1,event,arg1,arg2,arg8,arg9}) GF_PreviousMessage[arg2] = {} return end
	arg1 = GF_CleanUpMessagesOfBadLinks(arg1)
	arg2 = gsub(arg2,".* ","")
	local arg9Fixed = strupper(string.gsub(arg9, " - .*", ""))
	if arg9Fixed == "LFG" then if GF_LFG_BLOCK_TRIGGER[({string.find(arg1,"^(.-):")})[3]] then GF_LFGUpdateText(arg1,arg2) GF_PreviousMessage[arg2] = {true} return else dontCheckSpam = true end else dontCheckSpam = nil end
	local logType = GF_FilterMessageType(gsub(arg1,"[\\\"]", " "),arg2,arg9Fixed,event) or 5 -- 1=group,2=newgroup,3=filteredgroup,4=me,5=chat,6=loot,7=spam,8=guild,9=trade,10=blacklist,11=level
	--if fixedType then logType = fixedType arg1 = ">>"..strsub(arg1,3) end
	if logType > 7 and GF_PlayerMessages[arg2] and GF_PlayerMessages[arg2][1] and GF_PlayerMessages[arg2][1][1] then GF_PlayerMessages[arg2][1][1] = time() + 1 end -- To block multiple messages in series(Guild,Trade,Blacklist,Level)
	if not GF_CHANNEL_NO_LOG_LIST[arg9Fixed] then if GF_PreviousMessage[arg2][3] then GF_AddLogMessage(arg1,logType,true,arg2,arg8,arg9,event) end GF_AddLogMessage(GF_PreviousMessage[arg2][2] or arg1,logType,true,arg2,arg8,arg9,event) end
	if (logType ~= 10 and (languageName == GF_MY_LANGUAGE or not GF_SavedVariables.blockforeign) and (GF_ChatCheckFilters(logType,arg1,arg2,event) or arg2 == "SYSTEM" or GF_PerCharVariables.alwaysShown[event] or GF_PerCharVariables.alwaysShown[arg9Fixed]))
	or (GF_Guildies[arg2] and GF_PerCharVariables.alwaysShown["GUILD"]) or (GF_Friends[arg2] and GF_PerCharVariables.alwaysShown["FRIENDS"]) or (GF_PlayersCurrentlyInGroup[arg2] and GF_PerCharVariables.alwaysShown["PARTY"]) then
		if delayed then
			if event == "CHANNEL" then GF_AddChannelMessage(arg1,arg2,arg8,arg9) else GF_AddChatMessage(arg1,arg2,event) end
		else
			GF_PreviousMessage[arg2][1] = true
		end
	end
end
function GF_CheckForMonsterEmote(arg1,arg2) -- TODO: Add more Monster emotes or just keep blocking all?
	if GF_SavedVariables.systemfilter then
		--for i=1, getn(GF_MonsterEmoteFilters) do
			--if strfind(arg1, GF_MonsterEmoteFilters[i]) then
				GF_PreviousMessage[arg2] = {}
				return
			--end
		--end
	end
	GF_PreviousMessage[arg2] = {true}
end
function GF_CheckForEmotes(arg1,arg2)
	if GF_BlackList[GF_RealmName][arg2] and not GF_ExcludeNames[arg2] then
		GF_PreviousMessage[arg2] = {}
		return
	elseif GF_SavedVariables.systemfilter then
		for i=1, getn(GF_EmoteFilters) do if strfind(arg1, GF_EmoteFilters[i]) then GF_PreviousMessage[arg2] = {} return end end
		if GF_CheckForSpam(arg1,arg2) then GF_PreviousMessage[arg2] = {} return end
	elseif GF_CheckForSpam(arg1,arg2) then
		GF_PreviousMessage[arg2] = {}
		return
	end
	GF_PreviousMessage[arg2] = {true}
end
function GF_CheckForLoot(arg1) -- TODO: If an item is "WON" and then looted later, it will show the item twice? Add Green items but only show blue or better in scrolling chatframe. Put Green items at the end of the list(epics at top).
	local stringA
	local _,_,itemid = strfind(arg1,"|+%x+|+H(item:[%d+:]+)")
	if itemid then
		local _,_,iQuality = GetItemInfo(itemid)
		if iQuality == 0 then if not GF_SavedVariables.showloottexts then GF_PreviousMessage["SYSTEM"] = {} return end -- Block grey Items
		elseif iQuality > 1 then
			if iQuality == 2 then
				if not GF_SavedVariables.showloottexts then for i=1,7 do if strfind(arg1, GF_LootFilters[i]) then GF_PreviousMessage["SYSTEM"] = {} return end end end -- Block 'selected need/greed/pass' and rolls on green items
			else
				if not GF_SavedVariables.showloottexts then for i=1,2 do if strfind(arg1, GF_LootFilters[i]) then GF_PreviousMessage["SYSTEM"] = {} return end end end -- Block only 'need/greed' rolls on other items
			end
			for i=8,10 do
				_,_,stringA = strfind(arg1, GF_LootFilters[i])
				if stringA then
					if GF_NumPartyMembers > 1 then
						if not GF_PerCharVariables.CurrentGroup["TempData"][4][itemid] then
							GF_PerCharVariables.CurrentGroup["TempData"][4][itemid] = {stringA}
						else
							table.insert(GF_PerCharVariables.CurrentGroup["TempData"][4][itemid],stringA)
						end
					end
					break
				end
			end
		end
	end
	GF_PreviousMessage["SYSTEM"] = {true}
end
function GF_CheckForSystem(arg1)
	if arg1 == ERR_FRIEND_WRONG_FACTION or arg1 == ERR_FRIEND_NOT_FOUND then
		GF_PreviousMessage["SYSTEM"] = {}
		return
	elseif strfind(arg1, WHO_NUM_RESULTS) or strfind(arg1, WHO_NUM_RESULTS_P1) then -- Changed elseif strfind(arg1, WHO_NUM_RESULTS) then
		for i=1, GetNumWhoResults() do
			local name,guild,level,_,class = GetWhoInfo(i)
			if GF_Classes[class] then
				GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], guild, time() }
				GF_AddonWhoDataToBeSentBuffer[name] = GF_WhoTable[GF_RealmName][name]
				GF_AddonNamesFromWhoSinceLoggedOn[name] = time()
			end
			if GF_UrgentWhoRequest[name] or GF_WhoQueue[name] then GF_UrgentWhoRequest[name] = nil GF_WhoQueue[name] = nil GF_UpdateAndRequestTimer = .5 end
			if GF_IsGuildieOrPartyMemberUsingAddon() then GF_OnUpdateFunctions["Broadcast"] = GF_CheckForBroadCast end
			GF_TimeTillNextBroadcast = 0
		end
		GF_NextAvailableWhoTime = time() + GF_WhoCooldownTime
		triedToWhoName = nil
		FriendsFrame_Update()
	elseif GF_SavedVariables.showformattedchat and strfind(arg1,"|+Hplayer: ?(%w+)|+h%[[%w%s!=\,\-\+<>\":'\.]+%]|+h ") then
		local lfs,lfe,stringA = strfind(arg1,"|+Hplayer: ?(%w+)|+h%[[%w%s!=\,\-\+<>\":'\.]+%]|+h ")
		if stringA then
			if not GF_WhoTable[GF_RealmName][stringA] then
				for i=1,GetNumGuildMembers() do
					local name,_,_,level,class,_,_,_,online = GetGuildRosterInfo(i)
					if name then
						if online then GF_Guildies[name] = true else GF_Guildies[name] = nil end
						if GF_Classes[class] then GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], GetGuildInfo("player"), time() } end
					end
				end
				for i=1,GetNumFriends() do
					local name,level,class,_,online = GetFriendInfo(i)
					if not online or not name or name == UNKNOWN or not class or class == UNKNOWN then else GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], "", time()} end
				end
			end
			if GF_WhoTable[GF_RealmName][stringA] then
				if GF_WhoTable[GF_RealmName][arg2][1] == 0 then
					GF_PreviousMessage["SYSTEM"] = {true,strsub(arg1,1,lfs).."cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][stringA][2]] or "ffffff").."|Hplayer:"..stringA.."|h["..stringA.."]|h|r"..strsub(arg1,lfe)}
				else
					GF_PreviousMessage["SYSTEM"] = {true,strsub(arg1,1,lfs).."cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][stringA][2]] or "ffffff").."|Hplayer:"..stringA.."|h["..stringA..", "..GF_WhoTable[GF_RealmName][stringA][1].."]|h|r"..strsub(arg1,lfe)}
				end
				return
			end
		end
	elseif strfind(arg1, GF_ERR_GUILD_LEAVE_S) or strfind(arg1, ERR_GUILD_LEAVE_RESULT) then
		GF_UpdateGuildiesList()
	else
		for i=1, getn(GF_HardcoreMessages) do
			local lfs,lfe,stringA,stringB,tempVal = strfind(arg1, GF_HardcoreMessages[i])
			if stringB then
				if GF_WhoTable[GF_RealmName][stringB] then if tempVal then GF_WhoTable[GF_RealmName][stringB][1] = tonumber(tempVal) else GF_WhoTable[GF_RealmName][stringB][1] = 60 end end
				if not GF_SavedVariables.systemfilter then stringA = arg1 end
				lfs,lfe = strfind(" "..stringA, " "..stringB.." ")
				if lfs then
					GF_AddLogMessage(strsub(strsub(" "..stringA,1,lfs).."|cff9d9d9d|Hplayer:"..stringB.."|h["..stringB.."]|h|r "..strsub(stringA,lfe),2),5,true,"SYSTEM",nil,nil,"SYSTEM")
					if GF_WhoTable[GF_RealmName][stringB] then
						GF_PreviousMessage["SYSTEM"] = {true,strsub(strsub(" "..stringA,1,lfs).."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][stringB][2]] or "9d9d9d").."|Hplayer:"..stringB.."|h["..stringB.."]|h|r "..strsub(stringA,lfe),2)}
					else
						GF_PreviousMessage["SYSTEM"] = {true,strsub(strsub(" "..stringA,1,lfs).."|cff9d9d9d|Hplayer:"..stringB.."|h["..stringB.."]|h|r "..strsub(stringA,lfe),2)}
					end
					return
				end
			end
		end
		for name in gfind(arg1, "(%w+)") do
			if GF_SavedVariables.friendsToRemove[name] and GF_SavedVariables.friendsToRemove[name] + 30 > time() then
				GF_PreviousMessage["SYSTEM"] = {}
				return
			end
		end
		if GF_SavedVariables.systemfilter then
			for i=1, getn(GF_ServerMessageFilters) do -- Block Server Spam about RMT or WDB folders or Discord servers or whatever
				if strfind(arg1, GF_ServerMessageFilters[i]) then GF_PreviousMessage["SYSTEM"] = {} return end
			end
			for i=1, getn(GF_SystemMessageFilters) do -- 10-second timeout on quest and party-related messages
				local lfs,lfe,stringA = strfind(arg1, GF_SystemMessageFilters[i])
				if stringA then
					if i == 1 and GF_LFGInviteTime[stringA] and GF_LFGInviteTime[stringA][1] > time() then SendChatMessage(GF_LFGInviteTime[stringA][2],"WHISPER",nil,stringA) end
					if not GF_PlayerSystemMessage[stringA] then
						GF_PlayerSystemMessage[stringA] = { [i] = GetTime() + 10 }
						break
					elseif not GF_PlayerSystemMessage[stringA][i] or GF_PlayerSystemMessage[stringA][i] < GetTime() then
						GF_PlayerSystemMessage[stringA][i] = GetTime() + 10
						break
					else
						GF_PreviousMessage["SYSTEM"] = {}
						return
					end
				end
			end
		else
			local lfs,lfe,stringA = strfind(arg1, GF_SystemMessageFilters[1])
			if stringA and GF_LFGInviteTime[stringA] and GF_LFGInviteTime[stringA][1] > time() then SendChatMessage(GF_LFGInviteTime[stringA][2],"WHISPER",nil,stringA) end
		end
	end
	GF_PreviousMessage["SYSTEM"] = {true}
end
function GF_FilterMessageType(arg1,arg2,arg9,event,showInfo)
	GF_PreviousMessage[arg2] = {}
	if GF_BlackList[GF_RealmName][arg2] and not GF_ExcludeNames[arg2] then return 10 end
	GF_GetTypes(arg1,arg2,showInfo)
	if foundBlockList then GF_CheckForSpam(arg1,arg2) return 7 end
	if event == "HARDCORE" or arg9 == "HARDCORE" then foundHC = true end
	if foundGuild > 2.99 then if foundGuild <= 4 and foundLFM - 1.49 > GF_SavedVariables.FilterLevel then GF_CheckForGroups(arg1,arg2,event) elseif GF_SavedVariables.showformattedchat and GF_SavedVariables.usefriendslist then GF_GetWhoData(arg2) end return GF_CheckForSpam(arg1,arg2) or 8
	elseif foundTrades > 2.99 then if foundLFM - 1.49 > GF_SavedVariables.FilterLevel then GF_CheckForGroups(arg1,arg2,event) elseif GF_SavedVariables.showformattedchat and GF_SavedVariables.usefriendslist then GF_GetWhoData(arg2) end return GF_CheckForSpam(arg1,arg2) or 9
	elseif foundLFM < GF_SavedVariables.FilterLevel and foundLFG < GF_SavedVariables.FilterLevel then
		if GF_SavedVariables.showformattedchat and GF_SavedVariables.usefriendslist then GF_GetWhoData(arg2) end
		return GF_CheckForSpam(arg1,arg2) or 5
	end
	return GF_CheckForGroups(arg1,arg2,event)
end
function GF_CheckForGroups(arg1,arg2,event)
	if event == "SAY" then GF_GetWhoData(arg2) return GF_CheckForSpam(arg1,arg2,foundInGroup) end
	local foundInGroup,entry,add = GF_GetGroupInformation(arg1,arg2,nil,event)
	GF_GetWhoData(arg2,foundInGroup)
	if foundInGroup then
		if add then
			table.insert(GF_MessageList[GF_RealmName],1,entry)
			if GF_UpdateAndRequestTimer > 5 then GF_UpdateAndRequestTimer = 4 end
		end
		if not GF_EntryMatchesGroupFilterCriteria(entry) then foundInGroup = 3 elseif add then if GF_PerCharVariables.playsounds then GF_PlaySoundNextUpdate = true end if GF_SavedVariables.showgroupsinminimap then GF_ShowGroupsOnMinimap(GF_SavedVariables.showtranslate and entry.f or entry.message,arg2) end end
	end
	return GF_CheckForSpam(arg1,arg2,foundInGroup) or foundInGroup
end
function GF_GetTypes(arg1,arg2,showInfo)
	if showInfo == true then print(arg1) end

	local strPos,tPos,pVal,tVal,bCap,charType,stringA,stringB,stringC,stringD,possibleGold,firstLFMLFG,breakAfter = 1
	local TableA,languageID,TradeFixNames,TableB,TableC = {},{},{}
	foundIgnore,foundGuild,foundGuildExclusion,foundLFM,foundLFG,foundTrades,foundTradesExclusion,numGroupWords,languageName = 0,0,0,0,0,0,0,0,GF_MY_LANGUAGE
	foundClass,foundDungeon,foundRaid,foundPvP,foundHC,foundNotHC,foundBlockList = nil,nil,nil,nil,nil,nil,nil
	lfmlfgName,groupName,foundQuest,foundDFlags,foundPFlags,foundCFlags,lfmPosition,groupPosition = {},{},{},{},{},{},{},{}

	while true do -- Save any hyperlinks
		if string.find(arg1,"|H") then
			_,tVal,stringA,stringB,stringC,stringD = string.find(arg1,"(.-)(|[%x%p]+H%a+.-|h%[)(.-)(%]|h|r)",strPos)
			if stringA then
				if stringA ~= "" then table.insert(TableA, {stringA}) end
				table.insert(TableA, stringB)
				table.insert(TableA, {stringC})
				table.insert(TableA, stringD)
				strPos = tVal+1
			else
				stringA = string.sub(arg1,strPos)
				if stringA ~= "" then table.insert(TableA, {string.sub(arg1,strPos)}) end
				break
			end
		else
			table.insert(TableA, {arg1})
			break
		end
	end
	local tLen,pos = getn(TableA),1
	while pos <= tLen do
		if type(TableA[pos]) == "table" then
			stringA = TableA[pos][1]
			TableA[pos][1] = nil
			strPos,tPos,pVal,tVal,charType,TableB = 1,1,nil,nil,nil,{}
			stringB = string.lower(stringA)
			while true do
				bCap = strbyte(stringB,tPos)
				if not bCap then break end
				if bCap < 128 then
					if bCap == 32 then
						if bCap ~= pVal then -- Only add the first space
							if charType == 1 and not TableB[2] and strbyte(stringB,tPos+2) == 32 and strbyte(stringB,tPos+4) == 32 and GF_NORMAL_LETTERS[strbyte(stringB,tPos+1)] and GF_NORMAL_LETTERS[strbyte(stringB,tPos+3)] then
								table.insert(TableB, strsub(stringB,tPos+1,tPos+1)..strsub(stringB,tPos+3,tPos+3))
								tPos = tPos + 4
								while true do if strbyte(stringB,tPos+2) == 32 and GF_NORMAL_LETTERS[strbyte(stringB,tPos+1)] then table.insert(TableB, strsub(stringB,tPos+1,tPos+1)) tPos = tPos + 2 else break end end
								if GF_NORMAL_LETTERS[strbyte(stringB,tPos+2)] then table.insert(TableA[pos], {table.concat(TableB),table.concat(TableB)}) TableB = {} table.insert(TableA[pos], " ") end
							else
								if TableB[1] then table.insert(TableA[pos], {charType and strsub(stringA,strPos,tPos-1) or table.concat(TableB),table.concat(TableB)}) TableB = {} table.insert(TableA[pos], " ") elseif TableA[pos][1] then table.insert(TableA[pos], " ") end
							end
							charType = nil
						end
						strPos = tPos+1 -- Always move strPos forward if space(never save two spaces)
					elseif GF_NORMAL_LETTERS[bCap] then
						if bCap ~= pVal then
							if charType == 1 then -- Previous was a letter.
								if bCap == tVal and strbyte(stringB,tPos+1) == pVal and strbyte(stringB,tPos+2) == bCap then
									table.insert(TableB, strsub(stringB,tPos,tPos+1))
									tPos = tPos + 2
									while true do if strbyte(stringB,tPos+1) == pVal then tPos = tPos + 1 if strbyte(stringB,tPos+1) == bCap then tPos = tPos + 1 else break end else break end end
								else
									table.insert(TableB, strchar(bCap))
								end
							else -- Previous was either punctuation or a space
								if TableB[1] then table.insert(TableA[pos], {table.concat(TableB),table.concat(TableB)}) table.insert(TableA[pos], "") TableB = {} end -- if punctuation, it would be saved in TableB
								table.insert(TableB, strchar(bCap))
								strPos = tPos -- Move string position after save
							end
							charType = 1
						elseif GF_ALLOW_TWO_CHARACTERS[bCap] then
							table.insert(TableB, strchar(bCap))
							tVal = strbyte(stringB,tPos+1)
							if tVal == bCap then if tVal == 105 then table.insert(TableB, "i") end tPos = tPos + 1 while true do if strbyte(stringB,tPos+1) == bCap then tPos = tPos + 1 else break end end end
						end
					elseif GF_ALLOW_TWO_CHARACTERS[bCap] then -- Only gets here with numbers
						if charType ~= 2 then -- Previous was not a number
							if TableB[1] then table.insert(TableA[pos], {strsub(stringA,strPos,tPos-1),table.concat(TableB)})  table.insert(TableA[pos], "") TableB = {} end
							strPos = tPos
						end
						table.insert(TableB, strchar(bCap))
						charType = 2
					else
						if bCap ~= pVal then
							if charType == 1 and not TableB[2] and GF_PUNCTUATION_SPACING_FIX[bCap] and strbyte(stringB,tPos+2) == bCap and strbyte(stringB,tPos+4) == bCap and GF_NORMAL_LETTERS[strbyte(stringB,tPos+1)] and GF_NORMAL_LETTERS[strbyte(stringB,tPos+3)] then
								table.insert(TableB, strsub(stringB,tPos+1,tPos+1)..strsub(stringB,tPos+3,tPos+3))
								tPos = tPos + 4
								while true do if strbyte(stringB,tPos+2) == bCap and GF_NORMAL_LETTERS[strbyte(stringB,tPos+1)] then table.insert(TableB, strsub(stringB,tPos+1,tPos+1)) tPos = tPos + 2 else break end end
								if GF_NORMAL_LETTERS[strbyte(stringB,tPos+2)] then table.insert(TableA[pos], {table.concat(TableB),table.concat(TableB)}) TableB = {} table.insert(TableA[pos], strchar(bCap)) end
								strPos = tPos
							else
								if charType then if TableB[1] then table.insert(TableA[pos], {strsub(stringA,strPos,tPos-1),table.concat(TableB)})  table.insert(TableA[pos], "") TableB = {} end strPos = tPos end -- Previous was letter or number
								table.insert(TableB, strchar(bCap))
							end
							charType = nil
						end
					end
					tPos = tPos + 1
				else
					if GF_ACCENT_ASCII_LETTERS[bCap] then
						if bCap == 226 then -- Punctuation characters
							TableC = GF_ACCENT_ASCII_LETTERS[strsub(stringB,tPos,tPos+2)]
							if not TableC then if strbyte(stringB,tPos+2) == 128 then TableC = GF_ACCENT_ASCII_LETTERS[strsub(stringB,tPos,tPos+3)] if not TableC then TableC = {strsub(stringB,tPos,tPos+3),strbyte(stringB,tPos+3)} end tVal = 4 else TableC = {strsub(stringB,tPos,tPos+2),strbyte(stringB,tPos+2)} tVal = 3 end else tVal = 3 end
							if TableC[2] ~= pVal then -- Found a special character... either pVal not the same character or was a space.... TableC could also be a space
								if TableC[2] == 32 then -- if current character is blank... the previous character was not blank... so need to just finish the TableB if it exists and add the blank space.
									if TableB[1] then table.insert(TableA[pos], {charType and strsub(stringA,strPos,tPos-1) or table.concat(TableB),table.concat(TableB)}) TableB = {} end -- Was space, just add 
									table.insert(TableA[pos], " ")
									strPos = tPos + tVal
								elseif charType then
									if TableB[1] then table.insert(TableA[pos], {strsub(stringA,strPos,tPos-1),table.concat(TableB)}) table.insert(TableA[pos], "") TableB = {} end -- Was letter, add letter and a blank before punctuation.
									table.insert(TableB, TableC[1])
									strPos = tPos
								else
									table.insert(TableB, TableC[1])
								end
								charType = nil
							elseif GF_ALLOW_TWO_CHARACTERS[TableC[2]] then
								table.insert(TableB, TableC[1])
							elseif TableC[2] == 32 then
								strPos = tPos + tVal
							end
							bCap = TableC[2]
							tPos = tPos + tVal
						else
							TableC = GF_ACCENT_ASCII_LETTERS[strsub(stringB,tPos,tPos+1)]
							if not TableC then TableC = {strsub(stringB,tPos,tPos+1),strbyte(stringB,tPos+1)} end
							if TableC[4] then TableC[1] = TableC[4](pVal) and TableC[3] or TableC[1] for _,lang in pairs(TableC[5]) do if not languageID[lang] then languageID[lang] = .5 else languageID[lang] = languageID[lang] + .5 end end end
							tVal = TableC[1]
							bCap = TableC[2]
							if bCap ~= pVal then
								if GF_NORMAL_LETTERS[tVal] then
									if charType ~= 1 then
										if TableB[1] then table.insert(TableA[pos], {table.concat(TableB),table.concat(TableB)}) table.insert(TableA[pos], "") TableB = {} end
										strPos = tPos
									end
									table.insert(TableB, tVal)
									charType = 1
								else
									if charType then
										if TableB[1] then table.insert(TableA[pos], {table.concat(TableB),table.concat(TableB)}) table.insert(TableA[pos], "") TableB = {} end
										strPos = tPos
									end
									table.insert(TableB, tVal)
									charType = nil
								end
							elseif GF_ALLOW_TWO_CHARACTERS[bCap] then
								table.insert(TableB, tVal)
								if GF_ACCENT_ASCII_LETTERS[strbyte(stringB,tPos+2)] then
									tVal = GF_ACCENT_ASCII_LETTERS[strsub(stringB,tPos+2,tPos+3)]
									if tVal and tVal[2] == bCap then while true do tVal = GF_ACCENT_ASCII_LETTERS[strsub(stringB,tPos+2,tPos+3)] tPos = tPos + 2 if not tVal or not tVal[2] == bCap then break end end end
								end
							end
							tPos = tPos + 2
						end
					elseif GF_ASIAN_LANGUAGES[bCap] then
						stringC = strsub(stringB,tPos,tPos+2)
						TableC = GF_ASIAN_LANGUAGES_PUNCTUATION[stringC]
						if TableB[1] then -- This is correct.
							table.insert(TableA[pos], {strsub(stringA,strPos,tPos-1),table.concat(TableB)}) TableB = {} -- Have letters or punctuation to save... Save it, then add a space if it was letters or [!?.,]
							table.insert(TableA[pos], not TableC and (charType or GF_PUNCTUATION_ADD_SPACE[pVal]) and " " or "")
						end
						if not languageID["cn"] then languageID["cn"] = 1 end
						while true do
							tPos = tPos + 3
							if TableC then -- Punctuation
								table.insert(TableA[pos], {TableC[1], TableC[1]}) -- Add the Chinese character
							else -- Not punctuation
								table.insert(TableA[pos], {stringC,stringC})
							end
							if GF_ASIAN_LANGUAGES[strbyte(stringB,tPos)] then -- If next character is also Chinese, add a space if the next character isn't punctuation, or if the previous character was an allowable punctuation.
								tVal = TableC
								stringC = strsub(stringB,tPos,tPos+2)
								TableC = GF_ASIAN_LANGUAGES_PUNCTUATION[stringC]
								languageID["cn"] = languageID["cn"] + 1
								table.insert(TableA[pos], not TableC and (not tVal or tVal[2]) and " " or "")
							else
								tVal = strbyte(stringB,tPos)
								if tVal ~= 32 then table.insert(TableA[pos], (GF_PUNCTUATION_NO_SPACE[tVal]) and "" or " ") end -- If next char is space, just break... Otherwise, either add a space or a ""
								break
							end
						end
						strPos = tPos
						charType = nil
					else
						tPos = tPos + 1
						table.insert(TableB, strchar(bCap))
					end
				end
				tVal = pVal
				pVal = bCap
			end
			if TableB[1] then table.insert(TableA[pos], {strsub(stringA,strPos,tPos-1),table.concat(TableB)}) table.insert(TableA[pos], "") end
			if not TableA[pos][1] then table.remove(TableA,pos) pos = pos - 1 tLen = tLen - 1 end
		end
		pos = pos + 1
	end
	if GF_TranslationLoaded then
		for i=1, tLen do if type(TableA[i]) == "table" then for j=1, getn(TableA[i]),2 do if GF_LANGUAGE_DETECT[TableA[i][j][2]] then for lang,_ in pairs(GF_LANGUAGE_DETECT[TableA[i][j][2]]) do if not languageID[lang] then languageID[lang] = 1 else languageID[lang] = languageID[lang] + 1 end end end end end end
		tVal = languageID[GF_MY_LANGUAGE] or 0
		for langID,totalLang in pairs(languageID) do if totalLang > tVal then tVal = totalLang languageName = langID end if showInfo == true then print(langID.." - "..totalLang) end end
		if languageName ~= GF_MY_LANGUAGE then
			stringC = strupper(languageName)..": "
			if languageName == "cn" then pVal = 18 else pVal = 6 end
			for i=1, tLen do
				if type(TableA[i]) == "table" then
					tVal = getn(TableA[i])
					for j = 1+pVal < tVal and pVal or tVal-2, 2, -2 do
						tPos = 1
						while tPos+j <= tVal do
							stringA = TableA[i][tPos][2]
							if stringA then
								for k=2, j, 2 do stringA = stringA..TableA[i][tPos+k][2] end
								if GF_LANGUAGE_SINGLE_WORDS[languageName][stringA] then
									for k=1, j do table.remove(TableA[i],tPos+1) tVal=tVal-1 end -- Subtract the additional words/spaces
									if type(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]) == "table" then
										TableA[i][tPos] = {GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][1],"Z"}
										for k=2,getn(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]),2 do -- Have 3 words.. Already added word #1... Now I need to add 2/3/4/5
											table.insert(TableA[i], tPos+1, {GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k+1],"Z"}) -- Add word #3 into position 2... On second rotation, will put word #5 into position 4
											table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k]) -- Add word #2 to position 2, pushing word #3 to position 3... on second rotation, will put word #4 into position 4, pushing word #5 to position 5
											tPos=tPos+2 -- Move the table to the right of the last word added
											tVal=tVal+2 -- Increase the table size
										end
									else
										TableA[i][tPos] = {GF_LANGUAGE_SINGLE_WORDS[languageName][stringA],"Z"} -- The Z is placeholder since multiple/single is processed separately
									end
								end
								tPos = tPos + 2
							else
								break
							end
						end
					end
					if languageName == "cn" then
						tPos = 1
						while tPos <= tVal do
							stringA = TableA[i][tPos][2]
							if stringA then
								if GF_LANGUAGE_SINGLE_WORDS[languageName][stringA] then
									if type(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]) == "table" then
										TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][1]
										for k=2,getn(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]),2 do -- Have 3 words.. Already added word #1... Now I need to add 2/3/4/5
											table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k+1]) -- Add word #3 into position 2... On second rotation, will put word #5 into position 4
											table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k]) -- Add word #2 to position 2, pushing word #3 to position 3... on second rotation, will put word #4 into position 4, pushing word #5 to position 5
											tPos=tPos+2 -- Move the table to the right of the last word added
											tVal=tVal+2 -- Increase the table size
										end
									else
										TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]
									end
								else
									if TableA[i][tPos][2] == "Z" then TableA[i][tPos] = TableA[i][tPos][1] else TableA[i][tPos] = TableA[i][tPos][2] end
								end
								tPos = tPos + 2
							else
								break
							end
						end
					else
						tPos = 1
						while tPos <= tVal do
							stringA = TableA[i][tPos][2]
							if stringA then
								if GF_PUNCTUATION_NO_SPACE[strbyte(stringA)] then
									if GF_PUNCTUATION_CONNECTING[stringA] and type(TableA[i][tPos-2]) == "table" and TableA[i][tPos-2][2] and tVal > tPos+2 then
										stringA = TableA[i][tPos-2][2]..TableA[i][tPos+2][2]
										if GF_LANGUAGE_SINGLE_WORDS[languageName][stringA] then
											if type(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]) == "table" then
												TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][1]
												for k=2,getn(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]),2 do -- Have 3 words.. Already added word #1... Now I need to add 2/3/4/5
													table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k+1]) -- Add word #3 into position 2... On second rotation, will put word #5 into position 4
													table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k]) -- Add word #2 to position 2, pushing word #3 to position 3... on second rotation, will put word #4 into position 4, pushing word #5 to position 5
													tPos=tPos+2 -- Move the table to the right of the last word added
													tVal=tVal+2 -- Increase the table size
												end
											else
												TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]
											end
										else
											if TableA[i][tPos][2] == "Z" then TableA[i][tPos] = TableA[i][tPos][1] else TableA[i][tPos] = TableA[i][tPos][2] end
										end
									else
										TableA[i][tPos] = TableA[i][tPos][2]
									end
								else
									stringB = strlower(TableA[i][tPos][1])
									if GF_LANGUAGE_SINGLE_WORDS[languageName][stringB] then
										if type(GF_LANGUAGE_SINGLE_WORDS[languageName][stringB]) == "table" then
											TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringB][1]
											for k=2,getn(GF_LANGUAGE_SINGLE_WORDS[languageName][stringB]),2 do
												table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringB][k+1])
												table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringB][k])
												tPos=tPos+2
												tVal=tVal+2
											end
										else
											TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringB]
										end
									elseif GF_LANGUAGE_SINGLE_WORDS[languageName][stringA] then
										if type(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]) == "table" then
											TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][1]
											for k=2,getn(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]),2 do
												table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k+1])
												table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k])
												tPos=tPos+2
												tVal=tVal+2
											end
										else
											TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]
										end
									else
										if TableA[i][tPos][2] == "Z" then TableA[i][tPos] = TableA[i][tPos][1] else TableA[i][tPos] = TableA[i][tPos][2] end
									end
								end
								tPos = tPos + 2
							else
								break
							end
						end
					end
					stringC = stringC..table.concat(TableA[i])
				else
					stringC = stringC..TableA[i]
				end
			end
			if GF_SavedVariables.showtranslate then GF_PreviousMessage[arg2][2] = stringC if GF_SavedVariables.showuntranslated then GF_PreviousMessage[arg2][3] = true end end
		else
			for i=1, tLen do if type(TableA[i]) == "table" then for j=1, getn(TableA[i]), 2 do TableA[i][j] = TableA[i][j][2] end end end
		end
	else
		for i=1, tLen do if type(TableA[i]) == "table" then for j=1, getn(TableA[i]), 2 do TableA[i][j] = TableA[i][j][2] end end end
	end

	tPos = 1
	while tPos <= tLen do
		if type(TableA[tPos]) == "table" then
			tVal = getn(TableA[tPos])
			pos = 1 -- To detect word/word with no space(eg "lfgscholo" = lfg scholo) and fix single words
			while pos <= tVal do
				stringA = TableA[tPos][pos]
				if GF_PUNCTUATION_NO_SPACE[strbyte(stringA)] then
					if GF_PUNCTUATION_REMOVE[stringA] then
						table.remove(TableA[tPos],pos)
						if TableA[tPos][pos-1] == "" then
							table.remove(TableA[tPos],pos-1)
							if TableA[tPos][pos] and TableA[tPos][pos-1] == "" and GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos-2]..TableA[tPos][pos]] then -- Combine previous
								TableA[tPos][pos-2] = GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos-2]..TableA[tPos][pos]]
								table.remove(TableA[tPos],pos)
								if TableA[tPos][pos-1] == "" then table.remove(TableA[tPos],pos-1) else table.remove(TableA[tPos],pos+1) end
								tVal = tVal - 2
							end
						else
							table.remove(TableA[tPos],pos+1)
						end
						tVal = tVal - 2
					elseif TableA[tPos][pos+2] then
						if GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos+2]] then TableA[tPos][pos+2] = GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos+2]] end
						stringC = GF_WORD_FIX[TableA[tPos][pos-2]] and GF_WORD_FIX[TableA[tPos][pos-2]] or TableA[tPos][pos-2] -- stringC is previous word and already "fixed"
						stringD = GF_WORD_FIX[TableA[tPos][pos+2]] and GF_WORD_FIX[TableA[tPos][pos+2]] or TableA[tPos][pos+2] 
						stringB = stringA..stringD -- PL >> "10x", "3rd, "10+"
						if GF_WORD_SPECIAL_COMBINATION[stringB] then -- Check current plus next... If match, replace word at pos then delete pos+1 and pos+2... Pos proceeds forward.
							TableA[tPos][pos] = GF_WORD_SPECIAL_COMBINATION[stringB]
							table.remove(TableA[tPos],pos+1) table.remove(TableA[tPos],pos+1)
							tVal = tVal - 2
							if TableA[tPos][pos-1] == "" then TableA[tPos][pos-1] = " " end -- #/letter replaced with letter... so need space before not after.
						elseif stringC then
							stringB = stringC..stringB -- LPL >> "g2g"
							if GF_WORD_SPECIAL_COMBINATION[stringB] then -- Check previous, current, and next... If match, replace word at pos-2, delete pos-1,pos,pos+1,pos+2, leave pos in same position.
								TableA[tPos][pos-2] = GF_WORD_SPECIAL_COMBINATION[stringB]
								table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos-1)
								pos = pos - 2
								tVal = tVal - 4
							else -- Not PL or LPL.. But have both pos-2 and pos+2.. Check LP
								stringB = stringC..stringA -- LP >> "k10", "sum1", "an1"
								if GF_WORD_SPECIAL_COMBINATION[stringB] then -- Check previous and current... If match, replace word at pos, delete pos-1,pos, leave pos in same position.
									TableA[tPos][pos-2] = GF_WORD_SPECIAL_COMBINATION[stringB]
									table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos-1)
									pos = pos - 2
									tVal = tVal - 2
									if TableA[tPos][pos+1] == "" then TableA[tPos][pos+1] = " " end
								elseif tonumber(stringA) then -- "10g" = "xgold"... "2xBM" = "2x BM"
									if GF_WORD_NUMBER_NAMES[stringD] then -- This is a number. Check for gold-related words after... If match, replace word at pos, delete pos+1,pos+2, leave pos in same position.
										if stringD ~= "bh" then possibleGold = true end
										TableA[tPos][pos+2] = GF_WORD_NUMBER_NAMES[stringD]
										pos = pos + 2
									elseif strbyte(stringD,1) == 120 then -- "2xBM" = "2x BM"
										stringD = strsub(stringD,2)
										if GF_WORD_FIX_SINGLE_WORD[stringD] then stringD = GF_WORD_FIX_SINGLE_WORD[stringD] elseif GF_WORD_FIX_BEFORE_QUEST[stringD] then stringD = GF_WORD_FIX_BEFORE_QUEST[stringD] elseif GF_WORD_FIX[stringD] then stringD = GF_WORD_FIX[stringD] end
										if GF_GROUP_IDS[stringD] and GF_WORD_LETTER_NUMBER_BEFORE_AFTER[stringA.."x"] then
											TableA[tPos][pos] = GF_WORD_LETTER_NUMBER_BEFORE_AFTER[stringA.."x"]
											TableA[tPos][pos+2] = stringD
											if TableA[tPos][pos+1] == "" then TableA[tPos][pos+1] = " " end
										end
									elseif strbyte(stringC,-1) == 120 then -- "BMx2" = "BM x2"
										stringC = strsub(stringC,1,-2)
										if GF_WORD_FIX_BEFORE_QUEST[stringC] then stringC = GF_WORD_FIX_BEFORE_QUEST[stringC] elseif GF_WORD_FIX[stringC] then stringC = GF_WORD_FIX[stringC] end
										if GF_GROUP_IDS[stringC] and GF_WORD_LETTER_NUMBER_BEFORE_AFTER["x"..stringA] then
											TableA[tPos][pos] = GF_WORD_LETTER_NUMBER_BEFORE_AFTER["x"..stringA]
											TableA[tPos][pos-2] = stringC
											if TableA[tPos][pos-1] == "" then TableA[tPos][pos-1] = " " end
										end
									elseif stringC == "+" and GF_WORD_LETTER_NUMBER_BEFORE_AFTER["+"..stringA] then -- "+2 deadmines" = "invite deadmines"
										if GF_WORD_FIX_SINGLE_WORD[stringD] then stringD = GF_WORD_FIX_SINGLE_WORD[stringD] elseif GF_WORD_FIX_BEFORE_QUEST[stringD] then stringD = GF_WORD_FIX_BEFORE_QUEST[stringD] elseif GF_WORD_FIX[stringD] then stringD = GF_WORD_FIX[stringD] end
										if GF_GROUP_IDS[stringD] then
											TableA[tPos][pos-2] = GF_WORD_LETTER_NUMBER_BEFORE_AFTER["+"..stringA]
											TableA[tPos][pos+2] = stringD
											table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos-1)
											pos = pos - 2
											tVal = tVal - 2
											if TableA[tPos][pos-3] == "" then TableA[tPos][pos-3] = " " end
										end
									end
								elseif stringA == "+-" or stringA == "-+" then -- This is for hardcore trade detection which is restricted to level ranges.
									if tonumber(stringC) or tonumber(stringD) then foundTrades = foundTrades + 1 if showInfo == true then print("+-d% trade 1") end end
								elseif stringA == ":" or stringA == "-" then -- "k:10"
									stringB = stringC..stringD
									if GF_WORD_SPECIAL_COMBINATION[stringB] then -- Check previous and next... If match, replace word at pos-2, delete pos-1,pos,pos+1,pos+2, leave pos in same position.
										TableA[tPos][pos-2] = GF_WORD_SPECIAL_COMBINATION[stringB]
										table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos-1)
										pos = pos - 2
										tVal = tVal - 4
									end
								elseif stringA == "+" then -- "deadmines+"
									if GF_GROUP_IDS[stringC] then
										TableA[tPos][pos] = GF_PLUS_LOCALIZED
										if TableA[tPos][pos+1] == "" then TableA[tPos][pos+1] = " " end if TableA[tPos][pos-1] == "" then TableA[tPos][pos-1] = " " end
									end
								end
							end
						else -- nothing before, so only check after
							if tonumber(stringA) then -- "10g" = "xgold"... "2xBM" = "2x BM"
								if GF_WORD_NUMBER_NAMES[stringD] then -- This is a number. Check for gold-related words after... If match, replace word at pos, delete pos+1,pos+2, leave pos in same position.
									if stringD ~= "bh" then possibleGold = true end
									TableA[tPos][pos+2] = GF_WORD_NUMBER_NAMES[stringD]
									pos = pos + 2
								elseif strbyte(stringD,1) == 120 then -- "2xBM" = "2x BM"
									stringD = strsub(stringD,2)
									if GF_WORD_FIX_SINGLE_WORD[stringD] then stringD = GF_WORD_FIX_SINGLE_WORD[stringD] elseif GF_WORD_FIX_BEFORE_QUEST[stringD] then stringD = GF_WORD_FIX_BEFORE_QUEST[stringD] elseif GF_WORD_FIX[stringD] then stringD = GF_WORD_FIX[stringD] end
									if GF_GROUP_IDS[stringD] and GF_WORD_LETTER_NUMBER_BEFORE_AFTER[stringA.."x"] then
										TableA[tPos][pos] = GF_WORD_LETTER_NUMBER_BEFORE_AFTER[stringA.."x"]
										TableA[tPos][pos+2] = stringD
										if TableA[tPos][pos+1] == "" then TableA[tPos][pos+1] = " " end
									end
								end
							elseif stringA == "+-" or stringA == "-+" then -- This is for hardcore trade detection which is restricted to level ranges.
								if tonumber(stringD) then foundTrades = foundTrades + 1 if showInfo == true then print("+-d% trade 1") end end
							end
						end
					elseif TableA[tPos][pos-2] then -- Nothing after, so only check before.
						stringC = GF_WORD_FIX[TableA[tPos][pos-2]] and GF_WORD_FIX[TableA[tPos][pos-2]] or TableA[tPos][pos-2]
						stringB = stringC..stringA -- LP >> "k10", "sum1", "an1"
						if GF_WORD_SPECIAL_COMBINATION[stringB] then -- Check previous and current... If match, replace word at pos, delete pos-1,pos, leave pos in same position.
							TableA[tPos][pos-2] = GF_WORD_SPECIAL_COMBINATION[stringB]
							table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos-1)
							pos = pos - 2
							tVal = tVal - 2
							if TableA[tPos][pos+1] == "" then TableA[tPos][pos+1] = " " end
						elseif tonumber(stringA) then -- "10g" = "xgold"... "2xBM" = "2x BM"
							if strbyte(stringC,-1) == 120 then -- "BMx2" = "BM x2"
								stringC = strsub(stringC,1,-2)
								if GF_WORD_FIX_SINGLE_WORD[stringC] then stringC = GF_WORD_FIX_SINGLE_WORD[stringC] elseif GF_WORD_FIX_BEFORE_QUEST[stringC] then stringC = GF_WORD_FIX_BEFORE_QUEST[stringC] elseif GF_WORD_FIX[stringC] then stringC = GF_WORD_FIX[stringC] end
								if GF_GROUP_IDS[stringC] and GF_WORD_LETTER_NUMBER_BEFORE_AFTER["x"..stringA] then
									TableA[tPos][pos] = GF_WORD_LETTER_NUMBER_BEFORE_AFTER["x"..stringA]
									TableA[tPos][pos-2] = stringC
									if TableA[tPos][pos-1] == "" then TableA[tPos][pos-1] = " " end
								end
							end
						elseif stringA == "+-" or stringA == "-+" then -- This is for hardcore trade detection which is restricted to level ranges.
							if tonumber(stringC) then foundTrades = foundTrades + 1 if showInfo == true then print("+-d% trade 1") end end
						elseif stringA == "+" then -- "deadmines+"
							if GF_GROUP_IDS[stringC] then
								TableA[tPos][pos] = GF_PLUS_LOCALIZED
								if TableA[tPos][pos+1] == "" then TableA[tPos][pos+1] = " " end if TableA[tPos][pos-1] == "" then TableA[tPos][pos-1] = " " end
							end
						end
					end
				elseif GF_WORD_FIX_SINGLE_WORD[stringA] then
					TableA[tPos][pos] = GF_WORD_FIX_SINGLE_WORD[stringA]
				elseif not GF_WORD_REP_RIGHT[stringA] then
					pVal = strlen(stringA) - 1
					if pVal > 3 then 
						if pVal > 11 then pVal = 11 end
						for i=3, pVal do
							if GF_WORD_REP_LEFT[strsub(stringA,1,i)] then -- Found word starting at 1 and ending with i
								if pVal > i+3 and GF_WORD_REP_RIGHT[strsub(stringA,1,i+3)] then -- This is to detect S, ER, ING after
									TableA[tPos][pos] = strsub(stringA,1,i+3)
									table.insert(TableA[tPos],pos+1,strsub(stringA,i+4))
								elseif pVal > i+2 and GF_WORD_REP_RIGHT[strsub(stringA,1,i+2)] then
									TableA[tPos][pos] = strsub(stringA,1,i+2)
									table.insert(TableA[tPos],pos+1,strsub(stringA,i+3))
								elseif pVal > i+1 and GF_WORD_REP_RIGHT[strsub(stringA,1,i+1)] then
									TableA[tPos][pos] = strsub(stringA,1,i+1)
									table.insert(TableA[tPos],pos+1,strsub(stringA,i+2))
								else
									TableA[tPos][pos] = strsub(stringA,1,i)
									table.insert(TableA[tPos],pos+1,strsub(stringA,i+1))
								end
								table.insert(TableA[tPos],pos+1," ")
								tVal = tVal + 2
								if GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos]] then TableA[tPos][pos] = GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos]] end
								break
							elseif GF_WORD_REP_RIGHT[strsub(stringA,-i)] then -- Right
								TableA[tPos][pos] = strsub(stringA,1,-i-1)
								table.insert(TableA[tPos],pos+1,strsub(stringA,-i))
								table.insert(TableA[tPos],pos+1," ")
								tVal = tVal + 2
								if GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos]] then TableA[tPos][pos] = GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos]] end
								pos = pos - 2
								break
							end
						end
						if TableA[tPos][pos] == stringA then
							if GF_WORD_REP_LEFT[strsub(stringA,1,2)] then
								TableA[tPos][pos] = strsub(stringA,1,2)
								table.insert(TableA[tPos],pos+1,strsub(stringA,3))
								table.insert(TableA[tPos],pos+1," ")
							elseif GF_WORD_REP_RIGHT[strsub(stringA,-2)] then
								stringB = strsub(stringA,1,-3)
								if GF_WORD_FIX_SINGLE_WORD[stringB] then stringB = GF_WORD_FIX_SINGLE_WORD[stringB] elseif GF_WORD_FIX_BEFORE_QUEST[stringB] then stringB = GF_WORD_FIX_BEFORE_QUEST[stringB] end
								if GF_WORD_QUEST[stringB] then
									TableA[tPos][pos] = stringB
									table.insert(TableA[tPos],pos+1,strsub(stringA,-2))
									table.insert(TableA[tPos],pos+1," ")
									tVal = tVal + 2
								else
									if GF_WORD_FIX[stringB] then stringB = GF_WORD_FIX[stringB] end
									if GF_WORD_DUNGEON[stringB] or GF_WORD_RAID[stringB] or GF_WORD_PVP[stringB] or GF_WORD_GROUP_BYPASS[stringB] then
										TableA[tPos][pos] = stringB
										table.insert(TableA[tPos],pos+1,strsub(stringA,-2))
										table.insert(TableA[tPos],pos+1," ")
										tVal = tVal + 2
									end
								end
							end
						end
					end
				end
				pos = pos + 2
			end
			TableA[tPos] = table.concat(TableA[tPos])
		else
			if strbyte(TableA[tPos]) == 93 then -- Should only get here on a link
				TableA[tPos] = "]"
			else
				_,_,stringA = strfind(TableA[tPos],"|H(%a+)")
				if stringA then
					TableA[tPos] = "h"..stringA.."["
					if stringA == "item" then
						for _,word in pairs(TableA[tPos+1]) do
							if GF_WORD_FIX_ITEM_NAME[word] then
								TableA[tPos+1] = GF_WORD_FIX_ITEM_NAME[word]
								tPos = tPos + 1
								break
							end
						end
					end
				end
			end
		end
		tPos = tPos + 1
	end
	arg1 = " "..gsub(table.concat(TableA),"%.gg/%S+", "").." "
	TableA,TableB,TableC = {},{},{}

	strPos = 1 -- To detect space/number+/punctuation/number+/space for groups(eg "4v5" or "4/5" = group, "4=5" triggers foundLFM)
	while true do
		strPos,tPos,stringB,stringA = strfind(arg1,"[%p%s](%d%d?%s?([=/v:%-to ]+)%s?%d%d?)[%p%s]",strPos)
		if stringA then
			if stringA == " " then
				if strlen(stringB) == 5 and strsub(stringB,-1) == "9" and GF_WORD_SPECIAL_COMBINATION[stringB] then
					arg1 = strsub(arg1,1,strPos)..GF_WORD_SPECIAL_COMBINATION[stringB]..strsub(arg1,tPos)
					strPos = strPos + strlen(GF_WORD_SPECIAL_COMBINATION[stringB]) + 1
				else
					strPos = tPos
				end
			else
				stringB = gsub(stringB," ","")
				if stringA == "=" then
					foundLFM = 2
					strPos = tPos
				elseif stringA == "-" then
					if strlen(stringB) == 5 and strsub(stringB,-1) == "9" and GF_WORD_SPECIAL_COMBINATION[stringB] then
						arg1 = strsub(arg1,1,strPos)..GF_WORD_SPECIAL_COMBINATION[stringB]..strsub(arg1,tPos)
						strPos = strPos + strlen(GF_WORD_SPECIAL_COMBINATION[stringB]) + 1
					else
						strPos = tPos
					end
				elseif stringA == ":" then
					if strlen(stringB) == 5 and strsub(stringB,-1) == "0" then
						_,_,stringB = strfind(arg1,"^(%a+)",tPos+1)
						if GF_WORD_FIX_TIME[stringB] then
							arg1 = strsub(arg1,1,strPos)..GF_WORD_FIX_TIME[stringB]..strsub(arg1,strPos+strlen(GF_WORD_FIX_TIME[stringB])+1)
							strPos = strPos + strlen(GF_WORD_FIX_TIME[stringB]) + 1
						else
							strPos = tPos
						end
					else
						strPos = tPos
					end
				elseif GF_WORD_SPECIAL_COMBINATION[stringB] then
					arg1 = strsub(arg1,1,strPos)..GF_WORD_SPECIAL_COMBINATION[stringB]..strsub(arg1,tPos)
					strPos = strPos + strlen(GF_WORD_SPECIAL_COMBINATION[stringB]) + 1
				elseif stringA == "v" or stringA == "/" then
					arg1 = strsub(arg1,1,strPos)..GF_GROUP_OPEN_LOCALIZED..strsub(arg1,tPos)
					strPos = strPos + strlen(GF_GROUP_OPEN_LOCALIZED) + 1
				else
					strPos = tPos
				end
			end
		else
			break
		end
	end
	strPos = 2 -- To detect words between and next to "[] or ()" (eg "(human only)", "[item] for free").
	while true do strPos,tPos,stringA = strfind(arg1, "[<%(%[](.-)[%)%]>]",strPos)
		if stringA then
			if GF_WORD_FIX[stringA] then stringA = GF_WORD_FIX[stringA] end if GF_GUILD_BRACKET[gsub(stringA," ","")] then foundGuild = foundGuild + GF_GUILD_BRACKET[gsub(stringA," ","")] if showInfo == true then print(stringA.." guild "..GF_GUILD_BRACKET[gsub(stringA," ","")]) end end
			if strbyte(arg1,strPos) == 91 and strbyte(arg1,tPos) == 93 then -- "[]"
				if foundLFM == 0 then if strfind(arg1, "^%]%s?l?e?v?e?l?%s?%d+%s?\-?/?\+",tPos) then foundLFM = 2 if showInfo == true then print("##+ lfm") end end end -- Group "] 2+"
				if strfind(arg1, "^%]%s?[0-9\-]+%s?[gs]",tPos) then foundTrades = foundTrades + 1 if showInfo == true then print("##g trade 1") end end -- Trades "]2.5g"
				if strfind(arg1, "^%]%s?%p?%s?%d+m[%p%s]",tPos) then foundLFM = 2 if showInfo == true then print("##m lfm") end end -- Group "] 2m"
				if strfind(arg1, "^%]%s?%p?%s?x%s?%d+[%p%s]",tPos) then foundTrades = foundTrades + .5 if showInfo == true then print("x## trade .5") end end -- Trades "] x2"
				if strfind(arg1, "^%]%s?%d+%s?[\+\-][\+\-][%p%s]",tPos) then foundTrades = foundTrades + 1.5 if showInfo == true then print("+- trade 1") end end -- Trades "[hitem] 36+-"

				_,_,stringB = strfind(arg1, "^%]%s?x?%d?%d?%d?x?%p?%s?(%a+)[%p%s]",tPos) if stringB then if GF_WORD_FIX[stringB] then stringB = GF_WORD_FIX[stringB] end if GF_TRADE_PREFIX_SUFFIX[stringB] then foundTrades = foundTrades + GF_TRADE_PREFIX_SUFFIX[stringB] if showInfo == true then print(stringB.." trade ] "..GF_TRADE_PREFIX_SUFFIX[stringB]) end end end
				_,_,stringB = strfind(arg1, "^%]%s?x?%d?%d?%d?x?%p?%s?(%a+%s%a+)[%p%s]",tPos) if stringB then stringB = gsub(stringB," ","") if GF_WORD_FIX[stringB] then stringB = GF_WORD_FIX[stringB] end if GF_TRADE_PREFIX_SUFFIX[stringB] then foundTrades = foundTrades + GF_TRADE_PREFIX_SUFFIX[stringB] if showInfo == true then print(stringB.." trade ] "..GF_TRADE_PREFIX_SUFFIX[stringB]) end end end
				_,_,stringB = strfind(arg1, "^%]%s?x?%d?%d?%d?x?%p?%s?(%a+%s%a+%s%a+)[%p%s]",tPos) if stringB then stringB = gsub(stringB," ","") if GF_WORD_FIX[stringB] then stringB = GF_WORD_FIX[stringB] end if GF_TRADE_PREFIX_SUFFIX[stringB] then foundTrades = foundTrades + GF_TRADE_PREFIX_SUFFIX[stringB] if showInfo == true then print(stringB.." trade ] "..GF_TRADE_PREFIX_SUFFIX[stringB]) end end end

				if strbyte(arg1,strPos-1) == 90 then -- From Link
					stringB = strsub(arg1,1,strPos)
					if strfind(stringB, "[%p%s]%d+%s?x%s+hitem%[$") then foundTrades = foundTrades + 1 if showInfo == true then print("##x [ trade 1") end end -- Trades " 2x ["
					if strfind(stringB, "[%p%s]x%s?%d+%s+hitem%[$") then foundTrades = foundTrades + 1 if showInfo == true then print("x## [ trade 1") end end -- Trades " x2 ["
					_,_,stringB = strfind(stringB, "[%p%s](%a+)%s?%s?x?%d?%d?x?%p?%s+hitem%[$") -- One word before
					if GF_WORD_FIX[stringB] then stringB = GF_WORD_FIX[stringB] end
					if GF_TRADE_PREFIX_SUFFIX[stringB] then
						foundTrades = foundTrades + GF_TRADE_PREFIX_SUFFIX[stringB]
						if showInfo == true then print(stringB.." trade <word>[ "..GF_TRADE_PREFIX_SUFFIX[stringB]) end
						_,_,stringB = strfind(arg1, "^%]%s?x?%d?%d?x?%p?%s?(%a+)[%p%s]",tPos)
						if GF_WORD_FIX[stringB] then stringB = GF_WORD_FIX[stringB] end
						if GF_TRADE_PREFIX_SUFFIX[stringB] then
							foundTrades = foundTrades + 2.5
							if showInfo == true then print(stringB.." trade <word>[]<word> 2.5") end
						end
					end
				end
			elseif strbyte(arg1,strPos) == 60 and strbyte(arg1,tPos) == 62 then -- "<>"
				stringB = ""
				for word in gfind(stringA,"%a+") do if not GF_WORD_BYPASS_TRIGGER[word] or GF_WORD_GROUP_BYPASS[word] then if GF_WORD_FIX_BEFORE_QUEST[word] then stringB = stringB..GF_WORD_FIX_BEFORE_QUEST[word] elseif GF_WORD_FIX[word] then stringB = stringB..GF_WORD_FIX[word] else stringB = stringB..word end end end
				if strlen(stringB) < 25 then TableB["BRACKETS"] = stringB end
				_,_,stringA = strfind(strsub(arg1,1,strPos), "[%p%s](%a+)%s?<$") if stringA then if GF_WORD_FIX[stringA] then stringA = GF_WORD_FIX[stringA] end if GF_GUILD_BRACKET_PREFIX_SUFFIX[stringA] then foundGuild = foundGuild + GF_GUILD_BRACKET_PREFIX_SUFFIX[stringA] if showInfo == true then print(stringA.." guild "..GF_GUILD_BRACKET_PREFIX_SUFFIX[stringA]) end end end
				_,_,stringA = strfind(arg1, "^>%s?(%a+)[%p%s]",tPos) if stringA then if GF_WORD_FIX[stringA] then stringA = GF_WORD_FIX[stringA] end if GF_GUILD_BRACKET_PREFIX_SUFFIX[stringA] then foundGuild = foundGuild + GF_GUILD_BRACKET_PREFIX_SUFFIX[stringA] if showInfo == true then print(stringA.." guild "..GF_GUILD_BRACKET_PREFIX_SUFFIX[stringA]) end end _,_,stringB = strfind(arg1, "^>%s?%a+ (%a+)[%p%s]",tPos) if stringB then if GF_WORD_FIX[stringB] then stringB = GF_WORD_FIX[stringB] end stringB = stringA..stringB if GF_GUILD_BRACKET_PREFIX_SUFFIX[stringB] then foundGuild = foundGuild + GF_GUILD_BRACKET_PREFIX_SUFFIX[stringB] if showInfo == true then print(stringB.." guild "..GF_GUILD_BRACKET_PREFIX_SUFFIX[stringB]) end end end end
			end
			strPos = strPos + 1
		else
			break
		end
	end
	if showInfo == true then print(arg1) end

-- Quest Search
	strPos = 1 _,tPos,stringA = string.find(arg1, "([%s%p%d]+)",strPos) strPos = tPos+1 -- Add all words to the TableA
	while true do
		strPos,tPos,stringA = strfind(arg1, "(.-)[%s%p%d]+",strPos)
		if stringA then
			if not GF_WORD_BYPASS_TRIGGER[stringA] then
				table.insert(TableA, stringA)
				strPos = tPos+1
			else
				if GF_WORD_GROUP_BYPASS[stringA] then
					if GF_WORD_GROUP_BYPASS[TableA[getn(TableA)]] then TableA[getn(TableA)] = GF_WORD_GROUP_BYPASS[TableA[getn(TableA)]] end
					stringA = GF_WORD_GROUP_BYPASS[stringA]
					_,tVal,stringB = strfind(arg1,"(.-)[%s%p%d]+",tPos+1)
					if stringB then
						if GF_WORD_GROUP_BYPASS[stringB] then
							stringB = GF_WORD_GROUP_BYPASS[stringB]
							table.insert(TableA, stringA) table.insert(TableA, stringB)
							strPos = tVal+1
							while true do
								_,tVal,stringA = strfind(arg1,"(.-)[%s%p%d]+",strPos)
								if stringA then
									if GF_WORD_GROUP_BYPASS[stringA] then
										table.insert(TableA, GF_WORD_GROUP_BYPASS[stringA])
										strPos = tVal+1
									elseif GF_WORD_GROUP_BYPASS_SECOND[stringB..stringA] then
										strPos = tVal+1
										_,tVal,stringA = strfind(arg1,"(.-)[%s%p%d]+",strPos)
										if GF_WORD_GROUP_BYPASS[stringA] then table.insert(TableA, GF_WORD_GROUP_BYPASS[stringA]) strPos = tVal+1 end
									else
										break
									end
								else
									break
								end
							end
						elseif GF_WORD_GROUP_BYPASS_SECOND[stringA..stringB] then
							_,tVal,stringB = strfind(arg1,"(.-)[%s%p%d]+",tVal+1)
							if GF_WORD_GROUP_BYPASS[stringB] then
								stringB = GF_WORD_GROUP_BYPASS[stringB]
								table.insert(TableA, stringA) table.insert(TableA, stringB)
								strPos = tVal+1
							else
								table.insert(TableA, stringA)
								strPos = tPos+1
							end
						else
							table.insert(TableA, stringA)
							strPos = tPos+1
						end
					else
						table.insert(TableA, stringA)
						break
					end
				else
					_,tVal,stringB = strfind(arg1,"(.-)[%s%p%d]+",tPos+1)
					if GF_WORD_QUEST_BYPASS[stringB] then
						table.insert(TableA, stringA) table.insert(TableA, stringB)
						strPos = tVal+1
					else
						strPos = tPos+1
					end
				end
			end
		else
			break
		end
	end
	tLen = getn(TableA)
	tPos = 1
	while tPos <= tLen do
		stringA = TableA[tPos]
		if GF_WORD_FIX_BEFORE_QUEST[stringA] then
			TableA[tPos] = GF_WORD_FIX_BEFORE_QUEST[stringA]
		end
		if GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA] then
			TableA[tPos] = GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA][1]
			table.insert(TableA,tPos+1,GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA][2])
			tLen=tLen+1
			tPos = tPos + 1
		elseif GF_WORD_FIX_QUEST_DUNGEON[stringA] then
			TableA[tPos] = GF_WORD_FIX_QUEST_DUNGEON[stringA]
		end
		tPos = tPos + 1
	end
	for j=1,3 do
		tPos = 1
		while tPos+j <= tLen do
			stringA = TableA[tPos]
			for k=1, j do stringA = stringA..TableA[tPos+k] end
			if GF_WORD_FIX_BEFORE_QUEST[stringA] then
				TableA[tPos] = GF_WORD_FIX_BEFORE_QUEST[stringA]
				for k=1, j do table.remove(TableA,tPos+1) tLen=tLen-1 end
				if stringA ~= GF_WORD_FIX_BEFORE_QUEST[stringA] then
					if tPos > 1 then tPos = tPos - 2 else tPos = tPos - 1 end
				elseif tPos > 1 then
					stringB = TableA[tPos-1]
					for k=1, j do if TableA[tPos-1+k] then stringB = stringB..TableA[tPos-1+k] end end
					if GF_WORD_FIX_BEFORE_QUEST[stringB] then
						TableA[tPos-1] = GF_WORD_FIX_BEFORE_QUEST[stringB]
						for k=1, j do if TableA[tPos] then table.remove(TableA,tPos) tLen=tLen-1 end end
					end
				end
			elseif GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA] then
				TableA[tPos] = GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA][1]
				for k=1, j do table.remove(TableA,tPos+1) tLen=tLen-1 end
				table.insert(TableA,tPos+1,GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA][2]) tLen=tLen+1
				if stringA ~= GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA][1]..GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA][2] then
					if tPos > 1 then tPos = tPos - 2 else tPos = tPos - 1 end
				elseif tPos > 1 then
					stringB = TableA[tPos-1]
					for k=1, j do if TableA[tPos-1+k] then stringB = stringB..TableA[tPos-1+k] end end
					if GF_WORD_FIX_BEFORE_QUEST_SECOND[stringB] then
						TableA[tPos-1] = GF_WORD_FIX_BEFORE_QUEST_SECOND[stringB][1]
						for k=1, j do if TableA[tPos] then table.remove(TableA,tPos) tLen=tLen-1 end end
						table.insert(TableA,tPos,GF_WORD_FIX_BEFORE_QUEST_SECOND[stringB][2]) tLen=tLen+1
					end
				end
			elseif GF_WORD_FIX_QUEST_DUNGEON[stringA] then
				TableA[tPos] = GF_WORD_FIX_QUEST_DUNGEON[stringA]
				for k=1, j do table.remove(TableA,tPos+1) tLen=tLen-1 end
				if stringA ~= GF_WORD_FIX_QUEST_DUNGEON[stringA] then
					if tPos > 1 then tPos = tPos - 2 else tPos = tPos - 1 end
				elseif tPos > 1 then
					stringB = TableA[tPos-1]
					for k=1, j do if TableA[tPos-1+k] then stringB = stringB..TableA[tPos-1+k] end end
					if GF_WORD_FIX_QUEST_DUNGEON[stringB] then
						TableA[tPos-1] = GF_WORD_FIX_QUEST_DUNGEON[stringB]
						for k=1, j do if TableA[tPos] then table.remove(TableA,tPos) tLen=tLen-1 end end
					end
				end
			end
			tPos = tPos + 1
		end
	end
	if tLen <= 9 then
		if TableA[2] then
			stringA = "" for i=2,tLen-1 do stringA = stringA..TableA[i] end
			if strsub(arg1,-2) == "? " then
				if TableA[1] == "hquest" and GF_WORD_QUEST[stringA..TableA[tLen]] or GF_WORD_QUEST[TableA[1]..stringA..TableA[tLen]] then foundLFG = 2.5 if showInfo == true then print("quest? lfg 2.5") end
				elseif GF_GROUP_NO_QUESTION[TableA[1]] then if ((GF_GROUP_IDS[stringA] and GF_GROUP_NO_QUESTION[TableA[1]][TableA[tLen]]) or GF_GROUP_IDS[stringA..TableA[tLen]]) then foundLFG = 2.5 if showInfo == true then print("quest? lfg 2.5") end elseif tLen <= 5 and GF_LFM_BEFORE[stringA] and GF_GROUP_IDS[TableA[tLen]] then foundLFG = 5 if showInfo == true then print("no before group? lfg 5") end end end
				if GF_GROUP_NO_QUESTION[TableA[1]] and (GF_GROUP_NO_QUESTION[TableA[2]] or GF_PVP_TRIGGER_WORD[TableA[2]]) then
					stringA = "" for i=3,tLen do stringA = stringA..TableA[i] end
					if GF_GROUP_IDS[stringA] or GF_WORD_QUEST[stringA] then
						foundLFM = 3 if showInfo == true then print("noone need? lfm 3") end
					end
				end
			elseif TableA[1] == "hquest" then
				if GF_WORD_QUEST[stringA] and GF_GROUP_HQUEST_LAST[TableA[tLen]] then foundLFM = 2 if showInfo == true then print("quest all lfm 2") end
				else strPos = 1 while true do strPos,tPos,stringA = strfind(arg1, "\]%s?(%p)[%p%s]",strPos) if not stringA then break end if stringA == "+" or stringA == "?" then foundLFG = 2 if showInfo == true then print("[quest]+ lfg 2") end end strPos = tPos end end
			end
		elseif strsub(arg1,1,2) == " +" and GF_WORD_ROLES[TableA[1]] then foundLFG = 2 if showInfo == true then print("+roles lfg 2") end end
	end
	for j=0,7 do
		for i=1,tLen do
			if i+j <= tLen then
				stringA = TableA[i]
				for k=1, j do stringA = stringA..TableA[i+k] end
				if not GF_QUEST_WORD_BYPASS[stringA] then
					if GF_WORD_QUEST[stringA] then
						tVal = 0
						if GF_QUEST_TRIGGER[stringA] then
							if TableA[i-2] and (GF_WORD_LEVEL_ZONE[TableA[i-2]..TableA[i-1]]) then stringA = TableA[i-2]..TableA[i-1]..stringA tVal = 2 if not foundQuest[1] or GF_WORD_LEVEL_ZONE[TableA[i-2]..TableA[i-1]] > foundQuest[1] or (foundQuest[2] < j and GF_WORD_LEVEL_ZONE[TableA[i-2]..TableA[i-1]] > foundQuest[1]+5) then if GF_WORD_LEVEL_ZONE[TableA[i-2]..TableA[i-1]] ~= 0 and (strfind(arg1,GF_ELITE_LOCALIZED) or strfind(arg1,GF_BOSS_LOCALIZED)) then foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i-2]..TableA[i-1]] + 3 foundQuest[2] = j else foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i-2]..TableA[i-1]] foundQuest[2] = j end end table.insert(groupPosition,{i-2,i+j,stringA})
							elseif TableA[i+j+2] and (GF_WORD_LEVEL_ZONE[TableA[i+j+1]..TableA[i+j+2]]) then stringA = stringA..TableA[i+j+1]..TableA[i+j+2] if not foundQuest[1] or GF_WORD_LEVEL_ZONE[TableA[i+j+1]..TableA[i+j+2]] > foundQuest[1] or (foundQuest[2] < j and GF_WORD_LEVEL_ZONE[TableA[i+j+1]..TableA[i+j+2]] > foundQuest[1]+5) then if GF_WORD_LEVEL_ZONE[TableA[i+j+1]..TableA[i+j+2]] ~= 0 and (strfind(arg1,GF_ELITE_LOCALIZED) or strfind(arg1,GF_BOSS_LOCALIZED)) then foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i+j+1]..TableA[i+j+2]] + 3 foundQuest[2] = j else foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i+j+1]..TableA[i+j+2]] foundQuest[2] = j end end table.insert(groupPosition,{i,i+j+2,stringA})
							elseif GF_WORD_LEVEL_ZONE[TableA[i-1]] then stringA = TableA[i-1]..stringA tVal = 1 if not foundQuest[1] or GF_WORD_LEVEL_ZONE[TableA[i-1]] > foundQuest[1] or (foundQuest[2] < j and GF_WORD_LEVEL_ZONE[TableA[i-1]] > foundQuest[1]+5) then if GF_WORD_LEVEL_ZONE[TableA[i-1]] ~= 0 and (strfind(arg1,GF_ELITE_LOCALIZED) or strfind(arg1,GF_BOSS_LOCALIZED)) then foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i-1]] + 3 foundQuest[2] = j else foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i-1]] foundQuest[2] = j end end table.insert(groupPosition,{i-1,i+j,stringA})
							elseif GF_WORD_LEVEL_ZONE[TableA[i+j+1]] then stringA = stringA..TableA[i+j+1] if not foundQuest[1] or GF_WORD_LEVEL_ZONE[TableA[i+j+1]] > foundQuest[1] or (foundQuest[2] < j and GF_WORD_LEVEL_ZONE[TableA[i+j+1]] > foundQuest[1]+5) then if GF_WORD_LEVEL_ZONE[TableA[i+j+1]] ~= 0 and (strfind(arg1,GF_ELITE_LOCALIZED) or strfind(arg1,GF_BOSS_LOCALIZED)) then foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i+j+1]] + 3 foundQuest[2] = j else foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i+j+1]] foundQuest[2] = j end end table.insert(groupPosition,{i,i+j+1,stringA})
							else if not foundQuest[1] or GF_WORD_QUEST[stringA][2] > foundQuest[1] or (foundQuest[2] < j and GF_WORD_QUEST[stringA][2] > foundQuest[1]+5) then foundQuest[1] = GF_WORD_QUEST[stringA][2] foundQuest[2] = j end table.insert(groupPosition,{i,i+j,stringA}) end
						else
							if not foundQuest[1] or GF_WORD_QUEST[stringA][2] > foundQuest[1] or (foundQuest[2] < j and GF_WORD_QUEST[stringA][2] > foundQuest[1]+5) then foundQuest[1] = GF_WORD_QUEST[stringA][2] foundQuest[2] = j end table.insert(groupPosition,{i,i+j,stringA})
						end
						if showInfo == true then print(stringA.." quest") end
						foundTradesExclusion = foundTradesExclusion + .3 foundGuildExclusion = foundGuildExclusion + .1
						table.insert(groupName,stringA) groupName[stringA] = true
						i = i + tVal
						numGroupWords = numGroupWords + 1 + j
					end
				end
			end
		end
	end

-- Normal Search
	for i=1,tLen do TableC[i] = TableA[i] TableB[i] = TableA[i] end
	tPos = 1
	while tPos <= tLen do
		if TableA[tPos] then
			stringA = TableA[tPos]
			if GF_WORD_FIX[stringA] then
				stringA = GF_WORD_FIX[stringA] TableA[tPos] = stringA TableC[tPos] = stringA TableB[tPos] = stringA
			elseif GF_WORD_FIX_SECOND[stringA] then
				table.insert(TableA,tPos+1,GF_WORD_FIX_SECOND[stringA][2]) table.insert(TableC,tPos+1,GF_WORD_FIX_SECOND[stringA][2]) table.insert(TableB,tPos+1,GF_WORD_FIX_SECOND[stringA][2])
				stringA = GF_WORD_FIX_SECOND[stringA][1] TableA[tPos] = stringA TableC[tPos] = stringA TableB[tPos] = stringA
				tLen=tLen+1
			end
			if GF_WORD_FIX_TRADE[stringA] and not TradeFixNames[stringA] then
				if GF_TRADE_TRIGGER[stringA] then
					if GF_WORD_LEVEL_ZONE[TableA[tPos-1]] or GF_GROUP_IDS[TableA[tPos-1]] then
						TableC[tPos] = GF_TRADE_COMMON_WORDS[stringA]
					end
				else
					TableC[tPos] = GF_WORD_FIX_TRADE[stringA][1]
					TradeFixNames[stringA] = true
				end
				possibleGold = nil
			end
			if TableB["BRACKETS"] == stringA then TableB[tPos] = "G"
			elseif GF_WORD_FIX_GUILD[stringA] then TableB[tPos] = GF_WORD_FIX_GUILD[stringA][1] end
		end
		tPos = tPos + 1
	end
	for j=1,3 do -- Fix Words
		tPos = 1
		while tPos+j <= tLen do
			stringA = TableA[tPos]
			for k=1, j do stringA = stringA..TableA[tPos+k] end
			if GF_WORD_FIX[stringA] then
				TableA[tPos] = GF_WORD_FIX[stringA] if strbyte(TableC[tPos]) >= 97 then TableC[tPos] = GF_WORD_FIX[stringA] end if strbyte(TableC[tPos]) >= 97 then TableB[tPos] = GF_WORD_FIX[stringA] end
				for k=1, j do table.remove(TableA,tPos+1) table.remove(TableC,tPos+1) table.remove(TableB,tPos+1) tLen=tLen-1 for l=1, getn(groupPosition) do if groupPosition[l][1] == tPos then groupPosition[l][2] = groupPosition[l][2]-1 elseif groupPosition[l][1] > tPos then groupPosition[l][1] = groupPosition[l][1]-1 groupPosition[l][2] = groupPosition[l][2]-1 elseif groupPosition[l][2] > tPos then groupPosition[l][2] = groupPosition[l][2]-1 end end end
				if stringA ~= GF_WORD_FIX[stringA] then if GF_WORD_FIX_TRADE[TableC[tPos]] and not TradeFixNames[TableC[tPos]] and not GF_TRADE_TRIGGER[TableC[tPos]] then TableC[tPos] = GF_WORD_FIX_TRADE[TableC[tPos]][1] possibleGold = nil end if GF_WORD_FIX_GUILD[TableB[tPos]] then TableB[tPos] = GF_WORD_FIX_GUILD[TableB[tPos]][1] end if tPos > 1 then tPos = tPos - 2 else tPos = tPos - 1 end end
			elseif GF_WORD_FIX_SECOND[stringA] then
				TableA[tPos] = GF_WORD_FIX_SECOND[stringA][1] if strbyte(TableC[tPos]) >= 97 then TableC[tPos] = GF_WORD_FIX_SECOND[stringA][1] end if strbyte(TableC[tPos]) >= 97 then TableB[tPos] = GF_WORD_FIX_SECOND[stringA][1] end
				for k=1, j do table.remove(TableA,tPos+1) table.remove(TableC,tPos+1) table.remove(TableB,tPos+1) tLen=tLen-1 for l=1, getn(groupPosition) do if groupPosition[l][1] == tPos then groupPosition[l][2] = groupPosition[l][2]-1 elseif groupPosition[l][1] > tPos then groupPosition[l][1] = groupPosition[l][1]-1 groupPosition[l][2] = groupPosition[l][2]-1 elseif groupPosition[l][2] > tPos then groupPosition[l][2] = groupPosition[l][2]-1 end end end
				table.insert(TableA,tPos+1,GF_WORD_FIX_SECOND[stringA][2]) table.insert(TableC,tPos+1,GF_WORD_FIX_SECOND[stringA][2]) table.insert(TableB,tPos+1,GF_WORD_FIX_SECOND[stringA][2]) tLen=tLen+1 for l=1, getn(groupPosition) do if groupPosition[l][1] == tPos then groupPosition[l][2] = groupPosition[l][2]+1 elseif groupPosition[l][1] > tPos then groupPosition[l][1] = groupPosition[l][1]+1 groupPosition[l][2] = groupPosition[l][2]+1 elseif groupPosition[l][2] > tPos then groupPosition[l][2] = groupPosition[l][2]+1 end end
				if stringA ~= GF_WORD_FIX_SECOND[stringA][1]..GF_WORD_FIX_SECOND[stringA][2] then
					if GF_WORD_FIX_TRADE[TableC[tPos]] and not TradeFixNames[TableC[tPos]] and not GF_TRADE_TRIGGER[TableC[tPos]] then TableC[tPos] = GF_WORD_FIX_TRADE[TableC[tPos]][1] possibleGold = nil end
					if GF_WORD_FIX_TRADE[TableC[tPos+1]] and not TradeFixNames[TableC[tPos+1]] and not GF_TRADE_TRIGGER[TableC[tPos+1]] then TableC[tPos+1] = GF_WORD_FIX_TRADE[TableC[tPos+1]][1] possibleGold = nil end
					if GF_WORD_FIX_GUILD[TableB[tPos]] then TableB[tPos] = GF_WORD_FIX_GUILD[TableB[tPos]][1] end
					if GF_WORD_FIX_GUILD[TableB[tPos+1]] then TableB[tPos+1] = GF_WORD_FIX_GUILD[TableB[tPos+1]][1] end
					if tPos > 1 then tPos = tPos - 2 else tPos = tPos - 1 end
				end
			else
				if GF_WORD_FIX_TRADE[stringA] and not TradeFixNames[stringA] then
					if GF_TRADE_TRIGGER[stringA] then
						if GF_WORD_LEVEL_ZONE[TableA[tPos-1]] or GF_GROUP_IDS[TableA[tPos-1]] then
							TableC[tPos] = GF_TRADE_COMMON_WORDS[stringA]
							for k=1, j do table.remove(TableC,tPos+k) table.insert(TableC,"N") end
						end
					else
						TableC[tPos] = GF_WORD_FIX_TRADE[stringA][1]
						TradeFixNames[stringA] = true
						for k=1, j do table.remove(TableC,tPos+k) table.insert(TableC,tPos+k,GF_WORD_FIX_TRADE[stringA][2]) end
					end
					possibleGold = nil
				end
				if TableB["BRACKETS"] == stringA then for k=0, j do TableB[tPos+k] = "G" end
				elseif GF_WORD_FIX_GUILD[stringA] then TableB[tPos] = GF_WORD_FIX_GUILD[stringA][1] for k=1, j do table.remove(TableB,tPos+k) table.insert(TableB,tPos+k,GF_WORD_FIX_GUILD[stringA][2]) end end
			end
			tPos = tPos + 1
		end
	end
	for j=1, tLen do -- Add adjacent trade/guild words
		if strbyte(TableC[j]) <= 90 then
			if j > 1 and strbyte(TableC[j-1]) >= 97 then for i=1,250 do if TableC[j-i-1] and GF_TRADE_COMMON_WORDS[TableC[j-i-1]..TableC[j-i]] then TableC[j-i-1] = GF_TRADE_COMMON_WORDS[TableC[j-i-1]..TableC[j-i]] TableC[j-i] = "N" i=i+1 elseif GF_TRADE_COMMON_WORDS[TableC[j-i]] then TableC[j-i] = GF_TRADE_COMMON_WORDS[TableC[j-i]] else if GF_TRADE_CONNECTING_WORDS[TableC[j-i-1]] then elseif GF_TRADE_CONNECTING_WORDS[TableC[j-i-2]] then i = i + 1 elseif GF_TRADE_CONNECTING_WORDS[TableC[j-i-3]] then i = i + 2 elseif GF_TRADE_CONNECTING_WORDS[TableC[j-i-4]] then i = i + 3 else break end end end end
			if j < tLen and strbyte(TableC[j+1]) >= 97 then for i=1,250 do if TableC[j+i+1] and GF_TRADE_COMMON_WORDS[TableC[j+i]..TableC[j+i+1]] then TableC[j+i] = GF_TRADE_COMMON_WORDS[TableC[j+i]..TableC[j+i+1]] TableC[j+i+1] = "N" i=i+1 elseif GF_TRADE_COMMON_WORDS[TableC[j+i]] then TableC[j+i] = GF_TRADE_COMMON_WORDS[TableC[j+i]] else if GF_TRADE_CONNECTING_WORDS[TableC[j+i+1]] then elseif GF_TRADE_CONNECTING_WORDS[TableC[j+i+2]] then i = i + 1 elseif GF_TRADE_CONNECTING_WORDS[TableC[j+i+3]] then i = i + 2 elseif GF_TRADE_CONNECTING_WORDS[TableC[j+i+4]] then i = i + 3 else break end end end end
		end
		if strbyte(TableB[j]) <= 90 then
			if j > 1 and strbyte(TableB[j-1]) >= 97 then for i=1,250 do if TableB[j-i-1] and GF_GUILD_COMMON_WORDS[TableB[j-i-1]..TableB[j-i]] then TableB[j-i-1] = GF_GUILD_COMMON_WORDS[TableB[j-i-1]..TableB[j-i]] TableB[j-i] = "N" i=i+1 elseif GF_GUILD_COMMON_WORDS[TableB[j-i]] then TableB[j-i] = GF_GUILD_COMMON_WORDS[TableB[j-i]] else if GF_GUILD_CONNECTING_WORDS[TableB[j-i-1]] then elseif GF_GUILD_CONNECTING_WORDS[TableB[j-i-2]] then i = i + 1 elseif GF_GUILD_CONNECTING_WORDS[TableB[j-i-3]] then i = i + 2 elseif GF_GUILD_CONNECTING_WORDS[TableB[j-i-4]] then i = i + 3 else break end end end end
			if j < tLen and strbyte(TableB[j+1]) >= 97 then for i=1,250 do if TableB[j+i+1] and GF_GUILD_COMMON_WORDS[TableB[j+i]..TableB[j+i+1]] then TableB[j+i] = GF_GUILD_COMMON_WORDS[TableB[j+i]..TableB[j+i+1]] TableB[j+i+1] = "N" i=i+1 elseif GF_GUILD_COMMON_WORDS[TableB[j+i]] then TableB[j+i] = GF_GUILD_COMMON_WORDS[TableB[j+i]] else if GF_GUILD_CONNECTING_WORDS[TableB[j+i+1]] then elseif GF_GUILD_CONNECTING_WORDS[TableB[j+i+2]] then i = i + 1 elseif GF_GUILD_CONNECTING_WORDS[TableB[j+i+3]] then i = i + 2 elseif GF_GUILD_CONNECTING_WORDS[TableB[j+i+4]] then i = i + 3 else break end end end end
		end
	end
	if tLen <= 6 then -- Check 4/6-word Phrase
		stringA = ""
		stringB = ""
		tVal = nil
		for i=1,tLen do stringA = stringA..TableA[i] end
		for i=1,tLen do stringB = stringB..TableC[i] if strbyte(TableC[i]) > 90 then tVal = true end end
		if GF_WORD_TRADE_PHRASE[stringB] then foundTrades = 1.5 if showInfo == true then print("tradephrase trades 1.5") end end
		if GF_GROUP_PHRASE[stringA] and foundLFM == 0 then foundLFM = 2 if showInfo == true then print("lfmphrase lfm 2") end end
		if strsub(arg1,-2) == "? " then
			if (GF_WORD_DUNGEON[stringA] or GF_WORD_RAID[stringA] or GF_WORD_PVP[stringA]) then foundLFG = 2 if showInfo == true then print("group? lfg 2") end
			elseif GF_WORD_TRADE_QUESTION[stringB] then foundTrades = 2 if showInfo == true then print("trades? trades ") end end
			stringA = ""
			for i=1,tLen-1 do stringA = stringA..TableA[i] end if (GF_WORD_DUNGEON[stringA] or GF_WORD_RAID[stringA] or GF_WORD_PVP[stringA]) and GF_GROUP_SHORT_TRIGGER[TableA[tLen]] then foundLFG = 2 if showInfo == true then print("group? lfg 2") end end
			for i=1,tLen do
				if GF_WORD_RAID[TableA[i]] then
					if GF_RAID_BEFORE[TableA[i-1]] and (GF_RAID_BEFORE[TableA[i-1]][TableA[i+1]] or (TableA[i+2] and GF_RAID_BEFORE[TableA[i-1]][TableA[i+1]..TableA[i+2]])) then if foundLFG < 3 then foundLFG = 3 if showInfo == true then print("1 word before/1-2 words after raid ?") end end end
					if GF_RAID_AFTER[TableA[i+1]] or (TableA[i+2] and GF_RAID_AFTER[TableA[i+1]..TableA[i+2]]) or (TableA[i+3] and GF_RAID_AFTER[TableA[i+1]..TableA[i+2]..TableA[i+3]]) then if foundLFG < 3 then foundLFG = 3 if showInfo == true then print("1-3 words after raid ?") end end end
				end
			end
		end
		if tLen > 1 then
			if tLen <= 4 then
				if GF_TRADE_FIRST_TWO[TableC[1]..TableC[2]] then foundTrades = foundTrades + GF_TRADE_FIRST_TWO[TableC[1]..TableC[2]] if showInfo == true then print("first two trades "..GF_TRADE_FIRST_TWO[TableC[1]..TableC[2]]) end end
				if GF_TRADE_FIRST_LAST[TableC[1]] and GF_TRADE_FIRST_LAST[TableC[1]][TableC[tLen]] then foundTrades = foundTrades + 2 if showInfo == true then print("firstlast trades 2") end end
				if foundLFM == 0 and foundLFG == 0 then
					if GF_LFM_AFTER[TableA[tLen-1]..TableA[tLen]] then foundLFM = 2 table.insert(lfmlfgName, TableA[tLen-1]..TableA[tLen]) if showInfo == true then print("word lfmafter lfm 2") end end
					if GF_GROUP_FIRST_LAST[TableA[1]] and GF_GROUP_FIRST_LAST[TableA[1]][TableA[tLen]] then foundLFM = 2 if showInfo == true then print("firstlast lfm 2") end end
					if GF_GROUP_FIRST_WORD_SKIP[TableA[1]] and tLen > 2 then stringA = TableA[2]..TableA[3] else stringA = TableA[1]..TableA[2] end -- Skip Yes/No for GF_GROUP_FIRST_TWO_SHORT
					if GF_GROUP_FIRST_TWO_SHORT[stringA] then if GF_GROUP_FIRST_TWO_SHORT[stringA] > foundLFM then foundLFM = GF_GROUP_FIRST_TWO_SHORT[stringA] table.insert(lfmPosition, {1,2,GF_GROUP_FIRST_TWO_SHORT[stringA],true}) if showInfo == true then print(stringA.." lfm "..GF_GROUP_FIRST_TWO_SHORT[stringA]) end end end
					stringA = "" for i=1,tLen-1 do stringA = stringA..TableA[i] end if (GF_WORD_DUNGEON[stringA] or GF_WORD_RAID[stringA] or GF_WORD_PVP[stringA] or (GF_WORD_QUEST[stringA] and not GF_LFM_BYPASS[stringA])) and GF_GROUP_SHORT_TRIGGER[TableA[tLen]] then foundLFM = 2 if showInfo == true then print("<group> trigger lfm 2") end end
					stringA = "" for i=2,tLen do stringA = stringA..TableA[i] end if (GF_WORD_DUNGEON[stringA] or GF_WORD_RAID[stringA] or GF_WORD_PVP[stringA] or (GF_WORD_QUEST[stringA] and not GF_LFM_BYPASS[stringA])) and GF_GROUP_SHORT_TRIGGER[TableA[1]] then foundLFM = 2 if showInfo == true then print("<group> trigger lfm 2") end end
				end
			end
			if not tVal then	foundTrades = foundTrades + 1.25 if showInfo == true then print("tradeonly trades 1.25") end end
			if GF_GUILD_FIRST_TWO[TableA[1]..TableA[2]] then foundGuild = 1 if showInfo == true then print("guild_first_two guild 3") end
			elseif GF_GUILD_LAST_TWO[TableA[tLen-1]..TableA[tLen]] then foundGuild = 1 if showInfo == true then print("guild_last_two guild 3") end end
			if GF_GUILD_FIRST_LAST[TableB[1]] and GF_GUILD_FIRST_LAST[TableB[1]][TableB[tLen]] then foundGuild = foundGuild + 3 if showInfo == true then print("firstlast guild 3") end end
			if foundLFM == 0 and GF_GROUP_FIRST_TWO[TableA[1]..TableA[2]] then if GF_GROUP_FIRST_TWO[TableA[1]..TableA[2]] > foundLFM then foundLFM = GF_GROUP_FIRST_TWO[TableA[1]..TableA[2]] table.insert(lfmlfgName, TableA[1]..TableA[2]) table.insert(lfmPosition, {1,2,GF_GROUP_FIRST_TWO[TableA[1]..TableA[2]],true}) if showInfo == true then print(TableA[1]..TableA[2].." lfm "..GF_GROUP_FIRST_TWO[TableA[1]..TableA[2]]) end end end
		end
		tVal = nil
		stringB = ""
		for i=1,tLen do stringB = stringB..TableB[i] if strbyte(TableB[i]) > 90 then tVal = true end end
		if GF_GUILD_PHRASE[stringB] then foundGuild = foundGuild + GF_GUILD_PHRASE[stringB] if showInfo == true then print("guildphrase guild "..GF_GUILD_PHRASE[stringB]) end end
		if GF_WORD_GUILD_QUESTION[stringB] and strsub(arg1,-2) == "? " then foundGuild = 3 if showInfo == true then print("guild? guild 3") end end
		if not tVal and tLen > 2 then foundGuild = foundGuild + 1 if showInfo == true then print("guildonly guild 1") end end
	end
	for j=0,3 do -- Score the TableA
		for i=1,tLen do
			if i+j <= tLen then -- if i+j <= tLen then
				stringA = TableA[i]
				for k=1, j do stringA = stringA..TableA[i+k] end
				if GF_WORD_BLOCK_LIST[stringA] then foundBlockList = true return end
				if GF_WORD_IGNORE[stringA] then foundIgnore = foundIgnore + GF_WORD_IGNORE[stringA] if showInfo == true then print(stringA.." ignore "..GF_WORD_IGNORE[stringA]) end end
				if GF_WORD_HC[stringA] then foundHC = true
				elseif GF_WORD_NOT_HC[stringA] then foundNotHC = true
				elseif GF_GUILD_WORD_EXCLUSION[stringA] then foundGuildExclusion = foundGuildExclusion + GF_GUILD_WORD_EXCLUSION[stringA] if showInfo == true then print(stringA.." guildex") end end
				if GF_TRADE_WORD_EXCLUSION[stringA] then foundTradesExclusion = foundTradesExclusion + GF_TRADE_WORD_EXCLUSION[stringA] if showInfo == true then print(stringA.." tradesex") end end
				if GF_WORD_LFM[stringA] and (not GF_LFM_TRIGGER[stringA] or GF_WORD_LEVEL_ZONE[TableA[i+j+1]] or GF_GROUP_IDS[TableA[i+j+1]] or GF_GROUP_IDS[TableA[i-1]] or GF_WORD_LEVEL_ZONE[TableA[i-1]] or (TableA[i+j+2] and GF_WORD_LEVEL_ZONE[TableA[i+j+1]..TableA[i+j+2]]) or (TableA[i+j+2] and GF_GROUP_IDS[TableA[i+j+1]..TableA[i+j+2]])) then
					table.insert(lfmlfgName,stringA)
					if showInfo == true then print(stringA.." lfm "..GF_WORD_LFM[stringA]) end
					if GF_WORD_LEVEL_ZONE[TableA[i+j+1]] then
						if not foundQuest[1] or GF_WORD_LEVEL_ZONE[TableA[i+j+1]] > foundQuest[1] then foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i+j+1]] table.insert(lfmPosition, {i,i+j+1,GF_WORD_LFM[stringA] + .75,true}) if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {i+j+1,i+j+1} elseif firstLFMLFG[1] ~= i+j+1 and firstLFMLFG[2] ~= i+j+1 then foundTradesExclusion = foundTradesExclusion + .5 end else table.insert(lfmPosition, {i,i+j,GF_WORD_LFM[stringA],true}) table.insert(groupPosition,{i+j+1,i+j+1,TableA[i+j+1]}) end
					elseif TableA[i+j+2] and GF_WORD_LEVEL_ZONE[TableA[i+j+1]..TableA[i+j+2]] then
						if not foundQuest[1] or GF_WORD_LEVEL_ZONE[TableA[i+j+1]..TableA[i+j+2]] > foundQuest[1] then foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i+j+1]..TableA[i+j+2]] table.insert(lfmPosition, {i,i+j+2,GF_WORD_LFM[stringA] + .75,true}) if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {i+j+1,i+j+2} elseif firstLFMLFG[1] ~= i+j+1 and firstLFMLFG[2] ~= i+j+2 then foundTradesExclusion = foundTradesExclusion + .5 end else table.insert(lfmPosition, {i,i+j,GF_WORD_LFM[stringA],true}) table.insert(groupPosition,{i+j+1,i+j+2,TableA[i+j+1]..TableA[i+j+2]}) end
					elseif GF_GROUP_IDS[TableA[i+j+1]] then
						table.insert(lfmPosition, {i,i+j+1,GF_WORD_LFM[stringA] + .75,true}) if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {i+j+1,i+j+1} elseif firstLFMLFG[1] ~= i+j+1 and firstLFMLFG[2] ~= i+j+1 then foundTradesExclusion = foundTradesExclusion + .5 end
					elseif GF_WORD_LEVEL_ZONE[TableA[i-1]] then
						if not foundQuest[1] or GF_WORD_LEVEL_ZONE[TableA[i-1]] > foundQuest[1] then foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i-1]] table.insert(lfmPosition, {i-1,i+j,GF_WORD_LFM[stringA] + .75,true}) if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {i-1,i-1} elseif firstLFMLFG[1] ~= i-1 and firstLFMLFG[2] ~= i-1 then foundTradesExclusion = foundTradesExclusion + .5 end else table.insert(lfmPosition, {i,i+j,GF_WORD_LFM[stringA],true}) table.insert(groupPosition,{i-1,i-1,TableA[i-1]}) end
					elseif TableA[i-2] and GF_WORD_LEVEL_ZONE[TableA[i-2]..TableA[i-1]] then
						if not foundQuest[1] or GF_WORD_LEVEL_ZONE[TableA[i-2]..TableA[i-1]] > foundQuest[1] then foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i-2]..TableA[i-1]] table.insert(lfmPosition, {i-2,i+j,GF_WORD_LFM[stringA] + .75,true}) if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {i-2,i-1} elseif firstLFMLFG[1] ~= i-2 and firstLFMLFG[2] ~= i-1 then foundTradesExclusion = foundTradesExclusion + .5 end else table.insert(lfmPosition, {i,i+j,GF_WORD_LFM[stringA],true}) table.insert(groupPosition,{i-2,i-1,TableA[i-2]..TableA[i-1]}) end
					elseif GF_GROUP_IDS[TableA[i-1]] then
						table.insert(lfmPosition, {i-1,i+j,GF_WORD_LFM[stringA] + .75,true}) if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {i-1,i-1} elseif firstLFMLFG[1] ~= i-1 and firstLFMLFG[2] ~= i-1 then foundTradesExclusion = foundTradesExclusion + .5 end
					else
						table.insert(lfmPosition, {i,i+j,GF_WORD_LFM[stringA],true})
					end
					if GF_QUEST_ONLY_AFTER_LFM[TableA[i+j+1]] then if not foundQuest[1] or GF_QUEST_ONLY_AFTER_LFM[TableA[i+j+1]] > foundQuest[1] then foundQuest[1] = GF_QUEST_ONLY_AFTER_LFM[TableA[i+j+1]] lfmPosition[1][2] = lfmPosition[1][2] + 1 lfmPosition[1][3] = lfmPosition[1][3] + .75 if showInfo == true then print(TableA[i+j+1].." only after lfm") end end end
					numGroupWords = numGroupWords + 1 + j
					if GF_WORD_DUNGEON[GF_WORD_GROUP_BYPASS[TableA[i-1]]] then GF_CheckForDungeon(GF_WORD_GROUP_BYPASS[TableA[i-1]],i-1,i-1) numGroupWords = numGroupWords + 1
					elseif GF_WORD_RAID[GF_WORD_GROUP_BYPASS[TableA[i-1]]] then GF_CheckForRaid(GF_WORD_GROUP_BYPASS[TableA[i-1]],i-1,i-1) numGroupWords = numGroupWords + 1
					elseif GF_WORD_DUNGEON[GF_WORD_GROUP_BYPASS[TableA[i+j+1]]] then GF_CheckForDungeon(GF_WORD_GROUP_BYPASS[TableA[i+j+1]],i+j+1,i+j+1) numGroupWords = numGroupWords + 1
					elseif GF_LFM_CONNECT_WORDS[TableA[i+j+1]] and GF_WORD_DUNGEON[GF_WORD_GROUP_BYPASS[TableA[i+j+2]]] then GF_CheckForDungeon(GF_WORD_GROUP_BYPASS[TableA[i+j+2]],i+j+2,i+j+2) numGroupWords = numGroupWords + 1
					elseif GF_LFM_CONNECT_WORDS[TableA[i+j+1]] and GF_LFM_CONNECT_WORDS[TableA[i+j+2]] and GF_WORD_DUNGEON[GF_WORD_GROUP_BYPASS[TableA[i+j+3]]] then GF_CheckForDungeon(GF_WORD_GROUP_BYPASS[TableA[i+j+3]],i+j+3,i+j+3) numGroupWords = numGroupWords + 1
					elseif GF_WORD_RAID[GF_WORD_GROUP_BYPASS[TableA[i+j+1]]] then GF_CheckForRaid(GF_WORD_GROUP_BYPASS[TableA[i+j+1]],i+j+1,i+j+1) numGroupWords = numGroupWords + 1
					elseif GF_LFM_CONNECT_WORDS[TableA[i+j+1]] and GF_WORD_RAID[GF_WORD_GROUP_BYPASS[TableA[i+j+2]]] then GF_CheckForRaid(GF_WORD_GROUP_BYPASS[TableA[i+j+2]],i+j+2,i+j+2) numGroupWords = numGroupWords + 1
					elseif GF_LFM_CONNECT_WORDS[TableA[i+j+1]] and GF_LFM_CONNECT_WORDS[TableA[i+j+2]] and GF_WORD_RAID[GF_WORD_GROUP_BYPASS[TableA[i+j+3]]] then GF_CheckForRaid(GF_WORD_GROUP_BYPASS[TableA[i+j+3]],i+j+3,i+j+3) numGroupWords = numGroupWords + 1 end
				elseif GF_WORD_LFG[stringA] then
					table.insert(lfmlfgName,stringA)
					if showInfo == true then print(stringA.." lfg "..GF_WORD_LFG[stringA]) end
					if GF_WORD_LEVEL_ZONE[TableA[i+j+1]] then
						if not foundQuest[1] or GF_WORD_LEVEL_ZONE[TableA[i+j+1]] > foundQuest[1] then foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i+j+1]] table.insert(lfmPosition, {i,i+j+1,GF_WORD_LFG[stringA] + .75}) if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {i+j+1,i+j+1} elseif firstLFMLFG[1] ~= i+j+1 and firstLFMLFG[2] ~= i+j+1 then foundTradesExclusion = foundTradesExclusion + .5 end else table.insert(lfmPosition, {i,i+j,GF_WORD_LFG[stringA]}) table.insert(groupPosition,{i+j+1,i+j+1,TableA[i+j+1]}) end
					elseif TableA[i+j+2] and GF_WORD_LEVEL_ZONE[TableA[i+j+1]..TableA[i+j+2]] then
						if not foundQuest[1] or GF_WORD_LEVEL_ZONE[TableA[i+j+1]..TableA[i+j+2]] > foundQuest[1] then foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i+j+1]..TableA[i+j+2]] table.insert(lfmPosition, {i,i+j+2,GF_WORD_LFG[stringA] + .75}) if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {i+j+1,i+j+2} elseif firstLFMLFG[1] ~= i+j+1 and firstLFMLFG[2] ~= i+j+2 then foundTradesExclusion = foundTradesExclusion + .5 end else table.insert(lfmPosition, {i,i+j,GF_WORD_LFG[stringA]}) table.insert(groupPosition,{i+j+1,i+j+2,TableA[i+j+1]..TableA[i+j+2]}) end
					elseif GF_GROUP_IDS[TableA[i+j+1]] then
						table.insert(lfmPosition, {i,i+j+1,GF_WORD_LFG[stringA] + .75}) if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {i+j+1,i+j+1} elseif firstLFMLFG[1] ~= i+j+1 and firstLFMLFG[2] ~= i+j+1 then foundTradesExclusion = foundTradesExclusion + .5 end
					elseif GF_WORD_LEVEL_ZONE[TableA[i-1]] then
						if not foundQuest[1] or GF_WORD_LEVEL_ZONE[TableA[i-1]] > foundQuest[1] then foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i-1]] table.insert(lfmPosition, {i-1,i+j,GF_WORD_LFG[stringA] + .75}) if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {i-1,i-1} elseif firstLFMLFG[1] ~= i-1 and firstLFMLFG[2] ~= i-1 then foundTradesExclusion = foundTradesExclusion + .5 end else table.insert(lfmPosition, {i,i+j,GF_WORD_LFG[stringA]}) table.insert(groupPosition,{i-1,i-1,TableA[i-1]}) end
					elseif TableA[i-2] and GF_WORD_LEVEL_ZONE[TableA[i-2]..TableA[i-1]] then
						if not foundQuest[1] or GF_WORD_LEVEL_ZONE[TableA[i-2]..TableA[i-1]] > foundQuest[1] then foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i-2]..TableA[i-1]] table.insert(lfmPosition, {i-2,i+j,GF_WORD_LFG[stringA] + .75}) if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {i-2,i-1} elseif firstLFMLFG[1] ~= i-2 and firstLFMLFG[2] ~= i-1 then foundTradesExclusion = foundTradesExclusion + .5 end else table.insert(lfmPosition, {i,i+j,GF_WORD_LFG[stringA]}) table.insert(groupPosition,{i-2,i-1,TableA[i-2]..TableA[i-1]}) end
					elseif GF_GROUP_IDS[TableA[i-1]] then
						table.insert(lfmPosition, {i-1,i+j,GF_WORD_LFG[stringA] + .75}) if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {i-1,i-1} elseif firstLFMLFG[1] ~= i-1 and firstLFMLFG[2] ~= i-1 then foundTradesExclusion = foundTradesExclusion + .5 end
					else
						table.insert(lfmPosition, {i,i+j,GF_WORD_LFG[stringA]})
					end
					if GF_QUEST_ONLY_AFTER_LFG[TableA[i+j+1]] then if not foundQuest[1] or GF_QUEST_ONLY_AFTER_LFG[TableA[i+j+1]] > foundQuest[1] then foundQuest[1] = GF_QUEST_ONLY_AFTER_LFG[TableA[i+j+1]] lfmPosition[1][2] = lfmPosition[1][2] + 1 lfmPosition[1][3] = lfmPosition[1][3] + .75 if showInfo == true then print(TableA[i+j+1].." only after lfg") end end end
					numGroupWords = numGroupWords + 1 + j
					if GF_WORD_DUNGEON[GF_WORD_GROUP_BYPASS[TableA[i-1]]] then GF_CheckForDungeon(GF_WORD_GROUP_BYPASS[TableA[i-1]],i-1,i-1) numGroupWords = numGroupWords + 1
					elseif GF_WORD_RAID[GF_WORD_GROUP_BYPASS[TableA[i-1]]] then GF_CheckForRaid(GF_WORD_GROUP_BYPASS[TableA[i-1]],i-1,i-1) numGroupWords = numGroupWords + 1
					elseif GF_WORD_DUNGEON[GF_WORD_GROUP_BYPASS[TableA[i+j+1]]] then GF_CheckForDungeon(GF_WORD_GROUP_BYPASS[TableA[i+j+1]],i+j+1,i+j+1) numGroupWords = numGroupWords + 1
					elseif GF_LFM_CONNECT_WORDS[TableA[i+j+1]] and GF_WORD_DUNGEON[GF_WORD_GROUP_BYPASS[TableA[i+j+2]]] then GF_CheckForDungeon(GF_WORD_GROUP_BYPASS[TableA[i+j+2]],i+j+2,i+j+2) numGroupWords = numGroupWords + 1
					elseif GF_LFM_CONNECT_WORDS[TableA[i+j+1]] and GF_LFM_CONNECT_WORDS[TableA[i+j+2]] and GF_WORD_DUNGEON[GF_WORD_GROUP_BYPASS[TableA[i+j+3]]] then GF_CheckForDungeon(GF_WORD_GROUP_BYPASS[TableA[i+j+3]],i+j+3,i+j+3) numGroupWords = numGroupWords + 1
					elseif GF_WORD_RAID[GF_WORD_GROUP_BYPASS[TableA[i+j+1]]] then GF_CheckForRaid(GF_WORD_GROUP_BYPASS[TableA[i+j+1]],i+j+1,i+j+1) numGroupWords = numGroupWords + 1
					elseif GF_LFM_CONNECT_WORDS[TableA[i+j+1]] and GF_WORD_RAID[GF_WORD_GROUP_BYPASS[TableA[i+j+2]]] then GF_CheckForRaid(GF_WORD_GROUP_BYPASS[TableA[i+j+2]],i+j+2,i+j+2) numGroupWords = numGroupWords + 1
					elseif GF_LFM_CONNECT_WORDS[TableA[i+j+1]] and GF_LFM_CONNECT_WORDS[TableA[i+j+2]] and GF_WORD_RAID[GF_WORD_GROUP_BYPASS[TableA[i+j+3]]] then GF_CheckForRaid(GF_WORD_GROUP_BYPASS[TableA[i+j+3]],i+j+3,i+j+3) numGroupWords = numGroupWords + 1 end
				end
				if GF_WORD_CLASSES[stringA] then foundClass = GF_WORD_CLASSES[stringA] table.insert(groupName,stringA) groupName[stringA] = true numGroupWords = numGroupWords + 1 + j if GF_WORD_ROLES[stringA] then foundCFlags[GF_WORD_ROLES[stringA]] = true end
				elseif GF_WORD_DUNGEON[stringA] then
					GF_CheckForDungeon(stringA,i,i+j)
					numGroupWords = numGroupWords + 1 + j
				elseif GF_WORD_RAID[stringA] then
					GF_CheckForRaid(stringA,i,i+j)
					if GF_RAID_BEFORE[TableA[i-1]] and (GF_RAID_BEFORE[TableA[i-1]][TableA[i+j+1]] or (TableA[i+j+2] and GF_RAID_BEFORE[TableA[i-1]][TableA[i+j+1]..TableA[i+j+2]])) then foundGuildExclusion = foundGuildExclusion + 1 if foundLFM < 3 then foundLFM = 3 if showInfo == true then print("1 word before/1-2 words after raid") end end end
					if GF_RAID_AFTER[TableA[i+j+1]] or (TableA[i+j+2] and GF_RAID_AFTER[TableA[i+j+1]..TableA[i+j+2]]) or (TableA[i+j+3] and GF_RAID_AFTER[TableA[i+j+1]..TableA[i+j+2]..TableA[i+j+3]]) then foundGuildExclusion = foundGuildExclusion + 1 if foundLFM < 3 then foundLFM = 3 if showInfo == true then print("1-3 words after raid") end end end
					numGroupWords = numGroupWords + 1 + j
				elseif GF_WORD_PVP[stringA] and (not GF_PVP_TRIGGER[stringA] or GF_PVP_TRIGGER_WORD[TableA[i+j+1]] or GF_PVP_TRIGGER_WORD[TableA[i-1]] or (GF_PVP_TRIGGER_WORD[TableA[i-2]] and GF_PVP_TRIGGER_WORD[TableA[i-2]..TableA[i-1]])) then
					if showInfo == true then print(stringA.." pvp") end
					if not foundPvP or GF_WORD_PVP[stringA] > foundPvP then foundPvP = GF_WORD_PVP[stringA] table.insert(foundPFlags,1,stringA) else table.insert(foundPFlags, stringA) end
					if foundPvP == 0 then for num,word in gfind(arg1, "[%p%s](%d+)%s?(%a+)[%p%s]") do if (GF_WORD_PVP[word] or GF_PVP_DETECTION[word]) and tonumber(num) > foundPvP and tonumber(num) > 8 and tonumber(num) < 61 then foundPvP = tonumber(num) break end end end
					if foundPvP == 0 then for word,num in gfind(arg1, "[%p%s](%a+)%s?(%d+)[%p%s]") do if (GF_WORD_PVP[word] or GF_PVP_DETECTION[word]) and tonumber(num) > foundPvP and tonumber(num) > 8 and tonumber(num) < 61 then foundPvP = tonumber(num) break end end end
					if foundPvP == 0 then table.insert(groupName,stringA) groupName[stringA] = true end
					if not GF_PVP_BYPASS[stringA] then foundTradesExclusion = foundTradesExclusion + .5 foundGuildExclusion = foundGuildExclusion + .3 else foundTradesExclusion = foundTradesExclusion + .3 foundGuildExclusion = foundGuildExclusion + .1 end
					if GF_PVP_TRIGGER[stringA] then
						if GF_PVP_TRIGGER_WORD[TableA[i+j+1]] then table.insert(groupPosition,{i,i+j+1,stringA}) else table.insert(groupPosition,{i-1,i+j,stringA}) end
						numGroupWords = numGroupWords + 2 + j
					else
						numGroupWords = numGroupWords + 1 + j
						table.insert(groupPosition,{i,i+j,stringA})
					end
				end
				if GF_WORD_LEVEL_ZONE[stringA] and (TableA[i-1] == GF_PORTAL_LOCALIZED or TableA[i+1] == GF_PORTAL_LOCALIZED) then foundTrades = foundTrades + 1 if showInfo == true then print("portalzone trade 1") end end
-- Score Trades separately
				stringA = TableC[i]
				for k=1, j do stringA = stringA..TableC[i+k] end
				if GF_WORD_TRADE[stringA] then if showInfo == true then print(stringA.." trade "..GF_WORD_TRADE[stringA]) end foundTrades = foundTrades + GF_WORD_TRADE[stringA] end

-- Score Trades separately
				stringA = TableB[i]
				for k=1, j do stringA = stringA..TableB[i+k] end
				if GF_WORD_GUILD[stringA] then
					if stringA == "G" then
						if foundGuild < 100 then foundGuild = foundGuild + GF_WORD_GUILD[stringA] if showInfo == true then print(stringA.." guild "..GF_WORD_GUILD[stringA]) end end
						if TableB[i+j+1] ~= "G" then
							if GF_GUILD_PREFIX_SUFFIX[TableA[i+j+1]] then foundGuild = foundGuild + GF_GUILD_PREFIX_SUFFIX[TableA[i+j+1]] if showInfo == true then print(TableA[i+j+1].." guildprefix "..GF_GUILD_PREFIX_SUFFIX[TableA[i+j+1]]) end end
							if GF_GUILD_WORD_EXCLUSION[TableA[i+j+1]] then foundGuild = foundGuild + GF_GUILD_WORD_EXCLUSION[TableA[i+j+1]] if showInfo == true then print(TableA[i+j+1].." guildprefix "..GF_GUILD_WORD_EXCLUSION[TableA[i+j+1]]) end end
							if TableA[i+j+2] and GF_GUILD_PREFIX_SUFFIX[TableA[i+j+1]..TableA[i+j+2]] then foundGuild = foundGuild + GF_GUILD_PREFIX_SUFFIX[TableA[i+j+1]..TableA[i+j+2]] if showInfo == true then print(TableA[i+j+1]..TableA[i+j+2].." guildprefix "..GF_GUILD_PREFIX_SUFFIX[TableA[i+j+1]..TableA[i+j+2]]) end end
							if TableA[i+j+2] and GF_GUILD_WORD_EXCLUSION[TableA[i+j+1]..TableA[i+j+2]] then foundGuild = foundGuild + GF_GUILD_WORD_EXCLUSION[TableA[i+j+1]..TableA[i+j+2]] if showInfo == true then print(TableA[i+j+1]..TableA[i+j+2].." guildprefix "..GF_GUILD_WORD_EXCLUSION[TableA[i+j+1]..TableA[i+j+2]]) end end
						end
						if TableB[i-1] ~= "G" then
							if GF_GUILD_PREFIX_SUFFIX[TableA[i-1]] then foundGuild = foundGuild + GF_GUILD_PREFIX_SUFFIX[TableA[i-1]] if showInfo == true then print(TableA[i-1].." guildprefix "..GF_GUILD_PREFIX_SUFFIX[TableA[i-1]]) end end
							if TableA[i-2] and GF_GUILD_PREFIX_SUFFIX[TableA[i-2]..TableA[i-1]] then foundGuild = foundGuild + GF_GUILD_PREFIX_SUFFIX[TableA[i-2]..TableA[i-1]] if showInfo == true then print(TableA[i-2]..TableA[i-1].." guildprefix "..GF_GUILD_PREFIX_SUFFIX[TableA[i-2]..TableA[i-1]]) end end
							if TableA[i-3] and GF_GUILD_PREFIX_SUFFIX[TableA[i-3]..TableA[i-2]..TableA[i-1]] then foundGuild = foundGuild + GF_GUILD_PREFIX_SUFFIX[TableA[i-3]..TableA[i-2]..TableA[i-1]] if showInfo == true then print(TableA[i-3]..TableA[i-2]..TableA[i-1].." guildprefix "..GF_GUILD_PREFIX_SUFFIX[TableA[i-3]..TableA[i-2]..TableA[i-1]]) end end
							if GF_GUILD_WORD_EXCLUSION[TableA[i-1]] then foundGuild = foundGuild + GF_GUILD_WORD_EXCLUSION[TableA[i-1]] if showInfo == true then print(TableA[i-1].." guildprefix "..GF_GUILD_WORD_EXCLUSION[TableA[i-1]]) end end
							if TableA[i-2] and GF_GUILD_WORD_EXCLUSION[TableA[i-2]..TableA[i-1]] then foundGuild = foundGuild + GF_GUILD_WORD_EXCLUSION[TableA[i-2]..TableA[i-1]] if showInfo == true then print(TableA[i-2]..TableA[i-1].." guildprefix "..GF_GUILD_WORD_EXCLUSION[TableA[i-2]..TableA[i-1]]) end end
							if TableA[i-3] and GF_GUILD_WORD_EXCLUSION[TableA[i-3]..TableA[i-2]..TableA[i-1]] then foundGuild = foundGuild + GF_GUILD_WORD_EXCLUSION[TableA[i-3]..TableA[i-2]..TableA[i-1]] if showInfo == true then print(TableA[i-3]..TableA[i-2]..TableA[i-1].." guildprefix "..GF_GUILD_WORD_EXCLUSION[TableA[i-3]..TableA[i-2]..TableA[i-1]]) end end
						end
					else
						foundGuild = foundGuild + GF_WORD_GUILD[stringA]
						if showInfo == true then print(stringA.." guild "..GF_WORD_GUILD[stringA]) end
					end
				end
			end
		end
	end

	for i=1, getn(groupPosition) do
		if GF_WORD_IGNORE[TableA[groupPosition[i][2]+1]] then foundIgnore = foundIgnore + GF_WORD_IGNORE[TableA[groupPosition[i][2]+1]] if showInfo == true then print(TableA[groupPosition[i][2]+1].." ignore "..GF_WORD_IGNORE[TableA[groupPosition[i][2]+1]]) end end
		if GF_WORD_IGNORE_AFTER[TableA[groupPosition[i][2]+1]] then foundIgnore = foundIgnore + GF_WORD_IGNORE_AFTER[TableA[groupPosition[i][2]+1]] if showInfo == true then print(TableA[groupPosition[i][2]+1].." ignore "..GF_WORD_IGNORE_AFTER[TableA[groupPosition[i][2]+1]]) end end
		if GF_WORD_IGNORE[TableA[groupPosition[i][1]-1]] then foundIgnore = foundIgnore + GF_WORD_IGNORE[TableA[groupPosition[i][1]-1]] if showInfo == true then print(TableA[groupPosition[i][1]-1].." ignore "..GF_WORD_IGNORE[TableA[groupPosition[i][1]-1]]) end end
		if GF_WORD_IGNORE_BEFORE[TableA[groupPosition[i][1]-1]] then foundIgnore = foundIgnore + GF_WORD_IGNORE_BEFORE[TableA[groupPosition[i][1]-1]] if showInfo == true then print(TableA[groupPosition[i][1]-1].." ignore "..GF_WORD_IGNORE_BEFORE[TableA[groupPosition[i][1]-1]]) end end
		if TableA[groupPosition[i][2]+2] then
			if GF_WORD_IGNORE[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]] then foundIgnore = foundIgnore + GF_WORD_IGNORE[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]] if showInfo == true then print(TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2].." ignore "..GF_WORD_IGNORE[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]]) end end
			if GF_WORD_IGNORE_AFTER[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]] then foundIgnore = foundIgnore + GF_WORD_IGNORE_AFTER[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]] if showInfo == true then print(TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2].." ignore "..GF_WORD_IGNORE_AFTER[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]]) end end
		end
		if TableA[groupPosition[i][2]+3] then
			if GF_WORD_IGNORE[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]..TableA[groupPosition[i][2]+3]] then foundIgnore = foundIgnore + GF_WORD_IGNORE[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]..TableA[groupPosition[i][2]+3]] if showInfo == true then print(TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]..TableA[groupPosition[i][2]+3].." ignore "..GF_WORD_IGNORE[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]..TableA[groupPosition[i][2]+3]]) end end
			if GF_WORD_IGNORE_AFTER[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]..TableA[groupPosition[i][2]+3]] then foundIgnore = foundIgnore + GF_WORD_IGNORE_AFTER[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]..TableA[groupPosition[i][2]+3]] if showInfo == true then print(TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]..TableA[groupPosition[i][2]+3].." ignore "..GF_WORD_IGNORE_AFTER[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]..TableA[groupPosition[i][2]+3]]) end end
		end
		if TableA[groupPosition[i][1]-2] then
			if GF_WORD_IGNORE[TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] then
				foundIgnore = foundIgnore + GF_WORD_IGNORE[TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]]
				if showInfo == true then print(TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1].." ignore "..GF_WORD_IGNORE[TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]]) end end
			if GF_WORD_IGNORE_BEFORE[TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] then
				foundIgnore = foundIgnore + GF_WORD_IGNORE_BEFORE[TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]]
				if showInfo == true then print(TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1].." ignore "..GF_WORD_IGNORE_BEFORE[TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]]) end end
		end
		if TableA[groupPosition[i][1]-3] then
			if GF_WORD_IGNORE[TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] then foundIgnore = foundIgnore + GF_WORD_IGNORE[TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] if showInfo == true then print(TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1].." ignore "..GF_WORD_IGNORE[TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]]) end end
			if GF_WORD_IGNORE_BEFORE[TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] then foundIgnore = foundIgnore + GF_WORD_IGNORE_BEFORE[TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] if showInfo == true then print(TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1].." ignore "..GF_WORD_IGNORE_BEFORE[TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]]) end end
		end
		if not GF_LFM_BYPASS[groupPosition[i][3]] then
			if GF_LFM_BEFORE[TableA[groupPosition[i][1]-1]] then table.insert(lfmPosition, {groupPosition[i][1]-1,groupPosition[i][1]-1,GF_LFM_BEFORE[TableA[groupPosition[i][1]-1]],true}) if GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][1]-1]] then foundGuildExclusion = foundGuildExclusion + GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][1]-1]] end if showInfo == true then print(groupPosition[i][3].." triggername lfm 1/2(-1)("..(groupPosition[i][1]-1)..","..(groupPosition[i][1]-1)..").. tradesex 1") end numGroupWords = numGroupWords + 1 end
			if GF_LFG_BEFORE[TableA[groupPosition[i][1]-1]] then table.insert(lfmPosition, {groupPosition[i][1]-1,groupPosition[i][1]-1,GF_LFG_BEFORE[TableA[groupPosition[i][1]-1]]}) if GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][1]-1]] then foundGuildExclusion = foundGuildExclusion + GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][1]-1]] end if showInfo == true then print(groupPosition[i][3].." triggername lfg 1/2(-1)("..(groupPosition[i][1]-1)..","..(groupPosition[i][1]-1)..").. tradesex 1") end numGroupWords = numGroupWords + 1 end
			if GF_LFM_AFTER[TableA[groupPosition[i][2]+1]] then table.insert(lfmPosition, {groupPosition[i][2]+1,groupPosition[i][2]+1,GF_LFM_AFTER[TableA[groupPosition[i][2]+1]],true}) if GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][2]+1]] then foundGuildExclusion = foundGuildExclusion + GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][2]+1]] end if showInfo == true then print(groupPosition[i][3].." triggername lfm 1/2(+1)("..(groupPosition[i][2]+1)..","..(groupPosition[i][2]+1)..").. tradesex 1") end numGroupWords = numGroupWords + 1 end
			if GF_LFG_AFTER[TableA[groupPosition[i][2]+1]] then table.insert(lfmPosition, {groupPosition[i][2]+1,groupPosition[i][2]+1,GF_LFG_AFTER[TableA[groupPosition[i][2]+1]]}) if GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][2]+1]] then foundGuildExclusion = foundGuildExclusion + GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][2]+1]] end if showInfo == true then print(groupPosition[i][3].." triggername lfg 1/2(+1)("..(groupPosition[i][2]+1)..","..(groupPosition[i][2]+1)..").. tradesex 1") end numGroupWords = numGroupWords + 1 end
			if TableA[groupPosition[i][2]+2] then
				if GF_LFM_AFTER[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]] then table.insert(lfmPosition, {groupPosition[i][2]+1,groupPosition[i][2]+2,GF_LFM_AFTER[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]],true}) if GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]] then foundGuildExclusion = foundGuildExclusion + GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]] end if showInfo == true then print(groupPosition[i][3].." triggername lfm 1/2(+2)("..(groupPosition[i][2]+1)..","..(groupPosition[i][2]+2)..").. tradesex 1") end numGroupWords = numGroupWords + 2 end
				if GF_LFG_AFTER[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]] then table.insert(lfmPosition, {groupPosition[i][2]+1,groupPosition[i][2]+2,GF_LFG_AFTER[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]]}) if GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]] then foundGuildExclusion = foundGuildExclusion + GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]] end if showInfo == true then print(groupPosition[i][3].." triggername lfg 1/2(+2)("..(groupPosition[i][2]+1)..","..(groupPosition[i][2]+2)..").. tradesex 1") end numGroupWords = numGroupWords + 2 end
			end
			if TableA[groupPosition[i][1]-2] then
				if GF_LFM_BEFORE[TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] then table.insert(lfmPosition, {groupPosition[i][1]-2,groupPosition[i][1]-1,GF_LFM_BEFORE[TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]],true}) if GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] then foundGuildExclusion = foundGuildExclusion + GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] end if showInfo == true then print(groupPosition[i][3].." triggername lfm 1/2(-2)("..(groupPosition[i][1]-2)..","..(groupPosition[i][1]-1)..").. tradesex 1") end numGroupWords = numGroupWords + 2 end
				if GF_LFG_BEFORE[TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] then table.insert(lfmPosition, {groupPosition[i][1]-2,groupPosition[i][1]-1,GF_LFG_BEFORE[TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]]}) if GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] then foundGuildExclusion = foundGuildExclusion + GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] end if showInfo == true then print(groupPosition[i][3].." triggername lfg 1/2(-2)("..(groupPosition[i][1]-2)..","..(groupPosition[i][1]-1)..").. tradesex 1") end numGroupWords = numGroupWords + 2 end
			end
			if TableA[groupPosition[i][1]-3] then
				if GF_LFM_BEFORE[TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] then table.insert(lfmPosition, {groupPosition[i][1]-3,groupPosition[i][1]-1,GF_LFM_BEFORE[TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]],true}) if GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] then foundGuildExclusion = foundGuildExclusion + GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] end if showInfo == true then print(groupPosition[i][3].." triggername lfm 1/2(-3)("..(groupPosition[i][1]-3)..","..(groupPosition[i][1]-1)..").. tradesex 1") end numGroupWords = numGroupWords + 3 end
				if GF_LFG_BEFORE[TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] then table.insert(lfmPosition, {groupPosition[i][1]-3,groupPosition[i][1]-1,GF_LFG_BEFORE[TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]]}) if GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] then foundGuildExclusion = foundGuildExclusion + GF_LFMLFG_PREFIX_GUILD[TableA[groupPosition[i][1]-3]..TableA[groupPosition[i][1]-2]..TableA[groupPosition[i][1]-1]] end if showInfo == true then print(groupPosition[i][3].." triggername lfg 1/2(-3)("..(groupPosition[i][1]-3)..","..(groupPosition[i][1]-1)..").. tradesex 1") end numGroupWords = numGroupWords + 3 end
			end

			if GF_LFM_TRIGGER_BEFORE[TableA[groupPosition[i][1]-1]] and GF_LFM_TRIGGER_AFTER[TableA[groupPosition[i][2]+1]] then table.insert(lfmPosition, {groupPosition[i][1]-1,groupPosition[i][2]+1,GF_LFM_TRIGGER_BEFORE[TableA[groupPosition[i][1]-1]] + GF_LFM_TRIGGER_AFTER[TableA[groupPosition[i][2]+1]],true}) if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {groupPosition[i][1],groupPosition[i][2]} elseif firstLFMLFG[1] ~= groupPosition[i][1] and firstLFMLFG[2] ~= groupPosition[i][2] then foundTradesExclusion = foundTradesExclusion + .5 end if showInfo == true then print(groupPosition[i][3].." triggername lfm 1/2(D)("..(groupPosition[i][1]-1)..","..(groupPosition[i][2]+1)..").. before/after") end numGroupWords = numGroupWords + 2 end

			if GF_TRADE_PORTAL_SUMMON[TableA[groupPosition[i][1]-1]] or GF_TRADE_PORTAL_SUMMON[TableA[groupPosition[i][2]+1]] then foundTrades = foundTrades + 1 if showInfo == true then print("portalzone trade 1") end
			elseif TableA[groupPosition[i][2]+2] and GF_TRADE_GROUP_SUMMON[TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2]] then foundTradesExclusion = foundTradesExclusion + 1 if showInfo == true then print(TableA[groupPosition[i][2]+1]..TableA[groupPosition[i][2]+2].." havesummon .. tradesex 1") end end
		end
	end
	for i=1, getn(lfmPosition) do
		tVal = lfmPosition[i][3]
		tPos = 0
		breakAfter = nil
		for k=lfmPosition[i][2]+1, tLen do
			for j=1, getn(groupPosition) do
				if tPos == 0 and k == groupPosition[j][1] and lfmPosition[i][2] >= lfmPosition[i][1] then
					tPos = 1 tVal = tVal + 1
					if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {groupPosition[j][1],groupPosition[j][2]} elseif firstLFMLFG[1] ~= groupPosition[j][1] and firstLFMLFG[2] ~= groupPosition[j][2] then foundTradesExclusion = foundTradesExclusion + .5 end
					if showInfo == true then print(lfmPosition[i][3].." reached group 1(R)") end
					breakAfter = true
				end
			end
			if TableA[k] then
				if GF_LFM_CONNECT_WORDS[TableA[k]] then
					tVal = tVal + GF_LFM_CONNECT_WORDS[TableA[k]]
					if showInfo == true then print(lfmPosition[i][3].." "..TableA[k].."(R) "..GF_LFM_CONNECT_WORDS[TableA[k]]) end
					 numGroupWords = numGroupWords + 1
					if breakAfter then if GF_GROUP_IDS[TableA[k+1]] then tVal = tVal + .25 if showInfo == true then print(lfmPosition[i][3].." "..TableA[k+1].."(R) .25") end numGroupWords = numGroupWords + 1 end break
					elseif GF_LFM_CONNECT_WORDS[TableA[k]] < 0 then break end
				elseif not GF_GROUP_IDS[TableA[k]] and not GF_WORD_LEVEL_ZONE[TableA[k]] then
					break
				end
			end
		end
		breakAfter = nil
		for k=lfmPosition[i][1]-1, 1, -1 do
			for j=1, getn(groupPosition) do
				if tPos == 0 and k == groupPosition[j][2] and lfmPosition[i][2] >= lfmPosition[i][1] then
					tPos = 1 tVal = tVal + 1
					if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {groupPosition[j][1],groupPosition[j][2]} elseif firstLFMLFG[1] ~= groupPosition[j][1] and firstLFMLFG[2] ~= groupPosition[j][2] then foundTradesExclusion = foundTradesExclusion + .5 end
					if showInfo == true then print(lfmPosition[i][3].." reached group 1(L)") end
				end
			end
			if TableA[k] then
				if GF_LFM_CONNECT_WORDS[TableA[k]] then
					tVal = tVal + GF_LFM_CONNECT_WORDS[TableA[k]]
					if showInfo == true then print(lfmPosition[i][3].." "..TableA[k].."(L) "..GF_LFM_CONNECT_WORDS[TableA[k]]) end
					numGroupWords = numGroupWords + 1
					if breakAfter then if GF_GROUP_IDS[TableA[k+1]] then tVal = tVal + .25 if showInfo == true then print(lfmPosition[i][3].." "..TableA[k+1].."(L) .25") end numGroupWords = numGroupWords + 1 end break
					elseif GF_LFM_CONNECT_WORDS[TableA[k]] < 0 then break end
				elseif not GF_GROUP_IDS[TableA[k]] and not GF_WORD_LEVEL_ZONE[TableA[k]] then
					break
				end
			end
		end
		for j=1, getn(groupPosition) do -- If groupposition is within the lfmposition, don't count it if GF_LFM_BYPASS or GF_WORD_LEVEL_ZONE or GF_GROUP_IDS
			if groupPosition[j][2] == lfmPosition[i][2] and not GF_LFM_BYPASS[TableA[lfmPosition[i][2]]] and not GF_WORD_LEVEL_ZONE[TableA[lfmPosition[i][2]]] and not GF_GROUP_IDS[TableA[lfmPosition[i][2]]]
			and not (lfmPosition[i][2] > 1 and (GF_LFM_BYPASS[TableA[lfmPosition[i][2]-1]..TableA[lfmPosition[i][2]]] or GF_WORD_LEVEL_ZONE[TableA[lfmPosition[i][2]-1]..TableA[lfmPosition[i][2]]] or GF_GROUP_IDS[TableA[lfmPosition[i][2]-1]..TableA[lfmPosition[i][2]]])) then
				tVal = tVal + 1 if not firstLFMLFG then foundTradesExclusion = foundTradesExclusion + 1.5 foundGuildExclusion = foundGuildExclusion + .1 firstLFMLFG = {groupPosition[j][1],groupPosition[j][2]} elseif firstLFMLFG[1] ~= groupPosition[j][1] and firstLFMLFG[2] ~= groupPosition[j][2] then foundTradesExclusion = foundTradesExclusion + .5 end
				if showInfo == true then print(lfmPosition[i][3].." reached group 1(O)") end
				break
			end
		end
		if GF_WORD_IGNORE[TableA[lfmPosition[i][2]+1]] then foundIgnore = foundIgnore + GF_WORD_IGNORE[TableA[lfmPosition[i][2]+1]] if showInfo == true then print(TableA[lfmPosition[i][2]+1].." ignoreA "..GF_WORD_IGNORE[TableA[lfmPosition[i][2]+1]]) end end
		if GF_WORD_IGNORE_AFTER[TableA[lfmPosition[i][2]+1]] then foundIgnore = foundIgnore + GF_WORD_IGNORE_AFTER[TableA[lfmPosition[i][2]+1]] if showInfo == true then print(TableA[lfmPosition[i][2]+1].." ignoreB "..GF_WORD_IGNORE_AFTER[TableA[lfmPosition[i][2]+1]]) end end
		if GF_WORD_IGNORE[TableA[lfmPosition[i][1]-1]] then foundIgnore = foundIgnore + GF_WORD_IGNORE[TableA[lfmPosition[i][1]-1]] if showInfo == true then print(TableA[lfmPosition[i][1]-1].." ignoreC "..GF_WORD_IGNORE[TableA[lfmPosition[i][1]-1]]) end end
		if GF_WORD_IGNORE_BEFORE[TableA[lfmPosition[i][1]-1]] then foundIgnore = foundIgnore + GF_WORD_IGNORE_BEFORE[TableA[lfmPosition[i][1]-1]] if showInfo == true then print(TableA[lfmPosition[i][1]-1].." ignoreD "..GF_WORD_IGNORE_BEFORE[TableA[lfmPosition[i][1]-1]]) end end
		if TableA[lfmPosition[i][2]+2] then
			if GF_WORD_IGNORE[TableA[lfmPosition[i][2]+1]..TableA[lfmPosition[i][2]+2]] then foundIgnore = foundIgnore + GF_WORD_IGNORE[TableA[lfmPosition[i][2]+1]..TableA[lfmPosition[i][2]+2]] if showInfo == true then print(TableA[lfmPosition[i][2]+1]..TableA[lfmPosition[i][2]+2].." ignoreE "..GF_WORD_IGNORE[TableA[lfmPosition[i][2]+1]..TableA[lfmPosition[i][2]+2]]) end end
			if GF_WORD_IGNORE_AFTER[TableA[lfmPosition[i][2]+1]..TableA[lfmPosition[i][2]+2]] then foundIgnore = foundIgnore + GF_WORD_IGNORE_AFTER[TableA[lfmPosition[i][2]+1]..TableA[lfmPosition[i][2]+2]] if showInfo == true then print(TableA[lfmPosition[i][2]+1]..TableA[lfmPosition[i][2]+2].." ignoreF "..GF_WORD_IGNORE_AFTER[TableA[lfmPosition[i][2]+1]..TableA[lfmPosition[i][2]+2]]) end end
		end
		if TableA[lfmPosition[i][1]-2] then
			if GF_WORD_IGNORE[TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1]] then foundIgnore = foundIgnore + GF_WORD_IGNORE[TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1]] if showInfo == true then print(TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1].." ignoreG "..GF_WORD_IGNORE[TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1]]) end end
			if GF_WORD_IGNORE_BEFORE[TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1]] then foundIgnore = foundIgnore + GF_WORD_IGNORE_BEFORE[TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1]] if showInfo == true then print(TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1].." ignoreH "..GF_WORD_IGNORE_BEFORE[TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1]]) end end
		end
		if TableA[lfmPosition[i][1]-3] then
			if GF_WORD_IGNORE[TableA[lfmPosition[i][1]-3]..TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1]] then foundIgnore = foundIgnore + GF_WORD_IGNORE[TableA[lfmPosition[i][1]-3]..TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1]] if showInfo == true then print(TableA[lfmPosition[i][1]-3]..TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1].." ignoreI "..GF_WORD_IGNORE[TableA[lfmPosition[i][1]-3]..TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1]]) end end
			if GF_WORD_IGNORE_BEFORE[TableA[lfmPosition[i][1]-3]..TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1]] then foundIgnore = foundIgnore + GF_WORD_IGNORE_BEFORE[TableA[lfmPosition[i][1]-3]..TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1]] if showInfo == true then print(TableA[lfmPosition[i][1]-3]..TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1].." ignoreJ "..GF_WORD_IGNORE_BEFORE[TableA[lfmPosition[i][1]-3]..TableA[lfmPosition[i][1]-2]..TableA[lfmPosition[i][1]-1]]) end end
		end
		if lfmPosition[i][4] then if tVal > foundLFM then foundLFM = tVal end else if tVal > foundLFG then foundLFG = tVal end end
	end
	tPos = 0
	for i=1, getn(lfmPosition) do
		for k=lfmPosition[i][2]+1, tLen do
			if TableA[k+1] and GF_TRADE_GROUP_SUMMON[TableA[k]..TableA[k+1]] then foundTradesExclusion = foundTradesExclusion + .5 if showInfo == true then print(TableA[k]..TableA[k+1].." tradesex .5") end tPos = 1 break end
		end
		if tPos == 1 then break end
	end
	if foundLFM > foundLFG then foundLFG = 0 end
	if getn(lfmlfgName) == 1 and groupName[1] and not foundDungeon and not foundRaid and (not foundQuest[1] or (foundQuest[1] == 0 and GF_LFM_BYPASS[groupName[1]])) and (not foundPvP or foundPvP == 0) then tVal = 0 tPos = 0 for i=1, getn(groupName) do if strfind(lfmlfgName[1],groupName[i]) then tVal = tVal + 1 end if GF_LFM_BYPASS[groupName[i]] or GF_WORD_CLASSES[groupName[i]] then tPos = tPos + 1 end end if tVal == getn(groupName) then foundLFM = 0 foundLFG = 0 if showInfo == true then print("groupname is in lfmname") end elseif tLen > 4 and tPos == getn(groupName) and foundLFM < 2.5 and foundLFG < 2.5 then foundLFM = 0 foundLFG = 0 if showInfo == true then print("GF_LFM_BYPASS didn't reach 2.5") end end end

	if foundGuild < 100 and strfind(arg1, "[<~][a-zA-Z0-9%&%-/ ]+[>~]") then foundGuild = foundGuild + 2 foundTradesExclusion = foundTradesExclusion + 1 if showInfo == true then print("<words> guild 2 .. tradesex 1") end end
	while foundGuild > 100 do foundGuild = foundGuild - 100 end
	foundGuild = foundGuild - foundGuildExclusion

	if possibleGold then foundTrades = foundTrades + 2 if showInfo == true then print("#g trade 2") end end
	if tLen >= 10 then foundTradesExclusion = foundTradesExclusion + floor(1.5 ^ (tLen/10)) * .25 if showInfo == true then print((floor(1.5 ^ (tLen/10)) * .25).." tradesex for "..tLen.." words") end if numGroupWords > 0 and tLen/(numGroupWords*1.5) > 1 then foundIgnore = foundIgnore + floor(tLen/(numGroupWords*1.5)) * .25 if showInfo == true then print("subtract "..(floor(tLen/(numGroupWords*1.5)) * .25).." for "..numGroupWords.." group words out of "..tLen) end end end
	if not firstLFMLFG and foundClass and tLen <= 6 then for i=1, tLen do if GF_TRADE_CLASS_EXCLUSION[TableC[i]] then foundClass = nil break end end if foundClass then foundTradesExclusion = foundTradesExclusion + 1 if showInfo == true then print("<class> no group tradesex 1") end end end
	foundTrades = foundTrades - foundTradesExclusion

	if foundIgnore > 0 then
		foundLFM = foundLFM - foundIgnore
		foundLFG = foundLFG - foundIgnore
	end

	if foundDungeon == 0 then
		for word,num in gfind(arg1, "(%a+)%p?%s?(%d+)") do if GF_WORD_FIX[word] then word = GF_WORD_FIX[word] end if GF_WORD_LEVEL_DETECT[word] and tonumber(num) > 8 and tonumber(num) < 61 then foundDungeon = tonumber(num) break end end
		if foundDungeon == 0 then for num,word in gfind(arg1, "(%d+)%p?%s?(%a+)") do if GF_WORD_FIX[word] then word = GF_WORD_FIX[word] end if GF_WORD_LEVEL_DETECT[word] and tonumber(num) > 8 and tonumber(num) < 61 then foundDungeon = tonumber(num) break end end end
	elseif foundQuest[1] == 0 then
		for word,num in gfind(arg1, "(%a+)%p?%s?(%d+)") do if GF_WORD_FIX[word] then word = GF_WORD_FIX[word] end if GF_WORD_LEVEL_DETECT[word] and tonumber(num) > 8 and tonumber(num) < 61 then foundQuest[1] = tonumber(num) break end end
		if foundQuest[1] == 0 then for num,word in gfind(arg1, "(%d+)%p?%s?(%a+)") do if GF_WORD_FIX[word] then word = GF_WORD_FIX[word] end if GF_WORD_LEVEL_DETECT[word] and tonumber(num) > 8 and tonumber(num) < 61 then foundQuest[1] = tonumber(num) break end end end
		if foundQuest[1] == 0 then for i=1,tLen do if GF_WORD_LEVEL_ZONE[TableA[i]] then foundQuest[1] = GF_WORD_LEVEL_ZONE[TableA[i]] break end end end
	elseif foundClass == 0 then
		for word,num in gfind(arg1, "(%a+)%p?%s?(%d+)") do if GF_WORD_FIX[word] then word = GF_WORD_FIX[word] end if GF_WORD_LEVEL_DETECT[word] and tonumber(num) > 8 and tonumber(num) < 61 then foundClass = tonumber(num) break end end
		if foundClass == 0 then for num,word in gfind(arg1, "(%d+)%p?%s?(%a+)") do if GF_WORD_FIX[word] then word = GF_WORD_FIX[word] end if GF_WORD_LEVEL_DETECT[word] and tonumber(num) > 8 and tonumber(num) < 61 then foundClass = tonumber(num) break end end end
	end

	if showInfo == true then
		GF_Log:AddMessage("|cffccccff|Hurl:"..strsub(arg1,2,-2).."|h"..strsub(arg1,2,-2).."|h|r",1,1,1)
		for i=1,tLen do
			print(TableA[i].." .. "..TableC[i].." .. "..TableB[i])
		end
		print(foundGuild.." guild")
		print(foundGuildExclusion.." guildex")
		print(foundTrades.." trades")
		print(foundTradesExclusion.." tradesex")
		print(foundLFM.." lfm .... "..foundLFG.." lfg .... ignore "..foundIgnore)
		if foundQuest[1] then print(foundQuest[1].." quest") end
		if foundDungeon then print(foundDungeon.." dungeon") end
		if foundRaid then print(foundRaid.." raid") end
		if foundPvP then print(foundPvP.." pvp") end
		if foundClass then print(foundClass.." class") end
	end
end
function GF_CheckForDungeon(word,p1,p2)
	if showInfo == true then print(word.." dungeon") end
	if not foundDungeon or GF_WORD_DUNGEON[word] > foundDungeon then
		foundDungeon = GF_WORD_DUNGEON[word]
		table.insert(foundDFlags,1,word)
	else
		table.insert(foundDFlags,word)
	end
	table.insert(groupPosition,{p1,p2,word})
	foundTradesExclusion = foundTradesExclusion + .3 foundGuildExclusion = foundGuildExclusion + .1
end
function GF_CheckForRaid(word,p1,p2)
	if showInfo == true then print(word.." raid") end
	if not foundRaid or GF_WORD_RAID[word] > foundRaid then
		foundRaid = GF_WORD_RAID[word]
		table.insert(foundDFlags,1,word)
	else
		table.insert(foundDFlags,word)
	end
	table.insert(groupPosition,{p1,p2,word})
	foundTradesExclusion = foundTradesExclusion + .3 foundGuildExclusion = foundGuildExclusion + .1
end
function GF_CheckForSpam(arg1,arg2,foundInGroup)
	if dontCheckSpam then return end
	if GF_IncomingMessagePrune < time() then -- 1 minute
		for name,_ in pairs(GF_PlayerMessages) do
			if GF_PlayerMessages[name][1][1] + 1800 < time() or GF_PlayerMessages[name][2][3] then
				GF_PlayerMessages[name] = nil
			end
		end
		GF_IncomingMessagePrune = time() + 60
	end
	if not GF_PlayerMessages[arg2] then
		GF_PlayerMessages[arg2] = { { time(),arg1 }, { time(), "ZZZzzz123654" }, { time(), "ZZZzzz123654" } }
	elseif not GF_ExcludeNames[arg2] then
		if GF_WhoTable[GF_RealmName][arg2] and GF_WhoTable[GF_RealmName][arg2][1] > 0 and GF_WhoTable[GF_RealmName][arg2][1] < GF_SavedVariables.blockmessagebelowlevel and GF_WhoTable[GF_RealmName][arg2][4] + 43200 > time() then return 11 end  -- Block lowlevel
		if GF_SavedVariables.spamfilter then
			if GF_PlayerMessages[arg2][1][1] > time() then return 7 end -- Returns spam for the duration of the spam filter
			if (strlen(arg1) > 30 and ((GF_PlayerMessages[arg2][1][1] + 120 > time() and strfind(arg1,strsub(GF_PlayerMessages[arg2][1][2],math.random(ceil(strlen(GF_PlayerMessages[arg2][1][2])/4)),math.random(ceil(strlen(GF_PlayerMessages[arg2][1][2])/4))*-1),1,true)) or (GF_PlayerMessages[arg2][2][1] + 120 > time() and strfind(arg1,strsub(GF_PlayerMessages[arg2][2][2],math.random(ceil(strlen(GF_PlayerMessages[arg2][2][2])/4)),math.random(ceil(strlen(GF_PlayerMessages[arg2][2][2])/4))*-1),1,true)) or (GF_PlayerMessages[arg2][3][1] + 120 > time() and strfind(arg1,strsub(GF_PlayerMessages[arg2][3][2],math.random(ceil(strlen(GF_PlayerMessages[arg2][3][2])/4)),math.random(ceil(strlen(GF_PlayerMessages[arg2][3][2])/4))*-1),1,true))))
			or (GF_PlayerMessages[arg2][1][1] + 120 > time() and arg1 == GF_PlayerMessages[arg2][1][2]) and (GF_PlayerMessages[arg2][2][1] + 120 > time() and arg1 == GF_PlayerMessages[arg2][2][2]) then		-- Found Spammer
				if GF_SavedVariables.autoblacklist and not GF_BlackList[GF_RealmName][arg2] and strlen(arg1) > 120 and arg1 == GF_PlayerMessages[arg2][1][2] and arg1 == GF_PlayerMessages[arg2][2][2] and
				((GF_SavedVariables.blacklisttrades and foundTrades > 2.9) or (GF_SavedVariables.blacklistguild and foundGuild > 2.9) or (GF_SavedVariables.blacklistchat and foundGuild < 3 and foundTrades < 3) or (GF_SavedVariables.blacklistforeign and languageName ~= GF_MY_LANGUAGE)) then
					if GF_WhoTable[GF_RealmName][arg2] and GF_WhoTable[GF_RealmName][arg2][4] + 43200 > time() then -- Data must be less than a day old to autoblacklist or block lowlevel
						if GF_WhoTable[GF_RealmName][arg2][1] > 0 and GF_WhoTable[GF_RealmName][arg2][1] <= GF_SavedVariables.autoblacklistminlevel then -- Blacklist if below level filter
							table.insert(GF_BlackList[GF_RealmName], 1, { arg2, "("..GF_WhoTable[GF_RealmName][arg2][1]..") "..arg1 })
							GF_BlackList[GF_RealmName][arg2] = true
							GF_UpdateBlackListItems()
							return 10
						end
					else
						if GF_SavedVariables.usewhoongroups and (not GF_WhoTable[GF_RealmName][arg2] or GF_WhoTable[GF_RealmName][arg2][1] > 0) and not GF_WhoQueue[name] then GF_WhoTable[GF_RealmName][arg2] = nil GF_AddNameToWhoQueue(arg2,true) end
					end
				end
				table.insert(GF_PlayerMessages[arg2],1, { time() + GF_SavedVariables.spamfilterduration, arg1 })
				table.remove(GF_PlayerMessages[arg2],4)
				return 7
			end
			table.insert(GF_PlayerMessages[arg2],1,{ time(), arg1 })
			table.remove(GF_PlayerMessages[arg2],4)
			if strlen(arg1) > 40 and strfind(arg1,strsub(arg1,2,20),21,true) then return 7 end -- Repeating text in the same message
		end
	end
end

function GF_ProcessStringToTable(arg1,getLanguage,noLinks)
	local strPos,tPos,pVal,tVal,bCap,charType,stringA,stringB,stringC,stringD = 1
	local TableA,languageID,TableB,TableC = {},{}
	if noLinks then
		table.insert(TableA, {arg1})
	else
		while true do -- Save any hyperlinks
			if string.find(arg1,"|H") then
				_,tVal,stringA,stringB,stringC,stringD = string.find(arg1,"(.-)(|[%x%p]+H%a+.-|h%[)(.-)(%]|h|r)",strPos)
				if stringA then
					if stringA ~= "" then table.insert(TableA, {stringA}) end
					table.insert(TableA, stringB)
					table.insert(TableA, {stringC})
					table.insert(TableA, stringD)
					strPos = tVal+1
				else
					stringA = string.sub(arg1,strPos)
					if stringA ~= "" then table.insert(TableA, {string.sub(arg1,strPos)}) end
					break
				end
			else
				table.insert(TableA, {arg1})
				break
			end
		end
	end
	local tLen,pos = getn(TableA),1
	while pos <= tLen do
		if type(TableA[pos]) == "table" then
			stringA = TableA[pos][1]
			TableA[pos][1] = nil
			strPos,tPos,pVal,tVal,charType,TableB = 1,1,nil,nil,nil,{}
			stringB = string.lower(stringA)
			while true do
				bCap = strbyte(stringB,tPos)
				if not bCap then break end
				if bCap < 128 then
					if bCap == 32 then
						if bCap ~= pVal then -- Only add the first space
							if charType == 1 and not TableB[2] and strbyte(stringB,tPos+2) == 32 and strbyte(stringB,tPos+4) == 32 and GF_NORMAL_LETTERS[strbyte(stringB,tPos+1)] and GF_NORMAL_LETTERS[strbyte(stringB,tPos+3)] then
								table.insert(TableB, strsub(stringB,tPos+1,tPos+1)..strsub(stringB,tPos+3,tPos+3))
								tPos = tPos + 4
								while true do if strbyte(stringB,tPos+2) == 32 and GF_NORMAL_LETTERS[strbyte(stringB,tPos+1)] then table.insert(TableB, strsub(stringB,tPos+1,tPos+1)) tPos = tPos + 2 else break end end
								if GF_NORMAL_LETTERS[strbyte(stringB,tPos+2)] then table.insert(TableA[pos], {table.concat(TableB),table.concat(TableB)}) TableB = {} table.insert(TableA[pos], " ") end
							else
								if TableB[1] then table.insert(TableA[pos], {charType and strsub(stringA,strPos,tPos-1) or table.concat(TableB),table.concat(TableB)}) TableB = {} table.insert(TableA[pos], " ") elseif TableA[pos][1] then table.insert(TableA[pos], " ") end
							end
							charType = nil
						end
						strPos = tPos+1 -- Always move strPos forward if space(never save two spaces)
					elseif GF_NORMAL_LETTERS[bCap] then
						if bCap ~= pVal then
							if charType == 1 then -- Previous was a letter.
								if bCap == tVal and strbyte(stringB,tPos+1) == pVal and strbyte(stringB,tPos+2) == bCap then
									table.insert(TableB, strsub(stringB,tPos,tPos+1))
									tPos = tPos + 2
									while true do if strbyte(stringB,tPos+1) == pVal then tPos = tPos + 1 if strbyte(stringB,tPos+1) == bCap then tPos = tPos + 1 else break end else break end end
								else
									table.insert(TableB, strchar(bCap))
								end
							else -- Previous was either punctuation or a space
								if TableB[1] then table.insert(TableA[pos], {table.concat(TableB),table.concat(TableB)}) table.insert(TableA[pos], "") TableB = {} end -- if punctuation, it would be saved in TableB
								table.insert(TableB, strchar(bCap))
								strPos = tPos -- Move string position after save
							end
							charType = 1
						elseif GF_ALLOW_TWO_CHARACTERS[bCap] then
							table.insert(TableB, strchar(bCap))
							tVal = strbyte(stringB,tPos+1)
							if tVal == bCap then if tVal == 105 then table.insert(TableB, "i") end tPos = tPos + 1 while true do if strbyte(stringB,tPos+1) == bCap then tPos = tPos + 1 else break end end end
						end
					elseif GF_ALLOW_TWO_CHARACTERS[bCap] then -- Only gets here with numbers
						if charType ~= 2 then -- Previous was not a number
							if TableB[1] then table.insert(TableA[pos], {strsub(stringA,strPos,tPos-1),table.concat(TableB)})  table.insert(TableA[pos], "") TableB = {} end
							strPos = tPos
						end
						table.insert(TableB, strchar(bCap))
						charType = 2
					else
						if bCap ~= pVal then
							if charType == 1 and not TableB[2] and GF_PUNCTUATION_SPACING_FIX[bCap] and strbyte(stringB,tPos+2) == bCap and strbyte(stringB,tPos+4) == bCap and GF_NORMAL_LETTERS[strbyte(stringB,tPos+1)] and GF_NORMAL_LETTERS[strbyte(stringB,tPos+3)] then
								table.insert(TableB, strsub(stringB,tPos+1,tPos+1)..strsub(stringB,tPos+3,tPos+3))
								tPos = tPos + 4
								while true do if strbyte(stringB,tPos+2) == bCap and GF_NORMAL_LETTERS[strbyte(stringB,tPos+1)] then table.insert(TableB, strsub(stringB,tPos+1,tPos+1)) tPos = tPos + 2 else break end end
								if GF_NORMAL_LETTERS[strbyte(stringB,tPos+2)] then table.insert(TableA[pos], {table.concat(TableB),table.concat(TableB)}) TableB = {} table.insert(TableA[pos], strchar(bCap)) end
								strPos = tPos
							else
								if charType then if TableB[1] then table.insert(TableA[pos], {strsub(stringA,strPos,tPos-1),table.concat(TableB)})  table.insert(TableA[pos], "") TableB = {} end strPos = tPos end -- Previous was letter or number
								table.insert(TableB, strchar(bCap))
							end
							charType = nil
						end
					end
					tPos = tPos + 1
				else
					if GF_ACCENT_ASCII_LETTERS[bCap] then
						if bCap == 226 then -- Punctuation characters
							TableC = GF_ACCENT_ASCII_LETTERS[strsub(stringB,tPos,tPos+2)]
							if not TableC then if strbyte(stringB,tPos+2) == 128 then TableC = GF_ACCENT_ASCII_LETTERS[strsub(stringB,tPos,tPos+3)] if not TableC then TableC = {strsub(stringB,tPos,tPos+3),strbyte(stringB,tPos+3)} end tVal = 4 else TableC = {strsub(stringB,tPos,tPos+2),strbyte(stringB,tPos+2)} tVal = 3 end else tVal = 3 end
							if TableC[2] ~= pVal then -- Found a special character... either pVal not the same character or was a space.... TableC could also be a space
								if TableC[2] == 32 then -- if current character is blank... the previous character was not blank... so need to just finish the TableB if it exists and add the blank space.
									if TableB[1] then table.insert(TableA[pos], {charType and strsub(stringA,strPos,tPos-1) or table.concat(TableB),table.concat(TableB)}) TableB = {} end -- Was space, just add 
									table.insert(TableA[pos], " ")
									strPos = tPos + tVal
								elseif charType then
									if TableB[1] then table.insert(TableA[pos], {strsub(stringA,strPos,tPos-1),table.concat(TableB)}) table.insert(TableA[pos], "") TableB = {} end -- Was letter, add letter and a blank before punctuation.
									table.insert(TableB, TableC[1])
									strPos = tPos
								else
									table.insert(TableB, TableC[1])
								end
								charType = nil
							elseif GF_ALLOW_TWO_CHARACTERS[TableC[2]] then
								table.insert(TableB, TableC[1])
							elseif TableC[2] == 32 then
								strPos = tPos + tVal
							end
							bCap = TableC[2]
							tPos = tPos + tVal
						else
							TableC = GF_ACCENT_ASCII_LETTERS[strsub(stringB,tPos,tPos+1)]
							if not TableC then TableC = {strsub(stringB,tPos,tPos+1),strbyte(stringB,tPos+1)} end
							if TableC[4] then TableC[1] = TableC[4](pVal) and TableC[3] or TableC[1] for _,lang in pairs(TableC[5]) do if not languageID[lang] then languageID[lang] = .5 else languageID[lang] = languageID[lang] + .5 end end end
							tVal = TableC[1]
							bCap = TableC[2]
							if bCap ~= pVal then
								if GF_NORMAL_LETTERS[tVal] then
									if charType ~= 1 then
										if TableB[1] then table.insert(TableA[pos], {table.concat(TableB),table.concat(TableB)}) table.insert(TableA[pos], "") TableB = {} end
										strPos = tPos
									end
									table.insert(TableB, tVal)
									charType = 1
								else
									if charType then
										if TableB[1] then table.insert(TableA[pos], {table.concat(TableB),table.concat(TableB)}) table.insert(TableA[pos], "") TableB = {} end
										strPos = tPos
									end
									table.insert(TableB, tVal)
									charType = nil
								end
							elseif GF_ALLOW_TWO_CHARACTERS[bCap] then
								table.insert(TableB, tVal)
								if GF_ACCENT_ASCII_LETTERS[strbyte(stringB,tPos+2)] then
									tVal = GF_ACCENT_ASCII_LETTERS[strsub(stringB,tPos+2,tPos+3)]
									if tVal and tVal[2] == bCap then while true do tVal = GF_ACCENT_ASCII_LETTERS[strsub(stringB,tPos+2,tPos+3)] tPos = tPos + 2 if not tVal or not tVal[2] == bCap then break end end end
								end
							end
							tPos = tPos + 2
						end
					elseif GF_ASIAN_LANGUAGES[bCap] then
						stringC = strsub(stringB,tPos,tPos+2)
						TableC = GF_ASIAN_LANGUAGES_PUNCTUATION[stringC]
						if TableB[1] then -- This is correct.
							table.insert(TableA[pos], {strsub(stringA,strPos,tPos-1),table.concat(TableB)}) TableB = {} -- Have letters or punctuation to save... Save it, then add a space if it was letters or [!?.,]
							table.insert(TableA[pos], not TableC and (charType or GF_PUNCTUATION_ADD_SPACE[pVal]) and " " or "")
						end
						if not languageID["cn"] then languageID["cn"] = 1 end
						while true do
							tPos = tPos + 3
							if TableC then -- Punctuation
								table.insert(TableA[pos], {TableC[1], TableC[1]}) -- Add the Chinese character
							else -- Not punctuation
								table.insert(TableA[pos], {stringC,stringC})
							end
							if GF_ASIAN_LANGUAGES[strbyte(stringB,tPos)] then -- If next character is also Chinese, add a space if the next character isn't punctuation, or if the previous character was an allowable punctuation.
								tVal = TableC
								stringC = strsub(stringB,tPos,tPos+2)
								TableC = GF_ASIAN_LANGUAGES_PUNCTUATION[stringC]
								languageID["cn"] = languageID["cn"] + 1
								table.insert(TableA[pos], not TableC and (not tVal or tVal[2]) and " " or "")
							else
								tVal = strbyte(stringB,tPos)
								if tVal ~= 32 then table.insert(TableA[pos], (GF_PUNCTUATION_NO_SPACE[tVal]) and "" or " ") end -- If next char is space, just break... Otherwise, either add a space or a ""
								break
							end
						end
						strPos = tPos
						charType = nil
					else
						tPos = tPos + 1
						table.insert(TableB, strchar(bCap))
					end
				end
				tVal = pVal
				pVal = bCap
			end
			if TableB[1] then table.insert(TableA[pos], {strsub(stringA,strPos,tPos-1),table.concat(TableB)}) table.insert(TableA[pos], "") end
			if not TableA[pos][1] then table.remove(TableA,pos) pos = pos - 1 tLen = tLen - 1 end
		end
		pos = pos + 1
	end
	if getLanguage then
		for i=1, tLen do if type(TableA[i]) == "table" then for j=1, getn(TableA[i]),2 do if GF_LANGUAGE_DETECT[TableA[i][j][2]] then for lang,_ in pairs(GF_LANGUAGE_DETECT[TableA[i][j][2]]) do if not languageID[lang] then languageID[lang] = 1 else languageID[lang] = languageID[lang] + 1 end end end end end end
		tVal,languageName = languageID[GF_MY_LANGUAGE] or 0,GF_MY_LANGUAGE
		for langID,totalLang in pairs(languageID) do if totalLang > tVal then tVal = totalLang languageName = langID end end
		return TableA, tLen,languageName
	elseif not noLinks then
		for i=1, tLen do
			if type(TableA[i]) == "table" then for j=1, getn(TableA[i]), 2 do TableA[i][j] = TableA[i][j][2] end end
		end
		return TableA, tLen
	else
		return TableA[1], tLen
	end
end
function GF_TranslateString(arg1) -- /script print(GF_TranslateString("yo !! c''est theworst, on était dans la meme guilde sur wow sod sur les 3/4 premieres phases , j etais mage si tu te souviens. je débarque la.. vous etes sur quel serveur ? coté horde ou alliance"))
	local TableA,tLen,languageName = GF_ProcessStringToTable(arg1,true) -- arg1,getLanguage
	local tPos,pVal,tVal,stringA,stringB,stringC
	if languageName ~= GF_MY_LANGUAGE then
		stringC = strupper(languageName)..": "
		if languageName == "cn" then pVal = 18 else pVal = 6 end
		for i=1, tLen do
			if type(TableA[i]) == "table" then
				tVal = getn(TableA[i])
				for j = 1+pVal < tVal and pVal or tVal-2, 2, -2 do
					tPos = 1
					while tPos+j <= tVal do
						stringA = TableA[i][tPos][2]
						if stringA then
							for k=2, j, 2 do stringA = stringA..TableA[i][tPos+k][2] end
							if GF_LANGUAGE_SINGLE_WORDS[languageName][stringA] then
								for k=1, j do table.remove(TableA[i],tPos+1) tVal=tVal-1 end -- Subtract the additional words/spaces
								if type(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]) == "table" then
									TableA[i][tPos] = {GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][1],"Z"}
									for k=2,getn(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]),2 do -- Have 3 words.. Already added word #1... Now I need to add 2/3/4/5
										table.insert(TableA[i], tPos+1, {GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k+1],"Z"}) -- Add word #3 into position 2... On second rotation, will put word #5 into position 4
										table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k]) -- Add word #2 to position 2, pushing word #3 to position 3... on second rotation, will put word #4 into position 4, pushing word #5 to position 5
										tPos=tPos+2 -- Move the table to the right of the last word added
										tVal=tVal+2 -- Increase the table size
									end
								else
									TableA[i][tPos] = {GF_LANGUAGE_SINGLE_WORDS[languageName][stringA],"Z"} -- The Z is placeholder since multiple/single is processed separately
								end
							end
							tPos = tPos + 2
						else
							break
						end
					end
				end
				if languageName == "cn" then
					tPos = 1
					while tPos <= tVal do
						stringA = TableA[i][tPos][2]
						if stringA then
							if GF_LANGUAGE_SINGLE_WORDS[languageName][stringA] then
								if type(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]) == "table" then
									TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][1]
									for k=2,getn(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]),2 do -- Have 3 words.. Already added word #1... Now I need to add 2/3/4/5
										table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k+1]) -- Add word #3 into position 2... On second rotation, will put word #5 into position 4
										table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k]) -- Add word #2 to position 2, pushing word #3 to position 3... on second rotation, will put word #4 into position 4, pushing word #5 to position 5
										tPos=tPos+2 -- Move the table to the right of the last word added
										tVal=tVal+2 -- Increase the table size
									end
								else
									TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]
								end
							else
								if TableA[i][tPos][2] == "Z" then TableA[i][tPos] = TableA[i][tPos][1] else TableA[i][tPos] = TableA[i][tPos][2] end
							end
							tPos = tPos + 2
						else
							break
						end
					end
				else
					tPos = 1
					while tPos <= tVal do
						stringA = TableA[i][tPos][2]
						if stringA then
							if GF_PUNCTUATION_NO_SPACE[strbyte(stringA)] then
								if GF_PUNCTUATION_CONNECTING[stringA] and type(TableA[i][tPos-2]) == "table" and TableA[i][tPos-2][2] and tVal > tPos+2 then
									stringA = TableA[i][tPos-2][2]..TableA[i][tPos+2][2]
									if GF_LANGUAGE_SINGLE_WORDS[languageName][stringA] then
										if type(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]) == "table" then
											TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][1]
											for k=2,getn(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]),2 do -- Have 3 words.. Already added word #1... Now I need to add 2/3/4/5
												table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k+1]) -- Add word #3 into position 2... On second rotation, will put word #5 into position 4
												table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k]) -- Add word #2 to position 2, pushing word #3 to position 3... on second rotation, will put word #4 into position 4, pushing word #5 to position 5
												tPos=tPos+2 -- Move the table to the right of the last word added
												tVal=tVal+2 -- Increase the table size
											end
										else
											TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]
										end
									else
										if TableA[i][tPos][2] == "Z" then TableA[i][tPos] = TableA[i][tPos][1] else TableA[i][tPos] = TableA[i][tPos][2] end
									end
								else
									TableA[i][tPos] = TableA[i][tPos][2]
								end
							else
								stringB = strlower(TableA[i][tPos][1])
								if GF_LANGUAGE_SINGLE_WORDS[languageName][stringB] then
									if type(GF_LANGUAGE_SINGLE_WORDS[languageName][stringB]) == "table" then
										TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringB][1]
										for k=2,getn(GF_LANGUAGE_SINGLE_WORDS[languageName][stringB]),2 do
											table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringB][k+1])
											table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringB][k])
											tPos=tPos+2
											tVal=tVal+2
										end
									else
										TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringB]
									end
								elseif GF_LANGUAGE_SINGLE_WORDS[languageName][stringA] then
									if type(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]) == "table" then
										TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][1]
										for k=2,getn(GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]),2 do
											table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k+1])
											table.insert(TableA[i], tPos+1, GF_LANGUAGE_SINGLE_WORDS[languageName][stringA][k])
											tPos=tPos+2
											tVal=tVal+2
										end
									else
										TableA[i][tPos] = GF_LANGUAGE_SINGLE_WORDS[languageName][stringA]
									end
								else
									if TableA[i][tPos][2] == "Z" then TableA[i][tPos] = TableA[i][tPos][1] else TableA[i][tPos] = TableA[i][tPos][2] end
								end
							end
							tPos = tPos + 2
						else
							break
						end
					end
				end
				stringC = stringC..table.concat(TableA[i])
			else
				stringC = stringC..TableA[i]
			end
		end
		if GF_SavedVariables.showtranslate then GF_PreviousMessage[arg2][2] = stringC if GF_SavedVariables.showuntranslated then GF_PreviousMessage[arg2][3] = true end end
	else
		stringC = ""
		for i=1, tLen do if type(TableA[i]) == "table" then for j=1, getn(TableA[i]), 2 do TableA[i][j] = TableA[i][j][2] end stringC = stringC..table.concat(TableA[i]) else stringC = stringC..TableA[i] end end
	end
	return stringC, languageName, TableA, tLen
end

function GF_GetGroupInformation(arg1,arg2,sentTime,event) -- Searches messages for Groups and similiar functions
	if (GF_SavedVariables.FilterLevel == 1 and (foundLFM >=1 or foundLFG >=1))
	or (GF_SavedVariables.FilterLevel == 2 and (foundLFM >=2 or foundLFG >=2) and (foundRaid or foundDungeon or foundQuest[1] or foundPvP or foundClass))
	or (GF_SavedVariables.FilterLevel == 3 and (foundLFM >=2.25 or foundLFG >=2.25) and (foundRaid or foundDungeon or (foundQuest[1] and foundQuest[1] > 0) or foundPvP)) then
	else return end
	local entry = {}
	entry.op = arg2
	entry.flags = {}
	if foundRaid then entry.type = "R" entry.flags[1] = GF_GROUP_IDS[foundDFlags[1]] entry.flags[GF_GROUP_IDS[foundDFlags[1]]] = true for i=2, getn(foundDFlags) do entry.flags[GF_GROUP_IDS[foundDFlags[i]]] = true end
	elseif foundDungeon and (not foundQuest[1] or foundQuest[1] == 0 or (foundDungeon ~= 0 and foundDungeon >= foundQuest[1] - 5)) then
		entry.type = "D" entry.flags[1] = GF_GROUP_IDS[foundDFlags[1]] entry.flags[GF_GROUP_IDS[foundDFlags[1]]] = true for i=2, getn(foundDFlags) do entry.flags[GF_GROUP_IDS[foundDFlags[i]]] = true end
	elseif foundQuest[1] and (foundQuest[1] > 0 or (not foundPvP or foundPvP == 0)) then entry.type = "Q" foundDungeon = nil entry.flags = {"QUEST",["QUEST"] = true}
	else entry.type = "N" if foundPvP then if foundPvP == 0 then foundPvP = 60 end entry.flags[1] = GF_GROUP_IDS[foundPFlags[1]] for i=1, getn(foundPFlags) do entry.flags[GF_GROUP_IDS[foundPFlags[i]]] = true end else entry.flags = {""} end end
	if not entry.flags[1] then return end
	entry.roles = 1 for roleVal,_ in pairs(foundCFlags) do entry.roles = entry.roles + roleVal end

	entry.dlevel = math.floor(foundRaid or foundDungeon or foundQuest[1] or foundPvP or foundClass or 0)
	if entry.dlevel == 0 and not GF_WhoTable[GF_RealmName][entry.op] then
		local number = 0
		for num in gfind(arg1, "(%d+)[%s\[\]\+]?") do
			if tonumber(num) > number and tonumber(num) > 10 and tonumber(num) < 61 then number = tonumber(num) end
		end
		entry.dlevel = number
	end
	if sentTime then entry.t = sentTime else entry.t = time() end
	if foundLFG > 0 then entry.lfmFlags = 2 else entry.lfmFlags = 1 end
	if foundNotHC or not foundHC then entry.hc = 5 else entry.hc = 6 end

	if dontCheckSpam then
		if not GF_SavedVariables.lfglftintegration then return end
		entry.z = 4
		for i=1, getn(GF_MessageList[GF_RealmName]) do
			if GF_MessageList[GF_RealmName][i].op == arg2 then
				if GF_MessageList[GF_RealmName][i].t + 600 > time() then entry.message = GF_GetRolesFromLFGText(arg1) GF_MessageList[GF_RealmName][i] = entry return 2,entry end
				table.remove(GF_MessageList[GF_RealmName], i)
				entry.message = GF_GetRolesFromLFGText(arg1)
				if not GF_PlayerMessages[arg2] then GF_PlayerMessages[arg2] = { { time(),entry.message }, { time(), "ZZZzzz123654" }, { time(), "ZZZzzz123654" } } else table.insert(GF_PlayerMessages[arg2],1,{ time(), entry.message }) table.remove(GF_PlayerMessages[arg2],4) end
				return 1,entry,true
			end
		end
		entry.message = GF_GetRolesFromLFGText(arg1)
		if not GF_PlayerMessages[arg2] then GF_PlayerMessages[arg2] = { { time(),entry.message }, { time(), "ZZZzzz123654" }, { time(), "ZZZzzz123654" } } else table.insert(GF_PlayerMessages[arg2],1,{ time(), entry.message }) table.remove(GF_PlayerMessages[arg2],4) end
		return 1,entry,true
	else
		if languageName == GF_MY_LANGUAGE then entry.z = 3 else entry.z = 7 entry.f = GF_PreviousMessage[arg2][2] end
		entry.message = GF_ChatReplaceHquestLevels(arg1)
		for i=1, getn(GF_MessageList[GF_RealmName]) do
			if GF_MessageList[GF_RealmName][i].op == arg2 then
				if GF_SavedVariables.showgroupsnewonly and GF_MessageList[GF_RealmName][i].t + GF_SavedVariables.showgroupsnewonlytime*60 > time() then GF_MessageList[GF_RealmName][i] = entry return 2,entry end
				table.remove(GF_MessageList[GF_RealmName], i)
				break
			end
		end
		return 1,entry,true
	end
end
function GF_GetRolesFromLFGText(arg1)
	local lfs,lfe,prefix,dungeonName,numTank,numHeal,numDPS = strfind(arg1,"([LFGM]+):(%w+):(%w+):?(%d?%d?):?(%d?%d?)")
	if prefix == "LFM" and dungeonName and tonumber(numTank) and tonumber(numHeal) and tonumber(numDPS) then
		return gsub(prefix.." "..dungeonName..GF_LFG_HAVE..(tonumber(numTank) > 0 and (numTank..GF_TANK.." ") or "")..(tonumber(numHeal) > 0 and (numHeal..GF_HEALER.." ") or "")..(tonumber(numDPS) > 0 and (numDPS..GF_DPS.." ") or ""),":"," ")..GF_LFG_ADDON
	elseif numTank then
		prefix = numTank.." "..prefix.." "..dungeonName
		lfs = lfe+1
		while true do
			lfs,lfe,dungeonName = strfind(arg1,"[LFGM]+:(%w+):%w+",lfs)
			if lfs then
				prefix = prefix.."/"..dungeonName
				lfs = lfe + 1
			else
				break
			end
		end
		return prefix.." (LFG addon)"
	else
		return gsub(arg1,":"," ").." (LFG addon)"
	end
end
function GF_LFGUpdateText(arg1,arg2)
	if strfind(arg1,GF_LFG_PARTY_READY) then
		for i=1, getn(GF_MessageList[GF_RealmName]) do
			if GF_MessageList[GF_RealmName][i].op == arg2 then
				GF_MessageList[GF_RealmName][i].message = gsub(gsub(gsub(gsub(GF_MessageList[GF_RealmName][i].message,GF_GROUP_IS_FULL,""),GF_LEFT_QUEUE,""),GF_LFG_ADDON,""),"%(%)","")..GF_GROUP_IS_FULL
				GF_MessageList[GF_RealmName][i].t = time()
				break
			end
		end
		local lfs,lfe,stringA = strfind(arg1,GF_LFG_PARTY_READY)
		lfs = lfe + 1
		while true do
			lfs,lfe,stringA = strfind(arg1,"(%a+)",lfs)
			if stringA then
				for i=1, getn(GF_MessageList[GF_RealmName]) do
					if GF_MessageList[GF_RealmName][i].op == stringA then
						GF_MessageList[GF_RealmName][i].message = gsub(gsub(gsub(gsub(GF_MessageList[GF_RealmName][i].message,GF_GROUP_IS_FULL,""),GF_LEFT_QUEUE,""),GF_LFG_ADDON,""),"%(%)","")..GF_GROUP_IS_FULL
						GF_MessageList[GF_RealmName][i].t = time()
						break
					end
				end
				lfs = lfe + 1
			else
				break
			end
		end
	elseif strfind(arg1,GF_LFG_LEFT_QUEUE) then
		for i=1, getn(GF_MessageList[GF_RealmName]) do
			if GF_MessageList[GF_RealmName][i].op == arg2 then
				GF_MessageList[GF_RealmName][i].message = gsub(gsub(gsub(gsub(GF_MessageList[GF_RealmName][i].message,GF_GROUP_IS_FULL,""),GF_LEFT_QUEUE,""),GF_LFG_ADDON,""),"%(%)","")..GF_LEFT_QUEUE
				GF_MessageList[GF_RealmName][i].t = time()
				break
			end
		end
	end
end
function GF_SearchMessageForTextString(msg,textstring,entry)
	for word in gfind(textstring, "([%w%s]+),") do
		if strfind(msg, word) then return true end
		if entry.flags[GF_GROUP_IDS[strlower(gsub(word," ",""))]] then return true end
	end
	for name,_ in pairs(entry.flags) do
		if GF_PerCharVariables.searchbuttonstext[name] then
			if name == "QUEST" then
				if not GF_PerCharVariables.autofilter or (entry.dlevel and entry.dlevel >= UnitLevel("player")-GF_PerCharVariables.autofilterlevelvar and entry.dlevel <= UnitLevel("player")+GF_PerCharVariables.autofilterlevelvar) then return true end
			else
				return true
			end
		end
	end
end

function GF_JoinWorld() -- Event-related
	GF_SavedVariables.groupchannelname = GF_GroupChannelEditBox:GetText()
	if GF_SavedVariables.joinworld then
		local chanList = { GetChannelList() }
		for i=1, getn(chanList) do
			if strlower(chanList[i]) == strlower(GF_SavedVariables.groupchannelname) then return true end
		end
		JoinChannelByName(GF_SavedVariables.groupchannelname)
		ChatFrame_AddChannel(ChatFrame1, GF_SavedVariables.groupchannelname)
	end
end
function GF_BindKey(bindKey, bindName)
	if not GetBindingKey(bindName) then
		local foundIKey
		for i=1,GetNumBindings() do
			local _,key1,key2 = GetBinding(i)
			if key1 == bindKey or key2 == bindKey then foundIKey = true end
		end
		if not foundIKey then SetBinding(bindKey,bindName) end
	end
end
function GF_SetDropdownWidths() -- Could clean this up with some "For" tables of the buttons in each dropdown
	if (GF_GroupFilterShowDungeonCheckButtonTextLabel:GetStringWidth() + 40) > GF_GroupFilterDropdownMenu:GetWidth() then GF_GroupFilterDropdownMenu:SetWidth((GF_GroupFilterShowDungeonCheckButtonTextLabel:GetStringWidth() + 40)) end
	if (GF_GroupFilterShowRaidCheckButtonTextLabel:GetStringWidth() + 40) > GF_GroupFilterDropdownMenu:GetWidth() then GF_GroupFilterDropdownMenu:SetWidth((GF_GroupFilterShowRaidCheckButtonTextLabel:GetStringWidth() + 40)) end
	if (GF_GroupFilterShowQuestCheckButtonTextLabel:GetStringWidth() + 40) > GF_GroupFilterDropdownMenu:GetWidth() then GF_GroupFilterDropdownMenu:SetWidth((GF_GroupFilterShowQuestCheckButtonTextLabel:GetStringWidth() + 40)) end
	if (GF_GroupFilterShowOtherCheckButtonTextLabel:GetStringWidth() + 40) > GF_GroupFilterDropdownMenu:GetWidth() then GF_GroupFilterDropdownMenu:SetWidth((GF_GroupFilterShowOtherCheckButtonTextLabel:GetStringWidth() + 40)) end

	if (GF_ShowGroupsInLabel:GetStringWidth() + 10) > GF_ChatFilterDropdownMenu:GetWidth() then GF_ChatFilterDropdownMenu:SetWidth((GF_ShowGroupsInLabel:GetStringWidth() + 10)) end
	if (GF_ChatFilterGroupsInChatCheckButtonTextLabel:GetStringWidth() + 40) > GF_ChatFilterDropdownMenu:GetWidth() then GF_ChatFilterDropdownMenu:SetWidth((GF_ChatFilterGroupsInChatCheckButtonTextLabel:GetStringWidth() + 40)) end
	if (GF_ChatFilterGroupsNewOnlyCheckButtonTextLabel:GetStringWidth() + 40) > GF_ChatFilterDropdownMenu:GetWidth() then GF_ChatFilterDropdownMenu:SetWidth((GF_ChatFilterGroupsNewOnlyCheckButtonTextLabel:GetStringWidth() + 40)) end
	if (GF_ChatFilterGroupsInMinimapCheckButtonTextLabel:GetStringWidth() + 40) > GF_ChatFilterDropdownMenu:GetWidth() then GF_ChatFilterDropdownMenu:SetWidth((GF_ChatFilterGroupsInMinimapCheckButtonTextLabel:GetStringWidth() + 40)) end
	if (GF_ShowChatTypesLabel:GetStringWidth() + 10) > GF_ChatFilterDropdownMenu:GetWidth() then GF_ChatFilterDropdownMenu:SetWidth((GF_ShowChatTypesLabel:GetStringWidth() + 10)) end
	if (GF_ChatFilterShowChatCheckButtonTextLabel:GetStringWidth() + 40) > GF_ChatFilterDropdownMenu:GetWidth() then GF_ChatFilterDropdownMenu:SetWidth((GF_ChatFilterShowChatCheckButtonTextLabel:GetStringWidth() + 40)) end
	if (GF_ChatFilterShowTradesCheckButtonTextLabel:GetStringWidth() + 40) > GF_ChatFilterDropdownMenu:GetWidth() then GF_ChatFilterDropdownMenu:SetWidth((GF_ChatFilterShowTradesCheckButtonTextLabel:GetStringWidth() + 40)) end
	if (GF_ChatFilterShowLootCheckButtonTextLabel:GetStringWidth() + 40) > GF_ChatFilterDropdownMenu:GetWidth() then GF_ChatFilterDropdownMenu:SetWidth((GF_ChatFilterShowLootCheckButtonTextLabel:GetStringWidth() + 40)) end
	if (GF_ChatFilterShowGuildsCheckButtonTextLabel:GetStringWidth() + 40) > GF_ChatFilterDropdownMenu:GetWidth() then GF_ChatFilterDropdownMenu:SetWidth((GF_ChatFilterShowGuildsCheckButtonTextLabel:GetStringWidth() + 40)) end

	if (GF_LogFilterShowGroupsTextLabel:GetStringWidth() + 40) > GF_LogFilterDropdownMenu:GetWidth() then GF_LogFilterDropdownMenu:SetWidth((GF_LogFilterShowGroupsTextLabel:GetStringWidth() + 40)) end
	if (GF_LogFilterShowFilteredTextLabel:GetStringWidth() + 40) > GF_LogFilterDropdownMenu:GetWidth() then GF_LogFilterDropdownMenu:SetWidth((GF_LogFilterShowFilteredTextLabel:GetStringWidth() + 40)) end
	if (GF_LogFilterShowChatTextLabel:GetStringWidth() + 40) > GF_LogFilterDropdownMenu:GetWidth() then GF_LogFilterDropdownMenu:SetWidth((GF_LogFilterShowChatTextLabel:GetStringWidth() + 40)) end
	if (GF_LogFilterShowTradesTextLabel:GetStringWidth() + 40) > GF_LogFilterDropdownMenu:GetWidth() then GF_LogFilterDropdownMenu:SetWidth((GF_LogFilterShowTradesTextLabel:GetStringWidth() + 40)) end
	if (GF_LogFilterShowGuildTextLabel:GetStringWidth() + 40) > GF_LogFilterDropdownMenu:GetWidth() then GF_LogFilterDropdownMenu:SetWidth((GF_LogFilterShowGuildTextLabel:GetStringWidth() + 40)) end
	if (GF_LogFilterShowLootTextLabel:GetStringWidth() + 40) > GF_LogFilterDropdownMenu:GetWidth() then GF_LogFilterDropdownMenu:SetWidth((GF_LogFilterShowLootTextLabel:GetStringWidth() + 40)) end
	if (GF_LogFilterShowSpamTextLabel:GetStringWidth() + 40) > GF_LogFilterDropdownMenu:GetWidth() then GF_LogFilterDropdownMenu:SetWidth((GF_LogFilterShowSpamTextLabel:GetStringWidth() + 40)) end
	if (GF_LogFilterShowBlacklistTextLabel:GetStringWidth() + 40) > GF_LogFilterDropdownMenu:GetWidth() then GF_LogFilterDropdownMenu:SetWidth((GF_LogFilterShowBlacklistTextLabel:GetStringWidth() + 40)) end
	if (GF_LogFilterShowBelowLevelTextLabel:GetStringWidth() + 40) > GF_LogFilterDropdownMenu:GetWidth() then GF_LogFilterDropdownMenu:SetWidth((GF_LogFilterShowBelowLevelTextLabel:GetStringWidth() + 40)) end

	if (GF_LogChannelFilterChannelsTextLabel:GetStringWidth() + 40) > GF_LogChannelFilterDropdownMenu:GetWidth() then GF_LogChannelFilterDropdownMenu:SetWidth((GF_LogChannelFilterChannelsTextLabel:GetStringWidth() + 40)) end
	if (GF_LogChannelFilterPartyTextLabel:GetStringWidth() + 40) > GF_LogChannelFilterDropdownMenu:GetWidth() then GF_LogChannelFilterDropdownMenu:SetWidth((GF_LogChannelFilterPartyTextLabel:GetStringWidth() + 40)) end
	if (GF_LogChannelFilterGuildTextLabel:GetStringWidth() + 40) > GF_LogChannelFilterDropdownMenu:GetWidth() then GF_LogChannelFilterDropdownMenu:SetWidth((GF_LogChannelFilterGuildTextLabel:GetStringWidth() + 40)) end
	if (GF_LogChannelFilterWhisperTextLabel:GetStringWidth() + 40) > GF_LogChannelFilterDropdownMenu:GetWidth() then GF_LogChannelFilterDropdownMenu:SetWidth((GF_LogChannelFilterWhisperTextLabel:GetStringWidth() + 40)) end
	if (GF_LogChannelFilterSayTextLabel:GetStringWidth() + 40) > GF_LogChannelFilterDropdownMenu:GetWidth() then GF_LogChannelFilterDropdownMenu:SetWidth((GF_LogChannelFilterSayTextLabel:GetStringWidth() + 40)) end
	if (GF_LogChannelFilterYellTextLabel:GetStringWidth() + 40) > GF_LogChannelFilterDropdownMenu:GetWidth() then GF_LogChannelFilterDropdownMenu:SetWidth((GF_LogChannelFilterYellTextLabel:GetStringWidth() + 40)) end
	if (GF_LogChannelFilterHardcoreTextLabel:GetStringWidth() + 40) > GF_LogChannelFilterDropdownMenu:GetWidth() then GF_LogChannelFilterDropdownMenu:SetWidth((GF_LogChannelFilterHardcoreTextLabel:GetStringWidth() + 40)) end

	if (GF_AutoBlacklistTradesCheckButtonTextLabel:GetStringWidth() + 40) > GF_AutoBlacklistDropdownMenu:GetWidth() then GF_AutoBlacklistDropdownMenu:SetWidth((GF_AutoBlacklistTradesCheckButtonTextLabel:GetStringWidth() + 40)) end
	if (GF_AutoBlacklistGuildCheckButtonTextLabel:GetStringWidth() + 40) > GF_AutoBlacklistDropdownMenu:GetWidth() then GF_AutoBlacklistDropdownMenu:SetWidth((GF_AutoBlacklistGuildCheckButtonTextLabel:GetStringWidth() + 40)) end
	if (GF_AutoBlacklistChatCheckButtonTextLabel:GetStringWidth() + 40) > GF_AutoBlacklistDropdownMenu:GetWidth() then GF_AutoBlacklistDropdownMenu:SetWidth((GF_AutoBlacklistChatCheckButtonTextLabel:GetStringWidth() + 40)) end
	if (GF_AutoBlacklistForeignCheckButtonTextLabel:GetStringWidth() + 40) > GF_AutoBlacklistDropdownMenu:GetWidth() then GF_AutoBlacklistDropdownMenu:SetWidth((GF_AutoBlacklistForeignCheckButtonTextLabel:GetStringWidth() + 40)) end

	if (GF_TranslateChatCheckButtonTextLabel:GetStringWidth() + 40) > GF_TranslateDropdownMenu:GetWidth() then GF_TranslateDropdownMenu:SetWidth((GF_TranslateChatCheckButtonTextLabel:GetStringWidth() + 40)) end
	if (GF_TranslateShowUntranslatedCheckButtonTextLabel:GetStringWidth() + 40) > GF_TranslateDropdownMenu:GetWidth() then GF_TranslateDropdownMenu:SetWidth((GF_TranslateShowUntranslatedCheckButtonTextLabel:GetStringWidth() + 40)) end
	if (GF_TranslateBlockForeignCheckButtonTextLabel:GetStringWidth() + 40) > GF_TranslateDropdownMenu:GetWidth() then GF_TranslateDropdownMenu:SetWidth((GF_TranslateBlockForeignCheckButtonTextLabel:GetStringWidth() + 40)) end
end
function GF_SetLFGRoleButtons()
	if GF_TankClasses[({UnitClass("player")})[2]] then
		if GF_HealingClasses[({UnitClass("player")})[2]] then
			GF_LFGMyRoleDPSCheckButton:SetPoint("RIGHT", "GF_LFGMyRoleLevelCheckButton", "LEFT", -1*getglobal(GF_LFGMyRoleDPSCheckButton:GetName().."TextLabel"):GetStringWidth() -2, 0)
			GF_LFGMyRoleHealCheckButton:SetPoint("RIGHT", "GF_LFGMyRoleDPSCheckButton", "LEFT", -1*getglobal(GF_LFGMyRoleHealCheckButton:GetName().."TextLabel"):GetStringWidth() -2, 0)
			GF_LFGMyRoleTankCheckButton:SetPoint("RIGHT", "GF_LFGMyRoleHealCheckButton", "LEFT", -1*getglobal(GF_LFGMyRoleTankCheckButton:GetName().."TextLabel"):GetStringWidth() -2, 0)
			GF_LFGMyRole:SetPoint("RIGHT", "GF_LFGMyRoleTankCheckButton", "LEFT", 0, 2)
		else
			GF_LFGMyRoleHealCheckButton:Hide()
			GF_PerCharVariables.lfgheal = nil
			GF_LFGMyRoleDPSCheckButton:SetPoint("RIGHT", "GF_LFGMyRoleLevelCheckButton", "LEFT", -1*getglobal(GF_LFGMyRoleDPSCheckButton:GetName().."TextLabel"):GetStringWidth() -2, 0)
			GF_LFGMyRoleTankCheckButton:SetPoint("RIGHT", "GF_LFGMyRoleDPSCheckButton", "LEFT", -1*getglobal(GF_LFGMyRoleTankCheckButton:GetName().."TextLabel"):GetStringWidth() -2, 0)
			GF_LFGMyRole:SetPoint("RIGHT", "GF_LFGMyRoleTankCheckButton", "LEFT", 0, 2)
		end
	elseif GF_HealingClasses[({UnitClass("player")})[2]] then -- If healer then heal + dps.
		GF_LFGMyRoleTankCheckButton:Hide()
		GF_PerCharVariables.lfgtank = nil
		GF_LFGMyRoleDPSCheckButton:SetPoint("RIGHT", "GF_LFGMyRoleLevelCheckButton", "LEFT", -1*getglobal(GF_LFGMyRoleDPSCheckButton:GetName().."TextLabel"):GetStringWidth() -2, 0)
		GF_LFGMyRoleHealCheckButton:SetPoint("RIGHT", "GF_LFGMyRoleDPSCheckButton", "LEFT", -1*getglobal(GF_LFGMyRoleHealCheckButton:GetName().."TextLabel"):GetStringWidth() -2, 0)
		GF_LFGMyRole:SetPoint("RIGHT", "GF_LFGMyRoleHealCheckButton", "LEFT", 0, 2)
	else
		GF_LFGMyRoleHealCheckButton:Hide()
		GF_PerCharVariables.lfgheal = nil
		GF_LFGMyRoleTankCheckButton:Hide()
		GF_PerCharVariables.lfgtank = nil
		GF_LFGMyRoleDPSCheckButton:SetPoint("RIGHT", "GF_LFGMyRoleLevelCheckButton", "LEFT", -1*getglobal(GF_LFGMyRoleDPSCheckButton:GetName().."TextLabel"):GetStringWidth() -2, 0)
		GF_LFGMyRole:SetPoint("RIGHT", "GF_LFGMyRoleDPSCheckButton", "LEFT", 0, 2)
	end
end
function GF_PruneDataTables()
	for realm,_ in pairs(GF_WhoTable) do
		for name,whoData in pairs(GF_WhoTable[realm]) do
			if whoData[4] and ((whoData[1] == 60 and whoData[4] + 1209600 < time()) or (whoData[1] < 60 and whoData[4] + 86400 < time())) then -- Keep WhoData for 14 days for 60's. One day for under 60.
				GF_WhoTable[realm][name] = nil
			end
		end
	end
	for realm,_ in pairs(GF_WhisperLogData) do -- After two pages, trim from 128 messages to 16
		for i=38, getn(GF_WhisperLogData[realm]) do -- Starts at the first name on page 3
			for j=17, getn(GF_WhisperLogData[realm][GF_WhisperLogData[realm][i]]) do
				table.remove(GF_WhisperLogData[realm][GF_WhisperLogData[realm][i]],17)
			end
		end
	end
	for realm,_ in pairs(GF_GroupHistory) do
		local TableA = {}
		for i=1, getn(GF_GroupHistory[realm]) do
			for j=1, getn(GF_GroupHistory[realm][GF_GroupHistory[realm][i]]) do -- Delete anything older than 60 days except first two groups in each section, or if older than 6 months.
				if GF_GroupHistory[realm][GF_GroupHistory[realm][i]][j] and (j > 2 and GF_GroupHistory[realm][GF_GroupHistory[realm][i]][j][2] + 5184000 < time() or GF_GroupHistory[realm][GF_GroupHistory[realm][i]][j][2] + 15552000 < time()) then
					table.remove(GF_GroupHistory[realm][GF_GroupHistory[realm][i]],j)
					j = j - 1
				elseif GF_GroupHistory[realm][GF_GroupHistory[realm][i]][j] then
					for name,_ in pairs(GF_GroupHistory[realm][GF_GroupHistory[realm][i]][j][3]) do
						TableA[name] = true
					end
				end
			end
		end
		if GF_GroupHistory[realm]["PLAYERS"] then
			for name,_ in pairs(GF_GroupHistory[realm]["PLAYERS"]) do
				if name and not TableA[name] then GF_GroupHistory[realm]["PLAYERS"][name] = nil end
			end
		end
	end
	for realm,_ in pairs(GF_MessageList) do
		for i=1, getn(GF_MessageList[realm]) do
			if GF_MessageList[realm][i] then
				if GF_MessageList[realm][i].t + 3600 < time() then
					table.remove(GF_MessageList[realm], i)
					i = i - 1
				end
			end
		end
	end
	for realm,_ in pairs(GF_LogHistory) do
		if not GF_LogHistory[realm].lastLogin or GF_LogHistory[realm].lastLogin + 2592000 < time() then -- Keep for 30 days after last login per realm
			GF_LogHistory[realm] = {}
		end
	end
end
function GF_PruneTheClassWhoTable()
	for name,whoData in pairs(GF_ClassWhoTable) do
		if whoData[4] and whoData[4] + 86400 < time() then GF_ClassWhoTable[name] = nil	end
	end
end

function GF_UpdateGroup() -- Get Group/Friends/Guildies information(turns off ignore/blacklist or adds their character information)
	local lastParty,lastPartyOnline = GF_NumPartyMembers,GF_NumPartyMembersOnline
	GF_NumPartyMembers = GF_GetNumGroupMembers()
	if GF_CurrentZone ~= GetRealZoneText() then -- If zone changes, this saves TempData to old GF_CurrentZone, then loads new GF_CurrentZone to TempData or creates a blank TempData and GF_CurrentZone
-- This function saves TempData when changing zone
		GF_PerCharVariables.CurrentGroup["TempData"][5] = time() -- Save the time I left the zone.
		if not GF_PerCharVariables.groupfinishtimer or not GF_PerCharVariables.groupfinishtimer[2][GF_CurrentZone] then GF_CreateCurrentZoneData() GF_SaveTempData() end -- Create Zonedata is it doesn't exist and save tempdata to it.
		GF_CurrentZone = GetRealZoneText() -- Changing zone to the new zone
-- This function loads data or creates new data
		GF_ResetTempData()
		if GF_CreateCurrentZoneData() or (GF_PerCharVariables.groupfinishtimer and GF_PerCharVariables.groupfinishtimer[2][GF_CurrentZone]) then -- There was no saved data(create data and reset tempdata).. zone is being saved(reset tempdata)
		else
			GF_LoadSavedData()
		end
	else
		GF_GetPlayersCurrentlyInGroup()
	end
	if GF_WasPartyLeaderBefore and not UnitIsPartyLeader("player") and GF_NumPartyMembers > 1 then
		GF_TurnOffAnnounce(GF_JOINED_GROUP_ANNOUNCE_OFF)
		GF_WasPartyLeaderBefore = nil
		GF_ApplyFiltersToGroupList(true)
	elseif GF_AutoAnnounceTimer and GF_NumPartyMembers == 1 then
		GF_WasPartyLeaderBefore = true
	end
	if lastPartyOnline ~= GF_NumPartyMembersOnline or (GF_NumPartyMembers == 1 and lastParty ~= 1) then
		GF_UpdateAndRequestTimer = 0
		if GF_AutoAnnounceTimer and GF_NumPartyMembers >= GF_BUTTONS_LIST.LFGSize[GF_PerCharVariables.lfgsize][4] then GF_TurnOffAnnounce(GF_NO_MORE_PLAYERS_NEEDED) end
		if GF_PerCharVariables.lfgauto then GF_FixLFGStrings(true) end
		if LFTFrame then
			LFT_Update()
			if GetNumRaidMembers() > 1 then
				if GF_QueuetoLFTButton:IsVisible() then GF_QueuetoLFTButton:Hide() GF_QueuetoLFTButton:SetText(GF_QUEUE_IN_LFT) end
			elseif GF_NumPartyMembers ~= lastParty then
				GF_UpdateQueueLFTButton()
			end
		end
		if GF_NumPartyMembers == 1 and lastParty ~= 1 then -- I left group or just logged in.
			GF_StartSaveGroupData() -- This will always save tempdata to currentzone and reset tempdata if there is no timer.
			if lastParty ~= 0 then -- I left group. Reset TempData if there is activity
				if GF_PerCharVariables.groupfinishtimer then
					GF_ResetTempData()
				else -- I left a group and there is no activity, reload old save.
					if not GF_CreateCurrentZoneData() then GF_LoadSavedData() end
				end
			elseif GF_PerCharVariables.groupfinishtimer and GF_PerCharVariables.groupfinishtimer[2][GF_CurrentZone] then
				for name,pdata in pairs(GF_PerCharVariables.CurrentGroup["TempData"][3]) do if name ~= UnitName("player") and (pdata[5] > 0 or not GF_PerCharVariables.usedpsmeter) then GF_ResetTempData() break end end
			else
				if not GF_CreateCurrentZoneData() then GF_LoadSavedData() end
			end
		elseif lastParty == 1 and GF_NumPartyMembers > 1 then -- I just joined a group, reset my tempdata. If there was a finishtimer, check for the same group and load currentgroup
			if GF_PerCharVariables.groupfinishtimer then -- If timer, reload data to tempdata if it is the same group and disable the timer... If no timer, clear all data
				GF_ResetTempData()
				for i=1, getn(GF_PerCharVariables.CurrentGroup) do
					if GF_PerCharVariables.CurrentGroup[i] ~= "" then
						local totalgroupsize,namesincommon = 0,0
						for name,data in pairs(GF_PerCharVariables.CurrentGroup[GF_PerCharVariables.CurrentGroup[i]][3]) do totalgroupsize = totalgroupsize + 1 if GF_PlayersCurrentlyInGroup[name] then namesincommon = namesincommon + 1 end end
						if namesincommon / totalgroupsize > .5 then
							if not GF_CreateCurrentZoneData() then GF_LoadSavedData() end
							GF_PerCharVariables.groupfinishtimer = nil
							DEFAULT_CHAT_FRAME:AddMessage(GF_REJOINED_GROUP,1,1,0.5)
							break
						end
					end
				end
			else -- Joined a group with no timer... save tempdata and create new tempdata
				GF_CreateCurrentZoneData()
				GF_SaveTempData()
				GF_ResetTempData()
				for i=1, getn(GF_PerCharVariables.CurrentGroup) do
					if GF_PerCharVariables.CurrentGroup[i] and GF_PerCharVariables.CurrentGroup[i] ~= GF_CurrentZone then
						GF_PerCharVariables.CurrentGroup[GF_PerCharVariables.CurrentGroup[i]] = nil
						table.remove(GF_PerCharVariables.CurrentGroup,i)
						i = i - 1
					end
				end
			end
		end
	end
	if GF_WhisperLogLastWhisperLog == 2 and GF_WhisperLogCurrentButtonID == 1 and not GF_PerCharVariables.CurrentGroup["TempData"][6] then GF_GroupHistoryDisplayLogCurrent("TempData",true) end
	GF_UpdateDPSMeter()
	GF_OnUpdateFunctions["UpdateGroup"] = nil
end
function GF_GetPlayersCurrentlyInGroup()
	GF_NumPartyMembersOnline = 0
	GF_PlayersCurrentlyInGroup = {[UnitName("player")] = "player"}
	GF_PetCurrentlyInGroup = {}
	if UnitExists("pet") then GF_PetCurrentlyInGroup[UnitName("pet")] = {UnitName("player"),"pet"} end
	if GetNumRaidMembers() > 1 then
		for i=1,40 do
			local name,_,_,level,class = GetRaidRosterInfo(i)
			if name and name ~= UNKNOWN and GF_Classes[class] then
				GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], GetGuildInfo("raid"..i) or "", time() }
				GF_PlayersCurrentlyInGroup[name] = "raid"..i
				GF_NumPartyMembersOnline = GF_NumPartyMembersOnline + 1
				if UnitExists("raidpet"..i) then GF_PetCurrentlyInGroup[UnitName("raidpet"..i)] = {UnitName("raid"..i),"raidpet"..i} end
				if not GF_PerCharVariables.CurrentGroup["TempData"][3][UnitName("raid"..i)] then GF_PerCharVariables.CurrentGroup["TempData"][3][UnitName("raid"..i)] = { GF_WhoTable[GF_RealmName][UnitName("raid"..i)][1],GF_WhoTable[GF_RealmName][UnitName("raid"..i)][2],0,0,0 } end
			end
		end
	else
		GF_NumPartyMembersOnline = 1
		if not GF_PerCharVariables.CurrentGroup["TempData"][3][UnitName("player")] then GF_PerCharVariables.CurrentGroup["TempData"][3][UnitName("player")] = { UnitLevel("player"),({UnitClass("player")})[2],0,0,0 } end
		for i=1,4 do
			if UnitExists("party"..i) and UnitName("party"..i) ~= UNKNOWN and GF_Classes[({UnitClass("party"..i)})[2]] then
				GF_PlayersCurrentlyInGroup[UnitName("party"..i)] = "party"..i
				GF_WhoTable[GF_RealmName][UnitName("party"..i)] = { UnitLevel("party"..i), ({UnitClass("party"..i)})[2], GetGuildInfo("party"..i) or "", time() }
				GF_NumPartyMembersOnline = GF_NumPartyMembersOnline + 1
				if UnitExists("partypet"..i) then GF_PetCurrentlyInGroup[UnitName("partypet"..i)] = {UnitName("party"..i),"partypet"..i} end
				if not GF_PerCharVariables.CurrentGroup["TempData"][3][UnitName("party"..i)] then GF_PerCharVariables.CurrentGroup["TempData"][3][UnitName("party"..i)] = { GF_WhoTable[GF_RealmName][UnitName("party"..i)][1],GF_WhoTable[GF_RealmName][UnitName("party"..i)][2],0,0,0 } end
			end
		end
	end
	GF_CreateExcludeNamesList()
end
function GF_GetNumGroupMembers()
	if GetNumRaidMembers() > 0 then return GetNumRaidMembers() else return GetNumPartyMembers() + 1 end
end
function GF_UpdateGuildiesList()
	GF_CurrentNumGuildies = GetNumGuildMembers()
	GF_Guildies = {}
	for i=1,GetNumGuildMembers() do
		local name,_,_,level,class,_,_,_,online = GetGuildRosterInfo(i)
		if name then
			if online then GF_Guildies[name] = true else GF_Guildies[name] = nil end
			if GF_Classes[class] then GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], GetGuildInfo("player"), time() } end
		end
	end
	GF_CreateExcludeNamesList()
end
function GF_IsGuildieOrPartyMemberUsingAddon()
	for name in pairs(GF_AddonListOfGuildAndPartyMembersWithAddon) do
		if GF_Guildies[name] and GF_PlayersCurrentlyInGroup[name] then return 3
		elseif GF_Guildies[name] then return 1
		elseif GF_PlayersCurrentlyInGroup[name] then return 2 end
	end
end
function GF_CreateExcludeNamesList()
	GF_ExcludeNames = {}
	for name,_ in pairs(GF_PlayersCurrentlyInGroup) do GF_ExcludeNames[name] = true end
	for name,_ in pairs(GF_Friends) do GF_ExcludeNames[name] = true end
	for name,_ in pairs(GF_Guildies) do GF_ExcludeNames[name] = true end
end

function GF_CreateBlankGroupData()
	GF_PerCharVariables.CurrentGroup = { ["TempData"] = { GF_CurrentZone,time(),{},{},time() },[GF_CurrentZone] = { GF_CurrentZone,time(),{},{},time() } }
	table.insert(GF_PerCharVariables.CurrentGroup,GF_CurrentZone)
	GF_GetPlayersCurrentlyInGroup()
end
function GF_CreateCurrentZoneData()
	if not GF_PerCharVariables.CurrentGroup[GF_CurrentZone] then
		table.insert(GF_PerCharVariables.CurrentGroup,GF_CurrentZone)
		GF_PerCharVariables.CurrentGroup[GF_CurrentZone] = { GF_CurrentZone,time(),{},{},time() }
		GF_GetPlayersCurrentlyInGroup()
		return true
	end
end
function GF_SaveTempData()
	for pos,data in pairs(GF_PerCharVariables.CurrentGroup["TempData"]) do if type(data) == "table" then for tPos,tdata in pairs(data) do GF_PerCharVariables.CurrentGroup[GF_CurrentZone][pos][tPos] = tdata end else GF_PerCharVariables.CurrentGroup[GF_CurrentZone][pos] = data end end
end
function GF_ResetTempData()
	GF_PerCharVariables.CurrentGroup["TempData"] = { GF_CurrentZone,time(),{},{},time() }
	GF_GetPlayersCurrentlyInGroup()
end
function GF_LoadSavedData()
	for pos,data in pairs(GF_PerCharVariables.CurrentGroup[GF_CurrentZone]) do if type(data) == "table" then for tPos,tdata in pairs(data) do GF_PerCharVariables.CurrentGroup["TempData"][pos][tPos] = tdata end else GF_PerCharVariables.CurrentGroup["TempData"][pos] = data end end
	GF_GetPlayersCurrentlyInGroup()
end

function GF_StartSaveGroupData(immediate)
-- Save TempData to GF_CurrentZone
	if not GF_PerCharVariables.groupfinishtimer or not GF_PerCharVariables.groupfinishtimer[2][GF_CurrentZone] then -- Only save tempdata to GF_CurrentZone if no groupfinishtimer and there is at least one person in the group other than me with activity.
		for name,pdata in pairs(GF_PerCharVariables.CurrentGroup["TempData"][3]) do
			if name ~= UnitName("player") and (pdata[5] > 0 or not GF_PerCharVariables.usedpsmeter) then GF_CreateCurrentZoneData() GF_SaveTempData() GF_ResetTempData() break end
		end
	end
-- Make list of groups to save.
	local groupstosave = {}
	for i=1, getn(GF_PerCharVariables.CurrentGroup) do
		if GF_PerCharVariables.CurrentGroup[i] and GF_PerCharVariables.CurrentGroup[i] ~= "" then -- At this point, tempdata is saved to GF_CurrentZone and tempdata has been cleared... find all groups with activity and add to groupstosave, delete other groups.
			local numplayers,withactivity,fullactivity = 0,0,0
			for name,data in pairs(GF_PerCharVariables.CurrentGroup[GF_PerCharVariables.CurrentGroup[i]][3]) do
				if data[5] >= 30 or not GF_PerCharVariables.usedpsmeter then withactivity = withactivity + 1 if data[5] >= 300 then fullactivity = fullactivity + 1 end end
				numplayers = numplayers + 1
			end
-- Delete group if less than 30 seconds of activity and there there are at least two players... Flag for save if the group has lasted 10 minutes and there are at least two people with 5 minutes of activity... Keep group in buffer for two minutes otherwise.
			if withactivity > 1 then -- Save groups with activity
				table.insert(groupstosave,GF_PerCharVariables.CurrentGroup[i]) groupstosave[GF_PerCharVariables.CurrentGroup[i]] = fullactivity
			elseif numplayers > 1 then -- Delete groups where I'm not alone.
				GF_PerCharVariables.CurrentGroup[GF_PerCharVariables.CurrentGroup[i]] = nil
				table.remove(GF_PerCharVariables.CurrentGroup,i)
				i = i - 1
			end
		end
	end
	if groupstosave[1] then
		GF_PerCharVariables.groupfinishtimer = { immediate and GetTime() or GetTime() + 120,groupstosave }
		local stringA = ""
		for i=1, getn(groupstosave) do if GF_PerCharVariables.CurrentGroup[GF_PerCharVariables.groupfinishtimer[2][i]][2] + 600 < time() and (groupstosave[groupstosave[i]] > 1 or not GF_PerCharVariables.usedpsmeter) then stringA = stringA..groupstosave[i]..", " end end
		if not immediate then if stringA ~= "" then DEFAULT_CHAT_FRAME:AddMessage(GF_NOT_IN_GROUP_SAVING..strsub(stringA,1,-3)..GF_IN_TWO_MINUTES,1,1,0.5) end else GF_GroupFinishedAddToGroupHistoryList() GF_PerCharVariables.groupfinishtimer = nil end
		return true
	end
end

function GF_ApplyFiltersToGroupList(override) -- GroupsFrame functions
	if not override and GetMouseFocus() and GetMouseFocus():GetName() and strfind(GetMouseFocus():GetName(), "GF_NewItem") and (strfind(GetMouseFocus():GetName(), "LFGInviteButton") or strfind(GetMouseFocus():GetName(), "LFMWhisperRequestInviteButton") or strfind(GetMouseFocus():GetName(), "PlayerNoteButton")) then return end
	GF_CheckSearchButtonHasValues()
	GF_FilteredResultsList = {}
	for i=1, getn(GF_MessageList[GF_RealmName]) do
		if GF_MessageList[GF_RealmName][i] then
			if GF_MessageList[GF_RealmName][i].dlevel == 0 and GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op] then GF_MessageList[GF_RealmName][i].dlevel = GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op][1] end
			if (GF_MessageList[GF_RealmName][i].t + GF_SavedVariables.grouplistingduration*60) > time() and not GF_BlackList[GF_RealmName][GF_MessageList[GF_RealmName][i].op] and (not GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op] or (GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op][1] ~= nil and GF_Classes[GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op][2]] ~= nil and GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op][3] ~= nil)) then
				if GF_EntryMatchesGroupFilterCriteria(GF_MessageList[GF_RealmName][i]) then
					table.insert(GF_FilteredResultsList, GF_MessageList[GF_RealmName][i])
				end
			else
				table.remove(GF_MessageList[GF_RealmName], i)
				i = i - 1
			end
		end
	end
	if floor(GF_ResultsListOffset/GF_ResultsListOffsetSize) > floor(getn(GF_FilteredResultsList)/GF_ResultsListOffsetSize) then GF_ResultsListOffset = GF_ResultsListOffset - GF_ResultsListOffsetSize end
	GF_UpdateResults()
	if searchButtonHasValues or GF_PerCharVariables.searchbuttonstext[GF_BUTTONS_LIST["SearchList"][getn(GF_BUTTONS_LIST["SearchList"])][4]] then GF_SearchListDropdown:LockHighlight() GF_SearchListClearButton:Show() else GF_SearchListDropdown:UnlockHighlight() GF_SearchListClearButton:Hide() end
end
function GF_UpdateResults()
	local groupListLength = getn(GF_FilteredResultsList)
	GF_MinimapIconTextLabel:SetText(groupListLength)
	GF_MinimapIconTextLabel:Show()
	while GF_ResultsListOffset > (groupListLength + .1) do GF_ResultsListOffset = GF_ResultsListOffset - 1 end
	GF_ResultsLabel:SetText(GF_FOUND..groupListLength.." / "..getn(GF_MessageList[GF_RealmName]))
	GF_PageLabel:SetText(GF_PAGE.." "..math.min(ceil(math.max(GF_ResultsListOffset,1) / (GF_ResultsListOffsetSize - (GF_ResultsListOffsetSize * math.min(GF_ResultsListOffsetSize/groupListLength,1)))),math.max(ceil(groupListLength / GF_ResultsListOffsetSize),1)).." / "..math.max(ceil(groupListLength / GF_ResultsListOffsetSize),1))
	GF_PageLabel:Show()
	local timeMin, timeSec
	for i=1,GF_ResultsBaseListOffsetSize do
		if i <= GF_ResultsListOffsetSize and i+GF_ResultsListOffset <= groupListLength then
			-- If Hardcore the text is red. If Normal the text is blue.
			if GF_FilteredResultsList[i+GF_ResultsListOffset].hc == 6 then getglobal("GF_NewItem"..i.."NameLabel"):SetTextColor(1,.4,.4,1) else getglobal("GF_NewItem"..i.."NameLabel"):SetTextColor(0.75,0.75,1,1) end
			-- If Friend/Guildie/In Group gives a yellow highlight.
			if GF_ExcludeNames[GF_FilteredResultsList[i+GF_ResultsListOffset].op] then getglobal("GF_NewItem"..i.."TextureGold"):Show() else getglobal("GF_NewItem"..i.."TextureGold"):Hide() end

			timeMin = floor(((time() - GF_FilteredResultsList[i+GF_ResultsListOffset].t))/60)
			timeSec = (time() - GF_FilteredResultsList[i+GF_ResultsListOffset].t) - timeMin*60
			if timeMin < 10 then timeMin = "0"..timeMin end
			if timeSec < 10 then timeSec = "0"..timeSec end
			getglobal("GF_NewItem"..i.."MoreLeftLabel"):SetText(timeMin..":"..timeSec)

			if GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op] then
				local bottomtext
				if GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][3] ~= "" then bottomtext = ", " else bottomtext = "" end
				getglobal("GF_NewItem"..i.."NameLabel"):SetText(GF_GetDifficultyColor(GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel)..GF_GetLevelString(GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel,GF_FilteredResultsList[i+GF_ResultsListOffset].flags).."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][2]] or "ffffff")..GF_FilteredResultsList[i+GF_ResultsListOffset].op.."|r: "..(GF_SavedVariables.showtranslate and GF_FilteredResultsList[i+GF_ResultsListOffset].f or GF_FilteredResultsList[i+GF_ResultsListOffset].message))
				if GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][1] == 0 then
					getglobal("GF_NewItem"..i.."MoreLabel"):SetText("Level <Unknown> "..GF_Classes[GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][2]]..bottomtext..GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][3])
				else
					getglobal("GF_NewItem"..i.."MoreLabel"):SetText("Level "..GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][1].." "..GF_Classes[GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][2]]..bottomtext..GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][3])
				end
			else
				getglobal("GF_NewItem"..i.."NameLabel"):SetText(GF_GetDifficultyColor(GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel)..GF_GetLevelString(GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel,GF_FilteredResultsList[i+GF_ResultsListOffset].flags)..GF_FilteredResultsList[i+GF_ResultsListOffset].op..": "..(GF_SavedVariables.showtranslate and GF_FilteredResultsList[i+GF_ResultsListOffset].f or GF_FilteredResultsList[i+GF_ResultsListOffset].message))
				getglobal("GF_NewItem"..i.."MoreLabel"):SetText("")
			end
			if i <= GF_ResultsListOffsetSize then
				getglobal("GF_NewItem"..i):Show()
				if (GF_SavedVariables.mainframestatus == 0 or GF_MainFrameShowBoth and GF_SavedVariables.mainframelogisopen) and GF_FilteredResultsList[i+GF_ResultsListOffset].op ~= UnitName("player") then
					if not GF_SavedVariables.usewhoongroups and not GF_UrgentWhoRequest[GF_FilteredResultsList[i+GF_ResultsListOffset].op] and not GF_SavedVariables.friendsToRemove[GF_FilteredResultsList[i+GF_ResultsListOffset].op] and
					(not GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op] or (GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][1] < 60 and GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][4] + 43200 < time())) then
						getglobal("GF_NewItem"..i.."GroupWhoButton"):Show()
					else
						getglobal("GF_NewItem"..i.."GroupWhoButton"):Hide()
					end
					if GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel and UnitLevel("player") >= GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel - 4 and UnitLevel("player") <= GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel + 4 then
						if GF_NumPartyMembers == 1 and GF_FilteredResultsList[i+GF_ResultsListOffset].lfmFlags == 1 and (not GF_RequestInviteTime[GF_FilteredResultsList[i+GF_ResultsListOffset].op] or GF_RequestInviteTime[GF_FilteredResultsList[i+GF_ResultsListOffset].op] < time()) then getglobal("GF_NewItem"..i.."LFMWhisperRequestInviteButton"):Show() else getglobal("GF_NewItem"..i.."LFMWhisperRequestInviteButton"):Hide() end
						if (GF_NumPartyMembers == 1 or UnitIsPartyLeader("player")) and GF_FilteredResultsList[i+GF_ResultsListOffset].lfmFlags == 2 and (not GF_LFGInviteTime[GF_FilteredResultsList[i+GF_ResultsListOffset].op] or GF_LFGInviteTime[GF_FilteredResultsList[i+GF_ResultsListOffset].op][1] < time()) then getglobal("GF_NewItem"..i.."LFGInviteButton"):Show() else getglobal("GF_NewItem"..i.."LFGInviteButton"):Hide() end
					else
						getglobal("GF_NewItem"..i.."LFMWhisperRequestInviteButton"):Hide()
						getglobal("GF_NewItem"..i.."LFGInviteButton"):Hide()
					end
					if GF_PlayerNotes[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op] then
						getglobal("GF_NewItem"..i.."PlayerNoteButton"):Show()
					else
						getglobal("GF_NewItem"..i.."PlayerNoteButton"):Hide()
					end
				else
					getglobal("GF_NewItem"..i.."GroupWhoButton"):Hide()
					getglobal("GF_NewItem"..i.."LFGInviteButton"):Hide()
					getglobal("GF_NewItem"..i.."LFMWhisperRequestInviteButton"):Hide()
					getglobal("GF_NewItem"..i.."PlayerNoteButton"):Hide()
				end
			else
				getglobal("GF_NewItem"..i):Hide()
				getglobal("GF_NewItem"..i.."GroupWhoButton"):Hide()
				getglobal("GF_NewItem"..i.."LFGInviteButton"):Hide()
				getglobal("GF_NewItem"..i.."LFMWhisperRequestInviteButton"):Hide()
				getglobal("GF_NewItem"..i.."PlayerNoteButton"):Hide()
			end
		else
			getglobal("GF_NewItem"..i):Hide()
		end
	end
end
function GF_EntryMatchesGroupFilterCriteria(entry)
	if not searchButtonHasValues then
		if (not GF_PerCharVariables.autofilter or (entry.dlevel and entry.dlevel >= UnitLevel("player")-GF_PerCharVariables.autofilterlevelvar and entry.dlevel <= UnitLevel("player")+GF_PerCharVariables.autofilterlevelvar)) -- No search text, check level
		and GF_SpecialFilters[entry.lfmFlags] and GF_SpecialFilters[entry.z] and GF_SpecialFilters[entry.hc] and GF_GroupFilters[entry.type] and GF_GroupFilters[entry.roles] then -- Must match lfg/lfg(1/2), LFT(3/4), HC(5/6), D/R/Q/N, and roles(2/3/4/5/6/7/8)
			return true
		end
	else
		if GF_SearchMessageForTextString(strlower(GF_SavedVariables.showtranslate and entry.f or entry.message).." ",strlower(GF_PerCharVariables.searchtext)..",",entry) -- Must match text
		and GF_SpecialFilters[entry.lfmFlags] and GF_SpecialFilters[entry.z] and GF_SpecialFilters[entry.hc] and GF_GroupFilters[entry.type] and GF_GroupFilters[entry.roles] then -- Must match lfg/lfg(1/2), LFT(3/4), HC(5/6), D/R/Q/N, and roles(2/3/4/5/6/7/8)
			return true
		end
	end
end
function GF_GetDifficultyColor(level)
	if level > 63 then return "|cff"..GF_DifficultyColors["RED"] end
	local color = GetDifficultyColor(level)
	if color.r and color.g and color.b then return string.format("|cff%02x%02x%02x",color.r*255,color.g*255,color.b*255) else return "|cff"..GF_DifficultyColors["GREY"] end
end
function GF_GetLevelString(level,flags)
	if level == 0 then if flags[1] == "SM" then return "[35]|r |cffffffff["..flags[1].."]|r " elseif flags[1] == "" then return "[NA]|r " else return "[NA]|r |cffffffff["..flags[1].."]|r " end
	elseif flags[1] ~= "" then if level > 60 then return "[60]|r |cffffffff["..flags[1].."]|r " else return "["..level.."]|r |cffffffff["..flags[1].."]|r " end
	else return "["..level.."]|r " end
end
function GF_ToggleGroupsDropDownMenu(frame,id)
	if not GF_HandleItemRefLinks("player:"..GF_FilteredResultsList[GF_ResultsListOffset+id].op,GF_FilteredResultsList[GF_ResultsListOffset+id].message,arg1) then
		if arg1 == "RightButton" then
			HideDropDownMenu(1)
			if GF_FilteredResultsList[GF_ResultsListOffset+id].op ~= UnitName("player") then
				GameTooltip:Hide()
				GF_DropDownMenu = CreateFrame("Frame", "GF_DropDownMenu", frame, "UIDropDownMenuTemplate")
				GF_DropDownMenu.name = GF_FilteredResultsList[GF_ResultsListOffset+id].op
				GF_DropDownMenu.message = "("..GF_FilteredResultsList[GF_ResultsListOffset+id].dlevel..") "..GF_FilteredResultsList[GF_ResultsListOffset+id].message
				UIDropDownMenu_Initialize(GF_DropDownMenu, GF_CreateDropDownMenu, "MENU")
				ToggleDropDownMenu(1, nil, GF_DropDownMenu, "cursor")
			end
		else
			CloseDropDownMenus(1)
			GF_ListItemAuxLeft_ShowTooltip(getglobal("GF_NewItem"..id),id,true)
		end
	end
end
function GF_ToggleWhisperDropDownMenu(frame,id)
	if not GF_HandleItemRefLinks("player:"..frame:GetText(),"",arg1) then
		HideDropDownMenu(1)
		GameTooltip:Hide()
		GF_DropDownMenu = CreateFrame("Frame", "GF_DropDownMenu", frame, "UIDropDownMenuTemplate")
		GF_DropDownMenu.name = frame:GetText()
		GF_DropDownMenu.id = id+GF_WhisperLogOffset
		if GF_SavedVariables.showwhisperlogs == 2 then GF_DropDownMenu.block = true end
		UIDropDownMenu_Initialize(GF_DropDownMenu, GF_CreateDropDownMenu, "MENU")
		ToggleDropDownMenu(1, nil, GF_DropDownMenu, "cursor")
	end
end
function GF_TogglePlayerDropDownMenu(link,text,button) --player:Name, playerlink, LeftButton/RightButton
	if GF_HandleItemRefLinks(link,text,button) then return end
	if button == "RightButton" and strsub(link,1,6) == "player" then
		HideDropDownMenu(1)
		if strsub(link,8) ~= UnitName("player") then
			GameTooltip:Hide()
			GF_DropDownMenu = CreateFrame("Frame", "GF_DropDownMenu", frame, "UIDropDownMenuTemplate")
			GF_DropDownMenu.name = strsub(link,8)
			GF_DropDownMenu.message = GF_PlayerMessages[GF_DropDownMenu.name] and GF_PlayerMessages[GF_DropDownMenu.name][1][2] or GF_DEFAULT_PLAYER_NOTE
			UIDropDownMenu_Initialize(GF_DropDownMenu, GF_CreateDropDownMenu, "MENU")
			ToggleDropDownMenu(1, nil, GF_DropDownMenu, "cursor")
		end
	else
		SetItemRef(link,text,button)
	end
end
function GF_ToggleGroupHistoryPlayerDropDownMenu(frame,text,button)
	local _,_,link = string.find(text,"|%x+|H(player:%a+)|h%[.-%]|h|r")
	if not link or GF_HandleItemRefLinks(link,text,button) then return end
	if button == "RightButton" then
		HideDropDownMenu(1)
		if strsub(link,8) ~= UnitName("player") then
			GameTooltip:Hide()
			GF_DropDownMenu = CreateFrame("Frame", "GF_DropDownMenu", frame, "UIDropDownMenuTemplate")
			GF_DropDownMenu.name = strsub(link,8)
			GF_DropDownMenu.message = GF_DEFAULT_PLAYER_NOTE
			UIDropDownMenu_Initialize(GF_DropDownMenu, GF_CreateDropDownMenu, "MENU")
			ToggleDropDownMenu(1, nil, GF_DropDownMenu, "cursor")
		end
	else
		SetItemRef(link,text,button)
		CloseDropDownMenus(1)
	end
end
function GF_ToggleGroupHistoryItemClick(text,button)
	SetItemRef(gsub(text,"|%x+|H(item:.-)|h%[.-%]|h|r","%1"),text,button)
end
function GF_ToggleGroupHistoryLogDropDownMenu(frame,name,id,button)
	HideDropDownMenu(1)
	GameTooltip:Hide()
	GF_DropDownMenu = CreateFrame("Frame", "GF_DropDownMenu", frame, "UIDropDownMenuTemplate")
	GF_DropDownMenu.name = name
	GF_DropDownMenu.id = id
	GF_DropDownMenu.block = true
	GF_DropDownMenu.gh = true
	UIDropDownMenu_Initialize(GF_DropDownMenu, GF_CreateDropDownMenu, "MENU")
	ToggleDropDownMenu(1, nil, GF_DropDownMenu, "cursor")
end

function GF_CreateDropDownMenu()
-- isTitle,text,notCheckable,hasArrow,disabled,func,value,owner,icon,checked,tooltipTitle,tooltipText, --tCoordLeft,tCoordRight,tCoordTop,tCoordBottom,justifyH,r,g,b,notClickable,textR,textG,textB,hasOpacity,opacity,opacityFunc,cancelFunc,swatchFunc,keepShownOnClick,hasColorSwatch
-- whisper, invite, target, ignore, cancel
	info = {}
	info.isTitle = true
	info.text = GF_DropDownMenu.name
	info.notCheckable = true
	UIDropDownMenu_AddButton(info, 1)

	if not GF_DropDownMenu.block then
		info = {}
		info.isTitle = nil
		info.notCheckable = true
		info.hasArrow = false
		info.disabled = nil
		info.text = WHISPER
		info.func = function() ChatFrame_SendTell(GF_DropDownMenu.name) end
		info.value = nil
		UIDropDownMenu_AddButton(info, 1)

		info = {}
		info.isTitle = nil
		info.notCheckable = true
		info.hasArrow = false
		info.disabled = nil
		info.text = PARTY_INVITE
		info.func = function() InviteByName(GF_DropDownMenu.name) end
		info.value = nil
		UIDropDownMenu_AddButton(info, 1)

		info = {}
		info.isTitle = nil
		info.notCheckable = true
		info.hasArrow = false
		info.disabled = nil
		info.text = GF_EDIT_NOTE
		info.func = function() GF_EditPlayerNote(GF_DropDownMenu.name) end
		info.value = nil
		UIDropDownMenu_AddButton(info, 1)

		info = {}
		info.isTitle = nil
		info.notCheckable = true
		info.hasArrow = false
		info.disabled = nil
		info.text = WHO
		info.func = function()
			displayWhoMessageName["n-"..GF_DropDownMenu.name] = {GF_DropDownMenu.name,time()}
			SendWho("n-"..GF_DropDownMenu.name)
		end
		info.value = nil
		UIDropDownMenu_AddButton(info, 1)
	end

	if GF_DropDownMenu.id then
		info = {}
		info.isTitle = nil
		info.notCheckable = true
		info.hasArrow = false
		info.disabled = nil
		info.text = DELETE
		info.func = function()
			if GF_DropDownMenu.gh then
				table.remove(GF_GroupHistory[GF_RealmName][GF_DropDownMenu.name],GF_DropDownMenu.id)
				GF_GroupHistoryDisplayLog(GF_DropDownMenu.name)
			else
				if GF_SavedVariables.showwhisperlogs == 1 then
					GF_WhisperLogData[GF_RealmName][GF_DropDownMenu.name] = nil
					table.remove(GF_WhisperLogData[GF_RealmName],GF_DropDownMenu.id)
					GF_WhisperHistoryUpdateFrame()
				elseif GF_SavedVariables.showwhisperlogs == 2 then
					GF_GroupHistory[GF_RealmName][GF_DropDownMenu.name] = nil
					table.remove(GF_GroupHistory[GF_RealmName],GF_DropDownMenu.id)
					GF_GroupHistoryUpdateFrame()
				end
				if GF_DropDownMenu.name == GF_WhisperLogCurrentButtonName then GF_WhisperHistoryButtonPressed(1) end
			end
		end
		info.value = nil
		UIDropDownMenu_AddButton(info, 1)
	else
		info = {}
		info.isTitle = nil
		info.notCheckable = true
		info.hasArrow = false
		info.disabled = nil
		info.text = GF_BLACK_LIST
		info.func = function() if not GF_BlackList[GF_RealmName][GF_DropDownMenu.name] then table.insert(GF_BlackList[GF_RealmName], 1, { GF_DropDownMenu.name, GF_DropDownMenu.message }) GF_BlackList[GF_RealmName][GF_DropDownMenu.name] = true end DEFAULT_CHAT_FRAME:AddMessage(GF_DropDownMenu.name..GF_NOW_BEING_IGNORED,1,1,0.5) GF_UpdateBlackListItems() GF_ApplyFiltersToGroupList(true) end
		info.value = nil
		UIDropDownMenu_AddButton(info, 1)
	end

	info = {}
	info.isTitle = nil
	info.notCheckable = true
	info.hasArrow = false
	info.disabled = nil
	info.text = CANCEL
	info.func = function() CloseDropDownMenus(1) end
	info.value = nil
	UIDropDownMenu_AddButton(info, 1)
end
function GF_OnHyperlinkShowTooltip(link)
	if strsub(link,1,6) == "player" then
		link = strsub(link,8)
		if GF_PlayerNotes[GF_RealmName][link] or GF_GroupHistory[GF_RealmName]["PLAYERS"][link] then
			GameTooltip:ClearLines()
			GameTooltip:SetOwner(this, "ANCHOR_CURSOR")
			GameTooltip:AddLine(link,1,1,1,1)
			if GF_PlayerNotes[GF_RealmName][link] then GameTooltip:AddLine(GF_PLAYER_NOTE..GF_PlayerNotes[GF_RealmName][link],1,1,0,1) end
			if GF_GroupHistory[GF_RealmName]["PLAYERS"][link] then GameTooltip:AddLine(GF_GROUP_NOTE..GF_GroupHistory[GF_RealmName]["PLAYERS"][link],0,1,0,1) end
			GameTooltip:Show()
		end
	elseif strsub(link,1,4) == "item" then
		GameTooltip:SetOwner(this, "ANCHOR_CURSOR")
		GameTooltip:SetHyperlink(link)
	end
end
function GF_ListItemAuxLeft_ShowTooltip(frame,id,showall)
	if not id or not GF_FilteredResultsList[GF_ResultsListOffset+id] then return end
	GameTooltip:ClearLines()
	GameTooltip:SetOwner(this, "ANCHOR_BOTTOMLEFT")
	GameTooltip:ClearAllPoints()
	GameTooltip:SetPoint("BOTTOMLEFT", frame:GetName(), "TOPLEFT", 0, 8)

	GameTooltip:AddLine(GF_SavedVariables.showtranslate and GF_FilteredResultsList[GF_ResultsListOffset+id].f or GF_FilteredResultsList[GF_ResultsListOffset+id].message, 0.9,0.9,1.0,1) -- GF_SavedVariables.showtranslate and entry.f or entry.message
	if showall and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op] then
		if GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][1][2] and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][1][2] ~= GF_FilteredResultsList[GF_ResultsListOffset+id].message then
			GameTooltip:AddLine(GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][1][2],0.9,0.9,1.0,1)
		end
		if GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][2] and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][2] ~= GF_FilteredResultsList[GF_ResultsListOffset+id].message and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][1][2] ~= GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][2] and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][2] ~= "ZZZzzz123654" then
			GameTooltip:AddLine(GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][2],0.9,0.9,1.0,1)
		end
		if GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][3][2] and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][3][2] ~= GF_FilteredResultsList[GF_ResultsListOffset+id].message and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][1][2] ~= GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][2] and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][2] ~= GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][3][2] and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][3][2] ~= "ZZZzzz123654" then
			GameTooltip:AddLine(GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][3][2],0.9,0.9,1.0,1)
		end
	end
	if GF_PlayerNotes[GF_RealmName][GF_FilteredResultsList[GF_ResultsListOffset+id].op] then
		GameTooltip:AddLine(GF_PLAYER_NOTE..GF_PlayerNotes[GF_RealmName][GF_FilteredResultsList[GF_ResultsListOffset+id].op],1,1,0,1)
	end
	if GF_GroupHistory[GF_RealmName]["PLAYERS"][GF_FilteredResultsList[GF_ResultsListOffset+id].op] then
		GameTooltip:AddLine(GF_GROUP_NOTE..GF_GroupHistory[GF_RealmName]["PLAYERS"][GF_FilteredResultsList[GF_ResultsListOffset+id].op],0,1,0,1)
	end
	GameTooltip:Show()
end
function GF_ResultItem_Hover_On(frame,id)
	frame:SetHeight(32)
	getglobal(frame:GetName().."MoreLabel"):Show()
	getglobal(frame:GetName().."TextureBlue"):Show()
	getglobal(frame:GetName().."NameLabel"):SetPoint("TOPLEFT", frame:GetName(), "TOPLEFT", 37, 0)
	getglobal(frame:GetName().."MoreLabel"):SetPoint("LEFT", frame:GetName(), "LEFT", 37, -6)
	getglobal(frame:GetName().."TextureSelectedBg"):Show()
	getglobal(frame:GetName().."TextureSelectedIcon"):Show()
	getglobal(frame:GetName().."MoreLeftLabel"):SetPoint("RIGHT", frame:GetName(), "LEFT", 0, 0)
	GF_ListItemAuxLeft_ShowTooltip(frame, id)
end
function GF_ResultItem_Hover_Off(frame)
	frame:SetHeight(18)
	getglobal(frame:GetName().."MoreLabel"):Hide()
	getglobal(frame:GetName().."TextureBlue"):Hide()
	getglobal(frame:GetName().."NameLabel"):SetPoint("TOPLEFT", frame:GetName(), "TOPLEFT", 5, 0)
	getglobal(frame:GetName().."MoreLabel"):SetPoint("LEFT", frame:GetName(), "LEFT", 5, -6)
	getglobal(frame:GetName().."TextureSelectedBg"):Hide()
	getglobal(frame:GetName().."TextureSelectedIcon"):Hide()
	getglobal(frame:GetName().."MoreLeftLabel"):SetPoint("RIGHT", frame:GetName(), "LEFT", 5, 0)
	GameTooltip:Hide()
end
function GF_GetGroupWhoButton(frame,id)
	if GF_SavedVariables.usefriendslist then
		GF_AddNameToWhoQueue(GF_FilteredResultsList[GF_ResultsListOffset+id].op,true)
		getglobal(frame:GetName().."GroupWhoButton"):Hide()
	elseif not GF_UrgentWhoRequest[GF_FilteredResultsList[GF_ResultsListOffset+id].op] then
		displayWhoMessageName["n-"..GF_FilteredResultsList[GF_ResultsListOffset+id].op] = {GF_FilteredResultsList[GF_ResultsListOffset+id].op,time()}
		SendWho("n-"..GF_FilteredResultsList[GF_ResultsListOffset+id].op)
		getglobal(frame:GetName().."GroupWhoButton"):Hide()
	end
end
function GF_LFGInviteButton(frame,id)
	InviteByName(GF_FilteredResultsList[GF_ResultsListOffset+id].op)
	GF_LFGInviteTime[GF_FilteredResultsList[GF_ResultsListOffset+id].op] = { time() + 10,GF_INVITING_FOR..GF_FilteredResultsList[GF_ResultsListOffset+id].message }
	getglobal(frame:GetName().."LFGInviteButton"):Hide()
end
function GF_LFMWhisperRequestInviteButton(frame,id)
	if GF_PerCharVariables.sendplayerinfo then
		local specString = "["..UnitLevel("player").." "
		if GF_PerCharVariables.lfgtank then specString = specString..GF_TANK.."/" end
		if GF_PerCharVariables.lfgheal then specString = specString..GF_HEALER.."/" end
		if GF_PerCharVariables.lfgdps then specString = specString..GF_DPS.."/" end
		specString = strsub(specString,1,-2)..gsub(strsub(specString,-1,-1),"[/ ]","").." "..UnitClass("player").."] "
		SendChatMessage(specString..GF_INVITE_FOR..GF_FilteredResultsList[GF_ResultsListOffset+id].message.."\"","WHISPER",nil,GF_FilteredResultsList[GF_ResultsListOffset+id].op)
	else
		SendChatMessage(GF_INVITE_FOR..GF_FilteredResultsList[GF_ResultsListOffset+id].message.."\"","WHISPER",nil,GF_FilteredResultsList[GF_ResultsListOffset+id].op)
	end
	GF_RequestInviteTime[GF_FilteredResultsList[GF_ResultsListOffset+id].op] = time() + 120
	getglobal(frame:GetName().."LFMWhisperRequestInviteButton"):Hide()
end
function GF_EditPlayerNote(name)
	GF_EditPlayerNoteFrameTitleLabel:SetText(name)
	GF_EditPlayerNoteFrameEditBox:SetText(GF_PlayerNotes[GF_RealmName][name] or "")
	GF_EditPlayerNoteFrame:Show()
end
function GF_PlayerNoteButton_ShowTooltip(frame,id)
	if not id or not GF_FilteredResultsList[GF_ResultsListOffset+id] then return end
	if GF_PlayerNotes[GF_RealmName][GF_FilteredResultsList[GF_ResultsListOffset+id].op] then
		GameTooltip:ClearLines()
		GameTooltip:SetOwner(this, "ANCHOR_BOTTOMLEFT")
		GameTooltip:ClearAllPoints()
		GameTooltip:SetPoint("BOTTOMLEFT", frame:GetName(), "TOPLEFT", 0, 8)
		GameTooltip:AddLine(GF_PLAYER_NOTE..GF_PlayerNotes[GF_RealmName][GF_FilteredResultsList[GF_ResultsListOffset+id].op],1,1,0,1)
		GameTooltip:Show()
	end
end

function GF_WhisperHistoryButtonPressed(id,override,nolog) -- Whisper/Guild History Functions
	CloseDropDownMenus(1)
	if not override and getglobal("GF_WhisperHistoryButton"..id):GetText() == GF_WhisperLogCurrentButtonName then return end
	getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):UnlockHighlight()
	getglobal("GF_WhisperHistoryButton"..id):LockHighlight()
	if GF_WhisperLogCurrentButtonID > 1 then getglobal("GF_WhisperHistoryButtonCheckButton"..GF_WhisperLogCurrentButtonID):Hide() end
	if id > 1 and GF_SavedVariables.showwhisperlogs == 1 then getglobal("GF_WhisperHistoryButtonCheckButton"..id):Show() end

	GF_WhisperLogCurrentButtonID = id
	GF_WhisperLogLastWhisperLog = GF_SavedVariables.showwhisperlogs
	GF_WhisperLogCurrentButtonName = getglobal("GF_WhisperHistoryButton"..id):GetText()
	if nolog then return end
	if id == 0 then
		GF_DisplayLog()
	elseif id == 1 then
		if GF_SavedVariables.showwhisperlogs == 1 then GF_WhisperHistoryDisplayLog("Guild") elseif GF_SavedVariables.showwhisperlogs == 2 then GF_GroupHistoryDisplayLog("Groups") end
	else
		if GF_SavedVariables.showwhisperlogs == 1 then GF_WhisperHistoryDisplayLog(getglobal("GF_WhisperHistoryButton"..id):GetText()) elseif GF_SavedVariables.showwhisperlogs == 2 then GF_GroupHistoryDisplayLog(getglobal("GF_WhisperHistoryButton"..id):GetText()) end
	end
end
function GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,event,delayed)
	if GF_SavedVariables.friendsToRemove[arg2] and not delayed then table.insert(GF_LogHistory[GF_RealmName]["Delay"], {"Whisper",time()+20,arg1,arg2,event}) return end
	arg1 = "|cff"..GF_ClassColors[({UnitClass("player")})[2]].."|Hplayer:"..UnitName("player").."|h".."["..date("%m/%d").."]|h|r ["..date("%H:%M").."] "..EventIDAlias[event]..GF_MakeBasicChatString(strsub(gsub(gsub(gsub(gsub(" "..arg1.." "," (www%d-)%.([_A-Za-z0-9-]+)%.(%S+)%s?", " |cffccccff|Hurl:%1.%2.%3|h[%1.%2.%3]|h|r")," (%a+)://(%S+)", " |cffccccff|Hurl:%1://%2|h[%1://%2]|h|r")," (%a+)%.(%a+)/(%S+)", " |cffccccff|Hurl:%1.%2/%3|h[%1.%2/%3]|h|r")," ([_A-Za-z0-9-]+)%.([_A-Za-z0-9-]+)%.(%S+)", " |cffccccff|Hurl:%1.%2.%3|h[%1.%2.%3]|h|r"),2),arg2,event)
	if not GF_WhisperLogData[GF_RealmName][arg2] then GF_WhisperLogData[GF_RealmName][arg2] = {} if GF_Friends[arg2] then GF_WhisperLogData[GF_RealmName][arg2].priority = 2 end end
	if event == "GUILD" or event == "OFFICER" then
		table.insert(GF_WhisperLogData[GF_RealmName]["Guild"],1,{arg1,event})
		if getn(GF_WhisperLogData[GF_RealmName]["Guild"]) > 128 then table.remove(GF_WhisperLogData[GF_RealmName]["Guild"],129) end
	else
		table.insert(GF_WhisperLogData[GF_RealmName][arg2],1,{arg1,"WHISPER"})
		table.insert(GF_WhisperLogData[GF_RealmName]["Guild"],1,{arg1,"WHISPER"})
		if getn(GF_WhisperLogData[GF_RealmName][arg2]) > 128 then table.remove(GF_WhisperLogData[GF_RealmName][arg2],129) end
		if getn(GF_WhisperLogData[GF_RealmName]["Guild"]) > 128 then table.remove(GF_WhisperLogData[GF_RealmName]["Guild"],129) end
		if GF_SavedVariables.showwhisperlogs == 1 then GF_WhisperHistoryUpdateFrame(arg2) else GF_WhisperHistoryUpdateFrame(arg2,true) end
	end
	table.insert(GF_LogHistory[GF_RealmName],1,{arg1,4,event})
	if getn(GF_LogHistory[GF_RealmName]) > 500 then table.remove(GF_LogHistory[GF_RealmName],501) end
	if GF_WhisperLogCurrentButtonID == 0 or (GF_WhisperLogLastWhisperLog == 1 and (GF_WhisperLogCurrentButtonID == 1 or arg2 == GF_WhisperLogCurrentButtonName)) then
		local info = ChatTypeInfo[event]
		if GF_ConvertMessagesToLinks then
			local _,_,startString,endString = strfind(arg1, "(.-%].-|Hplayer.-|h|r:? )(.*)")
			if startString then
				endString = gsub(gsub(gsub(gsub(endString, "|[cC]%x+|%w+:%w+:[%w:]+|[h]", ""), "|[cC]%x+%p+%w+:(.-)|h.-|h|r", "%1"), "|[cC]%x+", ""), "|[hHrR]?", "")
				GF_Log:AddMessage(startString.."|cffccccff|Hurl:"..endString.."|h"..endString.."|h|r",info.r,info.g,info.b)
			else
				GF_Log:AddMessage(arg1,info.r,info.g,info.b)
			end
		else
			GF_Log:AddMessage(arg1,info.r,info.g,info.b)
		end
	end
end
function GF_GroupFinishedAddToGroupHistoryList()
-- GF_PerCharVariables.groupfinishtimer structure... [1] = timer... [2] is a table = { [1] = zonename, [name] = fullactivity )
	for i=1, getn(GF_PerCharVariables.groupfinishtimer[2]) do
		if GF_PerCharVariables.CurrentGroup[GF_PerCharVariables.groupfinishtimer[2][i]] and GF_PerCharVariables.CurrentGroup[GF_PerCharVariables.groupfinishtimer[2][i]][2] + 600 < time() then
			local numNames = 0
			for name,_ in pairs(GF_PerCharVariables.CurrentGroup[GF_PerCharVariables.groupfinishtimer[2][i]][3]) do if GF_PerCharVariables.CurrentGroup[GF_PerCharVariables.groupfinishtimer[2][i]][3][name][5] >= 300 or not GF_PerCharVariables.usedpsmeter then numNames = numNames + 1 if not GF_GroupHistory[GF_RealmName]["PLAYERS"][name] then GF_GroupHistory[GF_RealmName]["PLAYERS"][name] = 1 else GF_GroupHistory[GF_RealmName]["PLAYERS"][name] = GF_GroupHistory[GF_RealmName]["PLAYERS"][name] + 1 end end end
			if numNames > 1 then
				table.insert(GF_GroupHistory[GF_RealmName]["Groups"],1,{GF_PerCharVariables.groupfinishtimer[2][i],time(),GF_PerCharVariables.CurrentGroup[GF_PerCharVariables.groupfinishtimer[2][i]][3],GF_PerCharVariables.CurrentGroup[GF_PerCharVariables.groupfinishtimer[2][i]][4]})
				if getn(GF_GroupHistory[GF_RealmName]["Groups"]) > 20 then table.remove(GF_LogHistory[GF_RealmName],21) end
				if not GF_GroupHistory[GF_RealmName][strsub(GF_PerCharVariables.groupfinishtimer[2][i],1,12)] then GF_GroupHistory[GF_RealmName][strsub(GF_PerCharVariables.groupfinishtimer[2][i],1,12)] = {} end
				table.insert(GF_GroupHistory[GF_RealmName][strsub(GF_PerCharVariables.groupfinishtimer[2][i],1,12)],1,{GF_PerCharVariables.groupfinishtimer[2][i],time(),GF_PerCharVariables.CurrentGroup[GF_PerCharVariables.groupfinishtimer[2][i]][3],GF_PerCharVariables.CurrentGroup[GF_PerCharVariables.groupfinishtimer[2][i]][4]})
				if getn(GF_GroupHistory[GF_RealmName][strsub(GF_PerCharVariables.groupfinishtimer[2][i],1,12)]) > 20 then table.remove(GF_LogHistory[GF_RealmName],21) end
				if GF_SavedVariables.showwhisperlogs == 2 then GF_GroupHistoryUpdateFrame(strsub(GF_PerCharVariables.groupfinishtimer[2][i],1,12)) else GF_GroupHistoryUpdateFrame(strsub(GF_PerCharVariables.groupfinishtimer[2][i],1,12),true) end
				DEFAULT_CHAT_FRAME:AddMessage(GF_SAVED..GF_PerCharVariables.groupfinishtimer[2][i],1,1,0.5)
			end
		end
		for j=1, getn(GF_PerCharVariables.CurrentGroup) do if GF_PerCharVariables.CurrentGroup[j] == GF_PerCharVariables.groupfinishtimer[2][i] then table.remove(GF_PerCharVariables.CurrentGroup,j) GF_PerCharVariables.CurrentGroup[GF_PerCharVariables.groupfinishtimer[2][i]] = nil break end end
	end
	GF_PerCharVariables.groupfinishtimer = nil
	if GF_WhisperLogLastWhisperLog == 2 and GF_WhisperLogCurrentButtonID == 1 then GF_UpdateTicker = GetTime() + .1 GF_OnUpdateFunctions["GroupLog"] = GF_UpdateGroupLog end
end
function GF_UpdateGroupLog()
	GF_OnUpdateFunctions["GroupLog"] = nil
	GF_GroupHistoryDisplayLog("Groups")
end
function GF_WhisperHistoryUpdateFrame(name,insertonly)
	local numPriority,numTopPriority,counter,nameWasPriority = 0,0,2
	while true do
		if not name or not GF_WhisperLogData[GF_RealmName][counter] or counter == 96 then break end
		if GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][counter]].priority == 2 then numTopPriority = numTopPriority+1
		elseif GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][counter]].priority then numPriority = numPriority+1 end
		if name == GF_WhisperLogData[GF_RealmName][counter] then
			nameWasPriority = GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][counter]].priority
			table.remove(GF_WhisperLogData[GF_RealmName],counter)
		else
			counter = counter+1
		end
	end
	if name then
		if nameWasPriority == 2 then
			table.insert(GF_WhisperLogData[GF_RealmName],2,name)
			GF_WhisperLogOffset = 0
		elseif nameWasPriority then
			table.insert(GF_WhisperLogData[GF_RealmName],2+numTopPriority,name)
			GF_WhisperLogOffset = math.floor(numTopPriority/18) * 18
		else
			table.insert(GF_WhisperLogData[GF_RealmName],2+numPriority+numTopPriority,name)
			GF_WhisperLogOffset = math.floor((numPriority+numTopPriority)/18) * 18
		end
	end
	if getn(GF_WhisperLogData[GF_RealmName]) > 95 then GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][96]] = nil table.remove(GF_WhisperLogData[GF_RealmName],96) end
	if insertonly then return end
	for i=2, 19 do
		if GF_WhisperLogData[GF_RealmName][i+GF_WhisperLogOffset] then
			if GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i+GF_WhisperLogOffset]].priority == 2 then
				getglobal("GF_WhisperHistoryButton"..i.."TextureGreen"):Hide()
				getglobal("GF_WhisperHistoryButton"..i.."TextureGold"):Show()
			elseif GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i+GF_WhisperLogOffset]].priority then
				getglobal("GF_WhisperHistoryButton"..i.."TextureGreen"):Show()
				getglobal("GF_WhisperHistoryButton"..i.."TextureGold"):Hide()
			else
				getglobal("GF_WhisperHistoryButton"..i.."TextureGreen"):Hide()
				getglobal("GF_WhisperHistoryButton"..i.."TextureGold"):Hide()
			end
			getglobal("GF_WhisperHistoryButtonCheckButton"..i):SetChecked(GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i+GF_WhisperLogOffset]].priority)
			getglobal("GF_WhisperHistoryButton"..i):SetText(GF_WhisperLogData[GF_RealmName][i+GF_WhisperLogOffset])
			getglobal("GF_WhisperHistoryButton"..i):Show()
		else
			getglobal("GF_WhisperHistoryButton"..i):SetText("")
			getglobal("GF_WhisperHistoryButton"..i):Hide()
		end
	end
	for i=2, 19 do
		if GF_WhisperLogData[GF_RealmName][i+GF_WhisperLogOffset] then
			if GF_WhisperLogData[GF_RealmName][i+GF_WhisperLogOffset] == GF_WhisperLogCurrentButtonName then GF_WhisperHistoryButtonPressed(i,true,true) end
		end
	end
	GF_WhisperHistoryButton1:SetText(GF_LOG_GUILDWHISPERS)
	if GF_WhisperLogCurrentButtonID ~= 0 then
		if getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):GetText() == GF_WhisperLogCurrentButtonName then
			getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):LockHighlight()
			if GF_WhisperLogCurrentButtonID > 1 then getglobal("GF_WhisperHistoryButtonCheckButton"..GF_WhisperLogCurrentButtonID):Show() end
		else
			getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):UnlockHighlight()
			if GF_WhisperLogCurrentButtonID > 1 then getglobal("GF_WhisperHistoryButtonCheckButton"..GF_WhisperLogCurrentButtonID):Hide() end
		end
	end
end
function GF_GroupHistoryUpdateFrame(name,insertonly)
	local numPriority,counter,nameWasPriority = 0,2
	while true do
		if not name or not GF_GroupHistory[GF_RealmName][counter] then break end
		if GF_GroupHistory[GF_RealmName][GF_GroupHistory[GF_RealmName][counter]].priority then numPriority = numPriority+1 end
		if name == GF_GroupHistory[GF_RealmName][counter] then if GF_GroupHistory[GF_RealmName][GF_GroupHistory[GF_RealmName][counter]].priority then nameWasPriority = true end table.remove(GF_GroupHistory[GF_RealmName],counter) else counter = counter+1 end
	end
	if name then
		if nameWasPriority then
			table.insert(GF_GroupHistory[GF_RealmName],2,name)
			GF_WhisperLogOffset = 0
		else
			table.insert(GF_GroupHistory[GF_RealmName],2+numPriority,name)
			GF_WhisperLogOffset = math.floor(numPriority/18) * 18
		end
	end
	if insertonly then return end
	for i=2, 19 do
		if GF_GroupHistory[GF_RealmName][i+GF_WhisperLogOffset] then
			if GF_GroupHistory[GF_RealmName][GF_GroupHistory[GF_RealmName][i+GF_WhisperLogOffset]].priority then getglobal("GF_WhisperHistoryButtonCheckButton"..i):SetChecked(true) getglobal("GF_WhisperHistoryButton"..i.."TextureGold"):Show() getglobal("GF_WhisperHistoryButton"..i.."TextureGreen"):Show() else getglobal("GF_WhisperHistoryButtonCheckButton"..i):SetChecked(false) getglobal("GF_WhisperHistoryButton"..i.."TextureGold"):Hide() getglobal("GF_WhisperHistoryButton"..i.."TextureGreen"):Hide() end
			getglobal("GF_WhisperHistoryButton"..i):SetText(GF_GroupHistory[GF_RealmName][i+GF_WhisperLogOffset])
			getglobal("GF_WhisperHistoryButton"..i):Show()
		else
			getglobal("GF_WhisperHistoryButton"..i):SetText("")
			getglobal("GF_WhisperHistoryButton"..i):Hide()
		end
	end
	for i=2, 19 do
		if GF_GroupHistory[GF_RealmName][i+GF_WhisperLogOffset] then
			if GF_GroupHistory[GF_RealmName][i+GF_WhisperLogOffset] == GF_WhisperLogCurrentButtonName then GF_WhisperHistoryButtonPressed(i,true,true) end
		end
	end
	GF_WhisperHistoryButton1:SetText(GF_LOG_ALLGROUPS)
	if GF_WhisperLogCurrentButtonID ~= 0 then
		if getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):GetText() == GF_WhisperLogCurrentButtonName then
			getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):LockHighlight()
			if GF_WhisperLogCurrentButtonID > 1 then getglobal("GF_WhisperHistoryButtonCheckButton"..GF_WhisperLogCurrentButtonID):Show() end
		else
			getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):UnlockHighlight()
			if GF_WhisperLogCurrentButtonID > 1 then getglobal("GF_WhisperHistoryButtonCheckButton"..GF_WhisperLogCurrentButtonID):Hide() end
		end
	end
end
function GF_WhisperHistoryDisplayLog(name)
	GF_ConvertLogMessagesToURL:Show()
	GF_SaveCurrentGroupButton:Hide()
	GF_ResetCurrentGroupButton:Hide()
	GF_Log:SetMaxLines(128)
	if GF_ConvertMessagesToLinks then
		for i=getn(GF_WhisperLogData[GF_RealmName][name]), 1, -1 do
			local _,_,startString,endString = strfind(GF_WhisperLogData[GF_RealmName][name][i][1], "(.-%].-|Hplayer.-|h|r:? )(.*)")
			local info = ChatTypeInfo[GF_WhisperLogData[GF_RealmName][name][i][2]]
			if startString then
				endString = gsub(gsub(gsub(gsub(endString, "|[cC]%x+|%w+:%w+:[%w:]+|[h]", ""), "|[cC]%x+%p+%w+:(.-)|h.-|h|r", "%1"), "|[cC]%x+", ""), "|[hHrR]?", "")
				GF_Log:AddMessage(startString.."|cffccccff|Hurl:"..endString.."|h"..endString.."|h|r",info.r,info.g,info.b)
			else
				GF_Log:AddMessage(GF_WhisperLogData[GF_RealmName][name][i][1],info.r,info.g,info.b)
			end
		end
	else
		for i=getn(GF_WhisperLogData[GF_RealmName][name]), 1, -1 do
			local info = ChatTypeInfo[GF_WhisperLogData[GF_RealmName][name][i][2]]
			GF_Log:AddMessage(GF_WhisperLogData[GF_RealmName][name][i][1],info.r,info.g,info.b)
		end
	end
end
function GF_GroupHistoryDisplayLog(name) -- TODO: Add a feature to search by playername.
	GF_SaveCurrentGroupButton:Show()
	GF_ResetCurrentGroupButton:Show()
	GF_ConvertLogMessagesToURL:Hide()
	GF_Log:SetMaxLines(128)
	for i=getn(GF_GroupHistory[GF_RealmName][name]), 1, -1 do
		local stringA = "|cffccccff|Hgfgh:"..name..":"..i.."|h"..date("[%m/%d] [%H:%M]",GF_GroupHistory[GF_RealmName][name][i][2]).." ["..GF_GroupHistory[GF_RealmName][name][i][1].."]|h|r - "
		local TableA = {}
		for pname,data in pairs(GF_GroupHistory[GF_RealmName][name][i][3]) do
			if (data[3] + data[4]) > 0 or not GF_PerCharVariables.usedpsmeter then table.insert(TableA, {pname,data}) end
		end
		table.sort(TableA, function(a,b) return a[2][3]+a[2][4]>b[2][3]+b[2][4] end)
		for i=1, getn(TableA) do
			stringA = stringA.."|cff"..(GF_ClassColors[TableA[i][2][2]] or "9d9d9d").."|Hplayer:"..TableA[i][1].."|h["..TableA[i][1]..", "..TableA[i][2][1].."]|h|r "
		end
		for item,_ in pairs(GF_GroupHistory[GF_RealmName][name][i][4]) do
			local iName,_,iQuality = GetItemInfo(item)
			if iName and iQuality > 2 then
				if iName then
					local _,_,_,color = GetItemQualityColor(iQuality)
					stringA = stringA..color.. "|H"..item.."|h["..iName.."]|h|r "
				else
					stringA = stringA.."|cffffffff|H"..item.."|h[unknown]|h|r "
				end
			end
		end
		GF_Log:AddMessage(stringA,1,1,1)
	end
	if GF_WhisperLogCurrentButtonID == 1 then
		for i=1, getn(GF_PerCharVariables.CurrentGroup) do
			if GF_PerCharVariables.CurrentGroup[i] ~= "" and GF_PerCharVariables.CurrentGroup[i] ~= "TempData" then GF_GroupHistoryDisplayLogCurrent(GF_PerCharVariables.CurrentGroup[i]) end
		end
	end
end
function GF_GroupHistoryDisplayLogCurrent(name,istempdata)
	if not istempdata and name == GF_CurrentZone and (not GF_PerCharVariables.groupfinishtimer or not GF_PerCharVariables.groupfinishtimer[2][name]) then name = "TempData" end
	local stringA = "|cffccccff|Hgfcg:"..GF_PerCharVariables.CurrentGroup[name][1].."|h"..date("[%m/%d] [%H:%M]",GF_PerCharVariables.CurrentGroup[name][2]).." {"..GF_PerCharVariables.CurrentGroup[name][1].."}".."|h|r - "
	local TableA = {}
	for names,data in pairs(GF_PerCharVariables.CurrentGroup[name][3]) do
		if data[1] > 0 and ((data[3] + data[4]) > 0 or not GF_PerCharVariables.usedpsmeter) then table.insert(TableA, {names,data}) end
	end
	if getn(TableA) > 1 then
		table.sort(TableA, function(a,b) return a[2][3]+a[2][4]>b[2][3]+b[2][4] end)
		for i=1, getn(TableA) do
			stringA = stringA.."|cff"..(GF_ClassColors[TableA[i][2][2]] or "9d9d9d").."|Hplayer:"..TableA[i][1].."|h["..TableA[i][1]..", "..TableA[i][2][1].."]|h|r "
		end
		for item,_ in pairs(GF_PerCharVariables.CurrentGroup[name][4]) do
			local iName,_,iQuality = GetItemInfo(item)
			if iQuality > 2 then
				if iName then
					local _,_,_,color = GetItemQualityColor(iQuality)
					stringA = stringA..color.. "|H"..item.."|h["..iName.."]|h|r "
				else
					stringA = stringA.."|cffffffff|H"..item.."|h[unknown]|h|r "
				end
			end
		end
		GF_Log:AddMessage(stringA,1,1,1)
		GF_PerCharVariables.CurrentGroup[name][6] = true
	end
end
function GF_WhisperHistoryPriorityListCheckButtonPressed(id,name,priority)
	if GF_SavedVariables.showwhisperlogs == 1 then
		if not priority and GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][id+GF_WhisperLogOffset]].priority == 1 then
			GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][id+GF_WhisperLogOffset]].priority = 2
			getglobal("GF_WhisperHistoryButtonCheckButton"..id):SetChecked(true)
		else
			GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][id+GF_WhisperLogOffset]].priority = priority
		end
		GF_WhisperHistoryUpdateFrame(name)
	elseif GF_SavedVariables.showwhisperlogs == 2 then
		GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][id+GF_WhisperLogOffset]].priority = priority
		GF_GroupHistoryUpdateFrame(name)
	end
end
function GF_GroupHistoryDisplayEntryLog(offset)
	if not GroupHistoryLogTable then return end
	local maxsize,maxpsize = 50,25
	local playerTable = {} -- Players
	local itemTable = {} -- Players
-- Players
	for pname,data in pairs(GroupHistoryLogTable[3]) do
		table.insert(playerTable, {pname,data})
	end
	table.sort(playerTable, function(a,b) return a[2][3]+a[2][4]>b[2][3]+b[2][4] end)
	local playerSize = getn(playerTable) - offset
	if playerSize > maxpsize then playerSize = maxpsize elseif playerSize < 0 then playerSize = 0 end
	for i=1,playerSize do
		getglobal("GF_GroupHistoryLogPlayer"..i):SetText("|cff"..(GF_ClassColors[playerTable[i+offset][2][2]] or "9d9d9d").."|Hplayer:"..playerTable[i+offset][1].."|h["..playerTable[i+offset][1]..", "..playerTable[i+offset][2][1].."]|h|r")
		if playerTable[i+offset][2][5] > 0 then
			getglobal("GF_GroupHistoryLogPlayer"..i.."TextLabel"):SetText("("..playerTable[i+offset][2][3]..")|cffFF4646("..ceil(playerTable[i+offset][2][3]/playerTable[i+offset][2][5])..")|r|cff00FF00("..playerTable[i+offset][2][4]..")|r")
		else
			getglobal("GF_GroupHistoryLogPlayer"..i.."TextLabel"):SetText("("..playerTable[i+offset][2][3]..")|cff00FF00("..playerTable[i+offset][2][4]..")|r")
		end
		getglobal("GF_GroupHistoryLogPlayer"..i):SetWidth(getglobal("GF_GroupHistoryLogPlayer"..i):GetFontString():GetStringWidth())
		getglobal("GF_GroupHistoryLogPlayer"..i):Show()
	end
	for i=playerSize+1,maxpsize do getglobal("GF_GroupHistoryLogPlayer"..i):Hide() end

-- Items
	for itemid,data in pairs(GroupHistoryLogTable[4]) do
		for i=1, getn(data) do
			local iName,_,iQuality = GetItemInfo(itemid)
			if iName then table.insert(itemTable, {itemid,iName,iQuality,data[i]}) else table.insert(itemTable, {itemid,"unknown",1,data[i]}) end
		end
	end
	table.sort(itemTable, function(a,b) return a[3]>b[3] end)
	offset = offset * 2
	local itemSize = getn(itemTable) - offset
	if itemSize > maxsize then itemSize = maxsize elseif itemSize < 0 then itemSize = 0 end
	for i=1,itemSize do
		local _,_,_,color = GetItemQualityColor(itemTable[i+offset][3])
		if strlen(itemTable[i+offset][2]) > 25 then
			getglobal("GF_GroupHistoryLogItem"..i):SetText(color.. "|H"..itemTable[i+offset][1].."|h["..strsub(itemTable[i+offset][2],1,22).."..]|h|r")
		else
			getglobal("GF_GroupHistoryLogItem"..i):SetText(color.. "|H"..itemTable[i+offset][1].."|h["..itemTable[i+offset][2].."]|h|r")
		end
		getglobal("GF_GroupHistoryLogItem"..i.."TextLabel"):SetText("("..itemTable[i+offset][4]..")")
		getglobal("GF_GroupHistoryLogItem"..i):SetWidth(getglobal("GF_GroupHistoryLogItem"..i):GetFontString():GetStringWidth())
		getglobal("GF_GroupHistoryLogItem"..i):Show()
	end
	for i=itemSize+1,maxsize do getglobal("GF_GroupHistoryLogItem"..i):Hide() end
	local prows = playerSize/ceil(playerSize/maxpsize)
	local irows = ceil(itemSize/2)
	if prows >= irows then
		GF_ShowGroupLogEntryFrame:SetHeight(40 + prows*14)
	else
		GF_ShowGroupLogEntryFrame:SetHeight(40 + irows*14)
	end
	GF_ShowGroupLogEntryFrame:Show()
end
function GF_GroupHistoryLogScrollbarUpdate()
	if not GroupHistoryLogTable then return end
	local pcounter,icounter = 0,0
	for _,_ in pairs(GroupHistoryLogTable[3]) do pcounter = pcounter + 1 end
	for _,wdata in pairs(GroupHistoryLogTable[4]) do icounter = icounter + .5 for j=2, getn(wdata) do icounter = icounter + .5 end end
	if icounter > pcounter then FauxScrollFrame_Update(GF_GroupHistoryLogScrollFrame, icounter, 25, 14) else FauxScrollFrame_Update(GF_GroupHistoryLogScrollFrame, pcounter, 25, 14) end
	GF_GroupHistoryDisplayEntryLog(FauxScrollFrame_GetOffset(GF_GroupHistoryLogScrollFrame))
end

function GF_UpdateBlackListItems() -- Blacklist functions
	while GF_BlackListOffset > (getn(GF_BlackList[GF_RealmName]) + .1) do GF_BlackListOffset = GF_BlackListOffset - 20 end
	GF_BlackListFramePageLabel:SetText(GF_PAGE.." "..ceil((GF_BlackListOffset + .1) / 20).." / "..math.max(ceil(getn(GF_BlackList[GF_RealmName]) / 20),1))
	GF_BlackListFramePageLabel:Show()
	for i=1, 20 do
		if getglobal("GF_BlackListItem"..i) then
			if i+GF_BlackListOffset <= getn(GF_BlackList[GF_RealmName]) then 
				getglobal("GF_BlackListItem"..i.."NameLabel"):SetText(GF_BlackList[GF_RealmName][GF_BlackListOffset+i][1])
				getglobal("GF_BlackListItem"..i.."NoteLabel"):SetTextColor(1, 1, 1)
				getglobal("GF_BlackListItem"..i.."NoteLabel"):SetText(GF_BlackList[GF_RealmName][GF_BlackListOffset+i][2])
				getglobal("GF_BlackListItem"..i):Show()
			else
				getglobal("GF_BlackListItem"..i):Hide()
			end
		end
	end
end
function GF_ShowBlackListFrame()
	GF_SettingsFrame:Hide()
	GF_LogFrame:Hide()
	GF_BlackListFrame:Show()
	GF_UpdateBlackListItems()
end
function GF_EditBlackListItem(name)
	local tablePosition = GF_BlackListOffset + string.gsub(name, "GF_BlackListItem(%d+)", "%1")
	GF_BlackListItemEditFrameEditBox:SetText(GF_BlackList[GF_RealmName][tablePosition][2])
	GF_BlackListItemEditFrameTitleLabel:SetText(GF_EDIT_PLAYER..": "..GF_BlackList[GF_RealmName][tablePosition][1])
	GF_BlackListItemEditFrame:Show()
	GF_BlackListItemEditFrameEditBox:SetFocus()
end
function GF_BlacklistAddPlayerDialogOKButton_OnCLick()
	local name = strupper(strsub(GF_AddPlayerFrameEditBox:GetText(),1,1))..strlower(strsub(GF_AddPlayerFrameEditBox:GetText(),2))
	if name ~= "" then
		if not GF_BlackList[GF_RealmName][name] and not strfind(name, "[%d%p%c%s]") then
			table.insert(GF_BlackList[GF_RealmName],1,{ name, GF_DEFAULT_PLAYER_NOTE })
			GF_BlackList[GF_RealmName][name] = true
			DEFAULT_CHAT_FRAME:AddMessage(name..GF_NOW_BEING_IGNORED,1,1,0.5)
		else
			DEFAULT_CHAT_FRAME:AddMessage(name..GF_INVALID_PLAYER_NAME,1,1,0.5)
		end
	end
	GF_AddPlayerFrame:Hide()
	GF_AddPlayerFrameEditBox:SetText("")
	GF_UpdateBlackListItems()
end
function GF_BlackListItemSaveChanges()
	for i=1, getn(GF_BlackList[GF_RealmName]) do
		if GF_BlackList[GF_RealmName][i][1] == string.gsub(GF_BlackListItemEditFrameTitleLabel:GetText(), GF_EDIT_PLAYER..": ".."(%w+)", "%1") then
			table.remove(GF_BlackList[GF_RealmName],i)
			table.insert(GF_BlackList[GF_RealmName],i, { string.gsub(GF_BlackListItemEditFrameTitleLabel:GetText(), GF_EDIT_PLAYER..": ".."(%w+)", "%1"), GF_BlackListItemEditFrameEditBox:GetText()})
			break
		end
	end
	GF_BlackListItemEditFrame:Hide()
	GF_UpdateBlackListItems()
end
function GF_DeletePlayer(id)
	GF_BlackList[GF_RealmName][GF_BlackList[GF_RealmName][GF_BlackListOffset+id][1]] = nil
	table.remove(GF_BlackList[GF_RealmName], GF_BlackListOffset+id)
	GF_BlackListItemEditFrame:Hide()
	GF_UpdateBlackListItems()
end

function GF_ToggleGetWho() -- GetWho functions
	if not GF_ClassWhoRequest then
		GF_ClassWhoMatchingResults = 0
		GF_GetWhoTotalNames:SetText(GF_ClassWhoMatchingResults)
		GF_GetWhoName = ""
		GF_GetWhoNameLabel:SetText("")
		GF_GetWhoClassLevelList(GF_PerCharVariables.getwhowhisperlevel, GF_PerCharVariables.getwhowhisperclass, true)
		if GF_NextAvailableWhoTime > time() then
			GF_GetWhoButton:SetText(GF_STOP_WHO.." - "..GF_NextAvailableWhoTime - time())
			DEFAULT_CHAT_FRAME:AddMessage(GF_SENDING_GET_WHO..(GF_NextAvailableWhoTime - time())..GF_SECONDS,1,1,0.5)
		else
			GF_GetWhoButton:SetText(GF_STOP_WHO)
		end
	else
		GF_ClassWhoRequest = nil
		GF_GetWhoButton:SetText(GF_GET_WHO)
	end
end
function GF_GetWhoClassLevelList(level,class,excludedungeonspvp)
	for name,entry in pairs(GF_ClassWhoTable) do -- Remove old entries before starting new search
		if entry[4] <= time() then GF_ClassWhoTable[name] = nil end
	end
	GF_ClassWhoRequest = true
	GF_ClassWhoMatchingResults = 0
	if level == 0 then level = UnitLevel("player") end
	GF_GetWhoParams = { level, class, excludedungeonspvp, }
	GF_ClassWhoQueue = {}
	GF_GetClassWhoState = 1
	GF_CreateGetWhoQueueList(level,class)
end
function GF_CreateGetWhoQueueList(level,class)
	local minlevel = level-GF_PerCharVariables.wholevelrange
	local maxlevel = level+GF_PerCharVariables.wholevelrange
	if level > 60 then
		maxlevel = 60
		level = 60
	elseif minlevel < 1 then
		minlevel = 1
	end
	if GF_GetClassWhoState == 1 then
		table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel)
	elseif GF_GetClassWhoState == 2 and (level ~= maxlevel) then
		table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..level-1)
		table.insert(GF_ClassWhoQueue, "c-"..class.." "..level.."-"..maxlevel)
	elseif GF_GetClassWhoState == 3 or (GF_GetClassWhoState == 2 and (level == maxlevel)) then
		if UnitFactionGroup("player") == "Alliance" then
			if GF_PlayingOnTurtle and GF_RACE_CLASS_COMBOS[class][GF_HIGH_ELF] then
				table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_HIGH_ELF.."\"")
			end
			if GF_RACE_CLASS_COMBOS[class][GF_GNOME] then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_GNOME.."\"") end
			if GF_RACE_CLASS_COMBOS[class][GF_DWARF] then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_DWARF.."\"") end
			if GF_RACE_CLASS_COMBOS[class][GF_NIGHT_ELF] then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_NIGHT_ELF.."\"") end
			if GF_RACE_CLASS_COMBOS[class][GF_HUMAN] then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_HUMAN.."\"") end
		else
			if GF_PlayingOnTurtle and GF_RACE_CLASS_COMBOS[class][GF_GOBLIN] then
				table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_GOBLIN.."\"")
			end
			if GF_RACE_CLASS_COMBOS[class][GF_TAUREN] then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_TAUREN.."\"") end
			if GF_RACE_CLASS_COMBOS[class][GF_TROLL] then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_TROLL.."\"") end
			if GF_RACE_CLASS_COMBOS[class][GF_ORC] then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_ORC.."\"") end
			if GF_RACE_CLASS_COMBOS[class][GF_UNDEAD] then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_UNDEAD.."\"") end
		end
		GF_GetClassWhoState = 3
	elseif GF_GetClassWhoState == 4 then
		table.insert(GF_ClassWhoQueue, "c-"..class.."\" "..minlevel .."-"..maxlevel.." ".."n-\"a\"")
		table.insert(GF_ClassWhoQueue, "c-"..class.."\" "..minlevel .."-"..maxlevel.." ".."n-\"e\"")
		table.insert(GF_ClassWhoQueue, "c-"..class.."\" "..minlevel .."-"..maxlevel.." ".."n-\"i\"")
		table.insert(GF_ClassWhoQueue, "c-"..class.."\" "..minlevel .."-"..maxlevel.." ".."n-\"o\"")
		table.insert(GF_ClassWhoQueue, "c-"..class.."\" "..minlevel .."-"..maxlevel.." ".."n-\"u\"")
	end
end
function GF_GetWhoSendWhisperToAvailablePlayer()
	local whispermessage = GF_GetWhoWhisperEditBox:GetText()
	if whispermessage == "" then whispermessage = GF_LFGDescriptionEditBox:GetText() end
	if GF_GetWhoName == "" then
		DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_NO_PLAYERS_TO_WHISPER,1,1,0.5)
	elseif whispermessage == "" then
		DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_NO_WHISPER_TEXT,1,1,0.5)
	elseif strlen(whispermessage) < 5 then
		DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_WHISPER_TEXT_TOO_SHORT,1,1,0.5)
	else
		if GF_Hardcore and not GF_PerCharVariables.disablehardcore and GF_PerCharVariables.hardcore ~= 3 then whispermessage = whispermessage..GF_HARDCORE_WHISPER_SUFFIX end
		SendChatMessage(whispermessage,"WHISPER",nil,GF_GetWhoName)
		if GF_ClassWhoTable[GF_GetWhoName] then GF_ClassWhoTable[GF_GetWhoName][4] = time() + GF_GetWhoResetTimer end
		GF_ClassWhoMatchingResults = GF_ClassWhoMatchingResults - 1
		GF_GetWhoTotalNames:SetText(GF_ClassWhoMatchingResults)
		GF_ClassWhoRequest = nil
		GF_ClassWhoQueue = {}
		GF_GetWhoButton:SetText(GF_GET_WHO)
		for name,entry in pairs(GF_ClassWhoTable) do if entry[4] <= time() then GF_GetWhoName = name GF_GetWhoNameLabel:SetText(GF_CreateGetWhoNameLink(name)) return end end
		GF_GetWhoName = ""
		GF_GetWhoNameLabel:SetText("")
	end
end
function GF_GetWhoSkipPlayer()
	if GF_ClassWhoMatchingResults > 0 and GF_ClassWhoTable[GF_GetWhoName] and GF_ClassWhoTable[GF_GetWhoName][4] <= time() then
		GF_ClassWhoTable[GF_GetWhoName][4] = time() + 300
		GF_ClassWhoMatchingResults = GF_ClassWhoMatchingResults - 1
		GF_GetWhoTotalNames:SetText(GF_ClassWhoMatchingResults)
		GF_ClassWhoRequest = nil
		GF_ClassWhoQueue = {}
		GF_GetWhoButton:SetText(GF_GET_WHO)
	end
	for name,entry in pairs(GF_ClassWhoTable) do if entry[4] <= time() then GF_GetWhoName = name GF_GetWhoNameLabel:SetText(GF_CreateGetWhoNameLink(name)) return end end
	GF_GetWhoName = ""
	GF_GetWhoNameLabel:SetText("")
end
function GF_ToggleGetWhoDropDownMenu()
	if GF_ClassWhoTable[GF_GetWhoName] then
		if not GF_HandleItemRefLinks("player:"..GF_GetWhoName,GF_GetWhoName,arg1) then
			if arg1 == "RightButton" then
				HideDropDownMenu(1)
				GameTooltip:Hide()
				GF_GetWhoDropDownMenu = CreateFrame("Frame", "GF_GetWhoDropDownMenu", frame, "UIDropDownMenuTemplate")
				GF_GetWhoDropDownMenu.name = GF_GetWhoName
				UIDropDownMenu_Initialize(GF_GetWhoDropDownMenu, GF_CreateGetWhoDropDownMenu, "MENU")
				ToggleDropDownMenu(1, nil, GF_GetWhoDropDownMenu, "cursor")
			else
				CloseDropDownMenus(1)
				TargetByName(GF_GetWhoName,1)
			end
		end
	end
end
function GF_CreateGetWhoDropDownMenu()
	info = {}
	info.isTitle = true
	info.text = GF_GetWhoDropDownMenu.name
	info.notCheckable = true
	UIDropDownMenu_AddButton(info, 1)

	info = {}
	info.isTitle = nil
	info.notCheckable = true
	info.hasArrow = false
	info.disabled = nil
	info.text = WHISPER
	info.func = function() ChatFrame_SendTell(GF_GetWhoDropDownMenu.name) end
	info.value = nil
	UIDropDownMenu_AddButton(info, 1)

	info = {}
	info.isTitle = nil
	info.notCheckable = true
	info.hasArrow = false
	info.disabled = nil
	info.text = PARTY_INVITE
	info.func = function() InviteByName(GF_GetWhoDropDownMenu.name) end
	info.value = nil
	UIDropDownMenu_AddButton(info, 1)

	info = {}
	info.isTitle = nil
	info.notCheckable = true
	info.hasArrow = false
	info.disabled = nil
	info.text = WHO
	info.func = function()
		displayWhoMessageName["n-"..GF_GetWhoDropDownMenu.name] = {GF_GetWhoDropDownMenu.name,time()}
		SendWho("n-"..GF_GetWhoDropDownMenu.name)
	end
	info.value = nil
	UIDropDownMenu_AddButton(info, 1)

	info = {}
	info.isTitle = nil
	info.notCheckable = true
	info.hasArrow = false
	info.disabled = nil
	info.text = CANCEL
	info.func = function() CloseDropDownMenus(1) end
	info.value = nil
	UIDropDownMenu_AddButton(info, 1)
end
function GF_CreateGetWhoNameLink(name)
	return "|cff"..(GF_ClassColors[GF_ClassWhoTable[name][2]] or "ffffff").."|Hplayer:"..name.."|h["..name..", "..GF_ClassWhoTable[name][1].."]|h|r"
end

function GF_FixLFGStrings(groupSizeOnly) -- LFG Group Maker Functions... TODO: Change to update by dungeon alias name instead of fixed values
	local maxGroupSize = GF_BUTTONS_LIST.LFGSize[GF_PerCharVariables.lfgsize][4]
	local foundLF = 0
	local foundDungeonRaid = {}
	local foundRoles = {}
	local foundEndOfText
	local endOfFilter = 0
	GF_PerCharVariables.searchlfgtext = gsub(gsub(gsub(GF_PerCharVariables.searchlfgtext, "[Ll]+[Ff]+%d?%d?[Mm]+", "LFM"), "%(HC%)", ""),"%s%s+"," ")
	for i=1, getn(GF_BUTTONS_LIST.LFGLFM) do
		_,foundEndOfText = strfind(GF_PerCharVariables.searchlfgtext, GF_BUTTONS_LIST.LFGLFM[i][1])
		if foundEndOfText then
			foundLF = i
			if foundEndOfText > endOfFilter then endOfFilter = foundEndOfText end
			break
		end
	end
	for i=1, getn(GF_BUTTONS_LIST.LFGRole) do
		_,foundEndOfText = strfind(GF_PerCharVariables.searchlfgtext, GF_BUTTONS_LIST.LFGRole[i][1])
		if foundEndOfText then
			if foundEndOfText > endOfFilter then endOfFilter = foundEndOfText end
			table.insert(foundRoles,GF_BUTTONS_LIST.LFGRole[i][1])
		end
	end
	for i=1, getn(GF_BUTTONS_LIST.LFGDungeon) do
		_,foundEndOfText = strfind(GF_PerCharVariables.searchlfgtext, GF_BUTTONS_LIST.LFGDungeon[i][1])
		if foundEndOfText then
			if foundEndOfText > endOfFilter then endOfFilter = foundEndOfText end
			if tonumber(maxGroupSize) > GF_BUTTONS_LIST.LFGDungeon[i][4] then maxGroupSize = GF_BUTTONS_LIST.LFGDungeon[i][4] end
			table.insert(foundDungeonRaid,GF_BUTTONS_LIST.LFGDungeon[i][1])
		end
	end
	for i=1, getn(GF_BUTTONS_LIST.LFGRaid) do
		_,foundEndOfText = strfind(GF_PerCharVariables.searchlfgtext, GF_BUTTONS_LIST.LFGRaid[i][1])
		if foundEndOfText then
			if foundEndOfText > endOfFilter then endOfFilter = foundEndOfText end
			if tonumber(maxGroupSize) > GF_BUTTONS_LIST.LFGRaid[i][4] then maxGroupSize = GF_BUTTONS_LIST.LFGRaid[i][4] end
			table.insert(foundDungeonRaid,GF_BUTTONS_LIST.LFGRaid[i][1])
		end
	end
	local newText = ""
	if groupSizeOnly then
		if foundLF == 1 then
			GF_PerCharVariables.searchlfgtext = gsub(GF_PerCharVariables.searchlfgtext, "LFM", "")
			if GF_PerCharVariables.lfgauto then
				GF_PerCharVariables.searchlfgtext = "LF"..(maxGroupSize-GF_NumPartyMembers).."M"..GF_PerCharVariables.searchlfgtext
			else
				GF_PerCharVariables.searchlfgtext = "LFM"..GF_PerCharVariables.searchlfgtext
			end
		end
	else
		if foundLF == 1 then
			if GF_PerCharVariables.lfgauto then
				newText = "LF"..maxGroupSize-GF_NumPartyMembers.."M"
			else
				newText = "LFM"
			end
			if getn(foundDungeonRaid) > 0 then
				newText = newText.." for "
				for i=1, getn(foundDungeonRaid) do
					newText = newText.."/"..foundDungeonRaid[i]
				end
			end
			if not GF_PerCharVariables.disablehardcore and GF_Hardcore and GF_PerCharVariables.hardcore ~= 3 and strlen(newText) > 0 then newText = newText..GF_HARDCORE_WHISPER_SUFFIX end
			if getn(foundRoles) > 0 then
				newText = newText.." need "
				for i=1, getn(foundRoles) do
					newText = newText.."/"..foundRoles[i]
				end
			end
		else
			if foundLF > 4 then
				if GF_PerCharVariables.sendplayerinfo then
					if GF_PerCharVariables.lfgtank then newText = newText.."/"..GF_TANK end
					if GF_PerCharVariables.lfgheal then newText = newText.."/"..GF_HEALER end
					if GF_PerCharVariables.lfgdps then newText = newText.."/"..GF_DPS end
				end
			else
				for i=1, getn(foundRoles) do
					newText = newText.."/"..foundRoles[i]
				end
			end
			if GF_PerCharVariables.lfglevel and ((foundLF ~= 0 and foundLF < 6) or strlen(newText) > 0) then newText = UnitLevel("player").." "..newText end
			if foundLF > 0 then newText = " "..newText.." "..GF_BUTTONS_LIST.LFGLFM[foundLF][1] end
			if strlen(newText) > 0 and getn(foundDungeonRaid) > 0 then newText = newText.." for " else newText = newText.." " end
			for i=1, getn(foundDungeonRaid) do
				newText = newText.."/"..foundDungeonRaid[i]
			end
			if not GF_PerCharVariables.disablehardcore and GF_Hardcore and GF_PerCharVariables.hardcore ~= 3 and strlen(newText) > 1 then newText = newText..GF_HARDCORE_WHISPER_SUFFIX end
		end
		GF_PerCharVariables.searchlfgtext = gsub(gsub(gsub(gsub(gsub(gsub(gsub(newText.." "..strsub(GF_PerCharVariables.searchlfgtext, endOfFilter+1), "^[/ ]+", ""), "[/ ]+$", ""), "^[/ ]+", ""),"//+", ""), "/%s+"," "),"%s+/", " "),"%s%s+", " ")
	end
	if GF_PerCharVariables.searchlfgtext ~= "" then GF_LFGDescriptionClearButton:Show() else GF_LFGDescriptionClearButton:Hide() end
	GF_LFGDescriptionEditBox:SetText(GF_PerCharVariables.searchlfgtext)
end
function GF_CheckSearchButtonHasValues()
	for word,_ in pairs(GF_PerCharVariables.searchbuttonstext) do
		if word == GF_BUTTONS_LIST["SearchList"][getn(GF_BUTTONS_LIST["SearchList"])][4] then
			for name,_ in pairs(LFTGroups) do searchButtonHasValues = true return end
		else
			searchButtonHasValues = true
			return
		end
	end
	if GF_PerCharVariables.searchtext ~= "" then searchButtonHasValues = true return end
	searchButtonHasValues = nil
end

function GF_GetDropDownButtons(fName,maxSize,showAll,MatchLFG) -- Create dropdown menu functions
	local width = 0
	local buttons = {}
	GF_ButtonIDAliases[fName] = {}
	for i=1, getn(GF_BUTTONS_LIST[fName]) do
		if showAll or (UnitLevel("player") >= GF_BUTTONS_LIST[fName][i][2] and UnitLevel("player") <= GF_BUTTONS_LIST[fName][i][3]) then
			table.insert(buttons,GF_BUTTONS_LIST[fName][i])
			GF_ButtonIDAliases[fName][GF_BUTTONS_LIST[fName][i][1]] = i
		end
	end
	if getn(buttons) == 0 then return end
	for i=1, getn(buttons) do
		local button = getglobal("GF_"..fName..i)
		if not button then
			button = CreateFrame("CheckButton", getglobal("GF_"..fName):GetName()..i, getglobal("GF_"..fName), "GF_LFGDropdownCheckButtonTemplate_Label")
			button:SetID(i)
			getglobal(button:GetName().."TextLabel"):SetFont(GF_BUTTONS_LIST["FontName"][GF_SavedVariables.fontname][2],GF_BaseFontSize)
		else
			getglobal(button:GetName().."TextLabel"):SetFont(GF_BUTTONS_LIST["FontName"][GF_SavedVariables.fontname][2],GF_BaseFontSize)
		end
		getglobal(button:GetName().."TextLabel"):SetText(buttons[i][1])
		if getglobal(button:GetName().."TextLabel"):GetStringWidth()+5 > width then width = getglobal(button:GetName().."TextLabel"):GetStringWidth()+5 end
		button:ClearAllPoints()
		button:Show()
		if MatchLFG then
			if (fName == "SearchList" and GF_PerCharVariables.searchbuttonstext[buttons[i][4]]) or (fName ~= "SearchList" and strfind(GF_PerCharVariables.searchlfgtext, buttons[i][1])) then
				button:SetChecked(true)
			else
				button:SetChecked(false)
			end
		elseif fName == "AlwaysShow" then
			if GF_PerCharVariables.alwaysShown[strupper(buttons[i][1])] then button:SetChecked(true) else button:SetChecked(false) end
		else
			button:SetChecked(false)
		end
	end
	for i=1, getn(buttons) do
		if i <= ceil(getn(buttons)/maxSize) then
			getglobal("GF_"..fName..i):SetPoint("TOPLEFT", getglobal("GF_"..fName):GetName(), "TOPLEFT", 6 + (i-1)*(width+51), -4)
		else
			getglobal("GF_"..fName..i):SetPoint("TOP", getglobal("GF_"..fName..i-ceil(getn(buttons)/maxSize)), "BOTTOM", 0, 6)
		end
	end
	for i=getn(buttons)+1,100 do if not getglobal("GF_"..fName..i) then break end getglobal("GF_"..fName..i):Hide() end
	getglobal("GF_"..fName):SetHeight(12 + ceil(getn(buttons)/ceil(getn(buttons)/maxSize)) * 18)
	getglobal("GF_"..fName):SetWidth((width + 45) * ceil(getn(buttons)/maxSize))
	getglobal("GF_"..fName):ClearAllPoints()
	if getn(buttons)/maxSize > 1 then
		getglobal("GF_"..fName):SetPoint("TOPLEFT", getglobal("GF_"..fName.."Dropdown"), "BOTTOMLEFT", (-1*(width + 45)*math.floor((getn(buttons)-1)/maxSize))/2 - width/1.5, 4)
	else
		getglobal("GF_"..fName):SetPoint("TOPLEFT", getglobal("GF_"..fName.."Dropdown"), "BOTTOMLEFT", -1*(width + 45)*math.floor((getn(buttons)-1)/maxSize), 4)
	end
	getglobal("GF_"..fName):Show()
end
function GF_GetWhoClassDropdownShow()
	GF_GetDropDownButtons("GetWhoClass",6,true)
	for i=1, getn(GF_BUTTONS_LIST["GetWhoClass"]) do if GF_PerCharVariables.getwhowhisperclass == GF_BUTTONS_LIST["GetWhoClass"][i][1] then getglobal("GF_GetWhoClass"..i):SetChecked(true) break end end
end
function GF_GetWhoLevelDropdownShow()
	GF_GetDropDownButtons("GetWhoLevel",6)
	if GF_PerCharVariables.getwhowhisperlevel == 0 then GF_GetWhoLevel1:SetChecked(true) end
end
function GF_AlwaysShowDropdownShow()
	GF_BUTTONS_LIST["AlwaysShow"] = {{CHAT_MSG_GUILD},{FRIENDS},{CHAT_MSG_PARTY},{CHAT_MSG_SAY},{CHAT_MSG_YELL},{GF_WORLD_CHANNEL_NAME},{GF_LFG_CHANNEL_NAME},{TRADE},{GENERAL},[strlower(GF_WORLD_CHANNEL_NAME)] = true,[strlower(GF_LFG_CHANNEL_NAME)] = true,[strlower(TRADE)] = true,[strlower(GENERAL)] = true,}
	local chanList = { GetChannelList() }
	for i=1, getn(chanList) do if not tonumber(chanList[i]) and not GF_BUTTONS_LIST["AlwaysShow"][strlower(chanList[i])] then table.insert(GF_BUTTONS_LIST["AlwaysShow"],{chanList[i]}) end end
	GF_GetDropDownButtons("AlwaysShow",6,true)
end
function GF_BlockListDropdownShow()
	GF_GetDropDownButtons("BlockList",15,true)
end
function GF_FontNameDropdownShow()
	GF_GetDropDownButtons("FontName",6,true)
end
function GF_GroupChannelNameDropdownShow()
	GF_BUTTONS_LIST["GroupChannelName"] = {{GF_WORLD_CHANNEL_NAME},{GF_LFG_CHANNEL_NAME},{TRADE},{GENERAL},[strlower(GF_WORLD_CHANNEL_NAME)] = true,[strlower(GF_LFG_CHANNEL_NAME)] = true,[strlower(TRADE)] = true,[strlower(GENERAL)] = true,}
	local chanList = { GetChannelList() }
	for i=1, getn(chanList) do if not tonumber(chanList[i]) and not GF_BUTTONS_LIST["GroupChannelName"][strlower(chanList[i])] then table.insert(GF_BUTTONS_LIST["GroupChannelName"],{chanList[i]}) end end
	GF_GetDropDownButtons("GroupChannelName",6,true)
end
function GF_LFGDungeonDropdownShow()
	GF_GetDropDownButtons("LFGDungeon",6,nil,true)
end
function GF_LFGHardCoreDropdownShow()
	GF_GetDropDownButtons("LFGHardCore",6,true)
	getglobal("GF_LFGHardCore"..GF_PerCharVariables.hardcore):SetChecked(true)
end
function GF_LFGLFMDropdownShow()
	GF_GetDropDownButtons("LFGLFM",6,true)
	if strfind(" "..strlower(GF_PerCharVariables.searchlfgtext).." ", " [lL][fF]%d?%d?[mM] ") then
		GF_LFGLFM1:SetChecked(true)
	else
		for i=2, getn(GF_BUTTONS_LIST["LFGLFM"]) do
			if strfind(strlower(GF_PerCharVariables.searchlfgtext), strlower(GF_BUTTONS_LIST["LFGLFM"][i][1])) then getglobal("GF_LFGLFM"..i):SetChecked(true) break end
		end
	end
end
function GF_LFGRaidDropdownShow()
	GF_GetDropDownButtons("LFGRaid",6,nil,true)
end
function GF_LFGRoleDropdownShow()
	GF_GetDropDownButtons("LFGRole",6,true,true)
end
function GF_LFGSizeDropdownShow()
	GF_GetDropDownButtons("LFGSize",6,true)
	getglobal("GF_LFGSize"..GF_PerCharVariables.lfgsize):SetChecked(true)
end
function GF_LogChannelNameDropdownShow()
	GF_BUTTONS_LIST["LogChannelName"] = {}
	local chanList = { GetChannelList() }
	for i=1, getn(chanList) do if not tonumber(chanList[i]) then GF_BUTTONS_LIST["LogChannelName"][i/2] = {chanList[i]} end end
	GF_GetDropDownButtons("LogChannelName",6,true)
	for i=1, getn(GF_BUTTONS_LIST["LogChannelName"]) do if GF_PerCharVariables.blockedchannels[strlower(GF_BUTTONS_LIST["LogChannelName"][i][1])] then getglobal("GF_LogChannelName"..i):SetChecked(false) else getglobal("GF_LogChannelName"..i):SetChecked(true) end end
end
function GF_SearchListDropdownShow()
	GF_GetDropDownButtons("SearchList",10,nil,true)
end
function GF_HideDropdownMenus()
	for name,data in pairs(GF_MenusToHide) do
		if not GetMouseFocus() or not GetMouseFocus():GetName() or not string.find(GetMouseFocus():GetName(), data[1]) then if data[2] + .5 < GetTime() then getglobal(name):Hide() else return end end
	end
	GF_MenusToHide = {}
	GF_OnUpdateFunctions["HideMenus"] = nil
end

function GF_ButtonListFunctions(fName,entryName,entryID,add) -- Functions for Button Add/Remove
	GF_PerCharVariables.searchlfgtext = GF_LFGDescriptionEditBox:GetText()
	getglobal(fName)(entryName,entryID,add)
end
function GF_GetWhoClassAddRemove(entryName,entryID,add)
	GF_PerCharVariables.getwhowhisperclass = entryName
	GF_GetWhoClassDropdownTextLabel:SetText(GF_PerCharVariables.getwhowhisperclass)
	GF_GetWhoClass:Hide()
end
function GF_GetWhoLevelAddRemove(entryName,entryID,add)
	GF_PerCharVariables.getwhowhisperlevel = GF_BUTTONS_LIST["GetWhoLevel"][entryID][4]
	GF_PerCharVariables.wholevelrange = GF_BUTTONS_LIST["GetWhoLevel"][entryID][5]
	if GF_PerCharVariables.getwhowhisperlevel == 0 then GF_GetWhoLevelDropdownTextLabel:SetText(LEVEL.." "..UnitLevel("player").."±") elseif GF_PerCharVariables.getwhowhisperlevel > 60 then GF_GetWhoLevelDropdownTextLabel:SetText(LEVEL.." 60±") else GF_GetWhoLevelDropdownTextLabel:SetText(LEVEL.." "..GF_PerCharVariables.getwhowhisperlevel.."±") end
	GF_GetWhoLevel:Hide()
end
function GF_AlwaysShowAddRemove(entryName,entryID,add)
	if add then
		if GF_ALWAYS_SHOWN_ALIAS[entryName] then GF_PerCharVariables.alwaysShown[GF_ALWAYS_SHOWN_ALIAS[entryName]] = true else GF_PerCharVariables.alwaysShown[strupper(entryName)] = true end
	else
		GF_PerCharVariables.alwaysShown[strupper(entryName)] = nil
	end
	GF_SetAlwaysShowTextLabel()
end
function GF_BlockListAddRemove(entryName,entryID,add)
	table.remove(GF_BUTTONS_LIST["BlockList"],entryID)
	table.remove(GF_SavedVariables.blocklist,entryID)
	GF_WORD_BLOCK_LIST[entryName] = nil
	GF_BlockList:Hide()
end
function GF_FontNameAddRemove(entryName,entryID,add)
	GF_FontNameDropdownTextLabel:SetText("Font:  "..entryName)
	GF_SavedVariables.fontname = entryID
	GF_FontName:Hide()
	GF_SetStringSize()
end
function GF_GroupChannelNameAddRemove(entryName,entryID,add)
	GF_GroupChannelEditBox:SetText(entryName)
	GF_JoinWorld()
	if GF_BUTTONS_LIST.LFGHardCore[GF_PerCharVariables.hardcore][4] then GF_WorldAnnounceMessageTextLabel:SetText(GF_HARDCORE_SEND_TEXT) else GF_WorldAnnounceMessageTextLabel:SetText(GF_WORLD_SEND_TEXT..GF_SavedVariables.groupchannelname.." "..GF_LOG_CHANNEL) end
	GF_GroupChannelName:Hide()
end
function GF_LFGDungeonAddRemove(entryName,entryID,add)
	if add then
		GF_PerCharVariables.searchlfgtext = GF_BUTTONS_LIST["LFGDungeon"][entryID][1].." "..gsub(GF_PerCharVariables.searchlfgtext, "^%d+", "")
	else
		GF_LFGCommonCleanup(entryName)
	end
	GF_FixLFGStrings()
	GF_UpdateQueueLFTButton()
end
function GF_LFGHardCoreAddRemove(entryName,entryID,add)
	if GF_Hardcore then
		if GF_PerCharVariables.disablehardcore then
			GF_BUTTONS_LIST.LFGHardCore[1][4] = nil
			GF_BUTTONS_LIST.LFGHardCore[2] = {GF_SHOW_NORMAL,1,60,nil,true,nil}
			GF_BUTTONS_LIST.LFGHardCore[3] = {GF_SHOW_HARDCORE,1,60,nil,nil,true}
		else
			GF_BUTTONS_LIST.LFGHardCore[1][4] = true
			GF_BUTTONS_LIST.LFGHardCore[2] = {GF_SHOW_HARDCORE,1,60,true,nil,true}
			GF_BUTTONS_LIST.LFGHardCore[3] = {GF_SHOW_NORMAL,1,60,nil,true,nil}
			if GF_PerCharVariables.hardcore < 3 and entryID == 3 then DEFAULT_CHAT_FRAME:AddMessage(GF_WORLD_NOW_SENDING,1,1,0.5) elseif GF_PerCharVariables.hardcore == 3 and entryID < 3 then DEFAULT_CHAT_FRAME:AddMessage(GF_HARDCORE_NOW_SENDING,1,1,0.5) end
		end
	end
	GF_PerCharVariables.hardcore = entryID
	if GF_BUTTONS_LIST.LFGHardCore[GF_PerCharVariables.hardcore][4] then GF_WorldAnnounceMessageTextLabel:SetText(GF_HARDCORE_SEND_TEXT) else GF_WorldAnnounceMessageTextLabel:SetText(GF_WORLD_SEND_TEXT..GF_SavedVariables.groupchannelname.." "..GF_LOG_CHANNEL) end
	GF_LFGHardCoreDropdownTextLabel:SetText(GF_BUTTONS_LIST.LFGHardCore[entryID][1])
	GF_LFGHardCore:Hide()
	GF_GetGroupFilters()
	GF_ApplyFiltersToGroupList(true)
end
function GF_LFGLFMAddRemove(entryName,entryID,add)
	GF_PerCharVariables.searchlfgtext = gsub(GF_PerCharVariables.searchlfgtext, "^[lL][fF]%d+[mM]", "LFM")
	if add then
		for i=1, getn(GF_BUTTONS_LIST["LFGLFM"]) do -- Remove LFM/LFG and Roles then add new LFM/LFG
			if entryID == 1 and not strfind(GF_PerCharVariables.searchlfgtext, "^LFM") or (entryID > 1 and entryID < 5) then -- If setting to LFM and I'm LFG then remove roles
				for k=1,3 do
					local lfs,lfe = strfind(GF_PerCharVariables.searchlfgtext, " need "..GF_BUTTONS_LIST.LFGRole[k][1])
					if lfs then
						GF_PerCharVariables.searchlfgtext = strsub(GF_PerCharVariables.searchlfgtext,1,lfs-1)..strsub(GF_PerCharVariables.searchlfgtext,lfe+1)
					else
						lfs,lfe = strfind(GF_PerCharVariables.searchlfgtext, GF_BUTTONS_LIST.LFGRole[k][1])
						if lfs then
							GF_PerCharVariables.searchlfgtext = strsub(GF_PerCharVariables.searchlfgtext,1,lfs-1)..strsub(GF_PerCharVariables.searchlfgtext,lfe+1)
						end
					end
				end
			end
			GF_PerCharVariables.searchlfgtext = gsub(GF_PerCharVariables.searchlfgtext, GF_BUTTONS_LIST.LFGLFM[i][1], "")
		end
		GF_PerCharVariables.searchlfgtext = GF_BUTTONS_LIST["LFGLFM"][entryID][1].." "..gsub(GF_PerCharVariables.searchlfgtext, "^%d+", "")
	else
		GF_LFGCommonCleanup(entryName)
	end
	GF_FixLFGStrings()
	GF_LFGLFM:Hide()
 end
function GF_LFGRaidAddRemove(entryName,entryID,add)
	if add then
		GF_PerCharVariables.searchlfgtext = GF_BUTTONS_LIST["LFGRaid"][entryID][1].." "..gsub(GF_PerCharVariables.searchlfgtext, "^%d+", "")
	else
		GF_LFGCommonCleanup(entryName)
	end
	GF_FixLFGStrings()
end
function GF_LFGRoleAddRemove(entryName,entryID,add)
	if add then
		GF_PerCharVariables.searchlfgtext = GF_BUTTONS_LIST["LFGRole"][entryID][1].." "..gsub(GF_PerCharVariables.searchlfgtext, "^%d+", "")
	else
		GF_LFGCommonCleanup(entryName)
	end
	GF_FixLFGStrings()
end
function GF_LFGSizeAddRemove(entryName,entryID,add)
	GF_PerCharVariables.lfgsize = entryID
	GF_LFGSizeDropdownTextLabel:SetText(GF_BUTTONS_LIST.LFGSize[entryID][1])
	GF_FixLFGStrings(true)
	GF_LFGSize:Hide()
end
function GF_LogChannelNameAddRemove(entryName,entryID,add)
	if add then GF_PerCharVariables.blockedchannels[strlower(entryName)] = nil else GF_PerCharVariables.blockedchannels[strlower(entryName)] = true end
	if GF_WhisperLogCurrentButtonID == 0 then GF_DisplayLog() end
end
function GF_SearchListAddRemove(entryName,entryID,add)
	if entryID == getn(GF_BUTTONS_LIST["SearchList"]) then
		GF_PerCharVariables.searchbuttonstext[GF_BUTTONS_LIST["SearchList"][entryID][4]] = add
		for name,_ in pairs(LFTGroups) do
			GF_PerCharVariables.searchbuttonstext[GF_GROUP_IDS[name]] = add
		end
		GF_GetDropDownButtons("SearchList",10,nil,true)
	else
		for i=4, getn(GF_BUTTONS_LIST["SearchList"][entryID]) do
			GF_PerCharVariables.searchbuttonstext[GF_BUTTONS_LIST["SearchList"][entryID][i]] = add
		end
		if GF_PerCharVariables.searchbuttonstext[GF_BUTTONS_LIST["SearchList"][getn(GF_BUTTONS_LIST["SearchList"])][4]] then
			GF_PerCharVariables.searchbuttonstext[GF_BUTTONS_LIST["SearchList"][getn(GF_BUTTONS_LIST["SearchList"])][4]] = nil
			GF_GetDropDownButtons("SearchList",10,nil,true)
		end
	end
	GF_ApplyFiltersToGroupList(true)
end
function GF_LFGCommonCleanup(entryName)
	GF_PerCharVariables.searchlfgtext = gsub(gsub(gsub(gsub(gsub(gsub(gsub(GF_PerCharVariables.searchlfgtext, "^%d+", ""),"for "..entryName,""),"need "..entryName,""),entryName,""),"/ "," "), "%(HC%)", ""),"%s%s+"," ")
end

function GF_SetAlwaysShowTextLabel()
	local stringA = GF_ALWAYS_SHOW.." "
	local count = 0
	for name,_ in pairs(GF_PerCharVariables.alwaysShown) do
		if count >= 5 then break end
		if EventIDAlias[name] then stringA = stringA..EventIDAlias[name] count = count + 1 end
	end
	for name,_ in pairs(GF_PerCharVariables.alwaysShown) do
		if count >= 5 then break end
		if not EventIDAlias[name] and GetChannelName(name) ~= 0 then stringA = stringA.."["..GetChannelName(name).."] " count = count + 1 end
	end
	GF_AlwaysShowTextLabel:SetText(stringA)
end

function GF_ConfirmationDialogFunctions(fName) -- Functions for Confirmation Dialog
	getglobal(fName)()
end
function GF_ResetAllSettingsDialogOkButtonSent()
	DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_YOUR_SETTINGS_RESET, 1, 1, 0.5)
	GF_SavedVariables = {}
	GF_PerCharVariables = {}
	GF_LoadVariables()
	GF_LoadSettings()
end
function GF_SaveCurrentGroupDialogOkButtonSent()
	if GF_StartSaveGroupData(true) then DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_LOG_GROUP_IS_SAVED,1,1,0.5) else DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_LOG_GROUP_IS_RESET,1,1,0.5) end
	GF_CreateBlankGroupData()
	GF_UpdateDPSMeter()
end
function GF_ResetCurrentGroupDialogOkButtonSent()
	DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_LOG_GROUP_IS_RESET,1,1,0.5)
	GF_CreateBlankGroupData()
	GF_UpdateDPSMeter()
end

function GF_ClickQueueLFT() -- TODO: Does this work properly when in a group as leader?
	if LFTFrameMainButtonText then
		if LFTFrameMainButtonText:GetText() == LFT_GENERAL_LEAVE_QUEUE_TEXT then
			LFTFrameMainButton:Click()
		else
			if not GF_PerCharVariables.lfgdps and not GF_PerCharVariables.lfgheal and not GF_PerCharVariables.lfgtank then DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_NO_ROLES_SELECTED,1,1,0.5) return end
			if LFTFrameRole3CheckButton and GF_PerCharVariables.lfgdps then if not LFTFrameRole3CheckButton:GetChecked() then LFTFrameRole3CheckButton:Click() end else if LFTFrameRole3CheckButton:GetChecked() then LFTFrameRole3CheckButton:Click() end end
			if LFTFrameRole2CheckButton and GF_PerCharVariables.lfgheal then if not LFTFrameRole2CheckButton:GetChecked() then LFTFrameRole2CheckButton:Click() end else if LFTFrameRole2CheckButton:GetChecked() then LFTFrameRole2CheckButton:Click() end end
			if LFTFrameRole1CheckButton and GF_PerCharVariables.lfgtank then if not LFTFrameRole1CheckButton:GetChecked() then LFTFrameRole1CheckButton:Click() end else if LFTFrameRole1CheckButton:GetChecked() then LFTFrameRole1CheckButton:Click() end end

			for i=1,100 do
				if getglobal("LFTFrameInstanceEntry"..i) then -- Just need to click the instances in my lfgtext(and unclick any instances not)
					if LFTGroups[GF_LFT_DUNGEONS[getglobal("LFTFrameInstanceEntry"..i.."Name"):GetText()]] then
						if not getglobal("LFTFrameInstanceEntry"..i.."CheckButton"):GetChecked() then getglobal("LFTFrameInstanceEntry"..i.."CheckButton"):Click() end
					else
						if getglobal("LFTFrameInstanceEntry"..i.."CheckButton"):GetChecked() then getglobal("LFTFrameInstanceEntry"..i.."CheckButton"):Click() end
					end
				else
					break
				end
			end
			LFTFrameMainButton:Click()
		end
	elseif LFGMain and leaveQueueButton and findGroupButton and findMoreButton then
		--if LFG_Toggle()
		if leaveQueueButton:IsShown() and leaveQueueButton:IsEnabled() == 1 then
			leaveQueueButton:Click()
		else
			if not GF_PerCharVariables.lfgdps and not GF_PerCharVariables.lfgheal and not GF_PerCharVariables.lfgtank then DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_NO_ROLES_SELECTED,1,1,0.5) return end
			if RoleDamage and GF_PerCharVariables.lfgdps then if not RoleDamage:GetChecked() then RoleDamage:Click() end else if RoleDamage:GetChecked() then RoleDamage:Click() end end
			if RoleHealer and GF_PerCharVariables.lfgheal then if not RoleHealer:GetChecked() then RoleHealer:Click() end else if RoleHealer:GetChecked() then RoleHealer:Click() end end
			if RoleTank and GF_PerCharVariables.lfgtank then if not RoleTank:GetChecked() then RoleTank:Click() end else if RoleTank:GetChecked() then RoleTank:Click() end end

			for name,code in pairs(GF_LFT_DUNGEONS) do
				if getglobal("Dungeon_"..code.."Text") and getglobal("Dungeon_"..code.."Text"):IsShown() then
					if LFTGroups[GF_LFT_DUNGEONS[strsub(getglobal("Dungeon_"..code.."Text"):GetText(),11)]] then
						if not getglobal("Dungeon_"..code.."_CheckButton"):GetChecked() then getglobal("Dungeon_"..code.."_CheckButton"):Click() end
					else
						if getglobal("Dungeon_"..code.."_CheckButton"):GetChecked() then getglobal("Dungeon_"..code.."_CheckButton"):Click() end
					end
				end
			end
			if findGroupButton:IsShown() then findGroupButton:Click() else findMoreButton:Click() end
		end
	end
end
function GF_UpdateQueueLFTButton() -- Updates(gets dungeon list) on login and when leveling up... Otherwise, just check if groups match GF_PerCharVariables.searchlfgtext and show/hide the Queue Button... Always show button if in queue
	if not GF_SavedVariables.lfglftintegration or (GF_MainFrameShowBoth and not GF_SavedVariables.mainframelogisopen) then GF_QueuetoLFTButton:Hide() return end
	if LFTFrameMainButtonText and LFTFrameTab2 then
		if LFTFrameMainButtonText:GetText() == LFT_GENERAL_LEAVE_QUEUE_TEXT then
			GF_QueuetoLFTButton:SetText(GF_LEAVE_QUEUE)
			GF_QueuetoLFTButton:Show()
			GF_GenTooltips["GF_QueuetoLFTButton"].tooltip1 = GF_QUEUED_FOR
			local stringA = ""
			for i=1,100 do
				if getglobal("LFTFrameInstanceEntry"..i) and getglobal("LFTFrameInstanceEntry"..i):IsShown() then
					if getglobal("LFTFrameInstanceEntry"..i.."CheckButton"):GetChecked() then
						stringA = stringA..getglobal("LFTFrameInstanceEntry"..i.."Name"):GetText()..", "
					end
				else
					break
				end
			end
			if stringA ~= "" then
				stringA = strsub(stringA,1,-3)..GF_LFT_AS
				if LFTFrameRole1CheckButton and LFTFrameRole1CheckButton:GetChecked() then stringA = stringA..GF_TANK..", " end
				if LFTFrameRole2CheckButton and LFTFrameRole2CheckButton:GetChecked() then stringA = stringA..GF_HEALER..", " end
				if LFTFrameRole3CheckButton and LFTFrameRole3CheckButton:GetChecked() then stringA = stringA..GF_DPS..", " end
				GF_GenTooltips["GF_QueuetoLFTButton"].tooltip2 = strsub(stringA,1,-3)
			end
		else
			if not getglobal("LFTFrameInstanceEntry1Name"):GetText() then LFTFrameTab2:Click() end
			GF_QueuetoLFTButton:Hide()
			GF_GetDungeonsFromText(GF_PerCharVariables.searchlfgtext)
			GF_QueuetoLFTButton:SetText(GF_QUEUE_IN_LFT)
			local stringA = ""
			for i=1,100 do
				if getglobal("LFTFrameInstanceEntry"..i) and getglobal("LFTFrameInstanceEntry"..i):IsShown() then
					if LFTGroups[GF_LFT_DUNGEONS[getglobal("LFTFrameInstanceEntry"..i.."Name"):GetText()]] then
						stringA = stringA..getglobal("LFTFrameInstanceEntry"..i.."Name"):GetText()..", "
					end
				else
					break
				end
			end
			if stringA ~= "" then
				GF_QueuetoLFTButton:Show()
				stringA = strsub(stringA,1,-3)
				if GF_PerCharVariables.lfgdps or GF_PerCharVariables.lfgheal or GF_PerCharVariables.lfgtank then
					stringA = stringA..GF_LFT_AS
					if GF_PerCharVariables.lfgtank then stringA = stringA..GF_TANK..", " end
					if GF_PerCharVariables.lfgheal then stringA = stringA..GF_HEALER..", " end
					if GF_PerCharVariables.lfgdps then stringA = stringA..GF_DPS..", " end
					stringA = strsub(stringA,1,-3)
					GF_GenTooltips["GF_QueuetoLFTButton"].tooltip1 = GF_QUEUE_FOR
				else
					GF_GenTooltips["GF_QueuetoLFTButton"].tooltip1 = GF_SELECT_ROLES_QUEUE
				end
				GF_GenTooltips["GF_QueuetoLFTButton"].tooltip2 = stringA
			end
		end
	elseif LFGMain and leaveQueueButton and findGroupButton and findMoreButton then
		if leaveQueueButton:IsShown() and leaveQueueButton:IsEnabled() == 1 then
			GF_QueuetoLFTButton:SetText(GF_LEAVE_QUEUE)
			GF_QueuetoLFTButton:Show()
			GF_GenTooltips["GF_QueuetoLFTButton"].tooltip1 = GF_QUEUED_FOR
			local stringA = ""
			for name,code in pairs(GF_LFT_DUNGEONS) do
				if getglobal("Dungeon_"..code.."_Button") and getglobal("Dungeon_"..code.."_Button"):IsShown() and getglobal("Dungeon_"..code.."_CheckButton"):GetChecked() then
					stringA = stringA..name..", "
				end
			end
			if stringA ~= "" then
				stringA = strsub(stringA,1,-3)..GF_LFT_AS
				if RoleTank and RoleTank:GetChecked() then stringA = stringA..GF_TANK..", " end
				if RoleHealer and RoleHealer:GetChecked() then stringA = stringA..GF_HEALER..", " end
				if RoleDamage and RoleDamage:GetChecked() then stringA = stringA..GF_DPS..", " end
				GF_GenTooltips["GF_QueuetoLFTButton"].tooltip2 = strsub(stringA,1,-3)
			end
		else
			GF_QueuetoLFTButton:Hide()
			GF_GetDungeonsFromText(GF_PerCharVariables.searchlfgtext)
			GF_QueuetoLFTButton:SetText(GF_QUEUE_IN_LFT)
			local stringA = ""
			for name,code in pairs(GF_LFT_DUNGEONS) do
				if getglobal("Dungeon_"..code.."_Button") and getglobal("Dungeon_"..code.."_Button"):IsShown() and LFTGroups[GF_LFT_DUNGEONS[name]] then
					stringA = stringA..name..", "
				end
			end
			if stringA ~= "" then
				GF_QueuetoLFTButton:Show()
				stringA = strsub(stringA,1,-3)
				if GF_PerCharVariables.lfgdps or GF_PerCharVariables.lfgheal or GF_PerCharVariables.lfgtank then
					stringA = stringA..GF_LFT_AS
					if GF_PerCharVariables.lfgtank then stringA = stringA..GF_TANK..", " end
					if GF_PerCharVariables.lfgheal then stringA = stringA..GF_HEALER..", " end
					if GF_PerCharVariables.lfgdps then stringA = stringA..GF_DPS..", " end
					stringA = strsub(stringA,1,-3)
					GF_GenTooltips["GF_QueuetoLFTButton"].tooltip1 = GF_QUEUE_FOR
				else
					GF_GenTooltips["GF_QueuetoLFTButton"].tooltip1 = GF_SELECT_ROLES_QUEUE
				end
				GF_GenTooltips["GF_QueuetoLFTButton"].tooltip2 = stringA
			end
		end
	end
end
function GF_GetDungeonsFromText(arg1)
	if GF_PerCharVariables.searchbuttonstext[GF_BUTTONS_LIST["SearchList"][getn(GF_BUTTONS_LIST["SearchList"])][4]] then for name,_ in pairs(LFTGroups) do GF_PerCharVariables.searchbuttonstext[GF_GROUP_IDS[name]] = nil end end
	foundDFlags,LFTGroups = {},{}

	local TableA = GetModifiedWordList(arg1)
	local tLen,stringA = getn(TableA)

	for j=0,3 do -- Score the TableA
		for i=1,tLen do
			if i+j <= tLen then -- if i+j <= tLen then
				stringA = TableA[i]
				for k=1, j do stringA = stringA..TableA[i+k] end
				if GF_WORD_DUNGEON[stringA] or GF_WORD_RAID[stringA] then table.insert(foundDFlags,1,stringA) end
			end
		end
	end
	for i=1, getn(foundDFlags) do
		if GF_LFT_ALIAS[foundDFlags[i]] then
			for j=1, getn(GF_LFT_ALIAS[foundDFlags[i]]) do
				LFTGroups[GF_LFT_ALIAS[foundDFlags[i]][j]] = true
			end
		end
	end
	if GF_PerCharVariables.searchbuttonstext[GF_BUTTONS_LIST["SearchList"][getn(GF_BUTTONS_LIST["SearchList"])][4]] then
		for name,_ in pairs(LFTGroups) do GF_PerCharVariables.searchbuttonstext[GF_GROUP_IDS[name]] = true end
		GF_ApplyFiltersToGroupList(true)
	end
end
function GF_LFGRoleCheck_OnShow()
	if GF_PerCharVariables.lfgtank or GF_PerCharVariables.lfgheal or GF_PerCharVariables.lfgdps then
		if GF_PerCharVariables.lfgdps then if not roleCheckDamage:GetChecked() then roleCheckDamage:Click() end else if roleCheckDamage:GetChecked() then roleCheckDamage:Click() end end
		if GF_PerCharVariables.lfgheal then if not roleCheckHealer:GetChecked() then roleCheckHealer:Click() end else if roleCheckHealer:GetChecked() then roleCheckHealer:Click() end end
		if GF_PerCharVariables.lfgtank then if not roleCheckTank:GetChecked() then roleCheckTank:Click() end else if roleCheckTank:GetChecked() then roleCheckTank:Click() end end
		LFGRoleCheckAcceptRole:Click()
		DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_AUTO_QUEUE_IN_LFT,1,1,0.5)
	end
end
function GF_LFGGroupReady_OnShow()
	if GF_SavedVariables.mainframestatus == 0 and GF_MainFrame:IsVisible() then GF_ToggleMainFrame() end
end
function GF_findGroupButton_OnClick()
	findGroup()
	GF_UpdateQueueLFTButton()
end
function GF_findMoreButton_OnClick()
	findMore()
	GF_UpdateQueueLFTButton()
end
function GF_leaveQueueButton_OnClick()
	leaveQueue()
	GF_UpdateQueueLFTButton()
end
function GF_ReportDamageMeter() -- TODO: Make this work properly
	if not GroupHistoryLogTable then return end
	if ChatFrameEditBox:IsVisible() then
		local playerTable = {}
		for pname,data in pairs(GroupHistoryLogTable[3]) do
			table.insert(playerTable, {data[3],ceil(data[3]/data[5]),data[4],ceil(data[4]/data[5]),pname,data[1],data[2],strlen(pname)+strlen(data[1])})
		end
		if GF_PerCharVariables.dpsmetersenddamage then table.sort(playerTable, function(a,b) return a[1]>b[1] end) else table.sort(playerTable, function(a,b) return a[3]>b[3] end) end
		for i=1, getn(playerTable) do
			if GF_PerCharVariables.dpsmetersenddamage then
				--SendChatMessage("|cff"..(GF_ClassColors[playerTable[i][7]] or "9d9d9d").."|Hplayer:"..playerTable[i][5].."|h["..playerTable[i][5]..", "..playerTable[i][6].."]|h|r"..strsub("-------------------------",1,-(strlen(playerTable[i][1]) + playerTable[i][8])).." "..playerTable[i][1].." "..GF_DAMAGE.." ... "..playerTable[i][2].." "..GF_DPS,ChatEdit_GetActiveWindow():GetAttribute("chatType"),nil,ChatEdit_GetActiveWindow():GetAttribute("chatType") == "WHISPER" and ChatEdit_GetActiveWindow():GetAttribute("tellTarget") or ChatEdit_GetActiveWindow():GetAttribute("channelTarget"))
			else
				--SendChatMessage("|cff"..(GF_ClassColors[playerTable[i][7]] or "9d9d9d").."|Hplayer:"..playerTable[i][5].."|h["..playerTable[i][5]..", "..playerTable[i][6].."]|h|r"..strsub("-------------------------",1,-(strlen(playerTable[i][3]) + playerTable[i][8])).." "..playerTable[i][3].." "..GF_HEALING.." ... "..playerTable[i][4].." "..GF_HPS,ChatEdit_GetActiveWindow():GetAttribute("chatType"),nil,ChatEdit_GetActiveWindow():GetAttribute("chatType") == "WHISPER" and ChatEdit_GetActiveWindow():GetAttribute("tellTarget") or ChatEdit_GetActiveWindow():GetAttribute("channelTarget"))
			end
			if i == 5 then break end
		end
	end
end

function print(msg) -- I added this only temporarily so I could work on the addon without having to turn on other addons(reload faster)
	if msg == nil then
		DEFAULT_CHAT_FRAME:AddMessage("nil",1,1,0.5)
	elseif not msg then
		DEFAULT_CHAT_FRAME:AddMessage("false",1,1,0.5)
	elseif type(msg) == "table" then
		DEFAULT_CHAT_FRAME:AddMessage("table",1,1,0.5)
	elseif type(msg) == "boolean" then
		DEFAULT_CHAT_FRAME:AddMessage("true",1,1,0.5)
	else
		DEFAULT_CHAT_FRAME:AddMessage(msg,1,1,0.5)
	end
end
function GetModifiedQuestName(arg1,renamedungeon)
	local strPos,tPos,pVal,tVal,stringA,stringB,stringC,stringD
	local TableA,tLen = GF_ProcessStringToTable(arg1,nil,true)
	if tLen == 0 then return {} end
	tLen = getn(TableA)
	for i=1, tLen,2 do TableA[i] = TableA[i][2] end

	tPos = 1
	while tPos <= tLen do
		if type(TableA[tPos]) == "table" then
			tVal = getn(TableA[tPos])
			pos = 1 -- To detect word/word with no space(eg "lfgscholo" = lfg scholo) and fix single words
			while pos <= tVal do
				stringA = TableA[tPos][pos]
				if GF_PUNCTUATION_NO_SPACE[strbyte(stringA)] then
					if GF_PUNCTUATION_REMOVE[stringA] then
						table.remove(TableA[tPos],pos)
						if TableA[tPos][pos-1] == "" then
							table.remove(TableA[tPos],pos-1)
							if TableA[tPos][pos] and TableA[tPos][pos-1] == "" and GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos-2]..TableA[tPos][pos]] then -- Combine previous
								TableA[tPos][pos-2] = GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos-2]..TableA[tPos][pos]]
								table.remove(TableA[tPos],pos)
								if TableA[tPos][pos-1] == "" then table.remove(TableA[tPos],pos-1) else table.remove(TableA[tPos],pos+1) end
								tVal = tVal - 2
							end
						else
							table.remove(TableA[tPos],pos+1)
						end
						tVal = tVal - 2
					elseif TableA[tPos][pos+2] then
						if GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos+2]] then TableA[tPos][pos+2] = GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos+2]] end
						stringC = GF_WORD_FIX[TableA[tPos][pos-2]] and GF_WORD_FIX[TableA[tPos][pos-2]] or TableA[tPos][pos-2] -- stringC is previous word and already "fixed"
						stringD = GF_WORD_FIX[TableA[tPos][pos+2]] and GF_WORD_FIX[TableA[tPos][pos+2]] or TableA[tPos][pos+2] 
						stringB = stringA..stringD -- PL >> "10x", "3rd, "10+"
						if GF_WORD_SPECIAL_COMBINATION[stringB] then -- Check current plus next... If match, replace word at pos then delete pos+1 and pos+2... Pos proceeds forward.
							TableA[tPos][pos] = GF_WORD_SPECIAL_COMBINATION[stringB]
							table.remove(TableA[tPos],pos+1) table.remove(TableA[tPos],pos+1)
							tVal = tVal - 2
							if TableA[tPos][pos-1] == "" then TableA[tPos][pos-1] = " " end -- #/letter replaced with letter... so need space before not after.
						elseif stringC then
							stringB = stringC..stringB -- LPL >> "g2g"
							if GF_WORD_SPECIAL_COMBINATION[stringB] then -- Check previous, current, and next... If match, replace word at pos-2, delete pos-1,pos,pos+1,pos+2, leave pos in same position.
								TableA[tPos][pos-2] = GF_WORD_SPECIAL_COMBINATION[stringB]
								table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos-1)
								pos = pos - 2
								tVal = tVal - 4
							else -- Not PL or LPL.. But have both pos-2 and pos+2.. Check LP
								stringB = stringC..stringA -- LP >> "k10", "sum1", "an1"
								if GF_WORD_SPECIAL_COMBINATION[stringB] then -- Check previous and current... If match, replace word at pos, delete pos-1,pos, leave pos in same position.
									TableA[tPos][pos-2] = GF_WORD_SPECIAL_COMBINATION[stringB]
									table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos-1)
									pos = pos - 2
									tVal = tVal - 2
									if TableA[tPos][pos+1] == "" then TableA[tPos][pos+1] = " " end
								elseif tonumber(stringA) then -- "10g" = "xgold"... "2xBM" = "2x BM"
									if GF_WORD_NUMBER_NAMES[stringD] then -- This is a number. Check for gold-related words after... If match, replace word at pos, delete pos+1,pos+2, leave pos in same position.
										TableA[tPos][pos+2] = GF_WORD_NUMBER_NAMES[stringD]
										pos = pos + 2
									elseif strbyte(stringD,1) == 120 then -- "2xBM" = "2x BM"
										stringD = strsub(stringD,2)
										if GF_WORD_FIX_SINGLE_WORD[stringD] then stringD = GF_WORD_FIX_SINGLE_WORD[stringD] elseif GF_WORD_FIX_BEFORE_QUEST[stringD] then stringD = GF_WORD_FIX_BEFORE_QUEST[stringD] elseif GF_WORD_FIX[stringD] then stringD = GF_WORD_FIX[stringD] end
										if GF_GROUP_IDS[stringD] and GF_WORD_LETTER_NUMBER_BEFORE_AFTER[stringA.."x"] then
											TableA[tPos][pos] = GF_WORD_LETTER_NUMBER_BEFORE_AFTER[stringA.."x"]
											TableA[tPos][pos+2] = stringD
											if TableA[tPos][pos+1] == "" then TableA[tPos][pos+1] = " " end
										end
									elseif strbyte(stringC,-1) == 120 then -- "BMx2" = "BM x2"
										stringC = strsub(stringC,1,-2)
										if GF_WORD_FIX_BEFORE_QUEST[stringC] then stringC = GF_WORD_FIX_BEFORE_QUEST[stringC] elseif GF_WORD_FIX[stringC] then stringC = GF_WORD_FIX[stringC] end
										if GF_GROUP_IDS[stringC] and GF_WORD_LETTER_NUMBER_BEFORE_AFTER["x"..stringA] then
											TableA[tPos][pos] = GF_WORD_LETTER_NUMBER_BEFORE_AFTER["x"..stringA]
											TableA[tPos][pos-2] = stringC
											if TableA[tPos][pos-1] == "" then TableA[tPos][pos-1] = " " end
										end
									elseif stringC == "+" and GF_WORD_LETTER_NUMBER_BEFORE_AFTER["+"..stringA] then -- "+2 deadmines" = "invite deadmines"
										if GF_WORD_FIX_SINGLE_WORD[stringD] then stringD = GF_WORD_FIX_SINGLE_WORD[stringD] elseif GF_WORD_FIX_BEFORE_QUEST[stringD] then stringD = GF_WORD_FIX_BEFORE_QUEST[stringD] elseif GF_WORD_FIX[stringD] then stringD = GF_WORD_FIX[stringD] end
										if GF_GROUP_IDS[stringD] then
											TableA[tPos][pos-2] = GF_WORD_LETTER_NUMBER_BEFORE_AFTER["+"..stringA]
											TableA[tPos][pos+2] = stringD
											table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos-1)
											pos = pos - 2
											tVal = tVal - 2
											if TableA[tPos][pos-3] == "" then TableA[tPos][pos-3] = " " end
										end
									end
								elseif stringA == ":" or stringA == "-" then -- "k:10"
									stringB = stringC..stringD
									if GF_WORD_SPECIAL_COMBINATION[stringB] then -- Check previous and next... If match, replace word at pos-2, delete pos-1,pos,pos+1,pos+2, leave pos in same position.
										TableA[tPos][pos-2] = GF_WORD_SPECIAL_COMBINATION[stringB]
										table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos-1)
										pos = pos - 2
										tVal = tVal - 4
									end
								elseif stringA == "+" then -- "deadmines+"
									if GF_GROUP_IDS[stringC] then
										TableA[tPos][pos] = GF_PLUS_LOCALIZED
										if TableA[tPos][pos+1] == "" then TableA[tPos][pos+1] = " " end if TableA[tPos][pos-1] == "" then TableA[tPos][pos-1] = " " end
									end
								end
							end
						else -- nothing before, so only check after
							if tonumber(stringA) then -- "10g" = "xgold"... "2xBM" = "2x BM"
								if GF_WORD_NUMBER_NAMES[stringD] then -- This is a number. Check for gold-related words after... If match, replace word at pos, delete pos+1,pos+2, leave pos in same position.
									TableA[tPos][pos+2] = GF_WORD_NUMBER_NAMES[stringD]
									pos = pos + 2
								elseif strbyte(stringD,1) == 120 then -- "2xBM" = "2x BM"
									stringD = strsub(stringD,2)
									if GF_WORD_FIX_SINGLE_WORD[stringD] then stringD = GF_WORD_FIX_SINGLE_WORD[stringD] elseif GF_WORD_FIX_BEFORE_QUEST[stringD] then stringD = GF_WORD_FIX_BEFORE_QUEST[stringD] elseif GF_WORD_FIX[stringD] then stringD = GF_WORD_FIX[stringD] end
									if GF_GROUP_IDS[stringD] and GF_WORD_LETTER_NUMBER_BEFORE_AFTER[stringA.."x"] then
										TableA[tPos][pos] = GF_WORD_LETTER_NUMBER_BEFORE_AFTER[stringA.."x"]
										TableA[tPos][pos+2] = stringD
										if TableA[tPos][pos+1] == "" then TableA[tPos][pos+1] = " " end
									end
								end
							end
						end
					elseif TableA[tPos][pos-2] then -- Nothing after, so only check before.
						stringC = GF_WORD_FIX[TableA[tPos][pos-2]] and GF_WORD_FIX[TableA[tPos][pos-2]] or TableA[tPos][pos-2]
						stringB = stringC..stringA -- LP >> "k10", "sum1", "an1"
						if GF_WORD_SPECIAL_COMBINATION[stringB] then -- Check previous and current... If match, replace word at pos, delete pos-1,pos, leave pos in same position.
							TableA[tPos][pos-2] = GF_WORD_SPECIAL_COMBINATION[stringB]
							table.remove(TableA[tPos],pos) table.remove(TableA[tPos],pos-1)
							pos = pos - 2
							tVal = tVal - 2
							if TableA[tPos][pos+1] == "" then TableA[tPos][pos+1] = " " end
						elseif tonumber(stringA) then -- "10g" = "xgold"... "2xBM" = "2x BM"
							if strbyte(stringC,-1) == 120 then -- "BMx2" = "BM x2"
								stringC = strsub(stringC,1,-2)
								if GF_WORD_FIX_SINGLE_WORD[stringC] then stringC = GF_WORD_FIX_SINGLE_WORD[stringC] elseif GF_WORD_FIX_BEFORE_QUEST[stringC] then stringC = GF_WORD_FIX_BEFORE_QUEST[stringC] elseif GF_WORD_FIX[stringC] then stringC = GF_WORD_FIX[stringC] end
								if GF_GROUP_IDS[stringC] and GF_WORD_LETTER_NUMBER_BEFORE_AFTER["x"..stringA] then
									TableA[tPos][pos] = GF_WORD_LETTER_NUMBER_BEFORE_AFTER["x"..stringA]
									TableA[tPos][pos-2] = stringC
									if TableA[tPos][pos-1] == "" then TableA[tPos][pos-1] = " " end
								end
							end
						elseif stringA == "+" then -- "deadmines+"
							if GF_GROUP_IDS[stringC] then
								TableA[tPos][pos] = GF_PLUS_LOCALIZED
								if TableA[tPos][pos+1] == "" then TableA[tPos][pos+1] = " " end if TableA[tPos][pos-1] == "" then TableA[tPos][pos-1] = " " end
							end
						end
					end
				elseif GF_WORD_FIX_SINGLE_WORD[stringA] then
					TableA[tPos][pos] = GF_WORD_FIX_SINGLE_WORD[stringA]
				elseif not GF_WORD_REP_RIGHT[stringA] then
					pVal = strlen(stringA) - 1
					if pVal > 3 then 
						if pVal > 11 then pVal = 11 end
						for i=3, pVal do
							if GF_WORD_REP_LEFT[strsub(stringA,1,i)] then -- Found word starting at 1 and ending with i
								if pVal > i+3 and GF_WORD_REP_RIGHT[strsub(stringA,1,i+3)] then -- This is to detect S, ER, ING after
									TableA[tPos][pos] = strsub(stringA,1,i+3)
									table.insert(TableA[tPos],pos+1,strsub(stringA,i+4))
								elseif pVal > i+2 and GF_WORD_REP_RIGHT[strsub(stringA,1,i+2)] then
									TableA[tPos][pos] = strsub(stringA,1,i+2)
									table.insert(TableA[tPos],pos+1,strsub(stringA,i+3))
								elseif pVal > i+1 and GF_WORD_REP_RIGHT[strsub(stringA,1,i+1)] then
									TableA[tPos][pos] = strsub(stringA,1,i+1)
									table.insert(TableA[tPos],pos+1,strsub(stringA,i+2))
								else
									TableA[tPos][pos] = strsub(stringA,1,i)
									table.insert(TableA[tPos],pos+1,strsub(stringA,i+1))
								end
								table.insert(TableA[tPos],pos+1," ")
								tVal = tVal + 2
								if GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos]] then TableA[tPos][pos] = GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos]] end
								break
							elseif GF_WORD_REP_RIGHT[strsub(stringA,-i)] then -- Right
								TableA[tPos][pos] = strsub(stringA,1,-i-1)
								table.insert(TableA[tPos],pos+1,strsub(stringA,-i))
								table.insert(TableA[tPos],pos+1," ")
								tVal = tVal + 2
								if GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos]] then TableA[tPos][pos] = GF_WORD_FIX_SINGLE_WORD[TableA[tPos][pos]] end
								pos = pos - 2
								break
							end
						end
						if TableA[tPos][pos] == stringA then
							if GF_WORD_REP_LEFT[strsub(stringA,1,2)] then
								TableA[tPos][pos] = strsub(stringA,1,2)
								table.insert(TableA[tPos],pos+1,strsub(stringA,3))
								table.insert(TableA[tPos],pos+1," ")
							elseif GF_WORD_REP_RIGHT[strsub(stringA,-2)] then
								stringB = strsub(stringA,1,-3)
								if GF_WORD_FIX_SINGLE_WORD[stringB] then stringB = GF_WORD_FIX_SINGLE_WORD[stringB] elseif GF_WORD_FIX_BEFORE_QUEST[stringB] then stringB = GF_WORD_FIX_BEFORE_QUEST[stringB] end
								if GF_WORD_QUEST[stringB] then
									TableA[tPos][pos] = stringB
									table.insert(TableA[tPos],pos+1,strsub(stringA,-2))
									table.insert(TableA[tPos],pos+1," ")
									tVal = tVal + 2
								else
									if GF_WORD_FIX[stringB] then stringB = GF_WORD_FIX[stringB] end
									if GF_WORD_DUNGEON[stringB] or GF_WORD_RAID[stringB] or GF_WORD_PVP[stringB] or GF_WORD_GROUP_BYPASS[stringB] then
										TableA[tPos][pos] = stringB
										table.insert(TableA[tPos],pos+1,strsub(stringA,-2))
										table.insert(TableA[tPos],pos+1," ")
										tVal = tVal + 2
									end
								end
							end
						end
					end
				end
				pos = pos + 2
			end
			TableA[tPos] = table.concat(TableA[tPos])
		else
			if strbyte(TableA[tPos]) == 93 then -- Should only get here on a link
				TableA[tPos] = "]"
			else
				_,_,stringA = strfind(TableA[tPos],"|H(%a+)")
				if stringA then
					TableA[tPos] = "h"..stringA.."["
					if stringA == "item" then
						for _,word in pairs(TableA[tPos+1]) do
							if GF_WORD_FIX_ITEM_NAME[word] then
								TableA[tPos+1] = GF_WORD_FIX_ITEM_NAME[word]
								tPos = tPos + 1
								break
							end
						end
					end
				end
			end
		end
		tPos = tPos + 1
	end
	arg1 = " "..gsub(table.concat(TableA),"%.gg/%S+", "").." "
	TableA = {}

	strPos = 1 -- To detect space/number+/punctuation/number+/space for groups(eg "4v5" or "4/5" = group, "4=5" triggers foundLFM)
	while true do
		strPos,tPos,stringB,stringA = strfind(arg1,"[%p%s](%d%d?%s?([=/v:%-to ]+)%s?%d%d?)[%p%s]",strPos)
		if stringA then
			if stringA == " " then
				if strlen(stringB) == 5 and strsub(stringB,-1) == "9" and GF_WORD_SPECIAL_COMBINATION[stringB] then
					arg1 = strsub(arg1,1,strPos)..GF_WORD_SPECIAL_COMBINATION[stringB]..strsub(arg1,tPos)
					strPos = strPos + strlen(GF_WORD_SPECIAL_COMBINATION[stringB]) + 1
				else
					strPos = tPos
				end
			else
				stringB = gsub(stringB," ","")
				if stringA == "=" then
					strPos = tPos
				elseif stringA == "-" then
					if strlen(stringB) == 5 and strsub(stringB,-1) == "9" and GF_WORD_SPECIAL_COMBINATION[stringB] then
						arg1 = strsub(arg1,1,strPos)..GF_WORD_SPECIAL_COMBINATION[stringB]..strsub(arg1,tPos)
						strPos = strPos + strlen(GF_WORD_SPECIAL_COMBINATION[stringB]) + 1
					else
						strPos = tPos
					end
				elseif stringA == ":" then
					if strlen(stringB) == 5 and strsub(stringB,-1) == "0" then
						_,_,stringB = strfind(arg1,"^(%a+)",tPos+1)
						if GF_WORD_FIX_TIME[stringB] then
							arg1 = strsub(arg1,1,strPos)..GF_WORD_FIX_TIME[stringB]..strsub(arg1,strPos+strlen(GF_WORD_FIX_TIME[stringB])+1)
							strPos = strPos + strlen(GF_WORD_FIX_TIME[stringB]) + 1
						else
							strPos = tPos
						end
					else
						strPos = tPos
					end
				elseif GF_WORD_SPECIAL_COMBINATION[stringB] then
					arg1 = strsub(arg1,1,strPos)..GF_WORD_SPECIAL_COMBINATION[stringB]..strsub(arg1,tPos)
					strPos = strPos + strlen(GF_WORD_SPECIAL_COMBINATION[stringB]) + 1
				elseif stringA == "v" or stringA == "/" then
					arg1 = strsub(arg1,1,strPos)..GF_GROUP_OPEN_LOCALIZED..strsub(arg1,tPos)
					strPos = strPos + strlen(GF_GROUP_OPEN_LOCALIZED) + 1
				else
					strPos = tPos
				end
			end
		else
			break
		end
	end

	strPos = 1 _,tPos,stringA = string.find(arg1, "([%s%p%d]+)",strPos) strPos = tPos+1 -- Add all words to the TableA
	while true do
		strPos,tPos,stringA = strfind(arg1, "(.-)[%s%p%d]+",strPos)
		if stringA then
			if not GF_WORD_BYPASS_TRIGGER[stringA] then
				table.insert(TableA, stringA)
				strPos = tPos+1
			else
				if GF_WORD_GROUP_BYPASS[stringA] then
					if GF_WORD_GROUP_BYPASS[TableA[getn(TableA)]] then TableA[getn(TableA)] = GF_WORD_GROUP_BYPASS[TableA[getn(TableA)]] end
					stringA = GF_WORD_GROUP_BYPASS[stringA]
					_,tVal,stringB = strfind(arg1,"(.-)[%s%p%d]+",tPos+1)
					if stringB then
						if GF_WORD_GROUP_BYPASS[stringB] then
							stringB = GF_WORD_GROUP_BYPASS[stringB]
							table.insert(TableA, stringA) table.insert(TableA, stringB)
							strPos = tVal+1
							while true do
								_,tVal,stringA = strfind(arg1,"(.-)[%s%p%d]+",strPos)
								if stringA then
									if GF_WORD_GROUP_BYPASS[stringA] then
										table.insert(TableA, GF_WORD_GROUP_BYPASS[stringA])
										strPos = tVal+1
									elseif GF_WORD_GROUP_BYPASS_SECOND[stringB..stringA] then
										strPos = tVal+1
										_,tVal,stringA = strfind(arg1,"(.-)[%s%p%d]+",strPos)
										if GF_WORD_GROUP_BYPASS[stringA] then table.insert(TableA, GF_WORD_GROUP_BYPASS[stringA]) strPos = tVal+1 end
									else
										break
									end
								else
									break
								end
							end
						elseif GF_WORD_GROUP_BYPASS_SECOND[stringA..stringB] then
							_,tVal,stringB = strfind(arg1,"(.-)[%s%p%d]+",tVal+1)
							if GF_WORD_GROUP_BYPASS[stringB] then
								stringB = GF_WORD_GROUP_BYPASS[stringB]
								table.insert(TableA, stringA) table.insert(TableA, stringB)
								strPos = tVal+1
							else
								table.insert(TableA, stringA)
								strPos = tPos+1
							end
						else
							table.insert(TableA, stringA)
							strPos = tPos+1
						end
					else
						table.insert(TableA, stringA)
						break
					end
				else
					_,tVal,stringB = strfind(arg1,"(.-)[%s%p%d]+",tPos+1)
					if GF_WORD_QUEST_BYPASS[stringB] then
						table.insert(TableA, stringA) table.insert(TableA, stringB)
						strPos = tVal+1
					else
						strPos = tPos+1
					end
				end
			end
		else
			break
		end
	end
	tLen = getn(TableA)	lfs = 1
	tPos = 1
	while tPos <= tLen do
		stringA = TableA[tPos]
		if GF_WORD_FIX_BEFORE_QUEST[stringA] then
			TableA[tPos] = GF_WORD_FIX_BEFORE_QUEST[stringA]
		end
		if GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA] then
			TableA[tPos] = GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA][1]
			table.insert(TableA,tPos+1,GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA][2])
			tLen=tLen+1
			tPos = tPos + 1
		elseif GF_WORD_FIX_QUEST_DUNGEON[stringA] then
			TableA[tPos] = GF_WORD_FIX_QUEST_DUNGEON[stringA]
		end
		tPos = tPos + 1
	end
	for j=1,3 do
		tPos = 1
		while tPos+j <= tLen do
			stringA = TableA[tPos]
			for k=1, j do stringA = stringA..TableA[tPos+k] end
			if GF_WORD_FIX_BEFORE_QUEST[stringA] then
				TableA[tPos] = GF_WORD_FIX_BEFORE_QUEST[stringA]
				for k=1, j do table.remove(TableA,tPos+1) tLen=tLen-1 end
				if stringA ~= GF_WORD_FIX_BEFORE_QUEST[stringA] then
					if tPos > 1 then tPos = tPos - 2 else tPos = tPos - 1 end
				elseif tPos > 1 then
					stringB = TableA[tPos-1]
					for k=1, j do if TableA[tPos-1+k] then stringB = stringB..TableA[tPos-1+k] end end
					if GF_WORD_FIX_BEFORE_QUEST[stringB] then
						TableA[tPos-1] = GF_WORD_FIX_BEFORE_QUEST[stringB]
						for k=1, j do if TableA[tPos] then table.remove(TableA,tPos) tLen=tLen-1 end end
					end
				end
			elseif GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA] then
				TableA[tPos] = GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA][1]
				for k=1, j do table.remove(TableA,tPos+1) tLen=tLen-1 end
				table.insert(TableA,tPos+1,GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA][2]) tLen=tLen+1
				if stringA ~= GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA][1]..GF_WORD_FIX_BEFORE_QUEST_SECOND[stringA][2] then
					if tPos > 1 then tPos = tPos - 2 else tPos = tPos - 1 end
				elseif tPos > 1 then
					stringB = TableA[tPos-1]
					for k=1, j do if TableA[tPos-1+k] then stringB = stringB..TableA[tPos-1+k] end end
					if GF_WORD_FIX_BEFORE_QUEST_SECOND[stringB] then
						TableA[tPos-1] = GF_WORD_FIX_BEFORE_QUEST_SECOND[stringB][1]
						for k=1, j do if TableA[tPos] then table.remove(TableA,tPos) tLen=tLen-1 end end
						table.insert(TableA,tPos,GF_WORD_FIX_BEFORE_QUEST_SECOND[stringB][2]) tLen=tLen+1
					end
				end
			elseif renamedungeon and GF_WORD_FIX_QUEST_DUNGEON[stringA] then
				TableA[tPos] = GF_WORD_FIX_QUEST_DUNGEON[stringA]
				for k=1, j do table.remove(TableA,tPos+1) tLen=tLen-1 end
				if stringA ~= GF_WORD_FIX_QUEST_DUNGEON[stringA] then
					if tPos > 1 then tPos = tPos - 2 else tPos = tPos - 1 end
				elseif tPos > 1 then
					stringB = TableA[tPos-1]
					for k=1, j do if TableA[tPos-1+k] then stringB = stringB..TableA[tPos-1+k] end end
					if GF_WORD_FIX_QUEST_DUNGEON[stringB] then
						TableA[tPos-1] = GF_WORD_FIX_QUEST_DUNGEON[stringB]
						for k=1, j do if TableA[tPos] then table.remove(TableA,tPos) tLen=tLen-1 end end
					end
				end
			end
			tPos = tPos + 1
		end
	end
	return TableA
end
function GetModifiedWordList(arg1)
	local stringA
	local TableA = GetModifiedQuestName(arg1,true)
	local tLen = getn(TableA)

	local tPos = 1
	while tPos <= tLen do
		if TableA[tPos] then
			stringA = TableA[tPos]
			if GF_WORD_FIX[stringA] then
				stringA = GF_WORD_FIX[stringA] TableA[tPos] = stringA
			elseif GF_WORD_FIX_SECOND[stringA] then
				table.insert(TableA,tPos+1,GF_WORD_FIX_SECOND[stringA][2])
				stringA = GF_WORD_FIX_SECOND[stringA][1] TableA[tPos] = stringA
				tLen=tLen+1
			end
		end
		tPos = tPos + 1
	end
	for j=1,3 do -- Fix Words
		tPos = 1
		while tPos+j <= tLen do
			stringA = TableA[tPos]
			for k=1, j do stringA = stringA..TableA[tPos+k] end
			if GF_WORD_FIX[stringA] then
				TableA[tPos] = GF_WORD_FIX[stringA]
				for k=1, j do table.remove(TableA,tPos+1) tLen=tLen-1 end
				if stringA ~= GF_WORD_FIX[stringA] then if tPos > 1 then tPos = tPos - 2 else tPos = tPos - 1 end end
			elseif GF_WORD_FIX_SECOND[stringA] then
				TableA[tPos] = GF_WORD_FIX_SECOND[stringA][1]
				for k=1, j do table.remove(TableA,tPos+1) tLen=tLen-1 end
				table.insert(TableA,tPos+1,GF_WORD_FIX_SECOND[stringA][2]) tLen=tLen+1
				if stringA ~= GF_WORD_FIX_SECOND[stringA][1]..GF_WORD_FIX_SECOND[stringA][2] then
					if tPos > 1 then tPos = tPos - 2 else tPos = tPos - 1 end
				end
			end
			tPos = tPos + 1
		end
	end
	return TableA
end

function CompileFixedQuestZones(continue) -- /script CompileFixedQuestZones() /script CompileFixedQuestZones(true)
-- Import only 500 at a time so it doesn't lock up the parsing, and need to make sure I only have the highest-level quest
	if not continue then GF_SavedVariables.questconversion = {} end
	local counter = 0
	for entryname,wtable in pairs(GF_QUEST_CONVERT) do
		local TableA = GetModifiedQuestName(entryname)
		if not TableA[1] then print("error") return end
		local stringA = ""
		for i=1, getn(TableA) do stringA = stringA..TableA[i] end
		if not GF_SavedVariables.questconversion[stringA] then
			local meta = { ["addon"] = "PFDB" }
			local maps = pfDatabase:SearchQuest(entryname, meta)
			local zone = pfDatabase:GetBestMap(maps)
			if zone and zone < 0 then zone = GF_QUEST_CONVERT_NEGATIVE_ID[math.abs(zone)] or 0 end
			--if wtable[3] < 0 then wtable[3] = GF_QUEST_CONVERT_NEGATIVE_ID[math.abs(wtable[3])] end

			if not GF_SavedVariables.questconversion[stringA] or GF_SavedVariables.questconversion[stringA][2] < wtable[2] then
				GF_SavedVariables.questconversion[stringA] = { wtable[1],wtable[2], zone or 0}
				if TableA[getn(TableA)] == "x" then print(entryname) end
				if TableA[1] == "wanted" then
					stringA = ""
					for i=2, getn(TableA) do if TableA[i] then stringA = stringA..TableA[i] end end
					if not GF_SavedVariables.questconversion[stringA] or GF_SavedVariables.questconversion[stringA][2] < wtable[2] then GF_SavedVariables.questconversion[stringA] = { wtable[1],wtable[2], zone or 0} end
				elseif TableA[2] and TableA[3] and TableA[1]..TableA[2]..TableA[3] == "killonsight" then
					stringA = ""
					for i=4, getn(TableA) do if TableA[i] then stringA = stringA..TableA[i] end end
					if not GF_SavedVariables.questconversion[stringA] or GF_SavedVariables.questconversion[stringA][2] < wtable[2] then GF_SavedVariables.questconversion[stringA] = { wtable[1],wtable[2],zone or 0} end
				end
				counter = counter + 1
				if counter > 500 then print("stopping at 500") break end
			end
		end
	end
end
function CompileQuestTemp() -- /script CompileQuestTemp()
	GF_SavedVariables.questconversion = {}
	for entryname,wtable in pairs(GF_QUEST_CONVERT) do
		GF_SavedVariables.questconversion[entryname] = wtable
	end
end

function ImportFromPFDB() -- /script ImportFromPFDB()
	GF_SavedVariables.questconversion = {}
	for entryid,data in pairs(pfDB["quests"]["enUS-epoch"]) do
		if data.T and pfDB["quests"]["data-epoch"][entryid] and pfDB["quests"]["data-epoch"][entryid].lvl then GF_SavedVariables.questconversion[entryid] = { data.T,pfDB["quests"]["data-epoch"][entryid].lvl} end
	end
end
-- Missing a lot of quests, no coords. Need to make a table of all start/end npc's, and if have the same zone, used the shared zone
-- I can also just grab the data from the turtle website... it has "ZoneOrSort" for every quest
-- Can use that as a baseline at least, name = id/level/zoneorsort... then add endzone or objective zone(or both)
function GF_ConvertQuests(continue) -- /script GF_ConvertQuests(true) /script GF_ConvertQuests()
	if not continue then GF_SavedVariables.questconversion = {} end
	local counter = 0
	for id,qname in pairs(GF_QUEST_CONVERT) do
		if not GF_SavedVariables.questconversion[qname] and not GF_SavedVariables.questconversion[id] then
			local startZone, endZone
			if pfDB["quests"]["data-turtle"][id] then
				if pfDB["quests"]["data-turtle"][id]["start"] then
					if pfDB["quests"]["data-turtle"][id]["start"]["U"] then
						if pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["start"]["U"][1]] and pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["start"]["U"][1]]["coords"] and pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["start"]["U"][1]]["coords"][1] then
							startZone = pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["start"]["U"][1]]["coords"][1][3]
						elseif pfDB["units"]["data"][pfDB["quests"]["data"][id]["start"]["U"][1]] and pfDB["units"]["data"][pfDB["quests"]["data"][id]["start"]["U"][1]]["coords"] and pfDB["units"]["data"][pfDB["quests"]["data"][id]["start"]["U"][1]]["coords"][1] then
							startZone = pfDB["units"]["data"][pfDB["quests"]["data"][id]["start"]["U"][1]]["coords"][1][3]
						end
					elseif pfDB["quests"]["data-turtle"][id]["start"]["O"] then
						if pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["start"]["O"][1]] and pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["start"]["O"][1]]["coords"] and pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["start"]["O"][1]]["coords"][1] then
							startZone = pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["start"]["O"][1]]["coords"][1][3]
						elseif pfDB["units"]["data"][pfDB["quests"]["data"][id]["start"]["O"][1]] and pfDB["units"]["data"][pfDB["quests"]["data"][id]["start"]["O"][1]]["coords"] and pfDB["units"]["data"][pfDB["quests"]["data"][id]["start"]["O"][1]]["coords"][1] then
							startZone = pfDB["units"]["data"][pfDB["quests"]["data"][id]["start"]["O"][1]]["coords"][1][3]
						end
					end
				end
				if pfDB["quests"]["data-turtle"][id]["end"] then
					if pfDB["quests"]["data-turtle"][id]["end"]["U"] then
						if pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["end"]["U"][1]] and pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["end"]["U"][1]]["coords"] and pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["end"]["U"][1]]["coords"][1] then
							endZone = pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["end"]["U"][1]]["coords"][1][3]
						elseif pfDB["units"]["data"][pfDB["quests"]["data"][id]["end"]["U"][1]] and pfDB["units"]["data"][pfDB["quests"]["data"][id]["end"]["U"][1]]["coords"] and pfDB["units"]["data"][pfDB["quests"]["data"][id]["end"]["U"][1]]["coords"][1] then
							endZone = pfDB["units"]["data"][pfDB["quests"]["data"][id]["end"]["U"][1]]["coords"][1][3]
						end
					elseif pfDB["quests"]["data-turtle"][id]["end"]["O"] then
						if pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["end"]["O"][1]] and pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["end"]["O"][1]]["coords"] and pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["end"]["O"][1]]["coords"][1] then
							endZone = pfDB["units"]["data-turtle"][pfDB["quests"]["data-turtle"][id]["end"]["O"][1]]["coords"][1][3]
						elseif pfDB["units"]["data"][pfDB["quests"]["data"][id]["end"]["O"][1]] and pfDB["units"]["data"][pfDB["quests"]["data"][id]["end"]["O"][1]]["coords"] and pfDB["units"]["data"][pfDB["quests"]["data"][id]["end"]["O"][1]]["coords"][1] then
							endZone = pfDB["units"]["data"][pfDB["quests"]["data"][id]["end"]["O"][1]]["coords"][1][3]
						end
					end
				end
				if startZone and endZone then GF_SavedVariables.questconversion[qname] = { id, pfDB["quests"]["data-turtle"][id]["lvl"], startZone, endZone, pfDatabase:GetBestMap(pfDatabase:SearchQuestID(id)) } else GF_SavedVariables.questconversion[id] = qname end
			else
				GF_SavedVariables.questconversion[id] = qname
			end
			counter = counter + 1
			if counter > 1000 then print("stopping at 1000") break end
		end
	end
end
--function GF_CleanupQuests() -- /script GF_CleanupQuests()
	--for id,qname in pairs(GF_QUEST_CONVERT) do
	--end
--end

function GF_SearchQuestID(id) -- /script GF_SearchQuestID(6)
	local maps = {["start"] = {},["end"] = {},["obj"] = {},}
	if not pfDB["quests"]["data"][id] then return end
	if pfDB["quests"]["data"][id]["start"] then
		if pfDB["quests"]["data"][id]["start"]["U"] then -- Unit
			for _,unitid in pairs(pfDB["quests"]["data"][id]["start"]["U"]) do
				for _,data in pairs(pfDB["units"]["data"][unitid]["coords"]) do
					local _,_,zone = unpack(data)
					if zone > 0 then
						maps["start"][zone] = zone
					end
				end
			end
		elseif pfDB["quests"]["data"][id]["start"]["O"] then -- Object
			for _,objectid in pairs(pfDB["quests"]["data"][id]["start"]["O"]) do
				for _,data in pairs(pfDB["units"]["data"][objectid]["coords"]) do
					local _,_,zone = unpack(data)
					if zone > 0 then
						maps["start"][zone] = zone
					end
				end
			end
		end
	end
	if pfDB["quests"]["data"][id]["end"] then
		if pfDB["quests"]["data"][id]["end"]["U"] then -- Unit
			for _,unitid in pairs(pfDB["quests"]["data"][id]["end"]["U"]) do
				for _,data in pairs(pfDB["units"]["data"][unitid]["coords"]) do
					local _,_,zone = unpack(data)
					if zone > 0 then
						maps["end"][zone] = zone
					end
				end
			end
		end
		if pfDB["quests"]["data"][id]["end"]["O"] then -- Object
			for _,objectid in pairs(pfDB["quests"]["data"][id]["end"]["O"]) do
				for _, data in pairs(pfDB["units"]["data"][objectid]["coords"]) do
					local _,_,zone = unpack(data)
					if zone > 0 then
						maps["end"][zone] = zone
					end
				end
			end
		end
	end
	if pfDB["quests"]["data"][id]["obj"] then
		if pfDB["quests"]["data"][id]["obj"]["U"] then -- Unit
			for _,unitid in pairs(pfDB["quests"]["data"][id]["obj"]["U"]) do
				for _,data in pairs(pfDB["units"]["data"][unitid]["coords"]) do
					local _,_,zone = unpack(data)
					if zone > 0 then
						maps["obj"][zone] = true
					end
				end
			end
		end
		if pfDB["quests"]["data"][id]["obj"]["O"] then -- Object
			for _,objectid in pairs(pfDB["quests"]["data"][id]["obj"]["O"]) do
				for _,data in pairs(pfDB["objects"]["data"][objectid]["coords"]) do
					local _,_,zone = unpack(data)
					if zone > 0 then
						maps["obj"][zone] = true
					end
				end
			end
		end
		if pfDB["quests"]["data"][id]["obj"]["I"] then -- Quest Item
			for _,itemid in pairs(pfDB["quests"]["data"][id]["obj"]["I"]) do
				if pfDB["items"]["data"][itemid]["U"] then
					for unitid,_ in pairs(pfDB["items"]["data"][itemid]["U"]) do
						for _,data in pairs(pfDB["units"]["data"][unitid]["coords"]) do
							local _,_,zone = unpack(data)
							if zone > 0 then
								maps["obj"][zone] = true
							end
						end
					end
				end
				if pfDB["items"]["data"][itemid]["O"] then
					for objectid,_ in pairs(pfDB["items"]["data"][id]["O"]) do
						for _,data in pairs(pfDB["objects"]["data"][objectid]["coords"]) do
							local _,_,zone = unpack(data)
							if zone > 0 then
								maps["obj"][zone] = true
							end
						end
					end
				end
			end
		end
		if pfDB["quests"]["data"][id]["obj"]["A"] then -- Area Trigger
			for _,areatriggerid in pairs(pfDB["quests"]["data"][id]["obj"]["A"]) do
				for _,data in pairs(pfDB["areatrigger"]["data"][areatriggerid]["coords"]) do
					local _,_,zone = unpack(data)
					if zone > 0 then
						maps["obj"][zone] = true
					end
				end
			end
		end
	end
	for qtype,data in pairs(maps) do
		for zoneid,_ in pairs(data) do
			print(qtype.." "..zoneid)
		end
	end
-- There is no zone for units within instances.
-- I would need to save all units per zone then parse priority by total number. Save as whole number(not decimal).
-- I could save start/end X/Y and zones, as well as up to three "spawns".... Combine spawns as an average. If spawns are too far away, consider it a different spawn. Count the number of averaged spawns. Give them priority.
-- If the start/end unit has no zoneID, use the base zone flag.
-- If spawns are in multiple zones, if only need 1 item then show the highest spawn
-- Show prequest name(save prequest id)

-- If NO OBJECTIVE, show base header/start/end zone if not undefined(0). If undefined, show starting and ending zone... Show Start/End X/Y coords.
-- If AREA TRIGGER, show base header/start/end zone if not undefined(0). If undefined, show base header and objective zone.
-- If OBJECTIVE...
-- If KILL QUEST, find all spawns, save per spawn type and group nearby spawns, average their location coords. Show up to four spawns. Priority is per type,
-- If INTERACT WITH OBJECT,
-- If QUEST ITEM... If vendor item, say vendor, don't show obective.
-- If ITEM FROM OBJECT,
-- If ITEM FROM UNIT,
--

-- Mapping
-- GetCurrentMapContinent() returns map continent... 1(Kalimdor) or 2(Eastern Kingdoms)... returns 0 if no continent(zoomed all the way out or map closed).
-- GetCurrentMapZone() returns current map... returns 0 if zoomed to continent level or map closed
-- Nodes on maps is done by creating a button frame on the map(use Gatherer_CreateNoteObject/GatherMainTemplate).
-- Left-click any quest adds to map. Right-click any quest completely clears map.
-- Add a quest to the map with "/gf quest/q <Name>"
end

-- pfDB["quests"]["data"][questid]... start(U({Units})/O({Objects})/I({Items})), end(U({Units})/O({Obects})), lvl(Quest Level), pre({prequest ID}), obj(U({Units})/O({Objects})/I({Items})/A({AreaTriggers}))
-- pfDB["units"]["data"][unitid]... coords({[1]={x,y,zone,meta})
-- pfDB["objects"]["data"][objectid]... coords({[1]={x,y,zone,respawn in seconds})
-- pfDB["items"]["data"][itemid]... U({UnitID/Droprate})/O/V/R(referenceloot)
-- pfDB["areatrigger"]["data"][areaid]...
function newImportFromPFDB() -- ["QuestName"]={{QuestID,PrequestID},Level,Category,{x,y,StartZoneID},{x,y,EndZoneID},{x,y,Objective1ZoneID},{x,y,Objective1ZoneID},{x,y,Objective1ZoneID},{x,y,Objective1ZoneID}...}
local questinfo = {}
--Add ZoneID for start/objectives if different than Category... Add ZoneID for end if different than start
--Ex: ["aboveandbeyond"]={{5263,5251},60,2017,{50,50,139},{50,50},{50,50}}... Objectives have same Zone as Category. Start/End have same Zone.
--Ex: ["wantedhogger"]={{176},11,12,{50,50},{50,50},{50,50}}... Objectives/Start/End all have same zone as Category.
--Ex:
--Quest Start can be a Unit(U), Object(O), or an item(I)
--Quest End can only be a Unit(U), or an Object(O).
--

-- Ex: Westfall stew... Four objectives(Items). Prioritize items in the same or closest zone... The algorithm would end up with like 4+ "clusters" for each item. Display the highest density(the highest count). Would only show Westfall.
-- EX: Rhapsody's Kalimdor Kocktail... Three objectives(Items). Prioritize items in the same or closest zone(only one zone per item)... Would need a database for zone coords/continent.

end