GF_SavedVariables = {
	joinworld					= true,
	addonsendtimeout			= 0,
	showoriginalchat			= false;
	usewhoongroups				= true;
	showpolitics				= true;
	blockmessagebelowlevel		= 1;
	grouplistingduration		= 30,
	showgroupsinchat			= true,
	showgroupsinminimap			= false,
	showgroupsnewonly			= false,
	showgroupsnewonlytime		= 3,
	showchattexts				= true,
	showtradestexts				= true,
	showloottexts				= true;
	errorfilter					= false,
	spamfilter					= true,
	spamfilterduration			= 5,
	autoblacklist				= true,
	autoblacklistminlevel		= 12,
	playsounds					= false,
	autofilter					= false,
	autofilterlevelvar			= 6,
	showtranslate				= true,
	showdungeons				= true,
	showraids					= true,
	showquests					= true,
	showother					= true,
	showlfm						= true,
	showlfg						= true,
	searchtext					= "",
	searchbuttonstext			= "",
	searchlfgtext				= "",
	searchlfgwhispertext		= "",
	lfgwhisperclass				= GF_WARRIOR,
	announcetimer				= 300,
	lfgauto						= false,
	lfgsize						= GF_5_MAN,
	FilterLevel					= 2,
	MinimapArcOffset			= 282,
	MinimapRadiusOffset			= 84,
	MinimapMsgArcOffset			= 345,
	MinimapMsgRadiusOffset		= 90,
	MainFrameTransparency		= 0.85,
	MainFrameUIScale			= 1,
	MainFrameXPos				= nil,
	MainFrameYPos				= nil,
	showwhisperlogs				= false,
	logshowgroup				= true,
	logshowfiltered				= true,
	logshowchat					= true,
	logshowtrades				= true,
	logshowpolitics				= true,
	logshowloot					= true,
	logshowspam					= true,
	logshowblacklist			= true,
	logshowbelowlevel			= true,
	loghidemainframe			= false,
	logshowwhisperwindow		= true,
	loghidemainframeheight		= false,
	loghidemainframelogdef		= false,
};
GF_RealmName								= GetRealmName();
local GF_MaxEntriesPerRealmOnPrune			= 20000;
local GF_WhoCooldownTime					= 10;
local GF_NextAvailableWhoTime				= 0;
local GF_UrgentWhoRequest					= nil;
local GF_UrgentWhoRequestSaved				= nil;
local GF_WhoQueue							= {};
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
local GF_AddonListOfGuildiesWithAddon		= {};
local GF_AddonTimeSinceLastUpdate			= 0;
local GF_AddonNamesFromWhoSinceLoggedOn		= {};

GF_AutoAnnounceTimer						= nil;
local GF_WasPartyLeaderBefore				= nil;
local GF_PlayersCurrentlyInGroup			= {};
local GF_Friends							= {};
local GF_Guildies							= {};
local GF_CurrentNumFriends					= 0;
local GF_CurrentNumGuildies					= 0;
local GF_UpdateTicker						= 0;
local GF_TimeTillNextBroadcast				= 5;
local GF_UpdateAndRequestTimer				= 2;
local GF_RequestWhoDataPeriodicallyTimer	= 30;
GF_PlayerMessages							= {};
GF_IncomingMessagePrune						= 0;
local GF_PreviousMessage					= {};
local GF_MiniMapMessages					= { 0,0,0,0,0,0 };
local GF_LogMessageCodes = { GF_BLOCKED_GROUPS, GF_BLOCKED_NEW, GF_BLOCKED_CHAT, GF_BLOCKED_TRADES, GF_BLOCKED_POLITICS, GF_LOOT_MESSAGE, GF_BLOCKED_SPAM, GF_BLACKLIST_MESSAGE, GF_BLOCKED_BELOWLEVEL, GF_LOG_ME, GF_BLOCKED_FILTER }
local GF_WhisperLogCurrentButtonID			= 0;
GF_WhisperLogData							= {}
GF_WhisperLogData[GF_RealmName]				= {}
GF_WhisperLogData[GF_RealmName]["Guild"]	= {}
local GF_MyWhispers							= {}
local GF_Classes							= { [GF_PRIEST]="PRIEST",[GF_MAGE]="MAGE",[GF_WARLOCK]="WARLOCK",[GF_DRUID]="DRUID",[GF_HUNTER]="HUNTER",[GF_ROGUE]="ROGUE",[GF_WARRIOR]="WARRIOR",[GF_PALADIN]="PALADIN",[GF_SHAMAN]="SHAMAN",
												["PRIEST"]=GF_PRIEST,["MAGE"]=GF_MAGE,["WARLOCK"]=GF_WARLOCK,["DRUID"]=GF_DRUID,["HUNTER"]=GF_HUNTER,["ROGUE"]=GF_ROGUE,["WARRIOR"]=GF_WARRIOR,["PALADIN"]=GF_PALADIN,["SHAMAN"]=GF_SHAMAN }
local GF_ClassColors						= {	["PRIEST"]="ffffff",["MAGE"]="68ccef",["WARLOCK"]="9382c9",["DRUID"]="ff7c0a",["HUNTER"]="aad372",["ROGUE"]="fff468",["WARRIOR"]="c69b6d",["PALADIN"]="f48cba",["SHAMAN"]="0070dd" }
local GF_ClassIDs = { "PRIEST", "MAGE", "WARLOCK", "DRUID", "HUNTER", "ROGUE", "WARRIOR", "PALADIN", "SHAMAN", ["PRIEST"]=1,["MAGE"]=2,["WARLOCK"]=3,["DRUID"]=4,["HUNTER"]=5,["ROGUE"]=6,["WARRIOR"]=7,["PALADIN"]=8,["SHAMAN"]=9 }
local GF_TextColors = { ["CHAT_MSG_SYSTEM"] = "ffff00", ["CHAT_MSG_SAY"] = "ffffff", ["CHAT_MSG_YELL"] = "ff4040", ["CHAT_MSG_CHANNEL"] = "ffc0c0", ["CHAT_MSG_PARTY"] = "aaaaff", ["CHAT_MSG_RAID"] = "ff7f00", ["CHAT_MSG_RAID_LEADER"] = "ff4809",
["CHAT_MSG_RAID_WARNING"] = "ff4800", ["CHAT_MSG_GUILD"] = "40ff40", ["CHAT_MSG_OFFICER"] = "40c040", ["CHAT_MSG_WHISPER"] = "ff80ff", ["CHAT_MSG_WHISPER_INFORM"] = "ff80ff", ["CHAT_MSG_BATTLEGROUND"] = "ff7f00",
["CHAT_MSG_BATTLEGROUND_LEADER"] = "ffdbb7", ["CHAT_MSG_LOOT"] = "00aa00", ["CHAT_MSG_MONEY"] = "ffff00", ["CHAT_MSG_COMBAT_FACTION_CHANGE"] = "8080ff", ["CHAT_MSG_COMBAT_XP_GAIN"] = "6f6fff", ["CHAT_MSG_COMBAT_HONOR_GAIN"] = "e0ca0a" }
local GF_LootFilter = { ["CHAT_MSG_MONEY"] = true, ["CHAT_MSG_LOOT"] = true, ["CHAT_MSG_COMBAT_FACTION_CHANGE"] = true, ["CHAT_MSG_COMBAT_XP_GAIN"] = true, ["CHAT_MSG_COMBAT_HONOR_GAIN"] = true }
local ThingsToHide = { "GF_GroupsInChatCheckButton", "GF_GroupsNewOnlyCheckButton", "GF_GroupsInMinimapCheckButton", "GF_ShowChatCheckButton", "GF_ShowTradesCheckButton", "GF_ShowLootCheckButton", "GF_FrameShowPoliticsCheckButton",
"GF_FrameUseWhoOnGroupsCheckButton", "GF_SearchListDropdown", "GF_GroupsFrameDescriptionEditBox", "GF_AutoFilterCheckButton", "GF_PlaySoundOnResultsCheckButton", "GF_GroupsFrameShowDungeonCheckButton", "GF_GroupsFrameShowRaidCheckButton",
"GF_GroupsFrameShowQuestCheckButton", "GF_GroupsFrameShowOtherCheckButton", "GF_GroupsFrameShowLFMCheckButton", "GF_GroupsFrameShowLFGCheckButton", "GF_ShowSearchButton", "GF_SettingsFrameButton", "GF_ShowBlacklistButton", "GF_LogFrameButton",
"GF_AnnounceToLFGButton", "GF_ResetLFGDescriptionButton", "GF_LogBottomButton", "GF_LogDownButton", "GF_LogUpButton", "GF_LogShowLoot", "GF_LogShowFiltered", "GF_LogShowPolitics",
"GF_LogShowSpam", "GF_LogShowBlacklist", "GF_LogShowBelowLevel", "GF_MainFrameCloseButton", "GF_GroupsFrame_ResultsPrev", "GF_GroupsFrame_ResultsNext", "GF_LFGSizeDropdown", "GF_LFGLFMDropdown", "GF_LFGDungeonDropdown", "GF_LFGRaidDropdown",
"GF_LFGRoleDropdown", "GF_GroupAutoCheckButton", "GF_LFGDescriptionEditBox", "GF_LFGWhisperButton", "GF_LFGWhoWhisperEditBox", "GF_FrameAnnounceTimerSlider", "GF_LFGWhoClassDropdown", "GF_LFGGetWhoButton", }
local GF_DaysBeforeMonth = { 0,31,59,90,120,151,181,212,243,273,304,334 }

function GF_OnLoad()
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
		if event == "WHO_LIST_UPDATE" then
			for i=1, GetNumWhoResults() do
				if WhoFrame:IsVisible() or GF_UrgentWhoRequestSaved == GetWhoInfo(i) then old_FriendsFrame_OnEvent(event); end
			end
		else
			old_FriendsFrame_OnEvent(event);
		end
	end
	local old_SetItemRef = SetItemRef;
	function SetItemRef(link,text,button)
		if strsub(link, 1, 6) == "player" then
			local name = strsub(gsub(link, "([^%s]*)%s+([^%s]*)", "%2"),8);
			if name and strlen(name) > 0 then 
				if IsShiftKeyDown() and button == "LeftButton" then
					if GF_LogEditBox:IsVisible() then
						GF_LogEditBox:SetText(GF_LogEditBox:GetText()..name)
					elseif not ChatFrameEditBox:IsVisible() then -- Add linked player to top of /who list
						GF_UrgentWhoRequest = name;
						return;
					end
				end
				if IsControlKeyDown() and button == "LeftButton" then
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
		end
		old_SetItemRef(link,text,button)
	end
	local old_GameTooltip_OnShow = GameTooltip:GetScript("OnShow");
	GameTooltip:SetScript("OnShow", GF_GameTooltip_OnShow);
end
function GF_GameTooltip_OnShow()
	if UnitIsPlayer("mouseover") and UnitIsFriend("player","mouseover") then
		GF_WhoTable[GF_RealmName][UnitName("mouseover")] = { UnitLevel("mouseover"), GF_Classes[UnitClass("mouseover")], GetGuildInfo("mouseover") or "", GF_GetStandardizedTime() }
	end
	if old_GameTooltip_OnShow then old_GameTooltip_OnShow(event) end
