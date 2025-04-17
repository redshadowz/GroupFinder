GF_SavedVariables = {
	joinworld					= true,
	firstloadafterlogout		= true,
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
	logshowwhisperwindow		= false,
};

GF_RealmName							= GetRealmName();
local GF_MaxEntriesPerRealmOnPrune			= 1000;
local GF_WhoCooldownTime					= 10;
local GF_NextAvailableWhoTime 				= 0;
local GF_UrgentWhoRequest 					= nil;
local GF_UrgentWhoRequestSaved					= nil;
local GF_WhoQueue							= {};
GF_WhoTable									= {};
GF_WhoTable[GF_RealmName]					= {};
GF_ClassWhoTable							= {};
local GF_ClassWhoQueue 						= {};
local GF_ClassWhoMatchingResults 			= 0;
local GF_GetClassWhoState					= 1;
local GF_GetWhoLevel						= 0;
local GF_GetWhoParams 						= {};
local GF_GetWhoLevelRange					= 3;
local GF_GetWhoResetTimer					= 900;
local GF_LFGInviteTime						= {};
local GF_RequestInviteTime					= {};

GF_MessageList 								= {};
GF_MessageList[GF_RealmName] 				= {};
GF_BlackList 								= {};
GF_BlackList[GF_RealmName]					= {};
GF_FilteredResultsList		 				= {};
GF_ResultsListOffset 						= 0;
GF_BlackListOffset 							= 0;
GF_NumLFGSearchButtons						= 0;
GF_LogHistory								= {};
GF_LogHistory[GF_RealmName]					= {};

local GF_OnStartupRunOnce 					= true;
local GF_OnStartupQueueURequest 			= nil;
local GF_AddonWhoDataToBeSentBuffer			= {};
local GF_AddonAllNamesForResponseToLogin	= {};
local GF_AddonNamesToBeSentAsARequest		= {};
local GF_AddonMakeAResponseToLoginList		= nil;
local GF_AddonOPSentNamesOnLogin			= {};
local GF_AddonGroupDataToBeSentBuffer		= {};
local GF_AddonMakeAListOfGroup7sForSending	= nil;
local GF_AddonListOfGuildiesWithAddon		= {};

GF_AutoAnnounceTimer 						= nil;
local GF_WasPartyLeaderBefore				= nil;
local GF_PlayersCurrentlyInGroup 			= {};
local GF_FriendsAndGuildies					= {};
local GF_CurrentNumFriends					= 0;
local GF_CurrentNumGuildies					= 0;
local GF_UpdateTicker 						= 0;
local GF_TimeTillNextBroadcast				= 10;
local GF_UpdateAndRequestTimer				= 2;
local GF_RequestWhoDataPeriodicallyTimer 	= 30;
GF_PlayerMessages 							= {};
GF_IncomingMessagePrune		 				= 0;
local GF_PreviousMessage					= {};
local GF_MiniMapMessages					= { 0,0,0,0,0,0 };
local GF_LogMessageCodes					= {};

local GF_WhisperLogCurrentButtonID			= 0;
GF_WhisperLogList							= {}
GF_WhisperLogData							= {}

local GF_Classes							= {};
local GF_ClassColors						= {};
GF_ClassColors[GF_PRIEST]					= "ffffff";
GF_ClassColors[GF_MAGE]						= "68ccef";
GF_ClassColors[GF_WARLOCK]					= "9382c9";
GF_ClassColors[GF_DRUID]					= "ff7c0a";
GF_ClassColors[GF_HUNTER]					= "aad372";
GF_ClassColors[GF_ROGUE]					= "fff468";
GF_ClassColors[GF_WARRIOR]					= "c69b6d";
GF_ClassColors[GF_PALADIN]					= "f48cba";
GF_ClassColors[GF_SHAMAN]					= "f48cba";

GF_Classes = { GF_PRIEST, GF_MAGE, GF_WARLOCK, GF_DRUID, GF_HUNTER, GF_ROGUE, GF_WARRIOR, }
GF_Classes[GF_PRIEST] 	= 1;
GF_Classes[GF_MAGE] 	= 2;
GF_Classes[GF_WARLOCK] 	= 3;
GF_Classes[GF_DRUID] 	= 4;
GF_Classes[GF_HUNTER] 	= 5;
GF_Classes[GF_ROGUE] 	= 6;
GF_Classes[GF_WARRIOR] 	= 7;
GF_Classes[GF_PALADIN] 	= 8;
GF_Classes[GF_SHAMAN] 	= 8;
GF_Classes["PRIEST"] 	= GF_PRIEST;
GF_Classes["MAGE"] 		= GF_MAGE;
GF_Classes["WARLOCK"] 	= GF_WARLOCK;
GF_Classes["DRUID"] 	= GF_DRUID;
GF_Classes["HUNTER"] 	= GF_HUNTER;
GF_Classes["ROGUE"] 	= GF_ROGUE;
GF_Classes["WARRIOR"] 	= GF_WARRIOR;
GF_Classes["PALADIN"] 	= GF_PALADIN;
GF_Classes["SHAMAN"] 	= GF_SHAMAN;

GF_LogMessageCodes = { GF_BLOCKED_GROUPS, GF_BLOCKED_NEW, GF_BLOCKED_CHAT, GF_BLOCKED_TRADES, GF_BLOCKED_POLITICS, GF_LOOT_MESSAGE, GF_BLOCKED_SPAM, GF_BLACKLIST_MESSAGE, GF_BLOCKED_BELOWLEVEL, "", GF_BLOCKED_FILTER, GF_LOG_ME }

local ThingsToHide = { "GF_GroupsInChatCheckButton", "GF_GroupsNewOnlyCheckButton", "GF_GroupsInMinimapCheckButton", "GF_ShowChatCheckButton", "GF_ShowTradesCheckButton", "GF_ShowLootCheckButton", "GF_FrameShowPoliticsCheckButton",
"GF_FrameUseWhoOnGroupsCheckButton", "GF_SearchListDropdown", "GF_GroupsFrameDescriptionEditBox", "GF_AutoFilterCheckButton", "GF_PlaySoundOnResultsCheckButton", "GF_GroupsFrameShowDungeonCheckButton", "GF_GroupsFrameShowRaidCheckButton",
"GF_GroupsFrameShowQuestCheckButton", "GF_GroupsFrameShowOtherCheckButton", "GF_GroupsFrameShowLFMCheckButton", "GF_GroupsFrameShowLFGCheckButton", "GF_ShowSearchButton", "GF_SettingsFrameButton", "GF_ShowBlacklistButton", "GF_LogFrameButton",
"GF_AnnounceToLFGButton", "GF_ResetLFGDescriptionButton", "GF_LogBottomButton", "GF_LogDownButton", "GF_LogUpButton", "GF_LogShowGroups", "GF_LogShowFiltered", "GF_LogShowChat", "GF_LogShowTrades", "GF_LogShowPolitics", "GF_LogShowLoot",
"GF_LogShowSpam", "GF_LogShowBlacklist", "GF_LogShowBelowLevel", "GF_MainFrameCloseButton" }

function GF_OnLoad()
	SlashCmdList["GroupFinderCOMMAND"] = GF_SlashHandler; --Register Slash Command
	SLASH_GroupFinderCOMMAND1 = "/gf";
	this:RegisterEvent("CHAT_MSG_SYSTEM"); --Register Event Listeners
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
		local filteredChat,newMessage = GF_FindGroupsAndDisplayCustomChatMessages(event,arg1,arg2,arg9)
		if not filteredChat then
			old_ChatFrame_OnEvent(event);
		else
			if filteredChat ~= 10 then -- [1]Group,[2]New,[3]Chat,[4]Trades,[5]Politics,[6]Loot,[7]Spam,[8]Blacklist,[9]BelowLvl, [11]FilteredGroup, [12]Myself
				if arg2 == "" then arg2 = "SYSTEM" end
				if not GF_PreviousMessage[arg2][3] or GF_PreviousMessage[arg2][3] == 1 then
					if filteredChat == 12 or ((GF_SavedVariables.showgroupsinchat or GF_SavedVariables.showgroupsinminimap) and (filteredChat == 1 or filteredChat == 2)) or (GF_SavedVariables.showgroupsnewonly and filteredChat == 2) or (GF_SavedVariables.showchattexts and filteredChat == 3)
					or (GF_SavedVariables.showtradestexts and filteredChat == 4) or (GF_SavedVariables.showpolitics and filteredChat == 5) or (GF_SavedVariables.showloottexts and filteredChat == 6) then
						if GF_SavedVariables.showoriginalchat or filteredChat == 12 or arg2 == "SYSTEM" then old_ChatFrame_OnEvent(event); else if not GF_PreviousMessage[arg2][3] then GF_AddMessage(newMessage,arg2,arg8,arg9) end end
						if GF_SavedVariables.showgroupsinminimap and not GF_PreviousMessage[arg2][3] and (filteredChat == 1 or filteredChat == 2) then GF_ShowGroupsOnMinimap(newMessage,arg2) end
					end
					if not GF_PreviousMessage[arg2][3] then GF_AddLogMessage(newMessage,filteredChat,true,arg2,arg8,arg9) end
					if GF_SavedVariables.showoriginalchat or arg2 == UnitName("player") then GF_PreviousMessage[arg2][3] = 1; else GF_PreviousMessage[arg2][3] = 2; end
				end
			end
		end
	end
	local old_SendChatMessage = SendChatMessage;
	function SendChatMessage(arg1,arg2,arg3,arg4)
		if arg2 == "WHISPER" then
			arg4 = string.upper(string.sub(arg4,1,1))..string.lower(string.sub(arg4,2))
			GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg4,true)
		end
		old_SendChatMessage(arg1, arg2, arg3, arg4)
	end
