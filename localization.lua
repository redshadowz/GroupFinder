GF_CHANNEL_NAME			= "World";

-- Class List
GF_PRIEST				= "Priest";
GF_MAGE		    		= "Mage";
GF_WARLOCK	       		= "Warlock";
GF_DRUID				= "Druid";
GF_HUNTER				= "Hunter";
GF_ROGUE				= "Rogue";
GF_WARRIOR	       		= "Warrior";
GF_PALADIN	       		= "Paladin";
GF_SHAMAN				= "Shaman";

GF_HUMAN				= "Human";
GF_NIGHT_ELF			= "Night Elf";
GF_DWARF				= "Dwarf";
GF_GNOME				= "Gnome";
GF_ORC					= "Orc";
GF_UNDEAD				= "Undead";
GF_TROLL				= "Troll";
GF_TAUREN				= "Tauren";

GF_5_MAN				= "5-man";
GF_10_MAN				= "10-man";
GF_15_MAN				= "15-man";
GF_20_MAN				= "20-man";
GF_25_MAN				= "25-man";
GF_40_MAN				= "40-man";

-- Binding Names
BINDING_HEADER_GF_MAIN_HEADER	= "Group Finder"; -- Main window title
BINDING_NAME_GF_SHOW_FRAME		= "Toggle Main Window"; -- Bindings Name
BINDING_NAME_GF_SHOW_LOG		= "Toggle Log Window";
BINDING_NAME_GF_SHOW_GROUP		= "Toggle Group Window";

-- Main window common buttons and texts
GF_MAIN_HEADER	 		= "Group Finder"; -- Main window title
GF_FIND_PLAYERS_AND_GROUPS	= "Find players and groups"; -- Label for Groupfinder tab
GF_MORE_FEATURES		= "More"; -- Label for "More" frame(Settings/Log/Blacklist)
GF_SHOW_GROUPS_IN		= "Show groups in"
GF_WORLD_SEND_TEXT		= "Below is the message that gets announced to the World Channel"
GF_CHAT					= "Chat"
GF_MINIMAP				= "Minimap"
GF_NEW_ONLY				= "New only"
GF_SHOW_CHAT			= "Show Chat"
GF_SHOW_TRADES			= "Show Trades"
GF_SHOW_LOOT			= "Show Loots"
GF_SHOW_POLITICS		= "Show politics"
GF_PLAY_SOUND			= "Play sound"; -- Label for GF_PlaySoundOnResultsCheckButton
GF_CHAT_ON				= "Chat on"
GF_CHAT_OFF				= "Chat off"
GF_CHAT_GROUP_ON		= "Groups in chat, on"
GF_CHAT_GROUP_OFF		= "Groups in chat, off"

GF_LOG_GROUP			= "Group"
GF_LOG_FILTERED			= "Filtered"
GF_LOG_CHAT				= "Chat"
GF_LOG_TRADES			= "Trades"
GF_LOG_POLITICS			= "Politics"
GF_LOG_LOOT				= "Loot"
GF_LOG_SPAM				= "Spam"
GF_LOG_BLACKLIST		= "Blacklist"
GF_LOG_BELOWLEVEL		= "Level"
GF_LOG_SHOWLOG			= "Show Log"
GF_LOG_GUILDWHISPERS	= "Guild+Whisper"

-- Search related buttons and texts
GF_KEYWORDS_DROPDOWN_DESCR= "Keywords:"; -- Label to the left of the GF_GroupsFrameDescriptionEditBox on group frame
GF_AUTO_FILTER			= "Auto Filter";
GF_SHOW_DUNGEONS		= "Show Dungeons";
GF_SHOW_RAIDS			= "Show Raids";
GF_SHOW_QUESTS			= "Show Quests";
GF_SHOW_OTHER			= "Show Other";
GF_SHOW_LFM				= "Show LFM";
GF_SHOW_LFG				= "Show LFG";
GF_CLEAR				= "Clear"
GF_FOUND 				= "Found: "; -- Shows number of groups on list
GF_PAGE 				= "PAGE"; -- Label for pages of groups.

-- Settings tab buttons and texts
GF_LOG					= "   Log   "; -- Label for Log tab
GF_SETTINGS				= "Settings"; -- Label for Settings tab
GF_BLACK_LIST			= "Blacklist"; -- Label for Blacklist tab
GF_MINIMAP_SETTINGS		= "Minimap settings"; -- Label for minimap section of Settings tab
GF_CHAT_SETTINGS		= "Chat settings"; -- Label for minimap section of Settings tab
GF_DISPLAY_SETTINGS		= "Display settings"; -- Label for filter section of Settings tab
GF_OTHER_SETTINGS		= "Other settings"; -- Label for minimap section of Settings tab
GF_ICON					= "Minimap icon"; -- Label for Minimap adjust icon adjust/radius
GF_MINIMAP_GROUP_TEXT	= "Minimap group text"; -- Label for Minimap adjust icon text adjust/radius
GF_MINIMAP_TEXT			= "Minimap text"; -- Label for Minimap adjust icon text adjust/radius
GF_ADJUST_ANGLE			= "Adjust angle"; -- Label for Minimap adjust icon adjust/radius
GF_ADJUST_RADIUS		= "Adjust radius"; -- Label for Minimap adjust icon text adjust/radius
GF_ADJUST_TRANSPARENCY	= "Adjust window transparency"; -- Label for adjust transparency on Settings tab

GF_ADJUST_FILTER_LEVEL	= "Group Filtering"; -- Label for Filter slider on Settings tab
GF_FilterLevelNotes = {};
GF_FilterLevelNotes[1] = "Requires one trigger";
GF_FilterLevelNotes[2] = "Requires two triggers";
GF_FilterLevelNotes[3] = "Requires three triggers";

GF_USE_WHO_ON_GROUPS		= "Auto /Who"
GF_JOIN_WORLD				= "Join World channel"
GF_SHOW_ORIGINAL_CHAT		= "Show Unformatted Chat"
GF_ERROR_FILTER				= "Enable Error Filtering"
GF_SPAM_FILTER				= "Enable Spam Filtering"
GF_AUTO_BLACKLIST			= "Enable Auto Blacklist"
GF_GUILD_MESSAGES_ARE_SPAM	= "Guild recruitment is spam"
GF_SPAM_FILTER_TIMER		= "Spam flag clear time"
GF_BLACKLIST_MINLEVEL		= "Auto Blacklist maximum level"
GF_BLOCK_BELOW_LEVEL		= "Block messages below level"
GF_GROUP_LIST_DURATION		= "Group display time"
GF_AUTO_FILTER_LEVEL		= "Auto Filter level range"
GF_NEW_GROUP_TIMEOUT		= "Flagged as new listing"