end
function GF_SendMessageFromLogEditBox()
	if not GF_SendMessageFromLogEditBoxIsAWhisper() then
		if GF_WhisperLogCurrentButtonID == 0 then
			SendChatMessage(GF_LogEditBox:GetText(), "CHANNEL", nil, GetChannelName(GF_CHANNEL_NAME));
		elseif GF_WhisperLogCurrentButtonID == 1 or GF_WhisperLogCurrentButtonID == 2 then
			SendChatMessage(GF_LogEditBox:GetText(), "GUILD");
		else
			SendChatMessage(GF_LogEditBox:GetText(),"WHISPER",nil,getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):GetText())
		end
		GF_LogEditBox:SetText("")
	end
end
function GF_SendMessageFromLogEditBoxIsAWhisper()
	for name,message in string.gfind(GF_LogEditBox:GetText(), "/w%s([a-zA-Z][a-zA-Z]+)%s(.*)") do
		SendChatMessage(message,"WHISPER",nil,name)
		GF_LogEditBox:SetText("")
		return true
	end
	if string.find(GF_LogEditBox:GetText(), "^/w") then DEFAULT_CHAT_FRAME:AddMessage(GF_WHISPER_FORMAT, 1, 1, 0.5) return 2 end
end
function GF_AddMessage(arg1,arg2,event)
	if arg2 == UnitName("player") then
		arg1 = "|cff"..GF_TextColors[event].."["..date("%H:%M").."] ".."|r|cff"..(GF_ClassColors[GF_Classes[UnitClass("player")]] or "9d9d9d").."[|Hplayer:"..arg2.."|h"..arg2..", "..UnitLevel("player").."|h|r]: |cff"..GF_TextColors[event]..arg1.."|r"
	elseif GF_WhoTable[GF_RealmName][arg2] then 
		arg1 = "|cff"..GF_TextColors[event].."["..date("%H:%M").."] ".."|r|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "9d9d9d").."[|Hplayer:"..arg2.."|h"..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."|h|r]: |cff"..GF_TextColors[event]..arg1.."|r"
	else
		arg1 = "|cff"..GF_TextColors[event].."["..date("%H:%M").."] ".."|r|cff9d9d9d[|Hplayer:"..arg2.."|h"..arg2.."|h|r]: |cff"..GF_TextColors[event]..arg1.."|r"
	end
end
function GF_AddChannelMessage(arg1,arg2,arg8,arg9)
	arg9 = string.gsub(arg9, " - .*", "")
	for i=1,NUM_CHAT_WINDOWS do
		local channellist = { GetChatWindowChannels(i) };
		for j=1, getn(channellist) do
			if string.find(arg9,channellist[j]) then
				if GF_WhoTable[GF_RealmName][arg2] and arg2 ~= UnitName("player") then
					getglobal("ChatFrame"..i):AddMessage("["..arg8..". "..string.upper(string.sub(arg9,1,1))..string.lower(string.sub(arg9,2)).."] ".."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "ffffff").."[|Hplayer:"..arg2.."|h"..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."|h|r]: "..arg1, 1, 192/255, 192/255) 
				else
					getglobal("ChatFrame"..i):AddMessage("["..arg8..". "..string.upper(string.sub(arg9,1,1))..string.lower(string.sub(arg9,2)).."] ".."|cff".."9d9d9d".."[|Hplayer:"..arg2.."|h"..arg2.."|h|r]: "..arg1,  1, 192/255, 192/255);
				end
			end
		end
	end
end
function GF_AddLogMessage(arg1,filteredChat,add,arg2,arg8,arg9,event)
	if add then
		if GF_LootFilter[event] then
			arg1 = "|cff"..GF_TextColors[event].."["..date("%H:%M").."] "..GF_LogMessageCodes[filteredChat]..": "..arg1.."|r"
		elseif event ~= "CHAT_MSG_CHANNEL" and GF_TextColors[event] then
			if arg2 == UnitName("player") then
				arg1 = "|cff"..GF_TextColors[event].."["..date("%H:%M").."] "..GF_LogMessageCodes[filteredChat].."|r|cff"..(GF_ClassColors[GF_Classes[UnitClass("player")]] or "9d9d9d").."[|Hplayer:"..arg2.."|h"..arg2..", "..UnitLevel("player").."|h|r]: |cff"..GF_TextColors[event]..arg1.."|r"
			elseif GF_WhoTable[GF_RealmName][arg2] then 
				arg1 = "|cff"..GF_TextColors[event].."["..date("%H:%M").."] "..GF_LogMessageCodes[filteredChat].."|r|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "9d9d9d").."[|Hplayer:"..arg2.."|h"..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."|h|r]: |cff"..GF_TextColors[event]..arg1.."|r"
			else
				arg1 = "|cff"..GF_TextColors[event].."["..date("%H:%M").."] "..GF_LogMessageCodes[filteredChat].."|r|cff9d9d9d[|Hplayer:"..arg2.."|h"..arg2.."|h|r]: |cff"..GF_TextColors[event]..arg1.."|r"
			end
		else
			arg9 = arg8..". "..string.upper(string.sub(arg9,1,1))..string.lower(string.sub(string.gsub(arg9, " - .*", ""),2))
			if arg2 == UnitName("player") then 
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[filteredChat].."["..arg9.."] ".."|cff"..(GF_ClassColors[GF_Classes[UnitClass("player")]] or "9d9d9d").."[|Hplayer:"..arg2.."|h"..arg2..", "..UnitLevel("player").."|h|r]: "..arg1
			elseif GF_WhoTable[GF_RealmName][arg2] then 
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[filteredChat].."["..arg9.."] ".."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "9d9d9d").."[|Hplayer:"..arg2.."|h"..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].."|h|r]: "..arg1
			else
				arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[filteredChat].."["..arg9.."] ".."|cff9d9d9d[|Hplayer:"..arg2.."|h"..arg2.."|h|r]: "..arg1
			end
		end
		table.insert(GF_LogHistory[GF_RealmName],1, {arg1, filteredChat})
		if getn(GF_LogHistory[GF_RealmName]) > 500 then table.remove(GF_LogHistory[GF_RealmName],501) end
	end
	if GF_LogCheckFilters(filteredChat) and GF_WhisperLogCurrentButtonID == 0 then
		GF_Log:AddMessage(arg1, 1, 192/255, 192/255)
	end
end
function GF_LogCheckFilters(filteredChat) -- [1]Group,[2]New,[3]Chat,[4]Trades,[5]Politics,[6]Loot,[7]Spam,[8]Blacklist,[9]BelowLvl,[10]Myself,[11]FilteredGroup,[99]Blocked
	if (filteredChat == 10 or (GF_SavedVariables.logshowgroup and (filteredChat == 1 or filteredChat == 2)) or (GF_SavedVariables.logshowchat and filteredChat == 3)
	or (GF_SavedVariables.logshowtrades and filteredChat == 4) or (GF_SavedVariables.logshowpolitics and filteredChat == 5) or (GF_SavedVariables.logshowloot and filteredChat == 6) or (GF_SavedVariables.logshowspam and filteredChat == 7)
	or (GF_SavedVariables.logshowblacklist and filteredChat == 8) or (GF_SavedVariables.logshowbelowlevel and filteredChat == 9) or (GF_SavedVariables.logshowfiltered and filteredChat == 11)) then return true end;
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
		GF_Log:AddMessage(tempHistoryTable[i][1], 1, 192/255, 192/255)
	end
end
function GF_SlashHandler(msg)
	if string.lower(msg) == "reset" then
		GF_MainFrame:ClearAllPoints()
		GF_MainFrame:SetPoint("CENTER", UIParent, "CENTER",0,0)
	else
		DEFAULT_CHAT_FRAME:AddMessage("'/gf reset' to reset screen position", 1, 1, 0.5)
	end
end
function GF_ToggleMainFrame(tab)
	PlaySound("igCharacterInfoTab");
	if GF_MainFrame:IsVisible() then GF_MainFrame:Hide(); else GF_MainFrame:Show(); end
	if tab == 1 then -- GroupsFrame
		GF_GroupsFrame:Show();
		GF_LogFrame:Hide();
		GF_BlackListFrame:Hide();
		GF_SettingsFrame:Hide();
		if GF_SavedVariables.loghidemainframelogdef then GF_MainFrame:Show(); end
		GF_SavedVariables.loghidemainframelogdef = nil;
	elseif tab == 2 then
		GF_LogFrame:Show();
		GF_GroupsFrame:Hide();
		GF_BlackListFrame:Hide();
		GF_SettingsFrame:Hide();
		if not GF_SavedVariables.loghidemainframelogdef then GF_MainFrame:Show(); end
		GF_SavedVariables.loghidemainframelogdef = true;
	end
	GF_ToggleHideMainFrame()
	GF_SearchList:Hide();
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
function GF_OnUpdate()
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
		if GF_UrgentWhoRequest then
			SetWhoToUI(0);
			SendWho("n-"..GF_UrgentWhoRequest);
			GF_UrgentWhoRequestSaved = GF_UrgentWhoRequest;
			GF_UrgentWhoRequest = nil;
		elseif not FriendsFrame:IsVisible() then
			if GF_ClassWhoRequest then
				if GF_ClassWhoQueue[1] then
					SetWhoToUI(1);
					SendWho(GF_ClassWhoQueue[1]);
					GF_UrgentWhoRequestSaved = nil;
					table.remove(GF_ClassWhoQueue, 1);
				else
					GF_ClassWhoRequest = nil
					GF_LFGGetWhoButton:SetText(GF_GET_WHO.." - "..GF_ClassWhoMatchingResults);
				end
			elseif GF_WhoQueue[1] then
				if (GF_GetWhoData(GF_WhoQueue[1]) and GF_WhoTable[GF_RealmName][GF_WhoQueue[1]][4] + 1440 > GF_GetStandardizedTime()) or GF_AddonNamesToBeSentAsARequest[GF_WhoQueue[1]] then
					table.remove(GF_WhoQueue, 1);
					return;
				end
				SetWhoToUI(1);
				SendWho("n-"..GF_WhoQueue[1]);
				GF_UrgentWhoRequestSaved = nil;
				table.remove(GF_WhoQueue, 1);
			end
		end
	end
end
function GF_WhoListUpdated()
	for i=1, GetNumWhoResults() do
		local name, guild, level, race, class, zone = GetWhoInfo(i);
		GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], guild, GF_GetStandardizedTime() }
		if GF_IsGuildieUsingAddon() then GF_AddonWhoDataToBeSentBuffer[name] = GF_WhoTable[GF_RealmName][name] end
		GF_AddonNamesFromWhoSinceLoggedOn[name] = true;
		GF_TimeTillNextBroadcast = 1;
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
	if not GF_GetPositionInWhoQueue(name,GF_WhoQueue) then
		if addToTopOfList then
			table.insert(GF_WhoQueue, 1, name);
		else
			table.insert(GF_WhoQueue, name);
		end
		GF_UpdateAndRequestTimer = GF_NextAvailableWhoTime - time()
		return true
	end
	return false
end
function GF_GetPositionInWhoQueue(name)
	for key, data in GF_WhoQueue do
		if data == name then
			return key;
		end
	end
	return
