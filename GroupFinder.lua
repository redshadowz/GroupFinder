local GF_CurrentVersion						= 530

GF_SavedVariables 							= {}
GF_RealmName								= GetRealmName()
local GF_Hardcore							= nil
local GF_PlayingOnTurtle					= nil
local GF_WhoCooldownTime					= 10
local GF_NextAvailableWhoTime				= 0
local GF_UrgentWhoRequest					= {}
GF_WhoQueue									= {}
GF_WhoTable									= {}
GF_WhoTable[GF_RealmName]					= {}
GF_ClassWhoTable							= {}
local GF_ClassWhoQueue						= {}
local GF_ClassWhoMatchingResults			= 0
local GF_GetClassWhoState					= 1
local GF_GetWhoLevel						= 0
local GF_GetWhoParams						= {}
local GF_GetWhoLevelRange					= 3
local GF_GetWhoResetTimer					= 900
local GF_FriendUnknown						= {}
local GF_LFGInviteTime						= {}
local GF_RequestInviteTime					= {}
GF_LFGDescriptionEditBoxHasFocus			= { nil,0 }

GF_MessageList								= {}
GF_MessageList[GF_RealmName]				= {}
GF_BlackList								= {}
GF_BlackList[GF_RealmName]					= {}
GF_FilteredResultsList						= {}
GF_ResultsListOffset						= 0
GF_ResultsListOffsetSize					= 20
GF_BlackListOffset							= 0
GF_NumLFGSearchButtons						= 0
GF_LogHistory								= {}
GF_LogHistory[GF_RealmName]					= {}

local GF_OnStartupRunOnce					= true
local GF_OnStartupQueueURequest				= nil
local GF_AddonWhoDataToBeSentBuffer			= {}
local GF_AddonAllNamesForResponseToLogin	= {}
local GF_AddonNamesToBeSentAsARequest		= {}
local GF_AddonOPSentNamesOnLogin			= {}
local GF_AddonGroupDataToBeSentBuffer		= {}
local GF_AddonMakeAListOfGroupsForSending	= nil
local GF_AddonListOfGuildAndPartyMembersWithAddon= {}
local GF_AddonTimeSinceLastUpdate			= 0
local GF_AddonNamesFromWhoSinceLoggedOn		= {}
local GF_AddonNeedToBroadcastSomething		= nil

GF_AutoAnnounceTimer						= nil
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
local GF_RequestWhoDataPeriodicallyTimer	= 30
GF_PlayerMessages							= {}
GF_IncomingMessagePrune						= 0
local GF_PreviousMessage					= {}
local GF_MiniMapMessages					= {0,0,0,0,0,0,{}}
local GF_LogMessageCodes = { GF_LOGGED_GROUPS, GF_LOGGED_NEW, GF_LOGGED_FILTERED, GF_LOGGED_CHAT, GF_LOGGED_TRADES, GF_LOGGED_LOOT, GF_LOGGED_SPAM, GF_LOGGED_BLACKLIST, GF_LOGGED_BELOWLEVEL, GF_LOGGED_ME, GF_LOGGED_GUILD }

local GF_ChatChannelsGroups					= { }
GF_WhisperLogCurrentButtonID				= 0
GF_WhisperLogData							= {}
GF_WhisperLogData[GF_RealmName]				= {}
GF_WhisperLogData[GF_RealmName]["Guild"]	= {}
local GF_MessageData						= {}
local GF_Classes							= { [GF_PRIEST]="PRIEST",[GF_MAGE]="MAGE",[GF_WARLOCK]="WARLOCK",[GF_DRUID]="DRUID",[GF_HUNTER]="HUNTER",[GF_ROGUE]="ROGUE",[GF_WARRIOR]="WARRIOR",[GF_PALADIN]="PALADIN",[GF_SHAMAN]="SHAMAN",
												["PRIEST"]=GF_PRIEST,["MAGE"]=GF_MAGE,["WARLOCK"]=GF_WARLOCK,["DRUID"]=GF_DRUID,["HUNTER"]=GF_HUNTER,["ROGUE"]=GF_ROGUE,["WARRIOR"]=GF_WARRIOR,["PALADIN"]=GF_PALADIN,["SHAMAN"]=GF_SHAMAN }
local GF_ClassColors						= {	["PRIEST"]="ffffff",["MAGE"]="68ccef",["WARLOCK"]="9382c9",["DRUID"]="ff7c0a",["HUNTER"]="aad372",["ROGUE"]="fff468",["WARRIOR"]="c69b6d",["PALADIN"]="f48cba",["SHAMAN"]="0070dd" }
local GF_ClassIDs = { "PRIEST", "MAGE", "WARLOCK", "DRUID", "HUNTER", "ROGUE", "WARRIOR", "PALADIN", "SHAMAN", ["PRIEST"]=1,["MAGE"]=2,["WARLOCK"]=3,["DRUID"]=4,["HUNTER"]=5,["ROGUE"]=6,["WARRIOR"]=7,["PALADIN"]=8,["SHAMAN"]=9 }
local GF_TextColors = { ["SYSTEM"] = {"ffff00",255,255,0},["SAY"] = {"ffffff",255,255,255},["YELL"] = {"ff4040",255,64,64},["CHANNEL"] = {"ffc0c0",255,192,192},["GUILD"] = {"40ff40",64,255,64},["OFFICER"] = {"40c040",64,192,64},
["WHISPER"] = {"ff80ff",255,128,255},["WHISPER_INFORM"] = {"ff80ff",255,128,255},["PARTY"] = {"aaaaff",170,170,255},["RAID"] = {"ff7f00",255,127,0},["RAID_LEADER"] = {"ff4809",255,72,9},["RAID_WARNING"] = {"ff4800",255,72,0},
["BATTLEGROUND"] = {"ff7f00",255,127,0},["BATTLEGROUND_LEADER"] = {"ffdbb7",255,219,183},["LOOT"] = {"00aa00",0,170,0},["MONEY"] = {"ffff00",255,255,0},["EMOTE"] = {"ff8040",255,128,64}, ["TEXT_EMOTE"] = {"ff8040",255,128,64},
["COMBAT_FACTION_CHANGE"] = {"8080ff",128,128,255},["COMBAT_XP_GAIN"] = {"6f6fff",111,111,255},["COMBAT_HONOR_GAIN"] = {"e0ca0a",224,202,10},["MONSTER_SAY"] = {"ffffff",255,255,255},["MONSTER_EMOTE"] = {"ff8040",255,128,64},["HARDCORE"] = {"a69973",166,153,115} }
local GF_TextBypass = { ["GUILD"] = "G",["OFFICER"] = "O",["WHISPER"] = "W",["WHISPER_INFORM"] = "To",["PARTY"] = "P",["RAID"] = "R",["RAID_LEADER"] = "RL",["RAID_WARNING"] = "RW", ["BATTLEGROUND"] = "BG",["BATTLEGROUND_LEADER"] = "BL",}
local GF_TextBypassChatNameAlias = { ["OFFICER"] = "GUILD",["RAID"] = "PARTY",["RAID_LEADER"] = "PARTY",["RAID_WARNING"] = "PARTY",["BATTLEGROUND"] = "PARTY",["BATTLEGROUND_LEADER"] = "PARTY",["WHISPER_INFORM"] = "WHISPER", ["HARDCORE"] = "PARTY",}
local GF_LootFilter = { ["MONEY"] = true,["LOOT"] = true,["COMBAT_FACTION_CHANGE"] = true,["COMBAT_XP_GAIN"] = true,["COMBAT_HONOR_GAIN"] = true }
local ThingsToHide = { "GF_GroupsInChatCheckButton","GF_GroupsNewOnlyCheckButton","GF_GroupsInMinimapCheckButton","GF_ShowChatCheckButton","GF_ShowTradesCheckButton","GF_ShowLootCheckButton","GF_ShowGuildsCheckButton","GF_SearchListDropdown",
"GF_GroupsFrameDescriptionEditBox","GF_AutoFilterCheckButton","GF_PlaySoundOnResultsCheckButton","GF_GroupsFrameShowDungeonCheckButton","GF_GroupsFrameShowRaidCheckButton","GF_GroupsFrameShowQuestCheckButton","GF_GroupsFrameShowOtherCheckButton",
"GF_GroupsFrameShowLFMCheckButton","GF_GroupsFrameShowLFGCheckButton","GF_ShowSearchButton","GF_SettingsFrameButton","GF_ShowBlacklistButton","GF_LogFrameButton","GF_AnnounceToLFGButton","GF_ResetLFGDescriptionButton","GF_LogBottomButton",
"GF_LogDownButton","GF_LogUpButton","GF_LogShowLoot","GF_LogShowSpam","GF_LogShowBlacklist","GF_LogShowBelowLevel","GF_MainFrameCloseButton","GF_GroupsFrame_ResultsPrev","GF_GroupsFrame_ResultsNext","GF_LFGSizeDropdown","GF_LFGLFMDropdown",
"GF_LFGDungeonDropdown","GF_LFGRaidDropdown","GF_LFGRoleDropdown","GF_GroupAutoCheckButton","GF_LFGDescriptionEditBox","GF_LFGWhisperButton","GF_LFGWhoWhisperEditBox","GF_FrameAnnounceTimerSlider","GF_LFGWhoClassDropdown","GF_LFGGetWhoButton",
"GF_LogShowWhisperHistory","GF_LogShowGroups","GF_LogShowFiltered","GF_LogShowChat","GF_LogShowTrades","GF_LogShowGuild","GF_FrameUseWhoOnGroupsCheckButton","GF_LFGHardCoreDropdown", } -- "GF_HideMainFrameLeft", "GF_HideMainFrameRight",
local GF_DifficultyColors = { ["RED"] = "ff0000",["ORANGE"] = "ff8040",["YELLOW"] = "ffff00",["GREEN"] = "1eff00",["GREY"] = "808080", }

function GF_LoadVariables()
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

		if not GF_SavedVariables.autofilter then GF_SavedVariables.autofilter = false end
		if not GF_SavedVariables.playsounds then GF_SavedVariables.playsounds = false end
		if not GF_SavedVariables.showdungeons then GF_SavedVariables.showdungeons = true end
		if not GF_SavedVariables.showraids then GF_SavedVariables.showraids = true end
		if not GF_SavedVariables.showquests then GF_SavedVariables.showquests = true end
		if not GF_SavedVariables.showother then GF_SavedVariables.showother = true end
		if not GF_SavedVariables.showlfm then GF_SavedVariables.showlfm = true end
		if not GF_SavedVariables.showlfg then GF_SavedVariables.showlfg = true end

		if not GF_SavedVariables.searchtext then GF_SavedVariables.searchtext = "" end
		if not GF_SavedVariables.searchbuttonstext then GF_SavedVariables.searchbuttonstext = {} end
		if not GF_SavedVariables.searchlfgtext then GF_SavedVariables.searchlfgtext = "" end
		if not GF_SavedVariables.searchlfgwhispertext then GF_SavedVariables.searchlfgwhispertext = "" end
		if not GF_SavedVariables.lfgwhisperclass then GF_SavedVariables.lfgwhisperclass = GF_WARRIOR end
		if not GF_SavedVariables.announcetimer then GF_SavedVariables.announcetimer = 300 end
		if not GF_SavedVariables.lfgauto then GF_SavedVariables.lfgauto = false end
		if not GF_SavedVariables.lfgsize or not tonumber(GF_SavedVariables.lfgsize) then GF_SavedVariables.lfgsize = 1 end

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
		if not GF_SavedVariables.autofilterlevelvar then GF_SavedVariables.autofilterlevelvar = 5 end
		if not GF_SavedVariables.showgroupsnewonlytime then GF_SavedVariables.showgroupsnewonlytime = 3 end
		if not GF_SavedVariables.FilterLevel then GF_SavedVariables.FilterLevel = 2 end
		if not GF_SavedVariables.MainFrameUIScale then GF_SavedVariables.MainFrameUIScale = 1 end
		if not GF_SavedVariables.MainFrameTransparency then GF_SavedVariables.MainFrameTransparency = 1 end
		if not GF_SavedVariables.MinimapArcOffset then GF_SavedVariables.MinimapArcOffset = 282 end
		if not GF_SavedVariables.MinimapRadiusOffset then GF_SavedVariables.MinimapRadiusOffset = 84 end
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
	end
	if not GF_SavedVariables.friendsToRemove then GF_SavedVariables.friendsToRemove = {} end
	if not GF_SavedVariables.hardcore or type(GF_SavedVariables.hardcore) == "boolean" then GF_SavedVariables.hardcore = 1 end
	if not GF_BUTTONS_LIST.LFGSize[GF_SavedVariables.lfgsize] then GF_SavedVariables.lfgsize = 1 end
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
	if type(GF_SavedVariables.searchbuttonstext) ~= "table" then GF_SavedVariables.searchbuttonstext = {} end

	if type(GF_SavedVariables.searchbuttonstext) ~= "table" then GF_SavedVariables.searchbuttonstext = {} end
	if GF_WhoTable[GF_RealmName]["LOADED"][4] + 86400 < time() then -- Prune the WhoTable once per day
		GF_WhoTable[GF_RealmName]["LOADED"] = { UnitLevel("player"), ({UnitClass("player")})[2], "", time() }
		GF_PruneTheWhoTable()
	end
	GF_LogHistory[GF_RealmName].lastLogin = time()
	for i=1, getn(GF_LogHistory[GF_RealmName]) do
		if not GF_LogHistory[GF_RealmName][i] then break elseif not GF_LogHistory[GF_RealmName][i][3] then table.remove(GF_LogHistory[GF_RealmName],i) i = i - 1 end
	end
	for i=1, getn(GF_MessageList[GF_RealmName]) do
		if not GF_MessageList[GF_RealmName][i] then break elseif tonumber(GF_MessageList[GF_RealmName][i]) then table.remove(GF_MessageList[GF_RealmName],i) i = i - 1 end
	end
	if not GetGuildRosterShowOffline() then
		SetGuildRosterShowOffline(true)
		SetGuildRosterShowOffline(false)
	end
end

function GF_OnLoad() -- Onload, Tooltips, and Frame/Minimap Functions
	SlashCmdList["GroupFinderCOMMAND"] = GF_SlashHandler
	SLASH_GroupFinderCOMMAND1 = "/gf"
	SLASH_GroupFinderCOMMAND2 = "/groupfinder"
	this:RegisterEvent("CHAT_MSG_SYSTEM")
	this:RegisterEvent("CHAT_MSG_ADDON")
	this:RegisterEvent("PARTY_LEADER_CHANGED")
	this:RegisterEvent("PARTY_MEMBERS_CHANGED")
	this:RegisterEvent("PLAYER_ENTERING_WORLD")
	this:RegisterEvent("RAID_ROSTER_UPDATE")
	this:RegisterEvent("WHO_LIST_UPDATE")
	this:RegisterEvent("ZONE_CHANGED_NEW_AREA")
	this:RegisterEvent("PLAYER_LEAVING_WORLD")
	this:RegisterEvent("GUILD_ROSTER_UPDATE")
	this:RegisterEvent("FRIENDLIST_UPDATE")
	this:RegisterEvent("PARTY_INVITE_REQUEST")
	this:RegisterEvent("CHAT_MSG_GUILD")
	this:RegisterEvent("CHAT_MSG_OFFICER")
	this:RegisterEvent("CHAT_MSG_WHISPER")
	this:RegisterEvent("CHAT_MSG_WHISPER_INFORM")
	this:RegisterEvent("CHAT_MSG_PARTY")
	this:RegisterEvent("CHAT_MSG_RAID")
	this:RegisterEvent("CHAT_MSG_RAID_LEADER")
	this:RegisterEvent("CHAT_MSG_RAID_WARNING")
	this:RegisterEvent("CHAT_MSG_BATTLEGROUND")
	this:RegisterEvent("CHAT_MSG_BATTLEGROUND_LEADER")
	this:RegisterEvent("ADDON_LOADED")
	this:RegisterEvent("UPDATE_MOUSEOVER_UNIT")
	
	local old_ChatFrame_OnEvent = ChatFrame_OnEvent
	function ChatFrame_OnEvent(event) -- arg1(message), arg2(sender), arg4("Channel#." "(City/Trade)" "channelName"), arg5, (nameOfPlayerWhoLooted), arg7(zoneChannel#), arg8(channel#), arg9("City/Trade" "channelName")
		if GF_FindGroupsAndDisplayCustomChatMessages(event) then old_ChatFrame_OnEvent(event) end
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
		if event ~= "WHO_LIST_UPDATE" or (event == "WHO_LIST_UPDATE" and WhoFrame:IsVisible()) then old_FriendsFrame_OnEvent(event) end
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
end
function GF_HandleItemRefLinks(link,text,button)
	if strsub(link,1,6) == "player" then
		local name = string.sub(gsub(link, "([^%s]*)%s+([^%s]*)", "%2"),8)
		if name and string.len(name) > 0 then 
			if button == "LeftButton" then
				if IsControlKeyDown() then
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
			elseif button == "RightButton" and IsAltKeyDown() then
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
function GF_GetQuestInfo(text,printinfo)
	local wordTable = {}
	local lfs,lfe,wordString
	local arg1 = string.lower(gsub(gsub(gsub(text,"|c%x+|+(%w+)[%d:]+|+h%[",""),"%]|+h|+r",""),"'",""))
	lfs = 1 -- To detect words with explanation points "!" (eg "hungry!","lost!")... To help identify quests with short names.
	while true do lfs,lfe,wordString = string.find(arg1, "(%a+!)",lfs) if not wordString then break end if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs-1)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe+1) end lfs = lfs + string.len(wordString) + 1 end
	lfs = 1 -- To detect space/word/number+/space combinations(eg " k10" = lowerkarazhan)
	while true do lfs,lfe,wordString = string.find(arg1,"(%a+%s?[:%-]?%s?%d+)",lfs) if not wordString then break end wordString = gsub(wordString,"[%s:%-]","") if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe) end lfs = lfs + string.len(wordString) + 1 end

	for word in string.gfind(arg1, "(%a+)") do
		if GF_WORD_FIX_BYPASS[word] then _,_,wordString = string.find(arg1,"(%a+)%s?"..word) if wordString and GF_WORD_SKIP[wordString] then table.insert(wordTable, wordString) end end
		if not GF_WORD_SKIP[word] then table.insert(wordTable, word) end
	end
	for j=0,4 do
		for i=1, getn(wordTable) do
			if wordTable[i+j] then
				wordString = wordTable[i]
				for k=1, j do wordString = wordString..wordTable[i+k] end
				if GF_WORD_FIX_BEFORE_QUEST[wordString] then
					wordTable[i] = GF_WORD_FIX_BEFORE_QUEST[wordString]
					for k=1, j do table.remove(wordTable,i+k) end
					if wordString ~= GF_WORD_FIX_BEFORE_QUEST[wordString] then if i > 1 then i = i - 2 else i = i - 1 end end
				end
			end
		end
	end

	wordString = ""
	for i=1, getn(wordTable) do if wordTable[i] then wordString = wordString..wordTable[i] end end
	if GF_WORD_QUEST[wordString] then
		if printinfo then
			if GF_WORD_QUEST[wordString][4] and GF_WORD_QUEST[wordString][3] ~= GF_WORD_QUEST[wordString][4] then
				DEFAULT_CHAT_FRAME:AddMessage("GF: "..text..GF_QUEST_IS_LEVEL_TEXT..GF_WORD_QUEST[wordString][2].."("..GF_QUEST_ZONE_ID[GF_WORD_QUEST[wordString][3]].."), Objective("..GF_QUEST_ZONE_ID[GF_WORD_QUEST[wordString][4]]..")", 1, 1, 0.5)
			else
				DEFAULT_CHAT_FRAME:AddMessage("GF: "..text..GF_QUEST_IS_LEVEL_TEXT..GF_WORD_QUEST[wordString][2].."("..GF_QUEST_ZONE_ID[GF_WORD_QUEST[wordString][3]]..")", 1, 1, 0.5)
			end
		end 
		return GF_WORD_QUEST[wordString]
	end
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
		GF_CheckForGroups(string.sub(msg,5),"R","World","CHAT_MSG_SAY",true)
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
	GF_SearchList:Hide()
	PlaySound("igCharacterInfoTab")
	if GF_MainFrame:IsVisible() and tab ~= 3 and (not tab or (tab == 2 and GF_SavedVariables.mainframelogisopen) or (tab == 1 and not GF_SavedVariables.mainframelogisopen)) then
		if GF_SavedVariables.mainframestatus == 0 then 
			local _,_,_,xpos, ypos = GF_MainFrame:GetPoint()
			GF_SavedVariables.MainFrameXPos = xpos
			GF_SavedVariables.MainFrameYPos = ypos
		end
		GF_MainFrame:Hide() 
		GF_SavedVariables.mainframeishidden = true
		GF_SavedVariables.mainframestatus = 0
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
	end
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
			GF_ResultsListOffsetSize = 12
			GF_LogFrameInternalFrame:SetHeight(250)
		else
			GF_ResultsListOffsetSize = 20
			GF_LogFrameInternalFrame:SetHeight(400)
		end
	else
		GF_ResultsListOffsetSize = 20
		GF_LogFrameInternalFrame:SetHeight(440)
	end