--	old_ChatEdit_ParseText = ChatEdit_ParseText
--[[function ChatEdit_ParseText(editBox, send)

	local target

	local _, _, command, parameter = strfind(editBox:GetText(), '^(/%S+)%s*(%S*)')
	if command then
		command = strupper(command)
		local i = 1
		while true do
			if getglobal('SLASH_WHISPER'..i) and command == strupper(TEXT(getglobal('SLASH_WHISPER'..i))) and parameter ~= '' then
				target = gsub(strlower(parameter), '^%l', strupper)
				break
			elseif getglobal('SLASH_REPLY'..i) and command == strupper(TEXT(getglobal('SLASH_REPLY'..i))) and ChatEdit_GetLastTellTarget(editBox) ~= '' then
				target = ChatEdit_GetLastTellTarget(editBox)
				break
			elseif not getglobal('SLASH_WHISPER'..i) and not getglobal('SLASH_REPLY'..i) then
				break
			end
			i = i + 1
		end
	end

	if target then
		WIM_PostMessage(target, '', 5, '', '')
		editBox:SetText('')
		editBox:Hide()	
	else
		return old_ChatEdit_ParseText(editBox, send)
	end
end--]]
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
		local foundUrgentWhoSentFlags;
		for i=1, GetNumWhoResults() do
			local name,guild,level,_,class = GetWhoInfo(i);
			GF_WhoTable[GF_RealmName][name] = { time(), level, class, guild };
			if GF_UrgentWhoRequestSaved and GF_UrgentWhoRequestSaved == name then foundUrgentWhoSentFlags = true; end
		end
		if not (event == "WHO_LIST_UPDATE" and not foundUrgentWhoSentFlags) then
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
end
function GF_SendMessageFromLogEditBox()
	if not GFSendMessageFromLogEditBoxIsAWhisper() then
		if GF_WhisperLogCurrentButtonID == 0 then
			SendChatMessage(GF_LogEditBox:GetText(), "CHANNEL", nil, GetChannelName(GF_CHANNEL_NAME));
		else
			SendChatMessage(GF_LogEditBox:GetText(),"WHISPER",nil,getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):GetText())
		end
		GF_LogEditBox:SetText("")
	end
end
function GFSendMessageFromLogEditBoxIsAWhisper()
	for name,message in string.gfind(GF_LogEditBox:GetText(), "/w%s([a-zA-Z][a-zA-Z]+)%s(.*)") do
		SendChatMessage(message,"WHISPER",nil,name)
		GF_LogEditBox:SetText("")
		return true
	end
	if string.find(GF_LogEditBox:GetText(), "^/w") then DEFAULT_CHAT_FRAME:AddMessage(GF_WHISPER_FORMAT, 1, 1, 0.5) return 2 end