end
function GF_CheckForAnnounce()
	if GF_AutoAnnounceTimer then
		GF_AutoAnnounceTimer = GF_AutoAnnounceTimer + 1;
		if GF_LFGDescriptionEditBox:GetText() == "" then GF_TurnOffAnnounce(GF_NOTHING_TO_ANNOUNCE) return end
		if GF_AutoAnnounceTimer > GF_SavedVariables.announcetimer then
			GF_AutoAnnounceTimer = 0;
			SendChatMessage(GF_LFGDescriptionEditBox:GetText(), "CHANNEL", nil, GetChannelName(GF_CHANNEL_NAME));
			DEFAULT_CHAT_FRAME:AddMessage(GF_SENT..": "..GF_LFGDescriptionEditBox:GetText(), 1, 1, 0.5);
			GF_MinimapMessageFrameA1:AddMessage(GF_ANNOUNCED_LFG_EXT, 1.0, 1.0, 0.5, 1.0, UIERRORS_HOLD_TIME);
			PlaySound("TellMessage");
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
function GF_CheckForBroadCast()
	GF_TimeTillNextBroadcast = GF_TimeTillNextBroadcast - 1;
	if GF_TimeTillNextBroadcast < 0 then 
		GF_TimeTillNextBroadcast = 4;
		local counter = 0;
		for name,entry in pairs(GF_AddonGroupDataToBeSentBuffer) do
			if entry.who and (entry.type == "D" or entry.type == "R") and entry.t + 15 > GF_GetStandardizedTime() then
				if entry.who[3] == "" then entry.who[3] = "Z" end
				if GetGuildInfo("player") then SendAddonMessage("GF", GF_ClassIDs[entry.who[2]]..entry.t..entry.type..entry.dlevel..entry.op..entry.who[1]..entry.who[3]..entry.who[4]..":"..entry.message, "GUILD");
				elseif GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", GF_ClassIDs[entry.who[2]]..entry.t..entry.type..entry.dlevel..entry.op..entry.who[1]..entry.who[3]..entry.who[4]..":"..entry.message, "PARTY"); end
				counter = counter + 1
				if counter == 10 then break end
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
						if GetGuildInfo("player") then SendAddonMessage("GF", addonsendstring, "GUILD");
						elseif GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", addonsendstring, "PARTY"); end
						addonsendstring = "U";
						counter = counter + 1;
						break
					end
				end
				if counter == 4 then break end
			end
			if counter == 0 or string.len(addonsendstring) > 1 then 
				if GetGuildInfo("player") then SendAddonMessage("GF", addonsendstring, "GUILD");
				elseif GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", addonsendstring, "PARTY"); end
			end
			GF_OnStartupQueueURequest = nil;
		end
		addonsendstring = "W"
		if GF_AddonMakeAResponseToLoginList then
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
			if string.len(addonsendstring) > 240 then break end
		end
		if string.len(addonsendstring) > 1 then if GetGuildInfo("player") then SendAddonMessage("GF", addonsendstring, "GUILD"); elseif GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", addonsendstring, "PARTY"); end end
		addonsendstring = ""
		for name,whodata in pairs(GF_AddonWhoDataToBeSentBuffer) do
			if whodata then
				if whodata[3] == "" then whodata[3] = "Z" end
				addonsendstring = addonsendstring..":"..whodata[1]..name..GF_ClassIDs[whodata[2]]..whodata[3]..whodata[4]
				GF_AddonWhoDataToBeSentBuffer[name] = nil;
				if string.len(addonsendstring) > 202 then break end
			end
		end
		if string.len(addonsendstring) > 1 then if GetGuildInfo("player") then SendAddonMessage("GF", addonsendstring, "GUILD"); elseif GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", addonsendstring, "PARTY"); end end
	end
end
function GF_UpdateGroupsFrame()
	GF_UpdateAndRequestTimer = GF_UpdateAndRequestTimer - 1;
	if GF_UpdateAndRequestTimer < 0 then
		GF_UpdateAndRequestTimer = 30;
		GF_ApplyFiltersToGroupList()
		for i=1, getn(GF_MessageList[GF_RealmName]) do
			if not GF_MessageList[GF_RealmName][i].who then
				GF_MessageList[GF_RealmName][i].whoAttempts = GF_MessageList[GF_RealmName][i].whoAttempts or 0;
				GF_MessageList[GF_RealmName][i].who = GF_WhoTable[GF_RealmName][GF_MessageList[GF_RealmName][i].op];
				if GF_SavedVariables.usewhoongroups and not GF_MessageList[GF_RealmName][i].who and GF_MessageList[GF_RealmName][i].whoAttempts < 3 then
					if GF_AddNameToWhoQueue(GF_MessageList[GF_RealmName][i].op, true) then GF_MessageList[GF_RealmName][i].whoAttempts = GF_MessageList[GF_RealmName][i].whoAttempts + 1; end
				end
			end
			if GF_AddonMakeAListOfGroupsForSending and not GF_AddonOPSentNamesOnLogin[GF_MessageList[GF_RealmName][i].op] then GF_AddonGroupDataToBeSentBuffer[GF_MessageList[GF_RealmName][i].op] = GF_MessageList[GF_RealmName][i] end
		end
		GF_AddonMakeAListOfGroupsForSending = nil;
		GF_AddonOPSentNamesOnLogin = {}
	end
end
function GF_RequestAdditionalWhoDataUpdates()
	GF_RequestWhoDataPeriodicallyTimer = GF_RequestWhoDataPeriodicallyTimer - 1;
	if GF_RequestWhoDataPeriodicallyTimer < 0 then
		GF_RequestWhoDataPeriodicallyTimer = 300;
		if GF_IsGuildieUsingAddon() then
			for i=1, getn(GF_MessageList[GF_RealmName]) do
				if not GF_MessageList[GF_RealmName][i].who then GF_AddonNamesToBeSentAsARequest[GF_MessageList[GF_RealmName][i].op] = true end
			end
			for i=1, getn(GF_WhoQueue) do
				GF_AddonNamesToBeSentAsARequest[GF_WhoQueue[i]] = true
			end
			GF_TimeTillNextBroadcast = 0;
		end
	end
end
function GF_IsGuildieUsingAddon()
	for name in GF_AddonListOfGuildiesWithAddon do
		if GF_Guildies[name] then return true end
	end
end
function GF_OnEvent(event)
	if GF_AutoAnnounceTimer and event == "CHAT_MSG_SYSTEM" and string.find(arg1, GF_NOW_AFK) then
		GF_TurnOffAnnounce(GF_AFK_ANNOUNCE_OFF);
	elseif event == "CHAT_MSG_ADDON" and arg1 == "GF" and arg4 ~= UnitName("player") then
		GF_AddonListOfGuildiesWithAddon[arg4] = true;
		GF_ParseIncomingAddonMessages(arg2)
	elseif event == "WHO_LIST_UPDATE" then
		GF_WhoListUpdated();
	elseif event == "RAID_ROSTER_UPDATE" or event == "PARTY_LEADER_CHANGED" or event == "PARTY_MEMBERS_CHANGED" then
		if GF_WasPartyLeaderBefore and not UnitIsPartyLeader("player") and GF_GetNumGroupMembers() > 1 then
			GF_TurnOffAnnounce(GF_JOINED_GROUP_ANNOUNCE_OFF)
		else
			local _,_,groupSize = tonumber(string.find(GF_SavedVariables.lfgsize, "(%d+)"))
			if groupSize and GF_GetNumGroupMembers() >= groupSize then GF_TurnOffAnnounce(GF_NO_MORE_PLAYERS_NEEDED) end
		end
		if GF_SavedVariables.lfgauto then GF_FixLFGStrings(true) end
		GF_UpdatePlayersInGroupList()
	elseif (event == "GUILD_ROSTER_UPDATE" and GetNumGuildMembers() ~= GF_CurrentNumGuildies) then 
		GF_UpdateGuildiesList()
	elseif (event == "FRIENDLIST_UPDATE" and GetNumFriends() ~= GF_CurrentNumFriends) then
		GF_UpdateFriendsList()
	elseif event == "ZONE_CHANGED_NEW_AREA" then
		GF_JoinWorld()
	elseif event == "PLAYER_ENTERING_WORLD" and GF_OnStartupRunOnce then
		GF_OnStartupRunOnce = false;
		GF_LoadSettings()
		GF_UpdateBlackListItems(); 
		GF_ApplyFiltersToGroupList()	
		if not GF_SavedVariables.addonsendtimeout or GF_SavedVariables.addonsendtimeout + 300 < time() then
			GF_SavedVariables.addonsendtimeout = time();
			GF_OnStartupQueueURequest = true;
		else
			if GetGuildInfo("player") then SendAddonMessage("GF", "Z", "GUILD");
			elseif GF_GetNumGroupMembers() > 0 then SendAddonMessage("GF", "Z", "PARTY"); end
		end
		GF_BindKey("I", "GF_SHOW_FRAME")
		GF_BindKey("SHIFT-G", "GF_SHOW_GROUP")
		GF_BindKey("SHIFT-L", "GF_SHOW_LOG")
	elseif event == "PLAYER_LEAVING_WORLD" then
		local _,_,_,xpos, ypos = GF_MainFrame:GetPoint()
		GF_SavedVariables.MainFrameXPos = xpos;
		GF_SavedVariables.MainFrameYPos = ypos;
	end
