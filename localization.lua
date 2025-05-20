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
GF_30_MAN				= "30-man";
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
GF_SYSTEM_FILTER		= "Enable System Filtering"
GF_SPAM_FILTER			= "Enable Spam Filtering"
GF_AUTO_BLACKLIST		= "Enable Auto Blacklist"
GF_SHOW_ORIGINAL_CHAT	= "Show Unformatted Chat"
GF_ALWAYS_SHOW_GUILD	= "Always Show Guild/Friends"
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
	tooltip1 		= "Search by keywords", 
	tooltip2 		= "Filters your group list using this text. Separate by commas for multiple searches(e.g. dm, ubrs, scholo, etc)." },

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
GF_FrameSpamFilterCheckButton = {
	tooltip1 		= "Spam Filter",
	tooltip2 		= "When checked, if the same message is repeated more than once within the 'spam flag clear time', non-group messages from that player will be blocked(except friends/guildies/party members)." },
GF_FrameAutoBlacklistCheckButton = {
	tooltip1 		= "Blacklist Filter",
	tooltip2 		= "When checked, players who repeat the same message repeatedly(more than 120 characters) and who are below the 'auto blacklist maximum level' will be permanently added to the blacklist." },
GF_FrameShowOriginalChatCheckButton = {
	tooltip1 		= "Show Original Chat",
	tooltip2 		= "When checked, chat messages will be shown in their original format instead of with class colors/levels. In addition, \"/auto Who\" will no longer search names from chat(search groups only)." },
