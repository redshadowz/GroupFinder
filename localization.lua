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
GF_SHOW_ORIGINAL_CHAT	= "Show Formatted Chat"
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
	tooltip2 		= "Filters your group list with keywords. Searches by both text and dungeon nicknames(e.g. 'vc' will also search for deadmines). Separate by commas for multiple searches(e.g. dm, ubrs, scholo, etc)." },

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
GF_FrameShowFormattedChatCheckButton = {
	tooltip1 		= "Show Formatted Chat",
	tooltip2 		= "When checked, channel messages will be formatted to show Level/Class when available." },
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
["tanks"] = "tank",["mt"] = "tank",["ot"] = "tank",["tankd"] = "tank",["xtank"] = "tank",["mtank"] = "tank",["tnak"] = "tank",["tanmk"] = "tank",["tanking"] = "tank",["tankk"] = "tank",
["ranged"] = "range",["rdps"] = "range",["casters"] = "caster",["melees"] = "melee",["mdps"] = "melee",["stealthie"] = "stealth",["stealthy"] = "stealth",

["lfgm"] = "lfm",["glfm"] = "lfm",["glf"] = "lfm",["flm"] = "lfm",["ldg"] = "lfm",["lfp"] = "lfm",["lfms"] = "lfm",["lfmr"] = "lfm",["lkm"] = "lfm", -- LFM/LFG and related terms
["fg"] = "lfg",["lofg"] = "lfg",["flg"] = "lfg",["lgf"] = "lfg",["lfh"] = "lfg",["lg"] = "lfg",["glf"] = "lfg",["lsg"] = "lfg",["lfb"] = "lfg",["lfa"] = "lf",["lfan"] = "lf",["lfparty"] = "lfg",
["lfmenchant"] = "lfenchant",["lfmenhancement"] = "lfenhancement",["lfmleatherworker"] = "lfleatherworker",["lfmtailor"] = "lftailor",["lfmblacksmith"] = "lfblacksmith",
["lfmengineer"] = "lfengineer",["lfmalchemist"] = "lfalchemist",["lfmsummon"] = "lfsummon",["lfmjewelcrafter"] = "lfjewelcrafter",
["lfgenchant"] = "lfenchant",["lfgenhancement"] = "lfenhancement",["lfgleatherworker"] = "lfleatherworker",["lfgtailor"] = "lftailor",["lfgblacksmith"] = "lfblacksmith",
["lfgengineer"] = "lfengineer",["lfgalchemist"] = "lfalchemist",["lfgsummon"] = "lfsummon",["lfgjewelcrafter"] = "lfjewelcrafter",

["grp"] = "group",["grps"] = "group",["groups"] = "group",["party"] = "group",["parti"] = "group",["paty"] = "group",
["hquest"] = "quest",["quests"] = "quest",["questing"] = "quest",["quets"] = "quest",["qujests"] = "quest",["tasks"] = "task",

["bs"] = "blacksmith",["blacksmither"] = "blacksmith",["blacksmithing"] = "blacksmith",["hammersmith"] = "blacksmith",["swordsmith"] = "blacksmith",["blacmiting"] = "blacksmith", -- Professions and Trades
["axesmith"] = "blacksmith",["armorsmith"] = "blacksmith",["armorsmithing"] = "blacksmith",["weaponsmith"] = "blacksmith",["goldsmith"] = "blacksmith",["blacsmiting"] = "blacksmith",["blacksmiting"] = "blacksmith",["blacksmithw"] = "blacksmith",
["chant"] = "enchant",["ench"] = "enchant",["encht"] = "enchant",["enchants"] = "enchant",["chanter"] = "enchant",["enchanter"] = "enchant",["enchanters"] = "enchant",["ecnharter"] = "enchant",
["enchjanter"] = "enchant",["echnater"] = "enchant",["enchanting"] = "enchant",["henchant"] = "enchant",["encahnter"] = "enchant",["enchater"] = "enchant",["inchant"] = "enchant",
["eanchat"] = "enchant",["enganter"] = "enchant",["echanter"] = "enchant",["enhancements"] = "enhancement",["encahtner"] = "enchant",["enhanter"] = "enchant",["enchantw"] = "enchant",
["tailoring"] = "tailor",["tailorer"] = "tailor",["tailorere"] = "tailor",["lw"] = "leatherworker",["letherworker"] = "leatherworker",["leatherworking"] = "leatherworker",["leatherworkerw"] = "leatherworker",
["lwer"] = "leatherworker",["leatherer"] = "leatherworker",["leather"] = "leatherworker",["leatherwork"] = "leatherworker",
["eng"] = "engineer",["engi"] = "engineer",["engenier"] = "engineer",["engener"] = "engineer",["enginer"] = "engineer",["engineerw"] = "engineer",
["alcemist"] = "alchemist",["alchy"] = "alchemist",["alch"] = "alchemist",["alc"] = "alchemist",["alchemy"] = "alchemist",["alchmy"] = "alchemist",["alcemy"] = "alchemist",["alchemistw"] = "alchemist",
["agi"] = "agility",["gai"] = "agility",["aggi"] = "agility",["str"] = "strength",["spir"] = "spirit",["stam"] = "stamina",["stm"] = "stamina",["int"] = "intellect",["hp"] = "health",
["hlth"] = "health",["sp"] = "spellpower",["chains"] = "chain",["def"] = "defense",["hands"] = "hand",["glv"] = "gloves",["golves"] = "gloves",["glove"] = "gloves",["chst"] = "chest",
["brc"] = "wrist",["wri"] = "wrist",["wrists"] = "wrist",["bracer"] = "wrist",["bracers"] = "wrist",["bracelet"] = "wrist",["bracelets"] = "wrist",["rings"] = "ring",["clk"] = "cloak",["gems"] = "gem",["spikes"] = "spike",
["onring"] = "toring",["onhead"] = "tohead",["ongloves"] = "togloves",["onlegs"] = "tolegs",["onboots"] = "toboots",["oncloak"] = "tocloak",["onwrist"] = "towrist",["onbelt"] = "tobelt",["onweapon"] = "toweapon",["onshield"] = "toshield",
["onhand"] = "tohand",["forhand"] = "tohand",["ontwohand"] = "tohand",["fortwohand"] = "tohand",
["onchest"] = "tochest",["onneck"] = "toneck",["boot"] = "boots",["wep"] = "weapon",["weap"] = "weapon",["weapn"] = "weapon",["pants"] = "legs",["helm"] = "head",
["forring"] = "toring",["forhead"] = "tohead",["forgloves"] = "togloves",["forlegs"] = "tolegs",["forboots"] = "toboots",["forcloak"] = "tocloak",["forwrist"] = "towrist",["forbelt"] = "tobelt",["forweapon"] = "toweapon",["forshield"] = "toshield",
["forchest"] = "tochest",["forneck"] = "toneck",["buckles"] = "buckle",["buckel"] = "buckle",["bucle"] = "buckle",["bucklet"] = "buckle",

["transmutes"] = "transmute",["transmut"] = "transmute",["trasmute"] = "transmute",["trasmutes"] = "transmute",["arcanite"] = "arcane",["arcan"] = "arcane",
["summ"] = "summon",["summons"] = "summon",["summoning"] = "summon",["summmons"] = "summon",["summs"] = "summon",["summing"] = "summon",["summin"] = "summon",["summv"] = "summon",["sums"] = "summon",["sumun"] = "summon",["sumon"] = "summon",
["tp"] = "portal",["prtal"] = "portal",["portl"] = "portal",["port"] = "portal",["ports"] = "portal",["teleport"] = "portal",["protal"] = "portal",["porta"] = "portal",["mageportal"] = "portal",["portaltothe"] = "portalto",
["picker"] = "pick",["picking"] = "pick",["locking"] = "lock",["locker"] = "lock",["lp"] = "lockbox",["låslådor"] = "lockbox",["lockboxes"] = "lockbox",["lockpick"] = "lockbox",["lockp"] = "lockbox",
["lockpicker"] = "lockbox",["lockpicking"] = "lockbox",["picklock"] = "lockbox",["picklocker"] = "lockbox",["pickinglock"] = "lockbox",["locboxes"] = "lockbox",["locbox"] = "lockbox",["lockboxs"] = "lockbox",
["lootbox"] = "lockbox",["lootboxes"] = "lockbox",["boxes"] = "lockbox",["junkbox"] = "lockbox",["locked"] = "lock",
["resistance"] = "resist",["resistances"] = "resist",["lifestealing"] = "lifesteal",["crus"] = "crusader",["crusaders"] = "crusader",["firey"] = "fiery",
["wttb"] = "wtb",["wtbx"] = "wtb",["wtts"] = "wts",["wtsx"] = "wts",["wtbb"] = "wtb",["wtss"] = "wts",["wttt"] = "wtt",["wttx"] = "wtt",["wtsh"] = "wts",["prices"] = "price",
["sellin"] = "selling",["sellinf"] = "selling",["selll"] = "sell",["sellg"] = "selling",["buyg"] = "buying",["services"] = "service",
["working"] = "work",["tips"] = "tip",["tipp"] = "tip",["tipper"] = "tip",["crafting"] = "crafter",["crafted"] = "crafter",["auct"] = "ah",["auc"] = "ah",
["boosting"] = "boost",["booster"] = "boost",["boosts"] = "boost",["carrying"] = "carry",["fortunes"] = "fortune",["sercives"] = "service",["sercive"] = "service",["cd"] = "cooldown",

["sw"] = "stormwind",["stormwin"] = "stormwind",["stormwnd"] = "stormwind",["strmwind"] = "stormwind",["tb"] = "thunderbluff",["irongforge"] = "ironforge",["darn"] = "darnassus",["uc"] = "undercity",["undercitry"] = "undercity",["undercirty"] = "undercity",
["org"] = "orgrimmar",["orgr"] = "orgrimmar",["og"] = "orgrimmar",["ogri"] = "orgrimmar",["orgtimar"] = "orgrimmar",["ogrimmar"] = "orgrimmar",["theramor"] = "theramore",

["drood"] = "druid",["droods"] = "druid",["driud"] = "druid",["druids"] = "druid",["rdruid"] = "druid",["boomkin"] = "druid",["boomie"] = "druid", -- Classes
["hutner"] = "hunter",["hunters"] = "hunters",["bmhunter"] = "hunter",["mmhunter"] = "hunter",
["paly"] = "paladin",["pally"] = "paladin",["pallie"] = "paladin",["pallies"] = "paladin",["healadin"] = "paladin",["paladins"] = "paladin",["hpaladin"] = "paladin",["hpally"] = "paladin",["retpally"] = "paladin",
["mages"] = "mage",["frostmage"] = "mage",["firemage"] = "mage",["arcanemage"] = "mage",
["preist"] = "priest",["priests"] = "priest",["spriest"] = "priest",["hpriest"] = "priest",
["rogues"] = "rogue",["rog"] = "rogue",["roges"] = "rogue",["rouge"] = "rogue",["rouges"] = "rogue",["roge"] = "rogue",["roguer"] = "rogue",["subrogue"] = "rogue",["combatrogue"] = "rogue",
["shammy"] = "shaman",["shammies"] = "shaman",["rsham"] = "shaman",["enhsham"] = "shaman",["enhshaman"] = "shaman",["elesham"] = "shaman",["eleshaman"] = "shaman",
["warlocks"] = "warlock",["locks"] = "lock",["lcoks"] = "lock",["lcok"] = "lock",["lockk"] = "lock",
["warriors"] = "warrior",["warior"] = "warrior",["wariors"] = "warrior",["furywar"] = "warrior",["furywars"] = "warrior",["protwar"] = "warrior",["protwars"] = "warrior",["armswar"] = "warrior",["armswars"] = "warrior",

["inv"] = "invite",["ginv"] = "ginvite",
["russia"] = "russian",["russkie"] = "russian",["ruskie"] = "russian",["ukraine"] = "ukrainian",["france"] = "french",["germany"] = "german",["spain"] = "spanish",["poland"] = "polish",["italy"] = "italian",["netherlands"] = "dutch",["philippines"] = "philippine",
["rekrutuje"] = "recruiting",["recrutar"] = "recruiting",["recrute"] = "recruiting",["recruting"] = "recruiting",["recuiting"] = "recruiting",["recluta"] = "recruiting",["recrutando"] = "recruiting",["reclutando"] = "recruiting",-- Guild Recruitment
["guilds"] = "guild",["gildia"] = "guild",["gilde"] = "guild",["gilda"] = "guild",["guilde"] = "guild",["gildiyu"] = "guild",["gildenmitglieder"] = "guild",["gildii"] = "guild",["hcguild"] = "guild",
["gildiya"] = "guild",["gildiyi"] = "guild",["gild"] = "guild",["guldia"] = "guild",["guilda"] = "guild",["guil"] = "guild",["gildosi"] = "guild",["guile"] = "guild",
["progresowania"] = "progression",["progresar"] = "progression",["progreso"] = "progression",["progresshez"] = "progression",["prog"] = "progression",["progress"] = "progression",
["komunity"] = "community",["komunite"] = "community",["komunita"] = "community",["comunidad"] = "community",["comunidade"] = "community",["companheiros"] = "community",["kinship"] = "community",["Compañeros"] = "community",
["ambiance"] = "ambience",["ambient"] = "ambience",["ambient"] = "ambience",["socials"] = "social",["eventos"] = "events",
["amigos"] = "friends",["actieve"] = "active",["nederlands"] = "dutch",["nederlandse"] = "dutch",["aktivity"] = "activity",
["levelling"] = "leveling",["levelers"] = "leveling",["lvlers"] = "leveling",["lvling"] = "leveling",["lvl"] = "level",["levlers"] = "leveling",["levling"] = "leveling",["levl"] = "level",

["morben"] = "morbent",["ladin"] = "ladim",["hilsbrad"] = "hillsbrad",["hillsbard"] = "hillsbrad",["dustwallor"] = "dustwallow",["azhara"] = "azshara", -- Quests
["stormgarde"] = "stromgarde",["stormgard"] = "stromgarde",["stormguard"] = "stromgarde",["stromguard"] = "stromgarde",
["hinterland"] = "hinterlands",["hinderland"] = "hinterlands",["hiterlands"] = "hinterlands",["hiterland"] = "hinterlands",["hinderlands"] = "hinterlands",["hinerlands"] = "hinterlands",
["hinnterlands"] = "hinterlands",["hhinterlands"] = "hinterlands",["hinterlnds"] = "hinterlands",["hunterlands"] = "hinterlands",["inhinterlands"] = "hinterlands",["thehinterlands"] = "hinterlands",
["indarkshire"] = "darkshire",["induskwood"] = "duskwood",["industwallow"] = "dustwallow",["inredridge"] = "redridge",["theredridge"] = "redridge",["inarathi"] = "arathi",["thearathi"] = "arathi",
["inwetlands"] = "wetlands",["thewetlands"] = "wetlands",["inlakeshire"] = "lakeshire",["inbadlands"] = "badlands",["thebadlands"] = "badlands",["inalterac"] = "alterac",["thealterac"] = "alterac",
["insilithus"] = "silithus",["thesilithus"] = "silithus",["inlochmodan"] = "lochmodan",["thelochmodan"] = "lochmodan",["inloch"] = "loch",["theloch"] = "loch",["invalleyofspears"] = "valleyofspears",["thevalleyofspears"] = "valleyofspears",

["elites"] = "elite",["elit"] = "elite",["leet"] = "elite",["leets"] = "elite",["eliteq"] = "elite",["elitequest"] = "elite",["elitequeue"] = "elite",
["reputation"] = "rep",["reput"] = "rep",["noz"] = "nozdormu",["rr"] = "redridge",["obsidon"] = "obsidion",["tf"] = "thunderfury",["tf"] = "thunderfurry",["frostmauls"] = "frostmaul",["hayja"] = "hyjal",
["hghlands"] = "highlands",["silithis"] = "silithus",["silithid"] = "silithus",["bagthera"] = "bhagthera",["bajkteera"] = "bhagthera",["jinthalor"] = "jinthaalor",["princes"] = "princess",

["rfch"] = "rfc",["rfcd"] = "rfc",["rfchasm"] = "rfc",["rangefire"] = "ragefire",["ragfire"] = "ragefire",["ragefir"] = "ragefire",["rf"] = "rfc",["rfcx"] = "rfc",["rgc"] = "rfc",
["deadmine"] = "deadmines",["dedmines"] = "deadmines",["dedmine"] = "deadmines",["deathmine"] = "deadmines",["deathmines"] = "deadmines",["vc"] = "deadmines",["vancleef"] = "deadmines",["dms"] = "dm", -- Dungeons and Groups
["deaadmines"] = "deadmines",["deammine"] = "deadmines",["deammines"] = "deadmines",["deanmines"] = "deadmines",["deamines"] = "deadmines",
["twc"] = "wc",["waling"] = "wailing",["walling"] = "wailing",["vailing"] = "wailing",["cavs"] = "caverns",["cavern"] = "caverns",["cave"] = "caverns",["caves"] = "caverns",["cavers"] = "caverns",["caverne"] = "caverns",
["stockades"] = "stockade",["stockede"] = "stockade",["stocakde"] = "stockade",["stokade"] = "stockade",["stokades"] = "stockade",["stocks"] = "stock",["stocls"] = "stock",["stockk"] = "stock",["stockdale"] = "stockade",
["stonks"] = "stock",["stockado"] = "stockade",["stockes"] = "stockade",["sotckades"] = "stockade",["stockaded"] = "stockade",["stockates"] = "stockade",["stocakeds"] = "stockade",
["blackfathome"] = "blackfathom",["blackfatom"] = "blackfathom",["blackfanthom"] = "blackfathom",["blackfantom"] = "blackfathom",["bd"] = "bfd",["bdf"] = "bfd",["bfg"] = "bfd",["bfc"] = "bfd",
["sk"] = "sfk",["skf"] = "sfk",["sfkk"] = "sfk",
["gnooner"] = "gnomeregan",["gnomregan"] = "gnomeregan",["gnomregen"] = "gnomeregan",["gnomergan"] = "gnomeregan",["gnomeragen"] = "gnomeregan",["gnomragen"] = "gnomeregan",["gnomerigan"] = "gnomeregan",
["gnomregan"] = "gnomeregan",["gnomrigan"] = "gnomeregan",["gnomoeregan"] = "gnomeregan",["gnomereagan"] = "gnomeregan",["gnomeragan"] = "gnomeregan",["gnomger"] = "gnomeregan",["gnomeragon"] = "gnomeregan",["gnomeragn"] = "gnomeregan",
["razorfren"] = "razorfen",["karul"] = "kraul",["kral"] = "kraul",["rpk"] = "rfk",["rfkk"] = "rfk",["rpd"] = "rfd",
["smg"] = "smgy",["graveryard"] = "gy",["monastary"] = "monastery",["monstary"] = "monastery",["monstery"] = "monastery",["monasatry"] = "monastery",["scarlett"] = "scarlet",
["libr"] = "library",["libary"] = "library",["librery"] = "library",["libray"] = "library",["librady"] = "library",["sml"] = "smlib",["smlb"] = "smlib",["smliberal"] = "smlib",
["smarms"] = "smarm",["smarmory"] = "smarm",["sma"] = "smarm",["armoty"] = "armory",["armoury"] = "armory",["arms"] = "arm",["armz"] = "arm",["armzs"] = "arm",["armoryy"] = "armory",["armoryyy"] = "armory",
["carth"] = "cathedral",["cathe"] = "cathedral",["cath"] = "cathedral",["smcathedral"] = "smcath",["smc"] = "smcath",["smcat"] = "smcath",["cafedr"] = "smcath",["caf"] = "cathedral",["catehdral"] = "cathedral",["cathedrale"] = "cathedral",
["uld"] = "uldaman",["ulduman"] = "uldaman",["uldam"] = "uldaman",["uldum"] = "uldaman",
["farak"] = "farrak",["zulfarak"] = "zulfarrak",["zukfarrak"] = "zulfarrak",["zulfurrak"] = "zulfarrak",["zulforrak"] = "zulfarrak",["zulfurak"] = "zulfarrak",
["zulforak"] = "zulfarrak",["zff"] = "zf",["zzf"] = "zf",["zulfarrack"] = "zulfarrak",["zulfarrake"] = "zulfarrak",
["marudon"] = "maraudon",["maradon"] = "maraudon",["maura"] = "mara",["mauradon"] = "maraudon",["maurodon"] = "maraudon",["maurdon"] = "maraudon",["maraundon"] = "maraudon",
["marodon"] = "maraudon",["morodon"] = "maraudon",["maradudon"] = "maraudon",["maraudn"] = "maraudon",
["sunkent"] = "sunken",["sunkn"] = "sunken",["lfmtemple"] = "atalhakkar",["lfgtemple"] = "atalhakkar",["lftemple"] = "atalhakkar",
["winsor"] = "jailbreak",["windsor"] = "jailbreak",["windwos"] = "jailbreak",["emp"] = "emperor",["emprun"] = "emperor",["emperer"] = "emperor",["emporer"] = "emperor",["attument"] = "attunement",["attu"] = "attunement",["attunment"] = "attunement",
["angerforge"] = "brd",["angerfod"] = "brd",["vaul"] = "vault",["vaut"] = "vault",["vaault"] = "vault",["vauult"] = "vault",["vaultt"] = "vault",["brda"] = "brd",["brdd"] = "brd",["bdr"] = "brd",
["strartholme"] = "stratholme",["stratholm"] = "stratholme",["strath"] = "stratholme",["stratth"] = "stratholme",["srat"] = "stratholme",["strah"] = "stratholme",["straholme"] = "stratholme",["strathholm"] = "stratholme",["strathholme"] = "stratholme",
["srtatholme"] = "stratholme",["strathilme"] = "stratholme",["strathalme"] = "stratholme",["stratholem"] = "stratholme",["living"] = "live",
["scholo"] = "scholomance",["scho"] = "scholomance",["sco"] = "scholomance",["shool"] = "scholomance",["sholo"] = "scholomance",["shcolo"] = "scholomance",["shcolomanace"] = "scholomance",["sholomance"] = "scholomance",
["scolomance"] = "scholomance",["scholamance"] = "scholomance",["scolamance"] = "scholomance",
["solomance"] = "scholomance",["scolo"] = "scholomance",["schoolo"] = "scholomance",["scholor"] = "scholomance",["krastinovs"] = "krastinov",
["diremail"] = "diremaul",["mauls"] = "maul",["trib"] = "tribute",["shendralar"] = "dmw",
["lvrs"] = "lbrs",["lvrs"] = "lbrs",["lbrd"] = "lbrs",["lbr"] = "lbrs",["lrbs"] = "lbrs",
["ubers"] = "ubrs",["urbs"] = "ubrs",["ubs"] = "ubrs",["uber"] = "ubrs",["ubres"] = "ubrs",["ubbrs"] = "ubrs",["ubrd"] = "ubrs",["ubr"] = "ubrs",["valthalaks"] = "valthalak",