end
function GF_LoadSettings()
	local SliderVariablesToSet = { GF_SavedVariables.MinimapArcOffset, GF_SavedVariables.MinimapRadiusOffset, GF_SavedVariables.MinimapMsgArcOffset, GF_SavedVariables.MinimapMsgRadiusOffset, GF_SavedVariables.FilterLevel, GF_SavedVariables.MainFrameUIScale,
	GF_SavedVariables.MainFrameTransparency, GF_SavedVariables.spamfilterduration,GF_SavedVariables.autoblacklistminlevel,GF_SavedVariables.blockmessagebelowlevel,GF_SavedVariables.grouplistingduration,GF_SavedVariables.autofilterlevelvar,
	GF_SavedVariables.showgroupsnewonlytime, GF_SavedVariables.announcetimer/60, }
	local SliderNames = { "GF_MinimapArcSlider", "GF_MinimapRadiusSlider", "GF_MinimapMsgArcSlider", "GF_MinimapMsgRadiusSlider", "GF_FilterLevelSlider", "GF_UIScaleSlider", "GF_FrameTransparencySlider", "GF_FrameSpamFilterDurationSlider",
	"GF_FrameSpamBlacklistMinLevelSlider", "GF_FrameBlockMessagesBelowLevelSlider", "GF_GroupListingDurationSlider", "GF_AutoFilterLevelSlider", "GF_GroupNewTimeoutSlider", "GF_FrameAnnounceTimerSlider", }
	for i=1, 14 do getglobal(SliderNames[i]):SetValue(SliderVariablesToSet[i]) end
	
	local CheckButtonVariablesToSet = { GF_SavedVariables.showgroupsinchat, GF_SavedVariables.showgroupsinminimap, GF_SavedVariables.showgroupsnewonly, GF_SavedVariables.showchattexts, GF_SavedVariables.showtradestexts, GF_SavedVariables.showloottexts,
	GF_SavedVariables.autofilter, GF_SavedVariables.showtranslate, GF_SavedVariables.showdungeons, GF_SavedVariables.showraids, GF_SavedVariables.showquests, GF_SavedVariables.showother, GF_SavedVariables.showlfm, GF_SavedVariables.showlfg,
	GF_SavedVariables.logshowgroup, GF_SavedVariables.logshowfiltered, GF_SavedVariables.logshowchat, GF_SavedVariables.logshowtrades, GF_SavedVariables.logshowpolitics, GF_SavedVariables.logshowloot, GF_SavedVariables.logshowspam,
	GF_SavedVariables.logshowblacklist, GF_SavedVariables.logshowbelowlevel, GF_SavedVariables.loghidemainframe, GF_SavedVariables.joinworld, GF_SavedVariables.showoriginalchat, GF_SavedVariables.usewhoongroups, GF_SavedVariables.errorfilter,
	GF_SavedVariables.showpolitics, GF_SavedVariables.spamfilter, GF_SavedVariables.autoblacklist, GF_SavedVariables.playsounds, GF_SavedVariables.lfgauto, GF_SavedVariables.showwhisperlogs, GF_SavedVariables.loghidemainframeheight, }
	
	local CheckButtonNames = { "GF_GroupsInChatCheckButton", "GF_GroupsInMinimapCheckButton", "GF_GroupsNewOnlyCheckButton", "GF_ShowChatCheckButton", "GF_ShowTradesCheckButton", "GF_ShowLootCheckButton", "GF_AutoFilterCheckButton", "GF_GroupsFrameShowTranslateCheckButton",
	"GF_GroupsFrameShowDungeonCheckButton", "GF_GroupsFrameShowRaidCheckButton", "GF_GroupsFrameShowQuestCheckButton", "GF_GroupsFrameShowOtherCheckButton", "GF_GroupsFrameShowLFMCheckButton", "GF_GroupsFrameShowLFGCheckButton", "GF_LogShowGroups",
	"GF_LogShowFiltered", "GF_LogShowChat", "GF_LogShowTrades", "GF_LogShowPolitics", "GF_LogShowLoot", "GF_LogShowSpam", "GF_LogShowBlacklist", "GF_LogShowBelowLevel", "GF_LogHideMainFrame", "GF_FrameJoinWorldCheckButton",	"GF_FrameShowOriginalChatCheckButton",
	"GF_FrameUseWhoOnGroupsCheckButton", "GF_FrameErrorFilterCheckButton", "GF_FrameShowPoliticsCheckButton", "GF_FrameSpamFilterCheckButton", "GF_FrameAutoBlacklistCheckButton", "GF_PlaySoundOnResultsCheckButton", "GF_GroupAutoCheckButton", "GF_LogShowWhisperHistory", "GF_LogHideMainFrameHeight", }
	for i=1, 35 do getglobal(CheckButtonNames[i]):SetChecked(CheckButtonVariablesToSet[i]) end
	
	local TextToSet = { GF_FilterLevelNotes[GF_SavedVariables.FilterLevel], GF_SavedVariables.searchtext, GF_SavedVariables.searchlfgtext, GF_SavedVariables.searchlfgwhispertext }
	local TextNames = { "GF_FilterLevelSliderNote", "GF_GroupsFrameDescriptionEditBox", "GF_LFGDescriptionEditBox", "GF_LFGWhoWhisperEditBox" }
	for i=1, 4 do getglobal(TextNames[i]):SetText(TextToSet[i]) end
	getglobal(GF_LFGSizeDropdown:GetName().."TextLabel"):SetText(GF_SavedVariables.lfgsize);
	getglobal(GF_LFGWhoClassDropdown:GetName().."TextLabel"):SetText(GF_SavedVariables.lfgwhisperclass);

	GF_BUTTONS_LIST["LFGLFM"][2] = { GF_TRIGGER_LIST.CLASSES[UnitClass("player")][1].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][3] = { GF_TRIGGER_LIST.CLASSES[UnitClass("player")][2].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][4] = { GF_TRIGGER_LIST.CLASSES[UnitClass("player")][3].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][5] = { UnitClass("player").." LFG", 1, 60, }
	if not GF_MessageList[GF_RealmName] then GF_MessageList[GF_RealmName] = {}; end
	if not GF_BlackList[GF_RealmName] then GF_BlackList[GF_RealmName] = {}; end
	if not GF_LogHistory[GF_RealmName] then GF_LogHistory[GF_RealmName] = {} end
	if not GF_WhoTable or not GF_WhoTable[GF_RealmName] or not GF_WhoTable[GF_RealmName]["LOADED"] or not GF_WhoTable[GF_RealmName]["LOADED"][UnitName("player")] or type(GF_WhoTable[GF_RealmName]["LOADED"][UnitName("player")]) ~= "table" or GF_WhoTable[GF_RealmName]["LOADED"][UnitName("player")][4] > 1000000000 then
		GF_WhoTable = {}
		GF_WhoTable[GF_RealmName] = {}
		GF_WhoTable[GF_RealmName]["LOADED"] = {}
		GF_WhoTable[GF_RealmName]["LOADED"][UnitName("player")] = { UnitLevel("player"), GF_Classes[UnitClass("player")], "", GF_GetStandardizedTime() - 1 }
		GF_WhisperLogData = {}
		GF_WhisperLogData[GF_RealmName] = {}
		GF_WhisperLogData[GF_RealmName]["Guild"] = {""}
		GF_MessageList = {};
		GF_MessageList[GF_RealmName] = {};
		table.insert(GF_WhisperLogData[GF_RealmName], "Guild")
	end
	if GF_WhoTable[GF_RealmName]["LOADED"][UnitName("player")][4] + 10080 < GF_GetStandardizedTime() then -- 7 days
		GF_PruneTheWhoTable()
		--[[if IsAddOnLoaded("pfUI") then
			for name, whodata in pfUI_playerDB do
				if not GF_WhoTable[GF_RealmName][name] then
					GF_WhoTable[GF_RealmName][name] = { whodata.level, whodata.class, whodata.guild, GF_GetStandardizedTime() - 1441 }
					if not GF_WhoTable[GF_RealmName][name][3] then GF_WhoTable[GF_RealmName][name][3] = "" end
				end
			end
		end--]]
		GF_WhoTable[GF_RealmName]["LOADED"][UnitName("player")] = { UnitLevel("player"), GF_Classes[UnitClass("player")], "", GF_GetStandardizedTime() }
	end
	GF_MainFrame:SetAlpha(GF_FrameTransparencySlider:GetValue());
	GF_MainFrame:SetScale(GF_UIScaleSlider:GetValue());
	if GF_SavedVariables.MainFrameXPos then GF_MainFrame:SetPoint("TOPLEFT",UIParent,"TOPLEFT", GF_SavedVariables.MainFrameXPos, GF_SavedVariables.MainFrameYPos) else GF_SavedVariables.MainFrameXPos = 0 GF_SavedVariables.MainFrameXPos = 0 end
	if GF_SavedVariables.loghidemainframe then GF_MainFrame:Show() GF_ToggleHideMainFrame() end
	GF_ToggleHideMainFrameHeight()
	GF_UpdateMinimapIcon()
	GF_UpdateFriendsList()
	GF_UpdateGuildiesList()
	GF_ToggleWhisperFrame()
	GF_WhisperHistoryUpdateFrame()
	GF_DisplayLog()
	GF_PruneTheClassWhoTable()

	if (GF_RealmName == "Nordanaar" or GF_RealmName == "Tel'Abim") then GF_AddTurtleWoWDungeonsRaids(); GF_WhoCooldownTime = 30; end
end
function GF_PruneTheWhoTable() -- TODO Prune MessageList, WhisperData... Make an algorithm for displaying all chat, then make a button to import/purge PFDB
	for realm,_ in GF_WhoTable do
		for name, whoData in GF_WhoTable[realm] do
			if whoData[4] and whoData[4] + 86400 < GF_GetStandardizedTime() then -- 60 days
				GF_WhoTable[realm][name] = nil;
			end
		end
	end
	--local OnWhisperLogList = {}
	--for i=1, getn(GF_WhisperLogData) do
		--OnWhisperLogList[GF_WhisperLogData[i]] = true;
	--end
	--[[for realm,_ in GF_WhisperLogData do
		for id,name in GF_WhisperLogData[realm] do
			if OnWhisperLogList[name] and not string.find(name, "Guild") then
				tempwhotable[name] = whisperdata;
			end
		end
		GF_WhisperLogData[realm] = tempwhotable;
		tempwhotable = {}
	end--]]
end
function GF_PruneTheClassWhoTable()
	for name, whoData in GF_ClassWhoTable do
		if whoData[4] and whoData[4] + 3600 < time() then GF_ClassWhoTable[name] = nil;	end
	end
end
function GF_ToggleWhisperFrame()
	if GF_SavedVariables.showwhisperlogs then
		GF_LogFrameInternalFrame:SetWidth(568)
		GF_WhisperHistoryButtonLog:Show()
	else
		GF_LogFrameInternalFrame:SetWidth(669)
		GF_WhisperHistoryButtonLog:Hide()
	end
end
function GF_ToggleHideMainFrame()
	if GF_SavedVariables.loghidemainframe then
		for i=1, 48 do
			getglobal(ThingsToHide[i]):Hide()
		end
		if GF_SavedVariables.loghidemainframelogdef then
			GF_LogFrame:Show()
			GF_GroupsFrame:Hide()
			GF_BlackListFrame:Hide()
			GF_SettingsFrame:Hide()
		else
			GF_GroupsFrame:Show()
			GF_LogFrame:Hide()
			GF_BlackListFrame:Hide()
			GF_SettingsFrame:Hide()
		end
		GF_MainFrame:SetAlpha(0)
		GF_MainFrame:SetFrameStrata("BACKGROUND")
		GF_MainFrame:EnableMouse(false)
		GF_MainFrame:IsMovable(false)
		GF_LogHideMainFrame:SetAlpha(1)
		GF_LogHideMainFrameHeight:SetAlpha(1)
		if GF_LogFrame:IsShown() then
			GF_LogFrame:SetAlpha(GF_SavedVariables.MainFrameTransparency)
			GF_LogFrameInternalFrameTitle:SetText("");
			GF_LogFrameInternalFrame:SetBackdropBorderColor(.4,.4,.4,0)
			GF_LogFrameInternalFrame:SetBackdropColor(.14,.14,.14,0)
		end
		GF_GroupsFrame:EnableMouse(false)
		GF_GroupsFrame_Results:EnableMouse(false)
		for i=1, 20 do
			getglobal("GF_NewItem"..i):SetAlpha(GF_SavedVariables.MainFrameTransparency)
			getglobal("GF_NewItem"..i):EnableMouse(false)
			getglobal("GF_NewItem"..i.."LFGInviteButton"):Hide()
			getglobal("GF_NewItem"..i.."LFMWhisperRequestInviteButton"):Hide()
			getglobal("GF_NewItem"..i.."GroupWhoButton"):Hide()
		end
		for id, word in UISpecialFrames do
			if word == "GF_MainFrame" then UISpecialFrames[id] = nil break end
		end
	else
		for i=1, 48 do
			getglobal(ThingsToHide[i]):Show()
		end
		GF_MainFrame:SetAlpha(GF_SavedVariables.MainFrameTransparency)
		GF_MainFrame:SetFrameStrata("MEDIUM")
		GF_MainFrame:EnableMouse(true)
		GF_MainFrame:IsMovable(true)
		GF_LogFrameInternalFrameTitle:SetText(GF_LOG_AND_MONITOR);
		GF_LogFrameInternalFrame:SetBackdropBorderColor(.4,.4,.4,1)
		GF_LogFrameInternalFrame:SetBackdropColor(.14,.14,.14,1)
		GF_GroupsFrame:EnableMouse(true)
		GF_GroupsFrame_Results:EnableMouse(true)
		tinsert(UISpecialFrames,GF_MainFrame:GetName())
		for i=1, 20 do
			getglobal("GF_NewItem"..i):SetAlpha(GF_SavedVariables.MainFrameTransparency)
			getglobal("GF_NewItem"..i):EnableMouse(true)
		end
	end
	GF_ToggleHideMainFrameHeightSetEditBox()
	GF_UpdateResults()
