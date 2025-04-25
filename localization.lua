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

GF_5_MAN				= " 5-man";
GF_10_MAN				= " 10-man";
GF_15_MAN				= " 15-man";
GF_20_MAN				= " 20-man";
GF_25_MAN				= " 25-man";
GF_40_MAN				= " 40-man";

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
GF_SHOW_TRANSLATE		= "Show Translate";
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
GF_LOG					= "    Log    "; -- Label for Log tab
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
GF_FilterLevelNotes[1] = "Requires one trigger";
GF_FilterLevelNotes[2] = "Requires two triggers";
GF_FilterLevelNotes[3] = "Requires three triggers";

GF_USE_WHO_ON_GROUPS		= "Auto /Who"
GF_JOIN_WORLD				= " Join World channel"
GF_SHOW_ORIGINAL_CHAT		= " Show Unformatted Chat"
GF_ERROR_FILTER				= " Enable Error Filtering"
GF_SPAM_FILTER				= " Enable Spam Filtering"
GF_AUTO_BLACKLIST			= " Enable Auto Blacklist"
GF_SPAM_FILTER_TIMER		= "Spam flag clear time"
GF_BLACKLIST_MINLEVEL		= "Auto Blacklist maximum level"
GF_BLOCK_BELOW_LEVEL		= "Block messages below level"
GF_GROUP_LIST_DURATION		= "Group display time"
GF_AUTO_FILTER_LEVEL		= "Auto Filter level range"
GF_NEW_GROUP_TIMEOUT		= "Flagged as new listing"