GF_FrameAlwaysShowGuildCheckButton = {
	tooltip1 		= "Always Show Guild/Friends",
	tooltip2 		= "When checked, \"channel\" and \"yell\" messages from guildies/friends/party members will always be shown. Ignoring chat filters." },

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
GF_WORD_SKIP = {
["x"] = true,["ii"] = true,["iii"] = true,["iv"] = true,["vi"] = true,["vii"] = true,["viii"] = true,["ix"] = true,
}
GF_WORD_FIX = {
["healz"] = "heal",["heals"] = "heal",["healer"] = "heal",["healers"] = "heal",["healere"] = "heal",["healre"] = "heal",["xheal"] = "heal",["mheal"] = "heal",["heaer"] = "heal",["healler"] = "heal",["heler"] = "heal", -- Roles
["dmg"] = "damage",["dps"] = "damage",["dpss"] = "damage",["dd"] = "damage",["dds"] = "damage",["deeps"] = "damage",["xdamage"] = "damage",["damagg"] = "damage",["mdamage"] = "damage",["dpser"] = "damage",["dpsers"] = "damage",
["tanks"] = "tank",["mt"] = "tank",["ot"] = "tank",["tankd"] = "tank",["xtank"] = "tank",["mtank"] = "tank",["tnak"] = "tank",["tanmk"] = "tank",["tanking"] = "tank",
["ranged"] = "range",["rdps"] = "range",["casters"] = "caster",["melees"] = "melee",["mdps"] = "melee",["stealthie"] = "stealth",["stealthy"] = "stealth",

["lfgm"] = "lfm",["glfm"] = "lfm",["glf"] = "lfm",["flm"] = "lfm",["ldg"] = "lfm",["lfp"] = "lfm",["lfms"] = "lfm",["lfmr"] = "lfm",["lkm"] = "lfm", -- LFM/LFG and related terms
["fg"] = "lfg",["lofg"] = "lfg",["flg"] = "lfg",["lgf"] = "lfg",["lfh"] = "lfg",["lg"] = "lfg",["glf"] = "lfg",["lsg"] = "lfg",["lfa"] = "lf",["lfan"] = "lf",
["lfmenchant"] = "lfenchant",["lfmenhancement"] = "lfenhancement",["lfmleatherworker"] = "lfleatherworker",["lfmtailor"] = "lftailor",["lfmblacksmith"] = "lfblacksmith",
["lfmengineer"] = "lfengineer",["lfmalchemist"] = "lfalchemist",["lfmsummon"] = "lfsummon",["lfmjewelcrafter"] = "lfjewelcrafter",
["lfgenchant"] = "lfenchant",["lfgenhancement"] = "lfenhancement",["lfgleatherworker"] = "lfleatherworker",["lfgtailor"] = "lftailor",["lfgblacksmith"] = "lfblacksmith",
["lfgengineer"] = "lfengineer",["lfgalchemist"] = "lfalchemist",["lfgsummon"] = "lfsummon",["lfgjewelcrafter"] = "lfjewelcrafter",

["grp"] = "group",["grps"] = "group",["groups"] = "group",["party"] = "group",["parti"] = "group",
["hquest"] = "quest",["quests"] = "quest",["questing"] = "quest",["quets"] = "quest",["qujests"] = "quest",["tasks"] = "task",

["bs"] = "blacksmith",["blacksmither"] = "blacksmith",["blacksmithing"] = "blacksmith",["hammersmith"] = "blacksmith",["swordsmith"] = "blacksmith",["blacmiting"] = "blacksmith", -- Professions and Trades
["axesmith"] = "blacksmith",["armorsmith"] = "blacksmith",["armorsmithing"] = "blacksmith",["weaponsmith"] = "blacksmith",["goldsmith"] = "blacksmith",["blacsmiting"] = "blacksmith",["blacksmiting"] = "blacksmith",
["chant"] = "enchant",["ench"] = "enchant",["encht"] = "enchant",["enchants"] = "enchant",["chanter"] = "enchant",["enchanter"] = "enchant",["enchanters"] = "enchant",["ecnharter"] = "enchant",["enchjanter"] = "enchant",["echnater"] = "enchant",
["enchanting"] = "enchant",["henchant"] = "enchant",["encahnter"] = "enchant",["enchater"] = "enchant",["inchant"] = "enchant",["eanchat"] = "enchant",["enhancements"] = "enhancement",
["tailoring"] = "tailor",["tailorer"] = "tailor",["tailorere"] = "tailor",["lw"] = "leatherworker",["letherworker"] = "leatherworker",["leatherworking"] = "leatherworker",["lwer"] = "leatherworker",
["alcemist"] = "alchemist",["alchy"] = "alchemist",["alch"] = "alchemist",["eng"] = "engineer",["engi"] = "engineer",
["agi"] = "agility",["gai"] = "agility",["aggi"] = "agility",["str"] = "strength",["spir"] = "spirit",["stam"] = "stamina",["stm"] = "stamina",["int"] = "intellect",["hp"] = "health",
["hlth"] = "health",["sp"] = "spellpower",["chains"] = "chain",["def"] = "defense",["hands"] = "hand",["glv"] = "gloves",["golves"] = "gloves",["glove"] = "gloves",["chst"] = "chest",["buckles"] = "buckle",["buckel"] = "buckle",["bucle"] = "buckle",
["brc"] = "wrist",["wri"] = "wrist",["wrists"] = "wrist",["bracer"] = "wrist",["bracers"] = "wrist",["bracelet"] = "wrist",["bracelets"] = "wrist",["rings"] = "ring",["clk"] = "cloak",["gems"] = "gem",["spikes"] = "spike",
["onring"] = "toring",["onhead"] = "tohead",["ongloves"] = "togloves",["onlegs"] = "tolegs",["onboots"] = "toboots",["oncloak"] = "tocloak",["onwrist"] = "towrist",["onbelt"] = "tobelt",["onweapon"] = "toweapon",["onshield"] = "toshield",
["onchest"] = "tochest",["onneck"] = "toneck",["boot"] = "boots",["wep"] = "weapon",["weap"] = "weapon",["weapn"] = "weapon",["pants"] = "legs",["helm"] = "head",
["forring"] = "toring",["forhead"] = "tohead",["forgloves"] = "togloves",["forlegs"] = "tolegs",["forboots"] = "toboots",["forcloak"] = "tocloak",["forwrist"] = "towrist",["forbelt"] = "tobelt",["forweapon"] = "toweapon",["forshield"] = "toshield",
["forchest"] = "tochest",["forneck"] = "toneck",

["transmutes"] = "transmute",["transmut"] = "transmute",["trasmute"] = "transmute",["trasmutes"] = "transmute",["arcanite"] = "arcane",
["summ"] = "summon",["summons"] = "summon",["summoning"] = "summon",["summmons"] = "summon",["summs"] = "summon",["summing"] = "summon",["summin"] = "summon",["summv"] = "summon",["sums"] = "summon",
["tp"] = "portal",["prtal"] = "portal",["portl"] = "portal",["port"] = "portal",["ports"] = "portal",["teleport"] = "portal",["protal"] = "portal",["mageportal"] = "portal",["portaltothe"] = "portalto",
["picker"] = "pick",["picking"] = "pick",["locking"] = "lock",["locker"] = "lock",["lp"] = "lockbox",["låslådor"] = "lockbox",["lockboxes"] = "lockbox",["lockpick"] = "lockbox",["lockp"] = "lockbox",
["lockpicker"] = "lockbox",["lockpicking"] = "lockbox",["picklock"] = "lockbox",["picklocker"] = "lockbox",["pickinglock"] = "lockbox",["locboxes"] = "lockbox",["locbox"] = "lockbox",["lockboxs"] = "lockbox",
["lootbox"] = "lockbox",["lootboxes"] = "lockbox",["boxes"] = "lockbox",["junkbox"] = "lockbox",["locked"] = "lock",
["resistance"] = "resist",["resistances"] = "resist",["lifestealing"] = "lifesteal",["crus"] = "crusader",["crusaders"] = "crusader",["firey"] = "fiery",
["wttb"] = "wtb",["wtts"] = "wts",["wtbb"] = "wtb",["wtss"] = "wts",["wttt"] = "wtt",["wtsh"] = "wts",["prices"] = "price",["sellin"] = "selling",["sellinf"] = "selling",["selll"] = "sell",["services"] = "service",
["working"] = "work",["tips"] = "tip",["tipp"] = "tip",["tipper"] = "tip",["crafting"] = "crafter",["crafted"] = "crafter",["auct"] = "ah",
["boosting"] = "boost",["booster"] = "boost",["boosts"] = "boost",["carrying"] = "carry",["fortunes"] = "fortune",["sercives"] = "service",["sercive"] = "service",["cd"] = "cooldown",

["sw"] = "stormwind",["tb"] = "thunderbluff",["irongforge"] = "ironforge",["darn"] = "darnassus",["uc"] = "undercity",["undercitry"] = "undercity",["undercirty"] = "undercity",
["org"] = "orgrimmar",["orgr"] = "orgrimmar",["og"] = "orgrimmar",["ogri"] = "orgrimmar",["orgtimar"] = "orgrimmar",["ogrimmar"] = "orgrimmar",

["drood"] = "druid",["droods"] = "druid",["driud"] = "druid",["druids"] = "druid",["rdruid"] = "druid",["boomkin"] = "druid",["boomie"] = "druid", -- Classes
["hutner"] = "hunter",["hunters"] = "hunters",["bmhunter"] = "hunter",["mmhunter"] = "hunter",
["paly"] = "paladin",["pally"] = "paladin",["pallie"] = "paladin",["pallies"] = "paladin",["healadin"] = "paladin",["paladins"] = "paladin",["hpaladin"] = "paladin",["hpally"] = "paladin",["retpally"] = "paladin",
["mages"] = "mage",["frostmage"] = "mage",["firemage"] = "mage",["arcanemage"] = "mage",
["preist"] = "priest",["priests"] = "priest",["spriest"] = "priest",["hpriest"] = "priest",
["rogues"] = "rogue",["rog"] = "rogue",["roges"] = "rogue",["rouge"] = "rogue",["rouges"] = "rogue",["roge"] = "rogue",["roguer"] = "rogue",["subrogue"] = "rogue",["combatrogue"] = "rogue",
["shammy"] = "shaman",["shammies"] = "shaman",["rsham"] = "shaman",["enhsham"] = "shaman",["enhshaman"] = "shaman",["elesham"] = "shaman",["eleshaman"] = "shaman",
["warlocks"] = "warlock",["locks"] = "lock",["lcoks"] = "lock",["lcok"] = "lock",
["warriors"] = "warrior",["warior"] = "warrior",["wariors"] = "warrior",["furywar"] = "warrior",["furywars"] = "warrior",["protwar"] = "warrior",["protwars"] = "warrior",["armswar"] = "warrior",["armswars"] = "warrior",

["inv"] = "invite",["ginv"] = "ginvite",
["russia"] = "russian",["ukraine"] = "ukrainian",["france"] = "french",["germany"] = "german",["spain"] = "spanish",["poland"] = "polish",["italy"] = "italian",["netherlands"] = "dutch",["philippines"] = "philippine",
["rekrutuje"] = "recruiting",["recrutar"] = "recruiting",["recrute"] = "recruiting",["recruting"] = "recruiting",["recuiting"] = "recruiting",["recluta"] = "recruiting",["recrutando"] = "recruiting", -- Guild Recruitment
["guilds"] = "guild",["gildia"] = "guild",["gilde"] = "guild",["gilda"] = "guild",["guilde"] = "guild",["gildiyu"] = "guild",["gildenmitglieder"] = "guild",["gildii"] = "guild",["hcguild"] = "guild",
["gildiya"] = "guild",["gildiyi"] = "guild",["gild"] = "guild",["guldia"] = "guild",["guilda"] = "guild",["guil"] = "guild",
["progresowania"] = "progression",["progresar"] = "progression",["progreso"] = "progression",["progresshez"] = "progression",["prog"] = "progression",["progress"] = "progression",
["komunity"] = "community",["komunite"] = "community",["komunita"] = "community",["comunidad"] = "community",["comunidade"] = "community",["companheiros"] = "community",["kinship"] = "community",["Compañeros"] = "community",
["ambiance"] = "ambience",["ambient"] = "ambience",["ambient"] = "ambience",["socials"] = "social",["eventos"] = "events",
["amigos"] = "friends",["actieve"] = "active",["nederlands"] = "dutch",["nederlandse"] = "dutch",["aktivity"] = "activity",
["levelling"] = "leveling",["levelers"] = "leveling",["lvlers"] = "leveling",["lvling"] = "leveling",["lvl"] = "level",["levlers"] = "leveling",["levling"] = "leveling",["levl"] = "level",

["morben"] = "morbent",["ladin"] = "ladim",["hilsbrad"] = "hillsbrad",["hillsbard"] = "hillsbrad",["dustwallor"] = "dustwallow", -- Quests
["stormgarde"] = "stromgarde",["stormgard"] = "stromgarde",["stormguard"] = "stromgarde",["stromguard"] = "stromgarde",
["hinterland"] = "hinterlands",["hinderland"] = "hinterlands",["hiterlands"] = "hinterlands",["hiterland"] = "hinterlands",["hinderlands"] = "hinterlands",["hinerlands"] = "hinterlands",
["hinnterlands"] = "hinterlands",["hhinterlands"] = "hinterlands",["hinterlnds"] = "hinterlands",["hunterlands"] = "hinterlands",
["elites"] = "elite",["elit"] = "elite",["leet"] = "elite",["leets"] = "elite",["reputation"] = "rep",["reput"] = "rep",["farms"] = "farm",["noz"] = "nozdormu",["rr"] = "redridge",["obsidon"] = "obsidion",
["hghlands"] = "highlands",["silithis"] = "silithus",["bagthera"] = "bhagthera",["bajkteera"] = "bhagthera",["jinthalor"] = "jinthaalor",["princes"] = "princess",["tf"] = "thunderfury",

["rfch"] = "rfc",["rfcd"] = "rfc",["rfchasm"] = "rfc",["rangefire"] = "ragefire",
["deadmine"] = "deadmines",["dedmines"] = "deadmines",["dedmine"] = "deadmines",["deathmine"] = "deadmines",["deathmines"] = "deadmines",["vc"] = "deadmines",["vancleef"] = "deadmines",["dms"] = "dm", -- Dungeons and Groups
["deaadmines"] = "deadmines",["deammine"] = "deadmines",["deammines"] = "deadmines",["deanmines"] = "deadmines",["deamines"] = "deadmines",
["twc"] = "wc",["waling"] = "wailing",["walling"] = "wailing",["vailing"] = "wailing",["cavs"] = "caverns",["cavern"] = "caverns",["cave"] = "caverns",["caves"] = "caverns",["cavers"] = "caverns",["caverne"] = "caverns",
["stockades"] = "stockade",["stockede"] = "stockade",["stocakde"] = "stockade",["stokade"] = "stockade",["stokades"] = "stockade",["stocks"] = "stock",["stocls"] = "stock",
["stonks"] = "stock",["stockado"] = "stockade",["stockes"] = "stockade",["sotckades"] = "stockade",["stockaded"] = "stockade",["stockates"] = "stockade",["stocakeds"] = "stockade",
["blackfathome"] = "blackfathom",["blackfatom"] = "blackfathom",["blackfanthom"] = "blackfathom",["blackfantom"] = "blackfathom",["bd"] = "bfd",["bdf"] = "bfd",["bfg"] = "bfd",["bfc"] = "bfd",
["sk"] = "sfk",["skf"] = "sfk",
["gnooner"] = "gnomeregan",["gnomregan"] = "gnomeregan",["gnomregen"] = "gnomeregan",["gnomergan"] = "gnomeregan",["gnomeragen"] = "gnomeregan",["gnomragen"] = "gnomeregan",
["gnomregan"] = "gnomeregan",["gnomrigan"] = "gnomeregan",["gnomoeregan"] = "gnomeregan",["gnomereagan"] = "gnomeregan",["gnomeragan"] = "gnomeregan",["gnomger"] = "gnomeregan",
["razorfren"] = "razorfen",["karul"] = "kraul",["kral"] = "kraul",["rpd"] = "rfd",
["smg"] = "smgy",["graveryard"] = "smgy",["smgraveyard"] = "smgy",["monastary"] = "monastery",["monstary"] = "monastery",["monstery"] = "monastery",["scarlett"] = "scarlet",
["libary"] = "library",["librery"] = "library",["libray"] = "library",["sml"] = "smlib",["smlb"] = "smlib",["smliberal"] = "smlib",
["smarms"] = "smarm",["smarmory"] = "smarm",["sma"] = "smarm",["armoty"] = "armory",["armoury"] = "armory",["arms"] = "arm",["armz"] = "arm",["armzs"] = "arm",["armoryy"] = "armory",["armoryyy"] = "armory",
["carth"] = "cathedral",["cathe"] = "cathedral",["cath"] = "cathedral",["smcathedral"] = "smcath",["smc"] = "smcath",["smcat"] = "smcath",["cafedr"] = "smcath",["caf"] = "cathedral",["catehdral"] = "cathedral",["cathedrale"] = "cathedral",
["uld"] = "uldaman",["ulduman"] = "uldaman",["uldam"] = "uldaman",["uldum"] = "uldaman",
["farak"] = "farrak",["zulfarak"] = "zulfarrak",["zukfarrak"] = "zulfarrak",["zulfurrak"] = "zulfarrak",["zulforrak"] = "zulfarrak",["zulfurak"] = "zulfarrak",["zulforak"] = "zulfarrak",["zff"] = "zf",["zzf"] = "zf",["zulfarrack"] = "zulfarrak",
["marudon"] = "maraudon",["maradon"] = "maraudon",["maura"] = "mara",["mauradon"] = "maraudon",["maurodon"] = "maraudon",["maurdon"] = "maraudon",["maraundon"] = "maraudon",
["marodon"] = "maraudon",["morodon"] = "maraudon",["maradudon"] = "maraudon",["maraudn"] = "maraudon",
["sunkent"] = "sunken",["sunkn"] = "sunken",["lfmtemple"] = "atalhakar",["lfgtemple"] = "atalhakar",
["winsor"] = "jailbreak",["windsor"] = "jailbreak",["windwos"] = "jailbreak",["emp"] = "emperor",["emprun"] = "emperor",["emperer"] = "emperor",["emporer"] = "emperor",
["angerforge"] = "brd",["angerfod"] = "brd",["vaul"] = "vault",["brda"] = "brd",["brdd"] = "brd",["bdr"] = "brd",["attument"] = "attunement",["attu"] = "attunement",["attunment"] = "attunement",
["strartholme"] = "stratholme",["stratholm"] = "stratholme",["strath"] = "stratholme",["stratth"] = "stratholme",["srat"] = "stratholme",["strah"] = "stratholme",["straholme"] = "stratholme",
["srtatholme"] = "stratholme",["strathilme"] = "stratholme",["strathalme"] = "stratholme",["living"] = "live",
["scholo"] = "scholomance",["shool"] = "scholomance",["sholo"] = "scholomance",["sholomance"] = "scholomance",["scolomance"] = "scholomance",["scholamance"] = "scholomance",["scolamance"] = "scholomance",
["solomance"] = "scholomance",["scolo"] = "scholomance",["schoolo"] = "scholomance",["scholor"] = "scholomance",["krastinovs"] = "krastinov",
["diremail"] = "diremaul",["mauls"] = "maul",["trib"] = "tribute",
["lvrs"] = "lbrs",["lvrs"] = "lbrs",["lbrd"] = "lbrs",["lbr"] = "lbrs",
["ubers"] = "ubrs",["urbs"] = "ubrs",["ubs"] = "ubrs",["uber"] = "ubrs",["ubbrs"] = "ubrs",["ubrd"] = "ubrs",["ubr"] = "ubrs",["valthalaks"] = "valthalak",

["onyixia"] = "onyxia",["onxy"] = "onyxia",["onyx"] = "onyxia",["onyxias"] = "onyxia",["onixia"] = "onyxia",["onixya"] = "onyxia",["ohy"] = "ony",["onny"] = "ony",["onyy"] = "ony",["oony"] = "ony",["onx"] = "ony",["onxyia"] = "ony",["oni"] = "ony", -- Raids
["blw"] = "bwl",["nefarien"] = "nefarian",["nefarion"] = "nefarian",["ossi"] = "ossirian",["nax"] = "naxx",
["raids"] = "raid",["raiding"] = "raid",["rading"] = "raid",["dng"] = "dungeon",["dung"] = "dungeon",["dungeons"] = "dungeon",["elitue"] = "elite",["bosses"] = "boss",["runs"] = "run",
["queueing"] = "queue",["que"] = "queue",["q"] = "queue",["qeue"] = "queue",["queueup"] = "queue",["bgs"] = "bg",["battlegrounds"] = "battleground",["bgs"] = "bg",
["repfarm"] = "repfarm",["repgroup"] = "repfarm",["reprun"] = "repfarm",["repgrind"] = "repfarm",
["ccfarm"] = "repfarm",["ccgroup"] = "repfarm",["ccrun"] = "repfarm",["ccgrind"] = "repfarm",
["farmgroup"] = "repfarm",["farmrun"] = "repfarm",
["badgegroup"] = "badgefarm",["badgerun"] = "badgefarm",["badgegrind"] = "badgefarm",

["foran"] = "for",["havea"] = "have",["havean"] = "have",["needa"] = "need",["needan"] = "need",

["anynbody"] = "anyone",["anybody"] = "anyone",["yours"] = "your",["yer"] = "your",["ya"] = "your",["anyonw"] = "anyone",["anyon"] = "anyone",["anyoone"] = "anyone",["aynone"] = "anyone",["somewho"] = "anyone",["whofor"] = "anyonefor", -- Basic Words
["someone"] = "anyone",["somebody"] = "anyone",["sombody"] = "anyone",["anyfor"] = "anyone",["forr"] = "for",["fora"] = "for",["für"] = "for",["onl"] = "only",["git"] = "get",
["needs"] = "need",["ned"] = "need",["neeed"] = "need",["want"] = "need",["wants"] = "need",["got"] = "have",
["available"] = "around",["avail"] = "around",["could"] = "can",["wat"] = "what",["jooin"] = "join",["joiin"] = "join",["joinn"] = "join",["jion"] = "join",
["doin"] = "doing",["wana"] = "wanna",["alla"] = "all",["plz"] = "please",["pls"] = "please",["weeks"] = "week",["times"] = "time",["assist"] = "help",["questions"] = "question",["specs"] = "spec",["prot"] = "protection",
["nub"] = "noob",["nubs"] = "noob",["noobs"] = "noob",["newbs"] = "noob",["newbies"] = "noob",["noobie"] = "noob",["noobies"] = "noob",["lel"] = "lol",
["moar"] = "more",["opeining"] = "opening",["twinks"] = "twink",["lst"] = "last",["taletns"] = "taletns",["badges"] = "badge",["hydrax"] = "hydraxian",["hydraxis"] = "hydraxian",["waterlords"] = "hydraxian",["prio"] = "priority",
["mountains"] = "mountain",["skulls"] = "skull",["skullls"] = "skull",["intrested"] = "interested",["ignored"] = "ignored",["yelling"] = "yell",["applying"] = "apply",["steek"] = "steel",["wings"] = "wing",["hosting"] = "host",["unlocking"] = "unlock",
["discriminating"] = "discriminating",["descriminate"] = "discriminate",["descrimination"] = "discrimination",["rosters"] = "roster",["farming"] = "farm",["welcomes"] = "welcome",["welcomed"] = "welcome",["valey"] = "valley",
["socila"] = "social",["experienced"] = "experience",["experiance"] = "experience",["experianced"] = "experience",["trolls"] = "troll",["hours"] = "hour",["offering"] = "offer",["causual"] = "casual",["buffs"] = "buff",["requesting"] = "request",

["serpentbloom"] = "wc",["arugal"] = "sfk",["gnogaine"] = "gnomer",["gahzrilla"] = "zf",["incendius"] = "brd",["pusillin"] = "dme",["kirtonos"] = "scholomance",["krastinov"] = "scholomance",["ramstein"] = "udstrat",

-- Two Words
["lockedchest"] = "lockbox",["familyjewels"] = "lockbox", -- Trades
["portalot"] = "portalto",["summonot"] = "summonto",["lfsum"] = "lfsummon",["arcbar"] = "arcane",

["restoshaman"] = "shaman",["enhanceshaman"] = "shaman",["enhancementshaman"] = "shaman",["elementalshaman"] = "shaman",
["feraldruid"] = "druid",["kittydruid"] = "druid",["beardruid"] = "druid",["restodruid"] = "druid",["balancedruid"] = "druid",
["shadowpriest"] = "priest",["holypriest"] = "priest",["discpriest"] = "priest",["disciplinepriest"] = "priest",
["protpaladin"] = "paladin",["protpally"] = "paladin",["retpaladin"] = "paladin",["holypaladin"] = "paladin",["retributionpaladin"] = "paladin",["protectionpaladin"] = "paladin",
["assassinationrogue"] = "rogue",
["markshunter"] = "hunter",["marksmanhunter"] = "hunter",["marksmanshiphunter"] = "hunter",["survhunter"] = "hunter",["survivalhunter"] = "hunter",
["furywarrior"] = "warrior",["protwarrior"] = "warrior",["armswarrior"] = "warrior",["protectionwarrior"] = "warrior",
["afflictionwarlock"] = "warlock",["afflictionlock"] = "warlock",["afflicwarlock"] = "warlock",["demonologywarlock"] = "warlock",["demowarlock"] = "warlock",["demolock"] = "warlock",["destruction"] = "warlock",["destrolock"] = "warlock",["destrowarlock"] = "warlock",

["orgrimmardungeon"] = "ragefirechasm",["lfmrc"] = "ragefirechasm",["lfgrc"] = "ragefirechasm",["hiddenenemies"] = "ragefirechasm", -- Dungeons and Groups
["undergroundassault"] = "deadmines",["collectingmemories"] = "deadmines",["ohbrother"] = "deadmines",
["smartdrinks"] = "wailingcaverns",["deviateeradication"] = "wailingcaverns",
["twilightfalls"] = "blackfathom",["blackfathomvillainy"] = "blackfathom",["blackfdeeps"] = "blackfathom",["blackfdepths"] = "blackfathom",
["castpipestask"] = "gnomeregan",["gyrodrillmaticexcavationators"] = "gnomeregan",["essentialartificials"] = "gnomeregan",["datarescue"] = "gnomeregan",["rigwars"] = "gnomeregan",["lfgnome"] = "gnomer",["lfggnome"] = "gnomer",["lfmgnome"] = "gnomer",
["razorfenk"] = "razorfenkraul",["razorfend"] = "razorfendowns",
["smgrave"] = "smgy",["scarletgrave"] = "smgy",["smgrav"] = "smgy",["monasterygraveyard"] = "smgy",["scarletgraveyard"] = "smgy",["monasterygrave"] = "smgy",["monagraveyard"] = "smgy",["monagy"] = "smgy",["monasterygy"] = "smgy",
["lfgy"] = "smgy",["lfggy"] = "smgy",["lfmgy"] = "smgy",
["monasteryarm"] = "smarm",["scarletarm"] = "smarm",["smarmo"] = "smarm",["fullsm"] = "smfull",["scarletcrusade"] = "scarletcrusade",
["trolltemper"] = "zulfarrak",["scarabshells"] = "zulfarrak",["nekrumsmedallion"] = "zulfarrak",
["shadowshardfragments"] = "maraudon",["twistedevils"] = "maraudon",["vyletonguecorruption"] = "maraudon",["sempletemple"] = "sunkentemple",
["commandergorshak"] = "blackrockdepths",["hurleyblackbreath"] = "blackrockdepths",["thechallenge"] = "blackrockdepths",["kharanmighthammer"] = "blackrockdepths",
["blackrockdeeps"] = "blackrockdepths",["ribblyscrewspigot"] = "blackrockdepths",["lavarun"] = "blackrockdepths",["golemlord"] = "blackrockdepths",
["mauleast"] = "dme",["lethtendrissweb"] = "dmeast",["maulnorth"] = "dmn",["maultribute"] = "dmt",["maulwest"] = "dmw",["eastdm"] = "dme",["northdm"] = "dmn",["westdm"] = "dmw",["lfmtribute"] = "dmt",["lfgtribute"] = "dmt",
["bijousbelongings"] = "lowerblackrock",["maxwellsmission"] = "lowerblackrock",["mothersmilk"] = "lowerblackrock",["urokdoomhowl"] = "lowerblackrock",["warlordscommand"] = "lowerblackrock",["lowerspire"] = "lowerblackrock",
["plaguedhatchlings"] = "scholomance",["dawnsgambit"] = "scholomance",
["lfstart"] = "stratholme",["lfstrat"] = "stratholme",["lfgstart"] = "stratholme",["lfgstrat"] = "stratholme",["lfmstrat"] = "stratholme",["stratman"] = "stratholme",["farmstrat"] = "stratholme",["lfmstart"] = "stratholme",["stratmalor"] = "stratholme",
["stratlive"] = "livestrat",["stralive"] = "livestrat",["startlive"] = "livestrat",["livestart"] = "livestrat",["statlive"] = "livestrat",["livestat"] = "livestrat",["liveside"] = "livestrat",["stratlife"] = "livestrat",["stratscarlet"] = "livestrat",
["stratun"] = "udstrat",["stratundead"] = "udstrat",["stratud"] = "udstrat",["startud"] = "udstrat",["udstart"] = "udstrat",["undeadstrat"] = "udstrat",["undeadstart"] = "udstrat",["udside"] = "udstrat",["strengthud"] = "udstrat",["thearchivist"] = "livestrat",
["menethilsgift"] = "udstrat",["stratdk"] = "udstrat",["strarud"] = "udstrat",["statud"] = "udstrat",["udstat"] = "udstrat",
["argentdawn"] = "argentdawn",["forstart"] = "stratholme",["forstrat"] = "stratholme",["tostrat"] = "stratholme",["healstrat"] = "stratholme",["damagestrat"] = "stratholme",["tankstrat"] = "stratholme",
["oculusillusions"] = "upperblackrock",["eggcollection"] = "upperblackrock",["blackhandcommand"] = "upperblackrock",["doomriggersclasp"] = "upperblackrock",["upperspire"] = "upperblackrock",
["zulgrub"] = "zulgurub",["raidboss"] = "worldboss",["worlddragon"] = "worldboss",["allwing"] = "questrun",["fullrun"] = "questrun",

["ofrecemoscontenido"] = "clearingcontent", -- Guild Trigger Words

-- Three Words
["scarletmongy"] = "smgy",["scarletmongraveyard"] = "smgy",

["slayingthebeast"] = "ragefirechasm",
["thedefiasbrotherhood"] = "deadmines",
["researchingthecorruption"] = "blackfathom",["amongsttheruins"] = "blackfathom",
["thestockaderiots"] = "stockade",["whatcomesaround"] = "stockade",["crimeandpunishment"] = "stockade",["redsilkbandanas"] = "stockade",
["grimeencrustedring"] = "gnomeregan",["thegrandbetrayal"] = "gnomeregan",["savetechbotsbrain"] = "gnomeregan",["afinemess"] = "gnomeregan",
["fullscarletrun"] = "smquestrun",["fullrunsm"] = "smfull",["heartsofzeal"] = "smquestrun",["testoflore"] = "smlib",
["bringthelight"] = "razorfendowns",["bringtheend"] = "razorfendowns",["anunholyalliance"] = "razorfendowns",
["divinomaticrod"] = "zulfarrak",
["thepariahsinstructions"] = "maraudon",["scepterofcelebras"] = "maraudon",["corruptionofearth"] = "maraudon",
["jammalantheprophet"] = "sunkentemple",["intothedepths"] = "sunkentemple",
["lostthunderbrewrecipe"] = "blackrockdepths",["heartofthemountain"] = "blackrockdepths",["theprincesssaved"] = "blackrockdepths",["crumpledupnote"] = "blackrockdepths",
["shredofhope"] = "blackrockdepths",["thegoodstuff"] = "blackrockdepths",["theroyalrescue"] = "blackrockdepths",
["theelderazjtordin"] = "dmeast",["dreadsteedofxoroth"] = "dmwest",["unfinishedgordokbusiness"] = "diremaul",["unfinishedgordokbusiness"] = "dmwest",["themadnesswithin"] = "dmwest",
["putherdown"] = "lowerblackrock",["thefinaltablets"] = "lowerblackrock",["kiblersexoticpets"] = "lowerblackrock",["thepackmistress"] = "lowerblackrock",
["barovfamilyfortune"] = "scholomance",
["ofloveandfamily"] = "livestrat",["thegreatfrassiabi"] = "livestrat",["theactiveagent"] = "udstrat",["therestlesssouls"] = "stratholme",["repfarmstrat"] = "stratrepfarm",["theactiveagent"] = "udstrat",["aboveandbeyond"] = "udstrat",
["forthehorde"] = "upperblackrock",["sealofascension"] = "upperblackrock",["thedemonforge"] = "upperblackrock",["thedarkstonetablet"] = "upperblackrock",

-- Four Words
["testinganenemysstrength"] = "ragefirechasm",["thepowertodestroy"] = "ragefirechasm",

["troubleatthedocks"] = "wailingcaverns",["leadersofthefang"] = "wailingcaverns",
["thetestofrighteousness"] = "shadowfang",["thebookofur"] = "shadowfang",
["theessenceofakumai"] = "blackfathom",["knowledgeinthedeeps"] = "blackfathom",["insearchofthaelrid"] = "blackfathom",["allegiancetotheold"] = "blackfathom",
["thecolorofblood"] = "stockade",["thefuryrunsdeep"] = "stockade",
["ismoregreenglow"] = "gnomeregan",
["nameofthelight"] = "smquestrun",["fullscarletmonasteryrun"] = "smquestrun",["downthescarletpath"] = "smquestrun",["intothescarletmonastery"] = "smquestrun",
["painttherosesred"] = "smgy",["compendiumofthefallen"] = "smlib",["mythologyofthetitans"] = "smlib",
["ahostofevil"] = "razorfendowns",
["tiaraofthedeep"] = "zulfarrak",["theprophecyofmosharu"] = "zulfarrak",
["secretofthecircle"] = "sunkentemple",
["thearcanegolemcore"] = "blackrockdepths",["fateofthekingdom"] = "blackrockdepths",["heartofthemountain"] = "blackrockdepths",["atasteofflame"] = "blackrockdepths",["deathtoangerforge"] = "blackrockdepths",["riseofthemachines"] = "blackrockdepths",
["ayesteewhy"] = "lowerblackrock",
["thelichrasfrostwhisper"] = "scholomance",
["housesoftheholy"] = "stratholme",["fleshdoesnotlie"] = "stratholme",["thegreatfrassiabi"] = "livestrat",["truthcomescrashingdown"] = "livestrat",
["theblackdragonchampion"] = "upperblackrock",
["onlyonemayrise"] = "blackwinglair",
} -- replaces the first word but leaves the second word
GF_WORD_IGNORE = {
["reddit"] = true,["weekday"] = true,["weekdays"] = true,["weekend"] = true,["earlier"] = true, -- Time-related

["stfu"] = true,["ignore"] = true,["fuck"] = true,["shit"] = true,["ruin"] = true,["lesbian"] = true, -- Cuss words and similar
["dumbass"] = true,["retard"] = true,["losers"] = true,["sugardaddy"] = true,["sugarmomma"] = true,["wtf"] = true,["sicko"] = true,


["gl"] = true,["friendship"] = true,["teamwork"] = true, -- Guild
["bought"] = true,["asked"] = true,["lockbox"] = true,["box"] = true,["repairs"] = true,["discount"] = true,["casino"] = true, -- Trades
["talents"] = true,["build"] = true,["advice"] = true,["opinion"] = true,["direction"] = true,["directions"] = true, -- People asking for help for talents and such

["afk"] = true,["sorry"] = true,["thought"] = true,["duel"] = true,["yell"] = true,["pretending"] = true,["macro"] = true, -- Other words
["practice"] = true,["spamming"] = true,["kalimdor"] = true,["apologize"] = true,["nah"] = true,["literally"] = true,["manhandled"] = true,["joking"] = true,["respec"] = true,

["icc"] = true,["tk"] = true,["ssc"] = true,

-- Two Words
["sugardaddy"] = true,["sugarmomma"] = true, -- Cuss words and similar

["aguild"] = true, -- Guild-related
["magewater"] = true,["magefood"] = true,["lockbox"] = true,["helpsummon"] = true, -- Trades
["fewquestion"] = true,["havequestion"] = true,["quickquestion"] = true,["somequestion"] = true,["questionfor"] = true,["aboutspec"] = true,["bestchoice"] = true, -- People asking for help for talents and such

["burningcrusade"] = true,
["doesnobody"] = true,
["dontwaste"] = true,
["doyou"] = true,
["forgold"] = true,
["hereor"] = true,
["howcome"] = true,
["implaying"] = true,
["ourranks"] = true,
["putoff"] = true,
["raidingguild"] = true,
["splitsecond"] = true,
["stoppingme"] = true,
["storystuff"] = true,
["thatguy"] = true,
["thisgame"] = true,
["thoseguys"] = true,
["toanswer"] = true,
["wasdoing"] = true,
["wishaliens"] = true,
["yourmoney"] = true,
["waitingtime"] = true,
["warriorpants"] = true,["warriorlegs"] = true,
["bypremades"] = true,
["petattack"] = true,
["talenttree"] = true,
["turnback"] = true,
["imalready"] = true,
["dontfind"] = true,
["werules"] = true,
["wouldneed"] = true,
["doesntwork"] = true,
["iswear"] = true,
["pvpflagged"] = true,
["ishostile"] = true,
["talkabout"] = true,
["itsnowhere"] = true,
["someaddon"] = true,
["somehr"] = true,
["makessense"] = true,
["thisserver"] = true,
["serverneed"] = true,
["runtimes"] = true,
["timesure"] = true,
["pokemontrainer"] = true,
["fullofgnomes"] = true,
["thismorning"] = true,
["tbh"] = true,
["ikindafelt"] = true,
["apokemon"] = true,
["youlaugh"] = true,
["yourelaughing"] = true,
["cantremember"] = true,
["whatability"] = true,
["whatbird"] = true,
["whatlevel"] = true,
["howfind"] = true,
["dontbuy"] = true,
["waitinghour"] = true,
["waitingforhour"] = true,
["justout"] = true,
["likeaids"] = true,
["theresno"] = true,
["ridofit"] = true,
["ijustdid"] = true,
["prolly"] = true,
["oncooldown"] = true,
["stopdeclining"] = true,
["stopdecline"] = true,
["stopdecline"] = true,
["declinequeue"] = true,
["decliningqueue"] = true,
["summonedme"] = true,
["whosummoned"] = true,
["lfbuff"] = true,
["cantqueue"] = true,
["currentquest"] = true,
["whereislocation"] = true,
["helpmelocate"] = true,
["locating"] = true,
["apxlocation"] = true,
["approxlocation"] = true,
["approximatelocation"] = true,
["shirt"] = true,
["createahuman"] = true,
["createanightelf"] = true,
["createadwarf"] = true,
["createagnome"] = true,
["createahighelf"] = true,
["createanorc"] = true,
["createanundead"] = true,
["createatroll"] = true,
["createatauren"] = true,
["createagoblin"] = true,
["orhuman"] = true,
["ornightelf"] = true,
["ordwarf"] = true,
["orgnome"] = true,
["orhighelf"] = true,
["ororc"] = true,
["orundead"] = true,
["ortroll"] = true,
["ortauren"] = true,
["orgoblin"] = true,
["needanewgame"] = true,
["mysterydungeon"] = true,
["sendingmessages"] = true,
["typethat"] = true,
["fromsending"] = true,
["justfine"] = true,
["manytwinks"] = true,
["youwouldntbe"] = true,
["wouldntbeasking"] = true,


["asferal"] = true,["asboomie"] = true,["asbalance"] = true,["asresto"] = true,["asrestoration"] = true,
["asbm"] = true,["asmm"] = true,
["asfire"] = true,["asfrost"] = true,["asarcane"] = true,
["asholy"] = true,["asret"] = true,["asprot"] = true,
["ascombat"] = true,["assubtlety"] = true,
["asfury"] = true,["asarms"] = true,
["asshadow"] = true,["asdisc"] = true,
["asenhancement"] = true,["aselemental"] = true,["asele"] = true,["asenh"] = true,
["asdestruction"] = true,["asaffliction"] = true,["asdemonology"] = true,["asdemo"] = true,["asafflic"] = true,["asdestro"] = true,

-- Three Words
["groupaboveyou"] = true,
["dontjoinwsg"] = true,
["unlessyouneed"] = true,
["nightelfpriest"] = true,
["hasabow"] = true,["usesabow"] = true,
["whycanti"] = true,["whyicant"] = true,
["whythehell"] = true,
["whilehardreserving"] = true,
["anyonetotalk"] = true,
["whatlevelis"] = true,
["fromthechat"] = true,
["fromthatchat"] = true,
["iwishthere"] = true,
["removeallthe"] = true,
["formsagroup"] = true,
["butneedthe"] = true,
["sohedoesnt"] = true,
["soshedoesnt"] = true,
["shouldahunter"] = true,
["getatlevel"] = true,
["shoulditank"] = true,
["shouldiheal"] = true,
["shouldidamage"] = true,
["shouldistealth"] = true,
["shouldirange"] = true,
["shouldicaster"] = true,
["shouldimelee"] = true,
["coupleofbuff"] = true,
["ithinkthey"] = true,
["arethereany"] = true,
["bestpvpheal"] = true,
["lfworldbuff"] = true,
["lfmworldbuff"] = true,
["lfgworldbuff"] = true,
["andwhatrace"] = true,
["canhcqueue"] = true,
["canhardcorequeue"] = true,
["hcqueuebg"] = true,
["hardcorequeuebg"] = true,
["needpaladinbuff"] = true,
["needdruidbuff"] = true,
["needmagebuff"] = true,
["needpriestbuff"] = true,
["needstaminabuff"] = true,
["needintellectbuff"] = true,
["paladinbuffkings"] = true,
["priestbuffstamina"] = true,
["buffmotw"] = true,
["buffarcaneintellect"] = true,
["buffintellect"] = true,
["buffkings"] = true,
["iwashavingfun"] = true,
["butnowhorde"] = true,
["butnowalliance"] = true,
["letmequest"] = true,
["doesntletme"] = true,
["howisthis"] = true,
["remotelyfair"] = true,
["whyisa"] = true,
["thishappens"] = true,
["isfinetotank"] = true,
["isgoodtotank"] = true,
["hourqueue"] = true,
["timesarerough"] = true,
["canhealdungeon"] = true,
["cantankdungeon"] = true,
["whencani"] = true,

-- Four Words
["ineeddruidhelp"] = true,["ineedhunterhelp"] = true,["ineedmagehelp"] = true,["ineedpaladinhelp"] = true,["ineedpriesthelp"] = true,["ineedroguehelp"] = true,["ineedshamanhelp"] = true,["ineedwarriorhelp"] = true,["ineedwarlockhelp"] = true,
["anyoneicaninvite"] = true,["moreexperiencethanme"] = true,
["ihavetospeak"] = true,
["howtodothis"] = true,
["soicansee"] = true,
["amilookingfor"] = true,
}