end
function GF_AddMessage(arg1,arg2,arg8,arg9)
	arg9 = string.gsub(arg9, " - .*", "")
	for i=1,NUM_CHAT_WINDOWS do
		local channellist = { GetChatWindowChannels(i) };
		for j=1, getn(channellist) do
			if string.find(arg9,channellist[j]) then
				if GF_WhoTable[GF_RealmName][arg2] then
					getglobal("ChatFrame"..i):AddMessage("["..arg8..". "..string.upper(string.sub(arg9,1,1))..string.lower(string.sub(arg9,2)).."] ".."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][3]] or "ffffff").."[|Hplayer:"..arg2.."|h"..arg2..", "..GF_WhoTable[GF_RealmName][arg2][2].."|h|r]: "..arg1, 1, 192/255, 192/255) 
				else
					getglobal("ChatFrame"..i):AddMessage("["..arg8..". "..string.upper(string.sub(arg9,1,1))..string.lower(string.sub(arg9,2)).."] ".."|cff".."9d9d9d".."[|Hplayer:"..arg2.."|h"..arg2.."|h|r]: "..arg1,  1, 192/255, 192/255);
				end
			end
		end
	end
end
function GF_AddLogMessage(arg1,filteredChat,add,arg2,arg8,arg9)
	if add then
		arg9 = string.gsub(arg9, " - .*", "")
		if GF_WhoTable[GF_RealmName][arg2] then 
			arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[filteredChat].."["..arg8..". "..string.upper(string.sub(arg9,1,1))..string.lower(string.sub(arg9,2)).."] ".."|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][3]] or "9d9d9d").."[|Hplayer:"..arg2.."|h"..arg2..", "..GF_WhoTable[GF_RealmName][arg2][2].."|h|r]: "..arg1
		else
			arg1 = "["..date("%H:%M").."] "..GF_LogMessageCodes[filteredChat].."["..arg8..". "..string.upper(string.sub(arg9,1,1))..string.lower(string.sub(arg9,2)).."] ".."|cff".."9d9d9d".."[|Hplayer:"..arg2.."|h"..arg2.."|h|r]: "..arg1
		end
		table.insert(GF_LogHistory[GF_RealmName],1, {arg1, filteredChat})
		if getn(GF_LogHistory[GF_RealmName]) > 500 then table.remove(GF_LogHistory[GF_RealmName],501) end
	end
	if GF_LogCheckFilters(filteredChat) and GF_WhisperLogCurrentButtonID == 0 then
		GF_Log:AddMessage(arg1, 1, 192/255, 192/255)
	end
end
function GF_LogCheckFilters(filteredChat)
	if (filteredChat == 12 or (GF_SavedVariables.logshowgroup and (filteredChat == 1 or filteredChat == 2)) or (GF_SavedVariables.logshowchat and filteredChat == 3)
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
	elseif string.lower(msg) == "help" then
		DEFAULT_CHAT_FRAME:AddMessage("'Reset' to reset screen position", 1, 1, 0.5)
	elseif GF_MainFrame:IsVisible() then
		GF_MainFrame:Hide();
	else
		GF_MainFrame:Show();
	end
end
function GF_ToggleMainFrame()
	PlaySound("igCharacterInfoTab");
	if GF_MainFrame:IsVisible() then
		GF_MainFrame:Hide();
		GF_SearchList:Hide();
	else
		GF_MainFrame:Show();
	end
end
function GF_UpdateMinimapIcon()
	local relativepos;
	local directionMultiplier = 1;
	if Minimap:GetLeft() > GetScreenWidth()/2 then -- Minimap On the Right
		if Minimap:GetTop() > GetScreenHeight()/2 then relativepos = "TOPRIGHT"	directionMultiplier = -1 else relativepos = "BOTTOMRIGHT" end
	else
		if Minimap:GetTop() > GetScreenHeight()/2 then relativepos = "TOPLEFT" directionMultiplier = -1 else relativepos = "BOTTOMLEFT" end
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
				if GF_WhoTable[GF_RealmName][GF_WhoQueue[1]] and GF_WhoTable[GF_RealmName][GF_WhoQueue[1]][1] + 259200 > time() and not GF_AddonNamesToBeSentAsARequest[GF_WhoQueue[1]] then -- 3 days
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
		GF_WhoTable[GF_RealmName][name] = { time(), level, class, guild };
		if not GF_ClassWhoRequest then GF_AddonAllNamesForResponseToLogin[name] = true; end
		if GF_ClassWhoRequest and not GF_ClassWhoTable[name] and not GF_PlayersCurrentlyInGroup[name] and class == GF_GetWhoParams[1] and level >= GF_GetWhoParams[2]-GF_GetWhoLevelRange and level <= GF_GetWhoParams[2]+GF_GetWhoLevelRange
		and (not GF_GetWhoParams[3] or (GF_GetWhoParams[3] and not GF_IsFoundClassWhoPlayerInADungeonOrPvP(zone))) then
			GF_ClassWhoTable[name] = { time()-GF_GetWhoResetTimer, level, class, zone }
			GF_ClassWhoMatchingResults = GF_ClassWhoMatchingResults + 1
		end
		if GF_UrgentWhoRequestSaved == name then GF_UrgentWhoRequestSaved = nil; end
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
function GF_PruneTheWhoTable()
	local tempwhotable = {}
	for realmname,_ in GF_WhoTable do
		for i=1, getn(GF_MessageList[realmname]) do
			if GF_MessageList[realmname][i].who then
				tempwhotable[GF_MessageList[realmname][i].op] = { GF_MessageList[realmname][i].who[1],GF_MessageList[realmname][i].who[2],GF_MessageList[realmname][i].who[3],GF_MessageList[realmname][i].who[4] };
			end
		end
		
		local length = 0;
		for name, whoData in GF_WhoTable[realmname] do
			if whoData[1] + 2592000 > time() or (whoData[2] ~= 60 and whoData[1] + 86400 > time()) then -- 60*60*24*30 = 30 days for level 60's... one day for under 60
				tempwhotable[name] = whoData
			end
			length = length + 1;
			if length == GF_MaxEntriesPerRealmOnPrune then break end
		end
		if length == GF_MaxEntriesPerRealmOnPrune then GF_WhoTable[realmname] = tempwhotable; end
	end

	tempwhotable = {}
	if GF_ClassWhoTable then
		for name, whoData in GF_ClassWhoTable do
			if whoData and whoData[1] + 3600 > time() then -- 60*60 - 1 hour
				tempwhotable[name] = whoData
			end
		end
	end
	GF_ClassWhoTable = tempwhotable;
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
		for n,entry in pairs(GF_AddonGroupDataToBeSentBuffer) do
			if entry.who and (entry.type == "D" or entry.type == "R") and entry.time + 900 > time() then
				local c = GF_Classes[entry.who[3]] or 7
				local t = entry.time
				local y = entry.type
				local d = entry.dlevel or 60
				local n = entry.op
				local l = entry.who[2] or 60
				local g = entry.who[4] or ""
				local r = entry.who[1] or time()
				local s = string.gsub(string.gsub(entry.message, "|c(%w+)|H(.+):(.+)|h(.+)|h|r", "%4"),":","")
				SendAddonMessage("GF", c..t..y..d..n..l..g..r..":"..s, "GUILD");
				if GF_GetNumGroupMembers() > 1 or GetNumRaidMembers() > 1 then SendAddonMessage("GF", c..t..y..d..n..l..g..r..":"..s, "PARTY"); end
				counter = counter + 1
				if counter == 10 then break end
			end
			GF_AddonGroupDataToBeSentBuffer[n] = nil;
		end
		local addonsendstring = "U";
		if GF_OnStartupQueueURequest then
			for j=1, getn(GF_MessageList[GF_RealmName]) do
				if (GF_MessageList[GF_RealmName][j].type == "D" or GF_MessageList[GF_RealmName][j].type == "R") then
					addonsendstring = addonsendstring..":"..GF_MessageList[GF_RealmName][j].op
					if string.len(addonsendstring) > 240 then break end
				end
			end
			SendAddonMessage("GF", addonsendstring, "GUILD");
			if GF_GetNumGroupMembers() > 0 or GetNumRaidMembers() > 1 then SendAddonMessage("GF", addonsendstring, "PARTY"); end
			GF_OnStartupQueueURequest = nil;
		end
		addonsendstring = "W"
		if GF_AddonMakeAResponseToLoginList then
			for n,w in pairs(GF_AddonAllNamesForResponseToLogin) do
				if w then addonsendstring = addonsendstring..":"..n end
				if string.len(addonsendstring) > 240 then break end
			end
			if string.len(addonsendstring) > 1 then SendAddonMessage("GF", addonsendstring, "GUILD"); if GF_GetNumGroupMembers() > 0 or GetNumRaidMembers() > 1 then SendAddonMessage("GF", addonsendstring, "PARTY"); end end
			GF_AddonMakeAResponseToLoginList = nil;
		end
		addonsendstring = "R"
		for n,w in pairs(GF_AddonNamesToBeSentAsARequest) do
			if w then addonsendstring = addonsendstring..":"..n end
			if GF_AddonNamesToBeSentAsARequest then GF_AddonNamesToBeSentAsARequest[n] = nil; end
			if string.len(addonsendstring) > 240 then break end
		end
		if string.len(addonsendstring) > 1 then SendAddonMessage("GF", addonsendstring, "GUILD");  if GF_GetNumGroupMembers() > 0 or GetNumRaidMembers() > 1 then SendAddonMessage("GF", addonsendstring, "PARTY"); end end
		addonsendstring = ""
		for n,w in pairs(GF_AddonWhoDataToBeSentBuffer) do
			if w[4] == "" then w[4] = "<>" end
			if w then addonsendstring = addonsendstring..":"..GF_Classes[w[3]]..n..w[2]..w[4]..w[1] end
			if GF_AddonWhoDataToBeSentBuffer[n] then GF_AddonWhoDataToBeSentBuffer[n] = nil; end
			if string.len(addonsendstring) > 202 then break end
		end
		if string.len(addonsendstring) > 1 then SendAddonMessage("GF", addonsendstring, "GUILD");  if GF_GetNumGroupMembers() > 0 or GetNumRaidMembers() > 1 then SendAddonMessage("GF", addonsendstring, "PARTY"); end end
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
		GF_RequestWhoDataPeriodicallyTimer = 30;
		for i=1, GetNumGuildMembers() do
			local name = GetGuildRosterInfo(i)
			if name and GF_AddonListOfGuildiesWithAddon[name] then
				GF_AddonMakeAResponseToLoginList = true;
				GF_TimeTillNextBroadcast = 0;
				break
			end
		end
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
		if GF_SavedVariables.lfgauto then GF_FixLFGStrings() end
		GF_UpdatePlayersInGroupList()
	elseif (event == "GUILD_ROSTER_UPDATE" and GetNumGuildMembers() ~= GF_CurrentNumGuildies) or (event == "FRIENDLIST_UPDATE" and GetNumFriends() ~= GF_CurrentNumFriends) then
		GF_UpdateFriendsAndGuildiesList()
	elseif event == "ZONE_CHANGED_NEW_AREA" then
		GF_JoinWorld()
	elseif event == "PLAYER_ENTERING_WORLD" and GF_OnStartupRunOnce then
		GF_OnStartupRunOnce = false;
		GF_LoadSettings()
		GF_UpdateBlackListItems(); 
		GF_ApplyFiltersToGroupList()	
		if GF_SavedVariables.firstloadafterlogout then GF_SavedVariables.firstloadafterlogout = false; GF_OnStartupQueueURequest = true; end
		GF_BindKey("I", "GF_SHOW_FRAME") -- Bind the Group Finder window to "I" if it isn't already bound.
	elseif event == "PLAYER_LEAVING_WORLD" then
		local _,_,_,xpos, ypos = GF_MainFrame:GetPoint()
		GF_SavedVariables.MainFrameXPos = xpos;
		GF_SavedVariables.MainFrameYPos = ypos;
		GF_SavedVariables.firstloadafterlogout = true;
	end
end
function GF_LoadSettings()
	local SliderVariablesToSet = { GF_SavedVariables.MinimapArcOffset, GF_SavedVariables.MinimapRadiusOffset, GF_SavedVariables.MinimapMsgArcOffset, GF_SavedVariables.MinimapMsgRadiusOffset, GF_SavedVariables.FilterLevel, GF_SavedVariables.MainFrameUIScale,
	GF_SavedVariables.MainFrameTransparency, GF_SavedVariables.spamfilterduration,GF_SavedVariables.autoblacklistminlevel,GF_SavedVariables.blockmessagebelowlevel,GF_SavedVariables.grouplistingduration,GF_SavedVariables.autofilterlevelvar,
	GF_SavedVariables.showgroupsnewonlytime, GF_SavedVariables.announcetimer/6 }
	local SliderNames = { "GF_MinimapArcSlider", "GF_MinimapRadiusSlider", "GF_MinimapMsgArcSlider", "GF_MinimapMsgRadiusSlider", "GF_FilterLevelSlider", "GF_UIScaleSlider", "GF_FrameTransparencySlider", "GF_FrameSpamFilterDurationSlider",
	"GF_FrameSpamBlacklistMinLevelSlider", "GF_FrameBlockMessagesBelowLevelSlider", "GF_GroupListingDurationSlider", "GF_AutoFilterLevelSlider", "GF_GroupNewTimeoutSlider", "GF_FrameAnnounceTimerSlider" }
	for i=1, 14 do getglobal(SliderNames[i]):SetValue(SliderVariablesToSet[i]) end
	
	local CheckButtonVariablesToSet = { GF_SavedVariables.showgroupsinchat, GF_SavedVariables.showgroupsinminimap, GF_SavedVariables.showgroupsnewonly, GF_SavedVariables.showchattexts, GF_SavedVariables.showtradestexts, GF_SavedVariables.showloottexts,
	GF_SavedVariables.autofilter, GF_SavedVariables.showtranslate, GF_SavedVariables.showdungeons, GF_SavedVariables.showraids, GF_SavedVariables.showquests, GF_SavedVariables.showother, GF_SavedVariables.showlfm, GF_SavedVariables.showlfg,
	GF_SavedVariables.logshowgroup, GF_SavedVariables.logshowfiltered, GF_SavedVariables.logshowchat, GF_SavedVariables.logshowtrades, GF_SavedVariables.logshowpolitics, GF_SavedVariables.logshowloot, GF_SavedVariables.logshowspam,
	GF_SavedVariables.logshowblacklist, GF_SavedVariables.logshowbelowlevel, GF_SavedVariables.loghidemainframe, GF_SavedVariables.joinworld, GF_SavedVariables.showoriginalchat, GF_SavedVariables.usewhoongroups, GF_SavedVariables.errorfilter,
	GF_SavedVariables.showpolitics, GF_SavedVariables.spamfilter, GF_SavedVariables.autoblacklist, GF_SavedVariables.playsounds, GF_SavedVariables.lfgauto}
	
	local CheckButtonNames = { "GF_GroupsInChatCheckButton", "GF_GroupsInMinimapCheckButton", "GF_GroupsNewOnlyCheckButton", "GF_ShowChatCheckButton", "GF_ShowTradesCheckButton", "GF_ShowLootCheckButton", "GF_AutoFilterCheckButton", "GF_GroupsFrameShowTranslateCheckButton",
	"GF_GroupsFrameShowDungeonCheckButton", "GF_GroupsFrameShowRaidCheckButton", "GF_GroupsFrameShowQuestCheckButton", "GF_GroupsFrameShowOtherCheckButton", "GF_GroupsFrameShowLFMCheckButton", "GF_GroupsFrameShowLFGCheckButton", "GF_LogShowGroups",
	"GF_LogShowFiltered", "GF_LogShowChat", "GF_LogShowTrades", "GF_LogShowPolitics", "GF_LogShowLoot", "GF_LogShowSpam", "GF_LogShowBlacklist", "GF_LogShowBelowLevel", "GF_LogHideMainFrame", "GF_FrameJoinWorldCheckButton",	"GF_FrameShowOriginalChatCheckButton",
	"GF_FrameUseWhoOnGroupsCheckButton", "GF_FrameErrorFilterCheckButton", "GF_FrameShowPoliticsCheckButton", "GF_FrameSpamFilterCheckButton", "GF_FrameAutoBlacklistCheckButton", "GF_PlaySoundOnResultsCheckButton", "GF_GroupAutoCheckButton",}
	for i=1, 33 do getglobal(CheckButtonNames[i]):SetChecked(CheckButtonVariablesToSet[i]) end
	
	local TextToSet = { GF_FilterLevelNotes[GF_SavedVariables.FilterLevel], GF_SavedVariables.searchtext, GF_SavedVariables.searchlfgtext, GF_SavedVariables.searchlfgwhispertext }
	local TextNames = { "GF_FilterLevelSliderNote", "GF_GroupsFrameDescriptionEditBox", "GF_LFGDescriptionEditBox", "GF_LFGWhoWhisperEditBox" }
	for i=1, 4 do getglobal(TextNames[i]):SetText(TextToSet[i]) end
	getglobal(GF_LFGSizeDropdown:GetName().."TextLabel"):SetText(GF_SavedVariables.lfgsize);
	getglobal(GF_LFGWhoClassDropdown:GetName().."TextLabel"):SetText(GF_SavedVariables.lfgwhisperclass);

	if UnitFactionGroup("player") == "Alliance" then GF_Classes[8] = GF_PALADIN; else GF_Classes[8] = GF_SHAMAN; end			
	
	GF_BUTTONS_LIST["LFGLFM"][2] = { GF_TRIGGER_LIST.CLASSES[UnitClass("player")][1].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][3] = { GF_TRIGGER_LIST.CLASSES[UnitClass("player")][2].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][4] = { GF_TRIGGER_LIST.CLASSES[UnitClass("player")][3].." "..UnitClass("player").." LFG", 1, 60, }
	GF_BUTTONS_LIST["LFGLFM"][5] = { UnitClass("player").." LFG", 1, 60, }

	if not GF_MessageList[GF_RealmName] then GF_MessageList[GF_RealmName] = {}; end
	if not GF_BlackList[GF_RealmName] then GF_BlackList[GF_RealmName] = {}; end
	if not GF_WhoTable[GF_RealmName] then GF_WhoTable[GF_RealmName] = {} end
	if not GF_LogHistory[GF_RealmName] then GF_LogHistory[GF_RealmName] = {} end
	if not GF_WhoTable[GF_RealmName][UnitName("player")] then GF_WhoTable[GF_RealmName][UnitName("player")] = { time()+60*60*24*14, UnitLevel("player"), UnitClass("player"), "" }; end --14 days for pruning
	if GF_WhoTable[GF_RealmName][UnitName("player")][1] < time() then GF_PruneTheWhoTable(); end

	GF_UpdateMinimapIcon();
	GF_MainFrame:SetAlpha(GF_FrameTransparencySlider:GetValue());
	GF_MainFrame:SetScale(GF_UIScaleSlider:GetValue());
	if GF_SavedVariables.MainFrameXPos then GF_MainFrame:SetPoint("TOPLEFT",UIParent,"TOPLEFT", GF_SavedVariables.MainFrameXPos, GF_SavedVariables.MainFrameYPos) else GF_SavedVariables.MainFrameXPos = 0 GF_SavedVariables.MainFrameXPos = 0 end
	GF_ToggleHideMainFrame()
	GF_DisplayLog()
	GF_UpdateFriendsAndGuildiesList()
	GF_WhisperHistoryUpdateFrame()

	if (GF_RealmName == "Nordanaar" or GF_RealmName == "Tel'Abim") then GF_AddTurtleWoWDungeonsRaids(); GF_WhoCooldownTime = 30; end
end
function GF_ToggleHideMainFrame()
	if GF_SavedVariables.loghidemainframe then
		for i=1, 37 do
			getglobal(ThingsToHide[i]):Hide()
		end
		GF_LogFrame:Show();
		GF_GroupsFrame:Hide()
		GF_MainFrame:SetAlpha(0)
		GF_MainFrame:SetFrameStrata("BACKGROUND")
		GF_MainFrame:EnableMouse(false)
		GF_MainFrame:IsMovable(false)
		GF_LogFrame:SetAlpha(GF_SavedVariables.MainFrameTransparency)
		GF_LogFrameInternalFrameTitle:SetText("");
		GF_LogFrameInternalFrame:SetBackdropBorderColor(.4,.4,.4,0)
		GF_LogFrameInternalFrame:SetBackdropColor(.14,.14,.14,0)
		GF_LogEditBox:SetPoint("BOTTOMLEFT",0,-20)
		GF_LogEditBox:SetPoint("BOTTOMRIGHT",0,-40)
		for id, word in UISpecialFrames do
			if word == "GF_MainFrame" then UISpecialFrames[id] = nil break end
		end
	else
		for i=1, 35 do
			getglobal(ThingsToHide[i]):Show()
		end
		GF_MainFrame:SetAlpha(GF_SavedVariables.MainFrameTransparency)
		GF_MainFrame:SetFrameStrata("DIALOG")
		GF_MainFrame:EnableMouse(true)
		GF_MainFrame:IsMovable(true)
		GF_LogFrameInternalFrameTitle:SetText(GF_LOG_AND_MONITOR);
		GF_LogFrameInternalFrame:SetBackdropBorderColor(.4,.4,.4,1)
		GF_LogFrameInternalFrame:SetBackdropColor(.14,.14,.14,1)
		GF_LogEditBox:SetPoint("BOTTOMLEFT",0,-50)
		GF_LogEditBox:SetPoint("BOTTOMRIGHT",0,-70)
		tinsert(UISpecialFrames,GF_MainFrame);
	end
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
function GF_UpdateFriendsAndGuildiesList()
	GF_FriendsAndGuildies = {};
	local name;
	for i=1, GetNumFriends() do
		name = GetFriendInfo(i)
		if name then GF_FriendsAndGuildies[name] = true; end
	end
	for i=1, GetNumGuildMembers() do
		name = GetGuildRosterInfo(i)
		if name then GF_FriendsAndGuildies[name] = true; end
	end
end
function GF_JoinWorld(show)
	if GF_SavedVariables.joinworld then
		local worldFound = false;
		for i=1, 10 do
			local _,cName = GetChannelName(i)
			if cName and string.lower(cName) == string.lower(GF_CHANNEL_NAME) then
				worldFound = true;
				break
			end
		end
		if not worldFound then
			JoinChannelByName(GF_CHANNEL_NAME);
			if show then ChatFrame_AddChannel(ChatFrame1, GF_CHANNEL_NAME); end
		end
	end
end
function GF_LeaveWorld()
	for i=1, 10 do
		local _,cName = GetChannelName(i)
		if cName and string.lower(cName) == string.lower(GF_CHANNEL_NAME) then
			ChatFrame_RemoveChannel(1, cName);
			return
		end
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
		for w in string.gfind(arg2, "(%w+)") do
			GF_AddonOPSentNamesOnLogin[w] = true;
		end
		for n,w in pairs(GF_WhoTable[GF_RealmName]) do
			if not GF_AddonWhoDataToBeSentBuffer[n] and w[1] + 900 > time() then GF_AddonAllNamesForResponseToLogin[n] = true; end -- Sends only names from the last 15 minutes
		end
		GF_TimeTillNextBroadcast = (math.random(60))/3; -- Assuming up to 333ms lag
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
			if GF_WhoTable[GF_RealmName][sentname] then GF_AddonWhoDataToBeSentBuffer[sentname] = GF_WhoTable[GF_RealmName][sentname]; end
			GF_AddonNamesToBeSentAsARequest[sentname] = nil
		end
	elseif string.sub(arg2,1,1) == ":" then -- (To Everyone) This is the who data from the names requested in "R".
		for sentclass,sentname,sentlevel,sentguild, sentrecordedtime in string.gfind(arg2, ":(%d)([a-zA-Z]+)(%d+)([a-zA-Z%s<>]+)(%d+)") do
			if not GF_WhoTable[GF_RealmName][sentname] then
				GF_WhoTable[GF_RealmName][sentname] = { tonumber(sentrecordedtime), tonumber(sentlevel), GF_Classes[tonumber(sentclass)], string.gsub(sentguild,"[<>]", "") };
			end
			GF_AddonAllNamesForResponseToLogin[sentname] = nil;
			GF_AddonNamesToBeSentAsARequest[sentname] = nil;
			GF_AddonWhoDataToBeSentBuffer[sentname] = nil;
		end
	elseif string.len(arg2) > 2 then -- (To Everyone) This is the full group information. Which is sent separately from the who data.
		for sentclass, senttime,senttype,sentdlevel, sentname, sentplevel, sentguild, sentrecordedtime, message in string.gfind(arg2, "(%d)(%d+)([a-zA-Z])(%d+)([a-zA-Z]+)(%d+)([a-zA-Z%s<>]+)(%d+):(.+)") do
			if not GF_WhoTable[GF_RealmName][sentname] or tonumber(sentrecordedtime) > GF_WhoTable[GF_RealmName][sentname][1] then
				GF_WhoTable[GF_RealmName][sentname] = { tonumber(sentrecordedtime), tonumber(sentplevel), GF_Classes[tonumber(sentclass)], string.gsub(sentguild,"[<>]", "") };
			end

			local entry = {};
			entry.op = sentname;
			entry.message = message;
			entry.type = senttype;
			entry.dlevel = tonumber(sentdlevel)
			entry.who = GF_WhoTable[GF_RealmName][sentname];
			entry.time = tonumber(senttime);
			
			for i = 1, getn(GF_MessageList[GF_RealmName]) do
				if GF_MessageList[GF_RealmName][i].op and GF_MessageList[GF_RealmName][i].op == sentname then
					table.remove(GF_MessageList[GF_RealmName], i);
					break;
				end
			end
			if getn(GF_MessageList[GF_RealmName]) > 0 then
				for i = 1, getn(GF_MessageList[GF_RealmName]) do
					if entry.time > GF_MessageList[GF_RealmName][i].time then
						table.insert(GF_MessageList[GF_RealmName], i, entry);
						break;
					end
					if i == getn(GF_MessageList[GF_RealmName]) then table.insert(GF_MessageList[GF_RealmName], i + 1, entry); end
				end
			else
				table.insert(GF_MessageList[GF_RealmName], 1, entry);	
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
		if not foundIKey then SetBinding(bindKey,"GF_SHOW_FRAME"); end
	end

end
function GF_GetWhoData(arg2,groupfound)
	if string.find(arg2," ") then return end
	if not GF_WhoTable[GF_RealmName][arg2] then 
		if IsAddOnLoaded("pfUI") then
			local whodata = pfUI_playerDB[arg2]
			if whodata and whodata.level and whodata.class and whodata.guild then GF_WhoTable[GF_RealmName][arg2] = { time() - 21601, whodata.level, GF_Classes[whodata.class], whodata.guild }; end -- 6 hours + 1 second
		end
	end
	if (not GF_WhoTable[GF_RealmName][arg2] or GF_WhoTable[GF_RealmName][arg2][1] < time() - 259200) and GF_SavedVariables.usewhoongroups and (groupfound or not GF_SavedVariables.showoriginalchat) then -- 3 days
		GF_AddNameToWhoQueue(arg2,groupfound)
	else
		return GF_WhoTable[GF_RealmName][arg2]
	end
end
function GF_GetTime(colon)
	local hour, minute = GetGameTime();
	if hour < 10 then hour = "0"..hour; end
	if minute < 10 then minute = "0"..minute; end
	if colon then return hour..":"..minute else return hour..minute; end
end
function GF_EntryMatchesGroupFilterCriteria(entry)
	if GF_SavedVariables.searchtext == "" and GF_SavedVariables.searchbuttonstext == "" and ((GF_SavedVariables.showdungeons and entry.type == "D") or (GF_SavedVariables.showraids and entry.type == "R") or (GF_SavedVariables.showquests and entry.type == "Q") or (GF_SavedVariables.showother and entry.type == "N"))
	and ((GF_SavedVariables.showlfg and entry.lfg) or (GF_SavedVariables.showlfm and not entry.lfg)) and (not GF_SavedVariables.autofilter or (entry.who and (entry.who[2] >= UnitLevel("player")-GF_SavedVariables.autofilterlevelvar
	and entry.who[2] <= UnitLevel("player")+GF_SavedVariables.autofilterlevelvar)) or (entry.dlevel and entry.dlevel >= UnitLevel("player")-3 and entry.dlevel <= UnitLevel("player")+3)) then
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
			if (entry.time + GF_SavedVariables.grouplistingduration*60) > time() then
				if GF_EntryMatchesGroupFilterCriteria(entry) then
					entry.elapsed = ceil((time() - entry.time)/60);
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
	local index = 1;
	local groupListLength = getn(GF_FilteredResultsList);
	GF_MinimapIconTextLabel:SetText(groupListLength);
	GF_MinimapIconTextLabel:Show();
	GF_ResultsLabel:SetText(GF_RESULTS_FOUND.." "..groupListLength.." / "..getn(GF_MessageList[GF_RealmName]));
	GF_PageLabel:Show();

	local cpage = floor(GF_ResultsListOffset / 20);
	local tpage = floor(groupListLength / 20);
	if cpage == 0 or cpage <= GF_ResultsListOffset / 20 then cpage = cpage + 1; end
	if tpage == 0 or tpage < groupListLength / 20 then tpage = tpage + 1; end
	GF_PageLabel:SetText(GF_PAGE.." "..cpage.." / "..tpage);

	while index < 20+1 do
		local c = "GF_NewItem"..index;
		if getglobal(c) then
			if index+GF_ResultsListOffset <= groupListLength then 
				local entry = GF_FilteredResultsList[index+GF_ResultsListOffset];
				if GF_PlayersCurrentlyInGroup[entry.op] or GF_FriendsAndGuildies[entry.op] then getglobal(c.."NameLabel"):SetTextColor(255,215,0,1); else getglobal(c.."NameLabel"):SetTextColor(0.75,0.75,1,1); end

				local rightText = "";
				if entry.elapsed then
					if entry.elapsed > 1 then rightText = GF_TIME_LEFT..entry.elapsed.." "..GF_MINUTES..GF_TIME_AGO;
					else rightText = GF_TIME_LEFT..entry.elapsed.." "..GF_MINUTE..GF_TIME_AGO; end
				else
					rightText = entry.time;
				end
				getglobal(c.."MoreRightLabel"):SetText(rightText);
				
				local mainText = "";
				local moreText = "";
				if entry.who and entry.who[3] and entry.who[2] and entry.who[2] ~= 0 then
					if entry.who[4] == "<>" then
						moreText = "Level "..entry.who[2].." "..entry.who[3];
					else
						moreText = "Level "..entry.who[2].." "..entry.who[3]..", "..entry.who[4];
					end
					mainText = mainText.."|cff"..(GF_ClassColors[entry.who[3]] or "ffffff")..entry.op.."|r: "..entry.message;
				else
					mainText = mainText..entry.op..": "..entry.message;
				end
				getglobal(c.."NameLabel"):SetText(mainText);
				getglobal(c.."MoreLabel"):SetText(moreText);
				getglobal(c):Show();

				if (not GF_SavedVariables.usewhoongroups or (entry.whoAttempts and entry.whoAttempts > 2)) and not (GF_WhoTable[GF_RealmName][entry.op] and GF_WhoTable[GF_RealmName][entry.op][1] and
				GF_WhoTable[GF_RealmName][entry.op][1] + 259200 > time()) and not GF_GetPositionInWhoQueue(entry.op, GF_WhoQueue) then getglobal(c.."GroupWhoButton"):Show(); else getglobal(c.."GroupWhoButton"):Hide(); end
				
				getglobal(c.."LFGInviteButton"):Hide();
				getglobal(c.."LFMWhisperRequestInviteButton"):Hide();
				if entry.dlevel and UnitLevel("player") >= entry.dlevel - 3 and UnitLevel("player") <= entry.dlevel + 3 then
					if not entry.lfg and (not GF_RequestInviteTime[entry.op] or GF_RequestInviteTime[entry.op] < time()) then getglobal(c.."LFMWhisperRequestInviteButton"):Show(); end
					if entry.lfg and (not GF_LFGInviteTime[entry.op] or GF_LFGInviteTime[entry.op] < time()) then getglobal(c.."LFGInviteButton"):Show(); end
				end
			else
				getglobal(c):Hide();
			end
		end
		index = index + 1;
	end
end
function GF_ListItem_OnMouseUp(frame,id) -- When you click a name in the list.
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
	local findTalent;
	local specName = "";
	for i=1,3 do
		_,_,_,_,findSpec = GetTalentInfo(i,GetNumTalents(i));
		if findSpec > 0 then specName = GF_TRIGGER_LIST.CLASSES[UnitClass("player")][i].." " break end
	end
	SendChatMessage("["..UnitLevel("player").." "..specName..UnitClass("player").."] "..GF_INVITE_PLEASE,"WHISPER",nil,GF_FilteredResultsList[id].op)
	GF_RequestInviteTime[GF_FilteredResultsList[id].op] = time() + 120
	getglobal(frame:GetName().."LFMWhisperRequestInviteButton"):Hide();
end
function GF_WhisperHistoryButtonPressed(id) -- Change highlight.. clear the log and add the whisper entries GF_WhisperHistoryDisplayLog()
	if id == GF_WhisperLogCurrentButtonID then return end
	getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):UnlockHighlight()
	getglobal("GF_WhisperHistoryButton"..id):LockHighlight()
	if GF_WhisperLogCurrentButtonID ~= 0 then getglobal("GF_WhisperHistoryButtonCheckButton"..GF_WhisperLogCurrentButtonID):Hide() end
	if id ~= 0 then getglobal("GF_WhisperHistoryButtonCheckButton"..id):Show() end
	
	GF_WhisperLogCurrentButtonID = id;
	if id == 0 then GF_DisplayLog() else GF_WhisperHistoryDisplayLog(getglobal("GF_WhisperHistoryButton"..id):GetText()) end
end
function GF_WhisperReceivedAddToWhisperHistoryList(message,name,sent)
	if not GF_WhisperLogData[name] then
		GF_WhisperLogData[name] = {}
		if GF_FriendsAndGuildies[name] then	GF_WhisperLogData[name].priority = true; end
	end
	if sent then
		message = "|cffff80ff["..date("%m/%d").."] ["..date("%H:%M").."]|r ".."[To] ".."|cff"..GF_ClassColors[UnitClass("player")].."[|Hplayer:"..UnitName("player").."|h"..UnitName("player")..", "..UnitLevel("player").."|h|r]: "..message
	else
		if GF_WhoTable[GF_RealmName][name] then 
			message = "|cffff80ff["..date("%m/%d").."] ["..date("%H:%M").."]|r ".."[From] ".."|cff"..GF_ClassColors[GF_WhoTable[GF_RealmName][name][3]].."[|Hplayer:"..name.."|h"..name..", "..GF_WhoTable[GF_RealmName][name][2].."|h|r]: "..message
		else
			message = "|cffff80ff["..date("%m/%d").."] ["..date("%H:%M").."]|r ".."[From] ".."|cff".."9d9d9d".."[|Hplayer:"..name.."|h"..name.."|h|r]: "..message
		end
	end
	table.insert(GF_WhisperLogData[name],1,message)
	if getn(GF_WhisperLogData[name]) > 100 then table.remove(GF_WhisperLogData[name],101) end
	table.insert(GF_LogHistory[GF_RealmName],1,{message, 12})
	if getn(GF_LogHistory[GF_RealmName]) > 500 then table.remove(GF_LogHistory[GF_RealmName],501) end
	if GF_WhisperLogCurrentButtonID == 0 or name == getglobal("GF_WhisperHistoryButton"..GF_WhisperLogCurrentButtonID):GetText() then GF_Log:AddMessage(message, 1, 192/255, 192/255) end
	GF_WhisperHistoryUpdateFrame(name)
end
function GF_WhisperHistoryUpdateFrame(name) -- when moved up priority, highlight needs to shift with it... still sometimes giving double entries for the same name.... priority doesn't seem to always go up top
	local listLength = getn(GF_WhisperLogList)
	for i=1, listLength do
		if name and GF_WhisperLogList[listLength-i+1] == name then -- This whole section is going in reverse order.. So if length is 5... then starting at 5... Found name at 5, deleted it..
			table.remove(GF_WhisperLogList,listLength-i+1)
		elseif GF_WhisperLogData[GF_WhisperLogList[listLength-i+1]].priority then -- Found an entry at 4 and it is priority... insert it at position 1... now position 4 is at position 5... delete position 5
			table.insert(GF_WhisperLogList,1,GF_WhisperLogList[listLength-i+1])
			table.remove(GF_WhisperLogList,listLength-i+2)
		end
	end
	if name then table.insert(GF_WhisperLogList,1,name) end
	for i=1, 20 do
		if GF_WhisperLogList[i] then
			if GF_WhisperLogData[GF_WhisperLogList[i]].priority then getglobal("GF_WhisperHistoryButtonCheckButton"..i):SetChecked(true) else getglobal("GF_WhisperHistoryButtonCheckButton"..i):SetChecked(false) end
			getglobal("GF_WhisperHistoryButton"..i):SetText(GF_WhisperLogList[i])
			getglobal("GF_WhisperHistoryButton"..i):Show()
		else
			getglobal("GF_WhisperHistoryButton"..i):SetText("")
			getglobal("GF_WhisperHistoryButton"..i):Hide()
		end
	end
end
function GF_WhisperHistoryDisplayLog(name)-- /script GF_WhisperLogData = {}
	GF_Log:SetMaxLines(100)
	local tempHistoryTable = {}
	for i=1, getn(GF_WhisperLogData[name]) do
		table.insert(tempHistoryTable,1,GF_WhisperLogData[name][i])
		if i == 100 then break end
	end
	for i=1, getn(tempHistoryTable) do
		GF_Log:AddMessage(tempHistoryTable[i], 1, 192/255, 192/255)
	end
end
function GF_WhisperHistoryPriorityListCheckButtonPressed(id,name,priority)
	GF_WhisperLogData[GF_WhisperLogList[id]].priority = priority;
	GF_WhisperHistoryUpdateFrame(name)
end
function GF_ResultItem_Hover_On(frame,id) -- Displays tooltip when hovering over a group in main list.
	frame:SetHeight(32);
	getglobal(frame:GetName().."MoreLabel"):Show();
	getglobal(frame:GetName().."MoreRightLabel"):Show();
	getglobal(frame:GetName().."TextureBlue"):Show();
	getglobal(frame:GetName().."NameLabel"):SetPoint("TOPLEFT", frame:GetName(), "TOPLEFT", 37, 0);
	getglobal(frame:GetName().."MoreLabel"):SetPoint("LEFT", frame:GetName(), "LEFT", 37, -6);
	getglobal(frame:GetName().."TextureSelectedBg"):Show();
	getglobal(frame:GetName().."TextureSelectedIcon"):Show();
end
function GF_ResultItem_Hover_Off(frame) -- Displays tooltip when hovering over a group in main list.
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
			GF_GetWhoClassLevelList(GF_SavedVariables.lfgwhisperclass, GF_GetWhoLevel, true)
		else
			DEFAULT_CHAT_FRAME:AddMessage("GF: "..GF_NO_WHISPER_DUNGEON, 1, 1, 0.5);
		end
	else
		GF_ClassWhoRequest = nil;
		GF_LFGGetWhoButton:SetText(GF_GET_WHO.." - "..GF_ClassWhoMatchingResults);
	end
end
function GF_GetWhoClassLevelList(class,level,excludedungeonspvp)
	local tempClassWhoTable = {}
	for name,entry in pairs(GF_ClassWhoTable) do
		if entry[1] + GF_GetWhoResetTimer < time() then tempClassWhoTable[name] = entry end
	end
	GF_ClassWhoTable = tempClassWhoTable

	GF_ClassWhoRequest = true;
	GF_ClassWhoMatchingResults = 0;
	GF_LFGGetWhoButton:SetText(GF_STOP_WHO);
	GF_GetWhoParams = { class, level, excludedungeonspvp, };
	GF_ClassWhoQueue = {}
	GF_GetClassWhoState = 1;
	GF_CreateGetWhoQueueList(class,level)
end
function GF_CreateGetWhoQueueList(class,level)
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
			if (GF_RealmName == "Nordanaar" or GF_RealmName == "Tel'Abim") and GF_DoesClassMatchRace(class, "High Elf") then
				table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"High Elf\"");
			end
			if GF_DoesClassMatchRace(class, "Dwarf") then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Dwarf\""); end
			if GF_DoesClassMatchRace(class, "Gnome") then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Gnome\""); end
			if GF_DoesClassMatchRace(class, "Night Elf") then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Night Elf\""); end
			if GF_DoesClassMatchRace(class, "Human") then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Human\""); end
		else
			if (GF_RealmName == "Nordanaar" or GF_RealmName == "Tel'Abim") and GF_DoesClassMatchRace(class, "Goblin") then
				table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Goblin\"");
			end
			if GF_DoesClassMatchRace(class, "Tauren") then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Tauren\""); end
			if GF_DoesClassMatchRace(class, "Troll") then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Troll\""); end
			if GF_DoesClassMatchRace(class, "Orc") then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Orc\""); end
			if GF_DoesClassMatchRace(class, "Undead") then table.insert(GF_ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Undead\""); end
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
		if (class == "Druid") and (race == "Night Elf" or race == "Tauren") then return true
		elseif (class == "Hunter") and (race == "Human" or race == "Night Elf" or race == "Dwarf" or race == "Gnome" or race == "Undead" or race == "Orc" or race == "Troll" or race == "Tauren" or race == "High Elf" or race == "Goblin") then return true
		elseif (class == "Mage") and (race == "Human" or race == "Dwarf" or race == "Gnome" or race == "Undead" or race == "Orc" or race == "Troll" or race == "High Elf" or race == "Goblin") then return true
		elseif (class == "Paladin") and (race == "Human" or race == "Dwarf" or race == "High Elf") then return true
		elseif (class == "Priest") and (race == "Human" or race == "Night Elf" or race == "Dwarf" or race == "Undead" or race == "Troll" or race == "High Elf") then return true
		elseif (class == "Rogue") and (race == "Human" or race == "Night Elf" or race == "Dwarf" or race == "Gnome" or race == "Undead" or race == "Orc" or race == "Troll" or race == "High Elf" or race == "Goblin") then return true
		elseif (class == "Shaman") and (race == "Orc" or race == "Troll" or race == "Tauren") then return true
		elseif (class == "Warlock") and (race == "Human" or race == "Gnome" or race == "Undead" or race == "Orc" or race == "Troll" or race == "Goblin") then return true
		elseif (class == "Warrior") and (race == "Human" or race == "Night Elf" or race == "Dwarf" or race == "Gnome" or race == "Undead" or race == "Orc" or race == "Troll" or race == "Tauren" or race == "High Elf" or race == "Goblin") then return true end
	else
		if (class == "Druid") and (race == "Night Elf" or race == "Tauren") then return true
		elseif (class == "Hunter") and (race == "Night Elf" or race == "Dwarf" or race == "Orc" or race == "Troll" or race == "Tauren") then return true
		elseif (class == "Mage") and (race == "Human" or race == "Gnome" or race == "Undead" or race == "Troll") then return true
		elseif (class == "Paladin") and (race == "Human" or race == "Dwarf") then return true
		elseif (class == "Priest") and (race == "Human" or race == "Night Elf" or race == "Dwarf" or race == "Undead" or race == "Troll") then return true
		elseif (class == "Rogue") and (race == "Human" or race == "Night Elf" or race == "Dwarf" or race == "Gnome" or race == "Undead" or race == "Orc" or race == "Troll") then return true
		elseif (class == "Shaman") and (race == "Orc" or race == "Troll" or race == "Tauren") then return true
		elseif (class == "Warlock") and (race == "Human" or race == "Gnome" or race == "Undead" or race == "Orc") then return true
		elseif (class == "Warrior") and (race == "Human" or race == "Night Elf" or race == "Dwarf" or race == "Gnome" or race == "Undead" or race == "Orc" or race == "Troll" or race == "Tauren") then return true end
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
			if GF_ClassWhoTable[k][1] < time()-GF_GetWhoResetTimer then
				if GF_ClassWhoTable[k][2] >= GF_GetWhoLevel-GF_GetWhoLevelRange and GF_ClassWhoTable[k][2] <= GF_GetWhoLevel+GF_GetWhoLevelRange and GF_ClassWhoTable[k][3] == GF_SavedVariables.lfgwhisperclass then
					GF_ClassWhoTable[k][1] = time()
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
function GF_FixLFGStrings()
	local foundLFM;
	local foundDungeonRaid = {}
	local foundRoles = {}
	local foundStartOfText;
	local endOfFilter = 0
	local _,_,maxGroupSize = string.find(GF_SavedVariables.lfgsize, "(%d+)")
	GF_SavedVariables.searchlfgtext = gsub(GF_SavedVariables.searchlfgtext, "LF%d+M", "LFM")

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
		GF_FixLFGStrings()
	end