["blw"] = "bwl",["nefarien"] = "nefarian",["nefarion"] = "nefarian",["ossi"] = "ossirian",["nax"] = "naxx",["taq"] = "aq", -- Raids
["onyixia"] = "onyxia",["onxy"] = "onyxia",["onyx"] = "onyxia",["onyxias"] = "onyxia",["onixia"] = "onyxia",["onixya"] = "onyxia",["ohy"] = "ony",["onny"] = "ony",
["onyy"] = "ony",["oony"] = "ony",["onx"] = "ony",["onxyia"] = "ony",["oni"] = "ony",["onys"] = "ony",
["raids"] = "raid",["raiding"] = "raid",["rading"] = "raid",["dung"] = "dungeon",["dung"] = "dungeon",["dungeons"] = "dungeon",["elitue"] = "elite",["bosses"] = "boss",["runs"] = "run",["grinds"] = "grind",["farms"] = "farm",
["queueing"] = "queue",["queues"] = "queue",["que"] = "queue",["q"] = "queue",["qeue"] = "queue",["queueup"] = "queue",["bgs"] = "bg",["battlegrounds"] = "battleground",["bgs"] = "bg",
["repfarm"] = "repfarm",["repgroup"] = "repfarm",["reprun"] = "repfarm",["repgrind"] = "repfarm",
["ccfarm"] = "repfarm",["ccgroup"] = "repfarm",["ccrun"] = "repfarm",["ccgrind"] = "repfarm",
["farmgroup"] = "repfarm",["farmrun"] = "repfarm",
["badgegroup"] = "badgefarm",["badgerun"] = "badgefarm",["badgegrind"] = "badgefarm",

["foran"] = "for",["havea"] = "have",["havean"] = "have",["needa"] = "need",["needan"] = "need",["acn"] = "can",["restofskull"] = "testofskull",

["anynbody"] = "anyone",["anybody"] = "anyone",["yours"] = "your",["yer"] = "your",["ya"] = "your",["anyonw"] = "anyone",["anyon"] = "anyone",["anyoone"] = "anyone",["aynone"] = "anyone",["anyne"] = "anyone",["somewho"] = "anyone", -- Basic Words
["someone"] = "anyone",["somebody"] = "anyone",["sombody"] = "anyone",["anyfor"] = "anyone",["forr"] = "for",["fora"] = "for",["für"] = "for",["onl"] = "only",["git"] = "get",["whofor"] = "anyonefor",
["needs"] = "need",["ned"] = "need",["neeed"] = "need",["want"] = "need",["wants"] = "need",["got"] = "have",["rserved"] = "reserved",["reservd"] = "reserved",["resrved"] = "reserved",["ppl"] = "people",["players"] = "player",
["available"] = "around",["avail"] = "around",["could"] = "can",["wat"] = "what",["jooin"] = "join",["joiin"] = "join",["joinn"] = "join",["jion"] = "join",["attachin"] = "attaching",["attachng"] = "attaching",["mats"] = "mat",["matts"] = "mat",
["recipes"] = "recipe",["bindings"] = "binding",["legendaries"] = "legendary",["boes"] = "boes",["mounts"] = "mount",["graveyard"] = "gy",["gyy"] = "gy",["gravyard"] = "gy",["grave"] = "gy",["grav"] = "gy",["gyyard"] = "gy",
["doin"] = "doing",["wana"] = "wanna",["alla"] = "all",["plz"] = "please",["pls"] = "please",["weeks"] = "week",["times"] = "time",["assist"] = "help",["questions"] = "question",["specs"] = "spec",["prot"] = "protection",
["nub"] = "noob",["nubs"] = "noob",["noobs"] = "noob",["newbs"] = "noob",["newbies"] = "noob",["noobie"] = "noob",["noobies"] = "noob",["lel"] = "lol",["groove"] = "grove",["restro"] = "resto",["fore"] = "for",["forr"] = "for",
["moar"] = "more",["opeining"] = "opening",["opning"] = "opening",["opein"] = "open",["opena"] = "open",["openan"] = "open",["twinks"] = "twink",["lst"] = "last",["taletns"] = "taletns",["badges"] = "badge",["clothie"] = "cloth",["scyth"] = "scythe",
["prio"] = "priority",["appreciatedd"] = "appreciated",["hydrax"] = "hydraxian",["hydraxis"] = "hydraxian",["waterlords"] = "hydraxian",["ripped"] = "rip",["ripping"] = "rip",["rips"] = "rip",["scams"] = "scam",["scammed"] = "scam",["scamming"] = "scam",
["mountains"] = "mountain",["skulls"] = "skull",["skullls"] = "skull",["intrested"] = "interested",["ignored"] = "ignored",["yelling"] = "yell",["applying"] = "apply",["steek"] = "steel",["wings"] = "wing",["hosting"] = "host",["unlocking"] = "unlock",
["discriminating"] = "discriminating",["descriminate"] = "discriminate",["descrimination"] = "discrimination",["rosters"] = "roster",["farming"] = "farm",["welcomes"] = "welcome",["welcomed"] = "welcome",["valey"] = "valley",["baggs"] = "bags",
["socila"] = "social",["experienced"] = "experience",["experiance"] = "experience",["experianced"] = "experience",["trolls"] = "troll",["hours"] = "hour",["offering"] = "offer",["causual"] = "casual",["buffs"] = "buff",["requesting"] = "request",

["serpentbloom"] = "wc",["arugal"] = "sfk",["gnogaine"] = "gnomer",["gahzrilla"] = "zf",["incendius"] = "brd",["pusillin"] = "dme",["kirtonos"] = "scholomance",["krastinov"] = "scholomance",["ramstein"] = "udstrat",

-- Two Words
["lockedchest"] = "lockbox",["familyjewels"] = "lockbox",["alchemisttable"] = "alchemistlab", -- Trades
["portalot"] = "portalto",["summonot"] = "summonto",["summonin"] = "summonto",["summonfor"] = "summonto",["lfsum"] = "lfsummon",["arcbar"] = "arcane",

["restoshaman"] = "shaman",["enhanceshaman"] = "shaman",["enhancementshaman"] = "shaman",["elementalshaman"] = "shaman",
["feraldruid"] = "druid",["kittydruid"] = "druid",["beardruid"] = "druid",["restodruid"] = "druid",["balancedruid"] = "druid",
["shadowpriest"] = "priest",["holypriest"] = "priest",["discpriest"] = "priest",["disciplinepriest"] = "priest",
["protpaladin"] = "paladin",["protpally"] = "paladin",["retpaladin"] = "paladin",["holypaladin"] = "paladin",["retributionpaladin"] = "paladin",["protectionpaladin"] = "paladin",
["assassinationrogue"] = "rogue",
["markshunter"] = "hunter",["marksmanhunter"] = "hunter",["marksmanshiphunter"] = "hunter",["survhunter"] = "hunter",["survivalhunter"] = "hunter",
["furywarrior"] = "warrior",["protwarrior"] = "warrior",["armswarrior"] = "warrior",["protectionwarrior"] = "warrior",
["afflictionwarlock"] = "warlock",["afflictionlock"] = "warlock",["afflicwarlock"] = "warlock",["demonologywarlock"] = "warlock",["demowarlock"] = "warlock",["demolock"] = "warlock",["destruction"] = "warlock",["destrolock"] = "warlock",["destrowarlock"] = "warlock",

["orgrimmardungeon"] = "ragefirechasm",["lfmrc"] = "ragefirechasm",["lfgrc"] = "ragefirechasm",["hiddenenemies"] = "ragefirechasm",["lfgrc"] = "ragefirechasm",["lfmrc"] = "ragefirechasm",["lfrc"] = "ragefirechasm", -- Dungeons and Groups
["undergroundassault"] = "deadmines",["collectingmemories"] = "deadmines",["ohbrother"] = "deadmines",
["smartdrinks"] = "wailingcaverns",["deviateeradication"] = "wailingcaverns",
["twilightfalls"] = "blackfathom",["blackfathomvillainy"] = "blackfathom",["blackfdeeps"] = "blackfathom",["blackfdepths"] = "blackfathom",
["castpipestask"] = "gnomeregan",["gyrodrillmaticexcavationators"] = "gnomeregan",["essentialartificials"] = "gnomeregan",["datarescue"] = "gnomeregan",["rigwars"] = "gnomeregan",["lfgnome"] = "gnomer",["lfggnome"] = "gnomer",["lfmgnome"] = "gnomer",
["razorfenk"] = "razorfenkraul",["razorfend"] = "razorfendowns",
["scarletmon"] = "scarletmonastery",["scarletmona"] = "scarletmonastery",
["smgrave"] = "smgy",["scarletgrave"] = "smgy",["smgrav"] = "smgy",["scarletgy"] = "smgy",["monasterygrave"] = "scarletmonasterygraveyard",["scarletscarletmonasterygraveyard"] = "scarletmonasterygraveyard",
["monagraveyard"] = "scarletmonasterygraveyard",["monagy"] = "scarletmonasterygraveyard",["monasterygy"] = "scarletmonasterygraveyard",["lfmgraveyard"] = "smgy",
["lfgy"] = "smgy",["lfggy"] = "smgy",["lfmgy"] = "smgy",["lfmgraveyard"] = "smgy",["lfggraveyard"] = "smgy",["lfgraveyard"] = "smgy",
["monasteryarm"] = "scarletmonasteryarmory",["scarletarm"] = "smarm",["smarmo"] = "smarm",["smarmory"] = "smarm",["scarletscarletmonasteryarmory"] = "scarletmonasteryarmory",
["fullsm"] = "smfull",["allsm"] = "smfull",["small"] = "smfull",["scarletcrusade"] = "scarletcrusade",
["trolltemper"] = "zulfarrak",["scarabshells"] = "zulfarrak",["nekrumsmedallion"] = "zulfarrak",
["shadowshardfragments"] = "maraudon",["twistedevils"] = "maraudon",["vyletonguecorruption"] = "maraudon",["sempletemple"] = "sunkentemple",
["commandergorshak"] = "blackrockdepths",["hurleyblackbreath"] = "blackrockdepths",["thechallenge"] = "blackrockdepths",["kharanmighthammer"] = "blackrockdepths",
["blackrockdeeps"] = "blackrockdepths",["ribblyscrewspigot"] = "blackrockdepths",["lavarun"] = "blackrockdepths",["golemlord"] = "blackrockdepths",
["mauleast"] = "dme",["lethtendrissweb"] = "dmeast",["maulnorth"] = "dmn",["maultribute"] = "dmt",["maulwest"] = "dmw",["eastdm"] = "dme",["northdm"] = "dmn",["westdm"] = "dmw",["lfmtribute"] = "dmt",["lfgtribute"] = "dmt",["lftribute"] = "dmt",
["bijousbelongings"] = "lowerblackrock",["maxwellsmission"] = "lowerblackrock",["mothersmilk"] = "lowerblackrock",["urokdoomhowl"] = "lowerblackrock",["warlordscommand"] = "lowerblackrock",["lowerspire"] = "lowerblackrock",
["plaguedhatchlings"] = "scholomance",["dawnsgambit"] = "scholomance",
["lfstart"] = "stratholme",["lfstrat"] = "stratholme",["lfgstart"] = "stratholme",["lfgstrat"] = "stratholme",["lfmstrat"] = "stratholme",["lfmstart"] = "stratholme",["stratman"] = "stratholme",["farmstrat"] = "stratholme",["stratmalor"] = "stratholme",
["stratlive"] = "livestrat",["stralive"] = "livestrat",["startlive"] = "livestrat",["livestart"] = "livestrat",["statlive"] = "livestrat",["livestat"] = "livestrat",
["liveside"] = "livestrat",["stratlife"] = "livestrat",["stratscarlet"] = "livestrat",["stratholmelive"] = "livestrat",["stratholmeud"] = "udstrat",["stratholmeundead"] = "udstrat",
["stratun"] = "udstrat",["stratundead"] = "udstrat",["stratud"] = "udstrat",["startud"] = "udstrat",["udstart"] = "udstrat",["undeadstrat"] = "udstrat",["undeadstart"] = "udstrat",["udside"] = "udstrat",["strengthud"] = "udstrat",["thearchivist"] = "livestrat",
["menethilsgift"] = "udstrat",["stratdk"] = "udstrat",["stratdkk"] = "udstrat",["strarud"] = "udstrat",["statud"] = "udstrat",["udstat"] = "udstrat",["undeadcity"] = "udstrat",["undeadcity"] = "udstrat",["undeadcity"] = "udstrat",
["argentdawn"] = "argentdawn",["forstart"] = "stratholme",["forstrat"] = "stratholme",["tostrat"] = "stratholme",["healstrat"] = "stratholme",["damagestrat"] = "stratholme",["tankstrat"] = "stratholme",
["oculusillusions"] = "upperblackrock",["eggcollection"] = "upperblackrock",["blackhandcommand"] = "upperblackrock",["doomriggersclasp"] = "upperblackrock",["upperspire"] = "upperblackrock",
["zulgrub"] = "zulgurub",["raidboss"] = "worldboss",["worlddragon"] = "worldboss",["allwing"] = "questrun",["fullrun"] = "questrun",

["ofrecemoscontenido"] = "clearingcontent", -- Guild Trigger Words

