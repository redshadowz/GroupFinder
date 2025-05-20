local GF_CurrentVersion						= 510;

GF_SavedVariables 							= {}
GF_RealmName								= GetRealmName();
local GF_MyName								= UnitName("player");
local GF_WhoCooldownTime					= 10;
local GF_NextAvailableWhoTime				= 0;
local GF_UrgentWhoRequest					= {};
GF_WhoQueue									= {};
GF_WhoTable									= {};
GF_WhoTable[GF_RealmName]					= {};
GF_ClassWhoTable							= {};
local GF_ClassWhoQueue						= {};
local GF_ClassWhoMatchingResults			= 0;
local GF_GetClassWhoState					= 1;
local GF_GetWhoLevel						= 0;
local GF_GetWhoParams						= {};
local GF_GetWhoLevelRange					= 3;
local GF_GetWhoResetTimer					= 900;
local GF_LFGInviteTime						= {};
local GF_RequestInviteTime					= {};

GF_MessageList								= {};
GF_MessageList[GF_RealmName]				= {};
GF_BlackList								= {};
GF_BlackList[GF_RealmName]					= {};
GF_FilteredResultsList						= {};
GF_ResultsListOffset						= 0;
GF_ResultsListOffsetSize					= 20;
GF_BlackListOffset							= 0;
GF_NumLFGSearchButtons						= 0;
GF_LogHistory								= {};
GF_LogHistory[GF_RealmName]					= {};

local GF_OnStartupRunOnce					= true;
local GF_OnStartupQueueURequest				= nil;
local GF_AddonWhoDataToBeSentBuffer			= {};
local GF_AddonAllNamesForResponseToLogin	= {};
local GF_AddonNamesToBeSentAsARequest		= {};
local GF_AddonMakeAResponseToLoginList		= nil;
local GF_AddonOPSentNamesOnLogin			= {};
local GF_AddonGroupDataToBeSentBuffer		= {};
local GF_AddonMakeAListOfGroupsForSending	= nil;
local GF_AddonListOfFriendsGuildiesWithAddon= {};
local GF_AddonTimeSinceLastUpdate			= 0;
local GF_AddonNamesFromWhoSinceLoggedOn		= {};
local GF_AddonNeedToBroadcastSomething		= nil;

GF_AutoAnnounceTimer						= nil;
local GF_WasPartyLeaderBefore				= nil;
local GF_PlayersCurrentlyInGroup			= {};
local GF_Friends							= {};
local GF_Guildies							= {};
local GF_CurrentNumFriends					= 0;
local GF_CurrentNumGuildies					= 0;
local GF_UpdateTicker						= 0;
local GF_TimeTillNextBroadcast				= 5;
local GF_UpdateAndRequestTimer				= 1;
local GF_RequestWhoDataPeriodicallyTimer	= 30;
GF_PlayerMessages							= {};
GF_IncomingMessagePrune						= 0;
local GF_PreviousMessage					= {};
local GF_MiniMapMessages					= { 0,0,0,0,0,0 };
local GF_LogMessageCodes = { GF_LOGGED_GROUPS, GF_LOGGED_NEW, GF_LOGGED_FILTERED, GF_LOGGED_CHAT, GF_LOGGED_TRADES, GF_LOGGED_LOOT, GF_LOGGED_SPAM, GF_LOGGED_BLACKLIST, GF_LOGGED_BELOWLEVEL, GF_LOGGED_ME,  }

GF_WhisperLogCurrentButtonID				= 0;
GF_WhisperLogData							= {}
GF_WhisperLogData[GF_RealmName]				= {}
GF_WhisperLogData[GF_RealmName]["Guild"]	= {}
local GF_MyWhispers							= {}
local GF_MessageData						= {}
local GF_Classes							= { [GF_PRIEST]="PRIEST",[GF_MAGE]="MAGE",[GF_WARLOCK]="WARLOCK",[GF_DRUID]="DRUID",[GF_HUNTER]="HUNTER",[GF_ROGUE]="ROGUE",[GF_WARRIOR]="WARRIOR",[GF_PALADIN]="PALADIN",[GF_SHAMAN]="SHAMAN",
												["PRIEST"]=GF_PRIEST,["MAGE"]=GF_MAGE,["WARLOCK"]=GF_WARLOCK,["DRUID"]=GF_DRUID,["HUNTER"]=GF_HUNTER,["ROGUE"]=GF_ROGUE,["WARRIOR"]=GF_WARRIOR,["PALADIN"]=GF_PALADIN,["SHAMAN"]=GF_SHAMAN }
local GF_ClassColors						= {	["PRIEST"]="ffffff",["MAGE"]="68ccef",["WARLOCK"]="9382c9",["DRUID"]="ff7c0a",["HUNTER"]="aad372",["ROGUE"]="fff468",["WARRIOR"]="c69b6d",["PALADIN"]="f48cba",["SHAMAN"]="0070dd" }
local GF_ClassIDs = { "PRIEST", "MAGE", "WARLOCK", "DRUID", "HUNTER", "ROGUE", "WARRIOR", "PALADIN", "SHAMAN", ["PRIEST"]=1,["MAGE"]=2,["WARLOCK"]=3,["DRUID"]=4,["HUNTER"]=5,["ROGUE"]=6,["WARRIOR"]=7,["PALADIN"]=8,["SHAMAN"]=9 }
local GF_TextColors = { ["CHAT_MSG_SYSTEM"] = "ffff00", ["CHAT_MSG_SAY"] = "ffffff", ["CHAT_MSG_YELL"] = "ff4040", ["CHAT_MSG_CHANNEL"] = "ffc0c0", ["CHAT_MSG_GUILD"] = "40ff40", ["CHAT_MSG_OFFICER"] = "40c040", ["CHAT_MSG_WHISPER"] = "ff80ff",
["CHAT_MSG_WHISPER_INFORM"] = "ff80ff", ["CHAT_MSG_PARTY"] = "aaaaff", ["CHAT_MSG_RAID"] = "ff7f00", ["CHAT_MSG_RAID_LEADER"] = "ff4809", ["CHAT_MSG_RAID_WARNING"] = "ff4800",  ["CHAT_MSG_BATTLEGROUND"] = "ff7f00",
["CHAT_MSG_BATTLEGROUND_LEADER"] = "ffdbb7", ["CHAT_MSG_LOOT"] = "00aa00", ["CHAT_MSG_MONEY"] = "ffff00", ["CHAT_MSG_EMOTE"] = "ff8040", ["CHAT_MSG_TEXT_EMOTE"] = "ff8040", ["CHAT_MSG_COMBAT_FACTION_CHANGE"] = "8080ff",
["CHAT_MSG_COMBAT_XP_GAIN"] = "6f6fff", ["CHAT_MSG_COMBAT_HONOR_GAIN"] = "e0ca0a", ["CHAT_MSG_MONSTER_EMOTE"] = "ff8040" }
local GF_LootFilter = { ["CHAT_MSG_MONEY"] = true, ["CHAT_MSG_LOOT"] = true, ["CHAT_MSG_COMBAT_FACTION_CHANGE"] = true, ["CHAT_MSG_COMBAT_XP_GAIN"] = true, ["CHAT_MSG_COMBAT_HONOR_GAIN"] = true }
local ThingsToHide = { "GF_GroupsInChatCheckButton", "GF_GroupsNewOnlyCheckButton", "GF_GroupsInMinimapCheckButton", "GF_ShowChatCheckButton", "GF_ShowTradesCheckButton", "GF_ShowLootCheckButton", "GF_ShowGuildsCheckButton",
"GF_FrameUseWhoOnGroupsCheckButton", "GF_SearchListDropdown", "GF_GroupsFrameDescriptionEditBox", "GF_AutoFilterCheckButton", "GF_PlaySoundOnResultsCheckButton", "GF_GroupsFrameShowDungeonCheckButton", "GF_GroupsFrameShowRaidCheckButton",
"GF_GroupsFrameShowQuestCheckButton", "GF_GroupsFrameShowOtherCheckButton", "GF_GroupsFrameShowLFMCheckButton", "GF_GroupsFrameShowLFGCheckButton", "GF_ShowSearchButton", "GF_SettingsFrameButton", "GF_ShowBlacklistButton", "GF_LogFrameButton",
"GF_AnnounceToLFGButton", "GF_ResetLFGDescriptionButton", "GF_LogBottomButton", "GF_LogDownButton", "GF_LogUpButton", "GF_LogShowLoot",
"GF_LogShowSpam", "GF_LogShowBlacklist", "GF_LogShowBelowLevel", "GF_MainFrameCloseButton", "GF_GroupsFrame_ResultsPrev", "GF_GroupsFrame_ResultsNext", "GF_LFGSizeDropdown", "GF_LFGLFMDropdown", "GF_LFGDungeonDropdown", "GF_LFGRaidDropdown",
"GF_LFGRoleDropdown", "GF_GroupAutoCheckButton", "GF_LFGDescriptionEditBox", "GF_LFGWhisperButton", "GF_LFGWhoWhisperEditBox", "GF_FrameAnnounceTimerSlider", "GF_LFGWhoClassDropdown", "GF_LFGGetWhoButton",
"GF_LogShowWhisperHistory", "GF_LogShowGroups", "GF_LogShowFiltered", "GF_LogShowChat", "GF_LogShowTrades",} -- "GF_HideMainFrameLeft", "GF_HideMainFrameRight",
local GF_DifficultyColors = { ["RED"] = "FF0000", ["ORANGE"] = "FF8040", ["YELLOW"] = "FFFF00", ["GREEN"] = "1eff00", ["GREY"] = "808080" }

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
		if not GF_SavedVariables.searchbuttonstext then GF_SavedVariables.searchbuttonstext = "" end
		if not GF_SavedVariables.searchlfgtext then GF_SavedVariables.searchlfgtext = "" end
		if not GF_SavedVariables.searchlfgwhispertext then GF_SavedVariables.searchlfgwhispertext = "" end
		if not GF_SavedVariables.lfgwhisperclass then GF_SavedVariables.lfgwhisperclass = GF_WARRIOR end
		if not GF_SavedVariables.announcetimer then GF_SavedVariables.announcetimer = 300 end
		if not GF_SavedVariables.lfgauto then GF_SavedVariables.lfgauto = false end
		if not GF_SavedVariables.lfgsize then GF_SavedVariables.lfgsize = GF_5_MAN end

		if not GF_SavedVariables.logshowgroup then GF_SavedVariables.logshowgroup = true end
		if not GF_SavedVariables.logshowfiltered then GF_SavedVariables.logshowfiltered = true end
		if not GF_SavedVariables.logshowchat then GF_SavedVariables.logshowchat = true end
		if not GF_SavedVariables.logshowtrades then GF_SavedVariables.logshowtrades = true end
		if not GF_SavedVariables.logshowloot then GF_SavedVariables.logshowloot = true end
		if not GF_SavedVariables.logshowspam then GF_SavedVariables.logshowspam = true end
		if not GF_SavedVariables.logshowblacklist then GF_SavedVariables.logshowblacklist = true end
		if not GF_SavedVariables.logshowbelowlevel then GF_SavedVariables.logshowbelowlevel = true end
		if not GF_SavedVariables.showwhisperlogs then GF_SavedVariables.showwhisperlogs = false end

		if not GF_SavedVariables.joinworld then GF_SavedVariables.joinworld = true end
		if not GF_SavedVariables.spamfilter then GF_SavedVariables.spamfilter = true end
		if not GF_SavedVariables.spamfilterduration then GF_SavedVariables.spamfilterduration = 3 end
		if not GF_SavedVariables.systemfilter then GF_SavedVariables.systemfilter = false end
		if not GF_SavedVariables.autoblacklist then GF_SavedVariables.autoblacklist = true end
		if not GF_SavedVariables.autoblacklistminlevel then GF_SavedVariables.autoblacklistminlevel = 12 end
		if not GF_SavedVariables.showoriginalchat then GF_SavedVariables.showoriginalchat = false end
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
	if not GF_MessageList then GF_MessageList = {} end
	if not GF_MessageList[GF_RealmName] then GF_MessageList[GF_RealmName] = {}; end
	if not GF_BlackList then GF_BlackList = {}; end
	if not GF_BlackList[GF_RealmName] then GF_BlackList[GF_RealmName] = {}; end
	if not GF_LogHistory[GF_RealmName] then GF_LogHistory[GF_RealmName] = {} end
	if not GF_WhoTable then GF_WhoTable = {} end
	if not GF_WhoTable[GF_RealmName] then GF_WhoTable[GF_RealmName] = {} end
	if not GF_WhoTable[GF_RealmName]["LOADED"] then GF_WhoTable[GF_RealmName]["LOADED"] = { UnitLevel("player"), GF_Classes[UnitClass("player")], "", time() - 1 } end
	if not GF_WhisperLogData then GF_WhisperLogData = {} end
	if not GF_WhisperLogData[GF_RealmName] then GF_WhisperLogData[GF_RealmName] = {} table.insert(GF_WhisperLogData[GF_RealmName], "Guild") end
	if not GF_WhisperLogData[GF_RealmName]["Guild"] then GF_WhisperLogData[GF_RealmName]["Guild"] = {""} end
		
	if not GF_PreviousMessage then GF_PreviousMessage = {} end
	if not GF_PlayerMessages then GF_PlayerMessages = {} end

	if GF_WhoTable[GF_RealmName]["LOADED"][4] + 86400 < time() then -- Prune the WhoTable once per day
		GF_WhoTable[GF_RealmName]["LOADED"] = { UnitLevel("player"), GF_Classes[UnitClass("player")], "", time() }
		GF_PruneTheWhoTable()
	end
	GF_LogHistory[GF_RealmName].lastLogin = time()
end

function GF_OnLoad() -- Onload, Tooltips, and Frame/Minimap Functions
	SlashCmdList["GroupFinderCOMMAND"] = GF_SlashHandler;
	SLASH_GroupFinderCOMMAND1 = "/gf";
	SLASH_GroupFinderCOMMAND2 = "/groupfinder";
	this:RegisterEvent("CHAT_MSG_SYSTEM");
	this:RegisterEvent("CHAT_MSG_ADDON");
	this:RegisterEvent("PARTY_LEADER_CHANGED");
	this:RegisterEvent("PARTY_MEMBERS_CHANGED");
	this:RegisterEvent("PLAYER_ENTERING_WORLD");
	this:RegisterEvent("RAID_ROSTER_UPDATE");
	this:RegisterEvent("WHO_LIST_UPDATE");
	this:RegisterEvent("ZONE_CHANGED_NEW_AREA");
	this:RegisterEvent("PLAYER_LEAVING_WORLD");
	this:RegisterEvent("GUILD_ROSTER_UPDATE");
	this:RegisterEvent("FRIENDLIST_UPDATE");
	this:RegisterEvent("PARTY_INVITE_REQUEST");
	
	
	local old_ChatFrame_OnEvent = ChatFrame_OnEvent;
	function ChatFrame_OnEvent(event) -- arg1(message), arg2(sender), arg4("Channel#." "(City/Trade)" "channelName"), arg5, (nameOfPlayerWhoLooted), arg7(zoneChannel#), arg8(channel#), arg9("City/Trade" "channelName")
		if GF_FindGroupsAndDisplayCustomChatMessages(event,arg1,arg2,arg9) then old_ChatFrame_OnEvent(event); end
	end
	local old_SendChatMessage = SendChatMessage;
	function SendChatMessage(arg1,arg2,arg3,arg4) -- arg1(message), arg2(chatType(WHISPER/GUILD/CHANNEL/SAY/PARTYETC)), arg3(language), arg4(targetname(or channelname)));
		if arg2 == "WHISPER" then 
			arg4 = string.upper(string.sub(arg4,1,1))..string.lower(string.sub(arg4,2))
			table.insert(GF_MyWhispers,{arg1,arg4})
		end
		old_SendChatMessage(arg1, arg2, arg3, arg4)
	end
	local old_AddIgnore = AddIgnore;
	function AddIgnore(name)
		if not GF_BlackList[GF_RealmName][name] then
			table.insert(GF_BlackList[GF_RealmName], 1, { name, GF_DEFAULT_PLAYER_NOTE })
			GF_BlackList[GF_RealmName][name] = true;
			GF_UpdateBlackListItems()
		end
		old_AddIgnore(name);
	end
	local old_SendWho = SendWho;
	function SendWho(...)
		GF_NextAvailableWhoTime = time() + GF_WhoCooldownTime;
		old_SendWho(unpack(arg));
	end
	local old_FriendsFrame_OnEvent = FriendsFrame_OnEvent;
	function FriendsFrame_OnEvent(...)
		if event ~= "WHO_LIST_UPDATE" or (event == "WHO_LIST_UPDATE" and WhoFrame:IsVisible()) then old_FriendsFrame_OnEvent(event); end
	end
	local old_SetItemRef = SetItemRef;
	function SetItemRef(link,text,button)
		if strsub(link, 1, 6) == "player" then
			local name = strsub(gsub(link, "([^%s]*)%s+([^%s]*)", "%2"),8);
			if name and strlen(name) > 0 then 
				if IsShiftKeyDown() and button == "LeftButton" and not ChatFrameEditBox:IsVisible() then
					for i=1, getn(GF_UrgentWhoRequest) do
						if GF_UrgentWhoRequest[i] == name then table.remove(GF_UrgentWhoRequest, i) break end
					end
					if GF_NextAvailableWhoTime + 1 > time() then 
						DEFAULT_CHAT_FRAME:AddMessage(GF_SENDING_WHO_FOR..name.." - "..math.ceil(GF_NextAvailableWhoTime - time() + getn(GF_UrgentWhoRequest) * 30)..GF_SECONDS, 1, 1, 0.5);
					else
						DEFAULT_CHAT_FRAME:AddMessage(GF_SENDING_WHO_FOR..name, 1, 1, 0.5);
					end
					table.insert(GF_UrgentWhoRequest,name);
					GF_UrgentWhoRequest[name] = time();
					return;
				elseif IsControlKeyDown() and button == "LeftButton" then
					for i=1, GetNumRaidMembers() do
						if UnitName("raid"..i) == name then
							TargetUnit("raid"..i);
							return;
						end
					end
					for i=1, GetNumPartyMembers() do
						if UnitName("party"..i) == name then
							TargetUnit("party"..i);
							return;
						end
					end
					TargetByName(name);
					return;
				elseif IsAltKeyDown() and button == "RightButton" then
					InviteByName(name);
					return;
				end
			end
		elseif strsub(link, 1, 3) == "url" and GF_MainFrame:IsVisible() then
			if string.len(link) > 4 and string.sub(link,1,4) == "url:" then
				GF_UrlCopyFrame:Show()
				GF_UrlCopyFrameEditBox:SetText(string.sub(link,5,string.len(link)))
				GF_UrlCopyFrameEditBox:HighlightText()
				return
			end
		end
		old_SetItemRef(link,text,button)
	end
	local old_GameTooltip_OnShow = GameTooltip:GetScript("OnShow");
	GameTooltip:SetScript("OnShow", GF_GameTooltip_OnShow);