end
function GF_ToggleHideMainFrameHeightSetEditBox()
	if GF_SavedVariables.loghidemainframe or GF_SavedVariables.loghidemainframeheight then
		GF_LogEditBox:SetPoint("BOTTOMLEFT",0,-20)
		GF_LogEditBox:SetPoint("BOTTOMRIGHT",0,-40)
	else
		GF_LogEditBox:SetPoint("BOTTOMLEFT",0,-50)
		GF_LogEditBox:SetPoint("BOTTOMRIGHT",0,-70)
	end
end
function GF_ToggleHideMainFrameHeight()
	if GF_SavedVariables.loghidemainframeheight then
		GF_LogFrameInternalFrame:SetHeight(218)
		GF_LogEditBox:SetPoint("BOTTOMLEFT",0,-20)
		GF_LogEditBox:SetPoint("BOTTOMRIGHT",0,-40)
		for i=1, 20 do
			if GF_SavedVariables.loghidemainframeheight and i > 13 then
				getglobal("GF_NewItem"..i):Hide()
				getglobal("GF_NewItem"..i):SetAlpha(0)
				getglobal("GF_NewItem"..i.."AuxFrameLeft"):Hide()
			end
			if GF_SavedVariables.loghidemainframe then getglobal("GF_NewItem"..i):EnableMouse(false) else getglobal("GF_NewItem"..i):EnableMouse(true) end
		end
	else
		GF_LogFrameInternalFrame:SetHeight(435)
		GF_LogEditBox:SetPoint("BOTTOMLEFT",0,-50)
		GF_LogEditBox:SetPoint("BOTTOMRIGHT",0,-70)
		for i=1, 20 do
			getglobal("GF_NewItem"..i):Show()
			getglobal("GF_NewItem"..i.."AuxFrameLeft"):Show()
			getglobal("GF_NewItem"..i):SetAlpha(GF_SavedVariables.MainFrameTransparency)
			if GF_SavedVariables.loghidemainframe then getglobal("GF_NewItem"..i):EnableMouse(false) else getglobal("GF_NewItem"..i):EnableMouse(true) end
		end
	end
	GF_ToggleHideMainFrameHeightSetEditBox()
	GF_UpdateResults()
end
function GF_GetNumGroupMembers()
	if GetNumRaidMembers() > 0 then
		return GetNumRaidMembers();
	else
		return GetNumPartyMembers() + 1;
	end
end
function GF_UpdatePlayersInGroupList()
	GF_PlayersCurrentlyInGroup = {}
	GF_PlayersCurrentlyInGroup[UnitName("player")] = true;
	for i=1,5 do
		if UnitExists("party"..i) then GF_PlayersCurrentlyInGroup[UnitName("party"..i)] = true; end
	end
	for i=1,40 do
		if UnitExists("raid"..i) then GF_PlayersCurrentlyInGroup[GetRaidRosterInfo(i)] = true; end
	end	