-- LFG related buttons and texts
GF_AUTO						= "Auto"
GF_LFM_LFG					= "LFM/LFG"
GF_DUNGEON					= "Dungeon"
GF_RAID						= "Raid"
GF_ROLE						= "Role"
GF_TANK						= "Tank"
GF_HEALER					= "Healer"
GF_DPS						= "DPS"
GF_MELEE					= "Melee"
GF_RANGE					= "Range"
GF_CASTER					= "Caster"
GF_EVERYTHING				= "Everything"
GF_WHO						= "Who"
GF_GET_WHO					= "Get Who"
GF_STOP_WHO					= "Stop Who"
GF_INVITE					= "Invite"
GF_REQUEST					= "Request"
GF_RESET					= "Reset"
GF_INVITE_PLEASE			= "Invite Please"
GF_INVITING_FOR				= "Inviting you for: "

GF_NO_WHISPER_DUNGEON		= "There are no dungeons in the input boxes. I need a dungeon name to know what levels to look for."
GF_NO_WHISPER_TEXT			= "No valid text to send."
GF_NO_PLAYERS_TO_WHISPER	= "No players in whisper queue"
GF_WHISPER_FORMAT			= "Error: Wrong whisper format."

-- Other buttons related to blacklist, log, etc
GF_OK						= "Ok"; -- Popup Dialog Button
GF_CANCEL 					= "Cancel"; -- Popup Dialog Button
GF_ENTER_PLAYER_NAME		= "Enter the name of the player to be blacklisted:"; -- Label for blacklist add player popup
GF_ADD_PLAYER				= "Add player"; -- Blacklist add player button Label
GF_INVALID_PLAYER_NAME		= " is an invalid player name."; -- Blacklist tried to add invalid player name
GF_EDIT_PLAYER				= "Edit player information"; -- Blacklist Edit button Label
GF_NAME						= "Name"; -- Name Label for blacklist list
GF_DELETE					= "Delete"; -- Blacklist delete button Label
GF_SAVE						= "Save"; -- Blacklist save button Label
GF_PLAYER_NOTE				= "Note"; -- Note Label for blacklist list
GF_DEFAULT_PLAYER_NOTE		= "New player added. Click here to edit this note." -- Default Blacklist note
GF_LOG_AND_MONITOR			= "Log Entries"; -- Label at top of Log frame

GF_LOG_ME					= "[M] "; -- Text added to Log tab when a message is blocked
GF_BLOCKED_GROUPS			= "[G] "; -- Text added to Log tab when a message is blocked
GF_BLOCKED_NEW				= "[N] "; -- Text added to Log tab when a message is blocked
GF_BLOCKED_CHAT				= "[C] "; -- Text added to Log tab when a message is blocked
GF_BLOCKED_TRADES			= "[T] "; -- Text added to Log tab when a message is blocked
GF_BLOCKED_POLITICS			= "[P] "; -- Text added to Log tab when a message is blocked
GF_LOOT_MESSAGE				= "[L] "; -- Text added to Log tab when a message is blocked
GF_BLOCKED_SPAM				= "[S] "; -- Text added to Log tab when a message is blocked
GF_BLOCKED_BELOWLEVEL		= "[V] "; -- Text added to Log tab when a message is blocked
GF_BLOCKED_FILTER			= "[F] "; -- Text added to Log tab when a message is blocked
GF_BLACKLIST_MESSAGE		= "[B] "; -- Text added to Log tab when a message is blocked
GF_BLACKLIST_ADDED			= "Blacklist added for "; -- Text added to Log tab when a message is blocked

-- Announce related buttons
GF_ANNOUNCE_LFG_BTN			= "Announce Group"; -- Label for the group finder announce when turned off
GF_AUTO_ANNOUNCE_TURNED_ON	= "Auto announce ON."; -- Internal text when I click the announce button to start announcing.
GF_AUTO_ANNOUNCE_TURNED_OFF= "Auto announce OFF"; -- Internal text when I click the announce button to stop announcing
GF_NOTHING_TO_ANNOUNCE		= "Nothing to announce: Setting auto announce to OFF"; -- If GF_LFGDescriptionEditBox is then can't start announce
GF_NOTHING_TO_ANNOUNCE2		= "Nothing to announce"; -- If GF_LFGDescriptionEditBox is then can't start announce
GF_SENT 					= "Sent: "
GF_ANNOUNCED_LFG_EXT		= "Announced LFG message to LookingForGroup channel"; -- Minimap text when your group is announced.
GF_AFK_ANNOUNCE_OFF			= "You are AFK: Setting auto announce to OFF"; -- Text when announce is on and you are AFK.
GF_JOINED_GROUP_ANNOUNCE_OFF= "You have joined a group or are no longer leader. LFG Auto announce OFF"; -- Text when announce is on and you join someone else's group
GF_NO_MORE_PLAYERS_NEEDED	= "No more players needed."; -- "Your group is full. LFG Auto announce OFF"

-- Common text
GF_SECONDS					= " seconds"
GF_MIN						= " min"
GF_MINUTE					= " minute"
GF_MINUTES					= " minutes"
GF_NOW_AFK					= "You are now AFK"; -- The text the client receives when it goes afk(used to turn off announce).
GF_TIME_AGO					= " ago"; -- Label for righttext on group list, showing how many minutes ago group was found
GF_TIME_JUST_NOW			= "Just now"; -- Text for righttext on group list, "Found ## minutes ago"

-- Things currently unused
GF_CONVERTING_TO_PARTY		= "Converting group..."; -- Internal message when you hit convert to party button
GF_CANNOT_CONVERT_TO_PARTY	= "Cannot convert to party unless raid has 5 members or less"; -- Internal message if you fail to convert to party
GF_CONVERT_TO_PARTY			= "Convert to party";

