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

-- Race List
GF_HUMAN				= "Human";
GF_NIGHT_ELF			= "Night Elf";
GF_DWARF				= "Dwarf";
GF_GNOME				= "Gnome";
GF_ORC					= "Orc";
GF_UNDEAD				= "Undead";
GF_TROLL				= "Troll";
GF_TAUREN				= "Tauren";

-- Group Size
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
GF_SHOW_GUILDS			= "Show Guilds"
GF_PLAY_SOUND			= "Play sound"; -- Label for GF_PlaySoundOnResultsCheckButton
GF_CHAT_ON				= "Chat on"
GF_CHAT_OFF				= "Chat off"
GF_CHAT_GROUP_ON		= "Groups in chat, on"
GF_CHAT_GROUP_OFF		= "Groups in chat, off"

-- Log Filters
GF_LOG_AND_MONITOR		= "Log Entries"; -- Label at top of Log frame
GF_LOG_GROUP			= "Group"
GF_LOG_FILTERED			= "Filtered"
GF_LOG_CHAT				= "Chat"
GF_LOG_TRADES			= "Trades"
GF_LOG_LOOT				= "Loot"
GF_LOG_SPAM				= "Spam"
GF_LOG_BLACKLIST		= "Blacklist"
GF_LOG_BELOWLEVEL		= "Level"

-- Log Types
GF_LOGGED_ME				= "[M] "; -- Text added to Log tab when a message is from myself
GF_LOGGED_GROUPS			= "[G] "; -- Text added to Log tab when a message is a group
GF_LOGGED_NEW				= "[N] "; -- Text added to Log tab when a message is new
GF_LOGGED_FILTERED			= "[F] "; -- Text added to Log tab when a message is group that was filtered
GF_LOGGED_CHAT				= "[C] "; -- Text added to Log tab when a message is chat
GF_LOGGED_TRADES			= "[T] "; -- Text added to Log tab when a message is trades
GF_LOGGED_LOOT				= "[L] "; -- Text added to Log tab when a message is loot/money
GF_LOGGED_SPAM				= "[S] "; -- Text added to Log tab when a message is spam
GF_LOGGED_BLACKLIST			= "[B] "; -- Text added to Log tab when a message is blacklist
GF_LOGGED_BELOWLEVEL		= "[V] "; -- Text added to Log tab when a message is level under threshold

-- Whisper/Guild Log
GF_LOG_WHISPERLOG		= "Whisper Log"
GF_LOG_SHOWLOG			= "Show Log"
GF_LOG_GUILDWHISPERS	= "Guild+Whisper"
GF_WHISPER_FORMAT		= "Error: Wrong whisper format."

-- Group-related buttons and texts
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
GF_ADJUST_UISCALE		= "Adjust window scale"; -- Label for adjust transparency on Settings tab
GF_UISCALE_UPDATE		= "Update"; -- Label for update UIScale

GF_ADJUST_FILTER_LEVEL	= "Group Filtering"; -- Label for Filter slider on Settings tab
GF_FilterLevelNotes = {};
GF_FilterLevelNotes[1] = "Not Strict";
GF_FilterLevelNotes[2] = "Strict";
GF_FilterLevelNotes[3] = "Very Strict";

-- Other Settings
GF_USE_WHO_ON_GROUPS	= "Auto /Who"
GF_JOIN_WORLD			= "Join World channel"
GF_SHOW_ORIGINAL_CHAT	= "Show Unformatted Chat"
GF_SYSTEM_FILTER		= "Enable System Filtering"
GF_SPAM_FILTER			= "Enable Spam Filtering"
GF_AUTO_BLACKLIST		= "Enable Auto Blacklist"
GF_SPAM_FILTER_TIMER	= "Spam flag clear time"
GF_BLACKLIST_MINLEVEL	= "Auto Blacklist maximum level"
GF_BLOCK_BELOW_LEVEL	= "Block messages below level"
GF_GROUP_LIST_DURATION	= "Group display time"
GF_AUTO_FILTER_LEVEL	= "Auto Filter level range"
GF_NEW_GROUP_TIMEOUT	= "\"New Listing\" duration"

-- Group Maker related buttons and texts
GF_AUTO					= "Auto"
GF_LFM_LFG				= "LFM/LFG"
GF_DUNGEON				= "Dungeon"
GF_RAID					= "Raid"
GF_ROLE					= "Role"
GF_TANK					= "Tank"
GF_HEALER				= "Healer"
GF_DPS					= "DPS"
GF_MELEE				= "Melee"
GF_RANGE				= "Range"
GF_CASTER				= "Caster"
GF_EVERYTHING			= "Everything"

-- Getwho-related buttons and texts
GF_WHO					= "Who"
GF_GET_WHO				= "Get Who"
GF_STOP_WHO				= "Stop Who"
GF_INVITE				= "Invite"
GF_REQUEST				= "Request"
GF_RESET				= "Reset"
GF_INVITE_PLEASE		= "Invite Please"
GF_INVITING_FOR			= "Inviting you for: "

GF_SENDING_WHO_FOR		= "Sending who request for: "
GF_WHO_MSG_SYSTEM		= "%d+ players? total"

GF_NO_WHISPER_DUNGEON	= "There are no dungeons in the input boxes. I need a dungeon name to know what levels to look for."
GF_NO_WHISPER_TEXT		= "No valid text to send."
GF_NO_PLAYERS_TO_WHISPER= "No players in whisper queue"

-- Blacklist buttons and texts
GF_OK					= "Ok"; -- Popup Dialog Button
GF_CANCEL 				= "Cancel"; -- Popup Dialog Button
GF_ENTER_PLAYER_NAME	= "Enter the name of the player to be blacklisted:"; -- Label for blacklist add player popup
GF_ADD_PLAYER			= "Add player"; -- Blacklist add player button Label
GF_INVALID_PLAYER_NAME	= " is an invalid player name."; -- Blacklist tried to add invalid player name
GF_EDIT_PLAYER			= "Edit player information"; -- Blacklist Edit button Label
GF_DELETE				= "Delete"; -- Blacklist delete button Label
GF_DEFAULT_PLAYER_NOTE	= "New player added. Click here to edit this note." -- Default Blacklist note

-- Announce related buttons
GF_ANNOUNCE_LFG_BTN			= "Announce Group"; -- Label for the group finder announce when turned off
GF_AUTO_ANNOUNCE_TURNED_ON	= "Auto announce ON."; -- Internal text when I click the announce button to start announcing.
GF_AUTO_ANNOUNCE_TURNED_OFF	= "Auto announce OFF"; -- Internal text when I click the announce button to stop announcing
GF_NOTHING_TO_ANNOUNCE		= "Nothing to announce: Setting auto announce to OFF"; -- If GF_LFGDescriptionEditBox is then can't start announce
GF_NOTHING_TO_ANNOUNCE2		= "Nothing to announce"; -- If GF_LFGDescriptionEditBox is empty then can't start announce
GF_SENT 					= "Sent: "
GF_ANNOUNCED_LFG_EXT		= "Announced LFG message to the LFG channel"; -- Minimap text when your group is announced.
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