-- Three Words
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
["theblackdragonchampion"] = "upperblackrock",["eyeoftheemberseer"] = "upperblackrock",
["onlyonemayrise"] = "blackwinglair",
} -- replaces the first word but leaves the second word
GF_WORD_IGNORE = {
["aboutspec"] = true,["aboutthisqueue"] = true,["aboutthisquest"] = true,["advice"] = true,["andwhatrace"] = true,["afk"] = true,["afking"] = true,["aguild"] = true,["alliancefocused"] = true,["allianceplayers"] = true,
["allstartingzones"] = true,["amilookingfor"] = true,["anyoneicaninvite"] = true,
["anoodle"] = true,["anyonehavea"] = true,["anyonehavean"] = true,["anyoneknow"] = true,["anyonetotalk"] = true,["approxlocation"] = true,["approximatelocation"] = true,["apxlocation"] = true,["apokemon"] = true,["apologize"] = true,
["arethereany"] = true,["asked"] = true,["atm"] = true,["bestchoice"] = true,["bestpvpheal"] = true,["bistankdoesnt"] = true,["borrowplease"] = true,["bought"] = true,["box"] = true,["buffforstormwind"] = true,["build"] = true,["burningcrusade"] = true,
["butneedthe"] = true,["butnowhorde"] = true,["butnowalliance"] = true,["bypremades"] = true,["candamagedungeon"] = true,["canhardcorequeue"] = true,["canhcqueue"] = true,["canhealdungeon"] = true,["caniborrow"] = true,["cantankdungeon"] = true,
["cantqueue"] = true,["cantremember"] = true,["casino"] = true,["coupleofbuff"] = true,["currencies"] = true,["currentquest"] = true,["declinequeue"] = true,["decliningqueue"] = true,["direction"] = true,["directions"] = true,["discount"] = true,
["doesnobody"] = true,["doesntletme"] = true,["doesntwork"] = true,["dontbuy"] = true,["dontfind"] = true,["dontjoinwsg"] = true,["dontwaste"] = true,["doyou"] = true,["duel"] = true,["dumbass"] = true,["earlier"] = true,
["emptyarch"] = true,["everyonehas"] = true,["fewquestion"] = true,["forgold"] = true,["formsagroup"] = true,["friendship"] = true,["fromsending"] = true,["fromthechat"] = true,["fromthatchat"] = true,["fromwars"] = true,
["fuck"] = true,["fullofgnomes"] = true,["getatlevel"] = true,["gl"] = true,["gmsent"] = true,["groupaboveyou"] = true,["groupiwasin"] = true,["hardcorequeuebg"] = true,["hasabow"] = true,["hasastun"] = true,["havequestion"] = true,
["hcqueuebg"] = true,["healdontdie"] = true,["helpmelocate"] = true,["helpsummon"] = true,["hereor"] = true,["hoo"] = true,["hordefocused"] = true,["hordeplayers"] = true,["hourqueue"] = true,["howcome"] = true,
["howfind"] = true,["howisthis"] = true,["howtodothis"] = true,["icanborrow"] = true,
["ignore"] = true,["ihavetospeak"] = true,["ijustdid"] = true,["ikindafelt"] = true,["imalready"] = true,["implaying"] = true,["ingame"] = true,["inspectme"] = true,["invitedme"] = true,["isfinetotank"] = true,["isgoodtotank"] = true,["ishostile"] = true,
["ispromoting"] = true,["istillneedmore"] = true,["isthenpc"] = true,["iswear"] = true,["ithinkthey"] = true,["itsnowhere"] = true,["iwishthere"] = true,["ivefinished"] = true,["iwashavingfun"] = true,
["joking"] = true,["justcold"] = true,["justfine"] = true,["justhot"] = true,["justout"] = true,["justwarm"] = true,["kalimdor"] = true,["knowaboutthis"] = true,["kickedeveryone"] = true,["kickedyou"] = true,["lesbian"] = true,
["letmequest"] = true,["levelwith"] = true,["lfbuff"] = true,["lfgworldbuff"] = true,["lfmworldbuff"] = true,["lfworldbuff"] = true,["lftip"] = true,["likeaids"] = true,["literally"] = true,["locating"] = true,["lockbox"] = true,
["losers"] = true,["macro"] = true,["magewater"] = true,["magefood"] = true,["makessense"] = true,["mainlyprefer"] = true,["manhandled"] = true,["manytwinks"] = true,["massiveamounts"] = true,["midgetguild"] = true,["moreexperiencethanme"] = true,
["mybad"] = true,["mypet"] = true,["mysterydungeon"] = true,["nah"] = true,["needanewgame"] = true,["needonyhead"] = true,["noonequeue"] = true,["oncooldown"] = true,["onybuff"] = true,["opinion"] = true,
["ourranks"] = true,["petattack"] = true,["pokemontrainer"] = true,["political"] = true,["practice"] = true,["prefertoplay"] = true,["pretending"] = true,["prohibited"] = true,["prolly"] = true,["putoff"] = true,["pvpflagged"] = true,
["questandlevel"] = true,["questionfor"] = true,["questlevel"] = true,["queueitinlft"] = true,["queuesuck"] = true,["quickquestion"] = true,["raidingguild"] = true,["rebooted"] = true,["reddit"] = true,
["reallyreserving"] = true,["reinvite"] = true,["remotelyfair"] = true,["removeallthe"] = true,["repairs"] = true,["respec"] = true,["retailpvp"] = true,["retard"] = true,["ridofit"] = true,
["riphimoff"] = true,["ripheroff"] = true,["ripoff"] = true,["rippeopleoff"] = true,["ripplayeroff"] = true,["ripthemoff"] = true,["ripusoff"] = true,["ruin"] = true,["runtimes"] = true,
["scam"] = true,["sendingmessages"] = true,["sentyou"] = true,["seriouslyreserving"] = true,["serverneed"] = true,["shirt"] = true,["shit"] = true,["shitload"] = true,["shitloads"] = true,
["sicko"] = true,["sohedoesnt"] = true,["soicansee"] = true,["someaddon"] = true,["somehr"] = true,["somequestion"] = true,["somestuff"] = true,["sorry"] = true,["soshedoesnt"] = true,
["spamming"] = true,["splitsecond"] = true,["startedgriefing"] = true,["startgriefing"] = true,["stopdecline"] = true,["stopdeclining"] = true,["stoppingme"] = true,["storystuff"] = true,
["stfu"] = true,["stopqueue"] = true,["stoptryingto"] = true,["suckforyou"] = true,["sugardaddy"] = true,["sugarmomma"] = true,["summonedme"] = true,["talents"] = true,["talenttree"] = true,
["talkabout"] = true,["taxi"] = true,["tbh"] = true,["teamwork"] = true,["thatguy"] = true,["theresanempty"] = true,["theresno"] = true,["theysay"] = true,["thisgame"] = true,
["thishappens"] = true,["thismorning"] = true,["thisserver"] = true,["thoseguys"] = true,["thought"] = true,["timesarerough"] = true,["timesure"] = true,["toanswer"] = true,
["tochat"] = true,["toswap"] = true,["turnback"] = true,["typethat"] = true,["unlessyouneed"] = true,["usesabow"] = true,["veganguild"] = true,["needtoqueueit"] = true,
["wasdoing"] = true,["watereddown"] = true,["whatability"] = true,["whatbird"] = true,["whatlevel"] = true,["waitingforhour"] = true,["waitinghour"] = true,["waitingtime"] = true,
["warriorpants"] = true,["warriorlegs"] = true,["weekday"] = true,["weekdays"] = true,["weekend"] = true,["werules"] = true,["whatisit"] = true,["whatlevelis"] = true,
["whencani"] = true,["whenthereare"] = true,["whereisit"] = true,["whereislocation"] = true,["whilehardreserving"] = true,["whosummoned"] = true,["whyareall"] = true,
["whycanti"] = true,["whyicant"] = true,["whyisa"] = true,["whyiseveryone"] = true,["whythehell"] = true,["wishaliens"] = true,["withsomething"] = true,["wouldneed"] = true,
["wouldntbeasking"] = true,["wtf"] = true,["yell"] = true,["youarejustlooking"] = true,["youdbelooking"] = true,["youlaugh"] = true,["yourelaughing"] = true,
["yourmoney"] = true,["youneedthehighest"] = true,["youwouldntbe"] = true,

-- Classes
["playingdruid"] = true,["playinghunter"] = true,["playingmage"] = true,["playingpaladin"] = true,["playingpriest"] = true,["playingrogue"] = true,["playingshaman"] = true,["playingwarlock"] = true,["playingwarrior"] = true,

["asboomie"] = true,["asbalance"] = true,["asferal"] = true,["asresto"] = true,["asrestoration"] = true,["playingboomie"] = true,["playingbalance"] = true,["playingferal"] = true,["playingresto"] = true,["playingrestoration"] = true,
["asbm"] = true,["asmm"] = true,["playingbm"] = true,["playingmm"] = true,
["asfire"] = true,["asfrost"] = true,["asarcane"] = true,["playingfire"] = true,["playingfrost"] = true,["playingarcane"] = true,
["asholy"] = true,["asret"] = true,["asprot"] = true,["playingholy"] = true,["playingret"] = true,["playingprot"] = true,
["ascombat"] = true,["assubtlety"] = true,["playingcombat"] = true,["playingsubtlety"] = true,
["asfury"] = true,["asarms"] = true,["playingfury"] = true,["playingarms"] = true,
["asshadow"] = true,["asdisc"] = true,["playingshadow"] = true,["playingshadow"] = true,
["asenhancement"] = true,["aselemental"] = true,["asele"] = true,["asenh"] = true,["playingenhancement"] = true,["playingelemental"] = true,["playingele"] = true,["playingenh"] = true,
["asdestruction"] = true,["asaffliction"] = true,["asdemonology"] = true,["asdemo"] = true,["asafflic"] = true,["asdestro"] = true,
["playingdestruction"] = true,["playingaffliction"] = true,["playingdemonology"] = true,["playingdemo"] = true,["playingafflic"] = true,["playingdestro"] = true,

["shouldadruid"] = true,["shouldahunter"] = true,["shouldamage"] = true,["shouldapaladin"] = true,["shouldapriest"] = true,["shouldarogue"] = true,["shouldashaman"] = true,["shouldawarrior"] = true,["shouldawarlock"] = true,

["ineeddruidhelp"] = true,["ineedhunterhelp"] = true,["ineedmagehelp"] = true,["ineedpaladinhelp"] = true,["ineedpriesthelp"] = true,["ineedroguehelp"] = true,["ineedshamanhelp"] = true,["ineedwarriorhelp"] = true,["ineedwarlockhelp"] = true,
["druidexpert"] = true,["hunterexpert"] = true,["mageexpert"] = true,["paladinexpert"] = true,["priestexpert"] = true,["rogueexpert"] = true,["shamanexpert"] = true,["warlockexpert"] = true,["warriorexpert"] = true,

["needpaladinbuff"] = true,["needdruidbuff"] = true,["needmagebuff"] = true,["needpriestbuff"] = true,
["paladinbuffkings"] = true,["priestbuffstamina"] = true,
["buffarcaneintellect"] = true,["buffintellect"] = true,["buffkings"] = true,["buffmotw"] = true,
["needstaminabuff"] = true,["needintellectbuff"] = true,

-- Races
["createadwarf"] = true,["createahuman"] = true,["createagnome"] = true,["createagoblin"] = true,["createahighelf"] = true,["createanightelf"] = true,["createanorc"] = true,["createatauren"] = true,["createatroll"] = true,["createanundead"] = true,

["ordwarf"] = true,["orhuman"] = true,["orgnome"] = true,["orgoblin"] = true,["orhighelf"] = true,["ornightelf"] = true,["ororc"] = true,["ortauren"] = true,["ortroll"] = true,["orundead"] = true,

["nightelfpriest"] = true,

-- Roles
["shouldicaster"] = true,["shouldidamage"] = true,["shouldiheal"] = true,["shouldimelee"] = true,["shouldirange"] = true,["shouldistealth"] = true,["shoulditank"] = true,

-- Professions
["alchemististhe"] = true,["blacksmithisthe"] = true,["enchantisthe"] = true,["engineeristhe"] = true,["herbalismisthe"] = true,["leatherworkeristhe"] = true,["mineristhe"] = true,["tailoristhe"] = true,

-- Things not in Vanilla
["icc"] = true,["ssc"] = true,["tk"] = true,
}