end
function GF_UpdateFriendsList()
	GF_CurrentNumFriends = GetNumFriends();
	GF_Friends = {};
	for i=1, GetNumFriends() do
		local name,level,class = GetFriendInfo(i)
		if name then
			GF_Friends[name] = true;
			if not GF_WhoTable[GF_RealmName][name] then
				GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], "", GF_GetStandardizedTime()}
			end
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
			if not GF_WhoTable[GF_RealmName][name] then
				GF_WhoTable[GF_RealmName][name] = { level, GF_Classes[class], GetGuildInfo("player"), GF_GetStandardizedTime() }
			end
		end
	end
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
function GF_ParseIncomingAddonMessages(arg2)
--I login...
--I send "U" with a list of names from my groupfinder from the last 15 minutes.
--You receive the "U" and make a list of the names in your groupfinder from the last 15 minutes that weren't included in my "U" message.
--You send those names in a "W"(checking off any "W" sent by others before you)(should I just add all new who's to this list?).
--I receive your "W" and cross out the names I already have, then I send a request(R) with the list of names I want.
--You send the full information for the names I requested(and will repeatedly send until all the names are sent, checking off any info sent by others).
--When I /who, the name is added to the "W" broadcast list. This list is resent every 30 seconds.
	if string.sub(arg2,1,1) == "U" then -- (From OP) Sent on login with a list of names from OP's group list(up to 240 characters).
		for name in string.gfind(string.sub(arg2,3), "(%w+)") do
			GF_AddonOPSentNamesOnLogin[name] = true;
		end
		if GF_AddonTimeSinceLastUpdate + 60 < time() then
			for name in GF_AddonNamesFromWhoSinceLoggedOn do
				if not GF_AddonOPSentNamesOnLogin[name] and not GF_AddonWhoDataToBeSentBuffer[name] and GF_WhoTable[GF_RealmName][name][4] + 15 > GF_GetStandardizedTime() then
					GF_AddonAllNamesForResponseToLogin[name] = true;
				else
					GF_AddonNamesFromWhoSinceLoggedOn[name] = nil
				end
			end
			GF_AddonTimeSinceLastUpdate = time()
		end
		GF_TimeTillNextBroadcast = (math.random(90))/3; -- Assuming up to 333ms lag, up to 100 different random slots for responses. To keep down on the spam.
		GF_RequestWhoDataPeriodicallyTimer = 60;
		GF_AddonMakeAResponseToLoginList = true;
		GF_AddonMakeAListOfGroupsForSending = true;
		GF_UpdateAndRequestTimer = 0;
	elseif string.sub(arg2,1,1) == "W" then -- (To Everyone) Sent as a reply to "U". Sends a list of names on your who list excluding those sent by the OP or other players(up to 240 characters).
		for sentname in string.gfind(arg2, ":(%w+)") do
			if not GF_WhoTable[GF_RealmName][sentname] then GF_AddonNamesToBeSentAsARequest[sentname] = true end
			GF_AddonAllNamesForResponseToLogin[sentname] = nil
		end
	elseif string.sub(arg2,1,1) == "R" then -- (To Everyone) Sent as a reply to "W". Sends a list of names from the "W" message that you don't have information for(up to 240 characters).
		for sentname in string.gfind(arg2, ":(%w+)") do
			if GF_WhoTable[GF_RealmName][sentname] and GF_WhoTable[GF_RealmName][sentname][4] + 1440 > GF_GetStandardizedTime() then GF_AddonWhoDataToBeSentBuffer[sentname] = GF_WhoTable[GF_RealmName][sentname]; end
			GF_AddonNamesToBeSentAsARequest[sentname] = nil
		end
	elseif string.sub(arg2,1,1) == ":" then -- (To Everyone) This is the who data from the names requested in "R".
		for sentlevel,sentname,sentclass,sentguild,sentrecordedtime in string.gfind(arg2, ":(%d+)([a-zA-Z]+)(%d)([a-zA-Z%s]+)(%d+)") do
			if sentguild == "Z" then sentguild = "" end
			if tonumber(sentrecordedtime) <= GF_GetStandardizedTime() and (not GF_WhoTable[GF_RealmName][sentname] or tonumber(sentrecordedtime) > GF_WhoTable[GF_RealmName][sentname][4]) then
				GF_WhoTable[GF_RealmName][sentname] = { tonumber(sentlevel), GF_ClassIDs[tonumber(sentclass)], sentguild, tonumber(sentrecordedtime) }
			end
			GF_AddonAllNamesForResponseToLogin[sentname] = nil;
			GF_AddonNamesToBeSentAsARequest[sentname] = nil;
			GF_AddonWhoDataToBeSentBuffer[sentname] = nil;
		end
	elseif string.len(arg2) > 2 then -- (To Everyone) This is the full group information. Which is sent separately from the who data.
		for sentclass,senttime,senttype,sentdlevel,sentname,sentplevel,sentguild,sentrecordedtime,message in string.gfind(arg2, "(%d)(%d+)([a-zA-Z])(%d+)([a-zA-Z]+)(%d+)([a-zA-Z%s]+)(%d+):(.+)") do
			if tonumber(sentrecordedtime) <= GF_GetStandardizedTime() then
				if sentguild == "Z" then sentguild = "" end
				if not GF_WhoTable[GF_RealmName][sentname] or tonumber(sentrecordedtime) > GF_WhoTable[GF_RealmName][sentname][4] then
					GF_WhoTable[GF_RealmName][sentname] = { tonumber(sentplevel), GF_ClassIDs[tonumber(sentclass)], string.gsub(sentguild,"", "") }; GF_WhoTable[GF_RealmName][sentname][4] = tonumber(sentrecordedtime);
				end

				local entry = {};
				entry.op = sentname;
				entry.message = message;
				entry.type = senttype;
				entry.dlevel = tonumber(sentdlevel)
				entry.who = GF_WhoTable[GF_RealmName][sentname];
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
		end
	end
end
function GF_BindKey(bindKey, bindName)
	if not GetBindingKey(bindName) then
		local foundIKey = false;
		for i=1, GetNumBindings() do
			local _,key1,key2 = GetBinding(i);
			if (key1 == bindKey or key2 == bindKey) then
				foundIKey = true;
			end
		end
		if not foundIKey then SetBinding(bindKey,bindName); end
	end
end
function GF_GetWhoData(arg2,groupfound)
	if (not GF_WhoTable[GF_RealmName][arg2] or GF_WhoTable[GF_RealmName][arg2][4]  + 86400 < GF_GetStandardizedTime() or (GF_WhoTable[GF_RealmName][arg2][1] < 60 and GF_WhoTable[GF_RealmName][arg2][4]  + 1440 < GF_GetStandardizedTime()))
	and(GF_SavedVariables.usewhoongroups and (groupfound or not GF_SavedVariables.showoriginalchat)) then -- 60 days
		GF_AddNameToWhoQueue(arg2,groupfound)
	else
		return GF_WhoTable[GF_RealmName][arg2]
	end
end
function GF_GetStandardizedTime()
	local ghour, gminute = GetGameTime();
	if GetCurrentMapContinent() == 1 then -- If I'm in Kalimdor
		if ghour > 12 then
			ghour = (ghour - 12) - date("%H")
		else
			ghour = (ghour + 12) - date("%H")
		end
	else
		ghour = ghour - date("%H")
	end
	if ghour >= 0 then -- If I'm 12 hours ahead of the server.. then it is 12 PM for me(12) and 12 AM(0) for the server... I need to subtract 12 hours... There is no 12 hours behind.
		if ghour < 12 then
			return (date("%y")-25)*525600 + (GF_DaysBeforeMonth[tonumber(date("%m"))]+date("%d"))*1440 + date("%H")*60 + date("%M") + ghour*60 -- I'm behind the server time and the server hasn't rolled over... Add the difference
		else
			return (date("%y")-25)*525600 + (GF_DaysBeforeMonth[tonumber(date("%m"))]+date("%d"))*1440 + date("%H")*60 + date("%M") + (ghour-24)*60 -- I'm ahead of the server and the server hasn't rolled over but I have... Subtract the difference
		end
	else
		if ghour < -12 then -- I'm hour 23 and server is 4 on the next day... so it is at 28th hour... so I need to add 5 hours... 
			return (date("%y")-25)*525600 + (GF_DaysBeforeMonth[tonumber(date("%m"))]+date("%d"))*1440 + date("%H")*60 + date("%M") + (24+ghour)*60 -- I'm behind the server time and the server has rolled over but I haven't... Add the difference
		else
			return (date("%y")-25)*525600 + (GF_DaysBeforeMonth[tonumber(date("%m"))]+date("%d"))*1440 + date("%H")*60 + date("%M") + ghour*60 -- I'm ahead of the server and the server has rolled over..  Subtract the difference
		end
	end
end
function GF_EntryMatchesGroupFilterCriteria(entry)
	if GF_SavedVariables.searchtext == "" and GF_SavedVariables.searchbuttonstext == "" and ((GF_SavedVariables.showdungeons and entry.type == "D") or (GF_SavedVariables.showraids and entry.type == "R") or (GF_SavedVariables.showquests and entry.type == "Q") or (GF_SavedVariables.showother and entry.type == "N"))
	and ((GF_SavedVariables.showlfg and entry.lfg) or (GF_SavedVariables.showlfm and not entry.lfg)) and (not GF_SavedVariables.autofilter or (entry.who and (entry.who[1] >= UnitLevel("player")-GF_SavedVariables.autofilterlevelvar
	and entry.who[1] <= UnitLevel("player")+GF_SavedVariables.autofilterlevelvar)) or (entry.dlevel and entry.dlevel >= UnitLevel("player")-3 and entry.dlevel <= UnitLevel("player")+3)) then
		return true;
	end
	if (GF_SavedVariables.searchtext ~= "" or GF_SavedVariables.searchbuttonstext ~= "") and GF_SearchMessageForTextString(string.lower(entry.message).." ", string.lower(GF_SavedVariables.searchtext).."/"..GF_SavedVariables.searchbuttonstext) then
		return true;
	end
end
function GF_ApplyFiltersToGroupList()
	GF_SavedVariables.searchtext = GF_GroupsFrameDescriptionEditBox:GetText()
	GF_SavedVariables.searchlfgtext = GF_LFGDescriptionEditBox:GetText()

	if GetMouseFocus() and GetMouseFocus():GetName() and (string.find(GetMouseFocus():GetName(), "GroupWhoButton") or string.find(GetMouseFocus():GetName(), "LFGInviteButton") or string.find(GetMouseFocus():GetName(), "LFMWhisperRequestInviteButton")) then return end
	GF_FilteredResultsList = {};
	for i=1, getn(GF_MessageList[GF_RealmName]) do
		local entry = GF_MessageList[GF_RealmName][i];
		if entry then
			if (entry.t + GF_SavedVariables.grouplistingduration) > GF_GetStandardizedTime() then
				if GF_EntryMatchesGroupFilterCriteria(entry) then
					table.insert(GF_FilteredResultsList, entry);
				end
			else
				table.remove(GF_MessageList[GF_RealmName] , i);
				i = i - 1;
			end
		end
	end	
	if floor(GF_ResultsListOffset/20) > floor(getn(GF_FilteredResultsList)/20) then GF_ResultsListOffset = GF_ResultsListOffset - 20 end
	GF_UpdateResults();
end
function GF_UpdateResults()
	local groupListLength = getn(GF_FilteredResultsList);
	GF_MinimapIconTextLabel:SetText(groupListLength);
	GF_MinimapIconTextLabel:Show();
	GF_ResultsLabel:SetText(GF_FOUND..groupListLength.." / "..getn(GF_MessageList[GF_RealmName]));
	GF_PageLabel:Show();

	local cpage = floor(GF_ResultsListOffset / 20);
	local tpage = floor(groupListLength / 20);
	if cpage == 0 or cpage <= GF_ResultsListOffset / 20 then cpage = cpage + 1; end
	if tpage == 0 or tpage < groupListLength / 20 then tpage = tpage + 1; end
	GF_PageLabel:SetText(GF_PAGE.." "..cpage.." / "..tpage);

	for i=1, 20 do
		local c = "GF_NewItem"..i;
		if getglobal(c) then
			if i+GF_ResultsListOffset <= groupListLength then 
				local entry = GF_FilteredResultsList[i+GF_ResultsListOffset];
				if GF_PlayersCurrentlyInGroup[entry.op] or GF_Friends[entry.op] or GF_Guildies[entry.op] then getglobal(c.."NameLabel"):SetTextColor(255,215,0,1); else getglobal(c.."NameLabel"):SetTextColor(0.75,0.75,1,1); end

				if GF_GetStandardizedTime() - entry.t > 1 then getglobal(c.."MoreRightLabel"):SetText(GF_FOUND..(GF_GetStandardizedTime() - entry.t)..GF_MINUTES..GF_TIME_AGO);
				elseif GF_GetStandardizedTime() - entry.t == 1 then getglobal(c.."MoreRightLabel"):SetText(GF_FOUND..(GF_GetStandardizedTime() - entry.t)..GF_MINUTE..GF_TIME_AGO);
				else getglobal(c.."MoreRightLabel"):SetText(GF_FOUND..GF_TIME_JUST_NOW); end
				
				if entry.who then
					local bottomtext;
					if entry.who[3] ~= "" then bottomtext = ", " else bottomtext = "" end
					getglobal(c.."NameLabel"):SetText("|cff"..(GF_ClassColors[entry.who[2]] or "ffffff")..entry.op.."|r: "..entry.message);
					getglobal(c.."MoreLabel"):SetText("Level "..entry.who[1].." "..GF_Classes[entry.who[2]]..bottomtext..entry.who[3]);
				else
					getglobal(c.."NameLabel"):SetText(entry.op..": "..entry.message);
					getglobal(c.."MoreLabel"):SetText("");
				end
				if not GF_SavedVariables.loghidemainframeheight or i < 14 then
					getglobal(c):Show();
					if not GF_SavedVariables.loghidemainframe then
						if (not GF_SavedVariables.usewhoongroups or (entry.whoAttempts and entry.whoAttempts > 2)) and not (GF_WhoTable[GF_RealmName][entry.op] and GF_WhoTable[GF_RealmName][entry.op][4] and
						(GF_WhoTable[GF_RealmName][entry.op][1] < 60 and GF_WhoTable[GF_RealmName][entry.op][4] + 1440 > GF_GetStandardizedTime())) and not GF_GetPositionInWhoQueue(entry.op, GF_WhoQueue) then
							getglobal(c.."GroupWhoButton"):Show();
						else
							getglobal(c.."GroupWhoButton"):Hide();
						end
					
						getglobal(c.."LFGInviteButton"):Hide();
						getglobal(c.."LFMWhisperRequestInviteButton"):Hide();
						if entry.dlevel and UnitLevel("player") >= entry.dlevel - 3 and UnitLevel("player") <= entry.dlevel + 3 then
							if not entry.lfg and (not GF_RequestInviteTime[entry.op] or GF_RequestInviteTime[entry.op] < time()) then getglobal(c.."LFMWhisperRequestInviteButton"):Show(); end
							if entry.lfg and (not GF_LFGInviteTime[entry.op] or GF_LFGInviteTime[entry.op] < time()) then getglobal(c.."LFGInviteButton"):Show(); end
						end
					end
				end
			else
				getglobal(c):Hide();
			end
		end
	end
end
function GF_ListItem_OnMouseUp(frame,id)
	if (arg1 == "RightButton") then
		local name = GF_FilteredResultsList[GF_ResultsListOffset + id].op;
		HideDropDownMenu(1);
		if name ~= UnitName("player") then
			FriendsDropDown.initialize = FriendsFrameDropDown_Initialize;
			FriendsDropDown.displayMode = "MENU";
			FriendsDropDown.name = name;
			ToggleDropDownMenu(1, nil, FriendsDropDown, "cursor");
		end
		return;
	end
end
function GF_ListItemAuxLeft_ShowTooltip(frame,id)
	GameTooltip:ClearLines();
	GameTooltip:SetOwner(this, "ANCHOR_BOTTOMLEFT");
	GameTooltip:ClearAllPoints();
	GameTooltip:SetPoint("BOTTOMLEFT", frame:GetName(), "TOPLEFT", 0, 8);
	
	if not GF_FilteredResultsList[id] then return; end
	
	GameTooltip:AddLine(GF_FilteredResultsList[id].op);
	GameTooltip:AddLine(GF_FilteredResultsList[id].message, 0.9, 0.9, 1.0, 1, 1);
	GameTooltip:Show();
end
function GF_GetGroupWhoButton(frame,id)
	GF_AddNameToWhoQueue(GF_FilteredResultsList[id].op,true)
	getglobal(frame:GetName().."GroupWhoButton"):Hide();
end
function GF_LFGInviteButton(frame,id)
	SendChatMessage(GF_INVITING_FOR..GF_FilteredResultsList[id].message,"WHISPER",nil,GF_FilteredResultsList[id].op)
	InviteByName(GF_FilteredResultsList[id].op)
	GF_LFGInviteTime[GF_FilteredResultsList[id].op] = time() + 10
	getglobal(frame:GetName().."LFGInviteButton"):Hide();
end
function GF_LFMWhisperRequestInviteButton(frame,id)
	local specName = "";
	for i=1,3 do
		_,_,_,_,findSpec = GetTalentInfo(i,GetNumTalents(i));
		if findSpec > 0 then specName = GF_TRIGGER_LIST.CLASSES[UnitClass("player")][i].." " break end
	end
	SendChatMessage("["..UnitLevel("player").." "..specName..UnitClass("player").."] "..GF_INVITE_PLEASE,"WHISPER",nil,GF_FilteredResultsList[id].op)
	GF_RequestInviteTime[GF_FilteredResultsList[id].op] = time() + 120
	getglobal(frame:GetName().."LFMWhisperRequestInviteButton"):Hide();
end
function GF_WhisperHistoryButtonPressed(id)
	if id == GF_WhisperLogCurrentButtonID then return end
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
	if name == UnitName("player") and (event == "CHAT_MSG_WHISPER_INFORM" or event == "CHAT_MSG_WHISPER") then return end
	if not GF_WhisperLogData[GF_RealmName][name] then
		GF_WhisperLogData[GF_RealmName][name] = {}
		if GF_Friends[name] then GF_WhisperLogData[GF_RealmName][name].priority = true; end
	end
	if event == "CHAT_MSG_WHISPER_INFORM" then
		if GF_WhoTable[GF_RealmName][name] and GF_WhoTable[GF_RealmName][name][1] then 
			message = "|cff"..GF_TextColors[event].."["..date("%m/%d").."] ["..date("%H:%M").."] ".."[To] ".."|r|cff"..GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]].."[|Hplayer:"..name.."|h"..name..", "..GF_WhoTable[GF_RealmName][name][1].."|h|r]: |cff"..GF_TextColors[event]..message.."|r"
		else
			message = "|cff"..GF_TextColors[event].."["..date("%m/%d").."] ["..date("%H:%M").."] ".."[To] ".."|r|cff".."9d9d9d".."[|Hplayer:"..name.."|h"..name.."|h|r]: |cff"..GF_TextColors[event]..message.."|r"
		end
	elseif event == "CHAT_MSG_WHISPER" then
		if GF_WhoTable[GF_RealmName][name] and GF_WhoTable[GF_RealmName][name][1] then 
			message = "|cff"..GF_TextColors[event].."["..date("%m/%d").."] ["..date("%H:%M").."] ".."[From] ".."|r|cff"..GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]].."[|Hplayer:"..name.."|h"..name..", "..GF_WhoTable[GF_RealmName][name][1].."|h|r]: |cff"..GF_TextColors[event]..message.."|r"
		else
			message = "|cff"..GF_TextColors[event].."["..date("%m/%d").."] ["..date("%H:%M").."] ".."[From] ".."|r|cff".."9d9d9d".."[|Hplayer:"..name.."|h"..name.."|h|r]: |cff"..GF_TextColors[event]..message.."|r"
		end
	elseif event == "CHAT_MSG_GUILD" or event == "CHAT_MSG_OFFICER" then
		if GF_WhoTable[GF_RealmName][name] and GF_WhoTable[GF_RealmName][name][1] then 
			message = "|cff"..GF_TextColors[event].."["..date("%m/%d").."] ["..date("%H:%M").."] ".."|r|cff"..GF_ClassColors[GF_WhoTable[GF_RealmName][name][2]].."[|Hplayer:"..name.."|h"..name..", "..GF_WhoTable[GF_RealmName][name][1].."|h|r]: |cff"..GF_TextColors[event]..message.."|r"
		else
			message = "|cff"..GF_TextColors[event].."["..date("%m/%d").."] ["..date("%H:%M").."] ".."|r|cff".."9d9d9d".."[|Hplayer:"..name.."|h"..name.."|h|r]: |cff"..GF_TextColors[event]..message.."|r"
		end
		table.insert(GF_WhisperLogData[GF_RealmName]["Guild"],1,message)
		if getn(GF_WhisperLogData[GF_RealmName]["Guild"]) > 100 then table.remove(GF_WhisperLogData[GF_RealmName]["Guild"],101) end
	end
	if event ~= "CHAT_MSG_GUILD" and event ~= "CHAT_MSG_OFFICER" then
		table.insert(GF_WhisperLogData[GF_RealmName][name],1,message)
		table.insert(GF_WhisperLogData[GF_RealmName]["Guild"],1,message)
		if getn(GF_WhisperLogData[GF_RealmName][name]) > 100 then table.remove(GF_WhisperLogData[GF_RealmName][name],101) end
		if getn(GF_WhisperLogData[GF_RealmName]["Guild"]) > 100 then table.remove(GF_WhisperLogData[GF_RealmName]["Guild"],101) end
		GF_WhisperHistoryUpdateFrame(name)
	end
	table.insert(GF_LogHistory[GF_RealmName],1,{message, 10})
	if getn(GF_LogHistory[GF_RealmName]) > 500 then table.remove(GF_LogHistory[GF_RealmName],501) end
	if GF_WhisperLogCurrentButtonID < 2 or name == getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):GetText() then GF_Log:AddMessage(message, 1, 192/255, 192/255) end