end
function GF_UpdateMainFrameWidth()
	if GF_SavedVariables.mainframestatus ~= 0 then
		if GF_SavedVariables.mainframewidth then
			if GF_SavedVariables.mainframestatus == 2 then
				for i=1, 20 do if i == 1 then getglobal("GF_NewItem"..i):SetPoint("TOPLEFT",330,0) else getglobal("GF_NewItem"..i):SetPoint("LEFT",330,0) end getglobal("GF_NewItem"..i):SetWidth(320) getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("TOPLEFT",5,0) getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("BOTTOMRIGHT",getglobal("GF_NewItem"..i),"TOPRIGHT",-5,-16) end
				GF_LogFrameInternalFrame:SetPoint("TOPLEFT",350,-32)
			else
				for i=1, 20 do if i == 1 then getglobal("GF_NewItem"..i):SetPoint("TOPLEFT",0,0) else getglobal("GF_NewItem"..i):SetPoint("LEFT",0,0) end getglobal("GF_NewItem"..i):SetWidth(320) getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("TOPLEFT",5,0) getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("BOTTOMRIGHT",getglobal("GF_NewItem"..i),"TOPRIGHT",-5,-16) end
				GF_LogFrameInternalFrame:SetPoint("TOPLEFT",29,-32)
			end
			GF_LogFrameInternalFrame:SetWidth(350)
		else
			for i=1, 20 do if i == 1 then getglobal("GF_NewItem"..i):SetPoint("TOPLEFT",0,0) else getglobal("GF_NewItem"..i):SetPoint("LEFT",0,0) end getglobal("GF_NewItem"..i):SetWidth(640) getglobal("GF_NewItem"..i.."NameLabel"):ClearAllPoints() getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("TOPLEFT",5,0) getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("BOTTOMRIGHT",getglobal("GF_NewItem"..i),"TOPRIGHT",-5,-16) end
			GF_LogFrameInternalFrame:SetPoint("TOPLEFT",29,-64)
			GF_LogFrameInternalFrame:SetWidth(669)
		end
	else
			for i=1, 20 do if i == 1 then getglobal("GF_NewItem"..i):SetPoint("TOPLEFT",0,0) else getglobal("GF_NewItem"..i):SetPoint("LEFT",0,0) end getglobal("GF_NewItem"..i):SetWidth(640) getglobal("GF_NewItem"..i.."NameLabel"):ClearAllPoints() getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("TOPLEFT",5,0) getglobal("GF_NewItem"..i.."NameLabel"):SetPoint("BOTTOMRIGHT",getglobal("GF_NewItem"..i),"TOPRIGHT",-80,-16) end
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
		for i=1, 53 do
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
			for i=1, 20 do
				getglobal("GF_NewItem"..i):SetAlpha(GF_SavedVariables.MainFrameTransparency)
				getglobal("GF_NewItem"..i):EnableMouse(false)
			end
		end
		for id, word in UISpecialFrames do
			if word == "GF_MainFrame" then UISpecialFrames[id] = nil end
		end
	else
		for i=1, 52 do
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
		for i=1, 20 do
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

	GF_MinimapIcon:SetPoint("TOPLEFT", "Minimap", "TOPLEFT",
		55 - ((GF_SavedVariables.MinimapRadiusOffset) * cos(GF_SavedVariables.MinimapArcOffset)),
		((GF_SavedVariables.MinimapRadiusOffset) * sin(GF_SavedVariables.MinimapArcOffset)) - 55)
	GF_MinimapMessageFrameA1:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos)
	GF_MinimapMessageFrameA2:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos+42*directionMultiplier)
	GF_MinimapMessageFrameA3:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos+84*directionMultiplier)
	GF_MinimapMessageFrameA4:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos+126*directionMultiplier)
	GF_MinimapMessageFrameA5:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos+168*directionMultiplier)
	GF_MinimapMessageFrameA6:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos+210*directionMultiplier)
end

function GF_AddChannelMessage(arg1,arg2,arg8,arg9) -- Message Handlers
	arg1 = GF_ChatReplaceHquestLevels(GF_ChatReplaceHplayer(arg1))
	arg9 = string.gsub(string.lower(arg9), " - .*", "")
	for i=1,NUM_CHAT_WINDOWS do
		if GF_ChatChannelsGroups[i].channel[arg9] then
			if arg2 == UnitName("player") then
				getglobal("ChatFrame"..i):AddMessage("["..arg8..". "..string.upper(string.sub(arg9,1,1))..string.sub(arg9,2).."] ".."|cff"..(GF_ClassColors[({UnitClass("player")})[2]] or "9d9d9d").."|Hplayer:"..arg2.."|h["..arg2..", "..UnitLevel("player").."]|h|r: "..arg1, GF_TextColors["CHANNEL"][2]/255, GF_TextColors["CHANNEL"][3]/255, GF_TextColors["CHANNEL"][4]/255) 
			elseif GF_WhoTable[GF_RealmName][arg2] then
				getglobal("ChatFrame"..i):AddMessage("["..arg8..". "..string.upper(string.sub(arg9,1,1))..string.sub(arg9,2).."] ".."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "ffffff").."|Hplayer:"..arg2.."|h["..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."]|h|r: "..arg1, GF_TextColors["CHANNEL"][2]/255, GF_TextColors["CHANNEL"][3]/255, GF_TextColors["CHANNEL"][4]/255) 
			else
				getglobal("ChatFrame"..i):AddMessage("["..arg8..". "..string.upper(string.sub(arg9,1,1))..string.sub(arg9,2).."] ".."|cff".."9d9d9d".."|Hplayer:"..arg2.."|h["..arg2.."]|h|r: "..arg1, GF_TextColors["CHANNEL"][2]/255, GF_TextColors["CHANNEL"][3]/255, GF_TextColors["CHANNEL"][4]/255)
			end
		end
	end
end
function GF_AddChatMessage(arg1,arg2,event)
	arg1 = GF_ChatReplaceHquestLevels(GF_ChatReplaceHplayer(arg1))
	for i=1,NUM_CHAT_WINDOWS do
		if GF_ChatChannelsGroups[i].group[event] or GF_ChatChannelsGroups[i].group[GF_TextBypassChatNameAlias[event]] then
			if arg2 == UnitName("player") then
				getglobal("ChatFrame"..i):AddMessage("["..(GF_TextBypass[event] or string.sub(event,1,1)).."] ".."|cff"..(GF_ClassColors[({UnitClass("player")})[2]] or "9d9d9d").."|Hplayer:"..arg2.."|h["..arg2..", "..UnitLevel("player").."]|h|r: "..arg1, GF_TextColors[event][2]/255, GF_TextColors[event][3]/255, GF_TextColors[event][4]/255)
			elseif GF_WhoTable[GF_RealmName][arg2] then 
				getglobal("ChatFrame"..i):AddMessage("["..(GF_TextBypass[event] or string.sub(event,1,1)).."] ".."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "9d9d9d").."|Hplayer:"..arg2.."|h["..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."]|h|r: "..arg1, GF_TextColors[event][2]/255, GF_TextColors[event][3]/255, GF_TextColors[event][4]/255)
			else
				getglobal("ChatFrame"..i):AddMessage("["..(GF_TextBypass[event] or string.sub(event,1,1)).."] ".."|cff9d9d9d|Hplayer:"..arg2.."|h["..arg2.."]|h|r: "..arg1, GF_TextColors[event][2]/255, GF_TextColors[event][3]/255, GF_TextColors[event][4]/255)
			end
		end
	end
end
function GF_ChatGetChannelsGroups()
	for i=1,NUM_CHAT_WINDOWS do
		GF_ChatChannelsGroups[i] = { ["channel"] = {},["group"] = {}, }
		local channellist = { GetChatWindowChannels(i) }
		for j=1, getn(channellist) do
			GF_ChatChannelsGroups[i].channel[string.lower(channellist[j])] = true
		end
		channellist = { GetChatWindowMessages(i) }
		for j=1, getn(channellist) do
			GF_ChatChannelsGroups[i].group[channellist[j]] = true
		end
		if GF_PlayingOnTurtle and getglobal("TW_HARDCORE_CHAT"..i) == 1 then GF_ChatChannelsGroups[i].group["HARDCORE"] = true end
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
	for name in string.gfind(arg1,"|c%x+|+Hplayer:(%w+)|+h%[[%w%s!=\,\-\+<>\":'\.]+%]|+h|+r") do
		if GF_WhoTable[GF_RealmName][name] then
			local searchString = "|c%x+|+Hplayer:"..name.."|+h%[[%w%s!=\,\-\+<>\":'\.]+%]|+h|+r"
			local lfs,lfe = string.find(arg1,searchString)
			arg1 = string.sub(arg1,1,lfs).."cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]] or "ffffff").."|Hplayer:"..name.."|h["..name..", "..GF_WhoTable[GF_RealmName][name][1].."]|h|"..string.sub(arg1,lfe)
		end
	end
	return arg1
end
function GF_ChatReplaceHquestLevels(arg1)
	local startPoint = 1
	for questid,level,name in string.gfind(arg1,"|c%x+|+Hquest:(%d+):(%d+)|+h%[(.-)%]|+h|+r") do
		local lfs,lfe = string.find(arg1,"|c%x+|+Hquest:"..questid..":%d+|+h%[.-%]|+h|+r",startPoint)
		if tonumber(level) == 0 then local qtable = GF_GetQuestInfo(name) if qtable then level = qtable[2] end end
		arg1 = string.sub(arg1,1,lfs-1)..(GF_GetDifficultyColor(level) or "|cffffffff").."|Hquest:"..questid..":"..level.."|h["..name.."]|h|"..string.sub(arg1,lfe)
		startPoint = lfs+20
	end
	return arg1
end
function GF_CleanUpMessagesOfBadLinks(arg1) -- Removes CLINK and pfQuest/Questie links if not using those addons
	if string.find(arg1,"CLINK") then
		arg1 = gsub(arg1, "{CLINK:item:(%x+):([%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-):([^}]-)}", "|c%1|Hitem:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:(%x+):([%d-]-:[%d-]-:[%d-]-:[%d-]-):([^}]-)}", "|c%1|Hitem:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:enchant:(%x+):([%d-]-):([^}]-)}", "|c%1|Henchant:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:spell:(%x+):([%d-]-):([^}]-)}", "|c%1|Hspell:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:quest:(%x+):([%d-]-):([%d-]-):([^}]-)}", "|c%1|Hquest:%2:%3|h[%4]|h|r")		
	end
	--arg1 = gsub(arg1, "|c.*|Hquest:[%d]+:[-]?[%d]+|h%[(.*)%]|h|r", "%1")
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
	arg1 = GF_ChatReplaceHquestLevels(GF_ChatReplaceHplayer(gsub(gsub(gsub(gsub(" "..arg1.." "," (www%d-)%.([_A-Za-z0-9-]+)%.(%S+)%s?", " |cffccccff|Hurl:%1.%2.%3|h[%1.%2.%3]|h|r ")," (%a+)://(%S+)%s?", " |cffccccff|Hurl:%1://%2|h[%1://%2]|h|r ")," (%a+)%.(%a+)/(%S+)%s?", " |cffccccff|Hurl:%1.%2/%3|h[%1.%2/%3]|h|r ")," ([_A-Za-z0-9-]+)%.([_A-Za-z0-9-]+)%.(%S+)%s?", " |cffccccff|Hurl:%1.%2.%3|h[%1.%2.%3]|h|r ")))
	if add then
		if GF_LootFilter[event] then
			arg1 = "["..date("%H:%M").."]"..GF_LogMessageCodes[logcode]..arg1..""
		elseif event ~= "CHANNEL" then
			if arg2 == UnitName("player") then
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[logcode].."|cff"..(GF_ClassColors[({UnitClass("player")})[2]] or "9d9d9d").."|Hplayer:"..arg2.."|h["..arg2..", "..UnitLevel("player").."]:|h|r"..arg1
			elseif GF_WhoTable[GF_RealmName][arg2] then 
				arg1 = date("%H:%M").."] "..GF_LogMessageCodes[logcode].."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "9d9d9d").."|Hplayer:"..arg2.."|h["..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."]:|h|r"..arg1
			else
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[logcode].."|cff9d9d9d|Hplayer:"..arg2.."|h["..arg2.."]:|h|r"..arg1
			end
		else
			arg9 = arg8..". "..string.upper(string.sub(arg9,1,1))..string.lower(string.sub(string.gsub(arg9, " - .*", ""),2))
			if arg2 == UnitName("player") then 
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[logcode].."["..arg9.."] ".."|cff"..(GF_ClassColors[({UnitClass("player")})[2]] or "9d9d9d").."|Hplayer:"..arg2.."|h["..arg2..", "..UnitLevel("player").."]:|h|r"..arg1
			elseif GF_WhoTable[GF_RealmName][arg2] then 
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[logcode].."["..arg9.."] ".."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "9d9d9d").."|Hplayer:"..arg2.."|h["..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."]:|h|r"..arg1
			else
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[logcode].."["..arg9.."] ".."|cff9d9d9d|Hplayer:"..arg2.."|h["..arg2.."]:|h|r"..arg1
			end
		end
		table.insert(GF_LogHistory[GF_RealmName],1, {arg1,logcode,event})
		if getn(GF_LogHistory[GF_RealmName]) > 500 then table.remove(GF_LogHistory[GF_RealmName],501) end
	end
	if GF_LogCheckFilters(logcode) and GF_WhisperLogCurrentButtonID == 0 then
		GF_Log:AddMessage(arg1, GF_TextColors[event][2]/255, GF_TextColors[event][3]/255, GF_TextColors[event][4]/255)
	end
end
function GF_LogCheckFilters(logcode) -- [1]Group,[2]New,[3]Chat,[4]Trades,[6]Loot,[7]Spam,[8]Blacklist,[9]BelowLvl,[10]Myself,[11]FilteredGroup
	if (logcode == 10 or (GF_SavedVariables.logshowgroup and (logcode == 1 or logcode == 2)) or (GF_SavedVariables.logshowfiltered and logcode == 3) or (GF_SavedVariables.logshowchat and logcode == 4)
	or (GF_SavedVariables.logshowtrades and logcode == 5) or (GF_SavedVariables.logshowloot and logcode == 6)	or (GF_SavedVariables.logshowspam and logcode == 7) or (GF_SavedVariables.logshowblacklist and logcode == 8)
	or (GF_SavedVariables.logshowbelowlevel and logcode == 9)or (GF_SavedVariables.logshowguilds and logcode == 11)) then return true end
end
function GF_DisplayLog()
	GF_Log:SetMaxLines(128)
	local tempHistoryTable = {}
	for i=1, getn(GF_LogHistory[GF_RealmName]) do
		if GF_LogCheckFilters(GF_LogHistory[GF_RealmName][i][2]) then 
			table.insert(tempHistoryTable,1,GF_LogHistory[GF_RealmName][i])
			if i == 128 then break end
		end
	end
	for i=1, getn(tempHistoryTable) do
		GF_Log:AddMessage(tempHistoryTable[i][1], GF_TextColors[tempHistoryTable[i][3]][2]/255, GF_TextColors[tempHistoryTable[i][3]][3]/255, GF_TextColors[tempHistoryTable[i][3]][4]/255)
	end
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
					GF_LFGGetWhoButton:SetText(GF_GET_WHO.." - "..GF_ClassWhoMatchingResults)
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
			GF_ClassWhoTable[name] = { level, class, zone, time()-GF_GetWhoResetTimer }
			GF_ClassWhoMatchingResults = GF_ClassWhoMatchingResults + 1
		end
	end
	if GF_ClassWhoRequest then
		if not GF_ClassWhoQueue[1] then
			if GetNumWhoResults() >= 49 then
				GF_GetClassWhoState = GF_GetClassWhoState + 1
				GF_LFGGetWhoButton:SetText(GF_STOP_WHO.." - "..GF_ClassWhoMatchingResults)
				GF_CreateGetWhoQueueList(GF_GetWhoParams[1], GF_GetWhoParams[2])
			else
				GF_ClassWhoRequest = nil
				GF_LFGGetWhoButton:SetText(GF_GET_WHO.." - "..GF_ClassWhoMatchingResults)
			end
		else
			GF_LFGGetWhoButton:SetText(GF_STOP_WHO.." - "..GF_ClassWhoMatchingResults)
		end
	end
	SetWhoToUI(0)
end
function GF_AddNameToWhoQueue(name,addToTopOfList,useFriends)
	for i=1, getn(GF_WhoQueue) do
		if GF_WhoQueue[i] == name then return end
	end
	if useFriends and name ~= UnitName("player") then
		GF_SavedVariables.friendsToRemove[name] = time() + 999999
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
		if GF_PlayingOnTurtle and not GF_SavedVariables.friendsToRemove[name] then GF_AddNameToWhoQueue(arg2,groupfound,true) else GF_AddNameToWhoQueue(arg2,groupfound) end
	else
		return GF_WhoTable[GF_RealmName][arg2]
	end
end
function GF_UpdateWhoDataViaFriendsList()
	GF_UpdateWhoDataViaFriendsListTimer = GF_UpdateWhoDataViaFriendsListTimer - 1
	if GF_UpdateWhoDataViaFriendsListTimer < 0 then
		GF_UpdateWhoDataViaFriendsListTimer = 2
		for name,data in GF_SavedVariables.friendsToRemove do if data > time() then AddFriend(name) GF_SavedVariables.friendsToRemove[name] = time() return end end
	end
end
function GF_CheckForAnnounce()
	if GF_AutoAnnounceTimer then
		GF_AutoAnnounceTimer = GF_AutoAnnounceTimer + 1
		if GF_LFGDescriptionEditBox:GetText() == "" then GF_TurnOffAnnounce(GF_NOTHING_TO_ANNOUNCE) return end
		if GF_AutoAnnounceTimer > GF_SavedVariables.announcetimer then
			GF_AutoAnnounceTimer = 0
			if GF_Hardcore and GF_SavedVariables.hardcore ~= 3 then
				SendChatMessage(GF_LFGDescriptionEditBox:GetText(), "HARDCORE", nil, nil)
			else 
				SendChatMessage(GF_LFGDescriptionEditBox:GetText(), "CHANNEL", nil, GetChannelName(GF_CHANNEL_NAME))
			end
			DEFAULT_CHAT_FRAME:AddMessage(GF_SENT..GF_LFGDescriptionEditBox:GetText(), 1, 1, 0.5)
			GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_LFG_BTN.."-"..GF_SavedVariables.announcetimer - GF_AutoAnnounceTimer)
			GF_MinimapMessageFrameA1:AddMessage(GF_ANNOUNCED_LFG_EXT, 1.0, 1.0, 0.5, 1.0, UIERRORS_HOLD_TIME)
			PlaySound("TellMessage")
		else
			GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_LFG_BTN.."-"..GF_SavedVariables.announcetimer - GF_AutoAnnounceTimer)
		end
	end