GF_GenTooltips = {

GF_MinimapIcon = { 
	tooltip1 		= "Group Finder", 
	tooltip2 		= "Left-Click to open. Shift-click to toggle \"Show Chat\". Right-click to toggle \" Show groups in Chat\". Shift-Right Click \"Reduces the width of this frame and hides all buttons\".", 
	anchor			= "TOPRIGHT",
	relativePoint	= "TOPLEFT" },
GF_GroupsInChatCheckButton = { 
	tooltip1 		= "Show groups in chat", 
	tooltip2 		= "When checked, groups that meet your criteria will be displayed in chat.",  },
GF_GroupsInMinimapCheckButton = { 
	tooltip1 		= "Show groups on the minimap", 
	tooltip2 		= "When checked, new groups that meet your criteria will be displayed next to the minimap.",  },
GF_GroupsNewOnlyCheckButton = { 
	tooltip1 		= "Show only new groups", 
	tooltip2 		= "When checked, only groups flagged as 'NEW' will be displayed in chat and on the minimap.",  },
GF_ShowChatCheckButton = { 
	tooltip1 		= "Show non-group chat",
	tooltip2 		= "When checked, non-group and non-trade chat will be displayed as normal in channels. Otherwise it will be hidden.",  },
GF_ShowTradesCheckButton = {
	tooltip1 		= "Show trade chat",
	tooltip2 		= "When checked, WTS/WTB/LFW-type messages will be shown. Otherwise they will be hidden.",  },
GF_ShowLootCheckButton = {
	tooltip1 		= "Show loot messages",
	tooltip2 		= "When checked, item rolls, looting of money and grey items, selecting greed/need for uncommon items, and experience/honor/reputation gains will be shown. Otherwise they will be hidden.",  },
GF_AutoFilterCheckButton = {
	tooltip1 		= "Auto-Filter", 
	tooltip2 		= "When checked, only groups near your level will be shown." },
GF_GroupsFrameShowDungeonCheckButton = { 
	tooltip1 		= "Show dungeon groups", 
	tooltip2 		= "When checked, results will include dungeon groups." },
GF_GroupsFrameShowRaidCheckButton = { 
	tooltip1 		= "Show raid groups", 
	tooltip2 		= "When checked, results will include raid groups." },
GF_GroupsFrameShowQuestCheckButton = { 
	tooltip1 		= "Show raid groups", 
	tooltip2 		= "When checked, results will include quest groups." },
GF_GroupsFrameShowOtherCheckButton = { 
	tooltip1 		= "Show other groups", 
	tooltip2 		= "When checked, results will include groups other than dungeons/raids/quests." },
GF_GroupsFrameShowLFMCheckButton = { 
	tooltip1 		= "Show groups looking for more", 
	tooltip2 		= "When checked, results will include any group that isn't flagged with LFG" },
GF_GroupsFrameShowLFGCheckButton = {
	tooltip1 		= "Show players looking for group", 
	tooltip2 		= "When checked, results will include all groups flagged with LFG" },
GF_GroupsFrameDescriptionEditBox = { 
	tooltip1 		= "Search descriptions", 
	tooltip2 		= "Only groups with matches will be included in the results. Use '/' operator for multiple searches(e.g. dm/ubrs/scholo/etc)" },
GF_LFGWhoWhisperEditBox = { 
	tooltip1 		= "Whisper Message", 
	tooltip2 		= "Use the 'Get Who' button to make a list of players matching the class and level range of the dungeon selected. Press the 'Invite' button to send this text(if blank it will send the World Channel message instead). Will not message the same person more than once every 15 minutes." },
GF_GroupAutoCheckButton = { 
	tooltip1 		= "Auto-adjust LFM", 
	tooltip2 		= "Adjusts your 'LFM' or 'LFxM' messages by the number of people in the group relative to the selected group size." },
GF_LFGGetWhoButton = { 
	tooltip1 		= "Gets a who list",
	tooltip2 		= "Looks for players of the class selected and within the level range of the dungeon selected.",  },
GF_LFGWhisperButton = { 
	tooltip1 		= "Send an invite whisper", 
	tooltip2 		= "Whispers one player per click from the list made by the 'Get Who' button. Whispers the text below. If blank it will send the World Channel message instead.",  },
GF_AnnounceToLFGButton = {
	tooltip1 		= "Announce",
	tooltip2 		= "Announces your group to the world channel automatically. Stops announcing if you go afk or if your group is full or if you lose party leader(doesn't require party leader)." },

GF_FrameJoinWorldCheckButton = {
	tooltip1 		= "Join World",
	tooltip2 		= "When checked, you will join the World Channel automatically." },
GF_PlaySoundOnResultsCheckButton = {
	tooltip1 		= "Play Sound on groups",
	tooltip2 		= "When checked, an alert sound will be made when a group is found that matches your filters." },
GF_FrameErrorFilterCheckButton = {
	tooltip1 		= "Filter Quest/Invite Errors",
	tooltip2 		= "When checked, error messages from group invites and from sharing quests will be hidden." },
GF_FrameUseWhoOnGroupsCheckButton = {
	tooltip1 		= "Use who on groups",
	tooltip2 		= "When checked, will use /who automatically to find class/level/guild information." },
GF_FrameShowOriginalChatCheckButton = {
	tooltip1 		= "Show Original Chat",
	tooltip2 		= "When checked, chat messages will be shown in their original format instead of with class colors/levels. In addition, \"/auto Who\" will no longer search names from chat(search groups only)." },
GF_FrameSpamFilterCheckButton = {
	tooltip1 		= "Spam Filter",
	tooltip2 		= "When checked, if the same message is repeated more than once within the 'spam flag clear time', non-group messages from that player will be blocked(except friends/guildies/party members)." },
GF_FrameAutoBlacklistCheckButton = {
	tooltip1 		= "Blacklist Filter",
	tooltip2 		= "When checked, players who repeat the same message repeatedly(more than 120 characters) and who are below the 'auto blacklist maximum level' will be permanently added to the blacklist." },
GF_FrameShowPoliticsCheckButton = {
	tooltip1 		= "Show Politics",
	tooltip2 		= "When checked, messages that include words of a political or derogatory nature will be shown. Otherwise they will be hidden." },

GF_LogShowGroups = {
	tooltip1 		= "Show Groups",
	tooltip2 		= "Logs will include [G] Groups and [N] New Groups." },
GF_LogShowFiltered = {
	tooltip1 		= "Show Filtered",
	tooltip2 		= "Logs will include [F] Chat Messages." },
GF_LogShowChat = {
	tooltip1 		= "Show Chat",
	tooltip2 		= "Logs will include [C] Chat Messages." },
GF_LogShowTrades = {
	tooltip1 		= "Show Trades",
	tooltip2 		= "Logs will include [T] Trades Messages." },
GF_LogShowPolitics = {
	tooltip1 		= "Show Politics",
	tooltip2 		= "Logs will include [P] Political Messages." },
GF_LogShowLoot = {
	tooltip1 		= "Show Loot",
	tooltip2 		= "Logs will include [L] Filtered Loot Messages." },
GF_LogShowSpam = {
	tooltip1 		= "Show Spam",
	tooltip2 		= "Logs will include [S] Spam Messages." },
GF_LogShowBlacklist = {
	tooltip1 		= "Show Blacklist",
	tooltip2 		= "Logs will include [B] Blacklisted Messages." },
GF_LogShowBelowLevel = {
	tooltip1 		= "Show Below Level",
	tooltip2 		= "Logs will include [V] Messages from players below your threshold." },

GF_LogShowEditBox = {
	tooltip1 		= "Toggle a Chat Input Box",
	tooltip2 		= "Toggles an Input Box that sends messages to the World Channel. Can also whisper with /w 'name' like normal." },
GF_LogHideMainFrame = {
	tooltip1 		= "Toggles hiding Main Window",
	tooltip2 		= "Hides the main window, most buttons, and makes this frame click-through." },
GF_LogHideMainFrameHeight = {
	tooltip1 		= "Toggles entry display height",
	tooltip2 		= "Reduces the height of the group list and log." },
GF_LogShowWhisperHistory = {
	tooltip1 		= "Toggles the Guild/Whisper History Window",
	tooltip2 		= "This shows a list of recent whisper and guild activity." },
GF_FrameTreatGuildMessagesAsSpamCheckButton = {
	tooltip1 		= "Guild messages as Spam",
	tooltip2 		= "Guild recruitment messages will be treated as spam." },
};

