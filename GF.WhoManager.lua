local MaxEntriesPerRealm		= 1000
local GFAWM_WHO_COOL_DOWN_TIME	= 10;
local NextAvailableWhoTime 		= 0;
local ClassWhoQueue 			= {};
local urgentWhoRequest 			= nil;
local urgentWhoSent 			= nil;
local getwhoparams 				= {};
local getclasswhostate 			= 1;

GFAWM = {};
whoQueue = {};

GFAWM.ClassWhoMatchingResults 	= 0;
GFAWM_GETWHO_LEVEL_RANGE 		= 3;
GFAWM_GETWHO_RESET_TIMER		= 900;

GFAWM.onEventVariablesLoaded = function(event)
	GFAWM.preHookSendWho = SendWho;
	SendWho = GFAWM.hookedSendWho;

	GFAWM.preHookFriendsFrame_OnEvent = FriendsFrame_OnEvent;
	FriendsFrame_OnEvent = GFAWM.hookedFriendsFrame_OnEvent;
	
	GFAWM.preHookSetItemRef = SetItemRef;
	SetItemRef = GFAWM.hookedSetItemRef;

	if not GF_WhoTable[GF_RealmName][UnitName("player")] or GF_WhoTable[GF_RealmName][UnitName("player")][1] < time() then -- Prune the wholist
		GFAWM.pruneWhoTable(); GF_WhoTable[GF_RealmName][UnitName("player")] = { time() + 60*60*24*14, UnitLevel("player"), UnitClass("player"), "<>" }; -- 14 days
	end

	if string.sub(GetRealmName(), 1, 9) == "Nordanaar" or string.sub(GetRealmName(), 1, 8) == "Tel'Abim" then GFAWM_WHO_COOL_DOWN_TIME = 30; end
end

GFAWM.onEventWhoListUpdated = function()
	for i=1, GetNumWhoResults() do
		local name, guild, level, race, class, zone = GetWhoInfo(i);
		GF_WhoTable[GF_RealmName][name] = { time(), level, class, guild };
		GF_AddonAllNamesForResponseToLogin[name] = true;
		if GF_ClassWhoRequest and not GF_ClassWhoTable[name] and not GF_PlayersCurrentlyInGroup[name] and class == getwhoparams[1] and level >= getwhoparams[2]-GFAWM_GETWHO_LEVEL_RANGE and level <= getwhoparams[2]+GFAWM_GETWHO_LEVEL_RANGE
		and (not getwhoparams[3] or (getwhoparams[3] and not GFAWM.isClassWhoPlayerInADungeonOrPvP(zone))) then
			GF_ClassWhoTable[name] = { time()-GFAWM_GETWHO_RESET_TIMER, level, class, zone }
			GFAWM.ClassWhoMatchingResults = GFAWM.ClassWhoMatchingResults + 1
		end
	end

	if GF_ClassWhoRequest then
		if not ClassWhoQueue[1] then
			if GetNumWhoResults() >= 49 then
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
	GF_ApplyFiltersToGroupList()
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

GFAWM.onUpdate = function()
	if (urgentWhoRequest or whoQueue[1] or ClassWhoQueue[1]) and NextAvailableWhoTime < time()  then -- (CurTime + WhoTimeOut) must be less(earlier) than CurTime
		if urgentWhoRequest then
			SetWhoToUI(0);
			SendWho("n-"..urgentWhoRequest);
			urgentWhoSent = urgentWhoRequest;
			urgentWhoRequest = nil;
		elseif not FriendsFrame:IsVisible() then
			if GF_ClassWhoRequest then
				if ClassWhoQueue[1] then
					SetWhoToUI(1);
					SendWho(ClassWhoQueue[1]);
					table.remove(ClassWhoQueue, 1);
				else
					GF_ClassWhoRequest = nil
					GF_LFGGetWhoButton:SetText(GF_GET_WHO.." - "..GFAWM.ClassWhoMatchingResults);
				end
			elseif whoQueue[1] then
				if GF_WhoTable[GF_RealmName][whoQueue[1]] and GF_WhoTable[GF_RealmName][whoQueue[1]][1] + 259200 > time() and not GF_AddonNamesToBeSentAsARequest[whoQueue[1]] then -- 3 days
					table.remove(whoQueue, 1);
					return;
				end
				SetWhoToUI(1);
				SendWho("n-"..whoQueue[1]);
				table.remove(whoQueue, 1);
			end
		end
	end