GF_WORD_GUILD = {
["guild"] = 102,["ginvite"] = 3,["guid"] = 1,["magosh"] = 2,["recruiting"] = 2,["recruitment"] = 1,
["monday"] = .5,["mondays"] = .5,["tuesday"] = .5,["tuesdays"] = .5,["wednesday"] = .5,["wednesdays"] = .5,["thursday"] = .5,["thursdays"] = .5,["friday"] = .5,["fridays"] = .5,["saturday"] = .5,["saturdays"] = .5,["sunday"] = .5,["sundays"] = .5,
["mon"] = .5,["tue"] = .5,["tues"] = .5,["thu"] = .5,["thur"] = .5,["thurs"] = .5,["fri"] = .5,["week"] = .5,["weekly"] = .5,

["dedicated"] = 1,["environment"] = 1,["membership"] = 1,["community"] = 1,["progression"] = 1,["progressing"] = .5,["events"] = 1,["rp"] = 1,["casual"] = .5,["social"] = .5,["helpful"] = .5,["friends"] = .5,
["ambience"] = 1,["brotherhood"] = 1,["members"] = .5,["roleplayers"] = .5,["leveling"] = 1,["welcoming"] = 1,["welcome"] = .5,["twink"] = 1,["house"] = .5,["roster"] = .5,["endgame"] = 1,
["gbank"] = 1,["tabard"] = .5,["dkp"] = 1,["adventures"] = 1,["adventurers"] = 1,["camaraderie"] = 1,["chill"] = .25,["reliable"] = .25,["skilled"] = .25,
["lgbt"] = 1,["lgbtq"] = 1,

 -- Two Words
["guildinvite"] = 3,["lfguild"] = 3,["lfgguild"] = 3,["guildbank"] = .5,["guildhouse"] = 1,["guildbase"] = .5,["needguild"] = 3,
["socialguild"] = .25,["noobguild"] = .5,["newguild"] = .5,["newerguild"] = .5,["pvpguild"] = .5,["raidguild"] = .25,["cozyguild"] = .5,["levelingguild"] = .5,["memeguild"] = .5,["biggerguild"] = .5,
["smallguild"] = .5,["bigguild"] = .5,["reallybigguild"] = .5,["largeguild"] = .5,["mediumsizedguild"] = .5,["funguild"] = .5,["friendlyguild"] = .5,["speakingguild"] = .5,
["coolguild"] = .5,["erpguild"] = .5,["challeningguild"] = .5,
["raidteam"] = 2,["raidgroup"] = 2,["raidroster"] = 2,["raiddays"] = 2,["raidnights"] = 2,["coreteam"] = 2,["coreroster"] = 2,["coreraiders"] = 2,["ourroster"] = 2,["buildingranks"] = 1,
["lootcouncil"] = 1.5,["lootsystem"] = 1.5,["epgp"] = 1.5,["srms"] = .5,
["considerjoining"] = 2,["aboutjoining"] = 2,["jointoday"] = 2,["joinus"] = .5,["thenjoin"] = 1,["getinfo"] = 1,["comejoin"] = .5,

["currentlyprogressing"] = 1.5,["clearingcontent"] = 1,["turtlecontent"] = 1,["endgamecontent"] = 1,["lowercontent"] = .5,["firstrun"] = 1,["classicexperience"] = .5,["vanillaexperience"] = .5,
["needyou"] = 2,["welcomeyou"] = 2,["welcometo"] = 1,["alwayswelcome"] = 1,["adultswelcome"] = .5,["raiderswelcome"] = .5,["moremembers"] = .5,["quirkymembers"] = .5,["goodteam"] = .5,["maturecommunity"] = 1,["funcommunity"] = 1,["laidback"] = .5,
["enjoyleveling"] = 1,["casualleveling"] = 1,["casualraid"] = 1,["leveltogether"] = 1,["groupquest"] = .5,["alliancelevelers"] = 1,["hordelevelers"] = 1,["peopleleveling"] = 1,["questtogether"] = .5,["newlymade"] = .5,["hardcoreleveling"] = .5,

["nonstopactivity"] = .5,["weeklyevents"] = .5,["weekdayraid"] = 1,["raidday"] = .5,["raidtime"] = 2,["raidtimes"] = 2,["inweek"] = 1,["aweek"] = 1,["everyweek"] = .5,["allraids"] = .5,
["newplayer"] = .5,["newplayers"] = 2,["newmembers"] = 1.5,["newlyformed"] = 2,["seriousmembers"] = .5,["veteranplayers"] = 1,["casualfriendly"] = 1,["raidready"] = 1,
["dungeoncrawling"] = 1,["pleasantadventure"] = 2,["goodvibes"] = 2,["pugclears"] = 2,["laidback"] = .5,["personalpractice"] = .5,["roleplayingevent"] = .5,["ourvoyage"] = .5,["freshjourney"] = .5,
["warmodeonly"] = .5,["hordeonly"] = .5,["pvpfriendly"] = 1,["pvefriendly"] = 1,
["weraid"] = .5,["wejoke"] = .5,

["mcclearedin"] = 1,["bwlclearedin"] = 1,["aqclearedin"] = 1,["naxxramasclearedin"] = 1,
["mcprogression"] = 1,["bwlprogression"] = 1,["aqprogression"] = 1,["naxxramasprogression"] = 1,

 -- Three Words
["lfanyguild"] = 3,["isaguild"] = .5,["lookingforguild"] = 3,["anyforguild"] = 3,["lfforguild"] = 3,

["anycasualguild"] = 3,["anysocialguild"] = 3,["anyraidguild"] = 3,["anylevelingguild"] = 3,["anylevelguild"] = 3,["anypvpguild"] = 3,["anygoodguild"] = 3,["anyfriendlyguild"] = 3,["anychillguild"] = 3,["anyhypeguild"] = 3,["anyactiveguild"] = 3,
["lfcasualguild"] = 3,["lfsocialguild"] = 3,["lfraidguild"] = 3,["lflevelingguild"] = 3,["lflevelguild"] = 3,["lfpvpguild"] = 3,["lfgoodguild"] = 3,["lffriendlyguild"] = 3,["lfchillguild"] = 3,["lfhypeguild"] = 3,["lfactiveguild"] = 3,

["goodlevelingguild"] = .5,["beginnerfriendlyguild"] = .5,["activecasualguild"] = 1,

["ourraidteam"] = 3,["finishourcore"] = 3,["lookingtoraid"] = .5,["lookingforraiders"] = .5,["lfmoremembers"] = 1,["lfskilledraiders"] = 2,
["allcurrentcontent"] = 3,["highendcontent"] = 3,["startraidingsoon"] = 1,["startinweek"] = 1,["tryingtorebuild"] = 1,["lookingtorebuild"] = 1,["lookingtogrow"] = 1,["growwithus"] = 1,
["friendsandguildies"] = 1,["levelwithfriends"] = .5,["liketolevel"] = .5,["easygoingplayers"] = 2,["justgoodraid"] = 3,["helpingeachother"] = 1,["helpwithleveling"] = 1,["helpifneeded"] = .5,["wehelpyou"] = .5,

["raidwithus"] = 1.5,["joinourdiscord"] = 1,["jointoaccess"] = 1,["jointhespectacle"] = 1,["joinmyguild"] = 1,["homewithus"] = 1,["joinustoday"] = 1,["joinournation"] = 1,["tojoinus"] = .5,["pleasejoinus"] = .5,
["allclasseswelcome"] = 3,["allplayerswelcome"] = 1,["forallplayers"] = .5,["everybodyiswelcome"] = 1,["everyoneiswelcome"] = 1,["opentoanyone"] = .5,["opentoeveryone"] = .5,["alliswelcome"] = .5,["lotsofmembers"] = .5,["welcometoapply"] = 2,
["druidonlyguild"] = 1,["gnomeonlyguild"] = 1,["dwarfonlyguild"] = 1,["taurenonlyguild"] = 1,["undeadonlyguild"] = 1,["paladinonlyguild"] = 1,["trollonlyguild"] = 1,["orconlyguild"] = 1,
["mconfarm"] = 1,["bwlonfarm"] = 1,["aqonfarm"] = 1,["naxxramasonfarm"] = 1,
["hordepvpguild"] = .5,["alliancepvpguild"] = .5,

["aboveandbeyond"] = 1,["asweseek"] = 1,["themysteriesofazeroth"] = 1,["wedontdiscriminate"] = 1,["haveguildhouse"] = .5,

-- Four Words
["lookingforcoolguild"] = 1,["lookingsocialchillguild"] = 1,["startinaweek"] = 1,["nopressurenodrama"] = 3,["lfnewlymadeguild"] = 1,
["lookingforactivecasual"] = 1,["lookingforbigactive"] = 1,
["lfchilllevelingguild"] = 1,["crossfactionlevelingguild"] = 2,
["lookingformoremembers"] = 2,["lookingformoreplayers"] = 1,["lookingforskilledraiders"] = 2,["lookingfornewraiders"] = 2,["seekingfewgoodplayers"] = 1,["seekingsomegoodplayers"] = 1,
["lovetohaveyou"] = 2,["wewillhelpyou"] = .5,
["playersofanyclass"] = 1,["playersofallclasses"] = 1,["opentoall"] = 1,["alllevelsarewelcome"] = 1,
["needtojoinguild"] = 2,
-- Guild Spam that get around my filters
["pretendingsocializing"] = .5,["raidmechanic"] = .5,["escapethehellscape"] = .5,

-- Foreign Words
["utc"] = .5,["cet"] = .5,["msk"] = 1,["est"] = 1,
["fr"] = 1,["fra"] = 2,["ru"] = 2,["cz"] = .5,["pl"] = 1,["na"] = 1,["au"] = 1,["ua"] = 1,["uhr"] = 1,["rus"] = 1,["eu"] = .5,["br"] = .5,["ita"] = .5,
["polska"] = 1,["ukrainska"] = 1,["czsk"] = .5,["cesko"] = 1,["romani"] = 1,["slovenska"] = 1,["brasilia"] = 1,["bulgarski"] = 1,["hispana"] = 1,["italiana"] = 1,["magyar"] = 1,
["raidov"] = 1,["ishet"] = 1,["novacek"] = 1,["raidereket"] = 1,["priednuysia"] = 1,["primet"] = 1,["reydinga"] = 1,
["deutsche"] = 1,["deutschsprachige"] = 1,["allianz"] = 1,["mitraiden"] = 1,["sucht"] = 1,["raidkader"] = 1,["motivierte"] = 1,["raidtage"] = 1,

["ukrainianguild"] = 1,["guildrussian"] = 1,["russianguild"] = 1,["finnishguild"] = 1,["philippineguild"] = 1,["algumaguild"] = 1,["algunaguild"] = 1,["germanguild"] = .5,
["lfukrainianguild"] = 1,["lfrussianguild"] = 1,["lffinnishguild"] = 1,["lfphilippineguild"] = 1,["lfgermanguild"] = 1,["lffrenchguild"] = 1,["lfspanishguild"] = 1,["lfpolishguild"] = 1,["lfitalianguild"] = 1,["lfdutchguild"] = 1,
["lfindonesiaguild"] = 1,["lfoceguild"] = 1,["lfnaguild"] = 1,["lfeuguild"] = 1,
["needukrainianguild"] = 1,["needrussianguild"] = 1,["needfinnishguild"] = 1,["needphilippineguild"] = 1,["needgermanguild"] = 1,["needfrenchguild"] = 1,["needspanishguild"] = 1,["needpolishguild"] = 1,["needitalianguild"] = 1,["needdutchguild"] = 1,
["needindonesiaguild"] = 1,["needoceguild"] = 1,["anyoceguild"] = 1,["neednaguild"] = 1,["needeuguild"] = 1,
["anyukrainianguild"] = 1,["anyrussianguild"] = 1,["anyfinnishguild"] = 1,["anyphilippineguild"] = 1,["anygermanguild"] = 1,["anyfrenchguild"] = 1,["anyspanishguild"] = 1,["anypolishguild"] = 1,["anyitalianguild"] = 1,["anydutchguild"] = 1,
["anyindonesiaguild"] = 1,["anyoceguild"] = 1,["anyoceguild"] = 1,["anynaguild"] = 1,["anyeuguild"] = 1,

["czsfk"] = 2,["sfkcz"] = 2,

["mercredi"] = .5,["dimanche"] = .5,["joueursenleveling"] = 1,["joueursactifs"] = 1,

["paralacore"] = 1,["aceptamos"] = .5,["limpiandocontenido"] = 1,["domingos"] = .5,
["semanalmente"] = 1,["sitequieresunir"] = 2,

["miembrosnuevos"] = 1,
["chercheguild"] = 1,["Pohodova"] = 1,["otevrenaprovsechny"] = 2,

["cercoplayer"] = 1,["creazionegilda"] = 1,


["vedemnabor"] = 1,["vedetsanabor"] = 1,["prohozhdeniyadanzhey"] = 1,["sovmestnoyprokachki"] = 1,
["vedemnaborigrokov"] = 3,["novacekciveteran"] = 2,["provodenabirgravziv"] = 2,

["maajoukue"] = 2,["suomikilta"] = 2,["suomikiltaa"] = 2,["raidaaako"] = 1.5,["questaako"] = 1.5, -- Finnish
["teretulemastkiltaan"] = 3,["kaikihoituu"] = 1,["suomipelaajia"] = 2,["kiltaan"] = 1,["haetaankiltaan"] = 2,["tulille"] = 1,
["miembrosnuevosenraids"] = 1,

["deutschsprachigen"] = 1,["joinwelt"] = 1,["werbeunterbrechung"] = 1,
["yesttutruguild"] = 3,["sucheguild"] = 1,

["frdendeutschsprachigen"] = 1,
["compltersonroster"] = 2,["joueursmotivs"] = 1,["sbados"] = .5,["guildespaola"] = 1,["espaola"] = 1,["espaoles"] = 1,["josontyls"] = 1,["hakeejseni"] = 3,["mitmuutamenoatoistaaseksi"] = 3,
}
GF_GUILD_WORD_EXCLUSION = {
["today"] = .5,["tonight"] = .5,["host"] = .5,["legendaries"] = .5,["mats"] = .5,["bindings"] = .5,["boes"] = .5,["boe"] = .5,

["racist"] = 1,
["nonwhites"] = 5,
["nonwhite"] = 1,
["advertise"] = 5,

-- Two Words
["youknow"] = 1,
["manyguild"] = 5,
["guildmerges"] = 5,
["deadserver"] = 5,
["serverdeath"] = 5,
["nonwhites"] = 5,
["nonwhite"] = 5,
["hatewhites"] = 5,
["isntbanned"] = 5,
["theadmins"] = 2,
["theirguild"] = 5,
["getbanned"] = 5,
["beginwith"] = 5,
["againstthem"] = 5,
["imwilling"] = 2,
["whitefolks"] = 5,
["whitepeople"] = 5,
["antimajority"] = 5,
["despitebeing"] = 5,
["worldminority"] = 5,
["worldsminority"] = 5,
["cansummon"] = 2,
["guildrun"] = 1,
["hostedby"] = 2,
["nohr"] = 1,
["freshrun"] = 2,

["gearcheck"] = 1,
["postyourgear"] = 1,
}