GF_LFG_SPECS = {
	["Druid"] = 	{ "Balance", "Feral", "Resto", },
	["Hunter"] = 	{ "BM", "Marks", "Survival", },
	["Mage"] = 		{ "Arcane", "Fire", "Frost", },
	["Paladin"] = 	{ "Holy", "Prot", "Ret", },
	["Priest"] = 	{ "Disc", "Holy", "Shadow", },
	["Rogue"] = 	{ "Assassin", "Combat", "Sub", },
	["Shaman"] = 	{ "Ele", "Enh", "Resto", },
	["Warlock"] = 	{ "Affliction", "Demonology", "Destruction", },
	["Warrior"] = 	{ "Arms", "Fury", "Prot", },
}
GF_ONE_WORD_CLASSES = {
["druid"] = true,["drood"] = true,["driud"] = true,["hunter"] = true,["hutner"] = true,["mage"] = true,["pally"] = true,["paly"] = true,["pallie"] = true,["healadin"] = true,["priest"] = true,["preist"] = true,["rogue"] = true,["rouge"] = true,
["shaman"] = true,["shammy"] = true,["lock"] = true,["warlock"] = true,["warrior"] = true,["heal"] = true,["healer"] = true,["heals"] = true,["tank"] = true,["tanks"] = true,["damage"] = true,["dps"] = true,["dmg"] = true,["deeps"] = true,["range"] = true,
["melee"] = true,["caster"] = true,
}
GF_ONE_WORD_LFM = {
["help"] = true,["lf"] = true,["lfm"] = true,["flm"] = true,
}
GF_ONE_WORD_IGNORE = {
["channel"] = true,["lol"] = true,["lmao"] = true,["rofl"] = true,["stfu"] = true,["ignore"] = true,["noob"] = true,["website"] = true,["http"] = true,["friendship"] = true,["teamwork"] = true,["nub"] = true,["noob"] = true,["noobs"] = true,["lockbox"] = true,
["lockboxes"] = true,
}
GF_ONE_WORD_GUILD = {
["progression"] = true,["prog"] = true,["monday"] = true,["tuesday"] = true,["wednesday"] = true,["thursday"] = true,["friday"] = true,["fridays"] = true,["saturday"] = true,["sunday"] = true,["utc"] = true,["dedicated"] = true,["environment"] = true,
["mon"] = true,["tue"] = true,["tues"] = true,["thur"] = true,["thurs"] = true,["house"] = true,["membership"] = true,["levelers"] = true,["leveling"] = true,["welcoming"] = true,["lgbt"] = true,["lgbtq"] = true,["ep"] = true,["gp"] = true,["dkp"] = true,
["polska"] = true,
["ukrainska"] = true,["fr"] = true,["ru"] = true,["cz"] = true,["sk"] = true,["cesko"] = true,["slovenska"] = true,["msk"] = true,
["recrute"] = true,["recluta"] = true,
["progresowania"] = true,["progresar"] = true,
["komunity"] = true,["komunite"] = true,["comunidad"] = true,
["deutsche"] = true,["deutschsprachige"] = true,["hispana"] = true,["progreso"] = true,
}
GF_ONE_WORD_POLITICS = {
["judaism"] = true,["kike"] = true,["kikes"] = true,["christianity"] = true,["religion"] = true,["religions"] = true,["religious"] = true,["islam"] = true,["muslim"] = true,["muhammad"] = true,["mohammad"] = true,["mohammed"] = true,["muhammed"] = true,
["supremacist"] = true,["pedo"] = true,["pedos"] = true,["pedophile"] = true,["pelosi"] = true,["tranny"] = true,["trans"] = true,["trannie"] = true,["trannies"] = true,["transgender"] = true,["transgenders"] = true,["transgenderism"] = true,["gay"] = true,
["gays"] = true,["lesbian"] = true,["lesbians"] = true,["fag"] = true,["fags"] = true,["faggot"] = true,["faggots"] = true,["faggotry"] = true,["bisexual"] = true,["gorillion"] = true,["apartheid"] = true,["holocaust"] = true,["holohoax"] = true,
["prolife"] = true,["prochoice"] = true,["sexism"] = true,["sexist"] = true,["sexists"] = true,["racism"] = true,["racist"] = true,["racists"] = true,["emigrant"] = true,["emigrants"] = true,["refugee"] = true,["refugees"] = true,["negro"] = true,
["negros"] = true,["negroes"] = true,["spic"] = true,["spics"] = true,["pelosi"] = true,["biden"] = true,["bidens"] = true,["trump"] = true,["trumps"] = true,["hitler"] = true,["hitlers"] = true,["stalin"] = true,["stalins"] = true,["banker"] = true,
["bankers"] = true,["bigot"] = true,["bigots"] = true,["bigotry"] = true,["abortion"] = true,["abortions"] = true,["beaner"] = true,["beaners"] = true,["chink"] = true,["chinks"] = true,["towelhead"] = true,["towelheads"] = true,["lgbt"] = true,["lgbtq"] = true,
}
GF_ONE_WORD_TRADE = {
["wtb"] = true,["wts"] = true,["buying"] = true,["selling"] = true,["wtt"] = true,["trading"] = true,["lfw"] = true,["cod"] = true,["tipping"] = true,["lockbox"] = true,["lockboxes"] = true,["lockpick"] = true,["lockpicking"] = true,
}
GF_ONE_WORD_LFTRADE = {
["jc"] = true,["jewelcrafter"] = true,["lw"] = true,["leatherworker"] = true,["enchanter"] = true,["tailor"] = true,["blacksmith"] = true,["bs"] = true,["blacksmither"] = true,["engineer"] = true,
["hammersmith"] = true,["swordsmith"] = true,["axesmith"] = true,["armorsmith"] = true,["armorsmithing"] = true,["weaponsmith"] = true,["crafter"] = true,
}
GF_ONE_WORD_PVP = {
["av"] = 0,["ab"] = 0,["wsg"] = 0,["premade"] = 0,["battleground"] = 0,["battlegrounds"] = 0,["warsong"] = 0,
}