end
function GF_SlashHandler(msg)
	if string.lower(msg) == "reset" then
		GF_MainFrame:ClearAllPoints()
		GF_MainFrame:SetPoint("CENTER", UIParent, "CENTER",0,0)
		GF_GroupsFrame:Show();
		GF_LogFrame:Hide();
		GF_BlackListFrame:Hide();
		GF_SettingsFrame:Hide();
		GF_SavedVariables.mainframestatus = 0;
		GF_SavedVariables.mainframelogisopen = nil;
		GF_SavedVariables.mainframewidth = nil;
		GF_SavedVariables.mainframeheight = nil;
		GF_SavedVariables.mainframeishidden = nil
		GF_MainFrame:Show();
		GF_UpdateMainFrame()
	elseif string.lower(msg) == "toggle" then
		GF_ToggleMainFrame()
	else
		DEFAULT_CHAT_FRAME:AddMessage("'/gf reset' to reset screen position", 1, 1, 0.5)
		DEFAULT_CHAT_FRAME:AddMessage("'/gf toggle' to toggle the frame", 1, 1, 0.5)
	end
end
function GF_GameTooltip_OnShow()
	if UnitIsPlayer("mouseover") and UnitIsFriend("player","mouseover") then
		GF_WhoTable[GF_RealmName][UnitName("mouseover")] = { UnitLevel("mouseover"), GF_Classes[UnitClass("mouseover")], GetGuildInfo("mouseover") or "", time() }
	end
	if old_GameTooltip_OnShow then old_GameTooltip_OnShow(event) end
end
function GF_ShowTooltip()
	if GF_GenTooltips[this:GetName()] then
		GameTooltip:SetOwner(getglobal(this:GetName()), "ANCHOR_TOP");
		GameTooltip:ClearLines();
		GameTooltip:ClearAllPoints();
		GameTooltip:SetPoint("TOPLEFT", this:GetName(), "BOTTOMLEFT", 0, -2);		
		GameTooltip:AddLine(GF_GenTooltips[this:GetName()].tooltip1);
		GameTooltip:AddLine(GF_GenTooltips[this:GetName()].tooltip2, 1, 1, 1, 1, 1);
		GameTooltip:Show();
	end
end
function GF_ToggleMainFrame(tab)
	GF_SearchList:Hide();
	PlaySound("igCharacterInfoTab");
	if GF_MainFrame:IsVisible() and tab ~= 3 and (not tab or (tab == 2 and GF_SavedVariables.mainframelogisopen) or (tab == 1 and not GF_SavedVariables.mainframelogisopen)) then
		if GF_SavedVariables.mainframestatus == 0 then 
			local _,_,_,xpos, ypos = GF_MainFrame:GetPoint()
			GF_SavedVariables.MainFrameXPos = xpos
			GF_SavedVariables.MainFrameYPos = ypos
		end
		GF_MainFrame:Hide(); 
		GF_SavedVariables.mainframeishidden = true;
		GF_SavedVariables.mainframestatus = 0;
	else
		if tab == 1 then -- GroupsFrame
			GF_GroupsFrame:Show();
			GF_LogFrame:Hide();
			GF_BlackListFrame:Hide();
			GF_SettingsFrame:Hide();
			GF_SavedVariables.mainframelogisopen = nil;
		elseif tab == 2 or GF_SavedVariables.mainframelogisopen then -- LogsFrame
			GF_GroupsFrame:Hide();
			GF_LogFrame:Show();
			GF_BlackListFrame:Hide();
			GF_SettingsFrame:Hide();
			GF_SavedVariables.mainframelogisopen = true;
		end
		if tab ~= 3 and GF_SavedVariables.mainframestatus == 0 and not GF_SavedVariables.mainframeishidden then
			local _,_,_,xpos, ypos = GF_MainFrame:GetPoint()
			GF_SavedVariables.MainFrameXPos = xpos
			GF_SavedVariables.MainFrameYPos = ypos
		end
		GF_MainFrame:Show();
		GF_SavedVariables.mainframeishidden = nil;
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
				for i=1, 20 do if i == 1 then getglobal("GF_NewItem"..i):SetPoint("TOPLEFT",330,0) else getglobal("GF_NewItem"..i):SetPoint("LEFT",330,0) end getglobal("GF_NewItem"..i):SetWidth(350) end
				GF_LogFrameInternalFrame:SetPoint("TOPLEFT",350,-32)
			else
				for i=1, 20 do if i == 1 then getglobal("GF_NewItem"..i):SetPoint("TOPLEFT",0,0) else getglobal("GF_NewItem"..i):SetPoint("LEFT",0,0) end getglobal("GF_NewItem"..i):SetWidth(350) end
				GF_LogFrameInternalFrame:SetPoint("TOPLEFT",29,-32)
			end
			GF_LogFrameInternalFrame:SetWidth(350)
		else
			for i=1, 20 do if i == 1 then getglobal("GF_NewItem"..i):SetPoint("TOPLEFT",0,0) else getglobal("GF_NewItem"..i):SetPoint("LEFT",0,0) end getglobal("GF_NewItem"..i):SetWidth(652) end
			GF_LogFrameInternalFrame:SetPoint("TOPLEFT",29,-32)
			GF_LogFrameInternalFrame:SetWidth(669)
		end
	else
		for i=1, 20 do if i == 1 then getglobal("GF_NewItem"..i):SetPoint("TOPLEFT",0,0) else getglobal("GF_NewItem"..i):SetPoint("LEFT",0,0) end getglobal("GF_NewItem"..i):SetWidth(652) end
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
		for i=1, 51 do
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
			GF_LogFrameInternalFrameTitle:SetText("");
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
		for i=1, 51 do
			getglobal(ThingsToHide[i]):Show()
		end
		GF_MainFrame:SetAlpha(GF_SavedVariables.MainFrameTransparency)
		GF_MainFrame:SetFrameStrata("MEDIUM")
		GF_MainFrame:EnableMouse(true)
		GF_MainFrame:IsMovable(true)

		GF_HideMainFrameHeight:Hide()
		GF_HideMainFrameWidth:Hide()

		GF_LogFrameInternalFrameTitle:SetText(GF_LOG_AND_MONITOR);
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
	local relativepos;
	local directionMultiplier = 1;
	if Minimap:GetLeft() > GetScreenWidth()/2 then -- Minimap on the Right
		if Minimap:GetTop() > GetScreenHeight()/2 then relativepos = "TOPRIGHT"	directionMultiplier = -1 else relativepos = "BOTTOMRIGHT" end -- Minimap on Top/Bottom
	else
		if Minimap:GetTop() > GetScreenHeight()/2 then relativepos = "TOPLEFT" directionMultiplier = -1 else relativepos = "BOTTOMLEFT" end -- Minimap on Left and Top/Bottom
	end
	local xpos = (0 - ((GF_SavedVariables.MinimapMsgRadiusOffset) * cos(GF_SavedVariables.MinimapMsgArcOffset + (180 - (180*Minimap:GetRight()/GetScreenWidth()))))) - 55
	local ypos = ((GF_SavedVariables.MinimapMsgRadiusOffset) * sin(GF_SavedVariables.MinimapMsgArcOffset + (180 - (180*Minimap:GetTop()/GetScreenHeight())))) - 55

	GF_MinimapIcon:SetPoint("TOPLEFT", "Minimap", "TOPLEFT",
		55 - ((GF_SavedVariables.MinimapRadiusOffset) * cos(GF_SavedVariables.MinimapArcOffset)),
		((GF_SavedVariables.MinimapRadiusOffset) * sin(GF_SavedVariables.MinimapArcOffset)) - 55);
	GF_MinimapMessageFrameA1:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos);
	GF_MinimapMessageFrameA2:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos+42*directionMultiplier);
	GF_MinimapMessageFrameA3:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos+84*directionMultiplier);
	GF_MinimapMessageFrameA4:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos+126*directionMultiplier);
	GF_MinimapMessageFrameA5:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos+168*directionMultiplier);
	GF_MinimapMessageFrameA6:SetPoint(relativepos, "Minimap", relativepos,xpos,ypos+210*directionMultiplier);
end