end
function GF_CheckLootFilter(arg1)
	if not GF_SavedVariables.showloottexts then
		if not GF_PreviousMessage["SYSTEM"] or not (GF_PreviousMessage["SYSTEM"][1] == arg1 and GF_PreviousMessage["SYSTEM"][3] and GF_PreviousMessage["SYSTEM"][2] + .1 > time()) then -- A different message or not blocked
			GF_PreviousMessage["SYSTEM"] = {arg1,time(), nil}
			for i=1, getn(GF_LootFilters) do
				if string.find(arg1, GF_LootFilters[i]) then
					if not (i > 10 and not string.find(arg1, "1eff00")) then -- if both are true it skips... if either are false it goes through... for money, #1 is false > goes through
						return 6;
					end
				end
			end
		else
			return;
		end
	end
end
function GF_CheckErrorFilter(arg1)
	if GF_SavedVariables.errorfilter then 
		if not GF_PreviousMessage["SYSTEM"] or not (GF_PreviousMessage["SYSTEM"][1] == arg1 and GF_PreviousMessage["SYSTEM"][3]) then -- A different message or not blocked
			GF_PreviousMessage["SYSTEM"] = {arg1,0, nil}
			for i=1, getn(GF_ErrorFilters) do
				if string.find(arg1, GF_ErrorFilters[i]) then
					return 10;
				end
			end
		else
			return 6;
		end
	end