GF_ONE_WORD_QUEST = {
["hogger"] = 10,["arugals"] = 15,["pyrewood"] = 15,["gyromast"] = 20,["arachnophobia"] = 21,["choksul"] = 22,["fenris"] = 24,["tharilzun"] = 25,["stonewatch"] = 26,["gathilzogg"] = 26,["morganth"] = 27,["arugal"] = 27,["arikara"] = 28,["eliza"] = 30,
["steelsnap"] = 30,["hypercapacitor"] = 30,["nekrosh"] = 32,["morbent"] = 32,["balgaras"] = 34,["morladim"] = 35,["stromgarde"] = 37,["frostmaw"] = 37,["trelane"] = 39,["marez"] = 40,["falconcrest"] = 40,["ghostoplasm"] = 39,["kurzen"] = 40,["fozruk"] = 42,
["deadmire"] = 45,["oox17"] = 45,["oox09"] = 45,["oox22"] = 45,["morokk"] = 45,["maizoth"] = 46,["gammerita"] = 48,["maltorius"] = 50,["hexx"] = 50,["muisek"] = 50,["negolash"] = 50,["mokrash"] = 50,["mok"] = 50,["sharpbeak"] = 51,["raventusk"] = 51,
["torntusk"] = 51,["obsidion"] = 52,["shadra"] = 55,["ursius"] = 56,["brumeran"] = 58,["azsharite"] = 58,["hetaera"] = 58,["kirith"] = 58,["winterfall"] = 59,["lords"] = 60,["dukes"] = 60,["abyssal"] = 60,["araj"] = 60,["fordring"] = 60,["frostmaul"] = 60,
["shyrotam"] = 60,["rotam"] = 60,["lakmaeran"] = 60,["decoy"] = 60,["neptulon"] = 60,["maws"] = 60,["eranikus"] = 60,["bloodkelp"] = 60,["rakhlikh"] = 60,["darrowshire"] = 60,["nathanos"] = 60,["blightcaller"] = 60,["duskwing"] = 60,["corpulent"] = 60,
["borelgore"] = 60,["courier"] = 60,["demetria"] = 60,["elite"] = 0,["elites"] = 0,["escort"] = 0,["quest"] = 0,["quests"] = 0,["questing"] = 0,["tasks"] = 0,
}
GF_ONE_WORD_DUNGEON = {
["ragefire"] = 16,["rfc"] = 16,["deadmine"] = 21,["deadmines"] = 21,["vancleef"] = 21,["vc"] = 21,["dm"] = 21,["wc"] = 22,["wailing"] = 22,["shadowfang"] = 25,["sfk"] = 25,["stockade"] = 26,["stockades"] = 26,["stocks"] = 26,["blackfathom"] = 26,["bfd"] = 26,
["gnomer"] = 32,["gnomeregan"] = 32,["kraul"] = 32,["rfk"] = 32,["downs"] = 40,["rfd"] = 40,["smgy"] = 31,["graveyard"] = 31,["lib"] = 35,["library"] = 35,["armory"] = 39,["cathedral"] = 41,["cath"] = 41,["ulda"] = 46,["uldaman"] = 46,["zulfarrak"] = 48,
["zf"] = 48,["farrak"] = 48,["mallet"] = 48,["mara"] = 50,["maraudon"] = 50,["princess"] = 50,["st"] = 54,["sunken"] = 54,["atalhakkar"] = 54,["arena"] = 55,["windsor"] = 55,["jailbreak"] = 55,["angerforge"] = 56,["brd"] = 58,["emp"] = 58,["emperor"] = 58,
["attunement"] = 60,["lbrs"] = 60,["dme"] = 57,["dmn"] = 62,["dmt"] = 62,["dmw"] = 62,["scholo"] = 62,["sholo"] = 62,["scholomance"] = 62,["strath"] = 62,["stratholme"] = 62,["baron"] = 62,["ubrs"] = 63,["rend"] = 63,["valthalak"] = 63,
["dungeon"] = 0,["anything"] = 0,
}
GF_ONE_WORD_RAID = {
["mc"] = true,["rag"] = true,["ragnaros"] = true,["blackwing"] = true,["bwl"] = true,["zulgurub"] = true,["gurub"] = true,["hakkar"] = true,["aq15"] = true,["aq20"] = true,["aq40"] = true,["ahn"] = true,["qiraj"] = true,["aq"] = true,["ossirian"] = true,
["ossi"] = true,["naxxramas"] = true,["naxx"] = true,["onyxia"] = true,["ony"] = true,["ony15"] = true,["ony20"] = true,["azuregos"] = true,["kazzak"] = true,["lethon"] = true,["ysondre"] = true,["taerar"] = true,["emeriss"] = true,
}