function GF_AddChannelMessage(arg1,arg2,arg8,arg9)
	arg9 = string.gsub(arg9, " - .*", "")
	for i=1,NUM_CHAT_WINDOWS do
		local channellist = { GetChatWindowChannels(i) };
		for j=1, getn(channellist) do
			if string.find(arg9,channellist[j]) then
				if GF_WhoTable[GF_RealmName][arg2] and arg2 ~= GF_MyName then
					getglobal("ChatFrame"..i):AddMessage("["..arg8..". "..string.upper(string.sub(arg9,1,1))..string.lower(string.sub(arg9,2)).."] ".."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "ffffff").."[|Hplayer:"..arg2.."|h"..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."]|h|r: "..arg1, 1, 192/255, 192/255) 
				else
					getglobal("ChatFrame"..i):AddMessage("["..arg8..". "..string.upper(string.sub(arg9,1,1))..string.lower(string.sub(arg9,2)).."] ".."|cff".."9d9d9d".."[|Hplayer:"..arg2.."|h"..arg2.."]|h|r: "..arg1,  1, 192/255, 192/255);
				end
			end
		end
	end
end
function GF_ChatCheckFilters(logType,arg1,event)
	if logType == 7 or logType == 8 or logType == 9 then
		return
	elseif event ~= "CHAT_MSG_CHANNEL" and event ~= "CHAT_MSG_YELL" then
		return true
	elseif (logType == 1 or logType == 2) then 
		if GF_SavedVariables.showgroupsinminimap then GF_ShowGroupsOnMinimap(arg1,arg2) end
		if GF_SavedVariables.showgroupsinchat or (logType == 2 and GF_SavedVariables.showgroupsnewonly) then return true end
	elseif (logType == 4 and GF_SavedVariables.showchattexts) or (logType == 5 and GF_SavedVariables.showtradestexts) then
		return true
	end
end
function GF_CleanUpMessagesOfBadLinks(arg1) -- Removes CLINK and pfQuest/Questie links if not using those addons
	arg1 = gsub(arg1, "{CLINK:item:(%x+):([%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-):([^}]-)}", "|c%1|Hitem:%2|h[%3]|h|r")
	arg1 = gsub(arg1, "{CLINK:(%x+):([%d-]-:[%d-]-:[%d-]-:[%d-]-):([^}]-)}", "|c%1|Hitem:%2|h[%3]|h|r")
	arg1 = gsub(arg1, "{CLINK:enchant:(%x+):([%d-]-):([^}]-)}", "|c%1|Henchant:%2|h[%3]|h|r")
	arg1 = gsub(arg1, "{CLINK:spell:(%x+):([%d-]-):([^}]-)}", "|c%1|Hspell:%2|h[%3]|h|r")
	arg1 = gsub(arg1, "{CLINK:quest:(%x+):([%d-]-):([%d-]-):([^}]-)}", "|c%1|Hquest:%2:%3|h[%4]|h|r")		
	--arg1 = gsub(arg1, "|c.*|Hquest:[%d]+:[-]?[%d]+|h%[(.*)%]|h|r", "%1")
	return arg1
end
function GF_ShowGroupsOnMinimap(arg1,arg2)
	if GF_MiniMapMessages[1] > GetTime() and GF_MiniMapMessages[2] > GetTime() and GF_MiniMapMessages[3] > GetTime() and GF_MiniMapMessages[4] > GetTime() and GF_MiniMapMessages[5] > GetTime() and GF_MiniMapMessages[6] > GetTime() then
		local lowest = { GetTime()+20, 0 }
		for i=1, 6 do
			if GF_MiniMapMessages[i] < lowest[1] then lowest[1] = GF_MiniMapMessages[i]; lowest[2] = i; end
		end
		GF_MiniMapMessages[lowest[2]] = 0;
	end
	for i=1, 6 do
		if GF_MiniMapMessages[i] < GetTime() then
			if GF_WhoTable[GF_RealmName][arg2] and GF_WhoTable[GF_RealmName][arg2][1] then 
				getglobal("GF_MinimapMessageFrameA"..i):AddMessage("|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "ffffff").."|Hplayer:"..arg2.."|h "..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].." "..GF_WhoTable[GF_RealmName][arg2][2].."|h|r", 1, 0.8, 0);
			else
				getglobal("GF_MinimapMessageFrameA"..i):AddMessage("|cff".."ffffff".."|Hplayer:"..arg2.."|h "..arg2.."|h|r", 1, 0.8, 0);
			end
			getglobal("GF_MinimapMessageFrameB"..i):AddMessage("|cff".."bbffbb"..string.sub(gsub(arg1, "|c.*|Hquest:[%d]+:[-]?[%d]+|h%[(.*)%]|h|r", "\[%1\]"),1,110).. "|r", 1, 0.8, 0);
			GF_MiniMapMessages[i] = GetTime() + 20;
			return
		end
	end
end
function GF_AddLogMessage(arg1,filteredChat,add,arg2,arg8,arg9,event)
	arg1 = gsub(gsub(gsub(gsub(" "..arg1.." "," (www%d-)%.([_A-Za-z0-9-]+)%.(%S+)%s?", "|cffccccff|Hurl:%1.%2.%3|h[%1.%2.%3]|h|r ")," (%a+)://(%S+)%s?", "|cffccccff|Hurl:%1://%2|h[%1://%2]|h|r ")," (%a+)%.(%a+)/(%S+)%s?", "|cffccccff|Hurl:%1.%2/%3|h[%1.%2/%3]|h|r ")," ([_A-Za-z0-9-]+)%.([_A-Za-z0-9-]+)%.(%S+)%s?", "|cffccccff|Hurl:%1.%2.%3|h[%1.%2.%3]|h|r ")
	if add then
		if GF_LootFilter[event] then
			arg1 = "|cff"..GF_TextColors[event].."["..date("%H:%M").."]"..GF_LogMessageCodes[filteredChat]..arg1.."|r"
		elseif event ~= "CHAT_MSG_CHANNEL" and GF_TextColors[event] then
			if arg2 == GF_MyName then
				arg1 = "|cff"..GF_TextColors[event].."["..date("%H:%M").."] "..GF_LogMessageCodes[filteredChat].."|r|cff"..(GF_ClassColors[GF_Classes[UnitClass("player")]] or "9d9d9d").."[|Hplayer:"..arg2.."|h"..arg2..", "..UnitLevel("player").."]:|h|r|cff"..GF_TextColors[event]..arg1.."|r"
			elseif GF_WhoTable[GF_RealmName][arg2] then 
				arg1 = "|cff"..GF_TextColors[event].."["..date("%H:%M").."] "..GF_LogMessageCodes[filteredChat].."|r|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "9d9d9d").."[|Hplayer:"..arg2.."|h"..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."]:|h|r|cff"..GF_TextColors[event]..arg1.."|r"
			else
				arg1 = "|cff"..GF_TextColors[event].."["..date("%H:%M").."] "..GF_LogMessageCodes[filteredChat].."|r|cff9d9d9d[|Hplayer:"..arg2.."|h"..arg2.."]:|h|r|cff"..GF_TextColors[event]..arg1.."|r"
			end
		else
			arg9 = arg8..". "..string.upper(string.sub(arg9,1,1))..string.lower(string.sub(string.gsub(arg9, " - .*", ""),2))
			if arg2 == GF_MyName then 
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[filteredChat].."["..arg9.."] ".."|cff"..(GF_ClassColors[GF_Classes[UnitClass("player")]] or "9d9d9d").."[|Hplayer:"..arg2.."|h"..arg2..", "..UnitLevel("player").."]:|h|r"..arg1
			elseif GF_WhoTable[GF_RealmName][arg2] then 
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[filteredChat].."["..arg9.."] ".."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "9d9d9d").."[|Hplayer:"..arg2.."|h"..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."]:|h|r"..arg1
			else
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[filteredChat].."["..arg9.."] ".."|cff9d9d9d[|Hplayer:"..arg2.."|h"..arg2.."]:|h|r"..arg1
			end
		end
		table.insert(GF_LogHistory[GF_RealmName],1, {arg1, filteredChat})
		if getn(GF_LogHistory[GF_RealmName]) > 500 then table.remove(GF_LogHistory[GF_RealmName],501) end
	end
	if GF_LogCheckFilters(filteredChat) and GF_WhisperLogCurrentButtonID == 0 then
		GF_Log:AddMessage(arg1, 1, 192/255, 192/255)
	end
end
function GF_LogCheckFilters(filteredChat) -- [1]Group,[2]New,[3]Chat,[4]Trades,[6]Loot,[7]Spam,[8]Blacklist,[9]BelowLvl,[10]Myself,[11]FilteredGroup
	if (filteredChat == 10 or (GF_SavedVariables.logshowgroup and (filteredChat == 1 or filteredChat == 2)) or (GF_SavedVariables.logshowfiltered and filteredChat == 3)
	or (GF_SavedVariables.logshowchat and filteredChat == 4) or (GF_SavedVariables.logshowtrades and filteredChat == 5) or (GF_SavedVariables.logshowloot and filteredChat == 6)
	or (GF_SavedVariables.logshowspam and filteredChat == 7) or (GF_SavedVariables.logshowblacklist and filteredChat == 8) or (GF_SavedVariables.logshowbelowlevel and filteredChat == 9)) then return true end;
end
function GF_DisplayLog()
	GF_Log:SetMaxLines(128)
	local tempHistoryTable = {}
	local count = 0
	for i=1, getn(GF_LogHistory[GF_RealmName]) do
		if GF_LogCheckFilters(GF_LogHistory[GF_RealmName][i][2]) then 
			table.insert(tempHistoryTable,1,GF_LogHistory[GF_RealmName][i])
			count = count + 1
			if count == 128 then break end
		end
	end
	for i=1, getn(tempHistoryTable) do
		GF_Log:AddMessage(tempHistoryTable[i][1], 1, 192/255, 192/255)
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
	end
end
function GF_SendWhoIfNameInQueue()
	if GF_NextAvailableWhoTime < time() then
		if GF_UrgentWhoRequest[1] then
			SetWhoToUI(0);
			SendWho("n-"..GF_UrgentWhoRequest[1]);
			table.remove(GF_UrgentWhoRequest,1);
		elseif not WhoFrame:IsVisible() then
			if GF_ClassWhoRequest then
				if GF_ClassWhoQueue[1] then
					SetWhoToUI(1);
					SendWho(GF_ClassWhoQueue[1]);
					table.remove(GF_ClassWhoQueue, 1);
				else
					GF_ClassWhoRequest = nil
					GF_LFGGetWhoButton:SetText(GF_GET_WHO.." - "..GF_ClassWhoMatchingResults);
				end
			elseif GF_SavedVariables.usewhoongroups and GF_WhoQueue[1] then
				if (GF_WhoTable[GF_RealmName][GF_WhoQueue[1]] and GF_WhoTable[GF_RealmName][GF_WhoQueue[1]][4] + 86400 > time()) or GF_AddonNamesToBeSentAsARequest[GF_WhoQueue[1]] then
					GF_WhoQueue[GF_WhoQueue[1]] = nil
					table.remove(GF_WhoQueue, 1);
					return;
				end
				SetWhoToUI(1);
				SendWho("n-"..GF_WhoQueue[1]);
				GF_WhoQueue[GF_WhoQueue[1]] = nil
				table.remove(GF_WhoQueue, 1);
			end
		end
	end
end
function GF_WhoListUpdated()
	for i=1, GetNumWhoResults() do
		local name, guild, level, race, class, zone = GetWhoInfo(i);
		GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], guild, time() }
		GF_AddonWhoDataToBeSentBuffer[name] = GF_WhoTable[GF_RealmName][name]
		GF_AddonNamesFromWhoSinceLoggedOn[name] = true;
		if GF_UrgentWhoRequest[name] then GF_UrgentWhoRequest[name] = nil; GF_UpdateAndRequestTimer = 0 end
		if GF_IsFriendGuildieUsingAddon() then GF_AddonNeedToBroadcastSomething = true; end
		GF_TimeTillNextBroadcast = 0;
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
				GF_LFGGetWhoButton:SetText(GF_STOP_WHO.." - "..GF_ClassWhoMatchingResults);
				GF_CreateGetWhoQueueList(GF_GetWhoParams[1], GF_GetWhoParams[2])
			else
				GF_ClassWhoRequest = nil
				GF_LFGGetWhoButton:SetText(GF_GET_WHO.." - "..GF_ClassWhoMatchingResults);
			end
		else
			GF_LFGGetWhoButton:SetText(GF_STOP_WHO.." - "..GF_ClassWhoMatchingResults);
		end
	end
	GF_ApplyFiltersToGroupList()
	SetWhoToUI(0);
end
function GF_AddNameToWhoQueue(name,addToTopOfList)
	for i=1, getn(GF_WhoQueue) do
		if GF_WhoQueue[i] == name then return end
	end
	if addToTopOfList then
		table.insert(GF_WhoQueue, 1, name);
		GF_WhoQueue[name] = time()
	else
		table.insert(GF_WhoQueue, name);
		GF_WhoQueue[name] = time()
	end
	GF_UpdateAndRequestTimer = GF_NextAvailableWhoTime - time()
end
function GF_GetWhoData(arg2,groupfound)
	if GF_SavedVariables.usewhoongroups and (not GF_WhoQueue[name] or GF_WhoQueue[name] + 60 < time()) and (groupfound or not GF_SavedVariables.showoriginalchat)
	and (not GF_WhoTable[GF_RealmName][arg2] or GF_WhoTable[GF_RealmName][arg2][4] + 2592000 < time() or (GF_WhoTable[GF_RealmName][arg2][1] < 60 and GF_WhoTable[GF_RealmName][arg2][4]  + 86400 < time())) then -- If level 60, get new whodata after 60 days(for guild name changes). If below level 60, get new data every 24 hours.
		GF_AddNameToWhoQueue(arg2,groupfound)
	else
		return GF_WhoTable[GF_RealmName][arg2]
	end
end
function GF_CheckForAnnounce()
	if GF_AutoAnnounceTimer then
		GF_AutoAnnounceTimer = GF_AutoAnnounceTimer + 1;
		if GF_LFGDescriptionEditBox:GetText() == "" then GF_TurnOffAnnounce(GF_NOTHING_TO_ANNOUNCE) return end
		if GF_AutoAnnounceTimer > GF_SavedVariables.announcetimer then
			GF_AutoAnnounceTimer = 0;
			SendChatMessage(GF_LFGDescriptionEditBox:GetText(), "CHANNEL", nil, GetChannelName(GF_CHANNEL_NAME));
			DEFAULT_CHAT_FRAME:AddMessage(GF_SENT..GF_LFGDescriptionEditBox:GetText(), 1, 1, 0.5);
			GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_LFG_BTN.."-"..GF_SavedVariables.announcetimer - GF_AutoAnnounceTimer);
			GF_MinimapMessageFrameA1:AddMessage(GF_ANNOUNCED_LFG_EXT, 1.0, 1.0, 0.5, 1.0, UIERRORS_HOLD_TIME);
			PlaySound("TellMessage");
		else
			GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_LFG_BTN.."-"..GF_SavedVariables.announcetimer - GF_AutoAnnounceTimer);
		end
	end
end
function GF_TurnOffAnnounce(messageText)
	GF_AutoAnnounceTimer = nil;
	GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_LFG_BTN);
	DEFAULT_CHAT_FRAME:AddMessage(messageText, 1, 1, 0.5)
end
function GF_TurnOnAnnounce()
	GF_AutoAnnounceTimer = GF_SavedVariables.announcetimer;
	if UnitIsPartyLeader("player") then GF_WasPartyLeaderBefore = true; end
	GF_AnnounceToLFGButton:SetText(GF_ANNOUNCE_LFG_BTN.."-"..GF_SavedVariables.announcetimer);
	DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_AUTO_ANNOUNCE_TURNED_ON, 1, 1, 0.5);
end
function GF_UpdateGroupsFrame()
	GF_UpdateAndRequestTimer = GF_UpdateAndRequestTimer - 1;
	if GF_UpdateAndRequestTimer < 0 then
		GF_UpdateAndRequestTimer = 30;
		for i=1, getn(GF_MessageList[GF_RealmName]) do
			if GF_SavedVariables.usewhoongroups and not GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op] and not GF_WhoQueue[GF_MessageList[GF_RealmName][i].op] then
				GF_AddNameToWhoQueue(GF_MessageList[GF_RealmName][i].op, true)
			end
			if GF_AddonMakeAListOfGroupsForSending and not GF_AddonOPSentNamesOnLogin[GF_MessageList[GF_RealmName][i].op] then
				GF_AddonGroupDataToBeSentBuffer[GF_MessageList[GF_RealmName][i].op] = GF_MessageList[GF_RealmName][i]
				GF_AddonNeedToBroadcastSomething = true;
			end
		end
		GF_AddonMakeAListOfGroupsForSending = nil;
		GF_AddonOPSentNamesOnLogin = {}
		GF_ApplyFiltersToGroupList()
	end
end

function GF_RequestAdditionalWhoDataUpdates() -- Data-Sharing algorithm
	GF_RequestWhoDataPeriodicallyTimer = GF_RequestWhoDataPeriodicallyTimer - 1;
	if GF_RequestWhoDataPeriodicallyTimer < 0 then
		GF_RequestWhoDataPeriodicallyTimer = 300;
		if GF_SavedVariables.usewhoongroups and GF_IsFriendGuildieUsingAddon() then
			for i=1, getn(GF_MessageList[GF_RealmName]) do
				if not GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op] then GF_AddonNamesToBeSentAsARequest[GF_MessageList[GF_RealmName][i].op] = true end
			end
			for i=1, getn(GF_WhoQueue) do
				GF_AddonNamesToBeSentAsARequest[GF_WhoQueue[i]] = true
			end
			GF_TimeTillNextBroadcast = 0;
			GF_AddonNeedToBroadcastSomething = true;
		end
	end
