local MaxEntriesPerRealm = 1000
local GFAWM_WHO_COOL_DOWN_TIME = 6;
local NextAvailableWhoTime = 0;
local whoQueue = {};
local ClassWhoQueue = {};
local urgentWhoRequest = nil;
local urgentWhoSent = nil;
local getwhoparams = {};
local getclasswhostate = 1;

GFAWM = {};
GF_WhoTable = {}
GF_ClassWhoTable = {}
GF_ClassWhoRequest = nil;
GFAWM.ClassWhoMatchingResults = 0;
GFAWM_GETWHO_LEVEL_RANGE 		= 3;
GFAWM_GETWHO_RESET_TIMER		= 900;

GFAWM.onEventVariablesLoaded = function(event)
	GFAWM.preHookSendWho = SendWho;
	SendWho = GFAWM.hookedSendWho;

	GFAWM.preHookFriendsFrame_OnEvent = FriendsFrame_OnEvent;
	FriendsFrame_OnEvent = GFAWM.hookedFriendsFrame_OnEvent;
	
	GFAWM.preHookSetItemRef = SetItemRef;
	SetItemRef = GFAWM.hookedSetItemRef;
	
	if not GF_WhoTable[UnitName("player")] or GF_WhoTable[UnitName("player")][1] < GetTime() then GFAWM.pruneWhoTable(); GF_WhoTable[UnitName("player")] = { time() + 60*60*24*14, UnitLevel("player"), UnitClass("player"), "<>" }; end
end

GFAWM.onEventWhoListUpdated = function()
	for i=1, GetNumWhoResults() do
		local name, guild, level, race, class, zone = GetWhoInfo(i);
		GF_WhoTable[name] = { time(), level, class, guild };
		if GF_ClassWhoRequest and not GF_ClassWhoTable[name] and not GF_PlayersCurrentlyInGroup[name] and class == getwhoparams[1] and level >= getwhoparams[2]-GFAWM_GETWHO_LEVEL_RANGE and level <= getwhoparams[2]+GFAWM_GETWHO_LEVEL_RANGE and (not getwhoparams[3] or (getwhoparams[3] and not GFAWM.isClassWhoInGroup(zone))) then
			GF_ClassWhoTable[name] = { time()-GFAWM_GETWHO_RESET_TIMER, level, class, zone }
			GFAWM.ClassWhoMatchingResults = GFAWM.ClassWhoMatchingResults + 1
		end
	end

	if GF_ClassWhoRequest then
		if not ClassWhoQueue[1] then
			if GetNumWhoResults() == 49 then
				getclasswhostate = getclasswhostate + 1
				GF_LFGGetWhoButton:SetText(GF_STOP_WHO.." - "..GFAWM.ClassWhoMatchingResults);
				GFAWM.setClassWhoSearchNames(getwhoparams[1], getwhoparams[2])
			else
				GF_ClassWhoRequest = nil
				GF_LFGGetWhoButton:SetText(GF_GET_WHO.." - "..GFAWM.ClassWhoMatchingResults);
			end
		else
			GF_LFGGetWhoButton:SetText(GF_STOP_WHO.." - "..GFAWM.ClassWhoMatchingResults);
		end
	end
	SetWhoToUI(0);
end

GFAWM.getClassWholist = function(class, level, excludedungeonspvp)
	local tempClassWhoTable = {}
	for name,entry in pairs(GF_ClassWhoTable) do
		if entry[1] > time()-GFAWM_GETWHO_RESET_TIMER then tempClassWhoTable[name] = entry end
	end
	GF_ClassWhoTable = tempClassWhoTable

	GF_ClassWhoRequest = true;
	GFAWM.ClassWhoMatchingResults = 0;
	GF_LFGGetWhoButton:SetText(GF_STOP_WHO);
	getwhoparams = { class, level, excludedungeonspvp, };
	ClassWhoQueue = {}
	getclasswhostate = 1;
	GFAWM.setClassWhoSearchNames(class, level)
end

GFAWM.onUpdate = function() -- it is skipping the first every time
	if NextAvailableWhoTime < GetTime()  then
		NextAvailableWhoTime = GetTime() + GFAWM_WHO_COOL_DOWN_TIME;
		if urgentWhoRequest then
			SetWhoToUI(0);
			SendWho("n-"..urgentWhoRequest);
			urgentWhoSent = urgentWhoRequest;
			urgentWhoRequest = nil;
		elseif GF_ClassWhoRequest and ClassWhoQueue[1] and not WhoFrame:IsVisible() then
			SetWhoToUI(1);
			SendWho(ClassWhoQueue[1]);
			table.remove(ClassWhoQueue, 1);
		elseif whoQueue[1] and not WhoFrame:IsVisible() then
			if GF_WhoTable[whoQueue[1]] and GF_WhoTable[whoQueue[1]][1] + 259200 > time() then
				table.remove(whoQueue, 1);
				return;
			end
			SetWhoToUI(1);
			SendWho("n-"..whoQueue[1]);
			table.remove(whoQueue, 1);
		end
	end