GF_WORD_GUILD = {
["guild"] = 102,["ginvite"] = 3,["guid"] = 1,["magosh"] = 2,["recruiting"] = 2,["recruitment"] = 1,
["monday"] = .5,["mondays"] = .5,["tuesday"] = .5,["tuesdays"] = .5,["wednesday"] = .5,["wednesdays"] = .5,["thursday"] = .5,["thursdays"] = .5,["friday"] = .5,["fridays"] = .5,["saturday"] = .5,["saturdays"] = .5,["sunday"] = .5,["sundays"] = .5,
["mon"] = .5,["tue"] = .5,["tues"] = .5,["thu"] = .5,["thur"] = .5,["thurs"] = .5,["fri"] = .5,["sat"] = .25,["sun"] = .25,["week"] = .5,["weekly"] = .5,

["hr"] = .5,["mats"] = .5,["mount"] = .5,["recipe"] = .5,["boe"] = .5,

["dedicated"] = 1,["environment"] = 1,["membership"] = 1,["community"] = 1,["progression"] = 1,["progressing"] = .5,["events"] = 1,["rp"] = 1,["casual"] = .5,["social"] = .5,["helpful"] = .5,["friends"] = .5,
["ambience"] = 1,["brotherhood"] = 1,["members"] = .5,["roleplayer"] = .5,["leveling"] = 1,["welcoming"] = 1,["welcome"] = .5,["twink"] = 1,["house"] = .5,["roster"] = .5,["endgame"] = 1,
["gbank"] = 1,["tabard"] = .5,["dkp"] = 1,["adventures"] = 1,["adventurers"] = 1,["camaraderie"] = 1,["chill"] = .25,["reliable"] = .25,["skilled"] = .25,

 -- Two Words
["guildinvite"] = 3,["lfguild"] = 3,["findguild"] = .5,["lfgguild"] = 3,["guildbank"] = .5,["guildhouse"] = 1,["guildbase"] = .5,["needguild"] = 3,
["socialguild"] = .25,["noobguild"] = .5,["newguild"] = .5,["newerguild"] = .5,["pvpguild"] = .5,["raidguild"] = .25,["cozyguild"] = .5,["levelingguild"] = .5,["memeguild"] = .5,["biggerguild"] = .5,["biggerguild"] = .5,["speakingguild"] = .5,
["smallguild"] = .5,["bigguild"] = .5,["reallybigguild"] = .5,["largeguild"] = .5,["mediumsizedguild"] = .5,["funguild"] = .5,["friendlyguild"] = .5,["speakingguild"] = .5,
["lgbtguild"] = .5,["lgbtqguild"] = .5,["lgbtfriendlyguild"] = .5,["lgbtqriendlyguild"] = .5,
["coolguild"] = .5,["erpguild"] = .5,["challeningguild"] = .5,
["raidteam"] = 2,["raidgroup"] = 2,["raidroster"] = 2,["raiddays"] = 2,["raidnights"] = 2,["coreteam"] = 2,["coreroster"] = 2,["coreraiders"] = 2,["ourroster"] = 2,["buildingranks"] = 1,
["lootcouncil"] = 1.5,["lootsystem"] = 1.5,["epgp"] = 1.5,["srms"] = .5,
["considerjoining"] = 2,["aboutjoining"] = 2,["jointoday"] = 2,["joinus"] = 1,["thenjoin"] = 1,["getinfo"] = 1,["comejoin"] = 1,["jointhe"] = .25,["jointhemost"] = .25,["joina"] = .25,["joinalesserguild"] = .25,["joinaguild"] = .25,["jointhebest"] = .5,

["currentlyprogressing"] = 1.5,["clearingcontent"] = 1,["turtlecontent"] = 1,["endgamecontent"] = 1,["lowercontent"] = .5,["firstrun"] = 1,["classicexperience"] = .5,["vanillaexperience"] = .5,
["needyou"] = 2,["welcomeyou"] = 2,["welcometo"] = 1,["alwayswelcome"] = 1,["adultswelcome"] = .5,["raiderswelcome"] = .5,["moremembers"] = .5,["quirkymembers"] = .5,["goodteam"] = .5,["maturecommunity"] = 1,["funcommunity"] = 1,["laidback"] = .5,
["enjoyleveling"] = 1,["casualleveling"] = 1,["casualraid"] = 1,["leveltogether"] = 1,["groupquest"] = .5,["alliancelevelers"] = 1,["hordelevelers"] = 1,["peopleleveling"] = 1,["questtogether"] = .5,["newlymade"] = .5,["hardcoreleveling"] = .5,

["nonstopactivity"] = .5,["weeklyevents"] = .5,["weekdayraid"] = 1,["raidday"] = .5,["raidtime"] = 2,["raidtimes"] = 2,["inweek"] = 1,["aweek"] = 1,["everyweek"] = .5,["allraids"] = .5,
["newplayer"] = .5,["newplayer"] = 2,["newmembers"] = 1.5,["newlyformed"] = 2,["seriousmembers"] = .5,["veteranplayer"] = 1,["casualfriendly"] = 1,["raidready"] = 1,
["dungeoncrawling"] = 1,["pleasantadventure"] = 2,["goodvibes"] = 2,["pugclears"] = 2,["laidback"] = .5,["personalpractice"] = .5,["roleplayingevent"] = .5,["ourvoyage"] = .5,["freshjourney"] = .5,
["warmodeonly"] = .5,["hordeonly"] = .5,["pvpfriendly"] = 1,["pvefriendly"] = 1,
["weraid"] = .5,["wejoke"] = .5,

["mcclearedin"] = 1,["bwlclearedin"] = 1,["aqclearedin"] = 1,["naxxramasclearedin"] = 1,
["mcprogression"] = 1,["bwlprogression"] = 1,["aqprogression"] = 1,["naxxramasprogression"] = 1,

 -- Three Words
["lfanyguild"] = 3,["lfganyguild"] = 3,["isaguild"] = .5,["lookingforguild"] = 3,["anyforguild"] = 3,["lfforguild"] = 3,["lfgforguild"] = 3,

["findaguild"] = .5,["needtofind"] = .5,
["druidfind"] = .5,["hunterfind"] = .5,["magefind"] = .5,["paladinfind"] = .5,["priestfind"] = .5,["roguefind"] = .5,["shamanfind"] = .5,["warlockfind"] = .5,["warriorfind"] = .5,

["anycasualguild"] = 3,["anysocialguild"] = 3,["anyraidguild"] = 3,["anylevelingguild"] = 3,["anylevelguild"] = 3,["anypvpguild"] = 3,["anygoodguild"] = 3,["anyfriendlyguild"] = 3,["anychillguild"] = 3,["anyhypeguild"] = 3,["anyactiveguild"] = 3,
["lfcasualguild"] = 3,["lfsocialguild"] = 3,["lfraidguild"] = 3,["lflevelingguild"] = 3,["lflevelguild"] = 3,["lfpvpguild"] = 3,["lfgoodguild"] = 3,["lffriendlyguild"] = 3,["lfchillguild"] = 3,["lfhypeguild"] = 3,["lfactiveguild"] = 3,
["lfgcasualguild"] = 3,["lfgsocialguild"] = 3,["lfgraidguild"] = 3,["lfglevelingguild"] = 3,["lfglevelguild"] = 3,["lfgpvpguild"] = 3,["lfggoodguild"] = 3,["lfgfriendlyguild"] = 3,["lfgchillguild"] = 3,["lfghypeguild"] = 3,["lfgactiveguild"] = 3,

["goodlevelingguild"] = .5,["beginnerfriendlyguild"] = .5,["activecasualguild"] = 1,

["ourraidteam"] = 3,["finishourcore"] = 3,["lookingtoraid"] = .5,["lookingforraiders"] = .5,["lfmoremembers"] = 1,["lfskilledraiders"] = 2,["lfgmoremembers"] = 1,["lfgskilledraiders"] = 2,
["allcurrentcontent"] = 3,["highendcontent"] = 3,["startraidingsoon"] = 1,["startinweek"] = 1,["tryingtorebuild"] = 1,["lookingtorebuild"] = 1,["lookingtogrow"] = 1,["growwithus"] = 1,
["friendsandguildies"] = 1,["levelwithfriends"] = .5,["liketolevel"] = .5,["easygoingplayer"] = 2,["justgoodraid"] = 3,["helpingeachother"] = 1,["helpwithleveling"] = 1,["helpifneeded"] = .5,["wehelpyou"] = .5,

["raidwithus"] = 1.5,["joinourdiscord"] = 1,["jointoaccess"] = 1,["jointhespectacle"] = 1,["joinmyguild"] = 1,["homewithus"] = 1,["joinustoday"] = 1,["joinournation"] = 1,["tojoinus"] = .5,["pleasejoinus"] = .5,["alltheraid"] = 1,
["allclasseswelcome"] = 3,["allplayerwelcome"] = 1,["forallplayer"] = .5,["everybodyiswelcome"] = 1,["everyoneiswelcome"] = 1,["opentoanyone"] = .5,["opentoeveryone"] = .5,["alliswelcome"] = .5,["lotsofmembers"] = .5,["welcometoapply"] = 2,
["druidonlyguild"] = 1,["gnomeonlyguild"] = 1,["dwarfonlyguild"] = 1,["taurenonlyguild"] = 1,["undeadonlyguild"] = 1,["paladinonlyguild"] = 1,["trollonlyguild"] = 1,["orconlyguild"] = 1,
["mconfarm"] = 1,["bwlonfarm"] = 1,["aqonfarm"] = 1,["naxxramasonfarm"] = 1,
["hordepvpguild"] = .5,["alliancepvpguild"] = .5,["guildforgnomes"] = 2,

["aboveandbeyond"] = 1,["asweseek"] = 1,["themysteriesofazeroth"] = 1,["wedontdiscriminate"] = 1,["haveguildhouse"] = .5,["bandofbrothers"] = .5,["looknofurther"] = .5,

-- Four Words
["lookingforcoolguild"] = 1,["lookingsocialchillguild"] = 1,["startinaweek"] = 1,["nopressurenodrama"] = 3,["lfnewlymadeguild"] = 1,["lfgnewlymadeguild"] = 1,
["lookingforactivecasual"] = 1,["lookingforbigactive"] = 1,
["lfchilllevelingguild"] = 1,["lfgchilllevelingguild"] = 1,["crossfactionlevelingguild"] = 2,
["lookingformoremembers"] = 2,["lookingformoreplayer"] = 1,["lookingforskilledraiders"] = 2,["lookingfornewraiders"] = 2,["seekingfewgoodplayer"] = 1,["seekingsomegoodplayer"] = 1,
["lovetohaveyou"] = 2,["wewillhelpyou"] = .5,
["playerofanyclass"] = 1,["playerofallclasses"] = 1,["opentoall"] = 1,["alllevelsarewelcome"] = 1,

["needtojoinguild"] = 2,
-- Guild Spam that get around my filters
["pretendingsocializing"] = .5,["raidmechanic"] = .5,["escapethehellscape"] = .5,
["islookingforcaster"] = 1,["islookingforhpriest"] = 1,["islookingforrdruid"] = 1,["islookingforrsham"] = 1,

-- Foreign Words
["utc"] = .5,["cet"] = .5,["msk"] = 1,["est"] = 1,
["fr"] = 1,["fra"] = 2,["ru"] = 2,["cz"] = .5,["pl"] = 1,["na"] = 1,["au"] = 1,["ua"] = 1,["uhr"] = 1,["rus"] = 1,["eu"] = .5,["br"] = .5,["ita"] = .5,
["polska"] = 1,["ukrainska"] = 1,["czsk"] = .5,["cesko"] = 1,["romani"] = 1,["slovenska"] = 1,["brasilia"] = 1,["bulgarski"] = 1,["hispana"] = 1,["italiana"] = 1,["magyar"] = 1,["finnish"] = 1,

["frguild"] = 1,["fraguild"] = 1,["ruguild"] = 1,["czguild"] = .5,["plguild"] = .5,["naguild"] = .5,["auguild"] = .5,["uaguild"] = .5,["uhrguild"] = .5,["rusguild"] = .5,["euguild"] = .5,["brguild"] = .5,["ptguild"] = .5,["itaguild"] = .5,

["ukrainianguild"] = 1,["guildrussian"] = 1,["russianguild"] = 1,["finnishguild"] = 1,["philippineguild"] = 1,["algumaguild"] = 1,["algunaguild"] = 1,["germanguild"] = .5,
["lfukrainianguild"] = 1,["lfrussianguild"] = 1,["lffinnishguild"] = 1,["lfphilippineguild"] = 1,["lffilipinoguild"] = 1,["lfgermanguild"] = 1,["lffrenchguild"] = 1,["lfspanishguild"] = 1,["lfpolishguild"] = 1,
["lfitalianguild"] = 1,["lfdutchguild"] = 1,["lfindonesiaguild"] = 1,["lfoceguild"] = 1,["lfnaguild"] = 1,["lfeuguild"] = 1,
["lfgukrainianguild"] = 1,["lfgrussianguild"] = 1,["lfgfinnishguild"] = 1,["lfgphilippineguild"] = 1,["lfgfilipinoguild"] = 1,["lfggermanguild"] = 1,["lfgfrenchguild"] = 1,["lfgspanishguild"] = 1,["lfgpolishguild"] = 1,
["lfgitalianguild"] = 1,["lfgdutchguild"] = 1,["lfgindonesiaguild"] = 1,["lfgoceguild"] = 1,["lfgnaguild"] = 1,["lfgeuguild"] = 1,
["needukrainianguild"] = 1,["needrussianguild"] = 1,["needfinnishguild"] = 1,["needphilippineguild"] = 1,["needfilipinoguild"] = 1,["needgermanguild"] = 1,["needfrenchguild"] = 1,["needspanishguild"] = 1,["needpolishguild"] = 1,["needitalianguild"] = 1,["needdutchguild"] = 1,
["needindonesiaguild"] = 1,["needoceguild"] = 1,["anyoceguild"] = 1,["neednaguild"] = 1,["needeuguild"] = 1,
["anyukrainianguild"] = 1,["anyrussianguild"] = 1,["anyfinnishguild"] = 1,["anyphilippineguild"] = 1,["anygermanguild"] = 1,["anyfrenchguild"] = 1,["anyspanishguild"] = 1,["anypolishguild"] = 1,["anyitalianguild"] = 1,["anydutchguild"] = 1,
["anyindonesiaguild"] = 1,["anyoceguild"] = 1,["anyoceguild"] = 1,["anynaguild"] = 1,["anyeuguild"] = 1,

["czsfk"] = 2,["sfkcz"] = 2,

["mercredi"] = .5,["dimanche"] = .5,["joueursenleveling"] = 1,["joueursactifs"] = 1,

["miembrosnuevos"] = 1,
["chercheguild"] = 1,["Pohodova"] = 1,["otevrenaprovsechny"] = 2,

["vedemnabor"] = 1,["vedetsanabor"] = 1,["prohozhdeniyadanzhey"] = 1,["sovmestnoyprokachki"] = 1,
["vedemnaborigrokov"] = 3,["novacekciveteran"] = 2,["provodenabirgravziv"] = 2,

["maajoukue"] = 2,["suomikilta"] = 2,["suomikiltaa"] = 2,["raidaaako"] = 1.5,["questaako"] = 1.5, -- Finnish
["teretulemastkiltaan"] = 3,["kaikihoituu"] = 1,["suomipelaajia"] = 2,["kiltaan"] = 1,["haetaankiltaan"] = 2,["tulille"] = 1,
["miembrosnuevosenraids"] = 1,

-- German
["deutsche"] = 1,["deutschsprachige"] = 1,["allianz"] = 1,["mitraiden"] = 1,["sucht"] = 1,["raidkader"] = 1,["motivierte"] = 1,["raidtage"] = 1,
["deutschsprachigen"] = 1,["joinwelt"] = 1,["werbeunterbrechung"] = 1,
["yesttutruguild"] = 3,["sucheguild"] = 1,["suchenetteguild"] = 1,["uneguild"] = 1,

["frdendeutschsprachigen"] = 1,
["compltersonroster"] = 2,["joueursmotivs"] = 1,["sbados"] = .5,
-- Finnish
["josontyls"] = 1,["hakeejseni"] = 3,["mitmuutamenoatoistaaseksi"] = 3,

-- Spanish/Portuguese
["guildespaola"] = 1,["espaola"] = 1,["espaoles"] = 1,["necesitaconquistar"] = 1,["hispanohablante"] = 1,["comprometidos"] = 1,["bienvenidos"] = 1,
["estareclutando"] = 1,
["reclutandogente"] = 1,
["paralacore"] = 1,["aceptamos"] = .5,["limpiandocontenido"] = 1,["domingos"] = .5,
["semanalmente"] = 1,["sitequieresunir"] = 2,
["hermandad"] = .5,["unete"] = .5,

["raidov"] = 1,["ishet"] = 1,["novacek"] = 1,["raidereket"] = 1,["priednuysia"] = 1,["primet"] = 1,["reydinga"] = 1,["novaya"] = 1,
["novayagildiya"] = 1,["nabirayet"] = 2,["nabirayetvsekh"] = 1,["zhelayushchikh"] = 1,["igrokov"] = 1,["zhelayushchikhigrokov"] = 1,

-- Italy
["nuovaguild"] = 1,["cercaplayer"] = 1,["seiinteressato"] = 1,["initaliano"] = 1,["italiano"] = .5,["interessato"] = 1,["cercoplayer"] = 1,["creazionegilda"] = 1,
["cerca"] = .5,["interesse"] = .5,["cercagiocatoriitaliani"] = 3,["sehaiinteresse"] = 1,

-- To avoid spam
["mexicanguild"] = 1,["canadianguild"] = 1,["venezuelanguild"] = 1,["cubanguild"] = 1,["brazilianguild"] = 1,["brasilianguild"] = 1,["argentineguild"] = 1,["southafricanguild"] = 1,["zimbabweanguild"] = 1,["nigerguild"] = 1,["nigerianguild"] = 1,
["congoleseguild"] = 1,["moroccanguild"] = 1,["algerianguild"] = 1,["libyanguild"] = 1,["egyptianguild"] = 1,["ethiopianguild"] = 1,["somaliguild"] = 1,["kenyanguild"] = 1,["saudiguild"] = 1,["iranianguild"] = 1,["yemeniguild"] = 1,
["syrianguild"] = 1,["iraqiguild"] = 1,["lebaneseguild"] = 1,["greekguild"] = 1,["turkishguild"] = 1,["turkeyguild"] = 1,["afghanguild"] = 1,["afghaniguild"] = 1,["pakistanguild"] = 1,["pakistaniguild"] = 1,["indiaguild"] = 1,["indianguild"] = 1,
["portugueseguild"] = 1,["portugalguild"] = 1,["spainguild"] = .5,["spanishguild"] = .5,["norwegianguild"] = 1,["swedishguild"] = 1,["kazakhguild"] = 1,["tajikguild"] = 1,["turkguild"] = 1,["mongolianguild"] = 1,["mongoliaguild"] = 1,
["chineseguild"] = 1,["chinaguild"] = 1,["japaneseguild"] = 1,["japanguild"] = 1,["koreanguild"] = 1,["koreaguild"] = 1,["thaiguild"] = 1,["thailandguild"] = 1,["vietnamguild"] = 1,["vietnameseguild"] = 1,["malayguild"] = 1,["malaysianguild"] = 1,
["peruguild"] = 1,["peruvianguild"] = 1,["colombiaguild"] = 1,["colombianguild"] = 1,["chileguild"] = 1,["chileanguild"] = 1,["chadguild"] = 1,["ugandanguild"] = 1,["ugandaguild"] = 1,["rwandaguild"] = 1,
}
GF_GUILD_WORD_EXCLUSION = {
["today"] = .5,["tonight"] = .5,["host"] = .5,["legendaries"] = .5,["mat"] = .5,["bindings"] = .5,["boes"] = .5,["boe"] = .5,

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
["leatherworkerspotfor"] = 2,["clothspotfor"] = 2,["mailspotfor"] = 2,["platespotfor"] = 2,

["formingraid"] = 2,["hostraid"] = 2,
["groupquest"] = 2,["doingquest"] = 2,["anyonequest"] = 2,
["summonready"] = 2,["anyoneinterested"] = 2,["msos"] = 2,

-- Three Words
["lookingformore"] = 2,["lookingforquest"] = 2,["srmsos"] = 2,["lokingformore"] = 2,
["needsometank"] = 2,["needonlytank"] = 2,["lookingfortank"] = 3,["tanklookingfor"] = 3,["onlytankfor"] = 2,["onlyneedtank"] = 2,["anytankfor"] = 2,["needlasttank"] = 2,["tankaroundfor"] = 2,["tankwannado"] = 2,["tankneedtodo"] = 2,
["needsomeheal"] = 2,["needonlyheal"] = 2,["lookingforheal"] = 3,["heallookingfor"] = 3,["onlyhealfor"] = 2,["onlyneedheal"] = 2,["anyhealfor"] = 2,["needlastheal"] = 2,["healaroundfor"] = 2,["healwannado"] = 2,["healneedtodo"] = 2,
["needsomedamage"] = 2,["needonlydamage"] = 2,["lookingfordamage"] = 3,["damagelookingfor"] = 3,["onlydamagefor"] = 2,["onlyneeddamage"] = 2,["anydamagefor"] = 2,["needlastdamage"] = 2,["damagearoundfor"] = 2,["damagewannado"] = 2,["damageneedtodo"] = 2,
["lookingforstealth"] = 2,["needstealth"] = 2,["needanyonestealth"] = 2,
["tankdamagefor"] = 2,["tankhealfor"] = 2,["healtankfor"] = 2,["healdamagefor"] = 2,["damagehealfor"] = 2,["damagetankfor"] = 2,
["lookingfordruid"] = 2,["lookingforhunter"] = 2,["lookingformage"] = 2,["lookingforpaladin"] = 2,["lookingforpriest"] = 2,["lookingforrogue"] = 2,["lookingforshaman"] = 2,["lookingforwarlock"] = 2,["lookingforlock"] = 2,["lookingforwarrior"] = 2,

["anyoneelseneed"] = 2,["anyonealsoneed"] = 2,["anyoneelsefor"] = 2,["anyoneelsedoing"] = 2,["anyoneelsequest"] = 2,["anyoneupfor"] = 2,["anyonewannado"] = 2,["anyonewannajoin"] = 2,["anyoneworkingon"] = 2,["anyothersfor"] = 2,
["anyupfor"] = 2,["anyonehelpwith"] = 2,["anyonetodo"] = 2,["anyoneplanningtodo"] = 2,["anyoneneedingtodo"] = 2,["anyonegoingtodo"] = 2,
["anygroupfor"] = 2,["anygroupdoing"] = 2,["anygroupneed"] = 2,["anygroupup"] = 2,["anypartyneed"] = 2,["anydungeonneed"] = 2,["anyallianceneed"] = 2,["anyhordeneed"] = 2,
["allianceforquest"] = 2,["hordeforquest"] = 2,

["ifanyoneneed"] = 2,["anyoneneedto"] = 2,["anyonewannafarm"] = 2,["anyoneforquest"] = 2,["anyonetherefor"] = 2,["anyonewannakill"] = 2,
["wannahelpwith"] = 2,["needtohelp"] = 2,["ineedhelp"] = 2,["helpwithquest"] = 2,["willingtohelp"] = 2,["helpoutwith"] = 2,["mindhelpingwith"] = 2,["mindhelpwith"] = 2,
["helpmewith"] = 2,["helpmewit"] = 2,["anyhelpin"] = 2,["anyhelpfor"] = 2,["anyonewannahelp"] = 2,["anyonemindhelping"] = 2,["whocanhelp"] = 2,["needhelpwith"] = 2,
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
["anyoneneedtorun"] = 2,["anyoneneedtodo"] = 2,["whoneedtodo"] = 2,["anyoneneedtojoin"] = 2,["ifyouwannajoin"] = 2,["anyonewhocanhelp"] = 2,["anygroupsgoingfor"] = 2,
["anyoneneedtokill"] = 2,["anyonehavetodo"] = 2,
["wannadoquest"] = 2,["needtodoquest"] = 2,["anyoneuptoquest"] = 2,["anyoneupforquest"] = 2,["anyonehereforquest"] = 2,["anyoneneedtoquest"] = 2,["helpwithaquest"] = 2,["comewithmequest"] = 2,["whoisdownto"] = 2,["doesanyonehaveto"] = 2,
["anyonedowntohelp"] = 2,["anyonecaretohelp"] = 2,["anyoneneedtohelp"] = 2,["anyoneabletohelp"] = 2,["anyonethatcanhelp"] = 2,["caretohelpwith"] = 2,["helpmeoutwith"] = 2,["cananyonehelpme"] = 2,
["anyonehelpmewith"] = 2,["needanotherforquest"] = 2,["needotherforquest"] = 2,

["formingagroupfor"] = 2,["startingagroupfor"] = 2,["makingagroupfor"] = 2,["formingagroupto"] = 2,["startingagroupto"] = 2,["makingagroupto"] = 2,
["needtoteamup"] = 2,["anygamersforquest"] = 2,["anygamersquest"] = 2,["isthereanyraid"] = 2,["anyraidforquest"] = 2,

["anymoltencorehappening"] = 2,["anyblackwinglairhappening"] = 2,["anyworldbosshappening"] = 2,
["anymoltencoregoing"] = 2,["anyblackwinglairgoing"] = 2,["anyworldbossgoing"] = 2,

-- Farm
["badgefarm"] = 2,["argentdawnrepfarm"] = 2,["stratrepfarm"] = 2,["repfarmopen"] = 2,["getyouraqrepfarm"] = 2,["combatbadgefarm"] = 2,

-- Other
["bindingrecipereserved"] = 2,["bindingmatreserved"] = 2,["bindingmountreserved"] = 2,["bindingboereserved"] = 2,
["legendaryrecipereserved"] = 2,["legendarymatreserved"] = 2,["legendarymountreserved"] = 2,["legendaryboereserved"] = 2,
["recipebindingreserved"] = 2,["recipelegendaryreserved"] = 2,["recipematreserved"] = 2,["recipemountreserved"] = 2,["recipeboereserved"] = 2,
["matbindingreserved"] = 2,["matlegendaryreserved"] = 2,["matrecipereserved"] = 2,["matmountreserved"] = 2,["matboereserved"] = 2,
["mountbindingreserved"] = 2,["mountlegendaryreserved"] = 2,["mountrecipereserved"] = 2,["mountmatreserved"] = 2,["mountboereserved"] = 2,
["boebindingreserved"] = 2,["boelegendaryreserved"] = 2,["boerecipereserved"] = 2,["boematreserved"] = 2,["boemountreserved"] = 2,
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
["together"] = true,
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
["any"] = true,
["anyone"] = true,
["help"] = true,
["group"] = true,
["together"] = true,
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
["pleasequeue"] = true,
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
["letsrun"] = true,
}
GF_LFM_OTHER = {
["lfmtribute"] = true,["lfmstrat"] = true,["lfmstart"] = true,["lfmgy"] = true,["lfmgraveyard"] = true,["lfmgnome"] = true,["lfmtemple"] = true,["lfmrc"] = true,
["lftribute"] = true,["lfstrat"] = true,["lfstart"] = true,["lfgy"] = true,["lfgraveyard"] = true,["lfgnome"] = true,["lftemple"] = true,["lfrc"] = true,
}
GF_LFG_OTHER = {
["lfgtribute"] = true,["lfgstrat"] = true,["lfgstart"] = true,["lfggy"] = true,["lfggraveyard"] = true,["lfggnome"] = true,["lfgtemple"] = true,["lfgrc"] = true,
}