end
function GF_CheckForBroadCast()
	GF_TimeTillNextBroadcast = GF_TimeTillNextBroadcast - 1;
	if GF_TimeTillNextBroadcast < 0 then 
		GF_TimeTillNextBroadcast = 4;
		if GF_AddonNeedToBroadcastSomething then
			GF_AddonNeedToBroadcastSomething = nil;
			local counter = 0;
			for name,entry in pairs(GF_AddonGroupDataToBeSentBuffer) do
				if GF_WhoTable[GF_RealmName][entry.op] and (entry.type == "D" or entry.type == "R") and entry.t + 900 > time() then
					if GF_WhoTable[GF_RealmName][entry.op][3] == "" then GF_WhoTable[GF_RealmName][entry.op][3] = "Z" end
					if GetGuildInfo("player") then SendAddonMessage("GF", GF_ClassIDs[GF_WhoTable[GF_RealmName][entry.op][2]]..entry.t..entry.type..entry.dlevel..entry.op..GF_WhoTable[GF_RealmName][entry.op][1]..GF_WhoTable[GF_RealmName][entry.op][3]..GF_WhoTable[GF_RealmName][entry.op][4]..":"..entry.message, "GUILD");
					elseif GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", GF_ClassIDs[GF_WhoTable[GF_RealmName][entry.op][2]]..entry.t..entry.type..entry.dlevel..entry.op..GF_WhoTable[GF_RealmName][entry.op][1]..GF_WhoTable[GF_RealmName][entry.op][3]..GF_WhoTable[GF_RealmName][entry.op][4]..":"..entry.message, "PARTY"); end
					counter = counter + 1
					if counter == 4 then GF_AddonNeedToBroadcastSomething = true; break end
				end
				GF_AddonGroupDataToBeSentBuffer[name] = nil;
			end
			counter = 0;
			local addonsendstring = "U";
			if GF_OnStartupQueueURequest then
				for j=1, getn(GF_MessageList[GF_RealmName]) do
					if (GF_MessageList[GF_RealmName][j].type == "D" or GF_MessageList[GF_RealmName][j].type == "R") then
						addonsendstring = addonsendstring..":"..GF_MessageList[GF_RealmName][j].op
						if string.len(addonsendstring) > 240 then
							if GetGuildInfo("player") then SendAddonMessage("GF", addonsendstring, "GUILD"); elseif GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", addonsendstring, "PARTY"); end
							addonsendstring = "U";
							counter = counter + 1;
							if counter == 4 then break end
						end
					end
				end
				if counter == 0 or string.len(addonsendstring) > 1 then if GetGuildInfo("player") then SendAddonMessage("GF", addonsendstring, "GUILD"); elseif GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", addonsendstring, "PARTY"); end	end
				GF_OnStartupQueueURequest = nil;
			end
			if GF_AddonMakeAResponseToLoginList then
				addonsendstring = "W"
				for name,exists in pairs(GF_AddonAllNamesForResponseToLogin) do
					if name then addonsendstring = addonsendstring..":"..name end
					GF_AddonAllNamesForResponseToLogin[name] = nil;
					if string.len(addonsendstring) > 240 then break end
				end
				if string.len(addonsendstring) > 1 then if GetGuildInfo("player") then SendAddonMessage("GF", addonsendstring, "GUILD"); elseif GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", addonsendstring, "PARTY"); end end
				GF_AddonMakeAResponseToLoginList = nil;
			end
			addonsendstring = "R"
			for name,whodata in pairs(GF_AddonNamesToBeSentAsARequest) do
				if whodata then addonsendstring = addonsendstring..":"..name end
				GF_AddonNamesToBeSentAsARequest[name] = nil;
				if string.len(addonsendstring) > 240 then GF_AddonNeedToBroadcastSomething = true; break end
			end
			if string.len(addonsendstring) > 1 then if GetGuildInfo("player") then SendAddonMessage("GF", addonsendstring, "GUILD"); elseif GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", addonsendstring, "PARTY"); end end
			if GF_IsFriendGuildieUsingAddon() then
				addonsendstring = ""
				for name,whodata in pairs(GF_AddonWhoDataToBeSentBuffer) do
					if whodata then
						if whodata[3] == "" then whodata[3] = "Z" end
						addonsendstring = addonsendstring..":"..whodata[1]..name..GF_ClassIDs[whodata[2]]..whodata[3]..whodata[4]
						if string.len(addonsendstring) > 202 then GF_AddonNeedToBroadcastSomething = true; break end
					end
					GF_AddonWhoDataToBeSentBuffer[name] = nil;
				end
				if string.len(addonsendstring) > 1 then if GetGuildInfo("player") then SendAddonMessage("GF", addonsendstring, "GUILD"); elseif GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", addonsendstring, "PARTY"); end end
			end
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
			GF_AddonOPSentNamesOnLogin[name] = true;
		end
		if GF_AddonTimeSinceLastUpdate + 60 < time() then
			for name in GF_AddonNamesFromWhoSinceLoggedOn do
				if not GF_AddonOPSentNamesOnLogin[name] and not GF_AddonWhoDataToBeSentBuffer[name] and GF_WhoTable[GF_RealmName][name][4] + 900 > time() then
					GF_AddonAllNamesForResponseToLogin[name] = true;
				else
					GF_AddonNamesFromWhoSinceLoggedOn[name] = nil
				end
			end
			GF_AddonTimeSinceLastUpdate = time()
		end
		GF_TimeTillNextBroadcast = (math.random(80))/4; -- Assuming up to 333ms lag, up to 100 different random slots for responses. To keep down on the spam.
		GF_RequestWhoDataPeriodicallyTimer = 60;
		GF_AddonMakeAResponseToLoginList = true;
		GF_AddonMakeAListOfGroupsForSending = true;
		GF_UpdateAndRequestTimer = 0;
		GF_AddonNeedToBroadcastSomething = true;
	elseif string.sub(msg,1,1) == "W" then -- (To Everyone) Sent as a reply to "U". Sends a list of names on your who list excluding those sent by the OP or other players(up to 240 characters).
		for sentname in string.gfind(msg, ":(%w+)") do
			if not GF_WhoTable[GF_RealmName][sentname] then GF_AddonNamesToBeSentAsARequest[sentname] = true end
			GF_AddonAllNamesForResponseToLogin[sentname] = nil
		end
		GF_TimeTillNextBroadcast = (math.random(80))/4;
		GF_AddonNeedToBroadcastSomething = true;
	elseif string.sub(msg,1,1) == "R" then -- (To Everyone) Sent as a reply to "W". Sends a list of names from the "W" message that you don't have information for(up to 240 characters).
		for sentname in string.gfind(msg, ":(%w+)") do
			if GF_WhoTable[GF_RealmName][sentname] and GF_WhoTable[GF_RealmName][sentname][4] + 86400 > time() then GF_AddonWhoDataToBeSentBuffer[sentname] = GF_WhoTable[GF_RealmName][sentname]; end
			GF_AddonNamesToBeSentAsARequest[sentname] = nil
		end
		GF_TimeTillNextBroadcast = (math.random(80))/4;
		GF_AddonNeedToBroadcastSomething = true;
	elseif string.sub(msg,1,1) == ":" then -- (To Everyone) This is the who data from the names requested in "R".
		for sentlevel,sentname,sentclass,sentguild,sentrecordedtime in string.gfind(msg, ":(%d+)([a-zA-Z]+)(%d)([a-zA-Z%s]+)(%d+)") do
			if sentguild == "Z" then sentguild = "" end
			if tonumber(sentrecordedtime) <= time() and (not GF_WhoTable[GF_RealmName][sentname] or tonumber(sentrecordedtime) > GF_WhoTable[GF_RealmName][sentname][4]) then
				GF_WhoTable[GF_RealmName][sentname] = { tonumber(sentlevel), GF_ClassIDs[tonumber(sentclass)], sentguild, tonumber(sentrecordedtime) }
			end
			GF_AddonAllNamesForResponseToLogin[sentname] = nil;
			GF_AddonNamesToBeSentAsARequest[sentname] = nil;
			GF_AddonWhoDataToBeSentBuffer[sentname] = nil;
		end
	elseif string.len(msg) > 2 then -- (To Everyone) This is the full group information. Which is sent separately from the who data.
		for sentclass,senttime,senttype,sentdlevel,sentname,sentplevel,sentguild,sentrecordedtime,message in string.gfind(msg, "(%d)(%d+)([a-zA-Z])(%d+)([a-zA-Z]+)(%d+)([a-zA-Z%s]+)(%d+):(.+)") do
			if tonumber(sentrecordedtime) <= time() then
				if sentguild == "Z" then sentguild = "" end
				if not GF_WhoTable[GF_RealmName][sentname] or tonumber(sentrecordedtime) > GF_WhoTable[GF_RealmName][sentname][4] then
					GF_WhoTable[GF_RealmName][sentname] = { tonumber(sentplevel), GF_ClassIDs[tonumber(sentclass)], string.gsub(sentguild,"", "") }; GF_WhoTable[GF_RealmName][sentname][4] = tonumber(sentrecordedtime);
				end

				local entry = {};
				entry.op = sentname;
				entry.message = message;
				entry.type = senttype;
				entry.dlevel = tonumber(sentdlevel)
				entry.t = tonumber(senttime);
			
				for i = 1, getn(GF_MessageList[GF_RealmName]) do
					if GF_MessageList[GF_RealmName][i].op and GF_MessageList[GF_RealmName][i].op == sentname then
						table.remove(GF_MessageList[GF_RealmName], i);
						break;
					end
				end
				if getn(GF_MessageList[GF_RealmName]) > 0 then
					for i = 1, getn(GF_MessageList[GF_RealmName]) do
						if entry.t > GF_MessageList[GF_RealmName][i].t then
							table.insert(GF_MessageList[GF_RealmName], i, entry);
							break;
						end
						if i == getn(GF_MessageList[GF_RealmName]) then table.insert(GF_MessageList[GF_RealmName], i + 1, entry); end
					end
				else
					table.insert(GF_MessageList[GF_RealmName], 1, entry);	
				end
			end
			GF_AddonGroupDataToBeSentBuffer[sentname] = nil;
			GF_AddonAllNamesForResponseToLogin[sentname] = nil;
			GF_AddonNamesToBeSentAsARequest[sentname] = nil;
			GF_AddonWhoDataToBeSentBuffer[sentname] = nil;
		end
	end
end

function GF_OnEvent(event) -- OnEvent, LoadSettings, Bind Keys, Prune Tables
	if GF_AutoAnnounceTimer and event == "CHAT_MSG_SYSTEM" and string.find(arg1, GF_NOW_AFK) then
		GF_TurnOffAnnounce(GF_AFK_ANNOUNCE_OFF);
	elseif event == "CHAT_MSG_ADDON" and arg1 == "GF" and arg4 ~= GF_MyName then
		GF_AddonListOfFriendsGuildiesWithAddon[arg4] = true;
		GF_ParseIncomingAddonMessages(arg2)
	elseif event == "WHO_LIST_UPDATE" then
		GF_WhoListUpdated();
	elseif event == "RAID_ROSTER_UPDATE" or event == "PARTY_LEADER_CHANGED" or event == "PARTY_MEMBERS_CHANGED" then
		if GF_WasPartyLeaderBefore and not UnitIsPartyLeader("player") and GF_GetNumGroupMembers() > 1 then
			GF_TurnOffAnnounce(GF_JOINED_GROUP_ANNOUNCE_OFF)
			GF_WasPartyLeaderBefore = nil;
		else
			local groupSize = gsub(GF_SavedVariables.lfgsize, "(%d+).*", "%1")
			if GF_AutoAnnounceTimer and groupSize and string.len(groupSize) <= 2 and GF_GetNumGroupMembers() >= tonumber(groupSize) then GF_TurnOffAnnounce(GF_NO_MORE_PLAYERS_NEEDED) end
		end
		if GF_SavedVariables.lfgauto then GF_FixLFGStrings(true) end
		GF_UpdatePlayersInGroupList()
	elseif (event == "GUILD_ROSTER_UPDATE" and GetNumGuildMembers() ~= GF_CurrentNumGuildies) then 
		GF_UpdateGuildiesList()
	elseif (event == "FRIENDLIST_UPDATE" and GetNumFriends() ~= GF_CurrentNumFriends) then
		GF_UpdateFriendsList()
	elseif event == "ZONE_CHANGED_NEW_AREA" then
		GF_JoinWorld()
	elseif event == "PARTY_INVITE_REQUEST" then
		if GF_RequestInviteTime[arg1] and GF_RequestInviteTime[arg1] > time() then AcceptGroupInvite(); end
	elseif event == "PLAYER_ENTERING_WORLD" and GF_OnStartupRunOnce then
		GF_OnStartupRunOnce = false;
		GF_LoadVariables()
		GF_LoadSettings()
		GF_UpdateBlackListItems(); 
		GF_ApplyFiltersToGroupList()	
		if not GF_SavedVariables.addonsendtimeout or GF_SavedVariables.addonsendtimeout + 900 < time() then
			GF_SavedVariables.addonsendtimeout = time();
			GF_OnStartupQueueURequest = true;
			GF_AddonNeedToBroadcastSomething = true;			
		else
			if GetGuildInfo("player") then SendAddonMessage("GF", "Z", "GUILD");
			elseif GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", "Z", "PARTY"); end
		end
		GF_BindKey("I", "GF_SHOW_FRAME")
		GF_BindKey("SHIFT-G", "GF_SHOW_GROUP")
		GF_BindKey("SHIFT-L", "GF_SHOW_LOG")
		SaveBindings(1)
	elseif event == "PLAYER_LEAVING_WORLD" then
		if GF_SavedVariables.mainframestatus == 0 then
			local _,_,_,xpos, ypos = GF_MainFrame:GetPoint()
			GF_SavedVariables.MainFrameXPos = xpos;
			GF_SavedVariables.MainFrameYPos = ypos;
		end
	end
end
function GF_LoadSettings()
	local SliderVariablesToSet = { GF_SavedVariables.MinimapArcOffset, GF_SavedVariables.MinimapRadiusOffset, GF_SavedVariables.MinimapMsgArcOffset, GF_SavedVariables.MinimapMsgRadiusOffset, GF_SavedVariables.FilterLevel,
	GF_SavedVariables.MainFrameTransparency,GF_SavedVariables.autoblacklistminlevel,GF_SavedVariables.blockmessagebelowlevel,GF_SavedVariables.grouplistingduration,GF_SavedVariables.autofilterlevelvar, GF_SavedVariables.MainFrameUIScale, }
	local SliderNames = { "GF_MinimapArcSlider", "GF_MinimapRadiusSlider", "GF_MinimapMsgArcSlider", "GF_MinimapMsgRadiusSlider", "GF_FilterLevelSlider", "GF_FrameTransparencySlider",
	"GF_FrameSpamBlacklistMinLevelSlider", "GF_FrameBlockMessagesBelowLevelSlider", "GF_GroupListingDurationSlider", "GF_AutoFilterLevelSlider", "GF_UIScaleSlider", }
	for i=1, 11 do getglobal(SliderNames[i]):SetValue(SliderVariablesToSet[i]) end

	if GF_SavedVariables.announcetimer > 600 then GF_FrameAnnounceTimerSlider:SetValue((GF_SavedVariables.announcetimer-600)/300 + 10) else	GF_FrameAnnounceTimerSlider:SetValue(GF_SavedVariables.announcetimer/60)end
	if GF_SavedVariables.spamfilterduration > 10 then GF_FrameSpamFilterDurationSlider:SetValue((GF_SavedVariables.spamfilterduration-10)/5 + 10) else GF_FrameSpamFilterDurationSlider:SetValue(GF_SavedVariables.spamfilterduration) end
	if GF_SavedVariables.showgroupsnewonlytime > 10 then GF_GroupNewTimeoutSlider:SetValue((GF_SavedVariables.showgroupsnewonlytime-10)/5 + 10) else GF_GroupNewTimeoutSlider:SetValue(GF_SavedVariables.showgroupsnewonlytime) end

	local CheckButtonVariablesToSet = { GF_SavedVariables.showgroupsinchat, GF_SavedVariables.showgroupsinminimap, GF_SavedVariables.showgroupsnewonly, GF_SavedVariables.showchattexts, GF_SavedVariables.showtradestexts, GF_SavedVariables.showloottexts,
	GF_SavedVariables.autofilter, GF_SavedVariables.showdungeons, GF_SavedVariables.showraids, GF_SavedVariables.showquests, GF_SavedVariables.showother, GF_SavedVariables.showlfm, GF_SavedVariables.showlfg,	GF_SavedVariables.logshowgroup,
	GF_SavedVariables.logshowfiltered, GF_SavedVariables.logshowchat, GF_SavedVariables.logshowtrades, GF_SavedVariables.logshowloot, GF_SavedVariables.logshowspam, GF_SavedVariables.logshowblacklist, GF_SavedVariables.logshowbelowlevel,
	GF_SavedVariables.joinworld, GF_SavedVariables.showoriginalchat, GF_SavedVariables.usewhoongroups, GF_SavedVariables.systemfilter, GF_SavedVariables.showguilds, GF_SavedVariables.spamfilter, GF_SavedVariables.autoblacklist,
	GF_SavedVariables.playsounds, GF_SavedVariables.lfgauto, GF_SavedVariables.showwhisperlogs, GF_SavedVariables.mainframeheight, GF_SavedVariables.mainframewidth, GF_SavedVariables.alwaysshowguild}
	
	local CheckButtonNames = { "GF_GroupsInChatCheckButton", "GF_GroupsInMinimapCheckButton", "GF_GroupsNewOnlyCheckButton", "GF_ShowChatCheckButton", "GF_ShowTradesCheckButton", "GF_ShowLootCheckButton", "GF_AutoFilterCheckButton",
	"GF_GroupsFrameShowDungeonCheckButton", "GF_GroupsFrameShowRaidCheckButton", "GF_GroupsFrameShowQuestCheckButton", "GF_GroupsFrameShowOtherCheckButton", "GF_GroupsFrameShowLFMCheckButton", "GF_GroupsFrameShowLFGCheckButton",
	"GF_LogShowGroups", "GF_LogShowFiltered", "GF_LogShowChat", "GF_LogShowTrades", "GF_LogShowLoot", "GF_LogShowSpam", "GF_LogShowBlacklist", "GF_LogShowBelowLevel", "GF_FrameJoinWorldCheckButton", 
	"GF_FrameShowOriginalChatCheckButton","GF_FrameUseWhoOnGroupsCheckButton", "GF_FrameSystemFilterCheckButton", "GF_ShowGuildsCheckButton", "GF_FrameSpamFilterCheckButton", "GF_FrameAutoBlacklistCheckButton",
	"GF_PlaySoundOnResultsCheckButton", "GF_GroupAutoCheckButton", "GF_LogShowWhisperHistory", "GF_HideMainFrameHeight", "GF_HideMainFrameWidth", "GF_FrameAlwaysShowGuildCheckButton"}
	for i=1, 34 do getglobal(CheckButtonNames[i]):SetChecked(CheckButtonVariablesToSet[i]) end
	
	local TextToSet = { GF_SavedVariables.searchtext, GF_SavedVariables.searchlfgtext, GF_SavedVariables.searchlfgwhispertext }
	local TextNames = { "GF_GroupsFrameDescriptionEditBox", "GF_LFGDescriptionEditBox", "GF_LFGWhoWhisperEditBox" }
	for i=1, 3 do getglobal(TextNames[i]):SetText(TextToSet[i]) end
	if GF_SavedVariables.searchbuttonstext ~= "" then GF_SearchListDropdown:LockHighlight() end
	getglobal(GF_LFGSizeDropdown:GetName().."TextLabel"):SetText(GF_SavedVariables.lfgsize);
	getglobal(GF_LFGWhoClassDropdown:GetName().."TextLabel"):SetText(GF_SavedVariables.lfgwhisperclass);

	GF_BUTTONS_LIST["LFGLFM"][2] = { GF_LFG_SPECS[UnitClass("player")][1].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][3] = { GF_LFG_SPECS[UnitClass("player")][2].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][4] = { GF_LFG_SPECS[UnitClass("player")][3].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][5] = { UnitClass("player").." LFG", 1, 60, }
	GF_MainFrame:SetAlpha(GF_FrameTransparencySlider:GetValue());
	GF_MainFrame:SetScale(GF_UIScaleSlider:GetValue());
	if GF_SavedVariables.MainFrameXPos then GF_MainFrame:SetPoint("TOPLEFT",UIParent,"TOPLEFT", GF_SavedVariables.MainFrameXPos, GF_SavedVariables.MainFrameYPos) end
	if GF_SavedVariables.mainframestatus ~= 0 and not GF_SavedVariables.mainframeishidden then GF_ToggleMainFrame() end
	GF_UpdateMinimapIcon()
	GF_UpdateFriendsList()
	GF_UpdateGuildiesList()
	GF_WhisperHistoryUpdateFrame()
	GF_DisplayLog()
	GF_PruneTheClassWhoTable()

	if (GF_RealmName == "Nordanaar" or GF_RealmName == "Tel'Abim") then GF_AddTurtleWoWDungeonsRaids(); GF_WhoCooldownTime = 30; end
