local GF_CurrentVersion						= 7010 -- New revisions cause a reset of basic settings

GF_SavedVariables 							= {}
GF_PerCharVariables							= {}
GF_RealmName								= GetRealmName()
GF_PlayingOnTurtle							= nil
local GF_Hardcore							= nil
local GF_WhoCooldownTime					= 10
local GF_NextAvailableWhoTime				= 0
local GF_UrgentWhoRequest					= {}
GF_WhoQueue									= {}
GF_WhoTable									= {}
GF_WhoTable[GF_RealmName]					= {}
GF_ClassWhoTable							= {}
local GF_LFGLFMData							= {}
local GF_ClassWhoQueue						= {} -- Who queue of /who searches. Searches
local GF_ClassWhoMatchingResults			= 0
local GF_GetClassWhoState					= 1
local GF_GetWhoName							= ""
local GF_GetWhoParams						= {}
local GF_GetWhoLevelRange					= 3
local GF_GetWhoResetTimer					= 900
local GF_ClassWhoRequest					= nil -- The Who Update function will search for GetWho classes. Turns off when done, or when button is clicked again, or if clicking whisper/skip button.
local GF_FriendUnknown						= {}
local GF_LFGInviteTime						= {}
local GF_RequestInviteTime					= {}
GF_LFGDescriptionEditBoxHasFocus			= { nil,0 }

GF_MessageList								= {}
GF_MessageList[GF_RealmName]				= {}
GF_BlackList								= {}
GF_BlackList[GF_RealmName]					= {}
GF_FilteredResultsList						= {}
GF_ResultsBaseListOffsetSize				= 22
GF_ResultsListOffset						= 0
GF_ResultsListOffsetSize					= GF_ResultsBaseListOffsetSize
GF_BlackListOffset							= 0
GF_NumLFGSearchButtons						= 0
GF_LogHistory								= {}
GF_LogHistory[GF_RealmName]					= {}
GF_LogFilters								= { [10]=true,["LOOT"] = true,["MONEY"] = true,["COMBAT_FACTION_CHANGE"] = true,["COMBAT_XP_GAIN"] = true,["COMBAT_HONOR_GAIN"] = true, }
GF_ConvertMessagesToLinks					= nil

local GF_OnStartupQueueURequest				= nil
local GF_AddonWhoDataToBeSentBuffer			= {}
local GF_AddonAllNamesForResponseToLogin	= {}
local GF_AddonNamesToBeSentAsARequest		= {}
local GF_AddonOPSentNamesOnLogin			= {}
local GF_AddonGroupDataToBeSentBuffer		= {}
local GF_AddonMakeAListOfGroupsForSending	= nil
local GF_AddonListOfGuildAndPartyMembersWithAddon = {}
local GF_AddonTimeSinceLastUpdate			= 0
local GF_AddonNamesFromWhoSinceLoggedOn		= {}
local GF_AddonNeedToBroadcastSomething		= nil

GF_AutoAnnounceTimer						= nil
local GF_NumPartyMembers					= 0
local GF_WasPartyLeaderBefore				= nil
local GF_PlayersCurrentlyInGroup			= {}
local GF_Friends							= {}
local GF_Guildies							= {}
local GF_CurrentNumFriends					= 0
local GF_CurrentNumGuildies					= 0
local GF_UpdateTicker						= 0
local GF_TimeTillNextBroadcast				= 5
local GF_UpdateAndRequestTimer				= 1
local GF_UpdateWhoDataViaFriendsListTimer	= 1
local GF_BlockingFriendsListUpdates			= nil
local GF_RequestWhoDataPeriodicallyTimer	= 30
GF_PlayerMessages							= {}
GF_IncomingMessagePrune						= 0
local GF_PreviousMessage					= {}
local GF_ProcessedFirstMessage				= {}
local GF_PlayerSystemMessage				= {}
local GF_MiniMapMessages					= {0,0,0,0,0,0,{}}
local GF_LogMessageCodes = { GF_LOGGED_GROUPS, GF_LOGGED_NEW, GF_LOGGED_FILTERED, GF_LOGGED_CHAT, GF_LOGGED_TRADES, GF_LOGGED_LOOT, GF_LOGGED_SPAM, GF_LOGGED_BLACKLIST, GF_LOGGED_BELOWLEVEL, GF_LOGGED_ME, GF_LOGGED_GUILD }

local GF_ChatChannelsGroups					= {}
local GF_ChatJoinedChannels					= {}
GF_WhisperLogCurrentButtonID				= 0
GF_WhisperLogCurrentButtonName				= ""
GF_WhisperLogData							= {}
GF_WhisperLogData[GF_RealmName]				= {}
GF_WhisperLogData[GF_RealmName]["Guild"]	= {}
GF_WhisperLogOffset							= 0
local GF_MessageData						= { foundIgnore = 0,foundGuild = 0,foundGuildExclusion = 0,foundLFM = 0,foundLFMPreSuf = 0,foundLFG = 0,foundLFGPreSuf = 0,foundClass = nil,foundQuest = {},foundDungeon = nil,foundRaid = nil,foundTrades = 0,foundTradesExclusion = 0,foundPvP = nil,foundDFlags = {},foundPFlags = {},foundHC = nil,foundNotHC = nil, lfmlfgName = {}, groupName = {} }
local GF_Classes							= { [GF_PRIEST]="PRIEST",[GF_MAGE]="MAGE",[GF_WARLOCK]="WARLOCK",[GF_DRUID]="DRUID",[GF_HUNTER]="HUNTER",[GF_ROGUE]="ROGUE",[GF_WARRIOR]="WARRIOR",[GF_PALADIN]="PALADIN",[GF_SHAMAN]="SHAMAN",
												["PRIEST"]=GF_PRIEST,["MAGE"]=GF_MAGE,["WARLOCK"]=GF_WARLOCK,["DRUID"]=GF_DRUID,["HUNTER"]=GF_HUNTER,["ROGUE"]=GF_ROGUE,["WARRIOR"]=GF_WARRIOR,["PALADIN"]=GF_PALADIN,["SHAMAN"]=GF_SHAMAN }
local GF_ClassColors						= {	["PRIEST"]="ffffff",["MAGE"]="68ccef",["WARLOCK"]="9382c9",["DRUID"]="ff7c0a",["HUNTER"]="aad372",["ROGUE"]="fff468",["WARRIOR"]="c69b6d",["PALADIN"]="f48cba",["SHAMAN"]="0070dd" }
local GF_ClassIDs = { "PRIEST", "MAGE", "WARLOCK", "DRUID", "HUNTER", "ROGUE", "WARRIOR", "PALADIN", "SHAMAN", ["PRIEST"]=1,["MAGE"]=2,["WARLOCK"]=3,["DRUID"]=4,["HUNTER"]=5,["ROGUE"]=6,["WARRIOR"]=7,["PALADIN"]=8,["SHAMAN"]=9 }
local GF_TextColors = { ["SYSTEM"] = {1,1,0},["SAY"] = {1,1,1},["YELL"] = {1,0.251,0.251},["CHANNEL"] = {1,0.753,0.753},["GUILD"] = {0.251,1,0.251},["OFFICER"] = {0.251,0.753,0.251},["WHISPER"] = {1,0.502,1},["WHISPER_INFORM"] = {1,0.502,1},
["PARTY"] = {0.667,0.667,1},["RAID"] = {1,0.498,0},["RAID_LEADER"] = {1,0.859,0.718},["RAID_WARNING"] = {1,0.859,0.718},["BATTLEGROUND"] = {1,0.498,0},["BATTLEGROUND_LEADER"] = {1,0.859,0.7176},["LOOT"] = {0,0.667,0},["MONEY"] = {1,1,0},
["EMOTE"] = {1,0.502,0.251},["TEXT_EMOTE"] = {1,0.502,0.251},["COMBAT_FACTION_CHANGE"] = {0.502,0.502,1},["COMBAT_XP_GAIN"] = {0.4353,0.4353,1},["COMBAT_HONOR_GAIN"] = {0.8784,0.792,0.0392},["MONSTER_SAY"] = {1,1,1},
["MONSTER_EMOTE"] = {1,0.502,0.251},["MONSTER_YELL"] = {1,0.251,0.251},["HARDCORE"] = {0.902,0.8,0.502} } --["HARDCORE"] = {0.651,0.6,0.451} }
local EventIDAlias = { ["SAY"] = "[S]",["YELL"] = "[Y]",["GUILD"] = "[G]",["OFFICER"] = "[O]",["WHISPER"] = "",["WHISPER_INFORM"] = "[To]",["PARTY"] = "[P]",["RAID"] = "[R]",["RAID_LEADER"] = "[RL]",["RAID_WARNING"] = "[RW]",
["BATTLEGROUND"] = "[BG]",["BATTLEGROUND_LEADER"] = "[BL]",}
local GF_TextBypassChatNameAlias = { ["OFFICER"] = "GUILD",["RAID"] = "PARTY",["RAID_LEADER"] = "PARTY",["RAID_WARNING"] = "PARTY",["BATTLEGROUND"] = "PARTY",["BATTLEGROUND_LEADER"] = "PARTY",["WHISPER_INFORM"] = "WHISPER", ["HARDCORE"] = "PARTY",}
local GF_LootFilter = { ["MONEY"] = true,["LOOT"] = true,["COMBAT_FACTION_CHANGE"] = true,["COMBAT_XP_GAIN"] = true,["COMBAT_HONOR_GAIN"] = true }
local ThingsToHide = { "GF_MainFrameCloseButton","GF_GroupChatOptionsFrame","GF_ShowSearchButton","GF_SettingsFrameButton","GF_ShowBlacklistButton","GF_LogFrameButton","GF_AnnounceToLFGButton",
"GF_LogBottomButton","GF_LogDownButton","GF_LogUpButton","GF_LogFilterDropdownButton","GF_LogChannelFilterDropdownButton","GF_LogShowWhisperHistory","GF_ConvertLogMessagesToURL",
"GF_GetWhoFrame","GF_LFGFrame","GF_MessageFrame","GF_LogFilterDropdownMenu","GF_GroupFilterDropdownMenu","GF_ChatFilterDropdownMenu","GF_LFGHardCoreDropdown","GF_GroupChannelName","GF_BlockList","GF_AutoBlacklistDropdownMenu", }
local GF_DifficultyColors = { ["RED"] = "ff0000",["ORANGE"] = "ff8040",["YELLOW"] = "ffff00",["GREEN"] = "1eff00",["GREY"] = "808080", }
local GF_TankClasses						= {	["DRUID"]=true,["WARRIOR"]=true,["PALADIN"]=true,["SHAMAN"]=true }
local GF_HealingClasses						= {	["PRIEST"]=true,["DRUID"]=true,["PALADIN"]=true,["SHAMAN"]=true }

local self = CreateFrame'Frame'
self:Hide()
self:SetScript('OnUpdate', function() GF_OnUpdate() end)
self:SetScript('OnEvent', function() this[event](this) end)
self:RegisterEvent("ADDON_LOADED")
GF_IconMovingFrame = CreateFrame'Frame'
GF_IconMovingFrame:Hide()
GF_IconMovingFrame:SetScript('OnUpdate', function() GF_IconDraggingOnUpdate() end)
function GF_LoadVariables()
	if not GF_MessageList then GF_MessageList = {} end
	if not GF_MessageList[GF_RealmName] then GF_MessageList[GF_RealmName] = {} end
	if not GF_BlackList then GF_BlackList = {} end
	if not GF_BlackList[GF_RealmName] then GF_BlackList[GF_RealmName] = {} end
	if not GF_LogHistory[GF_RealmName] then GF_LogHistory[GF_RealmName] = {} end
	if not GF_WhoTable then GF_WhoTable = {} end
	if not GF_WhoTable[GF_RealmName] then GF_WhoTable[GF_RealmName] = {} end
	if not GF_WhoTable[GF_RealmName]["LOADED"] then GF_WhoTable[GF_RealmName]["LOADED"] = { UnitLevel("player"), ({UnitClass("player")})[2], "", time() - 1 } end
	if not GF_WhisperLogData then GF_WhisperLogData = {} end
	if not GF_WhisperLogData[GF_RealmName] then GF_WhisperLogData[GF_RealmName] = {} table.insert(GF_WhisperLogData[GF_RealmName], "Guild") end
	if not GF_WhisperLogData[GF_RealmName]["Guild"] then GF_WhisperLogData[GF_RealmName]["Guild"] = {""} end
	if not GF_PreviousMessage then GF_PreviousMessage = {} end
	if not GF_PlayerMessages then GF_PlayerMessages = {} end

	if not GF_SavedVariables then GF_SavedVariables = {} end
	if not GF_SavedVariables.version or GF_SavedVariables.version < GF_CurrentVersion then
		GF_SavedVariables.version = GF_CurrentVersion
		if not GF_SavedVariables.addonsendtimeout then GF_SavedVariables.addonsendtimeout = 0 end

		if not GF_SavedVariables.showgroupsinchat then GF_SavedVariables.showgroupsinchat = true end
		if not GF_SavedVariables.showgroupsnewonly then GF_SavedVariables.showgroupsnewonly = false end
		if not GF_SavedVariables.showgroupsinminimap then GF_SavedVariables.showgroupsinminimap = false end
		if not GF_SavedVariables.showchattexts then GF_SavedVariables.showchattexts = true end
		if not GF_SavedVariables.showtradestexts then GF_SavedVariables.showtradestexts = true end
		if not GF_SavedVariables.showloottexts then GF_SavedVariables.showloottexts = true end
		if not GF_SavedVariables.showguilds then GF_SavedVariables.showguilds = true end
		if not GF_SavedVariables.usewhoongroups then GF_SavedVariables.usewhoongroups = false end

		if not GF_SavedVariables.showdungeons then GF_SavedVariables.showdungeons = true end
		if not GF_SavedVariables.showraids then GF_SavedVariables.showraids = true end
		if not GF_SavedVariables.showquests then GF_SavedVariables.showquests = true end
		if not GF_SavedVariables.showother then GF_SavedVariables.showother = true end
		if not GF_SavedVariables.showlfm then GF_SavedVariables.showlfm = true end
		if not GF_SavedVariables.showlfg then GF_SavedVariables.showlfg = true end

		if not GF_SavedVariables.announcetimer then GF_SavedVariables.announcetimer = 300 end

		if not GF_SavedVariables.logshowgroup then GF_SavedVariables.logshowgroup = true end
		if not GF_SavedVariables.logshowfiltered then GF_SavedVariables.logshowfiltered = true end
		if not GF_SavedVariables.logshowchat then GF_SavedVariables.logshowchat = true end
		if not GF_SavedVariables.logshowtrades then GF_SavedVariables.logshowtrades = true end
		if not GF_SavedVariables.logshowloot then GF_SavedVariables.logshowloot = true end
		if not GF_SavedVariables.logshowguilds then GF_SavedVariables.logshowguilds = true end
		if not GF_SavedVariables.logshowspam then GF_SavedVariables.logshowspam = true end
		if not GF_SavedVariables.logshowblacklist then GF_SavedVariables.logshowblacklist = true end
		if not GF_SavedVariables.logshowbelowlevel then GF_SavedVariables.logshowbelowlevel = true end
		if not GF_SavedVariables.showwhisperlogs then GF_SavedVariables.showwhisperlogs = false end

		if not GF_SavedVariables.logchannels then GF_SavedVariables.logchannels = true end
		if not GF_SavedVariables.logparty then GF_SavedVariables.logparty = true end
		if not GF_SavedVariables.logguild then GF_SavedVariables.logguild = true end
		if not GF_SavedVariables.logwhisper then GF_SavedVariables.logwhisper = true end
		if not GF_SavedVariables.logsay then GF_SavedVariables.logsay = true end
		if not GF_SavedVariables.logyell then GF_SavedVariables.logyell = true end
		if not GF_SavedVariables.loghardcore then GF_SavedVariables.loghardcore = true end

		if not GF_SavedVariables.joinworld then GF_SavedVariables.joinworld = true end
		if not GF_SavedVariables.spamfilter then GF_SavedVariables.spamfilter = true end
		if not GF_SavedVariables.spamfilterduration then GF_SavedVariables.spamfilterduration = 15 end
		if not GF_SavedVariables.systemfilter then GF_SavedVariables.systemfilter = false end
		if not GF_SavedVariables.autoblacklist then GF_SavedVariables.autoblacklist = true end
		if not GF_SavedVariables.autoblacklistminlevel then GF_SavedVariables.autoblacklistminlevel = 12 end
		if not GF_SavedVariables.showformattedchat then GF_SavedVariables.showformattedchat = false end
		if not GF_SavedVariables.alwaysshowguild then GF_SavedVariables.alwaysshowguild = true end
		if not GF_SavedVariables.blockmessagebelowlevel then GF_SavedVariables.blockmessagebelowlevel = 1 end

		if not GF_SavedVariables.grouplistingduration then GF_SavedVariables.grouplistingduration = 30 end
		if not GF_SavedVariables.showgroupsnewonlytime then GF_SavedVariables.showgroupsnewonlytime = 3 end
		if not GF_SavedVariables.FilterLevel then GF_SavedVariables.FilterLevel = 2 end
		if not GF_SavedVariables.MainFrameUIScale then GF_SavedVariables.MainFrameUIScale = 1 end
		if not GF_SavedVariables.MainFrameTransparency then GF_SavedVariables.MainFrameTransparency = 1 end
		if not GF_SavedVariables.MinimapIconXPos then GF_SavedVariables.MinimapIconXPos = 11 end
		if not GF_SavedVariables.MinimapIconYPos then GF_SavedVariables.MinimapIconYPos = -72 end
		if not GF_SavedVariables.squareminimap then GF_SavedVariables.squareminimap = false end
		if not GF_SavedVariables.MinimapMsgArcOffset then GF_SavedVariables.MinimapMsgArcOffset = 345 end
		if not GF_SavedVariables.MinimapMsgRadiusOffset then GF_SavedVariables.MinimapMsgRadiusOffset = 90 end

		if not GF_SavedVariables.questmod then GF_SavedVariables.questmod = true end
		if not GF_SavedVariables.purgepfdb then GF_SavedVariables.purgepfdb = false end

		if not GF_SavedVariables.MainFrameXPos or not GF_SavedVariables.MainFrameYPos then
			local _,_,_,xpos, ypos = GF_MainFrame:GetPoint()
			GF_SavedVariables.MainFrameXPos = xpos
			GF_SavedVariables.MainFrameYPos = ypos
		end

		if not GF_SavedVariables.mainframestatus then GF_SavedVariables.mainframestatus = 0 end -- status is 0(normal), 1(left), or 2(right)... save window position and restore
		if not GF_SavedVariables.mainframeheight then GF_SavedVariables.mainframeheight = false end
		if not GF_SavedVariables.mainframewidth then GF_SavedVariables.mainframewidth = true end
		if not GF_SavedVariables.mainframelogisopen then GF_SavedVariables.mainframelogisopen = false end -- whether it was last opened to logs or to group frame, for reloading
		if not GF_SavedVariables.mainframeishidden then GF_SavedVariables.mainframeishidden = true end -- if not hidden on login, show

		if not GF_SavedVariables.logshowwhisperwindow then GF_SavedVariables.logshowwhisperwindow = true end

		if not GF_SavedVariables.groupchannelname then if GF_KNOWN_SERVERS_LIST[GF_RealmName] then GF_SavedVariables.groupchannelname = GF_WORLD_CHANNEL_NAME else GF_SavedVariables.groupchannelname = GF_LFG_CHANNEL_NAME end end
		if not GF_SavedVariables.blocklist then GF_SavedVariables.blocklist = {} end

		if not GF_SavedVariables.clickcombos then GF_SavedVariables.clickcombos = true end
		if not GF_SavedVariables.usefriendslist then if GF_KNOWN_SERVERS_LIST[GF_RealmName] then GF_SavedVariables.usefriendslist = true else GF_SavedVariables.usefriendslist = false end end
		if not GF_SavedVariables.normalfonts then GF_SavedVariables.normalfonts = true end
		if not GF_SavedVariables.blacklisttrades then GF_SavedVariables.blacklisttrades = false end
		if not GF_SavedVariables.blacklistguild then GF_SavedVariables.blacklistguild = false end
		if not GF_SavedVariables.blacklistchat then GF_SavedVariables.blacklistchat = false end
		if not GF_SavedVariables.blacklistforeign then GF_SavedVariables.blacklistforeign = true end
		if not GF_SavedVariables.iconpriority then GF_SavedVariables.iconpriority = false end
		if not GF_SavedVariables.friendsToRemove then GF_SavedVariables.friendsToRemove = {} end

		if type(GF_SavedVariables.blocklist) ~= "table" then GF_SavedVariables.blocklist = {} end -- Could get rid of in final release
		for name,_ in GF_PlayerMessages do if type(GF_PlayerMessages[name][1]) ~= "table" then GF_PlayerMessages = {} break end end -- Get rid of older style PlayerMessages - Could get rid of in final release
		for i=1, getn(GF_LogHistory[GF_RealmName]) do -- Get rid of older style LogHistory entries - Could get rid of in final release
			if not GF_LogHistory[GF_RealmName][i] then break elseif not GF_LogHistory[GF_RealmName][i][3] then table.remove(GF_LogHistory[GF_RealmName],i) i = i - 1 end
		end
		for i=1, getn(GF_MessageList[GF_RealmName]) do -- Get rid of broken Messagelist entries caused by changes to the Addon sharing algorithm - Could get rid of in final release
			if not GF_MessageList[GF_RealmName][i].flags or type(GF_MessageList[GF_RealmName][i].flags) ~= "table" then GF_MessageList[GF_RealmName] = {} break end
			if not GF_MessageList[GF_RealmName][i] then break elseif tonumber(GF_MessageList[GF_RealmName][i]) then table.remove(GF_MessageList[GF_RealmName],i) i = i - 1 end
		end
		for i=1, getn(GF_WhisperLogData[GF_RealmName]) do -- Convert older style Whisper Log entries - Could get rid of in final release
			if type(GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i]][1]) ~= "table" then
				for j=1, getn(GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i]]) do
					if string.find(GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i]][j], " %[[TFrom]+%] |cff") then
						GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i]][j] = { GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i]][j], "WHISPER" }
					elseif string.find(GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i]][j], " [O] |cff",1,1) then
						GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i]][j] = { GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i]][j], "OFFICER" }
					else
						GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i]][j] = { GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i]][j], "GUILD" }
					end
				end
			end
		end
	end
	if not GF_PerCharVariables then GF_PerCharVariables = {} end
	if not GF_PerCharVariables.version or GF_PerCharVariables.version < GF_CurrentVersion then
		GF_PerCharVariables.version = GF_CurrentVersion
		if not GF_PerCharVariables.autofilter then GF_PerCharVariables.autofilter = false end
		if not GF_PerCharVariables.autofilterlevelvar then GF_PerCharVariables.autofilterlevelvar = 5 end
		if not GF_PerCharVariables.searchtext then GF_PerCharVariables.searchtext = "" end
		if not GF_PerCharVariables.searchbuttonstext then GF_PerCharVariables.searchbuttonstext = {} end
		if not GF_PerCharVariables.searchlfgtext then GF_PerCharVariables.searchlfgtext = "" end
		if not GF_PerCharVariables.searchlfgwhispertext then GF_PerCharVariables.searchlfgwhispertext = "" end
		if not GF_PerCharVariables.getwhowhisperclass then GF_PerCharVariables.getwhowhisperclass = GF_WARRIOR end
		if not GF_PerCharVariables.getwhowhisperlevel then GF_PerCharVariables.getwhowhisperlevel = 0 end
		if not GF_PerCharVariables.lfgauto then GF_PerCharVariables.lfgauto = false end
		if not GF_PerCharVariables.lfgsize or not tonumber(GF_PerCharVariables.lfgsize) then GF_PerCharVariables.lfgsize = 1 end
		if not GF_PerCharVariables.hardcore then GF_PerCharVariables.hardcore = 1 end
		if not GF_PerCharVariables.disablehardcore then GF_PerCharVariables.disablehardcore = false end

		if not GF_PerCharVariables.lfglevel then GF_PerCharVariables.lfglevel = false end
		if not GF_PerCharVariables.lfgdps then GF_PerCharVariables.lfgdps = false end
		if not GF_PerCharVariables.lfgheal then GF_PerCharVariables.lfgheal = false end
		if not GF_PerCharVariables.lfgtank then GF_PerCharVariables.lfgtank = false end

		if not GF_PerCharVariables.playsounds then GF_PerCharVariables.playsounds = false end
		if not GF_PerCharVariables.lfgshown then GF_PerCharVariables.lfgshown = false end
		if not GF_PerCharVariables.getwhoshown then GF_PerCharVariables.getwhoshown = false end
	end
	if GF_WhoTable[GF_RealmName]["LOADED"][4] + 86400 < time() then -- Prune the WhoTable once per day
		GF_WhoTable[GF_RealmName]["LOADED"] = { UnitLevel("player"), ({UnitClass("player")})[2], "", time() }
		GF_PruneTheWhoTable()
	end
	GF_LogHistory[GF_RealmName].lastLogin = time()
	if not GetGuildRosterShowOffline() then -- Hide and then redisplay the Guild Roster to trigger a scan for Guild Level/Class data
		SetGuildRosterShowOffline(true)
		SetGuildRosterShowOffline(false)
	end
	for i=1,getn(GF_SavedVariables.blocklist) do table.insert(GF_BUTTONS_LIST["BlockList"],{GF_SavedVariables.blocklist[i]}) GF_WORD_BLOCK_LIST[GF_FormatBlockListWords(GF_SavedVariables.blocklist[i])] = true end
end
function GF_LoadSettings()
	if GF_TURTLE_SERVERS_LIST[GF_RealmName] then GF_AddTurtleWoWDungeonsRaids() GF_WhoCooldownTime = 30 GF_PlayingOnTurtle = true end -- See if I'm not Turtle servers.
	for i=1, 100 do -- Look for Hardcore spell. If the spell also has "Challenge" subtext, assume it is a Turtle server.
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
	if GF_Hardcore and not GF_PerCharVariables.disablehardcore then
		GF_BUTTONS_LIST.LFGHardCore[1][4] = true
		GF_BUTTONS_LIST.LFGHardCore[2] = {GF_SHOW_HARDCORE,1,60,true,nil,true}
		GF_BUTTONS_LIST.LFGHardCore[3] = {GF_SHOW_NORMAL,1,60,nil,true,nil}
	end
	if GF_BUTTONS_LIST.LFGHardCore[GF_PerCharVariables.hardcore][4] then GF_WorldAnnounceMessageTextLabel:SetText(GF_HARDCORE_SEND_TEXT) else GF_WorldAnnounceMessageTextLabel:SetText(GF_WORLD_SEND_TEXT.." "..GF_SavedVariables.groupchannelname.." "..GF_LOG_CHANNEL) end
	GF_LFGHardCoreDropdownTextLabel:SetText(GF_BUTTONS_LIST.LFGHardCore[GF_PerCharVariables.hardcore][1])

	local VarsToSet = { GF_SavedVariables.MinimapMsgArcOffset, GF_SavedVariables.MinimapMsgRadiusOffset, GF_SavedVariables.FilterLevel, GF_SavedVariables.spamfilterduration,
	GF_SavedVariables.MainFrameTransparency,GF_SavedVariables.autoblacklistminlevel,GF_SavedVariables.blockmessagebelowlevel,GF_SavedVariables.grouplistingduration,GF_PerCharVariables.autofilterlevelvar, GF_SavedVariables.MainFrameUIScale, }
	local VarNames = { "GF_MinimapMsgArcSlider","GF_MinimapMsgRadiusSlider","GF_FilterLevelSlider","GF_FrameSpamFilterDurationSlider",
	"GF_FrameTransparencySlider","GF_FrameSpamBlacklistMinLevelSlider","GF_FrameBlockMessagesBelowLevelSlider","GF_GroupListingDurationSlider","GF_AutoFilterLevelSlider","GF_UIScaleSlider", }
	for i=1, getn(VarNames) do getglobal(VarNames[i]):SetValue(VarsToSet[i]) end

	if GF_SavedVariables.announcetimer > 600 then GF_FrameAnnounceTimerSlider:SetValue((GF_SavedVariables.announcetimer-600)/300 + 10) else	GF_FrameAnnounceTimerSlider:SetValue(GF_SavedVariables.announcetimer/60)end
	if GF_SavedVariables.showgroupsnewonlytime > 10 then GF_GroupNewTimeoutSlider:SetValue((GF_SavedVariables.showgroupsnewonlytime-10)/5 + 10) else GF_GroupNewTimeoutSlider:SetValue(GF_SavedVariables.showgroupsnewonlytime) end

	VarsToSet = { GF_SavedVariables.showgroupsinchat,GF_SavedVariables.showgroupsinminimap,GF_SavedVariables.showgroupsnewonly,GF_SavedVariables.showchattexts, GF_SavedVariables.showtradestexts, GF_SavedVariables.showloottexts,
	GF_SavedVariables.showguilds, GF_PerCharVariables.autofilter, GF_SavedVariables.showdungeons, GF_SavedVariables.showraids, GF_SavedVariables.showquests, GF_SavedVariables.showother, GF_SavedVariables.showlfm, GF_SavedVariables.showlfg,
	GF_SavedVariables.logshowgroup,	GF_SavedVariables.logshowfiltered, GF_SavedVariables.logshowchat, GF_SavedVariables.logshowtrades, GF_SavedVariables.logshowguilds, GF_SavedVariables.logshowloot, GF_SavedVariables.logshowspam,
	GF_SavedVariables.logshowblacklist,	GF_SavedVariables.logshowbelowlevel, GF_SavedVariables.joinworld, GF_SavedVariables.showformattedchat, GF_SavedVariables.usewhoongroups, GF_SavedVariables.systemfilter,GF_SavedVariables.squareminimap,
	GF_SavedVariables.spamfilter,GF_SavedVariables.autoblacklist, GF_PerCharVariables.playsounds, GF_PerCharVariables.lfgauto, GF_SavedVariables.showwhisperlogs,GF_SavedVariables.mainframeheight, GF_SavedVariables.mainframewidth,
	GF_SavedVariables.alwaysshowguild, GF_SavedVariables.questmod, GF_SavedVariables.purgepfdb, GF_SavedVariables.logchannels, GF_SavedVariables.logparty, GF_SavedVariables.logguild, GF_SavedVariables.logwhisper, GF_SavedVariables.logsay,
	GF_SavedVariables.logyell, GF_SavedVariables.loghardcore, GF_PerCharVariables.lfglevel, GF_PerCharVariables.lfgdps, GF_PerCharVariables.lfgheal, GF_PerCharVariables.lfgtank,GF_SavedVariables.clickcombos,GF_PerCharVariables.disablehardcore,
	GF_SavedVariables.usefriendslist,GF_SavedVariables.normalfonts,GF_SavedVariables.blacklisttrades,GF_SavedVariables.blacklistguild,GF_SavedVariables.blacklistchat,GF_SavedVariables.blacklistforeign,GF_SavedVariables.iconpriority, }

	VarNames = { "GF_ChatFilterGroupsInChatCheckButton","GF_ChatFilterGroupsInMinimapCheckButton","GF_ChatFilterGroupsNewOnlyCheckButton","GF_ChatFilterShowChatCheckButton","GF_ChatFilterShowTradesCheckButton","GF_ChatFilterShowLootCheckButton",
	"GF_ChatFilterShowGuildsCheckButton","GF_AutoFilterCheckButton","GF_GroupFilterShowDungeonCheckButton","GF_GroupFilterShowRaidCheckButton","GF_GroupFilterShowQuestCheckButton","GF_GroupFilterShowOtherCheckButton","GF_GroupsFrameShowLFMCheckButton",
	"GF_GroupsFrameShowLFGCheckButton","GF_LogFilterShowGroups","GF_LogFilterShowFiltered","GF_LogFilterShowChat","GF_LogFilterShowTrades","GF_LogFilterShowGuild","GF_LogFilterShowLoot","GF_LogFilterShowSpam","GF_LogFilterShowBlacklist",
	"GF_LogFilterShowBelowLevel","GF_AutoJoinGroupChannelCheckButton","GF_FrameShowFormattedChatCheckButton","GF_FrameUseWhoOnGroupsCheckButton","GF_FrameSystemFilterCheckButton","GF_SquareMinimapCheckButton","GF_FrameSpamFilterCheckButton",
	"GF_AutomaticBlacklistCheckButton","GF_PlaySoundOnResultsCheckButton","GF_GroupAutoCheckButton","GF_LogShowWhisperHistory","GF_HideMainFrameHeight","GF_HideMainFrameWidth","GF_AlwaysShowGuildFriendsCheckButton","GF_FrameQuestModCheckButton",
	"GF_PurgePFDBCheckButton","GF_LogChannelFilterChannels","GF_LogChannelFilterParty","GF_LogChannelFilterGuild","GF_LogChannelFilterWhisper","GF_LogChannelFilterSay","GF_LogChannelFilterYell","GF_LogChannelFilterHardcore",
	"GF_LFGMyRoleLevelCheckButton","GF_LFGMyRoleDPSCheckButton","GF_LFGMyRoleHealCheckButton","GF_LFGMyRoleTankCheckButton","GF_UseClickCombosCheckButton","GF_DisableHardcoreCheckButton","GF_UseFriendsListCheckButton","GF_UseNormalFontsCheckButton",
	"GF_AutoBlacklistTradesCheckButton","GF_AutoBlacklistGuildCheckButton","GF_AutoBlacklistChatCheckButton","GF_AutoBlacklistForeignCheckButton","GF_MinimapIconPriorityCheckButton", }
	for i=1, getn(VarNames) do getglobal(VarNames[i]):SetChecked(VarsToSet[i]) end

 	VarsToSet = { GF_PerCharVariables.searchtext, GF_PerCharVariables.searchlfgtext, GF_PerCharVariables.searchlfgwhispertext, GF_BUTTONS_LIST.LFGSize[GF_PerCharVariables.lfgsize][1], GF_PerCharVariables.getwhowhisperclass, GF_SavedVariables.groupchannelname }
	VarNames = { "GF_GroupsFrameDescriptionEditBox","GF_LFGDescriptionEditBox","GF_GetWhoWhisperEditBox","GF_LFGSizeDropdownTextLabel","GF_GetWhoClassDropdownTextLabel","GF_GroupChannelEditBox", }
	for i=1, getn(VarNames) do getglobal(VarNames[i]):SetText(VarsToSet[i]) end

	if GF_SearchButtonHasValues() then GF_SearchListDropdown:LockHighlight() GF_SearchListClearButton:Show() end
	if GF_PerCharVariables.searchlfgwhispertext ~= "" then GF_GetWhoClearButton:Show() end
	if GF_PerCharVariables.searchlfgtext ~= "" then GF_LFGDescriptionClearButton:Show() end
	if GF_PerCharVariables.getwhowhisperlevel == 0 then GF_GetWhoLevelDropdownTextLabel:SetText(GF_LEVEL.." "..UnitLevel("player").."±") elseif GF_PerCharVariables.getwhowhisperlevel > 60 then GF_GetWhoLevelDropdownTextLabel:SetText(GF_LEVEL.." 60±") else GF_GetWhoLevelDropdownTextLabel:SetText(GF_LEVEL.." "..GF_PerCharVariables.getwhowhisperlevel.."±") end

	GF_BUTTONS_LIST["LFGLFM"][2] = { GF_LFG_SPECS[({UnitClass("player")})[2]][1].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][3] = { GF_LFG_SPECS[({UnitClass("player")})[2]][2].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][4] = { GF_LFG_SPECS[({UnitClass("player")})[2]][3].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][5] = { UnitClass("player").." LFG", 1, 60, }

	GF_MainFrame:SetAlpha(GF_FrameTransparencySlider:GetValue())
	GF_MainFrame:SetScale(GF_UIScaleSlider:GetValue())
	if GF_SavedVariables.MainFrameXPos then GF_MainFrame:SetPoint("TOPLEFT",UIParent,"TOPLEFT", GF_SavedVariables.MainFrameXPos, GF_SavedVariables.MainFrameYPos) end
	if GF_SavedVariables.mainframestatus ~= 0 and not GF_SavedVariables.mainframeishidden then GF_ToggleMainFrame() end
	if GF_SavedVariables.purgepfdb and GF_SavedVariables.showformattedchat then pfUI_playerDB = {} end
	if GF_SavedVariables.iconpriority then if pfMinimap then GF_RelevelMinimapIcons(pfMinimap) else GF_RelevelMinimapIcons(Minimap) end end
	GF_UpdateMinimapIcon()
	GF_UpdateFriendsList()
	GF_UpdateGuildiesList()
	GF_WhisperHistoryUpdateFrame()
	GF_GetLogFilters()
	GF_DisplayLog()
	GF_PruneTheClassWhoTable()
	GF_ChatGetChannelsGroups()
	GF_SetStringSize()
	GF_SetDropdownWidths()
	GF_SetLFGRoleButtons()
end
function GF_SetStringSize()
	local fontName,fontSizeNormal,fontSizeMinimap,fontSizeLarge,fontSizeButton
	if GF_SavedVariables.normalfonts then fontName = ChatFontNormal:GetFont() else fontName = "Fonts\\ARIALN.TTF" end
	GF_UIScaleSliderLabel:SetText("Group Finder")
	GF_UIScaleSliderLabel:SetFont(fontName,12) -- 76

	if GF_UIScaleSliderLabel:GetStringWidth() > 70 then fontSizeNormal = 10 fontSizeLarge = 12 fontSizeButton = 11 fontSizeMinimap = 8
	elseif GF_UIScaleSliderLabel:GetStringWidth() > 65 then fontSizeNormal = 11 fontSizeLarge = 13 fontSizeButton = 12 fontSizeMinimap = 10
	elseif GF_UIScaleSliderLabel:GetStringWidth() > 60 then fontSizeNormal = 12 fontSizeLarge = 14 fontSizeButton = 12 fontSizeMinimap = 10
	else fontSizeNormal = 13 fontSizeLarge = 15 fontSizeButton = 13 fontSizeMinimap = 11 end
	for i=0,19 do
		getglobal("GF_WhisperHistoryButton"..i):SetFont(fontName,fontSizeLarge)
	end
	for i=1,20 do
		getglobal("GF_BlackListItem"..i.."NameLabel"):SetFont(fontName,fontSizeNormal)
		getglobal("GF_BlackListItem"..i.."NoteLabel"):SetFont(fontName,fontSizeNormal)
		getglobal("GF_BlackListItem"..i.."DeleteButton"):SetFont(fontName,fontSizeNormal)
	end
	for i=1,22 do
		getglobal("GF_NewItem"..i.."NameLabel"):SetFont(fontName,fontSizeLarge)
		getglobal("GF_NewItem"..i.."MoreLabel"):SetFont(fontName,fontSizeLarge)
		getglobal("GF_NewItem"..i.."MoreLeftLabel"):SetFont(fontName,fontSizeLarge)
		getglobal("GF_NewItem"..i.."GroupWhoButton"):SetFont(fontName,fontSizeLarge)
		getglobal("GF_NewItem"..i.."LFGInviteButton"):SetFont(fontName,fontSizeLarge)
		getglobal("GF_NewItem"..i.."LFMWhisperRequestInviteButton"):SetFont(fontName,fontSizeLarge)
	end
	local frameNames = { "GF_AutoFilterCheckButtonTextLabel","GF_PlaySoundOnResultsCheckButtonTextLabel","GF_GroupsFrameShowLFMCheckButtonTextLabel","GF_GroupsFrameShowLFGCheckButtonTextLabel","GF_LFGHardCoreDropdownTextLabel",
	"GF_ChatFilterDropdownButtonTextLabel","GF_GroupFilterDropdownButtonTextLabel","GF_FrameUseWhoOnGroupsCheckButtonTextLabel","GF_GroupsFrameDescriptionEditBoxTextLabel","GF_GetWhoClassDropdownTextLabel","GF_GetWhoLevelDropdownTextLabel",
	"GF_GroupAutoCheckButtonTextLabel","GF_LFGSizeDropdownTextLabel","GF_LFGLFMDropdownTextLabel","GF_LFGDungeonDropdownTextLabel","GF_LFGRaidDropdownTextLabel","GF_LFGRoleDropdownTextLabel","GF_LFGMyRoleLevelCheckButtonTextLabel",
	"GF_LFGMyRoleTankCheckButtonTextLabel","GF_LFGMyRoleHealCheckButtonTextLabel","GF_LFGMyRoleDPSCheckButtonTextLabel","GF_GroupFilterShowDungeonCheckButtonTextLabel","GF_GroupFilterShowRaidCheckButtonTextLabel",
	"GF_MinimapIconPriorityCheckButtonTextLabel","GF_GroupFilterShowQuestCheckButtonTextLabel","GF_GroupFilterShowOtherCheckButtonTextLabel","GF_ChatFilterGroupsInChatCheckButtonTextLabel","GF_ChatFilterGroupsNewOnlyCheckButtonTextLabel",
	"GF_ChatFilterGroupsInMinimapCheckButtonTextLabel","GF_ChatFilterShowChatCheckButtonTextLabel","GF_ChatFilterShowTradesCheckButtonTextLabel","GF_ChatFilterShowLootCheckButtonTextLabel","GF_ChatFilterShowGuildsCheckButtonTextLabel",
	"GF_LogFilterDropdownButtonTextLabel","GF_LogChannelFilterDropdownButtonTextLabel","GF_AutoJoinGroupChannelCheckButtonTextLabel","GF_FrameSpamFilterCheckButtonTextLabel","GF_FrameSystemFilterCheckButtonTextLabel",
	"GF_AutomaticBlacklistCheckButtonTextLabel","GF_FrameShowFormattedChatCheckButtonTextLabel","GF_AlwaysShowGuildFriendsCheckButtonTextLabel","GF_FrameQuestModCheckButtonTextLabel","GF_PurgePFDBCheckButtonTextLabel",
	"GF_UseClickCombosCheckButtonTextLabel","GF_UseFriendsListCheckButtonTextLabel","GF_DisableHardcoreCheckButtonTextLabel","GF_AutoBlacklistTradesCheckButtonTextLabel","GF_AutoBlacklistGuildCheckButtonTextLabel",
	"GF_AutoBlacklistChatCheckButtonTextLabel","GF_AutoBlacklistForeignCheckButtonTextLabel","GF_UseNormalFontsCheckButtonTextLabel","GF_BlockListDropdownTextLabel","GF_SquareMinimapCheckButtonTextLabel" }
	for i=1, getn(frameNames) do getglobal(frameNames[i]):SetFont(fontName,fontSizeNormal) end
	frameNames = { "GF_GetWhoTotalNames","GF_AnnounceToLFGButton","GF_GetWhoButton","GF_GetWhoSkipButton","GF_GetWhoWhisperButton","GF_GetWhoNameLabel","GF_PageLabel","GF_ResultsLabel","GF_ShowSearchButton","GF_SettingsFrameButton",
	"GF_ShowBlacklistButton","GF_LogFrameButton","GF_LFGFrameToggleButton","GF_GetWhoFrameToggleButton","GF_ConvertLogMessagesToURL","GF_UIScaleSliderUpdateButton","GF_ResetAllSettingsButton","GF_AddPlayerButton","GF_BlackListFramePageLabel", }
	for i=1, getn(frameNames) do getglobal(frameNames[i]):SetFont(fontName,fontSizeButton) end
	frameNames = {"GF_LFGMyRole","GF_WorldAnnounceMessageTextLabel","GF_ShowGroupsInLabel","GF_ShowChatTypesLabel","GF_LogShowWhisperHistoryLabel","GF_LogFrameInternalFrameTitle","GF_ShowMainFrameLabel",
	"GF_GroupChannelNameTextLabel","GF_BlockListTextLabel","GF_BlockAddListButton", }
	for i=1, getn(frameNames) do getglobal(frameNames[i]):SetFont(fontName,fontSizeLarge) end
	for i=1,6 do
		getglobal("GF_MinimapMessageFrameA"..i):SetFont(fontName,fontSizeMinimap)
		getglobal("GF_MinimapMessageFrameB"..i):SetFont(fontName,fontSizeMinimap)
	end
	GF_Log:SetFont(fontName,fontSizeLarge)
	GF_ChatFilterDropdownButton:SetPoint("TOPRIGHT", GF_MainFrameCloseButton, "BOTTOMRIGHT", -1*getglobal(GF_ChatFilterDropdownButton:GetName().."TextLabel"):GetStringWidth() -15, 6)

	frameNames = { "GF_GroupNewTimeoutSlider","GF_FilterLevelSlider","GF_MinimapMsgArcSlider","GF_UIScaleSlider","GF_FrameTransparencySlider","GF_GroupListingDurationSlider","GF_AutoFilterLevelSlider","GF_FrameAnnounceTimerSlider",
	"GF_FrameBlockMessagesBelowLevelSlider","GF_MinimapMsgRadiusSlider","GF_FrameSpamFilterDurationSlider","GF_FrameSpamBlacklistMinLevelSlider", }
	for i=1, getn(frameNames) do
		getglobal(frameNames[i].."Text"):SetFont(fontName,fontSizeNormal)
		getglobal(frameNames[i].."Label"):SetFont(fontName,fontSizeNormal)
		getglobal(frameNames[i].."High"):SetFont(fontName,fontSizeNormal)
		getglobal(frameNames[i].."Low"):SetFont(fontName,fontSizeNormal)
	end
	GF_LogFilterDropdownButton:SetPoint("LEFT", "GF_LogFrameInternalFrameTitle", "RIGHT", 5, 0)
	GF_LFGMyRoleLevelCheckButton:SetPoint("RIGHT", -1*getglobal(GF_LFGMyRoleLevelCheckButton:GetName().."TextLabel"):GetStringWidth() -2, -3)
	GF_ChatFilterDropdownButton:SetPoint("TOPRIGHT", GF_MainFrameCloseButton, "BOTTOMRIGHT", -1*getglobal(GF_ChatFilterDropdownButton:GetName().."TextLabel"):GetStringWidth() -15, 6)
	GF_UIScaleSliderLabel:SetText("")
end
function GF_FormatBlockListWords(arg1)
	arg1 = " "..string.lower(gsub(gsub(gsub(gsub(string.lower(gsub(gsub(gsub(arg1, "|[cC]%x+%p+(%w+)[%w:]+|+[hH]", " %1 >z"), "|[hr]", ""),"([a-z ][a-z])([A-Z])","%1 %2")),".gg/%w+", ""),"[\"#\$\%&\*,\.@\\\^_`~|]"," "),"'",""),"[%d%p%s]","")).." "
	local wordTable = {}
	local wordString,lfs,lfe,tempVal,tempString
	
	tempVal = 1
	while true do -- Block letter repeats
		lfs = strbyte(arg1,tempVal)
		lfe = strbyte(arg1,tempVal+1)
		if not lfe then break end
		if lfs >= 194 then
			if GF_WORD_ACCENT_ASCII_FIX[lfs] and GF_WORD_ACCENT_ASCII_FIX[lfs][lfe] then
				if lfs == strbyte(arg1,tempVal+2) and lfe == strbyte(arg1,tempVal+3) then
					table.insert(wordTable,GF_WORD_ACCENT_ASCII_FIX[lfs][lfe]) tempVal=tempVal+1 for j=1,250,2 do if lfs ~= strbyte(arg1,tempVal+j) and lfe ~= strbyte(arg1,tempVal+j+1) or not GF_WORD_ACCENT_ASCII_FIX[strbyte(arg1,tempVal+j)] or not GF_WORD_ACCENT_ASCII_FIX[strbyte(arg1,tempVal+j)][strbyte(arg1,tempVal+j+1)] then tempVal=tempVal+j-1 break end end
				else
					table.insert(wordTable,GF_WORD_ACCENT_ASCII_FIX[lfs][lfe])
					tempVal = tempVal + 1
				end
			elseif GF_WORD_ASIAN_LANGUAGES[lfs] then -- Chinese characters are always 227-239 first byte, and then two more bytes that are 128-190ish
				table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(lfe)) table.insert(wordTable,strchar(strbyte(arg1,tempVal+2)))
				tempVal=tempVal+2
			else
				table.insert(wordTable,strchar(lfs))
			end
		elseif lfs == lfe then
			if lfs >= 97 and lfs <= 122 then -- Lowercase [a-z]
				if lfs == strbyte(arg1,tempVal+2) then
					table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(lfe)) tempVal=tempVal+2 for j=1,250 do if lfs ~= strbyte(arg1,tempVal+j) then tempVal=tempVal+j-1 break end end
				else
					table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(lfe)) tempVal=tempVal+1
				end
			else
				table.insert(wordTable,strchar(lfs)) tempVal=tempVal+1 for j=1,250 do if lfs ~= strbyte(arg1,tempVal+j) then tempVal=tempVal+j-1 break end end
			end
		elseif lfe == 32 or lfe == 46 then -- Space or Period
			if (strbyte(arg1,tempVal-1) == 32 or strbyte(arg1,tempVal-1) == 46 or strbyte(arg1,tempVal-1) == 60) and (strbyte(arg1,tempVal+3) == 32 or strbyte(arg1,tempVal+3) == 46 or strbyte(arg1,tempVal+3) == 60) then
				table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(strbyte(arg1,tempVal+2))) tempVal=tempVal+2 for j=3,250,2 do if strbyte(arg1,tempVal+j) ~= 32 and strbyte(arg1,tempVal+j) ~= 46 and strbyte(arg1,tempVal+j) ~= 62 then tempVal=tempVal+j-3 break else table.insert(wordTable,strchar(strbyte(arg1,tempVal+j-1))) end end
			else
				table.insert(wordTable,strchar(lfs))
			end
		elseif lfs == strbyte(arg1,tempVal+2) and lfs == strbyte(arg1,tempVal+4) and lfs ~= 32 and lfs ~= 46 then
			if lfe == strbyte(arg1,tempVal+3) then
				table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(lfe)) table.insert(wordTable,strchar(strbyte(arg1,tempVal+2))) table.insert(wordTable,strchar(strbyte(arg1,tempVal+3))) tempVal=tempVal+3 for j=2,250 do if strbyte(arg1,tempVal+j) ~= strbyte(arg1,tempVal+j-2) then tempVal=tempVal+j-1 break end end
			else
				table.insert(wordTable,strchar(lfs))
			end
		else
			table.insert(wordTable,strchar(lfs))
		end
		tempVal = tempVal + 1
	end
	arg1 = table.concat(wordTable)
	if string.sub(arg1,-1) ~= " " then arg1 = arg1.." " end
	wordTable = {}

	lfs = 2 -- To detect word/word with no space(eg "lfgscholo" = lfg scholo)
	while true do
		lfs,lfe,wordString = string.find(arg1,"(%a%a%a%a+)",lfs)
		if wordString then
			if not GF_WORD_WORD_REPLACE[wordString] and not GF_WORD_SPECIAL_EXCEPTIONS[wordString] then
				tempVal = string.len(wordString) - 1
				if tempVal > 11 then tempVal = 11 end
				for i=tempVal, 3, -1 do
					if GF_WORD_WORD_REPLACE[string.sub(wordString,1,i)] then
						if tempVal-i > 2 and GF_WORD_SPECIAL_EXCEPTIONS[string.sub(wordString,1,i+3)] then
							arg1 = string.sub(arg1,1,lfs-1)..string.sub(wordString,1,i+3).." "..string.sub(arg1,lfs+i+3)
						elseif tempVal-i > 1 and GF_WORD_SPECIAL_EXCEPTIONS[string.sub(wordString,1,i+2)] then
							arg1 = string.sub(arg1,1,lfs-1)..string.sub(wordString,1,i+2).." "..string.sub(arg1,lfs+i+2)
						elseif tempVal-i > 0 and GF_WORD_SPECIAL_EXCEPTIONS[string.sub(wordString,1,i+1)] then
							arg1 = string.sub(arg1,1,lfs-1)..string.sub(wordString,1,i+1).." "..string.sub(arg1,lfs+i+1)
						else
							arg1 = string.sub(arg1,1,lfs-1)..string.sub(wordString,1,i).." "..string.sub(arg1,lfs+i)
						end
						lfs = lfe + 1
						break
					elseif GF_WORD_WORD_REPLACE[string.sub(wordString,-i)] then
						arg1 = string.sub(arg1,1,lfe-i).." "..string.sub(wordString,-i)..string.sub(arg1,lfe+1)
						lfs = lfs + (i-string.len(string.sub(wordString,-i))) + string.len(wordString) + 1
						break
					end
				end
				if lfs < lfe then
					if GF_WORD_WORD_REPLACE[string.sub(wordString,1,2)] then
						arg1 = string.sub(arg1,1,lfs-1)..string.sub(wordString,1,2).." "..string.sub(arg1,lfs+2)
						lfs = lfs + string.len(wordString) + 1
					elseif GF_WORD_WORD_REPLACE[string.sub(wordString,-2)] then
						wordString = string.sub(wordString,1,-3)
						if GF_WORD_FIX_SINGLE_WORD[wordString] then wordString = GF_WORD_FIX_SINGLE_WORD[wordString]
						elseif GF_WORD_FIX_BEFORE_QUEST[wordString] then wordString = GF_WORD_FIX_BEFORE_QUEST[wordString] end
						if GF_WORD_QUEST[wordString] then
							arg1 = string.sub(arg1,1,lfs-1)..wordString.." lf"..string.sub(arg1,lfe+1)
						else
							if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end
							if GF_WORD_DUNGEON[wordString] or GF_WORD_RAID[wordString] or GF_WORD_PVP[wordString] or GF_WORD_GROUP_BYPASS[wordString] then
								arg1 = string.sub(arg1,1,lfs-1)..wordString.." lf"..string.sub(arg1,lfe+1)
							end
						end
						lfs = lfs + string.len(wordString) + 3
					else
						lfs = lfe + 1
					end
				end
			else
				lfs = lfe + 1
			end
		else
			break
		end
	end
	lfs = 2 -- To fix single words
	while true do lfs,lfe,wordString,tempString = string.find(arg1, "(.-)([%s%p%d]+)",lfs) if not wordString then break elseif GF_WORD_FIX_SINGLE_WORD[wordString] then arg1 = string.sub(arg1,1,lfs-1)..GF_WORD_FIX_SINGLE_WORD[wordString]..tempString..string.sub(arg1,lfe+1) lfs = lfs + string.len(GF_WORD_FIX_SINGLE_WORD[wordString]..tempString)-1 else lfs = lfe+1 end end

	lfs = 2 -- Add all words to the wordTable
	while true do
		lfs,lfe,wordString = string.find(arg1, "(.-)[%s%p%d]+",lfs)
		if wordString then
			if strbyte(wordString) then
				if not GF_WORD_BYPASS_TRIGGER["en"][wordString] then
					table.insert(wordTable, wordString)
					lfs = lfe+1
				else
					if GF_WORD_GROUP_BYPASS[wordString] then
						_,tempVal,tempString = string.find(arg1,"(%a+)",lfe+1)
						if tempString then
							if GF_WORD_GROUP_BYPASS[tempString] then
								table.insert(wordTable, GF_WORD_GROUP_BYPASS[wordString]) table.insert(wordTable, GF_WORD_GROUP_BYPASS[tempString])
								lfs = tempVal+1
							elseif GF_WORD_GROUP_BYPASS_SECOND[wordString..tempString] then
								_,tempVal,tempString = string.find(arg1,"(%a+)",tempVal+1)
								if GF_WORD_GROUP_BYPASS[tempString] then
									table.insert(wordTable, GF_WORD_GROUP_BYPASS[wordString]) table.insert(wordTable, GF_WORD_GROUP_BYPASS[tempString])
									lfs = tempVal+1
								else
									table.insert(wordTable, wordString)
									lfs = lfe+1
								end
							else
								if GF_WORD_GROUP_BYPASS[wordTable[getn(wordTable)]] then wordTable[getn(wordTable)] = GF_WORD_GROUP_BYPASS[wordTable[getn(wordTable)]] end
								table.insert(wordTable, wordString)
								lfs = lfe+1
							end
						else
							table.insert(wordTable, wordString)
							break
						end
					else
						_,tempVal,tempString = string.find(arg1,"(%a+)",lfe+1)
						if GF_WORD_QUEST_BYPASS[tempString] then
							table.insert(wordTable, wordString) table.insert(wordTable, tempString)
							lfs = tempVal+1
						else
							lfs = lfe+1
						end
					end
				end
			else
				lfs = lfe+1
			end
		else
			break
		end
	end
	tempVal = getn(wordTable)
	for j=0,3 do -- Fix Quest Words
		lfs = 1
		while lfs <= tempVal do
			if lfs+j <= tempVal then
				wordString = wordTable[lfs]
				for k=1, j do wordString = wordString..wordTable[lfs+k] end
				if GF_WORD_FIX_BEFORE_QUEST[wordString] then
					wordTable[lfs] = GF_WORD_FIX_BEFORE_QUEST[wordString]
					for k=1, j do table.remove(wordTable,lfs+1) tempVal=tempVal-1 end
					if wordString ~= GF_WORD_FIX_BEFORE_QUEST[wordString] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[lfs-1]
						for k=1, j do if wordTable[lfs-1+k] then wordString = wordString..wordTable[lfs-1+k] end end
						if GF_WORD_FIX_BEFORE_QUEST[wordString] then
							wordTable[lfs-1] = GF_WORD_FIX_BEFORE_QUEST[wordString]
							for k=1, j do if wordTable[lfs] then table.remove(wordTable,lfs) tempVal=tempVal-1 end end
						end
					end
				elseif GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString] then
					wordTable[lfs] = GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][1]
					for k=1, j do table.remove(wordTable,lfs+1) tempVal=tempVal-1 end
					table.insert(wordTable,lfs+1,GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][2]) tempVal=tempVal+1
					if wordString ~= GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][1]..GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][2] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[lfs-1]
						for k=1, j do if wordTable[lfs-1+k] then wordString = wordString..wordTable[lfs-1+k] end end
						if GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString] then
							wordTable[lfs-1] = GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][1]
							for k=1, j do if wordTable[lfs] then table.remove(wordTable,lfs) tempVal=tempVal-1 end end
							table.insert(wordTable,lfs,GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][2]) tempVal=tempVal+1
						end
					end
				elseif GF_WORD_FIX_QUEST_DUNGEON[wordString] then
					wordTable[lfs] = GF_WORD_FIX_QUEST_DUNGEON[wordString]
					for k=1, j do table.remove(wordTable,lfs+1) tempVal=tempVal-1 end
					if wordString ~= GF_WORD_FIX_QUEST_DUNGEON[wordString] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[lfs-1]
						for k=1, j do if wordTable[lfs-1+k] then wordString = wordString..wordTable[lfs-1+k] end end
						if GF_WORD_FIX_QUEST_DUNGEON[wordString] then
							wordTable[lfs-1] = GF_WORD_FIX_QUEST_DUNGEON[wordString]
							for k=1, j do if wordTable[lfs] then table.remove(wordTable,lfs) tempVal=tempVal-1 end end
						end
					end
				end
			end
			lfs = lfs + 1
		end
	end
	for i=1, tempVal do if wordTable[i] == "x" then table.remove(wordTable,i) i = i - 1 tempVal=tempVal-1 end end
	for j=0,3 do -- Fix Words
		lfs = 1
		while lfs <= tempVal do
			if wordTable[lfs+j] then
				wordString = wordTable[lfs]
				for k=1, j do wordString = wordString..wordTable[lfs+k] end
				if GF_WORD_FIX[wordString] then
					wordTable[lfs] = GF_WORD_FIX[wordString]
					for k=1, j do table.remove(wordTable,lfs+1) tempVal=tempVal-1 end
					if wordString ~= GF_WORD_FIX[wordString] then if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end end
				elseif GF_WORD_FIX_SECOND[wordString] then
					wordTable[lfs] = GF_WORD_FIX_SECOND[wordString][1]
					for k=1, j do table.remove(wordTable,lfs+1) tempVal=tempVal-1 end
					table.insert(wordTable,lfs+1,GF_WORD_FIX_SECOND[wordString][2]) tempVal=tempVal+1
					if wordString ~= GF_WORD_FIX_SECOND[wordString][1]..GF_WORD_FIX_SECOND[wordString][2] then if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end end
				end
			end
			lfs = lfs + 1
		end
	end
	wordString = ""
	for i=1,tempVal do wordString = wordString..wordTable[i] end
	return wordString
end

function GF_OnLoad() -- Onload, Tooltips, and Frame/Minimap Functions
	for _, event in {'PLAYER_ENTERING_WORLD','PLAYER_LEAVING_WORLD','PARTY_MEMBERS_CHANGED','PARTY_LEADER_CHANGED','RAID_ROSTER_UPDATE','PARTY_INVITE_REQUEST','FRIENDLIST_UPDATE','GUILD_ROSTER_UPDATE','WHO_LIST_UPDATE',
	'UPDATE_MOUSEOVER_UNIT',	'PLAYER_LEVEL_UP','CHAT_MSG_ADDON','CHAT_MSG_SYSTEM','CHAT_MSG_WHISPER','CHAT_MSG_WHISPER_INFORM','CHAT_MSG_LOOT','CHAT_MSG_MONEY','CHAT_MSG_COMBAT_XP_GAIN','CHAT_MSG_COMBAT_HONOR_GAIN',
	'CHAT_MSG_HARDCORE',	'CHAT_MSG_SAY','CHAT_MSG_YELL','CHAT_MSG_GUILD','CHAT_MSG_OFFICER','CHAT_MSG_PARTY','CHAT_MSG_RAID','CHAT_MSG_RAID_LEADER','CHAT_MSG_RAID_WARNING','CHAT_MSG_BATTLEGROUND','CHAT_MSG_BATTLEGROUND_LEADER',
	'CHAT_MSG_EMOTE',	'CHAT_MSG_TEXT_EMOTE','CHAT_MSG_MONSTER_SAY','CHAT_MSG_MONSTER_EMOTE','CHAT_MSG_MONSTER_YELL','CHAT_MSG_CHANNEL','CHAT_MSG_COMBAT_FACTION_CHANGE', } do
		self:RegisterEvent(event)
	end

	SlashCmdList["GroupFinderCOMMAND"] = GF_SlashHandler
	SLASH_GroupFinderCOMMAND1 = "/gf"
	SLASH_GroupFinderCOMMAND2 = "/groupfinder"
	local old_ChatFrame_OnEvent = ChatFrame_OnEvent
	function ChatFrame_OnEvent(event) -- arg1(message), arg2(sender), arg4("Channel#." "(City/Trade)" "channelName"), arg5, (nameOfPlayerWhoLooted), arg7(zoneChannel#), arg8(channel#), arg9("City/Trade" "channelName")
		if not arg2 or arg2 == "" then arg2 = "SYSTEM" end
		if not arg1 or not GF_TextColors[string.sub(event,10)] or (event == "CHAT_MSG_CHANNEL" and string.lower(arg9) == "lft") then old_ChatFrame_OnEvent(event) return end
		if not GF_ProcessedFirstMessage[arg2] then
			GF_ChatFunctions("GF_"..event,event,arg1,arg2,arg8,arg9)
			if GF_SavedVariables.showformattedchat and GF_PreviousMessage[arg2][1] then
				if GF_PreviousMessage[arg2][2] then arg1 = GF_PreviousMessage[arg2][2] end
				if event == "CHAT_MSG_CHANNEL" then GF_AddChannelMessage(arg1,arg2,arg8,arg9) else GF_AddChatMessage(arg1,arg2,string.sub(event,10)) end
				GF_PreviousMessage[arg2] = {}
			end
			GF_ProcessedFirstMessage[arg2] = true
		end
		if GF_PreviousMessage[arg2] and GF_PreviousMessage[arg2][1]	then
			if GF_PreviousMessage[arg2][2] then arg1 = GF_PreviousMessage[arg2][2] end
			old_ChatFrame_OnEvent(event)
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
		old_AddIgnore(name)
	end
	local old_SendWho = SendWho
	function SendWho(...)
		GF_NextAvailableWhoTime = time() + GF_WhoCooldownTime
		old_SendWho(unpack(arg))
	end
	local old_FriendsFrame_OnEvent = FriendsFrame_OnEvent
	function FriendsFrame_OnEvent(...)
		if GF_BlockingFriendsListUpdates and event == "FRIENDLIST_UPDATE" then
			GF_UpdateFriendsList()
		elseif event ~= "WHO_LIST_UPDATE" or WhoFrame:IsVisible() then
			old_FriendsFrame_OnEvent(event)
		end
	end
	local old_SetItemRef = SetItemRef
	function SetItemRef(link,text,button)
		if not GF_HandleItemRefLinks(link,text,button) then old_SetItemRef(link,text,button) end
	end
	local old_ContainerFrameItemButton_OnClick = ContainerFrameItemButton_OnClick
	function ContainerFrameItemButton_OnClick(mouseButton,ignoreModifiers)
		if mouseButton == "LeftButton" and IsShiftKeyDown() and GF_LFGDescriptionEditBoxHasFocus[1] and GetContainerItemInfo(this:GetParent():GetID(),this:GetID()) then
			GF_LFGDescriptionEditBox:Insert(GetContainerItemLink(this:GetParent():GetID(),this:GetID()))
			return true
		end
		old_ContainerFrameItemButton_OnClick(mouseButton,ignoreModifiers)
	end
	local old_QuestLogTitleButton_OnClick = QuestLogTitleButton_OnClick
	function QuestLogTitleButton_OnClick(button,self)
		if GF_SavedVariables.questmod and (ChatFrameEditBox:IsVisible() or GF_LFGDescriptionEditBoxHasFocus[1]) and not IsAddOnLoaded("pfQuest") and not IsAddOnLoaded("Questie") and button == "LeftButton" and IsShiftKeyDown() then
			local qtable = GF_GetQuestInfo(GetQuestLogTitle(this:GetID() + FauxScrollFrame_GetOffset(EQL3_QuestLogListScrollFrame or ShaguQuest_QuestLogListScrollFrame or QuestLogListScrollFrame)),nil)
			if qtable then
				if GF_LFGDescriptionEditBoxHasFocus[1] then
					GF_LFGDescriptionEditBox:Insert(GF_GetDifficultyColor(qtable[2]).."|Hquest:"..qtable[1]..":"..qtable[2].."|h["..GetQuestLogTitle(this:GetID() + FauxScrollFrame_GetOffset(EQL3_QuestLogListScrollFrame or ShaguQuest_QuestLogListScrollFrame or QuestLogListScrollFrame)).."]|h|r")
					return true
				else
					ChatFrameEditBox:Insert(GF_GetDifficultyColor(qtable[2]).."|Hquest:"..qtable[1]..":"..qtable[2].."|h["..GetQuestLogTitle(this:GetID() + FauxScrollFrame_GetOffset(EQL3_QuestLogListScrollFrame or ShaguQuest_QuestLogListScrollFrame or QuestLogListScrollFrame)).."]|h|r")
					return true
				end
			end
		end
		old_QuestLogTitleButton_OnClick(button,self)
	end
	local old_ChatFrame_AddMessageGroup = ChatFrame_AddMessageGroup
	function ChatFrame_AddMessageGroup(chatFrame,group)
		old_ChatFrame_AddMessageGroup(chatFrame,group)
		GF_ChatGetChannelsGroups()
	end
	local old_ChatFrame_RemoveMessageGroup = ChatFrame_RemoveMessageGroup	
	function ChatFrame_RemoveMessageGroup(chatFrame,group)
		old_ChatFrame_RemoveMessageGroup(chatFrame,group)
		GF_ChatGetChannelsGroups()
	end
	local old_ChatFrame_AddChannel = ChatFrame_AddChannel
	function ChatFrame_AddChannel(chatFrame,channel)
		old_ChatFrame_AddChannel(chatFrame,channel)
		GF_ChatGetChannelsGroups()
	end
	local old_ChatFrame_RemoveChannel = ChatFrame_RemoveChannel	
	function ChatFrame_RemoveChannel(chatFrame,channel)
		old_ChatFrame_RemoveChannel(chatFrame,channel)
		GF_ChatGetChannelsGroups()
	end
	local old_JoinChannelByName = JoinChannelByName	
	function JoinChannelByName(channel,a,b,c)
		old_JoinChannelByName(channel,a,b,c)
		GF_ChatJoinedChannels[string.lower(channel)] = true
	end
	local old_LeaveChannelByName = LeaveChannelByName	
	function LeaveChannelByName(channel)
		old_LeaveChannelByName(channel)
		GF_ChatJoinedChannels[string.lower(channel)] = nil
	end
end
function GF_HandleItemRefLinks(link,text,button) -- Will have to update when I add feature to turn off click combinations
	if strsub(link,1,6) == "player" then
		local name = string.sub(gsub(link, "([^%s]*)%s+([^%s]*)", "%2"),8)
		if name and string.len(name) > 0 then 
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
					TargetByName(name)
					return true
				elseif IsShiftKeyDown() then
					if GF_LFGDescriptionEditBoxHasFocus[1] then
						GF_LFGDescriptionEditBox:Insert(text)
						return true
					elseif ChatFrameEditBox:IsVisible() then
						ChatFrameEditBox:Insert(text)
					else
						for i=1, getn(GF_UrgentWhoRequest) do
							if GF_UrgentWhoRequest[i] == name then table.remove(GF_UrgentWhoRequest, i) break end
						end
						if GF_NextAvailableWhoTime + 1 > time() then 
							DEFAULT_CHAT_FRAME:AddMessage(GF_SENDING_WHO_FOR..name.." - "..math.ceil(GF_NextAvailableWhoTime - time() + getn(GF_UrgentWhoRequest) * 30)..GF_SECONDS, 1, 1, 0.5)
						else
							DEFAULT_CHAT_FRAME:AddMessage(GF_SENDING_WHO_FOR..name, 1, 1, 0.5)
						end
						table.insert(GF_UrgentWhoRequest,name)
						GF_UrgentWhoRequest[name] = time()
						return true
					end
				end
			elseif GF_SavedVariables.clickcombos and button == "RightButton" and IsAltKeyDown() then
				InviteByName(name)
				return true
			end
		end
	elseif strsub(link, 1, 3) == "url" and GF_MainFrame:IsVisible() then
		if string.len(link) > 4 and string.sub(link,1,4) == "url:" then
			GF_UrlCopyFrame:Show()
			GF_UrlCopyFrameEditBox:SetText(string.sub(link,5,string.len(link)))
			GF_UrlCopyFrameEditBox:HighlightText()
			return true
		end
	elseif strsub(link, 1, 5) == "quest" then
		if IsShiftKeyDown() then
			if GF_LFGDescriptionEditBoxHasFocus[1] then GF_LFGDescriptionEditBox:Insert(text) return true end
		elseif GF_SavedVariables.questmod and not IsAddOnLoaded("pfQuest") and not IsAddOnLoaded("Questie") then
			if GF_GetQuestInfo(text,true) then return true
			else
				local _,_,questid = string.find(link,"(%d+)")
				if questid then
					questid = tonumber(questid)
					for entryname,wtable in GF_WORD_QUEST do
						if wtable[1] == questid then DEFAULT_CHAT_FRAME:AddMessage("GF: "..text..GF_QUEST_IS_LEVEL_TEXT..GF_WORD_QUEST[entryname][2].."("..GF_QUEST_ZONE_ID[GF_WORD_QUEST[entryname][3]].."}", 1, 1, 0.5) return true end
					end
				end
			end
		end
	elseif strsub(link,1,4) == "item" then
		if IsShiftKeyDown() then
			if GF_LFGDescriptionEditBoxHasFocus[1] then GF_LFGDescriptionEditBox:Insert(text) return true end
		end
	end
end
function GF_GetQuestInfo(text,printinfo) -- Will have to update once I get new system
	local wordTable = GetModifiedQuestName(gsub(gsub(text,"|c%x+|+(%w+)[%d:]+|+h%[",""),"%]|+h|+r",""))
	wordString = ""
	for i=1, getn(wordTable) do if wordTable[i] then wordString = wordString..wordTable[i] end end
	if GF_WORD_QUEST[wordString] then
		if printinfo and GF_QUEST_ZONE_ID[GF_WORD_QUEST[wordString][3]] then
			if GF_QUEST_ZONE_ID[GF_WORD_QUEST[wordString][4]] and GF_WORD_QUEST[wordString][3] ~= GF_WORD_QUEST[wordString][4] then
				DEFAULT_CHAT_FRAME:AddMessage("GF: "..text..GF_QUEST_IS_LEVEL_TEXT..GF_WORD_QUEST[wordString][2].."("..GF_QUEST_ZONE_ID[GF_WORD_QUEST[wordString][3]].."), Objective("..GF_QUEST_ZONE_ID[GF_WORD_QUEST[wordString][4]]..")", 1, 1, 0.5)
			else
				DEFAULT_CHAT_FRAME:AddMessage("GF: "..text..GF_QUEST_IS_LEVEL_TEXT..GF_WORD_QUEST[wordString][2].."("..GF_QUEST_ZONE_ID[GF_WORD_QUEST[wordString][3]]..")", 1, 1, 0.5)
			end
		end 
		return GF_WORD_QUEST[wordString]
	end
	return {0,0,0}
end
function GF_SlashHandler(msg)
	if string.lower(msg) == "reset" then
		GF_MainFrame:ClearAllPoints()
		GF_MainFrame:SetPoint("CENTER", UIParent, "CENTER",0,0)
		GF_GroupsFrame:Show()
		GF_LogFrame:Hide()
		GF_BlackListFrame:Hide()
		GF_SettingsFrame:Hide()
		GF_SavedVariables.mainframestatus = 0
		GF_SavedVariables.mainframelogisopen = nil
		GF_SavedVariables.mainframewidth = nil
		GF_SavedVariables.mainframeheight = nil
		GF_SavedVariables.mainframeishidden = nil
		GF_MainFrame:Show()
		GF_UpdateMainFrame()
	elseif string.lower(msg) == "toggle" then
		GF_ToggleMainFrame()
	elseif string.len(msg) > 5 and string.sub(string.lower(msg),1,4) == "test" then
		GF_CheckForGroups(string.sub(msg,5),"R","","CHAT_MSG_YELL",true)
	else
		DEFAULT_CHAT_FRAME:AddMessage("'/gf reset' to reset screen position", 1, 1, 0.5)
		DEFAULT_CHAT_FRAME:AddMessage("'/gf toggle' to toggle the frame", 1, 1, 0.5)
	end
end
function GF_ShowTooltip()
	if GF_GenTooltips[this:GetName()] then
		GameTooltip:SetOwner(getglobal(this:GetName()), "ANCHOR_TOP")
		GameTooltip:ClearLines()
		GameTooltip:ClearAllPoints()
		GameTooltip:SetPoint("TOPLEFT", this:GetName(), "BOTTOMLEFT", 0, -2)		
		GameTooltip:AddLine(GF_GenTooltips[this:GetName()].tooltip1)
		GameTooltip:AddLine(GF_GenTooltips[this:GetName()].tooltip2, 1, 1, 1, 1, 1)
		GameTooltip:Show()
	end
end
function GF_ToggleMainFrame(tab)
	PlaySound("igCharacterInfoTab")
	if GF_MainFrame:IsVisible() and tab ~= 3 and (not tab or (tab == 2 and GF_SavedVariables.mainframelogisopen) or (tab == 1 and not GF_SavedVariables.mainframelogisopen)) then
		if GF_SavedVariables.mainframestatus == 0 then 
			local _,_,_,xpos, ypos = GF_MainFrame:GetPoint()
			GF_SavedVariables.MainFrameXPos = xpos
			GF_SavedVariables.MainFrameYPos = ypos
		end
		GF_MainFrame:Hide() 
	else
		if tab == 1 then -- GroupsFrame
			GF_GroupsFrame:Show()
			GF_LogFrame:Hide()
			GF_BlackListFrame:Hide()
			GF_SettingsFrame:Hide()
			GF_SavedVariables.mainframelogisopen = nil
		elseif tab == 2 or GF_SavedVariables.mainframelogisopen then -- LogsFrame
			GF_GroupsFrame:Hide()
			GF_LogFrame:Show()
			GF_BlackListFrame:Hide()
			GF_SettingsFrame:Hide()
			GF_SavedVariables.mainframelogisopen = true
		end
		if tab ~= 3 and GF_SavedVariables.mainframestatus == 0 and not GF_SavedVariables.mainframeishidden then
			local _,_,_,xpos, ypos = GF_MainFrame:GetPoint()
			GF_SavedVariables.MainFrameXPos = xpos
			GF_SavedVariables.MainFrameYPos = ypos
		end
		GF_MainFrame:Show()
		GF_SavedVariables.mainframeishidden = nil
		if pfUI and pfUI.chat and pfUI.chat.urlcopy then pfUI.chat.urlcopy:SetWidth(700) pfUI.chat.urlcopy.text:SetWidth(680) end
	end
	GF_LFGGetWhoUpdateOffset()
	GF_UpdateMainFrameHeight()
	GF_UpdateMainFrameWidth()
	GF_UpdateMainFramePosition()
	GF_UpdateMainFrame()
	GF_UpdateWhisperFrame()
	GF_UpdateResults()
end
function GF_UpdateWhisperFrame()
	if GF_SavedVariables.mainframestatus == 0 then
		if GF_SavedVariables.showwhisperlogs then
			GF_LogFrameInternalFrame:SetWidth(568)
			GF_WhisperHistoryButtonLog:Show()
		else
			GF_LogFrameInternalFrame:SetWidth(669)
			GF_WhisperHistoryButtonLog:Hide()
		end
	else
		GF_WhisperHistoryButtonLog:Hide()
	end
end
function GF_UpdateMainFrameHeight()
	if GF_SavedVariables.mainframestatus ~= 0 then
		if GF_SavedVariables.mainframeheight then
			GF_ResultsListOffset = 12 * math.ceil(GF_ResultsListOffset/GF_ResultsListOffsetSize)
			GF_ResultsListOffsetSize = 12
			GF_LogFrameInternalFrame:SetHeight(250)
		else
			GF_ResultsListOffset = 20 * math.ceil(GF_ResultsListOffset/GF_ResultsListOffsetSize)
			GF_ResultsListOffsetSize = 20
			GF_LogFrameInternalFrame:SetHeight(400)
		end
	else
		GF_LFGGetWhoUpdateOffset()
		GF_LogFrameInternalFrame:SetHeight(440)
	end
end
function GF_UpdateMainFrameWidth()
	if GF_SavedVariables.mainframestatus ~= 0 then
		if GF_SavedVariables.mainframewidth then
			if GF_SavedVariables.mainframestatus == 2 then
				for i=1, GF_ResultsBaseListOffsetSize do if i == 1 then getglobal("GF_NewItem"..i):SetPoint("TOPLEFT",330,0) else getglobal("GF_NewItem"..i):SetPoint("LEFT",330,0) end getglobal("GF_NewItem"..i):SetWidth(320) getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("TOPLEFT",5,0) getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("BOTTOMRIGHT",getglobal("GF_NewItem"..i),"TOPRIGHT",-5,-16) end
				GF_LogFrameInternalFrame:SetPoint("TOPLEFT",350,-32)
			else
				for i=1, GF_ResultsBaseListOffsetSize do if i == 1 then getglobal("GF_NewItem"..i):SetPoint("TOPLEFT",0,0) else getglobal("GF_NewItem"..i):SetPoint("LEFT",0,0) end getglobal("GF_NewItem"..i):SetWidth(320) getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("TOPLEFT",5,0) getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("BOTTOMRIGHT",getglobal("GF_NewItem"..i),"TOPRIGHT",-5,-16) end
				GF_LogFrameInternalFrame:SetPoint("TOPLEFT",29,-32)
			end
			GF_LogFrameInternalFrame:SetWidth(350)
		else
			for i=1, GF_ResultsBaseListOffsetSize do if i == 1 then getglobal("GF_NewItem"..i):SetPoint("TOPLEFT",0,0) else getglobal("GF_NewItem"..i):SetPoint("LEFT",0,0) end getglobal("GF_NewItem"..i):SetWidth(635) getglobal("GF_NewItem"..i.."NameLabel"):ClearAllPoints() getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("TOPLEFT",5,0) getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("BOTTOMRIGHT",getglobal("GF_NewItem"..i),"TOPRIGHT",-5,-16) end
			GF_LogFrameInternalFrame:SetPoint("TOPLEFT",29,-64)
			GF_LogFrameInternalFrame:SetWidth(669)
		end
	else
		for i=1, GF_ResultsBaseListOffsetSize do if i == 1 then getglobal("GF_NewItem"..i):SetPoint("TOPLEFT",0,0) else getglobal("GF_NewItem"..i):SetPoint("LEFT",0,0) end getglobal("GF_NewItem"..i):SetWidth(635) getglobal("GF_NewItem"..i.."NameLabel"):ClearAllPoints() getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("TOPLEFT",5,0) getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("BOTTOMRIGHT",getglobal("GF_NewItem"..i),"TOPRIGHT",-80,-16) end
		GF_LogFrameInternalFrame:SetPoint("TOPLEFT",29,-64)
		GF_LogFrameInternalFrame:SetWidth(669)
	end
end
function GF_UpdateMainFramePosition()
	GF_MainFrame:ClearAllPoints()
	if GF_SavedVariables.mainframestatus == 0 then
		GF_MainFrame:SetPoint("TOPLEFT",UIParent,"TOPLEFT", GF_SavedVariables.MainFrameXPos, GF_SavedVariables.MainFrameYPos)
		GF_HideMainFrameLeft:ClearAllPoints()
		GF_HideMainFrameLeft:SetPoint("TOPLEFT", 6, -64)
	elseif GF_SavedVariables.mainframestatus == 1 then
		GF_MainFrame:SetPoint("TOPLEFT",UIParent,"TOPLEFT", -10, GF_SavedVariables.MainFrameYPos)
		GF_HideMainFrameLeft:ClearAllPoints()
		GF_HideMainFrameLeft:SetPoint("TOPLEFT", 6, -64)
	elseif GF_SavedVariables.mainframestatus == 2 then
		GF_MainFrame:SetPoint("TOPRIGHT",UIParent,"TOPRIGHT", -5, GF_SavedVariables.MainFrameYPos)
		GF_HideMainFrameLeft:ClearAllPoints()
		GF_HideMainFrameLeft:SetPoint("TOPRIGHT", 5, -64)
	end
end
function GF_UpdateMainFrame()
	if GF_SavedVariables.mainframestatus ~= 0 then
		for i=1, getn(ThingsToHide) do
			getglobal(ThingsToHide[i]):Hide()
		end
		GF_MainFrame:SetAlpha(0)
		GF_MainFrame:SetFrameStrata("BACKGROUND")
		GF_MainFrame:EnableMouse(false)
		GF_MainFrame:IsMovable(false)

		GF_HideMainFrameLeft:SetAlpha(1)
		GF_HideMainFrameRight:SetAlpha(1)

		GF_HideMainFrameHeight:Show()
		GF_HideMainFrameWidth:Show()
		GF_HideMainFrameHeight:SetAlpha(1)
		GF_HideMainFrameWidth:SetAlpha(1)

		if GF_LogFrame:IsShown() then
			GF_LogFrame:SetAlpha(GF_SavedVariables.MainFrameTransparency)
			GF_LogFrameInternalFrameTitle:SetText("")
			GF_LogFrameInternalFrame:SetBackdropBorderColor(.4,.4,.4,0)
			GF_LogFrameInternalFrame:SetBackdropColor(.14,.14,.14,0)
		else
			GF_GroupsFrame:EnableMouse(false)
			GF_GroupsFrame_Results:EnableMouse(false)
			for i=1, GF_ResultsBaseListOffsetSize do
				getglobal("GF_NewItem"..i):SetAlpha(GF_SavedVariables.MainFrameTransparency)
				getglobal("GF_NewItem"..i):EnableMouse(false)
			end
		end
		for id, word in UISpecialFrames do
			if word == "GF_MainFrame" then UISpecialFrames[id] = nil end
		end
	else
		for i=1, 14 do
			getglobal(ThingsToHide[i]):Show()
		end
		if GF_PlayingOnTurtle then GF_LFGHardCoreDropdown:Show() end
		GF_MainFrame:SetAlpha(GF_SavedVariables.MainFrameTransparency)
		GF_MainFrame:SetFrameStrata("MEDIUM")
		GF_MainFrame:EnableMouse(true)
		GF_MainFrame:IsMovable(true)

		GF_HideMainFrameHeight:Hide()
		GF_HideMainFrameWidth:Hide()

		GF_LogFrameInternalFrameTitle:SetText(GF_LOG_AND_MONITOR)
		GF_LogFrameInternalFrame:SetBackdropBorderColor(.4,.4,.4,1)
		GF_LogFrameInternalFrame:SetBackdropColor(.14,.14,.14,1)

		GF_GroupsFrame:EnableMouse(true)
		GF_GroupsFrame_Results:EnableMouse(true)
		for i=1, GF_ResultsBaseListOffsetSize do
			getglobal("GF_NewItem"..i):EnableMouse(true)
		end
		tinsert(UISpecialFrames,GF_MainFrame:GetName())
	end
end
function GF_UpdateMinimapIcon()
	local relativepos
	local directionMultiplier = 1
	if Minimap:GetLeft() > GetScreenWidth()/2 then -- Minimap on the Right
		if Minimap:GetTop() > GetScreenHeight()/2 then relativepos = "TOPRIGHT"	directionMultiplier = -1 else relativepos = "BOTTOMRIGHT" end -- Minimap on Top/Bottom
	else
		if Minimap:GetTop() > GetScreenHeight()/2 then relativepos = "TOPLEFT" directionMultiplier = -1 else relativepos = "BOTTOMLEFT" end -- Minimap on Left and Top/Bottom
	end
	local xpos = (0 - ((GF_SavedVariables.MinimapMsgRadiusOffset) * cos(GF_SavedVariables.MinimapMsgArcOffset + (180 - (180*Minimap:GetRight()/GetScreenWidth()))))) - 55
	local ypos = ((GF_SavedVariables.MinimapMsgRadiusOffset) * sin(GF_SavedVariables.MinimapMsgArcOffset + (180 - (180*Minimap:GetTop()/GetScreenHeight())))) - 55

	GF_MoveMinimapIcon()
	GF_MinimapMessageFrameA1:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos)
	GF_MinimapMessageFrameA2:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos+42*directionMultiplier)
	GF_MinimapMessageFrameA3:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos+84*directionMultiplier)
	GF_MinimapMessageFrameA4:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos+126*directionMultiplier)
	GF_MinimapMessageFrameA5:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos+168*directionMultiplier)
	GF_MinimapMessageFrameA6:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos+210*directionMultiplier)
end
function GF_RelevelMinimapIcons(frame)
	frame:SetFrameStrata("LOW")
	local children = { frame:GetChildren() }
	for _,child in pairs(children) do
		if child:GetName() ~= "GF_MinimapIcon" then child:SetFrameStrata("LOW") end
		GF_RelevelMinimapIcons(child)
	end
	GF_MinimapIcon:SetFrameStrata("MEDIUM")
end
function GF_SetPFUIAddonButtons()
	if pfUI and pfUI.addonbuttons and pfUI_cache and pfUI_cache["abuttons"] and pfUI_cache["abuttons"]["del"] then
		if GF_SavedVariables.iconpriority then
			table.insert(pfUI_cache["abuttons"]["del"],"GF_MinimapIcon")
			--SlashCmdList["PFABP"]("del GF_MinimapIcon")
		else
			for i=1, getn(pfUI_cache["abuttons"]["del"]) do if pfUI_cache["abuttons"]["del"][i] == "GF_MinimapIcon" then pfUI_cache["abuttons"]["del"][i] = nil end end
			--SlashCmdList["PFABP"]("add GF_MinimapIcon")
		end
	end
end
function GF_IconDraggingOnUpdate()
	local xpos,ypos = GetCursorPosition()
	xpos = Minimap:GetLeft()-xpos/Minimap:GetEffectiveScale()+70
	ypos = ypos/Minimap:GetEffectiveScale()-Minimap:GetBottom()-70
	GF_SavedVariables.MinimapIconXPos = xpos
	GF_SavedVariables.MinimapIconYPos = ypos
	GF_MoveMinimapIcon()
end
function GF_MoveMinimapIcon()
	if GF_SavedVariables.squareminimap then
		GF_MinimapIcon:SetPoint("TOPLEFT","Minimap","TOPLEFT",52-math.max(-82,math.min(110 * cos(math.deg(math.atan2(GF_SavedVariables.MinimapIconYPos,GF_SavedVariables.MinimapIconXPos))),84)),math.max(-86,math.min(110 * sin(math.deg(math.atan2(GF_SavedVariables.MinimapIconYPos,GF_SavedVariables.MinimapIconXPos))),82))-52)
	else
		GF_MinimapIcon:SetPoint("TOPLEFT","Minimap","TOPLEFT",52-80*cos(math.deg(math.atan2(GF_SavedVariables.MinimapIconYPos,GF_SavedVariables.MinimapIconXPos))),80*sin(math.deg(math.atan2(GF_SavedVariables.MinimapIconYPos,GF_SavedVariables.MinimapIconXPos)))-52)
	end
end
function GF_LFGGetWhoUpdateOffset()
	GF_MessageFrame:Show()
	if GF_PerCharVariables.lfgshown and GF_PerCharVariables.getwhoshown then
		GF_GetWhoFrame:Show()
		GF_GetWhoFrameToggleButton:LockHighlight()
		GF_LFGFrame:Show()
		GF_LFGFrameToggleButton:LockHighlight()

		GF_GetWhoFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, -15)
		GF_LFGFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, 10)
		GF_MessageFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, 43)

		GF_GetWhoFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Up")
		GF_LFGFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Up")
		GF_ResultsListOffset = 19 * math.ceil(GF_ResultsListOffset/GF_ResultsListOffsetSize)
		GF_ResultsListOffsetSize = 19
	elseif GF_PerCharVariables.lfgshown then
		GF_GetWhoFrame:Hide()
		GF_GetWhoFrameToggleButton:UnlockHighlight()
		GF_LFGFrame:Show()
		GF_LFGFrameToggleButton:LockHighlight()

		GF_LFGFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, -10)
		GF_MessageFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, 23)

		GF_GetWhoFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Disabled")
		GF_LFGFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Up")
		GF_ResultsListOffset = 20 * math.ceil(GF_ResultsListOffset/GF_ResultsListOffsetSize)
		GF_ResultsListOffsetSize = 20
	elseif GF_PerCharVariables.getwhoshown then
		GF_GetWhoFrame:Show()
		GF_GetWhoFrameToggleButton:LockHighlight()
		GF_LFGFrame:Hide()
		GF_LFGFrameToggleButton:UnlockHighlight()

		GF_GetWhoFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, -15)
		GF_MessageFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, 23)

		GF_GetWhoFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Up")
		GF_LFGFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Disabled")
		GF_ResultsListOffset = 20 * math.ceil(GF_ResultsListOffset/GF_ResultsListOffsetSize)
		GF_ResultsListOffsetSize = 20
	else
		GF_GetWhoFrame:Hide()
		GF_GetWhoFrameToggleButton:UnlockHighlight()
		GF_LFGFrame:Hide()
		GF_LFGFrameToggleButton:UnlockHighlight()

		GF_GetWhoFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Disabled")
		GF_LFGFrameToggleButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Disabled")
		
		GF_MessageFrame:SetPoint("BOTTOMLEFT",GF_MainFrame,"BOTTOMLEFT", 10, -5)
		GF_ResultsListOffset = 22 * math.ceil(GF_ResultsListOffset/GF_ResultsListOffsetSize)
		GF_ResultsListOffsetSize = 22
	end
end

function GF_AddChannelMessage(arg1,arg2,arg8,arg9) -- Message Handlers
	arg1 = GF_ChatReplaceHquestLevels(GF_ChatReplaceHplayer(arg1))
	arg9 = string.gsub(string.lower(arg9), " - .*", "")
	for i=1,NUM_CHAT_WINDOWS do
		if not GF_ChatChannelsGroups[i] then GF_ChatGetChannelsGroups() end
		if GF_ChatChannelsGroups[i].channel[arg9] then
			if arg2 == UnitName("player") then
				getglobal("ChatFrame"..i):AddMessage("["..arg8..". "..string.upper(string.sub(arg9,1,1))..string.sub(arg9,2).."] ".."|cff"..(GF_ClassColors[({UnitClass("player")})[2]] or "9d9d9d").."|Hplayer:"..arg2.."|h["..arg2..", "..UnitLevel("player").."]|h|r: "..arg1, GF_TextColors["CHANNEL"][1], GF_TextColors["CHANNEL"][2], GF_TextColors["CHANNEL"][3]) 
			elseif GF_WhoTable[GF_RealmName][arg2] then
				getglobal("ChatFrame"..i):AddMessage("["..arg8..". "..string.upper(string.sub(arg9,1,1))..string.sub(arg9,2).."] ".."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "ffffff").."|Hplayer:"..arg2.."|h["..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."]|h|r: "..arg1, GF_TextColors["CHANNEL"][1], GF_TextColors["CHANNEL"][2], GF_TextColors["CHANNEL"][3]) 
			else
				getglobal("ChatFrame"..i):AddMessage("["..arg8..". "..string.upper(string.sub(arg9,1,1))..string.sub(arg9,2).."] ".."|cff".."9d9d9d".."|Hplayer:"..arg2.."|h["..arg2.."]|h|r: "..arg1, GF_TextColors["CHANNEL"][1], GF_TextColors["CHANNEL"][2], GF_TextColors["CHANNEL"][3])
			end
		end
	end
end
function GF_AddChatMessage(arg1,arg2,event)
	arg1 = GF_ChatReplaceHquestLevels(GF_ChatReplaceHplayer(arg1))
	for i=1,NUM_CHAT_WINDOWS do
		if not GF_ChatChannelsGroups[i] then GF_ChatGetChannelsGroups() end
		if GF_ChatChannelsGroups[i].group[event] or GF_ChatChannelsGroups[i].group[GF_TextBypassChatNameAlias[event]] then
			if arg2 == "SYSTEM" then
				getglobal("ChatFrame"..i):AddMessage(arg1, GF_TextColors[event][1], GF_TextColors[event][2], GF_TextColors[event][3])
			elseif arg2 == UnitName("player") then
				getglobal("ChatFrame"..i):AddMessage((EventIDAlias[event] or "["..string.sub(event,1,1).."] ").."|cff"..(GF_ClassColors[({UnitClass("player")})[2]] or "9d9d9d").."|Hplayer:"..arg2.."|h["..arg2..", "..UnitLevel("player").."]|h|r: "..arg1, GF_TextColors[event][1], GF_TextColors[event][2], GF_TextColors[event][3])
			elseif GF_WhoTable[GF_RealmName][arg2] then 
				getglobal("ChatFrame"..i):AddMessage((EventIDAlias[event] or "["..string.sub(event,1,1).."] ").."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "9d9d9d").."|Hplayer:"..arg2.."|h["..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."]|h|r: "..arg1, GF_TextColors[event][1], GF_TextColors[event][2], GF_TextColors[event][3])
			else
				getglobal("ChatFrame"..i):AddMessage((EventIDAlias[event] or "["..string.sub(event,1,1).."] ").."|cff9d9d9d|Hplayer:"..arg2.."|h["..arg2.."]|h|r: "..arg1, GF_TextColors[event][1], GF_TextColors[event][2], GF_TextColors[event][3])
			end
		end
	end
end
function GF_ChatGetChannelsGroups() -- How do other servers handle Hardcore group toggles? Addon might not work on other servers with Hardcore.. I could simply enable all channels and only turn off if known
	for i=1,NUM_CHAT_WINDOWS do
		GF_ChatChannelsGroups[i] = { ["channel"] = {},["group"] = { }, }
		local channellist = { GetChatWindowChannels(i) }
		for j=1, getn(channellist) do
			GF_ChatChannelsGroups[i].channel[string.lower(channellist[j])] = true
		end
		channellist = { GetChatWindowMessages(i) }
		for j=1, getn(channellist) do
			GF_ChatChannelsGroups[i].group[channellist[j]] = true
		end
		if GF_PlayingOnTurtle and getglobal("TW_HARDCORE_CHAT"..i) and getglobal("TW_HARDCORE_CHAT"..i) == 1 then GF_ChatChannelsGroups[i].group["HARDCORE"] = true end
	end
	GF_ChatJoinedChannels = {}
	local chanList = { GetChannelList() }
	for i=1, getn(chanList) do
		if not tonumber(chanList[i]) then 
			GF_ChatJoinedChannels[string.lower(chanList[i])] = i/2
		end
	end
end
function GF_ChatCheckFilters(logType,arg1,event)
	if logType == 7 or logType == 8 or logType == 9 then
		return
	elseif event == "SAY" then
		return true
	elseif (logType == 1 or logType == 2) then 
		if GF_SavedVariables.showgroupsinminimap then GF_ShowGroupsOnMinimap(arg1,arg2) end
		if GF_SavedVariables.showgroupsinchat or (logType == 2 and GF_SavedVariables.showgroupsnewonly) then return true end
	elseif (logType == 4 and GF_SavedVariables.showchattexts) or (logType == 5 and GF_SavedVariables.showtradestexts) or (logType == 11 and GF_SavedVariables.showguilds) then
		return true
	end
end
function GF_ChatReplaceHplayer(arg1)
	local lfs,lfe,wordString = 1
	while true do
		lfs,lfe,wordString = string.find(arg1,"|c%x+|+Hplayer:(%w+)|+h%[[%w%s!=\,\-\+<>\":'\.]+%]|+h|+r",lfs)
		if wordString then
			if GF_WhoTable[GF_RealmName][wordString] then
				arg1 = string.sub(arg1,1,lfs).."cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][wordString][2]] or "ffffff").."|Hplayer:"..wordString.."|h["..wordString..", "..GF_WhoTable[GF_RealmName][wordString][1].."]|h|"..string.sub(arg1,lfe)
			end
			lfs = lfe + 1
		else
			break
		end
	end
	return arg1
end
function GF_ChatReplaceHquestLevels(arg1)
	local lfs,lfe,questID,questLevel,questName = 1
	while true do
		lfs,lfe,questID,questLevel,questName = string.find(arg1,"|c%x+|+Hquest:(%d+):(%d+)|+h%[(.-)%]|+h|+r",lfs)
		if questID then
			if questLevel == "0" then questLevel = ({GF_GetQuestInfo(questName)})[2] or 0 end
			arg1 = string.sub(arg1,1,lfs-1)..(GF_GetDifficultyColor(tonumber(questLevel)) or "|cffffffff").."|Hquest:"..questID..":"..questLevel.."|h["..questName.."]|h|"..string.sub(arg1,lfe)
			lfs = lfe + 1
		else
			break
		end
	end
	return arg1
end
function GF_CleanUpMessagesOfBadLinks(arg1) -- Replaces CLINK messages with normal links
	if string.find(arg1,"CLINK") then
		arg1 = gsub(arg1, "{CLINK:item:(%x+):([%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-):([^}]-)}", "|c%1|Hitem:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:(%x+):([%d-]-:[%d-]-:[%d-]-:[%d-]-):([^}]-)}", "|c%1|Hitem:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:enchant:(%x+):([%d-]-):([^}]-)}", "|c%1|Henchant:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:spell:(%x+):([%d-]-):([^}]-)}", "|c%1|Hspell:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:quest:(%x+):([%d-]-):([%d-]-):([^}]-)}", "|c%1|Hquest:%2:%3|h[%4]|h|r")		
	end
	return arg1
end
function GF_ShowGroupsOnMinimap(arg1,arg2)
	for name,mmtable in GF_MiniMapMessages[7] do if mmtable[1] <= GetTime() then GF_MiniMapMessages[7][name] = nil end end
	if GF_MiniMapMessages[1] > GetTime() and GF_MiniMapMessages[2] > GetTime() and GF_MiniMapMessages[3] > GetTime() and GF_MiniMapMessages[4] > GetTime() and GF_MiniMapMessages[5] > GetTime() and GF_MiniMapMessages[6] > GetTime() then
		local lowest = { GetTime()+20, 0 }
		for i=1, 6 do
			if GF_MiniMapMessages[i] < lowest[1] then lowest[1] = GF_MiniMapMessages[i] lowest[2] = i end
		end
		GF_MiniMapMessages[lowest[2]] = 0
	end
	for i=1, 6 do
		if GF_MiniMapMessages[i] <= GetTime() then
			if GF_MiniMapMessages[7][arg2] and GF_MiniMapMessages[7][arg2][1] > GetTime() then i = GF_MiniMapMessages[7][arg2][2] end
			if GF_WhoTable[GF_RealmName][arg2] and GF_WhoTable[GF_RealmName][arg2][1] then 
				getglobal("GF_MinimapMessageFrameA"..i):AddMessage("|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "ffffff").."|Hplayer:"..arg2.."|h "..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].." "..GF_WhoTable[GF_RealmName][arg2][2].."|h|r", 1, 1, 1)
			else
				getglobal("GF_MinimapMessageFrameA"..i):AddMessage("|Hplayer:"..arg2.."|h "..arg2.."|h", 1, 1, 1)
			end
			getglobal("GF_MinimapMessageFrameB"..i):AddMessage(string.sub(gsub(arg1, "|c.*|Hquest:[%d]+:[-]?[%d]+|h%[(.*)%]|h|r", "\[%1\]"),1,105), 187/255, 255/255, 187/255)
			GF_MiniMapMessages[i] = GetTime() + 20
			GF_MiniMapMessages[7][arg2] = { GetTime()+20, i }
			return
		end
	end
end
function GF_AddLogMessage(arg1,logcode,add,arg2,arg8,arg9,event)
	arg1 = GF_ChatReplaceHquestLevels(GF_ChatReplaceHplayer(gsub(gsub(gsub(gsub(" "..arg1," (www%d-)%.([_A-Za-z0-9-]+)%.(%S+)%s?", " |cffccccff|Hurl:%1.%2.%3|h[%1.%2.%3]|h|r")," (%a+)://(%S+)", " |cffccccff|Hurl:%1://%2|h[%1://%2]|h|r")," (%a+)%.(%a+)/(%S+)", " |cffccccff|Hurl:%1.%2/%3|h[%1.%2/%3]|h|r")," ([_A-Za-z0-9-]+)%.([_A-Za-z0-9-]+)%.(%S+)", " |cffccccff|Hurl:%1.%2.%3|h[%1.%2.%3]|h|r")))
	if add then
		if GF_LootFilter[event] then
			arg1 = "["..date("%H:%M").."]"..GF_LogMessageCodes[logcode]..arg1
		elseif event ~= "CHANNEL" then
			if arg2 == "SYSTEM" then
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[logcode]..arg1
			elseif arg2 == UnitName("player") then
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[logcode].." |cff"..(GF_ClassColors[({UnitClass("player")})[2]] or "9d9d9d").."|Hplayer:"..arg2.."|h["..arg2..", "..UnitLevel("player").."]:|h|r"..arg1
			elseif GF_WhoTable[GF_RealmName][arg2] then 
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[logcode].." |cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "9d9d9d").."|Hplayer:"..arg2.."|h["..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."]:|h|r"..arg1
			else
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[logcode].." |cff9d9d9d|Hplayer:"..arg2.."|h["..arg2.."]:|h|r"..arg1
			end
		else
			arg9 = arg8..". "..string.upper(string.sub(arg9,1,1))..string.lower(string.sub(string.gsub(arg9, " - .*", ""),2))
			if arg2 == UnitName("player") then 
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[logcode].." ["..arg9.."] ".."|cff"..(GF_ClassColors[({UnitClass("player")})[2]] or "9d9d9d").."|Hplayer:"..arg2.."|h["..arg2..", "..UnitLevel("player").."]:|h|r"..arg1
			elseif GF_WhoTable[GF_RealmName][arg2] then 
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[logcode].." ["..arg9.."] ".."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "9d9d9d").."|Hplayer:"..arg2.."|h["..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."]:|h|r"..arg1
			else
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[logcode].." ["..arg9.."] ".."|cff9d9d9d|Hplayer:"..arg2.."|h["..arg2.."]:|h|r"..arg1
			end
		end
		table.insert(GF_LogHistory[GF_RealmName],1, {arg1,logcode,event})
		if getn(GF_LogHistory[GF_RealmName]) > 500 then table.remove(GF_LogHistory[GF_RealmName],501) end
	end
	if GF_WhisperLogCurrentButtonID == 0 and GF_LogFilters[logcode] and GF_LogFilters[event] then
		if GF_ConvertMessagesToLinks then
			local _,_,startString,endString = string.find(arg1, "(.-%].-|Hplayer.-|h|r )(.*)")
			if startString then
				endString = gsub(gsub(gsub(gsub(endString, "|[cC]%x+|%w+:%w+:[%w:]+|[h]", ""), "|[cC]%x+%p+%w+:(.-)|h.-|h|r", "%1"), "|[cC]%x+", ""), "|[hHrR]?", "")
				GF_Log:AddMessage(startString.."|cffccccff|Hurl:"..endString.."|h"..endString.."|h|r", GF_TextColors[event][1], GF_TextColors[event][2], GF_TextColors[event][3])
			else
				GF_Log:AddMessage(arg1, GF_TextColors[event][1], GF_TextColors[event][2], GF_TextColors[event][3])
			end
		else
			GF_Log:AddMessage(arg1, GF_TextColors[event][1], GF_TextColors[event][2], GF_TextColors[event][3])
		end
	end
end
function GF_DisplayLog()
	GF_Log:SetMaxLines(128)
	local tempHistoryTable = {}
	local counter = 0
	for i=1, getn(GF_LogHistory[GF_RealmName]) do
		if GF_LogFilters[GF_LogHistory[GF_RealmName][i][2]] and GF_LogFilters[GF_LogHistory[GF_RealmName][i][3]] then 
			table.insert(tempHistoryTable,1,GF_LogHistory[GF_RealmName][i])
			counter = counter + 1
			if counter == 128 then break end
		end
	end
	if GF_ConvertMessagesToLinks then
		for i=1, getn(tempHistoryTable) do
			local _,_,startString,endString = string.find(tempHistoryTable[i][1], "(.-%].-|Hplayer.-|h|r )(.*)")
			if startString then
				endString = gsub(gsub(gsub(gsub(endString, "|[cC]%x+|%w+:%w+:[%w:]+|[h]", ""), "|[cC]%x+%p+%w+:.-|h(.-)|h|r", "%1"), "|[cC]%x+", ""), "|[hHrR]?", "")
				GF_Log:AddMessage(startString.."|cffccccff|Hurl:"..endString.."|h"..endString.."|h|r", GF_TextColors[tempHistoryTable[i][3]][1], GF_TextColors[tempHistoryTable[i][3]][2], GF_TextColors[tempHistoryTable[i][3]][3])
			else
				GF_Log:AddMessage(tempHistoryTable[i][1], GF_TextColors[tempHistoryTable[i][3]][1], GF_TextColors[tempHistoryTable[i][3]][2], GF_TextColors[tempHistoryTable[i][3]][3])
			end
		end
	else
		for i=1, getn(tempHistoryTable) do
			GF_Log:AddMessage(tempHistoryTable[i][1], GF_TextColors[tempHistoryTable[i][3]][1], GF_TextColors[tempHistoryTable[i][3]][2], GF_TextColors[tempHistoryTable[i][3]][3])
		end
	end
end
function GF_GetLogFilters()
	if GF_SavedVariables.logshowgroup then GF_LogFilters[1] = true GF_LogFilters[2] = true else GF_LogFilters[1] = nil GF_LogFilters[2] = nil end
	if GF_SavedVariables.logshowfiltered then GF_LogFilters[3] = true else GF_LogFilters[3] = nil end
	if GF_SavedVariables.logshowchat then GF_LogFilters[4] = true else GF_LogFilters[4] = nil end
	if GF_SavedVariables.logshowtrades then GF_LogFilters[5] = true else GF_LogFilters[5] = nil end
	if GF_SavedVariables.logshowguilds then GF_LogFilters[11] = true else GF_LogFilters[11] = nil end
	if GF_SavedVariables.logshowloot then GF_LogFilters[6] = true else GF_LogFilters[6] = nil end
	if GF_SavedVariables.logshowspam then GF_LogFilters[7] = true else GF_LogFilters[7] = nil end
	if GF_SavedVariables.logshowblacklist then GF_LogFilters[8] = true else GF_LogFilters[8] = nil end
	if GF_SavedVariables.logshowbelowlevel then GF_LogFilters[9] = true else GF_LogFilters[9] = nil end

	if GF_SavedVariables.logchannels then GF_LogFilters["CHANNEL"] = true else GF_LogFilters["CHANNEL"] = nil end
	if GF_SavedVariables.logparty then GF_LogFilters["PARTY"] = true GF_LogFilters["RAID"] = true GF_LogFilters["RAID_LEADER"] = true GF_LogFilters["RAID_WARNING"] = true GF_LogFilters["BATTLEGROUND"] = true GF_LogFilters["BATTLEGROUND_LEADER"] = true else GF_LogFilters["PARTY"] = nil GF_LogFilters["RAID"] = nil GF_LogFilters["RAID_LEADER"] = nil GF_LogFilters["RAID_WARNING"] = nil GF_LogFilters["BATTLEGROUND"] = nil GF_LogFilters["BATTLEGROUND_LEADER"] = nil end
	if GF_SavedVariables.logguild then GF_LogFilters["GUILD"] = true GF_LogFilters["OFFICER"] = true else GF_LogFilters["GUILD"] = nil GF_LogFilters["OFFICER"] = nil end
	if GF_SavedVariables.logwhisper then GF_LogFilters["WHISPER"] = true GF_LogFilters["WHISPER_INFORM"] = true else GF_LogFilters["WHISPER"] = nil GF_LogFilters["WHISPER_INFORM"] = nil end
	if GF_SavedVariables.logsay then GF_LogFilters["SAY"] = true else GF_LogFilters["SAY"] = nil end
	if GF_SavedVariables.logyell then GF_LogFilters["YELL"] = true else GF_LogFilters["YELL"] = nil end
	if GF_SavedVariables.loghardcore then GF_LogFilters["HARDCORE"] = true GF_LogFilters["SYSTEM"] = true else GF_LogFilters["HARDCORE"] = nil GF_LogFilters["SYSTEM"] = nil end
end

function GF_OnUpdate() -- OnUpdate, SendWho, WhoListUpdated, Announce, Broadcast, Update MessageList
	if GF_UpdateTicker < GetTime() then -- Triggers once per second
		GF_UpdateTicker = GetTime() + 1
		GF_CheckForBroadCast()
		GF_UpdateGroupsFrame()
		GF_RequestAdditionalWhoDataUpdates()
		GF_CheckForAnnounce()
		GF_SendWhoIfNameInQueue()
		GF_UpdateWhoDataViaFriendsList()
	end
end
function GF_SendWhoIfNameInQueue()
	if GF_NextAvailableWhoTime < time() then
		if GF_UrgentWhoRequest[1] then
			SetWhoToUI(0)
			SendWho("n-"..GF_UrgentWhoRequest[1])
			table.remove(GF_UrgentWhoRequest,1)
		elseif not WhoFrame:IsVisible() then
			if GF_ClassWhoRequest then
				if GF_ClassWhoQueue[1] then
					SetWhoToUI(1)
					SendWho(GF_ClassWhoQueue[1])
					table.remove(GF_ClassWhoQueue, 1)
				else
					GF_ClassWhoRequest = nil
					GF_GetWhoButton:SetText(GF_GET_WHO)
					GF_GetWhoTotalNames:SetText(GF_ClassWhoMatchingResults)
				end
			elseif GF_SavedVariables.usewhoongroups and GF_WhoQueue[1] then
				if (GF_WhoTable[GF_RealmName][GF_WhoQueue[1]] and GF_WhoTable[GF_RealmName][GF_WhoQueue[1]][4] + 86400 > time()) or GF_AddonNamesToBeSentAsARequest[GF_WhoQueue[1]] then
					GF_WhoQueue[GF_WhoQueue[1]] = nil
					table.remove(GF_WhoQueue, 1)
					return
				end
				SetWhoToUI(1)
				SendWho("n-"..GF_WhoQueue[1])
				GF_WhoQueue[GF_WhoQueue[1]] = nil
				table.remove(GF_WhoQueue, 1)
			end
		end
	end
end
function GF_WhoListUpdated()
	for i=1, GetNumWhoResults() do
		local name, guild, level, race, class, zone = GetWhoInfo(i)
		if GF_Classes[class] then
			GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], guild, time() }
			GF_AddonWhoDataToBeSentBuffer[name] = GF_WhoTable[GF_RealmName][name]
			GF_AddonNamesFromWhoSinceLoggedOn[name] = true
		end
		if GF_UrgentWhoRequest[name] then GF_UrgentWhoRequest[name] = nil if GF_UpdateAndRequestTimer > 4 then GF_UpdateAndRequestTimer = 5 end end
		if GF_IsGuildieOrPartyMemberUsingAddon() then GF_AddonNeedToBroadcastSomething = true end
		GF_TimeTillNextBroadcast = 0
		if GF_ClassWhoRequest and not GF_ClassWhoTable[name] and not GF_PlayersCurrentlyInGroup[name] and level >= GF_GetWhoParams[1]-GF_GetWhoLevelRange and level <= GF_GetWhoParams[1]+GF_GetWhoLevelRange
		and class == GF_GetWhoParams[2] and (not GF_GetWhoParams[3] or (GF_GetWhoParams[3] and not GF_IsFoundClassWhoPlayerInADungeonOrPvP(zone))) then
			GF_ClassWhoTable[name] = { level, class, zone, time() }
			GF_ClassWhoMatchingResults = GF_ClassWhoMatchingResults + 1
		end
	end
	if GF_ClassWhoRequest then
		if not GF_ClassWhoQueue[1] then
			if GetNumWhoResults() >= 49 then
				GF_GetClassWhoState = GF_GetClassWhoState + 1
				GF_GetWhoTotalNames:SetText(GF_ClassWhoMatchingResults)
				GF_CreateGetWhoQueueList(GF_GetWhoParams[1], GF_GetWhoParams[2])
				GF_GetWhoButton:SetText(GF_STOP_WHO)
				for name,entry in pairs(GF_ClassWhoTable) do if entry[4] <= time() then GF_GetWhoName = name GF_GetWhoNameLabel:SetText(name.."("..entry[1]..")") break end end
			else
				GF_ClassWhoRequest = nil
				GF_GetWhoButton:SetText(GF_GET_WHO)
				GF_GetWhoTotalNames:SetText(GF_ClassWhoMatchingResults)
				for name,entry in pairs(GF_ClassWhoTable) do if entry[4] <= time() then GF_GetWhoName = name GF_GetWhoNameLabel:SetText(name.."("..entry[1]..")") break end end
			end
		else
			GF_GetWhoTotalNames:SetText(GF_ClassWhoMatchingResults)
			for name,entry in pairs(GF_ClassWhoTable) do if entry[4] <= time() then GF_GetWhoName = name GF_GetWhoNameLabel:SetText(name.."("..entry[1]..")") break end end
		end
	end
	SetWhoToUI(0)
end
function GF_AddNameToWhoQueue(name,addToTopOfList,useFriends)
	for i=1, getn(GF_WhoQueue) do
		if GF_WhoQueue[i] == name then return end
	end
	if useFriends and name ~= UnitName("player") then
		if addToTopOfList then GF_SavedVariables.friendsToRemove[name] = time() + 999000 else GF_SavedVariables.friendsToRemove[name] = time() + 999998 end
	elseif addToTopOfList then
		table.insert(GF_WhoQueue, 1, name)
		GF_WhoQueue[name] = time()
	else
		table.insert(GF_WhoQueue, name)
		GF_WhoQueue[name] = time()
	end
	if GF_UpdateAndRequestTimer > 4 then GF_UpdateAndRequestTimer = GF_NextAvailableWhoTime - time() end
end
function GF_GetWhoData(arg2,groupfound)
	if GF_SavedVariables.usewhoongroups and (not GF_WhoQueue[name] or GF_WhoQueue[name] + 60 < time()) and (groupfound or GF_SavedVariables.showformattedchat)
	and (not GF_WhoTable[GF_RealmName][arg2] or GF_WhoTable[GF_RealmName][arg2][4] + 1209600 < time() or (GF_WhoTable[GF_RealmName][arg2][1] < 60 and GF_WhoTable[GF_RealmName][arg2][4] + 86400 < time())) then -- If level 60, get new whodata after 14 days(for guild name changes). If below level 60, get new data every 24 hours.
		if GF_SavedVariables.usefriendslist and not GF_SavedVariables.friendsToRemove[name] then GF_AddNameToWhoQueue(arg2,groupfound,true) else GF_AddNameToWhoQueue(arg2,groupfound) end
	else
		return GF_WhoTable[GF_RealmName][arg2]
	end
end
function GF_UpdateWhoDataViaFriendsList()
	GF_UpdateWhoDataViaFriendsListTimer = GF_UpdateWhoDataViaFriendsListTimer - 1
	if GF_UpdateWhoDataViaFriendsListTimer < 0 then
		GF_UpdateWhoDataViaFriendsListTimer = 1
		local highestPriorityName
		local highestPriorityTime = time() + 999999
		for name,data in GF_SavedVariables.friendsToRemove do if data > time() then if data < highestPriorityTime then highestPriorityTime = data highestPriorityName = name end end end
		if highestPriorityName then
			AddFriend(highestPriorityName)
			GF_BlockingFriendsListUpdates = true
			GF_SavedVariables.friendsToRemove[highestPriorityName] = time() return
		end
	end
end
function GF_CheckForAnnounce()
	if GF_AutoAnnounceTimer then
		GF_AutoAnnounceTimer = GF_AutoAnnounceTimer + 1
		if not GF_ChatJoinedChannels[string.lower(GF_GroupChannelEditBox:GetText())] then GF_TurnOffAnnounce(GF_AUTO_ANNOUNCE_NOT_IN_CHANNEL) return end
		if GF_LFGDescriptionEditBox:GetText() == "" then GF_TurnOffAnnounce(GF_NOTHING_TO_ANNOUNCE) return end
		if GF_AutoAnnounceTimer > GF_SavedVariables.announcetimer then
			GF_AutoAnnounceTimer = 0
			if not GF_PerCharVariables.disablehardcore and GF_Hardcore and GF_PerCharVariables.hardcore ~= 3 then
				SendChatMessage(GF_LFGDescriptionEditBox:GetText(), "HARDCORE", nil, nil)
			else 
				SendChatMessage(GF_LFGDescriptionEditBox:GetText(), "CHANNEL", nil, GF_ChatJoinedChannels[string.lower(GF_GroupChannelEditBox:GetText())])
			end
			DEFAULT_CHAT_FRAME:AddMessage(GF_SENT..GF_LFGDescriptionEditBox:GetText(), 1, 1, 0.5)
			GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_STOP_ANNOUNCE.."-"..GF_SavedVariables.announcetimer - GF_AutoAnnounceTimer)
			GF_MinimapMessageFrameA1:AddMessage(GF_ANNOUNCED_LFG_EXT, 1.0, 1.0, 0.5, 1.0, UIERRORS_HOLD_TIME)
			PlaySound("TellMessage")
		else
			GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_STOP_ANNOUNCE.."-"..GF_SavedVariables.announcetimer - GF_AutoAnnounceTimer)
		end
	end
end
function GF_TurnOffAnnounce(messageText)
	GF_AutoAnnounceTimer = nil
	GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_ANNOUNCE_GROUP)
	DEFAULT_CHAT_FRAME:AddMessage(messageText, 1, 1, 0.5)
end
function GF_TurnOnAnnounce()
	if not GF_ChatJoinedChannels[string.lower(GF_GroupChannelEditBox:GetText())] then GF_TurnOffAnnounce(GF_AUTO_ANNOUNCE_NOT_IN_CHANNEL) return end
	GF_AutoAnnounceTimer = GF_SavedVariables.announcetimer
	if UnitIsPartyLeader("player") then GF_WasPartyLeaderBefore = true end
	GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_STOP_ANNOUNCE.."-"..GF_SavedVariables.announcetimer)
	DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_AUTO_ANNOUNCE_TURNED_ON, 1, 1, 0.5)
end
function GF_UpdateGroupsFrame()
	GF_UpdateAndRequestTimer = GF_UpdateAndRequestTimer - 1
	if GF_UpdateAndRequestTimer < 0 then
		GF_UpdateAndRequestTimer = 30
		for i=1, getn(GF_MessageList[GF_RealmName]) do
			if GF_SavedVariables.usewhoongroups and not GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op] and not GF_WhoQueue[GF_MessageList[GF_RealmName][i].op] then
				if GF_SavedVariables.usefriendslist then if not GF_SavedVariables.friendsToRemove[name] and (not GF_FriendUnknown[name] or GF_FriendUnknown[name] + 900 > time()) then GF_AddNameToWhoQueue(GF_MessageList[GF_RealmName][i].op,true,true) end else GF_AddNameToWhoQueue(GF_MessageList[GF_RealmName][i].op,true) end
			end
			if GF_AddonMakeAListOfGroupsForSending and not GF_AddonOPSentNamesOnLogin[GF_MessageList[GF_RealmName][i].op] then
				GF_AddonGroupDataToBeSentBuffer[GF_MessageList[GF_RealmName][i].op] = GF_MessageList[GF_RealmName][i]
				GF_AddonNeedToBroadcastSomething = true
			end
		end
		GF_AddonMakeAListOfGroupsForSending = nil
		GF_AddonOPSentNamesOnLogin = {}
		GF_ApplyFiltersToGroupList()
	else
		local timeMin, timeSec
		for i=1, GF_ResultsListOffsetSize do
			if i+GF_ResultsListOffset <= getn(GF_FilteredResultsList) then
				timeMin = floor(((time() - GF_FilteredResultsList[i+GF_ResultsListOffset].t))/60)
				timeSec = (time() - GF_FilteredResultsList[i+GF_ResultsListOffset].t) - timeMin*60
				if timeMin < 10 then timeMin = "0"..timeMin end
				if timeSec < 10 then timeSec = "0"..timeSec end
				getglobal("GF_NewItem"..i.."MoreLeftLabel"):SetText(timeMin..":"..timeSec)
			end
		end
	end
end

function GF_RequestAdditionalWhoDataUpdates() -- Data-Sharing algorithm
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
			GF_AddonNeedToBroadcastSomething = true
		end
	end
end
function GF_CheckForBroadCast()
	GF_TimeTillNextBroadcast = GF_TimeTillNextBroadcast - 1
	if GF_TimeTillNextBroadcast < 0 then 
		GF_TimeTillNextBroadcast = 1
		if GF_AddonNeedToBroadcastSomething then
			GF_AddonNeedToBroadcastSomething = nil
			local counter = 0
			local addonsendstring = "U" -- Send List of Groups on Login
			if GF_OnStartupQueueURequest then
				for i=GF_OnStartupQueueURequest, getn(GF_MessageList[GF_RealmName]) do
					if counter > 2 then GF_AddonNeedToBroadcastSomething = true GF_OnStartupQueueURequest = i return end
					if (GF_MessageList[GF_RealmName][i].type == "D" or GF_MessageList[GF_RealmName][i].type == "R") and GF_MessageList[GF_RealmName][i].t + 300 > time() then
						addonsendstring = addonsendstring..":"..GF_MessageList[GF_RealmName][i].op
						if string.len(addonsendstring) > 240 then
							if GetGuildInfo("player") then SendAddonMessage("GF", addonsendstring, "GUILD") end
							if GF_NumPartyMembers > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end
							addonsendstring = "U"
							counter = counter + 1
						end
					end
				end
				if counter == 0 or string.len(addonsendstring) > 1 then if GetGuildInfo("player") then SendAddonMessage("GF", addonsendstring, "GUILD") elseif GF_NumPartyMembers > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end end
				GF_OnStartupQueueURequest = nil
			end

			local sendType = GF_IsGuildieOrPartyMemberUsingAddon()
			if not sendType then return end

			for name,entry in pairs(GF_AddonGroupDataToBeSentBuffer) do -- Send Group Data
				GF_AddonGroupDataToBeSentBuffer[name] = nil
				if (entry.type == "D" or entry.type == "R") and entry.t + 300 > time() then
					if sendType == 1 or sendType == 3 then SendAddonMessage("GF", entry.t..entry.op..":"..entry.message, "GUILD") end
					if sendType > 1 then SendAddonMessage("GF", entry.t..entry.op..":"..entry.message, "PARTY") end
					if GF_WhoTable[GF_RealmName][entry.op] then GF_AddonAllNamesForResponseToLogin[entry.op] = true end
					counter = counter + 1
					if counter > 2 then GF_AddonNeedToBroadcastSomething = true return end
				end
			end

			addonsendstring = "W" -- Send Group Name List
			for name,exists in pairs(GF_AddonAllNamesForResponseToLogin) do
				if name then addonsendstring = addonsendstring..":"..name end
				GF_AddonAllNamesForResponseToLogin[name] = nil
				if string.len(addonsendstring) > 240 then
					if sendType == 1 or sendType == 3 then SendAddonMessage("GF", addonsendstring, "GUILD") end if sendType > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end
					addonsendstring = "W"
					counter = counter + 1
					if counter > 2 then GF_AddonNeedToBroadcastSomething = true return end
				end
			end
			if string.len(addonsendstring) > 1 then if sendType == 1 or sendType == 3 then SendAddonMessage("GF", addonsendstring, "GUILD") end if sendType > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end end
			
			addonsendstring = "R" -- Send Request Name List
			for name,whodata in pairs(GF_AddonNamesToBeSentAsARequest) do
				if whodata then addonsendstring = addonsendstring..":"..name end
				GF_AddonNamesToBeSentAsARequest[name] = nil
				if string.len(addonsendstring) > 240 then
					if sendType == 1 or sendType == 3 then SendAddonMessage("GF", addonsendstring, "GUILD") end if sendType > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end
					addonsendstring = "R"
					counter = counter + 1
					if counter > 2 then GF_AddonNeedToBroadcastSomething = true return end
				end
			end
			if string.len(addonsendstring) > 1 then if sendType == 1 or sendType == 3 then SendAddonMessage("GF", addonsendstring, "GUILD") end if sendType > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end end

			addonsendstring = "" -- Return WhoData for Requested Names
			for name,whodata in pairs(GF_AddonWhoDataToBeSentBuffer) do
				GF_AddonWhoDataToBeSentBuffer[name] = nil
				if whodata then
					if whodata[3] == "" then whodata[3] = "Z" end
					addonsendstring = addonsendstring..":"..whodata[1]..name..GF_ClassIDs[whodata[2]]..whodata[3]..whodata[4]
					if string.len(addonsendstring) > 202 then
						if sendType == 1 or sendType == 3 then SendAddonMessage("GF", addonsendstring, "GUILD") end if sendType > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end
						addonsendstring = ""
						counter = counter + 1
						if counter > 2 then GF_AddonNeedToBroadcastSomething = true return end
					end
				end
			end
			if string.len(addonsendstring) > 1 then if sendType == 1 or sendType == 3 then SendAddonMessage("GF", addonsendstring, "GUILD") end if sendType > 1 then SendAddonMessage("GF", addonsendstring, "PARTY") end end
		end
	end
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
	if string.sub(msg,1,1) == "U" then -- (From OP) Sent on login with a list of names from OP's group list(up to 240 characters).
		for name in string.gfind(string.sub(msg,3), "(%w+)") do
			GF_AddonOPSentNamesOnLogin[name] = true
		end
		if GF_AddonTimeSinceLastUpdate + 60 < time() then
			for name in GF_AddonNamesFromWhoSinceLoggedOn do
				if not GF_AddonOPSentNamesOnLogin[name] and not GF_AddonWhoDataToBeSentBuffer[name] and GF_WhoTable[GF_RealmName][name][4] + 900 > time() then
					GF_AddonAllNamesForResponseToLogin[name] = true
				else
					GF_AddonNamesFromWhoSinceLoggedOn[name] = nil
				end
			end
			GF_AddonTimeSinceLastUpdate = time()
		end
		GF_TimeTillNextBroadcast = (math.random(80))/4 -- Assuming up to 333ms lag, up to 100 different random slots for responses. To keep down on the spam.
		GF_RequestWhoDataPeriodicallyTimer = 60
		GF_AddonMakeAListOfGroupsForSending = true
		GF_UpdateAndRequestTimer = 0
		GF_AddonNeedToBroadcastSomething = true
	elseif string.sub(msg,1,1) == "W" then -- (To Everyone) Sent as a reply to "U". Sends a list of names on your who list excluding those sent by the OP or other players(up to 240 characters).
		for sentname in string.gfind(msg, ":(%w+)") do
			if not GF_WhoTable[GF_RealmName][sentname] then GF_AddonNamesToBeSentAsARequest[sentname] = true end
			GF_AddonAllNamesForResponseToLogin[sentname] = nil
		end
		GF_TimeTillNextBroadcast = (math.random(80))/4
		GF_AddonNeedToBroadcastSomething = true
	elseif string.sub(msg,1,1) == "R" then -- (To Everyone) Sent as a reply to "W". Sends a list of names from the "W" message that you don't have information for(up to 240 characters).
		for sentname in string.gfind(msg, ":(%w+)") do
			if GF_WhoTable[GF_RealmName][sentname] and (GF_WhoTable[GF_RealmName][sentname][1] == 60 or GF_WhoTable[GF_RealmName][sentname][4] + 86400 > time()) then GF_AddonWhoDataToBeSentBuffer[sentname] = GF_WhoTable[GF_RealmName][sentname] end
			GF_AddonNamesToBeSentAsARequest[sentname] = nil
		end
		GF_TimeTillNextBroadcast = (math.random(80))/4
		GF_AddonNeedToBroadcastSomething = true
	elseif string.sub(msg,1,1) == ":" then -- (To Everyone) This is the who data from the names requested in "R".
		for sentlevel,sentname,sentclass,sentguild,senttime in string.gfind(msg, ":(%d+)([a-zA-Z]+)(%d)([a-zA-Z%s]+)(%d+)") do
			if senttime then
				senttime = tonumber(senttime)
				if sentguild == "Z" then sentguild = "" end
				if senttime <= time() and GF_ClassIDs[tonumber(sentclass)] and (not GF_WhoTable[GF_RealmName][sentname] or senttime > GF_WhoTable[GF_RealmName][sentname][4]) then
					GF_WhoTable[GF_RealmName][sentname] = { tonumber(sentlevel), GF_ClassIDs[tonumber(sentclass)], sentguild, senttime }
				end
			end
			GF_AddonAllNamesForResponseToLogin[sentname] = nil
			GF_AddonNamesToBeSentAsARequest[sentname] = nil
			GF_AddonWhoDataToBeSentBuffer[sentname] = nil
		end
	elseif string.len(msg) > 2 then -- (To Everyone) This is the full group information. Which is sent separately from the who data.
		for senttime,sentname,message in string.gfind(msg, "(%d+)([a-zA-Z]+):(.+)") do
			if senttime then
				senttime = tonumber(senttime)
				GF_GetTypes(gsub(gsub(gsub(gsub(gsub(string.lower(gsub(gsub(gsub(gsub(" "..message.." ", " |+h%[([%w%s%p]+)%]|+h|+r", " %1 "), "|c%x+|+(%w+)[%d:]+|+h", " %1 "), "|+h|+r", " "),"([a-z ][a-z])([A-Z])","%1 %2")),".gg/%w+", ""),"([%p%s])(%w%w+)([%p%s])","%1 %2 %3"),"[%s%.%[](%a)[%s%.](%a)[%s%.]","%1%2"),"%s%s+", " "),"[']", ""))
				for i=1, getn(GF_MessageList[GF_RealmName]) do
					if GF_MessageList[GF_RealmName][i].op and GF_MessageList[GF_RealmName][i].op == sentname then
						table.remove(GF_MessageList[GF_RealmName], i)
						break
					end
				end
				if getn(GF_MessageList[GF_RealmName]) > 0 then
					for i=1, getn(GF_MessageList[GF_RealmName]) do
						if senttime > GF_MessageList[GF_RealmName][i].t then table.insert(GF_MessageList[GF_RealmName], i, ({GF_GetGroupInformation(GF_CleanUpMessagesOfBadLinks(message),sentname,senttime)})[1]) return end
					end
				end
				table.insert(GF_MessageList[GF_RealmName], ({GF_GetGroupInformation(GF_CleanUpMessagesOfBadLinks(message),sentname,senttime)})[1])
			end
			GF_AddonGroupDataToBeSentBuffer[sentname] = nil
			GF_AddonAllNamesForResponseToLogin[sentname] = nil
			GF_AddonNamesToBeSentAsARequest[sentname] = nil
			GF_AddonWhoDataToBeSentBuffer[sentname] = nil
		end
	end
end

function self:CHAT_MSG_ADDON()
	if arg1 == "GF" and arg4 ~= UnitName("player") then GF_AddonListOfGuildAndPartyMembersWithAddon[arg4] = true GF_ParseIncomingAddonMessages(arg2) end
end
function self:ADDON_LOADED() -- Events... Need to clean up party/chat to eliminate repeating scripts
	self:Show()
	GF_OnLoad()				
	if arg1 == "pfQuest" then
		local alt_QuestLogTitleButton_OnClick = QuestLogTitleButton_OnClick
		function QuestLogTitleButton_OnClick(button, self)
			if GF_LFGDescriptionEditBoxHasFocus[1] and button == "LeftButton" and IsShiftKeyDown() then
				local questName, questLevel = pfQuestCompat.GetQuestLogTitle(this:GetID() + FauxScrollFrame_GetOffset(EQL3_QuestLogListScrollFrame or ShaguQuest_QuestLogListScrollFrame or QuestLogListScrollFrame))
				local questids = pfDatabase:GetQuestIDs(this:GetID() + FauxScrollFrame_GetOffset(EQL3_QuestLogListScrollFrame or ShaguQuest_QuestLogListScrollFrame or QuestLogListScrollFrame))
				local questid = questids and tonumber(questids[1]) or 0

				GF_LFGDescriptionEditBox:Insert(pfUI.api.rgbhex(pfQuestCompat.GetDifficultyColor(questLevel)).."|Hquest:"..questid..":"..questLevel.."|h["..questName.."]|h|r")
				return true
			end
			alt_QuestLogTitleButton_OnClick(button, self)
		end
	end
	self:UnregisterEvent("ADDON_LOADED")
end
function self:FRIENDLIST_UPDATE()
	if GetNumFriends() ~= GF_CurrentNumFriends then GF_UpdateFriendsList() end
end
function self:GUILD_ROSTER_UPDATE()
	if GetNumGuildMembers() ~= GF_CurrentNumGuildies then GF_UpdateGuildiesList() end
end
function self:PARTY_INVITE_REQUEST()
	if GF_RequestInviteTime[arg1] and GF_RequestInviteTime[arg1] > time() then AcceptGroupInvite() end
end
function self:PARTY_MEMBERS_CHANGED()
	GF_UpdateGroup()
end
function self:PARTY_LEADER_CHANGED()
	GF_UpdateGroup()
end
function self:PLAYER_ENTERING_WORLD()
	GF_NumPartyMembers = GF_GetNumGroupMembers()
	GF_LoadVariables()
	GF_LoadSettings()
	GF_UpdateBlackListItems()
	GF_ApplyFiltersToGroupList()
	if not GF_SavedVariables.addonsendtimeout or GF_SavedVariables.addonsendtimeout + 900 < time() then
		GF_SavedVariables.addonsendtimeout = time()
		GF_OnStartupQueueURequest = 1
		GF_AddonNeedToBroadcastSomething = true			
	else
		if GetGuildInfo("player") then SendAddonMessage("GF", "Z", "GUILD") end
		if GF_NumPartyMembers > 1 then SendAddonMessage("GF", "Z", "PARTY") end
	end
	GF_BindKey("I", "GF_SHOW_FRAME")
	GF_BindKey("SHIFT-G", "GF_SHOW_GROUP")
	GF_BindKey("SHIFT-L", "GF_SHOW_LOG")
	SaveBindings(1)
	GF_JoinWorld()
	self:UnregisterEvent("PLAYER_ENTERING_WORLD")
end
function self:PLAYER_LEAVING_WORLD()
	if GF_SavedVariables.mainframestatus == 0 then
		local _,_,_,xpos, ypos = GF_MainFrame:GetPoint()
		GF_SavedVariables.MainFrameXPos = xpos
		GF_SavedVariables.MainFrameYPos = ypos
	end
	GF_PerCharVariables.searchtext = GF_GroupsFrameDescriptionEditBox:GetText()
	GF_PerCharVariables.searchlfgtext = GF_LFGDescriptionEditBox:GetText()
	GF_PerCharVariables.searchlfgwhispertext = GF_GetWhoWhisperEditBox:GetText()
	if string.len(GF_GroupChannelEditBox:GetText()) > 1 then GF_SavedVariables.groupchannelname = GF_GroupChannelEditBox:GetText() else GF_GroupChannelEditBox:SetText(GF_SavedVariables.groupchannelname) end
end
function self:PLAYER_LEVEL_UP()
	GF_FixLFGStrings()
	if GF_PerCharVariables.getwhowhisperlevel == 0 then GF_GetWhoLevelDropdownTextLabel:SetText(GF_LEVEL.." "..UnitLevel("player").."±") end
end
function self:RAID_ROSTER_UPDATE()
	GF_UpdateGroup()
end
function self:UPDATE_MOUSEOVER_UNIT()
	if UnitIsPlayer("mouseover") and UnitIsFriend("player","mouseover") then GF_WhoTable[GF_RealmName][UnitName("mouseover")] = { UnitLevel("mouseover"), ({UnitClass("mouseover")})[2], GetGuildInfo("mouseover") or "", time() } end
end
function self:WHO_LIST_UPDATE()
	GF_WhoListUpdated()
end

function self:CHAT_MSG_BATTLEGROUND()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_BATTLEGROUND_LEADER()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_CHANNEL()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_COMBAT_FACTION_CHANGE()
	GF_ProcessedFirstMessage["SYSTEM"] = nil
end
function self:CHAT_MSG_COMBAT_HONOR_GAIN()
	GF_ProcessedFirstMessage["SYSTEM"] = nil
end
function self:CHAT_MSG_COMBAT_XP_GAIN()
	GF_ProcessedFirstMessage["SYSTEM"] = nil
end
function self:CHAT_MSG_EMOTE()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_GUILD()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_HARDCORE()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_LOOT()
	GF_ProcessedFirstMessage["SYSTEM"] = nil
end
function self:CHAT_MSG_MONEY()
	GF_ProcessedFirstMessage["SYSTEM"] = nil
end
function self:CHAT_MSG_MONSTER_EMOTE()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_MONSTER_SAY()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_MONSTER_YELL()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_OFFICER()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_PARTY()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_RAID()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_RAID_LEADER()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_RAID_WARNING()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_SAY()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_SYSTEM()
	GF_ProcessedFirstMessage["SYSTEM"] = nil
end
function self:CHAT_MSG_TEXT_EMOTE()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_WHISPER()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_WHISPER_INFORM()
	GF_ProcessedFirstMessage[arg2] = nil
end
function self:CHAT_MSG_YELL()
	GF_ProcessedFirstMessage[arg2] = nil
end

function GF_ChatFunctions(fName,event,arg1,arg2,arg8,arg9) -- Functions above reset the chat processing below. Don't have to worry about lag and timers this way.
	getglobal(fName)(event,arg1,arg2,arg8,arg9)
end

function GF_CHAT_MSG_BATTLEGROUND()
	if not GF_WhoTable[GF_RealmName][arg2] then GF_UpdatePlayersInGroupList() end
	GF_AddLogMessage(arg1,10,true,arg2,arg8,arg9,string.sub(event,10))
	GF_PreviousMessage[arg2] = {true}
end
function GF_CHAT_MSG_BATTLEGROUND_LEADER()
	if not GF_WhoTable[GF_RealmName][arg2] then GF_UpdatePlayersInGroupList() end
	GF_AddLogMessage(arg1,10,true,arg2,arg8,arg9,string.sub(event,10))
	GF_PreviousMessage[arg2] = {true}
end
function GF_CHAT_MSG_CHANNEL(event,arg1,arg2,arg8,arg9)
	GF_ProcessChatMessages(event,arg1,arg2,arg8,arg9)
end
function GF_CHAT_MSG_COMBAT_FACTION_CHANGE()
	GF_AddLogMessage(arg1,6,true,"SYSTEM",arg8,arg9,string.sub(event,10))
	if GF_SavedVariables.showloottexts then GF_PreviousMessage["SYSTEM"] = {true} else GF_PreviousMessage["SYSTEM"] = {} end
end
function GF_CHAT_MSG_COMBAT_HONOR_GAIN()
	GF_AddLogMessage(arg1,6,true,"SYSTEM",arg8,arg9,string.sub(event,10))
	if GF_SavedVariables.showloottexts then GF_PreviousMessage["SYSTEM"] = {true} else GF_PreviousMessage["SYSTEM"] = {} end
end
function GF_CHAT_MSG_COMBAT_XP_GAIN()
	GF_AddLogMessage(arg1,6,true,"SYSTEM",arg8,arg9,string.sub(event,10))
	if GF_SavedVariables.showloottexts then GF_PreviousMessage["SYSTEM"] = {true} else GF_PreviousMessage["SYSTEM"] = {} end
end
function GF_CHAT_MSG_EMOTE()
	GF_CheckForEmotes(arg1,arg2)
end
function GF_CHAT_MSG_GUILD()
	GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,string.sub(event,10))
	if GF_SavedVariables.showformattedchat then GF_AddChatMessage(arg1,arg2,string.sub(event,10)) GF_PreviousMessage[arg2] = {} else GF_PreviousMessage[arg2] = {true} end
end
function GF_CHAT_MSG_HARDCORE()
	GF_ProcessChatMessages(event,arg1,arg2,arg8,arg9)
end
function GF_CHAT_MSG_LOOT()
	GF_AddLogMessage(arg1,6,true,"SYSTEM",arg8,arg9,string.sub(event,10))
	GF_CheckForLoot(arg1)
end
function GF_CHAT_MSG_MONEY()
	GF_AddLogMessage(arg1,6,true,"SYSTEM",arg8,arg9,string.sub(event,10))
	if GF_SavedVariables.showloottexts then GF_PreviousMessage["SYSTEM"] = {true} else GF_PreviousMessage["SYSTEM"] = {} end
end
function GF_CHAT_MSG_MONSTER_EMOTE()
	GF_CheckForMonsterEmote(arg1,arg2)
end
function GF_CHAT_MSG_MONSTER_SAY()
	GF_CheckForMonsterEmote(arg1,arg2)
end
function GF_CHAT_MSG_MONSTER_YELL()
	GF_CheckForMonsterEmote(arg1,arg2)
end
function GF_CHAT_MSG_OFFICER()
	GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,string.sub(event,10))
	GF_PreviousMessage[arg2] = {true}
end
function GF_CHAT_MSG_PARTY()
	if not GF_WhoTable[GF_RealmName][arg2] then GF_UpdatePlayersInGroupList() end
	GF_AddLogMessage(arg1,10,true,arg2,arg8,arg9,string.sub(event,10))
	GF_PreviousMessage[arg2] = {true}
end
function GF_CHAT_MSG_RAID()
	if not GF_WhoTable[GF_RealmName][arg2] then GF_UpdatePlayersInGroupList() end
	GF_AddLogMessage(arg1,10,true,arg2,arg8,arg9,string.sub(event,10))
	GF_PreviousMessage[arg2] = {true}
end
function GF_CHAT_MSG_RAID_LEADER()
	if not GF_WhoTable[GF_RealmName][arg2] then GF_UpdatePlayersInGroupList() end
	GF_AddLogMessage(arg1,10,true,arg2,arg8,arg9,string.sub(event,10))
	GF_PreviousMessage[arg2] = {true}
end
function GF_CHAT_MSG_RAID_WARNING()
	if not GF_WhoTable[GF_RealmName][arg2] then GF_UpdatePlayersInGroupList() end
	GF_AddLogMessage(arg1,10,true,arg2,arg8,arg9,string.sub(event,10))
	GF_PreviousMessage[arg2] = {true}
end
function GF_CHAT_MSG_SAY()
	GF_ProcessChatMessages(event,arg1,arg2,arg8,arg9)
end
function GF_CHAT_MSG_SYSTEM()
	if string.find(arg1, GF_NOW_AFK) then if GF_AutoAnnounceTimer then GF_TurnOffAnnounce(GF_AFK_ANNOUNCE_OFF) end return end
	GF_CheckForSystem(arg1)
end
function GF_CHAT_MSG_TEXT_EMOTE()
	GF_CheckForEmotes(arg1,arg2)
end
function GF_CHAT_MSG_WHISPER()
	GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,string.sub(event,10))
	table.insert(DEFAULT_CHAT_FRAME.editBox.lastTell,1,arg2)
	GF_PreviousMessage[arg2] = {true}
end
function GF_CHAT_MSG_WHISPER_INFORM()
	GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,string.sub(event,10))
	table.insert(DEFAULT_CHAT_FRAME.editBox.lastTell,1,arg2)
	GF_PreviousMessage[arg2] = {true}
end
function GF_CHAT_MSG_YELL()
	GF_ProcessChatMessages(event,arg1,arg2,arg8,arg9)
end

function GF_ProcessChatMessages(event,arg1,arg2,arg8,arg9) -- Chat processing functions
	event = string.sub(event,10)
	arg2 = gsub(arg2,".* ","")
	--print(GetTime())
	local logType = GF_CheckForGroups(gsub(arg1,"[\\\"]", " "),arg2,arg9,event) or 4
	--print(GetTime())
	if logType == 5 or logType == 11 or logType < 4 then GF_PlayerMessages[arg2][1][1] = GF_PlayerMessages[arg2][1][1] + 1 end -- To block multiple messages in series
	GF_AddLogMessage(GF_CleanUpMessagesOfBadLinks(arg1),logType,true,arg2,arg8,arg9,event)
	if arg2 == UnitName("player") or (GF_SavedVariables.alwaysshowguild and (GF_Guildies[arg2] or GF_Friends[arg2] or GF_PlayersCurrentlyInGroup[arg2])) or GF_ChatCheckFilters(logType,arg1,event) then
		GF_PreviousMessage[arg2] = {true}
	else
		GF_PreviousMessage[arg2] = {}
	end
end
function GF_CheckForMonsterEmote(arg1,arg2)
	if not arg2 or arg2 == "" then arg2 = "SYSTEM" end
	if GF_SavedVariables.systemfilter then
		for i=1, getn(GF_MonsterEmoteFilters) do
			if string.find(arg1, GF_MonsterEmoteFilters[i]) then GF_PreviousMessage[arg2] = {} return end
		end
	end
	GF_PreviousMessage[arg2] = {true}
end
function GF_CheckForEmotes(arg1,arg2)
	if not arg2 or arg2 == "" then arg2 = "SYSTEM" end
	if GF_BlackList[GF_RealmName][arg2] and not GF_PlayersCurrentlyInGroup[arg2] and not GF_Friends[arg2] and not GF_Guildies[arg2] then
		GF_PreviousMessage[arg2] = {}
		return
	elseif GF_SavedVariables.systemfilter then
		for i=1, getn(GF_EmoteFilters) do if string.find(arg1, GF_EmoteFilters[i]) then GF_PreviousMessage[arg2] = {} return end end
	elseif GF_CheckForSpam(arg1,arg2) then
		GF_PreviousMessage[arg2] = {}
		return
	end
	GF_PreviousMessage[arg2] = {true}
end
function GF_CheckForLoot(arg1)
	if not GF_SavedVariables.showloottexts then
		if string.find(arg1, "9d9d9d") then GF_PreviousMessage["SYSTEM"] = {} return -- Block grey Items
		elseif string.find(arg1, "1eff00") then for i=1, getn(GF_LootFilters) do if string.find(arg1, GF_LootFilters[i]) then GF_PreviousMessage["SYSTEM"] = {} return end end -- Block 'selected need/greed/pass' and rolls on green items
		else for i=1, 2 do  if string.find(arg1, GF_LootFilters[i]) then GF_PreviousMessage["SYSTEM"] = {} return end end end -- Block only 'need/greed' rolls on other items
	end
	GF_PreviousMessage["SYSTEM"] = {true}
end
function GF_CheckForSystem(arg1)
	if arg1 == ERR_FRIEND_WRONG_FACTION then
		GF_PreviousMessage["SYSTEM"] = {}
		return
	elseif string.find(arg1, "^%d+") then
		for i=1, GetNumWhoResults() do
			local name,guild,level,_,class = GetWhoInfo(i)
			if GF_Classes[class] then
				GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], guild, time() }
				GF_AddonWhoDataToBeSentBuffer[name] = GF_WhoTable[GF_RealmName][name]
				GF_AddonNamesFromWhoSinceLoggedOn[name] = true
			end
			if GF_UrgentWhoRequest[name] then GF_UrgentWhoRequest[name] = nil GF_UpdateAndRequestTimer = .5 end
			if GF_IsGuildieOrPartyMemberUsingAddon() then GF_AddonNeedToBroadcastSomething = true end
			GF_TimeTillNextBroadcast = 0
		end
		FriendsFrame_Update()
	elseif GF_SavedVariables.showformattedchat and string.find(arg1,"|+Hplayer: ?(%w+)|+h%[[%w%s!=\,\-\+<>\":'\.]+%]|+h ") then
		local lfs,lfe,wordString = string.find(arg1,"|+Hplayer: ?(%w+)|+h%[[%w%s!=\,\-\+<>\":'\.]+%]|+h ")
		if wordString then
			if not GF_WhoTable[GF_RealmName][wordString] then
				for i=1, GetNumGuildMembers() do
					local name,_,_,level,class,_,_,_,online = GetGuildRosterInfo(i)
					if name then 
						if online then GF_Guildies[name] = true else GF_Guildies[name] = nil end
						if GF_Classes[class] then GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], GetGuildInfo("player"), time() } end
					end
				end
				for i=1, GetNumFriends() do
					local name,level,class,_,online = GetFriendInfo(i)
					if name then
						if online then GF_Friends[name] = true else GF_Friends[name] = nil end
						if GF_Classes[class] and level and level > 0 then GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], "", time()} end
					end
				end
			end
			if GF_WhoTable[GF_RealmName][wordString] then
				GF_PreviousMessage["SYSTEM"] = {true,string.sub(arg1,1,lfs).."cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][wordString][2]] or "ffffff").."|Hplayer:"..wordString.."|h["..wordString..", "..GF_WhoTable[GF_RealmName][wordString][1].."]|h|r"..string.sub(arg1,lfe)}
				return
			end
		end
	else
		for i=1, getn(GF_HardcoreMessages) do
			local lfs,lfe,wordString,tempString,tempVal = string.find(arg1, GF_HardcoreMessages[i])
			if tempString then
				lfs,lfe = string.find(" "..wordString, " "..tempString.." ",lfs)
				if lfs then
					GF_AddLogMessage(string.sub(string.sub(" "..wordString,1,lfs).."|cff9d9d9d|Hplayer:"..tempString.."|h["..tempString.."]|h|r "..string.sub(wordString,lfe),2),4,true,"SYSTEM",nil,nil,"SYSTEM")

					if GF_WhoTable[GF_RealmName][tempString] then
						if tempVal then
							GF_WhoTable[GF_RealmName][tempString][1] = tonumber(tempVal)
						else 
							GF_WhoTable[GF_RealmName][tempString][1] = 60
						end
						if GF_SavedVariables.systemfilter then
							GF_PreviousMessage["SYSTEM"] = {true,string.sub(string.sub(" "..wordString,1,lfs).."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][tempString][2]] or "9d9d9d").."|Hplayer:"..tempString.."|h["..tempString.."]|h|r "..string.sub(wordString,lfe),2)}
							return
						end
					elseif GF_SavedVariables.systemfilter then
						GF_PreviousMessage["SYSTEM"] = {true,string.sub(string.sub(" "..wordString,1,lfs).."|cff9d9d9d|Hplayer:"..tempString.."|h["..tempString.."]|h|r "..string.sub(wordString,lfe),2)}
						return
					end
				end
			end
		end
		for name in string.gfind(arg1, "(%w+)") do
			if GF_SavedVariables.friendsToRemove[name] then
				GF_PreviousMessage["SYSTEM"] = {}
				return
			end
		end
		if GF_SavedVariables.systemfilter then
			for i=1, getn(GF_ServerMessageFilters) do -- Block Server Spam about RMT or WDB folders or Discord servers or whatever
				if string.find(arg1, GF_ServerMessageFilters[i]) then GF_PreviousMessage["SYSTEM"] = {} return end
			end
			for i=1, getn(GF_SystemMessageFilters) do -- 5-second timeout on quest and party-related messages
				local lfs,lfe,wordString = string.find(arg1, GF_SystemMessageFilters[i])
				if wordString then
					if not GF_PlayerSystemMessage[wordString] then
						GF_PlayerSystemMessage[wordString] = { [i] = GetTime() + 5 }
						break
					elseif not GF_PlayerSystemMessage[wordString][i] or GF_PlayerSystemMessage[wordString][i] < GetTime() then
						GF_PlayerSystemMessage[wordString][i] = GetTime() + 5
						break
					else
						GF_PreviousMessage["SYSTEM"] = {}
						return
					end
				end
			end
		end
	end
	GF_PreviousMessage["SYSTEM"] = {true}
end
function GF_CheckForGroups(arg1,arg2,arg9,event,showanyway)
-- "Say" and "Yell" messages from guildies/friends/party members will be flagged as [M] and always displayed in chat and in logs.
-- "Channel" messages from guildies/friends/party members will be logged normally but will always be displayed in chat.

-- "Say" messages will always be displayed unless flagged as spam.
-- "Yell" and "Channel" messages will only display if allowed.
	if GF_BlackList[GF_RealmName][arg2] and not GF_PlayersCurrentlyInGroup[arg2] and not GF_Friends[arg2] and not GF_Guildies[arg2] then return 8 end
	GF_GetTypes(arg1,showanyway)
	if GF_MessageData.foundBlockList then return 7 end
	if event == "HARDCORE" or string.lower(arg9) == "hardcore" then GF_MessageData.foundHC = true end
	if GF_MessageData.foundGuild > 2.9 then return GF_CheckForSpam(arg1,arg2) or 11
	elseif GF_MessageData.foundTrades > 2.9 then return GF_CheckForSpam(arg1,arg2) or 5
	elseif GF_MessageData.foundLFM < GF_SavedVariables.FilterLevel and GF_MessageData.foundLFG < GF_SavedVariables.FilterLevel then
		if GF_SavedVariables.showformattedchat and GF_SavedVariables.usefriendslist then GF_GetWhoData(arg2) end
		return GF_CheckForSpam(arg1,arg2) or 4
	end

	local entry,foundInGroup = GF_GetGroupInformation(GF_CleanUpMessagesOfBadLinks(arg1),arg2,nil,event)
	GF_GetWhoData(arg2,foundInGroup)
	if foundInGroup then
		if event ~= "SAY" then table.insert(GF_MessageList[GF_RealmName],1,entry) end
		if GF_UpdateAndRequestTimer > 5 then GF_UpdateAndRequestTimer = 4 end
		if not GF_EntryMatchesGroupFilterCriteria(entry) then
			foundInGroup = 3
		elseif GF_PerCharVariables.playsounds then
			PlaySoundFile( "Sound\\Interface\\PickUp\\PutDownRing.wav" )
		end
	end
	return GF_CheckForSpam(arg1,arg2,foundInGroup) or foundInGroup
end
function GF_GetTypes(arg1, showanyway)
	if showanyway == true then print(arg1) end
	GF_MessageData = { languageName = "en", foundIgnore = 0,foundGuild = 0,foundGuildExclusion = 0,foundLFM = 0,foundLFMPreSuf = 0,foundLFG = 0,foundLFGPreSuf = 0,foundClass = nil,foundQuest = {},foundDungeon = nil,foundRaid = nil,foundTrades = 0,foundTradesExclusion = 0,foundPvP = nil,foundDFlags = {},foundPFlags = {},foundHC = nil,foundNotHC = nil, lfmlfgName = {}, groupName = {}, foundBlockList = nil,}
	arg1 = " "..gsub(gsub(gsub(string.lower(gsub(gsub(gsub(arg1, "|[cC]%x+%p+(%w+)[%w:]+|+[hH]", " %1 >z"), "|[hr]", ""),"([a-z ][a-z])([A-Z])","%1 %2")),".gg/%w+", ""),"[\"#\$\%&\*,\.@\\\^_`~|]"," "),"'","").." "
	local wordTable,wordTableTrade,wordTableGuild = {},{},{}
	local wordString,lfs,lfe,tempVal,tempString
	local languageID = {}
	
	if string.find(arg1, "%d+p[%p%s]") then GF_MessageData.foundLFM = 2 if showanyway == true then print("##p lfm 2") end end -- "10p heal" messages from chinese
	lfs = 1 -- To detect space/lf##m/letter(eg " lf15mbwl" = lfm bwl)
	while true do lfs,lfe,wordString = string.find(arg1," ([lk]f?%s?%d+m)[%p%s]",lfs) if wordString then arg1 = string.sub(arg1,1,lfs).."lfm "..string.sub(arg1,lfs+string.len(wordString)+1) lfs = lfs + 4 GF_MessageData.foundLFM = 4 GF_MessageData.foundGuildExclusion = 2 GF_MessageData.foundTradesExclusion = 2 if showanyway == true then print("lf##m lfm 4 .. guildex 3... tradesex 3") end else break end end
	lfs = 1 -- To detect space/number+/punctuation/number+/space for groups
	while true do lfs,lfe,wordString,tempString = string.find(arg1,"[%p%s](%d%d?([=/])%d%d?) ",lfs) if wordString then if tempString == "=" then GF_MessageData.foundLFM = 2 lfs = lfe else arg1 = string.sub(arg1,1,lfs).."group"..string.sub(arg1,lfe) lfs = lfs + 6 end else break end end
	lfs,lfe,wordString = string.find(arg1,"%d?%s?\-?([\+±])\-?%s?%d?")
	if lfs then -- To detect "+- or ±"
		if wordString == "±" then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1 if showanyway == true then print("± trade 1") end
		elseif string.find(arg1, "[\+\-][\+\-]%s?%d",lfs) then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1 if showanyway == true then print("+-d% trade 1") end
		elseif string.find(arg1, "%d%s?[\+\-][\+\-]",lfs) then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1 if showanyway == true then print("d%+- trade 1") end end
	end

	tempVal = 1
	while true do -- Block letter repeats
		lfs = strbyte(arg1,tempVal)
		lfe = strbyte(arg1,tempVal+1)
		if not lfe then break end
		if lfs >= 194 then
			if GF_WORD_ACCENT_ASCII_FIX[lfs] and GF_WORD_ACCENT_ASCII_FIX[lfs][lfe] then
				if lfs == strbyte(arg1,tempVal+2) and lfe == strbyte(arg1,tempVal+3) then
					table.insert(wordTable,GF_WORD_ACCENT_ASCII_FIX[lfs][lfe]) tempVal=tempVal+1 for j=1,250,2 do if lfs ~= strbyte(arg1,tempVal+j) and lfe ~= strbyte(arg1,tempVal+j+1) or not GF_WORD_ACCENT_ASCII_FIX[strbyte(arg1,tempVal+j)] or not GF_WORD_ACCENT_ASCII_FIX[strbyte(arg1,tempVal+j)][strbyte(arg1,tempVal+j+1)] then tempVal=tempVal+j-1 break end end
				else
					table.insert(wordTable,GF_WORD_ACCENT_ASCII_FIX[lfs][lfe])
					tempVal = tempVal + 1
				end
			elseif GF_WORD_ASIAN_LANGUAGES[lfs] then -- Chinese characters are always 227-239 first byte, and then two more bytes that are 128-190ish
				table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(lfe)) table.insert(wordTable,strchar(strbyte(arg1,tempVal+2)))
				tempVal=tempVal+2
			else
				table.insert(wordTable,strchar(lfs))
			end
		elseif lfs == lfe then
			if lfs >= 97 and lfs <= 122 then
				if lfs == strbyte(arg1,tempVal+2) then
					table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(lfe)) tempVal=tempVal+2 for j=1,250 do if lfs ~= strbyte(arg1,tempVal+j) then tempVal=tempVal+j-1 break end end
				else
					table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(lfe)) tempVal=tempVal+1
				end
			else
				table.insert(wordTable,strchar(lfs)) tempVal=tempVal+1 for j=1,250 do if lfs ~= strbyte(arg1,tempVal+j) then tempVal=tempVal+j-1 break end end
			end
		elseif lfe == 32 or lfe == 46 then -- Space or Period
			if (strbyte(arg1,tempVal-1) == 32 or strbyte(arg1,tempVal-1) == 46 or strbyte(arg1,tempVal-1) == 60) and (strbyte(arg1,tempVal+3) == 32 or strbyte(arg1,tempVal+3) == 46 or strbyte(arg1,tempVal+3) == 60) then
				table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(strbyte(arg1,tempVal+2))) tempVal=tempVal+2 for j=3,250,2 do if strbyte(arg1,tempVal+j) ~= 32 and strbyte(arg1,tempVal+j) ~= 46 and strbyte(arg1,tempVal+j) ~= 62 then tempVal=tempVal+j-3 break else table.insert(wordTable,strchar(strbyte(arg1,tempVal+j-1))) end end
			else
				table.insert(wordTable,strchar(lfs))
			end
		elseif lfs == strbyte(arg1,tempVal+2) and lfs == strbyte(arg1,tempVal+4) and lfs ~= 32 and lfs ~= 46 then
			if lfe == strbyte(arg1,tempVal+3) then
				table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(lfe)) table.insert(wordTable,strchar(strbyte(arg1,tempVal+2))) table.insert(wordTable,strchar(strbyte(arg1,tempVal+3))) tempVal=tempVal+3 for j=2,250 do if strbyte(arg1,tempVal+j) ~= strbyte(arg1,tempVal+j-2) then tempVal=tempVal+j-1 break end end
			else
				table.insert(wordTable,strchar(lfs))
			end
		else
			table.insert(wordTable,strchar(lfs))
		end
		tempVal = tempVal + 1
	end
	arg1 = table.concat(wordTable)
	if string.sub(arg1,-1) ~= " " then arg1 = arg1.." " end
	wordTable = {}

	lfs = 1 -- To detect "faces"(eg ":d",":p")
	while true do lfs,lfe,wordString = string.find(arg1, " (%p%a+)[%[%s]",lfs) if wordString then if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe) end lfs = lfs + string.len(wordString) + 1 else break end end
	lfs = 2 -- To detect word/word with no space(eg "lfgscholo" = lfg scholo)
	while true do
		lfs,lfe,wordString = string.find(arg1,"(%a%a%a%a+)",lfs)
		if wordString then
			if not GF_WORD_WORD_REPLACE[wordString] and not GF_WORD_SPECIAL_EXCEPTIONS[wordString] then
				tempVal = string.len(wordString) - 1
				if tempVal > 11 then tempVal = 11 end
				for i=tempVal, 3, -1 do
					if GF_WORD_WORD_REPLACE[string.sub(wordString,1,i)] then
						if tempVal-i > 2 and GF_WORD_SPECIAL_EXCEPTIONS[string.sub(wordString,1,i+3)] then
							arg1 = string.sub(arg1,1,lfs-1)..string.sub(wordString,1,i+3).." "..string.sub(arg1,lfs+i+3)
						elseif tempVal-i > 1 and GF_WORD_SPECIAL_EXCEPTIONS[string.sub(wordString,1,i+2)] then
							arg1 = string.sub(arg1,1,lfs-1)..string.sub(wordString,1,i+2).." "..string.sub(arg1,lfs+i+2)
						elseif tempVal-i > 0 and GF_WORD_SPECIAL_EXCEPTIONS[string.sub(wordString,1,i+1)] then
							arg1 = string.sub(arg1,1,lfs-1)..string.sub(wordString,1,i+1).." "..string.sub(arg1,lfs+i+1)
						else
							arg1 = string.sub(arg1,1,lfs-1)..string.sub(wordString,1,i).." "..string.sub(arg1,lfs+i)
						end
						lfs = lfe + 1
						break
					elseif GF_WORD_WORD_REPLACE[string.sub(wordString,-i)] then
						arg1 = string.sub(arg1,1,lfe-i).." "..string.sub(wordString,-i)..string.sub(arg1,lfe+1)
						lfs = lfs + (i-string.len(string.sub(wordString,-i))) + string.len(wordString) + 1
						break
					end
				end
				if lfs < lfe then
					if GF_WORD_WORD_REPLACE[string.sub(wordString,1,2)] then
						arg1 = string.sub(arg1,1,lfs-1)..string.sub(wordString,1,2).." "..string.sub(arg1,lfs+2)
						lfs = lfs + string.len(wordString) + 1
					elseif GF_WORD_WORD_REPLACE[string.sub(wordString,-2)] then
						wordString = string.sub(wordString,1,-3)
						if GF_WORD_FIX_SINGLE_WORD[wordString] then wordString = GF_WORD_FIX_SINGLE_WORD[wordString]
						elseif GF_WORD_FIX_BEFORE_QUEST[wordString] then wordString = GF_WORD_FIX_BEFORE_QUEST[wordString] end
						if GF_WORD_QUEST[wordString] then
							arg1 = string.sub(arg1,1,lfs-1)..wordString.." lf"..string.sub(arg1,lfe+1)
						else
							if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end
							if GF_WORD_DUNGEON[wordString] or GF_WORD_RAID[wordString] or GF_WORD_PVP[wordString] or GF_WORD_GROUP_BYPASS[wordString] then
								arg1 = string.sub(arg1,1,lfs-1)..wordString.." lf"..string.sub(arg1,lfe+1)
							end
						end
						lfs = lfs + string.len(wordString) + 3
					else
						lfs = lfe + 1
					end
				end
			else
				lfs = lfe + 1
			end
		else
			break
		end
	end
	lfs = 2 -- To fix single words
	while true do lfs,lfe,wordString,tempString = string.find(arg1, "(.-)([%s%p%d]+)",lfs) if not wordString then break elseif GF_WORD_FIX_SINGLE_WORD[wordString] then arg1 = string.sub(arg1,1,lfs-1)..GF_WORD_FIX_SINGLE_WORD[wordString]..tempString..string.sub(arg1,lfe+1) lfs = lfs + string.len(GF_WORD_FIX_SINGLE_WORD[wordString]..tempString)-1 elseif GF_LANGUAGE_FOREIGN_COMMON_WORDS[wordString] then if not languageID[GF_LANGUAGE_FOREIGN_COMMON_WORDS[wordString]] then languageID[GF_LANGUAGE_FOREIGN_COMMON_WORDS[wordString]] = 1 else languageID[GF_LANGUAGE_FOREIGN_COMMON_WORDS[wordString]] = languageID[GF_LANGUAGE_FOREIGN_COMMON_WORDS[wordString]] + 1 end lfs = lfe+1 else lfs = lfe+1 end end

-- Translation stuff
	lfs = 0
	for langID,totalLang in languageID do if totalLang > lfs then lfs = totalLang GF_MessageData.languageName = langID end end
	if showanyway == true then print(GF_MessageData.languageName.." "..lfs) end

--	local word1,word2,word3,word4,space1,space2,space3,space4
--[[	tempVal = 4
	lfs = 2 -- To do translation
	while true do
		if tempVal == 4 then
			_,lfe,wordString,word1,space1,word2,space2,word3,space3,word4,space4 = string.find(arg1, "((.-)([%s%p%d]+)(.-)([%s%p%d]+)(.-)([%s%p%d]+)(.-)([%s%p%d]+))",lfs) -- 4 words
			if not wordString then
				tempVal = 3
			else
				lfs = lfs + string.len(word1..space1)
			end
		elseif tempVal == 3 then
			_,lfe,wordString,word1,space1,word2,space2,word3,space3 = string.find(arg1, "((.-)([%s%p%d]+)(.-)([%s%p%d]+)(.-)([%s%p%d]+))",lfs) -- 3 words
			if not wordString then
				tempVal = 2
			else
				lfs = lfs + string.len(word1..space1)
			end
		elseif tempVal == 2 then
			_,lfe,wordString,word1,space1,word2,space2 = string.find(arg1, "((.-)([%s%p%d]+)(.-)([%s%p%d]+))",lfs) -- 2 words
			if not wordString then
				tempVal = 1
			else
				lfs = lfs + string.len(word1..space1)
			end
		elseif tempVal == 1 then
			_,lfe,wordString,word1,space1 = string.find(arg1, "((.-)([%s%p%d]+))",lfs) -- 1 word
			if not wordString then
				break
			else
				break
			end
		end
	end--]]
--print(GetTime())
--for i=1, 1000 do
--	lfs = 2 -- Add all words to the wordTable
--	while true do
--		lfs,lfe,wordString = string.find(arg1, "(.-)[%s%p%d]+",lfs)
--		if wordString then
--			lfs = lfe+1
--		else
--			break
--		end
--	end
--end
--print(GetTime())
-- It's about 20-50 for 1000 of these, or 0.02 to 0.05 ms
-- Just the string.find routine is 1-20 ms(2-10 typical)
-- But it's only about 2-15 for 1000 of my data entry... and 2-15 for my checking.. so just this is more than my entire entry + fix
-- I feel like there has to be a way to integrate the word replacer into get word

-- So like, if I 

	lfs = 1 -- To detect space/letter/number/letter/space combinations(eg " g2g " = gtg)
	while true do lfs,lfe,wordString = string.find(arg1," (w?%a%s?%d%s?%ab?)[%p%s]",lfs) if wordString then wordString = gsub(wordString," ","") if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe) end lfs = lfs + string.len(wordString) + 1 else break end end
	lfs = 1 -- To detect space/word/number+/space combinations(eg " k10" = lowerkarazhan)
	while true do lfs,lfe,wordString = string.find(arg1," (%a+%s?[:%-]?%s?%d+)s?[%p%s]",lfs) if wordString then wordString = gsub(wordString,"[%s:%-]","") if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe) end lfs = lfs + string.len(wordString) + 1 else break end end
	lfs = 1 -- To detect words with explanation points "!" (eg "hungry!","lost!")... To help identify quests with short names.
	while true do lfs,lfe,wordString = string.find(arg1, " (%a+%s?!) ",lfs) if wordString then wordString = gsub(wordString," ","") if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe) end lfs = lfs + string.len(wordString) + 1 else break end end
	lfs = 1 -- To detect space/number+/word/space combinations(eg " 10th " = tenth, " 5g " = 5gold)
	while true do
		lfs,lfe,wordString,tempString = string.find(arg1,"[%p%s](%d+%s?(%a+))[%p%s]",lfs)
		if wordString then
			wordString = gsub(wordString," ","")
			if GF_WORD_FIX[tempString] then wordString = string.sub(wordString,1,string.len(tempString)*-1-1)..GF_WORD_FIX[tempString] end
			if GF_WORD_SPECIAL_COMBINATION[wordString] then
				arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe)
				lfs = lfs + string.len(GF_WORD_SPECIAL_COMBINATION[wordString])
			elseif GF_WORD_GOLD[tempString] then
				arg1 = string.sub(arg1,1,lfs)..GF_WORD_GOLD[tempString]..string.sub(arg1,lfe)
				lfs = lfs + string.len(GF_WORD_GOLD[tempString])
				if GF_MessageData.foundTrades < 2 and tempString ~= "bh" then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 2 if showanyway == true then print("#g trade 2") end end
			else
				lfs = lfe
			end
		else
			break
		end
	end
	lfs = 2 -- To detect words between and next to "[] or ()" (eg "(human only)", "[item] for free").
	while true do lfs,lfe,wordString = string.find(arg1, "[<%(%[](.-)[%)%]>]",lfs)
		if wordString then
			if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end if GF_GUILD_BRACKET[gsub(wordString," ","")] then GF_MessageData.foundGuild = GF_MessageData.foundGuild + GF_GUILD_BRACKET[gsub(wordString," ","")] if showanyway == true then print(wordString.." guild "..GF_GUILD_BRACKET[gsub(wordString," ","")]) end end
			if strbyte(arg1,lfs) == 91 and strbyte(arg1,lfe) == 93 then -- "[]"
				if GF_MessageData.foundLFM == 0 then if string.find(arg1, "^%]%s?%d+%s?\+",lfe) then GF_MessageData.foundLFM = 2 if showanyway == true then print("##+ lfm") end end end -- Group "] 2+"
				if string.find(arg1, "^%]%s?[0-9\-]+%s?[gs]",lfe) then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1 if showanyway == true then print("##g trade 1") end end -- Trades "]2.5g"
				if string.find(arg1, "^%]%s?%p?%s?%d+m[%p%s]",lfe) then GF_MessageData.foundLFM = 2 if showanyway == true then print("##m lfm") end end -- Group "] 2m"
				if string.find(arg1, "^%]%s?%p?%s?x%s?%d+[%p%s]",lfe) then GF_MessageData.foundTrades = GF_MessageData.foundTrades + .5 if showanyway == true then print("x## trade .5") end end -- Trades "] x2"
				if string.find(arg1, "^%]%s?%d+%s?[\+\-][\+\-][%p%s]",lfe) then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1.5 if showanyway == true then print("+- trade 1") end end -- Trades "[hitem] 36+-"

				_,_,tempString = string.find(arg1, "^%]%s?x?%d?%d?x?%p?%s?(%a+)[%p%s]",lfe) if tempString then if GF_WORD_FIX[tempString] then tempString = GF_WORD_FIX[tempString] end if GF_TRADE_PREFIX_SUFFIX[tempString] then GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_TRADE_PREFIX_SUFFIX[tempString] if showanyway == true then print(tempString.." trade ] "..GF_TRADE_PREFIX_SUFFIX[tempString]) end end end
				_,_,tempString = string.find(arg1, "^%]%s?x?%d?%d?x?%p?%s?(%a+%s%a+)[%p%s]",lfe) if tempString then tempString = gsub(tempString," ","") if GF_WORD_FIX[tempString] then tempString = GF_WORD_FIX[tempString] end if GF_TRADE_PREFIX_SUFFIX[tempString] then GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_TRADE_PREFIX_SUFFIX[tempString] if showanyway == true then print(tempString.." trade ] "..GF_TRADE_PREFIX_SUFFIX[tempString]) end end end
				_,_,tempString = string.find(arg1, "^%]%s?x?%d?%d?x?%p?%s?(%a+%s%a+%s%a+)[%p%s]",lfe) if tempString then tempString = gsub(tempString," ","") if GF_WORD_FIX[tempString] then tempString = GF_WORD_FIX[tempString] end if GF_TRADE_PREFIX_SUFFIX[tempString] then GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_TRADE_PREFIX_SUFFIX[tempString] if showanyway == true then print(tempString.." trade ] "..GF_TRADE_PREFIX_SUFFIX[tempString]) end end end

				if strbyte(arg1,lfs-1) == 90 then -- From Link
					tempString = string.sub(arg1,1,lfs)
					if string.find(tempString, "[%p%s]%d+%s?x%s+hitem Z%[$") then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1 if showanyway == true then print("##x [ trade 1") end end -- Trades " 2x ["
					if string.find(tempString, "[%p%s]x%s?%d+%s+hitem Z%[$") then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1 if showanyway == true then print("x## [ trade 1") end end -- Trades " x2 ["

					_,_,tempString = string.find(tempString, "[%p%s](%a+)%s?%s?x?%d?%d?x?%p?%s+hitem Z%[$") -- One word before
					if GF_WORD_FIX[tempString] then tempString = GF_WORD_FIX[tempString] end
					if GF_TRADE_PREFIX_SUFFIX[tempString] then
						GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_TRADE_PREFIX_SUFFIX[tempString]
						if showanyway == true then print(tempString.." trade <word>[ "..GF_TRADE_PREFIX_SUFFIX[tempString]) end
						_,_,tempString = string.find(arg1, "^%]%s?x?%d?%d?x?%p?%s?(%a+)[%p%s]",lfe)
						if GF_WORD_FIX[tempString] then tempString = GF_WORD_FIX[tempString] end
						if GF_TRADE_PREFIX_SUFFIX[tempString] then
							GF_MessageData.foundTrades = GF_MessageData.foundTrades + 2.5
							if showanyway == true then print(tempString.." trade ]<word> 2.5") end
						end
					end
					for words in string.gfind(wordString, "(%a+)") do if GF_WORD_FIX_ITEM_NAME[words] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_FIX_ITEM_NAME[words]..string.sub(arg1,lfe) break end end
				end
			elseif strbyte(arg1,lfs) == 60 and strbyte(arg1,lfe) == 62 then -- "<>"
				wordTableGuild["BRACKETS"] = gsub(gsub(wordString,"[%d%p]","")," ","")
				tempString = string.sub(arg1,1,lfs)
				_,_,wordString = string.find(tempString, " (%a+)%s?<$") if wordString then if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end if GF_GUILD_PREFIX_SUFFIX[wordString] then GF_MessageData.foundGuild = GF_MessageData.foundGuild + GF_GUILD_PREFIX_SUFFIX[wordString] if showanyway == true then print(wordString.." guild "..GF_GUILD_PREFIX_SUFFIX[wordString]) end end end
				_,_,wordString = string.find(arg1, "^>%s?(%a+)[%p%s]",lfe) if wordString then if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end if GF_GUILD_PREFIX_SUFFIX[wordString] then GF_MessageData.foundGuild = GF_MessageData.foundGuild + GF_GUILD_PREFIX_SUFFIX[wordString] if showanyway == true then print(wordString.." guild "..GF_GUILD_PREFIX_SUFFIX[wordString]) end end end
				_,_,wordString = string.find(arg1, "^>%s?(%a+ %a+)[%p%s]",lfe) if wordString then wordString = gsub(wordString," ","") if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end if GF_GUILD_PREFIX_SUFFIX[wordString] then GF_MessageData.foundGuild = GF_MessageData.foundGuild + GF_GUILD_PREFIX_SUFFIX[wordString] if showanyway == true then print(wordString.." guild "..GF_GUILD_PREFIX_SUFFIX[wordString]) end end end
			end
			lfs = lfs + 1
		else
			break
		end
	end
	lfs = 1 -- To detect word/letter/number combinations(eg "BMx2" = bm x2)
	while true do lfs,lfe,wordString,tempString = string.find(arg1," (%a+)(%a%d+)[%p%s]",lfs) if wordString then if GF_WORD_LETTER_NUMBER_BEFORE_AFTER[tempString] and (GF_GROUP_IDS[wordString] or GF_LFMLFG_PREFIX_GUILD[wordString]) then arg1 = string.sub(arg1,1,lfs)..wordString.." "..GF_WORD_LETTER_NUMBER_BEFORE_AFTER[tempString].." "..string.sub(arg1,lfe) lfs = lfs + string.len(wordString..GF_WORD_LETTER_NUMBER_BEFORE_AFTER[tempString]) + 2 else lfs = lfe end else break end end
	lfs = 1 -- To detect word/letter/number combinations(eg "BMx2" = bm x2)
	while true do lfs,lfe,wordString,tempString = string.find(arg1," (%d+%a)(%a+)[%p%s]",lfs) if wordString then if GF_WORD_LETTER_NUMBER_BEFORE_AFTER[wordString] and GF_GROUP_IDS[tempString] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_LETTER_NUMBER_BEFORE_AFTER[wordString].." "..tempString.." "..string.sub(arg1,lfe) lfs = lfs + string.len(GF_WORD_LETTER_NUMBER_BEFORE_AFTER[wordString]..tempString) + 2 else lfs = lfe end else break end end

-- Quest Search
	lfs = 2 -- Add all words to the wordTable
	while true do
		lfs,lfe,wordString = string.find(arg1, "(.-)[%s%p%d]+",lfs)
		if wordString then
			if strbyte(wordString) then
				if not GF_WORD_BYPASS_TRIGGER[GF_MessageData.languageName][wordString] then
					table.insert(wordTable, wordString)
					lfs = lfe+1
				else
					if GF_WORD_GROUP_BYPASS[wordString] then
						_,tempVal,tempString = string.find(arg1,"(%a+)",lfe+1)
						if tempString then
							if GF_WORD_GROUP_BYPASS[tempString] then
								table.insert(wordTable, GF_WORD_GROUP_BYPASS[wordString]) table.insert(wordTable, GF_WORD_GROUP_BYPASS[tempString])
								lfs = tempVal+1
							elseif GF_WORD_GROUP_BYPASS_SECOND[wordString..tempString] then
								_,tempVal,tempString = string.find(arg1,"(%a+)",tempVal+1)
								if GF_WORD_GROUP_BYPASS[tempString] then
									table.insert(wordTable, GF_WORD_GROUP_BYPASS[wordString]) table.insert(wordTable, GF_WORD_GROUP_BYPASS[tempString])
									lfs = tempVal+1
								else
									table.insert(wordTable, wordString)
									lfs = lfe+1
								end
							else
								if GF_WORD_GROUP_BYPASS[wordTable[getn(wordTable)]] then wordTable[getn(wordTable)] = GF_WORD_GROUP_BYPASS[wordTable[getn(wordTable)]] end
								table.insert(wordTable, wordString)
								lfs = lfe+1
							end
						else
							table.insert(wordTable, wordString)
							break
						end
					else
						_,tempVal,tempString = string.find(arg1,"(%a+)",lfe+1)
						if GF_WORD_QUEST_BYPASS[tempString] then
							table.insert(wordTable, wordString) table.insert(wordTable, tempString)
							lfs = tempVal+1
						else
							lfs = lfe+1
						end
					end
				end
			else
				lfs = lfe+1
			end
		else
			break
		end
	end
	tempVal = getn(wordTable)
	for j=0,3 do
		lfs = 1
		while lfs <= tempVal do
			if lfs+j <= tempVal then
				wordString = wordTable[lfs]
				for k=1, j do wordString = wordString..wordTable[lfs+k] end
				if GF_WORD_FIX_BEFORE_QUEST[wordString] then
					wordTable[lfs] = GF_WORD_FIX_BEFORE_QUEST[wordString]
					for k=1, j do table.remove(wordTable,lfs+1) tempVal=tempVal-1 end
					if wordString ~= GF_WORD_FIX_BEFORE_QUEST[wordString] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[lfs-1]
						for k=1, j do if wordTable[lfs-1+k] then wordString = wordString..wordTable[lfs-1+k] end end
						if GF_WORD_FIX_BEFORE_QUEST[wordString] then
							wordTable[lfs-1] = GF_WORD_FIX_BEFORE_QUEST[wordString]
							for k=1, j do if wordTable[lfs] then table.remove(wordTable,lfs) tempVal=tempVal-1 end end
						end
					end
				elseif GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString] then
					wordTable[lfs] = GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][1]
					for k=1, j do table.remove(wordTable,lfs+1) tempVal=tempVal-1 end
					table.insert(wordTable,lfs+1,GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][2]) tempVal=tempVal+1
					if wordString ~= GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][1]..GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][2] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[lfs-1]
						for k=1, j do if wordTable[lfs-1+k] then wordString = wordString..wordTable[lfs-1+k] end end
						if GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString] then
							wordTable[lfs-1] = GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][1]
							for k=1, j do if wordTable[lfs] then table.remove(wordTable,lfs) tempVal=tempVal-1 end end
							table.insert(wordTable,lfs,GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][2]) tempVal=tempVal+1
						end
					end
				elseif GF_WORD_FIX_QUEST_DUNGEON[wordString] then
					wordTable[lfs] = GF_WORD_FIX_QUEST_DUNGEON[wordString]
					for k=1, j do table.remove(wordTable,lfs+1) tempVal=tempVal-1 end
					if wordString ~= GF_WORD_FIX_QUEST_DUNGEON[wordString] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[lfs-1]
						for k=1, j do if wordTable[lfs-1+k] then wordString = wordString..wordTable[lfs-1+k] end end
						if GF_WORD_FIX_QUEST_DUNGEON[wordString] then
							wordTable[lfs-1] = GF_WORD_FIX_QUEST_DUNGEON[wordString]
							for k=1, j do if wordTable[lfs] then table.remove(wordTable,lfs) tempVal=tempVal-1 end end
						end
					end
				--elseif GF_LANGUAGE_FOREIGN_COMMON_MULTIWORDS[wordString] then
					--wordTable[lfs] = GF_LANGUAGE_FOREIGN_COMMON_MULTIWORDS[wordString]
					--for k=1, j do table.remove(wordTable,lfs+1) tempVal=tempVal-1 end
				end
			end
			lfs = lfs + 1
		end
	end
	for i=1, tempVal do if wordTable[i] == "x" then table.remove(wordTable,i) i = i - 1 tempVal=tempVal-1 end end
	if wordTable[1] == "hquest" and tempVal <= 9 then
		wordString = ""
		if string.sub(arg1,-2) == "? " then
			if wordTable[2] then
				for i=2,tempVal do wordString = wordString..wordTable[i] end
				if GF_WORD_QUEST[wordString] then GF_MessageData.foundLFG = 2 if showanyway == true then print("quest? lfg 2") end end
			end
		end
		lfs = 1 -- To detect punctuation after "]" (eg "[hitem] + ")... For detecting groups
		while true do lfs,lfe,wordString = string.find(arg1, "\]%s?(%p)[%p%s]",lfs) if not wordString then break end if wordString == "+" or wordString == "?" then GF_MessageData.foundLFG = 2 if showanyway == true then print("[quest]+ lfg 2") end end lfs = lfe end
	elseif string.sub(arg1,-2) == "? " and tempVal < 9 then
		wordString = ""
		for i=1,tempVal do wordString = wordString..wordTable[i] end
		if GF_WORD_QUEST[wordString] then GF_MessageData.foundLFG = 2 if showanyway == true then print("quest? lfg 2") end end
	elseif string.sub(arg1,1,2) == " +" and GF_WORD_ROLES[wordTable[1]] then GF_MessageData.foundLFM = 2 if showanyway == true then print("[quest]+ lfg 2") end end
	for j=0,7 do
		for i=1, tempVal do
			if i+j <= tempVal then
				wordString = wordTable[i]
				for k=1, j do wordString = wordString..wordTable[i+k] end
				if not GF_GROUP_WORD_BYPASS[wordString] then
					if GF_WORD_QUEST[wordString] then
						if showanyway == true then print(wordString.." quest") end
						if not GF_MessageData.foundQuest[1] or GF_WORD_QUEST[wordString][2] > GF_MessageData.foundQuest[1] or GF_MessageData.foundQuest[2] < j then GF_MessageData.foundQuest[1] = GF_WORD_QUEST[wordString][2] GF_MessageData.foundQuest[2] = j end
						if GF_LFM_BYPASS[wordString] then table.insert(GF_MessageData.groupName,wordString) end GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + .3 GF_MessageData.foundGuildExclusion = GF_MessageData.foundGuildExclusion + .1
						if not GF_LFM_BYPASS[wordString] then
							if GF_LFM_AFTER[wordTable[i+j+1]] or GF_LFM_BEFORE[wordTable[i-1]] or wordTable[i+j+2] and GF_LFM_AFTER[wordTable[i+j+1]..wordTable[i+j+2]] or wordTable[i-2] and GF_LFM_BEFORE[wordTable[i-2]..wordTable[i-1]]
							or wordTable[i-3] and GF_LFM_BEFORE[wordTable[i-3]..wordTable[i-2]..wordTable[i-1]] then
								if GF_MessageData.foundLFM == 0 then GF_MessageData.foundLFM = 1 end GF_MessageData.foundLFMPreSuf = 1 GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1.5 if showanyway == true then print(wordString.." triggername lfm 1/2 .. tradesex 1.5") end
							end

							if GF_LFG_AFTER[wordTable[i+j+1]] or GF_LFG_BEFORE[wordTable[i-1]] or wordTable[i+j+2] and GF_LFG_AFTER[wordTable[i+j+1]..wordTable[i+j+2]] or wordTable[i-2] and GF_LFG_BEFORE[wordTable[i-2]..wordTable[i-1]] then
								if GF_MessageData.foundLFG == 0 and GF_MessageData.foundLFMPreSuf == 0 then GF_MessageData.foundLFG = 1 end GF_MessageData.foundLFGPreSuf = 1 GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1.5 if showanyway == true then print(wordString.." triggername lfg 1/2 .. tradesex 1.5") end
							end
						end
					end
				end
			end
		end
	end

-- Normal Search
	for i=1, tempVal do wordTableTrade[i] = wordTable[i] wordTableGuild[i] = wordTable[i] end
	for j=0,3 do -- Fix Words
		lfs = 1
		while lfs <= tempVal do
			if wordTable[lfs+j] then
				wordString = wordTable[lfs]
				for k=1, j do wordString = wordString..wordTable[lfs+k] end
				if GF_WORD_FIX[wordString] then
					wordTable[lfs] = GF_WORD_FIX[wordString] wordTableTrade[lfs] = GF_WORD_FIX[wordString] wordTableGuild[lfs] = GF_WORD_FIX[wordString]
					for k=1, j do table.remove(wordTable,lfs+1) table.remove(wordTableTrade,lfs+1) table.remove(wordTableGuild,lfs+1) tempVal=tempVal-1 end
					if wordString ~= GF_WORD_FIX[wordString] then if GF_WORD_FIX_TRADE[wordTableTrade[lfs]] then wordTableTrade[lfs] = GF_WORD_FIX_TRADE[wordTableTrade[lfs]][1] end if GF_WORD_FIX_GUILD[wordTableGuild[lfs]] then wordTableGuild[lfs] = GF_WORD_FIX_GUILD[wordTableGuild[lfs]][1] end if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end end
				elseif GF_WORD_FIX_SECOND[wordString] then
					wordTable[lfs] = GF_WORD_FIX_SECOND[wordString][1] wordTableTrade[lfs] = GF_WORD_FIX_SECOND[wordString][1] wordTableGuild[lfs] = GF_WORD_FIX_SECOND[wordString][1]
					for k=1, j do table.remove(wordTable,lfs+1) table.remove(wordTableTrade,lfs+1) table.remove(wordTableGuild,lfs+1) tempVal=tempVal-1 end
					table.insert(wordTable,lfs+1,GF_WORD_FIX_SECOND[wordString][2]) table.insert(wordTableTrade,lfs+1,GF_WORD_FIX_SECOND[wordString][2]) table.insert(wordTableGuild,lfs+1,GF_WORD_FIX_SECOND[wordString][2]) tempVal=tempVal+1
					if wordString ~= GF_WORD_FIX_SECOND[wordString][1]..GF_WORD_FIX_SECOND[wordString][2] then
						if GF_WORD_FIX_TRADE[wordTableTrade[lfs]] then wordTableTrade[lfs] = GF_WORD_FIX_TRADE[wordTableTrade[lfs]][1] end
						if GF_WORD_FIX_TRADE[wordTableTrade[lfs+1]] then wordTableTrade[lfs+1] = GF_WORD_FIX_TRADE[wordTableTrade[lfs+1]][1] end
						if GF_WORD_FIX_GUILD[wordTableGuild[lfs]] then wordTableGuild[lfs] = GF_WORD_FIX_GUILD[wordTableGuild[lfs]][1] end
						if GF_WORD_FIX_GUILD[wordTableGuild[lfs+1]] then wordTableGuild[lfs+1] = GF_WORD_FIX_GUILD[wordTableGuild[lfs+1]][1] end
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					end
				elseif wordTableGuild["BRACKETS"] == wordString then
					for k=0, j do wordTableGuild[lfs+k] = "G" end
				else
					if GF_WORD_FIX_TRADE[wordString] then wordTableTrade[lfs] = GF_WORD_FIX_TRADE[wordString][1] for k=1, j do table.remove(wordTableTrade,lfs+k) table.insert(wordTableTrade,lfs+k,GF_WORD_FIX_TRADE[wordString][2]) end end
					if GF_WORD_FIX_GUILD[wordString] then wordTableGuild[lfs] = GF_WORD_FIX_GUILD[wordString][1] for k=1, j do table.remove(wordTableGuild,lfs+k) table.insert(wordTableGuild,lfs+k,GF_WORD_FIX_GUILD[wordString][2]) end end
				end
			end
			lfs = lfs + 1
		end
	end
	for j=1, tempVal do -- Add adjacent trade/guild words
		if strbyte(wordTableTrade[j]) <= 90 then
			if j > 1 and strbyte(wordTableTrade[j-1]) >= 97 then for i=1, 250 do if not GF_TRADE_COMMON_WORDS[wordTableTrade[j-i]] then break end wordTableTrade[j-i] = GF_TRADE_COMMON_WORDS[wordTableTrade[j-i]] end end
			if j < tempVal and strbyte(wordTableTrade[j+1]) >= 97 then for i=1, 250 do if not GF_TRADE_COMMON_WORDS[wordTableTrade[j+i]] then break end wordTableTrade[j+i] = GF_TRADE_COMMON_WORDS[wordTableTrade[j+i]] end end
		end
		if strbyte(wordTableGuild[j]) <= 90 then
			if j > 1 and strbyte(wordTableGuild[j-1]) >= 97 then for i=1, 250 do if not GF_GUILD_COMMON_WORDS[wordTableGuild[j-i]] then break end wordTableGuild[j-i] = GF_GUILD_COMMON_WORDS[wordTableGuild[j-i]] end end
			if j < tempVal and strbyte(wordTableGuild[j+1]) >= 97 then for i=1, 250 do if not GF_GUILD_COMMON_WORDS[wordTableGuild[j+i]] then break end wordTableGuild[j+i] = GF_GUILD_COMMON_WORDS[wordTableGuild[j+i]] end end
		end
	end
	if tempVal <= 6 then -- Check 4/6-word Phrase
		wordString = ""
		lfe = ""
		lfs = nil
		for i=1,tempVal do wordString = wordString..wordTable[i] end
		for i=1,tempVal do lfe = lfe..wordTableTrade[i] if strbyte(wordTableTrade[i]) > 90 then lfs = true end end
		if GF_WORD_TRADE_PHRASE[lfe] then GF_MessageData.foundTrades = 2 if showanyway == true then print("tradephrase trades 3") end end
		if GF_WORD_GUILD_PHRASE[wordString] then GF_MessageData.foundGuild = 3 if showanyway == true then print("guildphrase guild 3") end end
		if GF_GROUP_PHRASE[wordString] and GF_MessageData.foundLFM == 0 then GF_MessageData.foundLFM = 2 if showanyway == true then print("lfmphrase lfm 2") end end
		if string.sub(arg1,-2) == "? " then
			if (GF_WORD_DUNGEON[wordString] or GF_WORD_RAID[wordString] or GF_WORD_PVP[wordString] or GF_GROUP_PHRASE_QUESTION[wordString]) then GF_MessageData.foundLFG = 2 if showanyway == true then print("group? lfg 2") end
			elseif GF_WORD_TRADE_QUESTION[lfe] then GF_MessageData.foundTrades = 2 if showanyway == true then print("trades? trades "..GF_WORD_TRADE_QUESTION[lfe]) end
			elseif GF_WORD_GUILD_QUESTION[wordString] then GF_MessageData.foundGuild = 3 if showanyway == true then print("guild? guild 3") end
			elseif tempVal > 2 then
				if tempVal <= 4 and GF_TRADE_FIRST_TWO[wordTableTrade[1]..wordTableTrade[2]] then GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_TRADE_FIRST_TWO[wordTableTrade[1]..wordTableTrade[2]] if showanyway == true then print("first two? trades "..GF_TRADE_FIRST_TWO[wordTableTrade[1]..wordTableTrade[2]]) end
				elseif not lfs then	GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1.25 if showanyway == true then print("tradeonly? trades 1.25") end end
			end
		elseif tempVal > 1 then
			if tempVal <= 4 and GF_LFM_AFTER[wordTable[tempVal-1]..wordTable[tempVal]] then GF_MessageData.foundLFM = 2 if showanyway == true then print("word lfmafter lfm 2") end
			elseif tempVal <= 4 and GF_TRADE_FIRST_TWO[wordTableTrade[1]..wordTableTrade[2]] then GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_TRADE_FIRST_TWO[wordTableTrade[1]..wordTableTrade[2]] if showanyway == true then print("first two trades "..GF_TRADE_FIRST_TWO[wordTableTrade[1]..wordTableTrade[2]]) end
			elseif not lfs then	GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1.25 if showanyway == true then print("tradeonly trades 1.25") end end
			
			if GF_GUILD_FIRST_TWO[wordTable[1]..wordTable[2]] then GF_MessageData.foundGuild = 1 if showanyway == true then print("guild_first_two guild 3") end
			elseif GF_GUILD_LAST_TWO[wordTable[tempVal-1]..wordTable[tempVal]] then GF_MessageData.foundGuild = 1 if showanyway == true then print("guild_last_two guild 3") end end
		end
		lfe = ""
		lfs = nil
		for i=1,tempVal do lfe = lfe..wordTableGuild[i] if strbyte(wordTableGuild[i]) > 90 then lfs = true end end
		if tempVal <= 4 and GF_TRADE_FIRST_LAST[wordTableTrade[1]] and GF_TRADE_FIRST_LAST[wordTableTrade[1]][wordTableTrade[tempVal]] then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 3 if showanyway == true then print("firstlast trades 3") end
		elseif tempVal <= 4 and GF_MessageData.foundLFM == 0 and GF_GROUP_FIRST_LAST[wordTable[1]] and GF_GROUP_FIRST_LAST[wordTable[1]][wordTable[tempVal]] then GF_MessageData.foundLFM = 2 if showanyway == true then print("firstlast lfm 2") end
		elseif tempVal <= 4 and GF_GUILD_FIRST_LAST[wordTableGuild[1]] and GF_GUILD_FIRST_LAST[wordTableGuild[1]][wordTableGuild[tempVal]] then GF_MessageData.foundGuild = GF_MessageData.foundGuild + 3 if showanyway == true then print("firstlast guild 3") end
		elseif not lfs and tempVal > 2 then GF_MessageData.foundGuild = GF_MessageData.foundGuild + 1.25 if showanyway == true then print("guildonly guild 1.25") end end
	end
	for j=0,3 do -- Score the wordTable
		for i=1, tempVal do
			if i+j <= tempVal then -- if i+j <= tempVal then
				wordString = wordTable[i]
				for k=1, j do wordString = wordString..wordTable[i+k] end
				if GF_WORD_BLOCK_LIST[wordString] then GF_MessageData.foundBlockList = true return end
				if GF_WORD_IGNORE[wordString] then GF_MessageData.foundIgnore = GF_MessageData.foundIgnore + GF_WORD_IGNORE[wordString] if showanyway == true then print(wordString.." ignore "..GF_WORD_IGNORE[wordString]) end end
				if GF_WORD_HC[wordString] then GF_MessageData.foundHC = true
				elseif GF_WORD_NOT_HC[wordString] then GF_MessageData.foundNotHC = true
				elseif GF_GUILD_WORD_EXCLUSION[wordString] then GF_MessageData.foundGuildExclusion = GF_MessageData.foundGuildExclusion + GF_GUILD_WORD_EXCLUSION[wordString] if showanyway == true then print(wordString.." guildex") end end
				if GF_TRADE_WORD_EXCLUSION[wordString] then GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + GF_TRADE_WORD_EXCLUSION[wordString] if showanyway == true then print(wordString.." tradesex") end end

				if GF_WORD_LFM[wordString] then if GF_WORD_LFM[wordString] > GF_MessageData.foundLFM then GF_MessageData.foundLFM = GF_WORD_LFM[wordString] table.insert(GF_MessageData.lfmlfgName, wordString) if showanyway == true then print(wordString.." lfm") end end
					if not GF_MessageData.foundQuest[1] then if GF_WORD_LEVEL_ZONE[wordTable[i+j+1]] then GF_MessageData.foundQuest[1] = GF_WORD_LEVEL_ZONE[wordTable[i+j+1]] elseif GF_WORD_LEVEL_ZONE[wordTable[i-1]] then GF_MessageData.foundQuest[1] = GF_WORD_LEVEL_ZONE[wordTable[i-1]] end end
					if GF_WORD_IGNORE_AFTER[wordTable[i+j+1]] then GF_MessageData.foundIgnore = GF_MessageData.foundIgnore + GF_WORD_IGNORE_AFTER[wordTable[i+j+1]] if showanyway == true then print(wordTable[i+j+1].." ignore "..GF_WORD_IGNORE_AFTER[wordTable[i+j+1]]) end
					elseif GF_WORD_IGNORE_BEFORE[wordTable[i-1]] then GF_MessageData.foundIgnore = GF_MessageData.foundIgnore + GF_WORD_IGNORE_BEFORE[wordTable[i-1]] if showanyway == true then print(wordTable[i-1].." ignore "..GF_WORD_IGNORE_BEFORE[wordTable[i-1]]) end
					elseif wordTable[i+j+2] and GF_WORD_IGNORE_AFTER[wordTable[i+j+1]..wordTable[i+j+2]] then GF_MessageData.foundIgnore = GF_MessageData.foundIgnore + GF_WORD_IGNORE_AFTER[wordTable[i+j+1]..wordTable[i+j+2]] if showanyway == true then print(wordTable[i+j+1]..wordTable[i+j+2].." ignore "..GF_WORD_IGNORE_AFTER[wordTable[i+j+1]..wordTable[i+j+2]]) end
					elseif wordTable[i-2] and GF_WORD_IGNORE_BEFORE[wordTable[i-2]..wordTable[i-1]] then GF_MessageData.foundIgnore = GF_MessageData.foundIgnore + GF_WORD_IGNORE_BEFORE[wordTable[i-2]..wordTable[i-1]] if showanyway == true then print(wordTable[i-2]..wordTable[i-1].." ignore "..GF_WORD_IGNORE_BEFORE[wordTable[i-2]..wordTable[i-1]]) end end
				elseif GF_WORD_LFG[wordString] then if GF_WORD_LFG[wordString] > GF_MessageData.foundLFG then GF_MessageData.foundLFG = GF_WORD_LFG[wordString] table.insert(GF_MessageData.lfmlfgName, wordString) if showanyway == true then print(wordString.." lfg") end end
					if not GF_MessageData.foundQuest[1] then if GF_WORD_LEVEL_ZONE[wordTable[i+j+1]] then GF_MessageData.foundQuest[1] = GF_WORD_LEVEL_ZONE[wordTable[i+j+1]] elseif GF_WORD_LEVEL_ZONE[wordTable[i-1]] then GF_MessageData.foundQuest[1] = GF_WORD_LEVEL_ZONE[wordTable[i-1]] end end
					if GF_WORD_IGNORE_AFTER[wordTable[i+j+1]] then GF_MessageData.foundIgnore = GF_MessageData.foundIgnore + GF_WORD_IGNORE_AFTER[wordTable[i+j+1]] if showanyway == true then print(wordTable[i+j+1].." ignore "..GF_WORD_IGNORE_AFTER[wordTable[i+j+1]]) end
					elseif GF_WORD_IGNORE_BEFORE[wordTable[i-1]] then GF_MessageData.foundIgnore = GF_MessageData.foundIgnore + GF_WORD_IGNORE_BEFORE[wordTable[i-1]] if showanyway == true then print(wordTable[i-1].." ignore "..GF_WORD_IGNORE_BEFORE[wordTable[i-1]]) end
					elseif wordTable[i+j+2] and GF_WORD_IGNORE_AFTER[wordTable[i+j+1]..wordTable[i+j+2]] then GF_MessageData.foundIgnore = GF_MessageData.foundIgnore + GF_WORD_IGNORE_AFTER[wordTable[i+j+1]..wordTable[i+j+2]] if showanyway == true then print(wordTable[i+j+1]..wordTable[i+j+2].." ignore "..GF_WORD_IGNORE_AFTER[wordTable[i+j+1]..wordTable[i+j+2]]) end
					elseif wordTable[i-2] and GF_WORD_IGNORE_BEFORE[wordTable[i-2]..wordTable[i-1]] then GF_MessageData.foundIgnore = GF_MessageData.foundIgnore + GF_WORD_IGNORE_BEFORE[wordTable[i-2]..wordTable[i-1]] if showanyway == true then print(wordTable[i-2]..wordTable[i-1].." ignore "..GF_WORD_IGNORE_BEFORE[wordTable[i-2]..wordTable[i-1]]) end end
				end
				if GF_WORD_CLASSES[wordString] then GF_MessageData.foundClass = GF_WORD_CLASSES[wordString] table.insert(GF_MessageData.groupName,wordString)
				elseif GF_WORD_DUNGEON[wordString] then
					if showanyway == true then print(wordString.." dungeon") end
					if not GF_MessageData.foundRaid and (not GF_MessageData.foundDungeon or GF_WORD_DUNGEON[wordString] > GF_MessageData.foundDungeon) then GF_MessageData.foundDungeon = GF_WORD_DUNGEON[wordString] table.insert(GF_MessageData.foundDFlags,1,wordString)
					else table.insert(GF_MessageData.foundDFlags,wordString) end GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + .3 GF_MessageData.foundGuildExclusion = GF_MessageData.foundGuildExclusion + .1
				elseif GF_WORD_RAID[wordString] then
					if showanyway == true then print(wordString.." raid") end
					if not GF_MessageData.foundRaid or GF_WORD_RAID[wordString] > GF_MessageData.foundRaid then GF_MessageData.foundRaid = GF_WORD_RAID[wordString] table.insert(GF_MessageData.foundDFlags,1,wordString) else table.insert(GF_MessageData.foundDFlags,wordString) end
					GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + .3 GF_MessageData.foundGuildExclusion = GF_MessageData.foundGuildExclusion + .1
				elseif GF_WORD_PVP[wordString] then
					if showanyway == true then print(wordString.." pvp") end
					if not GF_MessageData.foundPvP or GF_WORD_PVP[wordString] > GF_MessageData.foundPvP then GF_MessageData.foundPvP = GF_WORD_PVP[wordString] table.insert(GF_MessageData.foundPFlags,1,wordString) else table.insert(GF_MessageData.foundPFlags, wordString) end
					if GF_MessageData.foundPvP == 0 then for num in string.gfind(arg1, "(%d+)[%s%plevl]?") do if tonumber(num) > GF_MessageData.foundPvP and tonumber(num) > 8 and tonumber(num) < 61 then GF_MessageData.foundPvP = tonumber(num) end end end
					table.insert(GF_MessageData.groupName,wordString) GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + .3 GF_MessageData.foundGuildExclusion = GF_MessageData.foundGuildExclusion + .1
				end
-- Look for generic words before connecting words
-- A lot of my phrases uses connecting words... I think what I was looking for is druid/level/pro/big, and other adjectives
-- Also words like few, several, many, lots, and other describing words
-- Conjunctions like and/or, for, 10x, 
-- dps/tank/heal/etc(need dps + tank)
-- need tank and healer for dragonmaw retreat
				if wordTable[i-1] == "portal" and (GF_WORD_LEVEL_ZONE[wordString] or GF_WORD_DUNGEON[wordString] or GF_WORD_RAID[wordString] or GF_WORD_PVP[wordString]) then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1 if showanyway == true then print("portalzone trade 1") end end
				if not GF_LFM_BYPASS[wordString] and (GF_WORD_DUNGEON[wordString] or GF_WORD_RAID[wordString] or GF_WORD_PVP[wordString] or (GF_WORD_QUEST[wordString] and not GF_GROUP_WORD_BYPASS[wordString])) then
					if GF_LFM_AFTER[wordTable[i+j+1]] or GF_LFM_BEFORE[wordTable[i-1]] or wordTable[i+j+2] and GF_LFM_AFTER[wordTable[i+j+1]..wordTable[i+j+2]] or wordTable[i-2] and GF_LFM_BEFORE[wordTable[i-2]..wordTable[i-1]]
					or wordTable[i-3] and GF_LFM_BEFORE[wordTable[i-3]..wordTable[i-2]..wordTable[i-1]] then
						if GF_MessageData.foundLFM == 0 then GF_MessageData.foundLFM = 1 end if wordTable[i-1] and GF_LFMLFG_PREFIX_GUILD[wordTable[i-1]] then GF_MessageData.foundGuildExclusion = GF_MessageData.foundGuildExclusion + 1 end GF_MessageData.foundLFMPreSuf = 1 GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1.5 if showanyway == true then print(wordString.." triggername lfm 1/2 .. tradesex 1.5") end
					end

					if GF_LFG_AFTER[wordTable[i+j+1]] or GF_LFG_BEFORE[wordTable[i-1]] or wordTable[i+j+2] and GF_LFG_AFTER[wordTable[i+j+1]..wordTable[i+j+2]] or wordTable[i-2] and GF_LFG_BEFORE[wordTable[i-2]..wordTable[i-1]] then
						if GF_MessageData.foundLFG == 0 and GF_MessageData.foundLFMPreSuf == 0 then GF_MessageData.foundLFG = 1 end if wordTable[i-1] and GF_LFMLFG_PREFIX_GUILD[wordTable[i-1]] then GF_MessageData.foundGuildExclusion = GF_MessageData.foundGuildExclusion + 1 end GF_MessageData.foundLFGPreSuf = 1 GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1.5 if showanyway == true then print(wordString.." triggername lfg 1/2 .. tradesex 1.5") end
					end

					if GF_WORD_IGNORE_AFTER[wordTable[i+j+1]] then
						GF_MessageData.foundIgnore = GF_MessageData.foundIgnore + GF_WORD_IGNORE_AFTER[wordTable[i+j+1]] if showanyway == true then print(wordTable[i+j+1].." ignore "..GF_WORD_IGNORE_AFTER[wordTable[i+j+1]]) end
					elseif GF_WORD_IGNORE_BEFORE[wordTable[i-1]] then
						GF_MessageData.foundIgnore = GF_MessageData.foundIgnore + GF_WORD_IGNORE_BEFORE[wordTable[i-1]] if showanyway == true then print(wordTable[i-1].." ignore "..GF_WORD_IGNORE_BEFORE[wordTable[i-1]]) end
					elseif wordTable[i+j+2] and GF_WORD_IGNORE_AFTER[wordTable[i+j+1]..wordTable[i+j+2]] then
						GF_MessageData.foundIgnore = GF_MessageData.foundIgnore + GF_WORD_IGNORE_AFTER[wordTable[i+j+1]..wordTable[i+j+2]] if showanyway == true then print(wordTable[i+j+1]..wordTable[i+j+2].." ignore "..GF_WORD_IGNORE_AFTER[wordTable[i+j+1]..wordTable[i+j+2]]) end
					elseif wordTable[i-2] and GF_WORD_IGNORE_BEFORE[wordTable[i-2]..wordTable[i-1]] then
						GF_MessageData.foundIgnore = GF_MessageData.foundIgnore + GF_WORD_IGNORE_BEFORE[wordTable[i-2]..wordTable[i-1]] if showanyway == true then print(wordTable[i-2]..wordTable[i-1].." ignore "..GF_WORD_IGNORE_BEFORE[wordTable[i-2]..wordTable[i-1]]) end
					end
				end
			end
			if i+j <= tempVal then -- Score Trades separately
				wordString = wordTableTrade[i]
				for k=1, j do wordString = wordString..wordTableTrade[i+k] end
				if GF_WORD_TRADE[wordString] then if showanyway == true then print(wordString.." trade "..GF_WORD_TRADE[wordString]) end GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_WORD_TRADE[wordString] end
			end
			if i+j <= tempVal then -- Score Guild separately
				wordString = wordTableGuild[i]
				for k=1, j do wordString = wordString..wordTableGuild[i+k] end
				if GF_WORD_GUILD[wordString] then
					if j ~= 0 or strbyte(wordString) ~= 71 then GF_MessageData.foundGuild = GF_MessageData.foundGuild + GF_WORD_GUILD[wordString] if showanyway == true then print(wordString.." guild "..GF_WORD_GUILD[wordString]) end
					elseif GF_MessageData.foundGuild < 100 then GF_MessageData.foundGuild = GF_MessageData.foundGuild + GF_WORD_GUILD[wordString] if showanyway == true then print(wordString.." guild "..GF_WORD_GUILD[wordString]) end end
				end
			end
		end
	end

	if getn(GF_MessageData.lfmlfgName) == 1 and GF_MessageData.groupName[1] and ((not GF_MessageData.foundQuest[1] and not GF_MessageData.foundDungeon and not GF_MessageData.foundRaid) or GF_LFM_BYPASS[GF_MessageData.groupName[1]]) then lfs = 0 for i=1,getn(GF_MessageData.groupName) do if string.find(GF_MessageData.lfmlfgName[1],GF_MessageData.groupName[i]) then lfs = lfs + 1 end end if lfs == getn(GF_MessageData.groupName) then GF_MessageData.foundLFM = 0 GF_MessageData.foundLFG = 0 end end
	if GF_MessageData.foundGuild < 100 and string.find(arg1, "[<~][a-zA-Z0-9%&%-/ ]+[>~]") then GF_MessageData.foundGuild = GF_MessageData.foundGuild + 2 GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1 if showanyway == true then print("<words> guild 2 .. tradesex 1") end end
	while GF_MessageData.foundGuild > 100 do GF_MessageData.foundGuild = GF_MessageData.foundGuild - 100 end
	GF_MessageData.foundGuild = GF_MessageData.foundGuild - GF_MessageData.foundGuildExclusion

	GF_MessageData.foundTrades = GF_MessageData.foundTrades - GF_MessageData.foundTradesExclusion

	if GF_MessageData.foundLFM > GF_MessageData.foundLFG then GF_MessageData.foundLFG = -10 end
	if GF_MessageData.foundIgnore > 0 then
		GF_MessageData.foundLFM = GF_MessageData.foundLFM - GF_MessageData.foundIgnore
		GF_MessageData.foundLFG = GF_MessageData.foundLFG - GF_MessageData.foundIgnore
	end
	GF_MessageData.foundLFM = GF_MessageData.foundLFM + GF_MessageData.foundLFMPreSuf
	GF_MessageData.foundLFG = GF_MessageData.foundLFG + GF_MessageData.foundLFGPreSuf

	if showanyway == true then
		GF_Log:AddMessage("|cffccccff|Hurl:"..string.sub(arg1,2,-2).."|h"..string.sub(arg1,2,-2).."|h|r", 1, 1, 1)
		for i=1, tempVal do
			print(wordTable[i].." .. "..wordTableTrade[i].." .. "..wordTableGuild[i])
		end
		print(GF_MessageData.foundGuild.." guild")
		print(GF_MessageData.foundGuildExclusion.." guildex")
		print(GF_MessageData.foundTrades.." trades")
		print(GF_MessageData.foundTradesExclusion.." tradesex")
		print(GF_MessageData.foundLFMPreSuf.." lfm PreSuf .... "..GF_MessageData.foundLFGPreSuf.." lfg PreSuf")
		print(GF_MessageData.foundLFM.." lfm .... "..GF_MessageData.foundLFG.." lfg")
		if GF_MessageData.foundQuest[1] then print(GF_MessageData.foundQuest[1].." quest") end
		if GF_MessageData.foundDungeon then print(GF_MessageData.foundDungeon.." dungeon") end
		if GF_MessageData.foundRaid then print(GF_MessageData.foundRaid.." raid") end
		if GF_MessageData.foundPvP then print(GF_MessageData.foundPvP.." pvp") end
		if GF_MessageData.foundClass then print(GF_MessageData.foundClass.." class") end
	end

	if GF_MessageData.foundDungeon == 0 then
		for word,num in string.gfind(arg1, "(%a+)%p?%s?(%d+)") do if GF_WORD_FIX[word] then word = GF_WORD_FIX[word] end if GF_WORD_LEVEL_DETECT[word] and tonumber(num) > 8 and tonumber(num) < 61 then GF_MessageData.foundDungeon = tonumber(num) return end end
		for num,word in string.gfind(arg1, "(%d+)%p?%s?(%a+)") do if GF_WORD_FIX[word] then word = GF_WORD_FIX[word] end if GF_WORD_LEVEL_DETECT[word] and tonumber(num) > 8 and tonumber(num) < 61 then GF_MessageData.foundDungeon = tonumber(num) return end end
	elseif GF_MessageData.foundQuest[1] == 0 then
		for word,num in string.gfind(arg1, "(%a+)%p?%s?(%d+)") do if GF_WORD_FIX[word] then word = GF_WORD_FIX[word] end if GF_WORD_LEVEL_DETECT[word] and tonumber(num) > 8 and tonumber(num) < 61 then GF_MessageData.foundQuest[1] = tonumber(num) return end end
		for num,word in string.gfind(arg1, "(%d+)%p?%s?(%a+)") do if GF_WORD_FIX[word] then word = GF_WORD_FIX[word] end if GF_WORD_LEVEL_DETECT[word] and tonumber(num) > 8 and tonumber(num) < 61 then GF_MessageData.foundQuest[1] = tonumber(num) return end end
		for i=1, tempVal do if GF_WORD_LEVEL_ZONE[wordTable[i]] then GF_MessageData.foundQuest[1] = GF_WORD_LEVEL_ZONE[wordTable[i]] end end
	elseif GF_MessageData.foundClass == 0 then
		for word,num in string.gfind(arg1, "(%a+)%p?%s?(%d+)") do if GF_WORD_FIX[word] then word = GF_WORD_FIX[word] end if GF_WORD_LEVEL_DETECT[word] and tonumber(num) > 8 and tonumber(num) < 61 then GF_MessageData.foundClass = tonumber(num) return end end
		for num,word in string.gfind(arg1, "(%d+)%p?%s?(%a+)") do if GF_WORD_FIX[word] then word = GF_WORD_FIX[word] end if GF_WORD_LEVEL_DETECT[word] and tonumber(num) > 8 and tonumber(num) < 61 then GF_MessageData.foundClass = tonumber(num) return end end
	end
end
function GF_CheckForSpam(arg1,arg2,foundInGroup)
	if GF_IncomingMessagePrune + 600 < time() then -- 10 minutes
		for name,_ in GF_PlayerMessages do
				if GF_PlayerMessages[name][1][1] + GF_SavedVariables.grouplistingduration*60 < time() then
					GF_PlayerMessages[name] = nil
				end
		end
		GF_IncomingMessagePrune = time()
	end
	if not GF_PlayerMessages[arg2] then
		GF_PlayerMessages[arg2] = { [1] = { time(),time(),time() }, [2] = { arg1, "ZZZzzz123654", "ZZZzzz123654" } }
	elseif not GF_PlayersCurrentlyInGroup[arg2] and not GF_Friends[arg2] and not GF_Guildies[arg2] then
		if (GF_WhoTable[GF_RealmName][arg2] and GF_WhoTable[GF_RealmName][arg2][1] < GF_SavedVariables.blockmessagebelowlevel) and GF_WhoTable[GF_RealmName][arg2][4] + 86400 > time() then return 9 end  -- Block lowlevel
		if GF_SavedVariables.spamfilter then
			if GF_PlayerMessages[arg2][1][1] > time() then return 7 end -- Returns spam for the duration of the spam filter
			if (string.len(arg1) > 30 and ((GF_PlayerMessages[arg2][1][1] + 120 > time() and string.find(arg1,string.sub(GF_PlayerMessages[arg2][2][1],math.random(math.ceil(string.len(GF_PlayerMessages[arg2][2][1])/4)),math.random(math.ceil(string.len(GF_PlayerMessages[arg2][2][1])/4))*-1),1,true)) or (GF_PlayerMessages[arg2][1][2] + 120 > time() and string.find(arg1,string.sub(GF_PlayerMessages[arg2][2][2],math.random(math.ceil(string.len(GF_PlayerMessages[arg2][2][2])/4)),math.random(math.ceil(string.len(GF_PlayerMessages[arg2][2][2])/4))*-1),1,true)) or (GF_PlayerMessages[arg2][1][3] + 120 > time() and string.find(arg1,string.sub(GF_PlayerMessages[arg2][2][3],math.random(math.ceil(string.len(GF_PlayerMessages[arg2][2][3])/4)),math.random(math.ceil(string.len(GF_PlayerMessages[arg2][2][3])/4))*-1),1,true))))
			or (not foundInGroup and (GF_PlayerMessages[arg2][1][1] + 120 > time() and arg1 == GF_PlayerMessages[arg2][2][1]) and (GF_PlayerMessages[arg2][1][2] + 120 > time() and arg1 == GF_PlayerMessages[arg2][2][2])) then		-- Found Spammer
				if GF_SavedVariables.autoblacklist and not GF_BlackList[GF_RealmName][arg2] and string.len(arg1) > 120 and arg1 == GF_PlayerMessages[arg2][2][1] and arg1 == GF_PlayerMessages[arg2][2][2] and
				((GF_SavedVariables.blacklisttrades and GF_MessageData.foundTrades > 2.9) or (GF_SavedVariables.blacklistguild and GF_MessageData.foundGuild > 2.9) or (GF_SavedVariables.blacklistchat and GF_MessageData.foundGuild < 3 and GF_MessageData.foundTrades < 3) or (GF_SavedVariables.blacklistforeign and GF_MessageData.languageName ~= "en")) then
					if GF_WhoTable[GF_RealmName][arg2] and GF_WhoTable[GF_RealmName][arg2][4] + 86400 > time() then -- Data must be less than a day old to autoblacklist or block lowlevel
						if GF_WhoTable[GF_RealmName][arg2][1] <= GF_SavedVariables.autoblacklistminlevel then																																						-- Blacklist if below level filter
							table.insert(GF_BlackList[GF_RealmName], 1, { arg2, "("..GF_WhoTable[GF_RealmName][arg2][1]..") "..arg1 })
							GF_BlackList[GF_RealmName][arg2] = true
							GF_UpdateBlackListItems()
							return 8	
						end
					else
						if GF_SavedVariables.usewhoongroups and not GF_WhoQueue[name] then GF_WhoTable[GF_RealmName][arg2] = nil if GF_SavedVariables.usefriendslist and not GF_SavedVariables.friendsToRemove[name] then GF_AddNameToWhoQueue(arg2,true,true) else GF_AddNameToWhoQueue(arg2,true) end end
					end
				end
				table.insert(GF_PlayerMessages[arg2][1],1,GF_PlayerMessages[arg2][1][1] + GF_SavedVariables.spamfilterduration)
				table.remove(GF_PlayerMessages[arg2][1],4)
				return 7
			end
			table.insert(GF_PlayerMessages[arg2][1],1,time())
			table.remove(GF_PlayerMessages[arg2][1],4)
			table.insert(GF_PlayerMessages[arg2][2],1,arg1)
			table.remove(GF_PlayerMessages[arg2][2],4)
			if string.len(arg1) > 40 and string.find(arg1,string.sub(arg1,1,20),21, true) then return 7 end -- Repeating text in the same message
		end
	end
end

function GF_JoinWorld() -- Event-related
	GF_SavedVariables.groupchannelname = GF_GroupChannelEditBox:GetText()
	if GF_SavedVariables.joinworld then
		local chanList = { GetChannelList() }
		for i=1, getn(chanList) do
			if string.lower(chanList[i]) == string.lower(GF_SavedVariables.groupchannelname) then return true end
		end
		JoinChannelByName(GF_SavedVariables.groupchannelname)
		ChatFrame_AddChannel(ChatFrame1, GF_SavedVariables.groupchannelname)
	end
end
function GF_BindKey(bindKey, bindName)
	if not GetBindingKey(bindName) then
		local foundIKey
		for i=1, GetNumBindings() do
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
end
function GF_SetLFGRoleButtons()
	if GF_TankClasses[({UnitClass("player")})[2]] then -- If tank... If heal then tank + heal + dps. Otherwise tank + dps.
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
function GF_PruneTheWhoTable()
	for realm,_ in GF_WhoTable do
		for name, whoData in GF_WhoTable[realm] do
			if whoData[4] and ((whoData[1] == 60 and whoData[4] + 1209600 < time()) or (whoData[1] < 60 and whoData[4] + 86400 < time())) then -- Keep WhoData for 14 days for 60's. One day for under 60.
				GF_WhoTable[realm][name] = nil
			end
		end
	end
	for realm,_ in GF_WhisperLogData do -- After two pages, trim from 128 messages to 16
		for i=39, getn(GF_WhisperLogData[realm]) do -- Starts at the first name on page 3
			for j=17, getn(GF_WhisperLogData[realm][GF_WhisperLogData[realm][i]]) do
				table.remove(GF_WhisperLogData[realm][GF_WhisperLogData[realm][i]],17)
			end
		end
	end
	for realm,_ in GF_MessageList do
		for i=1, getn(GF_MessageList[realm]) do
			if GF_MessageList[realm][i] then
				if GF_MessageList[realm][i].t + 3600 < time() then
					table.remove(GF_MessageList[realm], i)
					i = i - 1
				end
			end
		end
	end
	for realm,_ in GF_LogHistory do
		if not GF_LogHistory[realm].lastLogin or GF_LogHistory[realm].lastLogin + 2592000 < time() then -- Keep for 30 days
			GF_LogHistory[realm] = {}
		end
	end
end
function GF_PruneTheClassWhoTable()
	for name, whoData in GF_ClassWhoTable do
		if whoData[4] and whoData[4] + 86400 < time() then GF_ClassWhoTable[name] = nil	end
	end
end

function GF_GetNumGroupMembers() -- Get Group/Friends/Guildies information(turns off ignore/blacklist or adds their character information)
	if GetNumRaidMembers() > 0 then return GetNumRaidMembers() else return GetNumPartyMembers() + 1 end
end
function GF_UpdateGroup()
	GF_NumPartyMembers = GF_GetNumGroupMembers()
	if GF_WasPartyLeaderBefore and not UnitIsPartyLeader("player") and GF_NumPartyMembers > 1 then
		GF_TurnOffAnnounce(GF_JOINED_GROUP_ANNOUNCE_OFF)
		GF_WasPartyLeaderBefore = nil
		GF_ApplyFiltersToGroupList()
	else
		if GF_AutoAnnounceTimer and GF_NumPartyMembers >= GF_BUTTONS_LIST.LFGSize[GF_PerCharVariables.lfgsize][4] then GF_TurnOffAnnounce(GF_NO_MORE_PLAYERS_NEEDED) end
	end
	if GF_PerCharVariables.lfgauto then GF_FixLFGStrings(true) end

	GF_PlayersCurrentlyInGroup = {}
	GF_PlayersCurrentlyInGroup[UnitName("player")] = true
	if GetNumRaidMembers() > 1 then
		for i=1,40 do
			local name,_,_,level,class = GetRaidRosterInfo(i)
			if name and class and GF_Classes[class] and level and level > 0 then
				GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], GetGuildInfo("raid"..i) or "", time() }
				GF_PlayersCurrentlyInGroup[name] = true
			end
		end
	else
		for i=1,4 do
			if UnitExists("party"..i) and GF_Classes[({UnitClass("party"..i)})[2]] and UnitLevel("party"..i) and UnitLevel("party"..i) > 0 then
				GF_PlayersCurrentlyInGroup[UnitName("party"..i)] = true
				GF_WhoTable[GF_RealmName][UnitName("party"..i)] = { UnitLevel("party"..i), ({UnitClass("party"..i)})[2], GetGuildInfo("party"..i) or "", time() }
			end
		end
	end
	if GF_NumPartyMembers == 1 then GF_ApplyFiltersToGroupList() end
end
function GF_UpdateFriendsList()
-- System just blocks all messages until the friend is removed
-- Basically, I add friend, then when it does a friendslist update, it runs this... if it finds a friendtoremove, it removes them
-- then when the friend is removed, it fires another friendslistupdate, this looks to see who isn't a friend and on the removelist, and removes them.
-- So it's basically automatic.

	GF_CurrentNumFriends = GetNumFriends()
	GF_Friends = {}
	for i=1, GetNumFriends() do
		local name,level,class,_,online = GetFriendInfo(i)
		if name then
			if class and GF_Classes[class] and level and level > 0 then
				if online then GF_Friends[name] = true else GF_Friends[name] = nil end
				GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], "", time()}
			elseif not GF_FriendUnknown[name] then
				GF_FriendUnknown[name] = time()
			end
		end
		if GF_SavedVariables.friendsToRemove[name] then RemoveFriend(i) GF_BlockingFriendsListUpdates = nil end
	end
	for name,_ in GF_SavedVariables.friendsToRemove do
		if not GF_Friends[name] and GF_SavedVariables.friendsToRemove[name] + 6 < time() then GF_SavedVariables.friendsToRemove[name] = nil end
	end
end
function GF_UpdateGuildiesList()
	GF_CurrentNumGuildies = GetNumGuildMembers()
	GF_Guildies = {}
	for i=1, GetNumGuildMembers() do
		local name,_,_,level,class,_,_,_,online = GetGuildRosterInfo(i)
		if name then 
			if online then GF_Guildies[name] = true else GF_Guildies[name] = nil end
			if GF_Classes[class] then GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], GetGuildInfo("player"), time() } end
		end
	end
end
function GF_IsGuildieOrPartyMemberUsingAddon()
	for name in GF_AddonListOfGuildAndPartyMembersWithAddon do
		if GF_Guildies[name] and GF_PlayersCurrentlyInGroup[name] then return 3
		elseif GF_Guildies[name] then return 1
		elseif GF_PlayersCurrentlyInGroup[name] then return 2 end
	end
end

function GF_ApplyFiltersToGroupList() -- GroupsFrame functions
	if GetMouseFocus() and GetMouseFocus():GetName() and (string.find(GetMouseFocus():GetName(), "GroupWhoButton") or string.find(GetMouseFocus():GetName(), "LFGInviteButton") or string.find(GetMouseFocus():GetName(), "LFMWhisperRequestInviteButton")) then return end
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
	if GF_SearchButtonHasValues() then GF_SearchListDropdown:LockHighlight() GF_SearchListClearButton:Show() else GF_SearchListDropdown:UnlockHighlight() GF_SearchListClearButton:Hide() end
end
function GF_UpdateResults()
	local groupListLength = getn(GF_FilteredResultsList)
	GF_MinimapIconTextLabel:SetText(groupListLength)
	GF_MinimapIconTextLabel:Show()
-- I'll have to reset the offset when I change the offsetsize... But I really want to keep the page I was on, so find page, then multiply by new offsetsize
-- 
	while GF_ResultsListOffset > (groupListLength + .1) do GF_ResultsListOffset = GF_ResultsListOffset - GF_ResultsListOffsetSize end
	GF_ResultsLabel:SetText(GF_FOUND..groupListLength.." / "..getn(GF_MessageList[GF_RealmName]))
	GF_PageLabel:SetText(GF_PAGE.." "..math.ceil((GF_ResultsListOffset + .1) / GF_ResultsListOffsetSize).." / "..math.max(math.ceil(groupListLength / GF_ResultsListOffsetSize),1))
	GF_PageLabel:Show()
	local timeMin, timeSec
	for i=1, GF_ResultsBaseListOffsetSize do
		if i <= GF_ResultsListOffsetSize and i+GF_ResultsListOffset <= groupListLength then
			-- If Hardcore the text is red. If Normal the text is blue.
			if GF_FilteredResultsList[i+GF_ResultsListOffset].hc then getglobal("GF_NewItem"..i.."NameLabel"):SetTextColor(1,.4,.4,1) else getglobal("GF_NewItem"..i.."NameLabel"):SetTextColor(0.75,0.75,1,1) end
			-- If Friend/Guildie/In Group gives a yellow highlight.
			if GF_PlayersCurrentlyInGroup[GF_FilteredResultsList[i+GF_ResultsListOffset].op] or GF_Friends[GF_FilteredResultsList[i+GF_ResultsListOffset].op] or GF_Guildies[GF_FilteredResultsList[i+GF_ResultsListOffset].op] then getglobal("GF_NewItem"..i.."TextureGold"):Show() else getglobal("GF_NewItem"..i.."TextureGold"):Hide() end

			timeMin = floor(((time() - GF_FilteredResultsList[i+GF_ResultsListOffset].t))/60)
			timeSec = (time() - GF_FilteredResultsList[i+GF_ResultsListOffset].t) - timeMin*60
			if timeMin < 10 then timeMin = "0"..timeMin end
			if timeSec < 10 then timeSec = "0"..timeSec end
			getglobal("GF_NewItem"..i.."MoreLeftLabel"):SetText(timeMin..":"..timeSec)

			if GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op] then
				local bottomtext
				if GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][3] ~= "" then bottomtext = ", " else bottomtext = "" end
				getglobal("GF_NewItem"..i.."NameLabel"):SetText(GF_GetDifficultyColor(GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel)..GF_GetLevelString(GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel,GF_FilteredResultsList[i+GF_ResultsListOffset].flags).."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][2]] or "ffffff")..GF_FilteredResultsList[i+GF_ResultsListOffset].op.."|r: "..GF_FilteredResultsList[i+GF_ResultsListOffset].message)
				getglobal("GF_NewItem"..i.."MoreLabel"):SetText("Level "..GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][1].." "..GF_Classes[GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][2]]..bottomtext..GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][3])
			else
				getglobal("GF_NewItem"..i.."NameLabel"):SetText(GF_GetDifficultyColor(GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel)..GF_GetLevelString(GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel,GF_FilteredResultsList[i+GF_ResultsListOffset].flags)..GF_FilteredResultsList[i+GF_ResultsListOffset].op..": "..GF_FilteredResultsList[i+GF_ResultsListOffset].message)
				getglobal("GF_NewItem"..i.."MoreLabel"):SetText("")
			end
			if (not GF_SavedVariables.mainframeheight or GF_SavedVariables.mainframestatus == 0) or i < 14 then
				getglobal("GF_NewItem"..i):Show()
				if GF_SavedVariables.mainframestatus == 0 and GF_FilteredResultsList[i+GF_ResultsListOffset].op ~= UnitName("player") then
					if not GF_SavedVariables.usewhoongroups and not GF_UrgentWhoRequest[GF_FilteredResultsList[i+GF_ResultsListOffset].op] and not GF_SavedVariables.friendsToRemove[GF_FilteredResultsList[i+GF_ResultsListOffset].op] and
					(not GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op] or (GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][1] < 60 and GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][4] + 86400 < time())) then
						getglobal("GF_NewItem"..i.."GroupWhoButton"):Show()
					else
						getglobal("GF_NewItem"..i.."GroupWhoButton"):Hide()
					end
					if GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel and UnitLevel("player") >= GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel - 4 and UnitLevel("player") <= GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel + 4 then
						if GF_NumPartyMembers == 1 and not GF_FilteredResultsList[i+GF_ResultsListOffset].lfg and (not GF_RequestInviteTime[GF_FilteredResultsList[i+GF_ResultsListOffset].op] or GF_RequestInviteTime[GF_FilteredResultsList[i+GF_ResultsListOffset].op] < time()) then getglobal("GF_NewItem"..i.."LFMWhisperRequestInviteButton"):Show() else getglobal("GF_NewItem"..i.."LFMWhisperRequestInviteButton"):Hide() end
						if (GF_NumPartyMembers == 1 or UnitIsPartyLeader("player")) and GF_FilteredResultsList[i+GF_ResultsListOffset].lfg and (not GF_LFGInviteTime[GF_FilteredResultsList[i+GF_ResultsListOffset].op] or GF_LFGInviteTime[GF_FilteredResultsList[i+GF_ResultsListOffset].op] < time()) then getglobal("GF_NewItem"..i.."LFGInviteButton"):Show() else getglobal("GF_NewItem"..i.."LFGInviteButton"):Hide() end
					else
						getglobal("GF_NewItem"..i.."LFMWhisperRequestInviteButton"):Hide()
						getglobal("GF_NewItem"..i.."LFGInviteButton"):Hide()
					end
				else
					getglobal("GF_NewItem"..i.."GroupWhoButton"):Hide()
					getglobal("GF_NewItem"..i.."LFGInviteButton"):Hide()
					getglobal("GF_NewItem"..i.."LFMWhisperRequestInviteButton"):Hide()
				end
			else
				getglobal("GF_NewItem"..i):Hide()
				getglobal("GF_NewItem"..i.."GroupWhoButton"):Hide()
				getglobal("GF_NewItem"..i.."LFGInviteButton"):Hide()
				getglobal("GF_NewItem"..i.."LFMWhisperRequestInviteButton"):Hide()
			end
		else
			getglobal("GF_NewItem"..i):Hide()
		end
	end
end
function GF_EntryMatchesGroupFilterCriteria(entry)
	if ((not GF_SearchButtonHasValues() and (not GF_PerCharVariables.autofilter or (entry.dlevel and entry.dlevel >= UnitLevel("player")-GF_PerCharVariables.autofilterlevelvar and entry.dlevel <= UnitLevel("player")+GF_PerCharVariables.autofilterlevelvar))) or ((GF_PerCharVariables.searchtext ~= "" or GF_SearchButtonHasValues()) and GF_SearchMessageForTextString(string.lower(entry.message).." ",string.lower(GF_PerCharVariables.searchtext)..",",entry))) and ((GF_SavedVariables.showlfg and entry.lfg) or (GF_SavedVariables.showlfm and not entry.lfg)) and ((not entry.hc and GF_BUTTONS_LIST.LFGHardCore[GF_PerCharVariables.hardcore][5]) or (entry.hc and GF_BUTTONS_LIST.LFGHardCore[GF_PerCharVariables.hardcore][6]))
	and ((GF_SavedVariables.showdungeons and entry.type == "D") or (GF_SavedVariables.showraids and entry.type == "R") or (GF_SavedVariables.showquests and entry.type == "Q") or (GF_SavedVariables.showother and entry.type == "N")) then
		return true
	end
end
function GF_GetDifficultyColor(level)
	if level == 0 then return "|cff"..GF_DifficultyColors["GREY"]
	elseif level - UnitLevel("player") > 3 then return "|cff"..GF_DifficultyColors["RED"]
	elseif level - UnitLevel("player") > 1 then return "|cff"..GF_DifficultyColors["ORANGE"]
	elseif level - UnitLevel("player") > -2 then return "|cff"..GF_DifficultyColors["YELLOW"]
	elseif level - UnitLevel("player") * .95 > -3.05 then return "|cff"..GF_DifficultyColors["GREEN"]
	else return "|cff"..GF_DifficultyColors["GREY"] end
end
function GF_GetLevelString(level,flags)
	if level == 0 then if flags[1] == "SM" then return "[35]|r |cffffffff["..flags[1].."]|r " elseif flags[1] == "" then return "[NA]|r " else return "[NA]|r |cffffffff["..flags[1].."]|r " end
	elseif flags[1] ~= "" then if level > 60 then return "[60]|r |cffffffff["..flags[1].."]|r " else return "["..level.."]|r |cffffffff["..flags[1].."]|r " end
	else return "["..level.."]|r " end
end
function GF_ListItem_OnMouseUp(id)
	if not GF_HandleItemRefLinks("player:"..GF_FilteredResultsList[GF_ResultsListOffset+id].op,text,arg1) then
		if (arg1 == "RightButton") then
			HideDropDownMenu(1)
			if GF_FilteredResultsList[GF_ResultsListOffset+id].op ~= UnitName("player") then
				FriendsDropDown.initialize = FriendsFrameDropDown_Initialize
				FriendsDropDown.displayMode = "MENU"
				FriendsDropDown.name = GF_FilteredResultsList[GF_ResultsListOffset+id].op
				ToggleDropDownMenu(1, nil, FriendsDropDown, "cursor")
				return
			end
		else
			CloseDropDownMenus(1)
			GF_ListItemAuxLeft_ShowTooltip(getglobal("GF_NewItem"..id),id,true)
		end
	end
end
function GF_ListItemAuxLeft_ShowTooltip(frame,id,showall)
	if not id then return end
	GameTooltip:ClearLines()
	GameTooltip:SetOwner(this, "ANCHOR_BOTTOMLEFT")
	GameTooltip:ClearAllPoints()
	GameTooltip:SetPoint("BOTTOMLEFT", frame:GetName(), "TOPLEFT", 0, 8)
	
	if not GF_FilteredResultsList[GF_ResultsListOffset+id] then return end
	
	--GameTooltip:AddLine(GF_FilteredResultsList[GF_ResultsListOffset+id].op)
	GameTooltip:AddLine(GF_FilteredResultsList[GF_ResultsListOffset+id].message, 0.9, 0.9, 1.0, 1, 1)
	if showall and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op] then
		if GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][1] and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][1] ~= GF_FilteredResultsList[GF_ResultsListOffset+id].message then
			GameTooltip:AddLine(GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][1], 0.9, 0.9, 1.0, 1, 1)
		end
		if GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][2] and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][2] ~= GF_FilteredResultsList[GF_ResultsListOffset+id].message and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][1] ~= GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][2] and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][2] ~= "ZZZzzz123654" then
			GameTooltip:AddLine(GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][2], 0.9, 0.9, 1.0, 1, 1)
		end
		if GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][3] and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][3] ~= GF_FilteredResultsList[GF_ResultsListOffset+id].message and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][1] ~= GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][2] and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][2] ~= GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][3] and GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][3] ~= "ZZZzzz123654" then
			GameTooltip:AddLine(GF_PlayerMessages[GF_FilteredResultsList[GF_ResultsListOffset+id].op][2][3], 0.9, 0.9, 1.0, 1, 1)
		end
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
	if GF_SavedVariables.usefriendslist and not GF_SavedVariables.friendsToRemove[name] then
		GF_AddNameToWhoQueue(GF_FilteredResultsList[GF_ResultsListOffset+id].op,true,true)
		getglobal(frame:GetName().."GroupWhoButton"):Hide()
	elseif not GF_UrgentWhoRequest[GF_FilteredResultsList[GF_ResultsListOffset+id].op] then
		if GF_NextAvailableWhoTime + 1 > time() then
			DEFAULT_CHAT_FRAME:AddMessage(GF_SENDING_WHO_FOR..GF_FilteredResultsList[GF_ResultsListOffset+id].op.." - "..math.ceil(GF_NextAvailableWhoTime - time() + getn(GF_UrgentWhoRequest) * 30)..GF_SECONDS, 1, 1, 0.5)
		else
			DEFAULT_CHAT_FRAME:AddMessage(GF_SENDING_WHO_FOR..GF_FilteredResultsList[GF_ResultsListOffset+id].op, 1, 1, 0.5)
		end
		table.insert(GF_UrgentWhoRequest, GF_FilteredResultsList[GF_ResultsListOffset+id].op)
		GF_UrgentWhoRequest[GF_FilteredResultsList[GF_ResultsListOffset+id].op] = time()
		getglobal(frame:GetName().."GroupWhoButton"):Hide()
	end
end
function GF_LFGInviteButton(frame,id)
	SendChatMessage(GF_INVITING_FOR..GF_FilteredResultsList[GF_ResultsListOffset+id].message,"WHISPER",nil,GF_FilteredResultsList[GF_ResultsListOffset+id].op)
	InviteByName(GF_FilteredResultsList[GF_ResultsListOffset+id].op)
	GF_LFGInviteTime[GF_FilteredResultsList[GF_ResultsListOffset+id].op] = time() + 10
	getglobal(frame:GetName().."LFGInviteButton"):Hide()
end
function GF_LFMWhisperRequestInviteButton(frame,id)
	local specString = "["..UnitLevel("player").." "
	if GF_PerCharVariables.lfgtank then specString = specString..GF_TANK.."/" end
	if GF_PerCharVariables.lfgheal then specString = specString..GF_HEALER.."/" end
	if GF_PerCharVariables.lfgdps then specString = specString..GF_DPS.."/" end
	specString = string.sub(specString,1,-2)..gsub(string.sub(specString,-1,-1),"[/ ]","").." "..UnitClass("player").."] "
	SendChatMessage(specString..GF_INVITE_PLEASE,"WHISPER",nil,GF_FilteredResultsList[GF_ResultsListOffset+id].op)
	GF_RequestInviteTime[GF_FilteredResultsList[GF_ResultsListOffset+id].op] = time() + 120
	getglobal(frame:GetName().."LFMWhisperRequestInviteButton"):Hide()
end

function GF_WhisperHistoryButtonPressed(id,override,nolog) -- Whisper/Guild History Functions
	if not override and getglobal("GF_WhisperHistoryButton"..id):GetText() == GF_WhisperLogCurrentButtonName then return end
	getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):UnlockHighlight()
	getglobal("GF_WhisperHistoryButton"..id):LockHighlight()
	if GF_WhisperLogCurrentButtonID > 1 then getglobal("GF_WhisperHistoryButtonCheckButton"..GF_WhisperLogCurrentButtonID):Hide() end
	if id > 1 then getglobal("GF_WhisperHistoryButtonCheckButton"..id):Show() end
	
	GF_WhisperLogCurrentButtonID = id
	GF_WhisperLogCurrentButtonName = getglobal("GF_WhisperHistoryButton"..id):GetText()
	if nolog then return end
	if id == 0 then
		GF_DisplayLog()
	elseif id == 1 then
		GF_WhisperHistoryDisplayLog("Guild")
	else
		GF_WhisperHistoryDisplayLog(getglobal("GF_WhisperHistoryButton"..id):GetText())
	end
end
function GF_WhisperReceivedAddToWhisperHistoryList(message,name,event)
	message = gsub(gsub(gsub(gsub(" "..message.." "," (www%d-)%.([_A-Za-z0-9-]+)%.(%S+)%s?", "|cffccccff|Hurl:%1.%2.%3|h[%1.%2.%3]|h|r ")," (%a+)://(%S+)%s?", "|cffccccff|Hurl:%1://%2|h[%1://%2]|h|r ")," (%a+)%.(%a+)/(%S+)%s?", "|cffccccff|Hurl:%1.%2/%3|h[%1.%2/%3]|h|r ")," ([_A-Za-z0-9-]+)%.([_A-Za-z0-9-]+)%.(%S+)%s?", "|cffccccff|Hurl:%1.%2.%3|h[%1.%2.%3]|h|r ")

	if not GF_WhisperLogData[GF_RealmName][name] then
		GF_WhisperLogData[GF_RealmName][name] = {}
		if GF_Friends[name] then GF_WhisperLogData[GF_RealmName][name].priority = true end
	end
	if event == "WHISPER_INFORM" then
		if GF_WhoTable[GF_RealmName][name] and GF_WhoTable[GF_RealmName][name][1] then 
			message = "|cff"..GF_ClassColors[({UnitClass("player")})[2]].."|Hplayer:"..UnitName("player").."|h".."["..date("%m/%d").."]|h|r ["..date("%H:%M").."] [To] |cff"..GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]].."[|Hplayer:"..name.."|h"..name..", "..GF_WhoTable[GF_RealmName][name][1].."]:|h|r"..message
		else
			message = "|cff"..GF_ClassColors[({UnitClass("player")})[2]].."|Hplayer:"..UnitName("player").."|h".."["..date("%m/%d").."]|h|r ["..date("%H:%M").."] [To] |cff".."9d9d9d".."[|Hplayer:"..name.."|h"..name.."]:|h|r"..message
		end
	elseif event == "WHISPER" then
		if GF_WhoTable[GF_RealmName][name] and GF_WhoTable[GF_RealmName][name][1] then 
			message = "|cff"..GF_ClassColors[({UnitClass("player")})[2]].."|Hplayer:"..UnitName("player").."|h".."["..date("%m/%d").."]|h|r ["..date("%H:%M").."] |cff"..GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]].."[|Hplayer:"..name.."|h"..name..", "..GF_WhoTable[GF_RealmName][name][1].."]:|h|r"..message
		else
			message = "|cff"..GF_ClassColors[({UnitClass("player")})[2]].."|Hplayer:"..UnitName("player").."|h".."["..date("%m/%d").."]|h|r ["..date("%H:%M").."] |cff".."9d9d9d".."[|Hplayer:"..name.."|h"..name.."]:|h|r"..message
		end
	elseif event == "GUILD" or event == "OFFICER" then
		if GF_WhoTable[GF_RealmName][name] and GF_WhoTable[GF_RealmName][name][1] and GF_WhoTable[GF_RealmName][name][2] then 
			message = "|cff"..GF_ClassColors[({UnitClass("player")})[2]].."|Hplayer:"..UnitName("player").."|h".."["..date("%m/%d").."]|h|r ["..date("%H:%M").."] "..EventIDAlias[event].." |cff"..GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]].."[|Hplayer:"..name.."|h"..name..", "..GF_WhoTable[GF_RealmName][name][1].."]:|h|r"..message
		else
			message = "|cff"..GF_ClassColors[({UnitClass("player")})[2]].."|Hplayer:"..UnitName("player").."|h".."["..date("%m/%d").."]|h|r ["..date("%H:%M").."] "..EventIDAlias[event].." |cff".."9d9d9d".."[|Hplayer:"..name.."|h"..name.."]:|h|r"..message
		end
		table.insert(GF_WhisperLogData[GF_RealmName]["Guild"],1,{message,event})
		if getn(GF_WhisperLogData[GF_RealmName]["Guild"]) > 128 then table.remove(GF_WhisperLogData[GF_RealmName]["Guild"],129) end
	end
	if event ~= "GUILD" and event ~= "OFFICER" then
		table.insert(GF_WhisperLogData[GF_RealmName][name],1,{message,"WHISPER"})
		table.insert(GF_WhisperLogData[GF_RealmName]["Guild"],1,{message,"WHISPER"})
		if getn(GF_WhisperLogData[GF_RealmName][name]) > 128 then table.remove(GF_WhisperLogData[GF_RealmName][name],129) end
		if getn(GF_WhisperLogData[GF_RealmName]["Guild"]) > 128 then table.remove(GF_WhisperLogData[GF_RealmName]["Guild"],129) end
		GF_WhisperHistoryUpdateFrame(name)
	end
	table.insert(GF_LogHistory[GF_RealmName],1,{message,10,event})
	if getn(GF_LogHistory[GF_RealmName]) > 500 then table.remove(GF_LogHistory[GF_RealmName],501) end
	if GF_WhisperLogCurrentButtonID < 2 or name == getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):GetText() then
		if GF_ConvertMessagesToLinks then
			local _,_,startString,endString = string.find(message, "(.-%].-|Hplayer.-|h|r )(.*)")
			if startString then
				endString = gsub(gsub(gsub(gsub(endString, "|[cC]%x+|%w+:%w+:[%w:]+|[h]", ""), "|[cC]%x+%p+%w+:(.-)|h.-|h|r", "%1"), "|[cC]%x+", ""), "|[hHrR]?", "")
				GF_Log:AddMessage(startString.."|cffccccff|Hurl:"..endString.."|h"..endString.."|h|r", GF_TextColors[event][1], GF_TextColors[event][2], GF_TextColors[event][3])
			else
				GF_Log:AddMessage(message, GF_TextColors[event][1], GF_TextColors[event][2], GF_TextColors[event][3])
			end
		else
			GF_Log:AddMessage(message, GF_TextColors[event][1], GF_TextColors[event][2], GF_TextColors[event][3])
		end
	end
end
function GF_WhisperHistoryUpdateFrame(name)
	local numPriority = 0
	local nameWasPriority
	local counter = 2
	if not GF_WhisperLogData[GF_RealmName][1] then table.insert(GF_WhisperLogData[GF_RealmName], "Guild") end
	while true do
		if not name or not GF_WhisperLogData[GF_RealmName][counter] or counter == 96 then break end
		if GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][counter]].priority then numPriority = numPriority+1 end
		if name == GF_WhisperLogData[GF_RealmName][counter] then if GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][counter]].priority then nameWasPriority = true end table.remove(GF_WhisperLogData[GF_RealmName],counter) else counter = counter+1 end
	end
	if name then
		if nameWasPriority then
			table.insert(GF_WhisperLogData[GF_RealmName],2,name)
			GF_WhisperLogOffset = 0
		else
			table.insert(GF_WhisperLogData[GF_RealmName],2+numPriority,name)
			GF_WhisperLogOffset = math.floor(numPriority/18) * 18
		end
	end
	for i=2, 19 do
		if GF_WhisperLogData[GF_RealmName][i+GF_WhisperLogOffset] then
			if GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i+GF_WhisperLogOffset]].priority then getglobal("GF_WhisperHistoryButtonCheckButton"..i):SetChecked(true) getglobal("GF_WhisperHistoryButton"..i.."TextureGold"):Show() else getglobal("GF_WhisperHistoryButtonCheckButton"..i):SetChecked(false) getglobal("GF_WhisperHistoryButton"..i.."TextureGold"):Hide() end
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
	if GF_WhisperLogCurrentButtonID > 1 and getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):GetText() ~= GF_WhisperLogCurrentButtonName then
		getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):UnlockHighlight()
		getglobal("GF_WhisperHistoryButtonCheckButton"..GF_WhisperLogCurrentButtonID):Hide()
	end
	if getn(GF_WhisperLogData[GF_RealmName]) > 95 then GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][96]] = nil table.remove(GF_WhisperLogData[GF_RealmName],96) end
end
function GF_WhisperHistoryDisplayLog(name)
	GF_Log:SetMaxLines(128)
	if GF_ConvertMessagesToLinks then
		for i=getn(GF_WhisperLogData[GF_RealmName][name]), 1, -1 do
			local _,_,startString,endString = string.find(GF_WhisperLogData[GF_RealmName][name][i][1], "(.-%].-|Hplayer.-|h|r )(.*)")
			if startString then
				endString = gsub(gsub(gsub(gsub(endString, "|[cC]%x+|%w+:%w+:[%w:]+|[h]", ""), "|[cC]%x+%p+%w+:(.-)|h.-|h|r", "%1"), "|[cC]%x+", ""), "|[hHrR]?", "")
				GF_Log:AddMessage(startString.."|cffccccff|Hurl:"..endString.."|h"..endString.."|h|r", GF_TextColors[GF_WhisperLogData[GF_RealmName][name][i][2]][1], GF_TextColors[GF_WhisperLogData[GF_RealmName][name][i][2]][2], GF_TextColors[GF_WhisperLogData[GF_RealmName][name][i][2]][3])
			else
				GF_Log:AddMessage(GF_WhisperLogData[GF_RealmName][name][i][1],GF_TextColors[GF_WhisperLogData[GF_RealmName][name][i][2]][1], GF_TextColors[GF_WhisperLogData[GF_RealmName][name][i][2]][2], GF_TextColors[GF_WhisperLogData[GF_RealmName][name][i][2]][3])
			end
		end
	else
		for i=getn(GF_WhisperLogData[GF_RealmName][name]), 1, -1 do
			GF_Log:AddMessage(GF_WhisperLogData[GF_RealmName][name][i][1],GF_TextColors[GF_WhisperLogData[GF_RealmName][name][i][2]][1], GF_TextColors[GF_WhisperLogData[GF_RealmName][name][i][2]][2], GF_TextColors[GF_WhisperLogData[GF_RealmName][name][i][2]][3])
		end
	end
end
function GF_WhisperHistoryPriorityListCheckButtonPressed(id,name,priority)
	GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][id+GF_WhisperLogOffset]].priority = priority
	GF_WhisperHistoryUpdateFrame(name)
	-- 2 is first position, so if page 
end

function GF_UpdateBlackListItems() -- Blacklist functions
	while GF_BlackListOffset > (getn(GF_BlackList[GF_RealmName]) + .1) do GF_BlackListOffset = GF_BlackListOffset - 20 end
	GF_BlackListFramePageLabel:SetText(GF_PAGE.." "..math.ceil((GF_BlackListOffset + .1) / 20).." / "..math.max(math.ceil(getn(GF_BlackList[GF_RealmName]) / 20),1))
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
	local name = string.upper(string.sub(GF_AddPlayerFrameEditBox:GetText(),1,1))..string.lower(string.sub(GF_AddPlayerFrameEditBox:GetText(),2))
	if name ~= "" then
		if not GF_BlackList[GF_RealmName][name] and not string.find(name, "[%d%p%c%s]") then
			table.insert(GF_BlackList[GF_RealmName],1,{ name, GF_DEFAULT_PLAYER_NOTE })
			GF_BlackList[GF_RealmName][name] = true
		else
			DEFAULT_CHAT_FRAME:AddMessage(name..GF_INVALID_PLAYER_NAME, 1, 1, 0.5)
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
		GF_GetWhoButton:SetText(GF_STOP_WHO)
		GF_GetWhoClassLevelList(GF_PerCharVariables.getwhowhisperlevel, GF_PerCharVariables.getwhowhisperclass, true)
		if GF_NextAvailableWhoTime > time() then DEFAULT_CHAT_FRAME:AddMessage(GF_SENDING_GET_WHO..(GF_NextAvailableWhoTime - time())..GF_SECONDS, 1, 1, 0.5) end
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
	local minlevel = level-GF_GetWhoLevelRange
	local maxlevel = level+GF_GetWhoLevelRange
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
			if GF_PlayingOnTurtle and GF_DoesClassMatchRace(class, GF_HIGH_ELF) then
				table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_HIGH_ELF.."\"")
			end
			if GF_DoesClassMatchRace(class, GF_GNOME) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_GNOME.."\"") end
			if GF_DoesClassMatchRace(class, GF_DWARF) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_DWARF.."\"") end
			if GF_DoesClassMatchRace(class, GF_NIGHT_ELF) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_NIGHT_ELF.."\"") end
			if GF_DoesClassMatchRace(class, GF_HUMAN) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_HUMAN.."\"") end
		else
			if GF_PlayingOnTurtle and GF_DoesClassMatchRace(class, GF_GOBLIN) then
				table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_GOBLIN.."\"")
			end
			if GF_DoesClassMatchRace(class, GF_TAUREN) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_TAUREN.."\"") end
			if GF_DoesClassMatchRace(class, GF_TROLL) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_TROLL.."\"") end
			if GF_DoesClassMatchRace(class, GF_ORC) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_ORC.."\"") end
			if GF_DoesClassMatchRace(class, GF_UNDEAD) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_UNDEAD.."\"") end
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
function GF_DoesClassMatchRace(class, race)
	if GF_PlayingOnTurtle then
		if (class == GF_DRUID) and (race == GF_NIGHT_ELF or race == GF_TAUREN) then return true
		elseif (class == GF_HUNTER) and (race == GF_HUMAN or race == GF_NIGHT_ELF or race == GF_DWARF or race == GF_GNOME or race == GF_UNDEAD or race == GF_ORC or race == GF_TROLL or race == GF_TAUREN or race == GF_HIGH_ELF or race == GF_GOBLIN) then return true
		elseif (class == GF_MAGE) and (race == GF_HUMAN or race == GF_DWARF or race == GF_GNOME or race == GF_UNDEAD or race == GF_ORC or race == GF_TROLL or race == GF_HIGH_ELF or race == GF_GOBLIN) then return true
		elseif (class == GF_PALADIN) and (race == GF_HUMAN or race == GF_DWARF or race == GF_HIGH_ELF) then return true
		elseif (class == GF_PRIEST) and (race == GF_HUMAN or race == GF_NIGHT_ELF or race == GF_DWARF or race == GF_UNDEAD or race == GF_TROLL or race == GF_HIGH_ELF) then return true
		elseif (class == GF_ROGUE) and (race == GF_HUMAN or race == GF_NIGHT_ELF or race == GF_DWARF or race == GF_GNOME or race == GF_UNDEAD or race == GF_ORC or race == GF_TROLL or race == GF_HIGH_ELF or race == GF_GOBLIN) then return true
		elseif (class == GF_SHAMAN) and (race == GF_ORC or race == GF_TROLL or race == GF_TAUREN) then return true
		elseif (class == GF_WARLOCK) and (race == GF_HUMAN or race == GF_GNOME or race == GF_UNDEAD or race == GF_ORC or race == GF_TROLL or race == GF_GOBLIN) then return true
		elseif (class == GF_WARRIOR) and (race == GF_HUMAN or race == GF_NIGHT_ELF or race == GF_DWARF or race == GF_GNOME or race == GF_UNDEAD or race == GF_ORC or race == GF_TROLL or race == GF_TAUREN or race == GF_HIGH_ELF or race == GF_GOBLIN) then return true end
	else
		if (class == GF_DRUID) and (race == GF_NIGHT_ELF or race == GF_TAUREN) then return true
		elseif (class == GF_HUNTER) and (race == GF_NIGHT_ELF or race == GF_DWARF or race == GF_ORC or race == GF_TROLL or race == GF_TAUREN) then return true
		elseif (class == GF_MAGE) and (race == GF_HUMAN or race == GF_GNOME or race == GF_UNDEAD or race == GF_TROLL) then return true
		elseif (class == GF_PALADIN) and (race == GF_HUMAN or race == GF_DWARF) then return true
		elseif (class == GF_PRIEST) and (race == GF_HUMAN or race == GF_NIGHT_ELF or race == GF_DWARF or race == GF_UNDEAD or race == GF_TROLL) then return true
		elseif (class == GF_ROGUE) and (race == GF_HUMAN or race == GF_NIGHT_ELF or race == GF_DWARF or race == GF_GNOME or race == GF_UNDEAD or race == GF_ORC or race == GF_TROLL) then return true
		elseif (class == GF_SHAMAN) and (race == GF_ORC or race == GF_TROLL or race == GF_TAUREN) then return true
		elseif (class == GF_WARLOCK) and (race == GF_HUMAN or race == GF_GNOME or race == GF_UNDEAD or race == GF_ORC) then return true
		elseif (class == GF_WARRIOR) and (race == GF_HUMAN or race == GF_NIGHT_ELF or race == GF_DWARF or race == GF_GNOME or race == GF_UNDEAD or race == GF_ORC or race == GF_TROLL or race == GF_TAUREN) then return true end
	end
end
function GF_IsFoundClassWhoPlayerInADungeonOrPvP(zone)
	for _,dtable in pairs(GF_BUTTONS_LIST["LFGDungeon"]) do
		if zone == dtable[5] then return true end
	end
	for _,dtable in pairs(GF_BUTTONS_LIST["LFGRaid"]) do
		if zone == dtable[5] then return true end
	end
	for _,dtable in pairs(GF_BUTTONS_LIST["LFGPvP"]) do
		if zone == dtable[5] then return true end
	end
end
function GF_GetWhoSendWhisperToAvailablePlayer()
	local whispermessage = GF_GetWhoWhisperEditBox:GetText()
	if whispermessage == "" then whispermessage = GF_LFGDescriptionEditBox:GetText() end

	if GF_GetWhoName == "" then
		DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_NO_PLAYERS_TO_WHISPER, 1, 1, 0.5)
	elseif whispermessage == "" then
		DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_NO_WHISPER_TEXT, 1, 1, 0.5)
	elseif string.len(whispermessage) < 5 then
		DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_WHISPER_TEXT_TOO_SHORT, 1, 1, 0.5)
	else
		SendChatMessage(whispermessage,"WHISPER",nil,GF_GetWhoName)
		if GF_ClassWhoTable[GF_GetWhoName] then GF_ClassWhoTable[GF_GetWhoName][4] = time() + GF_GetWhoResetTimer end
		GF_ClassWhoMatchingResults = GF_ClassWhoMatchingResults - 1
		GF_GetWhoTotalNames:SetText(GF_ClassWhoMatchingResults)
		GF_ClassWhoRequest = nil
		GF_ClassWhoQueue = {}
		GF_GetWhoButton:SetText(GF_GET_WHO)
		for name,entry in pairs(GF_ClassWhoTable) do if entry[4] <= time() then GF_GetWhoName = name GF_GetWhoNameLabel:SetText(name.."("..entry[1]..")") return end end
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
	for name,entry in pairs(GF_ClassWhoTable) do if entry[4] <= time() then GF_GetWhoName = name GF_GetWhoNameLabel:SetText(name.."("..entry[1]..")") return end end
	GF_GetWhoName = ""
	GF_GetWhoNameLabel:SetText("")
end
function GF_FindDungeonLevel(whisperText,lfgText)
	if GF_GetWhoWhisperEditBox:GetText() ~= "" then 
		for _,dtable in pairs(GF_BUTTONS_LIST["LFGDungeon"]) do
			for w in string.gfind(whisperText, string.lower(dtable[1])) do
				return dtable[6]
			end
		end
	end
	for _,dtable in pairs(GF_BUTTONS_LIST["LFGDungeon"]) do
		for w in string.gfind(lfgText, string.lower(dtable[1])) do
			return dtable[6]
		end
	end
	if GF_GetWhoWhisperEditBox:GetText() ~= "" then 
		for _,dtable in pairs(GF_BUTTONS_LIST["LFGRaid"]) do
			for w in string.gfind(whisperText, string.lower(dtable[1])) do
				return dtable[6]
			end
		end
	end
	for _,dtable in pairs(GF_BUTTONS_LIST["LFGRaid"]) do
		for w in string.gfind(lfgText, string.lower(dtable[1])) do
			return dtable[6]
		end
	end
end

function GF_FixLFGStrings(groupSizeOnly) -- LFG Group Maker Functions
	local maxGroupSize = GF_BUTTONS_LIST.LFGSize[GF_PerCharVariables.lfgsize][4]
	local foundLFM = 0
	local foundDungeonRaid = {}
	local foundRoles = {}
	local foundEndOfText
	local endOfFilter = 0
	GF_PerCharVariables.searchlfgtext = gsub(gsub(gsub(GF_PerCharVariables.searchlfgtext, "[Ll]+[Ff]+%d?%d?[Mm]+", "LFM"), "%(HC%)", ""),"%s%s+"," ")
	for i=1,getn(GF_BUTTONS_LIST.LFGLFM) do
		_,foundEndOfText = string.find(GF_PerCharVariables.searchlfgtext, GF_BUTTONS_LIST.LFGLFM[i][1])
		if foundEndOfText then
			foundLFM = i
			if foundEndOfText > endOfFilter then endOfFilter = foundEndOfText end
			break
		end
	end
	for i=1,getn(GF_BUTTONS_LIST.LFGRole) do
		_,foundEndOfText = string.find(GF_PerCharVariables.searchlfgtext, GF_BUTTONS_LIST.LFGRole[i][1])
		if foundEndOfText then
			if foundEndOfText > endOfFilter then endOfFilter = foundEndOfText end
			table.insert(foundRoles,GF_BUTTONS_LIST.LFGRole[i][1])
		end
	end
	for i=1,getn(GF_BUTTONS_LIST.LFGDungeon) do
		_,foundEndOfText = string.find(GF_PerCharVariables.searchlfgtext, GF_BUTTONS_LIST.LFGDungeon[i][1])
		if foundEndOfText then
			if foundEndOfText > endOfFilter then endOfFilter = foundEndOfText end
			if tonumber(maxGroupSize) > GF_BUTTONS_LIST.LFGDungeon[i][5] then maxGroupSize = GF_BUTTONS_LIST.LFGDungeon[i][5] end
			table.insert(foundDungeonRaid,GF_BUTTONS_LIST.LFGDungeon[i][1])
		end
	end
	for i=1,getn(GF_BUTTONS_LIST.LFGRaid) do
		_,foundEndOfText = string.find(GF_PerCharVariables.searchlfgtext, GF_BUTTONS_LIST.LFGRaid[i][1])
		if foundEndOfText then
			if foundEndOfText > endOfFilter then endOfFilter = foundEndOfText end
			if tonumber(maxGroupSize) > GF_BUTTONS_LIST.LFGRaid[i][5] then maxGroupSize = GF_BUTTONS_LIST.LFGRaid[i][5] end
			table.insert(foundDungeonRaid,GF_BUTTONS_LIST.LFGRaid[i][1])
		end
	end
	local newText = ""
	if groupSizeOnly then
		if foundLFM == 1 then
			GF_PerCharVariables.searchlfgtext = gsub(GF_PerCharVariables.searchlfgtext, "LFM", "")
			if GF_PerCharVariables.lfgauto then
				GF_LFGDescriptionEditBox:SetText("LF"..(maxGroupSize-GF_NumPartyMembers).."M"..GF_PerCharVariables.searchlfgtext)
			else
				GF_LFGDescriptionEditBox:SetText("LFM"..GF_PerCharVariables.searchlfgtext)
			end
		end
	else
		if foundLFM == 1 then
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
			if not GF_PerCharVariables.disablehardcore and GF_Hardcore and GF_PerCharVariables.hardcore ~= 3 and strlen(newText) > 0 then newText = newText.." (HC)" end
			if getn(foundRoles) > 0 then
				newText = newText.." need "
				for i=1, getn(foundRoles) do
					newText = newText.."/"..foundRoles[i]
				end
			end
		else
			if foundLFM > 4 then
				if GF_PerCharVariables.lfgtank then newText = newText.."/"..GF_TANK end
				if GF_PerCharVariables.lfgheal then newText = newText.."/"..GF_HEALER end
				if GF_PerCharVariables.lfgdps then newText = newText.."/"..GF_DPS end
			else
				for i=1, getn(foundRoles) do
					newText = newText.."/"..foundRoles[i]
				end
			end
			if GF_PerCharVariables.lfglevel and ((foundLFM ~= 0 and foundLFM < 6) or strlen(newText) > 0) then newText = UnitLevel("player").." "..newText end
			if foundLFM > 0 then newText = " "..newText.." "..GF_BUTTONS_LIST.LFGLFM[foundLFM][1] end
			if strlen(newText) > 0 and getn(foundDungeonRaid) > 0 then newText = newText.." for " else newText = newText.." " end
			for i=1, getn(foundDungeonRaid) do
				newText = newText.."/"..foundDungeonRaid[i]
			end
			if not GF_PerCharVariables.disablehardcore and GF_Hardcore and GF_PerCharVariables.hardcore ~= 3 and strlen(newText) > 1 then newText = newText.." (HC)" end
		end
		GF_PerCharVariables.searchlfgtext = gsub(gsub(gsub(gsub(gsub(gsub(gsub(newText.." "..string.sub(GF_PerCharVariables.searchlfgtext, endOfFilter+1), "^[/ ]+", ""), "[/ ]+$", ""), "^[/ ]+", ""),"//+", ""), "/%s+"," "),"%s+/", " "),"%s%s+", " ")
		GF_LFGDescriptionEditBox:SetText(GF_PerCharVariables.searchlfgtext)
	end
end
function GF_ShowDropdownList(bframe)
	local width = 0
	GF_NumLFGSearchButtons = 0
	GF_PerCharVariables.searchlfgtext = GF_LFGDescriptionEditBox:GetText()
	local foundLFMLFG
	for i=1, getn(GF_BUTTONS_LIST[bframe]) do
		if bframe == "BlockList" or (UnitLevel("player") >= GF_BUTTONS_LIST[bframe][i][2] and UnitLevel("player") <= GF_BUTTONS_LIST[bframe][i][3]) then
			GF_NumLFGSearchButtons = GF_NumLFGSearchButtons + 1
			local button = getglobal("GF_"..bframe..GF_NumLFGSearchButtons)
			if not button then 
				button = CreateFrame("CheckButton", getglobal("GF_"..bframe):GetName()..GF_NumLFGSearchButtons, getglobal("GF_"..bframe), "GF_LFGDropdownCheckButtonTemplate_Label")
				button:SetID(i)
				if GF_AutoFilterCheckButtonTextLabel:GetStringWidth() > 52 then getglobal(button:GetName().."TextLabel"):SetFont(getglobal(button:GetName().."TextLabel"):GetFont(),10) end
			end
			getglobal(button:GetName().."TextLabel"):SetText(GF_BUTTONS_LIST[bframe][i][1])
			if getglobal(button:GetName().."TextLabel"):GetStringWidth() >= width then width = getglobal(button:GetName().."TextLabel"):GetStringWidth()+5 end
			button:Show()
			if bframe == "SearchList" then
				if GF_PerCharVariables.searchbuttonstext[GF_BUTTONS_LIST[bframe][i][4]] then
					button:SetChecked(true)
				else
					button:SetChecked(false)
				end
			elseif bframe == "GetWhoClass" then
				if GF_PerCharVariables.getwhowhisperclass == GF_BUTTONS_LIST[bframe][i][1] then
					button:SetChecked(true)
				else
					button:SetChecked(false)
				end
			elseif bframe == "GetWhoLevel" then
				if i == 1 and GF_PerCharVariables.getwhowhisperlevel == 0 then button:SetChecked(true) else button:SetChecked(false) end
			elseif bframe == "LFGSize" then
				if GF_BUTTONS_LIST.LFGSize[GF_PerCharVariables.lfgsize][4] == GF_BUTTONS_LIST[bframe][i][4] then
					button:SetChecked(true)
				else
					button:SetChecked(false)
				end
			elseif bframe == "LFGHardCore" then
				if GF_BUTTONS_LIST.LFGHardCore[GF_PerCharVariables.hardcore][1] == GF_BUTTONS_LIST[bframe][i][1] then
					button:SetChecked(true)
				else
					button:SetChecked(false)
				end
			else
				if GF_BUTTONS_LIST[bframe][i][1] == "LFM" and string.find(" "..string.lower(GF_PerCharVariables.searchlfgtext).." ", " lf%d+m ") then
					foundLFMLFG = true
					button:SetChecked(true)
				elseif string.find(string.lower(GF_PerCharVariables.searchlfgtext), string.lower(GF_BUTTONS_LIST[bframe][i][1])) then
					if bframe == "LFGLFM" and foundLFMLFG then button:SetChecked(false) else button:SetChecked(true) foundLFMLFG = true end
				else
					button:SetChecked(false)
				end
			end
		end
	end
	if GF_NumLFGSearchButtons > 0 then
		if getglobal("GF_"..bframe..(GF_NumLFGSearchButtons+1)) and getglobal("GF_"..bframe..(GF_NumLFGSearchButtons+1)):IsShown() then for i=1, 100 do if getglobal("GF_"..bframe..(GF_NumLFGSearchButtons+i)) then getglobal("GF_"..bframe..(GF_NumLFGSearchButtons+i)):Hide() else break end end end
		getglobal("GF_"..bframe.."1"):SetPoint("TOPLEFT", getglobal("GF_"..bframe):GetName(), "TOPLEFT", 6, -4)
		if (bframe == "SearchList" and GF_NumLFGSearchButtons <= 10) or (bframe ~= "SearchList" and GF_NumLFGSearchButtons <= 6) then
			for i=1, GF_NumLFGSearchButtons do
				getglobal("GF_"..bframe..i):SetPoint("TOP", getglobal("GF_"..bframe..(i-1)), "BOTTOM", 0, 6)
			end
			getglobal("GF_"..bframe):SetHeight(12 + GF_NumLFGSearchButtons * 18)
			getglobal("GF_"..bframe):SetWidth(width + 45)
			getglobal("GF_"..bframe):ClearAllPoints()
			getglobal("GF_"..bframe):SetPoint("TOPLEFT", getglobal("GF_"..bframe.."Dropdown"), "BOTTOMLEFT", 0, 4)
		else
			getglobal("GF_"..bframe.."2"):SetPoint("TOPLEFT", getglobal("GF_"..bframe):GetName(), "TOPLEFT", (width + 51), -4)
			for i=3, GF_NumLFGSearchButtons, 2 do
				getglobal("GF_"..bframe..i):SetPoint("TOP", getglobal("GF_"..bframe..(i-2)), "BOTTOM", 0, 6)
			end
			for i=4, GF_NumLFGSearchButtons, 2 do
				getglobal("GF_"..bframe..i):SetPoint("TOP", getglobal("GF_"..bframe..(i-2)), "BOTTOM", 0, 6)
			end
			getglobal("GF_"..bframe):SetHeight(12 + ceil(GF_NumLFGSearchButtons/2) * 18)
			getglobal("GF_"..bframe):SetWidth((width + 45) * 2)
			getglobal("GF_"..bframe):ClearAllPoints()
			getglobal("GF_"..bframe):SetPoint("TOPLEFT", getglobal("GF_"..bframe.."Dropdown"), "BOTTOMLEFT", -1*(width + 45), 4)
		end
		if GF_NumLFGSearchButtons > 0 then getglobal("GF_"..bframe):Show() end
	end
end
function GF_GetCurrentLFGLFMData()
	GF_LFGLFMData = { foundlfm = false, foundlfg = false, dungeons = {}, raids = {}, roles = {}, }
	local arg1 = " "..GF_LFGDescriptionEditBox:GetText().." "
	local wordTable = {}
	local lfs,lfe,wordString,tempVal,tempString

	lfs = 1 -- To detect space/lf##m/letter(eg " lf15mbwl" = lfm bwl)
	lfs,lfe,wordString = string.find(arg1," ([lLkK][fF]?%s?%d+[mM])[%p%s]",lfs) if wordString then arg1 = string.sub(arg1,1,lfs).."LFM "..string.sub(arg1,lfs+string.len(wordString)+1) foundlfm = true end

	tempVal = 1
	while true do -- Block letter repeats
		lfs = strbyte(arg1,tempVal)
		lfe = strbyte(arg1,tempVal+1)
		if not lfe then break end
		if lfs == lfe then
			if (lfs >= 65 and lfs <= 90) or (lfs >= 97 and lfs <= 122) then
				if lfs == strbyte(arg1,tempVal+2) then
					table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(lfe)) tempVal=tempVal+2 for j=1,250 do if lfs ~= strbyte(arg1,tempVal+j) then tempVal=tempVal+j-1 break end end
				else
					table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(lfe)) tempVal=tempVal+1
				end
			else
				table.insert(wordTable,strchar(lfs)) tempVal=tempVal+1 for j=1,250 do if lfs ~= strbyte(arg1,tempVal+j) then tempVal=tempVal+j-1 break end end
			end
		elseif lfe == 32 or lfe == 46 then -- Space or Period(to combine words like "D e a d m i n e s" or "D.E.A.D.M.I.N.E.S")
			wordString = strbyte(arg1,tempVal-1)
			if (wordString == 32 or wordString == 46) and wordString == strbyte(arg1,tempVal+3) then
				table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(strbyte(arg1,tempVal+2))) tempVal=tempVal+2 for j=3,250,2 do if strbyte(arg1,tempVal+j) ~= 32 and strbyte(arg1,tempVal+j) ~= 46 then tempVal=tempVal+j-3 break else table.insert(wordTable,strchar(strbyte(arg1,tempVal+j-1))) end end
			else
				table.insert(wordTable,strchar(lfs))
			end
		elseif lfs == strbyte(arg1,tempVal+2) and lfs == strbyte(arg1,tempVal+4) and lfs ~= 32 and lfs ~= 46 then -- To prevent long 2-letter repetitions("hehehehe" becomes "hehe", "hahahahaha" becomes "haha")
			if lfe == strbyte(arg1,tempVal+3) then
				table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(lfe)) table.insert(wordTable,strchar(strbyte(arg1,tempVal+2))) table.insert(wordTable,strchar(strbyte(arg1,tempVal+3))) tempVal=tempVal+3 for j=2,250 do if strbyte(arg1,tempVal+j) ~= strbyte(arg1,tempVal+j-2) then tempVal=tempVal+j-1 break end end
			else
				table.insert(wordTable,strchar(lfs))
			end
		else
			table.insert(wordTable,strchar(lfs))
		end
		tempVal = tempVal + 1
	end
	arg1 = table.concat(wordTable)
	if string.sub(arg1,-1) ~= " " then arg1 = arg1.." " end
	wordTable = {}

	lfs = 2 -- To detect word/word with no space(eg "lfgscholo" = lfg scholo)
	while true do
		lfs,lfe,wordString = string.find(tempString,"(%a%a%a%a+)",lfs)
		if wordString then
			if not GF_WORD_WORD_REPLACE[wordString] and not GF_WORD_SPECIAL_EXCEPTIONS[wordString] then
				tempVal = string.len(wordString) - 1
				if tempVal > 11 then tempVal = 11 end
				for i=tempVal, 3, -1 do
					if GF_WORD_WORD_REPLACE[string.sub(wordString,1,i)] then 
						arg1 = string.sub(arg1,1,lfs-1+i).." "..string.sub(arg1,lfe+1)
						tempString = string.lower(arg1)
						lfs = lfe + 1
						break
					elseif GF_WORD_WORD_REPLACE[string.sub(wordString,-i)] then
						arg1 = string.sub(arg1,1,lfe-i).." "..string.sub(arg1,lfe+1-i)
						tempString = string.lower(arg1)
						lfs = lfe + 1
						break
					end
				end
				if lfs < lfe then
					if GF_WORD_WORD_REPLACE[string.sub(wordString,1,2)] then
						arg1 = string.sub(arg1,1,lfs+1).." "..string.sub(arg1,lfs+2)
						tempString = string.lower(arg1)
					elseif string.sub(wordString,-2) == "[lL][fF]" and GF_WORD_DUNGEON[wordString] or GF_WORD_RAID[wordString] or GF_WORD_PVP[wordString] or GF_WORD_QUEST[wordString] then
						arg1 = string.sub(arg1,1,lfs-1)..string.sub(arg1,lfe-1)
						tempString = string.lower(arg1)
					end
					lfs = lfe + 1
				end
			else
				lfs = lfe + 1
			end
		else
			break
		end
	end

	lfs = 2 -- To fix single words
	while true do lfs,lfe,wordString,tempString = string.find(arg1, "(.-)([%s%p%d]+)",lfs) if not wordString then break elseif GF_WORD_FIX_SINGLE_WORD[wordString] then arg1 = string.sub(arg1,1,lfs-1)..GF_WORD_FIX_SINGLE_WORD[wordString]..tempString..string.sub(arg1,lfe) lfs = lfs + string.len(GF_WORD_FIX_SINGLE_WORD[wordString]) else lfs = lfe+1 end end
	lfs = 1 -- Add all words to the wordTable
	while true do lfs,lfe,wordString = string.find(arg1, "(.-)[%s%p%d]+",lfs) if wordString then table.insert(wordTable, wordString) lfs = lfe+1 else break end end
	
-- I've trimmed sentence, fixed single words, and added all words into the wordtable...
-- Now I need to fix multiwords, then detect dungeons/raids/roles/etc
-- The issue is, I don't want to fix words that aren't related to dungeons/roles.. So I would

	tempVal = getn(wordTable)
	for j=0,3 do
		lfs = 1
		while lfs <= tempVal do
			if wordTable[lfs+j] then
				wordString = wordTable[lfs]
				for k=1, j do wordString = wordString..wordTable[lfs+k] end
				if GF_WORD_FIX_BEFORE_QUEST[wordString] then
					wordTable[lfs] = GF_WORD_FIX_BEFORE_QUEST[wordString]
					for k=1, j do table.remove(wordTable,lfs+1) tempVal=tempVal-1 end
					if wordString ~= GF_WORD_FIX_BEFORE_QUEST[wordString] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[lfs-1]
						for k=1, j do if wordTable[lfs-1+k] then wordString = wordString..wordTable[lfs-1+k] end end
						if GF_WORD_FIX_BEFORE_QUEST[wordString] then
							wordTable[lfs-1] = GF_WORD_FIX_BEFORE_QUEST[wordString]
							for k=1, j do if wordTable[lfs] then table.remove(wordTable,lfs) tempVal=tempVal-1 end end
						end
					end
				elseif GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString] then
					wordTable[lfs] = GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][1]
					for k=1, j do table.remove(wordTable,lfs+1) tempVal=tempVal-1 end
					table.insert(wordTable,lfs+1,GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][2]) tempVal=tempVal+1
					if wordString ~= GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][1]..GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][2] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[lfs-1]
						for k=1, j do if wordTable[lfs-1+k] then wordString = wordString..wordTable[lfs-1+k] end end
						if GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString] then
							wordTable[lfs-1] = GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][1]
							for k=1, j do if wordTable[lfs] then table.remove(wordTable,lfs) tempVal=tempVal-1 end end
							table.insert(wordTable,lfs,GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][2]) tempVal=tempVal+1
						end
					end
				elseif GF_WORD_FIX_QUEST_DUNGEON[wordString] then
					wordTable[lfs] = GF_WORD_FIX_QUEST_DUNGEON[wordString]
					for k=1, j do table.remove(wordTable,lfs+1) tempVal=tempVal-1 end
					if wordString ~= GF_WORD_FIX_QUEST_DUNGEON[wordString] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[lfs-1]
						for k=1, j do if wordTable[lfs-1+k] then wordString = wordString..wordTable[lfs-1+k] end end
						if GF_WORD_FIX_QUEST_DUNGEON[wordString] then
							wordTable[lfs-1] = GF_WORD_FIX_QUEST_DUNGEON[wordString]
							for k=1, j do if wordTable[lfs] then table.remove(wordTable,lfs) tempVal=tempVal-1 end end
						end
					end
				--elseif GF_LANGUAGE_FOREIGN_COMMON_MULTIWORDS[wordString] then
					--wordTable[lfs] = GF_LANGUAGE_FOREIGN_COMMON_MULTIWORDS[wordString]
					--for k=1, j do table.remove(wordTable,lfs+1) tempVal=tempVal-1 end
				end
			end
			lfs = lfs + 1
		end
	end
	for j=0,7 do
		for i=1, tempVal do
			if wordTable[i+j] then
				wordString = wordTable[i]
				for k=1, j do wordString = wordString..wordTable[i+k] end
				if not GF_GROUP_WORD_BYPASS[wordString] then
					if GF_WORD_QUEST[wordString] then
						if showanyway == true then print(wordString.." quest") end
						if not GF_MessageData.foundQuest[1] or GF_WORD_QUEST[wordString][2] > GF_MessageData.foundQuest[1] or GF_MessageData.foundQuest[2] < j then GF_MessageData.foundQuest[1] = GF_WORD_QUEST[wordString][2] GF_MessageData.foundQuest[2] = j end
						GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + .3 GF_MessageData.foundGuildExclusion = GF_MessageData.foundGuildExclusion + .1
						if not GF_LFM_BYPASS[wordString] then
							if GF_LFM_AFTER[wordTable[i+j+1]] or GF_LFM_BEFORE[wordTable[i-1]] or wordTable[i+j+2] and GF_LFM_AFTER[wordTable[i+j+1]..wordTable[i+j+2]] or wordTable[i-2] and GF_LFM_BEFORE[wordTable[i-2]..wordTable[i-1]]
							or wordTable[i-3] and GF_LFM_BEFORE[wordTable[i-3]..wordTable[i-2]..wordTable[i-1]] then
								if GF_MessageData.foundLFM == 0 then GF_MessageData.foundLFM = 1 end GF_MessageData.foundLFMPreSuf = 1 GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1.5 if showanyway == true then print(wordString.." triggername lfm 1/2 .. tradesex 1.5") end
							end

							if GF_LFG_AFTER[wordTable[i+j+1]] or GF_LFG_BEFORE[wordTable[i-1]] or wordTable[i+j+2] and GF_LFG_AFTER[wordTable[i+j+1]..wordTable[i+j+2]] or wordTable[i-2] and GF_LFG_BEFORE[wordTable[i-2]..wordTable[i-1]] then
								if GF_MessageData.foundLFG == 0 and GF_MessageData.foundLFMPreSuf == 0 then GF_MessageData.foundLFG = 1 end GF_MessageData.foundLFGPreSuf = 1 GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1.5 if showanyway == true then print(wordString.." triggername lfg 1/2 .. tradesex 1.5") end
							end
						end
					end
				end
			end
		end
	end

-- I could also just search the entire LFG message for groups

	local lfs,lfe,wordString,tempVal
	lfs = 1
	while true do
		lfs,lfe,wordString = string.find(string.lower(GF_LFGDescriptionEditBox:GetText())," for ([%w%s%p]+)",lfs)
		if wordString then
			tempVal = string.find(string.lower(GF_LFGDescriptionEditBox:GetText())," need ") or lfe
			wordString = string.sub(wordString,1,tempVal)
			for i=1,getn(GF_BUTTONS_LIST.LFGDungeon) do
				if string.find(wordString, string.lower(GF_BUTTONS_LIST.LFGDungeon[i][1])) then
					table.insert(GF_LFGLFMData["dungeons"],GF_BUTTONS_LIST.LFGDungeon[i][1])
				end
			end
			for i=1,getn(GF_BUTTONS_LIST.LFGRaid) do
				if string.find(wordString, string.lower(GF_BUTTONS_LIST.LFGRaid[i][1])) then
					table.insert(GF_LFGLFMData["raids"],GF_BUTTONS_LIST.LFGRaid[i][1])
				end
			end
			tempVal = string.find(string.lower(GF_LFGDescriptionEditBox:GetText())," need ") or lfe
			wordString = string.sub(wordString,1,tempVal)
			for i=1,getn(GF_BUTTONS_LIST.LFGDungeon) do
				if string.find(wordString, string.lower(GF_BUTTONS_LIST.LFGDungeon[i][1])) then
					table.insert(GF_LFGLFMData["dungeons"],GF_BUTTONS_LIST.LFGDungeon[i][1])
				end
			end

		else
			break
		end
	end
end
function GF_SearchButtonHasValues()
	for word,_ in GF_PerCharVariables.searchbuttonstext do
		return true
	end
	if GF_PerCharVariables.searchtext ~= "" then return true end
end

function GF_ButtonListFunctions(fName,entryName,entryID,add) -- Functions for Button Add/Remove
	GF_PerCharVariables.searchlfgtext = GF_LFGDescriptionEditBox:GetText()
	getglobal(fName)(entryName,entryID,add)
end
function GF_SearchListAddRemove(entryName,entryID,add)
	for i=4, getn(GF_BUTTONS_LIST["SearchList"][entryID]) do
		GF_PerCharVariables.searchbuttonstext[GF_BUTTONS_LIST["SearchList"][entryID][i]] = add
	end
	if GF_SearchButtonHasValues() then GF_SearchListDropdown:LockHighlight() GF_SearchListClearButton:Show() else GF_SearchListDropdown:UnlockHighlight() GF_SearchListClearButton:Hide() end
	GF_ApplyFiltersToGroupList()
end
function GF_GetWhoClassAddRemove(entryName,entryID,add)
	GF_PerCharVariables.getwhowhisperclass = entryName
	GF_GetWhoClassDropdownTextLabel:SetText(GF_PerCharVariables.getwhowhisperclass)
	GF_GetWhoClass:Hide()
end
function GF_GetWhoLevelAddRemove(entryName,entryID,add)
	GF_PerCharVariables.getwhowhisperlevel = GF_BUTTONS_LIST["GetWhoLevel"][entryID][4]
	if GF_PerCharVariables.getwhowhisperlevel == 0 then GF_GetWhoLevelDropdownTextLabel:SetText(GF_LEVEL.." "..UnitLevel("player").."±") elseif GF_PerCharVariables.getwhowhisperlevel > 60 then GF_GetWhoLevelDropdownTextLabel:SetText(GF_LEVEL.." 60±") else GF_GetWhoLevelDropdownTextLabel:SetText(GF_LEVEL.." "..GF_PerCharVariables.getwhowhisperlevel.."±") end					
	GF_GetWhoLevel:Hide()
end
function GF_LFGSizeAddRemove(entryName,entryID,add)
	GF_PerCharVariables.lfgsize = entryID
	GF_LFGSizeDropdownTextLabel:SetText(GF_BUTTONS_LIST.LFGSize[entryID][1])
	GF_FixLFGStrings(true)
	GF_LFGSize:Hide()
end
function GF_LFGLFMAddRemove(entryName,entryID,add)
	GF_PerCharVariables.searchlfgtext = gsub(GF_PerCharVariables.searchlfgtext, "^[lL][fF]%d+[mM]", "LFM")
	if add then
		for i=1, getn(GF_BUTTONS_LIST["LFGLFM"]) do -- Remove LFM/LFG and Roles then add new LFM/LFG
			if entryID == 1 and not string.find(GF_PerCharVariables.searchlfgtext, "^LFM") or (entryID > 1 and entryID < 5) then -- If setting to LFM and I'm LFG then remove roles
				for k=1,3 do
					local lfs,lfe = string.find(GF_PerCharVariables.searchlfgtext, " need "..GF_BUTTONS_LIST.LFGRole[k][1])
					if lfs then
						GF_PerCharVariables.searchlfgtext = string.sub(GF_PerCharVariables.searchlfgtext,1,lfs-1)..string.sub(GF_PerCharVariables.searchlfgtext,lfe+1)
					else
						lfs,lfe = string.find(GF_PerCharVariables.searchlfgtext, GF_BUTTONS_LIST.LFGRole[k][1])
						if lfs then
							GF_PerCharVariables.searchlfgtext = string.sub(GF_PerCharVariables.searchlfgtext,1,lfs-1)..string.sub(GF_PerCharVariables.searchlfgtext,lfe+1)
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
function GF_LFGDungeonAddRemove(entryName,entryID,add)
	if add then
		GF_PerCharVariables.searchlfgtext = GF_BUTTONS_LIST["LFGDungeon"][entryID][1].." "..gsub(GF_PerCharVariables.searchlfgtext, "^%d+", "")
	else
		GF_LFGCommonCleanup(entryName)
	end
	GF_FixLFGStrings()
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
function GF_GroupChannelNameAddRemove(entryName,entryID,add)
	GF_GroupChannelEditBox:SetText(entryName)
	GF_SavedVariables.groupchannelname = entryName
	if GF_BUTTONS_LIST.LFGHardCore[GF_PerCharVariables.hardcore][4] then GF_WorldAnnounceMessageTextLabel:SetText(GF_HARDCORE_SEND_TEXT) else GF_WorldAnnounceMessageTextLabel:SetText(GF_WORLD_SEND_TEXT.." "..GF_SavedVariables.groupchannelname.." "..GF_LOG_CHANNEL) end
	GF_GroupChannelName:Hide()
end
function GF_BlockListAddRemove(entryName,entryID,add)
	table.remove(GF_BUTTONS_LIST["BlockList"],entryID)
	table.remove(GF_SavedVariables.blocklist,entryID)
	GF_WORD_BLOCK_LIST[entryName] = nil
	GF_BlockList:Hide()
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
			if GF_PerCharVariables.hardcore < 3 and entryID == 3 then DEFAULT_CHAT_FRAME:AddMessage(GF_WORLD_NOW_SENDING, 1, 1, 0.5) elseif GF_PerCharVariables.hardcore == 3 and entryID < 3 then DEFAULT_CHAT_FRAME:AddMessage(GF_HARDCORE_NOW_SENDING, 1, 1, 0.5) end
		end
	end	
	GF_PerCharVariables.hardcore = entryID
	if GF_BUTTONS_LIST.LFGHardCore[GF_PerCharVariables.hardcore][4] then GF_WorldAnnounceMessageTextLabel:SetText(GF_HARDCORE_SEND_TEXT) else GF_WorldAnnounceMessageTextLabel:SetText(GF_WORLD_SEND_TEXT.." "..GF_SavedVariables.groupchannelname.." "..GF_LOG_CHANNEL) end
	GF_LFGHardCoreDropdownTextLabel:SetText(GF_BUTTONS_LIST.LFGHardCore[entryID][1])
	GF_LFGHardCore:Hide()
	GF_ApplyFiltersToGroupList()
end
function GF_LFGCommonCleanup(entryName)
	GF_PerCharVariables.searchlfgtext = gsub(gsub(gsub(gsub(gsub(gsub(gsub(GF_PerCharVariables.searchlfgtext, "^%d+", ""),"for "..entryName,""),"need "..entryName,""),entryName,""),"/ "," "), "%(HC%)", ""),"%s%s+"," ")
	if GF_PerCharVariables.searchlfgtext ~= "" then GF_LFGDescriptionClearButton:Show() else GF_LFGDescriptionClearButton:Hide() end
end

function GF_GetGroupInformation(arg1,arg2,sentTime,event) -- Searches messages for Groups and similiar functions
	if (GF_SavedVariables.FilterLevel == 1 and (GF_MessageData.foundLFM >=1 or GF_MessageData.foundLFG >=1))
	or (GF_SavedVariables.FilterLevel == 2 and (GF_MessageData.foundLFM >=2 or GF_MessageData.foundLFG >=2) and (GF_MessageData.foundRaid or GF_MessageData.foundDungeon or GF_MessageData.foundQuest[1] or GF_MessageData.foundPvP or GF_MessageData.foundClass))
	or (GF_SavedVariables.FilterLevel == 3 and (GF_MessageData.foundLFM >=3 or GF_MessageData.foundLFG >=3) and (GF_MessageData.foundRaid or GF_MessageData.foundDungeon or GF_MessageData.foundQuest[1] or GF_MessageData.foundPvP or GF_MessageData.foundClass)) then
	else return end
	
	local entry = {}
	entry.op = arg2
	entry.message = GF_ChatReplaceHquestLevels(arg1)
	if GF_MessageData.foundRaid then entry.type = "R" entry.flags = {} for i=1, getn(GF_MessageData.foundDFlags) do table.insert(entry.flags, GF_GROUP_IDS[GF_MessageData.foundDFlags[i]]) end
	elseif GF_MessageData.foundDungeon and (not GF_MessageData.foundQuest[1] or GF_MessageData.foundQuest[1] == 0 or GF_MessageData.foundDungeon >= GF_MessageData.foundQuest[1] - 3) then
		entry.type = "D" entry.flags = {} for i=1, getn(GF_MessageData.foundDFlags) do table.insert(entry.flags, GF_GROUP_IDS[GF_MessageData.foundDFlags[i]]) end
	elseif GF_MessageData.foundQuest[1] then entry.type = "Q" GF_MessageData.foundDungeon = nil entry.flags = {"QUEST"}
	else entry.type = "N" if GF_MessageData.foundPvP then if GF_MessageData.foundPvP == 0 then GF_MessageData.foundPvP = 60 end	entry.flags = {} for i=1, getn(GF_MessageData.foundPFlags) do table.insert(entry.flags, GF_GROUP_IDS[GF_MessageData.foundPFlags[i]]) end else entry.flags = {""} end end
	if not entry.flags[1] then return end
	entry.dlevel = math.floor(GF_MessageData.foundRaid or GF_MessageData.foundDungeon or GF_MessageData.foundQuest[1] or GF_MessageData.foundPvP or GF_MessageData.foundClass or 0)
	if entry.dlevel == 0 and not GF_WhoTable[GF_RealmName][entry.op] then
		local number = 0
		for num in string.gfind(arg1, "(%d+)[%s\[\]\+]?") do
			if tonumber(num) > number and tonumber(num) > 10 and tonumber(num) < 61 then number = tonumber(num) end
		end
		entry.dlevel = number
	end
	if sentTime then entry.t = sentTime else entry.t = time() end
	if GF_MessageData.foundLFG > 0 then entry.lfg = true end
	if not GF_MessageData.foundNotHC then entry.hc = GF_MessageData.foundHC end
	
	for i=1, getn(GF_MessageList[GF_RealmName]) do
		if GF_MessageList[GF_RealmName][i].op == arg2 then
			if GF_SavedVariables.showgroupsnewonly then
				if GF_MessageList[GF_RealmName][i].t + GF_SavedVariables.showgroupsnewonlytime*60 > time() then
					entry.t = GF_MessageList[GF_RealmName][i].t
				else
					if event ~= "SAY" then table.remove(GF_MessageList[GF_RealmName], i) end
					return entry, 2
				end
			end
			if event ~= "SAY" then table.remove(GF_MessageList[GF_RealmName], i) end
			break
		end
	end
	return entry, 1
end
function GF_SearchMessageForTextString(msg,textstring,entry)
	for w in string.gfind(textstring, "([%w%s]+),") do
		if string.find(msg, w) then return true end
		for i=1, getn(entry.flags) do
			if entry.flags[i] == GF_GROUP_IDS[string.lower(gsub(w," ",""))] or entry.flags[i] == string.upper(gsub(w," ", "")) then return true end
		end
	end
	for i=1, getn(entry.flags) do
		if GF_PerCharVariables.searchbuttonstext[entry.flags[i]] then
			if entry.flags[i] == "QUEST" then
				if not GF_PerCharVariables.autofilter or (entry.dlevel and entry.dlevel >= UnitLevel("player")-GF_PerCharVariables.autofilterlevelvar and entry.dlevel <= UnitLevel("player")+GF_PerCharVariables.autofilterlevelvar) then return true end
			else
				return true
			end
		end
	end
end

function print(msg) -- I added this only temporarily so I could work on the addon without having to turn on other addons(reload faster)
	if not msg then
		DEFAULT_CHAT_FRAME:AddMessage("nil", 1, 1, 0.5)
	elseif type(msg) == "table" then
		DEFAULT_CHAT_FRAME:AddMessage("table", 1, 1, 0.5)
	else
		DEFAULT_CHAT_FRAME:AddMessage(msg, 1, 1, 0.5)
	end
end
function GetModifiedQuestName(entryname)
	local wordTable = {}
	local arg1 = " "..string.lower(gsub(gsub(entryname,"[\"#\$\%&\*,\.@\\\^_`~|]"," "),"'","")).." "
	local wordString,lfs,lfe,tempVar

	while true do lfs,lfe,wordString = string.find(arg1," ([lk]f?%s?%d+m)[%p%s]",lfs) if wordString then arg1 = string.sub(arg1,1,lfs).."lfm "..string.sub(arg1,lfs+string.len(wordString)+1) lfs = lfs + 4 GF_MessageData.foundLFM = 4 GF_MessageData.foundGuildExclusion = 3 GF_MessageData.foundTradesExclusion = 3 if showanyway == true then print("lf##m lfm 4 .. guildex 3... tradesex 3") end else break end end
	lfs = 1 -- To detect space/number+/punctuation/number+/space for groups
	while true do lfs,lfe,wordString,tempString = string.find(arg1,"[%p%s](%d+([=/])%d+) ",lfs) if wordString then if tempString == "=" then GF_MessageData.foundLFM = 2 lfs = lfe else arg1 = string.sub(arg1,1,lfs).."group"..string.sub(arg1,lfe) lfs = lfs + 6 end else break end end

	tempVal = 1
	while true do -- Block letter repeats
		lfs = strbyte(arg1,tempVal)
		lfe = strbyte(arg1,tempVal+1)
		if not lfe then break end
		if lfs == lfe then
			if lfs >= 97 and lfs <= 122 then
				if lfs == strbyte(arg1,tempVal+2) then
					table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(lfe)) tempVal=tempVal+2 for j=1,250 do if lfs ~= strbyte(arg1,tempVal+j) then tempVal=tempVal+j-1 break end end
				else
					table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(lfe)) tempVal=tempVal+1
				end
			else
				table.insert(wordTable,strchar(lfs)) tempVal=tempVal+1 for j=1,250 do if lfs ~= strbyte(arg1,tempVal+j) then tempVal=tempVal+j-1 break end end
			end
		elseif lfe == 32 or lfe == 46 then
			wordString = strbyte(arg1,tempVal-1)
			if (wordString == 32 or wordString == 46) and wordString == strbyte(arg1,tempVal+3) then
				table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(strbyte(arg1,tempVal+2))) tempVal=tempVal+2 for j=3,250,2 do if strbyte(arg1,tempVal+j) ~= 32 and strbyte(arg1,tempVal+j) ~= 46 then tempVal=tempVal+j-3 break else table.insert(wordTable,strchar(strbyte(arg1,tempVal+j-1))) end end
			else
				table.insert(wordTable,strchar(lfs))
			end
		elseif lfs == strbyte(arg1,tempVal+2) and lfs == strbyte(arg1,tempVal+4) and lfs ~= 32 and lfs ~= 46 then
			if lfe == strbyte(arg1,tempVal+3) then
				table.insert(wordTable,strchar(lfs)) table.insert(wordTable,strchar(lfe)) table.insert(wordTable,strchar(strbyte(arg1,tempVal+2))) table.insert(wordTable,strchar(strbyte(arg1,tempVal+3))) tempVal=tempVal+3 for j=2,250 do if strbyte(arg1,tempVal+j) ~= strbyte(arg1,tempVal+j-2) then tempVal=tempVal+j-1 break end end
			else
				table.insert(wordTable,strchar(lfs))
			end
		else
			table.insert(wordTable,strchar(lfs))
		end
		tempVal = tempVal + 1
	end
	arg1 = table.concat(wordTable)
	if string.sub(arg1,-1) ~= " " then arg1 = arg1.." " end
	wordTable = {}

	lfs = 1 -- To detect "faces"(eg ":d",":p")
	while true do lfs,lfe,wordString = string.find(arg1, " (%p%a+)[%[%s]",lfs) if wordString then if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe) end lfs = lfs + string.len(wordString) + 1 else break end end
	lfs = 2 -- To detect word/word with no space(eg "lfgscholo" = lfg scholo)
	while true do
		lfs,lfe,wordString = string.find(arg1,"(%a%a%a%a+)",lfs)
		if wordString then
			tempVal = string.len(wordString) - 1
			if tempVal > 11 then tempVal = 11 end
			for i=tempVal, 3, -1 do
				if GF_WORD_WORD_REPLACE[string.sub(wordString,1,i)] then 
					if GF_WORD_SPECIAL_EXCEPTIONS[wordString] then
						arg1 = string.sub(arg1,1,lfs-1)..wordString.." "..string.sub(arg1,lfe+1)
						lfs = lfs + string.len(wordString)
					elseif not GF_WORD_WORD_REPLACE[wordString] then
						arg1 = string.sub(arg1,1,lfs-1)..string.sub(wordString,1,i).." "..string.sub(arg1,lfs+i)
						lfs = lfs + (i-string.len(string.sub(wordString,1,i))) + string.len(wordString) + 1
					end
					break
				elseif GF_WORD_WORD_REPLACE[string.sub(wordString,-i)] then
					if GF_WORD_SPECIAL_EXCEPTIONS[wordString] then
						arg1 = string.sub(arg1,1,lfs-1).." "..wordString..string.sub(arg1,lfe+1)
						lfs = lfs + string.len(wordString)
					elseif not GF_WORD_WORD_REPLACE[wordString] then
						arg1 = string.sub(arg1,1,lfe-i).." "..string.sub(wordString,-i)..string.sub(arg1,lfe+1)
						lfs = lfs + (i-string.len(string.sub(wordString,-i))) + string.len(wordString) + 1
					end
					break
				end
			end
			if lfs < lfe then
				if GF_WORD_WORD_REPLACE[string.sub(wordString,1,2)] then
					arg1 = string.sub(arg1,1,lfs-1)..string.sub(wordString,1,2).." "..string.sub(arg1,lfs+2)
					lfs = lfs + string.len(wordString) + 1
				elseif string.sub(wordString,-2) == "lf" then
					wordString = string.sub(wordString,1,-3)
					if GF_WORD_FIX_SINGLE_WORD[wordString] then wordString = GF_WORD_FIX_SINGLE_WORD[wordString]
					elseif GF_WORD_FIX_BEFORE_QUEST[wordString] then wordString = GF_WORD_FIX_BEFORE_QUEST[wordString] end
					if GF_WORD_QUEST[wordString] then
						arg1 = string.sub(arg1,1,lfs-1)..wordString.." lf"..string.sub(arg1,lfe+1)
					else
						if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end
						if GF_WORD_DUNGEON[wordString] or GF_WORD_RAID[wordString] or GF_WORD_PVP[wordString] or GF_WORD_GROUP_BYPASS[wordString] then
							arg1 = string.sub(arg1,1,lfs-1)..wordString.." lf"..string.sub(arg1,lfe+1)
						end
					end
					lfs = lfs + string.len(wordString) + 3
				else
					lfs = lfs + string.len(wordString)
				end
			end
		else
			break
		end
	end

	lfs = 2 -- To fix single words
	while true do lfs,lfe,wordString,tempString = string.find(arg1, "(.-)[%s%p%d]+",lfs) if not wordString then break elseif GF_WORD_FIX_SINGLE_WORD[wordString] then arg1 = string.sub(arg1,1,lfs-1)..GF_WORD_FIX_SINGLE_WORD[wordString]..tempString..string.sub(arg1,lfe) lfs = lfs + string.len(GF_WORD_FIX_SINGLE_WORD[wordString]) else lfs = lfe+1 end end
	lfs = 1 -- To detect space/letter/number/letter/space combinations(eg " g2g " = gtg)
	while true do lfs,lfe,wordString = string.find(arg1," (w?%a%s?%d%s?%ab?)[%p%s]",lfs) if wordString then wordString = gsub(wordString," ","") if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe) end lfs = lfs + string.len(wordString) + 1 else break end end
	lfs = 1 -- To detect space/word/number+/space combinations(eg " k10" = lowerkarazhan)
	while true do lfs,lfe,wordString = string.find(arg1," (%a+%s?[:%-]?%s?%d+)s?[%p%s]",lfs) if wordString then wordString = gsub(wordString,"[%s:%-]","") if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe) end lfs = lfs + string.len(wordString) + 1 else break end end
	lfs = 1 -- To detect words with explanation points "!" (eg "hungry!","lost!")... To help identify quests with short names.
	while true do lfs,lfe,wordString = string.find(arg1, " (%a+%s?!) ",lfs) if wordString then wordString = gsub(wordString," ","") if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe) end lfs = lfs + string.len(wordString) + 1 else break end end
	lfs = 1 -- To detect space/number+/word/space combinations(eg " 10th " = tenth, " 5g " = 5gold)
	while true do
		lfs,lfe,wordString,tempString = string.find(arg1,"[%p%s](%d+%s?(%a+))[%p%s]",lfs)
		if wordString then
			wordString = gsub(wordString," ","")
			if GF_WORD_FIX[tempString] then wordString = string.sub(wordString,1,string.len(tempString)*-1-1)..GF_WORD_FIX[tempString] end
			if GF_WORD_SPECIAL_COMBINATION[wordString] then
				arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe)
				lfs = lfs + string.len(GF_WORD_SPECIAL_COMBINATION[wordString])
			elseif GF_WORD_GOLD[tempString] then
				arg1 = string.sub(arg1,1,lfs)..GF_WORD_GOLD[tempString]..string.sub(arg1,lfe)
				lfs = lfs + string.len(GF_WORD_GOLD[tempString])
				if GF_MessageData.foundTrades < 2 and tempString ~= "bh" then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 2 if showanyway == true then print("#g trade 2") end end
			else
				lfs = lfe
			end
		else
			break
		end
	end
	lfs = 2 -- To detect words between and next to "[] or ()" (eg "(human only)", "[item] for free").
	while true do lfs,lfe,wordString = string.find(arg1, "[<%(%[](.-)[%)%]>]",lfs)
		if wordString then
			if strbyte(arg1,lfs) == 91 and strbyte(arg1,lfe) == 93 then -- "[]"
				if strbyte(arg1,lfs-1) == 90 then -- From Link
					for words in string.gfind(wordString, "(%a+)") do if GF_WORD_FIX_ITEM_NAME[words] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_FIX_ITEM_NAME[words]..string.sub(arg1,lfe) break end end
				end
			end
			lfs = lfs + 1
		else
			break
		end
	end

-- Quest Search
	lfs = 2 -- Add all words to the wordTable
	while true do
		lfs,lfe,wordString = string.find(arg1, "(.-)[%s%p%d]+",lfs)
		if wordString then
			if not GF_WORD_BYPASS_TRIGGER["en"][wordString] then
				table.insert(wordTable, wordString)
				lfs = lfe+1
			else
				_,tempVal,tempString = string.find(arg1,"(%a+)",lfe+1)
				if GF_WORD_GROUP_BYPASS[wordString] then
					if GF_WORD_GROUP_BYPASS[tempString] then
						table.insert(wordTable, wordString) table.insert(wordTable, GF_WORD_GROUP_BYPASS[tempString])
						lfs = tempVal+1
					else
						if GF_WORD_GROUP_BYPASS[wordTable[getn(wordTable)]] then wordTable[getn(wordTable)] = GF_WORD_GROUP_BYPASS[wordTable[getn(wordTable)]] end
						table.insert(wordTable, wordString)
						lfs = lfe+1
					end
				else
					if GF_WORD_QUEST_BYPASS[tempString] then
						table.insert(wordTable, wordString) table.insert(wordTable, tempString)
						lfs = tempVal+1
					else
						lfs = lfe+1
					end
				end
			end
		else
			break
		end
	end
	tempVal = getn(wordTable)
	for j=0,3 do
		lfs = 1
		while lfs <= tempVal do
			if wordTable[lfs+j] then
				wordString = wordTable[lfs]
				for k=1, j do wordString = wordString..wordTable[lfs+k] end
				if GF_WORD_FIX_BEFORE_QUEST[wordString] then
					wordTable[lfs] = GF_WORD_FIX_BEFORE_QUEST[wordString]
					for k=1, j do table.remove(wordTable,lfs+1) tempVal=tempVal-1 end
					if wordString ~= GF_WORD_FIX_BEFORE_QUEST[wordString] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[lfs-1]
						for k=1, j do if wordTable[lfs-1+k] then wordString = wordString..wordTable[lfs-1+k] end end
						if GF_WORD_FIX_BEFORE_QUEST[wordString] then
							wordTable[lfs-1] = GF_WORD_FIX_BEFORE_QUEST[wordString]
							for k=1, j do if wordTable[lfs] then table.remove(wordTable,lfs) tempVal=tempVal-1 end end
						end
					end
				elseif GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString] then
					wordTable[lfs] = GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][1]
					for k=1, j do table.remove(wordTable,lfs+1) tempVal=tempVal-1 end
					table.insert(wordTable,lfs+1,GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][2]) tempVal=tempVal+1
					if wordString ~= GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][1]..GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][2] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[lfs-1]
						for k=1, j do if wordTable[lfs-1+k] then wordString = wordString..wordTable[lfs-1+k] end end
						if GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString] then
							wordTable[lfs-1] = GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][1]
							for k=1, j do if wordTable[lfs] then table.remove(wordTable,lfs) tempVal=tempVal-1 end end
							table.insert(wordTable,lfs,GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][2]) tempVal=tempVal+1
						end
					end
				end
			end
			lfs = lfs + 1
		end
	end
	return wordTable
end
function CompileFixedQuestZones(continue) -- /script CompileFixedQuestZones() /script CompileFixedQuestZones(true)
-- Import only 500 at a time so it doesn't lock up the parsing, and need to make sure I only have the highest-level quest
	if not continue then GF_SavedVariables.questconversion = {} end
	local counter = 0
	for entryname,wtable in GF_QUEST_CONVERT do
		local wordTable = GetModifiedQuestName(entryname)
		if not wordTable[1] then print("error") return end
		wordString = ""
		for i=1, getn(wordTable) do if wordTable[i] then wordString = wordString..wordTable[i] end end
		if not GF_SavedVariables.questconversion[wordString] then
			local meta = { ["addon"] = "PFDB" }
			local maps = pfDatabase:SearchQuest(entryname, meta)
			local zone = pfDatabase:GetBestMap(maps)
			if zone and zone < 0 then zone = GF_QUEST_CONVERT_NEGATIVE_ID[math.abs(zone)] end
			if wtable[3] < 0 then wtable[3] = GF_QUEST_CONVERT_NEGATIVE_ID[math.abs(wtable[3])] end

			if not GF_SavedVariables.questconversion[wordString] or GF_SavedVariables.questconversion[wordString][2] < wtable[2] then
				GF_SavedVariables.questconversion[wordString] = { wtable[1],wtable[2],wtable[3], zone or wtable[4]}
				if wordTable[getn(wordTable)] == "x" then print(entryname) end
				if wordTable[1] == "wanted" then 
					wordString = ""
					for i=2, getn(wordTable) do if wordTable[i] then wordString = wordString..wordTable[i] end end
					if not GF_SavedVariables.questconversion[wordString] or GF_SavedVariables.questconversion[wordString][2] < wtable[2] then GF_SavedVariables.questconversion[wordString] = { wtable[1],wtable[2],wtable[3],zone or wtable[4]} end
				elseif wordTable[2] and wordTable[3] and wordTable[1]..wordTable[2]..wordTable[3] == "killonsight" then
					wordString = ""
					for i=4, getn(wordTable) do if wordTable[i] then wordString = wordString..wordTable[i] end end
					if not GF_SavedVariables.questconversion[wordString] or GF_SavedVariables.questconversion[wordString][2] < wtable[2] then GF_SavedVariables.questconversion[wordString] = { wtable[1],wtable[2],wtable[3],zone or wtable[4]} end
				end
				counter = counter + 1
				if counter > 500 then print("stopping at 500") break end
			end
		end
	end
end

-- Missing a lot of quests, no coords. Need to make a table of all start/end npc's, and if have the same zone, used the shared zone
-- I can also just grab the data from the turtle website... it has "ZoneOrSort" for every quest
-- Can use that as a baseline at least, name = id/level/zoneorsort... then add endzone or objective zone(or both)
function GF_ConvertQuests(continue) -- /script GF_ConvertQuests(true) /script GF_ConvertQuests()
	if not continue then GF_SavedVariables.questconversion = {} end
	local counter = 0
	for id,qname in GF_QUEST_CONVERT do
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
	--for id,qname in GF_QUEST_CONVERT do
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
	for qtype,data in maps do
		for zoneid,_ in data do
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
function ImportFromPFDB() -- ["QuestName"]={{QuestID,PrequestID},Level,Category,{x,y,StartZoneID},{x,y,EndZoneID},{x,y,Objective1ZoneID},{x,y,Objective1ZoneID},{x,y,Objective1ZoneID},{x,y,Objective1ZoneID}...}
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
function FindForeignLetters()
	local lfs,lfe,tempVal
	local wordTable = {}
	GF_SavedVariables.questconversion = {}
	local counter,cnt = 0,0
	for entryname,wtable in GF_LANGUAGE_CONVERT do
		tempVal = 1
		while true do
			lfs = strbyte(entryname,tempVal)
			lfe = strbyte(entryname,tempVal+1)
			if not lfe then break end
			if lfs > 122 then
				if not (GF_WORD_ACCENT_ASCII_FIX[lfs] and GF_WORD_ACCENT_ASCII_FIX[lfs][lfe]) then
					print(tempVal)
					print(lfs)
					print(lfe)
				end
				tempVal = tempVal + 1
			end
			tempVal = tempVal + 1
		end
	end
	for entryname,wtable in GF_QUEST_CONVERT do
		tempVal = 1
		while true do
			lfs = strbyte(entryname,tempVal)
			lfe = strbyte(entryname,tempVal+1)
			if not lfe then break end
			if lfs > 122 then
				if lfs >= 194 and lfs <= 197 or lfs >= 208 and lfs <= 210 then
					if not (GF_WORD_ACCENT_ASCII_FIX[lfs] and GF_WORD_ACCENT_ASCII_FIX[lfs][lfe]) then
						print(entryname)
						print(tempVal)
						print(lfs)
						print(lfe)
						GF_SavedVariables.questconversion[entryname] = { wtable[1],wtable[2] }
						counter = counter + 1
						break
					end
					tempVal = tempVal + 1
				end
			end
			tempVal = tempVal + 1
		end
		if counter == 1 then return end
		cnt = cnt + 1
	end
	print(cnt)
end
function ConvertForeignWords() -- /script ConvertForeignWords()
-- remove if word is too short, remove punctuation, convert letters

-- First database = add single words 3 characters or longer with the language family only(word = language)... remove any words that are the same across languages
-- Second database = Broken down by language family... Replace word with word(word = word).. second database should include all words and store them within each language's family
-- Run first datase on single-word after letter correction... Then immediately run translation. If "Translate" then add Arg1 to database and show the database Arg1 instead of normal Arg1(chat/log/groupsframe)
-- The translation should do word replacement backwards(longest(4-word) to shortest(1-word)). Then it removes anything in the GF_WORD_BYPASS_TRIGGER based on the language family. Need to add more phrases.
-- Error correction needs to eliminate all double-letter repeating(including normal letters)
-- Two options, Translate and Show Translated... Translate will translate the message and show T in front of it in groupsframe, logsframe, and normal chat.. Show Translate will show/hide translated group messages.

	local lfs,lfe,tempVal,wordString
	local wordTable = {}
	GF_SavedVariables.questconversion = { LanguageZZZ = {}, WordZZZ = {} }
	local tempTable = {}
	for entryname,wtable in GF_QUEST_CONVERT do
		tempVal = 1
		wordString = gsub(gsub(entryname,"^%p+",""),"'","")

		wordString = wordString.." "
		while true do
			lfs = strbyte(wordString,tempVal)
			lfe = strbyte(wordString,tempVal+1)
			if not lfe then break end

			if lfs >= 194 and lfs <= 210 and GF_WORD_ACCENT_ASCII_FIX[lfs] and GF_WORD_ACCENT_ASCII_FIX[lfs][lfe] then
				if lfs == strbyte(wordString,tempVal+2) and lfe == strbyte(wordString,tempVal+3) then
					table.insert(wordTable,GF_WORD_ACCENT_ASCII_FIX[lfs][lfe]) tempVal=tempVal+1 for j=1,250,2 do if lfs ~= strbyte(wordString,tempVal+j) and lfe ~= strbyte(wordString,tempVal+j+1) or not GF_WORD_ACCENT_ASCII_FIX[strbyte(wordString,tempVal+j)] or not GF_WORD_ACCENT_ASCII_FIX[strbyte(wordString,tempVal+j)][strbyte(wordString,tempVal+j+1)] then tempVal=tempVal+j-1 break end end
				else
					table.insert(wordTable,GF_WORD_ACCENT_ASCII_FIX[lfs][lfe])
					tempVal = tempVal + 1
				end
			else
				table.insert(wordTable,strchar(lfs))
			end
			tempVal = tempVal + 1
		end
		wordString = table.concat(wordTable)
		wordTable = {}
		-- Need to save words without a/an space/%p in first database, and with in second database
		-- if first database has same words, don't save
		-- second database should be broken down by language
		wordString = gsub(gsub(wordString,"^an?[%s%p]",""),"[%s%p]an?$","")
		if not string.find(wordString,"^an?[%s%p]") and not string.find(wordString,"[%s%p]an?$") and not string.find(wordString,"[%s%p]") and string.len(wordString) > 2 then if tempTable[wordString] then tempTable[wordString][1] = "1" else tempTable[wordString] = wtable end end
		if not GF_SavedVariables.questconversion["WordZZZ"][wtable[2]] then GF_SavedVariables.questconversion["WordZZZ"][wtable[2]] = {} end
		if wtable[2] ~= "en" then
			GF_SavedVariables.questconversion["WordZZZ"][wtable[2]][gsub(wordString,"[%s%p]","")] = wtable[1]
			GF_SavedVariables.questconversion["WordZZZ"][wtable[2]][gsub(gsub(gsub(wordString,"^an?[%s%p]",""),"[%s%p]an?$",""),"[%s%p]","")] = wtable[1]
		end
	end
	for entryname,wtable in tempTable do
		if wtable[1] ~= "1" and wtable[2] ~= "en" then GF_SavedVariables.questconversion["LanguageZZZ"][entryname] = wtable[2] end
	end
end
function CheckWords() -- /script CheckWords()
	for entryname,wtable in GF_LANGUAGE_CONVERT do
		--GF_CheckForGroups(entryname,"R","World","CHAT_MSG_YELL",true)
		print(entryname)
		print(GF_CleanUpMessagesOfBadLinks(entryname))
		GF_AddLogMessage(GF_CleanUpMessagesOfBadLinks(entryname),10,true,"Redshadowz","","","YELL")
	end
end