end
GFAWM.setClassWhoSearchNames = function(class, level)
	local minlevel = level-GFAWM_GETWHO_LEVEL_RANGE
	local maxlevel = level+GFAWM_GETWHO_LEVEL_RANGE
	if level > 60 then
		maxlevel = 60
		level = 60
	elseif minlevel < 1 then
		minlevel = 1
	end
	if getclasswhostate == 1 then
		table.insert(ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel);
	elseif getclasswhostate == 2 and (level ~= maxlevel) then
		table.insert(ClassWhoQueue, "c-"..class.." "..minlevel .."-"..level-1);
		table.insert(ClassWhoQueue, "c-"..class.." "..level.."-"..maxlevel);
	elseif getclasswhostate == 3 or (getclasswhostate == 2 and (level == maxlevel)) then
		if UnitFactionGroup("player") == "Alliance" then
			if (string.sub(GetRealmName(), 1, 9) == "Nordanaar" or string.sub(GetRealmName(), 1, 8) == "Tel'Abim") and GFAWM.classMatchesRace(class, "High Elf") then
				table.insert(ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"High Elf\"");
			end
			if GFAWM.classMatchesRace(class, "Dwarf") then table.insert(ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Dwarf\""); end
			if GFAWM.classMatchesRace(class, "Gnome") then table.insert(ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Gnome\""); end
			if GFAWM.classMatchesRace(class, "Night Elf") then table.insert(ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Night Elf\""); end
			if GFAWM.classMatchesRace(class, "Human") then table.insert(ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Human\""); end
		else
			if (string.sub(GetRealmName(), 1, 9) == "Nordanaar" or string.sub(GetRealmName(), 1, 8) == "Tel'Abim") and GFAWM.classMatchesRace(class, "Goblin") then
				table.insert(ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Goblin\"");
			end
			if GFAWM.classMatchesRace(class, "Tauren") then table.insert(ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Tauren\""); end
			if GFAWM.classMatchesRace(class, "Troll") then table.insert(ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Troll\""); end
			if GFAWM.classMatchesRace(class, "Orc") then table.insert(ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Orc\""); end
			if GFAWM.classMatchesRace(class, "Undead") then table.insert(ClassWhoQueue, "c-"..class.." "..minlevel .."-"..maxlevel.." ".."r-\"Undead\""); end
		end
		getclasswhostate = 3
	elseif getclasswhostate == 4 then
		table.insert(ClassWhoQueue, "c-"..class.."\" "..minlevel .."-"..maxlevel.." ".."n-\"a\"");
		table.insert(ClassWhoQueue, "c-"..class.."\" "..minlevel .."-"..maxlevel.." ".."n-\"e\"");
		table.insert(ClassWhoQueue, "c-"..class.."\" "..minlevel .."-"..maxlevel.." ".."n-\"i\"");
		table.insert(ClassWhoQueue, "c-"..class.."\" "..minlevel .."-"..maxlevel.." ".."n-\"o\"");
		table.insert(ClassWhoQueue, "c-"..class.."\" "..minlevel .."-"..maxlevel.." ".."n-\"u\"");
	else
		GF_ClassWhoRequest = nil
		GF_LFGGetWhoButton:SetText(GF_GET_WHO.." - "..GFAWM.ClassWhoMatchingResults);
	end
end

GFAWM.classMatchesRace = function(class, race)
	if string.sub(GetRealmName(), 1, 9) == "Nordanaar" or string.sub(GetRealmName(), 1, 8) == "Tel'Abim" then
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

GFAWM.isClassWhoPlayerInADungeonOrPvP = function(zone)
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

GFAWM.addNameToWhoQueue = function(name,addToTopOfList)
	if GFAWM.getPositionInQueue(name, whoQueue) == 0 then
		if addToTopOfList then
			table.insert(whoQueue, 1, name);
		else
			table.insert(whoQueue, name);
		end
		GF_RequestTimer = NextAvailableWhoTime - time()
		return true
	end
	return false
end

GFAWM.toOldFormat = function(name)
	local data = GF_WhoTable[GF_RealmName][name];
	if data then
		data[4] = string.gsub(data[4],"[<>]", "")
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
	NextAvailableWhoTime = time() + GFAWM_WHO_COOL_DOWN_TIME;
	GFAWM.preHookSendWho(unpack(arg));
end

GFAWM.hookedFriendsFrame_OnEvent = function(event) 
	local tempwhodata = {}
	for i=1, GetNumWhoResults() do
		local name,guild,level,_,class = GetWhoInfo(i);
		GF_WhoTable[GF_RealmName][name] = { time(), level, class, guild };
		tempwhodata[name] = true;
	end
	if tempwhodata[urgentWhoSent] or WhoFrame:IsVisible() or (event and event ~= "WHO_LIST_UPDATE") then
		if tempwhodata[urgentWhoSent] and urgentWhoSent then urgentWhoSent = nil; end
		GFAWM.preHookFriendsFrame_OnEvent(event);
	end
end

GFAWM.hookedSetItemRef = function(...)
	local link = arg[1];
	if strsub(link, 1, 6) == "player" then
		local name = strsub(link, 8);
		if name and strlen(name) > 0 and IsShiftKeyDown() and not ChatFrameEditBox:IsVisible() then
			urgentWhoRequest = name;
			return;
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
	for realmname,_ in GF_WhoTable do
		for i=1, getn(GF_MessageList[realmname]) do
			if GF_MessageList[realmname][i].who then
				tempwhotable[GF_MessageList[realmname][i].op] = { GF_MessageList[realmname][i].who.recordedTime,GF_MessageList[realmname][i].who.level,GF_MessageList[realmname][i].who.class,GF_MessageList[realmname][i].who.guild };
			end
		end
		
		local length = 0;
		for name, whoData in GF_WhoTable[realmname] do
			if whoData[1] + 604800 > time() then -- 60*60*24*7 = 7 days
				tempwhotable[name] = whoData
			end
			length = length + 1;
			if length == MaxEntriesPerRealm then break end
		end
		if length == MaxEntriesPerRealm then
			GF_WhoTable[realmname] = tempwhotable;
		end
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