GF_GenTooltips = {

GF_MinimapIcon = { 
	tooltip1 		= "Group Finder", 
	tooltip2 		= "Left-Click to open. Shift-click to toggle \"Show Chat\". Right-click to toggle \" Show groups in Chat\".", 
	anchor			= "TOPRIGHT",
	relativePoint	= "TOPLEFT" },

GF_GroupsInChatCheckButton = { 
	tooltip1 		= "Show groups in chat", 
	tooltip2 		= "When checked, groups that meet your criteria will be displayed in chat.",  },
GF_GroupsNewOnlyCheckButton = { 
	tooltip1 		= "Show only new groups", 
	tooltip2 		= "When checked, only groups flagged as 'NEW' will be displayed in chat and on the minimap.",  },
GF_GroupsInMinimapCheckButton = { 
	tooltip1 		= "Show groups on the minimap", 
	tooltip2 		= "When checked, new groups that meet your criteria will be displayed next to the minimap.",  },
GF_ShowChatCheckButton = { 
	tooltip1 		= "Show non-group chat",
	tooltip2 		= "When checked, non-group and non-trade chat will be displayed as normal in channels. Otherwise it will be hidden.",  },
GF_ShowTradesCheckButton = {
	tooltip1 		= "Show trade chat",
	tooltip2 		= "When checked, WTS/WTB/LFW-type messages will be shown. Otherwise they will be hidden.",  },
GF_ShowLootCheckButton = {
	tooltip1 		= "Show loot messages",
	tooltip2 		= "When checked, item rolls, looting of money and grey items, selecting greed/need for uncommon items, and experience/honor/reputation gains will be shown. Otherwise they will be hidden.",  },
GF_ShowGuildsCheckButton = {
	tooltip1 		= "Show guild messages",
	tooltip2 		= "When checked, guild recruitment messages will be shown. Otherwise they will be treated as spam." },
GF_FrameUseWhoOnGroupsCheckButton = {
	tooltip1 		= "Use who on groups",
	tooltip2 		= "When checked, will use /who automatically to find class/level/guild information." },

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

GF_GroupAutoCheckButton = { 
	tooltip1 		= "Auto-adjust LFM", 
	tooltip2 		= "Adjusts your 'LFM' or 'LFxM' messages by the number of people in the group relative to the selected group size." },
GF_LFGWhoWhisperEditBox = { 
	tooltip1 		= "Whisper Message", 
	tooltip2 		= "Use the 'Get Who' button to make a list of players matching the class and level range of the dungeon selected. Press the 'Invite' button to send this text(if blank it will send the World Channel message instead). Will not message the same person more than once every 15 minutes." },
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
GF_FrameSystemFilterCheckButton = {
	tooltip1 		= "Filter System Spam",
	tooltip2 		= "When checked, system spam from things like from group invites and sharing quests will be hidden." },
GF_FrameShowOriginalChatCheckButton = {
	tooltip1 		= "Show Original Chat",
	tooltip2 		= "When checked, chat messages will be shown in their original format instead of with class colors/levels. In addition, \"/auto Who\" will no longer search names from chat(search groups only)." },
GF_FrameSpamFilterCheckButton = {
	tooltip1 		= "Spam Filter",
	tooltip2 		= "When checked, if the same message is repeated more than once within the 'spam flag clear time', non-group messages from that player will be blocked(except friends/guildies/party members)." },
GF_FrameAutoBlacklistCheckButton = {
	tooltip1 		= "Blacklist Filter",
	tooltip2 		= "When checked, players who repeat the same message repeatedly(more than 120 characters) and who are below the 'auto blacklist maximum level' will be permanently added to the blacklist." },

GF_LogShowGroups = {
	tooltip1 		= "Show Groups",
	tooltip2 		= "Logs will include [G] Groups and [N] New Groups." },
GF_LogShowFiltered = {
	tooltip1 		= "Show Filtered",
	tooltip2 		= "Logs will include [F] Filtered Groups." },
GF_LogShowChat = {
	tooltip1 		= "Show Chat",
	tooltip2 		= "Logs will include [C] Chat Messages." },
GF_LogShowTrades = {
	tooltip1 		= "Show Trades",
	tooltip2 		= "Logs will include [T] Trades Messages." },
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

GF_HideMainFrameHeight = {
	tooltip1 		= "Toggles display height",
	tooltip2 		= "Reduces the height of the group list and log." },
GF_HideMainFrameWidth = {
	tooltip1 		= "Toggles display width",
	tooltip2 		= "Reduces the width of the group list and log." },
GF_LogShowWhisperHistory = {
	tooltip1 		= "Toggles the Guild/Whisper History Window",
	tooltip2 		= "This shows a list of recent whisper and guild activity." },
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
GF_ONE_WORD_SKIP = {
["one"] = 1,["two"] = 2,["three"] = 3,["four"] = 4,["five"] = 5,["six"] = 6,["seven"] = 7,["eight"] = 8,["nine"] = 9,["x"] = true,["v"] = true,["ii"] = true,["iii"] = true,["iv"] = true,["v"] = true,["vi"] = true,["vii"] = true,["viii"] = true,["ix"] = true,
["thorium"] = true,["strongiron"] = true,["mithril"] = true,["steel"] = true,["reinforced"] = true,["heavybronze"] = true,["ornatebronze"] = true,
}
GF_ONE_WORD_FIX = {
["healz"] = "heal",["heals"] = "heal",["healer"] = "heal",["healers"] = "heal",["healere"] = "heal",["healre"] = "heal",["xheal"] = "heal",["mheal"] = "heal",["heaer"] = "heal",
["dmg"] = "damage",["dps"] = "damage",["dd"] = "damage",["dds"] = "damage",["deeps"] = "damage",["xdamage"] = "damage",["damagg"] = "damage",["mdamage"] = "damage",
["tanks"] = "tank",["mt"] = "tank",["ot"] = "tank",["tankd"] = "tank",["xtank"] = "tank",["mtank"] = "tank",["tnak"] = "tank",
["ranged"] = "range",["rdps"] = "range",
["casters"] = "caster",
["melees"] = "melee",["mdps"] = "melee",
["stealthie"] = "stealth",["stealthy"] = "stealth",
["lfgm"] = "lfm",["flm"] = "lfm",["ldg"] = "lfm",["lfp"] = "lfm",["lfms"] = "lfm",
["fg"] = "lfg",["lofg"] = "lfg",["flg"] = "lfg",["lgf"] = "lfg",["lfh"] = "lfg",["lg"] = "lfg",
["grp"] = "group",["groups"] = "group",["party"] = "group",["parti"] = "group",
["hquest"] = "quest",["quests"] = "quest",["questing"] = "quest",["quets"] = "quest",["qujests"] = "quest",

["vaults"] = "vault",["skullls"] = "skulls",["lvrs"] = "lbrs",["lvrs"] = "lbrs",["elites"] = "elite",["leet"] = "elite",
["hinterland"] = "hinterlands",["hinderland"] = "hinterlands",["hiterlands"] = "hinterlands",["hiterland"] = "hinterlands",["hinderlands"] = "hinterlands",["hhinterlands"] = "hinterlands",
["walling"] = "wailing",["rpd"] = "rfd",["doin"] = "doing",["morben"] = "morbent",["rfch"] = "rfc",["sk"] = "sfk",
["stratholm"] = "stratholme",["strath"] = "stratholme",["srat"] = "stratholme",["sholo"] = "scholomance",["sholomance"] = "scholomance",["brda"] = "brd",["boot"] = "boots",["ladin"] = "ladim",["karul"] = "kraul",["sunkent"] = "sunken",
["ubers"] = "ubrs",["onyx"] = "onyxia",["onyxias"] = "onyxia",["karazan"] = "karazhan",["uld"] = "uldaman",["mauls"] = "maul",["onixia"] = "onyxia",["hyial"] = "hyjal",["hatforge"] = "hateforge",["hategorhe"] = "hateforge",
["blackfathome"] = "blackfathom",["living"] = "live",["crypts"] = "crypt",["gileas"] = "gilneas",["gilenas"] = "gilneas",["gineas"] = "gilneas",["glineas"] = "gilneas",["urbs"] = "ubrs",["caf"] = "cath",["catehdral"] = "cath",["armoury"] = "armory",
["stockades"] = "stockade",["stockede"] = "stockade",["stocks"] = "stock",["librery"] = "library",["ulduman"] = "uldaman",["cresent"] = "crescent",["cavs"] = "caverns",["cavern"] = "caverns",["cave"] = "caverns",["caves"] = "caverns",
["stormgarde"] = "stromgarde",["stormgard"] = "stromgarde",["stormgard"] = "stromgarde",

["bs"] = "blacksmith",["blacksmither"] = "blacksmith",["hammersmith"] = "blacksmith",["swordsmith"] = "blacksmith",["axesmith"] = "blacksmith",["armorsmith"] = "blacksmith",["armorsmithing"] = "blacksmith",["weaponsmith"] = "blacksmith",["goldsmith"] = "blacksmith",
["chant"] = "enchant",["ench"] = "enchant",["encht"] = "enchant",["enchants"] = "enchant",["chanter"] = "enchant",["enchanter"] = "enchant",["enchanting"] = "enchant",["henchant"] = "enchant",["encahnter"] = "enchant",["enchater"] = "enchant",["tailoring"] = "tailor",
["letherworker"] = "leatherworker",["leatherworking"] = "leatherworker",["alcemist"] = "alchemist",["eng"] = "engineer",["jw"] = "jc",
["jeweller"] = "jewelcrafter",["jewlery"] = "jewelcrafter",["jeweler"] = "jewelcrafter",["jewlerer"] = "jewelcrafter",["jewelcrafted"] = "jewelcrafter",["jewelcrafting"] = "jewelcrafter",["jewlecrafter"] = "jewelcrafter",["jewlecrafting"] = "jewelcrafter",
["agi"] = "agility",["str"] = "strength",["spir"] = "spirit",["stam"] = "stamina",["stm"] = "stamina",["int"] = "intellect",["hp"] = "health",["hlth"] = "health",
["glv"] = "gloves",["chst"] = "chest",["brc"] = "bracer",["clk"] = "cloak",["bracers"] = "bracer",["buckles"] = "buckle",["gems"] = "gem",["rings"] = "ring",
["transmutes"] = "transmute",["transmut"] = "transmute",["arcanite"] = "arcane",
["summ"] = "summon",["summons"] = "summon",["summoning"] = "summon",
["port"] = "portal",["ports"] = "portal",["sw"] = "stormwind",["darn"] = "darnassus",["uc"] = "undercity",["org"] = "orgrimmar",["orgr"] = "orgrimmar",["og"] = "orgrimmar",["tb"] = "thunderbluff",
["lockboxes"] = "lockbox",["lockpick"] = "lockbox",["lockpicking"] = "lockbox",["lockpicker"] = "lockbox",["locboxes"] = "lockbox",["locbox"] = "lockbox",["lockboxs"] = "lockbox",["boxes"] = "lockbox",["junkbox"] = "lockbox",

["resistance"] = "resist",["resistances"] = "resist",["lifestealing"] = "lifesteal",["crus"] = "crusader",["firey"] = "fiery",
["sellin"] = "selling",["sellinf"] = "selling",["services"] = "service",["working"] = "work",["tips"] = "tip",["tipp"] = "tip",["tipper"] = "tip",["crafting"] = "crafter",["crafted"] = "crafter",

["drood"] = "druid",["droods"] = "druid",["driud"] = "druid",["druids"] = "druid",
["hutner"] = "hunter",["hunters"] = "hunters",
["paly"] = "paladin",["pally"] = "paladin",["pallie"] = "paladin",["pallies"] = "paladin",["healadin"] = "paladin",["paladins"] = "paladin",
["preist"] = "priest",["priests"] = "priest",["rouge"] = "rogue",
["rogues"] = "rogue",
["shammy"] = "shaman",["shammies"] = "shaman",
["mages"] = "mage",
["warlocks"] = "warlock",["locks"] = "lock",
["warriors"] = "warrior",["warior"] = "warrior",["wariors"] = "warrior",

["rekrutuje"] = "recruiting",["recrutar"] = "recruiting",["recrute"] = "recruiting",["recruting"] = "recruiting",["recuiting"] = "recruiting",["recluta"] = "recruiting",["recrutando"] = "recruiting",
["guilds"] = "guild",["gildia"] = "guild",["gilde"] = "guild",["gilda"] = "guild",["guilde"] = "guild",["gildiyu"] = "guild",["gildenmitglieder"] = "guild",["gildii"] = "guild",["gildiya"] = "guild",["gild"] = "guild",["guldia"] = "guild",
["progresowania"] = "progression",["progresar"] = "progression",["progreso"] = "progression",["progresshez"] = "progression",["prog"] = "progression",["progress"] = "progression",
["komunity"] = "community",["komunite"] = "community",["komunita"] = "community",["comunidad"] = "community",["comunidade"] = "community",["companheiros"] = "community",["kinship"] = "community",
["raids"] = "raid",["raiding"] = "raid",

["nub"] = "noob",["noobs"] = "noob",["newbs"] = "noob",["newbies"] = "noob",
["moar"] = "more",["opeining"] = "opening",["needs"] = "need",["yours"] = "your",["twinks"] = "twink",["anyonw"] = "anyone",["anyon"] = "anyone",["lst"] = "last",
["dng"] = "dungeon",["dung"] = "dungeon",["times"] = "time",["intrested"] = "interested",["bosses"] = "boss",
["que"] = "queue",["trib"] = "tribute",["inv"] = "invite",["ginv"] = "ginvite",["carrying"] = "carry",["prices"] = "price",["tasks"] = "task",
["ignored"] = "ignored",["yelling"] = "yell",["anynbody"] = "anyone",["anybody"] = "anyone",["wtsh"] = "wts",["ned"] = "need",["applying"] = "apply",["farms"] = "farm",["boosting"] = "boost",["booster"] = "boost",["boosts"] = "boost",
["noz"] = "nozdormu",["steek"] = "steel",["plz"] = "please",["wep"] = "weapon",["weap"] = "weapon",["weapn"] = "weapon",["reputation"] = "rep",["reput"] = "rep",["neeed"] = "need",["socials"] = "social",["onl"] = "only",
["fortunes"] = "fortune",["marudon"] = "maraudon",["maradon"] = "maraudon",["maura"] = "mara",["mauradon"] = "maraudon",["taletns"] = "taletns",["levelling"] = "leveling",["levelers"] = "leveling",["lvlers"] = "leveling",["lvling"] = "leveling",

["deadmine"] = "deadmines",["deathmine"] = "deadmines",["deathmines"] = "deadmines",["vc"] = "deadmines",["vancleef"] = "deadmines",["deaadmines"] = "deadmines",
["smg"] = "smgy",["smgraveyard"] = "smgy",
["arms"] = "arm",["smarms"] = "smarm",["smarmory"] = "smarm",["sma"] = "smarm",
["cath"] = "cathedral",["smcathedral"] = "smcath",["smc"] = "smcath",["smcat"] = "smcath",
["farak"] = "farrak",
["windsor"] = "jailbreak",["emp"] = "emperor",["emperer"] = "emperor",["emporer"] = "emperor",["angerforge"] = "brd",["angerfod"] = "brd",["vaul"] = "vault",
["stratdk"] = "udstrat",["ogrimmar"] = "orgrimmar",["plz"] = "please",["pls"] = "please",["wings"] = "wing",
["ossi"] = "ossirian",["nefarien"] = "nefarian",["nefarion"] = "nefarian",
["lkh"] = "karazhan",["ukh"] = "karazhan",["khara"] = "kara",["battlegrounds"] = "battleground",
["guilneas"] = "gilneas",["gelneas"] = "gilneas",["diremail"] = "diremaul",["klavens"] = "klaven",["lbrd"] = "lbrs",["valthalaks"] = "valthalak",
["blw"] = "bwl",["bgs"] = "bg",["ambiance"] = "ambience",["razorfren"] = "razorfen",
}
GF_TWO_WORD_FIX = {
["lockboxes"] = "lockbox",["lockpick"] = "lockbox",["lockpicking"] = "lockbox",["lockpicker"] = "lockbox",
["arcbar"] = "arcane",
["thoriumlock"] = "lockbox",["ironlock"] = "lockbox",["steellock"] = "lockbox",["eterniumlock"] = "lockbox",["bronzelock"] = "lockbox",["lockedchest"] = "lockbox",["familyjewels"] = "lockbox",

["orgrimmardungeon"] = "ragefirechasm",["deadmine"] = "deadmines",["deathmine"] = "deadmines",["deathmines"] = "deadmines",["vancleef"] = "deadmines",
["smg"] = "smgy",["smgrave"] = "smgy",["smgraveyard"] = "smgy",["monasterygraveyard"] = "smgy",["scarletgraveyard"] = "smgy",["monasterygrave"] = "smgy",["monasteryarm"] = "smarm",
["blackrockdepths"] = "brd",["lavarun"] = "brd",["brdquestrun"] = "brd",["mothersmilk"] = "brd",
["warlordscommand"] = "lowerblackrock",["lowerspire"] = "lowerblackrock",["upperspire"] = "upperblackrock",
["mauleast"] = "dme",["maulnorth"] = "dmn",["maultribute"] = "dmt",["maulwest"] = "dmw",["eastdm"] = "dme",["northdm"] = "dmn",["westdm"] = "dmw",
["thechallenge"] = "brdquestrun",["golemlord"] = "brdquestrun",
["stratlive"] = "livestrat",["stralive"] = "livestrat",["startlive"] = "livestrat",["liveside"] = "livestrat",["stratscarlet"] = "livestrat",["stratud"] = "udstrat",["stratdead"] = "udstrat",
["stratun"] = "udstrat",["stratundead"] = "udstrat",["startud"] = "udstrat",["udside"] = "udstrat",
["raidboss"] = "worldboss",["worlddragon"] = "worldboss",["allwing"] = "questrun",
} -- replaces the first word but leaves the second word

GF_ONE_WORD_IGNORE = {
["channel"] = true,["lol"] = true,["lmao"] = true,["rofl"] = true,["stfu"] = true,["ignore"] = true,["website"] = true,["friendship"] = true,["teamwork"] = true,["lockbox"] = true,["gl"] = true,["talents"] = true,["talents"] = true,
["bought"] = true,["asked"] = true,["yell"] = true,["fuck"] = true,["dick"] = true,["shit"] = true,["lesbian"] = true,["afk"] = true,["box"] = true,["oranges"] = true,["leveling"] = true,["build"] = true,
["losers"] = true,["ruin"] = true,["thought"] = true,["casino"] = true,["spamming"] = true,["kalimdor"] = true,["dumb"] = true,["dumbass"] = true,["retard"] = true,["kalimdor"] = true,
} -- ["spam"] = true,
GF_TWO_WORD_IGNORE = {
["doesnobody"] = true,["bestchoice"] = true,["lockbox"] = true,["burningcrusade"] = true,["magewater"] = true,["magefood"] = true,["splitsecond"] = true,["thatguy"] = true,["howcome"] = true,["helpsummon"] = true,
}
GF_ONE_WORD_GUILD = {
["guild"] = 102,["ginvite"] = 3,["guid"] = 1,["magosh"] = 2,["recruiting"] = 2,
["monday"] = .5,["mondays"] = .5,["tuesday"] = .5,["tuesdays"] = .5,["wednesday"] = .5,["wednesdays"] = .5,["thursday"] = .5,["thursdays"] = .5,["friday"] = .5,["fridays"] = .5,["saturday"] = .5,["saturdays"] = .5,["sunday"] = .5,["sundays"] = .5,
["mon"] = .5,["tue"] = .5,["tues"] = .5,["thu"] = .5,["thur"] = .5,["thurs"] = .5,["fri"] = .5,
["dedicated"] = 1,["environment"] = 1,["membership"] = 1,["community"] = 1,["progression"] = 1,["events"] = 1,["rp"] = 1,["weekly"] = .5,["casual"] = .5,["social"] = .5,["helpful"] = .5,["ambience"] = 1,["brotherhood"] = 1,
["lgbt"] = 1,["lgbtq"] = 1,
["utc"] = .5,["cet"] = .5,["msk"] = 1,["est"] = 1,
["fr"] = 2,["fra"] = 2,["ru"] = 2,["cz"] = 2,["pl"] = 1,["na"] = 1,["au"] = 1,["ua"] = 1,["uhr"] = 1,["rus"] = 1,["eu"] = .5,
["polska"] = 1,["ukrainska"] = 1,["cesko"] = 1,["romani"] = 1,["slovenska"] = 1,["brasilia"] = 1,["bulgarski"] = 1,["hispana"] = 1,["italiana"] = 1,["magyar"] = 1,
["raidov"] = 1,["ishet"] = 1,["novacek"] = 1,["raidereket"] = 1,["priednuysia"] = 1,["primet"] = 1,["reydinga"] = 1,
["deutsche"] = 1,["deutschsprachige"] = 1,["allianz"] = 1,["mitraiden"] = 1,["sucht"] = 1,["raidkader"] = 1,["motivierte"] = 1,["raidtage"] = 1,

["leveling"] = 1,["welcoming"] = 1,["twink"] = 1,["house"] = .5,["gbank"] = 1,["tabard"] = 1,["dkp"] = 1,["adventurers"] = 1,["camaraderie"] = 1,["chill"] = .25,
}
GF_TWO_WORD_GUILD = {
["guildinvite"] = 3,["lfguild"] = 3,["guildbank"] = .5,["socialguild"] = .25,["newguild"] = .5,["newerguild"] = .5,["pvpguild"] = .5,["raidguild"] = .25,["cozyguild"] = .5,
["raidteam"] = 2,["raidgroup"] = 2,["raidtime"] = 2,["raidroster"] = 2,["raiddays"] = 2,["coreteam"] = 2,["coreroster"] = 2,["seriousmembers"] = 1,["veteranplayers"] = 1,
["wantsyou"] = 2,["welcomesyou"] = 2,["welcometo"] = 1,["enjoyleveling"] = 1,["leveltogether"] = 1,["dungeoncrawling"] = 1,["pleasantadventure"] = 2,["goodvibes"] = 2,["weeklyevents"] = .5,["pugclears"] = 2,["adultswelcome"] = .5,
["newplayers"] = 2,["newmembers"] = 2,["newlyformed"] = 2,
["lootcouncil"] = 2,["lootsystem"] = 2,["epgp"] = 2,["srms"] = .5,
["considerjoining"] = 2,["jointoday"] = 2,["joinus"] = 2,["thenjoin"] = 1,["getinfo"] = 1,["clearingcontent"] = 1,["laidback"] = .5,
["warmodeonly"] = .5,["hordeonly"] = .5,["pvpfriendly"] = 1,["pvefriendly"] = 1,
["mcclearedin"] = 1,["bwlclearedin"] = 1,["aqclearedin"] = 1,["naxxramasclearedin"] = 1,
["mcprogression"] = 1,["bwlprogression"] = 1,["aqprogression"] = 1,["naxxramasprogression"] = 1,
["vedemnabor"] = 1,["vedetsanabor"] = 1,["prohozhdeniyadanzhey"] = 1,["sovmestnoyprokachki"] = 1,
["ukrainianguild"] = 1,["russianguild"] = 1,["czsk"] = .5,["skcz"] = .5,
}
GF_THREE_WORD_GUILD = {
["friendsandguildies"] = 1,["startraidingsoon"] = 1,
["lfcasualguild"] = 3,["lfsocialguild"] = 3,["lfraidguild"] = 3,["lflevelingguild"] = 3,
["easygoingplayers"] = 2,["justgoodraid"] = 3,["ourraidteam"] = 3,
["raidwithus"] = 1.5,["joinourdiscord"] = 1,["jointoaccess"] = 1,["jointhespectacle"] = 1,["joinmyguild"] = 1,["lookingtoraid"] = .5,["lookingforraiders"] = .5,
["allcurrentcontent"] = 3,["allclasseswelcome"] = 3,["allplayerswelcome"] = 1,["forallplayers"] = .5,
["mconfarm"] = 1,["bwlonfarm"] = 1,["aqonfarm"] = 1,["naxxramasonfarm"] = 1,
["druidonlyguild"] = 1,["gnomeonlyguild"] = 1,["dwarfonlyguild"] = 1,["taurenonlyguild"] = 1,["undeadonlyguild"] = 1,["paladinonlyguild"] = 1,["trollonlyguild"] = 1,["orconlyguild"] = 1,

["vedemnaborigrokov"] = 3,["novacekciveteran"] = 2,["provodenabirgravziv"] = 2,
}
GF_FOUR_WORD_GUILD = {
["nopressurenodrama"] = 3,["lookingforaguild"] = 3,
}

GF_ONE_WORD_LFM = {
["lfm"] = 4,["lf"] = 2,["lft"] = 2,["lfr"] = 2,["wtj"] = 2,["lftank"] = 3,["lftanks"] = 3,["lfdamage"] = 3,["lfdps"] = 3,["lfdd"] = 3,["lfheal"] = 3,["lfhealer"] = 3,["lfheals"] = 3,["lfmore"] = 3,["lfall"] = 3,["lfmtribute"] = 3,
}
GF_TWO_WORD_LFM = {
["lfm"] = 4,["msos"] = 2,["lfdamage"] = 3,["lfheal"] = 3,["lftank"] = 3,
["needheal"] = 2,["comeheal"] = 2,
["needdamage"] = 2,["comedamage"] = 2,
["needtank"] = 2,["cometank"] = 2,["moretank"] = 2,["anytank"] = 2,
["needrange"] = 2,["comerange"] = 2,["morerange"] = 2,["anyrange"] = 2,
["needcaster"] = 2,["comecaster"] = 2,["morecaster"] = 2,["anycaster"] = 2,
["needmelee"] = 2,["comemelee"] = 2,["moremelee"] = 2,["anymelee"] = 2,
["anyonefor"] = 2,["anyoneneed"] = 2,["needaoe"] = 2,
["joindamage"] = 2,["joinheal"] = 2,["jointank"] = 2,
["lfhelp"] = 2,["wannahelp"] = 2,["pleasehelp"] = 2,["helpplease"] = 2,
["morespot"] = 2,["morespots"] = 2,["lastspot"] = 2,["spotleft"] = 2,["lastdamage"] = 2,["lastheal"] = 2,["lasttank"] = 2,
["summonready"] = 2,
["anyoneinterested"] = 2,
["badgefarm"] = 2,
["groupquest"] = 2,["doingquest"] = 2,["someonequest"] = 2,["repgroup"] = 2,
}
GF_THREE_WORD_LFM = {
["lfm"] = 4,["srmsos"] = 2,["groupforelite"] = 2,["lookingformore"] = 2,["lookingforquest"] = 2,["invitemefor"] = 2,["anygroupfor"] = 2,["anygroupdoing"] = 2,["wforinvite"] = 2,["whisperforinvite"] = 2,["anyforquest"] = 2,
["anygroupneed"] = 2,["anypartyneed"] = 2,["anydungeonneed"] = 2,["anyallianceneed"] = 2,["anyhordeneed"] = 2,
["needsometank"] = 2,["needsomeheal"] = 2,["needsomedamage"] = 2,
["needonlytank"] = 2,["needonlyheal"] = 2,["needonlydamage"] = 2,
["needatank"] = 2,["needaheal"] = 2,["needadamage"] = 2,
["lookingfortank"] = 4,["lookingforheal"] = 4,["lookingfordamage"] = 4,
["tanklookingfor"] = 4,["heallookingfor"] = 4,["damagelookingfor"] = 4,
["lookingforstealth"] = 2,["needastealth"] = 2,["needsomeonestealth"] = 2,
["onlytankfor"] = 2,["onlyhealfor"] = 2,["onlydamagefor"] = 2,
["onlyneedtank"] = 2,["onlyneedheal"] = 2,["onlyneeddamage"] = 2,
["anyhealfor"] = 2,["anytankfor"] = 2,["anydamagefor"] = 2,
["needlastheal"] = 2,["needlastdamage"] = 2,["needlasttank"] = 2,
["tankdamagefor"] = 2,["tankhealfor"] = 2,["healtankfor"] = 2,["healdamagefor"] = 2,["damagehealfor"] = 2,["damagetankfor"] = 2,
["lookingfordruid"] = 2,["lookingforhunter"] = 2,["lookingformage"] = 2,["lookingforpaladin"] = 2,["lookingforpriest"] = 2,["lookingforrogue"] = 2,["lookingforshaman"] = 2,["lookingforwarlock"] = 2,["lookingforlock"] = 2,["lookingforwarrior"] = 2,

["anyoneelseneed"] = 2,["anyonealsoneed"] = 2,["anyoneelsefor"] = 2,["anyoneelsedoing"] = 2,["anyoneelsequest"] = 2,["anyoneupfor"] = 2,["anyonewannado"] = 2,["anyonewannajoin"] = 2,["anyothersfor"] = 2,["anyupfor"] = 2,["anyonehelpwith"] = 2,
["ifsomeoneneed"] = 2,["someonewantsto"] = 2,["someonewannafarm"] = 2,["someoneforquest"] = 2,
["wannaahelpwith"] = 2,["wanttohelp"] = 2,["wantstohelp"] = 2,["ineedhelp"] = 2,["helpwithquest"] = 2,["willingtohelp"] = 2,["helpoutwith"] = 2,["helpmewith"] = 2,["helpmewit"] = 2,
["roomformore"] = 2,["moreneededfor"] = 2,["moreforquest"] = 3,["spotleftfor"] = 2,["slotsforquest"] = 2,["slotforquest"] = 2,
["needpeoplefor"] = 2,["morepeoplefor"] = 2,["couldusemore"] = 2,["needmorefor"] = 2,["needgroupfor"] = 2,["needpartyfor"] = 2,["wannateamup"] = 2,["comewithme"] = 2,
["interestedinrunning"] = 2,
["anymchappening"] = 2,["anybwlhappening"] = 2,["anyaqhappening"] = 2,["anynaxxhappening"] = 2,["anynaxxramashappening"] = 2,["anyonyxiahappening"] = 2,["anyzghappening"] = 2,
["anymcgoing"] = 2,["anybwlgoing"] = 2,["anyaqgoing"] = 2,["anynaxxgoing"] = 2,["anynaxxramasgoing"] = 2,["anyonyxiagoing"] = 2,["anyzggoing"] = 2,

["anykarazhanhappening"] = 2,["anykarazhangoing"] = 2,
}
GF_FOUR_WORD_LFM = {
["tankanddamagefor"] = 2,["tankandhealfor"] = 2,["healandtankfor"] = 2,["healanddamagefor"] = 2,["damageandhealfor"] = 2,["damageandtankfor"] = 2,
["lookingforatank"] = 4,["lookingforaheal"] = 4,["lookingforadamage"] = 4,["needsomerandomdamage"] = 2,
["anyonewanttorun"] = 2,["anyonewanttojoin"] = 2,["ifyouwannajoin"] = 2,["anyonethatcanhelp"] = 2,["anyonewhocanhelp"] = 2,["anygroupsgoingfor"] = 2,["anyoneneedingtodo"] = 2,
["anyonedowntohelp"] = 2,["helpwithaquest"] = 2,["comewithmequest"] = 2,["caretohelpwith"] = 2,
["anyaqccfarm"] = 2,
["anymoltencorehappening"] = 2,["anyblackwinglairhappening"] = 2,["anyworldbosshappening"] = 2,
["anymoltencoregoing"] = 2,["anyblackwinglairgoing"] = 2,["anyworldbossgoing"] = 2,
["wanttoteamup"] = 2,
}

GF_LFM_ONE_AFTER = {
["anyone"] = true,
["help"] = true,
["group"] = true,
["queue"] = true,
["join"] = true,
["heal"] = true,
["damage"] = true,
["tank"] = true,
["happening"] = true,
["going"] = true,
["gtg"] = true,
}
GF_LFM_ONE_BEFORE = {
["anyone"] = true,
["help"] = true,
["group"] = true,
["queue"] = true,
["heal"] = true,
["damage"] = true,
["tank"] = true,
["gtg"] = true,
}
GF_LFM_TWO_AFTER = {
["needhelp"] = true,
}
GF_LFM_TWO_BEFORE = {
["anyonequest"] = true,
["lookingfor"] = true,
["queuefor"] = true,
["healfor"] = true,
["damagefor"] = true,
["tankfor"] = true,
["needmore"] = true,
["needhelp"] = true,
["helpme"] = true,
["helpmy"] = true,
["lastfor"] = true,
["healfor"] = true,
["tankfor"] = true,
["damagefor"] = true,
["someonefor"] = true,
["hostinga"] = true,
["forminga"] = true,
["startinga"] = true,
}

GF_ONE_WORD_CLASSES = {
["druid"] = 0,["hunter"] = 0,["mage"] = 0,["paladin"] = 0,["priest"] = 0,["rogue"] = 0,["shaman"] = 0,["warlock"] = 0,["lock"] = 0,["warrior"] = 0,
["heal"] = 0,["tank"] = 0,["damage"] = 0,["range"] = 0,["melee"] = 0,["caster"] = 0,
}

GF_ONE_WORD_LFG = {
["lfg"] = true,
}
GF_TWO_WORD_LFG = {
["anyonedoing"] = true,["lfgtribute"] = true,
}
GF_THREE_WORD_LFG = {
["lookingforgroup"] = true,
["lookingtogroup"] = true,
["wanttogroup"] = true,
}

GF_ONE_WORD_QUEST = {
["hogger"] = 10,["vagash"] = 11,["arugals"] = 15,["pyrewood"] = 15,["murkdeep"] = 18,["mercenaries"] = 19,["gyromast"] = 20,["gyromasts"] = 20,["counterattack"] = 20,["vyrin"] = 20,["vyrins"] = 20,["arachnophobia"] = 21,["choksul"] = 22,["fenris"] = 24,
["yowler"] = 25,["tharilzun"] = 25,["stonewatch"] = 26,["gathilzogg"] = 26,["morganth"] = 27,["arugal"] = 27,["dangerous"] = 28,["arikara"] = 28,["eliza"] = 30,["steelsnap"] = 30,["hypercapacitor"] = 30,["humbert"] = 30,["nekrosh"] = 32,["morbent"] = 32,
["vorrel"] = 33,["balgaras"] = 34,["morladim"] = 35,["sindall"] = 37,["excelsior"] = 37,["bhagthera"] = 40,["tethis"] = 43,["bangalash"] = 43,["stromgarde"] = 37,["frostmaw"] = 37,["trelane"] = 39,["marez"] = 40,["falconcrest"] = 40,
["ghostoplasm"] = 39,["cyclonian"] = 40,["kurzen"] = 40,["fozruk"] = 42,["deadmire"] = 45,["oox"] = 45,["morokk"] = 45,["maizoth"] = 46,["smotts"] = 46,["gammerita"] = 48,["maltorius"] = 50,["hexx"] = 50,
["muisek"] = 50,["negolash"] = 50,["mokrash"] = 50,["mok"] = 50,["jinthaalor"] = 50,["sharpbeak"] = 51,["revantusk"] = 51,["torntusk"] = 51,["obsidion"] = 52,["gorshak"] = 52,["shadra"] = 55,["ursius"] = 56,["brumeran"] = 58,["azsharite"] = 58,
["hetaera"] = 58,["kirith"] = 58,["grark"] = 58,["winterfall"] = 59,["deathclasp"] = 59,["duskwing"] = 60,["corpulent"] = 60,["borelgore"] = 60,["courier"] = 60,["demetria"] = 60,["ascension"] = 60,["rakh"] = 60,["rakhlikh"] = 60,
["dukes"] = 60,["abyssal"] = 60,["araj"] = 60,["arajs"] = 60,["andorhal"] = 60,["fordring"] = 60,["frostmaul"] = 60,["shyrotam"] = 60,["rotam"] = 60,["bloodkelp"] = 60,["rakhlikh"] = 60,["xoroth"] = 60,["dreadsteed"] = 60,
["chimaerok"] = 63,["decoy"] = 63,["lakmaeran"] = 64,["neptulon"] = 64,["maws"] = 64,["eranikus"] = 64,["nathanos"] = 63,["blightcaller"] = 63,["darrowshire"] = 63,["elite"] = 0,["escort"] = 0,["quest"] = 0,["task"] = 0,
}
GF_TWO_WORD_QUEST = {
["collectingmemories"] = 18,["ohbrother"] = 20,["theweaver"] = 20,["lookingfurther"] = 22,["shadowmagic"] = 23,["blackrockbounty"] = 25,["eliteredridge"] = 26,["redridgeelite"] = 26,["lakeshireelite"] = 26,["elitelakeshire"] = 26,["bloodfurybloodline"] = 26,
["theden"] = 29,["hordepresence"] = 29,["hypercapacitorgizmo"] = 30,["hillsbradelite"] = 30,["elitewetlands"] = 30,["wetlandselite"] = 30,["humbertssword"] = 30,["theattack"] = 31,["thandolspan"] = 31,["vorrelsrevenge"] = 33,["grimtask"] = 34,["morladim"] = 35,
["preservingknowledge"] = 38,["crushridgewarmongers"] = 40,["brokensigil"] = 40,["thecorrupter"] = 40,["tigermastery"] = 37,["arathielite"] = 40,["elitearathi"] = 40,["panthermastery"] = 40,["raptormastery"] = 43,["khanhratha"] = 42,
["stranglethornfever"] = 45,["mindseye"] = 46,["crackingmaury"] = 44,["bloodsailbuccaneers"] = 45,["captainschest"] = 47,["jinthaalor"] = 50,["brokenalliances"] = 50,["darkvessels"] = 50,["separationanxiety"] = 50,
["cliffgiant"] = 50,["ancientegg"] = 50,["hintelite"] = 50,["hinterlandselite"] = 50,["elitehinterlands"] = 50,["flamescasing"] = 50,["commandergorshak"] = 52,["riftwalkerscane"] = 54,["dragonkinmenace"] = 54,["grarklorkrub"] = 58,
["unfinishedbusiness"] = 58,["dearestnatalia"] = 60,["fieldduty"] = 60,["targethive"] = 60,["scarletsubterfuge"] = 60,["glyphchasing"] = 62,["thecalling"] = 62,["indreams"] = 62,["lastbarov"] = 62,
["hordebarov"] = 62,["alliancebarov"] = 62,["alcazisland"] = 62,["nightmarescorruption"] = 64,["twilightcorrupter"] = 64,["doctorweavil"] = 64,["repfarm"] = 0,["reprun"] = 0,["eliteq"] = 0,["ccrep"] = 60,
}
GF_THREE_WORD_QUEST = {
["protectingtheherd"] = 12,["thepeoplesmilitia"] = 17,["lochmodanogres"] = 20,["missinginaction"] = 25,["tomeofvalor"] = 25,["thestockaderiots"] = 25,["battleofhillsbrad"] = 30,["elixirofagony"] = 30,["testofstrength"] = 30,["darkironwar"] = 30,
["legendofstalvan"] = 35,["encrustedtailfins"] = 35,["calltoarms"] = 40,["therealthreat"] = 40,["elitequestarathi"] = 40,["breakingthekeystone"] = 42,["sigiloftrollbane"] = 42,["biggamehunter"] = 43,
["crownofwill"] = 43,["crackingmaurysfoot"] = 44,["broodofonyxia"] = 45,["theravenwoodscepter"] = 46,["summontheprincess"] = 50,["setthemablaze"] = 52,["timbermawholdrep"] = 55,["afinalblow"] = 58,["dreadsteedofxoroth"] = 60,
["unfinishedgordokbusiness"] = 60,["mawofmadness"] = 60,["cenarioncombatbadge"] = 60,["combatbadgefarm"] = 60,["avastyeadmiral"] = 60,["twilightbattleorders"] = 60,["kingsofflame"] = 60,["dukeofcynders"] = 60,["theeasternplagues"] = 60,
["testofskulls"] = 62,["draconicfordummies"] = 64,
}
GF_FOUR_WORD_QUEST = {
["thecoastisntclear"] = 19,["thetestofrighteousness"] = 22,["thetowerofalthalaxx"] = 24,["howlinginthehills"] = 25,["thetomeofvalor"] = 25,["kingofthefoulweald"] = 26,["brideoftheembalmer"] = 32,["curseofthetides"] = 40,
["attackonthetower"] = 40,["handandtheheart"] = 44,["tremorsoftheearth"] = 50,["jobopeningguardcaptain"] = 51,["messageinabottle"] = 51,["dangeroustogoalone"] = 56,
["nameofthebeast"] = 58,["unitingtheshatteredamulet"] = 60,["luckbewithyou"] = 60,["ordermustberestored"] = 63,["theisleofdread"] = 64,["pathoftherighteous"] = 64,["onlyonemayrise"] = 64,["broodofnozdormurep"] = 64,
}

GF_ONE_WORD_DUNGEON = {
["rfc"] = 16,["ragefire"] = 16,["deadmines"] = 21,["dm"] = 21,["wc"] = 22,["wailingcaverns"] = 22,["blackfathom"] = 26,["bfd"] = 26,["shadowfang"] = 25,["sfk"] = 25,["stock"] = 26,["stockade"] = 26,["gnomer"] = 32,["gnomeregan"] = 32,
["kraul"] = 32,["rfk"] = 32,["razorfenkraul"] = 32,["downs"] = 40,["rfd"] = 40,["razorfendowns"] = 40,["smgy"] = 31,["lib"] = 35,["library"] = 35,["smlib"] = 35,["smarm"] = 39,["armory"] = 39,["smcath"] = 40,["cathedral"] = 40,["smfull"] = 41,
["ulda"] = 46,["uldaman"] = 46,["zf"] = 48,["zulfarrak"] = 48,["mallet"] = 50,["mara"] = 50,["maraudon"] = 50,["princess"] = 50,["st"] = 54,["sunken"] = 54,["sunkentemple"] = 54,["atalhakkar"] = 54,
["brd"] = 58,["jailbreak"] = 56,["arena"] = 55,["emperor"] = 58,["attunement"] = 60,["lbrs"] = 60,["dme"] = 57,["dmn"] = 62,["dmt"] = 62,["dmw"] = 62,["dmeast"] = 62,["dmnorth"] = 62,["dmtrib"] = 62,["dmtribute"] = 62,["dmwest"] = 62,
["scholo"] = 62,["scholomance"] = 62,["stratholme"] = 61,["baron"] = 62,["udstrat"] = 62,["livestrat"] = 62,["ubrs"] = 63,["rend"] = 63,["valthalak"] = 63,["sm"] = 0,["razorfen"] = 0,["dungeon"] = 0,["diremaul"] = 0,["blackrock"] = 0,
}
GF_TWO_WORD_DUNGEON = {
["ragefirechasm"] = 16,["deadmines"] = 21,["wailingcaverns"] = 22,["razorfenkraul"] = 32,["razorfendowns"] = 40,["smgy"] = 31,["smlib"] = 35,["smarm"] = 39,["smcath"] = 40,["smfull"] = 41,["smquestrun"] = 41,["zulfarrak"] = 48,
["sunkentemple"] = 54,["atalhakkar"] = 54,["jailbreak"] = 56,["brdquestrun"] = 58,["lowerblackrock"] = 60,["upperblackrock"] = 63,["dme"] = 57,["dmn"] = 62,["dmt"] = 62,["dmw"] = 62,["dmwest"] = 62,["dmeast"] = 62,["dmnorth"] = 62,["dmtrib"] = 62,["dmtribute"] = 62,
["livestrat"] = 62,["udstrat"] = 62,["lfstrat"] = 62,["lfmstrat"] = 62,["drakefireamulet"] = 63,["scarletmonastery"] = 0,["diremaul"] = 0,["foranything"] = 0,
}
GF_THREE_WORD_DUNGEON = {
["anunholyalliance"] = 36,["smquestrun"] = 40,["corruptionofearth"] = 51,["crumpledupnote"] = 56,["shredofhope"] = 56,["brdquestrun"] = 58,["forthehorde"] = 62,["lfmstrat"] = 62,
}
GF_FOUR_WORD_DUNGEON = {
["downthescarletpath"] = 40,["nameofthelight"] = 40,["fateofthekingdom"] = 58,["lfmstrat"] = 62,
}

GF_ONE_WORD_RAID = {
["zg"] = 64,["zulgurub"] = 64,["hakkar"] = 63,["aq"] = 64,["ahnqiraj"] = 64,["ossirian"] = 64,["cthun"] = 64,
["mc"] = 64,["moltencore"] = 64,["rag"] = 64,["ragnaros"] = 64,["onyxia"] = 64,["ony"] = 64,["bwl"] = 64,["blackwinglair"] = 64,["nefarian"] = 64,["naxx"] = 64,["naxxramas"] = 64,
["azuregos"] = 64,["kazzak"] = 64,["lethon"] = 64,["ysondre"] = 64,["taerar"] = 64,["emeriss"] = 64,["worldboss"] = 64,["lords"] = 64,
}
GF_TWO_WORD_RAID = {
["zulgurub"] = 64,["ahnqiraj"] = 64,["moltencore"] = 64,["blackwinglair"] = 64,["worldboss"] = 64,
}

GF_ONE_WORD_TRADE = {
["lf"] = 102.5,["wtb"] = 3,["wts"] = 3,["wtt"] = 3,["lfw"] = 3,["ltb"] = 3,["lts"] = 3,["lfc"] = 3,
["buy"] = .5,["buying"] = 1,["selling"] = 1,["trading"] = 1,["paying"] = 1,["price"] = .5,["craft"] = .5,["crafter"] = 1,["tipping"] = 3,["carry"] = 1,["boost"] = 1,["ratio"] = .5,["mats"] = .5,

["lw"] = .5,["leatherworker"] = .5,["enchant"] = .5,["tailor"] = .5,["blacksmith"] = .5,["engineer"] = .5,["alchemist"] = .5,["alchy"] = .5,
["crusader"] = .5,["lifesteal"] = .5,["sageblade"] = .5,["lionheart"] = .5,["titanic"] = .5,["spelldamage"] = .5,["spellpower"] = 1,["sp"] = 1,["fiery"] = .5,["resist"] = .5,["stats"] = .5,["stamina"] = .25,["agility"] = .25,
["arcanologist"] = 1.5,
["hitem"] = .5,
["lockbox"] = 1,
["summon"] = .25,["portal"] = .5,["casino"] = 1,
["stormwind"] = .25,["ironforge"] = .25,["darnassus"] = .25,
}
GF_TWO_WORD_TRADE = {
["lookingfor"] = 102.5,["lfweapon"] = 3,["lfcrusader"] = 3,["lfsummon"] = 3,["buyingsummon"] = 3,["payinggold"] = 1,["payingmoney"] = 1,["wannatrade"] = 2.5,["gearcrafter"] = 1,["fullyrestocked"] = 1,["crafterhitem"] = 1,
["summonto"] = .5,["sellingsummon"] = 3,["sellinghitem"] = 3,["sellinghenchant"] = 3,["anyoneselling"] = 2.5,["forsale"] = 2.5,["onah"] = 2.5,["inah"] = 2.5,["auctionhouse"] = 1,["wannatrade"] = 2.5,["foronly"] = 1,["gethitem"] = 1,
["smalltip"] = 1,["willtip"] = 3,["cantip"] = 2,["willpay"] = 2,["willwork"] = 3,["anytip"] = 1,["fortip"] = 1,["reasonableprice"] = .5,
["havemats"] = .5,["gotmats"] = .5,["yourmats"] = 2.5,["wannnatrade"] = 3,["attachinghitem"] = 3,["applyhitem"] = 3,["installhitem"] = 3,["installinghitem"] = 3,


["lfalchemist"] = 3,["lfenchant"] = 3,["lfbs"] = 3,["lfblacksmith"] = 3,["lfengineer"] = 3,["lftailor"] = 3,["lflw"] = 3,["lfleatherworker"] = 3,["blacksmith"] = .5,["needenchant"] = 2,["blacksmithavailable"] = 2,
["arcaneresist"] = .5,["fireresist"] = .5,["shadowresist"] = .5,["frostresist"] = .5,["natureresist"] = .5,
["enchantcloak"] = .5,["enchantchest"] = .5,["enchantbracer"] = .5,["enchantweapon"] = .5,["enchantshield"] = .5,["enchantgloves"] = .5,["enchantboots"] = .5,
["chesthealth"] = .5,["wriststamina"] = .5,["cloakagility"] = .5,["cloakresist"] = .5,["bootsstamina"] = .5,["shieldstamina"] = .5,
["strengthbracer"] = .5,["staminabracer"] = .5,["intellectbracer"] = .5,["agilitygloves"] = .5,["agilityboots"] = .5,["glovesagility"] = .5,["bootsagility"] = .5,
["allstats"] = .5,["ridingskill"] = .5,["mithrilspurs"] = .5,["spelldamage"] = .5,["spellpower"] = 1,["healpower"] = 1,["minorspeed"] = .5,["shieldspike"] = .5,["majorhealth"] = .5,["majormana"] = .5,["lesserblock"] = .5,["weapondamage"] = .5,
["firedamage"] = .5,["frostdamage"] = .5,["shadowdamage"] = .5,["arcanedamage"] = .5,["naturedamage"] = .5,["agilityenchant"] = .5,["strengthenchant"] = .5,["healenchant"] = 1,

["transmutearcane"] = 1,["arcanetransmute"] = 1,
["freelockbox"] = 2,["lflockbox"] = 2,["lockboxservice"] = 2,["openinglockbox"] = 2,["lflocksmith"] = 2,["pickinglock"] = 1,
["summonservice"] = 3,["gsummon"] = 3,["offeringsummon"] = 3,["carryservice"] = 3,["keyservice"] = 3,["enchantservice"] = 3,["enchanterinorgrimmar"] = 2.5,
["allrecipes"] = 3,["cloakall"] = 3,
["orgrimmarbank"] = 2,["banksteps"] = 2,["ahbridge"] = 2,["ifbridge"] = 2,["ahdoor"] = 2,["stormwindbank"] = 2,["outsideah"] = 1,["instormwind"] = .5,

["getenchant"] = 1,["withenchant"] = 1,
["bestodds"] = 1,

["stormwindportal"] = 2,["darnassusportal"] = 2,["ironforgeportal"] = 2,["ifportal"] = 2,["orgrimmarportal"] = 2,["undercityportal"] = 2,["thunderbluffportal"] = 2,
}
GF_THREE_WORD_TRADE = {
["wanttobuy"] = 2.5,["wanttosell"] = 2.5,["wanttotrade"] = 2.5,["getyourhitem"] = 1,["getyourhenchant"] = 1,["iwillenchant"] = 2,
["yourmatstip"] = 3,["workfortip"] = 3,
["lookingforwork"] = 3,["lookingtobuy"] = 3,["lookingtosell"] = 3,["lookingforcrafter"] = 3,["whocancraft"] = 1.5,

["createaportal"] = 2,["needaportal"] = 2,
["portaltostormwind"] = 1,["portaltoironforge"] = 1,["portaltoif"] = 1,["portaltodarnassus"] = 1,["portaltoorgrimmar"] = 1,["portaltoundercity"] = 1,["thunderbluffportal"] = 1,["portaltothunderbluff"] = 1,["portaltothunder"] = 1,

["anyblacksmithavailable"] = 1,["blacksmithattachhitem"] = 3,["someonetoattach"] = 3,["cananyoneapply"] = 2,["applyspurs"] = 2.5,["applyahitem"] = 3,["anyenchantonline"] = 3,["cananyoneattach"] = 3,["cansomeoneattach"] = 3,
["openingalllockbox"] = 3,["openinghitemlockbox"] = 3,["openhitemlockbox"] = 3,["openyourlockbox"] = 2,["openyourlock"] = 1,["openingyourlockbox"] = 3,["alllockboxes"] = 3,["cananyoneopen"] = 2,["needlockboxopened"] = 3,["openalockbox"] = 2,["abletoopen"] = 2,
["movespeedboots"] = 1,["movementspeedboots"] = 1,["minorspeedboots"] = 1,

["agilityonhead"] = 1,["agilitytohead"] = 1,["agilityonlegs"] = 1,["agilitytolegs"] = 1,["strengthonhead"] = 1,["strengthtohead"] = 1,["strengthonlegs"] = 1,["strengthtolegs"] = 1,["agilityongloves"] = .5,["agilitytogloves"] = .5,
["agilityonboots"] = 1,["agilitytoboots"] = 1,
["sellingslotbags"] = 3,["bagonah"] = 3,
["arcanebartransmute"] = 1,
["payinggoldsummon"] = 2,["payingmoneysummon"] = 2,["gotasummon"] = 1,
["freehyjalsummon"] = 2,["lfhyjalsummon"] = 2,["lfhydraxiansummon"] = 3,["needhyjalsummon"] = 2,["anyhyjalsummon"] = 2,

["tomakeme"] = 1,["goodsandservices"] = 1,

["doubleyourgold"] = 1.5,["tripleyourgold"] = 1.5,["playsomecasino"] = 3,["testyourluck"] = 3,["tryyourluck"] = 3,["getrichnow"] = 3,
}
GF_TRADE_ONE_WORD_EXCLUSION = {
["tank"] = true,["range"] = true,["melee"] = true,
["hr"] = true,["ms"] = true,["os"] = true,
["lfm"] = true,["lfg"] = true,
["discord"] = true,
["reserved"] = true,
["rules"] = true,
["raidres"] = true,
["utc"] = true,["cet"] = true,
["bored"] = true,
["discord"] = true,
["recruiting"] = true,
["quest"] = true,
["utc"] = true,["cet"] = true,["msk"] = true,["est"] = true,["cst"] = true,
}
GF_TRADE_TWO_WORD_EXCLUSION = {
["runme"] = true,["carryme"] = true,["gotroom"] = true,["eachrole"] = true,
}
GF_ONE_WORD_PVP = {
["av"] = 0,["ab"] = 0,["wsg"] = 0,["battleground"] = 0,["warsong"] = 0,["premade"] = 0,["bg"] = 0,
}
GF_TWO_WORD_PVP = {
["arathibasin"] = 0,
["alteracvalley"] = 0,
}
GF_STRING_FIND_LIST = {
	["LFM"] = {},
	["GUILDBLOCKLIST"] = {},
}	-- Buttons... (1) The name on the dropdowns. (2/3) Level minimum/maximum for showing on dropdowns. (4) Alternate spelling for LFG FixStrings. (5) The Instance name on the /Who List(to not whisper people already in dungeons). (6) The actual Dungeon Level.
GF_BUTTONS_LIST = {
	["SearchList"] = {
		[1] = { "Ragefire Chasm", 10, 18, "rfc", "ragefirechasm", },
		[2] = { "Deadmines", 15, 25, "deadmines", "dm", },
		[3] = { "Wailing Caverns", 16, 26, "wc", "wailingcaverns", },
		[4] = { "Blackfathom Deeps", 20, 30, "bfd", "blackfathom", },
		[5] = { "Shadowfang Keep", 20, 30, "sfk", "shadowfang", },
		[6] = { "Stockades", 20, 30, "stock", "stockade", },
		[7] = { "Gnomeregan", 26, 36, "gnomer", "gnomeregan",},
		[8] = { "Razorfen Kraul", 26, 36, "rfk", "kraul", "razorfenkraul", "razorfen", },
		[9] = { "Razorfen Downs", 35, 45, "rfd", "downs", "razorfendowns", "razorfen", },
		[10] = { "SM Graveyard", 26, 36, "smgy", "sm", },
		[11] = { "SM Library", 30, 42, "lib", "library", "smlib", "smfull", "smquestrun", "sm", },
		[12] = { "SM Armory", 34, 44, "smarm", "armory", "smfull", "smquestrun", "sm", },
		[13] = { "SM Cathedral", 35, 46, "smcath", "cathedral", "smfull", "smquestrun", "sm", },
		[14] = { "Uldaman", 38, 50, "ulda", "uldaman", },
		[15] = { "Zul'Farrak", 42, 54, "zf", "zulfarrak", "mallet", },
		[16] = { "Maraudon", 43, 55, "mara", "maraudon", "princess", },
		[17] = { "Sunken Temple", 47, 58, "st", "sunken", "sunkentemple", "atalhakkar"},
		[18] = { "Blackrock Depths", 48, 60, "brd", "jailbreak", "arena", "emperor", "attunement", "brdquestrun" },
		[19] = { "Lower Blackrock Spire", 52, 60, "lbrs", "lowerblackrock", },
		[20] = { "Dire Maul East", 50, 60, "dme", "dmeast", "diremaul" },
		[21] = { "Dire Maul North", 54, 60, "dmn", "dmnorth", "diremaul" },
		[22] = { "Dire Maul West", 55, 60, "dmw", "dmwest", "diremaul" },
		[23] = { "Dire Maul Tribute", 54, 60, "dmt", "dmtrib", "dmtribute", "diremaul" },
		[24] = { "Scholomance", 55, 60, "scholo", "scholomance", },
		[25] = { "Stratholme", 55, 60, " strat ", "stratholme", "udstrat", "livestrat", "baron", },
		[26] = { "Upper Blackrock Spire", 55, 60, "ubrs", "upperblackrock", "drakefireamulet", "rend", "valthalak", },
		[27] = { "40-man Raids", 58, 60, "mc", "moltencore", "rag", "ragnaros", "ony", "onyxia", "blackwinglair", "bwl", "nefarian", "aq", "ahnqiraj", "cthun", "naxx", "naxxramas", "azuregos", "kazzak", "lethon", "ysondre", "taerar", "emeriss", "worldboss", "lords", },
		[28] = { "20-man Raids", 58, 60, "zg", "zulgurub", "hakkar", "aq", "ahnqiraj", "ossirian", },
		[29] = { "PvP", 18, 60, "premade", "av", "ab", "wsg", "battleground", "warsong", "alteracvalley", "arathibasin", },
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
GF_MonsterEmoteFilters = {
	[1]	= "attempts to run away in fear",
}
GF_SystemMessageFilters = {
	[1]	= "has completed that quest",
	[2]	= "is not eligible for that quest",
	[3]	= "is already on that quest",
	[4]	= "Sharing quest with",
	[5]	= "is too far away to receive your quest",
	[6]	= "to join your group.",
	[7]	= "is already in a group.",
	[8]	= "RMT",
	[9]	= "Discord",
}
GF_LootFilters = {
["GREEN"] = {
	[1] = "selected greed", -- filter these if green quality or lower
	[2] = "selected need",
	[3] = "passed on",
	[4] = "greed roll",
	[5] = "need roll",
},
["BLUE"] = {
	[1] = "greed roll",
	[2] = "need roll",
},
["PURPLE"] = {
	[1] = "greed roll",
	[2] = "need roll",
},
}

-- Turtle additions
GF_HIGH_ELF				= "High Elf";
GF_GOBLIN				= "Goblin";
local GF_TURTLE_ONE_WORD_GUILD = {
}
local GF_TURTLE_TWO_WORD_GUILD = {

}--["mixedpickles"] = 3,["texasknights"] = 3,["texasknlghts"] = 3,["potatooverlords"] = 3,["slightlyturtle"] = 3,["secondbreath"] = 3,
local GF_TURTLE_THREE_WORD_GUILD = {

}--["doiswrynn"] = 3,["wesmokefelweed"] = 3,["localnicecrew"] = 3,["lfhcguild"] = 3,
local GF_TURTLE_ONE_WORD_QUEST = {
["kingsbane"] = 10,["alverold"] = 20,["klaven"] = 24,["palkeote"] = 39,["almaudrak"] = 40,["sorrowclaw"] = 41,["snarlclaw"] = 44,["ravenwood"] = 45,["gelwig"] = 48,["gelweg"] = 48,["zefek"] = 48,["janira"] = 50,["vilegrip"] = 51,["vilegrips"] = 51,
["lykourgos"] = 53,["hazzuri"] = 54,["tanglemoss"] = 54,["lapidis"] = 55,["fearoth"] = 55,["xanthar"] = 60,["krampus"] = 60,["solnius"] = 60,["xanvarak"] = 60,["morogo"] = 60,["bovarkez"] = 60,["shadowtooth"] = 61,
}
local GF_TURTLE_TWO_WORD_QUEST = {
["anchorsend"] = 17,["cuttingranks"] = 19,["magicalinterference"] = 20,["hawksvigil"] = 24,["dragonkinannoyance"] = 25,["strangebedfellows"] = 25,["shadowwell"] = 30,["returningproperty"] = 35,["lingeringmother"] = 39,
["cleaningjob"] = 40,["fearincarnate"] = 41,["draconicpresence"] = 43,["scalebaneridge"] = 43,["ladyjanira"] = 50,["tinkersparktransponder"] = 54,["kroshius"] = 55,["hermitswrath"] = 55,["uncoveringevil"] = 55,["azurescale"] = 55,["precariouspredicament"] = 58,["darkwhisperculling"] = 60,
["upperbinding"] = 60,["hostileenvoys"] = 60,["barkskintribe"] = 60,["therace"] = 60,
}
local GF_TURTLE_THREE_WORD_QUEST = {
["destroyingventureco"] = 9,["venturecoleadership"] = 9,["deepbluesea"] = 13,["masteringtheformula"] = 14,["churchofwestfall"] = 22,["thelosttablets"] = 30,["thefinalstrike"] = 31,
["themortalstrike"] = 31,["rootingoutevil"] = 37,["securingthekeep"] = 40,["securingtheroads"] = 40,["unforgottenandunforgiven"] = 40,["orboforahil"] = 40,["ragingoceansblue"] = 41,
["justicefordustwallow"] = 43,["baneofscalebane"] = 44,["undoingthecurse"] = 44,["staffofshinban"] = 45,["magicofdragons"] = 45,["revengeafterdeath"] = 47,["minersunionmutiny"] = 50,
["decimatetheirranks"] = 50,["theaquastone"] = 51,["dampeningmustend"] = 52,["bigenergyproject"] = 54,["stopthedragonflight"] = 56,["huntthehunter"] = 57,["legendofeskhandar"] = 58,
["felenergyirregularities"] = 60,["intothedream"] = 60,["inarush"] = 60,["scouringthedesert"] = 60,["therunestonescepter"] = 60,["theeternalsleeper"] = 60,
}
local GF_TURTLE_FOUR_WORD_QUEST = {
["leadersofthereefscale"] = 10,["terrorofchillbreeze"] = 11,["falloftheusurper"] = 20,["painttherosesred"] = 29,["andjusticeforall"] = 43,["headofthehunters"] = 44,["plightofthesandfury"] = 48,["inabookonce"] = 49,["bringdownthepriestess"] = 50,
["lightfalluponthee"] = 56,["killingthetidelord"] = 56,["strengthtomovemountains"] = 58,["oftheblueflight"] = 60,["scytheofthegoddess"] = 60,["fateoftheharborage"] = 60,["cavernsoftimerep"] = 60,
["underthevibrantmoonlight"] = 60,["terrorofthewebweavers"] = 60,["thedepthsofkarazhan"] = 63,
}
local GF_TURTLE_ONE_WORD_DUNGEON = {
["crescent"] = 36,["grove"] = 36,["cg"] = 36,["tcg"] = 36,["gc"] = 48,["gilneas"] = 48,["hateforge"] = 56,["quarry"] = 56,["hq"] = 56,["hfq"] = 56,["sv"] = 62,["swv"] = 62,["vault"] = 62,["morass"] = 62,["bm"] = 62,["cot"] = 62,
["crypt"] = 63,["karacrypts"] = 63,["es"] = 63,["sanctum"] = 63,
}
local GF_TURTLE_TWO_WORD_DUNGEON = {
["dragonmawretreat"] = 30,["gilcity"] = 48,["hateforge"] = 56,["swv"] = 62,
}
local GF_TURTLE_THREE_WORD_DUNGEON = {
["rothlenfamilybrooch"] = 60,["cavernsoftime"] = 62,["thewhitestag"] = 62,["theprisonsbindings"] = 62,
}
local GF_TURTLE_ONE_WORD_RAID = {
["kara"] = 64,["karazhan"] = 64,["concavius"] = 64,["ostarius"] = 64,["nerub"] = 64,["reaver"] = 64,["clackora"] = 64,
}
local GF_TURTLE_ONE_WORD_TRADE = {
["jc"] = .5,["jf"] = .5,["jcs"] = .5,["jwc"] = .5,["jcraft"] = .5,["jcrafter"] = .5,["jcrafting"] = .5,["jewelcrafter"] = 1,["gem"] = .5,["gemstone"] = .5,["winterspring"] = .5,["hyjal"] = .5,["hydraxian"] = .5,
}
local GF_TURTLE_TWO_WORD_TRADE = {
["jewelcraft"] = .5,["jewelcrafter"] = .5,["lfjewelcrafter"] = 3,["lfjc"] = 3,["mastergemologist"] = 2,["mastergemonologist"] = 2,["allgem"] = 1,
["attachingintellect"] = 3,["beltbuckle"] = 1,["damageneck"] = .5,["statstrinket"] = 1,["ringagility"] = 1,["agilityonring"] = 1,
["ringenchant"] = 1,["enchantring"] = 1,["neckenchant"] = 1,["enchantneck"] = 1,["toring"] = .5,["toneck"] = .5,
["cosmiccloth"] = .5,["etherealleather"] = .5,["shadowforgedeye"] = 1,
["winterspringportal"] = 1,["swampportal"] = 1,["theramoreportal"] = 1,["alahthalasportal"] = 1,["hydraxianportal"] = 1,
["pinkyservice"] = 2,
}
local GF_TURTLE_THREE_WORD_TRADE = {
["portaltowinterspring"] = 1,["portaltoswamp"] = 1,["portaltotheramore"] = 1,["portaltoat"] = 1.5,["portaltoalahthalas"] = 1.5,["summontohyjal"] = 1,
["attachingbeltbuckle"] = 3,["intellectbeltbuckle"] = 2,["intellecttobelt"] = 2,["intellectonbelt"] = 1,["onyourbelt"] = 1,["lfagilitywaist"] = 3,["lfagilitybelt"] = 3,["lfintellectwaist"] = 3,["allbeltbuckle"] = 3,
["agilitybeltbuckle"] = 2,["agilitytobelt"] = 2,["agilityonbelt"] = 1,
["hordeoralliance"] = 1,
["jcwithhitem"] = 3,
["strengthtoring"] = 1,["agilitytoring"] = 1,["strengthtoneck"] = 1,["agilitytoneck"] = 1,
}
local GF_TURTLE_STRING_FIND_LIST_GUILDBLOCKLIST = { "<menu>" }
local GF_TurtleSearchList = {
		[1] = { "Crescent Grove", 32, 38, "crescent", "grove", "cg", "tcg", },
		[2] = { "Gilneas City", 43, 49, "gilneas", "gc", "gilcity", },
		[3] = { "Hateforge Quarry", 52, 60, "hateforge", "quarry", "hf", "hfq", },
		[4] = { "Stormwind Vault", 58, 60, "vault", "sv", "swv", },
		[5] = { "Black Morass", 58, 60, "morass", "bm", "cot", "cavernsoftime", },
		[6] = { "Karazhan Crypt", 60, 60, "crypt", "karacrypts", },
		[7] = { "Emerald Sanctum", 60, 60, "sanctum", "es", },
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
} -- [3] = { "AQ15", 1, 60, "aq15", "Ruins of Ahn'Qiraj", 63, 20, },
local GF_TurtleSearchListNew40RaidString = { "40-man Raids", 60, 60, "mc", "moltencore", "rag", "ragnaros", "ony", "onyxia", "blackwinglair", "bwl", "nefarian", "aq", "ahnqiraj", "cthun", "naxx", "naxxramas", "azuregos", "kazzak", "lethon", "ysondre", "taerar", "emeriss", "worldboss", "lords",
											"kara", "karazhan", "concavius", "ostarius", "nerub", "reaver", "clackora", }
local GF_TurtleSearchListNew20RaidString = { "20-man Raids", 58, 60, "zg", "zulgurub", "hakkar", "aq", "ahnqiraj", "ossirian", "kara", "karazhan", }
function GF_AddTurtleWoWDungeonsRaids()
	for word,_ in GF_TURTLE_ONE_WORD_GUILD do GF_ONE_WORD_GUILD[word] = GF_TURTLE_ONE_WORD_GUILD[word]; end
	for word,_ in GF_TURTLE_TWO_WORD_GUILD do GF_TWO_WORD_GUILD[word] = GF_TURTLE_TWO_WORD_GUILD[word]; end
	for word,_ in GF_TURTLE_THREE_WORD_GUILD do GF_THREE_WORD_GUILD[word] = GF_TURTLE_THREE_WORD_GUILD[word]; end

	for word,_ in GF_TURTLE_ONE_WORD_QUEST do GF_ONE_WORD_QUEST[word] = GF_TURTLE_ONE_WORD_QUEST[word]; end
	for word,_ in GF_TURTLE_TWO_WORD_QUEST do GF_TWO_WORD_QUEST[word] = GF_TURTLE_TWO_WORD_QUEST[word]; end
	for word,_ in GF_TURTLE_THREE_WORD_QUEST do GF_THREE_WORD_QUEST[word] = GF_TURTLE_THREE_WORD_QUEST[word]; end
	for word,_ in GF_TURTLE_FOUR_WORD_QUEST do GF_FOUR_WORD_QUEST[word] = GF_TURTLE_FOUR_WORD_QUEST[word]; end

	for word,_ in GF_TURTLE_ONE_WORD_DUNGEON do GF_ONE_WORD_DUNGEON[word] = GF_TURTLE_ONE_WORD_DUNGEON[word]; end
	for word,_ in GF_TURTLE_TWO_WORD_DUNGEON do GF_TWO_WORD_DUNGEON[word] = GF_TURTLE_TWO_WORD_DUNGEON[word]; end
	for word,_ in GF_TURTLE_THREE_WORD_DUNGEON do GF_THREE_WORD_DUNGEON[word] = GF_TURTLE_THREE_WORD_DUNGEON[word]; end
	for word,_ in GF_TURTLE_ONE_WORD_RAID do GF_ONE_WORD_RAID[word] = GF_TURTLE_ONE_WORD_RAID[word]; end

	for word,_ in GF_TURTLE_ONE_WORD_TRADE do GF_ONE_WORD_TRADE[word] = GF_TURTLE_ONE_WORD_TRADE[word]; end
	for word,_ in GF_TURTLE_TWO_WORD_TRADE do GF_TWO_WORD_TRADE[word] = GF_TURTLE_TWO_WORD_TRADE[word]; end
	for word,_ in GF_TURTLE_THREE_WORD_TRADE do GF_THREE_WORD_TRADE[word] = GF_TURTLE_THREE_WORD_TRADE[word]; end

	for i=1, getn(GF_TURTLE_STRING_FIND_LIST_GUILDBLOCKLIST) do table.insert(GF_STRING_FIND_LIST.GUILDBLOCKLIST, GF_TURTLE_STRING_FIND_LIST_GUILDBLOCKLIST[i]); end

	GF_BUTTONS_LIST.SearchList[27] = GF_TurtleSearchListNew40RaidString;
	GF_BUTTONS_LIST.SearchList[28] = GF_TurtleSearchListNew20RaidString;
	--GF_BUTTONS_LIST.LFGRaid[7] = { "AQ15", 1, 60, "aq15", "Ruins of Ahn'Qiraj", 63, 20, }
	for i=1, getn(GF_TurtleSearchList) do table.insert(GF_BUTTONS_LIST.SearchList, 27, GF_TurtleSearchList[i]); end
	for i=1, getn(GF_TurtleGroupButtonsListDungeons) do table.insert(GF_BUTTONS_LIST.LFGDungeon, 28, GF_TurtleGroupButtonsListDungeons[i]); end
	for i=1, getn(GF_TurtleGroupButtonsListRaids) do table.insert(GF_BUTTONS_LIST.LFGRaid, 8, GF_TurtleGroupButtonsListRaids[i]); end
end