GF_WORD_LFM = {
["lfm"] = 3,["lf"] = 2,["lft"] = 2,["lfr"] = 2,["wtj"] = 2,

-- Two Words
["lookingfor"] = 2,["lfdamage"] = 3,["lfheal"] = 3,["lftank"] = 3,["lfot"] = 3,["lfmt"] = 3,["lfofftank"] = 3,["lfmaintank"] = 3,["lftanks"] = 3,["lfdps"] = 3,["lfdd"] = 3,["lfhealer"] = 3,["lfheals"] = 3,["lfmore"] = 3,["lfall"] = 3,

["needheal"] = 2,["comeheal"] = 2,["joinheal"] = 2,["lastheal"] = 2,
["needdamage"] = 2,["comedamage"] = 2,["joindamage"] = 2,["lastdamage"] = 2,["needaoe"] = 2,
["needtank"] = 2,["cometank"] = 2,["moretank"] = 2,["anytank"] = 2,["jointank"] = 2,["lasttank"] = 2,
["needrange"] = 2,["comerange"] = 2,["morerange"] = 2,["anyrange"] = 2,
["needcaster"] = 2,["comecaster"] = 2,["morecaster"] = 2,["anycaster"] = 2,
["needmelee"] = 2,["comemelee"] = 2,["moremelee"] = 2,["anymelee"] = 2,
["needdruid"] = 2,["needhunter"] = 2,["needmage"] = 2,["needpaladin"] = 2,["needpriest"] = 2,["needrogue"] = 2,["needshaman"] = 2,["needwarlock"] = 2,["needlock"] = 2,["needwarrior"] = 2,
["anyonefor"] = 2,["anyoneneed"] = 2,
["lfhelp"] = 2,["wannahelp"] = 2,["pleasehelp"] = 2,["helpplease"] = 2,["helpkill"] = 2,
["morespot"] = 2,["morespots"] = 2,["lastspot"] = 2,["spotleft"] = 2,["spotsleft"] = 2,

["formingraid"] = 2,["hostraid"] = 2,
["groupquest"] = 2,["doingquest"] = 2,["anyonequest"] = 2,
["summonready"] = 2,["anyoneinterested"] = 2,["msos"] = 2,

-- Three Words
["lookingformore"] = 2,["lookingforquest"] = 2,["srmsos"] = 2,["lokingformore"] = 2,
["needsometank"] = 2,["needonlytank"] = 2,["lookingfortank"] = 3,["tanklookingfor"] = 3,["onlytankfor"] = 2,["onlyneedtank"] = 2,["anytankfor"] = 2,["needlasttank"] = 2,["tankaroundfor"] = 2,
["needsomeheal"] = 2,["needonlyheal"] = 2,["lookingforheal"] = 3,["heallookingfor"] = 3,["onlyhealfor"] = 2,["onlyneedheal"] = 2,["anyhealfor"] = 2,["needlastheal"] = 2,["healaroundfor"] = 2,
["needsomedamage"] = 2,["needonlydamage"] = 2,["lookingfordamage"] = 3,["damagelookingfor"] = 3,["onlydamagefor"] = 2,["onlyneeddamage"] = 2,["anydamagefor"] = 2,["needlastdamage"] = 2,["damagearoundfor"] = 2,
["lookingforstealth"] = 2,["needstealth"] = 2,["needanyonestealth"] = 2,
["tankdamagefor"] = 2,["tankhealfor"] = 2,["healtankfor"] = 2,["healdamagefor"] = 2,["damagehealfor"] = 2,["damagetankfor"] = 2,
["lookingfordruid"] = 2,["lookingforhunter"] = 2,["lookingformage"] = 2,["lookingforpaladin"] = 2,["lookingforpriest"] = 2,["lookingforrogue"] = 2,["lookingforshaman"] = 2,["lookingforwarlock"] = 2,["lookingforlock"] = 2,["lookingforwarrior"] = 2,

["anyoneelseneed"] = 2,["anyonealsoneed"] = 2,["anyoneelsefor"] = 2,["anyoneelsedoing"] = 2,["anyoneelsequest"] = 2,["anyoneupfor"] = 2,["anyonewannado"] = 2,["anyonewannajoin"] = 2,["anyothersfor"] = 2,["anyupfor"] = 2,["anyonehelpwith"] = 2,["anyonetodo"] = 2,
["anygroupfor"] = 2,["anygroupdoing"] = 2,["anygroupneed"] = 2,["anygroupup"] = 2,["anypartyneed"] = 2,["anydungeonneed"] = 2,["anyallianceneed"] = 2,["anyhordeneed"] = 2,
["allianceforquest"] = 2,["hordeforquest"] = 2,

["ifanyoneneed"] = 2,["anyoneneedto"] = 2,["anyonewannafarm"] = 2,["anyoneforquest"] = 2,["anyonetherefor"] = 2,["anyonewannakill"] = 2,
["wannahelpwith"] = 2,["needtohelp"] = 2,["ineedhelp"] = 2,["helpwithquest"] = 2,["willingtohelp"] = 2,["helpoutwith"] = 2,
["helpmewith"] = 2,["helpmewit"] = 2,["anyhelpin"] = 2,["anyhelpfor"] = 2,["anyonewannahelp"] = 2,["anyonemindhelping"] = 2,["whocanhelp"] = 2,
["roomformore"] = 2,["moreneededfor"] = 2,["moreforquest"] = 3,["spotleftfor"] = 2,["slotsforquest"] = 2,["slotforquest"] = 2,
["needpeoplefor"] = 2,["morepeoplefor"] = 2,["canusemore"] = 2,["needmorefor"] = 2,["needallfor"] = 2,["needgroupfor"] = 2,["needpartyfor"] = 2,["needmorepeople"] = 2,

["forminggroupfor"] = 2,["startinggroupfor"] = 2,["makinggroupfor"] = 2,["forminggroupto"] = 2,["startinggroupto"] = 2,["makinggroupto"] = 2,
["wforinvite"] = 2,["whisperforinvite"] = 2,["invitemefor"] = 2,["wannateamup"] = 2,["comewithme"] = 2,["comeanddo"] = 2,["needtocome"] = 2,["whoneedtodo"] = 2,["interestedinrunning"] = 2,["groupforelite"] = 2,

["anymchappening"] = 2,["anybwlhappening"] = 2,["anyaqhappening"] = 2,["anynaxxhappening"] = 2,["anynaxxramashappening"] = 2,["anyonyxiahappening"] = 2,["anyzghappening"] = 2,
["anymcgoing"] = 2,["anybwlgoing"] = 2,["anyaqgoing"] = 2,["anynaxxgoing"] = 2,["anynaxxramasgoing"] = 2,["anyonyxiagoing"] = 2,["anyzggoing"] = 2,

["anykarazhanhappening"] = 2,["anykarazhangoing"] = 2,

-- Four Words
["tankanddamagefor"] = 2,["tankandhealfor"] = 2,["healandtankfor"] = 2,["healanddamagefor"] = 2,["damageandhealfor"] = 2,["damageandtankfor"] = 2,["needsomerandomdamage"] = 2,
["healmissingthengo"] = 2,["tankmissingthengo"] = 2,["damagemissingthengo"] = 2,
["anyoneneedtorun"] = 2,["anyoneneedtodo"] = 2,["whoneedtodo"] = 2,["anyoneneedtojoin"] = 2,["ifyouwannajoin"] = 2,["anyonewhocanhelp"] = 2,["anygroupsgoingfor"] = 2,["anyoneneedingtodo"] = 2,["anyoneneedtokill"] = 2,
["wannadoquest"] = 2,["needtodoquest"] = 2,["anyoneuptoquest"] = 2,["anyoneupforquest"] = 2,["anyoneneedtoquest"] = 2,["helpwithaquest"] = 2,["comewithmequest"] = 2,["whoisdownto"] = 2,
["anyonedowntohelp"] = 2,["anyonecaretohelp"] = 2,["anyoneneedtohelp"] = 2,["anyoneabletohelp"] = 2,["anyonethatcanhelp"] = 2,["caretohelpwith"] = 2,["helpmeoutwith"] = 2,["cananyonehelpme"] = 2,
["anyonehelpmewith"] = 2,["needanotherforquest"] = 2,["needotherforquest"] = 2,

["formingagroupfor"] = 2,["startingagroupfor"] = 2,["makingagroupfor"] = 2,["formingagroupto"] = 2,["startingagroupto"] = 2,["makingagroupto"] = 2,
["needtoteamup"] = 2,["anygamersforquest"] = 2,["anygamersquest"] = 2,

["anymoltencorehappening"] = 2,["anyblackwinglairhappening"] = 2,["anyworldbosshappening"] = 2,
["anymoltencoregoing"] = 2,["anyblackwinglairgoing"] = 2,["anyworldbossgoing"] = 2,

-- Farm
["badgefarm"] = 2,["argentdawnrepfarm"] = 2,["stratrepfarm"] = 2,["repfarmopen"] = 2,["getyouraqrepfarm"] = 2,["combatbadgefarm"] = 2,
}
GF_WORD_LFG = {
["lfg"] = true,["lkg"] = true,["lfd"] = true,["lfr"] = true,

-- Two Words
["anyonedoing"] = true,

-- Three Words
["lookingforgroup"] = true,
["lokingforgroup"] = true,
["lookingtogroup"] = true,
["lokingtogroup"] = true,
["needtogroup"] = true,
["anyaqrepfarm"] = true,
["anyccrepfarm"] = true,
["anyccrepfarm"] = true,
["anycenarionrepfarm"] = true,
["anyargentrepfarm"] = true,
["anyargentdawnrepfarm"] = true,
["anyaqrepfarm"] = true,
["anyaqccrepfarm"] = true,
["anystratrepfarm"] = true,
["anyrepfarmstrat"] = true,["anyscholomancestratrepfarm"] = true,["anystratscholomancerepfarm"] = true,
["anyscholomancestratholmerepfarm"] = true,["anystratholmescholomancerepfarm"] = true,

-- Four Words
}
GF_LFM_ONE_AFTER = {
["anyone"] = true,
["help"] = true,
["group"] = true,
["raid"] = true,
["queue"] = true,
["join"] = true,
["heal"] = true,
["damage"] = true,
["tank"] = true,
["happening"] = true,
["going"] = true,
["gtg"] = true,
["run"] = true,
["need"] = true,
["invite"] = true,
["forming"] = true,
["id"] = true,
}
GF_LFM_ONE_BEFORE = {
["anyone"] = true,
["help"] = true,
["group"] = true,
["queue"] = true,
["join"] = true,
["heal"] = true,
["damage"] = true,
["tank"] = true,
["gtg"] = true,
["need"] = true,
["invite"] = true,
["p"] = true,
}
GF_LFM_TWO_AFTER = {
["needhelp"] = true,
["needmore"] = true,
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
["anyonefor"] = true,
["anyonerunning"] = true,
["hosta"] = true,
["hostan"] = true,
["forminga"] = true,
["startinga"] = true,
["letsdo"] = true,
["needall"] = true,
["helpon"] = true,
["morefor"] = true,
["invitefor"] = true,
["takeme"] = true,
}
GF_LFM_OTHER = {
["lfmtribute"] = true,["lfmstrat"] = true,["lfmstart"] = true,["lfmgy"] = true,["lfmgnome"] = true,["lfmtemple"] = true,
["lftribute"] = true,["lfstrat"] = true,["lfstart"] = true,["lfgy"] = true,["lfgnome"] = true,["lftemple"] = true,
}
GF_LFG_OTHER = {
["lfgtribute"] = true,["lfgstrat"] = true,["lfgstart"] = true,["lfggy"] = true,["lfggnome"] = true,["lfgtemple"] = true,
}