end
function GF_CheckForPoliticsAndPreviousBlacklistSpam(arg1,arg2)
	if not GF_PlayersCurrentlyInGroup[arg2] and not GF_FriendsAndGuildies[arg2] then
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
	end
	if event == "CHAT_MSG_SAY" or event == "CHAT_MSG_YELL" then foundInGroup = nil end
	return GF_CheckForSpam(arg1,arg2,foundInGroup) or foundInGroup;
end
function GF_CheckForSpam(arg1,arg2,foundInGroup)
	if not GF_PlayersCurrentlyInGroup[arg2] and not GF_FriendsAndGuildies[arg2] then											-- Block if below level
		if (GF_WhoTable[GF_RealmName][arg2] and tonumber(GF_WhoTable[GF_RealmName][arg2][2]) < GF_SavedVariables.blockmessagebelowlevel) and GF_WhoTable[GF_RealmName][arg2][1] + 21600 > time() then
			return 9;
		end
		if GF_SavedVariables.spamfilter and (not foundInGroup or string.len(arg1) > 50) then									-- Block chat spam
			if GF_IncomingMessagePrune < time() then
				local tempplayermessages = {}
				for name,_ in GF_PlayerMessages do
					if GF_PlayerMessages[name][1] and GF_PlayerMessages[name][1] > time() then
						tempplayermessages[name] = GF_PlayerMessages[name]
					end
				end
				GF_PlayerMessages = tempplayermessages;
				GF_IncomingMessagePrune = time() + 3600; -- 1 hour
			end
			local sniprandom = math.random(4+string.len(arg1)/4)
			if not GF_PlayerMessages[arg2] then
				GF_PlayerMessages[arg2] = { [1] = time(), [2] = string.sub(arg1,sniprandom,math.floor(sniprandom*3) + 8), [3] = string.sub(arg1,sniprandom,math.floor(sniprandom*3) + 12) }
			else
				if string.find(arg1,GF_PlayerMessages[arg2][2],1,true) and string.find(arg1,GF_PlayerMessages[arg2][3],1,true) then -- Found Spammer
					if GF_SavedVariables.autoblacklist and not GF_BlackList[GF_RealmName][arg2] and string.len(arg1) > 120 then
						if GF_WhoTable[GF_RealmName][arg2] and GF_WhoTable[GF_RealmName][arg2][1] + 21600 > time() then
							if tonumber(GF_WhoTable[GF_RealmName][arg2][2]) <= GF_SavedVariables.autoblacklistminlevel then
								table.insert(GF_BlackList[GF_RealmName], 1, { arg2, "("..GF_WhoTable[GF_RealmName][arg2][2]..") "..arg1 })
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
				elseif string.find(arg1,string.sub(arg1,1,20),21, true) then -- Repeating the same message more than once
					return 7
				end
				table.insert(GF_PlayerMessages[arg2],2, string.sub(arg1,math.floor(sniprandom/4),math.floor(sniprandom/4) + 50))
				table.remove(GF_PlayerMessages[arg2],4)
			end
		end
	end