end
function GF_WhisperHistoryUpdateFrame(name)
	local numPriority = 0;
	local nameWasPriority;
	local counter = 2;
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
	if name and GF_WhisperLogCurrentButtonID > 1 then if nameWasPriority then GF_WhisperHistoryButtonPressed(2) else GF_WhisperHistoryButtonPressed(2+numPriority) end end
end
function GF_WhisperHistoryDisplayLog(name)
	GF_Log:SetMaxLines(100)
	local tempHistoryTable = {}
	for i=1, getn(GF_WhisperLogData[GF_RealmName][name]) do
		table.insert(tempHistoryTable,1,GF_WhisperLogData[GF_RealmName][name][i])
		if i == 100 then break end
	end
	for i=1, getn(tempHistoryTable) do
		GF_Log:AddMessage(tempHistoryTable[i], 1, 192/255, 192/255)
	end
end
function GF_WhisperHistoryPriorityListCheckButtonPressed(id,name,priority)
	GF_WhisperLogData[GF_RealmName][GF_WhisperLogData[GF_RealmName][id]].priority = priority;
	GF_WhisperHistoryUpdateFrame(name)
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
function GF_UpdateBlackListItems()
	local index = 1;
	local groupListLength = getn(GF_BlackList[GF_RealmName]);

	local cpage = floor(GF_BlackListOffset / 20);
	local tpage = floor(groupListLength / 20);
	if cpage == 0 or cpage <= GF_BlackListOffset / 20 then cpage = cpage + 1; end
	if tpage == 0 or tpage < groupListLength / 20 then tpage = tpage + 1; end
	GF_BlackListFramePageLabel:SetText(GF_PAGE.." "..cpage.." / "..tpage);
	GF_BlackListFramePageLabel:Show();
	while index < 20+1 do
		local c = "GF_BlackListItem"..index;
		if getglobal(c) then
			if index+GF_BlackListOffset <= groupListLength then 
				getglobal(c.."NameLabel"):SetText(GF_BlackList[GF_RealmName][GF_BlackListOffset+index][1]);
				getglobal(c.."NoteLabel"):SetTextColor(1, 1, 1);
				getglobal(c.."NoteLabel"):SetText(GF_BlackList[GF_RealmName][GF_BlackListOffset+index][2]);
				getglobal(c):Show();
			else
				getglobal(c):Hide();
			end
		end
		index = index + 1;
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
function GF_ToggleGetWho()
	if not GF_ClassWhoRequest then
		GF_GetWhoLevel = GF_FindDungeonLevel()
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
		GF_GetWhoLevel = GF_FindDungeonLevel() or 60;
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
function GF_FindDungeonLevel()
	if GF_LFGWhoWhisperEditBox:GetText() ~= "" then 
		for _,dtable in pairs(GF_BUTTONS_LIST["LFGDungeon"]) do
			for w in string.gfind(string.lower(GF_LFGWhoWhisperEditBox:GetText()), string.lower(dtable[1])) do
				return dtable[6]
			end
		end
	end
	for _,dtable in pairs(GF_BUTTONS_LIST["LFGDungeon"]) do
		for w in string.gfind(string.lower(GF_SavedVariables.searchlfgtext), string.lower(dtable[1])) do
			return dtable[6]
		end
    end
	if GF_LFGWhoWhisperEditBox:GetText() ~= "" then 
		for _,dtable in pairs(GF_BUTTONS_LIST["LFGRaid"]) do
			for w in string.gfind(string.lower(GF_LFGWhoWhisperEditBox:GetText()), string.lower(dtable[1])) do
				return dtable[6]
			end
		end
	end
	for _,dtable in pairs(GF_BUTTONS_LIST["LFGRaid"]) do
		for w in string.gfind(string.lower(GF_SavedVariables.searchlfgtext), string.lower(dtable[1])) do
			return dtable[6]
		end
    end
end
function GF_FixLFGStrings(lfmOnly)
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
	local button = CreateFrame("CheckButton", parent:GetName()..id, parent, "GF_AbstractLabelCheckButtonClick")
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
				if string.find(GF_SavedVariables.lfgwhisperclass, dtable[1]) then
					button:SetChecked(true)
				else
					button:SetChecked(false)
				end
			elseif bframe == "LFGSize" then
				if string.find(GF_SavedVariables.lfgsize, dtable[1]) then
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
function GF_BypassLootFilter(arg1)
	if not string.find(arg1, "9d9d9d") then -- Non-grey item will not be filtered
		for i=1, getn(GF_LootFilters) do
			if string.find(arg1, "1eff00") and string.find(arg1, GF_LootFilters[i]) then return end -- Except green items that match my filters
		end
		return true
	end
end
function GF_CheckErrorFilter(arg1)
	for i=1, getn(GF_ErrorFilters) do
		if string.find(arg1, GF_ErrorFilters[i]) then return true; end
	end
end
function GF_CheckForPoliticsAndPreviousBlacklistSpam(arg1,arg2)
	if not GF_PlayersCurrentlyInGroup[arg2] and not GF_Friends[arg2] and not GF_Guildies[arg2] then
		if GF_BlackList[GF_RealmName][arg2] then return 8 end
		if GF_SavedVariables.spamfilter then
			if GF_PlayerMessages[arg2] and GF_PlayerMessages[arg2][1] > time() then return 7 end
			for i=1, getn(GF_TRIGGER_LIST.SPAM) do
				if string.find(string.lower(arg1), GF_TRIGGER_LIST.SPAM[i]) then
					return 7;
				end
			end
		end
		if not GF_SavedVariables.showpolitics then
			for i=1, getn(GF_TRIGGER_LIST.POLITICS) do
				if string.find(string.lower(arg1), GF_TRIGGER_LIST.POLITICS[i]) then
					return 5;
				end
			end
		end
	end
end
function GF_CheckForGroups(arg1,arg2,event)
	local whoData = GF_GetWhoData(arg2,foundInGroup)
	local foundInGroup,entry = GF_GetGroupInformation(arg1,arg2);
	if foundInGroup then
		table.insert(GF_MessageList[GF_RealmName],1,entry);
		GF_ApplyFiltersToGroupList()
		if not GF_EntryMatchesGroupFilterCriteria(entry) then
			foundInGroup = 11;
		elseif GF_SavedVariables.playsounds then
			PlaySoundFile( "Sound\\Interface\\PickUp\\PutDownRing.wav" );
		end
		for i=1, getn(GF_TRIGGER_LIST.TRADE[2]) do
			if string.find(string.lower(arg1), GF_TRIGGER_LIST.TRADE[2][i]) and string.find(string.lower(arg1),"lf ") then
				foundInGroup = nil;
			end
		end
	end
	return GF_CheckForSpam(arg1,arg2,foundInGroup) or foundInGroup;
end
function GF_CheckForSpam(arg1,arg2,foundInGroup)
	if not GF_PlayersCurrentlyInGroup[arg2] and not GF_Friends[arg2] and not GF_Guildies[arg2] then
		if (GF_WhoTable[GF_RealmName][arg2] and tonumber(GF_WhoTable[GF_RealmName][arg2][1]) < GF_SavedVariables.blockmessagebelowlevel) and GF_WhoTable[GF_RealmName][arg2][4] + 1440 > GF_GetStandardizedTime() then -- Block lowlevel
			return 9;
		end
		if GF_SavedVariables.spamfilter and (not foundInGroup or string.len(arg1) > 50) then
			if GF_IncomingMessagePrune + 3600 < time() then -- 1 hour
				for name,_ in GF_PlayerMessages do
					if GF_PlayerMessages[name][1] < time() then
						GF_PlayerMessages[name] = nil;
					end
				end
				GF_IncomingMessagePrune = time();
			end
			local sniprandom = math.random(4+string.len(arg1)/4)
			if not GF_PlayerMessages[arg2] then
				GF_PlayerMessages[arg2] = { [1] = time(), [2] = string.sub(arg1,sniprandom,math.floor(sniprandom*3) + 8), [3] = "ZZZzzz123654" }
			else
				if string.find(arg1,GF_PlayerMessages[arg2][2],1,true) and string.find(arg1,GF_PlayerMessages[arg2][3],1,true) then 																-- Found Spammer
					if GF_SavedVariables.autoblacklist and not GF_BlackList[GF_RealmName][arg2] and string.len(arg1) > 120 then
						if GF_WhoTable[GF_RealmName][arg2] and GF_WhoTable[GF_RealmName][arg2][4] + 1440 > GF_GetStandardizedTime() then -- Data must be less than a day old to autoblacklist or block lowlevel
							if tonumber(GF_WhoTable[GF_RealmName][arg2][1]) <= GF_SavedVariables.autoblacklistminlevel then																			-- Blacklist if below level filter
								table.insert(GF_BlackList[GF_RealmName], 1, { arg2, "("..GF_WhoTable[GF_RealmName][arg2][1]..") "..arg1 })
								GF_BlackList[GF_RealmName][arg2] = true;
								GF_UpdateBlackListItems()
								return 8;
							end
						else
							GF_WhoTable[GF_RealmName][arg2] = nil;
							if GF_SavedVariables.usewhoongroups then GF_AddNameToWhoQueue(arg2,true); end
						end
					end
					if GF_PlayerMessages[arg2][1] < time() then
						if GF_PlayerMessages[arg2][1] - GF_SavedVariables.spamfilterduration*60 < time() then
							GF_PlayerMessages[arg2][1] = time() + GF_SavedVariables.spamfilterduration*60
						else
							GF_PlayerMessages[arg2][1] = GF_PlayerMessages[arg2][1] - time() + GF_SavedVariables.spamfilterduration*60
						end
						return 7
					end
				elseif string.find(arg1,string.sub(arg1,1,20),21, true) then 																														-- Repeating text in the same message
					return 7
				end
				table.insert(GF_PlayerMessages[arg2],2, string.sub(arg1,math.floor(sniprandom/4),math.floor(sniprandom/4) + 50))
				table.remove(GF_PlayerMessages[arg2],4)
			end
		end
	end