GF_WORD_CLASSES = {
["druid"] = 0,["hunter"] = 0,["mage"] = 0,["paladin"] = 0,["priest"] = 0,["rogue"] = 0,["shaman"] = 0,["warlock"] = 0,["lock"] = 0,["warrior"] = 0,
["heal"] = 0,["tank"] = 0,["damage"] = 0,["range"] = 0,["melee"] = 0,["caster"] = 0,
}
GF_WORD_QUEST = {
["hogger"] = 10,["vagash"] = 11,["arugals"] = 15,["pyrewood"] = 15,["murkdeep"] = 18,["mercenaries"] = 19,["gyromast"] = 20,["gyromasts"] = 20,["counterattack"] = 20,["vyrin"] = 20,["vyrins"] = 20,["arachnophobia"] = 21,
["choksul"] = 22,["korgem"] = 22,["fenris"] = 24,["yowler"] = 25,["tharilzun"] = 25,["stonewatch"] = 26,["gathilzogg"] = 26,["gath"] = 26,["fangore"] = 26,["morganth"] = 27,["dangerous"] = 28,["arikara"] = 28,["eliza"] = 30,["steelsnap"] = 30,
["hypercapacitor"] = 30,["humbert"] = 30,["embalmer"] = 32,["nekrosh"] = 32,["nekroshs"] = 32,["morbent"] = 32,["vorrel"] = 33,["balgaras"] = 34,["morladim"] = 35,["goldir"] = 35,["sindall"] = 37,["trollbane"] = 37,["excelsior"] = 37,
["bhagthera"] = 40,["tethis"] = 43,["bangalash"] = 43,["stromgarde"] = 37,["frostmaw"] = 37,["trelane"] = 39,["marez"] = 40,["falconcrest"] = 40,["ghostoplasm"] = 39,["cyclonian"] = 40,
["kurzen"] = 40,["fozruk"] = 42,["deathfrombelow"] = 44,["deadmire"] = 45,["oox"] = 45,["morokk"] = 45,["maizoth"] = 46,["smotts"] = 46,["gammerita"] = 48,["incendosaurs"] = 49,["maltorius"] = 50,["hexx"] = 50,["muisek"] = 50,
["negolash"] = 50,["gahzrilla"] = 50,["mokrash"] = 50,["mok"] = 50,["jinthaalor"] = 50,["sharpbeak"] = 51,["revantusk"] = 51,["torntusk"] = 51,["obsidion"] = 52,["gorshak"] = 52,["shadra"] = 55,["ursius"] = 56,
["brumeran"] = 58,["azsharite"] = 58,["hetaera"] = 58,["kirith"] = 58,["grark"] = 58,["winterfall"] = 59,["deathclasp"] = 59,["duskwing"] = 60,["corpulent"] = 60,["borelgore"] = 60,["courier"] = 60,
["demetria"] = 60,["ascension"] = 60,["rakh"] = 60,["rakhlikh"] = 60,["abyssal"] = 60,["araj"] = 60,["arajs"] = 60,["andorhal"] = 60,["fordring"] = 60,["frostmaul"] = 60,["shyrotam"] = 60,
["somnus"] = 60,["chronalis"] = 60,["axtroz"] = 60,["scryer"] = 60,["rotam"] = 60,["bloodkelp"] = 60,["rakhlikh"] = 60,["xoroth"] = 60,["dreadsteed"] = 60,["hearthglen"] = 60,["suppression"] = 60,
["hiveashi"] = 60,["hiveregal"] = 60,["hivezora"] = 60,["chimaerok"] = 63,["decoy"] = 63,["lakmaeran"] = 64,["neptulon"] = 64,["maws"] = 64,["eranikus"] = 64,["nathanos"] = 63,["blightcaller"] = 63,["darrowshire"] = 63,
["drakisath"] = 63,["thunderaan"] = 64,["combatbadge"] = 60,["combatbadges"] = 60,["badgefarm"] = 60,["hyjalshard"] = 60,["dukes"] = 60,["elite"] = 0,["escort"] = 0,["quest"] = 0,["task"] = 0,["repfarm"] = 0,

-- Two Words
["gatheringidols"] = 18,["denmother"] = 18,["tharnariunshope"] = 18,["theweaver"] = 20,["lookingfurther"] = 22,["furbolgvillage"] = 23,["solomonslaw"] = 23,["shadowmagic"] = 23,
["blackrockbounty"] = 25,["eliteredridge"] = 26,["redridgeelite"] = 26,["lieutenantfangore"] = 26,["redridgegroup"] = 26,["elitelakeshire"] = 26,["lakeshireelite"] = 26,
["bloodfurybloodline"] = 26,["warbanners"] = 29,["theden"] = 29,["hordepresence"] = 29,["hypercapacitorgizmo"] = 30,["hillsbradelite"] = 30,["hillsbradgroup"] = 30,["elitewetlands"] = 30,
["wetlandselite"] = 30,["dunmodr"] = 30,["humbertssword"] = 30,["dungarok"] = 30,["theattack"] = 31,["thandolspan"] = 31,["insanedruids"] = 32,["vorrelsrevenge"] = 33,
["grimtask"] = 34,["morladim"] = 35,["preservingknowledge"] = 38,["crushridgewarmongers"] = 40,["brokensigil"] = 40,["thecorrupter"] = 40,["tigermastery"] = 37,["elitearathi"] = 40,["arathielite"] = 40,
["elitealterac"] = 40,["alteracelite"] = 40,["arathigroup"] = 40,["alteracgroup"] = 40,["elitedustwallow"] = 45,["dustwallowelite"] = 40,["thesummon"] = 40,["darkcouncil"] = 40,["panthermastery"] = 40,["demonoftheorb"] = 40,["khanhratha"] = 42,
["raptormastery"] = 43,["stranglethornfever"] = 45,["mindseye"] = 46,["crackingmaury"] = 44,["bloodsailbuccaneers"] = 45,["chickenquest"] = 45,["chickenescort"] = 45,["homingrobot"] = 45,
["captainschest"] = 47,["jinthaalor"] = 50,["brokenalliances"] = 50,["darkvessels"] = 50,["separationanxiety"] = 50,["cliffgiant"] = 50,["darkheart"] = 50,["ancientegg"] = 50,["hintelite"] = 50,["elitehinterlands"] = 50,
["hinterlandselite"] = 50,["hintgroup"] = 50,["hinterlandsgroup"] = 50,["hinterlandsquest"] = 50,["elitetroll"] = 50,["trollelite"] = 50,["flamescasing"] = 50,["revantuskvillage"] = 51,["releasethem"] = 52,
["alienecology"] = 52,["overmasterpyron"] = 52,["dragonkinmenace"] = 54,["burningsteppes"] = 56,["grarklorkrub"] = 58,["unfinishedbusiness"] = 58,["falrinsvendetta"] = 60,
["dearestnatalia"] = 60,["fieldduty"] = 60,["targethive"] = 60,["targethiveashi"] = 60,["targethiveregal"] = 60,["targethivezora"] = 60,["scarletsubterfuge"] = 60,
["exorcisingterrordale"] = 60,["stormwindrendezvous"] = 60,["glyphchasing"] = 62,["thecalling"] = 62,["indreams"] = 62,["lastbarov"] = 62,["hordebarov"] = 62,["alexibarov"] = 62,["weldonbarov"] = 62,
["alliancebarov"] = 62,["alcazisland"] = 62,["nightmarescorruption"] = 64,["twilightcorrupter"] = 64,["doctorweavil"] = 64,["dukesummon"] = 60,["dukesummonto"] = 60,["silithusdukes"] = 60,["silithuslords"] = 64,["dukesilithus"] = 60,["lordssilithus"] = 64,
["highcouncil"] = 64,["abyssalcouncil"] = 64,["thunderfuryquest"] = 64,["thunderfuryboss"] = 64,["elitesilithus"] = 60,["silithuselite"] = 60,["silithusgroup"] = 60,["championsbattlegear"] = 60,["stalwartsbattlegear"] = 60,
["volunteersbattlegear"] = 60,["veteransbattlegear"] = 60,["elitebarov"] = 60,["barovelite"] = 60,["barovgroup"] = 60,["elvenlegends"] = 60,["combattask"] = 60,["combatbadge"] = 60,["badgefarm"] = 60,
["westernplaguelands"] = 60,["easternplaguelands"] = 60,["wpl"] = 60,["epl"] = 60,
["repfarm"] = 0,["argentdawnrep"] = 60,["argentdawnrepfarm"] = 60,["argentrepfarm"] = 60,["cenarionrepfarm"] = 60,["ccrepfarm"] = 60,["cenarionrep"] = 60,["ccrep"] = 60,
["bossfarm"] = 0,["levelinggroup"] = 0,

-- Three Words
["snatchandgrab"] = 10,["deadtoothjack"] = 10,["protectingtheherd"] = 12,["thepeoplesmilitia"] = 17,["absentmindedprospector"] = 20,["lochmodanogres"] = 20,["elitelochmodan"] = 20,["lochmodanelite"] = 20,["lochmodangroup"] = 20,["escapethroughforce"] = 22,
["anunwelcomeguest"] = 24,["bellygrub"] = 24,["bailorsoreshipment"] = 25,["missinginaction"] = 25,["cullingthethreat"] = 25,["tomeofvalor"] = 25,["thecursedcrew"] = 29,["battleofhillsbrad"] = 30,["elixirofagony"] = 30,
["testofstrength"] = 30,["testofendurance"] = 30,["darkironwar"] = 30,["elitedarkshire"] = 34,["darkshireelite"] = 34,["eliteduskwood"] = 34,["duskwoodelite"] = 34,["darkshiregroup"] = 34,["duskwoodgroup"] = 34,["prisonbreakin"] = 34,["legendofstalvan"] = 35,
["encrustedtailfins"] = 35,["thevilereef"] = 37,["ghostoplasm"] = 39,["theperenoldetiara"] = 40,["calltoarms"] = 40,["therealthreat"] = 40,["calltoarms"] = 40,
["whirlwindaxe"] = 40,["whirlwindweapon"] = 40,["arathihighlandselite"] = 40,["alteracmountainelite"] = 40,["arathihighlandsgroup"] = 40,["alteracmountaingroup"] = 40,["breakingthekeystone"] = 42,["sigiloftrollbane"] = 42,
["lordalidenperenolde"] = 42,["biggamehunter"] = 43,["crownofwill"] = 43,["crackingmaurysfoot"] = 44,["dustwallowmarshelite"] = 45,["challengeoverlordmokmorok"] = 45,["broodofonyxia"] = 45,["fieryblazeenchantments"] = 45,
["summontheprincess"] = 50,["hinterlandsallianceelite"] = 50,["hinterlandshordeelite"] = 50,["hinterlandsalliancegroup"] = 50,["hinterlandshordegroup"] = 50,
["setthemablaze"] = 52,["muiginandlarion"] = 52,["larionandmuigin"] = 52,["pawncapturesqueen"] = 54,["timbermawholdrep"] = 55,["offorgottenmemories"] = 57,["thefinaltablets"] = 58,["afinalblow"] = 58,
["whensmokeysings"] = 58,["mawofmadness"] = 60,["avastyeadmiral"] = 60,["thefourdukes"] = 60,["twilightbattleorders"] = 60,["kingsofflame"] = 60,["dukeofcynders"] = 60,["theeasternplagues"] = 60,["theprisonscasing"] = 60,
["huntingforectoplasm"] = 60,["testofskull"] = 62,["draconicfordummies"] = 64,["silithushighcouncil"] = 64,["silithusabyssalcouncil"] = 64,["lordsinsilithus"] = 64,["dukesinsilithus"] = 64,

-- Four Words
["warwiththescarletcrusade"] = 12,["therelicsofwakening"] = 17,["ofthekingslands"] = 17,["thecoastisntclear"] = 19,["seekingthekorgem"] = 22,["possiblebutnotprobable"] = 24,["thetowerofalthalaxx"] = 24,["howlinginthehills"] = 25,
["thetomeofvalor"] = 25,["kingofthefoulweald"] = 26,["looktothestars"] = 30,["fallindemoncanyon"] = 31,["brideoftheembalmer"] = 32,["curseofthetides"] = 40,["attackonthetower"] = 40,["greenhillsofstranglethorn"] = 40,
["elitevalleyofspears"] = 42,["valleyofspearselite"] = 42,["armyoftheblack"] = 43,["anambassadorofevil"] = 44,["handandtheheart"] = 44,["lardlosthislunch"] = 49,["tremorsoftheearth"] = 50,["jobopeningguardcaptain"] = 51,
["messageinabottle"] = 51,["hexxandherminions"] = 51,["warontheshadowsworn"] = 52,["theapesofungoro"] = 55,["dangeroustogoalone"] = 56,["nameofthebeast"] = 58,
["unitingtheshatteredamulet"] = 60,["oflightandshadow"] = 60,["luckbewithyou"] = 60,["ordermustberestored"] = 63,["theisleofdread"] = 64,["isleofthedread"] = 64,["pathoftherighteous"] = 64,
["broodofnozdormurepfarm"] = 64,["broodofnozdormurep"] = 64,["highcouncilinsilithus"] = 64,["abyssalcouncilinsilithus"] = 64,["staveoftheancients"] = 64,
}
GF_WORD_DUNGEON = {
["rfc"] = 15,["ragefire"] = 15,["deadmines"] = 21,["dm"] = 21,["wc"] = 21,["shadowfang"] = 24,["sfk"] = 24,["blackfathom"] = 25,["bfd"] = 25,["stock"] = 26,["stockade"] = 26,["gnomer"] = 32,["gnomeregan"] = 32,
["kraul"] = 32,["rfk"] = 32,["downs"] = 39,["rfd"] = 39,["smgy"] = 31,["lib"] = 35,["library"] = 35,["smlib"] = 35,["smarm"] = 39,["armory"] = 39,["smcath"] = 40,["cathedral"] = 40,["smfull"] = 39,
["ulda"] = 45,["uldaman"] = 45,["zf"] = 48,["zulfarrak"] = 48,["mallet"] = 48,["mara"] = 49,["maraudon"] = 49,["princess"] = 49,["st"] = 54,["sunken"] = 54,["atalhakkar"] = 54,["arena"] = 55,["brd"] = 58,["jailbreak"] = 58,["emperor"] = 58,
["attunement"] = 60,["lbrs"] = 60,["brs"] = 60,["dme"] = 57,["dmn"] = 62,["dmt"] = 62,["dmw"] = 62,["scholomance"] = 62.1,["stratholme"] = 62.2,["baron"] = 62.2,["ubrs"] = 63.1,["rend"] = 63.1,["valthalak"] = 63.1,
["sm"] = 0,["razorfen"] = 0,["dungeon"] = 0,["blackrock"] = 0,

-- Two Words
["ragefirechasm"] = 15,["wailingcaverns"] = 21,["razorfenkraul"] = 32,["razorfendowns"] = 39,["smquestrun"] = 39,["sunkentemple"] = 54,["blackrockdepths"] = 58,
["lowerblackrock"] = 60,["dmwest"] = 62,["dmeast"] = 57,["dmnorth"] = 62,["dmtrib"] = 62,["dmtribute"] = 62,
["diremaulwest"] = 62,["diremauleast"] = 57,["diremaulnorth"] = 62,["diremaultrib"] = 62,["diremaultribute"] = 62,
["livestrat"] = 62.2,["udstrat"] = 62.2,["stratrep"] = 62.2,["upperblackrock"] = 63.1,["drakefireamulet"] = 63.1,["diremaul"] = 57,["scarletmonastery"] = 0,["foranything"] = 0,
-- Three Words
["scarletmonasterygraveyard"] = 31,["scarletmonasteryarmory"] = 39,
-- Four Words
}
GF_WORD_RAID = {
["zg"] = 64.05,["gurub"] = 64.05,["zulgurub"] = 64.05,["hakkar"] = 64.05,
["onyxia"] = 64.1,["ony"] = 64.1,["mc"] = 64.15,["moltencore"] = 64.15,["rag"] = 64.15,["ragnaros"] = 64.15,["moltencore"] = 64.15,
["nef"] = 64.2,["bwl"] = 64.2,["blackwinglair"] = 64.2,["nefarian"] = 64.2,["blackwinglair"] = 64.2,
["aq"] = 64.3,["ahnqiraj"] = 64.3,["ossirian"] = 64.3,["cthun"] = 64.3,
["naxx"] = 64.4,["naxxramas"] = 64.4,

["azuregos"] = 64,["kazzak"] = 64,["lethon"] = 64,["ysondre"] = 64,["taerar"] = 64,["emeriss"] = 64,["worldboss"] = 64,
}
GF_WORD_PVP = {
["av"] = 60,["ab"] = 0,["wsg"] = 0,["battleground"] = 0,["warsong"] = 0,["premade"] = 0,["bg"] = 0,["pvp"] = 0,

-- Two Words
["arathibasin"] = 0,
["alteracvalley"] = 60,

["bloodring"] = 60,
["sunnygladevalley"] = 60,
["sunnyglade"] = 60,
}