-- LFG related buttons and texts
GF_AUTO						= "Auto"
GF_LFM_LFG					= " LFM/LFG"
GF_DUNGEON					= " Dungeon"
GF_RAID						= " Raid"
GF_ROLE						= " Role"
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
GF_GroupsFrameShowTranslateCheckButton = { 
	tooltip1 		= "Show Translated", 
	tooltip2 		= "When checked, results will include translated groups." },
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
};
GF_TRIGGER_LIST = {
	["LFM"] = { "lf%s", "lf%d", "lfm", "flm", "lf.m", "lf..m", "looking for more", "need more", "looking for .* more", "need %d* dps","need %d* heal", "need %d* tank", "need heal", "need tank", "need dps",
	"need range", "need rdps", "need caster", "need melee", "need mdps", "need one", "need two", "need three", "anyone for", "come tank", "come healer", "come dps", "hosting", "ms>os", },
	["LFG"] = {	"lfg", "looking for group", "anyone for", "want to group", },
	["CLASSES"] = {
		["Druid"] = 	{ "Balance", "Feral", "Resto", "druid", "drood", "driud", },
		["Hunter"] = 	{ "BM", "Marks", "Survival", "hunter", "hutner", },
		["Mage"] = 		{ "Arcane", "Fire", "Frost", "mage", },
		["Paladin"] = 	{ "Holy", "Prot", "Ret", "paladin", "pally", "paly", "pallie", "healadin", },
		["Priest"] = 	{ "Disc", "Holy", "Shadow", "priest", "preist", },
		["Rogue"] = 	{ "Assassin", "Combat", "Sub", "rogue", "rouge", },
		["Shaman"] = 	{ "Ele", "Enh", "Resto", "shaman", "shammy", },
		["Warlock"] = 	{ "Affliction", "Demonology", "Destruction", "lock", "warlock", },
		["Warrior"] = 	{ "Arms", "Fury", "Prot", "warrior", "warr", },
		["HEALER"] = 	{ "Z", "Z", "Z","healer", "heals", },
		["TANK"] = 		{ "Z", "Z", "Z", "tank", " tanks", },
		["DAMAGE"] = 	{ "Z", "Z", "Z", "damage", "dps", "dmg", "deeps", "range", "melee", "caster", },
	},
	["IGNORE"] = { "channel", "lol", "lmao", "lmfao", "rofl", "wts", "wtb", "stfu", "ignore", "noob", "website", "http", "progression", "pwb",
				"nub", "n00b", "recruit", "trogdoor", "raid times", "raiding times", "dedicated", "lockbox", "lfw", "cod", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday", "sign up", "server time", },
	["SPAM"] = { "l f m", "h e a l", "n o s t", "please come to web", "c o m", "n 0 s t", "level service", "c o m", },
	["POLITICS"] = { "jews", "hitler", "stalin", "kike", "nazi", "supremacist", "racism", "gas chamber", "pedo", "pedophile", "biden", "trump", "pelosi", "semiti", "tranny", "trannies",
				"6 million", "gorillion", "republican", "democrat", "politic", "bankers", "apartheid", "holocaust", "holohoax", "bigot", "schizo", "jewish", "transgender", "abortion",
				"sexist", "feminism", "globalist", "racist", "racism", "immigrants", "refugees", "nigger", "chink", "misogyn", "faggot", "negro", "muslim", },
	["TRADE"] = { [1] = { "wtb", "wts", "buying", "selling", "wtt", "trading", "lfw", "for sale", "on ah", "cod", "summons service", "summon service",},
					[2] = { "jc", "jewel", "enchant", "tailor", "blacksmith", "leatherwork", "engineer", }, },
	["RAID"] = { "molten core", "mc", "ragnaros", "rag", "blackwing", "bwl", "zulg", "zg", "gurub", "hakkar", "aq20", "ahn", "aq", "ossir", "aq40", "quiraj",
				"naxxramas", "naxx", "onyxia", "ony", "azuregos", "kazzak", "world boss", "lethon", "ysondre", "taerar", "emeris", },
	["PVP"] = { "premade", "av", "ab", "wsg", "warsong", "alterac valley", "arathi basin", "gulch", },
	["QUEST"] = {
		["ARATHIHIGHLANDS"] = { "arathi highlands", "fozruk", "breaking the keystone", "sigil of trollbane", "call to arms", "the broken sigil", "the real threat", "otto and falconcrest", "attack on the tower", "trelane", "marez cowl", "stromgarde", },
		["AZSHARA"] 		= { "azsharite", "hetaera", "the name of the beast", },
		["BARRENS"] 		= { "barrens", "horde presence", },
		["BADLANDS"] 		= { "tremors of the earth", "broken alliances", "summoning the princess", },
		["BLASTEDLANDS"] 	= { "kirith", "rakh", "uniting the shattered amulet", },
		["BURNINGSTEPPES"] 	= { "dragonkin menace", },
		["DARKSHORE"] 		= { "gyromast", },
		["DUSKWOOD"] 		= { "duskwood", "ladim", "morbent fel", "eliza", "bride of the embalmer", },
		["DESOLACE"] 		= { "desolace", "khan hratha", "the corrupter", },
		["DUSTWALLOW"] 		= { "alcaz island", "bloodkelp", "test of skulls", "brood of onyxia", "morokk", "deadmire", },
		["EASTPLAGUE"] 		= { "eastern? plaguelands", "epl", "darrowshire", "nathanos", "blightcaller", "order must be restored", "duskwing", "corpulent", "borelgore", "courier", "demetria", },
		["ELWYNN"] 			= { "hogger", "elwyn", },
		["FERALAS"] 		= { "muisek", "cliff giant", },
		["FELWOOD"] 		= { "a final blow", },
		["HILLSBRAD"] 		= { "southshore", "crown of will", "crushridge warmongers", "preserving knowledge", "battle of hillsbrad", "elixir of agony", "humbert", "frostmaw", },
		["HINTERLANDS"] 	= { "hinterland", "sharpbeak", "ancient egg", "shadra", "raventusk", "hexx", },
		["LOCHMODAN"] 		= { "choksul", "vyrin", "mercenaries", },
		["REDRIDGE"] 		= { "red ridge", "stonewatch", "lakeshire", "rr", "redridge", "ilzogg", "morganth", "tharil", "shadow magic", "looking further", },
		["SEARINGGORGE"] 	= { "searing gorge", "obsidion", "set them ablaze", "maltorius", "flames casing",},
		["SILITHUS"] 		= { "lords", "dukes", "dearest natalia", "field duty", "abyssal", "the calling", },
		["SILVERPINE"] 		= { "fenris isle", "arugal", "pyrewood", },
		["STONETALON"] 		= { "the den", "bloodfury bloodline", "arachnophobia", },
		["STRANGLETHORN"] 	= { "stranglethorn", "stv", "negolash", "message in a bottle", "mok", "minds eye", "maizoth", "cracking maury", "big game hunter", "colonel kurzen", },
		["TANARIS"] 		= { "tanaris", "the isle of dread", "lakmaeran", "nightmares corruption", "decoy", "draconic", "wrath of neptulon", "maws", "eranikus", },
		["THOUSANDNEEDLES"] = { "encrusted tail fins", "test of strength", "arikara", "hypercapacitor", "steelsnap", },
		["UNGORO"] 			= { "dangerous to go alone", },
		["WESTFALL"] 		= { "westfall"},
		["WESTPLAGUE"] 		= { "western plaguelands", "wpl", "araj", "in dreams", "fordring", "last barov", },
		["WETLANDS"] 		= { "wetlands?", "grim task", "balgaras", "nekrosh", "thandol span", "dark iron war", },
		["WINTERSPRING"] 	= { "winterspring", "luck be with you", "frostmaul", "rotam", "winterfall", "brumeran", "ursius", "timbermaw hold",},
		["ALL"] 			= { "elite", "escort", "quest", "rep farm", },
	},
	["DUNGEON"] = {
		["RAGEFIRECHASM"] 	= { 15, "ragefire", "rfc", },
		["DEADMINES"] 		= { 20, "dead mines", " dm ", " vc ", "cleef", "deadmines", "death mine", },
		["WAILINGCAVERNS"] 	= { 20, "wailing cave", " wc ", },
		["BLACKFATHOM"] 	= { 25, "blackfathom", "bfd",},
		["SHADOWFANG"] 		= { 25, "shadowfang", "sfk", },
		["STOCKADE"] 		= { 25, "stockade", "stocks", },
		["GNOMEREGAN"] 		= { 31, "gnomer", },
		["RAZORFENKRAUL"]	= { 32, "kraul", "rfk", },
		["RAZORFENDOWNS"]	= { 39, "downs", "rfd", },
		["SMGRAVEYARD"] 	= { 32, "graveyard", "sm gy", "monastery gy", },
		["SMLIBRARY"] 		= { 36, "library", " lib ", "sm full", "sm questrun", },
		["SMARMORY"] 		= { 38, "armory", "sm arm", "sm full", "sm questrun",},
		["SMCATHEDRAL"] 	= { 39, "cath ", "sm full", "sm questrun", },
		["ULDAMAN"] 		= { 44, "ulda", },
		["ZULFARRAK"] 		= { 47, "zul", "zf", "farrak", " mallet", },
		["MARAUDON"] 		= { 48, "mara", "princess", },
		["SUNKENTEMPLE"] 	= { 54, " st ", "sunken", "temple", },
		["BLACKROCKDEPTHS"] = { 56, "depths", "brd", " emp", "windsor", "jailbreak", "angerforge", "hand of justice", "lava run", },
		["LBRS"] 			= { 58, "lower[%w%s]+spire", "lower[%w%s]+blackrock", "lbrs", },
		["DIREMAULEAST"] 	= { 58, "dme", "maul east", "dm.e", },
		["DIREMAULNORTH"] 	= { 61, "dmn", "dmt", "maul north", "maul tribute", "dm.n", "dm.t", },
		["DIREMAULWEST"]	= { 62, "dmw", "maul west", "dm.w", },
		["SCHOLOMANCE"] 	= { 62, "scholo", },
		["STRATHOLME"] 		= { 62, "strath", "starth", "baron", "ud strat", "live strat", "strat live", "strat ud", "ud side", "live side", },
		["UBRS"] 			= { 63, "upper[%w%s]+spire", "upper[%w%s]+blackrock ", "urbs", "brs", },
		["INSTANCE"] 		= { 1, "instan[zc]", },
		["ANYTHING"] 		= { 1, "anything", },
	},
}
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
local GF_TurtleTriggerListDungeons = {
		["CRESCENTGROVE"]	= { 36, "crescent", "grove", "cg", },
		["GILNEASCITY"] 	= { 47, "gilneas", "gc", },
		["HATEFORGEQUARRY"] = { 55, "hateforge", "quarry", "hf", },
		["EMERALDSANCTUM"] 	= { 60, "es", "sanctum", },
		["STORMWINDVAULT"] 	= { 60, "sv", "vault", },
		["COTBLACKMORASS"] 	= { 60, "morass", "bm", },
		["KARACRYPT"] 		= { 60, "crypt", },
}
local GF_TurtleTriggerListQuests = {
		["TURTLE"]			= { 60, "xanthar", "upper binding", "solnius", "scythe of the goddess", "into the dream", },
		["TDESOLACE"]		= { 35, "almaudrak", "fear incarnate", "palkeote", "lingering mother", "raging oceans blue", "unforgotten and unforgiven", },
		["TAZSHARA"]		= { 54, "azure scale", "killing the tide lord", "mystery of lake mennar", "tinkerspark transponder", "stop the dragonflight", "big energy project", "dampening must end", },
		["TDUSTWALLOW"]		= { 37, "and justice for all", "draconic presence", "justice for dustwallow", },
		["THINTERLANDS"]	= { 47, "bring down the priestess", "decimate their ranks", "read it in a book once", },
		["TARATHIHIGHLANDS"]= { 37, "cleaning job", "securing the keep", "securing the roads", },
		["TWINTERSPRING"]	= { 60, "darkwhisper culling", "saving the shadowtooth", "krampus", },
		["TDUROTAR"]		= { 10, "deep blue sea", },
		["TBLACKSTONE"]		= { 13, "destroying venture co", "venture co leadership", "alverold", },
		["TTIRISFAL"]		= { 15, "fall of the usurper", "magical interference", },
		["TTANARIS"]		= { 47, "favor for gelweg", "plight of the sandfury", },
		["TBLASTEDLANDS"]	= { 50, "fel energy irregularities", },
		["HYJAL"]			= { 60, "hostile envoys", "xanvarak", "barkskin tribe", },
		["TUNGORO"]			= { 58, "in a rush", "the race", },
		["TELABIM"]			= { 60, "morogo", },
		["ALAHTHALAS"]		= { 60, "kingsbane", "leaders of the reefscale", },
		["TFERALAS"]		= { 47, "janira", },
		["GILLIJIM"]		= { 50, "lykourgos", "hazzuri dark vessels", "tanglemoss", "the aqua stone", "Hermit['s]+ Wrath", "tower of lapidis", },
		["GILNEAS"]			= { 44, "ravenwood", "revenge after death", "snarlclaw", },
		["THILLSBRAD"]		= { 34, "returning property", },
		["TWETLANDS"]		= { 30, "strange bedfellows", "hawk['s]+ vigil", },
		["TASHENVALE"]		= { 30, "the final strike", "the mortal strike", },
		["TBADLANDS"]		= { 40, "head of the hunters", "undoing the curse", },
		["TSWAMPSORROWS"]	= { 40, "sorrowclaw", "magic of dragons", "zef['e]+k", },
		["WHISPERINGFOREST"]= { 30, "the lost tablets", "shadow well", },
		["TWESTFALL"]		= { 19, "church of westfall", },
		["TDUNMOROGH"]		= { 10, "terror of chill breeze", },
		["TEASTPLAGUE"]		= { 58, "wrath of the light fall upon thee", },
		["TFELWOOD"]		= { 56, "hunt the hunter", },
		["TBURNINGSTEPPES"]	= { 55, "vilegrip", "miners union mutiny", },
}
local GF_TurtleTriggerListRaids = { "kara", "k10", "k40", "concavius", "ostarius", "nerub", "reaver", "aq15", }
local GF_TurtleSearchList = {
		[1] = { "Crescent Grove", 32, 38, "crescent", "grove", "cg ", },
		[2] = { "Gilneas City", 43, 50, "gilneas", },
		[3] = { "Hateforge Quarry", 52, 60, "hateforge", "quarry", "hf ", },
		[4] = { "Stormwind Vault", 58, 60, "vault", "sv ", },
		[5] = { "Black Morass", 58, 60, "morass", "bm ", },
		[6] = { "Karazhan Crypt", 60, 60, "crypt", },
		[7] = { "Emerald Sanctum", 60, 60, "sanctum", "es ", },
}
local GF_TurtleGroupButtonsListDungeons = { -- header, min to show, max to show, filter to remove names, filter to remove names, Who list level
		[1] = { "Crescent Grove", 32, 40, "cg", "Crescent Grove", 33, },
		[2] = { "Gilneas City", 42, 50, "gilneas", "Gilneas City", 46, },
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
local GF_TurtleSearchListNew40RaidString = { "40-man Raids", 60, 60, "mc ", "molten core", "rag ","ragnaros", "blackwing", "bwl", " nef ", "nefari", "aq40", "cthun", "aq 40", "naxx", " ony", "onyxia", "qiraj",
											"kara40", "upper kara", "k40", "concavius", "ostarius", "nerub", "reaver", }
local GF_TurtleSearchListNew20RaidString = { "20-man Raids", 58, 60, "zg", "zul g", "gurub", "hakkar", "aq20", "ossi", "aq15", "k10", "kara10", "lower kara", }					
function GF_AddTurtleWoWDungeonsRaids()
	for instance,_ in GF_TurtleTriggerListDungeons do
		GF_TRIGGER_LIST.DUNGEON[instance] = GF_TurtleTriggerListDungeons[instance]
	end
	for instance,_ in GF_TurtleTriggerListQuests do
		GF_TRIGGER_LIST.QUEST[instance] = GF_TurtleTriggerListQuests[instance]
	end
	for i=1, getn(GF_TurtleTriggerListRaids) do
		table.insert(GF_TRIGGER_LIST.RAID, 1, GF_TurtleTriggerListRaids[i]);
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