end
function GF_JoinWorld(show)
	if GF_SavedVariables.joinworld then
		local chanList = { GetChannelList() }
		for i=1, getn(chanList) do
			if string.lower(chanList[i]) == string.lower(GF_CHANNEL_NAME) then
				return true
			end
		end
		JoinChannelByName(GF_CHANNEL_NAME);
		if show then ChatFrame_AddChannel(ChatFrame1, GF_CHANNEL_NAME); end
	end
end
function GF_BindKey(bindKey, bindName)
	if not GetBindingKey(bindName) then
		local foundIKey;
		for i=1, GetNumBindings() do
			local _,key1,key2 = GetBinding(i);
			if (key1 == bindKey or key2 == bindKey) then
				foundIKey = true;
			end
		end
		if not foundIKey then SetBinding(bindKey,bindName); end
	end
end
function GF_PruneTheWhoTable()
	for realm,_ in GF_WhoTable do
		for name, whoData in GF_WhoTable[realm] do
			if whoData[4] and ((whoData[1] == 60 and whoData[4] + 2592000 < time()) or (whoData[1] < 60 and whoData[4] + 172800 < time())) then -- Keep WhoData for 30 days for 60's. two days for under 60.
				GF_WhoTable[realm][name] = nil;
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
					table.remove(GF_MessageList[realm], i);
					i = i - 1;
				end
			end
		end
	end
	for realm,_ in GF_LogHistory do
		if not GF_LogHistory[realm].lastLogin or GF_LogHistory[realm].lastLogin + 2592000 < time() then
			GF_LogHistory[realm] = {}
		end
	end
end
function GF_PruneTheClassWhoTable()
	for name, whoData in GF_ClassWhoTable do
		if whoData[4] and whoData[4] + 3600 < time() then GF_ClassWhoTable[name] = nil;	end
	end
end

function GF_GetNumGroupMembers() -- Get Group/Friends/Guildies information(turns off ignore/blacklist or adds their character information)
	if GetNumRaidMembers() > 0 then
		return GetNumRaidMembers();
	else
		return GetNumPartyMembers() + 1;
	end
end
function GF_UpdatePlayersInGroupList()
	GF_PlayersCurrentlyInGroup = {}
	GF_PlayersCurrentlyInGroup[GF_MyName] = true;
	for i=1,5 do
		if UnitExists("party"..i) then GF_PlayersCurrentlyInGroup[UnitName("party"..i)] = true; end
	end
	for i=1,40 do
		if GetRaidRosterInfo(i) then GF_PlayersCurrentlyInGroup[GetRaidRosterInfo(i)] = true; end
	end	
end
function GF_UpdateFriendsList()
	GF_CurrentNumFriends = GetNumFriends();
	GF_Friends = {};
	for i=1, GetNumFriends() do
		local name,level,class = GetFriendInfo(i)
		if name then 
			GF_Friends[name] = true;
			GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], "", time()}
		end
	end
end
function GF_UpdateGuildiesList()
	GF_CurrentNumGuildies = GetNumGuildMembers();
	GF_Guildies = {};
	for i=1, GetNumGuildMembers() do
		local name,_,_,level,class = GetGuildRosterInfo(i)
		if name then 
			GF_Guildies[name] = true;
			GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], GetGuildInfo("player"), time() }
		end
	end
end
function GF_IsFriendGuildieUsingAddon()
	for name in GF_AddonListOfFriendsGuildiesWithAddon do
		if GF_Guildies[name] or GF_Friends[name] then return true end
	end
end

function GF_EntryMatchesGroupFilterCriteria(entry) -- GroupsFrame functions
	if GF_SavedVariables.searchtext == "" and GF_SavedVariables.searchbuttonstext == "" and ((GF_SavedVariables.showlfg and entry.lfg) or (GF_SavedVariables.showlfm and not entry.lfg)) 
	and ((GF_SavedVariables.showdungeons and entry.type == "D") or (GF_SavedVariables.showraids and entry.type == "R") or (GF_SavedVariables.showquests and entry.type == "Q") or (GF_SavedVariables.showother and entry.type == "N"))
	and (not GF_SavedVariables.autofilter or (entry.dlevel and entry.dlevel >= UnitLevel("player")-GF_SavedVariables.autofilterlevelvar and entry.dlevel <= UnitLevel("player")+GF_SavedVariables.autofilterlevelvar)) then
		return true;
	end
	if (GF_SavedVariables.searchtext ~= "" or GF_SavedVariables.searchbuttonstext ~= "") and GF_SearchMessageForTextString(string.lower(entry.message).." ",string.lower(GF_SavedVariables.searchtext)..",",entry,GF_SavedVariables.searchbuttonstext) then
		return true;
	end
end
function GF_ApplyFiltersToGroupList()
	if GetMouseFocus() and GetMouseFocus():GetName() and (string.find(GetMouseFocus():GetName(), "GroupWhoButton") or string.find(GetMouseFocus():GetName(), "LFGInviteButton") or string.find(GetMouseFocus():GetName(), "LFMWhisperRequestInviteButton")) then return end
	GF_SavedVariables.searchtext = GF_GroupsFrameDescriptionEditBox:GetText()
	GF_SavedVariables.searchlfgtext = GF_LFGDescriptionEditBox:GetText()

	GF_FilteredResultsList = {};
	for i=1, getn(GF_MessageList[GF_RealmName]) do
		local entry = GF_MessageList[GF_RealmName][i];
		if entry then
			if entry.dlevel == 0 and GF_WhoTable[GF_RealmName][entry.op] then entry.dlevel = GF_WhoTable[GF_RealmName][entry.op][1] end
			if (entry.t + GF_SavedVariables.grouplistingduration*60) > time() then
				if GF_EntryMatchesGroupFilterCriteria(entry) then
					table.insert(GF_FilteredResultsList, entry);
				end
			else
				table.remove(GF_MessageList[GF_RealmName], i);
				i = i - 1;
			end
		end
	end	
	if floor(GF_ResultsListOffset/GF_ResultsListOffsetSize) > floor(getn(GF_FilteredResultsList)/GF_ResultsListOffsetSize) then GF_ResultsListOffset = GF_ResultsListOffset - GF_ResultsListOffsetSize end
	GF_UpdateResults();
end
function GF_UpdateResults()
	local groupListLength = getn(GF_FilteredResultsList);
	GF_MinimapIconTextLabel:SetText(groupListLength);
	GF_MinimapIconTextLabel:Show();
	GF_ResultsLabel:SetText(GF_FOUND..groupListLength.." / "..getn(GF_MessageList[GF_RealmName]));
	GF_PageLabel:Show();
	
	local cpage = floor(GF_ResultsListOffset / GF_ResultsListOffsetSize);
	local tpage = floor(groupListLength / GF_ResultsListOffsetSize);
	if cpage == 0 or cpage <= GF_ResultsListOffset / GF_ResultsListOffsetSize then cpage = cpage + 1; end
	if tpage == 0 or tpage < groupListLength / GF_ResultsListOffsetSize then tpage = tpage + 1; end
	GF_PageLabel:SetText(GF_PAGE.." "..cpage.." / "..tpage);

	for i=1, 20 do
		local nFrame = "GF_NewItem"..i;
		if getglobal(nFrame) then
			if i+GF_ResultsListOffset <= groupListLength then 
				local entry = GF_FilteredResultsList[i+GF_ResultsListOffset];
				if GF_PlayersCurrentlyInGroup[entry.op] or GF_Friends[entry.op] or GF_Guildies[entry.op] then getglobal(nFrame.."NameLabel"):SetTextColor(255,215,0,1); else getglobal(nFrame.."NameLabel"):SetTextColor(0.75,0.75,1,1); end

				if floor((time() - entry.t)/60) > 1 then getglobal(nFrame.."MoreRightLabel"):SetText(GF_FOUND..floor((time() - entry.t)/60)..GF_MINUTES..GF_TIME_AGO);
				elseif floor((time() - entry.t)/60) == 1 then getglobal(nFrame.."MoreRightLabel"):SetText(GF_FOUND..floor((time() - entry.t)/60)..GF_MINUTE..GF_TIME_AGO);
				else getglobal(nFrame.."MoreRightLabel"):SetText(GF_FOUND..GF_TIME_JUST_NOW); end

				local dungeonLevelDifficulty = "";
				if entry.dlevel - UnitLevel("player") > 3 then dungeonLevelDifficulty = "|cff"..GF_DifficultyColors["RED"]
				elseif entry.dlevel - UnitLevel("player") > 1 then dungeonLevelDifficulty = "|cff"..GF_DifficultyColors["ORANGE"]
				elseif entry.dlevel - UnitLevel("player") > -2 then dungeonLevelDifficulty = "|cff"..GF_DifficultyColors["YELLOW"]
				elseif entry.dlevel - UnitLevel("player") > -4 then dungeonLevelDifficulty = "|cff"..GF_DifficultyColors["GREEN"]
				else dungeonLevelDifficulty = "|cff"..GF_DifficultyColors["GREY"] end

				if entry.dlevel > 60 then dungeonLevelDifficulty = dungeonLevelDifficulty.."[60]|r " else dungeonLevelDifficulty = dungeonLevelDifficulty.."["..entry.dlevel.."]|r " end
				if GF_WhoTable[GF_RealmName][entry.op] then
					local bottomtext;
					if GF_WhoTable[GF_RealmName][entry.op][3] ~= "" then bottomtext = ", " else bottomtext = "" end
					getglobal(nFrame.."NameLabel"):SetText(dungeonLevelDifficulty.."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][entry.op][2]] or "ffffff")..entry.op.."|r: "..entry.message);
					getglobal(nFrame.."MoreLabel"):SetText("Level "..GF_WhoTable[GF_RealmName][entry.op][1].." "..GF_Classes[GF_WhoTable[GF_RealmName][entry.op][2]]..bottomtext..GF_WhoTable[GF_RealmName][entry.op][3]);
				else
					if entry.dlevel == 0 then dungeonLevelDifficulty = "|cff"..GF_DifficultyColors["GREY"].."[NA]|r " end
					getglobal(nFrame.."NameLabel"):SetText(dungeonLevelDifficulty..entry.op..": "..entry.message);
					getglobal(nFrame.."MoreLabel"):SetText("");
				end
				if (not GF_SavedVariables.mainframeheight or GF_SavedVariables.mainframestatus == 0) or i < 14 then
					getglobal(nFrame):Show();
					if GF_SavedVariables.mainframestatus == 0 then
						if not GF_SavedVariables.usewhoongroups and not GF_UrgentWhoRequest[entry.op] and (not GF_WhoTable[GF_RealmName][entry.op]
						or (GF_WhoTable[GF_RealmName][entry.op][1] < 60 and GF_WhoTable[GF_RealmName][entry.op][4] + 21600 < time())) then
							getglobal(nFrame.."GroupWhoButton"):Show();
						else
							getglobal(nFrame.."GroupWhoButton"):Hide();
						end
					
						getglobal(nFrame.."LFGInviteButton"):Hide();
						getglobal(nFrame.."LFMWhisperRequestInviteButton"):Hide();
						if entry.dlevel and UnitLevel("player") >= entry.dlevel - 3 and UnitLevel("player") <= entry.dlevel + 3 then
							if not entry.lfg and (not GF_RequestInviteTime[entry.op] or GF_RequestInviteTime[entry.op] < time()) then getglobal(nFrame.."LFMWhisperRequestInviteButton"):Show(); end
							if entry.lfg and (not GF_LFGInviteTime[entry.op] or GF_LFGInviteTime[entry.op] < time()) then getglobal(nFrame.."LFGInviteButton"):Show(); end
						end
					else
						getglobal(nFrame.."GroupWhoButton"):Hide();
						getglobal(nFrame.."LFGInviteButton"):Hide();
						getglobal(nFrame.."LFMWhisperRequestInviteButton"):Hide();
					end
				else
					getglobal(nFrame):Hide();
					getglobal(nFrame.."GroupWhoButton"):Hide();
					getglobal(nFrame.."LFGInviteButton"):Hide();
					getglobal(nFrame.."LFMWhisperRequestInviteButton"):Hide();
				end
			else
				getglobal(nFrame):Hide();
			end
		end
	end
end
function GF_ListItem_OnMouseUp(id)
	if (arg1 == "RightButton") then
		local name = GF_FilteredResultsList[GF_ResultsListOffset + id].op;
		HideDropDownMenu(1);
		if name ~= GF_MyName then
			FriendsDropDown.initialize = FriendsFrameDropDown_Initialize;
			FriendsDropDown.displayMode = "MENU";
			FriendsDropDown.name = name;
			ToggleDropDownMenu(1, nil, FriendsDropDown, "cursor");
		end
		return;
	end
end
function GF_ListItemAuxLeft_ShowTooltip(frame, id)
	GameTooltip:ClearLines();
	GameTooltip:SetOwner(this, "ANCHOR_BOTTOMLEFT");
	GameTooltip:ClearAllPoints();
	GameTooltip:SetPoint("BOTTOMLEFT", frame:GetName(), "TOPLEFT", 0, 8);
	
	if not GF_FilteredResultsList[GF_ResultsListOffset+id] then return; end
	
	--GameTooltip:AddLine(GF_FilteredResultsList[GF_ResultsListOffset+id].op);
	GameTooltip:AddLine(GF_FilteredResultsList[GF_ResultsListOffset+id].message, 0.9, 0.9, 1.0, 1, 1);
	GameTooltip:Show();
end
function GF_ResultItem_Hover_On(frame,id)
	frame:SetHeight(32);
	getglobal(frame:GetName().."MoreLabel"):Show();
	getglobal(frame:GetName().."MoreRightLabel"):Show();
	getglobal(frame:GetName().."TextureBlue"):Show();
	getglobal(frame:GetName().."NameLabel"):SetPoint("TOPLEFT", frame:GetName(), "TOPLEFT", 37, 0);
	getglobal(frame:GetName().."MoreLabel"):SetPoint("LEFT", frame:GetName(), "LEFT", 37, -6);
	getglobal(frame:GetName().."TextureSelectedBg"):Show();
	getglobal(frame:GetName().."TextureSelectedIcon"):Show();
end
function GF_ResultItem_Hover_Off(frame)
	frame:SetHeight(18);
	getglobal(frame:GetName().."MoreLabel"):Hide();
	getglobal(frame:GetName().."MoreRightLabel"):Hide();
	getglobal(frame:GetName().."TextureBlue"):Hide();
	getglobal(frame:GetName().."NameLabel"):SetPoint("TOPLEFT", frame:GetName(), "TOPLEFT", 5, 0);
	getglobal(frame:GetName().."MoreLabel"):SetPoint("LEFT", frame:GetName(), "LEFT", 5, -6);
	getglobal(frame:GetName().."TextureSelectedBg"):Hide();
	getglobal(frame:GetName().."TextureSelectedIcon"):Hide();
end
function GF_GetGroupWhoButton(frame,id)
	if not GF_UrgentWhoRequest[GF_FilteredResultsList[GF_ResultsListOffset+id].op] then
		if GF_NextAvailableWhoTime + 1 > time() then
			DEFAULT_CHAT_FRAME:AddMessage(GF_SENDING_WHO_FOR..GF_FilteredResultsList[GF_ResultsListOffset+id].op.." - "..math.ceil(GF_NextAvailableWhoTime - time() + getn(GF_UrgentWhoRequest) * 30)..GF_SECONDS, 1, 1, 0.5);
		else
			DEFAULT_CHAT_FRAME:AddMessage(GF_SENDING_WHO_FOR..GF_FilteredResultsList[GF_ResultsListOffset+id].op, 1, 1, 0.5);
		end
		table.insert(GF_UrgentWhoRequest, GF_FilteredResultsList[GF_ResultsListOffset+id].op);
		GF_UrgentWhoRequest[GF_FilteredResultsList[GF_ResultsListOffset+id].op] = time()
		getglobal(frame:GetName().."GroupWhoButton"):Hide();
	end
end
function GF_LFGInviteButton(frame,id)
	SendChatMessage(GF_INVITING_FOR..GF_FilteredResultsList[GF_ResultsListOffset+id].message,"WHISPER",nil,GF_FilteredResultsList[GF_ResultsListOffset+id].op)
	InviteByName(GF_FilteredResultsList[GF_ResultsListOffset+id].op)
	GF_LFGInviteTime[GF_FilteredResultsList[GF_ResultsListOffset+id].op] = time() + 10
	getglobal(frame:GetName().."LFGInviteButton"):Hide();
end
function GF_LFMWhisperRequestInviteButton(frame,id)
	local specName = "";
	for i=1,3 do
		_,_,_,_,findSpec = GetTalentInfo(i,GetNumTalents(i));
		if findSpec > 0 then specName = GF_LFG_SPECS[UnitClass("player")][i].." " break end
	end
	SendChatMessage("["..UnitLevel("player").." "..specName..UnitClass("player").."] "..GF_INVITE_PLEASE,"WHISPER",nil,GF_FilteredResultsList[GF_ResultsListOffset+id].op)
	GF_RequestInviteTime[GF_FilteredResultsList[GF_ResultsListOffset+id].op] = time() + 120
	getglobal(frame:GetName().."LFMWhisperRequestInviteButton"):Hide();
	end

function GF_WhisperHistoryButtonPressed(id,override) -- Whisper/Guild History Functions
	if not override and id == GF_WhisperLogCurrentButtonID then return end
	getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):UnlockHighlight()
	getglobal("GF_WhisperHistoryButton"..id):LockHighlight()
	if GF_WhisperLogCurrentButtonID > 1 then getglobal("GF_WhisperHistoryButtonCheckButton"..GF_WhisperLogCurrentButtonID):Hide() end
	if id > 1 then getglobal("GF_WhisperHistoryButtonCheckButton"..id):Show() end
	
	GF_WhisperLogCurrentButtonID = id;
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

	if name == GF_MyName and (event == "CHAT_MSG_WHISPER_INFORM" or event == "CHAT_MSG_WHISPER") then return end
	if not GF_WhisperLogData[GF_RealmName][name] then
		GF_WhisperLogData[GF_RealmName][name] = {}
		if GF_Friends[name] then GF_WhisperLogData[GF_RealmName][name].priority = true; end
	end
	if event == "CHAT_MSG_WHISPER_INFORM" then
		if GF_WhoTable[GF_RealmName][name] and GF_WhoTable[GF_RealmName][name][1] then 
			message = "|cff"..GF_TextColors[event].."["..date("%m/%d").."] ["..date("%H:%M").."] ".."[To] ".."|r|cff"..GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]].."[|Hplayer:"..name.."|h"..name..", "..GF_WhoTable[GF_RealmName][name][1].."]:|h|r|cff"..GF_TextColors[event]..message.."|r"
		else
			message = "|cff"..GF_TextColors[event].."["..date("%m/%d").."] ["..date("%H:%M").."] ".."[To] ".."|r|cff".."9d9d9d".."[|Hplayer:"..name.."|h"..name.."]:|h|r|cff"..GF_TextColors[event]..message.."|r"
		end
	elseif event == "CHAT_MSG_WHISPER" then
		if GF_WhoTable[GF_RealmName][name] and GF_WhoTable[GF_RealmName][name][1] then 
			message = "|cff"..GF_TextColors[event].."["..date("%m/%d").."] ["..date("%H:%M").."] ".."[From] ".."|r|cff"..GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]].."[|Hplayer:"..name.."|h"..name..", "..GF_WhoTable[GF_RealmName][name][1].."]:|h|r|cff"..GF_TextColors[event]..message.."|r"
		else
			message = "|cff"..GF_TextColors[event].."["..date("%m/%d").."] ["..date("%H:%M").."] ".."[From] ".."|r|cff".."9d9d9d".."[|Hplayer:"..name.."|h"..name.."]:|h|r|cff"..GF_TextColors[event]..message.."|r"
		end
	elseif event == "CHAT_MSG_GUILD" or event == "CHAT_MSG_OFFICER" then
		local guildName = ""
		for word in string.gfind(GetGuildInfo("player"), "(%w+)") do
			guildName = guildName..string.upper(string.sub(word,1,1))
		end
		if GF_WhoTable[GF_RealmName][name] and GF_WhoTable[GF_RealmName][name][1] and GF_WhoTable[GF_RealmName][name][2] then 
			message = "|cff"..GF_TextColors[event].."["..date("%m/%d").."] ["..date("%H:%M").."] ["..guildName.."] |r|cff"..GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]].."[|Hplayer:"..name.."|h"..name..", "..GF_WhoTable[GF_RealmName][name][1].."]:|h|r|cff"..GF_TextColors[event]..message.."|r"
		else
			message = "|cff"..GF_TextColors[event].."["..date("%m/%d").."] ["..date("%H:%M").."] ["..guildName.."] |r|cff".."9d9d9d".."[|Hplayer:"..name.."|h"..name.."]:|h|r|cff"..GF_TextColors[event]..message.."|r"
		end
		table.insert(GF_WhisperLogData[GF_RealmName]["Guild"],1,message)
		if getn(GF_WhisperLogData[GF_RealmName]["Guild"]) > 128 then table.remove(GF_WhisperLogData[GF_RealmName]["Guild"],129) end
	end
	if event ~= "CHAT_MSG_GUILD" and event ~= "CHAT_MSG_OFFICER" then
		table.insert(GF_WhisperLogData[GF_RealmName][name],1,message)
		table.insert(GF_WhisperLogData[GF_RealmName]["Guild"],1,message)
		if getn(GF_WhisperLogData[GF_RealmName][name]) > 128 then table.remove(GF_WhisperLogData[GF_RealmName][name],129) end
		if getn(GF_WhisperLogData[GF_RealmName]["Guild"]) > 128 then table.remove(GF_WhisperLogData[GF_RealmName]["Guild"],129) end
		if GF_WhisperLogCurrentButtonID > 1 then GF_Log:AddMessage(message, 1, 192/255, 192/255) end
		GF_WhisperHistoryUpdateFrame(name)
	end
	table.insert(GF_LogHistory[GF_RealmName],1,{message, 10})
	if getn(GF_LogHistory[GF_RealmName]) > 500 then table.remove(GF_LogHistory[GF_RealmName],501) end
	if GF_WhisperLogCurrentButtonID < 2 then GF_Log:AddMessage(message, 1, 192/255, 192/255) end