GF_WORD_CLASSES = {
["druid"] = 0,["hunter"] = 0,["mage"] = 0,["paladin"] = 0,["priest"] = 0,["rogue"] = 0,["shaman"] = 0,["warlock"] = 0,["lock"] = 0,["warrior"] = 0,
["heal"] = 0,["tank"] = 0,["damage"] = 0,["range"] = 0,["melee"] = 0,["caster"] = 0,
}
GF_WORD_QUEST = {
["hogger"] = 10,["vagash"] = 11,["arugals"] = 15,["pyrewood"] = 15,["murkdeep"] = 18,["mercenaries"] = 19,["gyromast"] = 20,["gyromasts"] = 20,["counterattack"] = 20,["vyrin"] = 20,["vyrins"] = 20,["arachnophobia"] = 21,
["choksul"] = 22,["fenris"] = 24,["yowler"] = 25,["tharilzun"] = 25,["stonewatch"] = 26,["gathilzogg"] = 26,["gath"] = 26,["fangore"] = 26,["morganth"] = 27,["dangerous"] = 28,["arikara"] = 28,["eliza"] = 30,["steelsnap"] = 30,
["hypercapacitor"] = 30,["humbert"] = 30,["nekrosh"] = 32,["nekroshs"] = 32,["morbent"] = 32,["vorrel"] = 33,["balgaras"] = 34,["morladim"] = 35,["goldir"] = 35,["sindall"] = 37,["trollbane"] = 37,["excelsior"] = 37,
["bhagthera"] = 40,["tethis"] = 43,["bangalash"] = 43,["stromgarde"] = 37,["frostmaw"] = 37,["trelane"] = 39,["marez"] = 40,["falconcrest"] = 40,["ghostoplasm"] = 39,["cyclonian"] = 40,
["kurzen"] = 40,["fozruk"] = 42,["deathfrombelow"] = 44,["deadmire"] = 45,["oox"] = 45,["morok"] = 45,["maizoth"] = 46,["smotts"] = 46,["gammerita"] = 48,["incendosaurs"] = 49,["maltorius"] = 50,["hexx"] = 50,["muisek"] = 50,
["negolash"] = 50,["gahzrilla"] = 50,["mokrash"] = 50,["mok"] = 50,["jinthaalor"] = 50,["sharpbeak"] = 51,["revantusk"] = 51,["torntusk"] = 51,["obsidion"] = 52,["gorshak"] = 52,["shadra"] = 55,["ursius"] = 56,
["brumeran"] = 58,["azsharite"] = 58,["hetaera"] = 58,["kirith"] = 58,["grark"] = 58,["winterfall"] = 59,["deathclasp"] = 59,["duskwing"] = 60,["corpulent"] = 60,["borelgore"] = 60,["courier"] = 60,
["demetria"] = 60,["ascension"] = 60,["rakh"] = 60,["rakhlikh"] = 60,["abyssal"] = 60,["araj"] = 60,["arajs"] = 60,["andorhal"] = 60,["fordring"] = 60,["frostmaul"] = 60,["shyrotam"] = 60,["somnus"] = 60,["chronalis"] = 60,["axtroz"] = 60,["scryer"] = 60,
["rotam"] = 60,["bloodkelp"] = 60,["rakhlikh"] = 60,["xoroth"] = 60,["dreadsteed"] = 60,["hearthglen"] = 60,["suppression"] = 60,["hiveashi"] = 60,["hiveregal"] = 60,["hivezora"] = 60,["chimaerok"] = 63,["decoy"] = 63,
["lakmaeran"] = 64,["neptulon"] = 64,["maws"] = 64,["eranikus"] = 64,["nathanos"] = 63,["blightcaller"] = 63,["darrowshire"] = 63,["drakisath"] = 63,["thunderaan"] = 64,
["combatbadge"] = 60,["combatbadges"] = 60,["badgefarm"] = 60,["hyjalshard"] = 60,["dukes"] = 60,["elite"] = 0,["escort"] = 0,["quest"] = 0,["task"] = 0,["repfarm"] = 0,

-- Two Words
["gatheringidols"] = 18,["denmother"] = 18,["tharnariunshope"] = 18,["theweaver"] = 20,["lookingfurther"] = 22,["furbolgvillage"] = 23,["solomonslaw"] = 23,["shadowmagic"] = 23,
["blackrockbounty"] = 25,["eliteredridge"] = 26,["lieutenantfangore"] = 26,["redridgeelite"] = 26,["redridgegroup"] = 26,["lakeshireelite"] = 26,["elitelakeshire"] = 26,
["bloodfurybloodline"] = 26,["theden"] = 29,["hordepresence"] = 29,["hypercapacitorgizmo"] = 30,["hillsbradelite"] = 30,["hillsbradgroup"] = 30,["elitewetlands"] = 30,
["wetlandselite"] = 30,["dunmodr"] = 30,["humbertssword"] = 30,["dungarok"] = 30,["theattack"] = 31,["thandolspan"] = 31,["insanedruids"] = 32,["vorrelsrevenge"] = 33,
["grimtask"] = 34,["morladim"] = 35,["preservingknowledge"] = 38,["crushridgewarmongers"] = 40,["brokensigil"] = 40,["thecorrupter"] = 40,["tigermastery"] = 37,["arathielite"] = 40,
["alteracelite"] = 40,["arathigroup"] = 40,["alteracgroup"] = 40,["dustwallowelite"] = 40,["thesummon"] = 40,["darkcouncil"] = 40,["elitearathi"] = 40,["panthermastery"] = 40,["demonoftheorb"] = 40,["khanhratha"] = 42,
["raptormastery"] = 43,["dustwallowelite"] = 45,["stranglethornfever"] = 45,["mindseye"] = 46,["crackingmaury"] = 44,["bloodsailbuccaneers"] = 45,["chickenquest"] = 45,["chickenescort"] = 45,["homingrobot"] = 45,
["captainschest"] = 47,["jinthaalor"] = 50,["brokenalliances"] = 50,["darkvessels"] = 50,["separationanxiety"] = 50,["cliffgiant"] = 50,["darkheart"] = 50,["ancientegg"] = 50,["hintelite"] = 50,
["hinterlandselite"] = 50,["hintgroup"] = 50,["hinterlandsgroup"] = 50,["hinterlandsquest"] = 50,["elitehinterlands"] = 50,["trollelite"] = 50,["flamescasing"] = 50,["revantuskvillage"] = 51,
["alienecology"] = 52,["overmasterpyron"] = 52,["dragonkinmenace"] = 54,["burningsteppes"] = 56,["grarklorkrub"] = 58,["unfinishedbusiness"] = 58,["falrinsvendetta"] = 60,
["dearestnatalia"] = 60,["fieldduty"] = 60,["targethive"] = 60,["targethiveashi"] = 60,["targethiveregal"] = 60,["targethivezora"] = 60,["scarletsubterfuge"] = 60,
["exorcisingterrordale"] = 60,["stormwindrendezvous"] = 60,["glyphchasing"] = 62,["thecalling"] = 62,["indreams"] = 62,["lastbarov"] = 62,["hordebarov"] = 62,["alexibarov"] = 62,["weldonbarov"] = 62,
["alliancebarov"] = 62,["alcazisland"] = 62,["nightmarescorruption"] = 64,["twilightcorrupter"] = 64,["doctorweavil"] = 64,["silithusdukes"] = 60,["silithuslords"] = 64,
["highcouncil"] = 64,["thunderfuryquest"] = 64,["thunderfuryboss"] = 64,["silithuselite"] = 60,["silithusgroup"] = 60,["championsbattlegear"] = 60,["stalwartsbattlegear"] = 60,
["volunteersbattlegear"] = 60,["veteransbattlegear"] = 60,["barovelite"] = 60,["barovgroup"] = 60,["elvenlegends"] = 60,["combattask"] = 60,["combatbadge"] = 60,["badgefarm"] = 60,
["westernplaguelands"] = 60,["easternplaguelands"] = 60,["wpl"] = 60,["epl"] = 60,
["repfarm"] = 0,["argentdawnrep"] = 60,["argentdawnrepfarm"] = 60,["argentrepfarm"] = 60,["cenarionrepfarm"] = 60,["ccrepfarm"] = 60,["cenarionrep"] = 60,["ccrep"] = 60,
["bossfarm"] = 0,["levelinggroup"] = 0,["eliteq"] = 0,

-- Three Words
["deadtoothjack"] = 10,["protectingtheherd"] = 12,["thepeoplesmilitia"] = 17,["absentmindedprospector"] = 20,["lochmodanogres"] = 20,["lochmodanelite"] = 20,["lochmodangroup"] = 20,["escapethroughforce"] = 22,
["anunwelcomeguest"] = 24,["bellygrub"] = 24,["bailorsoreshipment"] = 25,["missinginaction"] = 25,["cullingthethreat"] = 25,["tomeofvalor"] = 25,["thecursedcrew"] = 29,["battleofhillsbrad"] = 30,["elixirofagony"] = 30,
["testofstrength"] = 30,["darkironwar"] = 30,["darkshireelite"] = 34,["duskwoodelite"] = 34,["darkshiregroup"] = 34,["duskwoodgroup"] = 34,["prisonbreakin"] = 34,["legendofstalvan"] = 35,
["encrustedtailfins"] = 35,["thevilereef"] = 37,["ghostoplasm"] = 39,["theperenoldetiara"] = 40,["calltoarms"] = 40,["therealthreat"] = 40,["calltoarms"] = 40,["elitequestarathi"] = 40,
["whirlwindaxe"] = 40,["whirlwindweapon"] = 40,["arathihighlandselite"] = 40,["alteracmountainelite"] = 40,["arathihighlandsgroup"] = 40,["alteracmountaingroup"] = 40,["breakingthekeystone"] = 42,["sigiloftrollbane"] = 42,
["lordalidenperenolde"] = 42,["biggamehunter"] = 43,["crownofwill"] = 43,["crackingmaurysfoot"] = 44,["dustwallowmarshelite"] = 45,["challengeoverlordmokmorok"] = 45,["broodofonyxia"] = 45,["summontheprincess"] = 50,
["elitequeuehinterlands"] = 50,["elitequesthinterlands"] = 50,["hinterlandsallianceelite"] = 50,["hinterlandshordeelite"] = 50,["hinterlandsalliancegroup"] = 50,["hinterlandshordegroup"] = 50,
["trollelite"] = 50,["setthemablaze"] = 52,["muiginandlarion"] = 52,["larionandmuigin"] = 52,["timbermawholdrep"] = 55,["offorgottenmemories"] = 57,["thefinaltablets"] = 58,["afinalblow"] = 58,
["whensmokeysings"] = 58,["mawofmadness"] = 60,["avastyeadmiral"] = 60,["thefourdukes"] = 60,["twilightbattleorders"] = 60,["kingsofflame"] = 60,["dukeofcynders"] = 60,["theeasternplagues"] = 60,
["huntingforectoplasm"] = 60,["testofskull"] = 62,["draconicfordummies"] = 64,["silithushighcouncil"] = 64,["dukesinsilithus"] = 64,

-- Four Words
["warwiththescarletcrusade"] = 12,["therelicsofwakening"] = 17,["ofthekingslands"] = 17,["thecoastisntclear"] = 19,["possiblebutnotprobable"] = 24,["thetowerofalthalaxx"] = 24,["howlinginthehills"] = 25,
["thetomeofvalor"] = 25,["kingofthefoulweald"] = 26,["looktothestars"] = 30,["fallindemoncanyon"] = 31,["brideoftheembalmer"] = 32,["curseofthetides"] = 40,["attackonthetower"] = 40,
["armyoftheblack"] = 43,["anambassadorofevil"] = 44,["handandtheheart"] = 44,["lardlosthislunch"] = 49,["tremorsoftheearth"] = 50,["jobopeningguardcaptain"] = 51,
["messageinabottle"] = 51,["hexxandherminions"] = 51,["warontheshadowsworn"] = 52,["theapesofungoro"] = 55,["dangeroustogoalone"] = 56,["nameofthebeast"] = 58,
["unitingtheshatteredamulet"] = 60,["luckbewithyou"] = 60,["ordermustberestored"] = 63,["theisleofdread"] = 64,["isleofthedread"] = 64,["pathoftherighteous"] = 64,
["broodofnozdormurepfarm"] = 64,["broodofnozdormurep"] = 64,["highcouncilinsilithus"] = 64,["staveoftheancients"] = 64,
}
GF_WORD_DUNGEON = {
["rfc"] = 15,["ragefire"] = 15,["deadmines"] = 21,["dm"] = 21,["wc"] = 21,["shadowfang"] = 24,["sfk"] = 24,["blackfathom"] = 25,["bfd"] = 25,["stock"] = 26,["stockade"] = 26,["gnomer"] = 32,["gnomeregan"] = 32,
["kraul"] = 32,["rfk"] = 32,["downs"] = 39,["rfd"] = 39,["smgy"] = 31,["lib"] = 35,["library"] = 35,["smlib"] = 35,["smarm"] = 39,["armory"] = 39,["smcath"] = 40,["cathedral"] = 40,["smfull"] = 39,
["ulda"] = 45,["uldaman"] = 45,["zf"] = 48,["zulfarrak"] = 48,["mallet"] = 48,["mara"] = 49,["maraudon"] = 49,["princess"] = 49,["st"] = 54,["sunken"] = 54,["atalhakar"] = 54,["arena"] = 55,
["brd"] = 58,["jailbreak"] = 58,["emperor"] = 58,["attunement"] = 60,["lbrs"] = 60,["brs"] = 60,["dme"] = 57,["dmn"] = 62,["dmt"] = 62,["dmw"] = 62,["scholomance"] = 62,["stratholme"] = 61,["baron"] = 62,["ubrs"] = 63,["rend"] = 63,["valthalak"] = 63,
["sm"] = 0,["razorfen"] = 0,["dungeon"] = 0,["blackrock"] = 0,

-- Two Words
["ragefirechasm"] = 15,["wailingcaverns"] = 21,["razorfenkraul"] = 32,["razorfendowns"] = 39,["smquestrun"] = 39,["sunkentemple"] = 54,["blackrockdepths"] = 58,
["lowerblackrock"] = 60,["dmwest"] = 62,["dmeast"] = 57,["dmnorth"] = 62,["dmtrib"] = 62,["dmtribute"] = 62,
["diremaulwest"] = 62,["diremauleast"] = 57,["diremaulnorth"] = 62,["diremaultrib"] = 62,["diremaultribute"] = 62,
["livestrat"] = 62,["udstrat"] = 62,["stratrep"] = 62,["upperblackrock"] = 63,["drakefireamulet"] = 63,["diremaul"] = 57,["scarletmonastery"] = 0,["foranything"] = 0,
-- Three Words
-- Four Words
}
GF_WORD_RAID = {
["zg"] = 64,["zulgurub"] = 64,["hakar"] = 63,["aq"] = 64,["ahnqiraj"] = 64,["ossirian"] = 64,["cthun"] = 64,
["mc"] = 64,["moltencore"] = 64,["rag"] = 64,["ragnaros"] = 64,["onyxia"] = 64,["ony"] = 64,["nef"] = 64,["bwl"] = 64,["blackwinglair"] = 64,["nefarian"] = 64,["naxx"] = 64,["naxxramas"] = 64,
["azuregos"] = 64,["kazzak"] = 64,["lethon"] = 64,["ysondre"] = 64,["taerar"] = 64,["emeriss"] = 64,

-- Two Words
["moltencore"] = 64,["blackwinglair"] = 64,["worldboss"] = 64,
-- Three Words
-- Four Words
}
GF_WORD_PVP = {
["av"] = 60,["ab"] = 0,["wsg"] = 0,["battleground"] = 0,["warsong"] = 0,["premade"] = 0,["bg"] = 0,["pvp"] = 0,

-- Two Words
["arathibasin"] = 0,
["alteracvalley"] = 60,

["bloodring"] = 60,
["sunnygladevalley"] = 60,
}