GF_STRING_FIND_LIST = {
	["LFM"] = { "lf%d+", "looking for more", "need more", "looking for %a+ more", "need %d* dps","need %d* heal", "need %d* tank", "need heal", "need tank", "need a tank", "need dps", "need range", "need rdps", "need caster", "need melee", "need mdps",
				"need aoe",	"need one", "need two", "need three", "anyone for", "come tank", "come healer", "come dps", "hosting", "ms>os", "looking for tank", "looking for healer", "looking for dps", },
	["LFG"] = {	"lfg", "looking for group", "anyone doing", "want to group", },
	["GUILD"] = { "wants you", "raiding team", "raid times", "raiding times", "guild bank", "social guild", "new guild", "new players", "loot council", "loot system", "consider joining", "raid days", "core team", "welcomes you", "join today", },
	["GUILDBLOCKLIST"] = {},
	["POLITICS"] = { "gas chamber", "6 million", "six million", "misogyn", "nigger", "jew", "semit", "nazi", "republican", "democrat", "politic", "schizo", "immigra", "globali", "femini", },
	["TRADE"] = { "for sale", " on ah ", "summons service", "summon service", "will tip", "will work", "lock box", "key service", },
	["RAID"] = { "molten core",	"world boss", " zg", },
	["PVP"] = { "alterac valley", "arathi basin", },
	["QUEST"] = {
		["ARATHIHIGHLANDS"] = { 40, "arathi highlands", "breaking the keystone", "sigil of trollbane", "call to arms", "the broken sigil", "the real threat", "attack on the tower", },
		["AZSHARA"] 		= { 58, "the name of the beast", },
		["BARRENS"] 		= { 17, "horde presence", },
		["BADLANDS"] 		= { 50, "tremors of the earth", "broken alliances", "summoning the princess", },
		["BLASTEDLANDS"] 	= { 60, "rakh", "uniting the shattered amulet", },
		["BURNINGSTEPPES"] 	= { 55, "dragonkin menace", },
		["DUSKWOOD"] 		= { 32, "ladim", "bride of the embalmer", },
		["DESOLACE"] 		= { 40, "khan hratha", "the corrupter", "down the scarlet path",},
		["DUSTWALLOW"] 		= { 45, "brood of onyxia", },
		["EASTPLAGUE"] 		= { 60, "order must be restored", },
		["FERALAS"] 		= { 45, "cliff giant", },
		["FELWOOD"] 		= { 55, "a final blow", },
		["HILLSBRAD"] 		= { 30, "battle of hillsbrad", "elixir of agony", "vorrel", "humbert", },
		["HILLSBRAD40"] 	= { 40, "crown of will", "crushridge warmongers", "preserving knowledge", },
		["HINTERLANDS"] 	= { 50, "ancient egg", "dark vessels", "separation anxiety", },
		["LOCHMODAN"] 		= { 20, "vyrin", "mercenaries", },
		["REDRIDGE"] 		= { 26, "shadow magic", "looking further", },
		["SEARINGGORGE"] 	= { 53, "set them ablaze", "flames casing",},
		["SILITHUS"] 		= { 60, "dearest natalia", "field duty", "the calling", },
		["STONETALON"] 		= { 28, "the den", "bloodfury bloodline", },
		["STRANGLETHORN"] 	= { 45, "minds eye", "cracking maury", "big game hunter", },
		["STRANGLETHORN50"]	= { 51, "message in a bottle", },
		["THOUSANDNEEDLES"] = { 30, "test of strength", },
		["THOUSANDNEEDLES35"]= { 35, "encrusted tail fins", },
		["UNGORO"] 			= { 56, "dangerous to go alone", },
		["WESTPLAGUE"] 		= { 60, "in dreams", "last barov", },
		["WETLANDS"] 		= { 32, "grim task", "thandol span", "dark iron war", },
		["WINTERSPRING"] 	= { 60, "luck be with you", "timbermaw hold",},
		["AQ40OPENING"] 	= { 60, "the isle of dread", "nightmares corruption", "draconic for dummies", },
		["60ELITES"] 		= { 60, "alcaz island", "test of skulls",},
		["ALL"] 			= { 0, "rep farm", "rep run", },
	},
	["DUNGEON"] = {
		["DEADMINES"] 		= { 21, "dead mine", "death mine", " oh brother", "collecting memories", },
		["WAILINGCAVERNS"] 	= { 22, "wailing cave", },
		["SMGRAVEYARD"] 	= { 31, "sm gy", "sm graveyard", "monastery graveyard", },
		["SMARMORY"] 		= { 39, "sm arm", "monastery arm", },
		["SMCATHEDRAL"] 	= { 41, "sm full", "sm questrun", "sm quest run", },
		["BLACKROCKDEPTHS"] = { 58, "blackrock depths", "lava run", "brd quest run" },
		["LBRS"] 			= { 60, "lower[%w%s]+spire", "lower[%w%s]+blackrock", },
		["DIREMAULEAST"] 	= { 57, "maul east", "dm e", },
		["DIREMAULNORTH"] 	= { 62, "maul north", "maul tribute", "dm n", "dm t", },
		["DIREMAULWEST"]	= { 62, "maul west", "dm w", },
		["STRATHOLME"] 		= { 62, "ud strat", "live strat", "strat live", "strat ud", "ud side", "live side", },
		["UBRS"] 			= { 63, "upper[%w%s]+spire", "upper[%w%s]+blackrock ", },
	},
}	-- Buttons... (1) The name on the dropdowns. (2/3) Level minimum/maximum for showing on dropdowns. (4) Alternate spelling for LFG FixStrings. (5) The Instance name on the /Who List(to not whisper people already in dungeons). (6) The actual Dungeon Level.
GF_BUTTONS_LIST = {
	["SearchList"] = {
		[1] = { "Ragefire Chasm", 10, 18, "rfc", "ragefire", },
		[2] = { "Deadmines", 15, 25, "dead mines", " dm ", "deadmines", " vc ", "cleef", },
		[3] = { "Wailing Caverns", 16, 26, "wc ", "wailing", },
		[4] = { "Blackfathom Deeps", 20, 30, "bfd", "blackfa", },
		[5] = { "Shadowfang Keep", 20, 30, "sfk ", "shadowfang", },
		[6] = { "Stockades", 20, 30, "stockade", "stocks", },
		[7] = { "Gnomeregan", 26, 36, "gnomer", },
		[8] = { "Razorfen Kraul", 26, 36, "rfk", "kraul", },
		[9] = { "Razorfen Downs", 35, 45, "rfd", " downs ", },
		[10] = { "SM Graveyard", 26, 36, "graveyard", " gy ", },
		[11] = { "SM Library", 30, 42, " lib ", "library", },
		[12] = { "SM Armory", 34, 44, " arm ", " arms ","armory", },
		[13] = { "SM Cathedral", 35, 46, " cath ", "sm full", "cathedral"},
		[14] = { "Uldaman", 38, 50, " ulda ", },
		[15] = { "Zul'Farrak", 42, 54, "zf", "farrak", "mallet", "zul ", },
		[16] = { "Maraudon", 43, 55, " mara ", "princess", },
		[17] = { "Sunken Temple", 47, 58, "sunken", " st ", "temple", },
		[18] = { "Blackrock Depths", 48, 60, "brd", "blackrock depth", "windsor", "jailbreak", },
		[19] = { "Lower Blackrock Spire", 52, 60, "lbrs", " lower ", },
		[20] = { "Dire Maul East", 50, 60, "dme", " east ", },
		[21] = { "Dire Maul North", 54, 60, "dmn", "north", },
		[22] = { "Dire Maul West", 55, 60, "dmw", " west ", },
		[23] = { "Dire Maul Tribute", 54, 60, "dmt", " trib ", "tribute", },
		[24] = { "Scholomance", 55, 60, "scholo", },
		[25] = { "Stratholme", 55, 60, " strat ", "stratholme", " ud ", " live ", "baron", },
		[26] = { "Upper Blackrock Spire", 55, 60, "ubrs", "upper", },
		[27] = { "40-man Raids", 58, 60, " mc ", "molten core", " rag ","ragnaros", "blackwing", "bwl", " nef ", " nefar", "aq40", "cthun", "aq 40", "naxx", " ony ", "onyxia", "qiraj", },
		[28] = { "20-man Raids", 58, 60, " zg ", "zul g", "gurub", "hakkar", "aq20", "ossi", },
		[29] = { "PvP", 18, 60, "premade", " av ", " ab ",  "wsg", "alterac valley", "arathi basin", "warsong gulch", },
		[30] = { GF_CLEAR, 1, 60, "", },
	},
	["LFGWhoClass"] = {
		[1] = { GF_PRIEST, 1, 60, },
		[2] = { GF_MAGE, 1, 60, },
		[3] = { GF_WARLOCK, 1, 60, },
		[4] = { GF_ROGUE, 1, 60, },
		[5] = { GF_DRUID, 1, 60, },
		[6] = { GF_HUNTER, 1, 60, },
		[7] = { GF_WARRIOR, 1, 60, },
		[8] = { GF_PALADIN, 1, 60, },
		[9] = { GF_SHAMAN, 1, 60, },
	},
	["LFGLFM"] = {
		[1] = { "LFM", 1, 60, },
		[2] = { "Spec1 LFG", 1, 60, },
		[3] = { "Spec2 LFG", 1, 60, },
		[4] = { "Spec3 LFG", 1, 60, },
		[5] = { "Class LFG", 1, 60, },
		[6] = { "LFG", 1, 60, },
	},
	["LFGRole"] = {
		[1] = { GF_TANK, 1, 60, },
		[2] = { GF_HEALER, 1, 60, },
		[3] = { GF_DPS, 1, 60, },
		[4] = { GF_MELEE, 1, 60, },
		[5] = { GF_RANGE, 1, 60, },
		[6] = { GF_CASTER, 1, 60, },
		[7] = { GF_EVERYTHING, 1, 60, },
	},
	["LFGDungeon"] = {
		[1] = { "Ragefire Chasm", 10, 18, "rfc", "Ragefire Chasm", 15, },
		[2] = { "Deadmines", 15, 25, "dm", "The Deadmines", 21, },
		[3] = { "Wailing Caverns", 16, 26, "wc", "Wailing Caverns", 21, },
		[4] = { "Blackfathom Deeps", 20, 30, "bfd", "Blackfathom Deeps", 25, },
		[5] = { "Shadowfang Keep", 20, 30, "sfk", "Shadowfang Keep", 25, },
		[6] = { "Stockades", 20, 30, "stocks", "The Stockade", 25,},
		[7] = { "Gnomeregan", 26, 36, "gnomer", "Gnomeregan", 32, },
		[8] = { "Razorfen Kraul", 26, 36, "rfk", "Razorfen Kraul", 31, },
		[9] = { "Razorfen Downs", 35, 45, "rfd", "Razorfen Downs", 41, },
		[10] = { "SM Graveyard", 26, 36, "gy", "Scarlet Monastery", 31, },
		[11] = { "SM Library", 30, 42, "lib", "Scarlet Monastery", 35, },
		[12] = { "SM Armory", 34, 44, "arm", "Scarlet Monastery", 38, },
		[13] = { "SM Cathedral", 35, 46, "cath", "Scarlet Monastery", 40, },
		[14] = { "SM Full", 35, 46, "sm full", "Scarlet Monastery", 39, },
		[15] = { "Uldaman", 38, 50, "ulda", "Uldaman", 44, },
		[16] = { "Zul'Farrak", 42, 54, "zf", "Zul'Farrak", 47, },
		[17] = { "Maraudon", 43, 55, "mara", "Maraudon", 49, },
		[18] = { "Sunken Temple", 47, 60, " st ", "The Temple of Atal'Hakkar", 53, },
		[19] = { "Blackrock Depths", 48, 60, "brd", "Blackrock Depths", 58, },
		[20] = { "Lower Blackrock Spire", 52, 60, "lbrs", "Blackrock Spire", 58, },
		[21] = { "Dire Maul East", 50, 60, "dme", "Dire Maul", 58, },
		[22] = { "Dire Maul North", 54, 60, "dmn", "Dire Maul", 61, },
		[23] = { "Dire Maul West", 55, 60, "dmw", "Dire Maul", 62, },
		[24] = { "Dire Maul Tribute", 54, 60, "dmt", "Dire Maul", 62, },
		[25] = { "Scholomance", 55, 60, "scholo", "Scholomance", 62, },
		[26] = { "Stratholme Live", 55, 60, "strat live", "Stratholme", 61, },
		[26] = { "UD Stratholme", 55, 60, "ud strat", "Stratholme", 62, },
		[27] = { "Upper Blackrock Spire", 55, 60, "ubrs", "Blackrock Spire", 62, },
	},
	["LFGRaid"] = {
		[1] = { "Molten Core", 1, 60, "mc", "Molten Core", 63, 40, },
		[2] = { "Blackwing Lair", 1, 60, "bwl", "Blackwing Lair", 63, 40, },
		[3] = { "AQ40", 1, 60, "aq 40", "Ahn'Qiraj", 63, 40, },
		[4] = { "Naxxramas", 1, 60, "naxx", "Naxxramas", 63, 40, },
		[5] = { "Onyxia", 1, 60, "ony", "Onyxia's Lair", 63, 40, },
		[6] = { "ZG", 1, 60, "zg", "Zul'Gurub", 63, 20, },
		[7] = { "AQ20", 1, 60, "aq20", "Ruins of Ahn'Qiraj", 63, 20, },
	},
	["LFGPvP"] = {
		[1] = { "Arathi Basin", 1, 60, "ab", "Arathi Basin", 63, },
		[2] = { "Alterac Valley", 1, 60, "av", "Alterac Valley", 63 },
		[3] = { "Warsong Gulch", 1, 60, "wsg", "Warsong Gulch", 63, },
	},
	["LFGSize"] = {
		[1] = { GF_5_MAN, 1, 60, },
		[2] = { GF_10_MAN, 1, 60, },
		[3] = { GF_15_MAN, 1, 60, },
		[4] = { GF_20_MAN, 1, 60, },
		[5] = { GF_25_MAN, 1, 60, },
		[6] = { GF_40_MAN, 1, 60, },
	},
}
GF_ErrorFilters = {
	[1]	= "has completed that quest",
	[2]	= "is not eligible for that quest",
	[3]	= "is already on that quest",
	[4]	= "Sharing quest with",
	[5]	= "is too far away to receive your quest",
	[6]	= "to join your group.",
	[7]	= "is already in a group.",
	[8]	= "is under attack!",
}
GF_LootFilters = {
	[1] = " has selected ", -- filter these if green quality or lower
	[2] = " passed on: ",
	[3] = " won: ",
	
}