GF_WORD_TRADE = {
["lf"] = 102.5,["wtb"] = 4,["wts"] = 4,["wtt"] = 4,["lfw"] = 4,["ltb"] = 3,["lts"] = 3,["lfc"] = 3,["wtcraft"] = 3,
["buy"] = .5,["buying"] = 1,["sell"] = .5,["selling"] = 1,["trading"] = 1,["offer"] = 1,["paying"] = 1,["price"] = .5,["tipping"] = 2.5,["ratio"] = .5,["cod"] = .5,["deal"] = .25,["deals"] = .5,["cheap"] = .5,["afford"] = .5,

["enchant"] = .5,["enhancement"] = .5,["leatherworker"] = .5,["tailor"] = .5,["blacksmith"] = .5,["engineer"] = .5,["alchemist"] = .5,
["crusader"] = .5,["lifesteal"] = .5,["sageblade"] = .5,["lionheart"] = .5,["titanic"] = .5,["spelldamage"] = .5,["spellpower"] = 1,["fiery"] = .5,["resist"] = .5,["spurs"] = .5,["beastslaying"] = .5,["icy"] = .5,
["stats"] = .5,["stamina"] = .25,["strength"] = .25,["agility"] = .25,["spirit"] = .25,["intellect"] = .25,["defense"] = .25,["res"] = .5,["arcanum"] = .5,

["craft"] = .5,["crafter"] = 1,["mat"] = .5,["maker"] = .5,["fee"] = .5,
["carry"] = 1,["boost"] = 1,
["arcanologist"] = 1.5,
["hitem"] = .5,["needhitem"] = 1,
["stormwind"] = .25,["ironforge"] = .25,["darnassus"] = .25,["undercity"] = .25,["orgrimmar"] = .25,["thunderbluff"] = .25,["darkmoon"] = .25,["dmf"] = .25,["silithus"] = .25,["hydraxian"] = .25,["winterspring"] = .25,["azshara"] = .25,
["blackrock"] = .25,["brm"] = .25,["blackrockmountain"] = .25,

-- Two Words
["lookingfor"] = 102.5,["anyonehave"] = 1.5,["wannabuy"] = 2.5,["needtobuy"] = 2.5,["mayibuy"] = 1,["lfweapon"] = .5,["lfcrusader"] = .5,["lfriding"] = .5,["lfarcanum"] = .5,["lfcheap"] = 1,
["buyinghitem"] = 2,["sellinghitem"] = 2,["sellhitem"] = 2.5,["sellinghenchant"] = 2,["sellhenchant"] = 2,["anyoneselling"] = 1.5,["tosell"] = .5,["tobuy"] = .5,["forsale"] = 2.5,["sellingall"] = 1,
["onah"] = 2.5,["inah"] = 2.5,["auctionhouse"] = 1,["onauctionhouse"] = 2.5,
["payinggold"] = 1,["payingmoney"] = 1,["smalltip"] = 1,["willtip"] = 3,["cantip"] = 2,["illtip"] = 2,["itip"] = 1,["anytip"] = 1,["fortip"] = 1,["goldtip"] = 1,
["tipanything"] = 1,["tipappreciated"] = 1,["tiphighlyappreciated"] = 1,["yourfee"] = .5,["tipifyoucan"] = 2,
["mymat"] = .5,["havemat"] = 1,["yourmat"] = 2.5,["matlist"] = .5,
["gearcrafter"] = 1,["crafterhitem"] = 1,["gethitem"] = 1,["offercraft"] = 1,["icraft"] = 1,
["wannatrade"] = 2.5,["wannnatrade"] = 3,
["willpay"] = 2,["willwork"] = 3,

["buyenchant"] = 2,["buyingenchant"] = 1.5,["getenchant"] = 1,["withenchant"] = 1,["needenchant"] = 2,["anyenchant"] = 1.5,["anyenchantplease"] = 1.5,["anyenchantworking"] = 1,["anenchant"] = .5,
["enchantinorgrimmar"] = 2.5,["enchantinstormwind"] = 2.5,["enchantinironforge"] = 2.5,
["whocanenchant"] = 1.5,["anyenchantonline"] = 3,["anyenchantwith"] = 3,["getaenchant"] = 1,["getanenchant"] = 1,["thatcanenchant"] = .5,["canenchantwith"] = 1,["getyourhenchant"] = 1,["iwillenchant"] = 2,
["anyenchantwhocan"] = 1.5,["anyenchantwhowill"] = 1.5,["anynenchantwhohas"] = 1.5,["anynenchantwhohave"] = 1.5,["candominingenchant"] = 1,["cananyoneenchant"] = 2,["canenchant"] = .5,["enchantservice"] = 3,["haveenhancement"] = .5,

["crusader"] = .5,["lifesteal"] = .5,["fiery"] = .5,["beastslaying"] = .5,["icy"] = .5,

["needcrusader"] = 1,["needbeastslaying"] = 1,["needicy"] = 1,["needfiery"] = 1,
["withcrusader"] = 1,["withbeastslaying"] = 1,["withicy"] = 1,["withfiery"] = 1,
["needcrusaderenchant"] = .5,["needbeastslayingenchant"] = .5,["needicyenchant"] = .5,["needfieryenchant"] = .5,
["withcrusaderenchant"] = .5,["withbeastslayingenchant"] = .5,["withicyenchant"] = .5,["withfieryenchant"] = .5,

["arcaneresist"] = .5,["fireresist"] = .5,["shadowresist"] = .5,["frostresist"] = .5,["natureresist"] = .5,["arcaneres"] = .5,["fireres"] = .5,["shadowres"] = .5,["frostres"] = .5,["natureres"] = .5,["allres"] = .5,["resall"] = .5,
["allresist"] = .5,["resistall"] = .5,["enchantcloak"] = .5,["enchantchest"] = .5,["enchantwrist"] = .5,["enchantweapon"] = .5,["enchantshield"] = .5,["enchantgloves"] = .5,["enchantboots"] = .5,
["healthchest"] = .5,["chesthealth"] = .5,["staminawrist"] = .5,["wristtamina"] = .5,["wristintellect"] = .5,["wristspellpower"] = .5,["cloakagility"] = .5,["agilitycloak"] = .5,["subtletycloak"] = .5,
["cloakresist"] = .5,["staminaboots"] = .5,["bootsstamina"] = .5,["shieldstamina"] = .5,["gloveshaste"] = .5,["hastegloves"] = .5,
["strengthwrist"] = .5,["staminawrist"] = .5,["intellectwrist"] = .5,["agilitygloves"] = .5,["agilityboots"] = .5,["glovesagility"] = .5,["bootsagility"] = .5,["cloakall"] = 3,["agilityhand"] = .5,["agilitytwohand"] = .5,
["allstats"] = .5,["ridingskill"] = .5,["mountspeed"] = .5,["spelldamage"] = .5,["spellpower"] = 1,["healpower"] = 1,["minorspeed"] = .5,["shieldspike"] = .5,["majorhealth"] = .5,["majormana"] = .5,["lesserblock"] = .5,["weapondamage"] = .5,["weaponchain"] = .5,
["firedamage"] = .5,["frostdamage"] = .5,["shadowdamage"] = .5,["arcanedamage"] = .5,["naturedamage"] = .5,["agilityenchant"] = .5,["strengthenchant"] = .5,["healenchant"] = 1,["miningenchant"] = 1,["candominingenchant"] = 1.5,
["anystats"] = .25,["anystamina"] = .25,["anystrength"] = .25,["anyagility"] = .25,["anyspirit"] = .25,["anyintellect"] = .25,
["healweapon"] = .5,["damageweapon"] = .5,["elementalstones"] = .5,["redglow"] = .5,
["transmutehitem"] = 1,["transmutearcane"] = 1,["arcanetransmute"] = 1,["moonclothcooldown"] = 1,

["lfbarrens"] = 1,["lfstonard"] = 1,["lfbootybay"] = 1,["lfmoonglade"] = 1,["lfwinterspring"] = 1,["lfdesolace"] = 1,["lfferalas"] = 1,["lfsilithus"] = 1,
["lfhydraxian"] = 1,["lfsm"] = 1,["lftanaris"] = 1,["lfepl"] = 1,["lfwpl"] = 1,["lfalterac"] = 1,["lfarathi"] = 1,["lfbadlands"] = 1,
["lfstormwind"] = 1,["lfdarnassus"] = 1,["lfironforge"] = 1,["lfif"] = 1,["lforgrimmar"] = 1,["lfundercity"] = 1,["lfthunderbluff"] = 1,

["lfgbarrens"] = 1,["lfgstonard"] = 1,["lfgbootybay"] = 1,["lfgmoonglade"] = 1,["lfgwinterspring"] = 1,["lfgdesolace"] = 1,["lfgferalas"] = 1,["lfgsilithus"] = 1,
["lfghydraxian"] = 1,["lfgsm"] = 1,["lfgtanaris"] = 1,["lfgepl"] = 1,["lfgwpl"] = 1,["lfgalterac"] = 1,["lfgarathi"] = 1,["lfgbadlands"] = 1,
["lfgstormwind"] = 1,["lfgdarnassus"] = 1,["lfgironforge"] = 1,["lfgif"] = 1,["lfgorgrimmar"] = 1,["lfgundercity"] = 1,["lfgthunderbluff"] = 1,

["reasonableprice"] = .5,["foronly"] = 1,["anymage"] = 1,["alsoavailable"] = 1.5,
["carryservice"] = 20,["keyservice"] = 3,["taxiservice"] = 20,["keyholder"] = 1.5,["healservice"] = 20,["bsservice"] = 1.5,["blacksmithservice"] = 1.5,["tankservice"] = 20,["rogueservice"] = 1,
["allrecipes"] = 3,["madeby"] = .5,["bagmaker"] = .5,["bagcrafter"] = .5,
["fullyrestocked"] = 1,["inbulk"] = 1,["perstack"] = 1,["lastcall"] = 1,
["openubrs"] = 1.5,["alchemylab"] = 1,["foralchemylab"] = .5,["needclearedinstance"] = 1.5,
["stormwindif"] = .25,["ifstormwind"] = .25,
["anyoneinterested"] = 1,
["exquisitemetalwork"] = 1,
["deliveredanywhere"] = 1,
["stillcheap"] = 1,["justlisted"] = .5,["justlistedhitem"] = .5,["thoriumspike"] = .5,["mithrilspike"] = .5,["ironspike"] = .5,

-- Head
["arhead"] = 1.5,["frhead"] = 1.5,["srhead"] = 1.5,["nrhead"] = 1.5,["arreshead"] = 1.5,["frreshead"] = 1.5,["srreshead"] = 1.5,["nrreshead"] = 1.5,
["arcaneresisthead"] = 1.5,["fireresisthead"] = 1.5,["shadowresisthead"] = 1.5,["frostresisthead"] = 1.5,["natureresisthead"] = 1.5,
["arcanereshead"] = 1.5,["firereshead"] = 1.5,["shadowreshead"] = 1.5,["frostreshead"] = 1.5,["naturereshead"] = 1.5,["allreshead"] = 1.5,["resallhead"] = 1.5,
["strengthhead"] = .5,["agilityhead"] = .5,["healthhead"] = 1,["aphead"] = .5,["attackpowerhead"] = .5,["hithead"] = .5,["staminahead"] = .5,["manahead"] = .5,
["strengthtohead"] = 1,["agilitytohead"] = 1,["healthtohead"] = 1,["aptohead"] = .5,["attackpowertohead"] = .5,["hittohead"] = .5,["staminatohead"] = .5,["manatohead"] = .5,

-- Legs
["arlegs"] = 1.5,["frlegs"] = 1.5,["srlegs"] = 1.5,["nrlegs"] = 1.5,["arreslegs"] = 1.5,["frreslegs"] = 1.5,["srreslegs"] = 1.5,["nrreslegs"] = 1.5,
["arcaneresistlegs"] = 1.5,["fireresistlegs"] = 1.5,["shadowresistlegs"] = 1.5,["frostresistlegs"] = 1.5,["natureresistlegs"] = 1.5,
["arcanereslegs"] = 1.5,["firereslegs"] = 1.5,["shadowreslegs"] = 1.5,["frostreslegs"] = 1.5,["naturereslegs"] = 1.5,["allreslegs"] = 1.5,["resalllegs"] = 1.5,
["strengthlegs"] = .5,["agilitylegs"] = .5,["healthlegs"] = 1,["aplegs"] = .5,["attackpowerlegs"] = .5,["hitlegs"] = .5,["staminalegs"] = .5,["manalegs"] = .5,
["strengthtolegs"] = 1,["agilitytolegs"] = 1,["healthtolegs"] = 1,["aptolegs"] = .5,["attackpowertolegs"] = .5,["hittolegs"] = .5,["staminatolegs"] = .5,["manatolegs"] = .5,

-- Three Words
["iseeka"] = 2.5,["iseekan"] = 2.5,
["needtobuy"] = 2.5,["needtosell"] = 2.5,["needtotrade"] = 2.5,["getyourhitem"] = 1,["comegetyour"] = 1,["selltome"] = 1.5,["getyourhitem"] = 1.5,["andmuchmore"] = 1,["andsomuchmore"] = 1,["andmuchmuchmore"] = 1,
["havethemat"] = .5,["mymattip"] = 3,["yourmattip"] = 3,["workfortip"] = 3,["tipanyamount"] = 3,["ipaygold"] = 1,["illpaygold"] = 1,["tipisoptional"] = 2,["tipareappreciated"] = 1,
["lookingforwork"] = 3,["lookingtobuy"] = 3,["lookingtosell"] = 3,["lookingforcrafter"] = 3,["whocancraft"] = 1.5,["whocanmake"] = 1,["cananyonecraft"] = 2,
["cananyonemake"] = 2,["anyoneableto"] = 2,["needcrafterhitem"] = 1,["makemea"] = 1,
["anyonetomake"] = 1,["anyonetocraft"] = 1,["anyonecancraft"] = 1,["anyonetosell"] = 1,["willingtosell"] = 1,["anyonetobuy"] = 1,["anyonehavehitem"] = 1,["anyoneneedhitem"] = 1,

["anyalchemist"] = 1.5,["anyengineer"] = 1.5,["anytailor"] = 1.5,["anyleatherworker"] = 1.5,["anylw"] = 1.5,
["lfalchemist"] = 3,["lfenchant"] = 3,["lfengineer"] = 3,["lftailor"] = 3,["lflw"] = 3,["lfleatherworker"] = 3,["lfminer"] = 3,
["lfbs"] = 3,["lfblacksmith"] = 3,["anyblacksmith"] = 1.5,["anybs"] = 1.5,["blacksmitharound"] = 2,
["attacha"] = .5,["attachan"] = .5,["attachhitem"] = 1,["attachinghitem"] = 3,["applyhitem"] = 3,["installhitem"] = 3,["installinghitem"] = 3,

["anyblacksmithable"] = 2,["anyblacksmitharound"] = 2,["anyblacksmiththatcan"] = 1,["anyblacksmithwhocan"] = 1,["anyblacksmithwhowill"] = 1,
["anyleatherworkerable"] = 1,["anyleatherworkeraround"] = 2,
["anytailorable"] = 1,["anytailoraround"] = 2,
["anyengineerable"] = 1,["anyengineeraround"] = 2,
["anyalchemistable"] = 1,["anyalchemistaround"] = 2,

["anyexperiencedenchant"] = 2.5,["anyexperiencedenhancement"] = 2.5,["anyexperiencedleatherworker"] = 2.5,["anyexperiencedtailor"] = 2.5,["anyexperiencedblacksmith"] = 2.5,["anyexperiencedengineer"] = 2.5,["anyexperiencedalchemist"] = 2.5,

["blacksmithattachhitem"] = 3,["anyonetoattach"] = 3,["abletoattach"] = 2,["cananyoneapply"] = 2.5,
["applyspurs"] = 2.5,["applyahitem"] = 3,["cananyoneattach"] = 3,["applyhavehitem"] = 1,["mithrilspursanyone"] = 2,

["movespeedboots"] = 1,["movementspeedboots"] = 1,["minorspeedboots"] = 1,["mstoboots"] = 1,["mountspeedhand"] = 1,["mountspeedgloves"] = 1,["hastetogloves"] = .5,["threattogloves"] = .5,
["agilitytogloves"] = 1,["agilitytohand"] = 1,["agilitytotwohand"] = 1,
["healtogloves"] = 1,["shadowtogloves"] = 1,["firetogloves"] = 1,["frosttogloves"] = 1,["agilitytoboots"] = 1,["healtoweapon"] = 1,["damagetoweapon"] = 1,["spellpowertoweapon"] = 1,
["healthtochest"] = 1,["statstochest"] = 1,["staminatowrist"] = 1,["staminatoboots"] = 1,["agilitytocloak"] = 1,["resisttocloak"] = 1,["strengthtowrist"] = 1,["intellecttowrist"] = 1,

["needagilityto"] = 2,["needstrengthto"] = 2,["needhealto"] = 2,["needdamageto"] = 2,["needspellpowerto"] = 2,["needhealthto"] = 2,["needstaminato"] = 2,["needintellectto"] = 2,["needstatsto"] = 2,["needhasteto"] = 2,
["needfireto"] = 2,["needfrostto"] = 2,["needshadowto"] = 2,["needarcaneto"] = 2,["neednatureto"] = 2,["needlesserblockto"] = 2,["needweapondamageto"] = 2,["needmajormanato"] = 2,["needmanato"] = 2,["needmajorhealthto"] = 2,
["needshieldspiketo"] = 2,["needminorspeedto"] = 2,["needspeedto"] = 2,["needhealpowerto"] = 2,["needridingskillto"] = 2,["needallstatsto"] = 2,["needresistto"] = 2,["needspiritto"] = 2,
["needagilityon"] = 2,["needstrengthon"] = 2,["needhealon"] = 2,["needdamageon"] = 2,["needspellpoweron"] = 2,["needhealthon"] = 2,["needstaminaon"] = 2,["needintellecton"] = 2,["needstatson"] = 2,["needhasteon"] = 2,
["needfireon"] = 2,["needfroston"] = 2,["needshadowon"] = 2,["needarcaneon"] = 2,["neednatureon"] = 2,["needlesserblockon"] = 2,["needweapondamageon"] = 2,["needmajormanaon"] = 2,["needmanaon"] = 2,["needmajorhealthon"] = 2,
["needshieldspikeon"] = 2,["needminorspeedon"] = 2,["needspeedon"] = 2,["needhealpoweron"] = 2,["needridingskillon"] = 2,["needallstatson"] = 2,["needresiston"] = 2,["needspiriton"] = 2,
["needagilityfor"] = 2,["needstrengthfor"] = 2,["needhealfor"] = 2,["needdamagefor"] = 2,["needspellpowerfor"] = 2,["needhealthfor"] = 2,["needstaminafor"] = 2,["needintellectfor"] = 2,["needstatsfor"] = 2,["needhastefor"] = 2,
["needfirefor"] = 2,["needfrostfor"] = 2,["needshadowfor"] = 2,["needarcanefor"] = 2,["neednaturefor"] = 2,["needlesserblockfor"] = 2,["needweapondamagefor"] = 2,["needmajormanafor"] = 2,["needmanafor"] = 2,["needmajorhealthfor"] = 2,
["needshieldspikefor"] = 2,["needminorspeedfor"] = 2,["needspeedfor"] = 2,["needhealpowerfor"] = 2,["needridingskillfor"] = 2,["needallstatsfor"] = 2,["needresistfor"] = 2,["needspiritfor"] = 2,

-- Portal
["portal"] = .5,["lfportal"] = 3,["buyportal"] = .5,["buyingportal"] = .5,["needportal"] = 2.25,["portalservice"] = 3,["gportal"] = 3,["offeringportal"] = 2,["sellportal"] = .5,["sellingportal"] = 1,["portalto"] = .5,["magemakemeportal"] = 2,
["portalplease"] = .5,["buyportalplease"] = 1.5,["buyingportalplease"] = .5,["needportalplease"] = 2.25,
["createaportal"] = 2,["portalmeto"] = 1.5,["anyportalto"] = 1,["makeaportal"] = .5,["makeaportalto"] = 1,["cananyoneportalme"] = 2.25,["willanyoneportalme"] = 2.25,

["stormwindportal"] = 2,["ironforgeportal"] = 2,["ifportal"] = 2,["darnassusportal"] = 2,["orgrimmarportal"] = 2,["undercityportal"] = 2,["thunderbluffportal"] = 2,
["stormwindportalplease"] = 1,["darnassusportalplease"] = 1,["ironforgeportalplease"] = 1,["ifportalplease"] = 1,["orgrimmarportalplease"] = 1,["undercityportalplease"] = 1,["thunderbluffportalplease"] = 1,

["portalstormwind"] = 1,["portalironforge"] = 1,["portalif"] = 1,["portaldarnassus"] = 1,["portalorgrimmar"] = 1,["portalundercity"] = 1,["portalthunderbluff"] = 1,["portalthunder"] = 1,
["portaltostormwind"] = 1,["portaltoironforge"] = 1,["portaltoif"] = 1,["portaltodarnassus"] = 1,["portaltoorgrimmar"] = 1,["portaltoundercity"] = 1,["portaltothunderbluff"] = 1,["portaltothunder"] = 1,
["buyportalstormwind"] = 1,["buyportalironforge"] = 1,["buyportalif"] = 1,["buyportaldarnassus"] = 1,["buyportalorgrimmar"] = 1,["buyportalundercity"] = 1,["buyportalthunderbluff"] = 1,["buyportalthunder"] = 1,
["needportalstormwind"] = 1,["needportalironforge"] = 1,["needportalif"] = 1,["needportaldarnassus"] = 1,["needportalorgrimmar"] = 1,["needportalundercity"] = 1,["needportalthunderbluff"] = 1,["needportalthunder"] = 1,
["needstormwindportal"] = 1,["needironforgeportal"] = 1,["needifportal"] = 1,["needdarnassusportal"] = 1,["needorgrimmarportal"] = 1,["needundercityportal"] = 1,["needthunderbluffportal"] = 1,["needthunderportal"] = 1,

["portaltostormwindplease"] = 2,["portaltoironforgeplease"] = 2,["portaltoifplease"] = 2,["portaltodarnassusplease"] = 2,["portaltoorgrimmarplease"] = 2,["portaltoundercityplease"] = 2,["portaltothunderbluffplease"] = 2,["portaltothunderplease"] = 2,
["portalmetostormwind"] = 2,["portalmetoironforge"] = 2,["portalmetoif"] = 2,["portalmetodarnassus"] = 2,["portalmetoorgrimmar"] = 2,["portalmetoundercity"] = 2,["portalmetothunderbluff"] = 2,["portalmetothunder"] = 2,

["portalwherever"] = .5,["portalwhereveryouneed"] = 1,

-- Summon
["summon"] = .25,["summonto"] = .5,["anysummon"] = .5,["anysummonto"] = 1,["buyingasummon"] = 3,["buyasummon"] = 2,["offeringasummon"] = 2,["sellingasummon"] = 3,["anyoneneedanysummon"] = 3,["needwarlock"] = .25,["needlock"] = .25,
["lfsummon"] = 3,["requestsummon"] = 1.5,["needsummon"] = 2.25,["buyingsummon"] = 3,["buysummon"] = 2,["summonservice"] = 20,["gsummon"] = 3,["offeringsummon"] = 2,
["sellsummon"] = .5,["sellingsummon"] = 3,["offeringtaxi"] = 1,["summonaround"] = 1.5,
["summonsm"] = .5,["summonhydraxian"] = .5,["summonmoonglade"] = .5,["summonwinterspring"] = .5,["summonsilithus"] = .5,["summondiremaul"] = .5,["summondm"] = .5,["summonaq"] = 2,["summonazshara"] = .5,
["brmsummon"] = .5,["blackrocksummon"] = .5,["blackrockmountainsummon"] = .5,["summonbrm"] = .5,["summonblackrock"] = .5,["summonblackrockmountain"] = .5,
["smsummon"] = .5,["hydraxiansummon"] = .5,["moongladesummon"] = .5,["winterspringsummon"] = .5,["silithussummon"] = .5,["diremaulsummon"] = .5,["dmsummon"] = .5,["aqsummon"] = 2,["azsharasummon"] = .5,

["stormwindsummon"] = 2,["ironforgesummon"] = 2,["ifsummon"] = 2,["darnassussummon"] = 2,["orgrimmarsummon"] = 2,["undercitysummon"] = 2,["thunderbluffsummon"] = 2,
["summonstormwind"] = 2,["summonironforge"] = 2,["summonif"] = 2,["summondarnassus"] = 2,["summonorgrimmar"] = 2,["summonundercity"] = 2,["summonthunderbluff"] = 2,["summonthunder"] = 2,
["summontostormwind"] = 2,["summontoironforge"] = 2,["summontoif"] = 2,["summontodarnassus"] = 2,["summontoorgrimmar"] = 2,["summontoundercity"] = 2,["summontothunderbluff"] = 2,["summontothunder"] = 2,

["cananyonesummonme"] = 2.25,["willanyonesummonme"] = 2.25,["lflocktosummon"] = .25,["lflockforsummon"] = .25,
["payinggoldsummon"] = 2,["payingmoneysummon"] = 2,["havesummon"] = 1,["warlocktosummon"] = 1,["locktosummon"] = 1,["summonmeto"] = 2.5,["abletosummon"] = .5,["anylockable"] = .5,["anywarlockable"] = .5,
["lfhydraxiansummon"] = 2,

["summontobarrens"] = 2,["summontostonard"] = 2,["summontobootybay"] = 2,["summontomoonglade"] = 2,["summontowinterspring"] = 2,["summontodesolace"] = 2,["summontoferalas"] = 2,["summontosilithus"] = 2,
["summontohydraxian"] = 2,["summontosm"] = 2,["summontotanaris"] = 2,["summontoepl"] = 2,["summontowpl"] = 2,["summontoalterac"] = 2,["summontoarathi"] = 2,["summontobadlands"] = 2,
["summontoblasted"] = 2,["summontokara"] = 2,["summontodiremaul"] = 2,["summontoaq"] = 2,["summontoazshara"] = .5,["summontobrm"] = 2,["summontoblackrock"] = 2,["summontoblackrockmountain"] = 2,

["anysummonhydraxian"] = 2,["anysmsummon"] = 2,["anysummonmoonglade"] = 2,["anyhydraxiansummon"] = 2,["anymoongladesummon"] = 2,["anywinterspringsummon"] = 2,["anysummonwinterspring"] = 2,
["anysilithussummon"] = 2,["anysummonsilithus"] = 2,["anyonesilithussummon"] = 2,["anyonesummonsilithus"] = 2,["anysummondiremaul"] = 2,["anysummondm"] = 2,["anyonesummondiremaul"] = 2,["anyonesummondm"] = 2,["anyonesummonaq"] = 2,["anyonesummonazshara"] = 2,
["anyonesummonhydraxian"] = 2,["anyonesmsummon"] = 2,["anyonesummonmoonglade"] = 2,["anyonehydraxiansummon"] = 2,["anyonemoongladesummon"] = 2,["anyonewinterspringsummon"] = 2,["anyonesummonwinterspring"] = 2,
["anybrmsummon"] = 2,["anyblackrocksummon"] = 2,["anyblackrockmountainsummon"] = 2,["anyonebrmsummon"] = 2,["anyoneblackrocksummon"] = 2,["anyoneblackrockmountainsummon"] = 2,
["anysummonbrm"] = 2,["anysummonblackrock"] = 2,["anysummonblackrockmountain"] = 2,["anyonesummonbrm"] = 2,["anyonesummonblackrock"] = 2,["anyonesummonblackrockmountain"] = 2,

["summontobarrensplease"] = 2,["summontostonardplease"] = 2,["summontobootybayplease"] = 2,["summontomoongladeplease"] = 2,["summontowinterspringplease"] = 2,["summontodesolaceplease"] = 2,["summontoferalasplease"] = 2,["summontosilithusplease"] = 2,
["summontohydraxianplease"] = 2,["summontotanarisplease"] = 2,["summontoeplplease"] = 2,["summontowplplease"] = 2,["summontosmplease"] = 2,["summontoalteracplease"] = 2,["summontoarathiplease"] = 2,["summontobadlandsplease"] = 2,["summontoblastedplease"] = 2,
["summontokaraplease"] = 2,

-- Location in cities
["bankinorgrimmar"] = 2,["orgrimmarbank"] = 2,["banksteps"] = 2,["bankstairs"] = 2,["infrontbank"] = 2,["infrontofbank"] = 2,["bankstairs"] = 2,["ahbridge"] = 2,["ifbridge"] = 2,["ironforgebridge"] = 2,["ahdoor"] = 2,
["stormwindbank"] = 2,["outsideah"] = 1,["instormwind"] = .75,["belowah"] = 1,["inorgrimmar"] = .75,["atfountain"] = .5,["stormwindfountain"] = .5,
["fromstormwind"] = .75,["fromironforge"] = .75,["fromdarnassus"] = .75,["fromorgrimmar"] = .75,["fromundercity"] = .75,["fromthunder"] = .75,

["anyoneinstormwind"] = .5,["topoffountain"] = 1,["atfountain"] = .5,["atthefountain"] = .5,["thefountain"] = .5,["bythefountain"] = .5,["stopbythefountain"] = .5,
["infrontbank"] = 2,["cheaperthanauctionhouse"] = 1,["lowerthanah"] = 1,["lessthanah"] = 1,["cheaperthanah"] = 1,["nowonsale"] = 1,
["auctionhouseentrance"] = 1,["ahentrance"] = 1,["auctionhousebridge"] = 2,["auctionhousedoor"] = 2,
["infrontofbank"] = 2,

-- Misc phrases
["tomakeme"] = 1,["goodsandservice"] = 1,["offeringubrskey"] = 2,["openforubrs"] = 1.5,["shopisopen"] = 1.5,["openforbusiness"] = 1,["sellingslotbags"] = 2,["slotbags"] = 1,["bagonah"] = 3,
["arcanebartransmute"] = 1,["arcanetransmutecd"] = 1,
["healsellingservice"] = 2,["tanksellingservice"] = 2,["dungeontankservice"] = 2,
["anyoneboostme"] = 1,["anyonecando"] = .5,["youpickitip"] = 2,
["stacksonah"] = .5,["stacksfromah"] = 1.5,

["magicalrefreshmentshere"] = 2,["firstcustomersget"] = 1,["conjuredwater"] = .5,["discounts"] = .5,["magemakeme"] = 1,["magetogroworanges"] = 2,

-- Four Words
["applyashieldspike"] = 3,["needspikeattached"] = 2,["cananyonemakehitem"] = 1,["cananyonemakethis"] = .5,["installthisforme"] = 1,["anyoneabletomake"] = 2,["iwillpaygold"] = 2,["willipaygold"] = 2,

["iprovideblacksmith"] = 1,["makeitforyou"] = 2,["canigeta"] = 1,["allinoneplace"] = 1,["everythinginoneplace"] = 1,
["anyoneinterestedtobuy"] = 2,["anyoneinterestedtosell"] = 2,["anyoneinterestedinbuying"] = 2,["anyoneinterestedinselling"] = 2,
["anyoneonlinewhocan"] = 1.5,["anyonecancrafthitem"] = 1,["anyonewillingtosell"] = 1,

["anyguidewannabuy"] = 1,["anyguildwannabuy"] = 1,["guideneedtobuy"] = 1,["guildneedtobuy"] = 1,

-- Lockbox
["abletoopen"] = 2,["abletounlock"] = 1.5,
["alllock"] = .5,["alllockbox"] = 1,
["anylockboxplease"] = 1,["anylocklockboxplease"] = 1,
["anyonearoundhitem"] = 2,["anyonecanopen"] = 1,["anyonecanopenhitem"] = 2,["anyonecanopenlock"] = 2,["anyonecanopenlockbox"] = 2,["anyonecanpick"] = 1.5,["anyonepleaseunlockhitem"] = 1,
["anyonedoinglockbox"] = 2,["anyonetoopen"] = 1.5,["anyonetoopenlock"] = 2,["anyonetoopenlockbox"] = 2,["anyonewhocanopen"] = 1,
["boxopen"] = 1,["boxopening"] = 1,
["cananyoneopen"] = 2,["canopenbox"] = 1.5,["canopenhitem"] = 1,
["freelockbox"] = 2,["getyourlockbox"] = .5,["havelockbox"] = .5,["helpmewithhitem"] = 1,["icanopen"] = .5,
["illopenyour"] = 1,["itslockboxtime"] = 1,["lastcallforlockbox"] = 1,
["lockbox"] = 1,["lflockbox"] = 2,["lflocksmith"] = 2,
["lockboxicanopen"] = 1,["lockboxopened"] = 1,["lockboxopenedtoday"] = 1,["lockboxopening"] = 1,["lockboxopeningtime"] = 1,["lockboxservice"] = 2,["lockboxtime"] = 1,
["lockopen"] = 1,["lockopener"] = 1,["lockopening"] = 1,["locktopick"] = 1.5,
["levellockbox"] = .5,["lowlevellockbox"] = .5,["midlevellockbox"] = .5,
["needlockboxopened"] = 3,["needlocklockboxopened"] = 2,
["openalllock"] = 1.5,["openalllockbox"] = 3,["openallyour"] = 1,["openallyourhitem"] = 1,
["openanylockbox"] = 2,
["openbox"] = .5,["openchest"] = .5,["openhitem"] = 1,
["openingalllock"] = 1.5,["openingalllockbox"] = 3,["openingallyourlock"] = 2,["openingallyourlockbox"] = 2,
["openinganylockbox"] = 2,["openingbox"] = 1,["openinghitem"] = 3,["openinglock"] = 1,["openinglockbox"] = 2,["openingyourlock"] = 1,["openingyourlockbox"] = 2,
["openlock"] = 1,["openlockbox"] = 1,["openyourbox"] = 2,["openyourlock"] = 1,["openyourlockbox"] = 2,
["pleaseopen"] = .5,["pleaseopenhitem"] = 1,["pleaseunlock"] = 1,["pleaseunlockhitem"] = 1,
["someonepleaseopen"] = .5,["someonepleaseopenhitem"] = .5,
["toopenbox"] = 1,["toopenlockbox"] = 1,
["unlockalllock"] = 1,["unlockalllockbox"] = 2,["unlockanylock"] = 1,["unlockanylockbox"] = 2,["unlocklock"] = 1,["unlocklockbox"] = 1,["unlockyourlock"] = 1,["unlockyourlockbox"] = 2,
["whocanopen"] = .5,["whocanopenchest"] = 1,["whocanopenhitem"] = .5,
["whowillopenhitem"] = .5,["whowouldopenhitem"] = .5,
["willopenall"] = 1,["willopenallyour"] = 1,
["wouldopenhitem"] = .5,
["yourlockbox"] = .5,

-- Rogue Lockbox
["lfroguelockbox"] = 1,["lfroguetoopen"] = 2,["lfrogueforlockbox"] = 2,["lfrogueforbox"] = 2,
["anyroguearound"] = 1,["anyroguefor"] = 1,["anyrogueforhitem"] = 1,
["anyroguethatcan"] = 1,["anyroguewhocan"] = 1,
["anyrogueableto"] = 1,["anyroguecanopen"] = 2,["anyrogueinstormwind"] = 2,["anyrogueopenlockbox"] = 2,["anyroguedoinglockbox"] = 2,
["anyrogueforlockbox"] = 2,["anyrogueforbox"] = 2,
["anyrogueinorgrimmar"] = 2,["anyroguearoundhitem"] = 1,["anyroguearoundlockbox"] = 1,

["roguewithlockbox"] = 2,["rogueforsomelockbox"] = 2,["rogueforlockbox"] = 2,["roguearoundforlockbox"] = 2,["rogueabletolockbox"] = 1,
["rogueopenanylockbox"] = 2,["rogueopeninganylockbox"] = 1,["roguethatcanopen"] = 2,["roguewhocanopen"] = 2,
["rogueopenthe"] = 2,["rogueopen"] = 2,["roguetoopenme"] = 2,["roguetoopenmy"] = 2,["roguetoopenhitem"] = 2,["roguetounlockbox"] = 2,["roguetounlocklockbox"] = 2,
["rogueforopenhitem"] = 2,["rogueforunlock"] = 2,["roguearoundtoopen"] = 1,["rogueabletohitem"] = 1,
["needroguetoopen"] = 2,["needrogueforopen"] = 2,["needrogueforopening"] = 2,
["canarogue"] = 1,["willarogue"] = 1,

-- Profession CD
["transmutehitemarcanebar"] = 1,["anyonewithmoonclothcooldown"] = 3,["anyonehavemoonclothcooldown"] = 3,

-- Gambling
["fortunefavorsthebold"] = 3,["youtoocanwin"] = 3,["comeandplaynow"] = 3,["highestpayoutgiventoday"] = 3,["winsomeeasygold"] = 3,["needtoberich"] = 1.5,["yourwishcometrue"] = 1,

["casino"] = 1,["casinoishere"] = 1,["deathroll"] = 1,["anyonewannadeathroll"] = 2,["needtodeathroll"] = 2,
["bestodds"] = 1,

["doubleyourgold"] = 1.5,["tripleyourgold"] = 1.5,["playsomecasino"] = 2,["testyourluck"] = 3,["tryyourluck"] = 3,["getrichnow"] = 3,["goldforeverybody"] = 3,["gonnaberich"] = 1.5,["atthecasino"] = 1,["winitall"] = 1,
["fulfillallyourwishes"] = 1.5,

-- Other
["anyoneneedtolevel"] = 1.5, -- Was posted with lockpicking leveling offer

-- Foreign Words
["ppnardinalsldor"] = 3,["vidfontnen"] = 1,["dricks"] = .5,["uppskattat"] = .5,
}
GF_TRADE_WORD_EXCLUSION = {
["lfm"] = 2,["lfg"] = 1,["hr"] = 1,["ms"] = 1,["os"] = 1,
["range"] = 1,["melee"] = 1,
["heallf"] = 1,["tanklf"] = 1,["damagelf"] = 1,
["druidlf"] = 1,["hunterlf"] = 1,["magelf"] = 1,["paladinlf"] = 1,["priestlf"] = 1,["roguelf"] = 1,["shamanlf"] = 1,["warlocklf"] = 1,["warriorlf"] = 1,
["utc"] = 1,["cet"] = 1,["msk"] = 1,["est"] = 1,["cst"] = 1,
["girl"] = 1,["boy"] = 1,["dad"] = 1,["mom"] = 1,["he"] = 1,["her"] = 1,["they"] = 1,["milf"] = 1,["mysister"] = 1,
["cousin"] = 1,["grandfather"] = 1,["grandmother"] = 1,["mydad"] = 1,["mymom"] = 1,["mybrother"] = 1,

["addon"] = 1,["adventurers"] = 1,["advice"] = 1,["anyoneactuallybuying"] = 1,["beforereset"] = 2,["bored"] = 1,["btw"] = 1,["carryme"] = 1,["cringe"] = 1,["discord"] = 1,
["discord"] = 1,["dungeon"] = .5,["eachrole"] = 1,["edgy"] = 1,["elusive"] = 1,["empty"] = 1,["farts"] = 1,["findhim"] = 1,["firstidol"] = 1,["firsttofinish"] = 1,
["fromsending"] = 1,["guild"] = 1,["haveroom"] = 1,["homie"] = 1,["ikinda"] = 1,["inventory"] = 1,["isanyoneactually"] = 1,["itstopsme"] = 1,["justclick"] = 1,
["makesense"] = 1,["musthave"] = 1,["ne"] = 1,["opinion"] = 1,["pleasebring"] = 1,["pleasehave"] = 1,["priority"] = 1,["progression"] = 1,["proveit"] = 1,["quest"] = 1,["raidres"] = 1,
["reallife"] = 1,["recruiting"] = 1,["reserved"] = 1,["ripheroff"] = 1,["riphimoff"] = 1,["ripoff"] = 1,["rippeopleoff"] = 1,["ripplayeroff"] = 1,["ripthemoff"] = 1,["ripusoff"] = 1,
["roster"] = 1,["rules"] = 1,["runme"] = 1,["scam"] = .5,["sendingmessages"] = 1,["shouldi"] = 1,["thatstuff"] = 1,["tojoin"] = 1,["tosay"] = 1,["treasurehunt"] = 1,
["turnback"] = 1,["typethat"] = 1,["wannawrite"] = 1,["weekly"] = 1,["weknow"] = 1,["wentout"] = 1,["whatdoyouthink"] = 1,["whatisbest"] = 1,["whatisbetter"] = 1,
["whatsbest"] = 1,["whatsbetter"] = 1,["wheneveritype"] = 1,["whichisbest"] = 1,["whichisbetter"] = 1,["whycanti"] = 1,["whyicant"] = 1,["willneed"] = 1,
["withoutthebreaks"] = 1,["woah"] = 1,["worldchat"] = 1,

["ratslarge"] = 1,["whatdoyou"] = 1,["doyounot"] = 1,["younotunderstand"] = 1,["youdontunderstand"] = 1,["understandabout"] = 1,["understandthat"] = 1,
}