end
function GF_WhisperHistoryUpdateFrame(name)
	local numPriority = 0;
	local nameWasPriority;
	local counter = 2;
	if not GF_WhisperLogData[GF_RealmName][1] then table.insert(GF_WhisperLogData[GF_RealmName], "Guild") end
	while true do
		if not name or not GF_WhisperLogData[GF_RealmName][counter] or counter == 21 then break end
		if GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][counter]].priority then numPriority = numPriority+1; end
		if name == GF_WhisperLogData[GF_RealmName][counter] then if GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][counter]].priority then nameWasPriority = true; end table.remove(GF_WhisperLogData[GF_RealmName],counter) else counter = counter+1 end
	end
	if name then
		if nameWasPriority then
			table.insert(GF_WhisperLogData[GF_RealmName],2,name)
		else
			table.insert(GF_WhisperLogData[GF_RealmName],2+numPriority,name)
		end
	end
	for i=2, 20 do
		if GF_WhisperLogData[GF_RealmName][i] then
			if GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][i]].priority then getglobal("GF_WhisperHistoryButtonCheckButton"..i):SetChecked(true) else getglobal("GF_WhisperHistoryButtonCheckButton"..i):SetChecked(false) end
			getglobal("GF_WhisperHistoryButton"..i):SetText(GF_WhisperLogData[GF_RealmName][i])
			getglobal("GF_WhisperHistoryButton"..i):Show()
		else
			getglobal("GF_WhisperHistoryButton"..i):SetText("")
			getglobal("GF_WhisperHistoryButton"..i):Hide()
		end
	end
	if name and GF_WhisperLogCurrentButtonID > 1 then
		if nameWasPriority then 
			if GF_WhisperLogCurrentButtonID ~= 2 then GF_WhisperHistoryButtonPressed(2,true) end
		else
			if GF_WhisperLogCurrentButtonID ~= 2+numPriority then GF_WhisperHistoryButtonPressed(2+numPriority,true) end
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
		GF_Log:AddMessage(tempHistoryTable[i], 1, 192/255, 192/255)
	end
end
function GF_WhisperHistoryPriorityListCheckButtonPressed(id,name,priority)
	GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][id]].priority = priority;
	GF_WhisperHistoryUpdateFrame(name)
end

function GF_UpdateBlackListItems() -- Blacklist functions
	local groupListLength = getn(GF_BlackList[GF_RealmName]);

	local cpage = floor(GF_BlackListOffset / 20);
	local tpage = floor(groupListLength / 20);
	if cpage == 0 or cpage <= GF_BlackListOffset / 20 then cpage = cpage + 1; end
	if tpage == 0 or tpage < groupListLength / 20 then tpage = tpage + 1; end
	GF_BlackListFramePageLabel:SetText(GF_PAGE.." "..cpage.." / "..tpage);
	GF_BlackListFramePageLabel:Show();
	for i=1, 20 do
		local c = "GF_BlackListItem"..i;
		if getglobal(c) then
			if i+GF_BlackListOffset <= groupListLength then 
				getglobal(c.."NameLabel"):SetText(GF_BlackList[GF_RealmName][GF_BlackListOffset+i][1]);
				getglobal(c.."NoteLabel"):SetTextColor(1, 1, 1);
				getglobal(c.."NoteLabel"):SetText(GF_BlackList[GF_RealmName][GF_BlackListOffset+i][2]);
				getglobal(c):Show();
			else
				getglobal(c):Hide();
			end
		end
	end
end
function GF_ShowBlackListFrame()
	GF_SettingsFrame:Hide();
	GF_LogFrame:Hide();
	GF_BlackListFrame:Show();
	GF_UpdateBlackListItems();	
end
function GF_EditBlackListItem(name)
	local tablePosition = GF_BlackListOffset + string.gsub(name, "GF_BlackListItem(%d+)", "%1")
	GF_BlackListItemEditFrameEditBox:SetText(GF_BlackList[GF_RealmName][tablePosition][2]);
	GF_BlackListItemEditFrameTitleLabel:SetText(GF_EDIT_PLAYER..": "..GF_BlackList[GF_RealmName][tablePosition][1]);
	GF_BlackListItemEditFrame:Show();
	GF_BlackListItemEditFrameEditBox:SetFocus();
end
function GF_BlacklistAddPlayerDialogOKButton_OnCLick()
	local name = GF_AddPlayerFrameEditBox:GetText()
	if name ~= "" and not GF_BlackList[GF_RealmName][name] and not string.find(name, "[%d%p%c%s]") then
		table.insert(GF_BlackList[GF_RealmName],1,{ name, GF_DEFAULT_PLAYER_NOTE })
		GF_BlackList[GF_RealmName][name] = true;
	else
		DEFAULT_CHAT_FRAME:AddMessage(name..GF_INVALID_PLAYER_NAME, 1, 1, 0.5);
	end
	GF_AddPlayerFrame:Hide();
	GF_AddPlayerFrameEditBox:SetText("");
	GF_UpdateBlackListItems();	
end
function GF_BlackListItemSaveChanges()
	local name = string.gsub(GF_BlackListItemEditFrameTitleLabel:GetText(), GF_EDIT_PLAYER..": ".."(%w+)", "%1");
	for i=1, getn(GF_BlackList[GF_RealmName]) do
		if GF_BlackList[GF_RealmName][i][1] == name then
			table.remove(GF_BlackList[GF_RealmName],i)
			table.insert(GF_BlackList[GF_RealmName],i, { name, GF_BlackListItemEditFrameEditBox:GetText()})
			break
		end
	end
	GF_BlackListItemEditFrame:Hide();
	GF_UpdateBlackListItems();	
end
function GF_DeletePlayer(id)
	GF_BlackList[GF_RealmName][GF_BlackList[GF_RealmName][GF_BlackListOffset+id][1]] = nil;
	table.remove(GF_BlackList[GF_RealmName], GF_BlackListOffset+id)
	GF_UpdateBlackListItems()
end

function GF_ToggleGetWho() -- GetWho functions
	if not GF_ClassWhoRequest then
		GF_GetWhoLevel = GF_FindDungeonLevel(string.lower(GF_LFGWhoWhisperEditBox:GetText()),string.lower(GF_LFGDescriptionEditBox:GetText()))
		if GF_GetWhoLevel then
			GF_GetWhoClassLevelList(GF_GetWhoLevel, GF_SavedVariables.lfgwhisperclass, true)
		else
			DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_NO_WHISPER_DUNGEON, 1, 1, 0.5);
		end
	else
		GF_ClassWhoRequest = nil;
		GF_LFGGetWhoButton:SetText(GF_GET_WHO.." - "..GF_ClassWhoMatchingResults);
	end
end
function GF_GetWhoClassLevelList(level,class,excludedungeonspvp)
	for name,whoData in pairs(GF_ClassWhoTable) do
		if whoData[4] + GF_GetWhoResetTimer < time() then GF_ClassWhoTable[name] = nil; end
	end
	GF_ClassWhoRequest = true;
	GF_ClassWhoMatchingResults = 0;
	GF_LFGGetWhoButton:SetText(GF_STOP_WHO);
	GF_GetWhoParams = { level, class, excludedungeonspvp, };
	GF_ClassWhoQueue = {}
	GF_GetClassWhoState = 1;
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
		table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel);
	elseif GF_GetClassWhoState == 2 and (level ~= maxlevel) then
		table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..level-1);
		table.insert(GF_ClassWhoQueue, "c-"..class.." "..level.."-"..maxlevel);
	elseif GF_GetClassWhoState == 3 or (GF_GetClassWhoState == 2 and (level == maxlevel)) then
		if UnitFactionGroup("player") == "Alliance" then
			if (GF_RealmName == "Nordanaar" or GF_RealmName == "Tel'Abim") and GF_DoesClassMatchRace(class, GF_HIGH_ELF) then
				table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_HIGH_ELF.."\"");
			end
			if GF_DoesClassMatchRace(class, GF_GNOME) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_GNOME.."\""); end
			if GF_DoesClassMatchRace(class, GF_DWARF) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_DWARF.."\""); end
			if GF_DoesClassMatchRace(class, GF_NIGHT_ELF) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_NIGHT_ELF.."\""); end
			if GF_DoesClassMatchRace(class, GF_HUMAN) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_HUMAN.."\""); end
		else
			if (GF_RealmName == "Nordanaar" or GF_RealmName == "Tel'Abim") and GF_DoesClassMatchRace(class, GF_GOBLIN) then
				table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_GOBLIN.."\"");
			end
			if GF_DoesClassMatchRace(class, GF_TAUREN) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_TAUREN.."\""); end
			if GF_DoesClassMatchRace(class, GF_TROLL) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_TROLL.."\""); end
			if GF_DoesClassMatchRace(class, GF_ORC) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_ORC.."\""); end
			if GF_DoesClassMatchRace(class, GF_UNDEAD) then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\""..GF_UNDEAD.."\""); end
		end
		GF_GetClassWhoState = 3
	elseif GF_GetClassWhoState == 4 then
		table.insert(GF_ClassWhoQueue, "c-"..class.."\" "..minlevel .."-"..maxlevel.." ".."n-\"a\"");
		table.insert(GF_ClassWhoQueue, "c-"..class.."\" "..minlevel .."-"..maxlevel.." ".."n-\"e\"");
		table.insert(GF_ClassWhoQueue, "c-"..class.."\" "..minlevel .."-"..maxlevel.." ".."n-\"i\"");
		table.insert(GF_ClassWhoQueue, "c-"..class.."\" "..minlevel .."-"..maxlevel.." ".."n-\"o\"");
		table.insert(GF_ClassWhoQueue, "c-"..class.."\" "..minlevel .."-"..maxlevel.." ".."n-\"u\"");
	end