end
function GF_TurnOffAnnounce(messageText)
	GF_AutoAnnounceTimer = nil
	GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_LFG_BTN)
	DEFAULT_CHAT_FRAME:AddMessage(messageText, 1, 1, 0.5)
end
function GF_TurnOnAnnounce()
	GF_AutoAnnounceTimer = GF_SavedVariables.announcetimer
	if UnitIsPartyLeader("player") then GF_WasPartyLeaderBefore = true end
	GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_LFG_BTN.."-"..GF_SavedVariables.announcetimer)
	DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_AUTO_ANNOUNCE_TURNED_ON, 1, 1, 0.5)
end
function GF_UpdateGroupsFrame()
	GF_UpdateAndRequestTimer = GF_UpdateAndRequestTimer - 1
	if GF_UpdateAndRequestTimer < 0 then
		GF_UpdateAndRequestTimer = 30
		for i=1, getn(GF_MessageList[GF_RealmName]) do
			if GF_SavedVariables.usewhoongroups and not GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op] and not GF_WhoQueue[GF_MessageList[GF_RealmName][i].op] then
				if GF_PlayingOnTurtle then if not GF_SavedVariables.friendsToRemove[name] and (not GF_FriendUnknown[name] or GF_FriendUnknown[name] + 900 > time()) then GF_AddNameToWhoQueue(GF_MessageList[GF_RealmName][i].op,true,true) end else GF_AddNameToWhoQueue(GF_MessageList[GF_RealmName][i].op,true) end
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
		for i=1, 20 do
			if getglobal("GF_NewItem"..i) then
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
							if GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", addonsendstring, "PARTY") end
							addonsendstring = "U"
							counter = counter + 1
						end
					end
				end
				if counter == 0 or string.len(addonsendstring) > 1 then if GetGuildInfo("player") then SendAddonMessage("GF", addonsendstring, "GUILD") elseif GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", addonsendstring, "PARTY") end end
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
		for sentlevel,sentname,sentclass,sentguild,sentrecordedtime in string.gfind(msg, ":(%d+)([a-zA-Z]+)(%d)([a-zA-Z%s]+)(%d+)") do
			if sentguild == "Z" then sentguild = "" end
			if tonumber(sentrecordedtime) <= time() and (not GF_WhoTable[GF_RealmName][sentname] or tonumber(sentrecordedtime) > GF_WhoTable[GF_RealmName][sentname][4]) then
				GF_WhoTable[GF_RealmName][sentname] = { tonumber(sentlevel), GF_ClassIDs[tonumber(sentclass)], sentguild, tonumber(sentrecordedtime) }
			end
			GF_AddonAllNamesForResponseToLogin[sentname] = nil
			GF_AddonNamesToBeSentAsARequest[sentname] = nil
			GF_AddonWhoDataToBeSentBuffer[sentname] = nil
		end
	elseif string.len(msg) > 2 then -- (To Everyone) This is the full group information. Which is sent separately from the who data.
		for senttime,sentname,message in string.gfind(msg, "(%d+)([a-zA-Z]+):(.+)") do
			GF_GetTypes(gsub(gsub(gsub(gsub(gsub(string.lower(gsub(gsub(gsub(gsub(" "..msg.." ", " |+h%[([%w%s%p]+)%]|+h|+r", " %1 "), "|c%x+|+(%w+)[%d:]+|+h", " %1 "), "|+h|+r", " "),"([a-z ][a-z])([A-Z])","%1 %2")),".gg/%w+", ""),"([%p%s])(%w%w+)([%p%s])","%1 %2 %3"),"[%s%.%[](%a)[%s%.](%a)[%s%.]","%1%2"),"%s%s+", " "),"[']", ""))
			GF_AddonGroupDataToBeSentBuffer[sentname] = nil
			GF_AddonAllNamesForResponseToLogin[sentname] = nil
			GF_AddonNamesToBeSentAsARequest[sentname] = nil
			GF_AddonWhoDataToBeSentBuffer[sentname] = nil

			for i=1, getn(GF_MessageList[GF_RealmName]) do
				if GF_MessageList[GF_RealmName][i].op and GF_MessageList[GF_RealmName][i].op == sentname then
					table.remove(GF_MessageList[GF_RealmName], i)
					break
				end
			end
			if getn(GF_MessageList[GF_RealmName]) > 0 then
				for i=1, getn(GF_MessageList[GF_RealmName]) do
					if tonumber(senttime) > GF_MessageList[GF_RealmName][i].t then table.insert(GF_MessageList[GF_RealmName], i, ({GF_GetGroupInformation(GF_CleanUpMessagesOfBadLinks(message),sentname,tonumber(senttime))})[1]) return end
				end
			end
			table.insert(GF_MessageList[GF_RealmName], ({GF_GetGroupInformation(GF_CleanUpMessagesOfBadLinks(message),sentname,tonumber(senttime))})[1])
		end
	end
end

function GF_OnEvent(event) -- OnEvent, LoadSettings, Bind Keys, Prune Tables
	if event == "UPDATE_MOUSEOVER_UNIT" then
		if UnitIsPlayer("mouseover") and UnitIsFriend("player","mouseover") then
			GF_WhoTable[GF_RealmName][UnitName("mouseover")] = { UnitLevel("mouseover"), ({UnitClass("mouseover")})[2], GetGuildInfo("mouseover") or "", time() }
		end
	elseif event == "RAID_ROSTER_UPDATE" or event == "PARTY_LEADER_CHANGED" or event == "PARTY_MEMBERS_CHANGED" then
		if GF_WasPartyLeaderBefore and not UnitIsPartyLeader("player") and GF_GetNumGroupMembers() > 1 then
			GF_TurnOffAnnounce(GF_JOINED_GROUP_ANNOUNCE_OFF)
			GF_WasPartyLeaderBefore = nil
		else
			if GF_AutoAnnounceTimer and GF_GetNumGroupMembers() >= GF_BUTTONS_LIST.LFGSize[GF_SavedVariables.lfgsize][4] then GF_TurnOffAnnounce(GF_NO_MORE_PLAYERS_NEEDED) end
		end
		if GF_SavedVariables.lfgauto then GF_FixLFGStrings(true) end
		GF_UpdatePlayersInGroupList()
	elseif event == "CHAT_MSG_WHISPER" or event == "CHAT_MSG_GUILD" or event == "CHAT_MSG_OFFICER" or event == "CHAT_MSG_WHISPER_INFORM" then
		GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,string.sub(event,10))
		if GF_SavedVariables.showformattedchat then GF_AddChatMessage(arg1,arg2,string.sub(event,10)) if event == "CHAT_MSG_WHISPER_INFORM" or event == "CHAT_MSG_WHISPER" then table.insert(DEFAULT_CHAT_FRAME.editBox.lastTell,1,arg2) end end
	elseif arg2 == UnitName("player") or event == "CHAT_MSG_PARTY" or event == "CHAT_MSG_RAID" or event == "CHAT_MSG_RAID_LEADER" or event == "CHAT_MSG_RAID_WARNING" or event == "CHAT_MSG_BATTLEGROUND" or event == "CHAT_MSG_BATTLEGROUND_LEADER" then
		GF_AddLogMessage(arg1,10,true,arg2,arg8,arg9,string.sub(event,10))
		if GF_SavedVariables.showformattedchat then GF_AddChatMessage(arg1,arg2,string.sub(event,10)) end
	elseif (event == "GUILD_ROSTER_UPDATE" and GetNumGuildMembers() ~= GF_CurrentNumGuildies) then 
		GF_UpdateGuildiesList()
	elseif (event == "FRIENDLIST_UPDATE" and GetNumFriends() ~= GF_CurrentNumFriends) then
		GF_UpdateFriendsList()
	elseif event == "ZONE_CHANGED_NEW_AREA" then
		GF_JoinWorld()
	elseif event == "PARTY_INVITE_REQUEST" then
		if GF_RequestInviteTime[arg1] and GF_RequestInviteTime[arg1] > time() then AcceptGroupInvite() end
	elseif event == "CHAT_MSG_ADDON" and arg1 == "GF" and arg4 ~= UnitName("player") then
		GF_AddonListOfGuildAndPartyMembersWithAddon[arg4] = true
		GF_ParseIncomingAddonMessages(arg2)
	elseif event == "CHAT_MSG_SYSTEM" then
		for fname,wordString in string.gfind(arg1, GF_FRIEND_MSG_SYSTEM) do
			if not GF_WhoTable[GF_RealmName][fname] then
				for i=1, GetNumGuildMembers() do
					local name,_,_,level,class,_,_,_,online = GetGuildRosterInfo(i)
					if name then 
						if online then GF_Guildies[name] = true else GF_Guildies[name] = nil end
						if GF_Classes[class] then GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], GetGuildInfo("player"), time() } end
					end
				end
			end
			if GF_SavedVariables.showformattedchat and GF_WhoTable[GF_RealmName][fname] then
				for i=1,NUM_CHAT_WINDOWS do
					if GF_ChatChannelsGroups[i].group["SYSTEM"] then
						getglobal("ChatFrame"..i):AddMessage("|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][fname][2]] or "ffffff").."|Hplayer:"..fname.."|h["..fname..", "..GF_WhoTable[GF_RealmName][fname][1].."]|h|r"..wordString,255,255,0)
					end
				end
			end
		end
		if GF_AutoAnnounceTimer and event == "CHAT_MSG_SYSTEM" and string.find(arg1, GF_NOW_AFK) then GF_TurnOffAnnounce(GF_AFK_ANNOUNCE_OFF) end
	elseif event == "WHO_LIST_UPDATE" then
		GF_WhoListUpdated()
	elseif event == "PLAYER_ENTERING_WORLD" and GF_OnStartupRunOnce then
		GF_OnStartupRunOnce = false
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
			if GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", "Z", "PARTY") end
		end
		GF_BindKey("I", "GF_SHOW_FRAME")
		GF_BindKey("SHIFT-G", "GF_SHOW_GROUP")
		GF_BindKey("SHIFT-L", "GF_SHOW_LOG")
		SaveBindings(1)
	elseif event == "PLAYER_LEAVING_WORLD" then
		if GF_SavedVariables.mainframestatus == 0 then
			local _,_,_,xpos, ypos = GF_MainFrame:GetPoint()
			GF_SavedVariables.MainFrameXPos = xpos
			GF_SavedVariables.MainFrameYPos = ypos
		end
	elseif event == "ADDON_LOADED" and arg1 == "pfQuest" then
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
end
function GF_LoadSettings()
	if GF_TURTLE_SERVERS_LIST[GF_RealmName] then
		GF_AddTurtleWoWDungeonsRaids()
		GF_WhoCooldownTime = 30
		GF_PlayingOnTurtle = true
	end
	for i=1, 100 do
		if GetSpellName(i, BOOKTYPE_SPELL) == GF_HARDCORE_SPELL_NAME then
			local _,spellRank = GetSpellName(i, BOOKTYPE_SPELL)
			GF_Hardcore = true
			if spellRank == GF_HARDCORE_TURTLE_SUBTEXT then GF_AddTurtleWoWDungeonsRaids() GF_WhoCooldownTime = 30 GF_PlayingOnTurtle = true end
			break
		end
	end
	if not GF_PlayingOnTurtle then GF_SavedVariables.hardcore = 1 end
	if GF_Hardcore then
		GF_BUTTONS_LIST.LFGHardCore[1][4] = GF_HARDCORE_SEND_TEXT
		table.insert(GF_BUTTONS_LIST.LFGHardCore, 2, { GF_SHOW_HARDCORE, 1, 60, GF_HARDCORE_SEND_TEXT, nil, true, })
		table.remove(GF_BUTTONS_LIST.LFGHardCore, 4)
	end
	GF_LFGHardCoreDropdownTextLabel:SetText(GF_BUTTONS_LIST.LFGHardCore[GF_SavedVariables.hardcore][1])
	GF_WorldAnnounceMessageTextLabel:SetText(GF_BUTTONS_LIST.LFGHardCore[GF_SavedVariables.hardcore][4])

	for i=1, getn(GF_MessageList[GF_RealmName]) do if not GF_MessageList[GF_RealmName][i].flags or type(GF_MessageList[GF_RealmName][i].flags) ~= "table" then GF_MessageList[GF_RealmName] = {} break end end
	for name,_ in GF_PlayerMessages do if type(GF_PlayerMessages[name][1]) ~= "table" then GF_PlayerMessages = {} break end end

	local SliderVariablesToSet = { GF_SavedVariables.MinimapArcOffset, GF_SavedVariables.MinimapRadiusOffset, GF_SavedVariables.MinimapMsgArcOffset, GF_SavedVariables.MinimapMsgRadiusOffset, GF_SavedVariables.FilterLevel, GF_SavedVariables.spamfilterduration,
	GF_SavedVariables.MainFrameTransparency,GF_SavedVariables.autoblacklistminlevel,GF_SavedVariables.blockmessagebelowlevel,GF_SavedVariables.grouplistingduration,GF_SavedVariables.autofilterlevelvar, GF_SavedVariables.MainFrameUIScale, }
	local SliderNames = { "GF_MinimapArcSlider", "GF_MinimapRadiusSlider", "GF_MinimapMsgArcSlider", "GF_MinimapMsgRadiusSlider", "GF_FilterLevelSlider", "GF_FrameSpamFilterDurationSlider",
	"GF_FrameTransparencySlider", "GF_FrameSpamBlacklistMinLevelSlider", "GF_FrameBlockMessagesBelowLevelSlider", "GF_GroupListingDurationSlider", "GF_AutoFilterLevelSlider", "GF_UIScaleSlider", }
	for i=1, 12 do getglobal(SliderNames[i]):SetValue(SliderVariablesToSet[i]) end

	if GF_SavedVariables.announcetimer > 600 then GF_FrameAnnounceTimerSlider:SetValue((GF_SavedVariables.announcetimer-600)/300 + 10) else	GF_FrameAnnounceTimerSlider:SetValue(GF_SavedVariables.announcetimer/60)end
	if GF_SavedVariables.showgroupsnewonlytime > 10 then GF_GroupNewTimeoutSlider:SetValue((GF_SavedVariables.showgroupsnewonlytime-10)/5 + 10) else GF_GroupNewTimeoutSlider:SetValue(GF_SavedVariables.showgroupsnewonlytime) end

	local CheckButtonVariablesToSet = { GF_SavedVariables.showgroupsinchat, GF_SavedVariables.showgroupsinminimap, GF_SavedVariables.showgroupsnewonly, GF_SavedVariables.showchattexts, GF_SavedVariables.showtradestexts, GF_SavedVariables.showloottexts,
	GF_SavedVariables.autofilter, GF_SavedVariables.showdungeons, GF_SavedVariables.showraids, GF_SavedVariables.showquests, GF_SavedVariables.showother, GF_SavedVariables.showlfm, GF_SavedVariables.showlfg,	GF_SavedVariables.logshowgroup,
	GF_SavedVariables.logshowfiltered, GF_SavedVariables.logshowchat, GF_SavedVariables.logshowtrades, GF_SavedVariables.logshowguilds, GF_SavedVariables.logshowloot, GF_SavedVariables.logshowspam, GF_SavedVariables.logshowblacklist,
	GF_SavedVariables.logshowbelowlevel, GF_SavedVariables.joinworld, GF_SavedVariables.showformattedchat, GF_SavedVariables.usewhoongroups, GF_SavedVariables.systemfilter, GF_SavedVariables.showguilds, GF_SavedVariables.spamfilter,
	GF_SavedVariables.autoblacklist, GF_SavedVariables.playsounds, GF_SavedVariables.lfgauto, GF_SavedVariables.showwhisperlogs, GF_SavedVariables.mainframeheight, GF_SavedVariables.mainframewidth, GF_SavedVariables.alwaysshowguild,
	GF_SavedVariables.questmod, GF_SavedVariables.purgepfdb,}
	
	local CheckButtonNames = { "GF_GroupsInChatCheckButton", "GF_GroupsInMinimapCheckButton", "GF_GroupsNewOnlyCheckButton", "GF_ShowChatCheckButton", "GF_ShowTradesCheckButton", "GF_ShowLootCheckButton", "GF_AutoFilterCheckButton",
	"GF_GroupsFrameShowDungeonCheckButton", "GF_GroupsFrameShowRaidCheckButton", "GF_GroupsFrameShowQuestCheckButton", "GF_GroupsFrameShowOtherCheckButton", "GF_GroupsFrameShowLFMCheckButton", "GF_GroupsFrameShowLFGCheckButton",
	"GF_LogShowGroups", "GF_LogShowFiltered", "GF_LogShowChat", "GF_LogShowTrades", "GF_LogShowGuild", "GF_LogShowLoot", "GF_LogShowSpam", "GF_LogShowBlacklist", "GF_LogShowBelowLevel", "GF_FrameJoinWorldCheckButton", 
	"GF_FrameShowFormattedChatCheckButton","GF_FrameUseWhoOnGroupsCheckButton", "GF_FrameSystemFilterCheckButton", "GF_ShowGuildsCheckButton", "GF_FrameSpamFilterCheckButton", "GF_FrameAutoBlacklistCheckButton",
	"GF_PlaySoundOnResultsCheckButton", "GF_GroupAutoCheckButton", "GF_LogShowWhisperHistory", "GF_HideMainFrameHeight", "GF_HideMainFrameWidth", "GF_FrameAlwaysShowGuildCheckButton", "GF_FrameQuestModCheckButton", "GF_PurgePFDBCheckButton", }
	for i=1, 37 do getglobal(CheckButtonNames[i]):SetChecked(CheckButtonVariablesToSet[i]) end

 	local TextToSet = { GF_SavedVariables.searchtext, GF_SavedVariables.searchlfgtext, GF_SavedVariables.searchlfgwhispertext }
	local TextNames = { "GF_GroupsFrameDescriptionEditBox", "GF_LFGDescriptionEditBox", "GF_LFGWhoWhisperEditBox" }
	for i=1, 3 do getglobal(TextNames[i]):SetText(TextToSet[i]) end

	if GF_SearchButtonHasValues() then GF_SearchListDropdown:LockHighlight() end
	GF_LFGSizeDropdownTextLabel:SetText(GF_BUTTONS_LIST.LFGSize[GF_SavedVariables.lfgsize][1])
	GF_LFGWhoClassDropdownTextLabel:SetText(GF_SavedVariables.lfgwhisperclass)

	GF_BUTTONS_LIST["LFGLFM"][2] = { GF_LFG_SPECS[({UnitClass("player")})[2]][1].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][3] = { GF_LFG_SPECS[({UnitClass("player")})[2]][2].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][4] = { GF_LFG_SPECS[({UnitClass("player")})[2]][3].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][5] = { UnitClass("player").." LFG", 1, 60, }
	GF_MainFrame:SetAlpha(GF_FrameTransparencySlider:GetValue())
	GF_MainFrame:SetScale(GF_UIScaleSlider:GetValue())
	if GF_SavedVariables.MainFrameXPos then GF_MainFrame:SetPoint("TOPLEFT",UIParent,"TOPLEFT", GF_SavedVariables.MainFrameXPos, GF_SavedVariables.MainFrameYPos) end
	if GF_SavedVariables.mainframestatus ~= 0 and not GF_SavedVariables.mainframeishidden then GF_ToggleMainFrame() end
	if GF_SavedVariables.purgepfdb and GF_SavedVariables.showformattedchat then pfUI_playerDB = {} end
	GF_UpdateMinimapIcon()
	GF_UpdateFriendsList()
	GF_UpdateGuildiesList()
	GF_WhisperHistoryUpdateFrame()
	GF_DisplayLog()
	GF_PruneTheClassWhoTable()
	GF_ChatGetChannelsGroups()
end
function GF_JoinWorld(show)
	if GF_SavedVariables.joinworld then
		local chanList = { GetChannelList() }
		for i=1, getn(chanList) do
			if string.lower(chanList[i]) == string.lower(GF_CHANNEL_NAME) then return true end
		end
		JoinChannelByName(GF_CHANNEL_NAME)
		if show then ChatFrame_AddChannel(ChatFrame1, GF_CHANNEL_NAME) end
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
function GF_PruneTheWhoTable()
	for realm,_ in GF_WhoTable do
		for name, whoData in GF_WhoTable[realm] do
			if whoData[4] and ((whoData[1] == 60 and whoData[4] + 1209600 < time()) or (whoData[1] < 60 and whoData[4] + 86400 < time())) then -- Keep WhoData for 14 days for 60's. One day for under 60.
				GF_WhoTable[realm][name] = nil
			end
		end
	end
	local whisperLogNames = {}
	for realm,_ in GF_WhisperLogData do
		for i=1, getn(GF_WhisperLogData[realm]) do
			whisperLogNames[GF_WhisperLogData[realm][i]] = true
		end
		for name,_ in GF_WhisperLogData[realm] do
			if type(name) == "string" and name ~= "Guild" and not whisperLogNames[name] then GF_WhisperLogData[realm][name] = nil end
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
		if whoData[4] and whoData[4] + 3600 < time() then GF_ClassWhoTable[name] = nil	end
	end
end

function GF_GetNumGroupMembers() -- Get Group/Friends/Guildies information(turns off ignore/blacklist or adds their character information)
	if GetNumRaidMembers() > 0 then return GetNumRaidMembers() else return GetNumPartyMembers() + 1 end
end
function GF_UpdatePlayersInGroupList()
	GF_PlayersCurrentlyInGroup = {}
	GF_PlayersCurrentlyInGroup[UnitName("player")] = true
	if GetNumRaidMembers() > 1 then
		for i=1,40 do
			local name,_,_,level,class = GetRaidRosterInfo(i)
			if name and class and GF_Classes[class] and level and level > 0 then
				GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], GetGuildInfo("raid"..i), time() }
				GF_PlayersCurrentlyInGroup[name] = true
			end
		end
	else
		for i=1,4 do
			if UnitExists("party"..i) and GF_Classes[({UnitClass("party"..i)})[2]] and UnitLevel("party"..i) and UnitLevel("party"..i) > 0 then
				GF_PlayersCurrentlyInGroup[UnitName("party"..i)] = true
				GF_WhoTable[GF_RealmName][UnitName("party"..i)] = { UnitLevel("party"..i), ({UnitClass("party"..i)})[2], GetGuildInfo("party"..i), time() }
			end
		end
	end