end
function GF_CheckForTradesAndChat(arg1)
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
function GF_FindGroupsAndDisplayCustomChatMessages(event,arg1,arg2,arg9)
	if not arg1 or not arg2 or not arg9 or event == "CHAT_MSG_WHISPER_INFORM" then
		return nil,arg1;
	elseif arg2 == "" then
		if event == "CHAT_MSG_LOOT" or event == "CHAT_MSG_MONEY" or event == "CHAT_MSG_MONEY" or event == "CHAT_MSG_COMBAT_XP_GAIN" or event == "CHAT_MSG_COMBAT_HONOR_GAIN" then
			return GF_CheckLootFilter(arg1), GF_CleanUpMessagesOfBadLinks(arg1);
		elseif event == "CHAT_MSG_SYSTEM" then
			return GF_CheckErrorFilter(arg1), GF_CleanUpMessagesOfBadLinks(arg1);
		end
	elseif arg2 == UnitName("player") then 
		if event == "CHAT_MSG_CHANNEL" and (not GF_PreviousMessage[arg2] or not (GF_PreviousMessage[arg2][1] == arg1 and GF_PreviousMessage[arg2][2] > time())) then
			GF_PreviousMessage[arg2] = {arg1,time() + .1, nil}
			return 12,arg1
		else
			return nil,arg1
		end
	elseif event == "CHAT_MSG_WHISPER" and (not GF_PreviousMessage[arg2] or not (GF_PreviousMessage[arg2][1] == arg1 and GF_PreviousMessage[arg2][2] > time())) then -- INFORM = sent... WHISPER = received
		GF_PreviousMessage[arg2] = {arg1,time() + .1, nil}
		arg1 = GF_CleanUpMessagesOfBadLinks(arg1)
		GF_WhisperReceivedAddToWhisperHistoryList(arg1,arg2,false)
		return nil,arg1;
	elseif not GF_PreviousMessage[arg2] or not (GF_PreviousMessage[arg2][1] == arg1 and GF_PreviousMessage[arg2][2] > time())then
		GF_PreviousMessage[arg2] = {arg1,time() + 60, nil} -- [1]arg1... [2]time of last message... [3]whether to block message
		arg1 = GF_CleanUpMessagesOfBadLinks(arg1)
		return GF_CheckForPoliticsAndPreviousBlacklistSpam(arg1,arg2) or GF_CheckForGroups(arg1,arg2,event) or GF_CheckForTradesAndChat(arg1), arg1;
	else
		return 10, arg1;
	end