end
function GF_DoesClassMatchRace(class, race)
	if (GF_RealmName == "Nordanaar" or GF_RealmName == "Tel'Abim") then
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
		DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_NO_WHISPER_TEXT, 1, 1, 0.5);
	elseif string.len(whispermessage) > 5 then
		GF_GetWhoLevel = GF_FindDungeonLevel(string.lower(GF_LFGWhoWhisperEditBox:GetText()),string.lower(GF_LFGDescriptionEditBox:GetText())) or 60;
		for k,v in pairs(GF_ClassWhoTable) do
			if GF_ClassWhoTable[k][4] < time()-GF_GetWhoResetTimer then
				if GF_ClassWhoTable[k][1] >= GF_GetWhoLevel-GF_GetWhoLevelRange and GF_ClassWhoTable[k][1] <= GF_GetWhoLevel+GF_GetWhoLevelRange and GF_ClassWhoTable[k][2] == GF_SavedVariables.lfgwhisperclass then
					GF_ClassWhoTable[k][4] = time()
					GF_ClassWhoMatchingResults = GF_ClassWhoMatchingResults - 1;
					GF_LFGGetWhoButton:SetText(GF_GET_WHO.." - "..GF_ClassWhoMatchingResults);
					GF_ClassWhoRequest = nil;
					GF_ClassWhoQueue = {}
					SendChatMessage(whispermessage,"WHISPER",nil,k)
					return
				end
			end
		end
		DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_NO_PLAYERS_TO_WHISPER, 1, 1, 0.5);
	else
		DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_WHISPER_TEXT_TOO_SHORT, 1, 1, 0.5);
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
	local _,_,maxGroupSize = string.find(GF_SavedVariables.lfgsize, "(%d+)")
	if not lfmOnly then
		local foundLFM;
		local foundDungeonRaid = {}
		local foundRoles = {}
		local foundStartOfText;
		local endOfFilter = 0
		GF_SavedVariables.searchlfgtext = gsub(GF_SavedVariables.searchlfgtext, "[LFlf]+%d+[Mm]", "LFM")
		for i=1,getn(GF_BUTTONS_LIST.LFGLFM) do
			foundStartOfText = string.find(GF_SavedVariables.searchlfgtext, GF_BUTTONS_LIST.LFGLFM[i][1])
			if foundStartOfText then
				if i == 1 then
					foundLFM = 1
				elseif not foundLFM then
					foundLFM = GF_BUTTONS_LIST.LFGLFM[i][1];
				end
				if foundStartOfText + string.len(GF_BUTTONS_LIST.LFGLFM[i][1])-1 > endOfFilter then endOfFilter = foundStartOfText + string.len(GF_BUTTONS_LIST.LFGLFM[i][1])-1 end
			end
		end
		for i=1,getn(GF_BUTTONS_LIST.LFGRole) do
			foundStartOfText = string.find(GF_SavedVariables.searchlfgtext, GF_BUTTONS_LIST.LFGRole[i][1])
			if foundStartOfText then
				if foundStartOfText + string.len(GF_BUTTONS_LIST.LFGRole[i][1])-1 > endOfFilter then endOfFilter = foundStartOfText + string.len(GF_BUTTONS_LIST.LFGRole[i][1])-1 end
				table.insert(foundRoles,GF_BUTTONS_LIST.LFGRole[i][1]);
			end
		end
		for i=1,getn(GF_BUTTONS_LIST.LFGDungeon) do
			foundStartOfText = string.find(GF_SavedVariables.searchlfgtext, GF_BUTTONS_LIST.LFGDungeon[i][1]) or string.find(GF_SavedVariables.searchlfgtext, GF_BUTTONS_LIST.LFGDungeon[i][4])
			if foundStartOfText then
				if foundStartOfText + string.len(GF_BUTTONS_LIST.LFGDungeon[i][1])-1 > endOfFilter then endOfFilter = foundStartOfText + string.len(GF_BUTTONS_LIST.LFGDungeon[i][1])-1 end
				maxGroupSize = 5;
				table.insert(foundDungeonRaid,GF_BUTTONS_LIST.LFGDungeon[i][1]);
			end
		end
		for i=1,getn(GF_BUTTONS_LIST.LFGRaid) do
			foundStartOfText = string.find(GF_SavedVariables.searchlfgtext, GF_BUTTONS_LIST.LFGRaid[i][1]) or string.find(GF_SavedVariables.searchlfgtext, GF_BUTTONS_LIST.LFGRaid[i][4])
			if foundStartOfText then
				if foundStartOfText + string.len(GF_BUTTONS_LIST.LFGRaid[i][1])-1 > endOfFilter then endOfFilter = foundStartOfText + string.len(GF_BUTTONS_LIST.LFGRaid[i][1])-1 end
				maxGroupSize = GF_BUTTONS_LIST.LFGRaid[i][7];
				table.insert(foundDungeonRaid,GF_BUTTONS_LIST.LFGRaid[i][1]);
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
		getglobal(GF_LFGDescriptionEditBox:GetName()):SetText(GF_SavedVariables.searchlfgtext);
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
	GF_NumLFGSearchButtons = 0;
	GF_SavedVariables.searchlfgtext = GF_LFGDescriptionEditBox:GetText();
	local LFGLFMFound = nil;
	for _,dtable in pairs(GF_BUTTONS_LIST[bframe]) do
		if UnitLevel("player") >= dtable[2] and UnitLevel("player") <= dtable[3] then
			GF_NumLFGSearchButtons = GF_NumLFGSearchButtons + 1
			local button = getglobal("GF_"..bframe..GF_NumLFGSearchButtons) or GF_CreateSearchDropdownButton(GF_NumLFGSearchButtons, getglobal("GF_"..bframe))
			getglobal(button:GetName().."TextLabel"):SetText(dtable[1]);
			if getglobal(button:GetName().."TextLabel"):GetStringWidth() >= width then width = getglobal(button:GetName().."TextLabel"):GetStringWidth()+5 end
			button:Show()
			if bframe == "SearchList" then
				if string.find(GF_SavedVariables.searchbuttonstext, dtable[4]) then
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
				if GF_SavedVariables.lfgsize == dtable[1] then
					button:SetChecked(true)
				else
					button:SetChecked(false)
				end
			else
				if dtable[1] == GF_CLEAR then
					button:SetChecked(true)
				else
					if string.find(GF_SavedVariables.searchlfgtext, dtable[1]) then
						if bframe== "LFGLFM" and LFGLFMFound then button:SetChecked(false) else button:SetChecked(true) LFGLFMFound = true; end
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
			GF_SavedVariables.searchbuttonstext = ""
			GF_SavedVariables.searchtext = ""
			getglobal(GF_GroupsFrameDescriptionEditBox:GetName()):SetText("");
		else
			for i=1, getn(GF_BUTTONS_LIST[bframe]) do
				if GF_BUTTONS_LIST[bframe][i][1] == entryname then
					for j=4, getn(GF_BUTTONS_LIST[bframe][i]) do
						if add then
							GF_SavedVariables.searchbuttonstext = GF_BUTTONS_LIST[bframe][i][j].."/"..GF_SavedVariables.searchbuttonstext
						else
							GF_SavedVariables.searchbuttonstext = gsub(GF_SavedVariables.searchbuttonstext, GF_BUTTONS_LIST[bframe][i][j].."[/%+%-]+", "")
						end
					end
				end
			end
		end
		if GF_SavedVariables.searchbuttonstext == "" then GF_SearchListDropdown:UnlockHighlight() else GF_SearchListDropdown:LockHighlight() end
		GF_ApplyFiltersToGroupList();
	else
		for i=1, getn(GF_BUTTONS_LIST[bframe]) do
			if GF_BUTTONS_LIST[bframe][i][1] == entryname then
				if add then
					if bframe == "LFGWhoClass" then
						GF_SavedVariables.lfgwhisperclass = entryname;
						getglobal(GF_LFGWhoClassDropdown:GetName().."TextLabel"):SetText(GF_SavedVariables.lfgwhisperclass);
						getglobal(GF_LFGWhoClassDropdown:GetName().."TextLabel"):SetPoint("LEFT", "GF_LFGWhoClassDropdown", "LEFT", 22, 3);
						GF_LFGWhoClass:Hide()
					elseif bframe == "LFGSize" then
						GF_SavedVariables.lfgsize = entryname;
						getglobal(GF_LFGSizeDropdown:GetName().."TextLabel"):SetText(GF_SavedVariables.lfgsize);
						getglobal(GF_LFGSizeDropdown:GetName().."TextLabel"):SetPoint("LEFT", "GF_LFGSizeDropdown", "LEFT", 22, 3);
						GF_LFGSize:Hide()
					elseif bframe == "LFGLFM" then
						for j=1, getn(GF_BUTTONS_LIST[bframe]) do
							GF_SavedVariables.searchlfgtext = gsub(GF_SavedVariables.searchlfgtext, GF_BUTTONS_LIST.LFGLFM[j][1], "")
						end
						GF_SavedVariables.searchlfgtext = gsub(GF_SavedVariables.searchlfgtext, "LF%d+M", "")
						GF_SavedVariables.searchlfgtext = GF_BUTTONS_LIST[bframe][i][1]..gsub(GF_SavedVariables.searchlfgtext, "^%d+", "")
						GF_LFGLFM:Hide()
					else
						GF_SavedVariables.searchlfgtext = GF_BUTTONS_LIST[bframe][i][1]..gsub(GF_SavedVariables.searchlfgtext, "^%d+", "")
					end
				else
					GF_SavedVariables.searchlfgtext = gsub(gsub(gsub(gsub(GF_SavedVariables.searchlfgtext, "^%d+", ""),"for "..GF_BUTTONS_LIST[bframe][i][1],""),"need "..GF_BUTTONS_LIST[bframe][i][1],""),GF_BUTTONS_LIST[bframe][i][1],"")
					GF_LFGLFM:Hide()
				end
				getglobal(GF_LFGDescriptionEditBox:GetName()):SetText(GF_SavedVariables.searchlfgtext);
			end
		end
		if bframe == "LFGSize" then GF_FixLFGStrings(true) else GF_FixLFGStrings() end
	end
end

function GF_FindGroupsAndDisplayCustomChatMessages(event,arg1,arg2,arg9) -- Chat Filters and Group Finders
	if not GF_TextColors[event] or string.lower(arg9) == "lft" then
		return true;
	elseif GF_PreviousMessage[arg2] and GF_PreviousMessage[arg2][1] == arg1 and GF_PreviousMessage[arg2][2] > GetTime() then
		if GF_PreviousMessage[arg2][3] then return true; end
	elseif event == "CHAT_MSG_EMOTE" or event == "CHAT_MSG_TEXT_EMOTE" then
		if GF_BlackList[GF_RealmName][arg2] and not GF_PlayersCurrentlyInGroup[arg2] and not GF_Friends[arg2] and not GF_Guildies[arg2] then
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
			return nil
		elseif GF_CheckForSpam(arg1,arg2) then
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
			return nil
		end
		GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
		return true;
	elseif event == "CHAT_MSG_WHISPER" then
		GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
		GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,event)
		return true;
	elseif event == "CHAT_MSG_WHISPER_INFORM" then
		GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
		for i=1, getn(GF_MyWhispers) do
			if arg1 == GF_MyWhispers[i][1] then
				GF_WhisperReceivedAddToWhisperHistoryList(arg1,GF_MyWhispers[i][2],event)
				table.remove(GF_MyWhispers,i)
				break
			end
		end
		return true;
	elseif (event == "CHAT_MSG_GUILD" or event == "CHAT_MSG_OFFICER") then
		GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
		GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,event)
		return true;
	elseif arg2 == GF_MyName or event == "CHAT_MSG_PARTY" or event == "CHAT_MSG_RAID" or event == "CHAT_MSG_RAID_LEADER" or event == "CHAT_MSG_RAID_WARNING" or event == "CHAT_MSG_BATTLEGROUND" or event == "CHAT_MSG_BATTLEGROUND_LEADER" then
		GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
		GF_AddLogMessage(arg1,10,true,arg2,arg8,arg9,event)
		return true;
	elseif GF_LootFilter[event] then
		GF_AddLogMessage(arg1,6,true,arg2,arg8,arg9,event)
		if GF_SavedVariables.showloottexts or (event == "CHAT_MSG_LOOT" and GF_BypassLootFilter(arg1)) then
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
			return true;
		else
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25, nil}
			return nil;
		end
	elseif event == "CHAT_MSG_MONSTER_EMOTE" then
		if GF_SavedVariables.systemfilter and GF_CheckMonsterEmoteFilter(arg1) then
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
			return nil;
		else
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
			return true;
		end
	elseif event == "CHAT_MSG_SYSTEM" then
		if string.find(arg1, GF_WHO_MSG_SYSTEM) then
			for i=1, GetNumWhoResults() do
				local name,guild,level,_,class = GetWhoInfo(i);
				GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], guild, time() }
				GF_AddonWhoDataToBeSentBuffer[name] = GF_WhoTable[GF_RealmName][name]
				GF_AddonNamesFromWhoSinceLoggedOn[name] = true;
				if GF_UrgentWhoRequest[name] then GF_UrgentWhoRequest[name] = nil; GF_UpdateAndRequestTimer = 0 end
				if GF_IsFriendGuildieUsingAddon() then GF_AddonNeedToBroadcastSomething = true; end
				GF_TimeTillNextBroadcast = 0;
			end
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
			return true
		elseif GF_SavedVariables.systemfilter and GF_CheckSystemMessageFilter(arg1) then
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
			return nil;
		else
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
			return true;
		end
	elseif arg2 == "" then
		GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
		return true;
	else
		local logType = GF_CheckForGroups(arg1,arg2,event) or 4;
		GF_AddLogMessage(GF_CleanUpMessagesOfBadLinks(arg1),logType,true,arg2,arg8,arg9,event)
		if (GF_SavedVariables.alwaysshowguild and (GF_Guildies[arg2] or GF_Friends[arg2] or GF_PlayersCurrentlyInGroup[arg2])) or GF_ChatCheckFilters(logType,arg1,event) then
			if GF_SavedVariables.showoriginalchat or (event ~= "CHAT_MSG_CHANNEL") then
				GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,true}
				return true;
			else
				GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
				GF_AddChannelMessage(arg1,arg2,arg8,arg9)
				return nil;
			end
		else
			GF_PreviousMessage[arg2] = {arg1,GetTime() + .25,nil}
			return nil;
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
		if string.find(arg1, GF_SystemMessageFilters[i]) then return true; end
	end
end
function GF_CheckMonsterEmoteFilter(arg1)
	for i=1, getn(GF_MonsterEmoteFilters) do
		if string.find(arg1, GF_MonsterEmoteFilters[i]) then return true; end
	end
end
function GF_CheckForGroups(arg1,arg2,event,showanyway)
-- "Say" and "Yell" messages from guildies/friends/party members will be flagged as [M] and always displayed in chat and in logs.
-- "Channel" messages from guildies/friends/party members will be logged normally but will always be displayed in chat.

-- "Say" messages will always be displayed unless flagged as spam.
-- "Yell" and "Channel" messages will only display if allowed.
	if GF_BlackList[GF_RealmName][arg2] and not GF_PlayersCurrentlyInGroup[arg2] and not GF_Friends[arg2] and not GF_Guildies[arg2] then return 8 end
	GF_GetTypes(gsub(gsub(gsub(gsub(gsub(gsub(gsub(gsub(string.lower(" "..arg1.." "),".gg/%w+", ""), "|cff%w+|(%w+)[%d:]+|h", " %1 "), "|h|r", " "),"['']", "")," any? ?1 "," anyone ")," some ?1 "," anyone "),"g2g","gtg"),"k+","k"),showanyway)
	if not GF_SavedVariables.showguilds and GF_MessageData.foundGuild >= 3 and (event == "CHAT_MSG_CHANNEL" or event == "CHAT_MSG_YELL") then return 7
	elseif GF_MessageData.foundTrades >= 3 then return GF_CheckForSpam(arg1,arg2) or 5
	elseif GF_MessageData.foundIgnore and GF_MessageData.foundLFM < 4 then return GF_CheckForSpam(arg1,arg2) or 4 end

	local foundInGroup,entry = GF_GetGroupInformation(GF_CleanUpMessagesOfBadLinks(arg1),arg2);
	GF_GetWhoData(arg2,foundInGroup)
	if foundInGroup then
		table.insert(GF_MessageList[GF_RealmName],1,entry);
		GF_ApplyFiltersToGroupList()
		if not GF_EntryMatchesGroupFilterCriteria(entry) then
			foundInGroup = 3;
		elseif GF_SavedVariables.playsounds then
			PlaySoundFile( "Sound\\Interface\\PickUp\\PutDownRing.wav" );
		end
	end
	return GF_CheckForSpam(arg1,arg2,foundInGroup) or foundInGroup;