end
function GF_UpdateFriendsList()
	GF_CurrentNumFriends = GetNumFriends()
	GF_Friends = {}
	for i=1, GetNumFriends() do
		local name,level,class,_,online = GetFriendInfo(i)
		if name and class and GF_Classes[class] and level and level > 0 then
			if online then GF_Friends[name] = true else GF_Friends[name] = nil end
			GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], "", time()}
		else
			if not GF_FriendUnknown[name] then GF_FriendUnknown[name] = time() end
		end
		if GF_SavedVariables.friendsToRemove[name] then RemoveFriend(i) end
	end
	for name,_ in GF_SavedVariables.friendsToRemove do
		if not GF_Friends[name] and GF_SavedVariables.friendsToRemove[name] + 30 < time() then GF_SavedVariables.friendsToRemove[name] = nil end
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
	GF_SavedVariables.searchtext = GF_GroupsFrameDescriptionEditBox:GetText()
	GF_SavedVariables.searchlfgtext = GF_LFGDescriptionEditBox:GetText()

	GF_FilteredResultsList = {}
	for i=1, getn(GF_MessageList[GF_RealmName]) do
		if GF_MessageList[GF_RealmName][i] then
			if GF_MessageList[GF_RealmName][i].dlevel == 0 then if GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op] then GF_MessageList[GF_RealmName][i].dlevel = GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op][1] elseif GF_MessageList[GF_RealmName][i].flags[1] == "SM" then GF_MessageList[GF_RealmName][i].dlevel = 35 end end
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
end
function GF_UpdateResults()
	local groupListLength = getn(GF_FilteredResultsList)
	GF_MinimapIconTextLabel:SetText(groupListLength)
	GF_MinimapIconTextLabel:Show()
	while GF_ResultsListOffset > (groupListLength + .1) do GF_ResultsListOffset = GF_ResultsListOffset - GF_ResultsListOffsetSize end
	GF_ResultsLabel:SetText(GF_FOUND..groupListLength.." / "..getn(GF_MessageList[GF_RealmName]))
	GF_PageLabel:SetText(GF_PAGE.." "..math.ceil((GF_ResultsListOffset + .1) / GF_ResultsListOffsetSize).." / "..math.max(math.ceil(groupListLength / GF_ResultsListOffsetSize),1))
	GF_PageLabel:Show()
	local timeMin, timeSec
	for i=1, 20 do
		if getglobal("GF_NewItem"..i) then
			if i+GF_ResultsListOffset <= groupListLength then 
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
					getglobal("GF_NewItem"..i.."NameLabel"):SetText(GF_GetDifficultyColor(GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel)..GF_GetLevelString(GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel,GF_FilteredResultsList[i+GF_ResultsListOffset].type,GF_FilteredResultsList[i+GF_ResultsListOffset].flags).."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][2]] or "ffffff")..GF_FilteredResultsList[i+GF_ResultsListOffset].op.."|r: "..GF_FilteredResultsList[i+GF_ResultsListOffset].message)
					getglobal("GF_NewItem"..i.."MoreLabel"):SetText("Level "..GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][1].." "..GF_Classes[GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][2]]..bottomtext..GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][3])
				else
					getglobal("GF_NewItem"..i.."NameLabel"):SetText(GF_GetDifficultyColor(GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel)..GF_GetLevelString(GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel,GF_FilteredResultsList[i+GF_ResultsListOffset].type,GF_FilteredResultsList[i+GF_ResultsListOffset].flags)..GF_FilteredResultsList[i+GF_ResultsListOffset].op..": "..GF_FilteredResultsList[i+GF_ResultsListOffset].message)
					getglobal("GF_NewItem"..i.."MoreLabel"):SetText("")
				end
				if (not GF_SavedVariables.mainframeheight or GF_SavedVariables.mainframestatus == 0) or i < 14 then
					getglobal("GF_NewItem"..i):Show()
					if GF_SavedVariables.mainframestatus == 0 then
						if not GF_SavedVariables.usewhoongroups and not GF_UrgentWhoRequest[GF_FilteredResultsList[i+GF_ResultsListOffset].op] and (not GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op]
						or (GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][1] < 60 and GF_WhoTable[GF_RealmName][GF_FilteredResultsList[i+GF_ResultsListOffset].op][4] + 86400 < time())) then
							getglobal("GF_NewItem"..i.."GroupWhoButton"):Show()
						else
							getglobal("GF_NewItem"..i.."GroupWhoButton"):Hide()
						end
					
						getglobal("GF_NewItem"..i.."LFGInviteButton"):Hide()
						getglobal("GF_NewItem"..i.."LFMWhisperRequestInviteButton"):Hide()
						if GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel and UnitLevel("player") >= GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel - 3 and UnitLevel("player") <= GF_FilteredResultsList[i+GF_ResultsListOffset].dlevel + 3 then
							if not GF_FilteredResultsList[i+GF_ResultsListOffset].lfg and (not GF_RequestInviteTime[GF_FilteredResultsList[i+GF_ResultsListOffset].op] or GF_RequestInviteTime[GF_FilteredResultsList[i+GF_ResultsListOffset].op] < time()) then getglobal("GF_NewItem"..i.."LFMWhisperRequestInviteButton"):Show() end
							if GF_FilteredResultsList[i+GF_ResultsListOffset].lfg and (not GF_LFGInviteTime[GF_FilteredResultsList[i+GF_ResultsListOffset].op] or GF_LFGInviteTime[GF_FilteredResultsList[i+GF_ResultsListOffset].op] < time()) then getglobal("GF_NewItem"..i.."LFGInviteButton"):Show() end
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
end
function GF_EntryMatchesGroupFilterCriteria(entry)
	if ((GF_SavedVariables.searchtext == "" and not GF_SearchButtonHasValues() and (not GF_SavedVariables.autofilter or (entry.dlevel and entry.dlevel >= UnitLevel("player")-GF_SavedVariables.autofilterlevelvar and entry.dlevel <= UnitLevel("player")+GF_SavedVariables.autofilterlevelvar))) or ((GF_SavedVariables.searchtext ~= "" or GF_SearchButtonHasValues()) and GF_SearchMessageForTextString(string.lower(entry.message).." ",string.lower(GF_SavedVariables.searchtext)..",",entry))) and ((GF_SavedVariables.showlfg and entry.lfg) or (GF_SavedVariables.showlfm and not entry.lfg)) and ((not entry.hc and GF_BUTTONS_LIST.LFGHardCore[GF_SavedVariables.hardcore][5]) or (entry.hc and GF_BUTTONS_LIST.LFGHardCore[GF_SavedVariables.hardcore][6]))
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
function GF_GetLevelString(level,gtype,flags)
	if flags[1] ~= "" then if level > 60 then return "[60]|r |cffffffff["..flags[1].."]|r " else return "["..level.."]|r |cffffffff["..flags[1].."]|r " end
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
	if GF_PlayingOnTurtle and not GF_SavedVariables.friendsToRemove[name] then
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
	local specName = ""
	for i=1,3 do
		_,_,_,_,findSpec = GetTalentInfo(i,GetNumTalents(i))
		if findSpec > 0 then specName = GF_LFG_SPECS[({UnitClass("player")})[2]][i].." " break end
	end
	SendChatMessage("["..UnitLevel("player").." "..specName..UnitClass("player").."] "..GF_INVITE_PLEASE,"WHISPER",nil,GF_FilteredResultsList[GF_ResultsListOffset+id].op)
	GF_RequestInviteTime[GF_FilteredResultsList[GF_ResultsListOffset+id].op] = time() + 120
	getglobal(frame:GetName().."LFMWhisperRequestInviteButton"):Hide()
end

function GF_WhisperHistoryButtonPressed(id,override,nolog) -- Whisper/Guild History Functions
	if not override and id == GF_WhisperLogCurrentButtonID then return end
	getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):UnlockHighlight()
	getglobal("GF_WhisperHistoryButton"..id):LockHighlight()
	if GF_WhisperLogCurrentButtonID > 1 then getglobal("GF_WhisperHistoryButtonCheckButton"..GF_WhisperLogCurrentButtonID):Hide() end
	if id > 1 then getglobal("GF_WhisperHistoryButtonCheckButton"..id):Show() end
	
	GF_WhisperLogCurrentButtonID = id
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
			message = "["..date("%m/%d").."] ["..date("%H:%M").."] ".."[To] ".."|cff"..GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]].."[|Hplayer:"..name.."|h"..name..", "..GF_WhoTable[GF_RealmName][name][1].."]:|h|r"..message
		else
			message = "["..date("%m/%d").."] ["..date("%H:%M").."] ".."[To] ".."|cff".."9d9d9d".."[|Hplayer:"..name.."|h"..name.."]:|h|r"..message
		end
	elseif event == "WHISPER" then
		if GF_WhoTable[GF_RealmName][name] and GF_WhoTable[GF_RealmName][name][1] then 
			message = "["..date("%m/%d").."] ["..date("%H:%M").."] ".."[From] ".."|cff"..GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]].."[|Hplayer:"..name.."|h"..name..", "..GF_WhoTable[GF_RealmName][name][1].."]:|h|r"..message
		else
			message = "["..date("%m/%d").."] ["..date("%H:%M").."] ".."[From] ".."|cff".."9d9d9d".."[|Hplayer:"..name.."|h"..name.."]:|h|r"..message
		end
	elseif event == "GUILD" or event == "OFFICER" then
		local guildName = ""
		for word in string.gfind(GetGuildInfo("player"), "(%w+)") do
			guildName = guildName..string.upper(string.sub(word,1,1))
		end
		if event == "OFFICER" then guildName = "O]["..guildName end
		if GF_WhoTable[GF_RealmName][name] and GF_WhoTable[GF_RealmName][name][1] and GF_WhoTable[GF_RealmName][name][2] then 
			message = "["..date("%m/%d").."] ["..date("%H:%M").."] ["..guildName.."] |cff"..GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]].."[|Hplayer:"..name.."|h"..name..", "..GF_WhoTable[GF_RealmName][name][1].."]:|h|r"..message
		else
			message = "["..date("%m/%d").."] ["..date("%H:%M").."] ["..guildName.."] |cff".."9d9d9d".."[|Hplayer:"..name.."|h"..name.."]:|h|r"..message
		end
		table.insert(GF_WhisperLogData[GF_RealmName]["Guild"],1,message)
		if getn(GF_WhisperLogData[GF_RealmName]["Guild"]) > 128 then table.remove(GF_WhisperLogData[GF_RealmName]["Guild"],129) end
	end
	if event ~= "GUILD" and event ~= "OFFICER" then
		table.insert(GF_WhisperLogData[GF_RealmName][name],1,message)
		table.insert(GF_WhisperLogData[GF_RealmName]["Guild"],1,message)
		if getn(GF_WhisperLogData[GF_RealmName][name]) > 128 then table.remove(GF_WhisperLogData[GF_RealmName][name],129) end
		if getn(GF_WhisperLogData[GF_RealmName]["Guild"]) > 128 then table.remove(GF_WhisperLogData[GF_RealmName]["Guild"],129) end
		if GF_WhisperLogCurrentButtonID > 1 and name == getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):GetText() then GF_Log:AddMessage(message, GF_TextColors[event][2]/255, GF_TextColors[event][3]/255, GF_TextColors[event][4]/255) end
		GF_WhisperHistoryUpdateFrame(name)
	end
	table.insert(GF_LogHistory[GF_RealmName],1,{message,10,event})
	if getn(GF_LogHistory[GF_RealmName]) > 500 then table.remove(GF_LogHistory[GF_RealmName],501) end
	if GF_WhisperLogCurrentButtonID < 2 then GF_Log:AddMessage(message, GF_TextColors[event][2]/255, GF_TextColors[event][3]/255, GF_TextColors[event][4]/255) end