-- Turtle additions
GF_HIGH_ELF				= "High Elf";
GF_GOBLIN				= "Goblin";
local GF_TURTLE_ONE_WORD_QUEST = {
["xanthar"] = 60,["krampus"] = 60,["solnius"] = 60,["almaudrak"] = 40,["palkeote"] = 39,["shadowtooth"] = 61,["gelwig"] = 48,["alverold"] = 20,["xanvarak"] = 60,["morogo"] = 60,["kingsbane"] = 10,["janira"] = 50,["lykourgos"] = 53,
["hazzuri"] = 54,["tanglemoss"] = 54,["lapidis"] = 55,["ravenwood"] = 45,["snarlclaw"] = 44,["sorrowclaw"] = 41,["zefek"] = 48,["vilegrip"] = 51,["vilegrips"] = 51,
}
local GF_TURTLE_ONE_WORD_DUNGEON = {
["crescent"] = 36,["grove"] = 36,["cg"] = 36,["gc"] = 48,["gilneas"] = 48,["hateforge"] = 56,["quarry"] = 56,["hfq"] = 56,["es"] = 63,["sanctum"] = 63,["sv"] = 62,["swv"] = 62,["vault"] = 62,["morass"] = 62,["bm"] = 62,["crypt"] = 63,
}
local GF_TURTLE_ONE_WORD_RAID = {
["k10"] = true,
["k40"] = true,
["kara"] = true,
["kara10"] = true,
["kara40"] = true,
["karazhan"] = true,
["concavius"] = true,
["ostarius"] = true,
["nerub"] = true,
["reaver"] = true,
["aq15"] = true,
["zg15"] = true,
["ony15"] = true,
}
local GF_TURTLE_STRING_FIND_LIST_QUEST = {
	["TURTLE"]			= { 60, "upper binding", "scythe of the goddess", "into the dream", },
	["TDESOLACE"]		= { 40, "fear incarnate", "lingering mother", "raging oceans blue", "unforgotten and unforgiven", },
	["TAZSHARA"]		= { 54, "azure scale", "killing the tide lord", "tinkerspark transponder", "stop the dragonflight", "big energy project", "dampening must end", },
	["TDUSTWALLOW"]		= { 43, "and justice for all", "draconic presence", "justice for dustwallow", },
	["THINTERLANDS"]	= { 50, "bring down the priestess", "decimate their ranks", "read it in a book once", },
	["TARATHIHIGHLANDS"]= { 40, "cleaning job", "securing the keep", "securing the roads", },
	["TWINTERSPRING"]	= { 60, "darkwhisper culling", },
	["TDUROTAR"]		= { 13, "deep blue sea", },
	["TBLACKSTONE"]		= { 9, "destroying venture co", "venture co leadership", },
	["TTIRISFAL"]		= { 20, "fall of the usurper", "magical interference", },
	["TTANARIS"]		= { 48, "plight of the sandfury", },
	["TBLASTEDLANDS"]	= { 60, "fel energy irregularities", },
	["HYJAL"]			= { 60, "hostile envoys", "barkskin tribe", },
	["TUNGORO"]			= { 60, "in a rush", "the race", },
	["ALAHTHALAS"]		= { 10, "leaders of the reefscale", },
	["GILLIJIM"]		= { 52, "the aqua stone", "hermits wrath", },
	["GILNEAS"]			= { 47, "revenge after death", },
	["THILLSBRAD"]		= { 35, "returning property", },
	["TWETLANDS"]		= { 25, "strange bedfellows", "hawks vigil", },
	["TASHENVALE"]		= { 31, "the final strike", "the mortal strike", },
	["TBADLANDS"]		= { 44, "head of the hunters", "undoing the curse", },
	["TSWAMPSORROWS"]	= { 45, "magic of dragons", },
	["WHISPERINGFOREST"]= { 30, "the lost tablets", "shadow well", },
	["TWESTFALL"]		= { 22, "church of westfall", },
	["TDUNMOROGH"]		= { 11, "terror of chill breeze", },
	["TEASTPLAGUE"]		= { 56, "wrath of the light fall upon thee", },
	["TFELWOOD"]		= { 57, "hunt the hunter", },
	["TBURNINGSTEPPES"]	= { 50, "miners union mutiny", },
}
local GF_TURTLE_STRING_FIND_LIST_GUILDBLOCKLIST = { }
local GF_TurtleSearchList = {
		[1] = { "Crescent Grove", 32, 38, "crescent", "grove", "cg ", },
		[2] = { "Gilneas City", 43, 49, "gilneas", },
		[3] = { "Hateforge Quarry", 52, 60, "hateforge", "quarry", "hf ", },
		[4] = { "Stormwind Vault", 58, 60, "vault", "sv ", },
		[5] = { "Black Morass", 58, 60, "morass", "bm ", },
		[6] = { "Karazhan Crypt", 60, 60, "crypt", },
		[7] = { "Emerald Sanctum", 60, 60, "sanctum", "es ", },
}
local GF_TurtleGroupButtonsListDungeons = { -- header, min to show, max to show, filter to remove names, filter to remove names, Who list level
		[1] = { "Crescent Grove", 32, 40, "cg", "Crescent Grove", 33, },
		[2] = { "Gilneas City", 42, 49, "gilneas", "Gilneas City", 46, },
		[3] = { "Hateforge Quarry", 52, 60, "quarry", "Hateforge Quarry", 61, },
		[4] = { "Stormwind Vault", 58, 60, "vault", "Stormwind Vault", 61, },
		[5] = { "Black Morass", 58, 60, "morass", "Black Morass", 63, },
		[6] = { "Karazhan Crypt", 60, 60, "crypt", "Karazhan Crypt", 63, },
		[7] = { "Emerald Sanctum", 60, 60, "sanctum", "Emerald Sanctum", 63, },
}
local GF_TurtleGroupButtonsListRaids = {
		[1] = { "Upper Karazhan", 1, 60, "kara40", "Upper Karazhan", 63, 40, },
		[2] = { "Lower Karazhan", 1, 60, "kara10", "Lower Karazhan", 63, 10, },
		[3] = { "AQ15", 1, 60, "aq15", "Ruins of Ahn'Qiraj", 63, 20, },
}
local GF_TurtleSearchListNew40RaidString = { "40-man Raids", 60, 60, " mc ", "molten core", " rag ","ragnaros", "blackwing", "bwl", " nef ", "nefari", "aq40", "cthun", "aq 40", "naxx", " ony ", "onyxia", "qiraj",
											"kara40", "upper kara", "k40", "concavius", "ostarius", "nerub", "reaver", }