GF_WORD_TRADE = {
["lf"] = 102.5,["wtb"] = 4,["wts"] = 4,["wtt"] = 4,["lfw"] = 4,["ltb"] = 3,["lts"] = 3,["lfc"] = 3,
["buy"] = .5,["buying"] = 1,["sell"] = .5,["selling"] = 1,["trading"] = 1,["offer"] = 1,["paying"] = 1,["price"] = .5,["tipping"] = 2.5,["ratio"] = .5,["cod"] = .5,["deal"] = .25,["deals"] = .5,

["enchant"] = .5,["enhancement"] = .5,["leatherworker"] = .5,["tailor"] = .5,["blacksmith"] = .5,["engineer"] = .5,["alchemist"] = .5,
["crusader"] = .5,["lifesteal"] = .5,["sageblade"] = .5,["lionheart"] = .5,["titanic"] = .5,["spelldamage"] = .5,["spellpower"] = 1,["fiery"] = .5,["resist"] = .5,["spurs"] = .5,["beastslaying"] = .5,["icy"] = .5,
["stats"] = .5,["stamina"] = .25,["strength"] = .25,["agility"] = .25,["spirit"] = .25,["intellect"] = .25,["defense"] = .25,["res"] = .5,["arcanum"] = .5,

["craft"] = .5,["crafter"] = 1,["mats"] = .5,["maker"] = .5,
["carry"] = 1,["boost"] = 1,
["arcanologist"] = 1.5,
["hitem"] = .5,
["lockbox"] = 1,
["summon"] = .25,["portal"] = .5,
["stormwind"] = .25,["ironforge"] = .25,["darnassus"] = .25,["undercity"] = .25,["orgrimmar"] = .25,["thunderbluff"] = .25,["darkmoon"] = .25,["dmf"] = .25,["silithus"] = .25,["hydraxian"] = .25,["winterspring"] = .25,
["casino"] = 1,["deathroll"] = 1,

-- Two Words
["lookingfor"] = 102.5,["anyonehave"] = 1.5,["wannabuy"] = 2.5,["lfweapon"] = .5,["lfcrusader"] = .5,["lfriding"] = .5,["lfarcanum"] = .5,
["buyinghitem"] = 2,["sellinghitem"] = 2,["sellhitem"] = 2.5,["sellinghenchant"] = 2,["sellhenchant"] = 2,["anyoneselling"] = 1.5,["tosell"] = .5,["tobuy"] = .5,["forsale"] = 2.5,["onah"] = 2.5,["inah"] = 2.5,["auctionhouse"] = 1,
["payinggold"] = 1,["payingmoney"] = 1,["smalltip"] = 1,["willtip"] = 3,["cantip"] = 2,["illtip"] = 2,["anytip"] = 1,["fortip"] = 1,["goldtip"] = 1,["tipanything"] = 1,["tipappreciated"] = 1,
["mymats"] = .5,["havemats"] = 1,["yourmats"] = 2.5,
["gearcrafter"] = 1,["crafterhitem"] = 1,["gethitem"] = 1,["offercraft"] = 1,["icraft"] = 1,
["wannatrade"] = 2.5,["wannnatrade"] = 3,
["willpay"] = 2,["willwork"] = 3,

["buyenchant"] = 2,["buyingenchant"] = 1.5,["getenchant"] = 1,["withenchant"] = 1,["needenchant"] = 2,["anyenchant"] = 1.5,["anenchant"] = .5,["canenchant"] = .5,["enchantservice"] = 3,["haveenhancement"] = .5,
["enchantinorgrimmar"] = 2.5,["enchantinstormwind"] = 2.5,["enchantinironforge"] = 2.5,

["anyalchemist"] = 1.5,["anyengineer"] = 1.5,["anytailor"] = 1.5,["anyleatherworker"] = 1.5,["anylw"] = 1.5,
["lfalchemist"] = 3,["lfenchant"] = 3,["lfengineer"] = 3,["lftailor"] = 3,["lflw"] = 3,["lfleatherworker"] = 3,["lfminer"] = 3,
["lfbs"] = 3,["lfblacksmith"] = 3,["anyblacksmith"] = 1.5,["anybs"] = 1.5,["blacksmitharound"] = 2,
["attachhitem"] = 1,["attachinghitem"] = 3,["applyhitem"] = 3,["installhitem"] = 3,["installinghitem"] = 3,

["needcrusader"] = 1,["needbeastslaying"] = 1,["needicy"] = 1,["needfiery"] = 1,["withfiery"] = 1,
["arcaneresist"] = .5,["fireresist"] = .5,["shadowresist"] = .5,["frostresist"] = .5,["natureresist"] = .5,["arcaneres"] = .5,["fireres"] = .5,["shadowres"] = .5,["frostres"] = .5,["natureres"] = .5,["allres"] = .5,["resall"] = .5,
["allresist"] = .5,["resistall"] = .5,["enchantcloak"] = .5,["enchantchest"] = .5,["enchantwrist"] = .5,["enchantweapon"] = .5,["enchantshield"] = .5,["enchantgloves"] = .5,["enchantboots"] = .5,
["healthchest"] = .5,["chesthealth"] = .5,["staminawrist"] = .5,["wristtamina"] = .5,["wristintellect"] = .5,["wristspellpower"] = .5,["cloakagility"] = .5,["agilitycloak"] = .5,["subtletycloak"] = .5,
["cloakresist"] = .5,["staminaboots"] = .5,["bootsstamina"] = .5,["shieldstamina"] = .5,["gloveshaste"] = .5,["hastegloves"] = .5,
["strengthwrist"] = .5,["staminawrist"] = .5,["intellectwrist"] = .5,["agilitygloves"] = .5,["agilityboots"] = .5,["glovesagility"] = .5,["bootsagility"] = .5,["cloakall"] = 3,["agilityhand"] = .5,["agilitytwohand"] = .5,
["allstats"] = .5,["ridingskill"] = .5,["mountspeed"] = .5,["spelldamage"] = .5,["spellpower"] = 1,["healpower"] = 1,["minorspeed"] = .5,["shieldspike"] = .5,["majorhealth"] = .5,["majormana"] = .5,["lesserblock"] = .5,["weapondamage"] = .5,["weaponchain"] = .5,
["firedamage"] = .5,["frostdamage"] = .5,["shadowdamage"] = .5,["arcanedamage"] = .5,["naturedamage"] = .5,["agilityenchant"] = .5,["strengthenchant"] = .5,["healenchant"] = 1,
["anystats"] = .25,["anystamina"] = .25,["anystrength"] = .25,["anyagility"] = .25,["anyspirit"] = .25,["anyintellect"] = .25,
["agilityhead"] = .5,["agilitylegs"] = .5,["strengthhead"] = .5,["strengthlegs"] = .5,["healweapon"] = .5,["damageweapon"] = .5,["elementalstones"] = .5,["redglow"] = .5,
["transmutehitem"] = 1,["transmutearcane"] = 1,["arcanetransmute"] = 1,["moonclothcooldown"] = 1,

["bankinorgrimmar"] = 2,["orgrimmarbank"] = 2,["banksteps"] = 2,["bankstairs"] = 2,["ahbridge"] = 2,["ifbridge"] = 2,["ironforgebridge"] = 2,["ahdoor"] = 2,["stormwindbank"] = 2,["outsideah"] = 1,["instormwind"] = .75,["belowah"] = 1,
["inorgrimmar"] = .75,["atfountain"] = .5,["stormwindfountain"] = .5,["fromstormwind"] = .75,["fromironforge"] = .75,["fromdarnassus"] = .75,["fromorgrimmar"] = .75,["fromundercity"] = .75,["fromthunder"] = .75,

["lfportal"] = 3,["needportal"] = 2.25,["buyingportal"] = .5,["buyportal"] = .5,["portalservice"] = 3,["gportal"] = 3,["offeringportal"] = 2,["sellportal"] = .5,["sellingportal"] = 1,["portalto"] = .5,
["stormwindportal"] = 2,["darnassusportal"] = 2,["ironforgeportal"] = 2,["ifportal"] = 2,["orgrimmarportal"] = 2,["undercityportal"] = 2,["thunderbluffportal"] = 2,

["lfsummon"] = 3,["requestsummon"] = 1.5,["needsummon"] = 2.25,["buyingsummon"] = 3,["buysummon"] = 2,["summonservice"] = 20,["gsummon"] = 3,["offeringsummon"] = 2,
["sellsummon"] = .5,["sellingsummon"] = 3,["summonto"] = .5,["offeringtaxi"] = 1,["summonaround"] = 1.5,
["summonsm"] = .5,["summonhydraxian"] = .5,["summonmoonglade"] = .5,["summonwinterspring"] = .5,["summonsilithus"] = .5,["summondiremaul"] = .5,["summondm"] = .5,
["smsummon"] = .5,["hydraxiansummon"] = .5,["moongladesummon"] = .5,["winterspringsummon"] = .5,["silithussummon"] = .5,["diremaulsummon"] = .5,["dmsummon"] = .5,

["reasonableprice"] = .5,["foronly"] = 1,["anymage"] = 1,
["carryservice"] = 20,["keyservice"] = 3,["taxiservice"] = 20,["keyholder"] = 1.5,["healservice"] = 20,["bsservice"] = 1.5,["blacksmithservice"] = 1.5,["tankservice"] = 20,
["allrecipes"] = 3,["madeby"] = .5,["bagmaker"] = .5,["bagcrafter"] = .5,
["fullyrestocked"] = 1,["inbulk"] = 1,["perstack"] = 1,["lastcall"] = 1,
["openubrs"] = 1.5,
["stormwindif"] = .25,["ifstormwind"] = .25,
["anyoneinterested"] = 1,
["exquisitemetalwork"] = 1,
["deliveredanywhere"] = 1,

["bestodds"] = 1,

-- Three Words
["iseeka"] = 2.5,["iseekan"] = 2.5,["buyingasummon"] = 3,["buyasummon"] = 2,["offeringasummon"] = 2,["sellingasummon"] = 3,
["needtobuy"] = 2.5,["needtosell"] = 2.5,["needtotrade"] = 2.5,["getyourhitem"] = 1,["getyourhenchant"] = 1,["iwillenchant"] = 2,["comegetyour"] = 1,["selltome"] = 1.5,
["havethemats"] = .5,["mymatstip"] = 3,["yourmatstip"] = 3,["workfortip"] = 3,["tipanyamount"] = 3,["ipaygold"] = 1,["illpaygold"] = 1,["tipisoptional"] = 2,["tipareappreciated"] = 1,
["lookingforwork"] = 3,["lookingtobuy"] = 3,["lookingtosell"] = 3,["lookingforcrafter"] = 3,["whocancraft"] = 1.5,["cananyonecraft"] = 2,["cananyonemake"] = 2,["anyoneableto"] = 2,["needcrafterhitem"] = 1,
["anyonetomake"] = 1,["anyonetocraft"] = 1,["anyonecancraft"] = 1,["anyonetosell"] = 1,["willingtosell"] = 1,["anyonetobuy"] = 1,["anyonehavehitem"] = 1,

["whocanenchant"] = 1.5,["anyenchantonline"] = 3,["anyenchantwith"] = 3,["getaenchant"] = 1,["getanenchant"] = 1,["thatcanenchant"] = .5,["canenchantwith"] = 1,

["anyblacksmithable"] = 2,["anyblacksmitharound"] = 2,
["anyleatherworkerable"] = 1,["anyleatherworkeraround"] = 2,
["anytailorable"] = 1,["anytailoraround"] = 2,
["anyengineerable"] = 1,["anyengineeraround"] = 2,
["anyalchemistable"] = 1,["anyalchemistaround"] = 2,

["blacksmithattachhitem"] = 3,["anyonetoattach"] = 3,["abletoattach"] = 2,["cananyoneapply"] = 2.5,
["applyspurs"] = 2.5,["applyahitem"] = 3,["cananyoneattach"] = 3,["applyhavehitem"] = 1,

["movespeedboots"] = 1,["movementspeedboots"] = 1,["minorspeedboots"] = 1,["mstoboots"] = 1,["mountspeedhand"] = 1,["mountspeedgloves"] = 1,["agilitytohead"] = 1,["agilitytolegs"] = 1,["strengthtohead"] = 1,["strengthtolegs"] = 1,
["agilitytogloves"] = .5,["agilitytohand"] = .5,["agilitytotwohand"] = .5,["agilityonhand"] = .5,["agilityontwohand"] = .5,["agilityforhand"] = .5,["agilityfortwohand"] = .5,["hastetogloves"] = .5,["hasteongloves"] = .5,["hasteforgloves"] = .5,
["healtogloves"] = .5,["shadowtogloves"] = .5,["firetogloves"] = .5,["frosttogloves"] = .5,["agilitytoboots"] = 1,["healtoweapon"] = 1,["damagetoweapon"] = 1,["spellpowertoweapon"] = 1,
["healthtochest"] = 1,["healthtohead"] = 1,["healthtolegs"] = 1,["statstochest"] = 1,["staminatowrist"] = 1,["staminatoboots"] = 1,["agilitytocloak"] = 1,["resisttocloak"] = 1,["strengthtowrist"] = 1,["intellecttowrist"] = 1,

["createaportal"] = 2,["portalmeto"] = 1.5,["anyportalto"] = 1,["makeaportal"] = .5,["makeaportalto"] = 1,
["portaltostormwind"] = 1,["portaltoironforge"] = 1,["portaltoif"] = 1,["portaltodarnassus"] = 1,["portaltoorgrimmar"] = 1,["portaltoundercity"] = 1,["portaltothunderbluff"] = 1,["portaltothunder"] = 1,
["buyportalstormwind"] = 1,["buyportalironforge"] = 1,["buyportalif"] = 1,["buyportaldarnassus"] = 1,["buyportalorgrimmar"] = 1,["buyportalundercity"] = 1,["buyportalthunderbluff"] = 1,["buyportalthunder"] = 1,
["needportalstormwind"] = 1,["needportalironforge"] = 1,["needportalif"] = 1,["needportaldarnassus"] = 1,["needportalorgrimmar"] = 1,["needportalundercity"] = 1,["needportalthunderbluff"] = 1,["needportalthunder"] = 1,
["needstormwindportal"] = 1,["needironforgeportal"] = 1,["needifportal"] = 1,["needdarnassusportal"] = 1,["needorgrimmarportal"] = 1,["needundercityportal"] = 1,["needthunderbluffportal"] = 1,["needthunderportal"] = 1,

["payinggoldsummon"] = 2,["payingmoneysummon"] = 2,["havesummon"] = 1,["warlocktosummon"] = 1,["locktosummon"] = 1,["summonmeto"] = 2.5,["anysummonin"] = 2.5,["abletosummon"] = .5,["anylockable"] = .5,["anywarlockable"] = .5,
["lfhydraxiansummon"] = 2,
["summontobarrens"] = 2,["summontostonard"] = 2,["summontobootybay"] = 2,["summontomoonglade"] = 2,["summontowinterspring"] = 2,["summontodesolace"] = 2,["summontoferalas"] = 2,["summontosilithus"] = 2,
["summontohydraxian"] = 2,["summontosm"] = 2,["summontotanaris"] = 2,["summontoepl"] = 2,["summontowpl"] = 2,["summontoalterac"] = 2,["summontoarathi"] = 2,["summontobadlands"] = 2,
["summontoblasted"] = 2,["summontokara"] = 2,["summontodiremaul"] = 2,
["anysummonhydraxian"] = 2,["anysmsummon"] = 2,["anysummonmoonglade"] = 2,["anyhydraxiansummon"] = 2,["anymoongladesummon"] = 2,["anywinterspringsummon"] = 2,["anysummonwinterspring"] = 2,
["anysilithussummon"] = 2,["anysummonsilithus"] = 2,["anyonesilithussummon"] = 2,["anyonesummonsilithus"] = 2,["anysummondiremaul"] = 2,["anysummondm"] = 2,["anyonesummondiremaul"] = 2,["anyonesummondm"] = 2,
["anyonesummonhydraxian"] = 2,["anyonesmsummon"] = 2,["anyonesummonmoonglade"] = 2,["anyonehydraxiansummon"] = 2,["anyonemoongladesummon"] = 2,["anyonewinterspringsummon"] = 2,["anyonesummonwinterspring"] = 2,

["sellingslotbags"] = 3,["bagonah"] = 3,["anyoneinstormwind"] = .5,["topoffountain"] = 1,["atthefountain"] = 1,["infrontbank"] = 2,["cheaperthanauctionhouse"] = 1,["lowerthanah"] = 1,["lessthanah"] = 1,["cheaperthanah"] = 1,["nowonsale"] = 1,
["auctionhouseentrance"] = 1,["ahentrance"] = 1,["auctionhousebridge"] = 2,["auctionhousedoor"] = 2,
["tomakeme"] = 1,["goodsandservice"] = 1,["offeringubrskey"] = 2,["openforubrs"] = 1.5,["shopisopen"] = 1.5,["openforbusiness"] = 1,
["arcanebartransmute"] = 1,["arcanetransmutecd"] = 1,
["healsellingservice"] = 2,["tanksellingservice"] = 2,["dungeontankservice"] = 2,
["anyoneboostme"] = 1,

["needagilityto"] = 2,["needstrengthto"] = 2,["needhealto"] = 2,["needdamageto"] = 2,["needspellpowerto"] = 2,["needhealthto"] = 2,["needstaminato"] = 2,["needintellectto"] = 2,["needstatsto"] = 2,["needhasteto"] = 2,
["needfireto"] = 2,["needfrostto"] = 2,["needshadowto"] = 2,["needarcaneto"] = 2,["neednatureto"] = 2,["needlesserblockto"] = 2,["needweapondamageto"] = 2,["needmajormanato"] = 2,["needmanato"] = 2,["needmajorhealthto"] = 2,
["needshieldspiketo"] = 2,["needminorspeedto"] = 2,["needspeedto"] = 2,["needhealpowerto"] = 2,["needridingskillto"] = 2,["needallstatsto"] = 2,["needresistto"] = 2,["needspiritto"] = 2,
["needagilityon"] = 2,["needstrengthon"] = 2,["needhealon"] = 2,["needdamageon"] = 2,["needspellpoweron"] = 2,["needhealthon"] = 2,["needstaminaon"] = 2,["needintellecton"] = 2,["needstatson"] = 2,["needhasteon"] = 2,
["needfireon"] = 2,["needfroston"] = 2,["needshadowon"] = 2,["needarcaneon"] = 2,["neednatureon"] = 2,["needlesserblockon"] = 2,["needweapondamageon"] = 2,["needmajormanaon"] = 2,["needmanaon"] = 2,["needmajorhealthon"] = 2,
["needshieldspikeon"] = 2,["needminorspeedon"] = 2,["needspeedon"] = 2,["needhealpoweron"] = 2,["needridingskillon"] = 2,["needallstatson"] = 2,["needresiston"] = 2,["needspiriton"] = 2,

["doubleyourgold"] = 1.5,["tripleyourgold"] = 1.5,["playsomecasino"] = 2,["testyourluck"] = 3,["tryyourluck"] = 3,["getrichnow"] = 3,["goldforeverybody"] = 3,["gonnaberich"] = 1.5,["atthecasino"] = 1,["winitall"] = 1,
["magicalrefreshmentshere"] = 2,["firstcustomersget"] = 1,["conjuredwater"] = .5,["discounts"] = .5,["magemakeme"] = 1,

-- Four Words
["anyoneneedanysummon"] = 3,["applyashieldspike"] = 3,["needspikeattached"] = 2,["cananyonemakehitem"] = 1,["cananyonemakethis"] = .5,["installthisforme"] = 1,["anyoneabletomake"] = 2,["iwillpaygold"] = 2,["willipaygold"] = 2,
["anyenchantwhocan"] = 1.5,["anyenchantwhowill"] = 1.5,["anynenchantwhohas"] = 1.5,["anynenchantwhohave"] = 1.5,

["cananyonesummonme"] = 2.25,["cananyoneportalme"] = 2.25,["willanyonesummonme"] = 2.25,["willanyoneportalme"] = 2.25,["lflocktosummon"] = .25,["lflockforsummon"] = .25,

["portaltostormwindplease"] = 2,["portaltoironforgeplease"] = 2,["portaltoifplease"] = 2,["portaltodarnassusplease"] = 2,["portaltoorgrimmarplease"] = 2,["portaltoundercityplease"] = 2,["portaltothunderbluffplease"] = 2,["portaltothunderplease"] = 2,
["portalmetostormwind"] = 2,["portalmetoironforge"] = 2,["portalmetoif"] = 2,["portalmetodarnassus"] = 2,["portalmetoorgrimmar"] = 2,["portalmetoundercity"] = 2,["portalmetothunderbluff"] = 2,["portalmetothunder"] = 2,
["summontobarrensplease"] = 2,["summontostonardplease"] = 2,["summontobootybayplease"] = 2,["summontomoongladeplease"] = 2,["summontowinterspringplease"] = 2,["summontodesolaceplease"] = 2,["summontoferalasplease"] = 2,["summontosilithusplease"] = 2,
["summontohydraxianplease"] = 2,["summontotanarisplease"] = 2,["summontoeplplease"] = 2,["summontowplplease"] = 2,["summontosmplease"] = 2,["summontoalteracplease"] = 2,["summontoarathiplease"] = 2,["summontobadlandsplease"] = 2,["summontoblastedplease"] = 2,
["summontokaraplease"] = 2,


["infrontofbank"] = 2,
["iprovideblacksmith"] = 1,["makeitforyou"] = 2,["canigeta"] = 1,
["anyoneinterestedtobuy"] = 2,["anyoneinterestedtosell"] = 2,["anyoneinterestedinbuying"] = 2,["anyoneinterestedinselling"] = 2,
["anyoneonlinewhocan"] = 1.5,["anyonecancrafthitem"] = .5,["anyonewillingtosell"] = 1,
["magemakemeportal"] = 2,

-- Lockbox
["freelockbox"] = 2,["lflockbox"] = 2,["lockboxservice"] = 2,["openlockbox"] = 1,["openinglockbox"] = 2,["openlock"] = .5,["openinglock"] = 1,["lflocksmith"] = 2,["unlocklockbox"] = 1,["unlocklock"] = 1,["openinghitem"] = 3,["openhitem"] = 1,
["boxopening"] = 1,["boxopen"] = 1,["lockboxopened"] = 1,["lockboxopenedtoday"] = 1,["lockboxopening"] = 1,["lockboxopeningtime"] = 1,["lockboxtime"] = 1,["itslockboxtime"] = 1,

["openalllockbox"] = 3,["openingalllockbox"] = 3,["openalllock"] = 1.5,["openingalllock"] = 1.5,["openyourlockbox"] = 2,["openyourbox"] = 2,["illopenyour"] = 1,["openyourlock"] = 1,["openingyourlockbox"] = 2,["openingyourlock"] = 1,
["unlockalllockbox"] = 2,["unlockanylockbox"] = 2,["unlockyourlockbox"] = 2,["unlockalllock"] = 1,["unlockanylock"] = 1,["unlockyourlock"] = 1,["abletounlock"] = 1.5,
["alllockbox"] = 1,["alllock"] = .5,["cananyoneopen"] = 2,["abletoopen"] = 2,["needhitem"] = 1,["pleaseunlock"] = 1,["pleaseunlockhitem"] = 1,["anyonepleaseunlockhitem"] = 1,
["needlockboxopened"] = 3,["needlocklockboxopened"] = 2,
["openalockbox"] = 2,["openalock"] = 1,
["anyonecanpick"] = 1.5,["anyonetoopen"] = 1.5,["anylockboxplease"] = 1,["anylocklockboxplease"] = 1,

["openingallyourlockbox"] = 2,["anyonetoopenlockbox"] = 2,["anyonecanopenlockbox"] = 2,["openingallyourlock"] = 2,["anyonetoopenlock"] = 2,["anyonecanopenlock"] = 2,["anyonecanopenhitem"] = 2,

["yourlockbox"] = .5,["wouldopenhitem"] = .5,["whowouldopenhitem"] = .5,["whowillopenhitem"] = .5,["whocanopenhitem"] = .5,["willopenall"] = 1,["willopenallyour"] = 1,["getyourlockbox"] = .5,
["lfroguelockbox"] = 1,
["anyroguearound"] = 1,["anyroguefor"] = 1,["anyroguethatcan"] = 1,
["canopenhitem"] = 1,
["openallyourhitem"] = 1,["helpmewithhitem"] = 1,
["openallyour"] = 1,["lockopen"] = 1,["lockopener"] = 1,["lockopening"] = 1,

["lockboxicanopen"] = 1,["icanopen"] = .5,["canopenbox"] = 1.5,["anyonecanopen"] = 1,["lastcallforlockbox"] = 1,

["levellockbox"] = .5,["lowlevellockbox"] = .5,["midlevellockbox"] = .5,

["canarogue"] = 1,["willarogue"] = 1,["anyonearoundhitem"] = 2,
["lfroguetoopen"] = 2,["lfrogueforlockbox"] = 2,["lfrogueforbox"] = 2,["anyrogueforlockbox"] = 2,["anyrogueforbox"] = 2,["needroguetoopen"] = 2,["anyroguecanopen"] = 2,["anyrogueinstormwind"] = 2,["anyrogueopenlockbox"] = 2,
["anyrogueinorgrimmar"] = 2,["roguetoopenhitem"] = 2,["anyroguearoundhitem"] = 1,["anyroguearoundlockbox"] = 1,
["roguewhocanopen"] = 2,["roguetoopenme"] = 2,["roguetoopenmy"] = 2,["rogueforsomelockbox"] = 2,["rogueforlockbox"] = 2,["rogueforopenhitem"] = 2,["rogueopenthe"] = 2,["rogueopena"] = 2,["roguearoundtoopen"] = 1,["roguearoundforlockbox"] = 2,
["toopenabox"] = 1,["toopenalockbox"] = 1,["whocanopen"] = .5,["openbox"] = .5,["openchest"] = .5,["anyonewhocanopen"] = 1,["whocanopenchest"] = 1,

["transmutehitemarcanebar"] = 1,["anyonewithmoonclothcooldown"] = 3,["anyonehavemoonclothcooldown"] = 3,

["fortunefavorsthebold"] = 3,["youtoocanwin"] = 3,["comeandplaynow"] = 3,["highestpayoutgiventoday"] = 3,["winsomeeasygold"] = 3,["needtoberich"] = 1.5,["yourwishcometrue"] = 1,

-- Foreign Words
["ppnardinalsldor"] = 3,["vidfontnen"] = 1,["dricks"] = .5,["uppskattat"] = .5,
}
GF_TRADE_WORD_EXCLUSION = {
["lfm"] = 2,["range"] = 1,["melee"] = 1,["hr"] = 1,["ms"] = 1,["os"] = 1,["lfg"] = 1,["discord"] = 1,["reserved"] = 1,
["heallf"] = 1,["tanklf"] = 1,["damagelf"] = 1,["druidlf"] = 1,["hunterlf"] = 1,["magelf"] = 1,["paladinlf"] = 1,["priestlf"] = 1,["roguelf"] = 1,["shamanlf"] = 1,["warlocklf"] = 1,["warriorlf"] = 1,
["rules"] = 1,["raidres"] = 1,["bored"] = 1,["discord"] = 1,
["recruiting"] = 1,
["quest"] = 1,
["utc"] = 1,["cet"] = 1,["msk"] = 1,["est"] = 1,["cst"] = 1,
["cringe"] = 1,
["woah"] = 1,
["homie"] = 1,
["edgy"] = 1,
["addon"] = 1,
["inventory"] = 1,
["empty"] = 1,
["btw"] = 1,
["ne"] = 1,
["elusive"] = 1,
["advice"] = 1,
["opinion"] = 1,
["sr"] = 1,["ms"] = 1,["os"] = 1,["priority"] = 1,
["progression"] = 1,
["guild"] = 1,
["roster"] = 1,
["weekly"] = 1,
["adventurers"] = 1,
["dungeon"] = .5,
["farts"] = 1,

["girl"] = 1,["boy"] = 1,["dad"] = 1,["mom"] = 1,["he"] = 1,["her"] = 1,["they"] = 1,["milf"] = 1,

-- Two Words
["runme"] = 1,["carryme"] = 1,["haveroom"] = 1,["eachrole"] = 1,["tosay"] = 1,["wentout"] = 1,["findhim"] = 1,
["mydad"] = 1,["mymom"] = 1,["mybrother"] = 1,["mysister"] = 1,["cousin"] = 1,["grandfather"] = 1,["grandmother"] = 1,
["wannawrite"] = 1,["justclick"] = 1,["ikinda"] = 1,["pleasehave"] = 1,["pleasebring"] = 1,["willneed"] = 1,["musthave"] = 1,["reallife"] = 1,
["weknow"] = 1,["thatstuff"] = 1,
["makesense"] = 1,["shouldi"] = 1,
["turnback"] = 1,["firstidol"] = 1,
["proveit"] = 1,
["treasurehunt"] = 1,
["whatsbetter"] = 1,["whatsbest"] = 1,
["beforereset"] = 2,
["tojoin"] = 1,
["sendingmessages"] = 1,
["typethat"] = 1,
["fromsending"] = 1,
["worldchat"] = 1,

-- Three Words
["whichisbetter"] = 1,["whatisbetter"] = 1,["whichisbest"] = 1,["whatisbest"] = 1,
["whycanti"] = 1,["whyicant"] = 1,
["firsttofinish"] = 1,
["wheneveritype"] = 1,
["withoutthebreaks"] = 1,
["itstopsme"] = 1,

-- Four Words
["whatdoyouthink"] = 1,
}
GF_STRING_FIND_LIST = {
	["LFM"] = {},
	["GUILDBLOCKLIST"] = { "<menu>" },
}	-- Buttons... (1) The name on the dropdowns. (2/3) Level minimum/maximum for showing on dropdowns. (4) Alternate spelling for LFG FixStrings. (5) The Instance name on the /Who List(to not whisper people already in dungeons). (6) The actual Dungeon Level.
GF_BUTTONS_LIST = {
	["SearchList"] = {
		[1] = { "Ragefire Chasm", 10, 18, "rfc", "ragefirechasm", },
		[2] = { "Deadmines", 15, 25, "deadmines", "dm", },
		[3] = { "Wailing Caverns", 16, 26, "wc", "wailingcaverns", },
		[4] = { "Blackfathom Deeps", 20, 30, "bfd", "blackfathomdeeps", "blackfathom", },
		[5] = { "Shadowfang Keep", 20, 30, "sfk", "shadowfang", },
		[6] = { "Stockades", 20, 30, "stockade", "stock", },
		[7] = { "Gnomeregan", 26, 36, "gnomeregan", "gnomer", },
		[8] = { "Razorfen Kraul", 26, 36, "rfk", "razorfenkraul", "razorfen", "kraul", },
		[9] = { "Razorfen Downs", 35, 45, "rfd", "razorfendowns", "razorfen", "downs", },
		[10] = { "SM Graveyard", 26, 36, "smgy", "sm", "scarletmonastery" },
		[11] = { "SM Library", 30, 42, "library", "smlib", "lib", "smfull", "smquestrun", "sm", "scarletmonastery"},
		[12] = { "SM Armory", 34, 44, "smarm", "armory", "smfull", "smquestrun", "sm", "scarletmonastery" },
		[13] = { "SM Cathedral", 35, 46, "smcath", "cathedral", "smfull", "smquestrun", "sm", "scarletmonastery" },
		[14] = { "Uldaman", 38, 50, "uldaman", "ulda", },
		[15] = { "Zul'Farrak", 42, 54, "zf", "zulfarrak", "mallet", },
		[16] = { "Maraudon", 43, 55, "maraudon", "mara", "princess", },
		[17] = { "Sunken Temple", 47, 58, "st", "sunkentemple", "sunken", "atalhakar"},
		[18] = { "Blackrock Depths", 48, 60, "brd", "blackrockdepths", "jailbreak", "arena", "emperor", "attunement", },
		[19] = { "Lower Blackrock Spire", 52, 60, "lbrs", "lowerblackrock", "brs", },
		[20] = { "Dire Maul East", 50, 60, "dmeast", "dme", "diremaul", "diremauleast" },
		[21] = { "Dire Maul North", 54, 60, "dmnorth", "dmn", "diremaul", "diremaulnorth" },
		[22] = { "Dire Maul West", 55, 60, "dmwest", "dmw", "diremaul", "diremaulwest"},
		[23] = { "Dire Maul Tribute", 54, 60, "dmtrib", "dmtribute", "dmt", "diremaul", "diremaultribute" },
		[24] = { "Scholomance", 55, 60, "scholomance", "argentdawnrepfarm" },
		[25] = { "Stratholme", 55, 60, "stratholme", "udstrat", "livestrat", "baron", "stratrep", "argentdawnrepfarm" },
		[26] = { "Upper Blackrock Spire", 55, 60, "ubrs", "upperblackrock", "drakefireamulet", "rend", "valthalak", "brs", },
		[27] = { "40-man Raids", 58, 60, "mc", "moltencore", "ragnaros", "rag", "onyxia", "ony", "blackwinglair", "bwl", "nefarian", "nef", "aq", "ahnqiraj", "cthun", "naxxramas", "naxx", "azuregos", "kazzak", "lethon", "ysondre", "taerar", "emeriss", "worldboss", "lords", },
		[28] = { "20-man Raids", 58, 60, "zg", "zulgurub", "hakar", "aq", "ahnqiraj", "ossirian", },
		[29] = { "PvP", 18, 60, "premade", "av", "ab", "wsg", "battleground", "warsong", "alteracvalley", "arathibasin", "bloodring", "sunnygladevalley" },
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
		[6] = { GF_30_MAN, 1, 60, },
		[7] = { GF_40_MAN, 1, 60, },
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
	[1] = "Greed roll",
	[2] = "Need roll",
	[3] = " selected Greed ",
	[4] = " selected Need ",
	[5] = " passed on: ",
}

-- Turtle additions
GF_HIGH_ELF				= "High Elf";
GF_GOBLIN				= "Goblin";
local GF_TURTLE_WORD_FIX = {
["karazan"] = "karazhan",["lowerkara"] = "karazhan",["kz"] = "kara",["lkh"] = "karazhan",["ukh"] = "karazhan",["khara"] = "kara",["cara"] = "kara",["karacrypts"] = "karacrypt",["stormwindcrypt"] = "karacrypt", -- Turtle WoW Words
["morrass"] = "morass",["moras"] = "morass",["morras"] = "morass",["klavens"] = "klaven",["crypts"] = "crypt",["cresent"] = "crescent",["vaults"] = "vault",["hijal"] = "hyjal",
["hatforge"] = "hateforge",["hategorhe"] = "hateforge",["hyial"] = "hyjal",["hidraxian"] = "hydraxian",["gileas"] = "gilneas",["gilenas"] = "gilneas",["gineas"] = "gilneas",
["gileans"] = "gilneas",["gilnease"] = "gilneas",["gilneaas"] = "gilneas",["glineas"] = "gilneas",["guilneas"] = "gilneas",["gelneas"] = "gilneas",["gilneascity"] = "gilneas",["gilcity"] = "gilneas",["gilnea"] = "gilneas",
["otarius"] = "ostarius",["larranikus"] = "larannikus",["leranikus"] = "larannikus",
["darkreavermenace"] = "scholomance",["nohonoramongchefs"] = "karacrypt",
 
["jeweller"] = "jewelcrafter",["jewellcraft"] = "jewelcrafter",["jewellcrafter"] = "jewelcrafter",["jewellcrafting"] = "jewelcrafter",
["jewlery"] = "jewelcrafter",["jewler"] = "jewelcrafter",["jeweler"] = "jewelcrafter",["jewlerer"] = "jewelcrafter",
["jewelcrafted"] = "jewelcrafter",["jc"] = "jewelcrafter",["jw"] = "jewelcrafter",["jwc"] = "jewelcrafter",["jcs"] = "jewelcrafter",["jf"] = "jewelcrafter",["jewe"] = "jewelcrafter",["jewelcrafting"] = "jewelcrafter",
["jewlecrafter"] = "jewelcrafter",["jewlecrafting"] = "jewelcrafter",["jewelc"] = "jewelcrafter",["jewelcraft"] = "jewelcrafter",["jcrafting"] = "jewelcrafter",["jcrafter"] = "jewelcrafter",["jcraft"] = "jewelcrafter",

-- Two Words
["prototypethievery"] = "deadmines",["rampantweeds"] = "wailingcaverns",["scarletcorruption"] = "smcath",["cgrove"] = "crescentgrove",["ebonmereaffairs"] = "gilneascity",["gilcity"] = "gilneascity", -- Turtle WoW
["senatorialrevenge"] = "blackrockdepths",["thewildshaper"] = "dmeast",["raidersraid"] = "lowerblackrock",["precariouspredicament"] = "blackrockdepths",["blackmoras"] = "blackmorass",

-- Three Words
["captaingraysonsrevenge"] = "deadmines",["themissingsorcerer"] = "shadowfang",["intothejaws"] = "shadowfang",["highenergyregulator"] = "gnomeregan",["backupsystemactivation"] = "gnomeregan", -- Turtle WoW
["reminiscentofsteel"] = "smarm",["thepowersbeyond"] = "razorfendowns",["endukorzsandscalp"] = "zulfarrak",["harnessofchimaeran"] = "maraudon",["operationhelpjabbey"] = "blackrockdepths",
["theupperbinding"] = "dmwest",["thefinalcrack"] = "lowerblackrock",["foresttrollscum"] = "lowerblackrock",["thebronzebetrayal"] = "blackmorass",

-- Four Words
["turningoffthetap"] = "deadmines",["theharvestgolemmystery"] = "deadmines",["trappedinthenightmare"] = "wailingcaverns",["againstthekolkardream"] = "wailingcaverns",["toolatetoprelate"] = "shadowfang",["theorbofkaladus"] = "smcath", -- Turtle WoW
["goldisthegoblins"] = "smcath",["driftingacrossthesand"] = "zulfarrak",["plightofthesandfury"] = "zulfarrak",["thearcanegolemcore"] = "blackrockdepths",["cavernsoftimerep"] = "blackmorass",["openingofthedark"] = "blackmorass",
}
local GF_TURTLE_WORD_QUEST = {
["kingsbane"] = 10,["hezrul"] = 19,["alverold"] = 20,["klaven"] = 24,["grushak"] = 31,["grimeye"] = 31,["palkeote"] = 39,["almaudrak"] = 40,["sorrowclaw"] = 41,["snarlclaw"] = 44,["ravenwood"] = 45,
["gelwig"] = 48,["gelweg"] = 48,["zefek"] = 48,["janira"] = 50,["vilegrip"] = 51,["vilegrips"] = 51,["lykourgos"] = 53,["hazzuri"] = 54,["tanglemoss"] = 54,["lapidis"] = 55,["fearoth"] = 55,["letashaz"] = 55,["rholgast"] = 57,
["xanthar"] = 60,["krampus"] = 60,["solnius"] = 60,["xanvarak"] = 60,["morogo"] = 60,["bovarkez"] = 60,["ramstein"] = 60,["shadowtooth"] = 61,["larannikus"] = 61,["larannikus"] = 61,["venethas"] = 62,

-- Two Words
["lordvash"] = 10,["lordvasharj"] = 10,["ladyrenirja"] = 10,["darkstorms"] = 12,["sandshark"] = 13,["anchorsend"] = 17,["hezrulbloodmark"] = 19,["cuttingranks"] = 19,["magicalinterference"] = 20,["hawksvigil"] = 24,
["dragonkinannoyance"] = 25,["strangebedfellows"] = 25,["anchoredge"] = 30,["shadowwell"] = 30,["returningproperty"] = 35,["waynemanners"] = 35,["lingeringmother"] = 39,["cleaningjob"] = 40,["fearincarnate"] = 41,
["draconicpresence"] = 43,["scalebaneridge"] = 43,["ladyjanira"] = 50,["tinkersparktransponder"] = 54,["riftwalkerscane"] = 54,["kroshius"] = 55,["hermitswrath"] = 55,["uncoveringevil"] = 55,["azurescale"] = 55,["raidersrevenge"] = 56,["grommash"] = 57,
["darkwhisperculling"] = 60,["hostileenvoys"] = 60,["barkskintribe"] = 60,["therace"] = 60,["tetheredmemories"] = 60,["corruptedsand"] = 60,["wrappingwarpwood"] = 61,["upperbinding"] = 60,["pricolichlycan"] = 60,["shadowedspectre"] = 60,

-- Three Words
["destroyingventureco"] = 9,["venturecoleadership"] = 9,["deepbluesea"] = 13,["removingleperleadership"] = 13,["masteringtheformula"] = 14,["satisfactionforshak"] = 20,["churchofwestfall"] = 22,["thelosttablets"] = 30,["thefinalstrike"] = 31,
["themortalstrike"] = 31,["rootingoutevil"] = 37,["securingthekeep"] = 40,["securingtheroads"] = 40,["unforgottenandunforgiven"] = 40,["orboforahil"] = 40,["ragingoceansblue"] = 41,
["justicefordustwallow"] = 43,["baneofscalebane"] = 44,["undoingthecurse"] = 44,["staffofshinban"] = 45,["magicofdragons"] = 45,["theravenwoodscepter"] = 46,["revengeafterdeath"] = 47,["minersunionmutiny"] = 50,
["decimatetheirranks"] = 50,["theaquastone"] = 51,["dampeningmustend"] = 52,["disharmonyofflame"] = 52,["bigenergyproject"] = 54,["disharmonyoffire"] = 56,["stopthedragonflight"] = 56,["huntthehunter"] = 57,["blackrockandroll"] = 57,
["removingvitalassets"] = 58,["legendofeskhandar"] = 58,["honoringthewarrior"] = 58,["felenergyirregularities"] = 60,["intothedream"] = 60,["inarush"] = 60,["scouringthedesert"] = 60,["thebronzebetrayal"] = 60,["asleepundersnow"] = 60,
["therunestonescepter"] = 60,["theeternalsleeper"] = 60,["savingtheshadowtooth"] = 60,["thewhitestag"] = 62,["theprisonsbindings"] = 62,["rothlenfamilybrooch"] = 63,

-- Four Words
["leadersofthereefscale"] = 10,["terrorofchillbreeze"] = 11,["falloftheusurper"] = 20,["andjusticeforall"] = 43,["headofthehunters"] = 44,
["inabookonce"] = 49,["bringdownthepriestess"] = 50,["lightfalluponthee"] = 56,["killingthetidelord"] = 56,["anechofrombeyond"] = 56,["strengthtomovemountain"] = 58,
["scytheofthegoddess"] = 60,["fateoftheharborage"] = 60,["underthevibrantmoonlight"] = 60,["terrorofthewebweavers"] = 60,["thedepthsofkarazhan"] = 63,
}
local GF_TURTLE_WORD_DUNGEON = {
["crescent"] = 36,["grove"] = 36,["crescentgrove"] = 36,["cg"] = 36,["tcg"] = 36,["gc"] = 48,["gilneas"] = 48,["hateforge"] = 56,["quarry"] = 56,["hq"] = 56,["hf"] = 56,["hfq"] = 56,
["sv"] = 62,["swv"] = 62,["vault"] = 62,["morass"] = 62,["bm"] = 62,["cot"] = 62,["crypt"] = 63,["karacrypt"] = 63,["es"] = 63,["sanctum"] = 63,

-- Two Words
["dragonmawretreat"] = 30,["gilneascity"] = 48,["stormwindv"] = 62,["stormwindvault"] = 62,["blackmorass"] = 62,

-- Three Words
["cavernsoftime"] = 62,
}
local GF_TURTLE_WORD_RAID = {
["kara"] = 64,["karazhan"] = 64,["concavius"] = 64,["ostarius"] = 64,["nerub"] = 64,["reaver"] = 64,["clackora"] = 64,
}
local GF_TURTLE_WORD_TRADE = {
["jewelcrafter"] = 1,
["beltbuckle"] = 1,["allbuckle"] = 1,

["hyjal"] = .5,["theramore"] = .25,

-- Two Words
["anyjewelcrafter"] = 1.5,["lfjewel"] = 3,["jewelcrafter"] = .5,["lfjewelcrafter"] = 3,["lfjc"] = 3,["enchantjewelcrafter"] = 1,
["mastergemologist"] = 2,["mastergemonologist"] = 2,["allgem"] = 1,["everythingaround"] = 2,

["beltenchant"] = 1,["beltbuckleenchant"] = 1,["lfbeltbuckle"] = 3,["lfagilitybuckle"] = 3,["lfintellectbuckle"] = 3,["allbeltbuckle"] = 3,["intellectbeltbuckle"] = 2,["agilitybeltbuckle"] = 2,["attachingintellect"] = 3,["attachingbeltbuckle"] = 3,
["damageneck"] = .5,["statstrinket"] = 1,["ringagility"] = 1,["agilityring"] = 1,["ringstrength"] = 1,["strengthring"] = 1,["ringagility"] = 1,["ringstats"] = 1,["statsring"] = 1,["agilitywrist"] = 1,["healneck"] = 1,
["ringenchant"] = 1,["enchantring"] = 1,["neckenchant"] = 1,["enchantneck"] = 1,["toring"] = .5,["toneck"] = .5,

["winterspringportal"] = 1,["swampportal"] = 1,["theramoreportal"] = 1,["alahthalasportal"] = 1,["hydraxianportal"] = 1,["stonardportal"] = 1,["hyjalportal"] = 1,["moongladeportal"] = 1,

["hyjalsummon"] = .5,["summonhyjal"] = .5,

["cosmiccloth"] = .5,["etherealleather"] = .5,["shadowforgedeye"] = 1,

["pinkyservice"] = 2,["uncleabe"] = 2,

-- Three Words
["anyjewelcrafterwith"] = 1,["anyjewelcrafterhere"] = 1.5,["anyjewelcrafteraround"] = 1.5,["jewelcrafterwithhitem"] = 3,["allgemaround"] = 2,["allenchantaround"] = 2,

["lfhitembeltbuckle"] = 3,["intellecttobelt"] = 1,["agilitytobelt"] = 2,["lfagilitywaist"] = 3,["lfagilitybelt"] = 3,["lfintellectwaist"] = 3,["onyourbelt"] = 1,
["strengthtoring"] = 1,["agilitytoring"] = 1,["statstoring"] = 1,["strengthtoneck"] = 1,["agilitytoneck"] = 1,["healtoneck"] = 1,["agilitytowrist"] = 1,
["healtoring"] = 1,["naturetoring"] = 1,["shadowtoring"] = 1,["frosttoring"] = 1,["vamptoring"] = 1,["sptoring"] = 1,["staminatoring"] = 1,

["anyhyjalportal"] = 1,["needhyjalportal"] = 1,["needportalhyjal"] = 1,
["portaltowinterspring"] = 1,["portalmetowinterspring"] = 1,["anywinterspringportal"] = 1,["needwinterspringportal"] = 1,["needportalwinterspring"] = 1,
["portaltoswamp"] = 1,["portalmetoswamp"] = 1,["anyswampportal"] = 1,["needswampportal"] = 1,["needportalswamp"] = 1,
["portaltostonard"] = 1,["portalmetostonard"] = 1,["anystonardportal"] = 1,["needstonardportal"] = 1,["needportalstonard"] = 1,
["portaltotheramore"] = 1,["portalmetotheramore"] = 1,["anytheramoreportal"] = 1,["needtheramoreportal"] = 1,["needportaltheramore"] = 1,
["portaltoat"] = 1,["portalmetoat"] = 1,["anyatportal"] = 1,["needatportal"] = 1,["needportalat"] = 1,
["portaltoalahthalas"] = 1,["portalmetoalahthalas"] = 1,["anyalahthalasportal"] = 1,["needalahthalasportal"] = 1,["needportalalahthalas"] = 1,["needaalahthalasportal"] = 1,

["freehyjalsummon"] = 1.5,["lfhyjalsummon"] = 2,["needhyjalsummon"] = 2,["summontohyjal"] = 2.5,["taxitohyjal"] = 2.5,
["anyhyjalsummon"] = 2,["anysummonhyjal"] = 2,["anyonehyjalsummon"] = 2,["anyonesummonhyjal"] = 2,


["hordeoralliance"] = 1,

-- Four Words
["agilityonmybelt"] = 1,["agilitytomybelt"] = 1,["intellectonmybelt"] = 1,["intellecttomybelt"] = 1,["toimprovemyneck"] = 1,["spelldamagetoring"] = 1,
["portaltowinterspringplease"] = 2,["portaltoswampplease"] = 2,["portaltostonardplease"] = 2,["portaltotheramoreplease"] = 2,["portaltoatplease"] = 2,["portaltoalahthalasplease"] = 2,
["summontohyjalplease"] = 2,
}

local GF_TurtleSearchList = {
		[1] = { "Crescent Grove", 32, 38, "crescent", "grove", "cg", "tcg", "crescentgrove",},
		[2] = { "Gilneas City", 43, 49, "gilneas", "gc", "gilneascity", },
		[3] = { "Hateforge Quarry", 52, 60, "hateforge", "quarry", "hq", "hf", "hfq", },
		[4] = { "Stormwind Vault", 58, 60, "vault", "sv", "swv", "stormwindv", "stormwindvault" },
		[5] = { "Black Morass", 58, 60, "morass", "bm", "blackmorass", "cot", "cavernsoftime", },
		[6] = { "Karazhan Crypt", 60, 60, "crypt", "karacrypt", },
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
local GF_TurtleSearchListNew40RaidString = { "40-man Raids", 60, 60, "mc", "moltencore", "ragnaros", "rag", "onyxia", "ony", "blackwinglair", "bwl", "nefarian", "nef", "aq", "ahnqiraj", "cthun", "naxxramas", "naxx", "azuregos", "kazzak", "lethon", "ysondre", "taerar", "emeriss", "worldboss", "lords",
											"kara", "karazhan", "concavius", "ostarius", "nerub", "reaver", "clackora", }
local GF_TurtleSearchListNew20RaidString = { "20-man Raids", 58, 60, "zg", "zulgurub", "hakar", "aq", "ahnqiraj", "ossirian", "kara", "karazhan", }
function GF_AddTurtleWoWDungeonsRaids()
	for word,_ in GF_TURTLE_WORD_FIX do GF_WORD_FIX[word] = GF_TURTLE_WORD_FIX[word]; end
	for word,_ in GF_TURTLE_WORD_QUEST do GF_WORD_QUEST[word] = GF_TURTLE_WORD_QUEST[word]; end
	for word,_ in GF_TURTLE_WORD_DUNGEON do GF_WORD_DUNGEON[word] = GF_TURTLE_WORD_DUNGEON[word]; end
	for word,_ in GF_TURTLE_WORD_RAID do GF_WORD_RAID[word] = GF_TURTLE_WORD_RAID[word]; end
	for word,_ in GF_TURTLE_WORD_TRADE do GF_WORD_TRADE[word] = GF_TURTLE_WORD_TRADE[word]; end

	GF_BUTTONS_LIST.SearchList[27] = GF_TurtleSearchListNew40RaidString;
	GF_BUTTONS_LIST.SearchList[28] = GF_TurtleSearchListNew20RaidString;
	--GF_BUTTONS_LIST.LFGRaid[7] = { "AQ15", 1, 60, "aq15", "Ruins of Ahn'Qiraj", 63, 20, }
	for i=1, getn(GF_TurtleSearchList) do table.insert(GF_BUTTONS_LIST.SearchList, 27, GF_TurtleSearchList[i]); end
	for i=1, getn(GF_TurtleGroupButtonsListDungeons) do table.insert(GF_BUTTONS_LIST.LFGDungeon, 28, GF_TurtleGroupButtonsListDungeons[i]); end
	for i=1, getn(GF_TurtleGroupButtonsListRaids) do table.insert(GF_BUTTONS_LIST.LFGRaid, 8, GF_TurtleGroupButtonsListRaids[i]); end
end