end
function GF_WhisperHistoryUpdateFrame(name)
	local numPriority = 0
	local nameWasPriority
	local counter = 2
	if not GF_WhisperLogData[GF_RealmName][1] then table.insert(GF_WhisperLogData[GF_RealmName], "Guild") end
	while true do
		if not name or not GF_WhisperLogData[GF_RealmName][counter] or counter == 21 then break end
		if GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][counter]].priority then numPriority = numPriority+1 end
		if name == GF_WhisperLogData[GF_RealmName][counter] then if GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][counter]].priority then nameWasPriority = true end table.remove(GF_WhisperLogData[GF_RealmName],counter) else counter = counter+1 end
	end
	if name then
		if nameWasPriority then
			table.insert(GF_WhisperLogData[GF_RealmName],2,name)
			if GF_WhisperLogCurrentButtonID > 1 then GF_WhisperHistoryButtonPressed(2,true,true) end
		else
			table.insert(GF_WhisperLogData[GF_RealmName],2+numPriority,name)
			if GF_WhisperLogCurrentButtonID > 1 then GF_WhisperHistoryButtonPressed(2+numPriority,true,true) end
		end
	end
	for i=2, 20 do
		if GF_WhisperLogData[GF_RealmName][i] then
			if GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i]].priority then getglobal("GF_WhisperHistoryButtonCheckButton"..i):SetChecked(true) getglobal("GF_WhisperHistoryButton"..i.."TextureGold"):Show() else getglobal("GF_WhisperHistoryButtonCheckButton"..i):SetChecked(false) getglobal("GF_WhisperHistoryButton"..i.."TextureGold"):Hide() end
			getglobal("GF_WhisperHistoryButton"..i):SetText(GF_WhisperLogData[GF_RealmName][i])
			getglobal("GF_WhisperHistoryButton"..i):Show()
		else
			getglobal("GF_WhisperHistoryButton"..i):SetText("")
			getglobal("GF_WhisperHistoryButton"..i):Hide()
		end
	end
	for i=2, 20 do
		if GF_WhisperLogData[GF_RealmName][i] then
			if GF_WhisperLogData[GF_RealmName][i] == getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):GetText() then GF_WhisperHistoryButtonPressed(i,true,true) end
		end
	end
	if getn(GF_WhisperLogData[GF_RealmName]) > 20 then table.remove(GF_WhisperLogData[GF_RealmName],21) end	
end
function GF_WhisperHistoryDisplayLog(name)
	GF_Log:SetMaxLines(128)
	local tempHistoryTable = {}
	for i=1, getn(GF_WhisperLogData[GF_RealmName][name]) do
		table.insert(tempHistoryTable,1,GF_WhisperLogData[GF_RealmName][name][i])
		if i == 128 then break end
	end
	for i=1, getn(tempHistoryTable) do
		if string.sub(tempHistoryTable[i],17,20) == "[To]" or string.sub(tempHistoryTable[i],17,22) == "[From]" then
			GF_Log:AddMessage(tempHistoryTable[i],1,128/255,1)
		elseif string.sub(tempHistoryTable[i],17,19) == "[O]" then
			GF_Log:AddMessage(tempHistoryTable[i],64/255,192/255,64/255)
		else
			GF_Log:AddMessage(tempHistoryTable[i],64/255,1,64/255)
		end
	end
end
function GF_WhisperHistoryPriorityListCheckButtonPressed(id,name,priority)
	GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][id]].priority = priority
	GF_WhisperHistoryUpdateFrame(name)
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
	if name ~= "" and not GF_BlackList[GF_RealmName][name] and not string.find(name, "[%d%p%c%s]") then
		table.insert(GF_BlackList[GF_RealmName],1,{ name, GF_DEFAULT_PLAYER_NOTE })
		GF_BlackList[GF_RealmName][name] = true
	else
		DEFAULT_CHAT_FRAME:AddMessage(name..GF_INVALID_PLAYER_NAME, 1, 1, 0.5)
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
	GF_UpdateBlackListItems()
end

function GF_ToggleGetWho() -- GetWho functions
	if not GF_ClassWhoRequest then
		GF_GetWhoLevel = GF_FindDungeonLevel(string.lower(GF_LFGWhoWhisperEditBox:GetText()),string.lower(GF_LFGDescriptionEditBox:GetText()))
		if GF_GetWhoLevel then
			GF_GetWhoClassLevelList(GF_GetWhoLevel, GF_SavedVariables.lfgwhisperclass, true)
		else
			DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_NO_WHISPER_DUNGEON, 1, 1, 0.5)
		end
	else
		GF_ClassWhoRequest = nil
		GF_LFGGetWhoButton:SetText(GF_GET_WHO.." - "..GF_ClassWhoMatchingResults)
	end
end
function GF_GetWhoClassLevelList(level,class,excludedungeonspvp)
	for name,whoData in pairs(GF_ClassWhoTable) do
		if whoData[4] + GF_GetWhoResetTimer < time() then GF_ClassWhoTable[name] = nil end
	end
	GF_ClassWhoRequest = true
	GF_ClassWhoMatchingResults = 0
	GF_LFGGetWhoButton:SetText(GF_STOP_WHO)
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
	local whispermessage = GF_LFGWhoWhisperEditBox:GetText()
	if whispermessage == "" then whispermessage = GF_LFGDescriptionEditBox:GetText() end

	if whispermessage == "" then
		DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_NO_WHISPER_TEXT, 1, 1, 0.5)
	elseif string.len(whispermessage) > 5 then
		GF_GetWhoLevel = GF_FindDungeonLevel(string.lower(GF_LFGWhoWhisperEditBox:GetText()),string.lower(GF_LFGDescriptionEditBox:GetText())) or 60
		for k,v in pairs(GF_ClassWhoTable) do
			if GF_ClassWhoTable[k][4] < time()-GF_GetWhoResetTimer then
				if GF_ClassWhoTable[k][1] >= GF_GetWhoLevel-GF_GetWhoLevelRange and GF_ClassWhoTable[k][1] <= GF_GetWhoLevel+GF_GetWhoLevelRange and GF_ClassWhoTable[k][2] == GF_SavedVariables.lfgwhisperclass then
					GF_ClassWhoTable[k][4] = time()
					GF_ClassWhoMatchingResults = GF_ClassWhoMatchingResults - 1
					GF_LFGGetWhoButton:SetText(GF_GET_WHO.." - "..GF_ClassWhoMatchingResults)
					GF_ClassWhoRequest = nil
					GF_ClassWhoQueue = {}
					SendChatMessage(whispermessage,"WHISPER",nil,k)
					return
				end
			end
		end
		DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_NO_PLAYERS_TO_WHISPER, 1, 1, 0.5)
	else
		DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_WHISPER_TEXT_TOO_SHORT, 1, 1, 0.5)
	end
end
function GF_FindDungeonLevel(whisperText,lfgText)
	if GF_LFGWhoWhisperEditBox:GetText() ~= "" then 
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
	if GF_LFGWhoWhisperEditBox:GetText() ~= "" then 
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

function GF_FixLFGStrings(lfmOnly) -- LFG Group Maker Functions
	GF_SavedVariables.searchlfgtext = GF_LFGDescriptionEditBox:GetText()
	local maxGroupSize = GF_BUTTONS_LIST.LFGSize[GF_SavedVariables.lfgsize][4]
	if not lfmOnly then
		local foundLFM
		local foundDungeonRaid = {}
		local foundRoles = {}
		local foundStartOfText
		local endOfFilter = 0
		GF_SavedVariables.searchlfgtext = gsub(GF_SavedVariables.searchlfgtext, "[LFlf]+%d+[Mm]", "LFM")
		for i=1,getn(GF_BUTTONS_LIST.LFGLFM) do
			foundStartOfText = string.find(GF_SavedVariables.searchlfgtext, GF_BUTTONS_LIST.LFGLFM[i][1])
			if foundStartOfText then
				if i == 1 then
					foundLFM = 1
				elseif not foundLFM then
					foundLFM = GF_BUTTONS_LIST.LFGLFM[i][1]
				end
				if foundStartOfText + string.len(GF_BUTTONS_LIST.LFGLFM[i][1])-1 > endOfFilter then endOfFilter = foundStartOfText + string.len(GF_BUTTONS_LIST.LFGLFM[i][1])-1 end
			end
		end
		for i=1,getn(GF_BUTTONS_LIST.LFGRole) do
			foundStartOfText = string.find(GF_SavedVariables.searchlfgtext, GF_BUTTONS_LIST.LFGRole[i][1])
			if foundStartOfText then
				if foundStartOfText + string.len(GF_BUTTONS_LIST.LFGRole[i][1])-1 > endOfFilter then endOfFilter = foundStartOfText + string.len(GF_BUTTONS_LIST.LFGRole[i][1])-1 end
				table.insert(foundRoles,GF_BUTTONS_LIST.LFGRole[i][1])
			end
		end
		for i=1,getn(GF_BUTTONS_LIST.LFGDungeon) do
			foundStartOfText = string.find(GF_SavedVariables.searchlfgtext, GF_BUTTONS_LIST.LFGDungeon[i][1]) or string.find(GF_SavedVariables.searchlfgtext, GF_BUTTONS_LIST.LFGDungeon[i][4])
			if foundStartOfText then
				if foundStartOfText + string.len(GF_BUTTONS_LIST.LFGDungeon[i][1])-1 > endOfFilter then endOfFilter = foundStartOfText + string.len(GF_BUTTONS_LIST.LFGDungeon[i][1])-1 end
				if tonumber(maxGroupSize) > GF_BUTTONS_LIST.LFGDungeon[i][7] then maxGroupSize = GF_BUTTONS_LIST.LFGDungeon[i][7] end
				table.insert(foundDungeonRaid,GF_BUTTONS_LIST.LFGDungeon[i][1])
			end
		end
		for i=1,getn(GF_BUTTONS_LIST.LFGRaid) do
			foundStartOfText = string.find(GF_SavedVariables.searchlfgtext, GF_BUTTONS_LIST.LFGRaid[i][1]) or string.find(GF_SavedVariables.searchlfgtext, GF_BUTTONS_LIST.LFGRaid[i][4])
			if foundStartOfText then
				if foundStartOfText + string.len(GF_BUTTONS_LIST.LFGRaid[i][1])-1 > endOfFilter then endOfFilter = foundStartOfText + string.len(GF_BUTTONS_LIST.LFGRaid[i][1])-1 end
				if tonumber(maxGroupSize) > GF_BUTTONS_LIST.LFGRaid[i][7] then maxGroupSize = GF_BUTTONS_LIST.LFGRaid[i][7] end
				table.insert(foundDungeonRaid,GF_BUTTONS_LIST.LFGRaid[i][1])
			end
		end
		local newText = ""
		if foundLFM == 1 then
			if GF_SavedVariables.lfgauto then
				newText = "LF"..maxGroupSize-GF_GetNumGroupMembers().."M"
			else
				newText = "LFM"
			end
			if strlen(newText) > 0 and getn(foundDungeonRaid) > 0 then newText = newText.." for " else newText = newText.." " end
			for i=1, getn(foundDungeonRaid) do
				newText = newText..foundDungeonRaid[i].."/"
			end
			if strlen(newText) > 0 and getn(foundRoles) > 0 then newText = newText.." need " else newText = newText.." " end
			for i=1, getn(foundRoles) do
				newText = newText..foundRoles[i].."/"
			end
		else
			if foundLFM or getn(foundRoles) > 0 then newText = UnitLevel("player").." " end
			for i=1, getn(foundRoles) do
				newText = newText..foundRoles[i].."/"
			end
			if foundLFM then
				newText = " "..newText.." "..foundLFM
			end
			if strlen(newText) > 0 and getn(foundDungeonRaid) > 0 then newText = newText.." for " else newText = newText.." " end
			for i=1, getn(foundDungeonRaid) do
				newText = newText..foundDungeonRaid[i].."/"
			end
		end
		GF_SavedVariables.searchlfgtext = gsub(gsub(gsub(gsub(gsub(gsub(newText..string.sub(GF_SavedVariables.searchlfgtext, endOfFilter+1), "[/ ]+$", ""), "^%s+", ""), "/%s+"," "),"%s/", ""),"//+", ""),"%s%s+", " ")
		getglobal(GF_LFGDescriptionEditBox:GetName()):SetText(GF_SavedVariables.searchlfgtext)
	else
		if GF_SavedVariables.lfgauto and (string.find(string.upper(GF_SavedVariables.searchlfgtext), "LF%d+M") or string.find(string.upper(GF_SavedVariables.searchlfgtext), "LFM")) then
			GF_SavedVariables.searchlfgtext = gsub(GF_SavedVariables.searchlfgtext, "[Ll[Ff]+%d+[Mm]", "LFM")
			local newText = "LF"..maxGroupSize-GF_GetNumGroupMembers().."M"
			getglobal(GF_LFGDescriptionEditBox:GetName()):SetText(gsub(GF_SavedVariables.searchlfgtext, "[Ll][Ff][Mm]", newText))
		end
	end
end
function GF_CreateSearchDropdownButton(id, parent)
	local button = CreateFrame("CheckButton", parent:GetName()..id, parent, "GF_GF_CheckButtonTemplate_Label_Click")
	if id == 1 then
		button:SetPoint("TOPLEFT", parent, "TOPLEFT", 6, -4)
	else
		button:SetPoint("TOP", getglobal(parent:GetName()..(id-1) ), "BOTTOM", 0, 6)
	end
	return button
end
function GF_ShowDropdownList(bframe)
	local width = 0
	GF_NumLFGSearchButtons = 0
	GF_SavedVariables.searchlfgtext = GF_LFGDescriptionEditBox:GetText()
	local LFGLFMFound = nil
	for _,dtable in pairs(GF_BUTTONS_LIST[bframe]) do
		if UnitLevel("player") >= dtable[2] and UnitLevel("player") <= dtable[3] then
			GF_NumLFGSearchButtons = GF_NumLFGSearchButtons + 1
			local button = getglobal("GF_"..bframe..GF_NumLFGSearchButtons) or GF_CreateSearchDropdownButton(GF_NumLFGSearchButtons, getglobal("GF_"..bframe))
			getglobal(button:GetName().."TextLabel"):SetText(dtable[1])
			if getglobal(button:GetName().."TextLabel"):GetStringWidth() >= width then width = getglobal(button:GetName().."TextLabel"):GetStringWidth()+5 end
			button:Show()
			if bframe == "SearchList" then
				if GF_SavedVariables.searchbuttonstext[dtable[4]] then
					button:SetChecked(true)
				else
					button:SetChecked(false)
				end
			elseif bframe == "LFGWhoClass" then
				if GF_SavedVariables.lfgwhisperclass == dtable[1] then
					button:SetChecked(true)
				else
					button:SetChecked(false)
				end
			elseif bframe == "LFGSize" then
				if GF_BUTTONS_LIST.LFGSize[GF_SavedVariables.lfgsize][4] == dtable[4] then
					button:SetChecked(true)
				else
					button:SetChecked(false)
				end
			elseif bframe == "LFGHardCore" then
				if GF_BUTTONS_LIST.LFGHardCore[GF_SavedVariables.hardcore][1] == dtable[1] then
					button:SetChecked(true)
				else
					button:SetChecked(false)
				end
			else
				if dtable[1] == GF_CLEAR then
					button:SetChecked(true)
				else
					if string.find(GF_SavedVariables.searchlfgtext, dtable[1]) then
						if bframe== "LFGLFM" and LFGLFMFound then button:SetChecked(false) else button:SetChecked(true) LFGLFMFound = true end
					else
						button:SetChecked(false)
					end
				end
			end
		end
	end
	getglobal("GF_"..bframe):SetHeight(12 + GF_NumLFGSearchButtons * 18)
	getglobal("GF_"..bframe):SetWidth(width + 45)
	getglobal("GF_"..bframe):ClearAllPoints()
	getglobal("GF_"..bframe):SetPoint("TOPLEFT", getglobal("GF_"..bframe.."Dropdown"), "BOTTOMLEFT", 0, 4)
	if GF_NumLFGSearchButtons > 0 then getglobal("GF_"..bframe):Show() end