end
function GF_CheckForTradesAndChat(arg1,event)
	for i=1, getn(GF_TRIGGER_LIST.TRADE[1]) do
		if string.find(string.lower(arg1), GF_TRIGGER_LIST.TRADE[1][i]) then
			return 4;
		end
	end
	local foundLF = string.find(string.lower(arg1), "lf ") or string.find(string.lower(arg1), "looking") or string.find(string.lower(arg1), "need")
	for i=1, getn(GF_TRIGGER_LIST.TRADE[2]) do
		if foundLF and string.find(string.lower(arg1), GF_TRIGGER_LIST.TRADE[2][i]) then
			return 4;
		end
	end
	return 3;
end
function GF_FindGroupsAndDisplayCustomChatMessages(event,arg1,arg2,arg9)-- GF_PreviousMessage = [1] arg1/message, [2] time of last message + timeout, [3] isMessageShown(on next cycle)
	if not arg9 or string.lower(arg9) == "lft" or not arg1 or not arg2 or not GF_TextColors[event] then
		return true;
	elseif GF_PreviousMessage[arg2] and GF_PreviousMessage[arg2][1] == arg1 and GF_PreviousMessage[arg2][2] > time() then
		if GF_PreviousMessage[arg2][3] then return true; end
	elseif event == "CHAT_MSG_WHISPER" then
		GF_PreviousMessage[arg2] = {arg1,time() + .1, true}
		GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,event)
		return true;
	elseif event == "CHAT_MSG_WHISPER_INFORM" then
		GF_PreviousMessage[arg2] = {arg1,time() + .1, true}
		for i=1, getn(GF_MyWhispers) do
			if arg1 == GF_MyWhispers[i][1] then
				GF_WhisperReceivedAddToWhisperHistoryList(arg1,GF_MyWhispers[i][2],event)
				table.remove(GF_MyWhispers,i)
				break
			end
		end
		return true;
	elseif (event == "CHAT_MSG_GUILD") then
		GF_PreviousMessage[arg2] = {arg1,time() + .1, true}
		GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,event)
		return true;
	elseif arg2 == UnitName("player") then
		GF_PreviousMessage[arg2] = {arg1,time() + .1, true}
		GF_AddLogMessage(arg1,10,true,arg2,arg8,arg9,event)
		return true;
	elseif GF_LootFilter[event] then
		GF_AddLogMessage(arg1,6,true,arg2,arg8,arg9,event)
		if GF_SavedVariables.showloottexts or (event == "CHAT_MSG_LOOT" and GF_BypassLootFilter(arg1)) then
			GF_PreviousMessage[arg2] = {arg1,time() + .1, true}
			return true;
		else
			GF_PreviousMessage[arg2] = {arg1,time() + .1, nil}
			return nil;
		end
	elseif event == "CHAT_MSG_SYSTEM" then
		if GF_SavedVariables.errorfilter and GF_CheckErrorFilter(arg1) then
			GF_PreviousMessage[arg2] = {arg1,time() + .1,nil}
			return nil;
		else
			GF_PreviousMessage[arg2] = {arg1,time() + .1,true}
			return true;
		end
	elseif arg2 == "" then
		GF_PreviousMessage[arg2] = {arg1,time() + .1,true}
		return true;
	else
		local logType = GF_CheckForPoliticsAndPreviousBlacklistSpam(arg1,arg2) or GF_CheckForGroups(arg1,arg2,event) or GF_CheckForTradesAndChat(arg1,event);
		GF_AddLogMessage(GF_CleanUpMessagesOfBadLinks(arg1),logType,true,arg2,arg8,arg9,event)
		if GF_ChatCheckFilters(logType,arg1,event) then
			if GF_SavedVariables.showoriginalchat or event ~= "CHAT_MSG_CHANNEL" then
				GF_PreviousMessage[arg2] = {arg1,time() + 60,true}
				return true;
			else
				GF_PreviousMessage[arg2] = {arg1,time() + 60,nil}
				GF_AddChannelMessage(arg1,arg2,arg8,arg9)
				return nil;
			end
		else
			GF_PreviousMessage[arg2] = {arg1,time() + 60,nil}
			return nil;
		end
	end
end
function GF_ChatCheckFilters(logType,arg1,event)
	if logType == 7 or logType == 8 or logType == 9 then
		return
	elseif event ~= "CHAT_MSG_CHANNEL" then
		return true
	elseif (logType == 2 and GF_SavedVariables.showgroupsnewonly) or ((logType == 1 or logType == 2) and GF_SavedVariables.showgroupsinchat) then
		if GF_SavedVariables.showgroupsinminimap then GF_ShowGroupsOnMinimap(arg1,arg2) end
		return true
	elseif (logType == 3 and GF_SavedVariables.showchattexts) or (logType == 4 and GF_SavedVariables.showtradestexts) or (logType == 5 and GF_SavedVariables.showpolitics) then
		return true
	end
end
function GF_CleanUpMessagesOfBadLinks(arg1)
	if not IsAddOnLoaded("pfUI") then 
		arg1 = gsub(arg1, "{CLINK:item:(%x+):([%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-):([^}]-)}", "|c%1|Hitem:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:(%x+):([%d-]-:[%d-]-:[%d-]-:[%d-]-):([^}]-)}", "|c%1|Hitem:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:enchant:(%x+):([%d-]-):([^}]-)}", "|c%1|Henchant:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:spell:(%x+):([%d-]-):([^}]-)}", "|c%1|Hspell:%2|h[%3]|h|r")
		arg1 = gsub(arg1, "{CLINK:quest:(%x+):([%d-]-):([%d-]-):([^}]-)}", "|c%1|Hquest:%2:%3|h[%4]|h|r")
		arg1 = gsub(arg1, "|c%w+|Hquest[0-9a-fA-F:]+|h%[(.-)%]%|h|r", "%1")
	end
	if not IsAddOnLoaded("pfQuest") then
		arg1 = gsub(arg1, "|c.*|Hquest:[%d]+:[-]?[%d]+|h%[(.*)%]|h|r", "%1")
	end
	return arg1
end
function GF_ShowGroupsOnMinimap(arg1,arg2)
	if GF_MiniMapMessages[1] > time() and GF_MiniMapMessages[2] > time() and GF_MiniMapMessages[3] > time() and GF_MiniMapMessages[4] > time() and GF_MiniMapMessages[5] > time() and GF_MiniMapMessages[6] > time() then
		local lowest = time()
		for i=1, 6 do
			if GF_MiniMapMessages[i] < lowest then lowest = i end
		end
		GF_MiniMapMessages[lowest] = 0;
	end
	for i=1, 6 do
		if GF_MiniMapMessages[i] < time() then
			if GF_WhoTable[GF_RealmName][arg2] and GF_WhoTable[GF_RealmName][arg2][1] then 
				getglobal("GF_MinimapMessageFrameA"..i):AddMessage("|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][2]] or "ffffff").."|Hplayer:"..arg2.."|h "..arg2..", "..GF_WhoTable[GF_RealmName][arg2][1].." "..GF_WhoTable[GF_RealmName][arg2][2].."|h|r", 1, 0.8, 0);
			else
				getglobal("GF_MinimapMessageFrameA"..i):AddMessage("|cff".."ffffff".."|Hplayer:"..arg2.."|h "..arg2.."|h|r", 1, 0.8, 0);
			end
			getglobal("GF_MinimapMessageFrameB"..i):AddMessage("|cff".."bbffbb"..string.sub(arg1,1,120).. "|r", 1, 0.8, 0);
			GF_MiniMapMessages[i] = time() + 20;
			return
		end
	end
end
function GF_GetGroupInformation(arg1,arg2)
	local score, gtype, glevel, isLFG = GF_SearchMessageForGroup(arg1,GF_SavedVariables.FilterLevel);
	if not score then return end

	local entry = {};
	entry.op = arg2;
	entry.message = arg1;
	entry.type = gtype;
	entry.dlevel = glevel;
	entry.who = GF_WhoTable[GF_RealmName][arg2];
	entry.t = GF_GetStandardizedTime()
	entry.lfg = isLFG

	for i = 1, getn(GF_MessageList[GF_RealmName]) do
		if arg2 == GF_MessageList[GF_RealmName][i].op then
			if GF_SavedVariables.showgroupsnewonly and GF_MessageList[GF_RealmName][i].t + GF_SavedVariables.showgroupsnewonlytime < GF_GetStandardizedTime() then table.remove(GF_MessageList[GF_RealmName], i); return 2, entry; end
			table.remove(GF_MessageList[GF_RealmName], i);
			break;
		end
	end
	return 1, entry
end
function GF_SearchMessageForGroup(arg1,filterLevel)
	arg1 = string.lower(" "..arg1.." ") -- Added so that I could add spaces to front and back of search terms
	local foundLFMLFG = 0
	local foundGroup = 0
	local foundClass = 0
	local gtype = "N"
	local isLFG = nil
	local instancelevel = 60
	local counter = 0;
	for _,word in GF_TRIGGER_LIST.IGNORE do
		if string.find(arg1, word) then return end
	end
	for _,word in GF_TRIGGER_LIST.LFM do
		if string.find(arg1, word) then
			foundLFMLFG = 1;
			break;
		end
	end
	for _,word in GF_TRIGGER_LIST.LFG do
		if string.find(arg1, word) then
			foundLFMLFG = 1;
			isLFG = true;
			break;
		end
	end
	for _,instance in GF_TRIGGER_LIST.QUEST do
		for _, word in instance do
			if string.find(arg1, word) then
				foundGroup = 1;
				gtype = "Q"
				break;
			end
		end
	end
	for _,instance in GF_TRIGGER_LIST.DUNGEON do
		counter = 0
		for _,word in instance do
			if counter == 0 then
				counter = counter + 1;
			else 
				if string.find(arg1, word) then
					foundGroup = 1;
					gtype = "D"
					instancelevel = instance[1];
					break;
				end
			end
		end
	end
	for _,class in GF_TRIGGER_LIST.CLASSES do 
		for _,word in class do
			if counter < 4 then
				counter = counter + 1;
			else
				if string.find(arg1, word) then
					foundClass = 1;
					break;
				end
			end
		end
	end
	for _,word in GF_TRIGGER_LIST.PVP do
		if string.find(arg1, word) then
			foundGroup = 1;
			break;
		end
	end
	for temp,word in GF_TRIGGER_LIST.RAID do
		if string.find(arg1, word) then
			foundGroup = 1;
			gtype = "R"
			instancelevel = 63;
			break;
		end
	end
	if filterLevel == 1 and foundLFMLFG == 1 then
		return true, gtype, instancelevel, isLFG;
	elseif (filterLevel == 2 and foundLFMLFG == 1 and foundGroup + foundClass >= 1)
	or (filterLevel == 3 and foundLFMLFG == 1 and foundGroup + foundClass >= 2) then
		return true, gtype, instancelevel, isLFG;
	else
		return
	end
end
function GF_SearchMessageForTextString(msg,textstring)
	for w in string.gfind(textstring, "([%w%s]+)/") do
		if string.find(msg, w) then return true end
	end
end
function print(msg)
	DEFAULT_CHAT_FRAME:AddMessage(msg, 1, 1, 0.5);
end