end -- /script GF_CheckForGroups("run mid level dungeons and sell boe's on ah","r","CHAT_MSG_SAY",true) if showanyway == true then print(wordString) end
function GF_GetTypes(arg1, showanyway)
	GF_MessageData = { foundIgnore = nil,foundGuild = 0,foundGuildExclusion = 0,foundLFM = 0,foundLFG = nil,foundClass = nil,foundQuest = nil,foundDungeon = nil,foundRaid = nil,foundTrades = 0,foundTradesExclusion = 0,foundPvP = nil,foundFlags = "" }
	local wordTable = {}
	local wordString;
	if string.sub(arg1,1,3) == "lfm" then table.insert(wordTable, "lfm") arg1 = string.sub(arg1, 4) GF_MessageData.foundLFM = 3
	elseif string.sub(arg1,1,3) == "lfg" then table.insert(wordTable, "lfg") arg1 = string.sub(arg1, 4) GF_MessageData.foundLFG = true
	elseif string.find(arg1, "lf[%s%d]+m ") then GF_MessageData.foundLFM = 4 local lfs,lfe = string.find(arg1, "lf[%s%d]+m ") if lfs > 1 then arg1 = string.sub(arg1,1,lfs+1)..string.sub(arg1,lfe) else arg1 = "lf"..string.sub(arg1,lfe) end
	elseif string.sub(arg1,1,2) == "lf" then table.insert(wordTable, "lf") arg1 = string.sub(arg1, 3) GF_MessageData.foundLFM = 2 GF_MessageData.foundTrades = 102.5 end
	if string.find(arg1, "%d+p") then local lfs,lfe = string.find(arg1, "%d+p") if lfs > 1 then arg1 = string.sub(arg1,1,lfs-1)..string.sub(arg1,lfe+1) else string.sub(arg1,lfe+1) end end
	for word in string.gfind(arg1, "(%a+)") do
		if not GF_WORD_SKIP[word] then table.insert(wordTable, word) end
	end
	for i=1, getn(wordTable) do
		if GF_LFM_OTHER[wordTable[i]] then GF_MessageData.foundLFM = 3
		elseif GF_LFG_OTHER[wordTable[i]] then GF_MessageData.foundLFG = true end
		if wordTable[i+1] then
			if GF_LFM_OTHER[wordTable[i]..wordTable[i+1]] then GF_MessageData.foundLFM = 3
			elseif GF_LFG_OTHER[wordTable[i]..wordTable[i+1]] then GF_MessageData.foundLFG = true end
		end
	end
	for j=0,3 do
		for i=1, getn(wordTable) do
			if wordTable[i+j] then
				if j == 0 then wordString = wordTable[i] elseif j == 1 then wordString = wordTable[i]..wordTable[i+1] elseif j == 2 then wordString = wordTable[i]..wordTable[i+1]..wordTable[i+2] else wordString = wordTable[i]..wordTable[i+1]..wordTable[i+2]..wordTable[i+3] end
				if GF_WORD_FIX[wordString] then
					wordTable[i] = GF_WORD_FIX[wordString]
					if j == 1 then wordTable[i+1] = "" elseif j == 2 then wordTable[i+1] = "" wordTable[i+2] = "" elseif j == 3 then wordTable[i+1] = "" wordTable[i+2] = "" wordTable[i+3] = "" end
				end
			end
		end
	end
	for j=0,3 do
		for i=1, getn(wordTable) do
			if wordTable[i+j] then
				if j == 0 then wordString = wordTable[i] elseif j == 1 then wordString = wordTable[i]..wordTable[i+1] elseif j == 2 then wordString = wordTable[i]..wordTable[i+1]..wordTable[i+2] else wordString = wordTable[i]..wordTable[i+1]..wordTable[i+2]..wordTable[i+3] end
				if GF_WORD_IGNORE[wordString] then GF_MessageData.foundIgnore = true
				elseif GF_WORD_GUILD[wordString] then
					if GF_MessageData.foundGuild < 100 then GF_MessageData.foundGuild = GF_MessageData.foundGuild + GF_WORD_GUILD[wordString]
					elseif GF_MessageData.foundGuild > 100 and GF_WORD_GUILD[wordString] < 100 then GF_MessageData.foundGuild = GF_MessageData.foundGuild + GF_WORD_GUILD[wordString] end
				elseif GF_GUILD_WORD_EXCLUSION[wordString] then GF_MessageData.foundGuildExclusion = GF_MessageData.foundGuildExclusion + GF_GUILD_WORD_EXCLUSION[wordString]
				elseif GF_WORD_LFM[wordString] then if GF_WORD_LFM[wordString] > GF_MessageData.foundLFM then GF_MessageData.foundLFM = GF_WORD_LFM[wordString] end
				elseif GF_WORD_LFG[wordString] then GF_MessageData.foundLFG = true
				elseif GF_WORD_CLASSES[wordString] then GF_MessageData.foundClass = GF_WORD_CLASSES[wordString]
				elseif GF_WORD_QUEST[wordString] then if GF_MessageData.foundQuest then if GF_WORD_QUEST[wordString] > GF_MessageData.foundQuest then GF_MessageData.foundQuest = GF_WORD_QUEST[wordString] end else GF_MessageData.foundQuest = GF_WORD_QUEST[wordString] GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1; end
				elseif GF_WORD_DUNGEON[wordString] then if GF_MessageData.foundDungeon then if GF_WORD_DUNGEON[wordString] > GF_MessageData.foundDungeon then GF_MessageData.foundDungeon = GF_WORD_DUNGEON[wordString] GF_MessageData.foundFlags = wordString; end else GF_MessageData.foundDungeon = GF_WORD_DUNGEON[wordString] GF_MessageData.foundFlags = wordString; GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1; end
				elseif GF_WORD_RAID[wordString] then GF_MessageData.foundRaid = GF_WORD_RAID[wordString] GF_MessageData.foundFlags = wordString; GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1;
				elseif GF_WORD_PVP[wordString] then GF_MessageData.foundPvP = GF_WORD_PVP[wordString] GF_MessageData.foundFlags = wordString; GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + 1; end
				if GF_WORD_TRADE[wordString] then
					if GF_MessageData.foundTrades < 100 then GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_WORD_TRADE[wordString]
					elseif GF_MessageData.foundTrades > 100 and GF_WORD_TRADE[wordString] < 100 then GF_MessageData.foundTrades = GF_MessageData.foundTrades + GF_WORD_TRADE[wordString] end
				elseif GF_TRADE_WORD_EXCLUSION[wordString] then GF_MessageData.foundTradesExclusion = GF_MessageData.foundTradesExclusion + GF_TRADE_WORD_EXCLUSION[wordString] end

				if (GF_WORD_QUEST[wordString] or GF_WORD_DUNGEON[wordString] or GF_WORD_RAID[wordString] or GF_WORD_PVP[wordString]) then
					for words,_ in GF_LFM_ONE_AFTER do if wordTable[i+j+1] and wordString..wordTable[i+j+1] == wordString..words then GF_MessageData.foundLFM = 2 end end
					for words,_ in GF_LFM_ONE_BEFORE do if wordTable[i-1] and wordTable[i-1]..wordString == words..wordString then GF_MessageData.foundLFM = 2 end end
					for words,_ in GF_LFM_TWO_AFTER do if wordTable[i+j+2] and wordString..wordTable[i+j+1]..wordTable[i+j+2] == wordString..words then GF_MessageData.foundLFM = 2 end end
					for words,_ in GF_LFM_TWO_BEFORE do if wordTable[i-2] and wordTable[i-2]..wordTable[i-1]..wordString == words..wordString then GF_MessageData.foundLFM = 2 end end
				end
			end
		end
	end
	if GF_MessageData.foundPvP == 0 then if string.find(arg1, "19") then GF_MessageData.foundPvP = 19 elseif string.find(arg1, "29") then GF_MessageData.foundPvP = 29 elseif string.find(arg1, "39") then GF_MessageData.foundPvP = 39
		elseif string.find(arg1, "49") then GF_MessageData.foundPvP = 49 elseif string.find(arg1, "59") then GF_MessageData.foundPvP = 59 elseif string.find(arg1, "60") then GF_MessageData.foundPvP = 60 end end
	if string.find(arg1, "k10") or string.find(arg1, "k40") then GF_MessageData.foundRaid = 64 GF_MessageData.foundFlags = "kara" end
	if GF_MessageData.foundLFM < 2 and ((string.find(arg1, "anyone%?") and string.find(arg1, "hquest")) or string.find(arg1, "%d+\=%d+")) then GF_MessageData.foundLFM = 2 end
	
	if string.find(arg1, "[ (]%d+ ?g") or string.find(arg1, "%d%s?+gold") or string.find(arg1, "[ (]%d+ ?s") or string.find(arg1, "%d%s?+silver") then GF_MessageData.foundTrades = GF_MessageData.foundTrades + 2 end
	while GF_MessageData.foundTrades > 100 do GF_MessageData.foundTrades = GF_MessageData.foundTrades - 100 end
	GF_MessageData.foundTrades = GF_MessageData.foundTrades - GF_MessageData.foundTradesExclusion

	if string.find(arg1, "<[a-zA-Z0-9%& ]+>") and GF_MessageData.foundGuild < 100 then GF_MessageData.foundGuild = GF_MessageData.foundGuild + 2; GF_MessageData.foundTrades = GF_MessageData.foundTrades - 1; end
	while GF_MessageData.foundGuild > 100 do GF_MessageData.foundGuild = GF_MessageData.foundGuild - 100 end
	GF_MessageData.foundGuild = GF_MessageData.foundGuild - GF_MessageData.foundGuildExclusion
	if string.len(arg1) > 60 then
		for i=1, getn(GF_STRING_FIND_LIST.GUILDBLOCKLIST) do
			if string.find(arg1, GF_STRING_FIND_LIST.GUILDBLOCKLIST[i]) then GF_MessageData.foundGuild = 3 break end
		end
	end
	if showanyway == true then
		for i=1, getn(wordTable) do
			print(wordTable[i])
		end
		print(GF_MessageData.foundGuild)
		print(GF_MessageData.foundGuildExclusion)
		print(GF_MessageData.foundTrades)
		print(GF_MessageData.foundTradesExclusion)
		print(GF_MessageData.foundLFM)
	end
end -- /script GF_GetTypes("geared hunter lfg strat scarlet", true)
function GF_CheckForSpam(arg1,arg2,foundInGroup)
	if not GF_PlayersCurrentlyInGroup[arg2] and not GF_Friends[arg2] and not GF_Guildies[arg2] then
		if (GF_WhoTable[GF_RealmName][arg2] and tonumber(GF_WhoTable[GF_RealmName][arg2][1]) < GF_SavedVariables.blockmessagebelowlevel) and GF_WhoTable[GF_RealmName][arg2][4] + 86400 > time() then return 9; end  -- Block lowlevel
		if GF_SavedVariables.spamfilter then
			if GF_PlayerMessages[arg2] and GF_PlayerMessages[arg2][1] and GF_PlayerMessages[arg2][1] > GetTime() then return 7 end
			if GF_IncomingMessagePrune + 3600 < time() then -- 1 hour
				for name,_ in GF_PlayerMessages do
					if GF_PlayerMessages[name][1] < GetTime() then
						GF_PlayerMessages[name] = nil;
					end
				end
				GF_IncomingMessagePrune = time();
			end
			if not GF_PlayerMessages[arg2] then
				GF_PlayerMessages[arg2] = { [1] = GetTime(), [2] = string.sub(arg1,math.random(math.ceil(string.len(arg1)/4)),math.ceil(string.len(arg1)/4*3 + math.random(math.ceil(string.len(arg1)/4)))), [3] = "ZZZzzz123654" }
			else
				if (GF_PlayerMessages[arg2][1] + GF_SavedVariables.spamfilterduration*60 > GetTime()) and
				(((string.len(GF_PlayerMessages[arg2][2]) > 30 and string.find(arg1,GF_PlayerMessages[arg2][2],1,true)) or (string.len(GF_PlayerMessages[arg2][3]) > 30 and string.find(arg1,GF_PlayerMessages[arg2][3],1,true)))
				or (string.find(arg1,GF_PlayerMessages[arg2][2],1,true) and string.find(arg1,GF_PlayerMessages[arg2][3],1,true))) then	-- Found Spammer
					if GF_SavedVariables.autoblacklist and not GF_BlackList[GF_RealmName][arg2] and string.len(arg1) > 120 then
						if GF_WhoTable[GF_RealmName][arg2] and GF_WhoTable[GF_RealmName][arg2][4] + 86400 > time() then -- Data must be less than a day old to autoblacklist or block lowlevel
							if tonumber(GF_WhoTable[GF_RealmName][arg2][1]) <= GF_SavedVariables.autoblacklistminlevel then																			-- Blacklist if below level filter
								table.insert(GF_BlackList[GF_RealmName], 1, { arg2, "("..GF_WhoTable[GF_RealmName][arg2][1]..") "..arg1 })
								GF_BlackList[GF_RealmName][arg2] = true;
								GF_UpdateBlackListItems()
								return 8;
							end
						else
							GF_WhoTable[GF_RealmName][arg2] = nil;
							if GF_SavedVariables.usewhoongroups and not GF_WhoQueue[name] then GF_AddNameToWhoQueue(arg2,true); end
						end
					end
					GF_PlayerMessages[arg2][1] = GF_PlayerMessages[arg2][1] + GF_SavedVariables.spamfilterduration*60
					return 7
				else
					GF_PlayerMessages[arg2][1] = GetTime()
				end
				table.insert(GF_PlayerMessages[arg2],2,string.sub(arg1,math.random(math.ceil(string.len(arg1)/4)),math.ceil(string.len(arg1)/4*3 + math.random(math.ceil(string.len(arg1)/4)))))
				table.remove(GF_PlayerMessages[arg2],4)
				if string.find(arg1,string.sub(arg1,1,20),21, true) then GF_PlayerMessages[arg2][1] = GetTime() return 7 end																	-- Repeating text in the same message
			end
		end
	end
end

function GF_GetGroupInformation(arg1,arg2) -- Searches messages for Groups and similiar functions
	if (GF_SavedVariables.FilterLevel == 1 and (GF_MessageData.foundLFM >=1 or GF_MessageData.foundLFG))
	or (GF_SavedVariables.FilterLevel == 2 and (GF_MessageData.foundLFM >=2 or GF_MessageData.foundLFG) and (GF_MessageData.foundRaid or GF_MessageData.foundDungeon or GF_MessageData.foundQuest or GF_MessageData.foundPvP or GF_MessageData.foundClass))
	or (GF_SavedVariables.FilterLevel == 3 and (GF_MessageData.foundLFM >=3 or GF_MessageData.foundLFG) and (GF_MessageData.foundRaid or GF_MessageData.foundDungeon or GF_MessageData.foundQuest or GF_MessageData.foundPvP or GF_MessageData.foundClass)) then
	else return end

	local entry = {};
	entry.op = arg2;
	entry.message = arg1;
	if GF_MessageData.foundRaid then entry.type = "R"
	elseif GF_MessageData.foundDungeon and (not GF_MessageData.foundQuest or GF_MessageData.foundQuest == 0 or GF_MessageData.foundDungeon >= GF_MessageData.foundQuest) then entry.type = "D"
	elseif GF_MessageData.foundQuest then entry.type = "Q"
	else entry.type = "N" end
	if GF_MessageData.foundQuest and GF_MessageData.foundDungeon and GF_MessageData.foundQuest > GF_MessageData.foundDungeon then GF_MessageData.foundDungeon = nil GF_MessageData.foundFlags = "" end
	
	entry.dlevel = GF_MessageData.foundRaid or GF_MessageData.foundDungeon or GF_MessageData.foundQuest or GF_MessageData.foundPvP or GF_MessageData.foundClass or 0;
	if entry.dlevel == 0 and not GF_WhoTable[GF_RealmName][entry.op] then
		local number = 0;
		for num in string.gfind(arg1, "(%d+)[%s\[\]]?") do
			if tonumber(num) > number and tonumber(num) > 10 and tonumber(num) < 61 then number = tonumber(num) end
		end
		entry.dlevel = number
	end
	entry.t = time()
	entry.lfg = GF_MessageData.foundLFG
	entry.flags = GF_MessageData.foundFlags

	for i = 1, getn(GF_MessageList[GF_RealmName]) do
		if arg2 == GF_MessageList[GF_RealmName][i].op then
			if GF_SavedVariables.showgroupsnewonly then
				if GF_MessageList[GF_RealmName][i].t + GF_SavedVariables.showgroupsnewonlytime*60 > time() then
					entry.t = GF_MessageList[GF_RealmName][i].t
				else
					table.remove(GF_MessageList[GF_RealmName], i);
					return 2, entry;
				end
			end
			table.remove(GF_MessageList[GF_RealmName], i);
			break;
		end
	end
	return 1, entry
end
function GF_SearchMessageForTextString(msg,textstring,entry,buttontext)
	for w in string.gfind(textstring, "([%w%s]+),") do
		if string.find(msg, w) then return true end
	end
	for word in string.gfind(buttontext, "(%a+)") do
		if entry.flags == word then return true end
	end
end

function print(msg) -- I added this only temporarily so I could work on the addon without having to turn on other addons(reload faster)
	if not msg then
		DEFAULT_CHAT_FRAME:AddMessage("nil", 1, 1, 0.5);
	elseif type(msg) == "table" then
		DEFAULT_CHAT_FRAME:AddMessage("table", 1, 1, 0.5);
	else
		DEFAULT_CHAT_FRAME:AddMessage(msg, 1, 1, 0.5);
	end
end