end
function GF_AddRemoveSearch(bframe,entryname,add)
	if bframe == "SearchList" then
		if entryname == "Clear" then
			GF_SavedVariables.searchbuttonstext = {}
			GF_SavedVariables.searchtext = ""
			GF_GroupsFrameDescriptionEditBox:SetText("")
			GF_SearchList:Hide()
		else
			for i=1, getn(GF_BUTTONS_LIST[bframe]) do
				if GF_BUTTONS_LIST[bframe][i][1] == entryname then
					for j=4, getn(GF_BUTTONS_LIST[bframe][i]) do
						if add then
							GF_SavedVariables.searchbuttonstext[GF_BUTTONS_LIST[bframe][i][j]] = true
						else
							GF_SavedVariables.searchbuttonstext[GF_BUTTONS_LIST[bframe][i][j]] = nil
						end
					end
				end
			end
		end
		if GF_SearchButtonHasValues() then GF_SearchListDropdown:LockHighlight() else GF_SearchListDropdown:UnlockHighlight() end
		GF_ApplyFiltersToGroupList()
	else
		for i=1, getn(GF_BUTTONS_LIST[bframe]) do
			if GF_BUTTONS_LIST[bframe][i][1] == entryname then
				if bframe == "LFGWhoClass" then
					GF_SavedVariables.lfgwhisperclass = entryname
					GF_LFGWhoClassDropdownTextLabel:SetText(GF_SavedVariables.lfgwhisperclass)
					GF_LFGWhoClassDropdownTextLabel:SetPoint("LEFT", "GF_LFGWhoClassDropdown", "LEFT", 22, 3)
					GF_LFGWhoClass:Hide()
				elseif bframe == "LFGSize" then
					GF_SavedVariables.lfgsize = i
					GF_LFGSizeDropdownTextLabel:SetText(GF_BUTTONS_LIST.LFGSize[i][1])
					GF_LFGSizeDropdownTextLabel:SetPoint("LEFT", "GF_LFGSizeDropdown", "LEFT", 22, 3)
					GF_LFGSize:Hide()
				elseif bframe == "LFGHardCore" then
					GF_SavedVariables.hardcore = i
					GF_LFGHardCoreDropdownTextLabel:SetText(GF_BUTTONS_LIST.LFGHardCore[i][1])
					GF_LFGHardCoreDropdownTextLabel:SetPoint("LEFT", "GF_LFGHardCoreDropdown", "LEFT", 22, 3)
					GF_WorldAnnounceMessageTextLabel:SetText(GF_BUTTONS_LIST.LFGHardCore[i][4])
					if GF_Hardcore then if GF_SavedVariables.hardcore == 3 then DEFAULT_CHAT_FRAME:AddMessage(GF_WORLD_NOW_SENDING, 1, 1, 0.5) else DEFAULT_CHAT_FRAME:AddMessage(GF_HARDCORE_NOW_SENDING, 1, 1, 0.5) end end
					GF_LFGHardCore:Hide()
					GF_ApplyFiltersToGroupList()
				elseif bframe == "LFGLFM" then
					if add then
						for j=1, getn(GF_BUTTONS_LIST[bframe]) do
							GF_SavedVariables.searchlfgtext = gsub(GF_SavedVariables.searchlfgtext, GF_BUTTONS_LIST.LFGLFM[j][1], "")
						end
						GF_SavedVariables.searchlfgtext = gsub(GF_SavedVariables.searchlfgtext, "LF%d+M", "")
						GF_SavedVariables.searchlfgtext = GF_BUTTONS_LIST[bframe][i][1]..gsub(GF_SavedVariables.searchlfgtext, "^%d+", "")
						GF_LFGLFM:Hide()
					end
				else
					GF_SavedVariables.searchlfgtext = GF_BUTTONS_LIST[bframe][i][1]..gsub(GF_SavedVariables.searchlfgtext, "^%d+", "")
				end
				if not add then GF_SavedVariables.searchlfgtext = gsub(gsub(gsub(gsub(GF_SavedVariables.searchlfgtext, "^%d+", ""),"for "..GF_BUTTONS_LIST[bframe][i][1],""),"need "..GF_BUTTONS_LIST[bframe][i][1],""),GF_BUTTONS_LIST[bframe][i][1],"") GF_LFGLFM:Hide() end
				GF_LFGDescriptionEditBox:SetText(GF_SavedVariables.searchlfgtext)
			end
		end
		if bframe == "LFGSize" then GF_FixLFGStrings(true) else GF_FixLFGStrings() end
	end
end
function GF_SearchButtonHasValues()
	for word,_ in GF_SavedVariables.searchbuttonstext do
		return true
	end
end

function GF_FindGroupsAndDisplayCustomChatMessages(event) -- Chat Filters and Group Finders
	event = gsub(event,"CHAT_MSG_","")
	if arg2 then arg2 = gsub(arg2,".* ","") end
	if not GF_TextColors[event] or string.lower(arg9) == "lft" then
		return true
	elseif GF_TextBypass[event] then
		if GF_SavedVariables.showformattedchat then return nil else return true end
	elseif GF_PreviousMessage[arg2] and GF_PreviousMessage[arg2][1] == arg1 and GF_PreviousMessage[arg2][2] > GetTime() then
		if GF_PreviousMessage[arg2][3] then return true end
	elseif event == "EMOTE" or event == "TEXT_EMOTE" then
		if GF_BlackList[GF_RealmName][arg2] and not GF_PlayersCurrentlyInGroup[arg2] and not GF_Friends[arg2] and not GF_Guildies[arg2] then
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
			return nil
		elseif GF_CheckForSpam(arg1,arg2) then
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
			return nil
		end
		GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
		return true
	elseif GF_LootFilter[event] then
		GF_AddLogMessage(arg1,6,true,arg2,arg8,arg9,event)
		if GF_SavedVariables.showloottexts or (event == "LOOT" and GF_BypassLootFilter(arg1)) then
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
			return true
		else
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25, nil}
			return nil
		end
	elseif event == "MONSTER_SAY" or event == "MONSTER_EMOTE" then
		if GF_SavedVariables.systemfilter then --GF_CheckMonsterEmoteFilter(arg1) then
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
			return nil
		else
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
			return true
		end
	elseif event == "SYSTEM" then
		if arg1 == ERR_FRIEND_WRONG_FACTION then
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
			return nil
		elseif string.find(arg1, GF_WHO_MSG_SYSTEM) then
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
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
			return true
		elseif GF_SavedVariables.showformattedchat and string.find(arg1, GF_FRIEND_MSG_SYSTEM) then
			for name,_ in string.gfind(arg1, GF_FRIEND_MSG_SYSTEM) do
				if GF_WhoTable[GF_RealmName][name] then
					GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
					return nil
				end
			end
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
			return true
		elseif GF_SavedVariables.systemfilter and GF_CheckSystemMessageFilter(arg1) then
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
			return nil
		else
			if GF_SavedVariables.friendsToRemove[gsub(arg1,"(%a+)(.*)","%1")] then
				GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
				return nil
			else
				if string.find(arg1, GF_HARDCORE_TRAGEDY_MSG_SYSTEM) or string.find(arg1, GF_HARDCORE_TRANSCENDED_MSG_SYSTEM) then GF_AddLogMessage(arg1,4,true,"SYSTEM",arg8,arg9,event) end
				GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
				return true
			end
		end
	elseif arg2 == "" then
		GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
		return true
	else
		--print(GetTime())
		local logType = GF_CheckForGroups(gsub(arg1,"[\\\"]", " "),arg2,arg9,event) or 4
		--print(GetTime())
		if logType == 5 or logType == 11 or logType < 4 then GF_PlayerMessages[arg2][1][1] = GF_PlayerMessages[arg2][1][1] + 1 end -- To block multiple messages in series
		GF_AddLogMessage(GF_CleanUpMessagesOfBadLinks(arg1),logType,true,arg2,arg8,arg9,event)
		if arg2 == UnitName("player") or (GF_SavedVariables.alwaysshowguild and (GF_Guildies[arg2] or GF_Friends[arg2] or GF_PlayersCurrentlyInGroup[arg2])) or GF_ChatCheckFilters(logType,arg1,event) then
			if not GF_SavedVariables.showformattedchat then
				GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
				return true
			else
				GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
				if event == "CHANNEL" then GF_AddChannelMessage(arg1,arg2,arg8,arg9) else GF_AddChatMessage(arg1,arg2,event) end
				return nil
			end
		else
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
			return nil
		end
	end
end
function GF_BypassLootFilter(arg1)
	if not string.find(arg1, "9d9d9d") then -- Grey 
		for i=1, getn(GF_LootFilters) do
			if string.find(arg1, "1eff00") and string.find(arg1, GF_LootFilters[i]) then return end -- Except green items that match the filters
			if i < 3 and string.find(arg1, GF_LootFilters[i]) then return end -- Other items only hide greed/need rolls.
		end
		return true
	end
end
function GF_CheckSystemMessageFilter(arg1)
	for i=1, getn(GF_SystemMessageFilters) do
		if string.find(arg1, GF_SystemMessageFilters[i]) then return true end
	end
end
function GF_CheckMonsterEmoteFilter(arg1)
	for i=1, getn(GF_MonsterEmoteFilters) do
		if string.find(arg1, GF_MonsterEmoteFilters[i]) then return true end
	end
end
function GF_CheckForGroups(arg1,arg2,arg9,event,showanyway)
-- "Say" and "Yell" messages from guildies/friends/party members will be flagged as [M] and always displayed in chat and in logs.
-- "Channel" messages from guildies/friends/party members will be logged normally but will always be displayed in chat.

-- "Say" messages will always be displayed unless flagged as spam.
-- "Yell" and "Channel" messages will only display if allowed.
	if GF_BlackList[GF_RealmName][arg2] and not GF_PlayersCurrentlyInGroup[arg2] and not GF_Friends[arg2] and not GF_Guildies[arg2] then return 8 end
	GF_GetTypes(gsub(gsub(gsub(string.lower(gsub(gsub(gsub(" "..arg1.." ", "|c%x+|+(%w+)[%w:]+|+h", " %1 "), "|+[hr]", ""),"([a-z ][a-z])([A-Z])","%1 %2")),".gg/%w+", ""),"[\"#\$\%&\*,\.@\\\^_`~|]"," "),"'",""),showanyway)
	if event == "HARDCORE" or string.lower(arg9) == "hardcore" then GF_MessageData.foundHC = true end
	if GF_MessageData.foundGuild >= 3 then return GF_CheckForSpam(arg1,arg2) or 11
	elseif GF_MessageData.foundTrades >= 3 then return GF_CheckForSpam(arg1,arg2) or 5
	elseif GF_MessageData.foundLFM < GF_SavedVariables.FilterLevel and GF_MessageData.foundLFG < GF_SavedVariables.FilterLevel then
		if GF_PlayingOnTurtle then GF_GetWhoData(arg2) end
		return GF_CheckForSpam(arg1,arg2) or 4
	end

	local entry,foundInGroup = GF_GetGroupInformation(GF_CleanUpMessagesOfBadLinks(arg1),arg2)
	GF_GetWhoData(arg2,foundInGroup)
	if foundInGroup then
		table.insert(GF_MessageList[GF_RealmName],1,entry)
		if GF_UpdateAndRequestTimer > 5 then GF_UpdateAndRequestTimer = 4 end
		if not GF_EntryMatchesGroupFilterCriteria(entry) then
			foundInGroup = 3
		elseif GF_SavedVariables.playsounds then
			PlaySoundFile( "Sound\\Interface\\PickUp\\PutDownRing.wav" )
		end
	end
	return GF_CheckForSpam(arg1,arg2,foundInGroup) or foundInGroup