local GF_TurtleSearchListNew20RaidString = { "20-man Raids", 58, 60, "zg", "zul g", "gurub", "hakkar", "aq20", "ossi", "aq15", "k10", "kara10", "lower kara", }					
function GF_AddTurtleWoWDungeonsRaids()
	for word,_ in GF_TURTLE_ONE_WORD_DUNGEON do
		GF_ONE_WORD_DUNGEON[word] = GF_TURTLE_ONE_WORD_DUNGEON[word];
	end
	for word,_ in GF_TURTLE_ONE_WORD_QUEST do
		GF_ONE_WORD_QUEST[word] = GF_TURTLE_ONE_WORD_QUEST[word];
	end
	for word,_ in GF_TURTLE_ONE_WORD_RAID do
		GF_ONE_WORD_RAID[word] = GF_TURTLE_ONE_WORD_RAID[word];
	end
	for instance,_ in GF_TURTLE_STRING_FIND_LIST_QUEST do
		GF_STRING_FIND_LIST.QUEST[instance] = GF_TURTLE_STRING_FIND_LIST_QUEST[instance]
	end
	for i=1, getn(GF_TURTLE_STRING_FIND_LIST_GUILDBLOCKLIST) do
		table.insert(GF_STRING_FIND_LIST.GUILDBLOCKLIST, GF_TURTLE_STRING_FIND_LIST_GUILDBLOCKLIST[i]);
	end

	GF_BUTTONS_LIST.SearchList[27] = GF_TurtleSearchListNew40RaidString;
	GF_BUTTONS_LIST.SearchList[28] = GF_TurtleSearchListNew20RaidString;
	--GF_BUTTONS_LIST.LFGRaid[7] = { "AQ15", 1, 60, "aq15", "Ruins of Ahn'Qiraj", 63, 20, }
	for i=1, getn(GF_TurtleSearchList) do
		table.insert(GF_BUTTONS_LIST.SearchList, 27, GF_TurtleSearchList[i]);
	end
	for i=1, getn(GF_TurtleGroupButtonsListDungeons) do
		table.insert(GF_BUTTONS_LIST.LFGDungeon, 28, GF_TurtleGroupButtonsListDungeons[i]);
	end
	for i=1, getn(GF_TurtleGroupButtonsListRaids) do
		table.insert(GF_BUTTONS_LIST.LFGRaid, 8, GF_TurtleGroupButtonsListRaids[i]);
	end
end