end
function GF_CleanUpMessagesOfBadLinks(arg1)
	arg1 = gsub(arg1, "{CLINK:item:(%x+):([%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-:[%d-]-):([^}]-)}", "|c%1|Hitem:%2|h[%3]|h|r") -- Fix broken CLinks
	if not Questie then arg1 = gsub(arg1, "|c%w+|Hquest[0-9a-fA-F:]+|h%[(.-)%]%|h|r", "%1") end -- Fix broken questie links
	return arg1
end
function GF_ShowGroupsOnMinimap(arg1,arg2)
	if GF_MiniMapMessages[1] > time() and GF_MiniMapMessages[2] > time() and GF_MiniMapMessages[3] > time() and GF_MiniMapMessages[4] > time() and GF_MiniMapMessages[5] > time() and GF_MiniMapMessages[6] > time() then
		table.sort(GF_MiniMapMessages)
		GF_MiniMapMessages[1] = 0;
	end
	for i=1, 6 do
		if GF_MiniMapMessages[i] < time() then
			if GF_WhoTable[GF_RealmName][arg2] then 
				getglobal("GF_MinimapMessageFrameA"..i):AddMessage("|cff"..(GF_ClassColors[GF_WhoTable[GF_RealmName][arg2][3]] or "ffffff").."|Hplayer:"..arg2.."|h "..arg2..", "..GF_WhoTable[GF_RealmName][arg2][2].." "..GF_WhoTable[GF_RealmName][arg2][3].."|h|r", 1, 0.8, 0);
			else
				getglobal("GF_MinimapMessageFrameA"..i):AddMessage("|cff".."ffffff".."|Hplayer:"..arg2.."|h "..arg2.."|h|r", 1, 0.8, 0);
			end
			getglobal("GF_MinimapMessageFrameB"..i):AddMessage("|cff".."bbffbb"..arg1.. "|r", 1, 0.8, 0);
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
	entry.time = time()
	entry.lfg = isLFG

	for i = 1, getn(GF_MessageList[GF_RealmName]) do
		if arg2 == GF_MessageList[GF_RealmName][i].op then
			if GF_MessageList[GF_RealmName][i].time + GF_SavedVariables.showgroupsnewonlytime*60 < time() then return 2, entry; end
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
	local instancelevel;
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
		if instancelevel then break end
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
function GF_SearchMessageForTextString(msg,textstring) -- only works with "word" characters
	for w in string.gfind(textstring, "([%w%s]+)/") do
		if string.find(msg, w) then return true end
	end
end
function print(msg)
	DEFAULT_CHAT_FRAME:AddMessage(msg, 1, 1, 0.5);
end