end
function GF_GetTypes(arg1, showanyway)
	if showanyway == true then print(arg1) end
	GF_MessageData = { foundIgnore = 0,foundGuild = 0,foundGuildExclusion = 0,foundLFM = 0,foundLFMPreSuf = 0,foundLFG = 0,foundLFGPreSuf = 0,foundClass = nil,foundQuest = {},foundDungeon = nil,foundRaid = nil,foundTrades = 0,foundTradesExclusion = 0,foundPvP = nil,foundDFlags = {},foundPFlags = {},foundHC = nil,foundNotHC = nil, lfmlfgName = "zzz", groupName = {} }
	local wordTable = { [1]={},[2]={},[3]={} }
	local wordString,lfs,lfe,tempVar

	for i=1,string.len(arg1)-1 do -- Block letter repeats
		lfs = strbyte(arg1,i)
		lfe = strbyte(arg1,i+1)
		if lfs == lfe then
			if lfs >= 97 and lfs <= 122 then
				if lfs == strbyte(arg1,i+2) then
					table.insert(wordTable[1],strchar(lfs)) table.insert(wordTable[1],strchar(lfe)) i=i+2 for j=1,250 do if lfs ~= strbyte(arg1,i+j) then i=i+j-1 break end end
				else
					table.insert(wordTable[1],strchar(lfs)) table.insert(wordTable[1],strchar(lfe)) i=i+1
				end
			else
				table.insert(wordTable[1],strchar(lfs)) i=i+1 for j=1,250 do if lfs ~= strbyte(arg1,i+j) then if lfs == 32 then i=i+j-2 else i=i+j-1 end break end end
			end
		elseif lfs == strbyte(arg1,i+2) and lfs == strbyte(arg1,i+4) and lfe ~= 32 and strbyte(arg1,i+3) ~= 32 then
			if lfs == 32 or lfs == 46 then
				table.insert(wordTable[1],strchar(lfs)) table.insert(wordTable[1],strchar(lfe)) table.insert(wordTable[1],strchar(strbyte(arg1,i+3))) i=i+3 for j=3,250,2 do if lfs ~= strbyte(arg1,i+j) or strbyte(arg1,i+j-1) == 32 then i=i+j-3 break else table.insert(wordTable[1],strchar(strbyte(arg1,i+j-1))) end end
			elseif lfe == strbyte(arg1,i+3) then
				table.insert(wordTable[1],strchar(lfs)) table.insert(wordTable[1],strchar(lfe)) table.insert(wordTable[1],strchar(strbyte(arg1,i+2))) table.insert(wordTable[1],strchar(strbyte(arg1,i+3))) i=i+3 for j=2,250 do if strbyte(arg1,i+j) ~= strbyte(arg1,i+j-2) then i=i+j-1 break end end
			else
				table.insert(wordTable[1],strchar(lfs))
			end
		else
			table.insert(wordTable[1],strchar(lfs))
		end
	end
	arg1 = table.concat(wordTable[1])
	if string.sub(arg1,-1) ~= " " then arg1 = arg1.." " end
	wordTable[1] = {}

	if string.find(arg1, "%d+p[%p%s]") then GF_MessageData.foundLFM = 2 end -- "10p heal" messages from chinese

	lfs = 1 -- To detect space/number+/punctuation/number+/space for groups
	while true do lfs,lfe,wordString,tempVar = string.find(arg1,"[%p%s](%d+([=/])%d+) ",lfs) if not wordString then break end if tempVar == "=" then GF_MessageData.foundLFM = 2 lfs = lfe else arg1 = string.sub(arg1,1,lfs).."group"..string.sub(arg1,lfe) lfs = lfs + 6 end end

	lfs = 1 -- To detect space/lf##m/letter(eg " lf15mbwl" = lfm bwl)
	while true do lfs,lfe,wordString = string.find(arg1," ([lk]f?%s?%d+m)[%p%s]",lfs) if not wordString then break end arg1 = string.sub(arg1,1,lfs).."lfm "..string.sub(arg1,lfs+string.len(wordString)+1) lfs = lfs + 4 GF_MessageData.foundLFM = 4 GF_MessageData.foundGuildExclusion = 3 GF_MessageData.foundTradesExclusion = 3 end
	lfs = 2 -- To detect word/word with no space(eg "lfgscholo" = lfg scholo)
	while true do
		lfs,lfe,wordString = string.find(arg1,"(%a%a%a%a+)",lfs)
		if not wordString then break end
		tempVar = string.len(wordString) - 1
		if tempVar > 7 then tempVar = 7 end
		for i=tempVar, 3, -1 do
			if GF_WORD_SPECIAL_COMBINATION[string.sub(wordString,1,i)] and not GF_WORD_SPECIAL_COMBINATION[wordString] then
				arg1 = string.sub(arg1,1,lfs-1)..GF_WORD_SPECIAL_COMBINATION[string.sub(wordString,1,i)].." "..string.sub(arg1,lfs+i)
				lfs = lfs + (i-string.len(GF_WORD_SPECIAL_COMBINATION[string.sub(wordString,1,i)])) + string.len(wordString) + 1
				break
			elseif GF_WORD_SPECIAL_COMBINATION[string.sub(wordString,-i)] and not GF_WORD_SPECIAL_COMBINATION[wordString] then
				arg1 = string.sub(arg1,1,lfe-i).." "..GF_WORD_SPECIAL_COMBINATION[string.sub(wordString,-i)]..string.sub(arg1,lfe+1)
				lfs = lfs + (i-string.len(GF_WORD_SPECIAL_COMBINATION[string.sub(wordString,-i)])) + string.len(wordString) + 1
				break
			end
		end
		if lfs < lfe then
			if GF_WORD_SPECIAL_COMBINATION[string.sub(wordString,1,2)] then
				arg1 = string.sub(arg1,1,lfs-1)..GF_WORD_SPECIAL_COMBINATION[string.sub(wordString,1,2)].." "..string.sub(arg1,lfs+2)
				lfs = lfs + string.len(wordString) + 1
			elseif string.sub(wordString,-2) == "lf" then
				wordString = string.sub(wordString,1,-3)
				if GF_WORD_FIX_BEFORE_QUEST[wordString] then wordString = GF_WORD_FIX_BEFORE_QUEST[wordString] end
				if GF_WORD_QUEST[wordString] then
					arg1 = string.sub(arg1,1,lfs-1)..wordString.." lf"..string.sub(arg1,lfe+1)
				else
					if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end
					if GF_WORD_DUNGEON[wordString] or GF_WORD_RAID[wordString] or GF_WORD_PVP[wordString] then
						arg1 = string.sub(arg1,1,lfs-1)..wordString.." lf"..string.sub(arg1,lfe+1)
					end
				end
				lfs = lfs + string.len(wordString) + 3
			else
				lfs = lfs + string.len(wordString)
			end
		end
	end

	lfs = 2 -- To fix single words
	while true do lfs,lfe,wordString = string.find(arg1,"(%a+)",lfs) if not wordString then break elseif GF_WORD_FIX_BEFORE_QUEST[wordString] then arg1 = string.sub(arg1,1,lfs-1)..GF_WORD_FIX_BEFORE_QUEST[wordString]..string.sub(arg1,lfe+1) lfs = lfs + string.len(GF_WORD_FIX_BEFORE_QUEST[wordString]) else lfs = lfe+1 end end

	lfs = 1 -- To detect space/letter/number/letter/space combinations(eg " g2g " = gtg)
	while true do lfs,lfe,wordString = string.find(arg1," (w?g?%a%s?%d%s?%ab?g?)[%p%s]",lfs) if not wordString then break end wordString = gsub(wordString," ","") if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe) end lfs = lfs + string.len(wordString) + 1 end
	lfs = 1 -- To detect space/word/number+/space combinations(eg " k10" = lowerkarazhan)
	while true do lfs,lfe,wordString = string.find(arg1," (%a+%s?[:%-]?%s?%d+)s?[%p%s]",lfs) if not wordString then break end wordString = gsub(wordString,"[%s:%-]","") if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe) end lfs = lfs + string.len(wordString) + 1 end

	tempVar = string.find(arg1,"%]")
	if tempVar then -- To detect "]"
		if GF_MessageData.foundLFM == 0 then lfe = string.find(arg1, "%]%s?%d+%s?\+",tempVar) if lfe then GF_MessageData.foundLFM = 2 if showanyway == true then print("##+ lfm") end end end -- Group "] 2+"
		if string.find(arg1, "%]%s?[0-9\-]+%s?[gs]",tempVar) then GF_MessageData.foundTrades = GF_MessageData.foundTrades + .5 if showanyway == true then print("##g trade .5") end end -- Trades "]2.5g"
		if string.find(arg1, "%]%s?%p?%s?%d+m[%p%s]",tempVar) then GF_MessageData.foundLFM = 2 if showanyway == true then print("##m lfm") end end -- Group "] 2m"
		if string.find(arg1, "%]%s?%p?%s?x%s?%d+[%p%s]",tempVar) then GF_MessageData.foundTrades = GF_MessageData.foundTrades + .5 if showanyway == true then print("x## trade .5") end end -- Trades "] x2"
		if string.find(arg1, "\]%s?%d+%s?[\+\-][\+\-][%p%s]",tempVar) then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1.5 if showanyway == true then print("+- trade 1") end end -- Trades "[hitem] 36+-"
		lfs = tempVar -- To detect one word after "]" (eg "[hitem] ah ")... For detecting trades
		while true do lfs,lfe,wordString = string.find(arg1, "%]%s?x?%d?%d?x?%p?%s?(%a+)[%p%s]",lfs) if not wordString then break end if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end
			if GF_TRADE_PREFIX_SUFFIX[wordString] then GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_TRADE_PREFIX_SUFFIX[wordString] if showanyway == true then print(wordString.." trade ] "..GF_TRADE_PREFIX_SUFFIX[wordString]) end end
			_,_,wordString = string.find(arg1, "^%]%s?x?%d?%d?x?%p?%s?(%a+%s%a+)[%p%s]",lfs) if wordString then wordString = gsub(wordString," ","") if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end if GF_TRADE_PREFIX_SUFFIX[wordString] then GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_TRADE_PREFIX_SUFFIX[wordString] if showanyway == true then print(wordString.." trade ] "..GF_TRADE_PREFIX_SUFFIX[wordString]) end end end
			_,_,wordString = string.find(arg1, "^%]%s?x?%d?%d?x?%p?%s?(%a+%s%a+%s%a+)[%p%s]",lfs) if wordString then wordString = gsub(wordString," ","") if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end if GF_TRADE_PREFIX_SUFFIX[wordString] then GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_TRADE_PREFIX_SUFFIX[wordString] if showanyway == true then print(wordString.." trade ] "..GF_TRADE_PREFIX_SUFFIX[wordString]) end end end
			lfs = lfe
		end
	end
	if string.find(arg1,"%[") then -- To detect "["
		if string.find(arg1, "[%p%s]%d+%s?x%s?%[") then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1 if showanyway == true then print("##x [ trade 1") end end -- Trades " 2x ["
		if string.find(arg1, "[%p%s]x%s?%d+%s?%[") then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1 if showanyway == true then print("x## [ trade 1") end end -- Trades " x2 ["
		lfs = 1 -- To detect one word before "[" (eg "free [hitem] ")... For detecting trades
		while true do lfs,lfe,wordString = string.find(arg1, "[%p%s](%a+)%s?%s?x?%d?%d?x?h?i?t?e?m?%s?%[",lfs) if not wordString then break end if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end
			if GF_TRADE_PREFIX_SUFFIX[wordString] then
				GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_TRADE_PREFIX_SUFFIX[wordString]
				if showanyway == true then print(wordString.." trade "..GF_TRADE_PREFIX_SUFFIX[wordString]) end
				
				_,_,wordString = string.find(arg1, "%]%s?x?%d?%d?x?%p?%s?(%a+)[%p%s]",lfe)
				if wordString then
					if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end
					if GF_TRADE_PREFIX_SUFFIX[wordString] then
						GF_MessageData.foundTrades = GF_MessageData.foundTrades + 2.5
						if showanyway == true then print(wordString.." trade "..GF_TRADE_PREFIX_SUFFIX[wordString]) end
					end
				end
			end
			lfs = lfe
		end
	end
	lfs = 1 -- To detect space/number+/word/space combinations(eg " 10th " = tenth, " 5g " = 5gold)
	while true do
		lfs,lfe,wordString,tempVar = string.find(arg1,"[%p%s](%d+%s?(%a+))[%p%s]",lfs)
		if not wordString then break end
		wordString = gsub(wordString," ","")
		if GF_WORD_FIX[tempVar] then wordString = string.sub(wordString,1,string.len(tempVar)*-1-1)..GF_WORD_FIX[tempVar] end
		if GF_WORD_SPECIAL_COMBINATION[wordString] then
			arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe)
			lfs = lfs + string.len(GF_WORD_SPECIAL_COMBINATION[wordString])
		elseif GF_WORD_GOLD[tempVar] then
			arg1 = string.sub(arg1,1,lfs)..GF_WORD_GOLD[tempVar]..string.sub(arg1,lfe)
			lfs = lfs + string.len(GF_WORD_GOLD[tempVar])
			if GF_MessageData.foundTrades < 2 and tempVar ~= "bh" then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 2 end
		else
			lfs = lfe
		end
	end

	lfs = 1 -- To detect one word before "<" (eg " join <guild>")... For detecting guild
	while true do lfs,lfe,wordString = string.find(arg1, " (%a+)%s?<",lfs) if not wordString then break end if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end if GF_GUILD_PREFIX_SUFFIX[wordString] then GF_MessageData.foundGuild = GF_MessageData.foundGuild + GF_GUILD_PREFIX_SUFFIX[wordString] if showanyway == true then print(wordString.." guild "..GF_GUILD_PREFIX_SUFFIX[wordString]) end end lfs = lfe end

	tempVar = string.find(arg1,">")
	if tempVar then -- To detect ">"
		lfs = tempVar
		while true do lfs,lfe,wordString = string.find(arg1, ">%s?(%a+)[%p%s]",lfs) if not wordString then break end if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end if GF_GUILD_PREFIX_SUFFIX[wordString] then GF_MessageData.foundGuild = GF_MessageData.foundGuild + GF_GUILD_PREFIX_SUFFIX[wordString] if showanyway == true then print(wordString.." guild "..GF_GUILD_PREFIX_SUFFIX[wordString]) end end lfs = lfe end
		lfs = tempVar
		while true do lfs,lfe,wordString = string.find(arg1, ">%s?(%a+ %a+)[%p%s]",lfs) if not wordString then break end wordString = gsub(wordString," ","") if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end if GF_GUILD_PREFIX_SUFFIX[wordString] then GF_MessageData.foundGuild = GF_MessageData.foundGuild + GF_GUILD_PREFIX_SUFFIX[wordString] if showanyway == true then print(wordString.." guild "..GF_GUILD_PREFIX_SUFFIX[wordString]) end end lfs = lfe end
	end

	lfs = 1 -- To detect words between "()" (eg "(rp)","(human only)")... To help detect guild recruitment messages.
	while true do lfs,lfe,wordString = string.find(arg1, "[%(%[]([%w%s]+)[%)%]]",lfs)
		if not wordString then break end
		if string.sub(arg1,lfs-6,lfs-2) == "hitem" then
			for tempVar in string.gfind(wordString, "(%a+)") do if GF_WORD_FIX_ITEM_NAME[tempVar] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_FIX_ITEM_NAME[tempVar]..string.sub(arg1,lfe) end end
		else
			wordString = gsub(wordString," ","")
			if GF_WORD_FIX[wordString] then wordString = GF_WORD_FIX[wordString] end
			if GF_GUILD_BRACKET[wordString] then
				GF_MessageData.foundGuild = GF_MessageData.foundGuild + GF_GUILD_BRACKET[wordString] if showanyway == true then print(wordString.." guild "..GF_GUILD_BRACKET[wordString]) end
			end
		end
		lfs = lfe
	end

	lfs = 1 -- To detect words with explanation points "!" (eg "hungry!","lost!")... To help identify quests with short names.
	while true do lfs,lfe,wordString = string.find(arg1, " (%a+%s?!) ",lfs) if not wordString then break end wordString = gsub(wordString," ","") if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe) end lfs = lfs + string.len(wordString) + 1 end
	lfs = 1 -- To detect "faces"(eg ":d",":p")
	while true do lfs,lfe,wordString = string.find(arg1, " (%p%a+) ",lfs) if not wordString then break end if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe) end lfs = lfs + string.len(wordString) + 1 end

	lfs,lfe,wordString = string.find(arg1,"%d?%s?\-?([\+±])\-?%s?%d?")
	if lfs then -- To detect "+- or ±"
		if wordString == "±" then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1 if showanyway == true then print("± trade 1") end
		elseif string.find(arg1, "[\+\-][\+\-]%s?%d",lfs) then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1 if showanyway == true then print("+-d% trade 1") end
		elseif string.find(arg1, "%d%s?[\+\-][\+\-]",lfs) then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1 if showanyway == true then print("d%+- trade 1") end end
	end

-- Quest Search
	for word in string.gfind(arg1, "(%a+)") do
		if GF_WORD_FIX_BYPASS[word] then _,_,wordString = string.find(arg1,"(%a+)%s?"..word) if wordString and GF_WORD_SKIP[wordString] then table.insert(wordTable[1], wordString) end end
		if not GF_WORD_SKIP[word] then table.insert(wordTable[1], word) end
	end

-- It would be nice if I could process all at same time...
-- To do so, I would need to check for beforequest then afterquest... put beforequest in wordtable1, afterquest in wordtable2, then do the trades/guild in wordtable3/4?
-- would it cause an error with secondwords?

	tempVar = getn(wordTable[1])
	for j=0,4 do
		lfs = 1
		while lfs <= tempVar do
			if wordTable[1][lfs+j] then
				wordString = wordTable[1][lfs]
				for k=1, j do wordString = wordString..wordTable[1][lfs+k] end
				if GF_WORD_FIX_BEFORE_QUEST[wordString] then
					wordTable[1][lfs] = GF_WORD_FIX_BEFORE_QUEST[wordString]
					for k=1, j do table.remove(wordTable[1],lfs+1) tempVar=tempVar-1 end
					if wordString ~= GF_WORD_FIX_BEFORE_QUEST[wordString] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[1][lfs-1]
						for k=1, j do if wordTable[1][lfs-1+k] then wordString = wordString..wordTable[1][lfs-1+k] end end
						if GF_WORD_FIX_BEFORE_QUEST[wordString] then
							wordTable[1][lfs-1] = GF_WORD_FIX_BEFORE_QUEST[wordString]
							for k=1, j do if wordTable[1][lfs] then table.remove(wordTable[1],lfs) tempVar=tempVar-1 end end
						end
					end
				elseif GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString] then
					wordTable[1][lfs] = GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][1]
					for k=1, j do table.remove(wordTable[1],lfs+1) tempVar=tempVar-1 end
					table.insert(wordTable[1],lfs+1,GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][2]) tempVar=tempVar+1
					if wordString ~= GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][1]..GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][2] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[1][lfs-1]
						for k=1, j do if wordTable[1][lfs-1+k] then wordString = wordString..wordTable[1][lfs-1+k] end end
						if GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString] then
							wordTable[1][lfs-1] = GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][1]
							for k=1, j do if wordTable[1][lfs] then table.remove(wordTable[1],lfs) tempVar=tempVar-1 end end
							table.insert(wordTable[1],lfs,GF_WORD_FIX_BEFORE_QUEST_SECOND[wordString][2]) tempVar=tempVar+1
						end
					end
				elseif GF_WORD_FIX_QUEST_DUNGEON[wordString] then
					wordTable[1][lfs] = GF_WORD_FIX_QUEST_DUNGEON[wordString]
					for k=1, j do table.remove(wordTable[1],lfs+1) tempVar=tempVar-1 end
					if wordString ~= GF_WORD_FIX_QUEST_DUNGEON[wordString] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[1][lfs-1]
						for k=1, j do if wordTable[1][lfs-1+k] then wordString = wordString..wordTable[1][lfs-1+k] end end
						if GF_WORD_FIX_QUEST_DUNGEON[wordString] then
							wordTable[1][lfs-1] = GF_WORD_FIX_QUEST_DUNGEON[wordString]
							for k=1, j do if wordTable[1][lfs] then table.remove(wordTable[1],lfs) tempVar=tempVar-1 end end
						end
					end
				end
			end
			lfs = lfs + 1
		end
	end
	for i=1, tempVar do if wordTable[1][i] == "x" then table.remove(wordTable[1],i) i = i - 1 tempVar=tempVar-1 end end
	if wordTable[1][1] == "hquest" and tempVar < 10 then
		wordString = ""
		if string.sub(arg1,-2) == "? " then
			if wordTable[1][2] then
				for i=2,tempVar do wordString = wordString..wordTable[1][i] end
				if GF_WORD_QUEST[wordString] then GF_MessageData.foundLFG = 2 end
			end
		end
		lfs = 1 -- To detect punctuation after "]" (eg "[hitem] + ")... For detecting groups
		while true do lfs,lfe,wordString = string.find(arg1, "\]%s?(%p)[%p%s]",lfs) if not wordString then break end if wordString == "+" or wordString == "?" then GF_MessageData.foundLFG = 2 end lfs = lfe end
	elseif string.sub(arg1,-2) == "? " and tempVar < 9 then
		wordString = ""
		for i=1,tempVar do wordString = wordString..wordTable[1][i] end
		if GF_WORD_QUEST[wordString] then GF_MessageData.foundLFG = 2 end
	elseif string.sub(arg1,1,2) == " +" and GF_WORD_ROLES[wordTable[1][1]] then GF_MessageData.foundLFM = 2 end
	for j=0,7 do
		for i=1, tempVar do
			if wordTable[1][i+j] then
				wordString = wordTable[1][i]
				for k=1, j do wordString = wordString..wordTable[1][i+k] end
				if not GF_GROUP_WORD_BYPASS[wordString] then
					if GF_WORD_QUEST[wordString] then
						if showanyway == true then print(wordString.." quest") end
						if not GF_MessageData.foundQuest[1] or GF_WORD_QUEST[wordString][2] > GF_MessageData.foundQuest[1] or GF_MessageData.foundQuest[2] < j then GF_MessageData.foundQuest[1] = GF_WORD_QUEST[wordString][2] GF_MessageData.foundQuest[2] = j end
						GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + .3 GF_MessageData.foundGuildExclusion = GF_MessageData.foundGuildExclusion + .1
					end
					if not GF_LFM_BYPASS[wordString] and GF_WORD_QUEST[wordString] then
						if GF_LFM_AFTER[wordTable[1][i+j+1]] or GF_LFM_BEFORE[wordTable[1][i-1]] or (wordTable[1][i+j+2] and GF_LFM_AFTER[wordTable[1][i+j+1]..wordTable[1][i+j+2]]) or (wordTable[1][i-2] and GF_LFM_BEFORE[wordTable[1][i-2]..wordTable[1][i-1]])
						or (wordTable[1][i-3] and (GF_LFM_BEFORE[wordTable[1][i-3]..wordTable[1][i-2]..wordTable[1][i-1]])) then
							if GF_MessageData.foundLFM == 0 then GF_MessageData.foundLFM = 1 end GF_MessageData.foundLFMPreSuf = 1 GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1.5
						end

						if (GF_LFG_AFTER[wordTable[1][i+j+1]] or (GF_WORD_FIX_LFM[wordTable[1][i+j+1]] and GF_LFG_AFTER[GF_WORD_FIX_LFM[wordTable[1][i+j+1]]]))
						or (GF_LFG_BEFORE[wordTable[1][i-1]] or (GF_WORD_FIX_LFM[wordTable[1][i-1]] and GF_LFG_BEFORE[GF_WORD_FIX_LFM[wordTable[1][i-1]]]))
						or wordTable[1][i+j+2] and GF_LFG_AFTER[wordTable[1][i+j+1]..wordTable[1][i+j+2]] or wordTable[1][i-2] and GF_LFG_BEFORE[wordTable[1][i-2]..wordTable[1][i-1]] then
							if GF_MessageData.foundLFG == 0 and GF_MessageData.foundLFMPreSuf == 0 then GF_MessageData.foundLFG = 1 end GF_MessageData.foundLFGPreSuf = 1 GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1.5
						end
					end
				end
			end
		end
	end