end
GFAWM.setClassWhoSearchNames = function(class, level)
	local minlevel = level-GFAWM_GETWHO_LEVEL_RANGE
	local maxlevel = level+GFAWM_GETWHO_LEVEL_RANGE
	if minlevel < 1 then minlevel = 1 end
	if level > 60 then level = 60 end
	if maxlevel > 60 then maxlevel = 60 end
	if getclasswhostate == 1 then
		table.insert(ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel);
	elseif getclasswhostate == 2 then
		table.insert(ClassWhoQueue, "c-"..class.." "..minlevel .."-"..level-1);
		table.insert(ClassWhoQueue, "c-"..class.." "..level.."-"..maxlevel);
	elseif getclasswhostate == 3 then
		if UnitFactionGroup("player") == "Alliance" then
			table.insert(ClassWhoQueue, "c-"..class.." ".."r-Dwarf".." "..minlevel .."-"..maxlevel);
			table.insert(ClassWhoQueue, "c-"..class.." ".."r-\"Night Elf\"".." "..minlevel .."-"..maxlevel);
			table.insert(ClassWhoQueue, "c-"..class.." ".."r-Gnome".." "..minlevel .."-"..maxlevel);
			table.insert(ClassWhoQueue, "c-"..class.." ".."r-Human".." "..minlevel .."-"..maxlevel);
		else
			table.insert(ClassWhoQueue, "c-"..class.." ".."r-Tauren".." "..minlevel .."-"..maxlevel);
			table.insert(ClassWhoQueue, "c-"..class.." ".."r-Troll".." "..minlevel .."-"..maxlevel);
			table.insert(ClassWhoQueue, "c-"..class.." ".."r-Orc".." "..minlevel .."-"..maxlevel);
			table.insert(ClassWhoQueue, "c-"..class.." ".."r-Undead".." "..minlevel .."-"..maxlevel);
		end
	elseif getclasswhostate == 4 then
		table.insert(ClassWhoQueue, "c-"..class.." ".."n-a".." "..minlevel .."-"..maxlevel);
		table.insert(ClassWhoQueue, "c-"..class.." ".."n-e".." "..minlevel .."-"..maxlevel);
		table.insert(ClassWhoQueue, "c-"..class.." ".."n-i".." "..minlevel .."-"..maxlevel);
		table.insert(ClassWhoQueue, "c-"..class.." ".."n-o".." "..minlevel .."-"..maxlevel);
		table.insert(ClassWhoQueue, "c-"..class.." ".."n-u".." "..minlevel .."-"..maxlevel);
	else
		GF_ClassWhoRequest = nil
		GF_LFGGetWhoButton:SetText(GF_GET_WHO.." - "..GFAWM.ClassWhoMatchingResults);
	end
end

GFAWM.isClassWhoInGroup = function(zone)
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

GFAWM.getPositionInQueue = function(name, tbl)
	tbl = tbl or whoQueue;
	for key, data in tbl do
		if data == name then
			return key;
		end
	end
	return 0;
end

GFAWM.addNameToWhoQueue = function(name)
	if GFAWM.getPositionInQueue(name, whoQueue) == 0 then
		table.insert(whoQueue, name);
	end
end

GFAWM.toOldFormat = function(name)
	local data = GF_WhoTable[name];
	if data then
		return {
			recordedTime = data[1];
			level = data[2];
			class = data[3];
			guild = "<"..(data[4] or "")..">";
		};
	else
		return nil;
	end
end

GFAWM.hookedSendWho = function(...) 
	NextAvailableWhoTime = GetTime() + GFAWM_WHO_COOL_DOWN_TIME;
	GFAWM.preHookSendWho(unpack(arg));
end

GFAWM.hookedFriendsFrame_OnEvent = function(event) 
	local tempwhodata = {}
	for i=1, GetNumWhoResults() do
		local name,guild,level,_,class = GetWhoInfo(i);
		GF_WhoTable[name] = { time(), level, class, guild };
		tempwhodata[name] = true;
	end
	if tempwhodata[urgentWhoSent] or FriendsFrame:IsVisible() or (event and event ~= "WHO_LIST_UPDATE") then
		if urgentWhoSent then urgentWhoSent = nil; end
		GFAWM.preHookFriendsFrame_OnEvent(event);
	end
end

GFAWM.hookedSetItemRef = function(...)
	local link = arg[1];
	if strsub(link, 1, 6) == "player" then
		local name = strsub(link, 8);
		if name and strlen(name) > 0 then
			if IsShiftKeyDown() then
				if ChatFrameEditBox:IsVisible() then
					--ChatFrameEditBox:Insert("|cffffffff|Hplayer:"..name.."|h["..name.."]|h|r")
					ChatFrameEditBox:Insert(name)
					return
				else
					urgentWhoRequest = name;
					return;
				end
			end
		end
	end
	GFAWM.preHookSetItemRef(unpack(arg));
end
	
GFAWM.println = function(str, fn, dbg)
	fn = fn or GF_Util.chatPrintln;
	if not dbg or dbg == 1 then
		fn("WM: "..str);
	end
end

GFAWM.pruneWhoTable = function()
	local tempwhotable = {}
	for i=1, getn(GF_MessageList) do
		if GF_MessageList[i].op and GF_WhoTable[GF_MessageList[i].op] then
			tempwhotable[GF_MessageList[i].op] = { time(),GF_MessageList[i].who.level,GF_MessageList[i].who.class,GF_MessageList[i].who.guild };
		end
	end
	
	local length = 0;
	for name, whoData in GF_WhoTable do
		if whoData[1] + 60*60*24*7 > time() then
			tempwhotable[name] = { time(),whoData[2],whoData[3],whoData[4] };
		end
		length = length + 1;
	end
	if length > MaxEntriesPerRealm then
		GF_WhoTable = {}
		GF_WhoTable = tempwhotable;
	end

	tempwhotable = {}
	for name, whoData in GF_ClassWhoTable do
		if whoData[1] + 60*60 > time() then
			tempwhotable[name] = { time()-GFAWM_GETWHO_RESET_TIMER,whoData[2],whoData[3],whoData[4] };
		end
	end
	GF_ClassWhoTable = {}
	GF_ClassWhoTable = tempwhotable;
end