GF_GROUP_IDS = {
["rfc"] = "RFC",["ragefire"] = "RFC",["chasm"] = "RFC",["ragefirechasm"] = "RFC",["deadmines"] = "DM",["deadmine"] = "DM",["dm"] = "DM",["vc"] = "DM",["vancleef"] = "DM",
["wc"] = "WC",["wailing"] = "WC",["caverns"] = "WC",["wailingcaverns"] = "WC",["shadowfang"] = "SFK",["shadowfangkeep"] = "SFK",["sfk"] = "SFK",["blackfathom"] = "BFD",["blackfathomdeeps"] = "BFD",["bfd"] = "BFD",
["stock"] = "STOCK",["stocks"] = "STOCK",["stockade"] = "STOCK",["gnomer"] = "GNOME",["gnomeregan"] = "GNOME",
["razorfen"] = "RZRF",["kraul"] = "RFK",["razorfenkraul"] = "RFK",["rfk"] = "RFK",["downs"] = "RFD",["razorfendowns"] = "RFD",["rfd"] = "RFD",
["smgy"] = "GY",["graveyard"] = "GY",["gy"] = "GY",["scarletmonasterygraveyard"] = "GY",["lib"] = "LIB",["library"] = "LIB",["smlib"] = "LIB",["smarm"] = "ARM",["arms"] = "ARM",["armory"] = "ARM",["scarletmonasteryarmory"] = "ARM",
["smcath"] = "CATH",["cathedral"] = "CATH",["smfull"] = "SM",["smquestrun"] = "SM",["sm"] = "SM",["scarletmonastery"] = "SM",["monastery"] = "SM",
["ulda"] = "ULDA",["uldaman"] = "ULDA",["zf"] = "ZF",["zulfarrak"] = "ZF",["mallet"] = "ZF",["mara"] = "MARA",["maraudon"] = "MARA",["princess"] = "MARA",
["st"] = "ST",["sunken"] = "ST",["temple"] = "ST",["sunkentemple"] = "ST",["atalhakkar"] = "ST",
["arena"] = "BRD",["brd"] = "BRD",["jailbreak"] = "BRD",["emperor"] = "BRD",["attunement"] = "BRD",["blackrockdepths"] = "BRD",
["lbrs"] = "LBRS",["lowerblackrock"] = "LBRS",["lowerblackrockspire"] = "BRS",["brs"] = "BRS",["blackrock"] = "BRS",["blackrockspire"] = "BRS",
["dme"] = "DME",["dmn"] = "DMN",["dmt"] = "DMT",["dmw"] = "DMW",["dmeast"] = "DME",["dmnorth"] = "DMN",["dmtrib"] = "DMT",["dmtribute"] = "DMT",["dmwest"] = "DMW",
["diremaulwest"] = "DMW",["diremauleast"] = "DME",["diremaulnorth"] = "DMN",["diremaultrib"] = "DMT",["diremaultribute"] = "DMT",["diremaul"] = "DIRE",
["scholo"] = "SCHO",["scholomance"] = "SCHO",
["stratholme"] = "STRAT",["strat"] = "STRAT",["baron"] = "STRAT",["livestrat"] = "STRAT",["udstrat"] = "STRAT",["stratrep"] = "STRAT",["ud"] = "STRAT",["live"] = "STRAT",["undead"] = "STRAT",
["ubrs"] = "UBRS",["rend"] = "UBRS",["valthalak"] = "UBRS",["upperblackrock"] = "UBRS",["drakefireamulet"] = "UBRS",
["dungeon"] = "DUNG",["foranything"] = "DUNG",

["crescent"] = "CG",["grove"] = "CG",["crescentgrove"] = "CG",["cg"] = "CG",["tcg"] = "CG",["gc"] = "GC",["gilneas"] = "GC",["gilneascity"] = "GC",
["hateforge"] = "HFQ",["hate"] = "HFQ",["forge"] = "HFQ",["quarry"] = "HFQ",["hateforgequarry"] = "HFQ",["hq"] = "HFQ",["hf"] = "HFQ",["hfq"] = "HFQ",
["sv"] = "SWV",["swv"] = "SWV",["vault"] = "SWV",["swvault"] = "SWV",["stormwindv"] = "SWV",["stormwindvault"] = "SWV",["morass"] = "COT",["blackmorass"] = "COT",["cavernsoftime"] = "COT",["bm"] = "COT",["cot"] = "COT",
["crypt"] = "KC",["crypts"] = "KC",["karacrypt"] = "KC",["karacrypts"] = "KC",["karazhancrypt"] = "KC",["karazhancrypts"] = "KC",
["dragonmawretreat"] = "DR",

["zg"] = "ZG",["gurub"] = "ZG",["zulgurub"] = "ZG",["hakkar"] = "ZG",["aq"] = "AQ",["ahn"] = "AQ",["qiraj"] = "AQ",["ahnqiraj"] = "AQ",["ossirian"] = "AQ",["ossi"] = "AQ",["cthun"] = "AQ",
["mc"] = "MC",["moltencore"] = "MC",["molten"] = "MC",["core"] = "MC",["rag"] = "MC",["ragnaros"] = "MC",["onyxia"] = "ONY",["ony"] = "ONY",["nef"] = "BWL",
["bwl"] = "BWL",["blackwinglair"] = "BWL",["blackwing"] = "BWL",["lair"] = "BWL",["nefarian"] = "BWL",["nef"] = "BWL",
["naxx"] = "NAXX",["naxxramas"] = "NAXX",["kt"] = "NAXX",["azuregos"] = "WB",["kazzak"] = "WB",["lethon"] = "WB",["ysondre"] = "WB",["taerar"] = "WB",["emeriss"] = "WB",["worldboss"] = "WB",

["es"] = "ES",["sanctum"] = "ES",["emerald"] = "ES",["emeraldsanctum"] = "ES",["k10"] = "KARA",["k40"] = "KARA",["kara"] = "KARA",["karazhan"] = "KARA",["concavius"] = "WB",["ostarius"] = "WB",["nerub"] = "WB",["reaver"] = "WB",["clackora"] = "WB",

["av"] = "PVP",["alteracvalley"] = "PVP",["ab"] = "PVP",["arathibasin"] = "PVP",["wsg"] = "PVP",["battleground"] = "PVP",["warsong"] = "PVP",["warsonggulch"] = "PVP",["premade"] = "PVP",["bg"] = "PVP",["bgs"] = "PVP",["pvp"] = "PVP",
["bloodring"] = "PVP",
["sunnygladevalley"] = "PVP",
["sunnyglade"] = "PVP",
}
GF_BUTTONS_LIST = {
	["SearchList"] = {
		[1] = { "Ragefire Chasm", 10, 18, "RFC", "DUNG"},
		[2] = { "Deadmines", 15, 25, "DM", "DUNG" },
		[3] = { "Wailing Caverns", 16, 26, "WC", "DUNG" },
		[4] = { "Blackfathom Deeps", 20, 30, "BFD", "DUNG" },
		[5] = { "Shadowfang Keep", 20, 30, "SFK", "DUNG" },
		[6] = { "Stockades", 20, 30, "STOCK", "DUNG" },
		[7] = { "Gnomeregan", 26, 36, "GNOME", "DUNG" },
		[8] = { "Razorfen Kraul", 26, 36, "RFK", "RZRF", "DUNG" },
		[9] = { "Razorfen Downs", 35, 45, "RFD", "RZRF", "DUNG" },
		[10] = { "SM Graveyard", 26, 36, "GY", "SM", "DUNG" },
		[11] = { "SM Library", 30, 42, "LIB", "SM", "DUNG" },
		[12] = { "SM Armory", 34, 44, "ARM", "SM", "DUNG" },
		[13] = { "SM Cathedral", 35, 46, "CATH", "SM", "DUNG" },
		[14] = { "Uldaman", 38, 50, "ULDA", "DUNG" },
		[15] = { "Zul'Farrak", 42, 54, "ZF", "DUNG" },
		[16] = { "Maraudon", 43, 55, "MARA", "DUNG" },
		[17] = { "Sunken Temple", 47, 58, "ST", "DUNG" },
		[18] = { "Blackrock Depths", 48, 60, "BRD", "DUNG" },
		[19] = { "Lower Blackrock Spire", 52, 60, "LBRS", "BRS", "DUNG" },
		[20] = { "Dire Maul East", 50, 60, "DME", "DIRE", "DUNG" },
		[21] = { "Dire Maul North", 54, 60, "DMN", "DIRE", "DUNG" },
		[22] = { "Dire Maul West", 55, 60, "DMW", "DIRE", "DUNG" },
		[23] = { "Dire Maul Tribute", 54, 60, "DMT", "DIRE", "DUNG" },
		[24] = { "Scholomance", 55, 60, "SCHO", "DUNG" },
		[25] = { "Stratholme", 55, 60, "STRAT", "DUNG" },
		[26] = { "Upper Blackrock Spire", 55, 60, "UBRS", "BRS", "DUNG" },
		[27] = { "40-man Raids", 58, 60, "MC", "ONY", "BWL", "AQ", "NAXX", "WB" },
		[28] = { "20-man Raids", 58, 60, "ZG", "AQ" },
		[29] = { "PvP", 18, 60, "PVP" },
		[30] = { GF_CLEAR, 1, 60, "" },
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
		[1] = { "Ragefire Chasm", 10, 18, "rfc", "Ragefire Chasm", 15, 5, },
		[2] = { "Deadmines", 15, 25, "dm", "The Deadmines", 21, 5, },
		[3] = { "Wailing Caverns", 16, 26, "wc", "Wailing Caverns", 21, 5, },
		[4] = { "Blackfathom Deeps", 20, 30, "bfd", "Blackfathom Deeps", 25, 5, },
		[5] = { "Shadowfang Keep", 20, 30, "sfk", "Shadowfang Keep", 25, 5, },
		[6] = { "Stockades", 20, 30, "stocks", "The Stockade", 25, 5, },
		[7] = { "Gnomeregan", 26, 36, "gnomer", "Gnomeregan", 32, 5, },
		[8] = { "Razorfen Kraul", 26, 36, "rfk", "Razorfen Kraul", 31, 5, },
		[9] = { "Razorfen Downs", 35, 45, "rfd", "Razorfen Downs", 41, 5, },
		[10] = { "SM Graveyard", 26, 36, "gy", "Scarlet Monastery", 31, 5, },
		[11] = { "SM Library", 30, 42, "lib", "Scarlet Monastery", 35, 5, },
		[12] = { "SM Armory", 34, 44, "arm", "Scarlet Monastery", 38, 5, },
		[13] = { "SM Cathedral", 35, 46, "cath", "Scarlet Monastery", 40, 5, },
		[14] = { "SM Full", 35, 46, "sm full", "Scarlet Monastery", 39, 5, },
		[15] = { "Uldaman", 38, 50, "ulda", "Uldaman", 44, 5, },
		[16] = { "Zul'Farrak", 42, 54, "zf", "Zul'Farrak", 47, 5, },
		[17] = { "Maraudon", 43, 55, "mara", "Maraudon", 49, 5, },
		[18] = { "Sunken Temple", 47, 60, " st ", "The Temple of Atal'Hakkar", 53, 5, },
		[19] = { "Blackrock Depths", 48, 60, "brd", "Blackrock Depths", 58, 5, },
		[20] = { "Lower Blackrock Spire", 52, 60, "lbrs", "Blackrock Spire", 58, 10, },
		[21] = { "Dire Maul East", 50, 60, "dme", "Dire Maul", 58, 5, },
		[22] = { "Dire Maul North", 54, 60, "dmn", "Dire Maul", 61, 5, },
		[23] = { "Dire Maul West", 55, 60, "dmw", "Dire Maul", 62, 5, },
		[24] = { "Dire Maul Tribute", 54, 60, "dmt", "Dire Maul", 62, 5, },
		[25] = { "Scholomance", 55, 60, "scholo", "Scholomance", 62, 5, },
		[26] = { "Stratholme Live", 55, 60, "strat live", "Stratholme", 61, 5, },
		[26] = { "UD Stratholme", 55, 60, "ud strat", "Stratholme", 62, 5, },
		[27] = { "Upper Blackrock Spire", 55, 60, "ubrs", "Blackrock Spire", 62, 10, },
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
["morrass"] = "morass",["moras"] = "morass",["morras"] = "morass",["klavens"] = "klaven",["crypts"] = "crypt",["cresent"] = "crescent",["vaults"] = "vault",["smv"] = "swv",["hijal"] = "hyjal",
["hatforge"] = "hateforge",["hategorhe"] = "hateforge",["hyial"] = "hyjal",["hidraxian"] = "hydraxian",["gileas"] = "gilneas",["gilenas"] = "gilneas",["gineas"] = "gilneas",
["gileans"] = "gilneas",["gilnease"] = "gilneas",["gilneaas"] = "gilneas",["glineas"] = "gilneas",["guilneas"] = "gilneas",["gelneas"] = "gilneas",["gilneascity"] = "gilneas",["gilcity"] = "gilneas",["gilnea"] = "gilneas",
["otarius"] = "ostarius",["larranikus"] = "larannikus",["leranikus"] = "larannikus",["hellscreem"] = "hellscream",
["darkreavermenace"] = "scholomance",["nohonoramongchefs"] = "karacrypt",
 
["jeweller"] = "jewelcrafter",["jewellcraft"] = "jewelcrafter",["jewellcrafter"] = "jewelcrafter",["jewellcrafting"] = "jewelcrafter",["jewelcrafterw"] = "jewelcrafter",
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
["kingsbane"] = 10,["hezrul"] = 19,["alverold"] = 20,["klaven"] = 24,["diathorus"] = 30,["grushak"] = 31,["grimeye"] = 31,["palkeote"] = 39,["almaudrak"] = 40,["sorrowclaw"] = 41,["snarlclaw"] = 44,["ravenwood"] = 45,
["gelwig"] = 48,["gelweg"] = 48,["zefek"] = 48,["janira"] = 50,["vilegrip"] = 51,["vilegrips"] = 51,["lykourgos"] = 53,["hazzuri"] = 54,["tanglemoss"] = 54,["lapidis"] = 55,["fearoth"] = 55,["letashaz"] = 55,["rholgast"] = 57,
["xanthar"] = 60,["krampus"] = 60,["solnius"] = 60,["xanvarak"] = 60,["morogo"] = 60,["ramstein"] = 60,["blackwald"] = 60,["shadowtooth"] = 61,["larannikus"] = 61,["larannikus"] = 61,["venethas"] = 62,["bovarkez"] = 63,

-- Two Words
["lordvash"] = 10,["lordvasharj"] = 10,["ladyrenirja"] = 10,["darkstorms"] = 12,["sandshark"] = 13,["anchorsend"] = 17,["hezrulbloodmark"] = 19,["cuttingranks"] = 19,["magicalinterference"] = 20,["hawksvigil"] = 24,
["dragonkinannoyance"] = 25,["strangebedfellows"] = 25,["anchoredge"] = 30,["shadowwell"] = 30,["gromhellscream"] = 30,["returningproperty"] = 35,["waynemanners"] = 35,["lingeringmother"] = 39,["cleaningjob"] = 40,["fearincarnate"] = 41,
["draconicpresence"] = 43,["scalebaneridge"] = 43,["ladyjanira"] = 50,["tinkersparktransponder"] = 54,["riftwalkerscane"] = 54,["kroshius"] = 55,["hermitswrath"] = 55,["uncoveringevil"] = 55,["azurescale"] = 55,["raidersrevenge"] = 56,["grommash"] = 57,
["darkwhisperculling"] = 60,["hostileenvoys"] = 60,["barkskintribe"] = 60,["therace"] = 60,["tetheredmemories"] = 60,["corruptedsand"] = 60,["wrappingwarpwood"] = 61,["upperbinding"] = 60,["pricolichlycan"] = 60,["shadowedspectre"] = 60,
["scytheboss"] = 60,["scythewolfboss"] = 60,

-- Three Words
["destroyingventureco"] = 9,["venturecoleadership"] = 9,["deepbluesea"] = 13,["removingleperleadership"] = 13,["masteringtheformula"] = 14,["satisfactionforshak"] = 20,["churchofwestfall"] = 22,["thedragonmawconflict"] = 28,["thelosttablets"] = 30,
["theseekersdemise"] = 30,["thefinalstrike"] = 31,["themortalstrike"] = 31,["rootingoutevil"] = 37,["securingthekeep"] = 40,["securingtheroads"] = 40,["unforgottenandunforgiven"] = 40,["orboforahil"] = 40,["ragingoceansblue"] = 41,
["justicefordustwallow"] = 43,["baneofscalebane"] = 44,["undoingthecurse"] = 44,["staffofshinban"] = 45,["magicofdragons"] = 45,["theravenwoodscepter"] = 46,["revengeafterdeath"] = 47,["minersunionmutiny"] = 50,
["decimatetheirranks"] = 50,["theaquastone"] = 51,["dampeningmustend"] = 52,["disharmonyofflame"] = 52,["bigenergyproject"] = 54,["shadowswornpendantbounty"] = 54,["disharmonyoffire"] = 56,["stopthedragonflight"] = 56,
["huntthehunter"] = 57,["blackrockandroll"] = 57,["removingvitalassets"] = 58,["legendofeskhandar"] = 58,["honoringthewarrior"] = 58,["felenergyirregularities"] = 60,["intothedream"] = 60,["inarush"] = 60,
["scouringthedesert"] = 60,["thebronzebetrayal"] = 60,["asleepundersnow"] = 60,["therunestonescepter"] = 60,["theeternalsleeper"] = 60,["savingtheshadowtooth"] = 60,["thewhitestag"] = 62,["theprisonsbindings"] = 62,["rothlenfamilybrooch"] = 63,

-- Four Words
["leadersofthereefscale"] = 10,["terrorofchillbreeze"] = 11,["falloftheusurper"] = 20,["andjusticeforall"] = 43,["headofthehunters"] = 44,
["inabookonce"] = 49,["bringdownthepriestess"] = 50,["lightfalluponthee"] = 56,["killingthetidelord"] = 56,["anechofrombeyond"] = 56,["strengthtomovemountain"] = 58,
["scytheofthegoddess"] = 60,["fateoftheharborage"] = 60,["underthevibrantmoonlight"] = 60,["terrorofthewebweavers"] = 60,["thedepthsofkarazhan"] = 63,
}
local GF_TURTLE_WORD_DUNGEON = {
["crescent"] = 36,["grove"] = 36,["crescentgrove"] = 36,["cg"] = 36,["tcg"] = 36,["gc"] = 48,["gilneas"] = 48,["hateforge"] = 56,["quarry"] = 56,["hq"] = 56,["hf"] = 56,["hfq"] = 56,
["sv"] = 62.3,["swv"] = 62.3,["vault"] = 62.3,["morass"] = 62.4,["bm"] = 62.4,["cot"] = 62.4,["crypt"] = 63.2,["karacrypt"] = 63.2,

-- Two Words
["dragonmawretreat"] = 30,["gilneascity"] = 48,["stormwindv"] = 62.3,["stormwindvault"] = 62.3,["blackmorass"] = 62.4,

-- Three Words
["cavernsoftime"] = 62.4,
}
local GF_TURTLE_WORD_RAID = {
["es"] = 63.3,["sanctum"] = 63.3,["k10"] = 64.5,["k40"] = 64.5,["kara"] = 64.5,["karazhan"] = 64.5,["concavius"] = 64,["ostarius"] = 64,["nerub"] = 64,["reaver"] = 64,["clackora"] = 64,
}
local GF_TURTLE_WORD_TRADE = {
["jewelcrafter"] = 1,
["beltbuckle"] = 1,["allbuckle"] = 1,

["hyjal"] = .5,["theramore"] = .25,

-- Jewelcrafting
["jewelcrafter"] = .5,["lfjewel"] = 3,["lfjewelcrafter"] = 3,["lfjc"] = 3,
["anyjewelcrafter"] = 1.5,["anyjewelcrafterfor"] = 1.5,["anyjewelcrafterwith"] = 1.5,["anyjewelcrafterhere"] = 1.5,["anyjewelcrafteraround"] = 1.5,
["jewelcrafterfor"] = 1,["jewelcrafterwith"] = 1,
["jewelcrafterforhitem"] = 3,["jewelcrafterwithhitem"] = 3,

["mastergemologist"] = 2,["mastergemonologist"] = 2,["gemstone"] = .5,["allgem"] = 1,["allgemaround"] = 2,
["enchantjewelcrafter"] = 1,

-- Two Words
["everythingaround"] = 2,

["statstrinket"] = 1,["agilitywrist"] = 1,

["allenchantaround"] = 2,

["lfwinterspring"] = 1,["lfswamp"] = 1,["lftheramore"] = 1,["lfalahthalas"] = 1,["lfhydraxian"] = 1,["lfstonard"] = 1,["lfhyjal"] = 1,["lfmoonglade"] = 1,
["lfgwinterspring"] = 1,["lfgswamp"] = 1,["lfgtheramore"] = 1,["lfgalahthalas"] = 1,["lfghydraxian"] = 1,["lfgstonard"] = 1,["lfghyjal"] = 1,["lfgmoonglade"] = 1,

["winterspringportal"] = 1,["swampportal"] = 1,["theramoreportal"] = 1,["alahthalasportal"] = 1,["hydraxianportal"] = 1,["stonardportal"] = 1,["hyjalportal"] = 1,["moongladeportal"] = 1,
["winterspringportalplease"] = 2,["swampportalplease"] = 2,["theramoreportalplease"] = 2,["alahthalasportalplease"] = 2,["hydraxianportalplease"] = 2,["stonardportalplease"] = 2,["hyjalportalplease"] = 2,["moongladeportalplease"] = 2,

["hyjalsummon"] = .5,["summonhyjal"] = .5,

["cosmiccloth"] = .5,["etherealleather"] = .5,["shadowforgedeye"] = 1,

["pinkyservice"] = 2,["uncleabe"] = 2,

-- To Belt
["beltenchant"] = 1,["beltbuckleenchant"] = 1,["lfbeltbuckle"] = 3,["lfagilitybuckle"] = 3,["lfintellectbuckle"] = 3,["allbeltbuckle"] = 3,["intellectbeltbuckle"] = 2,["agilitybeltbuckle"] = 2,["attachingintellect"] = 3,["attachingbeltbuckle"] = 3,

-- To Ring
["toring"] = .5,["ringenchant"] = 1,["enchantring"] = 1,
["ringstrength"] = 1,["ringagility"] = 1,["ringstats"] = 1,["ringheal"] = 1,["ringnature"] = 1,["ringshadow"] = 1,["ringfrost"] = 1,["ringvamp"] = 1,["ringvamp"] = 1,["ringvampirism"] = 1,["ringsp"] = 1,["ringstamina"] = 1,
["strengthring"] = 1,["agilityring"] = 1,["statsring"] = 1,["healring"] = 1,["naturering"] = 1,["shadowring"] = 1,["frostring"] = 1,["vampring"] = 1,["vampring"] = 1,["vampirismring"] = 1,["spring"] = 1,["staminaring"] = 1,
["strengthtoring"] = 1,["agilitytoring"] = 1,["statstoring"] = 1,["healtoring"] = 1,["naturetoring"] = 1,["shadowtoring"] = 1,["frosttoring"] = 1,["vamptoring"] = 1,["vamptoring"] = 1,["vampirismtoring"] = 1,["sptoring"] = 1,["staminatoring"] = 1,

["spelldamagetoring"] = 1,["spelldamagering"] = 1,["ringspelldamage"] = 1,

-- To Neck
["toneck"] = .5,["neckenchant"] = 1,["enchantneck"] = 1,
["healneck"] = 1,["damageneck"] = 1,["strengthneck"] = 1,["agilityneck"] = 1,
["neckheal"] = 1,["neckdamage"] = 1,["neckstrength"] = 1,["neckagility"] = 1,
["healtoneck"] = 1,["damagetoneck"] = .5,["strengthtoneck"] = 1,["agilitytoneck"] = 1,
["toimprovemyneck"] = 1,

-- Three Words
["lfhitembeltbuckle"] = 3,["intellecttobelt"] = 1,["agilitytobelt"] = 2,["lfagilitywaist"] = 3,["lfagilitybelt"] = 3,["lfintellectwaist"] = 3,["onyourbelt"] = 1,

["agilitytowrist"] = 1,

["anyhyjalportal"] = 1,["needhyjalportal"] = 1,["needportalhyjal"] = 1,
["portaltowinterspring"] = 1,["portalmetowinterspring"] = 1,["anywinterspringportal"] = 1,["needwinterspringportal"] = 1,["needportalwinterspring"] = 1,
["portaltoswamp"] = 1,["portalmetoswamp"] = 1,["anyswampportal"] = 1,["needswampportal"] = 1,["needportalswamp"] = 1,
["portaltostonard"] = 1,["portalmetostonard"] = 1,["anystonardportal"] = 1,["needstonardportal"] = 1,["needportalstonard"] = 1,
["portaltotheramore"] = 1,["portalmetotheramore"] = 1,["anytheramoreportal"] = 1,["needtheramoreportal"] = 1,["needportaltheramore"] = 1,
["portaltoat"] = 1,["portalmetoat"] = 1,["anyatportal"] = 1,["needatportal"] = 1,["needportalat"] = 1,
["portaltoalahthalas"] = 1,["portalmetoalahthalas"] = 1,["anyalahthalasportal"] = 1,["needalahthalasportal"] = 1,["needportalalahthalas"] = 1,["needaalahthalasportal"] = 1,

["freehyjalsummon"] = 1.5,["lfhyjalsummon"] = 2,["needhyjalsummon"] = 2,["summontohyjal"] = 2.5,["taxitohyjal"] = 2.5,
["anyhyjalsummon"] = 2,["anysummonhyjal"] = 2,["anyonehyjalsummon"] = 2,["anyonesummonhyjal"] = 2,

["hordeoralliance"] = 1,["thoriumspursanyone"] = 2,

-- Four Words
["agilityonmybelt"] = 1,["agilitytomybelt"] = 1,["intellectonmybelt"] = 1,["intellecttomybelt"] = 1,
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
}
local GF_TurtleGroupButtonsListRaids = {
		[1] = { "Upper Karazhan", 1, 60, "kara40", "Upper Karazhan", 63, 40, },
		[2] = { "Lower Karazhan", 1, 60, "kara10", "Lower Karazhan", 63, 10, },
		[3] = { "Emerald Sanctum", 60, 60, "sanctum", "Emerald Sanctum", 63, 40, },
} -- [3] = { "AQ15", 1, 60, "aq15", "Ruins of Ahn'Qiraj", 63, 20, },
local GF_TurtleSearchListNew40RaidString = { "40-man Raids", 60, 60, "MC", "ONY", "BWL", "AQ", "NAXX", "WB", "KARA", "ES" }
local GF_TurtleSearchListNew20RaidString = { "20-man Raids", 58, 60, "ZG", "AQ", "KARA" }
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