-- Normal Search
	for j=0,4 do
		lfs = 1
		while lfs <= tempVar do
			if wordTable[1][lfs+j] then
				wordString = wordTable[1][lfs]
				for k=1, j do wordString = wordString..wordTable[1][lfs+k] end
				if GF_WORD_FIX[wordString] then
					wordTable[1][lfs] = GF_WORD_FIX[wordString]
					for k=1, j do table.remove(wordTable[1],lfs+1) tempVar=tempVar-1 end
					if wordString ~= GF_WORD_FIX[wordString] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[1][lfs-1]
						for k=1, j do if wordTable[1][lfs-1+k] then wordString = wordString..wordTable[1][lfs-1+k] end end
						if GF_WORD_FIX[wordString] then
							wordTable[1][lfs-1] = GF_WORD_FIX[wordString]
							for k=1, j do if wordTable[1][lfs] then table.remove(wordTable[1],lfs) tempVar=tempVar-1 end end
						end
					end
				elseif GF_WORD_FIX_SECOND[wordString] and (not GF_TRADE_PORTAL_SKIP[wordString] or not GF_TRADE_PORTAL_SKIP_NAMES[wordTable[1][lfs-1]]) then
					wordTable[1][lfs] = GF_WORD_FIX_SECOND[wordString][1]
					for k=1, j do table.remove(wordTable[1],lfs+1) tempVar=tempVar-1 end
					table.insert(wordTable[1],lfs+1,GF_WORD_FIX_SECOND[wordString][2]) tempVar=tempVar+1
					if wordString ~= GF_WORD_FIX_SECOND[wordString][1]..GF_WORD_FIX_SECOND[wordString][2] then
						if lfs > 1 then lfs = lfs - 2 else lfs = lfs - 1 end
					elseif lfs > 1 then
						wordString = wordTable[1][lfs-1]
						for k=1, j do if wordTable[1][lfs-1+k] then wordString = wordString..wordTable[1][lfs-1+k] end end
						if GF_WORD_FIX_SECOND[wordString] then
							wordTable[1][lfs-1] = GF_WORD_FIX_SECOND[wordString][1]
							for k=1, j do if wordTable[1][lfs] then table.remove(wordTable[1],lfs) tempVar=tempVar-1 end end
							table.insert(wordTable[1],lfs,GF_WORD_FIX_SECOND[wordString][2]) tempVar=tempVar+1
						end
					end
				end
			end
			lfs = lfs + 1
		end
	end
	if tempVar < 5 then
		wordString = ""
		lfs = nil
		for i=1,tempVar do wordString = wordString..wordTable[1][i] if not GF_TRADE_COMMON_NAMES[wordTable[1][i]] then lfs = true end end
		if GF_WORD_TRADE_PHRASE[wordString] then GF_MessageData.foundTrades = 3 end
		if GF_WORD_GUILD_PHRASE[wordString] then GF_MessageData.foundGuild = 3 end
		if string.sub(arg1,-2) == "? " then
			if (GF_WORD_DUNGEON[wordString] or GF_WORD_RAID[wordString] or GF_WORD_PVP[wordString] or GF_GROUP_PHRASE_QUESTION[wordString]) then GF_MessageData.foundLFG = 2
			elseif GF_WORD_TRADE_QUESTION[wordString] then GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_WORD_TRADE_QUESTION[wordString]
			elseif GF_WORD_GUILD_QUESTION[wordString] then GF_MessageData.foundGuild = 3
			elseif tempVar > 2 then
				if GF_TRADE_FIRST_TWO[wordTable[1][1]..wordTable[1][2]] then GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_TRADE_FIRST_TWO[wordTable[1][1]..wordTable[1][2]]
				elseif not lfs then	GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1.25 end
			end
		elseif tempVar > 2 then
			if GF_LFM_AFTER[wordTable[1][tempVar-1]..wordTable[1][tempVar]] then GF_MessageData.foundLFM = 2
			elseif GF_TRADE_FIRST_TWO[wordTable[1][1]..wordTable[1][2]] then GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_TRADE_FIRST_TWO[wordTable[1][1]..wordTable[1][2]]
			elseif not lfs then	GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1.25 end
		end
		if GF_TRADE_FIRST_LAST[wordTable[1][1]] and GF_TRADE_FIRST_LAST[wordTable[1][1]][wordTable[1][tempVar]] then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 3
		elseif GF_MessageData.foundLFM == 0 and GF_GROUP_FIRST_LAST[wordTable[1][1]] and GF_GROUP_FIRST_LAST[wordTable[1][1]][wordTable[1][tempVar]] then GF_MessageData.foundLFM = 2
		elseif GF_GUILD_FIRST_LAST[wordTable[1][1]] and GF_GUILD_FIRST_LAST[wordTable[1][1]][wordTable[1][tempVar]] then GF_MessageData.foundGuild = GF_MessageData.foundGuild + 3 end
	end
	for j=0,3 do
		for i=1, getn(wordTable[1]) do
			if wordTable[1][i+j] then
				wordString = wordTable[1][i]
				for k=1, j do wordString = wordString..wordTable[1][i+k] end
				if GF_WORD_IGNORE[wordString] then GF_MessageData.foundIgnore = GF_MessageData.foundIgnore + GF_WORD_IGNORE[wordString] if showanyway == true then print(wordString.." ignore "..GF_WORD_IGNORE[wordString]) end end
				if GF_WORD_HC[wordString] then GF_MessageData.foundHC = true
				elseif GF_WORD_NOT_HC[wordString] then GF_MessageData.foundNotHC = true
				elseif GF_WORD_GUILD[wordString] then
					if showanyway == true then print(wordString.." guild "..GF_WORD_GUILD[wordString]) end
					if GF_MessageData.foundGuild < 100 then GF_MessageData.foundGuild = GF_MessageData.foundGuild + GF_WORD_GUILD[wordString] 
					elseif GF_MessageData.foundGuild > 100 and GF_WORD_GUILD[wordString] < 100 then GF_MessageData.foundGuild = GF_MessageData.foundGuild + GF_WORD_GUILD[wordString] end
				elseif GF_GUILD_WORD_EXCLUSION[wordString] then GF_MessageData.foundGuildExclusion = GF_MessageData.foundGuildExclusion + GF_GUILD_WORD_EXCLUSION[wordString] if showanyway == true then print(wordString.." guildex") end end

				if GF_WORD_LFM[wordString] then if GF_WORD_LFM[wordString] > GF_MessageData.foundLFM then GF_MessageData.foundLFM = GF_WORD_LFM[wordString] GF_MessageData.lfmlfgName = wordString if showanyway == true then print(wordString.." lfm") end end
				elseif GF_WORD_LFG[wordString] then if GF_WORD_LFG[wordString] > GF_MessageData.foundLFG then GF_MessageData.foundLFG = GF_WORD_LFG[wordString] if showanyway == true then print(wordString.." lfg") end end end

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
					table.insert(GF_MessageData.groupName,wordString) GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + .3 GF_MessageData.foundGuildExclusion = GF_MessageData.foundGuildExclusion + .1 end

				if wordTable[1][i-1] == "summon" and (GF_WORD_LEVEL_ZONE[wordString] or GF_WORD_DUNGEON[wordString] or GF_WORD_RAID[wordString] or GF_WORD_PVP[wordString]) then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 1 end
				if GF_WORD_TRADE[wordString] then
					if showanyway == true then print(wordString.." trade "..GF_WORD_TRADE[wordString]) end
					if GF_MessageData.foundTrades < 100 then GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_WORD_TRADE[wordString]
					elseif GF_MessageData.foundTrades > 100 and GF_WORD_TRADE[wordString] < 100 then GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_WORD_TRADE[wordString] end
				elseif GF_TRADE_WORD_EXCLUSION[wordString] then GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + GF_TRADE_WORD_EXCLUSION[wordString] if showanyway == true then print(wordString.." tradesex") end end

				if not GF_LFM_BYPASS[wordString] and (GF_WORD_DUNGEON[wordString] or GF_WORD_RAID[wordString] or GF_WORD_PVP[wordString] or (GF_WORD_QUEST[wordString] and not GF_GROUP_WORD_BYPASS[wordString])) then
						if GF_LFM_AFTER[wordTable[1][i+j+1]] or GF_LFM_BEFORE[wordTable[1][i-1]] or (wordTable[1][i+j+2] and GF_LFM_AFTER[wordTable[1][i+j+1]..wordTable[1][i+j+2]]) or (wordTable[1][i-2] and GF_LFM_BEFORE[wordTable[1][i-2]..wordTable[1][i-1]])
						or (wordTable[1][i-3] and (GF_LFM_BEFORE[wordTable[1][i-3]..wordTable[1][i-2]..wordTable[1][i-1]])) then
						if GF_MessageData.foundLFM == 0 then GF_MessageData.foundLFM = 1 end if wordTable[1][i-1] and GF_LFMLFG_PREFIX_GUILD[wordTable[1][i-1]] then GF_MessageData.foundGuildExclusion = GF_MessageData.foundGuildExclusion + 1 end GF_MessageData.foundLFMPreSuf = 1 GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1.5
					end

					if (GF_LFG_AFTER[wordTable[1][i+j+1]] or (GF_WORD_FIX_LFM[wordTable[1][i+j+1]] and GF_LFG_AFTER[GF_WORD_FIX_LFM[wordTable[1][i+j+1]]]))
					or (GF_LFG_BEFORE[wordTable[1][i-1]] or (GF_WORD_FIX_LFM[wordTable[1][i-1]] and GF_LFG_BEFORE[GF_WORD_FIX_LFM[wordTable[1][i-1]]]))
					or wordTable[1][i+j+2] and GF_LFG_AFTER[wordTable[1][i+j+1]..wordTable[1][i+j+2]] or wordTable[1][i-2] and GF_LFG_BEFORE[wordTable[1][i-2]..wordTable[1][i-1]] then
						if GF_MessageData.foundLFG == 0 and GF_MessageData.foundLFMPreSuf == 0 then GF_MessageData.foundLFG = 1 end if wordTable[1][i-1] and GF_LFMLFG_PREFIX_GUILD[wordTable[1][i-1]] then GF_MessageData.foundGuildExclusion = GF_MessageData.foundGuildExclusion + 1 end GF_MessageData.foundLFGPreSuf = 1 GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1.5
					end
				end
			end
		end
	end
	if GF_MessageData.groupName[1] and not GF_MessageData.foundQuest[1] and not GF_MessageData.foundDungeon and not GF_MessageData.foundRaid then lfs = 0 for i=1,getn(GF_MessageData.groupName) do if string.find(GF_MessageData.lfmlfgName,GF_MessageData.groupName[i]) then lfs = lfs + 1 end end if lfs == getn(GF_MessageData.groupName) then GF_MessageData.foundLFM = 0 GF_MessageData.foundLFG = 0 end end
	if GF_MessageData.foundGuild < 100 and string.find(arg1, "[<~][a-zA-Z0-9%&%-/ ]+[>~]") then GF_MessageData.foundGuild = GF_MessageData.foundGuild + 2 GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1 end
	while GF_MessageData.foundGuild > 100 do GF_MessageData.foundGuild = GF_MessageData.foundGuild - 100 end
	GF_MessageData.foundGuild = GF_MessageData.foundGuild - GF_MessageData.foundGuildExclusion
	
	while GF_MessageData.foundTrades > 100 do GF_MessageData.foundTrades = GF_MessageData.foundTrades - 100 end
	GF_MessageData.foundTrades = GF_MessageData.foundTrades - GF_MessageData.foundTradesExclusion

	if GF_MessageData.foundLFM > GF_MessageData.foundLFG then GF_MessageData.foundLFG = -10 end
	if GF_MessageData.foundIgnore > 0 then
		GF_MessageData.foundLFM = GF_MessageData.foundLFM - GF_MessageData.foundIgnore
		GF_MessageData.foundLFG = GF_MessageData.foundLFG - GF_MessageData.foundIgnore
	end
	GF_MessageData.foundLFM = GF_MessageData.foundLFM + GF_MessageData.foundLFMPreSuf
	GF_MessageData.foundLFG = GF_MessageData.foundLFG + GF_MessageData.foundLFGPreSuf

	if showanyway == true then
		print(arg1)
		for i=1, getn(wordTable[1]) do
			print(wordTable[1][i])
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
		for i=1, getn(wordTable[1]) do if GF_WORD_LEVEL_ZONE[wordTable[1][i]] then GF_MessageData.foundQuest[1] = GF_WORD_LEVEL_ZONE[wordTable[1][i]] end end
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
			or ((GF_PlayerMessages[arg2][1][1] + 120 > time() and arg1 == GF_PlayerMessages[arg2][2][1]) and (GF_PlayerMessages[arg2][1][2] + 120 > time() and arg1 == GF_PlayerMessages[arg2][2][2])) then		-- Found Spammer
				if GF_SavedVariables.autoblacklist and not GF_BlackList[GF_RealmName][arg2] and string.len(arg1) > 120 then
					if GF_WhoTable[GF_RealmName][arg2] and GF_WhoTable[GF_RealmName][arg2][4] + 86400 > time() then -- Data must be less than a day old to autoblacklist or block lowlevel
						if GF_WhoTable[GF_RealmName][arg2][1] <= GF_SavedVariables.autoblacklistminlevel then																																						-- Blacklist if below level filter
							table.insert(GF_BlackList[GF_RealmName], 1, { arg2, "("..GF_WhoTable[GF_RealmName][arg2][1]..") "..arg1 })
							GF_BlackList[GF_RealmName][arg2] = true
							GF_UpdateBlackListItems()
							return 8	
						end
					else
						if GF_SavedVariables.usewhoongroups and not GF_WhoQueue[name] then GF_WhoTable[GF_RealmName][arg2] = nil if GF_PlayingOnTurtle and not GF_SavedVariables.friendsToRemove[name] then GF_AddNameToWhoQueue(arg2,true,true) else GF_AddNameToWhoQueue(arg2,true) end end
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

function GF_GetGroupInformation(arg1,arg2,sentTime) -- Searches messages for Groups and similiar functions
	if (GF_SavedVariables.FilterLevel == 1 and (GF_MessageData.foundLFM >=1 or GF_MessageData.foundLFG >=1))
	or (GF_SavedVariables.FilterLevel == 2 and (GF_MessageData.foundLFM >=2 or GF_MessageData.foundLFG >=2) and (GF_MessageData.foundRaid or GF_MessageData.foundDungeon or GF_MessageData.foundQuest[1] or GF_MessageData.foundPvP or GF_MessageData.foundClass))
	or (GF_SavedVariables.FilterLevel == 3 and (GF_MessageData.foundLFM >=3 or GF_MessageData.foundLFG >=3) and (GF_MessageData.foundRaid or GF_MessageData.foundDungeon or GF_MessageData.foundQuest[1] or GF_MessageData.foundPvP or GF_MessageData.foundClass)) then
	else return end
	
	local entry = {}
	entry.op = arg2
	entry.message = arg1
	if GF_MessageData.foundRaid then entry.type = "R" entry.flags = {} for i=1, getn(GF_MessageData.foundDFlags) do table.insert(entry.flags, GF_GROUP_IDS[GF_MessageData.foundDFlags[i]]) end
	elseif GF_MessageData.foundDungeon and (not GF_MessageData.foundQuest[1] or GF_MessageData.foundQuest[1] == 0 or GF_MessageData.foundDungeon >= GF_MessageData.foundQuest[1]) then
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
					table.remove(GF_MessageList[GF_RealmName], i)
					return entry, 2
				end
			end
			table.remove(GF_MessageList[GF_RealmName], i)
			break
		end
	end
	return entry, 1
end
function GF_SearchMessageForTextString(msg,textstring,entry,buttontext)
	for w in string.gfind(textstring, "([%w%s]+),") do
		if string.find(msg, w) then return true end
		for i=1, getn(entry.flags) do
			if entry.flags[i] == GF_GROUP_IDS[string.lower(gsub(w," ",""))] or entry.flags[i] == string.upper(gsub(w," ", "")) then return true end
		end
	end
	for i=1, getn(entry.flags) do
		if GF_SavedVariables.searchbuttonstext[entry.flags[i]] then return true end
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
function CompileFixedQuests()
	GF_SavedVariables.questconversion = {}
	local lfs,lfe,wordString
	for entryname,wtable in GF_QUEST_CONVERT do
		if wtable[4] and wtable[4] < 0 then wtable[4] = GF_QUEST_CONVERT_NEGATIVE_ID[math.abs(wtable[4])]
		elseif wtable[3] < 0 then wtable[3] = GF_QUEST_CONVERT_NEGATIVE_ID[math.abs(wtable[3])] end
		local wordTable = {}
		local arg1 = entryname
		lfs = 1 -- To detect words with explanation points "!" (eg "hungry!","lost!")... To help identify quests with short names.
		while true do lfs,lfe,wordString = string.find(arg1, "(%a+!)",lfs) if not wordString then break end if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs-1)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe+1) end lfs = lfs + string.len(wordString) + 1 end
		lfs = 1 -- To detect space/word/number+/space combinations(eg " k10" = lowerkarazhan)
		while true do lfs,lfe,wordString = string.find(arg1,"(%a+%s?[:%-]?%s?%d+)",lfs) if not wordString then break end wordString = gsub(wordString,"[%s:%-]","") if GF_WORD_SPECIAL_COMBINATION[wordString] then arg1 = string.sub(arg1,1,lfs-1)..GF_WORD_SPECIAL_COMBINATION[wordString]..string.sub(arg1,lfe+1) end lfs = lfs + string.len(wordString) + 1 end

		for word in string.gfind(arg1, "(%a+)") do
			if GF_WORD_FIX_BYPASS[word] then _,_,wordString = string.find(arg1,"(%a+)%s?"..word) if wordString and GF_WORD_SKIP[wordString] then table.insert(wordTable, wordString) end end
			if not GF_WORD_SKIP[word] then table.insert(wordTable, word) end
		end
		for j=0,4 do
			for i=1, getn(wordTable) do
				if wordTable[i+j] then
					wordString = wordTable[i]
					for k=1, j do wordString = wordString..wordTable[i+k] end
					if GF_WORD_FIX_BEFORE_QUEST[wordString] then
						wordTable[i] = GF_WORD_FIX_BEFORE_QUEST[wordString]
						for k=1, j do table.remove(wordTable,i+k) end
						if wordString ~= GF_WORD_FIX_BEFORE_QUEST[wordString] then if i > 1 then i = i - 2 else i = i - 1 end end
					end
				end
			end
		end

		wordString = ""
		for i=1, getn(wordTable) do if wordTable[i] then wordString = wordString..wordTable[i] end end
		if not GF_SavedVariables.questconversion[wordString] or GF_SavedVariables.questconversion[wordString][1] < wtable[1] then GF_SavedVariables.questconversion[wordString] = { wtable[1],wtable[2],wtable[3],wtable[4]} end
		if wordTable[getn(wordTable)] == "x" then print(arg1) end
		if wordTable[1] == "wanted" then 
			wordString = ""
			for i=2, getn(wordTable) do if wordTable[i] then wordString = wordString..wordTable[i] end end
			if not GF_SavedVariables.questconversion[wordString] or GF_SavedVariables.questconversion[wordString][1] < wtable[1] then GF_SavedVariables.questconversion[wordString] = { wtable[1],wtable[2],wtable[3],wtable[4]} end
		end
		if wordTable[2] and wordTable[3] and wordTable[1]..wordTable[2]..wordTable[3] == "killonsight" then
			wordString = ""
			for i=4, getn(wordTable) do if wordTable[i] then wordString = wordString..wordTable[i] end end
			if not GF_SavedVariables.questconversion[wordString] or GF_SavedVariables.questconversion[wordString][1] < wtable[1] then GF_SavedVariables.questconversion[wordString] = { wtable[1],wtable[2],wtable[3],wtable[4]} end
		end
	end
end
function CompileFixedQuestZones(continue) -- /script CompileFixedQuestZones() /script CompileFixedQuestZones(true)
-- Import only 2k at a time so it doesn't lock up the parsing, and need to make sure I only have the highest-level quest
	if not continue then GF_SavedVariables.questconversion = {} end
	local counter = 0
	for entryname,wtable in GF_QUEST_CONVERT do
		if not GF_SavedVariables.questconversion[entryname] and wtable[1] ~= 0 then
			local meta = { ["addon"] = "PFDB" }
			local maps = pfDatabase:SearchQuest(entryname, meta)
			local zone = pfDatabase:GetBestMap(maps)
			GF_SavedVariables.questconversion[entryname] = { wtable[1],wtable[2],wtable[3],zone}
			counter = counter + 1
			if counter > 2500 then print("stopping at 2,500") break end
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