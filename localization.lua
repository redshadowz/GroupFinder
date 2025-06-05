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
GF_12_MAN				= "12-man";
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
GF_HARDCORE_SEND_TEXT		= "Below is the message that gets announced to the Hardcore Channel"
GF_CHAT					= "Chat"
GF_MINIMAP				= "Minimap"
GF_NEW_ONLY				= "New only"
GF_SHOW					= "Show"
GF_SHOW_CHAT			= "Chat"
GF_SHOW_TRADES			= "Trades"
GF_SHOW_LOOT			= "Loots"
GF_SHOW_GUILDS			= "Guilds"
GF_PLAY_SOUND			= "Play sound"; -- Label for GF_PlaySoundOnResultsCheckButton
GF_CHAT_ON				= "Chat on"
GF_CHAT_OFF				= "Chat off"
GF_CHAT_GROUP_ON		= "Groups in chat, on"
GF_CHAT_GROUP_OFF		= "Groups in chat, off"

-- Log Filters
GF_LOG_AND_MONITOR		= "Logs "; -- Label at top of Log frame
GF_LOG_GROUP			= "Group"
GF_LOG_FILTERED			= "Filtered"
GF_LOG_CHAT				= "Chat"
GF_LOG_TRADES			= "Trades"
GF_LOG_GUILD			= "Guild"
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
GF_LOGGED_GUILD				= "[U] "; -- Text added to Log tab when a message is guild recruitment
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
GF_SHOW_HARDCORE		= "Hardcore";
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
	tooltip2 		= "When checked, guild recruitment messages will be shown. Otherwise they will be hidden." },
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
GF_HardCoreCheckButton = {
	tooltip1 		= "Show only hardcore groups", 
	tooltip2 		= "When checked, results will only include hardcore groups." },

GF_GroupsFrameDescriptionEditBox = { 
	tooltip1 		= "Search by keywords", 
	tooltip2 		= "Filters your group list by keywords. It will search by both text and dungeon nicknames(e.g. 'vc' will also search for dm/deadmines). Separate search terms with commas for multiple searches(e.g. dm,ubrs,scholo,mc,etc)." },

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
	tooltip2 		= "When checked, system spam from group invites, sharing quests, and monster emote/say messages will be hidden." },
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
GF_LogShowGuild = {
	tooltip1 		= "Show Guild",
	tooltip2 		= "Logs will include [U] Guild Recruitment Messages." },
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
["x"] = true,["iii"] = true,["iv"] = true,["vi"] = true,["vii"] = true,["viii"] = true,["ix"] = true,["speedrun"] = true,
}
GF_WORD_SECOND_SKIP = {
["a"] = true,["an"] = true,["for"] = true,["the"] = true,["to"] = true,["on"] = true,["do"] = true,
-- with/need/have/any/anyone, around/nearby/here... open/opened/opening... lfg/lfm/lf... if... at/in/on/by... top/behind/front/back... able capable willing... can/help... all... can... who will... your me my... some.. wanna want to... it is
-- offering selling sell, horde/alliance
}
GF_WORD_FIX = {
-- Full word replacement
["fora"] = "for",["foran"] = "for",["havea"] = "have",["havean"] = "have",["neededa"] = "needed",["needing"] = "need",["want"] = "need",["wants"] = "need",["needa"] = "need",["needan"] = "need",["wherethe"] = "need",["acn"] = "can",
["wanna"] = "needto",["wannna"] = "needto",["wonna"] = "needto",["wonnna"] = "needto",["needtodo"] = "letsdo",
["someone"] = "anyone",["somebody"] = "anyone",["sombody"] = "anyone",["anyfor"] = "anyone",["anykne"] = "anyone",["whofor"] = "anyonefor",["ane"] = "any",["seek"] = "lf",["inthe"] = "inthe",["ofthe"] = "ofthe",["andthe"] = "andthe",
["anynbody"] = "anyone",["anybody"] = "anyone",["somewho"] = "anyone",["somone"] = "anyone",["got"] = "have",
["available"] = "around",["avail"] = "around",["wana"] = "needto",["needtostart"] = "letsdo",
["party"] = "group",["groupof"] = "group",["pug"] = "group",["pugs"] = "group",["parti"] = "group",["paty"] = "group",["team"] = "group",["teams"] = "group",["partnerup"] = "group",["askfor"] = "lf",["also"] = "else",["to"] = "to",["on"] = "on",["for"] = "for",
["hunt"] = "hunter",["ally"] = "alliance",["gonna"] = "goingto",["goingto"] = "goingto",["gokill"] = "group",["inguild"] = "guild",["toguild"] = "guild",
["buya"] = "buy",["buyinga"] = "buying",["sella"] = "sell",["sellinga"] = "selling",["tradea"] = "trade",["tradinga"] = "trading",["applya"] = "apply",["attacha"] = "apply",["makea"] = "make",["makinga"] = "make",
["buyan"] = "buy",["buyingan"] = "buying",["sellan"] = "sell",["sellingan"] = "selling",["tradean"] = "trade",["tradingan"] = "trading",["applyan"] = "apply",["attachan"] = "apply",["makean"] = "make",["makingan"] = "making",
["geta"] = "get",["createa"] = "create",["enchanta"] = "enchant",["offera"] = "offer",["cana"] = "can",["willa"] = "will",["hosta"] = "host",["forma"] = "form",["starta"] = "start",["startinga"] = "start",["gathera"] = "gather",
["getan"] = "get",["createan"] = "create",["enchantan"] = "enchant",["offeran"] = "offer",["canan"] = "can",["willan"] = "will",["hostan"] = "host",["forman"] = "form",["startan"] = "start",["startingan"] = "start",["gatheran"] = "gather",
["helpme"] = "help",["helpmy"] = "help",["thiefboss"] = "rogue",["online"] = "around",["buyingportal"] = "buyportal",["taxi"] = "summon",["install"] = "apply",["attach"] = "apply",["aclan"] = "guild",
["acouple"] = "couple",["afew"] = "few",["couplelockbox"] = "lockbox",["fewlockbox"] = "lockbox",["crackedopen"] = "open",["invitein"] = "invite",["invitefor"] = "invite",["instance"] = "dungeon",["instances"] = "dungeon",
["poplockbox"] = "openlockbox",["youre"] = "youare",["mission"] = "quest",["getportal"] = "needportal",["preemptivedonations"] = "selling",["assist"] = "help",
["onebox"] = "box",["twobox"] = "box",["threebox"] = "box",["fourbox"] = "box",["onelockbox"] = "lockbox",["twolockbox"] = "lockbox",["threelockbox"] = "lockbox",["fourlockbox"] = "lockbox",

["leveljewelcrafter"] = "jewelcrafter",["decentjewelcrafter"] = "jewelcrafter",["waterlords"] = "hydraxian",["waterlord"] = "hydraxian",["hydraxianhydraxian"] = "hydraxian",
["levelblacksmith"] = "blacksmith",["levelleatherworker"] = "leatherworker",["leveltailor"] = "tailor",["levelalchemy"] = "alchemy",["levelenchant"] = "enchant",["levelengineer"] = "engineer",

["starting"] = "start",["making"] = "make",["creating"] = "create",["hosting"] = "host",["forming"] = "form",["gathering"] = "gather",
["sp"] = "spelldamage",["spellpower"] = "spelldamage",["healpower"] = "spelldamage",["healingpower"] = "heal",
["arcanepower"] = "spelldamage",["shadowpower"] = "spelldamage",["naturepower"] = "spelldamage",["power"] = "spelldamage",["firepower"] = "spelldamage",["frostpower"] = "spelldamage",

["elitein"] = "elite",["questin"] = "quest",["farmin"] = "farm",
["buckle"] = "beltbuckle",["beltbeltbuckle"] = "beltbuckle",

["onehand"] = "weapon",["twohand"] = "weapon",["onehanded"] = "weapon",["twohanded"] = "weapon",
["onring"] = "ring",["onhead"] = "head",["ongloves"] = "gloves",["onlegs"] = "legs",["onboots"] = "boots",["oncloak"] = "cloak",["onwrist"] = "wrist",["onbelt"] = "belt",["onbeltbuckle"] = "beltbuckle",["onweapon"] = "weapon",["onshield"] = "shield",
["onhand"] = "hand",["ontwohand"] = "hand",["onchest"] = "chest",["onneck"] = "neck",
["forring"] = "ring",["forhead"] = "head",["forgloves"] = "gloves",["forlegs"] = "legs",["forboots"] = "boots",["forcloak"] = "cloak",["forwrist"] = "wrist",["forbelt"] = "belt",["forbeltbuckle"] = "beltbuckle",["forweapon"] = "weapon",["forshield"] = "shield",
["forchest"] = "chest",["forneck"] = "neck",["forhand"] = "hand",["fortwohand"] = "hand",["fortwohand"] = "hand",
["toring"] = "ring",["tohead"] = "head",["togloves"] = "gloves",["tolegs"] = "legs",["toboots"] = "boots",["tocloak"] = "cloak",["towrist"] = "wrist",["tobelt"] = "belt",["tobeltbuckle"] = "beltbuckle",["toweapon"] = "weapon",["toshield"] = "shield",
["tochest"] = "chest",["toneck"] = "neck",["tohand"] = "hand",["totwohand"] = "hand",
["tlring"] = "ring",["tlhead"] = "head",["tlgloves"] = "gloves",["tllegs"] = "legs",["tlboots"] = "boots",["tlcloak"] = "cloak",["tlwrist"] = "wrist",["tlbelt"] = "belt",["tlbeltbuckle"] = "beltbuckle",["tlweapon"] = "weapon",["tlshield"] = "shield",
["tlchest"] = "chest",["tlneck"] = "neck",["tlhand"] = "hand",["tltwohand"] = "hand",
["thering"] = "ring",["thehead"] = "head",["thegloves"] = "gloves",["thelegs"] = "legs",["theboots"] = "boots",["thecloak"] = "cloak",["thewrist"] = "wrist",["thebelt"] = "belt",["thebeltbuckle"] = "beltbuckle",["theweapon"] = "weapon",["theshield"] = "shield",
["thechest"] = "chest",["theneck"] = "neck",["thehand"] = "hand",["thetwohand"] = "hand",
["myring"] = "ring",["myhead"] = "head",["mygloves"] = "gloves",["mylegs"] = "legs",["myboots"] = "boots",["mycloak"] = "cloak",["mywrist"] = "wrist",["mybelt"] = "belt",["mybeltbuckle"] = "beltbuckle",["myweapon"] = "weapon",["myshield"] = "shield",
["myhand"] = "hand",["mytwohand"] = "hand",["mychest"] = "chest",["myneck"] = "neck",
["atring"] = "ring",["athead"] = "head",["atgloves"] = "gloves",["atlegs"] = "legs",["atboots"] = "boots",["atcloak"] = "cloak",["atwrist"] = "wrist",["atbelt"] = "belt",["atbeltbuckle"] = "beltbuckle",["atweapon"] = "weapon",["atshield"] = "shield",
["athand"] = "hand",["attwohand"] = "hand",["atchest"] = "chest",["atneck"] = "neck",

["astormwind"] = "stormwind",["aironforge"] = "ironforge",["anif"] = "if",["adarnassus"] = "darnassus",["anorgrimmar"] = "orgrimmar",["anundercity"] = "undercity",["athunderbluff"] = "thunderbluff",["athunder"] = "thunder",
["ahyjal"] = "hyjal",["awinterspring"] = "winterspring",["aswamp"] = "swamp",["astonard"] = "stonard",["atheramore"] = "theramore",["analahthalas"] = "alahthalas",["anat"] = "at",

["druidfind"] = "group",["hunterfind"] = "group",["magefind"] = "group",["paladinfind"] = "group",["priestfind"] = "group",["roguefind"] = "group",["shamanfind"] = "group",["warlockfind"] = "group",["warriorfind"] = "group",
["adruid"] = "druid",["ahunter"] = "hunter",["amage"] = "mage",["apaladin"] = "paladin",["apriest"] = "priest",["arogue"] = "rogue",["ashaman"] = "shaman",["awarlock"] = "warlock",["awarrior"] = "warrior",
["somedruid"] = "druid",["somehunter"] = "hunter",["somemage"] = "mage",["somepaladin"] = "paladin",["somepriest"] = "priest",["somerogue"] = "rogue",["someshaman"] = "shaman",["somewarlock"] = "warlock",["somewarrior"] = "warrior",

-- Foreign
["encantamientodebotas"] = "enchantboots",["encantamientodeescudo"] = "enchantshield",["encantarbrazalete"] = "enchantwrist",
["encantamiento"] = "enchant",["encantar"] = "enchant",

-- Country Names
["cn"] = "chinese",["china"] = "chinese",["france"] = "french",["fra"] = "french",
["afghanistan"] = "afghani",["afghan"] = "afghani",["algeria"] = "algerian",["america"] = "american",["murica"] = "american",["murican"] = "american",
["argentinia"] = "argentine",["australian"] = "au",["australian"] = "au",["aussie"] = "au",["balkans"] = "balkan",["brasilian"] = "brazilian",["brasil"] = "brazilian",["brazil"] = "brazilian",["br"] = "brazilian",
["canada"] = "canadian",["canuck"] = "canadian",["canucks"] = "canadian",["canadia"] = "canadian",["chile"] = "chilean",["colombia"] = "colombian",["congo"] = "congolese",["cuba"] = "cuban",["cz"] = "czech",["denmark"] = "danish",
["thenetherlands"] = "dutch",["netherlands"] = "dutch",["thedutch"] = "dutch",["netherland"] = "dutch",["nederlands"] = "dutch",["nederland"] = "dutch",["egypt"] = "egyptian",["england"] = "english",["anglo"] = "english",["ethiopia"] = "ethiopian",
["europe"] = "eu",["european"] = "eu",["europa"] = "eu",["europeans"] = "eu",["finland"] = "finnish",["finn"] = "finnish",["finns"] = "finnish",
["greece"] = "greek",["hellenic"] = "greek",["helene"] = "greek",["germany"] = "german",["hungary"] = "hungarian",["india"] = "indian",["iran"] = "iranian",["iraq"] = "iraqi",
["ita"] = "italian",["italy"] = "ita",["japan"] = "japanese",["nippon"] = "japanese",["kazakhstan"] = "kazakh",["kenya"] = "kenyan",["korea"] = "korean",["lebanon"] = "lebanese",
["libya"] = "libyan",["malaysian"] = "malay",["malaysia"] = "malay",["mexico"] = "mexican",["mongolia"] = "mongolian",["morocco"] = "moroccan",["northamerican"] = "na",["northamerica"] = "na",["niger"] = "nigerian",["nordic"] = "nord",
["norway"] = "norwegian",["oceanic"] = "oce",["pakistan"] = "pakistani",["peru"] = "peruvian",["philippines"] = "filipino",["philippine"] = "filipino",["poland"] = "polish",["pl"] = "polish",["portugal"] = "portuguese",
["romania"] = "romanian",["ro"] = "romanian",["ru"] = "russian",["russia"] = "russian",["rus"] = "russian",["russkie"] = "russian",["ruskie"] = "russian",["rwanda"] = "rwandan",["somalia"] = "somalian",["somali"] = "somalian",["southafrican"] = "sa",
["esp"] = "spanish",["spain"] = "spanish",["iberian"] = "spanish",["iberia"] = "spanish",
["swede"] = "swedish",["sweden"] = "swedish",["syria"] = "syrian",["tajikistan"] = "tajik",["thailand"] = "thai",["turk"] = "turkish",["turkey"] = "turkish",["uganda"] = "ugandan",["ua"] = "ukrainian",["ukraine"] = "ukrainian",["uzbekistan"] = "uzbek",
["venezuela"] = "venezuelan",["vietnam"] = "vietnamese",["viet"] = "vietnamese",["yemen"] = "yemeni",["zimbabwe"] = "zimbabwean",

-- Misc words
["anyne"] = "anyone",["anny"] = "any",["anoyone"] = "anyone",["annyone"] = "anyone",["enyone"] = "anyone",["anyione"] = "anyone",["forr"] = "for",["onl"] = "only",["git"] = "get",["chilled"] = "chill",["bags"] = "bag",["zny"] = "any",
["yours"] = "your",["yer"] = "your",["ya"] = "your",["anyonw"] = "anyone",["anyon"] = "anyone",["anyoone"] = "anyone",["aynone"] = "anyone",["anyoneon"] = "anyone",["anygabo"] = "anyone",["anyyone"] = "anyone",["uzp"] = "up",["asking"] = "ask",
["needs"] = "need",["ned"] = "need",["neeed"] = "need",["rserved"] = "reserved",["reservd"] = "reserved",["resrved"] = "reserved",["ppl"] = "people",["players"] = "player",["wssg"] = "wsg",["wsgg"] = "wsg",["questions"] = "question",["specs"] = "spec",
["could"] = "can",["wat"] = "what",["jooin"] = "join",["joiin"] = "join",["joinn"] = "join",["jion"] = "join",["joinon"] = "join",["attaching"] = "apply",["attachin"] = "apply",["attachng"] = "apply",["toattach"] = "apply",["attached"] = "apply",["attachd"] = "apply",
["recipes"] = "recipe",["bindings"] = "binding",["legendaries"] = "legendary",["boes"] = "boes",["mounts"] = "mount",["graveyard"] = "gy",["gyy"] = "gy",["gravyard"] = "gy",["grave"] = "gy",["grav"] = "gy",["gyyard"] = "gy",["prot"] = "protection",
["doin"] = "doing",["alla"] = "all",["plz"] = "please",["pls"] = "please",["weeks"] = "week",["times"] = "time",["cresent"] = "crescent",["cres"] = "crescent",["crescant"] = "crescent",["cresant"] = "crescent",
["beginners"] = "beginner",["newbie"] = "beginner",["nub"] = "beginner",["nubs"] = "beginner",["noobs"] = "beginner",["newbs"] = "beginner",["newbies"] = "beginner",["noobie"] = "beginner",["noobies"] = "beginner",["mats"] = "mat",["matts"] = "mat",
["lel"] = "lol",["groove"] = "grove",["grve"] = "grove",["restro"] = "resto",["fore"] = "for",["forr"] = "for",["pvpers"] = "pvp",["pvper"] = "pvp",["sayin"] = "saying",
["moar"] = "more",["opeining"] = "opening",["opning"] = "opening",["opein"] = "open",["opena"] = "open",["openan"] = "open",["twinks"] = "twink",["lst"] = "last",["taletns"] = "taletns",["badges"] = "badge",["clothie"] = "cloth",["scyth"] = "scythe",
["prio"] = "priority",["appreciatedd"] = "appreciated",["ripped"] = "rip",["ripping"] = "rip",["rips"] = "rip",["scams"] = "scam",["scammed"] = "scam",["scamming"] = "scam",["vamp"] = "vampirism",["vamprism"] = "vampirism",
["mountains"] = "mountain",["skulls"] = "skull",["skullz"] = "skull",["skulz"] = "skull",["skullls"] = "skull",["intrested"] = "interested",["ignored"] = "ignored",["yelling"] = "yell",["applying"] = "apply",["applied"] = "apply",
["steek"] = "steel",["wings"] = "wing",["unlocking"] = "unlock",["unlock"] = "unlock",["availabe"] = "around",["avaiable"] = "around",["arund"] = "around",["poppers"] = "pop",["popper"] = "pop",["pops"] = "pop",["wordl"] = "world",["mythril"] = "mithril",
["installing"] = "apply",["installin"] = "apply",["installng"] = "apply",["toinstall"] = "apply",["installed"] = "apply",["installd"] = "apply",["arround"] = "around",["comission"] = "commission",["helpr"] = "help",
["discriminating"] = "discriminating",["descriminate"] = "discriminate",["descrimination"] = "discrimination",["rosters"] = "roster",["farming"] = "farm",["welcomes"] = "welcome",["welcomed"] = "welcome",["valey"] = "valley",["baggs"] = "bag",
["socila"] = "social",["experienced"] = "experience",["experiance"] = "experience",["experianced"] = "experience",["exp"] = "experience",["xp"] = "experience",["likk"] = "kill",["guardians"] = "guardian",
["trolls"] = "troll",["hours"] = "hour",["offering"] = "offer",["causual"] = "casual",["buffs"] = "buff",["requesting"] = "request",["voult"] = "vault",["mounth"] = "mount",["lock"] = "lock",["materials"] = "material",
["deathrolling"] = "deathroll",["midnite"] = "midnight",["sublety"] = "subtlety",["subelty"] = "subtlety",["subtlty"] = "subtlety",["subelty"] = "subtlety",["beaut"] = "beauty",["mst"] = "most",["bullys"] = "bully",["bullies"] = "bully",
["activ"] = "active",["living"] = "live",["roleplayer"] = "rp",["roleplayer"] = "rp",["knows"] = "know",["loking"] = "looking",["lookign"] = "looking",["options"] = "option",["forgets"] = "forget",["brained"] = "brain",
["escorting"] = "escort",["mobs"] = "mob",["turns"] = "turn",["u"] = "you",["rewards"] = "reward",["giver"] = "give",["givers"] = "give",["gives"] = "give",["suggestions"] = "suggestion",["patterns"] = "pattern",["champions"] = "champion",
["dropping"] = "drop",["dropper"] = "drop",["drops"] = "drop",["orges"] = "ogres",["tryingh"] = "trying",["ganking"] = "gank",["ganks"] = "gank",["gankin"] = "gank",["rememberer"] = "remember",["togheter"] = "together",["insterested "] = "interested",
["douses"] = "douse",["dousers"] = "douse",["dowse"] = "douse",["dowses"] = "douse",["dowsers"] = "douse",["strt"] = "start",["starts"] = "start",["tests"] = "test",["tst"] = "test",["trainers"] = "trainer",["chasam"] = "chasm",

["levelling"] = "leveling",["levelers"] = "leveling",["lvlers"] = "leveling",["lvling"] = "leveling",["lvlin"] = "leveling",["lvl"] = "level",["levlers"] = "leveling",["levling"] = "leveling",["leveel"] = "leveling",
["levl"] = "level",["lvel"] = "level",["levlin"] = "leveling",["lvelin"] = "leveling",["levln"] = "leveling",["lveln"] = "leveling",["lecel"] = "level",

["dkk"] = "dk",

-- Roles
["healz"] = "heal",["heals"] = "heal",["healer"] = "heal",["healers"] = "heal",["healere"] = "heal",["healre"] = "heal",["xheal"] = "heal",["mheal"] = "heal",["heaer"] = "heal",["healler"] = "heal",["heler"] = "heal",["offhealer"] = "heal",["offheal"] = "heal",
["hral"] = "heal",["hraler"] = "heal",["hralers"] = "heal",["hraling"] = "heal",["healup"] = "heal",["healin"] = "heal",["healaround"] = "heal",["healy"] = "heal",["healie"] = "heal",
["dmg"] = "damage",["dps"] = "damage",["dos"] = "damage",["dpss"] = "damage",["dd"] = "damage",["dds"] = "damage",["xdamage"] = "damage",["damagg"] = "damage",["mdamage"] = "damage",
["dpser"] = "damage",["dpsers"] = "damage",["damageup"] = "damage",["damagein"] = "damage",["damagearound"] = "damage",
["tanks"] = "tank",["mt"] = "tank",["ot"] = "tank",["tankd"] = "tank",["xtank"] = "tank",["mtank"] = "tank",["tnak"] = "tank",["tanmk"] = "tank",["tanking"] = "tank",["tankk"] = "tank",["tankup"] = "tank",["tankin"] = "tank",["tankaround"] = "tank",
["ranged"] = "range",["rdps"] = "range",["casters"] = "caster",["melees"] = "melee",["mdps"] = "melee",["stealthie"] = "stealth",["stealthy"] = "stealth",

-- Groups
["lookingfor"] = "lf",["lookinfor"] = "lf",["lookingformore"] = "lfm",["lfmore"] = "lfm",["lfgm"] = "lfm",["lfmm"] = "lfm",["glfm"] = "lfm",["glf"] = "lfm",["flm"] = "lfm",["ldg"] = "lfm",["lfp"] = "lfm",["lkf"] = "lfg",["flt"] = "lft",["rdf"] = "lft",
["lfms"] = "lfm",["lfmr"] = "lfm",["lkm"] = "lfm",["lgm"] = "lfm",["fg"] = "lfg",["lofg"] = "lfg",["flg"] = "lfg",["lgf"] = "lfg",["lfh"] = "lfg",["lg"] = "lfg",["glf"] = "lfg",["lrg"] = "lfg",["ldf"] = "lfg",
["lfq"] = "lfg",["lgb"] = "lfg",["lsg"] = "lfg",["lfb"] = "lfg",["lfa"] = "lf",["lfan"] = "lf",["lfparty"] = "lfg",["lgr"] = "lfr",["lfrg"] = "lfg",["kfg"] = "lfg",["ly"] = "lf",["lkfg"] = "lfg",["ylf"] = "lf",
["lfmenchant"] = "lfenchant",["lfmenhancement"] = "lfenhancement",["lfmleatherworker"] = "lfleatherworker",["lfmtailor"] = "lftailor",["lfmblacksmith"] = "lfblacksmith",
["lfmengineer"] = "lfengineer",["lfmalchemist"] = "lfalchemist",["lfmjewelcrafter"] = "lfjewelcrafter",
["lfgenchant"] = "lfenchant",["lfgenhancement"] = "lfenhancement",["lfgleatherworker"] = "lfleatherworker",["lfgtailor"] = "lftailor",["lfgblacksmith"] = "lfblacksmith",
["lfgengineer"] = "lfengineer",["lfgalchemist"] = "lfalchemist",["lfgjewelcrafter"] = "lfjewelcrafter",
["searchingfor"] = "lf",

["grp"] = "group",["grps"] = "group",["groups"] = "group",["grup"] = "group",["hquest"] = "quest",["quests"] = "quest",["questing"] = "quest",["quets"] = "quest",["qujests"] = "quest",["tasks"] = "task",
["raids"] = "raid",["raiding"] = "raid",["rading"] = "raid",["rlading"] = "raid",["dung"] = "dungeon",["dung"] = "dungeon",["dungeons"] = "dungeon",["dungen"] = "dungeon",["dungens"] = "dungeon",["reputation"] = "rep",["reput"] = "rep",
["bosses"] = "boss",["runs"] = "run",["grinds"] = "grind",["farms"] = "farm",
["queueing"] = "queue",["queues"] = "queue",["que"] = "queue",["q"] = "queue",["qeue"] = "queue",["qs"] = "queue",["qeues"] = "queue",["queueup"] = "queue",["queueitup"] = "queue",["queued"] = "queue",["qued"] = "queue",
["bgs"] = "bg",["battlegrounds"] = "battleground",["bgs"] = "bg",["premdae"] = "premade",
["repfarm"] = "repfarm",["repgroup"] = "repfarm",["reprun"] = "repfarm",["repgrind"] = "repfarm",["perfarm"] = "repfarm",
["ccfarm"] = "repfarm",["ccgroup"] = "repfarm",["ccrun"] = "repfarm",["ccgrind"] = "repfarm",
["farmgroup"] = "repfarm",["farmrun"] = "repfarm",["combattack"] = "combattask",["combattacks"] = "combattask",
["badgegroup"] = "badgefarm",["badgerun"] = "badgefarm",["badgegrind"] = "badgefarm",
["raidboss"] = "worldboss",["worlddragon"] = "worldboss",["wboss"] = "worldboss",["wbosses"] = "worldboss",["allwing"] = "questrun",

["elites"] = "elite",["elit"] = "elite",["leet"] = "elite",["leets"] = "elite",["eliteq"] = "elite",["elitequest"] = "elite",["elitezone"] = "elite",["elitequeue"] = "elite",["elitue"] = "elite",
["elire"] = "elite",["elits"] = "elite",["eilte"] = "elite",["elete"] = "elite",["eletes"] = "elite",

-- Professions
["bs"] = "blacksmith",["blacksmither"] = "blacksmith",["blacksmithing"] = "blacksmith",["hammersmith"] = "blacksmith",["swordsmith"] = "blacksmith",["blacmiting"] = "blacksmith",["smelting"] = "smelt",["locksmith"] = "lockbox",["locksmithing"] = "lockbox",
["axesmith"] = "blacksmith",["armorsmith"] = "blacksmith",["armorsmithing"] = "blacksmith",["weaponsmith"] = "blacksmith",["goldsmith"] = "blacksmith",["blacksmiths"] = "blacksmith",
["blacsmiting"] = "blacksmith",["blacksmiting"] = "blacksmith",["blacksmithw"] = "blacksmith",["bsmith"] = "blacksmith",
["chant"] = "enchant",["ench"] = "enchant",["encht"] = "enchant",["enchants"] = "enchant",["chanter"] = "enchant",["enchanter"] = "enchant",["enchanters"] = "enchant",["ecnharter"] = "enchant",
["enchjanter"] = "enchant",["echnater"] = "enchant",["enchanting"] = "enchant",["henchant"] = "enchant",["encahnter"] = "enchant",["enchater"] = "enchant",["inchant"] = "enchant",["enchenter"] = "enchant",
["eanchat"] = "enchant",["enganter"] = "enchant",["echanter"] = "enchant",["enhancements"] = "enhancement",["enhancer"] = "enhancement",["encahtner"] = "enchant",["enhanter"] = "enchant",["encahnting"] = "enchant",
["enchat"] = "enchant",["enchantement"] = "enchant",["encchanter"] = "enchant",["enchantor"] = "enchant",["encanhter"] = "enchant",["enthanter"] = "enchant",["enchantere"] = "enchant",["enchantw"] = "enchant",
["ehcnater"] = "enchant",["anenchant"] = "anyenchant",["entchanter"] = "enchant",["enhcanter"] = "enchant",["nechanting"] = "enchant",["ecnhcanter"] = "enchant",["ecnahter"] = "enchant",["enchanted"] = "enchant",
["tailoring"] = "tailor",["tailorer"] = "tailor",["tailorere"] = "tailor",["lw"] = "leatherworker",["letherworker"] = "leatherworker",["leatherworking"] = "leatherworker",["leatherworkerw"] = "leatherworker",
["lwer"] = "leatherworker",["leatherer"] = "leatherworker",["leather"] = "leatherworker",["leatherwork"] = "leatherworker",
["eng"] = "engineer",["engi"] = "engineer",["engis"] = "engineer",["engenier"] = "engineer",["engener"] = "engineer",["enginer"] = "engineer",["engineerw"] = "engineer",["engineering"] = "engineer",
["alcemist"] = "alchemist",["alchy"] = "alchemist",["alch"] = "alchemist",["alc"] = "alchemist",["alchemy"] = "alchemist",["alchmy"] = "alchemist",["alcemy"] = "alchemist",["alchemistw"] = "alchemist",["alchemst"] = "alchemist",
["potions"] = "potion",["elixirs"] = "elixir",["jwl"] = "jewel",["jwel"] = "jewel",["jewl"] = "jewel",
["agi"] = "agility",["agil"] = "agility",["gai"] = "agility",["aggi"] = "agility",["agilgity"] = "agility",["dexterity"] = "agility",["agiltiy"] = "agility",["str"] = "strength",["spir"] = "spirit",
["stam"] = "stamina",["stami"] = "stamina",["stm"] = "stamina",["int"] = "intellect",["intel"] = "intellect",["intelect"] = "intellect",["hp"] = "health",
["hlth"] = "health",["chains"] = "chain",["def"] = "defense",["defensive"] = "defense",["hands"] = "hand",["hander"] = "hand",["glv"] = "gloves",["golves"] = "gloves",["glove"] = "gloves",["chst"] = "chest",["chests"] = "chest",
["shoulders"] = "shoulder",["trinkets"] = "trinket",["waist"] = "belt",["brc"] = "wrist",["wri"] = "wrist",["wrists"] = "wrist",["bracer"] = "wrist",["bracers"] = "wrist",["bracelet"] = "wrist",["brac"] = "wrist",
["braclet"] = "wrist",["bracelets"] = "wrist",["rings"] = "ring",["aring"] = "ring",["myring"] = "ring",["myrings"] = "ring",["clk"] = "cloak",["gems"] = "gem",["gemstones"] = "gemstone",["spikes"] = "spike",

["boot"] = "boots",["wep"] = "weapon",["weap"] = "weapon",["weapn"] = "weapon",["hweapon"] = "weapon",["weapons"] = "weapon",["leg"] = "legs",["pants"] = "legs",["lifelegs"] = "healthlegs",["minorspeedbots"] = "minorspeedboots",["minorspeedbot"] = "minorspeedboots",
["helm"] = "head",["helmet"] = "head",["heads"] = "head",["finger"] = "ring",["fingers"] = "ring",["buckles"] = "buckle",["buckel"] = "buckle",["bucle"] = "buckle",["bucklet"] = "buckle",
["attackpower"] = "ap",["herbalism"] = "herb",["fishing"] = "fish",["mining"] = "mine",["skinning"] = "skin",
["fres"] = "fr",["frres"] = "fr",["nres"] = "nr",["sres"] = "sr",["ares"] = "ar",["fireres"] = "fr",["frostres"] = "fr",["natureres"] = "nr",["shadowres"] = "sr",["arcaneres"] = "ar",
["fireresist"] = "fr",["frostresist"] = "fr",["natureresist"] = "nr",["shadowresist"] = "sr",["arcaneresist"] = "ar",
["hagility"] = "agility",["hstrength"] = "strength",["hdamage"] = "damage",["hheal"] = "heal",["hspirit"] = "spirit",["hintellect"] = "intellect",["xhitem"] = "hitem",["xhquest"] = "quest",

-- Trades
["transmutes"] = "transmute",["transmut"] = "transmute",["trasmute"] = "transmute",["trasmutes"] = "transmute",["arcanite"] = "arcane",["arcan"] = "arcane",["arcbar"] = "arcane",["xmute"] = "transmute",["xmutes"] = "transmute",
["sum"] = "summon",["summ"] = "summon",["summons"] = "summon",["summoning"] = "summon",["summmons"] = "summon",["summs"] = "summon",["summing"] = "summon",["summin"] = "summon",["summv"] = "summon",["sums"] = "summon",["sumun"] = "summon",
["sumon"] = "summon",["summe"] = "summon",["summonot"] = "summonto",["summonin"] = "summonto",["summonfor"] = "summonto",["summonup"] = "cansummon",["summoner"] = "summon",["summoners"] = "summon",["sumoon"] = "summon",
["tp"] = "portal",["prtal"] = "portal",["portl"] = "portal",["port"] = "portal",["ports"] = "portal",["teleport"] = "portal",["teleporting"] = "portal",["teleportation"] = "portal",["protal"] = "portal",["porta"] = "portal",["portals"] = "portal",
["mageportal"] = "portal",["portaltothe"] = "portal",["portalthe"] = "portal",["portalto"] = "portal",["portalfor"] = "portal",["portalot"] = "portal",["porrt"] = "portal",["portalin"] = "portal",
["picker"] = "pick",["pickerw"] = "pick",["picking"] = "pick",["locking"] = "lock",["locker"] = "lock",["lp"] = "lockbox",["alockbox"] = "lockbox",["lockboxes"] = "lockbox",["lockboxxes"] = "lockbox",["lockpick"] = "lockbox",["lockp"] = "lockbox",
["lockpicker"] = "lockbox",["lockpicking"] = "lockbox",["picklock"] = "lockbox",["picklocker"] = "lockbox",["pickinglock"] = "lockbox",["locboxes"] = "lockbox",["locbox"] = "lockbox",["lockboxs"] = "lockbox",["quickunlock"] = "unlock",["fastunlock"] = "unlock",
["lootbox"] = "lockbox",["lootboxes"] = "lockbox",["boxes"] = "lockbox",["boxesd"] = "lockbox",["boxxed"] = "lockbox",["boxxes"] = "lockbox",["junkbox"] = "lockbox",["locked"] = "lock",["loxbox"] = "lockbox",["locklockbox"] = "lockbox",["nlock"] = "unlock",["lockipick"] = "unlock",
["lockedchest"] = "lockbox",["familyjewels"] = "lockbox",["batteredchest"] = "lockbox",["batteredbox"] = "lockbox",["batteredlockbox"] = "lockbox",
["ornatebronze"] = "ornatebronze",["heavybronze"] = "heavybronze",["strongiron"] = "strongiron",["reinforcedsteel"] = "reinforcedsteel",
["resistance"] = "resist",["resistances"] = "resist",["resi"] = "resist",["ressist"] = "resist",["lifestealing"] = "lifesteal",["crus"] = "crusader",["crusaders"] = "crusader",["firey"] = "fiery",
["wttb"] = "wtb",["wtbx"] = "wtb",["wtts"] = "wts",["wtsx"] = "wts",["wtbb"] = "wtb",["wtss"] = "wts",["wttt"] = "wtt",["wttx"] = "wtt",["wtsh"] = "wts",["wtv"] = "wtb",["wrb"] = "wtb",["wfb"] = "wtb",["ltb"] = "wtb",["wbt"] = "wtb",["wyb"] = "wtb",
["sellin"] = "selling",["sellinf"] = "selling",["selll"] = "sell",["sellg"] = "selling",["sellers"] = "seller",["salesman"] = "seller",["buyg"] = "buying",["services"] = "service",["prices"] = "price",
["working"] = "work",["tips"] = "tip",["tipp"] = "tip",["tipper"] = "tip",["tipps"] = "tip",["tippers"] = "tip",["crafting"] = "crafter",["crafted"] = "crafter",["auct"] = "ah",["auc"] = "ah",
["boosting"] = "boost",["booster"] = "boost",["boosts"] = "boost",["bosst"] = "boost",["carrying"] = "carry",["fortunes"] = "fortune",["sercives"] = "service",["sercive"] = "service",["cd"] = "cooldown",["cds"] = "cooldown",["alchemisttable"] = "alchemistlab",
["needotbuy"] = "wtb",["needotsell"] = "wts",["needottrade"] = "wtt",
["needotjoin"] = "needtojoin",["needotqueue"] = "needtoqueue",["needotfind"] = "needtofind",["needotgo"] = "needtogo",["needothelp"] = "needtohelp",["needotgroup"] = "needtogroup",["needotraid"] = "needtoraid",["needotcome"] = "needtocome",
["needotquest"] = "needtoquest",["needotfarm"] = "needtofarm",["needotkill"] = "needtokill",["needotrun"] = "needtorun",["needotunlock"] = "needtounlock",["needotopen"] = "needtoopen",["needotbe"] = "needtobe",

-- Locations
["sw"] = "stormwind",["stw"] = "stormwind",["stormwin"] = "stormwind",["stormwnd"] = "stormwind",["strmwind"] = "stormwind",
["tb"] = "thunderbluff",["irongforge"] = "ironforge",["darn"] = "darnassus",["darnasus"] = "darnassus",
["uc"] = "undercity",["undercitry"] = "undercity",["undercirty"] = "undercity",
["org"] = "orgrimmar",["orgr"] = "orgrimmar",["orgri"] = "orgrimmar",["og"] = "orgrimmar",["ogri"] = "orgrimmar",["orgtimar"] = "orgrimmar",["ogrimmar"] = "orgrimmar",["ogrimar"] = "orgrimmar",

["arathihighlinds"] = "arathihighlands",["hghlands"] = "highlands",["highlinds"] = "highlands",["arati"] = "arathi",
["azhara"] = "azshara",["ashara"] = "azshara",
["blastedland"] = "blastedlands",
["dustwallor"] = "dustwallow",
["hilsbrad"] = "hillsbrad",["hillsbard"] = "hillsbrad",["hillsbrand"] = "hillsbrad",["inhillsbrad"] = "hillsbrad",
["hinterland"] = "hinterlands",["hinderland"] = "hinterlands",["hiterlands"] = "hinterlands",["hiterland"] = "hinterlands",["hinderlands"] = "hinterlands",["hinerlands"] = "hinterlands",
["hinnterlands"] = "hinterlands",["hhinterlands"] = "hinterlands",["hinterlnds"] = "hinterlands",["hunterlands"] = "hinterlands",
["thehinterlands"] = "hinterlands",["hitterlands"] = "hinterlands",["hitterland"] = "hinterlands",["hinterladns"] = "hinterlands",["hinterladn"] = "hinterlands",["hitherland"] = "hinterlands",
["redrige"] = "redridge",["redrodge"] = "redridge",["reddrige"] = "redridge",["redredge"] = "redridge",["rr"] = "redridge",
["silithis"] = "silithus",["silithid"] = "silithus",
["strangethorn"] = "stranglethorn",["stranglthorn"] = "stranglethorn",["stranglethrn"] = "stranglethorn",["strangthorn"] = "stranglethorn",["strangethrn"] = "stranglethorn",
["thersmore"] = "theramore",["theramor"] = "theramore",["theraore"] = "theramore",["thera"] = "theramore",["theramoreisland"] = "theramore",["thermore"] = "theramore",["teramore"] = "theramore",
["wester"] = "western",["plaguages"] = "plaguelands",
["wetland"] = "wetlands",
["wintersp"] = "winterspring",

-- Areas
["highelfzone"] = "thalassianhighlands",

-- In/The Location
["inalterac"] = "alterac",["inarathi"] = "arathi",["inashenvale"] = "ashenvale",["inauberdine"] = "auberdine",["inazshara"] = "azshara",["inbadlands"] = "badlands",["inbarrens"] = "barrens",["inblastedlands"] = "blastedlands",
["incenarion"] = "cenarion",["indarkshore"] = "darkshore",["indarkshire"] = "darkshire",["indeadwind"] = "deadwind",["indesolace"] = "desolace",["indunmorogh"] = "dunmorogh",["indurotar"] = "durotar",["induskwood"] = "duskwood",
["industwallow"] = "dustwallow",["inepl"] = "epl",["infeathermoon"] = "feathermoon",["inferalas"] = "feralas",["inhinterlands"] = "hinterlands",["inhjyal"] = "hjyal",["inlakeshire"] = "lakeshire",["inloch"] = "loch",
["inlochmodan"] = "lochmodan",["inmoonglade"] = "moonglade",["inmulgore"] = "mulgore",["inredridge"] = "redridge",["insearinggorge"] = "searinggorge",["insilithus"] = "silithus",["insilverpine"] = "silverpine",["insos"] = "sos",
["instonetalon"] = "stonetalon",["instranglethorn"] = "stranglethorn",["instv"] = "stv",["inswamp"] = "swamp",["intanaris"] = "tanaris",["inteldrassil"] = "teldrassil",["intheramore"] = "theramore",["inthousandneedles"] = "thousandneedles",
["inkneedles"] = "kneedles",["intirisfal"] = "tirisfal",["inungoro"] = "ungoro",["invalleyofspears"] = "valleyofspears",["inwestfall"] = "westfall",["inwetlands"] = "wetlands",["inwinterspring"] = "winterspring",["inwpl"] = "wpl",

["thealterac"] = "alterac",["thearathi"] = "arathi",["theashenvale"] = "ashenvale",["theauberdine"] = "auberdine",["theazshara"] = "azshara",["thebadlands"] = "badlands",["thebarrens"] = "barrens",["theblastedlands"] = "blastedlands",
["thecenarion"] = "cenarion",["thedarkshore"] = "darkshore",["thedarkshire"] = "darkshire",["thedeadwind"] = "deadwind",["thedesolace"] = "desolace",["thedunmorogh"] = "dunmorogh",["thedurotar"] = "durotar",["theduskwood"] = "duskwood",
["thedustwallow"] = "dustwallow",["theepl"] = "epl",["thefeathermoon"] = "feathermoon",["theferalas"] = "feralas",["thehinterlands"] = "hinterlands",["thehjyal"] = "hjyal",["thelakeshire"] = "lakeshire",["theloch"] = "loch",
["thelochmodan"] = "lochmodan",["themoonglade"] = "moonglade",["themulgore"] = "mulgore",["theredridge"] = "redridge",["thesearinggorge"] = "searinggorge",["thesilithus"] = "silithus",["thesilverpine"] = "silverpine",["thesos"] = "sos",
["thestonetalon"] = "stonetalon",["thestranglethorn"] = "stranglethorn",["thestv"] = "stv",["theswamp"] = "swamp",["thetanaris"] = "tanaris",["theteldrassil"] = "teldrassil",["thetheramore"] = "theramore",["thethousandneedles"] = "thousandneedles",
["thekneedles"] = "kneedles",["thetirisfal"] = "tirisfal",["theungoro"] = "ungoro",["thevalleyofspears"] = "valleyofspears",["thewestfall"] = "westfall",["thewetlands"] = "wetlands",["thewinterspring"] = "winterspring",["thewpl"] = "wpl",

-- Other locations
["anyoneinsv"] = "anyoneinstv",["anyoneinhl"] = "anyonehinterlands",["anyoneinthehl"] = "anyonehinterlands",["anyonethehl"] = "anyonehinterlands",["hinter"] = "hinterlands",

-- Classes
["drood"] = "druid",["droods"] = "druid",["driud"] = "druid",["druids"] = "druid",["rdruid"] = "druid",["boomkin"] = "druid",["boomie"] = "druid",["boomies"] = "druid",
["hutner"] = "hunter",["hunters"] = "hunter",["bmhunter"] = "hunter",["mmhunter"] = "hunter",
["paly"] = "paladin",["pala"] = "paladin",["pally"] = "paladin",["pallie"] = "paladin",["pallies"] = "paladin",["healadin"] = "paladin",["paladins"] = "paladin",["hpaladin"] = "paladin",["hpally"] = "paladin",["retpally"] = "paladin",
["mages"] = "mage",["frostmage"] = "mage",["firemage"] = "mage",["arcanemage"] = "mage",["sexymage"] = "mage",
["preist"] = "priest",["priests"] = "priest",["spriest"] = "priest",["hpriest"] = "priest",
["rogues"] = "rogue",["rog"] = "rogue",["roges"] = "rogue",["rouge"] = "rogue",["rouges"] = "rogue",["roge"] = "rogue",["roguer"] = "rogue",["subrogue"] = "rogue",
["combatrogue"] = "rogue",["roue"] = "rogue",["rogeu"] = "rogue",["rogs"] = "rogue",["roggy"] = "rogue",
["shammy"] = "shaman",["shammies"] = "shaman",["rsham"] = "shaman",["enhsham"] = "shaman",["enhshaman"] = "shaman",["elesham"] = "shaman",["eleshaman"] = "shaman",
["warlocks"] = "warlock",["walrock"] = "warlock",["locks"] = "lock",["lcoks"] = "lock",["lcok"] = "lock",["lockk"] = "lock",
["warriors"] = "warrior",["warior"] = "warrior",["wariors"] = "warrior",["furywar"] = "warrior",["furywars"] = "warrior",["protwar"] = "warrior",["protwars"] = "warrior",["armswar"] = "warrior",["armswars"] = "warrior",

["restoshaman"] = "shaman",["enhanceshaman"] = "shaman",["enhancementshaman"] = "shaman",["elementalshaman"] = "shaman",
["feraldruid"] = "druid",["kittydruid"] = "druid",["beardruid"] = "druid",["restodruid"] = "druid",["balancedruid"] = "druid",["rdru"] = "druid",
["shadowpriest"] = "priest",["holypriest"] = "priest",["discpriest"] = "priest",["disciplinepriest"] = "priest",
["protpaladin"] = "paladin",["protpally"] = "paladin",["retpaladin"] = "paladin",["holypaladin"] = "paladin",["retributionpaladin"] = "paladin",["protectionpaladin"] = "paladin",
["assassinationrogue"] = "rogue",
["markshunter"] = "hunter",["marksmanhunter"] = "hunter",["marksmanshiphunter"] = "hunter",["survhunter"] = "hunter",["survivalhunter"] = "hunter",
["furywarrior"] = "warrior",["protwarrior"] = "warrior",["armswarrior"] = "warrior",["protectionwarrior"] = "warrior",
["afflictionwarlock"] = "warlock",["afflictionlock"] = "warlock",["afflicwarlock"] = "warlock",["demonologywarlock"] = "warlock",["demowarlock"] = "warlock",["demolock"] = "warlock",["destruction"] = "warlock",["destrolock"] = "warlock",["destrowarlock"] = "warlock",

-- Pet
["vw"] = "voidwalker",["succu"] = "succubus",

-- Guild recruitment related
["rekrutuje"] = "recruiting",["recrutar"] = "recruiting",["recrute"] = "recruiting",["recruting"] = "recruiting",["recuiting"] = "recruiting",
["aguild"] = "guild",["guilds"] = "guild",["gildia"] = "guild",["gilda"] = "guild",["guilde"] = "guild",["Gildiy"] = "guild",["gildiyu"] = "guild",["gildenmitglieder"] = "guild",["gildii"] = "guild",["gildiu"] = "guild",
["gildiya"] = "guild",["gildiyi"] = "guild",["gild"] = "guild",["guldia"] = "guild",["guilda"] = "guild",["guil"] = "guild",["gildosi"] = "guild",["guile"] = "guild",["giuld"] = "guild",["duild"] = "guild",
["progresowania"] = "progression",["progresar"] = "progression",["progreso"] = "progression",["progresshez"] = "progression",["prog"] = "progression",["progress"] = "progression",
["komunity"] = "community",["komunite"] = "community",["komunita"] = "community",["comunidad"] = "community",["comunidade"] = "community",["companheiros"] = "community",["kinship"] = "community",["compaeros"] = "community",["communities"] = "community",
["ambiance"] = "ambience",["ambient"] = "ambience",["ambient"] = "ambience",["socials"] = "social",["eventos"] = "events",
["amigos"] = "friends",["actieve"] = "active",["nederlands"] = "dutch",["nederlandse"] = "dutch",["aktivity"] = "activity",
["inv"] = "invite",["ginv"] = "ginvite",

["ofrecemoscontenido"] = "clearingcontent",

-- Quests
["morben"] = "morbent",["ladin"] = "ladim",["garak"] = "grark",["barow"] = "barov",
["jinthalor"] = "jinthaalor",["jinthaatol"] = "jinthaalor",["jinthaator"] = "jinthaalor",["jinhacity"] = "jinthaalor",["jintaalor"] = "jinthaalor",["hidraxian"] = "hydraxian",["hydrax"] = "hydraxian",["hydraxis"] = "hydraxian",["hidraxy"] = "hydraxian",
["stormgarde"] = "stromgarde",["stormgard"] = "stromgarde",["stormguard"] = "stromgarde",["stromguard"] = "stromgarde",["smonus"] = "somnus",["duks"] = "dukes",
["bagthera"] = "bhagthera",["bajkteera"] = "bhagthera",["baghtira"] = "bhagthera",["princes"] = "princess",
["noz"] = "nozdormu",["obsidon"] = "obsidion",["tf"] = "thunderfury",["tf"] = "thunderfury",["frostmauls"] = "frostmaul",["aquamentas"] = "aquementas",["aquamentos"] = "aquementas",["restofskull"] = "testofskull",
["summonduke"] = "silithusdukes",["summondukes"] = "silithusdukes",["summonlord"] = "silithuslords",["summonlords"] = "silithuslords",
["dukessummon"] = "silithusdukes",["dukesummon"] = "silithusdukes",["lordsummon"] = "silithuslords",["lordssummon"] = "silithuslords",
["onyxiaquest"] = "onyxiaattunement",["onyxiaprequest"] = "onyxiaattunement",["onyxiaattunement"] = "onyxiaattunement",["onyquest"] = "onyxiaattunement",["onyprequest"] = "onyxiaattunement",["onyattunement"] = "onyxiaattunement",
["theprincesstrapped"] = "theprincesstrapped",["summontheprincess"] = "summontheprincess",["olsnooty"] = "olsooty",

-- Dungeons
["rfch"] = "rfc",["rfcd"] = "rfc",["rfchasm"] = "rfc",["rangefire"] = "ragefire",["ragfire"] = "ragefire",["ragefir"] = "ragefire",["rf"] = "rfc",["rfcf"] = "rfc",["rffc"] = "rfc",["rrfc"] = "rfc",
["rfcx"] = "rfc",["rcf"] = "rfc",["rgc"] = "rfc",["rfv"] = "rfc",["ragefirechasmers"] = "rfc",["rcgroup"] = "rfc",["grouprc"] = "rfc",
["deadmine"] = "deadmines",["dedmines"] = "deadmines",["dedmine"] = "deadmines",["deathmine"] = "deadmines",["deathmines"] = "deadmines",["vc"] = "deadmines",["vancleef"] = "deadmines",["dms"] = "dm",
["deadmies"] = "deadmines",["deadmindes"] = "deadmines",["deaadmines"] = "deadmines",["deammine"] = "deadmines",["deammines"] = "deadmines",["deanmine"] = "deadmines",["deanmines"] = "deadmines",
["deamines"] = "deadmines",["deadmmines"] = "deadmines",["deamines"] = "deadmines",["deadmins"] = "deadmines",["dmines"] = "deadmines",["dmine"] = "deadmines",
["twc"] = "wc",["waling"] = "wailing",["walling"] = "wailing",["vailing"] = "wailing",["wailling"] = "wailing",["waililing"] = "wailing",["wailign"] = "wailing",
["cavs"] = "caverns",["cavern"] = "caverns",["cave"] = "caverns",["caves"] = "caverns",["cavers"] = "caverns",["caverne"] = "caverns",["carverns"] = "caverns",["cavernes"] = "caverns",["canverns"] = "caverns",
["stockades"] = "stockade",["stockede"] = "stockade",["stocakde"] = "stockade",["stokade"] = "stockade",["stokades"] = "stockade",["stocks"] = "stock",["stocls"] = "stock",["stockhades"] = "stockade",["stockaide"] = "stockade",["stockaid"] = "stockade",
["stockk"] = "stock",["stockdale"] = "stockade",["staockades"] = "stockade",["stonks"] = "stock",["stockado"] = "stockade",["stockes"] = "stockade",["sotckades"] = "stockade",["stockages"] = "stockade",["stackades"] = "stockade",["stackade"] = "stockade",
["stockaded"] = "stockade",["stockates"] = "stockade",["stocakeds"] = "stockade",["skotade"] = "stockade",["stockcade"] = "stockade",["stockage"] = "stockade",["stocade"] = "stockade",["stocades"] = "stockade",["stoocades"] = "stockade",
["blackfathome"] = "blackfathom",["blackfatom"] = "blackfathom",["blackfanthom"] = "blackfathom",["blackfantom"] = "blackfathom",["bloackfathom"] = "blackfathom",["bd"] = "bfd",["bdf"] = "bfd",["bfg"] = "bfd",["bfc"] = "bfd",["bsf"] = "bfd",
["blackfdeeps"] = "blackfathom",["blackfdepths"] = "blackfathom",["bigfathom"] = "blackfathom",["bigflathim"] = "blackfathom",["bigflathim"] = "blackphatom",["fathemed"] = "fathom",
["sk"] = "sfk",["skf"] = "sfk",["sfkk"] = "sfk",["shadomwang"] = "sfk",["sfkeep"] = "sfk",["sfl"] = "sfk",
["gnooner"] = "gnomeregan",["gnomregan"] = "gnomeregan",["gnomregen"] = "gnomeregan",["gnomergan"] = "gnomeregan",["gnomeragen"] = "gnomeregan",["gnomragen"] = "gnomeregan",
["gnomerigan"] = "gnomeregan",["gnomregan"] = "gnomeregan",["gnomerengan"] = "gnomeregan",["gnomrigan"] = "gnomeregan",["gnomoeregan"] = "gnomeregan",["gnomereagan"] = "gnomeregan",["gnomeran"] = "gnomeregan",
["gnomeragan"] = "gnomeregan",["gnomger"] = "gnomeregan",["gnomeragon"] = "gnomeregan",["gnomeragn"] = "gnomeregan",["gnomegan"] = "gnomeregan",["gnogeragan"] = "gnomeregan",["gnogeregan"] = "gnomeregan",["gnogeragon"] = "gnomeregan",
["razorfren"] = "razorfen",["razorfer"] = "razorfen",["razorder"] = "razorfen",["razerfen"] = "razorfen",["razoerfen"] = "razorfen",
["karul"] = "kraul",["kral"] = "kraul",["craul"] = "kraul",["cral"] = "kraul",["rpk"] = "rfk",["rfkk"] = "rfk",["razorfenk"] = "razorfenkraul",
["rpd"] = "rfd",["downsynd"] = "downs",["dwown"] = "downs",["dwowns"] = "downs",["razorfend"] = "razorfendowns",["razorfendown"] = "razorfendowns",
["uld"] = "uldaman",["ulduman"] = "uldaman",["uldam"] = "uldaman",["uldum"] = "uldaman",["uldamann"] = "uldaman",["uldman"] = "uldaman",["oldaman"] = "uldaman",
["monastary"] = "monastery",["monstary"] = "monastery",["monstery"] = "monastery",["monasatry"] = "monastery",["monstry"] = "monastery",["monestry"] = "monastery",["scarlett"] = "scarlet",["scarletmon"] = "sm",["scarletmona"] = "sm",["scarletmonastery"] = "sm",
["graveryard"] = "gy",["gv"] = "gy",
["lib"] = "library",["lyb"] = "library",["libary"] = "library",["librery"] = "library",["libray"] = "library",["librady"] = "library",["libraruy"] = "library",["librirary"] = "library",["librabry"] = "library",["libraryu"] = "library",["libraby"] = "library",
["armoty"] = "armory",["armoury"] = "armory",["arms"] = "arm",["armz"] = "arm",["armzs"] = "arm",["armoryy"] = "armory",["armoryyy"] = "armory",
["carth"] = "cathedral",["cathe"] = "cathedral",["cath"] = "cathedral",["cafedr"] = "cathedral",["caf"] = "cathedral",["catehdral"] = "cathedral",["cathedrale"] = "cathedral",["catheral"] = "cathedral",
["smg"] = "smgy",["smgrav"] = "smgy",["smgrave"] = "smgy",["smgrave"] = "smgy",["smgraveyard"] = "smgy",["scarletgy"] = "smgy",["scarletgrav"] = "smgy",["scarletgrave"] = "smgy",["scarletgraveyard"] = "smgy",["scarletsmgy"] = "smgy",
["monasterygy"] = "smgy",["monasterygrav"] = "smgy",["monasterygrave"] = "smgy",["monasterygraveyard"] = "smgy",["monagy"] = "smgy",["monagrav"] = "smgy",["monagrave"] = "smgy",["monagraveyard"] = "smgy",
["sml"] = "smlib",["smlb"] = "smlib",["smliberal"] = "smlib",["smlin"] = "smlib",["smlin"] = "smlib",["smlibrary"] = "smlib",
["sma"] = "smarm",["smarms"] = "smarm",["smarmory"] = "smarm",["scarletarm"] = "smarm",["scarletarms"] = "smarm",["smarmo"] = "smarm",["scarletarmory"] = "smarm",["scarletsmarm"] = "smarm",
["monasteryarm"] = "smarm",["monasteryarms"] = "smarm",["monasteryarmo"] = "smarm",["monasteryarmory"] = "smarm",["monaarm"] = "smarm",["monaarms"] = "smarm",["monaarmo"] = "smarm",["monaarmory"] = "smarm",
["smc"] = "smcath",["smcat"] = "smcath",["smcathedral"] = "smcath",["scarletcat"] = "smcath",["scarletcath"] = "smcath",["scarletcathedral"] = "smcath",
["monasterycat"] = "smcath",["monasterycath"] = "smcath",["monasterycathedral"] = "smcath",["monacat"] = "smcath",["monacath"] = "smcath",["monacathedral"] = "smcath",
["smfullrun"] = "smfull",["fullsm"] = "smfull",["allsm"] = "smfull",["fullscarletrun"] = "smfull",["fullrunsm"] = "smfull",["fullsmrun"] = "smfull",["smgy"] = "smgy",["smarm"] = "smarm",["smlib"] = "smlib",["smcath"] = "smcath",
["farak"] = "farrak",["zulfarak"] = "zulfarrak",["zukfarrak"] = "zulfarrak",["zulfurrak"] = "zulfarrak",["zulforrak"] = "zulfarrak",["zulfurak"] = "zulfarrak",["ulzfarrak"] = "zulfarrak",["ulzfarak"] = "zulfarrak",
["zulforak"] = "zulfarrak",["zff"] = "zf",["zzf"] = "zf",["zulfarrack"] = "zulfarrak",["zulfarrake"] = "zulfarrak",["zulf"] = "zulfarrak",["uzl"] = "zul",["zulfarrak"] = "zulfarrak",
["marudon"] = "maraudon",["maradon"] = "maraudon",["maura"] = "mara",["mauradon"] = "maraudon",["maurodon"] = "maraudon",["maurdon"] = "maraudon",["maraundon"] = "maraudon",["maraaudon"] = "maraudon",["maraduon"] = "maraudon",
["marodon"] = "maraudon",["morodon"] = "maraudon",["maradudon"] = "maraudon",["maraudn"] = "maraudon",["maraprincs"] = "maraudon",
["sunkent"] = "sunken",["sunket"] = "sunken",["sunkn"] = "sunken",["sempletemple"] = "sunkentemple",["atalhakkar"] = "atalhakkar",["stemple"] = "atalhakkar",["tempel"] = "temple",
["brda"] = "brd",["brdd"] = "brd",["bdr"] = "brd",["blackrockdeeps"] = "blackrockdepths",["blackrockdepth"] = "blackrockdepths",["brdquestrun"] = "brd",["brdfullrun"] = "brd",["dephts"] = "depths",
["emp"] = "emperor",["emprun"] = "emperor",["emperer"] = "emperor",["emporer"] = "emperor",
["vaul"] = "vault",["vaut"] = "vault",["vaault"] = "vault",["vauult"] = "vault",["vaultt"] = "vault",
["attument"] = "attunement",["attu"] = "attunement",["attune"] = "attunement",["attun"] = "attunement",["attunment"] = "attunement",
["stratlive"] = "livestrat",["stralive"] = "livestrat",["startlive"] = "livestrat",["livestart"] = "livestrat",["statlive"] = "livestrat",["livestat"] = "livestrat",["stradlive"] = "livestrat",
["liveside"] = "livestrat",["stratlife"] = "livestrat",["stratscarlet"] = "livestrat",["stratholmelive"] = "livestrat",["scarletlive"] = "livestrat",
["stratud"] = "udstrat",["stratun"] = "udstrat",["stratundead"] = "udstrat",["stratdk"] = "udstrat",
["startud"] = "udstrat",["startun"] = "udstrat",["udstart"] = "udstrat",["undeadstart"] = "udstrat",["undeadstrat"] = "udstrat",
["stratholmeud"] = "udstrat",["stratholmeun"] = "udstrat",["stratholmeundead"] = "udstrat",["stratholmedk"] = "udstrat",["stradud"] = "udstrat",["straddk"] = "udstrat",["stradundead"] = "udstrat",
["undeadcity"] = "udstrat",["udcity"] = "udstrat",["udside"] = "udstrat",["strengthud"] = "udstrat",["statud"] = "udstrat",["udstat"] = "udstrat",
["strartholme"] = "stratholme",["stratholm"] = "stratholme",["strath"] = "stratholme",["stratth"] = "stratholme",["straholme"] = "stratholme",["strathholm"] = "stratholme",["strathholme"] = "stratholme",["startholme"] = "stratholme",
["srtatholme"] = "stratholme",["strathilme"] = "stratholme",["strathalme"] = "stratholme",["stratholem"] = "stratholme",["srat"] = "strat",["strah"] = "strat",["strar"] = "strat",["starth"] = "stratholme",
["tostrat"] = "stratholme",["healstrat"] = "stratholme",["damagestrat"] = "stratholme",
["tankstrat"] = "stratholme",["stratman"] = "stratholme",["farmstrat"] = "stratholme",["stratmalor"] = "stratholme",["stratfarm"] = "stratholme",
["scholo"] = "scholomance",["scho"] = "scholomance",["sco"] = "scholomance",["shool"] = "scholomance",["sholo"] = "scholomance",["shcolo"] = "scholomance",["shcolomanace"] = "scholomance",["sholomance"] = "scholomance",
["scolomance"] = "scholomance",["scholamance"] = "scholomance",["scolamance"] = "scholomance",["scholomace"] = "scholomance",["sholomolance"] = "scholomance",["scholomansa"] = "scholomance",
["solomance"] = "scholomance",["scolo"] = "scholomance",["schoolo"] = "scholomance",["scholor"] = "scholomance",["krastinovs"] = "krastinov",
["diremail"] = "diremaul",["diremual"] = "diremaul",["mauls"] = "maul",["mual"] = "maul",["maule"] = "maul",["trib"] = "tribute",["shendralar"] = "dmw",["dmnt"] = "dmt",["eastdm"] = "dme",["northdm"] = "dmn",["westdm"] = "dmw",

["lbs"] = "lbrs",["lvrs"] = "lbrs",["lvrs"] = "lbrs",["lbrd"] = "lbrs",["lbr"] = "lbrs",["lrbs"] = "lbrs",["lwbs"] = "lbrs",["lowerspire"] = "lowerblackrock",
["ubers"] = "ubrs",["urbs"] = "ubrs",["ubs"] = "ubrs",["uber"] = "ubrs",["ubres"] = "ubrs",["ubbrs"] = "ubrs",["ubrd"] = "ubrs",["ubr"] = "ubrs",["ubrn"] = "ubrs",["ubts"] = "ubrs",["umbrs"] = "ubrs",["blackrockupper"] = "ubrs",
["valthalaks"] = "valthalak",["vaalthak"] = "valthalak",["upperspire"] = "upperblackrock",["drakisath"] = "drakkisath",["drakki"] = "drakkisath",["draki"] = "drakkisath",["drakk"] = "drakkisath",["drak"] = "drakkisath",

["forgnome"] = "gnomer",["fortemple"] = "st",["forgy"] = "smgy",["forgraveyard"] = "smgy",["forrc"] = "rfc",["fortribute"] = "dmt",["forstart"] = "stratholme",["forstrat"] = "stratholme",["forarm"] = "smarm",["forarms"] = "smarm",["forschool"] = "scholomance",

["repfarmstrat"] = "stratrepfarm",

-- Dungeon combine to prevent flagging other dungeons
["dme"] = "dme",["dmn"] = "dmn",["dmt"] = "dmt",["dmw"] = "dmw",["dmeast"] = "dme",["dmnorth"] = "dmn",["dmtrib"] = "dmt",["dmtribute"] = "dmt",["dmwest"] = "dmw",
["diremaul"] = "diremaul",["diremauleast"] = "dme",["diremaulnorth"] = "dmn",["diremaultrib"] = "dmt",["diremaultribute"] = "dmt",["diremaulwest"] = "dmw",
["swv"] = "swv",["swvault"] = "swv",["udstrat"] = "udstrat",["livestrat"] = "livestrat",["upperblackrock"] = "upperblackrock",["lowerblackrock"] = "lowerblackrock",
["smgy"] = "smgy",["smlib"] = "smlib",["smarm"] = "smarm",["smcath"] = "smcath",["razorfenkraul"] = "razorfenkraul",["razorfendowns"] = "razorfendowns",

-- Raids
["blw"] = "blackwinglair",["bwls"] = "blackwinglair",["bwl"] = "blackwinglair",["nefarien"] = "nefarian",["nefarion"] = "nefarian",["ossi"] = "ossirian",["nax"] = "naxxramas",["naxx"] = "naxxramas",["taq"] = "aq",
["hakar"] = "hakkar",["hakakr"] = "hakkar",["zulgrub"] = "zulgurub",["zulgurub"] = "zulgurub",["gurrub"] = "gurub",["zgs"] = "zg",["aqs"] = "aq",["mcs"] = "mc",["karas"] = "kara",
["onyixia"] = "onyxia",["onxy"] = "onyxia",["onyx"] = "onyxia",["onyxias"] = "onyxia",["onixia"] = "onyxia",["onixya"] = "onyxia",["onyqia"] = "onyxia",["onyxxia"] = "onyxia",["ohy"] = "ony",["onny"] = "ony",
["onyy"] = "ony",["oony"] = "ony",["onx"] = "ony",["onxyia"] = "ony",["oni"] = "ony",["onys"] = "ony",
["azurg"] = "azuregos",["azurgo"] = "azuregos",["azurego"] = "azuregos",["azurgos"] = "azuregos",["azuregs"] = "azuregos",["kazzk"] = "kazzak",["kazz"] = "kazzak",["kazak"] = "kazzak",
["ysonder"] = "ysondre",["ysondr"] = "ysondre",["ysndre"] = "ysondre",["ysnder"] = "ysondre",["lethn"] = "lethon",["tarar"] = "taerar",["emeris"] = "emeriss",["emerss"] = "emeriss",
["raggi"] = "ragnaros",

-- Dungeon quest renames
["orgrimmardungeon"] = "ragefirechasm",["hiddenenemies"] = "ragefirechasm",["slayingthebeast"] = "ragefirechasm",["forthelostsatchel"] = "ragefirechasm",["testinganenemysstrength"] = "ragefirechasm",["thepowertodestroy"] = "ragefirechasm",
["collectingmemories"] = "deadmines",["undergroundassault"] = "deadmines",["ohbrother"] = "deadmines",["redsilkbandanas"] = "deadmines",["thedefiasbrotherhood"] = "deadmines",
["deviatehides"] = "wailingcaverns",["troubleatthedocks"] = "wailingcaverns",["smartdrinks"] = "wailingcaverns",["serpentbloom"] = "wailingcaverns",["deviateeradication"] = "wailingcaverns",["leadersofthefang"] = "wailingcaverns",["glowingshard"] = "wailingcaverns",
["deathstalkersinshadowfang"] = "sfk",["thebookofur"] = "sfk",["arugalmustdie"] = "sfk",["thetestofrighteousness"] = "sfk",["jordanssmithinghammer"] = "sfk",["theorbofsoranruk"] = "sfk",
["theessenceofakumai"] = "bfd",["knowledgeinthedeeps"] = "bfd",["insearchofthaelrid"] = "bfd",["researchingthecorruption"] = "bfd",
["twilightfalls"] = "bfd",["allegiancetotheold"] = "bfd",["totheoldgods"] = "bfd",["blackfathomvillainy"] = "bfd",["amongsttheruins"] = "bfd",["korgem"] = "bfd",["soranrukfragment"] = "bfd",
["whatcomesaround"] = "stockade",["crimeandpunishment"] = "stockade",["thecolorofblood"] = "stockade",["quelltheuprising"] = "stockade",["thefuryrunsdeep"] = "stockade",["thestockaderiots"] = "stockade",
["savetechbotsbrain"] = "gnomeregan",["gnogaine"] = "gnomeregan",["castpipestask"] = "gnomeregan",["afinemess"] = "gnomeregan",["datarescue"] = "gnomeregan",["ismoregreenglow"] = "gnomeregan",["gyrodrillmaticexcavationators"] = "gnomeregan",
["essentialartificials"] = "gnomeregan",["thesparklematic"] = "gnomeregan",["grimeencrustedring"] = "gnomeregan",["rigwars"] = "gnomeregan",["thegrandbetrayal"] = "gnomeregan",
["blueleaftubers"] = "rfk",["willixtheimporter"] = "rfk",["mortalitywanes"] = "rfk",["goinggoingguano"] = "rfk",["avengefulfate"] = "rfk",["croneofthekraul"] = "rfk",
["painttherosesred"] = "smgy",["heartsofzeal"] = "smfull",["testoflore"] = "smlib",["compendiumofthefallen"] = "smlib",["mythologyofthetitans"] = "smlib",["nameofthelight"] = "smfull",["intothesm"] = "smfull",["downthescarletpath"] = "smfull",
["ahostofevil"] = "razorfendowns",["anunholyalliance"] = "razorfendowns",["extinguishingtheidol"] = "razorfendowns",["scourgeofthedowns"] = "razorfendowns",["bringthelight"] = "razorfendowns",["bringtheend"] = "razorfendowns",
["asignofhope"] = "uldaman",["powerstones"] = "uldaman",["agmondsfate"] = "uldaman",["solutiontodoom"] = "uldaman",["amuletofsecrets"] = "uldaman",["thehiddenchamber"] = "uldaman",["thelostdwarves"] = "uldaman",["theshatterednecklace"] = "uldaman",
["necklacerecovoery"] = "uldaman",["backtouldaman"] = "uldaman",["reagentrun"] = "uldaman",["reclaimedtreasures"] = "uldaman",["findthegems"] = "uldaman",["restoringthenecklace"] = "uldaman",["gemsandpowersource"] = "uldaman",["losttabletsofwill"] = "uldaman",
["thespidergod"] = "zulfarrak",["scarabshells"] = "zulfarrak",["trolltemper"] = "zulfarrak",["tiaraofthedeep"] = "zulfarrak",["theprophecyofmosharu"] = "zulfarrak",["nekrumsmedallion"] = "zulfarrak",["divinomaticrod"] = "zulfarrak",["gahzrilla"] = "zulfarrak",
["shadowshardfragments"] = "maraudon",["twistedevils"] = "maraudon",["vyletonguecorruption"] = "maraudon",["thepariahsinstructions"] = "maraudon",["legendsofmaraudon"] = "maraudon",
["scepterofcelebras"] = "maraudon",["corruptionofearth"] = "maraudon",["ofearthandseed"] = "maraudon",["seedoflife"] = "maraudon",
["secretofthecircle"] = "sunkentemple",["intothedepths"] = "sunkentemple",["thegodhakkar"] = "sunkentemple",["jammalantheprophet"] = "sunkentemple",["theessenceoferanikus"] = "sunkentemple",["hazeofevil"] = "sunkentemple",
["darkironlegacy"] = "brd",["commandergorshak"] = "brd",["ribblyscrewspigot"] = "brd",["yukascrewspigot"] = "brd",["windsor"] = "brd",["windsol"] = "brd",["abandonedhope"] = "brd",["thelovepotion"] = "brd",
["thelastelement"] = "brd",["whatisgoingon"] = "brd",["rankingdarkironofficials"] = "brd",["heartofthemountain"] = "brd",["hurleyblackbreath"] = "brd",["thespectralchalice"] = "brd",
["lostthunderbrewrecipe"] = "brd",["disharmonyoffire"] = "brd",["incendius"] = "brd",["thegoodstuff"] = "brd",["crumpledupnote"] = "brd",["atasteofflame"] = "brd",["ashredofhope"] = "brd",["grimguzzler"] = "brd",
["operationdeathtoangerforge"] = "brd",["riseofthemachines"] = "brd",["precariouspredicament"] = "brd",["kharanmighthammer"] = "brd",["fateofthekingdom"] = "brd",["attunementtothecore"] = "brd",["atttothecore"] = "brd",
["theroyalrescue"] = "brd",["thechallenge"] = "brd",["theprincesssaved"] = "brd",["abindingcontract"] = "brd",["golemlord"] = "brd",["angerforge"] = "brd",["angerfod"] = "brd",
["winsor"] = "brd",["windwos"] = "brd",["lavarun"] = "brd",["brdarena"] = "brd",["brdarenas"] = "brd",["arenarun"] = "brd",["arenaspam"] = "brd",["saveprincess"] = "brd",["savetheprincess"] = "brd",["savingprincess"] = "brd",
["thefinaltablets"] = "lbrs",["bijousbelongings"] = "lbrs",["ayesteewhy"] = "lbrs",["putherdown"] = "lbrs",["kiblersexoticpets"] = "lbrs",["thepackmistress"] = "lbrs",["operativebijou"] = "lbrs",["thepackmistress"] = "lbrs",
["maxwellsquest"] = "lbrs",["warlordscommand"] = "lbrs",["mothersmilk"] = "lbrs",["urokdoomhowl"] = "lbrs",["morgrayhoof"] = "lbrs",
["generaldrakkisathsdemise"] = "ubrs",["forthehorde"] = "ubrs",["doomriggersclasp"] = "ubrs",["doomriggersclasp"] = "ubrs",["meaculpalordvalthalak"] = "ubrs",["oculusillusions"] = "ubrs",["theblackdragonchampion"] = "ubrs",["eggfreezing"] = "ubrs",
["thedarkstonetablet"] = "ubrs",["eggcollection"] = "ubrs",["sealofascension"] = "ubrs",["blackhandcommand"] = "ubrs",["thedemonforge"] = "ubrs",["eyeoftheemberseer"] = "ubrs",
["attunementbwl"] = "ubrs",["bwlattunement"] = "ubrs",["bwattunement"] = "ubrs",["attunementtobwl"] = "ubrs",["attunementforbwl"] = "ubrs",["scarshieldquartermaster"] = "ubrs",
["attunementmc"] = "brd",["mcattunement"] = "brd",["attunementtomc"] = "brd",["attunementformc"] = "brd",
["lethtendrissweb"] = "dmeast",["pusillin"] = "dme",["theelderazjtordin"] = "dme",["arcanerefreshment"] = "dme",["magewaterquest"] = "dme",["dreadsteedofxoroth"] = "dmw",["dreadsteedquest"] = "dmw",["dredsteedquest"] = "dmw",["dreadsteadquest"] = "dmw",
["theinstigatorsenchantment"] = "dmw",["themadnesswithin"] = "dmwest",["treasureoftheshendralar"] = "dmw",["warlockmountquest"] = "dmw",["warlockquestmount"] = "dmw",
["unfinishedgordokbusiness"] = "dmw",["falrinsvendetta"] = "dmn",["elvenlegends"] = "dmn",["tributerun"] = "dmt",["shardsofthefelcine"] = "dme",
["krastinovsbagofhorrors"] = "scholomance",["plaguedhatchlings"] = "scholomance",["kirtonos"] = "scholomance",["krastinovthebutcher"] = "scholomance",["thelichrasfrostwhisper"] = "scholomance",
["dawnsgambit"] = "scholomance",["barovfamilyfortune"] = "scholomance",["paladinmountquest"] = "scholomance",["paladinquestmount"] = "scholomance",
["aboveandbeyond"] = "udstrat",["deadmansplea"] = "udstrat",["menethilsgift"] = "udstrat",["ramstein"] = "udstrat",["theactiveagent"] = "udstrat",
["ofloveandfamily"] = "livestrat",["thearchivist"] = "livestrat",["thegreatfrassiabi"] = "livestrat",["themedallionoffaith"] = "livestrat",["truthcomescrashingdown"] = "livestrat",
["housesoftheholy"] = "stratholme",["fleshdoesnotlie"] = "stratholme",["therestlesssouls"] = "stratholme",

["handsoftheenemy"] = "moltencore",["themoltencore"] = "moltencore",["theperfectpoison"] = "aq",["onlyonemayrise"] = "blackwinglair",["domo"] = "mc",

} -- replaces the first word but leaves the second word
GF_WORD_FIX_SECOND = {
["healcan"] = {"heal","can"},["damagecan"] = {"damage","can"},["dpscan"] = {"damage","can"},["tankcan"] = {"tank","can"},
["queuearathi"] = {"queue","ab"},["queuealterac"] = {"queue","av"},
["lfbmw"] = {"lf","bm"},["lfgbmw"] = {"lfg","bm"},["lfmbmw"] = {"lfm","bm"},
["dmesummon"] = {"dm","summon"},["dmnsummon"] = {"dm","summon"},["dmwsummon"] = {"dm","summon"},
["queuegy"] = {"queue","smgy"},["queuearm"] = {"queue","smarm"},["queuearms"] = {"queue","smarm"},["queuecat"] = {"queue","smcath"},
["queuegnome"] = {"queue","gnomer"},["queuetemple"] = {"queue","st"},["queuegraveyard"] = {"queue","smgy"},["queuerc"] = {"queue","rfc"},["queuetribute"] = {"queue","dmt"},
["queuestrat"] = {"queue","stratholme"},["queuestart"] = {"queue","stratholme"},["queueschool"] = {"queue","scholomance"},["queuewailing"] = {"queue","wc"},["queuehateful"] = {"queue","hfq"},
["lfgagility"] = {"lf","agility"},["lfgintellect"] = {"lf","intellect"},["lfgspirit"] = {"lf","spirit"},

-- LFM/LFG Other
["gnomelf"] = {"lf","gnomer"},["gnomelfg"] = {"lfg","gnomer"},["gnomelfm"] = {"lfm","gnomer"},["lfgnome"] = {"lf","gnomer"},["lfggnome"] = {"lfg","gnomer"},["lfmgnome"] = {"lfm","gnomer"},["healgnome"] = {"heal","gnomer"},["tankgnome"] = {"tank","gnomer"},["damagegnome"] = {"damage","gnomer"},
["templelf"] = {"lf","st"},["templelfg"] = {"lfg","st"},["templelfm"] = {"lfm","st"},["lftemple"] = {"lf","st"},["lfgtemple"] = {"lfg","st"},["lfmtemple"] = {"lfm","st"},["healtemple"] = {"heal","st"},["tanktemple"] = {"tank","st"},["damagetemple"] = {"damage","st"},
["gylf"] = {"lf","smgy"},["gylfg"] = {"lfg","smgy"},["gylfm"] = {"lfm","smgy"},["lfgy"] = {"lf","smgy"},["lfggy"] = {"lfg","smgy"},["lfmgy"] = {"lfm","smgy"},["healgy"] = {"heal","smgy"},["tankgy"] = {"tank","smgy"},["damagegy"] = {"damage","smgy"},
["graveyardlf"] = {"lf","smgy"},["graveyardlfg"] = {"lfg","smgy"},["graveyardlfm"] = {"lfm","smgy"},["lfgraveyard"] = {"lf","smgy"},["lfggraveyard"] = {"lfg","smgy"},["lfmgraveyard"] = {"lfm","smgy"},["healgraveyard"] = {"heal","smgy"},["tankgraveyard"] = {"tank","smgy"},["damagegraveyard"] = {"damage","smgy"},
["rclf"] = {"lf","rfc"},["rclfg"] = {"lfg","rfc"},["rclfm"] = {"lfm","rfc"},["lfrc"] = {"lf","rfc"},["lfgrc"] = {"lfg","rfc"},["lfmrc"] = {"lfm","rfc"},["healrc"] = {"heal","rfc"},["tankrc"] = {"tank","rfc"},["damagerc"] = {"damage","rfc"},
["lftribute"] = {"lf","dmt"},["lfgtribute"] = {"lfg","dmt"},["lfmtribute"] = {"lfm","dmt"},["tributelf"] = {"lf","dmt"},["tributelfg"] = {"lfg","dmt"},["tributelfm"] = {"lfm","dmt"},["healtribute"] = {"heal","dmt"},["tanktribute"] = {"lftank","dmt"},["damagetribute"] = {"damage","dmt"},
["startlf"] = {"lf","stratholme"},["startlfg"] = {"lfg","stratholme"},["startlfm"] = {"lfm","stratholme"},["stratlf"] = {"lf","stratholme"},["stratlfg"] = {"lfg","stratholme"},["stratlfm"] = {"lfm","stratholme"},["healstrat"] = {"heal","stratholme"},["tankstrat"] = {"tank","stratholme"},["damagestrat"] = {"damage","stratholme"},
["lfstart"] = {"lf","stratholme"},["lfgstart"] = {"lfg","stratholme"},["lfmstart"] = {"lfm","stratholme"},["lfstrat"] = {"lf","stratholme"},["lfgstrat"] = {"lfg","stratholme"},["lfmstrat"] = {"lfm","stratholme"},["healstart"] = {"heal","stratholme"},["tankstart"] = {"tank","stratholme"},["damagestart"] = {"damage","stratholme"},
["armlf"] = {"lf","smarm"},["armlfg"] = {"lfg","smarm"},["armlfm"] = {"lfm","smarm"},["armslf"] = {"lf","smarm"},["armslfg"] = {"lfg","smarm"},["armslfm"] = {"lfm","smarm"},["healarm"] = {"heal","smarm"},["tankarm"] = {"tank","smarm"},["damagearm"] = {"damage","smarm"},
["lfarm"] = {"lf","smarm"},["lfgarm"] = {"lfg","smarm"},["lfmarm"] = {"lfm","smarm"},["lfarms"] = {"lf","smarm"},["lfgarms"] = {"lfg","smarm"},["lfmarms"] = {"lfm","smarm"},["healarms"] = {"heal","smarm"},["tankarms"] = {"tank","smarm"},["damagearms"] = {"damage","smarm"},
["schoollf"] = {"lf","scholomance"},["schoollfg"] = {"lfg","scholomance"},["schoollfm"] = {"lfm","scholomance"},["lfschool"] = {"lf","scholomance"},["lfgschool"] = {"lfg","scholomance"},["lfmschool"] = {"lfm","scholomance"},["healschool"] = {"heal","scholomance"},["tankschool"] = {"tank","scholomance"},["damageschool"] = {"damage","scholomance"},
["wailinglf"] = {"lf","wc"},["wailinglfg"] = {"lfg","wc"},["wailinglfm"] = {"lfm","wc"},["lfwailing"] = {"lf","wc"},["lfgwailing"] = {"lfg","wc"},["lfmwailing"] = {"lfm","wc"},["healwailing"] = {"heal","wc"},["tankwailing"] = {"tank","wc"},["damagewailing"] = {"damage","wc"},
["hatefullf"] = {"lf","hfq"},["hatefullfg"] = {"lfg","hfq"},["hatefullfm"] = {"lfm","hfq"},["lfhateful"] = {"lf","hfq"},["lfghateful"] = {"lfg","hfq"},["lfmhateful"] = {"lfm","hfq"},["healhateful"] = {"heal","hfq"},["tankhateful"] = {"tank","hfq"},["damagehateful"] = {"damage","hfq"},
}
GF_WORD_IGNORE = {
["aboosted"] = true,["aboutspec"] = true,["aboutthisquest"] = true,["aboutthisqueue"] = true,["needadvice"] = true,["someadvice"] = true,["anyadvice"] = true,["afking"] = true,["afterwhat"] = true,["agilityvs"] = true,["aguild"] = true,["aharem"] = true,
["alliancefocused"] = true,["allianceplayer"] = true,["alliancetypically"] = true,["allstartzones"] = true,["amidoing"] = true,["amilf"] = true,["andhavelike"] = true,["andlf"] = true,["andwhatrace"] = true,["anoodle"] = true,["anyonecanopen"] = true,
["anyonedeclines"] = true,["anyonedrop"] = true,["anyonehave"] = true,["anyonehave"] = true,["anyoneicaninvite"] = true,["anyoneknow"] = true,["anyoneknowhowto"] = true,["anyoneknowshowto"] = true,["anyoneknowswhere"] = true,
["anyoneknowwhere"] = true,["anyonelink"] = true,["anyonepop"] = true,["anyonetotalk"] = true,["anysuggestion"] = true,["apokemon"] = true,
["apologize"] = true,["approximatelocation"] = true,["approxlocation"] = true,["apxlocation"] = true,["arethereany"] = true,["arewegetting"] = true,["asked"] = true,["battlestance"] = true,["beatout"] = true,["bestchoice"] = true,
["bestpvpheal"] = true,["bistankdoesnt"] = true,["bombardingme"] = true,["borrowplease"] = true,["bought"] = true,["box"] = true,["buffforstormwind"] = true,["buffme"] = true,["buffmy"] = true,["buffsaredown"] = true,["build"] = true,
["burningcrusade"] = true,["butneedthe"] = true,["butnowalliance"] = true,["butnowhorde"] = true,["butyouarein"] = true,["bypremades"] = true,["cananyonetellme"] = true,["candamagedungeon"] = true,["canhardcorequeue"] = true,["canhcqueue"] = true,
["canhealdungeon"] = true,["caniborrow"] = true,["canilevel"] = true,["cantankdungeon"] = true,["cantbetrust"] = true,["cantbetrusted"] = true,["cantgeta"] = true,["cantqueue"] = true,["cantremember"] = true,["canyounot"] = true,["casino"] = true,
["checkout"] = true,["clearout"] = true,["combatstance"] = true,["combinemydamage"] = true,["coupleofbuff"] = true,["critvs"] = true,["currencies"] = true,["currentquest"] = true,["damageaddon"] = true,["damagevs"] = true,["danceslike"] = true,
["declinequeue"] = true,["decliningqueue"] = true,["defensestance"] = true,["derp"] = true,["didanyonecomplete"] = true,["didanyonedid"] = true,["didanyonedo"] = true,["didntget"] = true,["didthequest"] = true,["direction"] = true,["directions"] = true,
["discount"] = true,["doesitcost"] = true,["doesitmatter"] = true,["doesnobody"] = true,["doesntletme"] = true,["doesntmatter"] = true,["doesntwork"] = true,["doesthe"] = true,["doesthisend"] = true,["doineed"] = true,["doingmoredamage"] = true,
["dontbuy"] = true,["dontfind"] = true,["dontjoinwsg"] = true,["dontwaste"] = true,["dropsoon"] = true,["droptothe"] = true,["duel"] = true,["dumbass"] = true,["earlier"] = true,["emptyarch"] = true,["encountered"] = true,
["everyonehas"] = true,["fewquestion"] = true,["finishedescort"] = true,["forfeiting"] = true,["forgold"] = true,["formsagroup"] = true,["friendship"] = true,["fromany"] = true,["fromsending"] = true,["fromthatchat"] = true,["fromthechat"] = true,
["fromtrash"] = true,["fromwars"] = true,["fullofgnomes"] = true,["getanyquest"] = true,["getatlevel"] = true,["giveinchat"] = true,["gl"] = true,["glowon"] = true,["gmsent"] = true,["goodreward"] = true,["gotkicked"] = true,["greatreward"] = true,
["groupaboveyou"] = true,["groupiwasin"] = true,["hardcorequeuebg"] = true,["hasabow"] = true,["hasastun"] = true,["haveanyquest"] = true,["havequestion"] = true,["hcqueuebg"] = true,["headinorgrimmar"] = true,["headinstormwind"] = true,
["headturnin"] = true,["healaddon"] = true,["healdontdie"] = true,["healdungeonqueue"] = true,["healvs"] = true,["helplocate"] = true,["helpsummon"] = true,["hereor"] = true,["hitcapinpve"] = true,["hitcapinpvp"] = true,
["hitvs"] = true,["hoo"] = true,["hordefocused"] = true,["hordeplayer"] = true,["hordetypically"] = true,["hourqueue"] = true,["howcome"] = true,["howdoesdungeon"] = true,["howdoesqueue"] = true,["howdoesthe"] = true,["howfind"] = true,
["howgoodis"] = true,["howhardis"] = true,["howisitpossible"] = true,["howisthis"] = true,["howmuchdamage"] = true,["howmuchdoes"] = true,["howmuchheal"] = true,["howtodothis"] = true,["howwasthatpossible"] = true,["iattempt"] = true,
["icanborrow"] = true,["ifanyoneknows"] = true,["ifiplan"] = true,["ignore"] = true,["ihavetospeak"] = true,["ijustdid"] = true,["ikindafelt"] = true,["imaginebeing"] = true,["imalready"] = true,["imexalted"] = true,["imfriendly"] = true,
["imhated"] = true,["imhonored"] = true,["imneutral"] = true,["implaying"] = true,["imrevered"] = true,["ingame"] = true,["inpveandpvp"] = true,["inpvpandpve"] = true,["insideoroutside"] = true,["inspectme"] = true,["intellectvs"] = true,
["internalerror"] = true,["invitedme"] = true,["isfinetotank"] = true,["isgoodtotank"] = true,["ishordebgqueue"] = true,["ishostile"] = true,["isitbetter"] = true,["isitok"] = true,["ispromoting"] = true,["istartedthe"] = true,["isthenpc"] = true,
["isthepvp"] = true,["isthequeue"] = true,["istillneedmore"] = true,["iswear"] = true,["isworthit"] = true,["itpops"] = true,["itbackon"] = true,["itemdrop"] = true,["ithinkthey"] = true,["itryto"] = true,["itsnowhere"] = true,["itssaying"] = true,
["ivefinished"] = true,["iwashavingfun"] = true,["iwishthere"] = true,["joking"] = true,["justcold"] = true,["justfine"] = true,["justfinished"] = true,["justhot"] = true,["justnotenough"] = true,["justout"] = true,["justwarm"] = true,["kalimdor"] = true,
["keepfailing"] = true,["kickedeveryone"] = true,["kickedfrom"] = true,["kickedyou"] = true,["kickinganyone"] = true,["knowaboutthis"] = true,["knowwhereat"] = true,["knowwherein"] = true,["lesbian"] = true,
["letmequest"] = true,["lettingme"] = true,["levelwith"] = true,["lfbuff"] = true,["lfgworldbuff"] = true,["lfmagewithoranges"] = true,["lfmworldbuff"] = true,["lfthas"] = true,["lftip"] = true,["lftisnotbroken"] = true,["lfworldbuff"] = true,
["likeaids"] = true,["literally"] = true,["locating"] = true,["lockbox"] = true,["lftheitem"] = true,["losers"] = true,["macro"] = true,["magefood"] = true,["magewater"] = true,["mainlyprefer"] = true,["makessense"] = true,["maketheleader"] = true,
["manhandled"] = true,["manytwinks"] = true,["massiveamounts"] = true,["mchammer"] = true,["midgetguild"] = true,["moreexperiencethanme"] = true,["morehighlevel"] = true,["morethreat"] = true,["mpvs"] = true,["myaddon"] = true,["mybad"] = true,
["mypet"] = true,["mysterydungeon"] = true,["nah"] = true,["neednewgame"] = true,["needbuff"] = true,["needtoqueueit"] = true,["needweek"] = true,["nicereward"] = true,["noballs"] = true,["nobuffs"] = true,
["nobully"] = true,["noonequeue"] = true,["notasingleplayer"] = true,["notenoughtankqueue"] = true,["notinagroup"] = true,["notsingleplayer"] = true,["nottrustworthy"] = true,["oncooldown"] = true,["onmeand"] = true,
["opinion"] = true,["ordoesit"] = true,["orgrimmarhead"] = true,["oristhis"] = true,["oronlyat"] = true,["ourranks"] = true,["pairsoffeet"] = true,["payingforheal"] = true,["payingfortank"] = true,
["petattack"] = true,["planonbeing"] = true,["pointsin"] = true,["pointstoyour"] = true,["pokemontrainer"] = true,["political"] = true,["practice"] = true,["prefertoplay"] = true,["pretending"] = true,["prohibited"] = true,["prolly"] = true,
["psa"] = true,["putoff"] = true,["pvpanywhere"] = true,["pvpflagged"] = true,["qq"] = true,["questandlevel"] = true,["questionfor"] = true,["questionplease"] = true,["queststart"] = true,["queststartas"] = true,["queueagain"] = true,["queuebroken"] = true,
["queueitinlft"] = true,["queuesuck"] = true,["quickquestion"] = true,["raiddruid"] = true,["raidguild"] = true,["raidguild"] = true,["reallymatter"] = true,["reallyreserving"] = true,["rebooted"] = true,["reddit"] = true,["reinvite"] = true,
["remotelyfair"] = true,["removeallthe"] = true,["repairs"] = true,["respec"] = true,["retailpvp"] = true,["retard"] = true,["ridofit"] = true,["ripheroff"] = true,["riphimoff"] = true,["ripoff"] = true,["rippeopleoff"] = true,["ripplayeroff"] = true,
["ripthemoff"] = true,["ripusoff"] = true,["ruin"] = true,["runtimes"] = true,["scam"] = true,["semihardcore"] = true,["sendingmessages"] = true,["sentyou"] = true,["seriouslyreserving"] = true,["serverneed"] = true,["shesabeauty"] = true,["shirt"] = true,
["shitload"] = true,["shitloads"] = true,["sicko"] = true,["slightglow"] = true,["sobestto"] = true,["sohedoesnt"] = true,["soicansee"] = true,["someaddon"] = true,["somehr"] = true,["someneedthe"] = true,["somequestion"] = true,
["somestuff"] = true,["somewhereinthat"] = true,["sorry"] = true,["soshedoesnt"] = true,["spamming"] = true,["spiritvs"] = true,["splitsecond"] = true,["spvs"] = true,["staminavs"] = true,["startasan"] = true,["startedgriefing"] = true,
["startgriefing"] = true,["stfu"] = true,["stopdecline"] = true,["stopdeclining"] = true,["stoppingme"] = true,["stopqueue"] = true,["stoptryingto"] = true,["stormwindhead"] = true,["storystuff"] = true,["strengthvs"] = true,["succubus"] = true,
["succubuss"] = true,["suckforyou"] = true,["sugardaddy"] = true,["sugarmomma"] = true,["summonedme"] = true,["takeforeverto"] = true,["taketoomuch"] = true,["talents"] = true,["talenttree"] = true,["talkabout"] = true,["tankaddon"] = true,
["tankgetquickerqueue"] = true,["tbh"] = true,["groupwork"] = true,["tellingmeto"] = true,["thatguy"] = true,["thatissue"] = true,["thatquestchain"] = true,["thatsalot"] = true,["thenyou"] = true,["theotherquest"] = true,["theracethat"] = true,
["thereisnoquest"] = true,["theresanempty"] = true,["theresno"] = true,["theysay"] = true,["thisgame"] = true,["thishappens"] = true,["thisissue"] = true,["thismorning"] = true,["thisserver"] = true,["thoseguys"] = true,["thought"] = true,
["throughstormwind"] = true,["throwitback"] = true,["timesarerough"] = true,["timesure"] = true,["toanswer"] = true,["tochat"] = true,["toswap"] = true,["totemdamage"] = true,["tothatlevel"] = true,["trashmob"] = true,["trivia"] = true,["triviabot"] = true,
["tryingtoqueue"] = true,["turnback"] = true,["turninginhead"] = true,["turnininhead"] = true,["turtletrivia"] = true,["twitchtv"] = true,["typethat"] = true,["typicallythatlong"] = true,["unique"] = true,["unlessyouneed"] = true,["usesabow"] = true,
["usetheterm"] = true,["veganguild"] = true,["vendor"] = true,["vendors"] = true,["vsagility"] = true,["vscrit"] = true,["vsdamage"] = true,["vsheal"] = true,["vshit"] = true,["vsintellect"] = true,["vsmp"] = true,["vssp"] = true,
["vsspirit"] = true,["vsstamina"] = true,["vsstrength"] = true,["waitingforhour"] = true,["waitinghour"] = true,["waitingtime"] = true,["needtocomehang"] = true,["needtohangout"] = true,["warriorlegs"] = true,["warriorpants"] = true,["wasdoing"] = true,
["watereddown"] = true,["weekday"] = true,["weekdays"] = true,["weekend"] = true,["weirdo"] = true,["werules"] = true,["whatability"] = true,["whatbird"] = true,["whatdoi"] = true,["whatisbest"] = true,["whatisbetter"] = true,["whatisit"] = true,
["whatisthehit"] = true,["whatlevel"] = true,["whatlevelis"] = true,["whatreward"] = true,["whencani"] = true,["whenigetto"] = true,["whenigot"] = true,["whenthereare"] = true,["whereisit"] = true,["whereislocation"] = true,["whereisthe"] = true,
["wheretodo"] = true,["wheretofind"] = true,["wheretofindquest"] = true,["whereweturn"] = true,["whichhasmore"] = true,["whichhasmost"] = true,["whichisbest"] = true,["whichisbetter"] = true,["whilehardreserving"] = true,["whileleveling"] = true,
["whosummoned"] = true,["whyareall"] = true,["whycanti"] = true,["whyicant"] = true,["whyisa"] = true,["whyiseveryone"] = true,["whythehell"] = true,["willitbeat"] = true,["wishaliens"] = true,["withaquestion"] = true,["withsomething"] = true,
["workshere"] = true,["wouldneed"] = true,["wouldntbeask"] = true,["wouldtankgetquicker"] = true,["wtf"] = true,["yell"] = true,["youarejustlooking"] = true,["youarejustask"] = true,
["youcanqueue"] = true,["youdbelooking"] = true,["youlaugh"] = true,["youneedthehighest"] = true,
["youareconfusing"] = true,["youarelaughing"] = true,["youaretelling"] = true,["yourmoney"] = true,["youwontjoin"] = true,["youwouldntbe"] = true,["zonedrop"] = true,

["healtoweapon"] = true,["damagetoweapon"] = true,["spelldamagetoweapon"] = true,

["lowlevelelite"] = true,["doourbest"] = true,["comehelpyou"] = true,["cananyoneadd"] = true,["icanenter"] = true,
["rangeoption"] = true,["amistill"] = true,["pvpbrain"] = true,["forgetthat"] = true,["aremidpack"] = true,["indamage"] = true,["inheal"] = true,["intank"] = true,["startyourown"] = true,

["lfleveling"] = true,["mybrotherinchrist"] = true,["justquest"] = true,["needtoput"] = true,["headup"] = true,["doguild"] = true,["everneed"] = true,["anyoneinthat"] = true,["streamit"] = true,
["nexttime"] = true,["wheniask"] = true,["askforone"] = true,["whydopeople"] = true,["theyoncethey"] = true,["oncetheyhave"] = true,["allleave"] = true,["aretherestill"] = true,["withbasically"] = true,["howtoqueue"] = true,
["tankcouch"] = true,["healcouch"] = true,["knowwherethis"] = true,["thatswhy"] = true,["whyisit"] = true,["guildspam"] = true,["dungeonspam"] = true,["thischannelis"] = true,["toconverse"] = true,["jointhatone"] = true,["intheother"] = true,

["raidspam"] = true,["forallsorts"] = true,["cookiecuttertryhard"] = true,["guildspots"] = true,["spreadsheet"] = true,["alreadyestablished"] = true,["shamantankwill"] = true,
["everythinghr"] = true,["everythingishr"] = true,["everythingreserved"] = true,["everythingisreserved"] = true,["tyfor"] = true,["thankyoufor"] = true,["youworld"] = true,["whencanyou"] = true,["whencanhe"] = true,["whencanshe"] = true,

["mrextravagant"] = true,["xcitingx"] = true,["ofxtacy"] = true,["portalis"] = true,["raiddrop"] = true,["hottake"] = true,["iftwow"] = true,["ifturtlewow"] = true,["anhourlong"] = true,["debuff"] = true,["wouldstop"] = true,
["ninjajoining"] = true,["queueand"] = true,["instaleaving"] = true,["instaleave"] = true,["howigo"] = true,["topvpmod"] = true,["headgoingout"] = true,["needsomeinfo"] = true,["needsomeinformation"] = true,

["lastsheep"] = true,["sheisscared"] = true,["heisscared"] = true,["tellmethat"] = true,["icannotget"] = true,["itbugged"] = true,["isbugged"] = true,

["itsnotaround"] = true,["ifitsnot"] = true,["anyonedone"] = true,["itmeans"] = true,["doingitatm"] = true,["ifidont"] = true,["illdie"] = true,["isita"] = true,["oragroup"] = true,
["muchfire"] = true,["muchfrost"] = true,["mucharcane"] = true,["muchshadow"] = true,["muchnature"] = true,["needtoteach"] = true,["teachme"] = true,["resetspot"] = true,["resetspots"] = true,
["muchfr"] = true,["muchar"] = true,["muchnr"] = true,["unbuffed"] = true,["gotthisfrom"] = true,["anyuseforit"] = true,["greenname"] = true,["flavoritem"] = true,["clearlyshows"] = true,["howyougot"] = true,["notgroup"] = true,

["joinany"] = true,["weabsolutely"] = true,["twow"] = true,["newhere"] = true,["ifipress"] = true,["pressqueue"] = true,["doesitportal"] = true,["thingslooking"] = true,["oversaturated"] = true,
["portalme"] = true,["likeinretail"] = true,["orjustfind"] = true,["orjustfinds"] = true,["healingbalm"] = true,["restoringbalm"] = true,["doesanyonedo"] = true,["dingand"] = true,["comingback"] = true,["howarethings"] = true,
["expectationsfrom"] = true,["notpossible"] = true,["isitnot"] = true,["wherecani"] = true,["canistart"] = true,["pvpmode"] = true,["forextra"] = true,["theonlypeople"] = true,["intheentirety"] = true,["ofturtlewow"] = true,["whoneeddamage"] = true,
["anyonedid"] = true,["curemydisease"] = true,["curemydebuff"] = true,["mybuff"] = true,["mydebuff"] = true,["cleansemy"] = true,["abolishmy"] = true,["cleanseme"] = true,["abolishme"] = true,
["removemy"] = true,["removeme"] = true,["amiin"] = true,["inthetwilightzone"] = true,["retailhas"] = true,["toomuchstuff"] = true,["ilikethe"] = true,["slowerpace"] = true,["oldermmo"] = true,["oldmmos"] = true,["newmmos"] = true,["newermmos"] = true,
["melaid"] = true,["butthatwouldnt"] = true,["butthatwould"] = true,["gettingcamped"] = true,["istheresomething"] = true,["tryingtofish"] = true,["todofirst"] = true,["todosecond"] = true,["todothird"] = true,

["macros"] = true,["macro"] = true,["totemdeployment"] = true,["weneedarena"] = true,["weneedarenas"] = true,["thenthisis"] = true,["greatestserver"] = true,["serverofall"] = true,["comebelow"] = true,["belowstormwind"] = true,
["doesntattack"] = true,["attackback"] = true,["isthereareason"] = true,["dontsee"] = true,["sohowis"] = true,["iguess"] = true,["themeta"] = true,["nowhuh"] = true,["ifimcorrect"] = true,["youdneed"] = true,["whywouldi"] = true,
["fuckingtwinks"] = true,["toyour"] = true,["findquestgiver"] = true,["findingquestgiver"] = true,["gatesareclosed"] = true,["gateisclosed"] = true,["wekilledboss"] = true,

["nevergive"] = true,["crosspaths"] = true,["theresaeuropean"] = true,["theresanamerican"] = true,["theresarussian"] = true,["withgear"] = true,["isaffliction"] = true,["viableforleveling"] = true,["atleveling"] = true,

["butbadat"] = true,["consideredgood"] = true,["doireset"] = true,["anyonekilled"] = true,["hascompleted"] = true,["setquest"] = true,["wieldme"] = true,
["yearago"] = true,["yearsago"] = true,["monthsago"] = true,["monthago"] = true,["weeksago"] = true,["daysago"] = true,["lastyear"] = true,["lastmonth"] = true,
["groupdied"] = true,["isalevel"] = true,["thatkilled"] = true,["jointhat"] = true,["howdoiqueue"] = true,["inopenworld"] = true,["liketoask"] = true,
["askquestions"] = true,["askaquestion"] = true,["couplequestions"] = true,["fewquestions"] = true,["coupleofquestions"] = true,["fewquestions"] = true,["aquestion"] = true,["onequestion"] = true,

["somethingfat"] = true,["pleasewrite"] = true,["sohemakes"] = true,["soshemakes"] = true,["withthenameof"] = true,["questmod"] = true,["dpsmod"] = true,["healmod"] = true,["questie"] = true,["otherthan"] = true,["wowyouneed"] = true,["thatsgoingto"] = true,
--["freewand"] = true,["freesword"] = true,["freeaxe"] = true,["freemace"] = true,["freestaff"] = true,["freedagger"] = true,["freehead"] = true,["freelegs"] = true,["freewrist"] = true,["freeboots"] = true,["freebelt"] = true,["freegloves"] = true,
--["freering"] = true,["freechest"] = true,["freecloak"] = true,["freeshoulder"] = true,["freeneck"] = true,["freeweapon"] = true,["freebow"] = true,["freexbow"] = true,["freecrossbow"] = true,["freegun"] = true,
["futureusage"] = true,["gottons"] = true,["gotaton"] = true,["oneofthebest"] = true,["someofthebest"] = true,["manyofthebest"] = true,["rungo"] = true,["howdid"] = true,["doesmy"] = true,["decentexperience"] = true,["ifhejoins"] = true,["lfnothing"] = true,
["donotinvite"] = true,["aguild"] = true,["stackwater"] = true,["levelwater"] = true,["waterplease"] = true,["thishitem"] = true,["interestedinthis"] = true,["lfinformation"] = true,["informationabout"] = true,["isreallygood"] = true,
["youcoulddo"] = true,["youcouldto"] = true,["maxrested"] = true,["backtotown"] = true,["getmorerested"] = true,["youlevelup"] = true,["nobodynotices"] = true,
["yourtheheal"] = true,["youaretheheal"] = true,["yourthedamage"] = true,["youarethedamage"] = true,["yourthetank"] = true,["youarethetank"] = true,["theserver"] = true,["cantget"] = true,["westillcant"] = true,["farmspec"] = true,["cantheyadd"] = true,
["yougetaquest"] = true,["yougetthequest"] = true,["howyou"] = true,["askquestion"] = true,["neverjoin"] = true,["whohr"] = true,["hrshit"] = true,["makeyourown"] = true,["buffplease"] = true,["withquestion"] = true,
["pmayou"] = true,["mountgold"] = true,["goldformount"] = true,["goldformymount"] = true,["broreally"] = true,["waiteverything"] = true,["isxfaction"] = true,["leftoutside"] = true,["gettinggrinded"] = true,["nonlatin"] = true,["onfollow"] = true,
["lmaosaying"] = true,["endofaraid"] = true,["butitsactually"] = true,["peopleclick"] = true,["totheirdoom"] = true,["helpmewithportal"] = true,["tankinfo"] = true,["healinfo"] = true,["damageinfo"] = true,

["youarelooking"] = true,["youarelf"] = true,["nameplates"] = true,["whouses"] = true,["anyoneelsetried"] = true,["trieddoingquest"] = true,["butcouldnt"] = true,["whilefinding"] = true,["anyquestgive"] = true,["soloanyquest"] = true,
["whatcouldgowrong"] = true,["aworldchat"] = true,["likeofus"] = true,["ofuslf"] = true,["wewas"] = true,["hejustbails"] = true,["hejustleaves"] = true,["starttaunting"] = true,["tauntingtheraid"] = true,["tauntingthegroup"] = true,
["guyseven"] = true,["simplycannot"] = true,["simplycant"] = true,["duetothelack"] = true,["betterhere"] = true,["yeahat"] = true,["yesterday"] = true,["outofthe"] = true,
["doeslfg"] = true,["doeslft"] = true,["doesgroupfinder"] = true,

["gmssay"] = true,["allmonitored"] = true,["aremonitored"] = true,["dontpunish"] = true,["obviousseller"] = true,["areputting"] = true,["whitelevel"] = true,["i used to"] = true,["dungeoninretail"] = true,["babypulls"] = true,
["howdoi"] = true,["howtostart"] = true,["questguild"] = true,["hcsshouldnot"] = true,["shouldnotbe"] = true,["saidnowipes"] = true,["runsaid"] = true,["acrosstheroom"] = true,["takesages"] = true,["wegetthere"] = true,
--[""] = true,

-- Addons
["pfquest"] = true,["healersmate"] = true,["kui"] = true,

-- Onyxia Head/Legs
["anyonyhead"] = true,["anyonyxiahead"] = true,["anynefhead"] = true,
["anyoneonyhead"] = true,["anyoneonyxiahead"] = true,["anyonenefhead"] = true,
["needonyhead"] = true,["needonyxiahead"] = true,["neednefhead"] = true,
["onyheadsoon"] = true,["onyxiaheadsoon"] = true,["nefheadsoon"] = true,
["anyonypop"] = true,["anyonyxiapop"] = true,["anynefpop"] = true,
["killedony"] = true,["killedonyxia"] = true,["killednef"] = true,

["anyonynef"] = true,["nefbuff"] = true,["onybuffdropping"] = true,["onyxiabuffdropping"] = true,["onybuffdrop"] = true,["onyxiabuffdrop"] = true,
["anyonyturnins"] = true,["anyonyturns"] = true,
["onybuff"] = true,["onyisopen"] = true,["onyxiaisopen"] = true,
["anyonygoingtodrop"] = true,["anyonyxiagoingtodrop"] = true,["anynefgoingtodrop"] = true,
["onydrop"] = true,["onyxiadrop"] = true,["nefdrop"] = true,["onypleasedrop"] = true,["onyxiapleasedrop"] = true,["nefpleasedrop"] = true,
["onyneeddrop"] = true,["onyxianeeddrop"] = true,["nefneeddrop"] = true,["onyanyonedrop"] = true,["onyxiaanyonedrop"] = true,["nefanyonedrop"] = true,

-- Classes
["druidcansolo"] = true,["huntercansolo"] = true,["magecansolo"] = true,["paladincansolo"] = true,["priestcansolo"] = true,["roguecansolo"] = true,["shamancansolo"] = true,["warlockcansolo"] = true,["warriorcansolo"] = true,
["whyisdruid"] = true,["whyishunter"] = true,["whyismage"] = true,["whyispaladin"] = true,["whyispriest"] = true,["whyisrogue"] = true,["whyisshaman"] = true,["whyiswarlock"] = true,["whyiswarrior"] = true,
["asadruid"] = true,["asahunter"] = true,["asamage"] = true,["asapaladin"] = true,["asapriest"] = true,["asarogue"] = true,["asashaman"] = true,["asawarlock"] = true,["asawarrior"] = true,
["druidtrainer"] = true,["huntertrainer"] = true,["magetrainer"] = true,["paladintrainer"] = true,["priesttrainer"] = true,["roguetrainer"] = true,["shamantrainer"] = true,["warlocktrainer"] = true,["warriortrainer"] = true,
["druidguild"] = true,["hunterguild"] = true,["mageguild"] = true,["paladinguild"] = true,["priestguild"] = true,["rogueguild"] = true,["shamanguild"] = true,["warlockguild"] = true,["warriorguild"] = true,
["diddruid"] = true,["didhunter"] = true,["didmage"] = true,["didpaladin"] = true,["didpriest"] = true,["didrogue"] = true,["didshaman"] = true,["didwarlock"] = true,["didwarrior"] = true,
["weredruid"] = true,["werehunter"] = true,["weremage"] = true,["werepaladin"] = true,["werepriest"] = true,["wererogue"] = true,["wereshaman"] = true,["werewarlock"] = true,["werewarrior"] = true,
["dodruidhave"] = true,["dohunterhave"] = true,["domagehave"] = true,["dopaladinhave"] = true,["dopriesthave"] = true,["doroguehave"] = true,["doshamanhave"] = true,["dowarlockhave"] = true,["dowarriorhave"] = true,
["druidcanuse"] = true,["huntercanuse"] = true,["magecanuse"] = true,["paladincanuse"] = true,["priestcanuse"] = true,["roguecanuse"] = true,["shamancanuse"] = true,["warlockcanuse"] = true,["warriorcanuse"] = true,
["byadruid"] = true,["byahunter"] = true,["byamage"] = true,["byapaladin"] = true,["byapriest"] = true,["byarogue"] = true,["byashaman"] = true,["byawarlock"] = true,["byawarrior"] = true,

["raiddruid"] = true,["raidhunter"] = true,["raidpaladin"] = true,["raidpriest"] = true,["raidrogue"] = true,["raidmage"] = true,["raidshaman"] = true,["raidwarlock"] = true,["raidwarrior"] = true,
["makedruid"] = true,["makehunter"] = true,["makemage"] = true,["makepaladin"] = true,["makepriest"] = true,["makerogue"] = true,["makeshaman"] = true,["makewarlock"] = true,["makewarrior"] = true,
["playingdruid"] = true,["playinghunter"] = true,["playingmage"] = true,["playingpaladin"] = true,["playingpriest"] = true,["playingrogue"] = true,["playingshaman"] = true,["playingwarlock"] = true,["playingwarrior"] = true,
["itfordruid"] = true,["itforhunter"] = true,["itformage"] = true,["itforpaladin"] = true,["itforpriest"] = true,["itforrogue"] = true,["itforshaman"] = true,["itforwarlock"] = true,["itforwarrior"] = true,

--["asboomie"] = true,["asbalance"] = true,["asferal"] = true,["asresto"] = true,["asrestoration"] = true,["playingboomie"] = true,["playingbalance"] = true,["playingferal"] = true,["playingresto"] = true,["playingrestoration"] = true,
--["asbm"] = true,["asmm"] = true,["playingbm"] = true,["playingmm"] = true,
--["asfire"] = true,["asfrost"] = true,["asarcane"] = true,["playingfire"] = true,["playingfrost"] = true,["playingarcane"] = true,
--["asholy"] = true,["asret"] = true,["asprot"] = true,["playingholy"] = true,["playingret"] = true,["playingprot"] = true,
--["ascombat"] = true,["assubtlety"] = true,["playingcombat"] = true,["playingsubtlety"] = true,
--["asfury"] = true,["asarm"] = true,["playingfury"] = true,["playingarm"] = true,
--["asshadow"] = true,["asdisc"] = true,["playingshadow"] = true,["playingshadow"] = true,
--["asenhancement"] = true,["aselemental"] = true,["asele"] = true,["asenh"] = true,["playingenhancement"] = true,["playingelemental"] = true,["playingele"] = true,["playingenh"] = true,
--["asdestruction"] = true,["asaffliction"] = true,["asdemonology"] = true,["asdemo"] = true,["asafflic"] = true,["asdestro"] = true,
--["playingdestruction"] = true,["playingaffliction"] = true,["playingdemonology"] = true,["playingdemo"] = true,["playingafflic"] = true,["playingdestro"] = true,

["shoulddruid"] = true,["shouldhunter"] = true,["shouldmage"] = true,["shouldpaladin"] = true,["shouldpriest"] = true,["shouldrogue"] = true,["shouldshaman"] = true,["shouldwarrior"] = true,["shouldwarlock"] = true,

["ineeddruidhelp"] = true,["ineedhunterhelp"] = true,["ineedmagehelp"] = true,["ineedpaladinhelp"] = true,["ineedpriesthelp"] = true,["ineedroguehelp"] = true,["ineedshamanhelp"] = true,["ineedwarriorhelp"] = true,["ineedwarlockhelp"] = true,
["druidexpert"] = true,["hunterexpert"] = true,["mageexpert"] = true,["paladinexpert"] = true,["priestexpert"] = true,["rogueexpert"] = true,["shamanexpert"] = true,["warlockexpert"] = true,["warriorexpert"] = true,

["needpaladinbuff"] = true,["needdruidbuff"] = true,["needmagebuff"] = true,["needpriestbuff"] = true,
["paladinbuffkings"] = true,["priestbuffstamina"] = true,
["buffarcaneintellect"] = true,["buffintellect"] = true,["buffkings"] = true,["buffmotw"] = true,
["needstaminabuff"] = true,["needintellectbuff"] = true,
["druidpov"] = true,["hunterpov"] = true,["magepov"] = true,["paladinpov"] = true,["priestpov"] = true,["roguepov"] = true,["shamanpov"] = true,["warlockpov"] = true,["warriorpov"] = true,

-- Races
["createdwarf"] = true,["createhuman"] = true,["creategnome"] = true,["creategoblin"] = true,["createhighelf"] = true,["createnightelf"] = true,["createorc"] = true,["createtauren"] = true,["createtroll"] = true,["createundead"] = true,

--["ordwarf"] = true,["orhuman"] = true,["orgnome"] = true,["orgoblin"] = true,["orhighelf"] = true,["ornightelf"] = true,["ororc"] = true,["ortauren"] = true,["ortroll"] = true,["orundead"] = true,

["nightelfpriest"] = true,

-- Roles
["shouldicaster"] = true,["shouldidamage"] = true,["shouldiheal"] = true,["shouldimelee"] = true,["shouldirange"] = true,["shouldistealth"] = true,["shoulditank"] = true,

-- Professions
["alchemististhe"] = true,["blacksmithisthe"] = true,["enchantisthe"] = true,["engineeristhe"] = true,["herbalismisthe"] = true,["leatherworkeristhe"] = true,["mineristhe"] = true,["tailoristhe"] = true,

-- Things not in Vanilla
["icc"] = true,["ssc"] = true,["tk"] = true,["slavepens"] = true,["botanica"] = true,["mechanaar"] = true,["tempestkeep"] = true,["bloodfurnace"] = true,["underbog"] = true,["shatteredhalls"] = true,["shadowmoon"] = true,
}

GF_WORD_GUILD = {
["lfmguildies"] = 2,
["akamagosh"] = 2,["magosh"] = 2,["recruiting"] = 2,["recruitment"] = 1,
["monday"] = .5,["mondays"] = .5,["tuesday"] = .5,["tuesdays"] = .5,["wednesday"] = .5,["wednesdays"] = .5,["thursday"] = .5,["thursdays"] = .5,["friday"] = .5,["fridays"] = .5,["saturday"] = .5,["saturdays"] = .5,["sunday"] = .5,["sundays"] = .5,
["mon"] = .5,["tue"] = .5,["tues"] = .5,["thu"] = .5,["thur"] = .5,["thurs"] = .5,["fri"] = .5,["sat"] = .25,["sun"] = .25,["week"] = .5,["weekly"] = .5,

["everymonday"] = .5,["everytuesday"] = .5,["everywednesday"] = .5,["everythursday"] = .5,["everyfriday"] = .5,["everysaturday"] = .5,["everysunday"] = .5,

["dedicated"] = 1,["environment"] = 1,["membership"] = 1,["community"] = 1,["progression"] = 1,["progressing"] = .5,["events"] = 1,["helpful"] = .5,["friends"] = .5,
["ambience"] = 1,["brotherhood"] = 1,["members"] = .5,["leveling"] = 1,["welcoming"] = 1,["welcome"] = .5,["recruit"] = .5,["allwelcome"] = .5,["twink"] = 1,["house"] = .5,["roster"] = .5,["endgame"] = 1,
["gbank"] = 1,["tabard"] = .5,["dkp"] = 1,["adventures"] = 1,["adventurers"] = 1,["camaraderie"] = 1,["reliable"] = .25,
["getinfo"] = 1,
["welcoming"] = 1,["exceptionalgamers"] = .5,["welcomingexceptionalgamers"] = .5,["fromanyguild"] = 1,

["lfanyguild"] = 3,["lfganyguild"] = 3,["lfforguild"] = 3,["lfgforguild"] = 3,
["lfgguild"] = 3,

["isaguild"] = .5,
["guild"] = 102,["ginvite"] = 3,["guid"] = 1,["guildinvite"] = 3,["invitemeguild"] = 1,["invitemepleaseguild"] = 1,
["guildbank"] = .5,["guildbase"] = .5,["guildhouse"] = 1,["guildtavern"] = 1,
["findguild"] = .5,["findaguild"] = .5,

["lfguild"] = 3,["guildlf"] = 1,["yourguild"] = .5,["needguild"] = 1,["lfinvite"] = .5,["anyforguild"] = 3,["searchguild"] = .5,

["levellaugh"] = .5,["laughlevel"] = .5,["wejustlevel"] = .5,

["guildwithchillpeople"] = 1,["chillpeople"] = .5,

["needtofind"] = .5,
["druidfind"] = .5,["hunterfind"] = .5,["magefind"] = .5,["paladinfind"] = .5,["priestfind"] = .5,["roguefind"] = .5,["shamanfind"] = .5,["warlockfind"] = .5,["warriorfind"] = .5,

["scoutingnew"] = 1,
["lflikeminded"] = 1,
["finishourcore"] = 3,
["lfgmoremembers"] = 1,
["allcurrentcontent"] = 3,["highendcontent"] = 3,["startinweek"] = 1,["tryingtorebuild"] = 1,["lookingtorebuild"] = 1,["lookingtogrow"] = 1,["growwithus"] = 1,
["friendsandguildies"] = 1,["levelwithfriends"] = .5,["liketolevel"] = .5,["easygoingplayer"] = 2,["helpingeachother"] = 1,["helpwithleveling"] = 1,["helpifneeded"] = .5,["wehelpyou"] = .5,

["homewithus"] = 1,
["allclasseswelcome"] = 3,["allplayerwelcome"] = 1,["gearedplayerwelcome"] = 1,["forallplayer"] = .5,["everybodyiswelcome"] = 1,["everyoneiswelcome"] = 1,["opentoanyone"] = .5,
["opentoeveryone"] = .5,["alliswelcome"] = .5,["lotsofmembers"] = .5,["welcometoapply"] = 2,["beginnerwelcome"] = 1,

-- Join
["considerjoining"] = 2,["aboutjoining"] = 2,

["joina"] = .25,["joinus"] = 1,["joinnow"] = .5,["joinustoday"] = 1,["jointoday"] = 2,["jointhe"] = .25,["jointhebest"] = .5,["jointhemost"] = .25,["joinaguild"] = .25,["joinmyguild"] = 1,["jointoaccess"] = 1,["jointhespectacle"] = 1,
["joinournation"] = 1,["joinourdiscord"] = 1,["joinalesserguild"] = .25,["joinyourdestiny"] = 1,
["comejoin"] = 1,["comejoinyour"] = .5,
["lookingtojoin"] = 1,["asktojoin"] = 1,
["needtojoinguild"] = 2,
["pleasejoinus"] = .5,
["thenjoin"] = 1,
["tojoin"] = .5,["tojoinus"] = .5,["standwithus"] = 1,

-- Raid
["ourraidgroup"] = 3,
["lfraiders"] = .5,["lfskilledraiders"] = 2,["lfgskilledraiders"] = 2,["lookingtoraid"] = .5,

["andraidsoon"] = 1,["andmayberaid"] = .5,
["alltheraid"] = 1,["raidplanned"] = 1,["raidwithus"] = 1.5,["startraidsoon"] = 1,["justgoodraid"] = 3,["plantoraid"] = .5,["raidinthefuture"] = 1,["raidsomeday"] = 1,
["raidgroup"] = 2,["raidgroup"] = 2,["raidroster"] = 2,["raiddays"] = 2,["raidnights"] = 2,
["raidready"] = 1,
["coreraid"] = 1,
["coreraiders"] = 2,["raidmechanic"] = .5,

["casualraid"] = 1,

["weekdayraid"] = 1,["raidday"] = .5,["raidtime"] = 2,["raidtimes"] = 2,
["allraids"] = .5,
["weraid"] = .5,

-- Misc
["nonstopactivity"] = .5,["weeklyevents"] = .5,
["ourroster"] = 2,["buildingranks"] = 1,
["lootcouncil"] = 1.5,["lootsystem"] = 1.5,["epgp"] = 1.5,["srms"] = .5,
["coregroup"] = 2,
["coreroster"] = 2,
["currentlyprogressing"] = 1.5,["clearingcontent"] = 1,["turtlecontent"] = 1,["endgamecontent"] = 1,["lowercontent"] = .5,["forcontent"] = .5,["firstrun"] = 1,["classicexperience"] = .5,["vanillaexperience"] = .5,
["leveltogether"] = 1,["groupquest"] = .5,["alliancelevelers"] = 1,["hordelevelers"] = 1,["peopleleveling"] = 1,["questtogether"] = .5,["newlymade"] = .5,["hardcoreleveling"] = .5,
["needyou"] = 2,["welcomeyou"] = 2,["welcometo"] = 1,["alwayswelcome"] = 1,["adultswelcome"] = .5,["raiderswelcome"] = .5,["moremembers"] = .5,["quirkymembers"] = .5,["goodgroup"] = .5,["maturecommunity"] = 1,["funcommunity"] = 1,
["enjoyleveling"] = 1,["casualleveling"] = 1,["forcasualplayer"] = .5,
["inweek"] = 1,["aweek"] = 1,["everyweek"] = .5,
["newplayer"] = 2,["newmembers"] = 1.5,["seriousmembers"] = .5,["veteranplayer"] = 1,["casualfriendly"] = 1,
["dungeoncrawling"] = 1,["pleasantadventure"] = 2,["goodvibes"] = 2,["groupclears"] = 2,["laidback"] = .5,["personalpractice"] = .5,["roleplayingevent"] = .5,["ourvoyage"] = .5,["freshjourney"] = .5,["funplace"] = .5,
["warmodeonly"] = .5,["hordeonly"] = .5,["pvpfriendly"] = 1,["pvefriendly"] = 1,
["wejoke"] = .5,["weaccept"] = 1,
["alliancewarmodeonly"] = .5,["hordewarmodeonly"] = .5,["warmodeonly"] = 1,

["collective"] = .5,["sharedjourney"] = 1,["isanadventure"] = .5,["oneofus"] = .5,["tohangout"] = .5,

["naandeu"] = 1,["euandna"] = 1,

["mcclearedin"] = 1,["blackwinglairclearedin"] = 1,["aqclearedin"] = 1,["naxxramasclearedin"] = 1,
["mcprogression"] = 1,["blackwinglairprogression"] = 1,["aqprogression"] = 1,["naxxramasprogression"] = 1,

-- Guild Spam that get around my filters
["pretendingsocializing"] = .5,["escapethehellscape"] = .5,["safehavenforgnomes"] = 2,["guildforgnomes"] = 2,
["islfcaster"] = 1,["islfhpriest"] = 1,["islfrdruid"] = 1,["islfrsham"] = 1,
["wememe"] = 1,["skilloptional"] = 1,["remembermechanics"] = 1,

["immortalguild"] = 1,["adventurerguild"] = .5,["vagrantadventurerguild"] = .5,["getgudtoday"] = 1.5,["getgoodtoday"] = 1,

["mconfarm"] = 1,["blackwinglaironfarm"] = 1,["aqonfarm"] = 1,["naxxramasonfarm"] = 1,

["aguildthat"] = .5,["focusedonpeople"] = .5,["discovertogether"] = 1,["toplaywith"] = .5,["manraid"] = .5,

["aboveandbeyond"] = 1,["aswelf"] = 1,["themysteriesofazeroth"] = 1,["wedontdiscriminate"] = 1,["haveguildhouse"] = .5,["bandofbrothers"] = .5,["looknofurther"] = .5,
["bestguild"] = .5,["raidcalls"] = .5,["occasionalwipe"] = 1,["excessivelaughter"] = 1,

["livetheclassic"] = 1,["classicwowexperience"] = 1.5,["slowpace"] = .5,
["youcanchat"] = .5,["supercasual"] = .5,["sharetales"] = 1,["adventurewith"] = 1,["camaraderieandfamily"] = 1,["familycomefirst"] = 1,["todayforaninvite"] = 1,

["startinaweek"] = 1,["nopressurenodrama"] = 3,
["lfmplayer"] = 1,["lfmembers"] = 2,["lfmoremembers"] = 2,["lfmoreplayer"] = 1,["lfnewraiders"] = 2,["seekingfewgoodplayer"] = 1,["seekingsomegoodplayer"] = 1,["playerofanylevel"] = 1,
["lovetohaveyou"] = 2,["wewillhelpyou"] = .5,
["playerofanyclass"] = 1,["playerofallclasses"] = 1,["opentoall"] = 1,["alllevelsarewelcome"] = 1,

["levelwithyourfellow"] = 1,["nopressure"] = .5,["raidwillcomeeventually"] = 1,

["socialpve"] = .5,["socialpvp"] = .5,["socialexperience"] = .5,["pvepvp"] = .5,["pvpexperience"] = .5,["pvepvpexperience"] = 1,

-- Guild terms
["wowguild"] = .5,["activewowguild"] = .5,["alliancewowguild"] = .5,["chillwowguild"] = .5,["coolwowguild"] = .5,["cozywowguild"] = .5,["crossfactionwowguild"] = .5,["erpwowguild"] = .5,["friendlywowguild"] = .5,["funwowguild"] = .5,["helpfulwowguild"] = .5,["hordewowguild"] = .5,["levelwowguild"] = .5,["levelingwowguild"] = .5,["pvpwowguild"] = .5,["raidwowguild"] = .5,["rpwowguild"] = .5,["socialwowguild"] = .5,
["lgbtfriendlyguild"] = .5,["lgbtguild"] = .5,["lgbtqguild"] = .5,["lgbtqriendlyguild"] = .5,["challengingguild"] = .5,
["lflgbtfriendlyguild"] = .5,["lflgbtguild"] = .5,["lflgbtqguild"] = .5,["lflgbtqriendlyguild"] = .5,
["dungeonguild"] = 1,["lfdungeonguild"] = .5,["lfgdungeonguild"] = .5,["anydungeonguild"] = .5,["needdungeonguild"] = .5,
["newguild"] = .5,["lfnewguild"] = .5,["lfgnewguild"] = .5,["anynewguild"] = .5,["neednewguild"] = .5,

["memeguild"] = .5,["lfmemeguild"] = .5,["lfgmemeguild"] = .5,["needmemeguild"] = .5,
["beginnerguild"] = .5,["lfbeginnerguild"] = .5,["lfgbeginnerguild"] = .5,["needbeginnerguild"] = .5,
["newlymade"] = .5,["newlymadeguild"] = .5,["lfnewlymadeguild"] = .5,["lfgnewlymadeguild"] = .5,["neednewlymadeguild"] = .5,
["newlycreatedguild"] = .5,["lfnewlycreatedguild"] = .5,["lfgnewlycreatedguild"] = .5,["neednewlycreatedguild"] = .5,
["challenging"] = .5,["challengingguild"] = .5,["lfchallengingguild"] = .5,["lfgchallengingguild"] = .5,["needchallengingguild"] = .5,
["hypeguild"] = .5,["lfhypeguild"] = .5,["lfghypeguild"] = .5,["needhypeguild"] = .5,
["skilledguild"] = .5,["lfskilledguild"] = .5,["lfgskilledguild"] = .5,["needskilledguild"] = .5,
["allianceonlyguild"] = .5,["lfallianceonlyguild"] = .5,["lfgallianceonlyguild"] = .5,["needallianceonlyguild"] = .5,
["hordeonlyguild"] = .5,["lfhordeonlyguild"] = .5,["lfghordeonlyguild"] = .5,["needhordeonlyguild"] = .5,
["recentlyformedguild"] = .5,["lfrecentlyformedguild"] = .5,["lfgrecentlyformedguild"] = .5,["needrecentlyformedguild"] = .5,
["newlyformedguild"] = .5,["lfnewlyformedguild"] = .5,["lfgnewlyformedguild"] = .5,["neednewlyformedguild"] = .5,
["wokeguild"] = .5,["lfwokeguild"] = .5,["lfgwokeguild"] = .5,["needwokeguild"] = .5,
["furryguild"] = .5,["lffurryguild"] = .5,["lfgfurryguild"] = .5,["anyfurryguild"] = .5,["needfurryguild"] = .5,["freshfurryguild"] = .5,
["newlyformed"] = 1,["recentlyformed"] = 1,

-- Guild combinations
["activeguild"] = .5,["inviteactiveguild"] = .5,["lfactiveguild"] = .5,["lfgactiveguild"] = .5,["needactiveguild"] = .5,["anyactiveguild"] = .5,["allianceactiveguild"] = .5,["beginneractiveguild"] = .5,["casualactiveguild"] = .5,["chillactiveguild"] = .5,["coolactiveguild"] = .5,["cozyactiveguild"] = .5,["crossfactionactiveguild"] = .5,["erpactiveguild"] = .5,["friendlyactiveguild"] = .5,["funactiveguild"] = .5,["helpfulactiveguild"] = .5,["hordeactiveguild"] = .5,["levelactiveguild"] = .5,["levelingactiveguild"] = .5,["pveactiveguild"] = .5,["pvpactiveguild"] = .5,["raidactiveguild"] = .5,["rpactiveguild"] = .5,["socialactiveguild"] = .5,["mercenaryactiveguild"] = .5,["roleplayingactiveguild"] = .5,
["allianceguild"] = .5,["inviteallianceguild"] = .5,["lfallianceguild"] = .5,["lfgallianceguild"] = .5,["needallianceguild"] = .5,["anyallianceguild"] = .5,["activeallianceguild"] = .5,["beginnerallianceguild"] = .5,["casualallianceguild"] = .5,["chillallianceguild"] = .5,["coolallianceguild"] = .5,["cozyallianceguild"] = .5,["crossfactionallianceguild"] = .5,["erpallianceguild"] = .5,["friendlyallianceguild"] = .5,["funallianceguild"] = .5,["helpfulallianceguild"] = .5,["hordeallianceguild"] = .5,["levelallianceguild"] = .5,["levelingallianceguild"] = .5,["pveallianceguild"] = .5,["pvpallianceguild"] = .5,["raidallianceguild"] = .5,["rpallianceguild"] = .5,["socialallianceguild"] = .5,["mercenaryallianceguild"] = .5,["roleplayingallianceguild"] = .5,
["beginnerguild"] = .5,["invitebeginnerguild"] = .5,["lfbeginnerguild"] = .5,["lfgbeginnerguild"] = .5,["needbeginnerguild"] = .5,["anybeginnerguild"] = .5,["activebeginnerguild"] = .5,["alliancebeginnerguild"] = .5,["casualbeginnerguild"] = .5,["chillbeginnerguild"] = .5,["coolbeginnerguild"] = .5,["cozybeginnerguild"] = .5,["crossfactionbeginnerguild"] = .5,["erpbeginnerguild"] = .5,["friendlybeginnerguild"] = .5,["funbeginnerguild"] = .5,["helpfulbeginnerguild"] = .5,["hordebeginnerguild"] = .5,["levelbeginnerguild"] = .5,["levelingbeginnerguild"] = .5,["pvebeginnerguild"] = .5,["pvpbeginnerguild"] = .5,["raidbeginnerguild"] = .5,["rpbeginnerguild"] = .5,["socialbeginnerguild"] = .5,["mercenarybeginnerguild"] = .5,["roleplayingbeginnerguild"] = .5,
["casualguild"] = .5,["invitecasualguild"] = .5,["lfcasualguild"] = .5,["lfgcasualguild"] = .5,["needcasualguild"] = .5,["anycasualguild"] = .5,["activecasualguild"] = .5,["alliancecasualguild"] = .5,["beginnercasualguild"] = .5,["chillcasualguild"] = .5,["coolcasualguild"] = .5,["cozycasualguild"] = .5,["crossfactioncasualguild"] = .5,["erpcasualguild"] = .5,["friendlycasualguild"] = .5,["funcasualguild"] = .5,["helpfulcasualguild"] = .5,["hordecasualguild"] = .5,["levelcasualguild"] = .5,["levelingcasualguild"] = .5,["pvecasualguild"] = .5,["pvpcasualguild"] = .5,["raidcasualguild"] = .5,["rpcasualguild"] = .5,["socialcasualguild"] = .5,["mercenarycasualguild"] = .5,["roleplayingcasualguild"] = .5,
["chillguild"] = .5,["invitechillguild"] = .5,["lfchillguild"] = .5,["lfgchillguild"] = .5,["needchillguild"] = .5,["anychillguild"] = .5,["activechillguild"] = .5,["alliancechillguild"] = .5,["beginnerchillguild"] = .5,["casualchillguild"] = .5,["coolchillguild"] = .5,["cozychillguild"] = .5,["crossfactionchillguild"] = .5,["erpchillguild"] = .5,["friendlychillguild"] = .5,["funchillguild"] = .5,["helpfulchillguild"] = .5,["hordechillguild"] = .5,["levelchillguild"] = .5,["levelingchillguild"] = .5,["pvechillguild"] = .5,["pvpchillguild"] = .5,["raidchillguild"] = .5,["rpchillguild"] = .5,["socialchillguild"] = .5,["mercenarychillguild"] = .5,["roleplayingchillguild"] = .5,
["coolguild"] = .5,["invitecoolguild"] = .5,["lfcoolguild"] = .5,["lfgcoolguild"] = .5,["needcoolguild"] = .5,["anycoolguild"] = .5,["activecoolguild"] = .5,["alliancecoolguild"] = .5,["beginnercoolguild"] = .5,["casualcoolguild"] = .5,["chillcoolguild"] = .5,["cozycoolguild"] = .5,["crossfactioncoolguild"] = .5,["erpcoolguild"] = .5,["friendlycoolguild"] = .5,["funcoolguild"] = .5,["helpfulcoolguild"] = .5,["hordecoolguild"] = .5,["levelcoolguild"] = .5,["levelingcoolguild"] = .5,["pvecoolguild"] = .5,["pvpcoolguild"] = .5,["raidcoolguild"] = .5,["rpcoolguild"] = .5,["socialcoolguild"] = .5,["mercenarycoolguild"] = .5,["roleplayingcoolguild"] = .5,
["cozyguild"] = .5,["invitecozyguild"] = .5,["lfcozyguild"] = .5,["lfgcozyguild"] = .5,["needcozyguild"] = .5,["anycozyguild"] = .5,["activecozyguild"] = .5,["alliancecozyguild"] = .5,["beginnercozyguild"] = .5,["casualcozyguild"] = .5,["chillcozyguild"] = .5,["coolcozyguild"] = .5,["crossfactioncozyguild"] = .5,["erpcozyguild"] = .5,["friendlycozyguild"] = .5,["funcozyguild"] = .5,["helpfulcozyguild"] = .5,["hordecozyguild"] = .5,["levelcozyguild"] = .5,["levelingcozyguild"] = .5,["pvecozyguild"] = .5,["pvpcozyguild"] = .5,["raidcozyguild"] = .5,["rpcozyguild"] = .5,["socialcozyguild"] = .5,["mercenarycozyguild"] = .5,["roleplayingcozyguild"] = .5,
["crossfactionguild"] = .5,["invitecrossfactionguild"] = .5,["lfcrossfactionguild"] = .5,["lfgcrossfactionguild"] = .5,["needcrossfactionguild"] = .5,["anycrossfactionguild"] = .5,["activecrossfactionguild"] = .5,["alliancecrossfactionguild"] = .5,["beginnercrossfactionguild"] = .5,["casualcrossfactionguild"] = .5,["chillcrossfactionguild"] = .5,["coolcrossfactionguild"] = .5,["cozycrossfactionguild"] = .5,["erpcrossfactionguild"] = .5,["friendlycrossfactionguild"] = .5,["funcrossfactionguild"] = .5,["helpfulcrossfactionguild"] = .5,["hordecrossfactionguild"] = .5,["levelcrossfactionguild"] = .5,["levelingcrossfactionguild"] = .5,["pvecrossfactionguild"] = .5,["pvpcrossfactionguild"] = .5,["raidcrossfactionguild"] = .5,["rpcrossfactionguild"] = .5,["socialcrossfactionguild"] = .5,["mercenarycrossfactionguild"] = .5,["roleplayingcrossfactionguild"] = .5,
["erpguild"] = .5,["inviteerpguild"] = .5,["lferpguild"] = .5,["lfgerpguild"] = .5,["neederpguild"] = .5,["anyerpguild"] = .5,["activeerpguild"] = .5,["allianceerpguild"] = .5,["beginnererpguild"] = .5,["casualerpguild"] = .5,["chillerpguild"] = .5,["coolerpguild"] = .5,["cozyerpguild"] = .5,["crossfactionerpguild"] = .5,["friendlyerpguild"] = .5,["funerpguild"] = .5,["helpfulerpguild"] = .5,["hordeerpguild"] = .5,["levelerpguild"] = .5,["levelingerpguild"] = .5,["pveerpguild"] = .5,["pvperpguild"] = .5,["raiderpguild"] = .5,["rperpguild"] = .5,["socialerpguild"] = .5,["mercenaryerpguild"] = .5,["roleplayingerpguild"] = .5,
["friendlyguild"] = .5,["invitefriendlyguild"] = .5,["lffriendlyguild"] = .5,["lfgfriendlyguild"] = .5,["needfriendlyguild"] = .5,["anyfriendlyguild"] = .5,["activefriendlyguild"] = .5,["alliancefriendlyguild"] = .5,["beginnerfriendlyguild"] = .5,["casualfriendlyguild"] = .5,["chillfriendlyguild"] = .5,["coolfriendlyguild"] = .5,["cozyfriendlyguild"] = .5,["crossfactionfriendlyguild"] = .5,["erpfriendlyguild"] = .5,["funfriendlyguild"] = .5,["helpfulfriendlyguild"] = .5,["hordefriendlyguild"] = .5,["levelfriendlyguild"] = .5,["levelingfriendlyguild"] = .5,["pvefriendlyguild"] = .5,["pvpfriendlyguild"] = .5,["raidfriendlyguild"] = .5,["rpfriendlyguild"] = .5,["socialfriendlyguild"] = .5,["mercenaryfriendlyguild"] = .5,["roleplayingfriendlyguild"] = .5,
["funguild"] = .5,["invitefunguild"] = .5,["lffunguild"] = .5,["lfgfunguild"] = .5,["needfunguild"] = .5,["anyfunguild"] = .5,["activefunguild"] = .5,["alliancefunguild"] = .5,["beginnerfunguild"] = .5,["casualfunguild"] = .5,["chillfunguild"] = .5,["coolfunguild"] = .5,["cozyfunguild"] = .5,["crossfactionfunguild"] = .5,["erpfunguild"] = .5,["friendlyfunguild"] = .5,["helpfulfunguild"] = .5,["hordefunguild"] = .5,["levelfunguild"] = .5,["levelingfunguild"] = .5,["pvefunguild"] = .5,["pvpfunguild"] = .5,["raidfunguild"] = .5,["rpfunguild"] = .5,["socialfunguild"] = .5,["mercenaryfunguild"] = .5,["roleplayingfunguild"] = .5,
["helpfulguild"] = .5,["invitehelpfulguild"] = .5,["lfhelpfulguild"] = .5,["lfghelpfulguild"] = .5,["needhelpfulguild"] = .5,["anyhelpfulguild"] = .5,["activehelpfulguild"] = .5,["alliancehelpfulguild"] = .5,["beginnerhelpfulguild"] = .5,["casualhelpfulguild"] = .5,["chillhelpfulguild"] = .5,["coolhelpfulguild"] = .5,["cozyhelpfulguild"] = .5,["crossfactionhelpfulguild"] = .5,["erphelpfulguild"] = .5,["friendlyhelpfulguild"] = .5,["funhelpfulguild"] = .5,["hordehelpfulguild"] = .5,["levelhelpfulguild"] = .5,["levelinghelpfulguild"] = .5,["pvehelpfulguild"] = .5,["pvphelpfulguild"] = .5,["raidhelpfulguild"] = .5,["rphelpfulguild"] = .5,["socialhelpfulguild"] = .5,["mercenaryhelpfulguild"] = .5,["roleplayinghelpfulguild"] = .5,
["hordeguild"] = .5,["invitehordeguild"] = .5,["lfhordeguild"] = .5,["lfghordeguild"] = .5,["needhordeguild"] = .5,["anyhordeguild"] = .5,["activehordeguild"] = .5,["alliancehordeguild"] = .5,["beginnerhordeguild"] = .5,["casualhordeguild"] = .5,["chillhordeguild"] = .5,["coolhordeguild"] = .5,["cozyhordeguild"] = .5,["crossfactionhordeguild"] = .5,["erphordeguild"] = .5,["friendlyhordeguild"] = .5,["funhordeguild"] = .5,["helpfulhordeguild"] = .5,["levelhordeguild"] = .5,["levelinghordeguild"] = .5,["pvehordeguild"] = .5,["pvphordeguild"] = .5,["raidhordeguild"] = .5,["rphordeguild"] = .5,["socialhordeguild"] = .5,["mercenaryhordeguild"] = .5,["roleplayinghordeguild"] = .5,
["levelguild"] = .5,["invitelevelguild"] = .5,["lflevelguild"] = .5,["lfglevelguild"] = .5,["needlevelguild"] = .5,["anylevelguild"] = .5,["activelevelguild"] = .5,["alliancelevelguild"] = .5,["beginnerlevelguild"] = .5,["casuallevelguild"] = .5,["chilllevelguild"] = .5,["coollevelguild"] = .5,["cozylevelguild"] = .5,["crossfactionlevelguild"] = .5,["erplevelguild"] = .5,["friendlylevelguild"] = .5,["funlevelguild"] = .5,["helpfullevelguild"] = .5,["hordelevelguild"] = .5,["levelinglevelguild"] = .5,["pvelevelguild"] = .5,["pvplevelguild"] = .5,["raidlevelguild"] = .5,["rplevelguild"] = .5,["sociallevelguild"] = .5,["mercenarylevelguild"] = .5,["roleplayinglevelguild"] = .5,
["levelingguild"] = .5,["invitelevelingguild"] = .5,["lflevelingguild"] = .5,["lfglevelingguild"] = .5,["needlevelingguild"] = .5,["anylevelingguild"] = .5,["activelevelingguild"] = .5,["alliancelevelingguild"] = .5,["beginnerlevelingguild"] = .5,["casuallevelingguild"] = .5,["chilllevelingguild"] = .5,["coollevelingguild"] = .5,["cozylevelingguild"] = .5,["crossfactionlevelingguild"] = .5,["erplevelingguild"] = .5,["friendlylevelingguild"] = .5,["funlevelingguild"] = .5,["helpfullevelingguild"] = .5,["hordelevelingguild"] = .5,["levellevelingguild"] = .5,["pvelevelingguild"] = .5,["pvplevelingguild"] = .5,["raidlevelingguild"] = .5,["rplevelingguild"] = .5,["sociallevelingguild"] = .5,["mercenarylevelingguild"] = .5,["roleplayinglevelingguild"] = .5,
["pveguild"] = .5,["invitepveguild"] = .5,["lfpvpguild"] = .5,["lfgpvpguild"] = .5,["needpvpguild"] = .5,["anypvpguild"] = .5,["activepveguild"] = .5,["alliancepveguild"] = .5,["beginnerpveguild"] = .5,["casualpveguild"] = .5,["chillpveguild"] = .5,["coolpveguild"] = .5,["cozypveguild"] = .5,["crossfactionpveguild"] = .5,["erppveguild"] = .5,["friendlypveguild"] = .5,["funpveguild"] = .5,["helpfulpveguild"] = .5,["hordepveguild"] = .5,["levelpveguild"] = .5,["levelingpveguild"] = .5,["pvppveguild"] = .5,["raidpveguild"] = .5,["rppveguild"] = .5,["socialpveguild"] = .5,["mercenarypveguild"] = .5,["roleplayingpveguild"] = .5,
["pvpguild"] = .5,["invitepvpguild"] = .5,["lfraidguild"] = .5,["lfgraidguild"] = .5,["needraidguild"] = .5,["anyraidguild"] = .5,["activepvpguild"] = .5,["alliancepvpguild"] = .5,["beginnerpvpguild"] = .5,["casualpvpguild"] = .5,["chillpvpguild"] = .5,["coolpvpguild"] = .5,["cozypvpguild"] = .5,["crossfactionpvpguild"] = .5,["erppvpguild"] = .5,["friendlypvpguild"] = .5,["funpvpguild"] = .5,["helpfulpvpguild"] = .5,["hordepvpguild"] = .5,["levelpvpguild"] = .5,["levelingpvpguild"] = .5,["pvepvpguild"] = .5,["raidpvpguild"] = .5,["rppvpguild"] = .5,["socialpvpguild"] = .5,["mercenarypvpguild"] = .5,["roleplayingpvpguild"] = .5,
["raidguild"] = .5,["inviteraidguild"] = .5,["lfrpguild"] = .5,["lfgrpguild"] = .5,["needrpguild"] = .5,["anyrpguild"] = .5,["activeraidguild"] = .5,["allianceraidguild"] = .5,["beginnerraidguild"] = .5,["casualraidguild"] = .5,["chillraidguild"] = .5,["coolraidguild"] = .5,["cozyraidguild"] = .5,["crossfactionraidguild"] = .5,["erpraidguild"] = .5,["friendlyraidguild"] = .5,["funraidguild"] = .5,["helpfulraidguild"] = .5,["horderaidguild"] = .5,["levelraidguild"] = .5,["levelingraidguild"] = .5,["pveraidguild"] = .5,["pvpraidguild"] = .5,["rpraidguild"] = .5,["socialraidguild"] = .5,["mercenaryraidguild"] = .5,["roleplayingraidguild"] = .5,
["rpguild"] = .5,["inviterpguild"] = .5,["lfsocialguild"] = .5,["lfgsocialguild"] = .5,["needsocialguild"] = .5,["anysocialguild"] = .5,["activerpguild"] = .5,["alliancerpguild"] = .5,["beginnerrpguild"] = .5,["casualrpguild"] = .5,["chillrpguild"] = .5,["coolrpguild"] = .5,["cozyrpguild"] = .5,["crossfactionrpguild"] = .5,["erprpguild"] = .5,["friendlyrpguild"] = .5,["funrpguild"] = .5,["helpfulrpguild"] = .5,["horderpguild"] = .5,["levelrpguild"] = .5,["levelingrpguild"] = .5,["pverpguild"] = .5,["pvprpguild"] = .5,["raidrpguild"] = .5,["socialrpguild"] = .5,["mercenaryrpguild"] = .5,["roleplayingrpguild"] = .5,
["socialguild"] = .5,["invitesocialguild"] = .5,["lfmercenaryguild"] = .5,["lfgmercenaryguild"] = .5,["needmercenaryguild"] = .5,["anymercenaryguild"] = .5,["activesocialguild"] = .5,["alliancesocialguild"] = .5,["beginnersocialguild"] = .5,["casualsocialguild"] = .5,["chillsocialguild"] = .5,["coolsocialguild"] = .5,["cozysocialguild"] = .5,["crossfactionsocialguild"] = .5,["erpsocialguild"] = .5,["friendlysocialguild"] = .5,["funsocialguild"] = .5,["helpfulsocialguild"] = .5,["hordesocialguild"] = .5,["levelsocialguild"] = .5,["levelingsocialguild"] = .5,["pvesocialguild"] = .5,["pvpsocialguild"] = .5,["raidsocialguild"] = .5,["rpsocialguild"] = .5,["mercenarysocialguild"] = .5,["roleplayingsocialguild"] = .5,
["mercenaryguild"] = .5,["invitemercenaryguild"] = .5,["lfroleplayingguild"] = .5,["lfgroleplayingguild"] = .5,["needroleplayingguild"] = .5,["anyroleplayingguild"] = .5,["activemercenaryguild"] = .5,["alliancemercenaryguild"] = .5,["beginnermercenaryguild"] = .5,["casualmercenaryguild"] = .5,["chillmercenaryguild"] = .5,["coolmercenaryguild"] = .5,["cozymercenaryguild"] = .5,["crossfactionmercenaryguild"] = .5,["erpmercenaryguild"] = .5,["friendlymercenaryguild"] = .5,["funmercenaryguild"] = .5,["helpfulmercenaryguild"] = .5,["hordemercenaryguild"] = .5,["levelmercenaryguild"] = .5,["levelingmercenaryguild"] = .5,["pvemercenaryguild"] = .5,["pvpmercenaryguild"] = .5,["raidmercenaryguild"] = .5,["rpmercenaryguild"] = .5,["socialmercenaryguild"] = .5,["roleplayingmercenaryguild"] = .5,
["roleplayingguild"] = .5,["inviteroleplayingguild"] = .5,["lfroleplayingguild"] = .5,["lfgroleplayingguild"] = .5,["needroleplayingguild"] = .5,["anyroleplayingguild"] = .5,["activeroleplayingguild"] = .5,["allianceroleplayingguild"] = .5,["beginnerroleplayingguild"] = .5,["casualroleplayingguild"] = .5,["chillroleplayingguild"] = .5,["coolroleplayingguild"] = .5,["cozyroleplayingguild"] = .5,["crossfactionroleplayingguild"] = .5,["erproleplayingguild"] = .5,["friendlyroleplayingguild"] = .5,["funroleplayingguild"] = .5,["helpfulroleplayingguild"] = .5,["horderoleplayingguild"] = .5,["levelroleplayingguild"] = .5,["levelingroleplayingguild"] = .5,["pveroleplayingguild"] = .5,["pvproleplayingguild"] = .5,["raidroleplayingguild"] = .5,["rproleplayingguild"] = .5,["socialroleplayingguild"] = .5,["mercenaryroleplayingguild"] = .5,

["euallianceguild"] = .5,["naallianceguild"] = .5,["auallianceguild"] = .5,["oceallianceguild"] = .5,["ruallianceguild"] = .5,
["eucrossfactionguild"] = .5,["nacrossfactionguild"] = .5,["aucrossfactionguild"] = .5,["ocecrossfactionguild"] = .5,["rucrossfactionguild"] = .5,
["euerpguild"] = .5,["naerpguild"] = .5,["auerpguild"] = .5,["oceerpguild"] = .5,["ruerpguild"] = .5,
["euhordeguild"] = .5,["nahordeguild"] = .5,["auhordeguild"] = .5,["ocehordeguild"] = .5,["ruhordeguild"] = .5,
["eulevelguild"] = .5,["nalevelguild"] = .5,["aulevelguild"] = .5,["ocelevelguild"] = .5,["rulevelguild"] = .5,
["eulevelingguild"] = .5,["nalevelingguild"] = .5,["aulevelingguild"] = .5,["ocelevelingguild"] = .5,["rulevelingguild"] = .5,
["eupvpguild"] = .5,["napvpguild"] = .5,["aupvpguild"] = .5,["ocepvpguild"] = .5,["rupvpguild"] = .5,
["euraidguild"] = .5,["naraidguild"] = .5,["auraidguild"] = .5,["oceraidguild"] = .5,["ruraidguild"] = .5,
["eurpguild"] = .5,["narpguild"] = .5,["aurpguild"] = .5,["ocerpguild"] = .5,["rurpguild"] = .5,
["eusocialguild"] = .5,["nasocialguild"] = .5,["ausocialguild"] = .5,["ocesocialguild"] = .5,["rusocialguild"] = .5,
["eumercenaryguild"] = .5,["namercenaryguild"] = .5,["aumercenaryguild"] = .5,["ocemercenaryguild"] = .5,["rumercenaryguild"] = .5,
["euroleplayingguild"] = .5,["naroleplayingguild"] = .5,["auroleplayingguild"] = .5,["oceroleplayingguild"] = .5,["ruroleplayingguild"] = .5,
["eudadguild"] = .5,["nadadguild"] = .5,["audadguild"] = .5,["ocedadguild"] = .5,["rudadguild"] = .5,

["goodguild"] = .5,["lfgoodguild"] = .5,["lfggoodguild"] = .5,["needgoodguild"] = .5,["anygoodguild"] = .5,
["toprankguild"] = .5,["lftoprankguild"] = .5,["lfgtoprankguild"] = .5,["needtoprankguild"] = .5,["anytoprankguild"] = .5,
["northamericanguild"] = .5,["lfnorthamericanguild"] = .5,["lfgnorthamericanguild"] = .5,["neednorthamericanguild"] = .5,["anynorthamericanguild"] = .5,
["smallguild"] = .5,["lfsmallguild"] = .5,["lfgsmallguild"] = .5,["needsmallguild"] = .5,["anysmallguild"] = .5,
["bigguild"] = .5,["lfbigguild"] = .5,["lfgbigguild"] = .5,["needbigguild"] = .5,["anybigguild"] = .5,
["biggerguild"] = .5,["lfbiggerguild"] = .5,["lfgbiggerguild"] = .5,["needbiggerguild"] = .5,["anybiggerguild"] = .5,
["largeguild"] = .5,["lflargeguild"] = .5,["lfglargeguild"] = .5,["needlargeguild"] = .5,["anylargeguild"] = .5,
["massiveguild"] = .5,["lfmassiveguild"] = .5,["lfgmassiveguild"] = .5,["needmassiveguild"] = .5,["anymassiveguild"] = .5,
["newerguild"] = .5,["lfnewerguild"] = .5,["lfgnewerguild"] = .5,["neednewerguild"] = .5,["anynewerguild"] = .5,
["newguild"] = .5,["lfnewguild"] = .5,["lfgnewguild"] = .5,["neednewguild"] = .5,["anynewguild"] = .5,
["reallybigguild"] = .5,["lfreallybigguild"] = .5,["lfgreallybigguild"] = .5,["needreallybigguild"] = .5,["anyreallybigguild"] = .5,
["mediumsizedguild"] = .5,["lfmediumsizedguild"] = .5,["lfgmediumsizedguild"] = .5,["needmediumsizedguild"] = .5,["anymediumsizedguild"] = .5,
["talkativeguild"] = .5,["lftalkativeguild"] = .5,["lfgtalkativeguild"] = .5,["needtalkativeguild"] = .5,["anytalkativeguild"] = .5,
["verytalkativeguild"] = .5,["lfverytalkativeguild"] = .5,["lfgverytalkativeguild"] = .5,["needverytalkativeguild"] = .5,["anyverytalkativeguild"] = .5,
["verybigguild"] = .5,["lfverybigguild"] = .5,["lfgverybigguild"] = .5,["needverybigguild"] = .5,["anyverybigguild"] = .5,

["goodactiveguild"] = .5,["toprankactiveguild"] = .5,["northamericanactiveguild"] = .5,["smallactiveguild"] = .5,["bigactiveguild"] = .5,["biggeractiveguild"] = .5,["largeactiveguild"] = .5,["massiveactiveguild"] = .5,["neweractiveguild"] = .5,["newactiveguild"] = .5,["reallybigactiveguild"] = .5,["mediumsizedactiveguild"] = .5,
["goodallianceguild"] = .5,["toprankallianceguild"] = .5,["northamericanallianceguild"] = .5,["smallallianceguild"] = .5,["bigallianceguild"] = .5,["biggerallianceguild"] = .5,["largeallianceguild"] = .5,["massiveallianceguild"] = .5,["newerallianceguild"] = .5,["newallianceguild"] = .5,["reallybigallianceguild"] = .5,["mediumsizedallianceguild"] = .5,
["goodchillguild"] = .5,["toprankchillguild"] = .5,["northamericanchillguild"] = .5,["smallchillguild"] = .5,["bigchillguild"] = .5,["biggerchillguild"] = .5,["largechillguild"] = .5,["massivechillguild"] = .5,["newerchillguild"] = .5,["newchillguild"] = .5,["reallybigchillguild"] = .5,["mediumsizedchillguild"] = .5,
["goodcoolguild"] = .5,["toprankcoolguild"] = .5,["northamericancoolguild"] = .5,["smallcoolguild"] = .5,["bigcoolguild"] = .5,["biggercoolguild"] = .5,["largecoolguild"] = .5,["massivecoolguild"] = .5,["newercoolguild"] = .5,["newcoolguild"] = .5,["reallybigcoolguild"] = .5,["mediumsizedcoolguild"] = .5,
["goodcozyguild"] = .5,["toprankcozyguild"] = .5,["northamericancozyguild"] = .5,["smallcozyguild"] = .5,["bigcozyguild"] = .5,["biggercozyguild"] = .5,["largecozyguild"] = .5,["massivecozyguild"] = .5,["newercozyguild"] = .5,["newcozyguild"] = .5,["reallybigcozyguild"] = .5,["mediumsizedcozyguild"] = .5,
["goodcrossfactionguild"] = .5,["toprankcrossfactionguild"] = .5,["northamericancrossfactionguild"] = .5,["smallcrossfactionguild"] = .5,["bigcrossfactionguild"] = .5,["biggercrossfactionguild"] = .5,["largecrossfactionguild"] = .5,["massivecrossfactionguild"] = .5,["newercrossfactionguild"] = .5,["newcrossfactionguild"] = .5,["reallybigcrossfactionguild"] = .5,["mediumsizedcrossfactionguild"] = .5,
["gooderpguild"] = .5,["toprankerpguild"] = .5,["northamericanerpguild"] = .5,["smallerpguild"] = .5,["bigerpguild"] = .5,["biggererpguild"] = .5,["largeerpguild"] = .5,["massiveerpguild"] = .5,["newererpguild"] = .5,["newerpguild"] = .5,["reallybigerpguild"] = .5,["mediumsizederpguild"] = .5,
["goodfriendlyguild"] = .5,["toprankfriendlyguild"] = .5,["northamericanfriendlyguild"] = .5,["smallfriendlyguild"] = .5,["bigfriendlyguild"] = .5,["biggerfriendlyguild"] = .5,["largefriendlyguild"] = .5,["massivefriendlyguild"] = .5,["newerfriendlyguild"] = .5,["newfriendlyguild"] = .5,["reallybigfriendlyguild"] = .5,["mediumsizedfriendlyguild"] = .5,
["goodfunguild"] = .5,["toprankfunguild"] = .5,["northamericanfunguild"] = .5,["smallfunguild"] = .5,["bigfunguild"] = .5,["biggerfunguild"] = .5,["largefunguild"] = .5,["massivefunguild"] = .5,["newerfunguild"] = .5,["newfunguild"] = .5,["reallybigfunguild"] = .5,["mediumsizedfunguild"] = .5,
["goodhelpfulguild"] = .5,["toprankhelpfulguild"] = .5,["northamericanhelpfulguild"] = .5,["smallhelpfulguild"] = .5,["bighelpfulguild"] = .5,["biggerhelpfulguild"] = .5,["largehelpfulguild"] = .5,["massivehelpfulguild"] = .5,["newerhelpfulguild"] = .5,["newhelpfulguild"] = .5,["reallybighelpfulguild"] = .5,["mediumsizedhelpfulguild"] = .5,
["goodhordeguild"] = .5,["toprankhordeguild"] = .5,["northamericanhordeguild"] = .5,["smallhordeguild"] = .5,["bighordeguild"] = .5,["biggerhordeguild"] = .5,["largehordeguild"] = .5,["massivehordeguild"] = .5,["newerhordeguild"] = .5,["newhordeguild"] = .5,["reallybighordeguild"] = .5,["mediumsizedhordeguild"] = .5,
["goodlevelguild"] = .5,["topranklevelguild"] = .5,["northamericanlevelguild"] = .5,["smalllevelguild"] = .5,["biglevelguild"] = .5,["biggerlevelguild"] = .5,["largelevelguild"] = .5,["massivelevelguild"] = .5,["newerlevelguild"] = .5,["newlevelguild"] = .5,["reallybiglevelguild"] = .5,["mediumsizedlevelguild"] = .5,
["goodlevelingguild"] = .5,["topranklevelingguild"] = .5,["northamericanlevelingguild"] = .5,["smalllevelingguild"] = .5,["biglevelingguild"] = .5,["biggerlevelingguild"] = .5,["largelevelingguild"] = .5,["massivelevelingguild"] = .5,["newerlevelingguild"] = .5,["newlevelingguild"] = .5,["reallybiglevelingguild"] = .5,["mediumsizedlevelingguild"] = .5,
["goodpvpguild"] = .5,["toprankpvpguild"] = .5,["northamericanpvpguild"] = .5,["smallpvpguild"] = .5,["bigpvpguild"] = .5,["biggerpvpguild"] = .5,["largepvpguild"] = .5,["massivepvpguild"] = .5,["newerpvpguild"] = .5,["newpvpguild"] = .5,["reallybigpvpguild"] = .5,["mediumsizedpvpguild"] = .5,
["goodraidguild"] = .5,["toprankraidguild"] = .5,["northamericanraidguild"] = .5,["smallraidguild"] = .5,["bigraidguild"] = .5,["biggerraidguild"] = .5,["largeraidguild"] = .5,["massiveraidguild"] = .5,["newerraidguild"] = .5,["newraidguild"] = .5,["reallybigraidguild"] = .5,["mediumsizedraidguild"] = .5,
["goodrpguild"] = .5,["toprankrpguild"] = .5,["northamericanrpguild"] = .5,["smallrpguild"] = .5,["bigrpguild"] = .5,["biggerrpguild"] = .5,["largerpguild"] = .5,["massiverpguild"] = .5,["newerrpguild"] = .5,["newrpguild"] = .5,["reallybigrpguild"] = .5,["mediumsizedrpguild"] = .5,
["goodsocialguild"] = .5,["topranksocialguild"] = .5,["northamericansocialguild"] = .5,["smallsocialguild"] = .5,["bigsocialguild"] = .5,["biggersocialguild"] = .5,["largesocialguild"] = .5,["massivesocialguild"] = .5,["newersocialguild"] = .5,["newsocialguild"] = .5,["reallybigsocialguild"] = .5,["mediumsizedsocialguild"] = .5,

["chinesespeaking"] = .5,["chinesespeakingguild"] = 1,["lfchinesespeakingguild"] = .5,["lfgchinesespeakingguild"] = .5,["needchinesespeakingguild"] = .5,
["danishspeaking"] = .5,["danishspeakingguild"] = 1,["lfdanishspeakingguild"] = .5,["lfgdanishspeakingguild"] = .5,["needdanishspeakingguild"] = .5,
["dutchspeaking"] = .5,["dutchspeakingguild"] = 1,["lfdutchspeakingguild"] = .5,["lfgdutchspeakingguild"] = .5,["needdutchspeakingguild"] = .5,
["englishspeaking"] = .5,["englishspeakingguild"] = 1,["lfenglishspeakingguild"] = .5,["lfgenglishspeakingguild"] = .5,["needenglishspeakingguild"] = .5,
["finnishspeaking"] = .5,["finnishspeakingguild"] = 1,["lffinnishspeakingguild"] = .5,["lfgfinnishspeakingguild"] = .5,["needfinnishspeakingguild"] = .5,
["frenchspeaking"] = .5,["frenchspeakingguild"] = 1,["lffrenchspeakingguild"] = .5,["lfgfrenchspeakingguild"] = .5,["needfrenchspeakingguild"] = .5,
["germanspeaking"] = .5,["germanspeakingguild"] = 1,["lfgermanspeakingguild"] = .5,["lfggermanspeakingguild"] = .5,["needgermanspeakingguild"] = .5,
["greekspeaking"] = .5,["greekspeakingguild"] = 1,["lfgreekspeakingguild"] = .5,["lfggreekspeakingguild"] = .5,["needgreekspeakingguild"] = .5,
["italianspeaking"] = .5,["italianspeakingguild"] = 1,["lfitalianspeakingguild"] = .5,["lfgitalianspeakingguild"] = .5,["needitalianspeakingguild"] = .5,
["japanesespeaking"] = .5,["japanesespeakingguild"] = 1,["lfjapanesespeakingguild"] = .5,["lfgjapanesespeakingguild"] = .5,["needjapanesespeakingguild"] = .5,
["koreanspeaking"] = .5,["koreanspeakingguild"] = 1,["lfkoreanspeakingguild"] = .5,["lfgkoreanspeakingguild"] = .5,["needkoreanspeakingguild"] = .5,
["norwegianspeaking"] = .5,["norwegianspeakingguild"] = 1,["lfnorwegianspeakingguild"] = .5,["lfgnorwegianspeakingguild"] = .5,["neednorwegianspeakingguild"] = .5,
["portuguesespeaking"] = .5,["portuguesespeakingguild"] = 1,["lfportuguesespeakingguild"] = .5,["lfgportuguesespeakingguild"] = .5,["needportuguesespeakingguild"] = .5,
["russianspeaking"] = .5,["russianspeakingguild"] = 1,["lfrussianspeakingguild"] = .5,["lfgrussianspeakingguild"] = .5,["needrussianspeakingguild"] = .5,
["spanishspeaking"] = .5,["spanishspeakingguild"] = 1,["lfspanishspeakingguild"] = .5,["lfgspanishspeakingguild"] = .5,["needspanishspeakingguild"] = .5,
["turkishspeaking"] = .5,["turkishspeakingguild"] = 1,["lfturkishspeakingguild"] = .5,["lfgturkishspeakingguild"] = .5,["needturkishspeakingguild"] = .5,
["vietnamesespeaking"] = .5,["vietnamesespeakingguild"] = 1,["lfvietnamesespeakingguild"] = .5,["lfgvietnamesespeakingguild"] = .5,["needvietnamesespeakingguild"] = .5,

["druidguild"] = .5,["hunterguild"] = .5,["mageguild"] = .5,["paladinguild"] = .5,["priestguild"] = .5,["rogueguild"] = .5,["shamanguild"] = .5,["warlockguild"] = .5,["warriorguild"] = .5,["scourgeguild"] = .5,
["druidonly"] = .5,["hunteronly"] = .5,["mageonly"] = .5,["paladinonly"] = .5,["priestonly"] = .5,["rogueonly"] = .5,["shamanonly"] = .5,["warlockonly"] = .5,["warrioronly"] = .5,["scourgeonly"] = .5,
["druidonlyguild"] = .5,["hunteronlyguild"] = .5,["mageonlyguild"] = .5,["paladinonlyguild"] = .5,["priestonlyguild"] = .5,["rogueonlyguild"] = .5,["shamanonlyguild"] = .5,["warlockonlyguild"] = .5,["warrioronlyguild"] = .5,["scourgeonlyguild"] = .5,

["memeguild"] = .5,["lfmemeguild"] = .5,["lfgmemeguild"] = .5,["anymemeguild"] = .5,["needmemeguild"] = .5,["freshmemeguild"] = .5,
["noobguild"] = .5,["lfnoobguild"] = .5,["lfgnoobguild"] = .5,["anynoobguild"] = .5,["neednoobguild"] = .5,["freshnoobguild"] = .5,
["newlymadeguild"] = .5,["lfnewlymadeguild"] = .5,["lfgnewlymadeguild"] = .5,["anynewlymadeguild"] = .5,["neednewlymadeguild"] = .5,["freshnewlymadeguild"] = .5,
["newlycreatedguild"] = .5,["lfnewlycreatedguild"] = .5,["lfgnewlycreatedguild"] = .5,["anynewlycreatedguild"] = .5,["neednewlycreatedguild"] = .5,["freshnewlycreatedguild"] = .5,
["challengingguild"] = .5,["lfchallengingguild"] = .5,["lfgchallengingguild"] = .5,["anychallengingguild"] = .5,["needchallengingguild"] = .5,["freshchallengingguild"] = .5,
["hypeguild"] = .5,["lfhypeguild"] = .5,["lfghypeguild"] = .5,["anyhypeguild"] = .5,["needhypeguild"] = .5,["freshhypeguild"] = .5,
["skilledguild"] = .5,["lfskilledguild"] = .5,["lfgskilledguild"] = .5,["anyskilledguild"] = .5,["needskilledguild"] = .5,["freshskilledguild"] = .5,
["recentlyformedguild"] = .5,["lfrecentlyformedguild"] = .5,["lfgrecentlyformedguild"] = .5,["anyrecentlyformedguild"] = .5,["needrecentlyformedguild"] = .5,["freshrecentlyformedguild"] = .5,
["newlyformedguild"] = .5,["lfnewlyformedguild"] = .5,["lfgnewlyformedguild"] = .5,["anynewlyformedguild"] = .5,["neednewlyformedguild"] = .5,["freshnewlyformedguild"] = .5,
["wokeguild"] = .5,["lfwokeguild"] = .5,["lfgwokeguild"] = .5,["anywokeguild"] = .5,["needwokeguild"] = .5,["freshwokeguild"] = .5,
["dungeonguild"] = .5,["lfdungeonguild"] = .5,["lfgdungeonguild"] = .5,["anydungeonguild"] = .5,["needdungeonguild"] = .5,["freshdungeonguild"] = .5,
["newguild"] = .5,["lfnewguild"] = .5,["lfgnewguild"] = .5,["anynewguild"] = .5,["neednewguild"] = .5,["freshnewguild"] = .5,
["dadguild"] = .5,["lfdadguild"] = .5,["lfgdadguild"] = .5,["anydadguild"] = .5,["needdadguild"] = .5,["freshdadguild"] = .5,
["hcguild"] = .5,["lfhcguild"] = .5,["lfghcguild"] = .5,["anyhcguild"] = .5,["needhcguild"] = .5,["freshhcguild"] = .5,

-- Foreign Words
["utc"] = .5,["cet"] = .5,["msk"] = 1,["est"] = 1,
["polska"] = 1,["ukrainska"] = 1,["czsk"] = .5,["cesko"] = 1,["romani"] = 1,["slovenska"] = 1,["brasilia"] = 1,["bulgarski"] = 1,["hispana"] = 1,["italiana"] = 1,["magyar"] = 1,["oceanic"] = .5,["aest"] = .5,

["czsfk"] = 2,["sfkcz"] = 2,

["mercredi"] = .5,["dimanche"] = .5,["joueursenleveling"] = 1,["joueursactifs"] = 1,

["chercheguild"] = 1,["pohodova"] = 1,["otevrenaprovsechny"] = 2,

["nabor"] = .5,["otkritnabor"] = 2,["vedemnabor"] = 2,["vedetnabor"] = 2,["vedetsanabor"] = 2,["prohozhdeniyadanzhey"] = 1,["sovmestnoyprokachki"] = 1,["primemvsehzelaushih"] = 2,
["vedemnaborigrokov"] = 3,["novacekciveteran"] = 2,["provodenabirgravziv"] = 2,
["zhdemvseh"] = 2,["proidives"] = 1,

["cautammembri"] = 1,["anemariechipa"] = 1,["echipa"] = .5,

-- German
["deutsche"] = 1,["deutschsprachige"] = 1,["allianz"] = 1,["mitraiden"] = 1,["sucht"] = 1,["raidkader"] = 1,["motivierte"] = 1,["raidtage"] = 1,
["deutschsprachigen"] = 1,["joinwelt"] = 1,["werbeunterbrechung"] = 1,
["yesttutruguild"] = 3,["sucheguild"] = 1,["suchenetteguild"] = 1,["uneguild"] = 1,["uneguild"] = 1,
["suchtwiedermitspieler"] = 1,["suchtwieder"] = .5,["mitspieler"] = 1,["bistduzuverlssig"] = 1,["spaamzocken"] = 1,["dannkommzuuns"] = 1,["kommzuuns"] = 1,["wirfreuen"] = 1,["berjedeslevel"] = 1,["klasseoderrasse"] = 1,
["gilde"] = 2,["levelgilde"] = 1,["suchedeute"] = 1,
["frdendeutschsprachigen"] = 1,

["suchtverstrkung"] = 1,["suchespieler"] = 1,["habenmeiner"] = 1,
["mainraidtage"] = 1,
["raidtage"] = .5,
["immerabends"] = 1,
["egalobentspanntleveln"] = 1,
["entspanntleveln"] = 1,
["spaigraiden"] = 1,
["alleklassen"] = 1,
["alleklassensindwillkommen"] = 1,
["willkommen"] = 1,
["compltersonroster"] = 2,["joueursmotivs"] = 1,["sbados"] = .5,

-- Finnish
["finkilta"] = .5,["finnkilta"] = .5,["finjoukkue"] = .5,["finnjoukkue"] = .5,
["maajoukue"] = 2,["maajoukkue"] = 2,["scouttaa"] = 2,
["finnational"] = 2.5,["finnnational"] = 2.5,["finlandsnationalgroup"] = 2.5,["finlandnationalgroup"] = 2.5,
["josontyls"] = 1,["hakeejseni"] = 3,["mitmuutamenoatoistaaseksi"] = 3,["skouttaa"] = 1,["teretulemast"] = 1,
["finguild"] = .5,["etsiiriveliihinsuusiakykyj"] = 1,["etsiiriveliihinsuusia"] = 2,["kykyj"] = 1,["skouttaauusiakykyj"] = 1,["uusiakykyj"] = 1,["pelityyli"] = 1,["sooloolijat"] = 1,["roolipelaajat"] = 1,["kaikkiteretulemast"] = 1,
["suomibndi"] = 2,["etsiiuusia"] = 1,
["etsii"] = 1,["kykyjetsii"] = 1,["uraatarjolla"] = 1,["maajoukkueessa"] = 1,["paikkaauki"] = 1,["skoutaa"] = 1,
["uusia"] = .5,["riveihins"] = .5,
["fysio"] = .5,["keskikentlle"] = .5,
["joinmaajoukkue"] = 1.5,["joinmaajoukkuetoday"] = 1,["joinmaajoukkuetnn"] = 2,
["suomikilta"] = 2,["suomikiltaa"] = 2,["raidaaako"] = 1.5,["questaako"] = 1.5,["pelaajilla"] = 1,["scoutaauusia"] = 1.5,["uusiajawanhoja"] = 1,
["teretulemastkiltaan"] = 3,["kaikihoituu"] = 1,["suomipelaajia"] = 2,["kiltaan"] = 1,["haetaankiltaan"] = 2,["tulille"] = 1,
["firmatarjoaa"] = .5,["tarjoaa"] = .5,["firma"] = .5,["scouttaavuoden"] = 1,["vvvalmistautuujascouttaavuoden"] = 1,["valmistautuu"] = 1,["ihmeellinenmaailma"] = 1,

-- Spanish/Portuguese
["guildespaola"] = 1,["guildhispana"] = 1,["espaola"] = 1,["espaoles"] = 1,["necesitaconquistar"] = 1,["hispanohablante"] = 1,["comprometidos"] = 1,["bienvenidos"] = 1,
["estareclutando"] = 1,
["reclutandogente"] = 1,
["paralacore"] = 1,["aceptamos"] = .5,["limpiandocontenido"] = 1,["domingos"] = .5,
["semanalmente"] = 1,["sitequieresunir"] = 2,
["hermandad"] = .5,["unete"] = .5,
["estareclutando"] = 1,
["algumaguild"] = .5,
["alguiendelaguild"] = 1,
["abresusfiles"] = 1,
["siquieresraidear"] = 1,["conunaguild"] = 1,["nodudesenunirte"] = 1,["enunirte"] = 1,

["miembrosnuevos"] = 1,
["miembrosnuevosenraids"] = 1,
["reclutamiembros"] = 1,["reclutamiembrosnuevos"] = 1,
["recluta"] = 1,["recrutando"] = 1,["reclutando"] = 1,
["buenrollo"] = 1,["rolloyrisas"] = 1,["buscamostodo"] = 1,["todotipodejugadores"] = 1,["jugadores"] = .5,
["laguild"] = .5,["abresuspuerta"] = 1,["pargentequebuscaraidear"] = 2,["empezando"] = .5,["levear"] = 1,["bienvenido"] = .5,["hablahispana"] = 1,["bancodehermadad"] = 1,["interesados"] = 1,
["reclutajugadores"] = 1,["jugadoresparasucore"] = 2,["tambienacceptamos"] = 1,

["lfbrgroupe"] = 3,

-- Slavic
["raidov"] = 1,["ishet"] = 1,["novacek"] = 1,["raidereket"] = 1,["priednuysia"] = 1,["primet"] = 1,["reydinga"] = 1,["novaya"] = 1,
["novayagildiya"] = 1,["nabirayet"] = 2,["nabirayetvsekh"] = 1,["zhelayushchikh"] = 1,["igrokov"] = 1,["zhelayushchikhigrokov"] = 1,
["pervaya"] = .5,["edinstvennaya"] = .5,["pervayaiedinstvennaya"] = 1.5,["primite"] = .5,["primitevru"] = .5,
["osvoenie"] = .5,["naosvoenie"] = 1,["speki"] = .5,["rassmotrim"] = 1,["vseklassy"] = 1,["vseklassyispeki"] = 2,
["unasvreide"] = 1,

-- Italian
["nuovaguild"] = 1,["cercaplayer"] = 1,["seiinteressato"] = 1,["initaliano"] = 1,["italiano"] = .5,["interessato"] = 1,["cercoplayer"] = 1,["creazionegilda"] = 1,
["cerca"] = .5,["interesse"] = .5,["cercagiocatoriitaliani"] = 3,["sehaiinteresse"] = 1,["livelli"] = 1,["divertimentoassicurati"] = 1,

-- Romanian
["recruteaza"] = 1,["romni"] = 1,["jucatoriromni"] = 1,["pentrucontent"] = 1,["socialevenimente"] = 1,["sidistractie"] = 1,["pentruinfosauinvite"] = .5,["evenimente"] = .5,

-- To avoid spam
["afghani"] = .5,["afghaniguild"] = .5,["lfafghaniguild"] = .5,["lfgafghaniguild"] = .5,["anyafghaniguild"] = .5,["needafghaniguild"] = .5,["freshafghaniguild"] = .5,
["algerian"] = .5,["algerianguild"] = .5,["lfalgerianguild"] = .5,["lfgalgerianguild"] = .5,["anyalgerianguild"] = .5,["needalgerianguild"] = .5,["freshalgerianguild"] = .5,
["american"] = .5,["americanguild"] = .5,["lfamericanguild"] = .5,["lfgamericanguild"] = .5,["anyamericanguild"] = .5,["needamericanguild"] = .5,["freshamericanguild"] = .5,
["argentine"] = .5,["argentineguild"] = .5,["lfargentineguild"] = .5,["lfgargentineguild"] = .5,["anyargentineguild"] = .5,["needargentineguild"] = .5,["freshargentineguild"] = .5,
["au"] = .5,["auguild"] = .5,["lfauguild"] = .5,["lfgauguild"] = .5,["anyauguild"] = .5,["needauguild"] = .5,["freshauguild"] = .5,
["auoce"] = .5,["auoceguild"] = .5,["lfauoceguild"] = .5,["lfgauoceguild"] = .5,["anyauoceguild"] = .5,["needauoceguild"] = .5,["freshauoceguild"] = .5,
["balkan"] = .5,["balkanguild"] = .5,["lfbalkanguild"] = .5,["lfgbalkanguild"] = .5,["anybalkanguild"] = .5,["needbalkanguild"] = .5,["freshbalkanguild"] = .5,
["brazilian"] = .5,["brazilianguild"] = .5,["lfbrazilianguild"] = .5,["lfgbrazilianguild"] = .5,["anybrazilianguild"] = .5,["needbrazilianguild"] = .5,["freshbrazilianguild"] = .5,
["canadian"] = .5,["canadianguild"] = .5,["lfcanadianguild"] = .5,["lfgcanadianguild"] = .5,["anycanadianguild"] = .5,["needcanadianguild"] = .5,["freshcanadianguild"] = .5,
["chad"] = .5,["chadguild"] = .5,["lfchadguild"] = .5,["lfgchadguild"] = .5,["anychadguild"] = .5,["needchadguild"] = .5,["freshchadguild"] = .5,
["chilean"] = .5,["chileanguild"] = .5,["lfchileanguild"] = .5,["lfgchileanguild"] = .5,["anychileanguild"] = .5,["needchileanguild"] = .5,["freshchileanguild"] = .5,
["chinese"] = .5,["chineseguild"] = .5,["lfchineseguild"] = .5,["lfgchineseguild"] = .5,["anychineseguild"] = .5,["needchineseguild"] = .5,["freshchineseguild"] = .5,
["colombian"] = .5,["colombianguild"] = .5,["lfcolombianguild"] = .5,["lfgcolombianguild"] = .5,["anycolombianguild"] = .5,["needcolombianguild"] = .5,["freshcolombianguild"] = .5,
["congolese"] = .5,["congoleseguild"] = .5,["lfcongoleseguild"] = .5,["lfgcongoleseguild"] = .5,["anycongoleseguild"] = .5,["needcongoleseguild"] = .5,["freshcongoleseguild"] = .5,
["cuban"] = .5,["cubanguild"] = .5,["lfcubanguild"] = .5,["lfgcubanguild"] = .5,["anycubanguild"] = .5,["needcubanguild"] = .5,["freshcubanguild"] = .5,
["czech"] = .5,["czechguild"] = .5,["lfczechguild"] = .5,["lfgczechguild"] = .5,["anyczechguild"] = .5,["needczechguild"] = .5,["freshczechguild"] = .5,
["danish"] = .5,["danishguild"] = .5,["lfdanishguild"] = .5,["lfgdanishguild"] = .5,["anydanishguild"] = .5,["needdanishguild"] = .5,["freshdanishguild"] = .5,
["dutch"] = .5,["dutchguild"] = .5,["lfdutchguild"] = .5,["lfgdutchguild"] = .5,["anydutchguild"] = .5,["needdutchguild"] = .5,["freshdutchguild"] = .5,
["egyptian"] = .5,["egyptianguild"] = .5,["lfegyptianguild"] = .5,["lfgegyptianguild"] = .5,["anyegyptianguild"] = .5,["needegyptianguild"] = .5,["freshegyptianguild"] = .5,
["english"] = .5,["englishguild"] = .5,["lfenglishguild"] = .5,["lfgenglishguild"] = .5,["anyenglishguild"] = .5,["needenglishguild"] = .5,["freshenglishguild"] = .5,
["ethiopian"] = .5,["ethiopianguild"] = .5,["lfethiopianguild"] = .5,["lfgethiopianguild"] = .5,["anyethiopianguild"] = .5,["needethiopianguild"] = .5,["freshethiopianguild"] = .5,
["eu"] = .5,["euguild"] = .5,["lfeuguild"] = .5,["lfgeuguild"] = .5,["anyeuguild"] = .5,["needeuguild"] = .5,["fresheuguild"] = .5,
["finnish"] = .5,["finnishguild"] = .5,["lffinnishguild"] = .5,["lfgfinnishguild"] = .5,["anyfinnishguild"] = .5,["needfinnishguild"] = .5,["freshfinnishguild"] = .5,
["fr"] = .5,["frguild"] = .5,["lffrguild"] = .5,["lfgfrguild"] = .5,["anyfrguild"] = .5,["needfrguild"] = .5,["freshfrguild"] = .5,
["french"] = .5,["frenchguild"] = .5,["lffrenchguild"] = .5,["lfgfrenchguild"] = .5,["anyfrenchguild"] = .5,["needfrenchguild"] = .5,["freshfrenchguild"] = .5,
["greek"] = .5,["greekguild"] = .5,["lfgreekguild"] = .5,["lfggreekguild"] = .5,["anygreekguild"] = .5,["needgreekguild"] = .5,["freshgreekguild"] = .5,
["german"] = .5,["germanguild"] = .5,["lfgermanguild"] = .5,["lfggermanguild"] = .5,["anygermanguild"] = .5,["needgermanguild"] = .5,["freshgermanguild"] = .5,
["hungarian"] = .5,["hungarianguild"] = .5,["lfhungarianguild"] = .5,["lfghungarianguild"] = .5,["anyhungarianguild"] = .5,["needhungarianguild"] = .5,["freshhungarianguild"] = .5,
["indian"] = .5,["indianguild"] = .5,["lfindianguild"] = .5,["lfgindianguild"] = .5,["anyindianguild"] = .5,["needindianguild"] = .5,["freshindianguild"] = .5,
["iranian"] = .5,["iranianguild"] = .5,["lfiranianguild"] = .5,["lfgiranianguild"] = .5,["anyiranianguild"] = .5,["neediranianguild"] = .5,["freshiranianguild"] = .5,
["iraqi"] = .5,["iraqiguild"] = .5,["lfiraqiguild"] = .5,["lfgiraqiguild"] = .5,["anyiraqiguild"] = .5,["neediraqiguild"] = .5,["freshiraqiguild"] = .5,
["italian"] = .5,["italianguild"] = .5,["lfitalianguild"] = .5,["lfgitalianguild"] = .5,["anyitalianguild"] = .5,["needitalianguild"] = .5,["freshitalianguild"] = .5,
["japanese"] = .5,["japaneseguild"] = .5,["lfjapaneseguild"] = .5,["lfgjapaneseguild"] = .5,["anyjapaneseguild"] = .5,["needjapaneseguild"] = .5,["freshjapaneseguild"] = .5,
["kazakh"] = .5,["kazakhguild"] = .5,["lfkazakhguild"] = .5,["lfgkazakhguild"] = .5,["anykazakhguild"] = .5,["needkazakhguild"] = .5,["freshkazakhguild"] = .5,
["kenyan"] = .5,["kenyanguild"] = .5,["lfkenyanguild"] = .5,["lfgkenyanguild"] = .5,["anykenyanguild"] = .5,["needkenyanguild"] = .5,["freshkenyanguild"] = .5,
["korean"] = .5,["koreanguild"] = .5,["lfkoreanguild"] = .5,["lfgkoreanguild"] = .5,["anykoreanguild"] = .5,["needkoreanguild"] = .5,["freshkoreanguild"] = .5,
["lebanese"] = .5,["lebaneseguild"] = .5,["lflebaneseguild"] = .5,["lfglebaneseguild"] = .5,["anylebaneseguild"] = .5,["needlebaneseguild"] = .5,["freshlebaneseguild"] = .5,
["libyan"] = .5,["libyanguild"] = .5,["lflibyanguild"] = .5,["lfglibyanguild"] = .5,["anylibyanguild"] = .5,["needlibyanguild"] = .5,["freshlibyanguild"] = .5,
["malay"] = .5,["malayguild"] = .5,["lfmalayguild"] = .5,["lfgmalayguild"] = .5,["anymalayguild"] = .5,["needmalayguild"] = .5,["freshmalayguild"] = .5,
["mexican"] = .5,["mexicanguild"] = .5,["lfmexicanguild"] = .5,["lfgmexicanguild"] = .5,["anymexicanguild"] = .5,["needmexicanguild"] = .5,["freshmexicanguild"] = .5,
["mongolian"] = .5,["mongolianguild"] = .5,["lfmongolianguild"] = .5,["lfgmongolianguild"] = .5,["anymongolianguild"] = .5,["needmongolianguild"] = .5,["freshmongolianguild"] = .5,
["moroccan"] = .5,["moroccanguild"] = .5,["lfmoroccanguild"] = .5,["lfgmoroccanguild"] = .5,["anymoroccanguild"] = .5,["needmoroccanguild"] = .5,["freshmoroccanguild"] = .5,
["na"] = .5,["naguild"] = .5,["lfnaguild"] = .5,["lfgnaguild"] = .5,["anynaguild"] = .5,["neednaguild"] = .5,["freshnaguild"] = .5,
["nigerian"] = .5,["nigerianguild"] = .5,["lfnigerianguild"] = .5,["lfgnigerianguild"] = .5,["anynigerianguild"] = .5,["neednigerianguild"] = .5,["freshnigerianguild"] = .5,
["nord"] = .5,["nordguild"] = .5,["lfnordguild"] = .5,["lfgnordguild"] = .5,["anynordguild"] = .5,["neednordguild"] = .5,["freshnordguild"] = .5,
["norwegian"] = .5,["norwegianguild"] = .5,["lfnorwegianguild"] = .5,["lfgnorwegianguild"] = .5,["anynorwegianguild"] = .5,["neednorwegianguild"] = .5,["freshnorwegianguild"] = .5,
["oce"] = .5,["oceguild"] = .5,["lfoceguild"] = .5,["lfgoceguild"] = .5,["anyoceguild"] = .5,["needoceguild"] = .5,["freshoceguild"] = .5,
["oceau"] = .5,["oceauguild"] = .5,["lfoceauguild"] = .5,["lfgoceauguild"] = .5,["anyoceauguild"] = .5,["needoceauguild"] = .5,["freshoceauguild"] = .5,
["pakistani"] = .5,["pakistaniguild"] = .5,["lfpakistaniguild"] = .5,["lfgpakistaniguild"] = .5,["anypakistaniguild"] = .5,["needpakistaniguild"] = .5,["freshpakistaniguild"] = .5,
["peruvian"] = .5,["peruvianguild"] = .5,["lfperuvianguild"] = .5,["lfgperuvianguild"] = .5,["anyperuvianguild"] = .5,["needperuvianguild"] = .5,["freshperuvianguild"] = .5,
["filipino"] = .5,["filipinoguild"] = .5,["lffilipinoguild"] = .5,["lfgfilipinoguild"] = .5,["anyfilipinoguild"] = .5,["needfilipinoguild"] = .5,["freshfilipinoguild"] = .5,
["polish"] = .5,["polishguild"] = .5,["lfpolishguild"] = .5,["lfgpolishguild"] = .5,["anypolishguild"] = .5,["needpolishguild"] = .5,["freshpolishguild"] = .5,
["portuguese"] = .5,["portugueseguild"] = .5,["lfportugueseguild"] = .5,["lfgportugueseguild"] = .5,["anyportugueseguild"] = .5,["needportugueseguild"] = .5,["freshportugueseguild"] = .5,
["romanian"] = .5,["romanianguild"] = .5,["lfromanianguild"] = .5,["lfgromanianguild"] = .5,["anyromanianguild"] = .5,["needromanianguild"] = .5,["freshromanianguild"] = .5,
["russian"] = .5,["russianguild"] = .5,["lfrussianguild"] = .5,["lfgrussianguild"] = .5,["anyrussianguild"] = .5,["needrussianguild"] = .5,["freshrussianguild"] = .5,
["rwandan"] = .5,["rwandanguild"] = .5,["lfrwandanguild"] = .5,["lfgrwandanguild"] = .5,["anyrwandanguild"] = .5,["needrwandanguild"] = .5,["freshrwandanguild"] = .5,
["saudi"] = .5,["saudiguild"] = .5,["lfsaudiguild"] = .5,["lfgsaudiguild"] = .5,["anysaudiguild"] = .5,["needsaudiguild"] = .5,["freshsaudiguild"] = .5,
["somalian"] = .5,["somalianguild"] = .5,["lfsomalianguild"] = .5,["lfgsomalianguild"] = .5,["anysomalianguild"] = .5,["needsomalianguild"] = .5,["freshsomalianguild"] = .5,
["sa"] = .5,["saguild"] = .5,["lfsaguild"] = .5,["lfgsaguild"] = .5,["anysaguild"] = .5,["needsaguild"] = .5,["freshsaguild"] = .5,
["spanish"] = .5,["spanishguild"] = .5,["lfspanishguild"] = .5,["lfgspanishguild"] = .5,["anyspanishguild"] = .5,["needspanishguild"] = .5,["freshspanishguild"] = .5,
["swedish"] = .5,["swedishguild"] = .5,["lfswedishguild"] = .5,["lfgswedishguild"] = .5,["anyswedishguild"] = .5,["needswedishguild"] = .5,["freshswedishguild"] = .5,
["syrian"] = .5,["syrianguild"] = .5,["lfsyrianguild"] = .5,["lfgsyrianguild"] = .5,["anysyrianguild"] = .5,["needsyrianguild"] = .5,["freshsyrianguild"] = .5,
["tajik"] = .5,["tajikguild"] = .5,["lftajikguild"] = .5,["lfgtajikguild"] = .5,["anytajikguild"] = .5,["needtajikguild"] = .5,["freshtajikguild"] = .5,
["thai"] = .5,["thaiguild"] = .5,["lfthaiguild"] = .5,["lfgthaiguild"] = .5,["anythaiguild"] = .5,["needthaiguild"] = .5,["freshthaiguild"] = .5,
["turkish"] = .5,["turkishguild"] = .5,["lfturkishguild"] = .5,["lfgturkishguild"] = .5,["anyturkishguild"] = .5,["needturkishguild"] = .5,["freshturkishguild"] = .5,
["ukrainian"] = .5,["ukrainianguild"] = .5,["lfukrainianguild"] = .5,["lfgukrainianguild"] = .5,["anyukrainianguild"] = .5,["needukrainianguild"] = .5,["freshukrainianguild"] = .5,
["ugandan"] = .5,["ugandanguild"] = .5,["lfugandanguild"] = .5,["lfgugandanguild"] = .5,["anyugandanguild"] = .5,["needugandanguild"] = .5,["freshugandanguild"] = .5,
["uhr"] = .5,["uhrguild"] = .5,["lfuhrguild"] = .5,["lfguhrguild"] = .5,["anyuhrguild"] = .5,["needuhrguild"] = .5,["freshuhrguild"] = .5,
["venezuelan"] = .5,["venezuelanguild"] = .5,["lfvenezuelanguild"] = .5,["lfgvenezuelanguild"] = .5,["anyvenezuelanguild"] = .5,["needvenezuelanguild"] = .5,["freshvenezuelanguild"] = .5,
["vietnamese"] = .5,["vietnameseguild"] = .5,["lfvietnameseguild"] = .5,["lfgvietnameseguild"] = .5,["anyvietnameseguild"] = .5,["needvietnameseguild"] = .5,["freshvietnameseguild"] = .5,
["yemeni"] = .5,["yemeniguild"] = .5,["lfyemeniguild"] = .5,["lfgyemeniguild"] = .5,["anyyemeniguild"] = .5,["needyemeniguild"] = .5,["freshyemeniguild"] = .5,
["zimbabwean"] = .5,["zimbabweanguild"] = .5,["lfzimbabweanguild"] = .5,["lfgzimbabweanguild"] = .5,["anyzimbabweanguild"] = .5,["needzimbabweanguild"] = .5,["freshzimbabweanguild"] = .5,
}
GF_GUILD_WORD_EXCLUSION = {
["today"] = .5,["tonight"] = .5,["host"] = .5,["legendaries"] = .5,["mat"] = .5,["bindings"] = .5,["boes"] = .5,["boe"] = .5,["hr"] = .5,["mount"] = .5,["recipe"] = .5,
["racist"] = 1,["nonwhites"] = 5,["nonwhite"] = 1,["advertise"] = 5,
["youknow"] = 1,["manyguild"] = 5,["guildmerges"] = 5,["deadserver"] = 5,["serverdeath"] = 5,["nonwhites"] = 5,["nonwhite"] = 5,["hatewhites"] = 5,["isntbanned"] = 5,
["theadmins"] = 2,["theirguild"] = 5,["getbanned"] = 5,["beginwith"] = 5,["againstthem"] = 5,["imwilling"] = 2,["whitefolks"] = 5,["whitepeople"] = 5,["antimajority"] = 5,
["despitebeing"] = 5,["worldminority"] = 5,["worldsminority"] = 5,["cansummon"] = 2,["guildrun"] = 1,["hostedby"] = 2,["nohr"] = 1,["freshrun"] = 2,["gearcheck"] = 1,["postyourgear"] = 1,["blizzardstore"] = 1,["seasonpass"] = 1,

["itsa"] = .5,["theyrea"] = .5,
["ngl"] = 1,["yousoundlike"] = 1,["cantseewhy"] = .5,["myguild"] = .5,["whileinahc"] = 1,["autobooted"] = 1,["doyoustay"] = 1,["stayin"] = .5,["getauto"] = .5,
}

GF_WORD_LFM = {
["lfm"] = 3,["lf"] = 2,["lft"] = 2,["wtj"] = 2,["weneedmore"] = 2,

-- Roles/Classes
["lfmore"] = 3,["lfall"] = 3,["lfmembers"] = 3,["lfstealth"] = 2,

["needheal"] = 2,["comeheal"] = 2,["joinheal"] = 2,["lastheal"] = 2,["pleaseheal"] = 2,["needoneheal"] = 2,["needtwoheal"] = 2,["needthreeheal"] = 2,["healneeded"] = 2,
["needdamage"] = 2,["comedamage"] = 2,["joindamage"] = 2,["lastdamage"] = 2,["pleasedamage"] = 2,["needaoe"] = 2,["needonedamage"] = 2,["needtwodamage"] = 2,["needthreedamage"] = 2,["damageneeded"] = 2,
["needtank"] = 2,["cometank"] = 2,["moretank"] = 2,["jointank"] = 2,["lasttank"] = 2,["pleasetank"] = 2,["needonetank"] = 2,["needtwotank"] = 2,["needthreetank"] = 2,["tankneeded"] = 2,
["needrange"] = 2,["comerange"] = 2,["morerange"] = 2,
["needcaster"] = 2,["comecaster"] = 2,["morecaster"] = 2,
["needmelee"] = 2,["comemelee"] = 2,["moremelee"] = 2,
["needdruid"] = 2,["needhunter"] = 2,["needmage"] = 2,["needpaladin"] = 2,["needpriest"] = 2,["needrogue"] = 2,["needshaman"] = 2,["needwarlock"] = 2,["needlock"] = 2,["needwarrior"] = 2,
["anydamagefor"] = 2,["anyhealfor"] = 2,["anytankfor"] = 2,["anyrangefor"] = 2,["anycasterfor"] = 2,["anymeleefor"] = 2,
["needlastdamage"] = 2,["needlastheal"] = 2,["needlasttank"] = 2,
["needonlydamage"] = 2,["needonlyheal"] = 2,["needonlytank"] = 2,
["needsomedamage"] = 2,["needsomeheal"] = 2,["needsomerandomdamage"] = 2,["needsometank"] = 2,
["spotdamage"] = 2,["spotheal"] = 2,["spottank"] = 2,
["damageandgo"] = 2,["healandgo"] = 2,["tankandgo"] = 2,

["damageandhealfor"] = 2,["damageandtankfor"] = 2,["damagearoundfor"] = 2,["damagehealfor"] = 2,["damageletsdo"] = 2,["damagemissingthengo"] = 2,["damagetankfor"] = 2,
["healanddamagefor"] = 2,["healandtankfor"] = 2,["healaroundfor"] = 2,["healdamagefor"] = 2,["healletsdo"] = 2,["healmissingthengo"] = 2,["healtankfor"] = 2,
["tankanddamagefor"] = 2,["tankandhealfor"] = 2,["tankaroundfor"] = 2,["tankdamagefor"] = 2,["tankhealfor"] = 2,["tankletsdo"] = 2,["tankmissingthengo"] = 2,
["onlydamagefor"] = 2,["onlyhealfor"] = 2,["onlyneeddamage"] = 2,["onlyneedheal"] = 2,["onlyneedtank"] = 2,["onlytankfor"] = 2,
["damagepleasefor"] = 2,["healpleasefor"] = 2,["tankpleasefor"] = 2,["peoplepleasefor"] = 2,["playerpleasefor"] = 2,

-- Possible use of the word "deeps" for damage
["needdeeps"] = 2,["needonedeeps"] = 2,["needtwodeeps"] = 2,["needthreedeeps"] = 2,["needsomedeeps"] = 2,

--Misc words
["canusemore"] = 2,["comeanddo"] = 2,["comewithme"] = 2,["lastcallfor"] = 2,
["doesanyonehaveto"] = 2,["doyouneedtogo"] = 2,["ifanyoneneed"] = 2,["ifyouneedtojoin"] = 2,["ineedhelp"] = 2,["needhelpfor"] = 2,["pleasejoinmy"] = 2,
["anyonewillingto"] = 2,["interestedinrunning"] = 2,["anyonegroup"] = 2,["grouptocomplete"] = 2,

["moreneededfor"] = 2,["morepeoplefor"] = 2,
["needallfor"] = 2,["needanyonestealth"] = 2,["needgroupfor"] = 2,["needhelpwith"] = 2,["needmorefor"] = 2,["needmoregroupmembers"] = 2,["needmorepeople"] = 2,["needmoreplayer"] = 2,["needmoreexceptionalplayer"] = 2,
["needpeoplefor"] = 2,["needstealth"] = 2,["needtocome"] = 2,["needtogroup"] = 2,["needtohelp"] = 2,["needtohelpwith"] = 2,["needtoraid"] = 2,

["srmsos"] = 2,["msos"] = 2,["signup"] = 2,["signups"] = 2,
["summonready"] = 2,["wforinvite"] = 2,["whisperforinvite"] = 2,
["whoisdownto"] = 2,["wholetsdo"] = 2,
["pleasejoindailybg"] = 2,["queuenow"] = 2,
["lookinggroupto"] = 2,["lookinggroupfor"] = 2,["askgroupto"] = 2,["askgroupfor"] = 2,
["needplayerfor"] = 2,["groupdelvinginto"] = 2,

-- Boost
["freedmboost"] = 2,["freedeadminesboost"] = 2,["freestockadeboost"] = 2,["freestockboost"] = 2,["freebfdboost"] = 2,["freeblackfathomboost"] = 2,["freeblackfathomdeepsboost"] = 2,["freeblackfathomdeepboost"] = 2,
["freesfkboost"] = 2,["freeshadowfangboost"] = 2,["freeshadowfangkeepboost"] = 2,["freewcboost"] = 2,["freewailingcavernsboost"] = 2,["freerfcboost"] = 2,["freeragefireboost"] = 2,["freeragefirechasmboost"] = 2,
["freesmboost"] = 2,["freesmlibboost"] = 2,["freesmarmboost"] = 2,["freesmcathboost"] = 2,["freesmcathedralboost"] = 2,["freesmarmoryboost"] = 2,["freecathedralboost"] = 2,["freearmoryboost"] = 2,["freelibraryboost"] = 2,

-- Anyone
["anyonegoingtodo"] = 2,["anyonecomingtodo"] = 2,

["anyonehavetodo"] = 2,["anyoneletsdo"] = 2,["anyoneinterested"] = 2,["anyonefor"] = 2,
["anyoneneed"] = 2,--["anyoneneedto"] = 2,["anyoneneedtofarm"] = 2,["anyoneneedtojoin"] = 2,["anyoneneedtokill"] = 2,["anyoneneedtorun"] = 2,
["anyonethatcouldrun"] = 2,
["anyonethatcanrun"] = 2,["anyonethatcanjoin"] = 2,["anyonethatcangroup"] = 2,
["anyonetherefor"] = 2,["anyonetodo"] = 2,["anyoneupfor"] = 2,["anyonewhocanhelp"] = 2,["anyoneworkingon"] = 2,["anyoneelsefor"] = 2,["anyoneelsedoing"] = 2,["anyoneelseneed"] = 2,["anyoneelseupfor"] = 2,["anyonehelpcomplete"] = 2,

-- Any
["anyupfor"] = 2,["anyothersfor"] = 2,["anylastmin"] = 2,
["allianceforquest"] = 2,["anyallianceneed"] = 2,["hordeforquest"] = 2,["anyhordeneed"] = 2,
["clothspotfor"] = 2,["leatherworkerspotfor"] = 2,["mailspotfor"] = 2,["platespotfor"] = 2,

-- Help
["anyoneabletohelp"] = 2,["anyonecaretohelp"] = 2,["anyonedowntohelp"] = 2,["anyhelpfor"] = 2,["anyhelpin"] = 2,["anyonehelpwith"] = 2,["anyonehelpwith"] = 2,
["anyonemaybecanhelp"] = 2,["anyonemindhelping"] = 2,["anyoneneedtohelp"] = 2,["anyonethatcanhelp"] = 2,["anyonecanhelp"] = 2,["anyonetohelp"] = 2,
["helpkill"] = 2,["helpgetthrough"] = 2,["helpmethrough"] = 2,["cananyonehelp"] = 2,["caretohelpwith"] = 2,["willingtohelp"] = 2,
["helpoutwith"] = 2,["helpwit"] = 2,["helpwith"] = 2,["helpplease"] = 2,

["lfhelp"] = 2,["pleasehelp"] = 2,["whocanhelp"] = 2,["mindhelpingwith"] = 2,["mindhelpwith"] = 2,

["helpwithaquest"] = 2,["helpwithquest"] = 2,["sometodoquest"] = 2,["anytodoquest"] = 2,["anyonetodoquest"] = 2,
["needtohelp"] = 2,["somehelpforquest"] = 2,
["anydamagecanhelp"] = 2,["anyhealcanhelp"] = 2,["anytankcanhelp"] = 2,

-- Quest
["lfquest"] = 2,["anyoneforquest"] = 2,["anyonehereforquest"] = 2,["anyoneelsequest"] = 2,["anyonequest"] = 2,["anyoneupforquest"] = 2,["anyoneuptoquest"] = 2,
["comewithmequest"] = 2,["doingquest"] = 2,["moreforquest"] = 3,["needanotherforquest"] = 2,["letsdoquest"] = 2,["needotherforquest"] = 2,
["slotforquest"] = 2,["slotsforquest"] = 2,

-- Group words
["formraid"] = 2,["groupforelite"] = 2,["groupquest"] = 2,["hostraid"] = 2,
["lastspot"] = 2,["spotleft"] = 2,["spotleftfor"] = 2,["spotsleft"] = 2,["morespot"] = 2,["morespots"] = 2,["roomformore"] = 2,

-- Forming
["formgroupfor"] = 2,["startgroupfor"] = 2,["makegroupfor"] = 2,["hostgroupfor"] = 2,["gathergroupfor"] = 2,["creategroupfor"] = 2,
["formgroupto"] = 2,["startgroupto"] = 2,["makegroupto"] = 2,["makegroupto"] = 2,["hostgroupto"] = 2,["gathergroupto"] = 2,["creategroupto"] = 2,
["needtorunme"] = 2,["needtoruna"] = 2,["needtorunan"] = 2,["anygamersforquest"] = 2,["anygamersquest"] = 2,
["anyoneneedtogroup"] = 2,["anyonewillingtogroup"] = 2,["anyoneneedtorun"] = 2,["anyonewillingtorun"] = 2,["anyoneneedtoquest"] = 2,["anyonewillingtoquest"] = 2,
["formfresh"] = 2,["startfresh"] = 2,["makefresh"] = 2,["makefresh"] = 2,["hostfresh"] = 2,

-- Farm
["badgefarm"] = 2,["argentdawnrepfarm"] = 2,["stratrepfarm"] = 2,["repfarmopen"] = 2,["getyouraqrepfarm"] = 2,["combatbadgefarm"] = 2,["aqccrepfarm"] = 2,

-- Other
["bindingrecipereserved"] = 2,["bindingmatreserved"] = 2,["bindingmountreserved"] = 2,["bindingboereserved"] = 2,
["legendaryrecipereserved"] = 2,["legendarymatreserved"] = 2,["legendarymountreserved"] = 2,["legendaryboereserved"] = 2,
["recipebindingreserved"] = 2,["recipelegendaryreserved"] = 2,["recipematreserved"] = 2,["recipemountreserved"] = 2,["recipeboereserved"] = 2,
["matbindingreserved"] = 2,["matlegendaryreserved"] = 2,["matrecipereserved"] = 2,["matmountreserved"] = 2,["matboereserved"] = 2,
["mountbindingreserved"] = 2,["mountlegendaryreserved"] = 2,["mountrecipereserved"] = 2,["mountmatreserved"] = 2,["mountboereserved"] = 2,
["boebindingreserved"] = 2,["boelegendaryreserved"] = 2,["boerecipereserved"] = 2,["boematreserved"] = 2,["boemountreserved"] = 2,

-- Zones
["anyonealterac"] = 2,["anyonearathi"] = 2,["anyoneashenvale"] = 2,["anyoneauberdine"] = 2,["anyoneazshara"] = 2,["anyonebadlands"] = 2,["anyonebarrens"] = 2,
["anyoneblastedlands"] = 2,["anyonecenarion"] = 2,["anyonedarkshore"] = 2,["anyonedarkshire"] = 2,["anyonedeadwind"] = 2,["anyonedesolace"] = 2,
["anyonedunmorogh"] = 2,["anyonedurotar"] = 2,["anyoneduskwood"] = 2,["anyonedustwallow"] = 2,["anyoneepl"] = 2,["anyonefeathermoon"] = 2,["anyoneferalas"] = 2,
["anyonehinterlands"] = 2,["anyonehjyal"] = 2,["anyonelakeshire"] = 2,["anyoneloch"] = 2,["anyonelochmodan"] = 2,["anyonemoonglade"] = 2,["anyonemulgore"] = 2,
["anyoneredridge"] = 2,["anyonesearinggorge"] = 2,["anyonesilithus"] = 2,["anyonesilverpine"] = 2,["anyonesos"] = 2,["anyonestonetalon"] = 2,
["anyonestranglethorn"] = 2,["anyonestv"] = 2,["anyoneswamp"] = 2,["anyonetanaris"] = 2,["anyoneteldrassil"] = 2,["anyonetheramore"] = 2,
["anyonethousandneedles"] = 2,["anyonekneedles"] = 2,["anyonetirisfal"] = 2,["anyoneungoro"] = 2,["anyonevalleyofspears"] = 2,["anyonewestfall"] = 2,
["anyonewetlands"] = 2,["anyonewinterspring"] = 2,["anyonewpl"] = 2,
}
GF_WORD_LFG = {
["lfg"] = true,["lkg"] = true,["lfd"] = true,["lfr"] = true,["lfgroup"] = true,["lookingtogroup"] = true,["asktogroup"] = true,["needtogroup"] = true,
["invitemefor"] = true,
["cananyoneboostme"] = true,

["anyoneform"] = true,["anyoneplanningtodo"] = true,
["anyraiddoing"] = true,["anyraidfor"] = true,["anyraidgoing"] = true,["anyraidneed"] = true,["anyraidup"] = true,
["anydungeonneed"] = true,["anygroupdoing"] = true,["anygroupfor"] = true,["anygroupon"] = true,["anygroupgoing"] = true,["anygroupneed"] = true,["anygroupsgoingfor"] = true,["anygroupup"] = true,
["isthereanyraid"] = true,["anyraidforquest"] = true,

["anyonedoing"] = true,["anyonestarta"] = true,["anyonehosta"] = true,["anyoneforma"] = true,
["whoneededdruid"] = 2,["whoneededhunter"] = 2,["whoneededmage"] = 2,["whoneededpaladin"] = 2,["whoneededpriest"] = 2,["whoneededrogue"] = 2,["whoneededshaman"] = 2,["whoneededwarlock"] = 2,["whoneededlock"] = 2,["whoneededwarrior"] = 2,

["anybadgefarm"] = true,["anycombatbadgefarm"] = true,
["anyaqrepfarm"] = true,["anyccrepfarm"] = true,["anycenarionrepfarm"] = true,["anyargentrepfarm"] = true,["anyargentdawnrepfarm"] = true,["anyaqccrepfarm"] = true,["anyhyjalrepfarm"] = true,
["anystratrepfarm"] = true,["anyrepfarmstrat"] = true,["anyscholomancestratrepfarm"] = true,["anystratscholomancerepfarm"] = true,["anyscholomancestratholmerepfarm"] = true,["anystratholmescholomancerepfarm"] = true,

-- Raids
["anymchappening"] = true,["anymoltencorehappening"] = true,["anyblackwinglairhappening"] = true,["anyaqhappening"] = true,["anynaxxramashappening"] = true,["anyonyxiahappening"] = true,
["anyzghappening"] = true,["anykarazhanhappening"] = true,["anyworldbosshappening"] = true,["anymcgoing"] = true,["anymoltencoregoing"] = true,["anyblackwinglairgoing"] = true,["anyaqgoing"] = true,
["anynaxxramasgoing"] = true,["anyonyxiagoing"] = true,["anyzggoing"] = true,["anykarazhangoing"] = true,["anyworldbossgoing"] = true,
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
["invite"] = true,
["form"] = true,
["start"] = true,
["id"] = true,
["sr"] = true,
["gogo"] = true,
["spam"] = true,
}
GF_LFM_ONE_BEFORE = {
["anyone"] = true,
["help"] = true,
["group"] = true,
["together"] = true,
["queue"] = true,
["join"] = true,
["heal"] = true,
["damage"] = true,
["tank"] = true,
["going"] = true,
["doing"] = true,
["coming"] = true,
["gtg"] = true,
["invite"] = true,
["p"] = true,
["gogo"] = true,
["go"] = true,
["host"] = true,
["form"] = true,
["start"] = true,
["kill"] = true,
}
GF_LFM_TWO_AFTER = {
["needhelp"] = true,
["needmore"] = true,
["pleasequeue"] = true,
["letsgo"] = true,
["anyoneafter"] = true,
["hardcoregroup"] = true,
}
GF_LFM_TWO_BEFORE = {
["anyonequest"] = true,
["queuefor"] = true,
["healfor"] = true,
["damagefor"] = true,
["tankfor"] = true,
["needmore"] = true,
["needhelp"] = true,
["lastfor"] = true,
["healfor"] = true,
["tankfor"] = true,
["damagefor"] = true,
["anyonefor"] = true,
["anyonedo"] = true,
["anyonerunning"] = true,
["letsdo"] = true,
["needall"] = true,
["helpon"] = true,
["morefor"] = true,
["letsrun"] = true,
["peoplefor"] = true,
["hardcoregroup"] = true,
}
GF_LFG_ONE_AFTER = {
["need"] = true,
}
GF_LFG_ONE_BEFORE = {
["any"] = true,
["need"] = true,
}
GF_LFG_TWO_BEFORE = {
["takeme"] = true,
["upfor"] = true,
}

GF_WORD_HC = {
["hc"] = true,
["hardcore"] = true,
}
GF_WORD_NOT_HC = {
["nohc"] = true,
["nothc"] = true,
["nonhc"] = true,
["nohardcore"] = true,
["nonhardcore"] = true,
["nothardcore"] = true,
}

GF_WORD_CLASSES = {
["druid"] = 0,["hunter"] = 0,["mage"] = 0,["paladin"] = 0,["priest"] = 0,["rogue"] = 0,["shaman"] = 0,["warlock"] = 0,["lock"] = 0,["warrior"] = 0,
["heal"] = 0,["tank"] = 0,["damage"] = 0,["range"] = 0,["melee"] = 0,["caster"] = 0,
}
GF_WORD_LEVEL_DETECT = {
["lvl"] = true,["lvel"] = true,["levl"] = true,["level"] = true,

["healer"] = true,["heal"] = true,["tank"] = true,["dps"] = true,["damage"] = true,["range"] = true,["melee"] = true,["caster"] = true,
["druid"] = true,["hunter"] = true,["mage"] = true,["paladin"] = true,["priest"] = true,["rogue"] = true,["shaman"] = true,["warlock"] = true,["lock"] = true,["warrior"] = true,
["balance"] = true,["feral"] = true,["resto"] = true,["bm"] = true,["marks"] = true,["survival"] = true,["arcane"] = true,["fire"] = true,["frost"] = true,["holy"] = true,["prot"] = true,["ret"] = true,["disc"] = true,["holy"] = true,
["shadow"] = true,["assassin"] = true,["combat"] = true,["sub"] = true,["ele"] = true,["enh"] = true,["resto"] = true,["affliction"] = true,["demonology"] = true,["destruction"] = true,["arm"] = true,["fury"] = true,["prot"] = true,
["boomie"] = true,["kitty"] = true,["bear"] = true,["shadowpriest"] = true,["affl"] = true,["demo"] = true,["destro"] = true,["protection"] = true,

["dungeon"] = true,["anything"] = true,
}
GF_WORD_QUEST = {
["hogger"] = 10,["bodyandheart"] = 10,["vagash"] = 11,["arugals"] = 15,["pyrewood"] = 15,["mercenaries"] = 19,["counterattack"] = 20,["vyrin"] = 20,["vyrins"] = 20,["olsooty"] = 20,["heartswood"] = 20,
["arachnophobia"] = 21,["choksul"] = 22,["yowler"] = 25,["blackrockchampion"] = 25,["tharilzun"] = 25,["stonewatch"] = 26,["gathilzogg"] = 26,["gath"] = 26,["fangore"] = 26,["morganth"] = 27,
["dangerous"] = 28,["eliza"] = 30,["hypercapacitor"] = 30,["humbert"] = 30,["embalmer"] = 32,["nekroshs"] = 32,["vorrel"] = 33,["balgaras"] = 34,["sindall"] = 37,["trollbane"] = 37,
["bhagthera"] = 40,["tethis"] = 43,["bangalash"] = 43,["stromgarde"] = 37,["trelane"] = 39,["marez"] = 40,["falconcrest"] = 40,["cyclonian"] = 40,["fozruk"] = 42,["oox"] = 45,
["morokk"] = 45,["smotts"] = 46,["gorlash"] = 47,["gammerita"] = 48,["hexx"] = 50,["gahzrilla"] = 50,["mokrash"] = 50,["mok"] = 50,["jinthaalor"] = 50,["sharpbeak"] = 51,["revantusk"] = 51,["torntusk"] = 51,
["obsidion"] = 52,["gorshak"] = 52,["shadra"] = 55,["ursius"] = 56,["hetaera"] = 58,["kirith"] = 58,["grark"] = 58,["winterfall"] = 59,["deathclasp"] = 59,["corpulent"] = 60,["borelgore"] = 60,
["courier"] = 60,["componentsofimportance"] = 60,["ascension"] = 60,["rakh"] = 60,["abyssal"] = 60,["araj"] = 60,["arajs"] = 60,["andorhal"] = 60,["frostmaul"] = 60,["shyrotam"] = 60,
["hameya"] = 60,["rotam"] = 60,["bloodkelp"] = 60,["xoroth"] = 60,["dreadsteed"] = 60,["hearthglen"] = 60,["suppression"] = 60,["benedictionquest"] = 60,["hiveashi"] = 60,["hiveregal"] = 60,
["hivezora"] = 60,["chimaerok"] = 63,["decoy"] = 63,["lakmaeran"] = 64,["neptulon"] = 64,["maws"] = 64,["eranikus"] = 64,["nathanos"] = 63,["blightcaller"] = 63,["drakkisath"] = 63,["thunderaan"] = 64,
["dukes"] = 60,["fireduke"] = 60,["westernplaguelands"] = 60,["easternplaguelands"] = 60,["wpl"] = 60,["epl"] = 60,["scarlet"] = 0,

-- Two Words
["supervisorfizsprocket"] = 12,["gatheridols"] = 18,["denmother"] = 18,["lookingfurther"] = 22,["furbolgvillage"] = 23,["shadowmagic"] = 23,["midnightorb"] = 23,["lieutenantfangore"] = 26,["hordepresence"] = 29,["dungarok"] = 30,
["thandolspan"] = 31,["vorrelsrevenge"] = 33,["missingdiplomat"] = 34,["grimtask"] = 34,["brokensigil"] = 40,["thesummon"] = 40,["demonoftheorb"] = 40,["theexorcism"] = 40,["crackingmaury"] = 44,["bloodsailbuccaneers"] = 45,["mindseye"] = 46,
["captainschest"] = 47,["jinthaalor"] = 50,["cliffgiant"] = 50,["ancientegg"] = 50,["flamescasing"] = 50,["revantuskvillage"] = 51,["destroymorphaz"] = 52,["voodoofeathers"] = 52,["davoodoo"] = 52,["burningsteppes"] = 56,
["grarklorkrub"] = 58,["gahrronswithering"] = 58,["targethive"] = 60,["exorcisingterrordale"] = 60,["alcazisland"] = 62,["nightmarescorruption"] = 64,["twilightcorrupter"] = 64,["doctorweavil"] = 64,
["onyattunement"] = 58,["onyxiaattunement"] = 58,["attunementony"] = 58,["attunementonyxia"] = 58,
["demonquest"] = 60,["mountquest"] = 60,["championbattlegear"] = 60,["stalwartsbattlegear"] = 60,["volunteersbattlegear"] = 60,["veteransbattlegear"] = 60,
-- Three Words
["snatchandgrab"] = 10,["deadtoothjack"] = 10,["absentmindedprospector"] = 20,["bellygrub"] = 24,["bailorsoreshipment"] = 25,["tomeofvalor"] = 25,["darkironwar"] = 30,["darkironambassador"] = 33,["legendofstalvan"] = 35,["sigilofstrom"] = 37,
["bloodybonenecklaces"] = 37,["calltoarms"] = 40,["powerinuldaman"] = 40,["ritualsofpower"] = 40,["crownofwill"] = 43,["challengeoverlordmokmorok"] = 45,["broodofonyxia"] = 45,["muiginandlarion"] = 52,["forgingthemightstone"] = 52,
["bloodofmorphaz"] = 52,["theazurekey"] = 52,["abetteringredient"] = 52,["thegreendrake"] = 52,["timbermawholdrep"] = 55,["meldingofinfluence"] = 55,["thefinaltablets"] = 58,["mawofmadness"] = 60,["kingsofflame"] = 60,["dukeofcynders"] = 60,
["theprisonscasing"] = 60,["ancientequinespirit"] = 60,["judgementandredemption"] = 60,["aproperstring"] = 64,["testofskull"] = 62,["thedarkreavermenace"] = 62,["draconicfordummies"] = 64,

-- Four Words
["creatureofthevoid"] = 10,["investigatethebluerecluse"] = 16,["defenseofthekingslands"] = 17,["seekingthekorgem"] = 22,["possiblebutnotprobable"] = 24,["howlinginthehills"] = 25,["thetomeofvalor"] = 25,["tearofthemoons"] = 30,
["fallindemoncanyon"] = 31,["elitevalleyofspears"] = 42,["valleyofspearselite"] = 42,["armyoftheblack"] = 43,["anambassadorofevil"] = 44,["lardlosthislunch"] = 49,["trollofafeather"] = 52,["warontheshadowsworn"] = 52,
["nameofthebeast"] = 58,["oflightandshadow"] = 60,["theisleofdread"] = 64,["isleofthedread"] = 64,["pathoftherighteous"] = 64,

-- Elites, Special, and Reputation
["dunmoroghelite"] = 12,["elitedunmorogh"] = 12,
["silverpineelite"] = 15,["elitesilverpine"] = 15,
["glenshireelite"] = 15,["eliteglenshire"] = 15,
["stormwindmagequest"] = 17,["undercitymagequest"] = 17,
["lochmodanelite"] = 20,["elitelochmodan"] = 20,["lochmodangroup"] = 20,["lochmodanogres"] = 20,
["redridgeelite"] = 26,["eliteredridge"] = 26,["redridgemountainelite"] = 26,["redridgegroup"] = 26,["redridgemountaingroup"] = 26,
["lakeshireelite"] = 26,["elitelakeshire"] = 26,["lakeshiregroup"] = 26,
["hillsbradelite"] = 30,["elitehillsbrad"] = 30,["hillsbradgroup"] = 30,["hillsbradfoothillselite"] = 30,["hillsbradfoothillsgroup"] = 30,
["wetlandselite"] = 30,["elitewetlands"] = 30,["wetlandsgroup"] = 30,
["darkirondwarf"] = 30,["darkirondwarves"] = 30,["dunmodr"] = 30,
["darkshireelite"] = 34,["elitedarkshire"] = 34,["darkshiregroup"] = 34,
["duskwoodelite"] = 34,["eliteduskwood"] = 34,["duskwoodgroup"] = 34,
["whirlwindaxe"] = 40,["whirlwindweapon"] = 40,
["arathielite"] = 40,["elitearathi"] = 40,["arathigroup"] = 40,["arathiogres"] = 40,
["highlandselite"] = 40,["elitehighlands"] = 40,["highlandsgroup"] = 40,["highlandsogres"] = 40,
["arathihighlandselite"] = 40,["arathihighlandsgroup"] = 40,
["alteracelite"] = 40,["elitealterac"] = 40,["alteracgroup"] = 40,
["alteracmountainelite"] = 40,["alteracmountaingroup"] = 40,
["dustwallowelite"] = 45,["elitedustwallow"] = 45,["dustwallowgroup"] = 45,["dustwallowmarshelite"] = 45,["elitedustwallowmarsh"] = 45,
["chickenquest"] = 45,["chickenescort"] = 45,["homingrobot"] = 45,
["hinterlandselite"] = 50,["elitehinterlands"] = 50,["hinterlandsgroup"] = 50,["hinterlandsquest"] = 50,
["hintelite"] = 50,["elitehint"] = 50,["hintgroup"] = 50,
["hinterlandsallianceelite"] = 50,["hinterlandshordeelite"] = 50,["hinterlandsalliancegroup"] = 50,["hinterlandshordegroup"] = 50,
["trollelite"] = 50,["elitetroll"] = 50,
["blastedlandselite"] = 60,["eliteblastedlands"] = 60,
["silithuselite"] = 60,["elitesilithus"] = 60,["silithusgroup"] = 60,
["highcouncil"] = 64,["abyssalcouncil"] = 64,["highcouncilinsilithus"] = 64,["abyssalcouncilinsilithus"] = 64,["silithushighcouncil"] = 64,["silithusabyssalcouncil"] = 64,
["silithuslords"] = 64,["lordssilithus"] = 64,["lordsinsilithus"] = 64,["lordskwol"] = 64,["whirlaxis"] = 64,["baronkazum"] = 64,["skaldrenox"] = 64,
["silithusdukes"] = 60,["dukesilithus"] = 60,["dukesinsilithus"] = 60,["dukesummon"] = 60,["dukesummonto"] = 60,
["thunderfuryquest"] = 64,["thunderfuryboss"] = 64,

["lfmsilverpine"] = 15,["lfmglenshire"] = 15,["lfmlochmodan"] = 20,["lfmredridge"] = 25,["lfmlakeshire"] = 25,["lfmhillsbrad"] = 27,["lfmwetlands"] = 27,["lfmdarkshire"] = 28,["lfmduskwood"] = 28,
["lfmarathi"] = 38,["lfmhighlands"] = 38,["lfmalterac"] = 38,["lfmdustwallow"] = 42,["lfmhinterlands"] = 47,["lfmblastedlands"] = 55,["lfmsilithus"] = 60,["lfmstormwind"] = 0,

["lfgsilverpine"] = 15,["lfgglenshire"] = 15,["lfglochmodan"] = 20,["lfgredridge"] = 25,["lfglakeshire"] = 25,["lfghillsbrad"] = 27,["lfgwetlands"] = 27,["lfgdarkshire"] = 28,["lfgduskwood"] = 28,
["lfgarathi"] = 38,["lfghighlands"] = 38,["lfgalterac"] = 38,["lfgdustwallow"] = 42,["lfghinterlands"] = 47,["lfgblastedlands"] = 55,["lfgsilithus"] = 60,["lfgstormwind"] = 0,

["silverpinequest"] = 15,["glenshirequest"] = 15,["lochmodanquest"] = 20,["redridgequest"] = 25,["lakeshirequest"] = 25,["hillsbradquest"] = 27,["wetlandsquest"] = 27,["darkshirequest"] = 28,["duskwoodquest"] = 28,
["arathiquest"] = 38,["highlandsquest"] = 38,["alteracquest"] = 38,["alteracmountainquest"] = 38,["dustwallowquest"] = 42,["hinterlandsquest"] = 47,["blastedlandsquest"] = 55,["silithusquest"] = 60,["stormwindquest"] = 0,

["elite"] = 0,["escort"] = 0,["quest"] = 0,["task"] = 0,["combattask"] = 60,["combatbadge"] = 60,["hyjalshard"] = 60,["levelinggroup"] = 0,["repfarm"] = 60,["bossfarm"] = 0,["badgefarm"] = 60,
["argentdawnrep"] = 60,["argentdawnrepfarm"] = 60,["argentrepfarm"] = 60,["cenarionrepfarm"] = 60,["ccrepfarm"] = 60,["cenarionrep"] = 60,["ccrep"] = 60,
["repfarmfelwood"] = 60,["repfarmfelpawvillage"] = 60,["repfarmsilithus"] = 60,["repfarmwinterspring"] = 60,["repfarmepl"] = 60,["repfarmwpl"] = 60,
["felwoodrepfarm"] = 60,["felpawvillagerepfarm"] = 60,["silithusrepfarm"] = 60,["winterspringrepfarm"] = 60,["eplrepfarm"] = 60,["wplrepfarm"] = 60,
["broodofnozdormurepfarm"] = 64,["broodofnozdormurep"] = 64,

["rhokdelarquest"] = 60,["rhokdelarquest"] = 60,["staveoftheancients"] = 64,["ancientsinewwrappedlamina"] = 64,

["lastbarov"] = 62,["alexibarov"] = 62,["weldonbarov"] = 62,["elitebarov"] = 60,["barovelite"] = 60,["barovgroup"] = 60,["groupbarov"] = 60,["barovkill"] = 60,["killbarov"] = 60,
["barovalliance"] = 62,["alliancebarov"] = 62,["barovhorde"] = 62,["hordebarov"] = 62,

["impquest"] = 5,["voidwalkerquest"] = 10,["succubusquest"] = 20,["felhunterquest"] = 30,

-- Import all to make sure the addon picks them up
-- Eastern Kingdoms
["ordermustberestored"] = 63,["threekingsofflame"] = 60,["stormwindrendezvous"] = 60,["thegreatmasquerade"] = 60,["thebattleofdarrowshire"] = 60,["darrowshire"] = 60,["finalpreparations"] = 60,["thelastbarov"] = 60,["establishingnewoutposts"] = 60,
["bolsteringourdefenses"] = 60,["indreams"] = 63,["scarletsubterfuge"] = 60,["fordring"] = 60,["thehumanrasfrostwhisper"] = 60,["menethilsgift"] = 60,["thelichrasfrostwhisper"] = 60,["youarerakhlikhdemon"] = 60,["rakhlikh"] = 60,
["morecomponentsofimportance"] = 60,["componentsofimportance"] = 60,["arajsscarab"] = 60,["thescarletoracledemetria"] = 60,["demetria"] = 60,["unitingtheshatteredamulet"] = 60,["theeasternplagues"] = 60,["thecrimsoncourier"] = 60,["alasandorhal"] = 60,
["duskwing"] = 60,["howihatethee"] = 60,["thecorpulentone"] = 60,["maraudersofdarrowshire"] = 60,["hameyasplea"] = 60,["thedemonhunter"] = 60,["therangerlordsbehest"] = 60,["avastyeadmiral"] = 60,["tokillwithpurpose"] = 58,["unlifeslittleannoyances"] = 58,
["losttabletsofmosharu"] = 58,["whensmokeysings"] = 58,["singsigetviolent"] = 58,["ofloveaandfamily"] = 58,["oflosthonor"] = 58,["targetgahrronswithering"] = 58,["unfinishedbusiness"] = 58,["villainsofdarrowshire"] = 57,["offorgottenmemories"] = 57,
["stonesthatbindus"] = 57,["theannalsofdarrowshire"] = 56,["amatteroftime"] = 56,["countingouttime"] = 56,["allalongthewatchtowers"] = 56,["bloodtingedskies"] = 56,["demondogs"] = 56,["fragmentsofthepast"] = 56,["carriongrubbage"] = 56,
["fiftyyep"] = 56,["thewildlifesufferstoo"] = 56,["heroesofdarrowshire"] = 56,["summoningshadra"] = 55,["theswamptalker"] = 55,["defendersofdarrowshire"] = 55,["aplagueuponthee"] = 55,["pamelasdoll"] = 55,["augustusreceiptbook"] = 55,
["zaeldarrtheoutcast"] = 55,["zaeldarr"] = 55,["meldingofinfluences"] = 55,["targetdalsonstears"] = 55,["targetwrithinghaunt"] = 55,["dragonkinmenace"] = 54,["atasteofflame"] = 54,["twohalvesbecomeone"] = 54,["smolderingruinsofthaurissan"] = 54,
["alittleslimegoes"] = 54,["goesalongway"] = 54,["riseofthemachines"] = 54,["kromgrul"] = 53,["scarletdiversions"] = 53,["targetfelstonefield"] = 53,["gorteshthebrutelord"] = 53,["disharmonyofflame"] = 52,["overmasterpyron"] = 52,["releasethem"] = 52,
["setthemablaze"] = 52,["riseobsidion"] = 52,["obsidion"] = 52,["arcanerunes"] = 52,["broodlingessence"] = 52,["cleartheway"] = 52,["asampleofslime"] = 52,["seepingcorruption"] = 52,["extinguishthefiregut"] = 52,["savingsharpbeak"] = 51,
["captainofrevantuskvillage"] = 51,["jobopeningguardcaptain"] = 51,["messageinabottle"] = 51,["hexxandherminions"] = 51,["wantedvilepriestesshexx"] = 51,["recoverthekey"] = 51,["theancientegg"] = 50,["summontheprincess"] = 50,["tremorsoftheearth"] = 50,
["brokenalliances"] = 50,["facingnegolash"] = 50,["negolash"] = 50,["theflamescasing"] = 50,["wantedoverseermaltorius"] = 50,["maltorius"] = 50,["darkvessels"] = 50,["separationanxiety"] = 50,["themonogrammedsash"] = 50,["whattheflux"] = 50,
["prayertoelune"] = 50,["snapjawsmon"] = 50,["whiskeyslimslostgrog"] = 50,["incendosaurs"] = 49,["ismorelikeit"] = 49,["lardlosthislunch"] = 49,["cursethesefatfingers"] = 49,["fierymenace"] = 49,["gammeritamon"] = 48,["thealtarofzul"] = 48,["findooxhl"] = 48,
["vilebranchhooligans"] = 48,["theflawlessflame"] = 48,["suntarastones"] = 48,["dorius"] = 48,["stolensmithingtuyere"] = 48,["tuyereandlookoutsspyglass"] = 48,["astickysituation"] = 48,["rescueooxhl"] = 48,["forgingtheshaft"] = 48,["skulkrockcleanup"] = 48,
["huntingthesavages"] = 48,["cannibalisticcousins"] = 48,["avengingthefallen"] = 48,["jobopportunitycullingthe"] = 48,["opportunitycullingthecompetition"] = 48,["stalkingthestalkers"] = 48,["thecaptainschest"] = 47,["linesofcommunication"] = 47,
["rinjiistrapped"] = 47,["maizoth"] = 46,["themindseye"] = 46,["ledgerfromtanaris"] = 46,["savingyenniku"] = 46,["speakingwithganzulah"] = 46,["fillingthesoulgem"] = 46,["fieryblazeenchantments"] = 46,["blackdrakesheart"] = 45,["goingtobehard"] = 45,
["stranglethornfever"] = 45,["mokk"] = 45,["messageinabottle"] = 45,["kingmukla"] = 45,["witherbarkcages"] = 45,["undamagedvenomsac"] = 45,["continuedthreat"] = 45,["thesingingcrystals"] = 45,["trollnecklacebounty"] = 45,["thebloodsailbuccaneers"] = 45,
["starhandandtheheart"] = 44,["thestarhandandthe"] = 44,["anambassadorofevil"] = 44,["crackingmaurysfoot"] = 44,["badlandsreagentrunii"] = 44,["sweetamber"] = 44,["voodoodues"] = 44,["deathfrombelow"] = 44,["mokthardinsenchantment"] = 44,["zanzilssecret"] = 44,
["foolsstout"] = 44,["pooloftears"] = 43,["biggamehunter"] = 43,["insearchofthetemple"] = 43,["raptormastery"] = 43,["thecrownofwill"] = 43,["cortellosriddle"] = 43,["rhapsodyskalimdorkocktail"] = 43,["akirisbythebundle"] = 43,["threatfromthesea"] = 43,
["breakingthekeystone"] = 42,["trolkalar"] = 42,["nothingbutthetruth"] = 42,["sigiloftrollbane"] = 42,["murdaloc"] = 42,["grimmessage"] = 42,["skullsplittertusks"] = 42,["lordalidenperenolde"] = 42,["keepaneyeout"] = 42,["dizzyseye"] = 42,
["splitbonenecklace"] = 42,["sigilofarathor"] = 41,["thelostfragments"] = 41,["mazensbehest"] = 41,["venturecompanymining"] = 41,["uptosnuff"] = 41,["bloodscalpclanheads"] = 41,["scaringshaky"] = 41,["theperenoldetiara"] = 40,["thecurseofthetides"] = 40,
["panthermastery"] = 40,["crushridgewarmongers"] = 40,["colonelkurzen"] = 40,["kurzen"] = 40,["foulmagics"] = 40,["calltoarm"] = 40,["thebrokensigil"] = 40,["therealthreat"] = 40,["wantedottoandfalconcrest"] = 40,
["greenhillsofstranglethorn"] = 40,["thegreenhillsof"] = 40,["sunkentreasure"] = 40,["wordofathreat"] = 40,["passingwordofa"] = 40,["deepseasalvage"] = 40,["darkcouncil"] = 40,["trollwitchery"] = 40,["amealservedcold"] = 40,["wantedbaronvardus"] = 40,
["vardus"] = 40,["speakingwithnezzliok"] = 40,["prospectoffaith"] = 40,["baronsdemise"] = 40,["scrounging"] = 40,["lackofsurplus"] = 40,["drownedsorrows"] = 40,["coyotethieves"] = 40,["trelanesdefenses"] = 39,["attackonthetower"] = 39,["thecrownofwill"] = 39,
["wantedmarezcowl"] = 39,["badlandsreagentrun"] = 39,["prettyboyduncan"] = 39,["wandoverfist"] = 39,["studyoftheelementsrock"] = 39,["preservingknowledge"] = 38,["excelsior"] = 38,["stonesofbinding"] = 38,["kurzensmystery"] = 38,
["mirages"] = 38,["galensescape"] = 38,["galen"] = 38,["specialforces"] = 38,["thevilereef"] = 37,["stromgardebadge"] = 37,["theprincesstrapped"] = 37,["tigermastery"] = 37,["stoneofthetides"] = 37,["headhunting"] = 37,["guileoftheraptor"] = 37,
["ofanewplague"] = 37,["hintsofanew"] = 37,["thedefenseofgromgol"] = 37,["encroachingwildlife"] = 37,["goldir"] = 36,["itsweightingold"] = 36,["worthitsweightin"] = 36,["tostealfromthieves"] = 36,["someassemblyrequired"] = 36,["hostiletakeover"] = 36,
["crushridgebounty"] = 36,["nobledeaths"] = 36,["morladim"] = 35,["asignofhope"] = 35,["singingblueshards"] = 35,["bloodscalpears"] = 35,["bookieherod"] = 35,["dwarfandhistools"] = 35,["adwarfandhis"] = 35,["draenethystcrystals"] = 35,["dalaranpatrols"] = 35,
["agrimtask"] = 34,["bartolosyetifurcloak"] = 34,["valik"] = 34,["infiltration"] = 34,["costlymenace"] = 34,["prisonbreakin"] = 34,["badmedicine"] = 34,["hunterforyenniku"] = 34,["wristofbinding"] = 34,["raisingspirits"] = 34,["helcularsrevenge"] = 33,
["syndicateassassins"] = 33,["thesecondrebellion"] = 33,["morbentfel"] = 32,["defeatnekrosh"] = 32,["nekrosh"] = 32,["thehammermayfall"] = 32,["stonetokens"] = 32,["stormwindho"] = 32,["farrensproof"] = 32,["thethandolspan"] = 31,["theattack"] = 31,
["itemsofsomeconsequence"] = 31,["infiltratingtheCastle"] = 31,["akingstribute"] = 31,["northfoldmanor"] = 31,["supplyanddemand"] = 31,["brideoftheembalmer"] = 30,["thedarkironwar"] = 30,["elixirofagony"] = 30,["humbertssword"] = 30,["humbert"] = 30,
["battleofhillsbrad"] = 30,["anoblebrew"] = 30,["themissingdiplomat"] = 34,["liftingthecurse"] = 30,["thenightwatch"] = 30,["ogrethieves"] = 30,["looktothestars"] = 30,["downthecoast"] = 30,["ormersrevenge"] = 29,["thecursedcrew"] = 29,["thelostingots"] = 29,
["lightforgeingots"] = 29,["worgeninthewoods"] = 29,["thelegendofstalvan"] = 28,["stalvan"] = 28,["uncoveringthepast"] = 28,["dangerous"] = 28,["provingyourworth"] = 28,["warbanners"] = 28,["ghoulisheffigy"] = 27,["wantedgathilzogg"] = 26,
["wantedlieutenantfangore"] = 26,["apprenticesduties"] = 26,["thetotemofinfliction"] = 25,["souvenirsofdeath"] = 25,["blackrockbounty"] = 25,["missinginaction"] = 25,["keeshan"] = 25,["fallofdunmodr"] = 25,["assaultonfenrisisle"] = 24,["fenris"] = 24,
["diggingthroughtheooze"] = 24,["sidasbag"] = 24,["gatherrotblossoms"] = 24,["anunwelcomeguest"] = 24,["elixirofpain"] = 24,["solomonslaw"] = 23,["firetaboo"] = 23,["wantedchoksul"] = 22,["therescue"] = 22,["theweaver"] = 22,["ataeric"] = 22,
["clawsfromthedeep"] = 22,["youngcrocoliskskins"] = 22,["elixirofsuffering"] = 22,["wantedsyndicatepersonnel"] = 22,["berensperil"] = 21,["eightleggedmenaces"] = 21,["trampingpaws"] = 21,["blackrockmenace"] = 21,["thealgazgauntlet"] = 21,
["wolvesatourheels"] = 21,["ahusbandsrevenge"] = 20,["abayingofgnolls"] = 20,["theeverstillbridge"] = 20,["thecoastalmenace"] = 20,["murkeye"] = 20,["thecoastisntclear"] = 19,["adarkthreatlooms"] = 18,["mogroshcrystal"] = 18,["thedefiasbrotherhood"] = 18,
["arecipefordeath"] = 16,["underbellyscales"] = 18,["gatheringidols"] = 18,["thepeoplesmilitia"] = 17,["indefenseofthekings"] = 17,["defenseofthekingslands"] = 17,["assessingthethreat"] = 17,["pyrewoodambush"] = 15,["arugalsfolly"] = 15,
["humblebeginnings"] = 15,["binglesmissingsupplies"] = 15,["filthypaws"] = 15,["crocoliskhunting"] = 15,["redleatherbandanas"] = 15,["thekillingfields"] = 15,["thedeadfields"] = 14,["patrollingwestfall"] = 14,["protectingtheherd"] = 12,
["thefamilycrypt"] = 13,["withthescarletcrusade"] = 12,["atwarwiththe"] = 12,["tundramacgrannsstolenstash"] = 12,["theforgottenheirloom"] = 12,["provingallegiance"] = 12,["ivarthefoul"] = 12,["thetroggthreat"] = 12,["wantedhogger"] = 11,
["deathsinthefamily"] = 11,["wildhearts"] = 11,["anewplague"] = 11,["apilotsrevenge"] = 11,["ratcatching"] = 11,["rearguardpatrol"] = 11,["thepublicservant"] = 11,["manhunter"] = 10,["riverpawgnollbounty"] = 10,["proveyourworth"] = 10,
["bountyonmurlocs"] = 10,["wantedmaggoteye"] = 10,["maggoteye"] = 10,["protectthefrontier"] = 10,["redlinengoods"] = 9,["thoseblastedtroggs"] = 9,["goldtooth"] = 8,["graverobbers"] = 8,["collectingkelp"] = 7,["koboldcandles"] = 7,
["golddustexchange"] = 7,["proofofdemise"] = 7,["fieldsofgrief"] = 7,["doomweed"] = 6,["bountyongarrickpadfoot"] = 5,["garrick"] = 5,["aroguedeal"] = 5,

-- Kalimdor
["thecalling"] = 60,["thetestofskull"] = 60,["axtroz"] = 60,["chronalis"] = 60,["scryer"] = 60,["thewrathofneptulon"] = 64,["theisleofdread"] = 64,["theonlyprescription"] = 60,["somnus"] = 60,["thenightmarescorruption"] = 60,["dearestnatalia"] = 60,
["themawofmadness"] = 60,["intothemawof"] = 60,["thefourdukes"] = 60,["emberstrife"] = 60,["glyphchasing"] = 60,["luckbewithyou"] = 60,["breakingthecode"] = 60,["shyrotam"] = 60,["brannbronzebeardslostletter"] = 60,["rootofallevil"] = 60,
["hivezorascoutreport"] = 60,["hiveregalscoutreport"] = 60,["twilightmarauders"] = 60,["twilightbattleorders"] = 60,["azuretemplar"] = 60,["hiveashiscoutreport"] = 60,["targethiveashi"] = 60,["targethiveregal"] = 60,["targethivezora"] = 60,
["earthentemplar"] = 60,["rampaginggiants"] = 60,["crimsontemplar"] = 60,["hoarytemplar"] = 60,["frostmauleko"] = 60,["winterfalleko"] = 60,["huntingforectoplasm"] = 60,["aportablepowersource"] = 60,["thetwilightlexicon"] = 60,["areliquaryofpurity"] = 60,
["vyralthevile"] = 60,["frostsaberprovisions"] = 60,["winterfallintrusion"] = 60,["twilightgeolords"] = 60,["fieldduty"] = 60,["highchiefwinterfall"] = 59,["wanteddeathclasp"] = 59,["deathclaspterrorofthesands"] = 59,["guardiansofthealtar"] = 59,
["wildguardians"] = 59,["azsharite"] = 58,["thenameofthebeast"] = 58,["brumeranofthechillwind"] = 58,["brumeran"] = 58,["afinalblow"] = 58,["thetwilightmystery"] = 58,["winterfallactivity"] = 58,["noggleslostsatchel"] = 58,["arewethereyeti"] = 58,
["fireplumeforged"] = 57,["winterfallrunners"] = 57,["hiveinthetower"] = 57,["retributionofthelight"] = 57,["stormersandrumblers"] = 57,["acrewunderfire"] = 57,["loramus"] = 57,["noggleslasthope"] = 57,["steppingupsecurity"] = 57,
["dangeroustogoalone"] = 56,["ursiusoftheshardtooth"] = 56,["poisonedwater"] = 56,["ancientspirit"] = 56,["thebaitforlarkorwi"] = 56,["strangesources"] = 56,["troubledspiritsofkeltheril"] = 56,["toxichorrors"] = 56,["rimtori"] = 56,
["threatofthewinterfall"] = 56,["cleansingfelwood"] = 55,["findingthesource"] = 55,["dousingtheflamesof"] = 55,["theflamesofprotection"] = 55,["thespiritsofsouthwind"] = 55,["themightyucha"] = 55,["ucha"] = 55,["dadangaishungry"] = 55,
["helpfrommyfriends"] = 55,["deadwoodofthenorth"] = 55,["volcanicactivity"] = 55,["theapesofungoro"] = 55,["deadlydesertvenom"] = 55,["moontouchedwildkin"] = 55,["securingthesupplylines"] = 55,["bewareofpterrordax"] = 55,["verifyingthecorruption"] = 54,
["aquementas"] = 54,["pawncapturesqueen"] = 54,["silverheart"] = 54,["chillwindhorns"] = 54,["wellofcorruption"] = 54,["furthercorruption"] = 54,["supersticky"] = 54,["felboundancients"] = 54,["fluteofxavaric"] = 54,["thecorruptionofthejadefire"] = 54,
["chasingame"] = 53,["bungleinthejungle"] = 53,["kimjaelindeed"] = 53,["thefareoflarkorwi"] = 53,["expeditionsalvation"] = 53,["kimjaelsmissingequipment"] = 53,["thescentoflarkorwi"] = 53,["zapperfuel"] = 52,
["thevidereelixir"] = 52,["muigonandlarion"] = 52,["larionandmuigin"] = 52,["alienecology"] = 52,["thestrengthofcorruption"] = 52,["bonebladedweapon"] = 52,["collectionofthecorruptwater"] = 52,["stealingknowledge"] = 52,["thestonecircle"] = 51,
["forcesofjaedenar"] = 51,["rollthebones"] = 51,["shizzlesflyer"] = 51,["ahusbandslastbattle"] = 51,["overlordror"] = 51,
["darkheart"] = 50,["mountaingiantmuisek"] = 50,["morrowgrainresearch"] = 50,["thistleshrubvalley"] = 50,["vengeanceonthenorthspring"] = 50,["thestaveofequinex"] = 50,["themorrowstone"] = 50,["toogasquest"] = 50,["treantmuisek"] = 50,["naturalmaterials"] = 50,
["thethirstygoblin"] = 49,["sprinklesingredient"] = 49,["thegiantguardian"] = 49,["wanderingshay"] = 49,["thedunemaulcompound"] = 49,["thesupersnapperfx"] = 48,["zappedgiants"] = 48,["timbermawally"] = 48,["fuelforthezapping"] = 48,["findooxtn"] = 48,
["rescueooxtn"] = 48,["gahzridian"] = 48,["improvedquality"] = 48,["thescrimshankredemption"] = 48,["landfilledwithhatred"] = 47,["spiritualunrest"] = 47,["favoredofelune"] = 47,["testingthevessel"] = 47,["hippogryphmuisek"] = 47,["stinglasher"] = 47,
["noxiouslairinvestigation"] = 47,["freedomofallcreatures"] = 47,["foodforbaby"] = 47,["dolingjustice"] = 47,["themarkofquality"] = 46,["wantedcaliphscorpidsting"] = 46,["caliphscorpidsting"] = 46,["tanarisfieldsampling"] = 46,["gadgetzanwatersurvey"] = 46,
["darkceremony"] = 46,["challengeoverlordmokmorokk"] = 45,["thebroodofonyxia"] = 45,["findooxfe"] = 45,["rescueooxfe"] = 45,["stoleysshipment"] = 45,["southseashakedown"] = 45,["againstlordshalzaru"] = 45,["wantedandrefirebeard"] = 45,
["andrefirebeard"] = 45,["piratehatsahoy"] = 45,["faeriedragonmuisek"] = 45,["zukkashinfestation"] = 45,["agrimdiscovery"] = 45,["anewcloakssheen"] = 45,["deadmire"] = 45,["screecherspirits"] = 44,["morewastewanderjustice"] = 44,["thehighwilderness"] = 44,
["theogresofferalas"] = 44,["overlordmokmorokksconcern"] = 43,["themissingcourier"] = 43,["wastewanderjustice"] = 43,["againstthehatecrest"] = 43,["alphastrike"] = 43,["identifyingthebrood"] = 43,["gordunnicobalt"] = 43,["armyoftheblackdragon"] = 43,
["khanhratha"] = 42,["waronthewoodpaw"] = 42,["induriumore"] = 42,["razzericstweaking"] = 41,
["thecorrupter"] = 40,["margspeaks"] = 40,["andbugs"] = 40,["indurium"] = 39,["ghostoplasm"] = 39,["oplasmroundup"] = 39,["thekarnitalshipwreck"] = 39,["bonecollector"] = 39,["getmeoutof"] = 39,["meoutofhere"] = 39,
["bookoftheancients"] = 38,["gizeltoncaravan"] = 38,["handofiruxos"] = 38,["portalofthelegion"] = 38,["mudrocksoupandbugs"] = 38,["ongeku"] = 37,["frostmaw"] = 37,["goblinsponsorship"] = 37,["catchoftheday"] = 37,["khanjehn"] = 37,["khanshaka"] = 37,
["theblackshield"] = 37,["stinkysescape"] = 37,["reagentsforreclaimersinc"] = 37,["reagentsforreclaimers"] = 37,["claimrackmorestreasure"] = 36,["dreamdustintheswamp"] = 36,["otherfishtofry"] = 36,["encrustedtailfins"] = 35,["jarlneedblade"] = 35,
["brutalpolitics"] = 35,["jarlneedeyes"] = 35,["bodyguardforhire"] = 35,["theswarmgrows"] = 35,["thetheramoredocks"] = 35,["stealingsupplies"] = 35,["khandezhepah"] = 35,["partsoftheswarm"] = 35,["theramorespies"] = 35,["clambait"] = 35,["kodoroundup"] = 34,
["magramalliance"] = 33,["sceptreoflight"] = 33,["gelkisalliance"] = 33,["searchfortyranis"] = 33,["brokentears"] = 33,["abumpintheroad"] = 33,["befouledbysatyr"] = 33,["returntovahlarriel"] = 33,["insanedruids"] = 32,["thebranchofcenarius"] = 32,
["raidonthekolkar"] = 32,["satyrslaying"] = 32,["assaultonthekolkar"] = 31,["centaurbounty"] = 31,["rocketcarparts"] = 31,
["testofstrength"] = 30,["hypercapacitorgizmo"] = 30,["steelsnap"] = 30,["testofendurance"] = 30,["thehowlingvale"] = 30,["thetearofthemoons"] = 30,["fallenskylake"] = 30,["loadlightening"] = 30,["highperchvenom"] = 30,
["hardenedshells"] = 30,["saltflatvenom"] = 30,["theden"] = 29,["thesacredflame"] = 29,["ordanus"] = 29,["aneworesample"] = 29,["wantedarnakegrimtotem"] = 29,["arnakegrimtotem"] = 29,["freeatlast"] = 29,["forsakendiseases"] = 29,
["windrider"] = 29,["homewardbound"] = 29,["arikara"] = 28,["grimtotemspying"] = 28,["protectkanatigreycloud"] = 28,["woundedancients"] = 28,["amongsttheruins"] = 27,["warsongsupplies"] = 27,["warsongsawblades"] = 27,["ishaawak"] = 27,
["gerenzowrenchwhistle"] = 27,["raenescleansing"] = 27,["gerenzo"] = 27,["sacredfire"] = 27,["reclaimingthecharredvale"] = 27,["bloodfurybloodline"] = 26,["testoffaith"] = 26,["kingofthefoulweald"] = 26,["retrievalformauren"] = 26,["revengeofgann"] = 26,
["alienegg"] = 26,["satyrhorns"] = 26,["jinzilsforestmagic"] = 26,["enragedspirits"] = 26,["harpiesthreaten"] = 26,["betrayalfromwithin"] = 25,["cullingthethreat"] = 25,["stonetalonstandstill"] = 25,["ruuzel"] = 25,["pacifythecentaur"] = 25,
["elementalwar"] = 25,["thetowerofalthalaxx"] = 25,["weaponofchoice"] = 24,["theabsentmindedprospector"] = 24,["elementalwrist"] = 24,["suppliestoauberdine"] = 24,["toreksassault"] = 24,["trollcharm"] = 24,["rockandathistlefur"] = 24,["freedomtoruul"] = 24,
["ashenvaleoutrunners"] = 24,["anaggressivedefense"] = 24,["bloodofinnocents"] = 23,["theflyingmachineairport"] = 23,["gannsreclamation"] = 23,["vorshathelasher"] = 23,["theruinsofstardust"] = 23,["shreddingmachines"] = 23,["cycleofrebirth"] = 23,
["gerenzosorders"] = 23,["chensemptykeg"] = 22,["egghunter"] = 22,["elunestear"] = 22,["covertopsalpha"] = 22,["escapethroughforce"] = 22,["covertopsbeta"] = 22,["arachnophobia"] = 21,["devilsinwestfall"] = 21,["superreaper"] = 21,["tribesatwar"] = 21,
["pridewingsofstonetalon"] = 21,["agnomesrespite"] = 21,
["gyromastsrevenge"] = 20,["gyromast"] = 20,["earthenarise"] = 20,["goggeroc"] = 20,["serenabloodfeather"] = 20,["mankrikswife"] = 20,["lostinbattle"] = 20,["thesleeperhasawakened"] = 20,["absentmindedprospector"] = 20,["counterattack"] = 20,
["mathystrarelics"] = 20,["gyromastsretrieval"] = 20,["consumedbyhatred"] = 20,["freefromthehold"] = 20,["cryofthethunderhawk"] = 20,["bathranshair"] = 20,["deepmossspidereggs"] = 20,["thegunsofnorthwatch"] = 20,["theancientstatuette"] = 20,
["alostmaster"] = 20,["escapethroughstealth"] = 20,["hezrulbloodmark"] = 19,["thewarsongreports"] = 19,["ishamuhale"] = 19,["samophlangemanual"] = 19,["zoramstrand"] = 19,["goblininvaders"] = 19,["nagaatthezoram"] = 19,["bloodfeeders"] = 19,
["verogthedervish"] = 19,["stolensilver"] = 18,["raptorhorns"] = 18,["murkdeep"] = 18,["wantedmurkdeep"] = 18,["theblackwoodcorrupted"] = 18,["minersfortune"] = 18,["boulderslideravine"] = 18,["enragedthunderlizards"] = 18,["tharnariunshope"] = 18,
["tharnariunsescape"] = 18,["theescape"] = 18,["killgrundigdarkcloud"] = 18,["protectkaya"] = 18,["avengemyvillage"] = 18,["theangryscytheclaws"] = 17,["deepoceanvastsea"] = 17,["themastersglaive"] = 17,["cavemushrooms"] = 17,["fruitofthesea"] = 17,
["echeyakee"] = 16,["alteredbeings"] = 16,["forloveeternal"] = 16,["thestagnantoasis"] = 16,["hiddenenemies"] = 16,["stolenbooty"] = 16,["buzzbox"] = 16,["kolkarleaders"] = 16,["harpylieutenants"] = 16,["wantedbaronlongshore"] = 16,
["cleansingoftheinfected"] = 16,["nuggetslugs"] = 15,["harpyraiders"] = 15,["prowlersofthebarrens"] = 15,["thedisruptionends"] = 15,["fungalspores"] = 15,["oneshotonekill"] = 15,["thedemonseed"] = 14,["riseoftheearthmother"] = 14,
["suppliesforthecrossroads"] = 14,["plaguelands"] = 14,["theredcrystal"] = 14,["southseafreebooters"] = 14,["howbigathreat"] = 14,["samophlange"] = 14,["theforgottenpools"] = 13,["bashalaran"] = 13,["akzeloth"] = 13,["raptorthieves"] = 13,
["thezhevra"] = 13,["skullrock"] = 12,["darkstorms"] = 12,["ursalthemauler"] = 12,["tearsofthemoon"] = 12,["supervisorfizsprocket"] = 12,["plainstridermenace"] = 12,["disrupttheattacks"] = 12,["thefallofametharan"] = 12,["toolsofthehighborne"] = 12,
["sathrahssacrifice"] = 12,["lostbutnotforgotten"] = 11,["securingthelines"] = 11,["theenchantglade"] = 11,["preparationforceremony"] = 11,["druidoftheclaw"] = 10,["zalazane"] = 10,["thehunterway"] = 10,["theventureco"] = 10,["encroachment"] = 10,
["wildmanetotem"] = 10,["asacredburial"] = 10,["oakenscowl"] = 9,["therelicsofwakening"] = 9,["needforcure"] = 9,["minshinasskull"] = 9,["windsinthedesert"] = 9,["dwarvendigging"] = 8,["thesleepingdruid"] = 8,["ferocitasthedreameater"] = 8,
["theroadtodarnassus"] = 8,["dangersofthewindfury"] = 8,["mazzranache"] = 8,["twistedhatred"] = 7,["asolventspirit"] = 7,["carryyourweight"] = 7,["seekredemption"] = 7,["vanquishthebetrayers"] = 7,["timberlingseeds"] = 7,["timberlingsprouts"] = 7,
["theemeralddreamcatcher"] = 6,["swoophunting"] = 6,["sarkoth"] = 5,["burningblademedallion"] = 5,["webwoodegg"] = 5,["breaksharptusk"] = 5,["poisonwater"] = 5,["zennsbidding"] = 5,["thebattleboars"] = 4,["riteofstrength"] = 4,
["webwoodvenom"] = 4,["thebalanceofnature"] = 4,["thewoodlandprotector"] = 4,

-- LFG/LFM
["lfgalterac"] = 40,["lfgarathi"] = 40,["lfgashenvale"] = 25,["lfgauberdine"] = 15,["lfgazshara"] = 55,["lfgbadlands"] = 40,["lfgbarrens"] = 17,["lfgblastedlands"] = 55,
["lfgcenarion"] = 60,["lfgdarkshore"] = 15,["lfgdarkshire"] = 30,["lfgdeadwind"] = 60,["lfgdesolace"] = 35,["lfgdunmorogh"] = 6,["lfgdurotar"] = 6,["lfgduskwood"] = 30,
["lfgdustwallow"] = 40,["lfgepl"] = 58,["lfgfeathermoon"] = 45,["lfgferalas"] = 45,["lfghinterlands"] = 45,["lfghjyal"] = 60,["lfglakeshire"] = 22,["lfgloch"] = 16,
["lfglochmodan"] = 16,["lfgmoonglade"] = 55,["lfgmulgore"] = 6,["lfgredridge"] = 22,["lfgsearinggorge"] = 50,["lfgsilithus"] = 58,["lfgsilverpine"] = 16,["lfgsos"] = 38,
["lfgstonetalon"] = 25,["lfgstranglethorn"] = 36,["lfgstv"] = 36,["lfgswamp"] = 38,["lfgtanaris"] = 45,["lfgteldrassil"] = 6,["lfgtheramore"] = 40,["lfgthousandneedles"] = 30,
["lfgkneedles"] = 30,["lfgtirisfal"] = 6,["lfgungoro"] = 53,["lfgvalleyofspears"] = 6,["lfgwestfall"] = 15,["lfgwetlands"] = 26,["lfgwinterspring"] = 58,["lfgwpl"] = 56,

["lfmalterac"] = 40,["lfmarathi"] = 40,["lfmashenvale"] = 25,["lfmauberdine"] = 15,["lfmazshara"] = 55,["lfmbadlands"] = 40,["lfmbarrens"] = 17,["lfmblastedlands"] = 55,
["lfmcenarion"] = 60,["lfmdarkshore"] = 15,["lfmdarkshire"] = 30,["lfmdeadwind"] = 60,["lfmdesolace"] = 35,["lfmdunmorogh"] = 6,["lfmdurotar"] = 6,["lfmduskwood"] = 30,
["lfmdustwallow"] = 40,["lfmepl"] = 58,["lfmfeathermoon"] = 45,["lfmferalas"] = 45,["lfmhinterlands"] = 45,["lfmhjyal"] = 60,["lfmlakeshire"] = 22,["lfmloch"] = 16,
["lfmlochmodan"] = 16,["lfmmoonglade"] = 55,["lfmmulgore"] = 6,["lfmredridge"] = 22,["lfmsearinggorge"] = 50,["lfmsilithus"] = 58,["lfmsilverpine"] = 16,["lfmsos"] = 38,
["lfmstonetalon"] = 25,["lfmstranglethorn"] = 36,["lfmstv"] = 36,["lfmswamp"] = 38,["lfmtanaris"] = 45,["lfmteldrassil"] = 6,["lfmtheramore"] = 40,["lfmthousandneedles"] = 30,
["lfmkneedles"] = 30,["lfmtirisfal"] = 6,["lfmungoro"] = 53,["lfmvalleyofspears"] = 6,["lfmwestfall"] = 15,["lfmwetlands"] = 26,["lfmwinterspring"] = 58,["lfmwpl"] = 56,
}
GF_WORD_DUNGEON = {
["rfc"] = 15,["ragefire"] = 15,["deadmines"] = 21,["dm"] = 21,["wc"] = 21,["shadowfang"] = 24,["sfk"] = 24,["blackfathom"] = 25,["bfd"] = 25,["stock"] = 26,["stockade"] = 26,["gnomer"] = 32,["gnomeregan"] = 32,
["kraul"] = 32,["rfk"] = 32,["downs"] = 39,["rfd"] = 39,["gy"] = 31,["smgy"] = 31,["lib"] = 35,["library"] = 35,["smlib"] = 35,["smarm"] = 39,["armory"] = 39,["smcath"] = 40,["cathedral"] = 40,["smfull"] = 39,
["ulda"] = 45,["uldaman"] = 45,["zf"] = 48,["zulfarrak"] = 48,["mallet"] = 48,["mara"] = 49,["maraudon"] = 49,["princess"] = 49,["st"] = 54,["sunken"] = 54,["atalhakkar"] = 54,["arena"] = 55,["brd"] = 58,["jailbreak"] = 58,["emperor"] = 58,
["attunement"] = 60,["lbrs"] = 60,["brs"] = 60,["dme"] = 57,["dmn"] = 62,["dmt"] = 62,["dmw"] = 62,["scholomance"] = 62.1,["krastinov"] = 62.1,["stratholme"] = 62.2,["baron"] = 62.2,["ubrs"] = 63.1,["rend"] = 63.1,["valthalak"] = 63.1,
["sm"] = 0,["razorfen"] = 0,["dungeon"] = 0,["blackrock"] = 0,

-- Two Words
["ragefirechasm"] = 15,["wailingcaverns"] = 21,["razorfenkraul"] = 32,["razorfendowns"] = 39,["sunkentemple"] = 54,["blackrockdepths"] = 58,["maulwest"] = 62,["mauleast"] = 57,["maulnorth"] = 62,["maultrib"] = 62,["maultribute"] = 62,
["blackrockspire"] = 60,["lowerblackrock"] = 60,["livestrat"] = 62.2,["udstrat"] = 62.2,["stratrep"] = 62.2,["upperblackrock"] = 63.1,["drakefireamulet"] = 63.1,["diremaul"] = 58,["scarletmonastery"] = 0,["foranything"] = 0,["lfganything"] = 0,

-- RepFarm
["repfarmstrat"] = 62,["stratrepfarm"] = 62,
}
GF_WORD_RAID = {
["zul"] = 64.05,["zg"] = 64.05,["gurub"] = 64.05,["zulgurub"] = 64.05,["hakkar"] = 64.05,
["onyxia"] = 64.1,["ony"] = 64.1,["mc"] = 64.15,["moltencore"] = 64.15,["rag"] = 64.15,["ragnaros"] = 64.15,["moltencore"] = 64.15,
["nef"] = 64.2,["blackwinglair"] = 64.2,["nefarian"] = 64.2,
["aq"] = 64.3,["ahnqiraj"] = 64.3,["ossirian"] = 64.3,["cthun"] = 64.3,["ruinsofahnqiraj"] = 64.3,
["naxxramas"] = 64.4,

["azuregos"] = 64,["kazzak"] = 64,["lethon"] = 64,["ysondre"] = 64,["taerar"] = 64,["emeriss"] = 64,["worldboss"] = 64,
["anyraid"] = 60,
}
GF_WORD_PVP = {
["av"] = 60,["ab"] = 0,["wsg"] = 0,["battleground"] = 0,["warsong"] = 0,["premade"] = 0,["bg"] = 0,["pvp"] = 0,["arenas"] = 60,

-- Two Words
["arathibasin"] = 0,
["alteracvalley"] = 60,

["bloodring"] = 60,
["sunnygladevalley"] = 60,
["sunnyglade"] = 60,
}
GF_WORD_NUMBER = {
["k10"] = "lowerkarazhan",["k40"] = "upperkarazhan",["aw20"] = "aq",["aw15"] = "aq",["aw12"] = "aq",--["aq15"] = "ruinsofahnqiraj",["aq20"] = "ruinsofahnqiraj",
}

GF_WORD_TRADE = {
["lf"] = 102.5,["lfm"] = 102.5,["wtb"] = 4,["wts"] = 4,["wtt"] = 4,["lfw"] = 4,["ltb"] = 3,["lts"] = 3,["lfc"] = 3,["wtc"] = 2.5,["wtcraft"] = 3,["needtocraft"] = 2.5,
["buy"] = .5,["buying"] = 1,["sell"] = .5,["selling"] = 1,["seller"] = 1,["trading"] = 1,["offer"] = 1,["paying"] = 1,["payingwell"] = 1,["price"] = .5,["tipping"] = 2.5,
["ratio"] = .5,["cod"] = .5,["deal"] = .25,["deals"] = .5,["cheap"] = .5,["afford"] = .5,["justopentrade"] = 1,

["alterac"] = .25,["arathi"] = .25,["arathihighlands"] = .25,["ashenvale"] = .25,["azshara"] = .25,["badlands"] = .25,["barrens"] = .25,["blackrockmountain"] = .25,["blasted"] = .25,["blastedlands"] = .25,["bootybay"] = .25,["brm"] = .25,
["darnassus"] = .25,["desolace"] = .25,["epl"] = .25,["feralas"] = .25,["hydraxian"] = .25,["ironforge"] = .25,["moonglade"] = .25,["orgrimmar"] = .25,["silithus"] = .25,["stonard"] = .25,["stormwind"] = .25,["tanaris"] = .25,
["thunder"] = .25,["thunderbluff"] = .25,["undercity"] = .25,["winterspring"] = .25,["wpl"] = .25,["hyjal"] = .25,

["darkmoon"] = .25,["dmf"] = .25,["theramore"] = .25,["alahthalas"] = .25,

["everythingaround"] = 2,
["arcanologist"] = 1.5,
["craft"] = .5,["crafter"] = 1,["mat"] = .5,["material"] = .5,["maker"] = .5,["fee"] = .5,
["carry"] = 1,["boost"] = 1,
["hitem"] = .5,["needhitem"] = 1,["anyneedhitem"] = 1.5,

-- Misc recipes
["sageblade"] = .5,["lionheart"] = .5,["titanic"] = .5,["corebag"] = .5,["sylvan"] = .5,["glacial"] = .5,["bloodvine"] = .5,["devilsaur"] = .5,
["onycloak"] = .5,["zgsets"] = .5,["hideofwild"] = .5,["hideofthewild"] = .5,["triballeatherworker"] = .5,

["anyonehave"] = 1.5,["anyoneneed"] = .5,["needtobuy"] = 2.5,["mayibuy"] = 1,["canibuy"] = 1,["anyonebuy"] = 1,["anyonebuymy"] = 1,["anyonebuythis"] = 1,["ineed"] = .5,["whoneed"] = 1,
["buyinghitem"] = 2,["buyhitem"] = 1.5,["sellinghitem"] = 2,["sellhitem"] = 2.5,["sellingenchant"] = 2,["sellenchant"] = 2,["anyoneselling"] = 1.5,["tosell"] = .5,["tobuy"] = .5,["forsale"] = 2.5,["sellingall"] = 1,["onsale"] = 1.5,["onsalenow"] = 1,
["tradeoffer"] = 1,["anytradeoffer"] = .5,["tradeofferany"] = .5,
["cananyonesellme"] = .5,["cananyonesell"] = 1,["anyonecansell"] = 1,["anyonecansellme"] = 1,["anyonesell"] = .5,
["payinggold"] = 1,["payingmoney"] = 1,["smalltip"] = 1,["willtip"] = 2,["cantip"] = 2,["illtip"] = 2,["itip"] = 1,["anytip"] = 1,["fortip"] = 1,["yourtip"] = 1,["foranytip"] = 1,["goldtip"] = 1,["tipwelcom"] = 1,
["havethemat"] = .5,["mattip"] = .5,["mymattip"] = 2.5,["yourmattip"] = 3,["havethematerial"] = .5,["mymaterialtip"] = 3,["yourmaterialtip"] = 3,["workfortip"] = 3,["tipanyamount"] = 3,["ipay"] = .5,["ipaygold"] = 1,["illpaygold"] = 1,["iwillpaygold"] = 2,
["haveall"] = .5,
["willipaygold"] = 2,["tipisoptional"] = 2,["tipareappreciated"] = 1,["notiprequired"] = 1,["tiparewelcome"] = 1,
["tipanything"] = 1,["tipappreciated"] = 1,["tiphighlyappreciated"] = 1,["yourfee"] = .5,["tipifyoucan"] = 2,
["mymat"] = .5,["havemat"] = 1,["yourmat"] = 2.5,["matlist"] = .5,["mymatoryour"] = 1,["mymaterial"] = .5,["havematerial"] = 1,["yourmaterial"] = 2.5,["materiallist"] = .5,["mymaterialoryour"] = 1,
["gearcrafter"] = 1,["crafterhitem"] = 1,["gethitem"] = 1,["offercraft"] = 1,["icraft"] = 1,["abletocraft"] = 1,
["needtotrade"] = 2.5,
["willpay"] = 2,["willwork"] = 3,
["lfweapon"] = .5,["lfcrusader"] = .5,["lfriding"] = .5,["lfarcanum"] = .5,["lfcheap"] = 1,

["anyoneneedblacksmith"] = 2,["anyoneneedtailor"] = 2,["anyoneneedleatherworker"] = 2,["anyoneneedengineer"] = 2,["anyoneneedjewelcrafter"] = 2,

["anyonesellinghead"] = .5,["anyonesellingneck"] = .5,["anyonesellingshoulder"] = .5,["anyonesellingcloak"] = .5,["anyonesellingback"] = .5,["anyonesellingwrist"] = .5,["anyonesellinggloves"] = .5,["anyonesellingbelt"] = .5,
["anyonesellinglegs"] = .5,["anyonesellingboots"] = .5,["anyonesellingfeet"] = .5,["anyonesellingring"] = .5,["anyonesellingtrinket"] = .5,["anyonesellingweapon"] = .5,["anyonesellingmace"] = .5,
["anyonesellingsword"] = .5,["anyonesellingbow"] = .5,["anyonesellinggun"] = .5,["anyonesellingaxe"] = .5,["anyonesellingstaff"] = .5,["anyonesellingdagger"] = .5,["anyonesellinghitem"] = .5,
["anyonesellingagility"] = .5,["anyonesellingstrength"] = .5,["anyonesellingintellect"] = .5,["anyonesellingspirit"] = .5,["anyonesellingsp"] = .5,["anyonesellingdamage"] = .5,["anyonesellingheal"] = .5,

["needtosell"] = 2.5,["getyourhitem"] = 1,["comegetyour"] = 1,["selltome"] = 1.5,["gotonehitem"] = .5,["andmuchmore"] = 1,["andsomuchmore"] = 1,["andmuchmuchmore"] = 1,
["lfwork"] = 3,["lookingtobuy"] = 3,["lookingtosell"] = 3,["asktobuy"] = 3,["asktosell"] = 3,["lfcrafter"] = 3,["whocancraft"] = 1.5,["icanmake"] = 1,["icanmakeall"] = 1.5,["whocanmake"] = 1,
["whocanmakehitem"] = .5,["cananyonecraft"] = 2,["cananyonecrafthitem"] = .5,
["cananyonemake"] = 2,["cananyonemakeme"] = .5,["anyonemakemebag"] = 1,["anyoneableto"] = 2,["needcrafterhitem"] = 1,["makemea"] = 1,
["abletomake"] = 1,["aroundtomake"] = 1,["anyonetomake"] = 1,["anyonetogive"] = 1,["anyonetocraft"] = 1,["anyonecancraft"] = 1,["anyonetosell"] = 1,["willingtosell"] = 1,["anyonetobuy"] = 1,["anyonehavehitem"] = 1,["anyoneneedhitem"] = 2,["anyonecando"] = 1,["anyonecandohitem"] = 1,

["applyshieldspike"] = 3,["needspikeapply"] = 2,["cananyonemakehitem"] = 1,["cananyonemakethis"] = .5,["applythisforme"] = 1,["anyoneabletomake"] = 2,

["iprovideblacksmith"] = 1,["makeitforyou"] = 2,["canigeta"] = 1,["allinoneplace"] = 1,["everythinginoneplace"] = 1,
["anyoneinterestedtobuy"] = 2,["anyoneinterestedtosell"] = 2,["anyoneinterestedinbuying"] = 2,["anyoneinterestedinselling"] = 2,["selleraround"] = 1.5,
["anyonearoundwhocan"] = 1.5,["anyonecancrafthitem"] = 1,["anyonewillingtosell"] = 1,

["anyguideneedtobuy"] = 1,["anyguildneedtobuy"] = 1,["guideneedtobuy"] = 1,["guildneedtobuy"] = 1,

["lfbarrens"] = 1,["lfstonard"] = 1,["lfbootybay"] = 1,["lfmoonglade"] = 1,["lfwinterspring"] = 1,["lfdesolace"] = 1,["lfferalas"] = 1,["lfsilithus"] = 1,
["lfhydraxian"] = 1,["lftanaris"] = 1,["lfepl"] = 1,["lfwpl"] = 1,["lfalterac"] = 1,["lfarathi"] = 1,["lfbadlands"] = 1,
["lfstormwind"] = 1,["lfdarnassus"] = 1,["lfironforge"] = 1,["lfif"] = 1,["lforgrimmar"] = 1,["lfundercity"] = 1,["lfthunderbluff"] = 1,

["lfgbarrens"] = 1,["lfgstonard"] = 1,["lfgbootybay"] = 1,["lfgmoonglade"] = 1,["lfgwinterspring"] = 1,["lfgdesolace"] = 1,["lfgferalas"] = 1,["lfgsilithus"] = 1,
["lfghydraxian"] = 1,["lfgtanaris"] = 1,["lfgepl"] = 1,["lfgwpl"] = 1,["lfgalterac"] = 1,["lfgarathi"] = 1,["lfgbadlands"] = 1,
["lfgstormwind"] = 1,["lfgdarnassus"] = 1,["lfgironforge"] = 1,["lfgif"] = 1,["lfgorgrimmar"] = 1,["lfgundercity"] = 1,["lfgthunderbluff"] = 1,

-- Misc Terms
["reasonableprice"] = .5,["foronly"] = 1,["elsearound"] = 1.5,
["carryservice"] = 20,["keyservice"] = 3,["keyholder"] = 1.5,["healservice"] = 20,["tankservice"] = 20,["rogueservice"] = 1,["smeltservice"] = 3,["gankservice"] = 3,["flaskservice"] = 3,["crafterservice"] = 3,
["blacksmithservice"] = 1.5,["tailorservice"] = 3,["leatherworkerservice"] = 3,["engineerservice"] = 3,["jewelcrafterservice"] = 3,
["healofferservice"] = 3,["tankofferservice"] = 3,["rogueofferservice"] = 3,

["allrecipes"] = 3,["madeby"] = .5,["bagmaker"] = .5,["bagcrafter"] = .5,
["fullyrestocked"] = 1,["inbulk"] = 1,["perstack"] = 1,["lastcall"] = 1,["forstack"] = 1,["astack"] = 1,
["openubrs"] = 1.5,["alchemylab"] = 1,["foralchemylab"] = .5,["needcleareddungeon"] = 1.5,
["stormwindif"] = .25,["ifstormwind"] = .25,
["anyoneinterested"] = 1,
["exquisitemetalwork"] = 1,
["deliveredanywhere"] = 1,["atyourservice"] = 1,
["getyourcheap"] = 1,["stillcheap"] = 1,["justlisted"] = .5,["justlistedhitem"] = .5,["thoriumspike"] = .5,["mithrilspike"] = .5,["ironspike"] = .5,["thoriumshieldspike"] = 1,["mithrilshieldspike"] = 1,["ironshieldspike"] = 1,["spikeapply"] = 1,

["premiumquality"] = 1,["ordernow"] = 1,["therightchoice"] = .5,
["hordeoralliance"] = 1,["imhc"] = .5,

["ifyouneedit"] = 1,
["bestservice"] = 1,["icanprovide"] = .5,
["lfwater"] = .5,["lflevelwater"] = .5,["lfhighlevelwater"] = .5,
["lastchance"] = 1,

-- Location in cities
["bankinorgrimmar"] = 2,["orgrimmarbank"] = 2,["banksteps"] = 2,["bankstairs"] = 2,["infrontbank"] = 2,["infrontofbank"] = 2,["bankstairs"] = 2,["ifbridge"] = 2,["ironforgebridge"] = 2,["intradedistrict"] = 2,
["stormwindbank"] = 2,["instormwind"] = .75,["inorgrimmar"] = .75,["atstormwind"] = .75,["atorgrimmar"] = .75,["outsidestormwind"] = .5,["outsideorgrimmar"] = .5,
["fromstormwind"] = .75,["fromironforge"] = .75,["fromdarnassus"] = .75,["fromorgrimmar"] = .75,["fromundercity"] = .75,["fromthunder"] = .75,

["auctionhouse"] = 1,["onah"] = 2.5,["onauctionhouse"] = 2.5,["ontheauctionhouse"] = 1,["inah"] = 2.5,["inauctionhouse"] = 2.5,["atah"] = .5,["atauctionhouse"] = .5,["attheah"] = .5,["attheauctionhouse"] = .5,["auctionhousenow"] = .5,
["belowah"] = 1,["cheaperthanah"] = 1,["cheaperthantheah"] = 1,["cheaperthanauctionhouse"] = 1,["lessthanah"] = 1,["lowerthanah"] = 1,
["ahentrance"] = 1,["auctionhouseentrance"] = 1,["ahbridge"] = 2,["auctionhousebridge"] = 2,["ahdoor"] = 2,["auctionhousedoor"] = 2,["outsideah"] = 1,["outsideauctionhouse"] = 1,
["bagonah"] = 3,["bagonauctionhouse"] = 3,["stacksonah"] = .5,["stacksonauctionhouse"] = 3,["stacksfromah"] = 1.5,["stacksfromauctionhouse"] = 3,

["anyoneinstormwind"] = .5,["anyoneinironforge"] = .5,["anyoneindarnassus"] = .5,["anyoneinorgrimmar"] = .5,["anyoneinundercity"] = .5,["anyoneinthunder"] = .5,
["fountain"] = .25,["atfountain"] = .5,["onfountain"] = .5,["stormwindfountain"] = .5,["topoffountain"] = 1,["atthefountain"] = .5,["thefountain"] = .5,["bythefountain"] = .5,["stopbythefountain"] = .5,

["infrontbank"] = 2,
["nowonsale"] = 1,
["infrontofbank"] = 2,

-- Misc phrases
["tomakeme"] = 1,["goodsandservice"] = 1,["ubrskey"] = 1,["sellubrskey"] = 2,["offerubrskey"] = 1.5,["openforubrs"] = 1.5,["shopisopen"] = 1.5,["openforbusiness"] = 1,["comeondown"] = .5,["instock"] = 1,
["sellingslotbag"] = 1.5,["slotbag"] = .5,["bag"] = .5,["comegetyourbag"] = 1,
["healsellingservice"] = 2,["tanksellingservice"] = 2,["dungeontankservice"] = 2,
["anyoneboostme"] = 1,["youpickitip"] = 2,["limitedtime"] = .5,
["market"] = .5,["farmersmarket"] = .5,["thankyouforusing"] = 1,

["magicalrefreshmentshere"] = 2,["firstcustomersget"] = 1,["conjuredwater"] = .5,["discounts"] = .5,["magemakeme"] = 1,["magetogroworanges"] = 2,["magemakeportal"] = 1,["pleasemagemakeportal"] = 1,

["mostpattern"] = 1,["mostrecipe"] = 1,
["mostenchant"] = 1,["mostenchantpattern"] = 1,["mostenchantpatternaround"] = 1,["mostenchantrecipe"] = 1,["mostenchantrecipearound"] = 1,

["anypotionseller"] = 2,["needthestrongestpotion"] = 2,

-- Trade Spam that get around my filters
["sunnys"] = 1,["findmein"] = .5,["findmeon"] = .5,
["lockboxyourbox"] = 2,["offeringdungeontours"] = 1,["pleasemessagerate"] = 1,["pleasewhisperrate"] = 2,["commission"] = 1,

["toorder"] = .5,["hurryuptoorder"] = 1,["andmanymore"] = 1,

-- WTF is WTB error
["wtf"] = .5,["wtfmagewater"] = 1.5,

-- Misc Enchant
["allwrist"] = 1,["allweapon"] = 1,["allfeet"] = 1,["allboots"] = 1,["allback"] = 1,["allcloak"] = 1,["allchest"] = 1,

-- Enchants
["enchant"] = .5,["enhancement"] = .5,["enchantto"] = .5,["enchanton"] = .5,["enchanttohitem"] = .5,["enchantonhitem"] = .5,["offerenchant"] = 1,

["enchantinorgrimmar"] = 2.5,["enchantinstormwind"] = 2.5,["enchantinironforge"] = 2.5,["enchantinundercity"] = 2.5,
["buyenchant"] = 2,["buyingenchant"] = 1.5,["getenchant"] = 1,["withenchant"] = 1,["needenchant"] = 2,["anyenchant"] = 1.5,["anyenchantplease"] = 1.5,["anyenchantworking"] = 1,
["anyonebuyenchant"] = 1,["anyonebuyingenchant"] = 1,["anyonegetenchant"] = 1,["anyonewithenchant"] = 1,["anyoneneedenchant"] = 1,["anyoneenchant"] = 1.5,["anyoneenchantplease"] = 1.5,["anyoneenchantworking"] = 1,
["whocanenchant"] = 1.5,["anyenchantaround"] = .5,["anyenchanton"] = .5,["allenchantaround"] = 2,["anyenchantwith"] = 3,["thatcanenchant"] = .5,["canenchantwith"] = 1,["getyourenchant"] = 1,["iwillenchant"] = 2,
["anyenchantwhocan"] = 1.5,["anyenchantwhowill"] = 1.5,["anynenchantwhohas"] = 1.5,["anynenchantwhohave"] = 1.5,["candominingenchant"] = 1,["cananyoneenchant"] = 2,["canenchant"] = .5,["enchantservice"] = 3,["haveenhancement"] = .5,
["anyonecanenchant"] = 1,["anyonecanenchantweapon"] = .5,["anyonecanenchanthead"] = .5,["anyonecanenchantbneck"] = .5,["anyonecanenchantring"] = .5,["anyonecanenchantcloak"] = .5,["anyonecanenchantback"] = .5,["anyonecanenchantchest"] = .5,
["anyonecanenchantwrist"] = .5,["anyonecanenchantgloves"] = .5,["anyonecanenchanthand"] = .5,["anyonecanenchantshield"] = .5,["anyonecanenchantbelt"] = .5,["anyonecanenchantbeltbuckle"] = .5,

["haveenchant"] = .5,["anyenchanthere"] = 1.5,["anyenchantfor"] = 1.5,["enchantfor"] = 1,["enchantwith"] = 1,["enchantforhitem"] = 3,["enchantwithhitem"] = 3,

["cananyenchant"] = 1,["cananyenchantmake"] = .5,

["enchantaround"] = .5,["enchantaroundwhocan"] = .5,["enchantplease"] = 1,["enchanthelp"] = 1,["enchantpleasehelp"] = 1.5,

-- Stats/General enchants
["allresist"] = .5,["arcanedamage"] = .5,["beastslayer"] = .5,["firedamage"] = .5,["glow"] = .5,["mountspeed"] = .5,["movespeed"] = .5,["mp"] = .5,["resistall"] = .5,["riding"] = .5,["ridingskill"] = .5,["runspeed"] = .5,["firedamage"] = .5,["frostdamage"] = .5,["shadowdamage"] = .5,["naturedamage"] = .5,["arcanedamage"] = .5,["weapondamage"] = .5,["allstats"] = .5,
["agilityenchant"] = .5,["allresistenchant"] = .5,["apenchant"] = .5,["arenchant"] = .5,["arcaneenchant"] = .5,["arcanedamageenchant"] = .5,["armorenchant"] = .5,["beastslayerenchant"] = .5,["blockenchant"] = .5,["crusaderenchant"] = .5,["damageenchant"] = .5,["defenseenchant"] = .5,["demonslayingenchant"] = .5,["dodgeenchant"] = .5,["fieryenchant"] = .5,["fireenchant"] = .5,["firedamageenchant"] = .5,["fishenchant"] = .5,["frenchant"] = .5,["glowenchant"] = .5,["greaterstatsenchant"] = .5,["hasteenchant"] = .5,["healenchant"] = .5,["healthenchant"] = .5,["herbenchant"] = .5,["hitenchant"] = .5,["icyenchant"] = .5,["icychillenchant"] = .5,["intellectenchant"] = .5,["lifestealenchant"] = .5,["manaenchant"] = .5,["mineenchant"] = .5,["minorspeedenchant"] = .5,["mountspeedenchant"] = .5,["movespeedenchant"] = .5,["mpenchant"] = .5,["natureenchant"] = .5,["nrenchant"] = .5,["resistenchant"] = .5,["resistallenchant"] = .5,["ridingenchant"] = .5,["ridingskillenchant"] = .5,["runspeedenchant"] = .5,["shadowenchant"] = .5,["skinenchant"] = .5,["speedenchant"] = .5,["spelldamageenchant"] = .5,["spiritenchant"] = .5,["srenchant"] = .5,["staminaenchant"] = .5,["statsenchant"] = .5,["stealthenchant"] = .5,["strengthenchant"] = .5,["strikingenchant"] = .5,["subtletyenchant"] = .5,["unholyenchant"] = .5,["vampirismenchant"] = .5,["wintersmightenchant"] = .5,["firedamageenchant"] = .5,["frostdamageenchant"] = .5,["shadowdamageenchant"] = .5,["naturedamageenchant"] = .5,["arcanedamageenchant"] = .5,["weapondamageenchant"] = .5,["allstatsenchant"] = .5,
["enchantagility"] = 1,["enchantallresist"] = 1,["enchantap"] = 1,["enchantar"] = 1,["enchantarcane"] = 1,["enchantarcanedamage"] = 1,["enchantarmor"] = 1,["enchantbeastslayer"] = 1,["enchantblock"] = 1,["enchantcrusader"] = 1,["enchantdamage"] = 1,["enchantdefense"] = 1,["enchantdemonslaying"] = 1,["enchantdodge"] = 1,["enchantfiery"] = 1,["enchantfire"] = 1,["enchantfiredamage"] = 1,["enchantfish"] = 1,["enchantfr"] = 1,["enchantglow"] = 1,["enchantgreaterstats"] = 1,["enchanthaste"] = 1,["enchantheal"] = 1,["enchanthealth"] = 1,["enchantherb"] = 1,["enchanthit"] = 1,["enchanticy"] = 1,["enchanticychill"] = 1,["enchantintellect"] = 1,["enchantlifesteal"] = 1,["enchantmana"] = 1,["enchantmine"] = 1,["enchantminorspeed"] = 1,["enchantmountspeed"] = 1,["enchantmovespeed"] = 1,["enchantmp"] = 1,["enchantnature"] = 1,["enchantnr"] = 1,["enchantresist"] = 1,["enchantresistall"] = 1,["enchantriding"] = 1,["enchantridingskill"] = 1,["enchantrunspeed"] = 1,["enchantshadow"] = 1,["enchantskin"] = 1,["enchantspeed"] = 1,["enchantspelldamage"] = 1,["enchantspirit"] = 1,["enchantsr"] = 1,["enchantstamina"] = 1,["enchantstats"] = 1,["enchantstealth"] = 1,["enchantstrength"] = 1,["enchantstriking"] = 1,["enchantsubtlety"] = 1,["enchantunholy"] = 1,["enchantvampirism"] = 1,["enchantwintersmight"] = 1,["enchantfiredamage"] = 1,["enchantfrostdamage"] = 1,["enchantshadowdamage"] = 1,["enchantnaturedamage"] = 1,["enchantarcanedamage"] = 1,["enchantweapondamage"] = 1,["enchantallstats"] = 1,
["needagility"] = .5,["needallresist"] = .5,["needap"] = .5,["needar"] = .5,["needarcane"] = .5,["needarcanedamage"] = .5,["needarmor"] = .5,["needbeastslayer"] = .5,["needblock"] = .5,["needcrusader"] = .5,["needdefense"] = .5,["needdemonslaying"] = .5,["needdodge"] = .5,["needfiery"] = .5,["needfire"] = .5,["needfiredamage"] = .5,["needfish"] = .5,["needfr"] = .5,["needglow"] = .5,["needgreaterstats"] = .5,["needhaste"] = .5,["needhealth"] = .5,["needherb"] = .5,["needhit"] = .5,["needicy"] = .5,["needicychill"] = .5,["needintellect"] = .5,["needlifesteal"] = .5,["needmana"] = .5,["needmine"] = .5,["needminorspeed"] = .5,["needmountspeed"] = .5,["needmovespeed"] = .5,["needmp"] = .5,["neednature"] = .5,["neednr"] = .5,["needresist"] = .5,["needresistall"] = .5,["needriding"] = .5,["needridingskill"] = .5,["needrunspeed"] = .5,["needshadow"] = .5,["needskin"] = .5,["needspeed"] = .5,["needspelldamage"] = .5,["needspirit"] = .5,["needsr"] = .5,["needstamina"] = .5,["needstats"] = .5,["needstealth"] = .5,["needstrength"] = .5,["needstriking"] = .5,["needsubtlety"] = .5,["needunholy"] = .5,["needvampirism"] = .5,["needwintersmight"] = .5,["needfiredamage"] = .5,["needfrostdamage"] = .5,["needshadowdamage"] = .5,["neednaturedamage"] = .5,["needarcanedamage"] = .5,["needweapondamage"] = .5,["needallstats"] = .5,
["anyagility"] = .5,["anyallresist"] = .5,["anyap"] = .5,["anyar"] = .5,["anyarcane"] = .5,["anyarcanedamage"] = .5,["anyarmor"] = .5,["anybeastslayer"] = .5,["anyblock"] = .5,["anycrusader"] = .5,["anydefense"] = .5,["anydemonslaying"] = .5,["anydodge"] = .5,["anyfiery"] = .5,["anyfire"] = .5,["anyfiredamage"] = .5,["anyfish"] = .5,["anyfr"] = .5,["anyglow"] = .5,["anygreaterstats"] = .5,["anyhaste"] = .5,["anyhealth"] = .5,["anyherb"] = .5,["anyhit"] = .5,["anyicy"] = .5,["anyicychill"] = .5,["anyintellect"] = .5,["anylifesteal"] = .5,["anymana"] = .5,["anymine"] = .5,["anyminorspeed"] = .5,["anymountspeed"] = .5,["anymovespeed"] = .5,["anymp"] = .5,["anynature"] = .5,["anynr"] = .5,["anyresist"] = .5,["anyresistall"] = .5,["anyriding"] = .5,["anyridingskill"] = .5,["anyrunspeed"] = .5,["anyshadow"] = .5,["anyskin"] = .5,["anyspeed"] = .5,["anyspelldamage"] = .5,["anyspirit"] = .5,["anysr"] = .5,["anystamina"] = .5,["anystats"] = .5,["anystealth"] = .5,["anystrength"] = .5,["anystriking"] = .5,["anysubtlety"] = .5,["anyunholy"] = .5,["anyvampirism"] = .5,["anywintersmight"] = .5,["anyfiredamage"] = .5,["anyfrostdamage"] = .5,["anyshadowdamage"] = .5,["anynaturedamage"] = .5,["anyarcanedamage"] = .5,["anyweapondamage"] = .5,["anyallstats"] = .5,
["anyoneagility"] = .5,["anyoneallresist"] = .5,["anyoneap"] = .5,["anyonear"] = .5,["anyonearcane"] = .5,["anyonearcanedamage"] = .5,["anyonearmor"] = .5,["anyonebeastslayer"] = .5,["anyoneblock"] = .5,["anyonecrusader"] = .5,["anyonedefense"] = .5,["anyonedemonslaying"] = .5,["anyonedodge"] = .5,["anyonefiery"] = .5,["anyonefire"] = .5,["anyonefiredamage"] = .5,["anyonefish"] = .5,["anyonefr"] = .5,["anyoneglow"] = .5,["anyonegreaterstats"] = .5,["anyonehaste"] = .5,["anyonehealth"] = .5,["anyoneherb"] = .5,["anyonehit"] = .5,["anyoneicy"] = .5,["anyoneicychill"] = .5,["anyoneintellect"] = .5,["anyonelifesteal"] = .5,["anyonemana"] = .5,["anyonemine"] = .5,["anyoneminorspeed"] = .5,["anyonemountspeed"] = .5,["anyonemovespeed"] = .5,["anyonemp"] = .5,["anyonenature"] = .5,["anyonenr"] = .5,["anyoneresist"] = .5,["anyoneresistall"] = .5,["anyoneriding"] = .5,["anyoneridingskill"] = .5,["anyonerunspeed"] = .5,["anyoneshadow"] = .5,["anyoneskin"] = .5,["anyonespeed"] = .5,["anyonespelldamage"] = .5,["anyonespirit"] = .5,["anyonesr"] = .5,["anyonestamina"] = .5,["anyonestats"] = .5,["anyonestealth"] = .5,["anyonestrength"] = .5,["anyonestriking"] = .5,["anyonesubtlety"] = .5,["anyoneunholy"] = .5,["anyonevampirism"] = .5,["anyonewintersmight"] = .5,["anyonefiredamage"] = .5,["anyonefrostdamage"] = .5,["anyoneshadowdamage"] = .5,["anyonenaturedamage"] = .5,["anyonearcanedamage"] = .5,["anyoneweapondamage"] = .5,["anyoneallstats"] = .5,
["haveagility"] = .5,["haveallresist"] = .5,["haveap"] = .5,["havear"] = .5,["havearcane"] = .5,["havearcanedamage"] = .5,["havearmor"] = .5,["havebeastslayer"] = .5,["haveblock"] = .5,["havecrusader"] = .5,["havedefense"] = .5,["havedemonslaying"] = .5,["havedodge"] = .5,["havefiery"] = .5,["havefire"] = .5,["havefiredamage"] = .5,["havefish"] = .5,["havefr"] = .5,["haveglow"] = .5,["havegreaterstats"] = .5,["havehaste"] = .5,["havehealth"] = .5,["haveherb"] = .5,["havehit"] = .5,["haveicy"] = .5,["haveicychill"] = .5,["haveintellect"] = .5,["havelifesteal"] = .5,["havemana"] = .5,["havemine"] = .5,["haveminorspeed"] = .5,["havemountspeed"] = .5,["havemovespeed"] = .5,["havemp"] = .5,["havenature"] = .5,["havenr"] = .5,["haveresist"] = .5,["haveresistall"] = .5,["haveriding"] = .5,["haveridingskill"] = .5,["haverunspeed"] = .5,["haveshadow"] = .5,["haveskin"] = .5,["havespeed"] = .5,["havespelldamage"] = .5,["havespirit"] = .5,["havesr"] = .5,["havestamina"] = .5,["havestats"] = .5,["havestealth"] = .5,["havestrength"] = .5,["havestriking"] = .5,["havesubtlety"] = .5,["haveunholy"] = .5,["havevampirism"] = .5,["havewintersmight"] = .5,["havefiredamage"] = .5,["havefrostdamage"] = .5,["haveshadowdamage"] = .5,["havenaturedamage"] = .5,["havearcanedamage"] = .5,["haveweapondamage"] = .5,["haveallstats"] = .5,
["withagility"] = .5,["withallresist"] = .5,["withap"] = .5,["withar"] = .5,["witharcane"] = .5,["witharcanedamage"] = .5,["witharmor"] = .5,["withbeastslayer"] = .5,["withblock"] = .5,["withcrusader"] = .5,["withdamage"] = .5,["withdefense"] = .5,["withdemonslaying"] = .5,["withdodge"] = .5,["withfiery"] = .5,["withfire"] = .5,["withfiredamage"] = .5,["withfish"] = .5,["withfr"] = .5,["withglow"] = .5,["withgreaterstats"] = .5,["withhaste"] = .5,["withheal"] = .5,["withhealth"] = .5,["withherb"] = .5,["withhit"] = .5,["withicy"] = .5,["withicychill"] = .5,["withintellect"] = .5,["withlifesteal"] = .5,["withmana"] = .5,["withmine"] = .5,["withminorspeed"] = .5,["withmountspeed"] = .5,["withmovespeed"] = .5,["withmp"] = .5,["withnature"] = .5,["withnr"] = .5,["withresist"] = .5,["withresistall"] = .5,["withriding"] = .5,["withridingskill"] = .5,["withrunspeed"] = .5,["withshadow"] = .5,["withskin"] = .5,["withspeed"] = .5,["withspelldamage"] = .5,["withspirit"] = .5,["withsr"] = .5,["withstamina"] = .5,["withstats"] = .5,["withstealth"] = .5,["withstrength"] = .5,["withstriking"] = .5,["withsubtlety"] = .5,["withunholy"] = .5,["withvampirism"] = .5,["withwintersmight"] = .5,["withfiredamage"] = .5,["withfrostdamage"] = .5,["withshadowdamage"] = .5,["withnaturedamage"] = .5,["witharcanedamage"] = .5,["withweapondamage"] = .5,["withallstats"] = .5,
["doagility"] = .5,["doallresist"] = .5,["doap"] = .5,["doar"] = .5,["doarcane"] = .5,["doarcanedamage"] = .5,["doarmor"] = .5,["dobeastslayer"] = .5,["doblock"] = .5,["docrusader"] = .5,["dodamage"] = .5,["dodefense"] = .5,["dodemonslaying"] = .5,["dododge"] = .5,["dofiery"] = .5,["dofire"] = .5,["dofiredamage"] = .5,["dofish"] = .5,["dofr"] = .5,["doglow"] = .5,["dogreaterstats"] = .5,["dohaste"] = .5,["doheal"] = .5,["dohealth"] = .5,["doherb"] = .5,["dohit"] = .5,["doicy"] = .5,["doicychill"] = .5,["dointellect"] = .5,["dolifesteal"] = .5,["domana"] = .5,["domine"] = .5,["dominorspeed"] = .5,["domountspeed"] = .5,["domovespeed"] = .5,["domp"] = .5,["donature"] = .5,["donr"] = .5,["doresist"] = .5,["doresistall"] = .5,["doriding"] = .5,["doridingskill"] = .5,["dorunspeed"] = .5,["doshadow"] = .5,["doskin"] = .5,["dospeed"] = .5,["dospelldamage"] = .5,["dospirit"] = .5,["dosr"] = .5,["dostamina"] = .5,["dostats"] = .5,["dostealth"] = .5,["dostrength"] = .5,["dostriking"] = .5,["dosubtlety"] = .5,["dounholy"] = .5,["dovampirism"] = .5,["dowintersmight"] = .5,["dofiredamage"] = .5,["dofrostdamage"] = .5,["doshadowdamage"] = .5,["donaturedamage"] = .5,["doarcanedamage"] = .5,["doweapondamage"] = .5,["doallstats"] = .5,
["needagilityenchant"] = .5,["needallresistenchant"] = .5,["needapenchant"] = .5,["needarenchant"] = .5,["needarcaneenchant"] = .5,["needarcanedamageenchant"] = .5,["needarmorenchant"] = .5,["needbeastslayerenchant"] = .5,["needblockenchant"] = .5,["needcrusaderenchant"] = .5,["needdamageenchant"] = .5,["needdefenseenchant"] = .5,["needdemonslayingenchant"] = .5,["needdodgeenchant"] = .5,["needfieryenchant"] = .5,["needfireenchant"] = .5,["needfiredamageenchant"] = .5,["needfishenchant"] = .5,["needfrenchant"] = .5,["needglowenchant"] = .5,["needgreaterstatsenchant"] = .5,["needhasteenchant"] = .5,["needhealenchant"] = .5,["needhealthenchant"] = .5,["needherbenchant"] = .5,["needhitenchant"] = .5,["needicyenchant"] = .5,["needicychillenchant"] = .5,["needintellectenchant"] = .5,["needlifestealenchant"] = .5,["needmanaenchant"] = .5,["needmineenchant"] = .5,["needminorspeedenchant"] = .5,["needmountspeedenchant"] = .5,["needmovespeedenchant"] = .5,["needmpenchant"] = .5,["neednatureenchant"] = .5,["neednrenchant"] = .5,["needresistenchant"] = .5,["needresistallenchant"] = .5,["needridingenchant"] = .5,["needridingskillenchant"] = .5,["needrunspeedenchant"] = .5,["needshadowenchant"] = .5,["needskinenchant"] = .5,["needspeedenchant"] = .5,["needspelldamageenchant"] = .5,["needspiritenchant"] = .5,["needsrenchant"] = .5,["needstaminaenchant"] = .5,["needstatsenchant"] = .5,["needstealthenchant"] = .5,["needstrengthenchant"] = .5,["needstrikingenchant"] = .5,["needsubtletyenchant"] = .5,["needunholyenchant"] = .5,["needvampirismenchant"] = .5,["needwintersmightenchant"] = .5,["needfiredamageenchant"] = .5,["needfrostdamageenchant"] = .5,["needshadowdamageenchant"] = .5,["neednaturedamageenchant"] = .5,["needarcanedamageenchant"] = .5,["needweapondamageenchant"] = .5,["needallstatsenchant"] = .5,
["anyagilityenchant"] = .5,["anyallresistenchant"] = .5,["anyapenchant"] = .5,["anyarenchant"] = .5,["anyarcaneenchant"] = .5,["anyarcanedamageenchant"] = .5,["anyarmorenchant"] = .5,["anybeastslayerenchant"] = .5,["anyblockenchant"] = .5,["anycrusaderenchant"] = .5,["anydamageenchant"] = .5,["anydefenseenchant"] = .5,["anydemonslayingenchant"] = .5,["anydodgeenchant"] = .5,["anyfieryenchant"] = .5,["anyfireenchant"] = .5,["anyfiredamageenchant"] = .5,["anyfishenchant"] = .5,["anyfrenchant"] = .5,["anyglowenchant"] = .5,["anygreaterstatsenchant"] = .5,["anyhasteenchant"] = .5,["anyhealenchant"] = .5,["anyhealthenchant"] = .5,["anyherbenchant"] = .5,["anyhitenchant"] = .5,["anyicyenchant"] = .5,["anyicychillenchant"] = .5,["anyintellectenchant"] = .5,["anylifestealenchant"] = .5,["anymanaenchant"] = .5,["anymineenchant"] = .5,["anyminorspeedenchant"] = .5,["anymountspeedenchant"] = .5,["anymovespeedenchant"] = .5,["anympenchant"] = .5,["anynatureenchant"] = .5,["anynrenchant"] = .5,["anyresistenchant"] = .5,["anyresistallenchant"] = .5,["anyridingenchant"] = .5,["anyridingskillenchant"] = .5,["anyrunspeedenchant"] = .5,["anyshadowenchant"] = .5,["anyskinenchant"] = .5,["anyspeedenchant"] = .5,["anyspelldamageenchant"] = .5,["anyspiritenchant"] = .5,["anysrenchant"] = .5,["anystaminaenchant"] = .5,["anystatsenchant"] = .5,["anystealthenchant"] = .5,["anystrengthenchant"] = .5,["anystrikingenchant"] = .5,["anysubtletyenchant"] = .5,["anyunholyenchant"] = .5,["anyvampirismenchant"] = .5,["anywintersmightenchant"] = .5,["anyfiredamageenchant"] = .5,["anyfrostdamageenchant"] = .5,["anyshadowdamageenchant"] = .5,["anynaturedamageenchant"] = .5,["anyarcanedamageenchant"] = .5,["anyweapondamageenchant"] = .5,["anyallstatsenchant"] = .5,
["anyoneagilityenchant"] = .5,["anyoneallresistenchant"] = .5,["anyoneapenchant"] = .5,["anyonearenchant"] = .5,["anyonearcaneenchant"] = .5,["anyonearcanedamageenchant"] = .5,["anyonearmorenchant"] = .5,["anyonebeastslayerenchant"] = .5,["anyoneblockenchant"] = .5,["anyonecrusaderenchant"] = .5,["anyonedamageenchant"] = .5,["anyonedefenseenchant"] = .5,["anyonedemonslayingenchant"] = .5,["anyonedodgeenchant"] = .5,["anyonefieryenchant"] = .5,["anyonefireenchant"] = .5,["anyonefiredamageenchant"] = .5,["anyonefishenchant"] = .5,["anyonefrenchant"] = .5,["anyoneglowenchant"] = .5,["anyonegreaterstatsenchant"] = .5,["anyonehasteenchant"] = .5,["anyonehealenchant"] = .5,["anyonehealthenchant"] = .5,["anyoneherbenchant"] = .5,["anyonehitenchant"] = .5,["anyoneicyenchant"] = .5,["anyoneicychillenchant"] = .5,["anyoneintellectenchant"] = .5,["anyonelifestealenchant"] = .5,["anyonemanaenchant"] = .5,["anyonemineenchant"] = .5,["anyoneminorspeedenchant"] = .5,["anyonemountspeedenchant"] = .5,["anyonemovespeedenchant"] = .5,["anyonempenchant"] = .5,["anyonenatureenchant"] = .5,["anyonenrenchant"] = .5,["anyoneresistenchant"] = .5,["anyoneresistallenchant"] = .5,["anyoneridingenchant"] = .5,["anyoneridingskillenchant"] = .5,["anyonerunspeedenchant"] = .5,["anyoneshadowenchant"] = .5,["anyoneskinenchant"] = .5,["anyonespeedenchant"] = .5,["anyonespelldamageenchant"] = .5,["anyonespiritenchant"] = .5,["anyonesrenchant"] = .5,["anyonestaminaenchant"] = .5,["anyonestatsenchant"] = .5,["anyonestealthenchant"] = .5,["anyonestrengthenchant"] = .5,["anyonestrikingenchant"] = .5,["anyonesubtletyenchant"] = .5,["anyoneunholyenchant"] = .5,["anyonevampirismenchant"] = .5,["anyonewintersmightenchant"] = .5,["anyonefiredamageenchant"] = .5,["anyonefrostdamageenchant"] = .5,["anyoneshadowdamageenchant"] = .5,["anyonenaturedamageenchant"] = .5,["anyonearcanedamageenchant"] = .5,["anyoneweapondamageenchant"] = .5,["anyoneallstatsenchant"] = .5,
["haveagilityenchant"] = .5,["haveallresistenchant"] = .5,["haveapenchant"] = .5,["havearenchant"] = .5,["havearcaneenchant"] = .5,["havearcanedamageenchant"] = .5,["havearmorenchant"] = .5,["havebeastslayerenchant"] = .5,["haveblockenchant"] = .5,["havecrusaderenchant"] = .5,["havedamageenchant"] = .5,["havedefenseenchant"] = .5,["havedemonslayingenchant"] = .5,["havedodgeenchant"] = .5,["havefieryenchant"] = .5,["havefireenchant"] = .5,["havefiredamageenchant"] = .5,["havefishenchant"] = .5,["havefrenchant"] = .5,["haveglowenchant"] = .5,["havegreaterstatsenchant"] = .5,["havehasteenchant"] = .5,["havehealenchant"] = .5,["havehealthenchant"] = .5,["haveherbenchant"] = .5,["havehitenchant"] = .5,["haveicyenchant"] = .5,["haveicychillenchant"] = .5,["haveintellectenchant"] = .5,["havelifestealenchant"] = .5,["havemanaenchant"] = .5,["havemineenchant"] = .5,["haveminorspeedenchant"] = .5,["havemountspeedenchant"] = .5,["havemovespeedenchant"] = .5,["havempenchant"] = .5,["havenatureenchant"] = .5,["havenrenchant"] = .5,["haveresistenchant"] = .5,["haveresistallenchant"] = .5,["haveridingenchant"] = .5,["haveridingskillenchant"] = .5,["haverunspeedenchant"] = .5,["haveshadowenchant"] = .5,["haveskinenchant"] = .5,["havespeedenchant"] = .5,["havespelldamageenchant"] = .5,["havespiritenchant"] = .5,["havesrenchant"] = .5,["havestaminaenchant"] = .5,["havestatsenchant"] = .5,["havestealthenchant"] = .5,["havestrengthenchant"] = .5,["havestrikingenchant"] = .5,["havesubtletyenchant"] = .5,["haveunholyenchant"] = .5,["havevampirismenchant"] = .5,["havewintersmightenchant"] = .5,["havefiredamageenchant"] = .5,["havefrostdamageenchant"] = .5,["haveshadowdamageenchant"] = .5,["havenaturedamageenchant"] = .5,["havearcanedamageenchant"] = .5,["haveweapondamageenchant"] = .5,["haveallstatsenchant"] = .5,
["withagilityenchant"] = .5,["withallresistenchant"] = .5,["withapenchant"] = .5,["witharenchant"] = .5,["witharcaneenchant"] = .5,["witharcanedamageenchant"] = .5,["witharmorenchant"] = .5,["withbeastslayerenchant"] = .5,["withblockenchant"] = .5,["withcrusaderenchant"] = .5,["withdamageenchant"] = .5,["withdefenseenchant"] = .5,["withdemonslayingenchant"] = .5,["withdodgeenchant"] = .5,["withfieryenchant"] = .5,["withfireenchant"] = .5,["withfiredamageenchant"] = .5,["withfishenchant"] = .5,["withfrenchant"] = .5,["withglowenchant"] = .5,["withgreaterstatsenchant"] = .5,["withhasteenchant"] = .5,["withhealenchant"] = .5,["withhealthenchant"] = .5,["withherbenchant"] = .5,["withhitenchant"] = .5,["withicyenchant"] = .5,["withicychillenchant"] = .5,["withintellectenchant"] = .5,["withlifestealenchant"] = .5,["withmanaenchant"] = .5,["withmineenchant"] = .5,["withminorspeedenchant"] = .5,["withmountspeedenchant"] = .5,["withmovespeedenchant"] = .5,["withmpenchant"] = .5,["withnatureenchant"] = .5,["withnrenchant"] = .5,["withresistenchant"] = .5,["withresistallenchant"] = .5,["withridingenchant"] = .5,["withridingskillenchant"] = .5,["withrunspeedenchant"] = .5,["withshadowenchant"] = .5,["withskinenchant"] = .5,["withspeedenchant"] = .5,["withspelldamageenchant"] = .5,["withspiritenchant"] = .5,["withsrenchant"] = .5,["withstaminaenchant"] = .5,["withstatsenchant"] = .5,["withstealthenchant"] = .5,["withstrengthenchant"] = .5,["withstrikingenchant"] = .5,["withsubtletyenchant"] = .5,["withunholyenchant"] = .5,["withvampirismenchant"] = .5,["withwintersmightenchant"] = .5,["withfiredamageenchant"] = .5,["withfrostdamageenchant"] = .5,["withshadowdamageenchant"] = .5,["withnaturedamageenchant"] = .5,["witharcanedamageenchant"] = .5,["withweapondamageenchant"] = .5,["withallstatsenchant"] = .5,
["doagilityenchant"] = .5,["doallresistenchant"] = .5,["doapenchant"] = .5,["doarenchant"] = .5,["doarcaneenchant"] = .5,["doarcanedamageenchant"] = .5,["doarmorenchant"] = .5,["dobeastslayerenchant"] = .5,["doblockenchant"] = .5,["docrusaderenchant"] = .5,["dodamageenchant"] = .5,["dodefenseenchant"] = .5,["dodemonslayingenchant"] = .5,["dododgeenchant"] = .5,["dofieryenchant"] = .5,["dofireenchant"] = .5,["dofiredamageenchant"] = .5,["dofishenchant"] = .5,["dofrenchant"] = .5,["doglowenchant"] = .5,["dogreaterstatsenchant"] = .5,["dohasteenchant"] = .5,["dohealenchant"] = .5,["dohealthenchant"] = .5,["doherbenchant"] = .5,["dohitenchant"] = .5,["doicyenchant"] = .5,["doicychillenchant"] = .5,["dointellectenchant"] = .5,["dolifestealenchant"] = .5,["domanaenchant"] = .5,["domineenchant"] = .5,["dominorspeedenchant"] = .5,["domountspeedenchant"] = .5,["domovespeedenchant"] = .5,["dompenchant"] = .5,["donatureenchant"] = .5,["donrenchant"] = .5,["doresistenchant"] = .5,["doresistallenchant"] = .5,["doridingenchant"] = .5,["doridingskillenchant"] = .5,["dorunspeedenchant"] = .5,["doshadowenchant"] = .5,["doskinenchant"] = .5,["dospeedenchant"] = .5,["dospelldamageenchant"] = .5,["dospiritenchant"] = .5,["dosrenchant"] = .5,["dostaminaenchant"] = .5,["dostatsenchant"] = .5,["dostealthenchant"] = .5,["dostrengthenchant"] = .5,["dostrikingenchant"] = .5,["dosubtletyenchant"] = .5,["dounholyenchant"] = .5,["dovampirismenchant"] = .5,["dowintersmightenchant"] = .5,["dofiredamageenchant"] = .5,["dofrostdamageenchant"] = .5,["doshadowdamageenchant"] = .5,["donaturedamageenchant"] = .5,["doarcanedamageenchant"] = .5,["doweapondamageenchant"] = .5,["doallstatsenchant"] = .5,
["anyonehaveagility"] = .5,["anyonehaveallresist"] = .5,["anyonehaveap"] = .5,["anyonehavear"] = .5,["anyonehavearcane"] = .5,["anyonehavearcanedamage"] = .5,["anyonehavearmor"] = .5,["anyonehavebeastslayer"] = .5,["anyonehaveblock"] = .5,["anyonehavecrusader"] = .5,["anyonehavedamage"] = .5,["anyonehavedefense"] = .5,["anyonehavedemonslaying"] = .5,["anyonehavedodge"] = .5,["anyonehavefiery"] = .5,["anyonehavefire"] = .5,["anyonehavefiredamage"] = .5,["anyonehavefish"] = .5,["anyonehavefr"] = .5,["anyonehaveglow"] = .5,["anyonehavegreaterstats"] = .5,["anyonehavehaste"] = .5,["anyonehaveheal"] = .5,["anyonehavehealth"] = .5,["anyonehaveherb"] = .5,["anyonehavehit"] = .5,["anyonehaveicy"] = .5,["anyonehaveicychill"] = .5,["anyonehaveintellect"] = .5,["anyonehavelifesteal"] = .5,["anyonehavemana"] = .5,["anyonehavemine"] = .5,["anyonehaveminorspeed"] = .5,["anyonehavemountspeed"] = .5,["anyonehavemovespeed"] = .5,["anyonehavemp"] = .5,["anyonehavenature"] = .5,["anyonehavenr"] = .5,["anyonehaveresist"] = .5,["anyonehaveresistall"] = .5,["anyonehaveriding"] = .5,["anyonehaveridingskill"] = .5,["anyonehaverunspeed"] = .5,["anyonehaveshadow"] = .5,["anyonehaveskin"] = .5,["anyonehavespeed"] = .5,["anyonehavespelldamage"] = .5,["anyonehavespirit"] = .5,["anyonehavesr"] = .5,["anyonehavestamina"] = .5,["anyonehavestats"] = .5,["anyonehavestealth"] = .5,["anyonehavestrength"] = .5,["anyonehavestriking"] = .5,["anyonehavesubtlety"] = .5,["anyonehaveunholy"] = .5,["anyonehavevampirism"] = .5,["anyonehavewintersmight"] = .5,["anyonehavefiredamage"] = .5,["anyonehavefrostdamage"] = .5,["anyonehaveshadowdamage"] = .5,["anyonehavenaturedamage"] = .5,["anyonehavearcanedamage"] = .5,["anyonehaveweapondamage"] = .5,["anyonehaveallstats"] = .5,
["anyoneneedagility"] = .5,["anyoneneedallresist"] = .5,["anyoneneedap"] = .5,["anyoneneedar"] = .5,["anyoneneedarcane"] = .5,["anyoneneedarcanedamage"] = .5,["anyoneneedarmor"] = .5,["anyoneneedbeastslayer"] = .5,["anyoneneedblock"] = .5,["anyoneneedcrusader"] = .5,["anyoneneeddamage"] = .5,["anyoneneeddefense"] = .5,["anyoneneeddemonslaying"] = .5,["anyoneneeddodge"] = .5,["anyoneneedfiery"] = .5,["anyoneneedfire"] = .5,["anyoneneedfiredamage"] = .5,["anyoneneedfish"] = .5,["anyoneneedfr"] = .5,["anyoneneedglow"] = .5,["anyoneneedgreaterstats"] = .5,["anyoneneedhaste"] = .5,["anyoneneedheal"] = .5,["anyoneneedhealth"] = .5,["anyoneneedherb"] = .5,["anyoneneedhit"] = .5,["anyoneneedicy"] = .5,["anyoneneedicychill"] = .5,["anyoneneedintellect"] = .5,["anyoneneedlifesteal"] = .5,["anyoneneedmana"] = .5,["anyoneneedmine"] = .5,["anyoneneedminorspeed"] = .5,["anyoneneedmountspeed"] = .5,["anyoneneedmovespeed"] = .5,["anyoneneedmp"] = .5,["anyoneneednature"] = .5,["anyoneneednr"] = .5,["anyoneneedresist"] = .5,["anyoneneedresistall"] = .5,["anyoneneedriding"] = .5,["anyoneneedridingskill"] = .5,["anyoneneedrunspeed"] = .5,["anyoneneedshadow"] = .5,["anyoneneedskin"] = .5,["anyoneneedspeed"] = .5,["anyoneneedspelldamage"] = .5,["anyoneneedspirit"] = .5,["anyoneneedsr"] = .5,["anyoneneedstamina"] = .5,["anyoneneedstats"] = .5,["anyoneneedstealth"] = .5,["anyoneneedstrength"] = .5,["anyoneneedstriking"] = .5,["anyoneneedsubtlety"] = .5,["anyoneneedunholy"] = .5,["anyoneneedvampirism"] = .5,["anyoneneedwintersmight"] = .5,["anyoneneedfiredamage"] = .5,["anyoneneedfrostdamage"] = .5,["anyoneneedshadowdamage"] = .5,["anyoneneednaturedamage"] = .5,["anyoneneedarcanedamage"] = .5,["anyoneneedweapondamage"] = .5,["anyoneneedallstats"] = .5,
["anyonehaveagilityenchant"] = .5,["anyonehaveallresistenchant"] = .5,["anyonehaveapenchant"] = .5,["anyonehavearenchant"] = .5,["anyonehavearcaneenchant"] = .5,["anyonehavearcanedamageenchant"] = .5,["anyonehavearmorenchant"] = .5,["anyonehavebeastslayerenchant"] = .5,["anyonehaveblockenchant"] = .5,["anyonehavecrusaderenchant"] = .5,["anyonehavedamageenchant"] = .5,["anyonehavedefenseenchant"] = .5,["anyonehavedemonslayingenchant"] = .5,["anyonehavedodgeenchant"] = .5,["anyonehavefieryenchant"] = .5,["anyonehavefireenchant"] = .5,["anyonehavefiredamageenchant"] = .5,["anyonehavefishenchant"] = .5,["anyonehavefrenchant"] = .5,["anyonehaveglowenchant"] = .5,["anyonehavegreaterstatsenchant"] = .5,["anyonehavehasteenchant"] = .5,["anyonehavehealenchant"] = .5,["anyonehavehealthenchant"] = .5,["anyonehaveherbenchant"] = .5,["anyonehavehitenchant"] = .5,["anyonehaveicyenchant"] = .5,["anyonehaveicychillenchant"] = .5,["anyonehaveintellectenchant"] = .5,["anyonehavelifestealenchant"] = .5,["anyonehavemanaenchant"] = .5,["anyonehavemineenchant"] = .5,["anyonehaveminorspeedenchant"] = .5,["anyonehavemountspeedenchant"] = .5,["anyonehavemovespeedenchant"] = .5,["anyonehavempenchant"] = .5,["anyonehavenatureenchant"] = .5,["anyonehavenrenchant"] = .5,["anyonehaveresistenchant"] = .5,["anyonehaveresistallenchant"] = .5,["anyonehaveridingenchant"] = .5,["anyonehaveridingskillenchant"] = .5,["anyonehaverunspeedenchant"] = .5,["anyonehaveshadowenchant"] = .5,["anyonehaveskinenchant"] = .5,["anyonehavespeedenchant"] = .5,["anyonehavespelldamageenchant"] = .5,["anyonehavespiritenchant"] = .5,["anyonehavesrenchant"] = .5,["anyonehavestaminaenchant"] = .5,["anyonehavestatsenchant"] = .5,["anyonehavestealthenchant"] = .5,["anyonehavestrengthenchant"] = .5,["anyonehavestrikingenchant"] = .5,["anyonehavesubtletyenchant"] = .5,["anyonehaveunholyenchant"] = .5,["anyonehavevampirismenchant"] = .5,["anyonehavewintersmightenchant"] = .5,["anyonehavefiredamageenchant"] = .5,["anyonehavefrostdamageenchant"] = .5,["anyonehaveshadowdamageenchant"] = .5,["anyonehavenaturedamageenchant"] = .5,["anyonehavearcanedamageenchant"] = .5,["anyonehaveweapondamageenchant"] = .5,["anyonehaveallstatsenchant"] = .5,
["anyoneneedagilityenchant"] = .5,["anyoneneedallresistenchant"] = .5,["anyoneneedapenchant"] = .5,["anyoneneedarenchant"] = .5,["anyoneneedarcaneenchant"] = .5,["anyoneneedarcanedamageenchant"] = .5,["anyoneneedarmorenchant"] = .5,["anyoneneedbeastslayerenchant"] = .5,["anyoneneedblockenchant"] = .5,["anyoneneedcrusaderenchant"] = .5,["anyoneneeddamageenchant"] = .5,["anyoneneeddefenseenchant"] = .5,["anyoneneeddemonslayingenchant"] = .5,["anyoneneeddodgeenchant"] = .5,["anyoneneedfieryenchant"] = .5,["anyoneneedfireenchant"] = .5,["anyoneneedfiredamageenchant"] = .5,["anyoneneedfishenchant"] = .5,["anyoneneedfrenchant"] = .5,["anyoneneedglowenchant"] = .5,["anyoneneedgreaterstatsenchant"] = .5,["anyoneneedhasteenchant"] = .5,["anyoneneedhealenchant"] = .5,["anyoneneedhealthenchant"] = .5,["anyoneneedherbenchant"] = .5,["anyoneneedhitenchant"] = .5,["anyoneneedicyenchant"] = .5,["anyoneneedicychillenchant"] = .5,["anyoneneedintellectenchant"] = .5,["anyoneneedlifestealenchant"] = .5,["anyoneneedmanaenchant"] = .5,["anyoneneedmineenchant"] = .5,["anyoneneedminorspeedenchant"] = .5,["anyoneneedmountspeedenchant"] = .5,["anyoneneedmovespeedenchant"] = .5,["anyoneneedmpenchant"] = .5,["anyoneneednatureenchant"] = .5,["anyoneneednrenchant"] = .5,["anyoneneedresistenchant"] = .5,["anyoneneedresistallenchant"] = .5,["anyoneneedridingenchant"] = .5,["anyoneneedridingskillenchant"] = .5,["anyoneneedrunspeedenchant"] = .5,["anyoneneedshadowenchant"] = .5,["anyoneneedskinenchant"] = .5,["anyoneneedspeedenchant"] = .5,["anyoneneedspelldamageenchant"] = .5,["anyoneneedspiritenchant"] = .5,["anyoneneedsrenchant"] = .5,["anyoneneedstaminaenchant"] = .5,["anyoneneedstatsenchant"] = .5,["anyoneneedstealthenchant"] = .5,["anyoneneedstrengthenchant"] = .5,["anyoneneedstrikingenchant"] = .5,["anyoneneedsubtletyenchant"] = .5,["anyoneneedunholyenchant"] = .5,["anyoneneedvampirismenchant"] = .5,["anyoneneedwintersmightenchant"] = .5,["anyoneneedfiredamageenchant"] = .5,["anyoneneedfrostdamageenchant"] = .5,["anyoneneedshadowdamageenchant"] = .5,["anyoneneednaturedamageenchant"] = .5,["anyoneneedarcanedamageenchant"] = .5,["anyoneneedweapondamageenchant"] = .5,["anyoneneedallstatsenchant"] = .5,
["candoagility"] = .5,["candoallresist"] = .5,["candoap"] = .5,["candoar"] = .5,["candoarcane"] = .5,["candoarcanedamage"] = .5,["candoarmor"] = .5,["candobeastslayer"] = .5,["candoblock"] = .5,["candocrusader"] = .5,["candodamage"] = .5,["candodefense"] = .5,["candodemonslaying"] = .5,["candododge"] = .5,["candofiery"] = .5,["candofire"] = .5,["candofiredamage"] = .5,["candofish"] = .5,["candofr"] = .5,["candoglow"] = .5,["candogreaterstats"] = .5,["candohaste"] = .5,["candoheal"] = .5,["candohealth"] = .5,["candoherb"] = .5,["candohit"] = .5,["candoicy"] = .5,["candoicychill"] = .5,["candointellect"] = .5,["candolifesteal"] = .5,["candomana"] = .5,["candomine"] = .5,["candominorspeed"] = .5,["candomountspeed"] = .5,["candomovespeed"] = .5,["candomp"] = .5,["candonature"] = .5,["candonr"] = .5,["candoresist"] = .5,["candoresistall"] = .5,["candoriding"] = .5,["candoridingskill"] = .5,["candorunspeed"] = .5,["candoshadow"] = .5,["candoskin"] = .5,["candospeed"] = .5,["candospelldamage"] = .5,["candospirit"] = .5,["candosr"] = .5,["candostamina"] = .5,["candostats"] = .5,["candostealth"] = .5,["candostrength"] = .5,["candostriking"] = .5,["candosubtlety"] = .5,["candounholy"] = .5,["candovampirism"] = .5,["candowintersmight"] = .5,["candofiredamage"] = .5,["candofrostdamage"] = .5,["candoshadowdamage"] = .5,["candonaturedamage"] = .5,["candoarcanedamage"] = .5,["candoweapondamage"] = .5,["candoallstats"] = .5,
["candoagilityenchant"] = .5,["candoallresistenchant"] = .5,["candoapenchant"] = .5,["candoarenchant"] = .5,["candoarcaneenchant"] = .5,["candoarcanedamageenchant"] = .5,["candoarmorenchant"] = .5,["candobeastslayerenchant"] = .5,["candoblockenchant"] = .5,["candocrusaderenchant"] = .5,["candodamageenchant"] = .5,["candodefenseenchant"] = .5,["candodemonslayingenchant"] = .5,["candododgeenchant"] = .5,["candofieryenchant"] = .5,["candofireenchant"] = .5,["candofiredamageenchant"] = .5,["candofishenchant"] = .5,["candofrenchant"] = .5,["candoglowenchant"] = .5,["candogreaterstatsenchant"] = .5,["candohasteenchant"] = .5,["candohealenchant"] = .5,["candohealthenchant"] = .5,["candoherbenchant"] = .5,["candohitenchant"] = .5,["candoicyenchant"] = .5,["candoicychillenchant"] = .5,["candointellectenchant"] = .5,["candolifestealenchant"] = .5,["candomanaenchant"] = .5,["candomineenchant"] = .5,["candominorspeedenchant"] = .5,["candomountspeedenchant"] = .5,["candomovespeedenchant"] = .5,["candompenchant"] = .5,["candonatureenchant"] = .5,["candonrenchant"] = .5,["candoresistenchant"] = .5,["candoresistallenchant"] = .5,["candoridingenchant"] = .5,["candoridingskillenchant"] = .5,["candorunspeedenchant"] = .5,["candoshadowenchant"] = .5,["candoskinenchant"] = .5,["candospeedenchant"] = .5,["candospelldamageenchant"] = .5,["candospiritenchant"] = .5,["candosrenchant"] = .5,["candostaminaenchant"] = .5,["candostatsenchant"] = .5,["candostealthenchant"] = .5,["candostrengthenchant"] = .5,["candostrikingenchant"] = .5,["candosubtletyenchant"] = .5,["candounholyenchant"] = .5,["candovampirismenchant"] = .5,["candowintersmightenchant"] = .5,["candofiredamageenchant"] = .5,["candofrostdamageenchant"] = .5,["candoshadowdamageenchant"] = .5,["candonaturedamageenchant"] = .5,["candoarcanedamageenchant"] = .5,["candoweapondamageenchant"] = .5,["candoallstatsenchant"] = .5,

["majorhealth"] = .5,["majorhealthenchant"] = .5,["enchantmajorhealth"] = .5,["needmajorhealth"] = .5,["anymajorhealth"] = .5,["anyonemajorhealth"] = .5,["havemajorhealth"] = .5,["withmajorhealth"] = .5,["domajorhealth"] = .5,["candomajorhealth"] = .5,
["majormana"] = .5,["majormanaenchant"] = .5,["enchantmajormana"] = .5,["needmajormana"] = .5,["anymajormana"] = .5,["anyonemajormana"] = .5,["havemajormana"] = .5,["withmajormana"] = .5,["domajormana"] = .5,["candomajormana"] = .5,
["lesserblock"] = .5,["lesserblockenchant"] = .5,["enchantlesserblock"] = .5,["needlesserblock"] = .5,["anylesserblock"] = .5,["anyonelesserblock"] = .5,["havelesserblock"] = .5,["withlesserblock"] = .5,["dolesserblock"] = .5,["candolesserblock"] = .5,
["spurs"] = .25,["spursenchant"] = .5,["enchantspurs"] = .5,["needspurs"] = .5,["anyspurs"] = .5,["anyonespurs"] = .5,["havespurs"] = .5,["withspurs"] = .5,["dospurs"] = .5,["candospurs"] = .5,
["arcanum"] = .5,["arcanumenchant"] = .5,["enchantarcanum"] = .5,["needarcanum"] = .5,["anyarcanum"] = .5,["anyonearcanum"] = .5,["havearcanum"] = .5,["witharcanum"] = .5,["doarcanum"] = .5,["candoarcanum"] = .5,
["counterweight"] = .5,["counterweightenchant"] = .5,["enchantcounterweight"] = .5,["needcounterweight"] = .5,["anycounterweight"] = .5,["anyonecounterweight"] = .5,["havecounterweight"] = .5,["withcounterweight"] = .5,["docounterweight"] = .5,["candocounterweight"] = .5,
["weaponchain"] = .5,["weaponchainenchant"] = .5,["enchantweaponchain"] = .5,["needweaponchain"] = .5,["anyweaponchain"] = .5,["anyoneweaponchain"] = .5,["haveweaponchain"] = .5,["withweaponchain"] = .5,["doweaponchain"] = .5,["candoweaponchain"] = .5,
["shieldspike"] = .5,["shieldspikeenchant"] = .5,["enchantshieldspike"] = .5,["needshieldspike"] = .5,["anyshieldspike"] = .5,["anyoneshieldspike"] = .5,["haveshieldspike"] = .5,["withshieldspike"] = .5,["doshieldspike"] = .5,["candoshieldspike"] = .5,

["enchantyourhead"] = 1,["enchantyourneck"] = 1,["enchantyourcloak"] = 1,["enchantyourback"] = 1,["enchantyourchest"] = 1,["enchantyourgloves"] = 1,["enchantyourhand"] = 1,["enchantyourbelt"] = 1,["enchantyourlegs"] = 1,["enchantyourboots"] = 1,["enchantyourring"] = 1,["enchantyourweapon"] = 1,["enchantyourshield"] = 1,

-- Head/Legs
["enchanthead"] = .5,["enchantlegs"] = .5,["headenchant"] = .5,["legsenchant"] = .5,["enchantheadwith"] = .75,["enchantlegswith"] = .75,
["strengthhead"] = 1,["agilityhead"] = 1,["frhead"] = 1,["arhead"] = 1,["srhead"] = 1,["nrhead"] = 1,["staminahead"] = 1,["healthhead"] = 1,["hphead"] = 1,["aphead"] = 1,["spelldamagehead"] = 1,["hithead"] = 1,["manahead"] = 1,["mphead"] = 1,
["strengthlegs"] = 1,["agilitylegs"] = 1,["frlegs"] = 1,["arlegs"] = 1,["srlegs"] = 1,["nrlegs"] = 1,["staminalegs"] = 1,["healthlegs"] = 1,["hplegs"] = 1,["aplegs"] = 1,["spelldamagelegs"] = 1,["hitlegs"] = 1,["manalegs"] = 1,["mplegs"] = 1,
["headstrength"] = 1,["headagility"] = 1,["headfr"] = 1,["headar"] = 1,["headsr"] = 1,["headnr"] = 1,["headstamina"] = 1,["headhealth"] = 1,["headhp"] = 1,["headap"] = 1,["headspelldamage"] = 1,["headhit"] = 1,["headmana"] = 1,["headmp"] = 1,
["legsstrength"] = 1,["legsagility"] = 1,["legsfr"] = 1,["legsar"] = 1,["legssr"] = 1,["legsnr"] = 1,["legsstamina"] = 1,["legshealth"] = 1,["legshp"] = 1,["legsap"] = 1,["legsspelldamage"] = 1,["legshit"] = 1,["legsmana"] = 1,["legsmp"] = 1,
["withstrengthhead"] = 1,["withagilityhead"] = 1,["withfrhead"] = 1,["witharhead"] = 1,["withsrhead"] = 1,["withnrhead"] = 1,["withstaminahead"] = 1,["withhealthhead"] = 1,["withhphead"] = 1,["withaphead"] = 1,["withspelldamagehead"] = 1,["withhithead"] = 1,["withmanahead"] = 1,["withmphead"] = 1,
["withstrengthlegs"] = 1,["withagilitylegs"] = 1,["withfrlegs"] = 1,["witharlegs"] = 1,["withsrlegs"] = 1,["withnrlegs"] = 1,["withstaminalegs"] = 1,["withhealthlegs"] = 1,["withhplegs"] = 1,["withaplegs"] = 1,["withspelldamagelegs"] = 1,["withhitlegs"] = 1,["withmanalegs"] = 1,["withmplegs"] = 1,
["needstrengthhead"] = 1,["needagilityhead"] = 1,["needfrhead"] = 1,["needarhead"] = 1,["needsrhead"] = 1,["neednrhead"] = 1,["needstaminahead"] = 1,["needhealthhead"] = 1,["needhphead"] = 1,["needaphead"] = 1,["needspelldamagehead"] = 1,["needhithead"] = 1,["needmanahead"] = 1,["needmphead"] = 1,
["needstrengthlegs"] = 1,["needagilitylegs"] = 1,["needfrlegs"] = 1,["needarlegs"] = 1,["needsrlegs"] = 1,["neednrlegs"] = 1,["needstaminalegs"] = 1,["needhealthlegs"] = 1,["needhplegs"] = 1,["needaplegs"] = 1,["needspelldamagelegs"] = 1,["needhitlegs"] = 1,["needmanalegs"] = 1,["needmplegs"] = 1,
["anystrengthhead"] = 1,["anyagilityhead"] = 1,["anyfrhead"] = 1,["anyarhead"] = 1,["anysrhead"] = 1,["anynrhead"] = 1,["anystaminahead"] = 1,["anyhealthhead"] = 1,["anyhphead"] = 1,["anyaphead"] = 1,["anyspelldamagehead"] = 1,["anyhithead"] = 1,["anymanahead"] = 1,["anymphead"] = 1,
["anystrengthlegs"] = 1,["anyagilitylegs"] = 1,["anyfrlegs"] = 1,["anyarlegs"] = 1,["anysrlegs"] = 1,["anynrlegs"] = 1,["anystaminalegs"] = 1,["anyhealthlegs"] = 1,["anyhplegs"] = 1,["anyaplegs"] = 1,["anyspelldamagelegs"] = 1,["anyhitlegs"] = 1,["anymanalegs"] = 1,["anymplegs"] = 1,
["needheadstrength"] = 1,["needheadagility"] = 1,["needheadfr"] = 1,["needheadar"] = 1,["needheadsr"] = 1,["needheadnr"] = 1,["needheadstamina"] = 1,["needheadhealth"] = 1,["needheadhp"] = 1,["needheadap"] = 1,["needheadspelldamage"] = 1,["needheadhit"] = 1,["needheadmana"] = 1,["needheadmp"] = 1,
["needlegsstrength"] = 1,["needlegsagility"] = 1,["needlegsfr"] = 1,["needlegsar"] = 1,["needlegssr"] = 1,["needlegsnr"] = 1,["needlegsstamina"] = 1,["needlegshealth"] = 1,["needlegshp"] = 1,["needlegsap"] = 1,["needlegsspelldamage"] = 1,["needlegshit"] = 1,["needlegsmana"] = 1,["needlegsmp"] = 1,
["anyheadstrength"] = 1,["anyheadagility"] = 1,["anyheadfr"] = 1,["anyheadar"] = 1,["anyheadsr"] = 1,["anyheadnr"] = 1,["anyheadstamina"] = 1,["anyheadhealth"] = 1,["anyheadhp"] = 1,["anyheadap"] = 1,["anyheadspelldamage"] = 1,["anyheadhit"] = 1,["anyheadmana"] = 1,["anyheadmp"] = 1,
["anylegsstrength"] = 1,["anylegsagility"] = 1,["anylegsfr"] = 1,["anylegsar"] = 1,["anylegssr"] = 1,["anylegsnr"] = 1,["anylegsstamina"] = 1,["anylegshealth"] = 1,["anylegshp"] = 1,["anylegsap"] = 1,["anylegsspelldamage"] = 1,["anylegshit"] = 1,["anylegsmana"] = 1,["anylegsmp"] = 1,
["anyonestrengthhead"] = 1,["anyoneagilityhead"] = 1,["anyonefrhead"] = 1,["anyonearhead"] = 1,["anyonesrhead"] = 1,["anyonenrhead"] = 1,["anyonestaminahead"] = 1,["anyonehealthhead"] = 1,["anyonehphead"] = 1,["anyoneaphead"] = 1,["anyonespelldamagehead"] = 1,["anyonehithead"] = 1,["anyonemanahead"] = 1,["anyonemphead"] = 1,
["anyonestrengthlegs"] = 1,["anyoneagilitylegs"] = 1,["anyonefrlegs"] = 1,["anyonearlegs"] = 1,["anyonesrlegs"] = 1,["anyonenrlegs"] = 1,["anyonestaminalegs"] = 1,["anyonehealthlegs"] = 1,["anyonehplegs"] = 1,["anyoneaplegs"] = 1,["anyonespelldamagelegs"] = 1,["anyonehitlegs"] = 1,["anyonemanalegs"] = 1,["anyonemplegs"] = 1,
["havestrengthhead"] = 1,["haveagilityhead"] = 1,["havefrhead"] = 1,["havearhead"] = 1,["havesrhead"] = 1,["havenrhead"] = 1,["havestaminahead"] = 1,["havehealthhead"] = 1,["havehphead"] = 1,["haveaphead"] = 1,["havespelldamagehead"] = 1,["havehithead"] = 1,["havemanahead"] = 1,["havemphead"] = 1,
["havestrengthlegs"] = 1,["haveagilitylegs"] = 1,["havefrlegs"] = 1,["havearlegs"] = 1,["havesrlegs"] = 1,["havenrlegs"] = 1,["havestaminalegs"] = 1,["havehealthlegs"] = 1,["havehplegs"] = 1,["haveaplegs"] = 1,["havespelldamagelegs"] = 1,["havehitlegs"] = 1,["havemanalegs"] = 1,["havemplegs"] = 1,
["strengthheadaround"] = 1,["agilityheadaround"] = 1,["frheadaround"] = 1,["arheadaround"] = 1,["srheadaround"] = 1,["nrheadaround"] = 1,["staminaheadaround"] = 1,["healthheadaround"] = 1,["hpheadaround"] = 1,["apheadaround"] = 1,["spelldamageheadaround"] = 1,["hitheadaround"] = 1,["manaheadaround"] = 1,["mpheadaround"] = 1,
["strengthheadlegs"] = 1,["agilityheadlegs"] = 1,["frheadlegs"] = 1,["arheadlegs"] = 1,["srheadlegs"] = 1,["nrheadlegs"] = 1,["staminaheadlegs"] = 1,["healthheadlegs"] = 1,["hpheadlegs"] = 1,["apheadlegs"] = 1,["spelldamageheadlegs"] = 1,["hitheadlegs"] = 1,["manaheadlegs"] = 1,["mpheadlegs"] = 1,
["strengthheadlegsaround"] = 1,["agilityheadlegsaround"] = 1,["frheadlegsaround"] = 1,["arheadlegsaround"] = 1,["srheadlegsaround"] = 1,["nrheadlegsaround"] = 1,["staminaheadlegsaround"] = 1,["healthheadlegsaround"] = 1,["hpheadlegsaround"] = 1,["apheadlegsaround"] = 1,["spelldamageheadlegsaround"] = 1,["hitheadlegsaround"] = 1,["manaheadlegsaround"] = 1,["mpheadlegsaround"] = 1,
["strengthlegsheadaround"] = 1,["agilitylegsheadaround"] = 1,["frlegsheadaround"] = 1,["arlegsheadaround"] = 1,["srlegsheadaround"] = 1,["nrlegsheadaround"] = 1,["staminalegsheadaround"] = 1,["healthlegsheadaround"] = 1,["hplegsheadaround"] = 1,["aplegsheadaround"] = 1,["spelldamagelegsheadaround"] = 1,["hitlegsheadaround"] = 1,["manalegsheadaround"] = 1,["mplegsheadaround"] = 1,
["strengthheadplease"] = 2,["agilityheadplease"] = 2,["frheadplease"] = 2,["arheadplease"] = 2,["srheadplease"] = 2,["nrheadplease"] = 2,["staminaheadplease"] = 2,["healthheadplease"] = 2,["hpheadplease"] = 2,["apheadplease"] = 2,["spelldamageheadplease"] = 2,["hitheadplease"] = 2,["manaheadplease"] = 2,["mpheadplease"] = 2,
["strengthlegsplease"] = 2,["agilitylegsplease"] = 2,["frlegsplease"] = 2,["arlegsplease"] = 2,["srlegsplease"] = 2,["nrlegsplease"] = 2,["staminalegsplease"] = 2,["healthlegsplease"] = 2,["hplegsplease"] = 2,["aplegsplease"] = 2,["spelldamagelegsplease"] = 2,["hitlegsplease"] = 2,["manalegsplease"] = 2,["mplegsplease"] = 2,
["strengthheadenchant"] = 2,["agilityheadenchant"] = 2,["frheadenchant"] = 2,["arheadenchant"] = 2,["srheadenchant"] = 2,["nrheadenchant"] = 2,["staminaheadenchant"] = 2,["healthheadenchant"] = 2,["hpheadenchant"] = 2,["apheadenchant"] = 2,["spelldamageheadenchant"] = 2,["hitheadenchant"] = 2,["manaheadenchant"] = 2,["mpheadenchant"] = 2,
["strengthlegsenchant"] = 2,["agilitylegsenchant"] = 2,["frlegsenchant"] = 2,["arlegsenchant"] = 2,["srlegsenchant"] = 2,["nrlegsenchant"] = 2,["staminalegsenchant"] = 2,["healthlegsenchant"] = 2,["hplegsenchant"] = 2,["aplegsenchant"] = 2,["spelldamagelegsenchant"] = 2,["hitlegsenchant"] = 2,["manalegsenchant"] = 2,["mplegsenchant"] = 2,

-- Neck/Ring
["enchantring"] = .5,["enchantneck"] = .5,["ringenchant"] = .5,["neckenchant"] = .5,["enchantringwith"] = .5,["enchantneckwith"] = .5,["jewelcrafterring"] = 1,["jewelcrafterneck"] = 1,["ringjewelcrafter"] = 1,["neckjewelcrafter"] = 1,["anyjewelcrafterring"] = 1,["anyjewelcrafterneck"] = 1,
["firering"] = 1,["arcanering"] = 1,["frring"] = 1,["arring"] = 1,["firedamagering"] = 1,["arcanedamagering"] = 1,["intellectring"] = 1,["agilityring"] = 1,["staminaring"] = 1,["strengthring"] = 1,["vampirismring"] = 1,["spiritring"] = 1,["healring"] = 1,["blockring"] = 1,["armorring"] = 1,["mpring"] = 1,["spelldamagering"] = 1,["armorring"] = 1,
["fireneck"] = 1,["arcaneneck"] = 1,["frneck"] = 1,["arneck"] = 1,["firedamageneck"] = 1,["arcanedamageneck"] = 1,["intellectneck"] = 1,["agilityneck"] = 1,["staminaneck"] = 1,["strengthneck"] = 1,["vampirismneck"] = 1,["spiritneck"] = 1,["healneck"] = 1,["blockneck"] = 1,["armorneck"] = 1,["mpneck"] = 1,["spelldamageneck"] = 1,["armorneck"] = 1,
["ringfire"] = 1,["ringarcane"] = 1,["ringfr"] = 1,["ringar"] = 1,["ringfiredamage"] = 1,["ringarcanedamage"] = 1,["ringintellect"] = 1,["ringagility"] = 1,["ringstamina"] = 1,["ringstrength"] = 1,["ringvampirism"] = 1,["ringspirit"] = 1,["ringheal"] = 1,["ringblock"] = 1,["ringarmor"] = 1,["ringmp"] = 1,["ringspelldamage"] = 1,["ringarmor"] = 1,
["neckfire"] = 1,["neckarcane"] = 1,["neckfr"] = 1,["neckar"] = 1,["neckfiredamage"] = 1,["neckarcanedamage"] = 1,["neckintellect"] = 1,["neckagility"] = 1,["neckstamina"] = 1,["neckstrength"] = 1,["neckvampirism"] = 1,["neckspirit"] = 1,["neckheal"] = 1,["neckblock"] = 1,["neckarmor"] = 1,["neckmp"] = 1,["neckspelldamage"] = 1,["neckarmor"] = 1,
["withfirering"] = 1,["witharcanering"] = 1,["withfrring"] = 1,["witharring"] = 1,["withfiredamagering"] = 1,["witharcanedamagering"] = 1,["withintellectring"] = 1,["withagilityring"] = 1,["withstaminaring"] = 1,["withstrengthring"] = 1,["withvampirismring"] = 1,["withspiritring"] = 1,["withhealring"] = 1,["withblockring"] = 1,["witharmorring"] = 1,["withmpring"] = 1,["withspelldamagering"] = 1,["witharmorring"] = 1,
["withfireneck"] = 1,["witharcaneneck"] = 1,["withfrneck"] = 1,["witharneck"] = 1,["withfiredamageneck"] = 1,["witharcanedamageneck"] = 1,["withintellectneck"] = 1,["withagilityneck"] = 1,["withstaminaneck"] = 1,["withstrengthneck"] = 1,["withvampirismneck"] = 1,["withspiritneck"] = 1,["withhealneck"] = 1,["withblockneck"] = 1,["witharmorneck"] = 1,["withmpneck"] = 1,["withspelldamageneck"] = 1,["witharmorneck"] = 1,
["needfirering"] = 1,["needarcanering"] = 1,["needfrring"] = 1,["needarring"] = 1,["needfiredamagering"] = 1,["needarcanedamagering"] = 1,["needintellectring"] = 1,["needagilityring"] = 1,["needstaminaring"] = 1,["needstrengthring"] = 1,["needvampirismring"] = 1,["needspiritring"] = 1,["needhealring"] = 1,["needblockring"] = 1,["needarmorring"] = 1,["needmpring"] = 1,["needspelldamagering"] = 1,["needarmorring"] = 1,
["needfireneck"] = 1,["needarcaneneck"] = 1,["needfrneck"] = 1,["needarneck"] = 1,["needfiredamageneck"] = 1,["needarcanedamageneck"] = 1,["needintellectneck"] = 1,["needagilityneck"] = 1,["needstaminaneck"] = 1,["needstrengthneck"] = 1,["needvampirismneck"] = 1,["needspiritneck"] = 1,["needhealneck"] = 1,["needblockneck"] = 1,["needarmorneck"] = 1,["needmpneck"] = 1,["needspelldamageneck"] = 1,["needarmorneck"] = 1,
["anyfirering"] = 1,["anyarcanering"] = 1,["anyfrring"] = 1,["anyarring"] = 1,["anyfiredamagering"] = 1,["anyarcanedamagering"] = 1,["anyintellectring"] = 1,["anyagilityring"] = 1,["anystaminaring"] = 1,["anystrengthring"] = 1,["anyvampirismring"] = 1,["anyspiritring"] = 1,["anyhealring"] = 1,["anyblockring"] = 1,["anyarmorring"] = 1,["anympring"] = 1,["anyspelldamagering"] = 1,["anyarmorring"] = 1,
["anyfireneck"] = 1,["anyarcaneneck"] = 1,["anyfrneck"] = 1,["anyarneck"] = 1,["anyfiredamageneck"] = 1,["anyarcanedamageneck"] = 1,["anyintellectneck"] = 1,["anyagilityneck"] = 1,["anystaminaneck"] = 1,["anystrengthneck"] = 1,["anyvampirismneck"] = 1,["anyspiritneck"] = 1,["anyhealneck"] = 1,["anyblockneck"] = 1,["anyarmorneck"] = 1,["anympneck"] = 1,["anyspelldamageneck"] = 1,["anyarmorneck"] = 1,
["needringfire"] = 1,["needringarcane"] = 1,["needringfr"] = 1,["needringar"] = 1,["needringfiredamage"] = 1,["needringarcanedamage"] = 1,["needringintellect"] = 1,["needringagility"] = 1,["needringstamina"] = 1,["needringstrength"] = 1,["needringvampirism"] = 1,["needringspirit"] = 1,["needringheal"] = 1,["needringblock"] = 1,["needringarmor"] = 1,["needringmp"] = 1,["needringspelldamage"] = 1,["needringarmor"] = 1,
["needneckfire"] = 1,["needneckarcane"] = 1,["needneckfr"] = 1,["needneckar"] = 1,["needneckfiredamage"] = 1,["needneckarcanedamage"] = 1,["needneckintellect"] = 1,["needneckagility"] = 1,["needneckstamina"] = 1,["needneckstrength"] = 1,["needneckvampirism"] = 1,["needneckspirit"] = 1,["needneckheal"] = 1,["needneckblock"] = 1,["needneckarmor"] = 1,["needneckmp"] = 1,["needneckspelldamage"] = 1,["needneckarmor"] = 1,
["anyringfire"] = 1,["anyringarcane"] = 1,["anyringfr"] = 1,["anyringar"] = 1,["anyringfiredamage"] = 1,["anyringarcanedamage"] = 1,["anyringintellect"] = 1,["anyringagility"] = 1,["anyringstamina"] = 1,["anyringstrength"] = 1,["anyringvampirism"] = 1,["anyringspirit"] = 1,["anyringheal"] = 1,["anyringblock"] = 1,["anyringarmor"] = 1,["anyringmp"] = 1,["anyringspelldamage"] = 1,["anyringarmor"] = 1,
["anyneckfire"] = 1,["anyneckarcane"] = 1,["anyneckfr"] = 1,["anyneckar"] = 1,["anyneckfiredamage"] = 1,["anyneckarcanedamage"] = 1,["anyneckintellect"] = 1,["anyneckagility"] = 1,["anyneckstamina"] = 1,["anyneckstrength"] = 1,["anyneckvampirism"] = 1,["anyneckspirit"] = 1,["anyneckheal"] = 1,["anyneckblock"] = 1,["anyneckarmor"] = 1,["anyneckmp"] = 1,["anyneckspelldamage"] = 1,["anyneckarmor"] = 1,
["anyonefirering"] = 1,["anyonearcanering"] = 1,["anyonefrring"] = 1,["anyonearring"] = 1,["anyonefiredamagering"] = 1,["anyonearcanedamagering"] = 1,["anyoneintellectring"] = 1,["anyoneagilityring"] = 1,["anyonestaminaring"] = 1,["anyonestrengthring"] = 1,["anyonevampirismring"] = 1,["anyonespiritring"] = 1,["anyonehealring"] = 1,["anyoneblockring"] = 1,["anyonearmorring"] = 1,["anyonempring"] = 1,["anyonespelldamagering"] = 1,["anyonearmorring"] = 1,
["anyonefireneck"] = 1,["anyonearcaneneck"] = 1,["anyonefrneck"] = 1,["anyonearneck"] = 1,["anyonefiredamageneck"] = 1,["anyonearcanedamageneck"] = 1,["anyoneintellectneck"] = 1,["anyoneagilityneck"] = 1,["anyonestaminaneck"] = 1,["anyonestrengthneck"] = 1,["anyonevampirismneck"] = 1,["anyonespiritneck"] = 1,["anyonehealneck"] = 1,["anyoneblockneck"] = 1,["anyonearmorneck"] = 1,["anyonempneck"] = 1,["anyonespelldamageneck"] = 1,["anyonearmorneck"] = 1,
["havefirering"] = 1,["havearcanering"] = 1,["havefrring"] = 1,["havearring"] = 1,["havefiredamagering"] = 1,["havearcanedamagering"] = 1,["haveintellectring"] = 1,["haveagilityring"] = 1,["havestaminaring"] = 1,["havestrengthring"] = 1,["havevampirismring"] = 1,["havespiritring"] = 1,["havehealring"] = 1,["haveblockring"] = 1,["havearmorring"] = 1,["havempring"] = 1,["havespelldamagering"] = 1,["havearmorring"] = 1,
["havefireneck"] = 1,["havearcaneneck"] = 1,["havefrneck"] = 1,["havearneck"] = 1,["havefiredamageneck"] = 1,["havearcanedamageneck"] = 1,["haveintellectneck"] = 1,["haveagilityneck"] = 1,["havestaminaneck"] = 1,["havestrengthneck"] = 1,["havevampirismneck"] = 1,["havespiritneck"] = 1,["havehealneck"] = 1,["haveblockneck"] = 1,["havearmorneck"] = 1,["havempneck"] = 1,["havespelldamageneck"] = 1,["havearmorneck"] = 1,
["fireringplease"] = 2,["arcaneringplease"] = 2,["frringplease"] = 2,["arringplease"] = 2,["firedamageringplease"] = 2,["arcanedamageringplease"] = 2,["intellectringplease"] = 2,["agilityringplease"] = 2,["staminaringplease"] = 2,["strengthringplease"] = 2,["vampirismringplease"] = 2,["spiritringplease"] = 2,["healringplease"] = 2,["blockringplease"] = 2,["armorringplease"] = 2,["mpringplease"] = 2,["spelldamageringplease"] = 2,["armorringplease"] = 2,
["fireneckplease"] = 2,["arcaneneckplease"] = 2,["frneckplease"] = 2,["arneckplease"] = 2,["firedamageneckplease"] = 2,["arcanedamageneckplease"] = 2,["intellectneckplease"] = 2,["agilityneckplease"] = 2,["staminaneckplease"] = 2,["strengthneckplease"] = 2,["vampirismneckplease"] = 2,["spiritneckplease"] = 2,["healneckplease"] = 2,["blockneckplease"] = 2,["armorneckplease"] = 2,["mpneckplease"] = 2,["spelldamageneckplease"] = 2,["armorneckplease"] = 2,
["fireringenchant"] = 2,["arcaneringenchant"] = 2,["frringenchant"] = 2,["arringenchant"] = 2,["firedamageringenchant"] = 2,["arcanedamageringenchant"] = 2,["intellectringenchant"] = 2,["agilityringenchant"] = 2,["staminaringenchant"] = 2,["strengthringenchant"] = 2,["vampirismringenchant"] = 2,["spiritringenchant"] = 2,["healringenchant"] = 2,["blockringenchant"] = 2,["armorringenchant"] = 2,["mpringenchant"] = 2,["spelldamageringenchant"] = 2,["armorringenchant"] = 2,
["fireneckenchant"] = 2,["arcaneneckenchant"] = 2,["frneckenchant"] = 2,["arneckenchant"] = 2,["firedamageneckenchant"] = 2,["arcanedamageneckenchant"] = 2,["intellectneckenchant"] = 2,["agilityneckenchant"] = 2,["staminaneckenchant"] = 2,["strengthneckenchant"] = 2,["vampirismneckenchant"] = 2,["spiritneckenchant"] = 2,["healneckenchant"] = 2,["blockneckenchant"] = 2,["armorneckenchant"] = 2,["mpneckenchant"] = 2,["spelldamageneckenchant"] = 2,["armorneckenchant"] = 2,
["anyjewelcrafterfire"] = .5,["anyjewelcrafterarcane"] = .5,["anyjewelcrafterfr"] = .5,["anyjewelcrafterar"] = .5,["anyjewelcrafterfiredamage"] = .5,["anyjewelcrafterarcanedamage"] = .5,["anyjewelcrafterintellect"] = .5,["anyjewelcrafteragility"] = .5,["anyjewelcrafterstamina"] = .5,["anyjewelcrafterstrength"] = .5,["anyjewelcraftervampirism"] = .5,["anyjewelcrafterspirit"] = .5,["anyjewelcrafterheal"] = .5,["anyjewelcrafterblock"] = .5,["anyjewelcrafterarmor"] = .5,["anyjewelcraftermp"] = .5,["anyjewelcrafterspelldamage"] = .5,["anyjewelcrafterarmor"] = .5,
["anyonejewelcrafterfire"] = .5,["anyonejewelcrafterarcane"] = .5,["anyonejewelcrafterfr"] = .5,["anyonejewelcrafterar"] = .5,["anyonejewelcrafterfiredamage"] = .5,["anyonejewelcrafterarcanedamage"] = .5,["anyonejewelcrafterintellect"] = .5,["anyonejewelcrafteragility"] = .5,["anyonejewelcrafterstamina"] = .5,["anyonejewelcrafterstrength"] = .5,["anyonejewelcraftervampirism"] = .5,["anyonejewelcrafterspirit"] = .5,["anyonejewelcrafterheal"] = .5,["anyonejewelcrafterblock"] = .5,["anyonejewelcrafterarmor"] = .5,["anyonejewelcraftermp"] = .5,["anyonejewelcrafterspelldamage"] = .5,["anyonejewelcrafterarmor"] = .5,
["needjewelcrafterfire"] = .5,["needjewelcrafterarcane"] = .5,["needjewelcrafterfr"] = .5,["needjewelcrafterar"] = .5,["needjewelcrafterfiredamage"] = .5,["needjewelcrafterarcanedamage"] = .5,["needjewelcrafterintellect"] = .5,["needjewelcrafteragility"] = .5,["needjewelcrafterstamina"] = .5,["needjewelcrafterstrength"] = .5,["needjewelcraftervampirism"] = .5,["needjewelcrafterspirit"] = .5,["needjewelcrafterheal"] = .5,["needjewelcrafterblock"] = .5,["needjewelcrafterarmor"] = .5,["needjewelcraftermp"] = .5,["needjewelcrafterspelldamage"] = .5,["needjewelcrafterarmor"] = .5,

-- Cloak
["enchantcloak"] = .5,["enchantback"] = .5,["cloakenchant"] = .5,["backenchant"] = .5,["enchantcloakwith"] = .75,["enchantbackwith"] = .75,
["agilitycloak"] = 1,["armorcloak"] = 1,["resistcloak"] = 1,["allresistcloak"] = 1,["resistallcloak"] = 1,["frcloak"] = 1,["srcloak"] = 1,["nrcloak"] = 1,["arcloak"] = 1,["dodgecloak"] = 1,["subtletycloak"] = 1,["stealthcloak"] = 1,
["agilityback"] = 1,["armorback"] = 1,["resistback"] = 1,["allresistback"] = 1,["resistallback"] = 1,["frback"] = 1,["srback"] = 1,["nrback"] = 1,["arback"] = 1,["dodgeback"] = 1,["subtletyback"] = 1,["stealthback"] = 1,
["cloakagility"] = 1,["cloakarmor"] = 1,["cloakresist"] = 1,["cloakallresist"] = 1,["cloakresistall"] = 1,["cloakfr"] = 1,["cloaksr"] = 1,["cloaknr"] = 1,["cloakar"] = 1,["cloakdodge"] = 1,["cloaksubtlety"] = 1,["cloakstealth"] = 1,
["backagility"] = 1,["backarmor"] = 1,["backresist"] = 1,["backallresist"] = 1,["backresistall"] = 1,["backfr"] = 1,["backsr"] = 1,["backnr"] = 1,["backar"] = 1,["backdodge"] = 1,["backsubtlety"] = 1,["backstealth"] = 1,
["withagilitycloak"] = 1,["witharmorcloak"] = 1,["withresistcloak"] = 1,["withallresistcloak"] = 1,["withresistallcloak"] = 1,["withfrcloak"] = 1,["withsrcloak"] = 1,["withnrcloak"] = 1,["witharcloak"] = 1,["withdodgecloak"] = 1,["withsubtletycloak"] = 1,["withstealthcloak"] = 1,
["withagilityback"] = 1,["witharmorback"] = 1,["withresistback"] = 1,["withallresistback"] = 1,["withresistallback"] = 1,["withfrback"] = 1,["withsrback"] = 1,["withnrback"] = 1,["witharback"] = 1,["withdodgeback"] = 1,["withsubtletyback"] = 1,["withstealthback"] = 1,
["needagilitycloak"] = 1,["needarmorcloak"] = 1,["needresistcloak"] = 1,["needallresistcloak"] = 1,["needresistallcloak"] = 1,["needfrcloak"] = 1,["needsrcloak"] = 1,["neednrcloak"] = 1,["needarcloak"] = 1,["needdodgecloak"] = 1,["needsubtletycloak"] = 1,["needstealthcloak"] = 1,
["needagilityback"] = 1,["needarmorback"] = 1,["needresistback"] = 1,["needallresistback"] = 1,["needresistallback"] = 1,["needfrback"] = 1,["needsrback"] = 1,["neednrback"] = 1,["needarback"] = 1,["needdodgeback"] = 1,["needsubtletyback"] = 1,["needstealthback"] = 1,
["anyagilitycloak"] = 1,["anyarmorcloak"] = 1,["anyresistcloak"] = 1,["anyallresistcloak"] = 1,["anyresistallcloak"] = 1,["anyfrcloak"] = 1,["anysrcloak"] = 1,["anynrcloak"] = 1,["anyarcloak"] = 1,["anydodgecloak"] = 1,["anysubtletycloak"] = 1,["anystealthcloak"] = 1,
["anyagilityback"] = 1,["anyarmorback"] = 1,["anyresistback"] = 1,["anyallresistback"] = 1,["anyresistallback"] = 1,["anyfrback"] = 1,["anysrback"] = 1,["anynrback"] = 1,["anyarback"] = 1,["anydodgeback"] = 1,["anysubtletyback"] = 1,["anystealthback"] = 1,
["anyoneagilitycloak"] = 1,["anyonearmorcloak"] = 1,["anyoneresistcloak"] = 1,["anyoneallresistcloak"] = 1,["anyoneresistallcloak"] = 1,["anyonefrcloak"] = 1,["anyonesrcloak"] = 1,["anyonenrcloak"] = 1,["anyonearcloak"] = 1,["anyonedodgecloak"] = 1,["anyonesubtletycloak"] = 1,["anyonestealthcloak"] = 1,
["anyoneagilityback"] = 1,["anyonearmorback"] = 1,["anyoneresistback"] = 1,["anyoneallresistback"] = 1,["anyoneresistallback"] = 1,["anyonefrback"] = 1,["anyonesrback"] = 1,["anyonenrback"] = 1,["anyonearback"] = 1,["anyonedodgeback"] = 1,["anyonesubtletyback"] = 1,["anyonestealthback"] = 1,
["haveagilitycloak"] = 1,["havearmorcloak"] = 1,["haveresistcloak"] = 1,["haveallresistcloak"] = 1,["haveresistallcloak"] = 1,["havefrcloak"] = 1,["havesrcloak"] = 1,["havenrcloak"] = 1,["havearcloak"] = 1,["havedodgecloak"] = 1,["havesubtletycloak"] = 1,["havestealthcloak"] = 1,
["haveagilityback"] = 1,["havearmorback"] = 1,["haveresistback"] = 1,["haveallresistback"] = 1,["haveresistallback"] = 1,["havefrback"] = 1,["havesrback"] = 1,["havenrback"] = 1,["havearback"] = 1,["havedodgeback"] = 1,["havesubtletyback"] = 1,["havestealthback"] = 1,
["agilitycloakplease"] = 2,["armorcloakplease"] = 2,["resistcloakplease"] = 2,["allresistcloakplease"] = 2,["resistallcloakplease"] = 2,["frcloakplease"] = 2,["srcloakplease"] = 2,["nrcloakplease"] = 2,["arcloakplease"] = 2,["dodgecloakplease"] = 2,["subtletycloakplease"] = 2,["stealthcloakplease"] = 2,
["agilitybackplease"] = 2,["armorbackplease"] = 2,["resistbackplease"] = 2,["allresistbackplease"] = 2,["resistallbackplease"] = 2,["frbackplease"] = 2,["srbackplease"] = 2,["nrbackplease"] = 2,["arbackplease"] = 2,["dodgebackplease"] = 2,["subtletybackplease"] = 2,["stealthbackplease"] = 2,
["agilitycloakenchant"] = 2,["armorcloakenchant"] = 2,["resistcloakenchant"] = 2,["allresistcloakenchant"] = 2,["resistallcloakenchant"] = 2,["frcloakenchant"] = 2,["srcloakenchant"] = 2,["nrcloakenchant"] = 2,["arcloakenchant"] = 2,["dodgecloakenchant"] = 2,["subtletycloakenchant"] = 2,["stealthcloakenchant"] = 2,
["agilitybackenchant"] = 2,["armorbackenchant"] = 2,["resistbackenchant"] = 2,["allresistbackenchant"] = 2,["resistallbackenchant"] = 2,["frbackenchant"] = 2,["srbackenchant"] = 2,["nrbackenchant"] = 2,["arbackenchant"] = 2,["dodgebackenchant"] = 2,["subtletybackenchant"] = 2,["stealthbackenchant"] = 2,

-- Chest
["enchantchest"] = .5,["chestenchant"] = .5,["enchantchestwith"] = .75,
["mpchest"] = 1,["statschest"] = 1,["greaterstatschest"] = 1,["healthchest"] = 1,["manachest"] = 1,
["chestmp"] = 1,["cheststats"] = 1,["chestgreaterstats"] = 1,["chesthealth"] = 1,["chestmana"] = 1,
["withmpchest"] = 1,["withstatschest"] = 1,["withgreaterstatschest"] = 1,["withhealthchest"] = 1,["withmanachest"] = 1,
["needmpchest"] = 1,["needstatschest"] = 1,["needgreaterstatschest"] = 1,["needhealthchest"] = 1,["needmanachest"] = 1,
["anympchest"] = 1,["anystatschest"] = 1,["anygreaterstatschest"] = 1,["anyhealthchest"] = 1,["anymanachest"] = 1,
["anyonempchest"] = 1,["anyonestatschest"] = 1,["anyonegreaterstatschest"] = 1,["anyonehealthchest"] = 1,["anyonemanachest"] = 1,
["havempchest"] = 1,["havestatschest"] = 1,["havegreaterstatschest"] = 1,["havehealthchest"] = 1,["havemanachest"] = 1,
["mpchestplease"] = 2,["statschestplease"] = 2,["greaterstatschestplease"] = 2,["healthchestplease"] = 2,["manachestplease"] = 2,
["mpchestenchant"] = 2,["statschestenchant"] = 2,["greaterstatschestenchant"] = 2,["healthchestenchant"] = 2,["manachestenchant"] = 2,

-- Wrist
["enchantwrist"] = .5,["wristenchant"] = .5,["enchantwristwith"] = .75,
["strengthwrist"] = 1,["staminawrist"] = 1,["intellectwrist"] = 1,["spelldamagewrist"] = 1,["healwrist"] = 1,["mpwrist"] = 1,["agilitywrist"] = 1,["defensewrist"] = 1,
["wriststrength"] = 1,["wriststamina"] = 1,["wristintellect"] = 1,["wristspelldamage"] = 1,["wristheal"] = 1,["wristmp"] = 1,["wristagility"] = 1,["wristdefense"] = 1,
["withstrengthwrist"] = 1,["withstaminawrist"] = 1,["withintellectwrist"] = 1,["withspelldamagewrist"] = 1,["withhealwrist"] = 1,["withmpwrist"] = 1,["withagilitywrist"] = 1,["withdefensewrist"] = 1,
["needstrengthwrist"] = 1,["needstaminawrist"] = 1,["needintellectwrist"] = 1,["needspelldamagewrist"] = 1,["needhealwrist"] = 1,["needmpwrist"] = 1,["needagilitywrist"] = 1,["needdefensewrist"] = 1,
["anystrengthwrist"] = 1,["anystaminawrist"] = 1,["anyintellectwrist"] = 1,["anyspelldamagewrist"] = 1,["anyhealwrist"] = 1,["anympwrist"] = 1,["anyagilitywrist"] = 1,["anydefensewrist"] = 1,
["anyonestrengthwrist"] = 1,["anyonestaminawrist"] = 1,["anyoneintellectwrist"] = 1,["anyonespelldamagewrist"] = 1,["anyonehealwrist"] = 1,["anyonempwrist"] = 1,["anyoneagilitywrist"] = 1,["anyonedefensewrist"] = 1,
["havestrengthwrist"] = 1,["havestaminawrist"] = 1,["haveintellectwrist"] = 1,["havespelldamagewrist"] = 1,["havehealwrist"] = 1,["havempwrist"] = 1,["haveagilitywrist"] = 1,["havedefensewrist"] = 1,
["strengthwristplease"] = 2,["staminawristplease"] = 2,["intellectwristplease"] = 2,["spelldamagewristplease"] = 2,["healwristplease"] = 2,["mpwristplease"] = 2,["agilitywristplease"] = 2,["defensewristplease"] = 2,
["strengthwristenchant"] = 2,["staminawristenchant"] = 2,["intellectwristenchant"] = 2,["spelldamagewristenchant"] = 2,["healwristenchant"] = 2,["mpwristenchant"] = 2,["agilitywristenchant"] = 2,["defensewristenchant"] = 2,

-- Shield
["enchantshield"] = .5,["shieldenchant"] = .5,["enchantshieldwith"] = .75,
["staminashield"] = 1,["spiritshield"] = 1,["blockshield"] = 1,
["shieldstamina"] = 1,["shieldspirit"] = 1,["shieldblock"] = 1,
["withstaminashield"] = 1,["withspiritshield"] = 1,["withblockshield"] = 1,
["needstaminashield"] = 1,["needspiritshield"] = 1,["needblockshield"] = 1,
["anystaminashield"] = 1,["anyspiritshield"] = 1,["anyblockshield"] = 1,
["anyonestaminashield"] = 1,["anyonespiritshield"] = 1,["anyoneblockshield"] = 1,
["havestaminashield"] = 1,["havespiritshield"] = 1,["haveblockshield"] = 1,
["staminashieldplease"] = 2,["spiritshieldplease"] = 2,["blockshieldplease"] = 2,
["staminashieldenchant"] = 2,["spiritshieldenchant"] = 2,["blockshieldenchant"] = 2,

-- Gloves
["enchantgloves"] = .5,["enchanthand"] = .5,["glovesenchant"] = .5,["handenchant"] = .5,["enchantgloveswith"] = .75,["enchanthandwith"] = .75,
["agilitygloves"] = 1,["strengthgloves"] = 1,["hastegloves"] = 1,["ridinggloves"] = 1,["ridingskillgloves"] = 1,["mountspeedgloves"] = 1,["arcanegloves"] = 1,["shadowgloves"] = 1,["firegloves"] = 1,["naturegloves"] = 1,["healgloves"] = 1,["spelldamagegloves"] = 1,["threatgloves"] = 1,["herbgloves"] = 1,["skingloves"] = 1,["fishgloves"] = 1,["minegloves"] = 1,
["agilityhand"] = 1,["strengthhand"] = 1,["hastehand"] = 1,["ridinghand"] = 1,["ridingskillhand"] = 1,["mountspeedhand"] = 1,["arcanehand"] = 1,["shadowhand"] = 1,["firehand"] = 1,["naturehand"] = 1,["healhand"] = 1,["spelldamagehand"] = 1,["threathand"] = 1,["herbhand"] = 1,["skinhand"] = 1,["fishhand"] = 1,["minehand"] = 1,
["glovesagility"] = 1,["glovesstrength"] = 1,["gloveshaste"] = 1,["glovesriding"] = 1,["glovesridingskill"] = 1,["glovesmountspeed"] = 1,["glovesarcane"] = 1,["glovesshadow"] = 1,["glovesfire"] = 1,["glovesnature"] = 1,["glovesheal"] = 1,["glovesspelldamage"] = 1,["glovesthreat"] = 1,["glovesherb"] = 1,["glovesskin"] = 1,["glovesfish"] = 1,["glovesmine"] = 1,
["handagility"] = 1,["handstrength"] = 1,["handhaste"] = 1,["handriding"] = 1,["handridingskill"] = 1,["handmountspeed"] = 1,["handarcane"] = 1,["handshadow"] = 1,["handfire"] = 1,["handnature"] = 1,["handheal"] = 1,["handspelldamage"] = 1,["handthreat"] = 1,["handherb"] = 1,["handskin"] = 1,["handfish"] = 1,["handmine"] = 1,
["withagilitygloves"] = 1,["withstrengthgloves"] = 1,["withhastegloves"] = 1,["withridinggloves"] = 1,["withridingskillgloves"] = 1,["withmountspeedgloves"] = 1,["witharcanegloves"] = 1,["withshadowgloves"] = 1,["withfiregloves"] = 1,["withnaturegloves"] = 1,["withhealgloves"] = 1,["withspelldamagegloves"] = 1,["withthreatgloves"] = 1,["withherbgloves"] = 1,["withskingloves"] = 1,["withfishgloves"] = 1,["withminegloves"] = 1,
["withagilityhand"] = 1,["withstrengthhand"] = 1,["withhastehand"] = 1,["withridinghand"] = 1,["withridingskillhand"] = 1,["withmountspeedhand"] = 1,["witharcanehand"] = 1,["withshadowhand"] = 1,["withfirehand"] = 1,["withnaturehand"] = 1,["withhealhand"] = 1,["withspelldamagehand"] = 1,["withthreathand"] = 1,["withherbhand"] = 1,["withskinhand"] = 1,["withfishhand"] = 1,["withminehand"] = 1,
["needagilitygloves"] = 1,["needstrengthgloves"] = 1,["needhastegloves"] = 1,["needridinggloves"] = 1,["needridingskillgloves"] = 1,["needmountspeedgloves"] = 1,["needarcanegloves"] = 1,["needshadowgloves"] = 1,["needfiregloves"] = 1,["neednaturegloves"] = 1,["needhealgloves"] = 1,["needspelldamagegloves"] = 1,["needthreatgloves"] = 1,["needherbgloves"] = 1,["needskingloves"] = 1,["needfishgloves"] = 1,["needminegloves"] = 1,
["needagilityhand"] = 1,["needstrengthhand"] = 1,["needhastehand"] = 1,["needridinghand"] = 1,["needridingskillhand"] = 1,["needmountspeedhand"] = 1,["needarcanehand"] = 1,["needshadowhand"] = 1,["needfirehand"] = 1,["neednaturehand"] = 1,["needhealhand"] = 1,["needspelldamagehand"] = 1,["needthreathand"] = 1,["needherbhand"] = 1,["needskinhand"] = 1,["needfishhand"] = 1,["needminehand"] = 1,
["anyagilitygloves"] = 1,["anystrengthgloves"] = 1,["anyhastegloves"] = 1,["anyridinggloves"] = 1,["anyridingskillgloves"] = 1,["anymountspeedgloves"] = 1,["anyarcanegloves"] = 1,["anyshadowgloves"] = 1,["anyfiregloves"] = 1,["anynaturegloves"] = 1,["anyhealgloves"] = 1,["anyspelldamagegloves"] = 1,["anythreatgloves"] = 1,["anyherbgloves"] = 1,["anyskingloves"] = 1,["anyfishgloves"] = 1,["anyminegloves"] = 1,
["anyagilityhand"] = 1,["anystrengthhand"] = 1,["anyhastehand"] = 1,["anyridinghand"] = 1,["anyridingskillhand"] = 1,["anymountspeedhand"] = 1,["anyarcanehand"] = 1,["anyshadowhand"] = 1,["anyfirehand"] = 1,["anynaturehand"] = 1,["anyhealhand"] = 1,["anyspelldamagehand"] = 1,["anythreathand"] = 1,["anyherbhand"] = 1,["anyskinhand"] = 1,["anyfishhand"] = 1,["anyminehand"] = 1,
["anyoneagilitygloves"] = 1,["anyonestrengthgloves"] = 1,["anyonehastegloves"] = 1,["anyoneridinggloves"] = 1,["anyoneridingskillgloves"] = 1,["anyonemountspeedgloves"] = 1,["anyonearcanegloves"] = 1,["anyoneshadowgloves"] = 1,["anyonefiregloves"] = 1,["anyonenaturegloves"] = 1,["anyonehealgloves"] = 1,["anyonespelldamagegloves"] = 1,["anyonethreatgloves"] = 1,["anyoneherbgloves"] = 1,["anyoneskingloves"] = 1,["anyonefishgloves"] = 1,["anyoneminegloves"] = 1,
["anyoneagilityhand"] = 1,["anyonestrengthhand"] = 1,["anyonehastehand"] = 1,["anyoneridinghand"] = 1,["anyoneridingskillhand"] = 1,["anyonemountspeedhand"] = 1,["anyonearcanehand"] = 1,["anyoneshadowhand"] = 1,["anyonefirehand"] = 1,["anyonenaturehand"] = 1,["anyonehealhand"] = 1,["anyonespelldamagehand"] = 1,["anyonethreathand"] = 1,["anyoneherbhand"] = 1,["anyoneskinhand"] = 1,["anyonefishhand"] = 1,["anyoneminehand"] = 1,
["haveagilitygloves"] = 1,["havestrengthgloves"] = 1,["havehastegloves"] = 1,["haveridinggloves"] = 1,["haveridingskillgloves"] = 1,["havemountspeedgloves"] = 1,["havearcanegloves"] = 1,["haveshadowgloves"] = 1,["havefiregloves"] = 1,["havenaturegloves"] = 1,["havehealgloves"] = 1,["havespelldamagegloves"] = 1,["havethreatgloves"] = 1,["haveherbgloves"] = 1,["haveskingloves"] = 1,["havefishgloves"] = 1,["haveminegloves"] = 1,
["haveagilityhand"] = 1,["havestrengthhand"] = 1,["havehastehand"] = 1,["haveridinghand"] = 1,["haveridingskillhand"] = 1,["havemountspeedhand"] = 1,["havearcanehand"] = 1,["haveshadowhand"] = 1,["havefirehand"] = 1,["havenaturehand"] = 1,["havehealhand"] = 1,["havespelldamagehand"] = 1,["havethreathand"] = 1,["haveherbhand"] = 1,["haveskinhand"] = 1,["havefishhand"] = 1,["haveminehand"] = 1,
["agilityglovesplease"] = 2,["strengthglovesplease"] = 2,["hasteglovesplease"] = 2,["ridingglovesplease"] = 2,["ridingskillglovesplease"] = 2,["mountspeedglovesplease"] = 2,["arcaneglovesplease"] = 2,["shadowglovesplease"] = 2,["fireglovesplease"] = 2,["natureglovesplease"] = 2,["healglovesplease"] = 2,["spelldamageglovesplease"] = 2,["threatglovesplease"] = 2,["herbglovesplease"] = 2,["skinglovesplease"] = 2,["fishglovesplease"] = 2,["mineglovesplease"] = 2,
["agilityhandplease"] = 2,["strengthhandplease"] = 2,["hastehandplease"] = 2,["ridinghandplease"] = 2,["ridingskillhandplease"] = 2,["mountspeedhandplease"] = 2,["arcanehandplease"] = 2,["shadowhandplease"] = 2,["firehandplease"] = 2,["naturehandplease"] = 2,["healhandplease"] = 2,["spelldamagehandplease"] = 2,["threathandplease"] = 2,["herbhandplease"] = 2,["skinhandplease"] = 2,["fishhandplease"] = 2,["minehandplease"] = 2,
["agilityglovesenchant"] = 2,["strengthglovesenchant"] = 2,["hasteglovesenchant"] = 2,["ridingglovesenchant"] = 2,["ridingskillglovesenchant"] = 2,["mountspeedglovesenchant"] = 2,["arcaneglovesenchant"] = 2,["shadowglovesenchant"] = 2,["fireglovesenchant"] = 2,["natureglovesenchant"] = 2,["healglovesenchant"] = 2,["spelldamageglovesenchant"] = 2,["threatglovesenchant"] = 2,["herbglovesenchant"] = 2,["skinglovesenchant"] = 2,["fishglovesenchant"] = 2,["mineglovesenchant"] = 2,
["agilityhandenchant"] = 2,["strengthhandenchant"] = 2,["hastehandenchant"] = 2,["ridinghandenchant"] = 2,["ridingskillhandenchant"] = 2,["mountspeedhandenchant"] = 2,["arcanehandenchant"] = 2,["shadowhandenchant"] = 2,["firehandenchant"] = 2,["naturehandenchant"] = 2,["healhandenchant"] = 2,["spelldamagehandenchant"] = 2,["threathandenchant"] = 2,["herbhandenchant"] = 2,["skinhandenchant"] = 2,["fishhandenchant"] = 2,["minehandenchant"] = 2,

-- Boots
["enchantboots"] = .5,["bootsenchant"] = .5,["enchantbootswith"] = .75,
["staminaboots"] = 1,["mpboots"] = 1,["spiritboots"] = 1,["speedboots"] = 1,["minorspeedboots"] = 1,["runspeedboots"] = 1,["movespeedboots"] = 1,["agilityboots"] = 1,
["bootsstamina"] = 1,["bootsmp"] = 1,["bootsspirit"] = 1,["bootsspeed"] = 1,["bootsminorspeed"] = 1,["bootsrunspeed"] = 1,["bootsmovespeed"] = 1,["bootsagility"] = 1,
["withstaminaboots"] = 1,["withmpboots"] = 1,["withspiritboots"] = 1,["withspeedboots"] = 1,["withminorspeedboots"] = 1,["withrunspeedboots"] = 1,["withmovespeedboots"] = 1,["withagilityboots"] = 1,
["needstaminaboots"] = 1,["needmpboots"] = 1,["needspiritboots"] = 1,["needspeedboots"] = 1,["needminorspeedboots"] = 1,["needrunspeedboots"] = 1,["needmovespeedboots"] = 1,["needagilityboots"] = 1,
["anystaminaboots"] = 1,["anympboots"] = 1,["anyspiritboots"] = 1,["anyspeedboots"] = 1,["anyminorspeedboots"] = 1,["anyrunspeedboots"] = 1,["anymovespeedboots"] = 1,["anyagilityboots"] = 1,
["anyonestaminaboots"] = 1,["anyonempboots"] = 1,["anyonespiritboots"] = 1,["anyonespeedboots"] = 1,["anyoneminorspeedboots"] = 1,["anyonerunspeedboots"] = 1,["anyonemovespeedboots"] = 1,["anyoneagilityboots"] = 1,
["havestaminaboots"] = 1,["havempboots"] = 1,["havespiritboots"] = 1,["havespeedboots"] = 1,["haveminorspeedboots"] = 1,["haverunspeedboots"] = 1,["havemovespeedboots"] = 1,["haveagilityboots"] = 1,
["staminabootsplease"] = 2,["mpbootsplease"] = 2,["spiritbootsplease"] = 2,["speedbootsplease"] = 2,["minorspeedbootsplease"] = 2,["runspeedbootsplease"] = 2,["movespeedbootsplease"] = 2,["agilitybootsplease"] = 2,
["staminabootsenchant"] = 2,["mpbootsenchant"] = 2,["spiritbootsenchant"] = 2,["speedbootsenchant"] = 2,["minorspeedbootsenchant"] = 2,["runspeedbootsenchant"] = 2,["movespeedbootsenchant"] = 2,["agilitybootsenchant"] = 2,

-- Weapon
["enchantweapon"] = .5,["weaponenchant"] = .5,["enchantweaponwith"] = .75,
["spelldamageweapon"] = 1,["damageweapon"] = 1,["spiritweapon"] = 1,["intellectweapon"] = 1,["lifestealweapon"] = 1,["crusaderweapon"] = 1,["healweapon"] = 1,["unholyweapon"] = 1,["strengthweapon"] = 1,["agilityweapon"] = 1,["icyweapon"] = 1,["icychillweapon"] = 1,["fieryweapon"] = 1,["strikingweapon"] = 1,["demonslayingweapon"] = 1,["wintersmightweapon"] = 1,["beastslayerweapon"] = 1,["glowweapon"] = 1,
["weaponspelldamage"] = 1,["weapondamage"] = 1,["weaponspirit"] = 1,["weaponintellect"] = 1,["weaponlifesteal"] = 1,["weaponcrusader"] = 1,["weaponheal"] = 1,["weaponunholy"] = 1,["weaponstrength"] = 1,["weaponagility"] = 1,["weaponicy"] = 1,["weaponicychill"] = 1,["weaponfiery"] = 1,["weaponstriking"] = 1,["weapondemonslaying"] = 1,["weaponwintersmight"] = 1,["weaponbeastslayer"] = 1,["weaponglow"] = 1,
["withspelldamageweapon"] = 1,["withdamageweapon"] = 1,["withspiritweapon"] = 1,["withintellectweapon"] = 1,["withlifestealweapon"] = 1,["withcrusaderweapon"] = 1,["withhealweapon"] = 1,["withunholyweapon"] = 1,["withstrengthweapon"] = 1,["withagilityweapon"] = 1,["withicyweapon"] = 1,["withicychillweapon"] = 1,["withfieryweapon"] = 1,["withstrikingweapon"] = 1,["withdemonslayingweapon"] = 1,["withwintersmightweapon"] = 1,["withbeastslayerweapon"] = 1,["withglowweapon"] = 1,
["needspelldamageweapon"] = 1,["needdamageweapon"] = 1,["needspiritweapon"] = 1,["needintellectweapon"] = 1,["needlifestealweapon"] = 1,["needcrusaderweapon"] = 1,["needhealweapon"] = 1,["needunholyweapon"] = 1,["needstrengthweapon"] = 1,["needagilityweapon"] = 1,["needicyweapon"] = 1,["needicychillweapon"] = 1,["needfieryweapon"] = 1,["needstrikingweapon"] = 1,["needdemonslayingweapon"] = 1,["needwintersmightweapon"] = 1,["needbeastslayerweapon"] = 1,["needglowweapon"] = 1,
["anyspelldamageweapon"] = 1,["anydamageweapon"] = 1,["anyspiritweapon"] = 1,["anyintellectweapon"] = 1,["anylifestealweapon"] = 1,["anycrusaderweapon"] = 1,["anyhealweapon"] = 1,["anyunholyweapon"] = 1,["anystrengthweapon"] = 1,["anyagilityweapon"] = 1,["anyicyweapon"] = 1,["anyicychillweapon"] = 1,["anyfieryweapon"] = 1,["anystrikingweapon"] = 1,["anydemonslayingweapon"] = 1,["anywintersmightweapon"] = 1,["anybeastslayerweapon"] = 1,["anyglowweapon"] = 1,
["anyonespelldamageweapon"] = 1,["anyonedamageweapon"] = 1,["anyonespiritweapon"] = 1,["anyoneintellectweapon"] = 1,["anyonelifestealweapon"] = 1,["anyonecrusaderweapon"] = 1,["anyonehealweapon"] = 1,["anyoneunholyweapon"] = 1,["anyonestrengthweapon"] = 1,["anyoneagilityweapon"] = 1,["anyoneicyweapon"] = 1,["anyoneicychillweapon"] = 1,["anyonefieryweapon"] = 1,["anyonestrikingweapon"] = 1,["anyonedemonslayingweapon"] = 1,["anyonewintersmightweapon"] = 1,["anyonebeastslayerweapon"] = 1,["anyoneglowweapon"] = 1,
["havespelldamageweapon"] = 1,["havedamageweapon"] = 1,["havespiritweapon"] = 1,["haveintellectweapon"] = 1,["havelifestealweapon"] = 1,["havecrusaderweapon"] = 1,["havehealweapon"] = 1,["haveunholyweapon"] = 1,["havestrengthweapon"] = 1,["haveagilityweapon"] = 1,["haveicyweapon"] = 1,["haveicychillweapon"] = 1,["havefieryweapon"] = 1,["havestrikingweapon"] = 1,["havedemonslayingweapon"] = 1,["havewintersmightweapon"] = 1,["havebeastslayerweapon"] = 1,["haveglowweapon"] = 1,
["spelldamageweaponplease"] = 2,["damageweaponplease"] = 2,["spiritweaponplease"] = 2,["intellectweaponplease"] = 2,["lifestealweaponplease"] = 2,["crusaderweaponplease"] = 2,["healweaponplease"] = 2,["unholyweaponplease"] = 2,["strengthweaponplease"] = 2,["agilityweaponplease"] = 2,["icyweaponplease"] = 2,["icychillweaponplease"] = 2,["fieryweaponplease"] = 2,["strikingweaponplease"] = 2,["demonslayingweaponplease"] = 2,["wintersmightweaponplease"] = 2,["beastslayerweaponplease"] = 2,["glowweaponplease"] = 2,
["spelldamageweaponenchant"] = 2,["damageweaponenchant"] = 2,["spiritweaponenchant"] = 2,["intellectweaponenchant"] = 2,["lifestealweaponenchant"] = 2,["crusaderweaponenchant"] = 2,["healweaponenchant"] = 2,["unholyweaponenchant"] = 2,["strengthweaponenchant"] = 2,["agilityweaponenchant"] = 2,["icyweaponenchant"] = 2,["icychillweaponenchant"] = 2,["fieryweaponenchant"] = 2,["strikingweaponenchant"] = 2,["demonslayingweaponenchant"] = 2,["wintersmightweaponenchant"] = 2,["beastslayerweaponenchant"] = 2,["glowweaponenchant"] = 2,

-- Generic Professions Shared
["leatherworker"] = .5,["tailor"] = .5,["blacksmith"] = .5,["engineer"] = .5,["alchemist"] = .5,
["leatherworkercraft"] = .5,["tailorcraft"] = .5,["blacksmithcraft"] = .5,["engineercraft"] = .5,["alchemistcraft"] = .5,
["leatherworkercrafter"] = .5,["tailorcrafter"] = .5,["blacksmithcrafter"] = .5,["engineercrafter"] = .5,["alchemistcrafter"] = .5,
["leatherworkercraftera"] = .5,["tailorcraftera"] = .5,["blacksmithcraftera"] = .5,["engineercraftera"] = .5,["alchemistcraftera"] = .5,
["leatherworkercrafterme"] = 1,["tailorcrafterme"] = 1,["blacksmithcrafterme"] = 1,["engineercrafterme"] = 1,["alchemistcrafterme"] = 1,
["anyexperiencedenchant"] = 2.5,["anyexperiencedenhancement"] = 2.5,["anyexperiencedleatherworker"] = 2.5,["anyexperiencedtailor"] = 2.5,["anyexperiencedblacksmith"] = 2.5,["anyexperiencedengineer"] = 2.5,["anyexperiencedalchemist"] = 2.5,
["bsofferservice"] = 3,["blacksmithofferservice"] = 3,["enchantofferservice"] = 3,["leatherworkerofferservice"] = 3,["tailorofferservice"] = 3,["engineerofferservice"] = 3,["alchemistofferservice"] = 3,
["anyleatherworkerable"] = 1,["anyleatherworkeraround"] = 1,["anyleatherworkerhere"] = 1,["anytailorable"] = 1,["anytailoraround"] = 1,["anyengineerable"] = 1,["anyengineeraround"] = 1,
["anyalchemistable"] = 1,["anyalchemistaround"] = 2,["anyhordeblacksmith"] = 1,["anyallianceblacksmith"] = 1,["elixirandpotion"] = 1,["potionandelixir"] = 1,
["lfalchemist"] = 3,["anyalchemist"] = 1.5,["lfengineer"] = 3,["anyengineer"] = 1.5,["lftailor"] = 3,["anytailor"] = 1.5,["lfleatherworker"] = 3,["anyleatherworker"] = 1.5,
["lfleatherworker"] = 3,["anyleatherworker"] = 1.5,["lfblacksmith"] = 3,["lfsmith"] = .5,["anyblacksmith"] = 1.5,["lfbs"] = 3,["anybs"] = 1.5,["lfminer"] = 3,["anyminer"] = 1.5,["lfenchant"] = 3,["anyenchant"] = 1.5,
["leatherworkerinorgrimmar"] = 1.5,["leatherworkerinstormwind"] = 1.5,["leatherworkerinironforge"] = 1.5,["leatherworkerinundercity"] = 1.5,
["blacksmithinorgrimmar"] = 1.5,["blacksmithinstormwind"] = 1.5,["blacksmithinironforge"] = 1.5,["blacksmithinundercity"] = 1.5,
["engineerinorgrimmar"] = 1.5,["engineerinstormwind"] = 1.5,["engineerinironforge"] = 1.5,["engineerinundercity"] = 1.5,
["tailorinorgrimmar"] = 1.5,["tailorinstormwind"] = 1.5,["tailorinironforge"] = 1.5,["tailorinundercity"] = 1.5,
["alchemistinorgrimmar"] = 1.5,["alchemistinstormwind"] = 1.5,["alchemistinironforge"] = 1.5,["alchemistinundercity"] = 1.5,

["enchanttailor"] = 1,["tailorenchant"] = 1,
["enchantmostaround"] = 1,["tailormostaround"] = 1,
["enchanttailormostaround"] = 1,["tailorenchantmostaround"] = 1,
["argear"] = .5,["frgear"] = .5,["srgear"] = .5,["nrgear"] = .5,

-- Blacksmith
["blacksmithservice"] = 1.5,
["blacksmithapplyhitem"] = 2.5,["anyblacksmithwith"] = .5,["anyblacksmithfor"] = .5,["blacksmitharound"] = 2,
["anyblacksmithable"] = 1,["anyblacksmitharound"] = 1,["anyblacksmiththatcan"] = 1,["anyblacksmithwhocan"] = 1,["anyblacksmithwhowill"] = 1,
["canblacksmith"] = 1,["canblacksmithcraft"] = 1,["canblacksmithmake"] = 1,["canblacksmithapply"] = 1,["canblacksmithathitem"] = 1,
["anyoneapply"] = 3,["ableapply"] = 2,["cananyoneapply"] = 2.5,["toapplyon"] = .5,["toapplyto"] = .5,
["applyspurs"] = 2.5,["applyhitem"] = 3,["applyhavehitem"] = 1,["mithrilspursanyone"] = 2,
["canapply"] = .5,["canapplyhitem"] = 1,["anyblacksmithforapply"] = 1,

-- Portal
["portal"] = .5,["toportal"] = .5,["forportal"] = .5,["foraportal"] = .5,["anyoneportal"] = .5,["anyoneportalfor"] = .5,["lfportal"] = 3,["ineedportal"] = 1,["pleaseportal"] = 1,["magepleaseportal"] = .5,
["buyportal"] = .5,["buyingportal"] = .5,["needportal"] = 2.25,["portalservice"] = 3,["gportal"] = 3,["offerportal"] = 2,["sellportal"] = .5,["sellingportal"] = 1,["buyportalfromme"] = 1,

["portalplease"] = .5,["buyportalplease"] = 1.5,["buyingportalplease"] = .5,["needportalplease"] = 2.25,["whocanopenportal"] = 1,["doyouhaveportal"] = .5,
["createportal"] = 2,["portalmeto"] = 1.5,["anyportal"] = 1,["makeaportal"] = .5,["cananyoneportal"] = 1,["cananyoneportalme"] = 1.25,["willanyoneportalme"] = 2.25,["anyonecanportal"] = 1,
["portalwherever"] = .5,["portalwhereveryouneed"] = 1,["anyoneneedportal"] = 1,
["anymage"] = 1,["anymagehere"] = .5,["anymageherefor"] = .5,["magemakemeportal"] = 2,["mageportal"] = .5,["magetoportal"] = 1,["magecanyou"] = .5,["magecanyoumake"] = .5,["magecanyoucreate"] = .5,["magecanmake"] = .5,["magecanmakeme"] = .5,
["makemea"] = .5,["makemeaportal"] = 1.5,
["everyportalhere"] = 2,["everyportalaround"] = 2,

["stormwindportal"] = 1.5,["portalstormwind"] = 1.5,["stormwindportalplease"] = 1,["pleasestormwindportal"] = 1,["portalstormwindplease"] = 1.5,["pleaseportalstormwind"] = 1,["buyportalstormwind"] = 1.5,["buystormwindportal"] = 1.5,["needportalstormwind"] = 1.5,["needstormwindportal"] = 1.5,["haveportalstormwind"] = 1,["havestormwindportal"] = 1,["anyportalstormwind"] = 1,["anystormwindportal"] = 1,["anystormwindportalaround"] = 1,
["ironforgeportal"] = 1.5,["portalironforge"] = 1.5,["ironforgeportalplease"] = 1,["pleaseironforgeportal"] = 1,["portalironforgeplease"] = 1.5,["pleaseportalironforge"] = 1,["buyportalironforge"] = 1.5,["buyironforgeportal"] = 1.5,["needportalironforge"] = 1.5,["needironforgeportal"] = 1.5,["haveportalironforge"] = 1,["haveironforgeportal"] = 1,["anyportalironforge"] = 1,["anyironforgeportal"] = 1,["anyironforgeportalaround"] = 1,
["ifportalplease"] = 2.5,["pleaseifportal"] = 2.5,["portalifplease"] = 2.5,["pleaseportalif"] = 2.5,["buyportalif"] = 2.5,["buyifportal"] = 2.5,["needportalif"] = 2.5,["needifportal"] = 2.5,["haveportalif"] = 2,["haveifportal"] = 2,["anyportalif"] = 2.5,["anyifportal"] = 2.5,["anyifportalaround"] = 2.5,
["darnassusportal"] = 1.5,["portaldarnassus"] = 1.5,["darnassusportalplease"] = 1,["pleasedarnassusportal"] = 1,["portaldarnassusplease"] = 1.5,["pleaseportaldarnassus"] = 1,["buyportaldarnassus"] = 1.5,["buydarnassusportal"] = 1.5,["needportaldarnassus"] = 1.5,["needdarnassusportal"] = 1.5,["haveportaldarnassus"] = 1,["havedarnassusportal"] = 1,["anyportaldarnassus"] = 1,["anydarnassusportal"] = 1,["anydarnassusportalaround"] = 1,
["orgrimmarportal"] = 1.5,["portalorgrimmar"] = 1.5,["orgrimmarportalplease"] = 1,["pleaseorgrimmarportal"] = 1,["portalorgrimmarplease"] = 1.5,["pleaseportalorgrimmar"] = 1,["buyportalorgrimmar"] = 1.5,["buyorgrimmarportal"] = 1.5,["needportalorgrimmar"] = 1.5,["needorgrimmarportal"] = 1.5,["haveportalorgrimmar"] = 1,["haveorgrimmarportal"] = 1,["anyportalorgrimmar"] = 1,["anyorgrimmarportal"] = 1,["anyorgrimmarportalaround"] = 1,
["undercityportal"] = 1.5,["portalundercity"] = 1.5,["undercityportalplease"] = 1,["pleaseundercityportal"] = 1,["portalundercityplease"] = 1.5,["pleaseportalundercity"] = 1,["buyportalundercity"] = 1.5,["buyundercityportal"] = 1.5,["needportalundercity"] = 1.5,["needundercityportal"] = 1.5,["haveportalundercity"] = 1,["haveundercityportal"] = 1,["anyportalundercity"] = 1,["anyundercityportal"] = 1,["anyundercityportalaround"] = 1,
["thunderbluffportal"] = 1.5,["portalthunderbluff"] = 1.5,["thunderbluffportalplease"] = 1,["pleasethunderbluffportal"] = 1,["portalthunderbluffplease"] = 1.5,["pleaseportalthunderbluff"] = 1,["buyportalthunderbluff"] = 1.5,["buythunderbluffportal"] = 1.5,["needportalthunderbluff"] = 1.5,["needthunderbluffportal"] = 1.5,["haveportalthunderbluff"] = 1,["havethunderbluffportal"] = 1,["anyportalthunderbluff"] = 1,["anythunderbluffportal"] = 1,["anythunderbluffportalaround"] = 1,
["thunderportal"] = 1.5,["portalthunder"] = 1.5,["thunderportalplease"] = 1,["pleasethunderportal"] = 1,["portalthunderplease"] = 1.5,["pleaseportalthunder"] = 1,["buyportalthunder"] = 1.5,["buythunderportal"] = 1.5,["needportalthunder"] = 1.5,["needthunderportal"] = 1.5,["haveportalthunder"] = 1,["havethunderportal"] = 1,["anyportalthunder"] = 1,["anythunderportal"] = 1,["anythunderportalaround"] = 1,
["hyjalportal"] = 1.5,["portalhyjal"] = 1.5,["hyjalportalplease"] = 1,["pleasehyjalportal"] = 1,["portalhyjalplease"] = 1.5,["pleaseportalhyjal"] = 1,["buyportalhyjal"] = 1.5,["buyhyjalportal"] = 1.5,["needportalhyjal"] = 1.5,["needhyjalportal"] = 1.5,["haveportalhyjal"] = 1,["havehyjalportal"] = 1,["anyportalhyjal"] = 1,["anyhyjalportal"] = 1,["anyhyjalportalaround"] = 1,
["winterspringportal"] = 1.5,["portalwinterspring"] = 1.5,["winterspringportalplease"] = 1,["pleasewinterspringportal"] = 1,["portalwinterspringplease"] = 1.5,["pleaseportalwinterspring"] = 1,["buyportalwinterspring"] = 1.5,["buywinterspringportal"] = 1.5,["needportalwinterspring"] = 1.5,["needwinterspringportal"] = 1.5,["haveportalwinterspring"] = 1,["havewinterspringportal"] = 1,["anyportalwinterspring"] = 1,["anywinterspringportal"] = 1,["anywinterspringportalaround"] = 1,
["swampportal"] = 1.5,["portalswamp"] = 1.5,["swampportalplease"] = 1,["pleaseswampportal"] = 1,["portalswampplease"] = 1.5,["pleaseportalswamp"] = 1,["buyportalswamp"] = 1.5,["buyswampportal"] = 1.5,["needportalswamp"] = 1.5,["needswampportal"] = 1.5,["haveportalswamp"] = 1,["haveswampportal"] = 1,["anyportalswamp"] = 1,["anyswampportal"] = 1,["anyswampportalaround"] = 1,
["stonardportal"] = 1.5,["portalstonard"] = 1.5,["stonardportalplease"] = 1,["pleasestonardportal"] = 1,["portalstonardplease"] = 1.5,["pleaseportalstonard"] = 1,["buyportalstonard"] = 1.5,["buystonardportal"] = 1.5,["needportalstonard"] = 1.5,["needstonardportal"] = 1.5,["haveportalstonard"] = 1,["havestonardportal"] = 1,["anyportalstonard"] = 1,["anystonardportal"] = 1,["anystonardportalaround"] = 1,
["theramoreportal"] = 1.5,["portaltheramore"] = 1.5,["theramoreportalplease"] = 1,["pleasetheramoreportal"] = 1,["portaltheramoreplease"] = 1.5,["pleaseportaltheramore"] = 1,["buyportaltheramore"] = 1.5,["buytheramoreportal"] = 1.5,["needportaltheramore"] = 1.5,["needtheramoreportal"] = 1.5,["haveportaltheramore"] = 1,["havetheramoreportal"] = 1,["anyportaltheramore"] = 1,["anytheramoreportal"] = 1,["anytheramoreportalaround"] = 1,
["alahthalasportal"] = 1.5,["portalalahthalas"] = 1.5,["alahthalasportalplease"] = 1,["pleasealahthalasportal"] = 1,["portalalahthalasplease"] = 1.5,["pleaseportalalahthalas"] = 1,["buyportalalahthalas"] = 1.5,["buyalahthalasportal"] = 1.5,["needportalalahthalas"] = 1.5,["needalahthalasportal"] = 1.5,["haveportalalahthalas"] = 1,["havealahthalasportal"] = 1,["anyportalalahthalas"] = 1,["anyalahthalasportal"] = 1,["anyalahthalasportalaround"] = 1,
["atportalplease"] = 2.5,["pleaseatportal"] = 2.5,["portalatplease"] = 2.5,["pleaseportalat"] = 2.5,["buyportalat"] = 2.5,["buyatportal"] = 2.5,["needportalat"] = 2.5,["needatportal"] = 2.5,["haveportalat"] = 2,["haveatportal"] = 2,["anyportalat"] = 2.5,["anyatportal"] = 2.5,["anyatportalaround"] = 2.5,
["alahportal"] = 1.5,["portalalah"] = 1.5,["alahportalplease"] = 1,["pleasealahportal"] = 1,["portalalahplease"] = 1.5,["pleaseportalalah"] = 1,["buyportalalah"] = 1.5,["buyalahportal"] = 1.5,["needportalalah"] = 1.5,["needalahportal"] = 1.5,["haveportalalah"] = 1,["havealahportal"] = 1,["anyportalalah"] = 1,["anyalahportal"] = 1,["anyalahportalaround"] = 1,

-- Summon
["summon"] = .25,["anysummon"] = .25,["summonto"] = .5,["quicksummon"] = 1,["anysummon"] = .5,["anysummonto"] = 1,["anyoneneedanysummon"] = 3,["ineedsummon"] = 1,["fastsummon"] = 1,["summonwme"] = 1,
["lfsummon"] = 1,["lfmsummon"] = 1,["lfgsummon"] = 1,["lfsum"] = 1,["lftransport"] = 1,
["lfanysummon"] = 1,["needwarlock"] = .25,["needlock"] = .25,["needwarlockto"] = .5,["needlockto"] = .5,["needwarlocktosummon"] = 1,["needlocktosummon"] = 1,["requestsummon"] = 1.5,["needsummon"] = 2.25,["buyingsummon"] = 3,["buysummon"] = 2,
["summonservice"] = 20,["gsummon"] = 3,["offersummon"] = 2,
["sellsummon"] = 1.5,["sellingsummon"] = 3,
["cananyonesummonme"] = 2.25,["willanyonesummonme"] = 2.25,["lflocktosummon"] = .25,["lflockforsummon"] = .25,
["payinggoldsummon"] = 2,["payingmoneysummon"] = 2,["warlocktosummon"] = 1,["locktosummon"] = 1,["summonmeto"] = 2.5,["cansummonmeto"] = .5,["anyonesummonmeto"] = .5,["abletosummon"] = 1,["willingtosummon"] = 1,
["anyoneneedtosummon"] = .5,["needtosummon"] = .5,["needtosummonme"] = .5,["anyoneneedtosummonme"] = .5,
["anylockable"] = .5,["anywarlockable"] = .5,["anywarlockin"] = .5,["lockservice"] = 3,["warlockservice"] = 20,
["canwarlock"] = .5,["canwarlockhelpsummon"] = 1,["canwarlocksummon"] = 1,["canwarlocksummonme"] = .5,["summonmeplease"] = 2.25,["helpsummonplease"] = 1.25,["helpsummon"] = 1,

["havesummon"] = .5,["cansummon"] = .5,["summonaround"] = .5, -- cannot go over 3.25 with things associated with group summon advertisements(have summon, summon available, etc).. lf 2.5, summon .25, then +5

-- Summon specific, remove dungeons from first line
["alterac"] = .25,["alteracsummon"] = 1.5,["summonalterac"] = 1.5,["summontoalterac"] = 2,["lfalteracsummon"] = 1,["lfsummonalterac"] = 1,["needalteracsummon"] = 1,["needsummonalterac"] = 1,["anyalteracsummon"] = 2,["anysummonalterac"] = 2,["anyonesummonalterac"] = 2,["anyonealteracsummon"] = 2,["buyingalteracsummon"] = 1,["buyalteracsummon"] = 1,["sellingalteracsummon"] = 1,["sellalteracsummon"] = 1,["foralteracsummon"] = .5,["summonalteracplease"] = 2,["summontoalteracplease"] = 2,["anywarlockinalterac"] = 1.5,["anylockinalterac"] = 1.5,["alteracfastsummon"] = 1.5,["alteracsummonwme"] = 1,["alteracsummonaround"] = 1.5,
["aqsummon"] = 1.5,["summonaq"] = 1.5,["summontoaq"] = 2,["lfaqsummon"] = 1,["lfsummonaq"] = 1,["needaqsummon"] = 1,["needsummonaq"] = 1,["anyaqsummon"] = 2,["anysummonaq"] = 2,["anyonesummonaq"] = 2,["anyoneaqsummon"] = 2,["buyingaqsummon"] = 1,["buyaqsummon"] = 1,["sellingaqsummon"] = 1,["sellaqsummon"] = 1,["foraqsummon"] = .5,["summonaqplease"] = 2,["summontoaqplease"] = 2,["anywarlockinaq"] = 1.5,["anylockinaq"] = 1.5,["aqfastsummon"] = 1.5,["aqsummonwme"] = 1,["aqsummonaround"] = 1.5,
["arathi"] = .25,["arathisummon"] = 1.5,["summonarathi"] = 1.5,["summontoarathi"] = 2,["lfarathisummon"] = 1,["lfsummonarathi"] = 1,["needarathisummon"] = 1,["needsummonarathi"] = 1,["anyarathisummon"] = 2,["anysummonarathi"] = 2,["anyonesummonarathi"] = 2,["anyonearathisummon"] = 2,["buyingarathisummon"] = 1,["buyarathisummon"] = 1,["sellingarathisummon"] = 1,["sellarathisummon"] = 1,["forarathisummon"] = .5,["summonarathiplease"] = 2,["summontoarathiplease"] = 2,["anywarlockinarathi"] = 1.5,["anylockinarathi"] = 1.5,["arathifastsummon"] = 1.5,["arathisummonwme"] = 1,["arathisummonaround"] = 1.5,
["arathihighlands"] = .25,["arathihighlandssummon"] = 1.5,["summonarathihighlands"] = 1.5,["summontoarathihighlands"] = 2,["lfarathihighlandssummon"] = 1,["lfsummonarathihighlands"] = 1,["needarathihighlandssummon"] = 1,["needsummonarathihighlands"] = 1,["anyarathihighlandssummon"] = 2,["anysummonarathihighlands"] = 2,["anyonesummonarathihighlands"] = 2,["anyonearathihighlandssummon"] = 2,["buyingarathihighlandssummon"] = 1,["buyarathihighlandssummon"] = 1,["sellingarathihighlandssummon"] = 1,["sellarathihighlandssummon"] = 1,["forarathihighlandssummon"] = .5,["summonarathihighlandsplease"] = 2,["summontoarathihighlandsplease"] = 2,["anywarlockinarathihighlands"] = 1.5,["anylockinarathihighlands"] = 1.5,["arathihighlandsfastsummon"] = 1.5,["arathihighlandssummonwme"] = 1,["arathihighlandssummonaround"] = 1.5,
["ashenvale"] = .25,["ashenvalesummon"] = 1.5,["summonashenvale"] = 1.5,["summontoashenvale"] = 2,["lfashenvalesummon"] = 1,["lfsummonashenvale"] = 1,["needashenvalesummon"] = 1,["needsummonashenvale"] = 1,["anyashenvalesummon"] = 2,["anysummonashenvale"] = 2,["anyonesummonashenvale"] = 2,["anyoneashenvalesummon"] = 2,["buyingashenvalesummon"] = 1,["buyashenvalesummon"] = 1,["sellingashenvalesummon"] = 1,["sellashenvalesummon"] = 1,["forashenvalesummon"] = .5,["summonashenvaleplease"] = 2,["summontoashenvaleplease"] = 2,["anywarlockinashenvale"] = 1.5,["anylockinashenvale"] = 1.5,["ashenvalefastsummon"] = 1.5,["ashenvalesummonwme"] = 1,["ashenvalesummonaround"] = 1.5,
["azshara"] = .25,["azsharasummon"] = 1.5,["summonazshara"] = 1.5,["summontoazshara"] = 2,["lfazsharasummon"] = 1,["lfsummonazshara"] = 1,["needazsharasummon"] = 1,["needsummonazshara"] = 1,["anyazsharasummon"] = 2,["anysummonazshara"] = 2,["anyonesummonazshara"] = 2,["anyoneazsharasummon"] = 2,["buyingazsharasummon"] = 1,["buyazsharasummon"] = 1,["sellingazsharasummon"] = 1,["sellazsharasummon"] = 1,["forazsharasummon"] = .5,["summonazsharaplease"] = 2,["summontoazsharaplease"] = 2,["anywarlockinazshara"] = 1.5,["anylockinazshara"] = 1.5,["azsharafastsummon"] = 1.5,["azsharasummonwme"] = 1,["azsharasummonaround"] = 1.5,
["badlands"] = .25,["badlandssummon"] = 1.5,["summonbadlands"] = 1.5,["summontobadlands"] = 2,["lfbadlandssummon"] = 1,["lfsummonbadlands"] = 1,["needbadlandssummon"] = 1,["needsummonbadlands"] = 1,["anybadlandssummon"] = 2,["anysummonbadlands"] = 2,["anyonesummonbadlands"] = 2,["anyonebadlandssummon"] = 2,["buyingbadlandssummon"] = 1,["buybadlandssummon"] = 1,["sellingbadlandssummon"] = 1,["sellbadlandssummon"] = 1,["forbadlandssummon"] = .5,["summonbadlandsplease"] = 2,["summontobadlandsplease"] = 2,["anywarlockinbadlands"] = 1.5,["anylockinbadlands"] = 1.5,["badlandsfastsummon"] = 1.5,["badlandssummonwme"] = 1,["badlandssummonaround"] = 1.5,
["barrens"] = .25,["barrenssummon"] = 1.5,["summonbarrens"] = 1.5,["summontobarrens"] = 2,["lfbarrenssummon"] = 1,["lfsummonbarrens"] = 1,["needbarrenssummon"] = 1,["needsummonbarrens"] = 1,["anybarrenssummon"] = 2,["anysummonbarrens"] = 2,["anyonesummonbarrens"] = 2,["anyonebarrenssummon"] = 2,["buyingbarrenssummon"] = 1,["buybarrenssummon"] = 1,["sellingbarrenssummon"] = 1,["sellbarrenssummon"] = 1,["forbarrenssummon"] = .5,["summonbarrensplease"] = 2,["summontobarrensplease"] = 2,["anywarlockinbarrens"] = 1.5,["anylockinbarrens"] = 1.5,["barrensfastsummon"] = 1.5,["barrenssummonwme"] = 1,["barrenssummonaround"] = 1.5,
["blackrocksummon"] = 1.5,["summonblackrock"] = 1.5,["summontoblackrock"] = 2,["lfblackrocksummon"] = 1,["lfsummonblackrock"] = 1,["needblackrocksummon"] = 1,["needsummonblackrock"] = 1,["anyblackrocksummon"] = 2,["anysummonblackrock"] = 2,["anyonesummonblackrock"] = 2,["anyoneblackrocksummon"] = 2,["buyingblackrocksummon"] = 1,["buyblackrocksummon"] = 1,["sellingblackrocksummon"] = 1,["sellblackrocksummon"] = 1,["forblackrocksummon"] = .5,["summonblackrockplease"] = 2,["summontoblackrockplease"] = 2,["anywarlockinblackrock"] = 1.5,["anylockinblackrock"] = 1.5,["blackrockfastsummon"] = 1.5,["blackrocksummonwme"] = 1,["blackrocksummonaround"] = 1.5,
["blackrockmountain"] = .25,["blackrockmountainsummon"] = 1.5,["summonblackrockmountain"] = 1.5,["summontoblackrockmountain"] = 2,["lfblackrockmountainsummon"] = 1,["lfsummonblackrockmountain"] = 1,["needblackrockmountainsummon"] = 1,["needsummonblackrockmountain"] = 1,["anyblackrockmountainsummon"] = 2,["anysummonblackrockmountain"] = 2,["anyonesummonblackrockmountain"] = 2,["anyoneblackrockmountainsummon"] = 2,["buyingblackrockmountainsummon"] = 1,["buyblackrockmountainsummon"] = 1,["sellingblackrockmountainsummon"] = 1,["sellblackrockmountainsummon"] = 1,["forblackrockmountainsummon"] = .5,["summonblackrockmountainplease"] = 2,["summontoblackrockmountainplease"] = 2,["anywarlockinblackrockmountain"] = 1.5,["anylockinblackrockmountain"] = 1.5,["blackrockmountainfastsummon"] = 1.5,["blackrockmountainsummonwme"] = 1,["blackrockmountainsummonaround"] = 1.5,
["blasted"] = .25,["blastedsummon"] = 1.5,["summonblasted"] = 1.5,["summontoblasted"] = 2,["lfblastedsummon"] = 1,["lfsummonblasted"] = 1,["needblastedsummon"] = 1,["needsummonblasted"] = 1,["anyblastedsummon"] = 2,["anysummonblasted"] = 2,["anyonesummonblasted"] = 2,["anyoneblastedsummon"] = 2,["buyingblastedsummon"] = 1,["buyblastedsummon"] = 1,["sellingblastedsummon"] = 1,["sellblastedsummon"] = 1,["forblastedsummon"] = .5,["summonblastedplease"] = 2,["summontoblastedplease"] = 2,["anywarlockinblasted"] = 1.5,["anylockinblasted"] = 1.5,["blastedfastsummon"] = 1.5,["blastedsummonwme"] = 1,["blastedsummonaround"] = 1.5,
["blastedlands"] = .25,["blastedlandssummon"] = 1.5,["summonblastedlands"] = 1.5,["summontoblastedlands"] = 2,["lfblastedlandssummon"] = 1,["lfsummonblastedlands"] = 1,["needblastedlandssummon"] = 1,["needsummonblastedlands"] = 1,["anyblastedlandssummon"] = 2,["anysummonblastedlands"] = 2,["anyonesummonblastedlands"] = 2,["anyoneblastedlandssummon"] = 2,["buyingblastedlandssummon"] = 1,["buyblastedlandssummon"] = 1,["sellingblastedlandssummon"] = 1,["sellblastedlandssummon"] = 1,["forblastedlandssummon"] = .5,["summonblastedlandsplease"] = 2,["summontoblastedlandsplease"] = 2,["anywarlockinblastedlands"] = 1.5,["anylockinblastedlands"] = 1.5,["blastedlandsfastsummon"] = 1.5,["blastedlandssummonwme"] = 1,["blastedlandssummonaround"] = 1.5,
["bootybay"] = .25,["bootybaysummon"] = 1.5,["summonbootybay"] = 1.5,["summontobootybay"] = 2,["lfbootybaysummon"] = 1,["lfsummonbootybay"] = 1,["needbootybaysummon"] = 1,["needsummonbootybay"] = 1,["anybootybaysummon"] = 2,["anysummonbootybay"] = 2,["anyonesummonbootybay"] = 2,["anyonebootybaysummon"] = 2,["buyingbootybaysummon"] = 1,["buybootybaysummon"] = 1,["sellingbootybaysummon"] = 1,["sellbootybaysummon"] = 1,["forbootybaysummon"] = .5,["summonbootybayplease"] = 2,["summontobootybayplease"] = 2,["anywarlockinbootybay"] = 1.5,["anylockinbootybay"] = 1.5,["bootybayfastsummon"] = 1.5,["bootybaysummonwme"] = 1,["bootybaysummonaround"] = 1.5,
["brm"] = .25,["brmsummon"] = 1.5,["summonbrm"] = 1.5,["summontobrm"] = 2,["lfbrmsummon"] = 1,["lfsummonbrm"] = 1,["needbrmsummon"] = 1,["needsummonbrm"] = 1,["anybrmsummon"] = 2,["anysummonbrm"] = 2,["anyonesummonbrm"] = 2,["anyonebrmsummon"] = 2,["buyingbrmsummon"] = 1,["buybrmsummon"] = 1,["sellingbrmsummon"] = 1,["sellbrmsummon"] = 1,["forbrmsummon"] = .5,["summonbrmplease"] = 2,["summontobrmplease"] = 2,["anywarlockinbrm"] = 1.5,["anylockinbrm"] = 1.5,["brmfastsummon"] = 1.5,["brmsummonwme"] = 1,["brmsummonaround"] = 1.5,
["darkmoon"] = .25,["darkmoonsummon"] = 1.5,["summondarkmoon"] = 1.5,["summontodarkmoon"] = 2,["lfdarkmoonsummon"] = 1,["lfsummondarkmoon"] = 1,["needdarkmoonsummon"] = 1,["needsummondarkmoon"] = 1,["anydarkmoonsummon"] = 2,["anysummondarkmoon"] = 2,["anyonesummondarkmoon"] = 2,["anyonedarkmoonsummon"] = 2,["buyingdarkmoonsummon"] = 1,["buydarkmoonsummon"] = 1,["sellingdarkmoonsummon"] = 1,["selldarkmoonsummon"] = 1,["fordarkmoonsummon"] = .5,["summondarkmoonplease"] = 2,["summontodarkmoonplease"] = 2,["anywarlockindarkmoon"] = 1.5,["anylockindarkmoon"] = 1.5,["darkmoonfastsummon"] = 1.5,["darkmoonsummonwme"] = 1,["darkmoonsummonaround"] = 1.5,
["darkmoonfaire"] = .25,["darkmoonfairesummon"] = 1.5,["summondarkmoonfaire"] = 1.5,["summontodarkmoonfaire"] = 2,["lfdarkmoonfairesummon"] = 1,["lfsummondarkmoonfaire"] = 1,["needdarkmoonfairesummon"] = 1,["needsummondarkmoonfaire"] = 1,["anydarkmoonfairesummon"] = 2,["anysummondarkmoonfaire"] = 2,["anyonesummondarkmoonfaire"] = 2,["anyonedarkmoonfairesummon"] = 2,["buyingdarkmoonfairesummon"] = 1,["buydarkmoonfairesummon"] = 1,["sellingdarkmoonfairesummon"] = 1,["selldarkmoonfairesummon"] = 1,["fordarkmoonfairesummon"] = .5,["summondarkmoonfaireplease"] = 2,["summontodarkmoonfaireplease"] = 2,["anywarlockindarkmoonfaire"] = 1.5,["anylockindarkmoonfaire"] = 1.5,["darkmoonfairefastsummon"] = 1.5,["darkmoonfairesummonwme"] = 1,["darkmoonfairesummonaround"] = 1.5,
["darnassus"] = .25,["darnassussummon"] = 1.5,["summondarnassus"] = 1.5,["summontodarnassus"] = 2,["lfdarnassussummon"] = 1,["lfsummondarnassus"] = 1,["needdarnassussummon"] = 1,["needsummondarnassus"] = 1,["anydarnassussummon"] = 2,["anysummondarnassus"] = 2,["anyonesummondarnassus"] = 2,["anyonedarnassussummon"] = 2,["buyingdarnassussummon"] = 1,["buydarnassussummon"] = 1,["sellingdarnassussummon"] = 1,["selldarnassussummon"] = 1,["fordarnassussummon"] = .5,["summondarnassusplease"] = 2,["summontodarnassusplease"] = 2,["anywarlockindarnassus"] = 1.5,["anylockindarnassus"] = 1.5,["darnassusfastsummon"] = 1.5,["darnassussummonwme"] = 1,["darnassussummonaround"] = 1.5,
["desolace"] = .25,["desolacesummon"] = 1.5,["summondesolace"] = 1.5,["summontodesolace"] = 2,["lfdesolacesummon"] = 1,["lfsummondesolace"] = 1,["needdesolacesummon"] = 1,["needsummondesolace"] = 1,["anydesolacesummon"] = 2,["anysummondesolace"] = 2,["anyonesummondesolace"] = 2,["anyonedesolacesummon"] = 2,["buyingdesolacesummon"] = 1,["buydesolacesummon"] = 1,["sellingdesolacesummon"] = 1,["selldesolacesummon"] = 1,["fordesolacesummon"] = .5,["summondesolaceplease"] = 2,["summontodesolaceplease"] = 2,["anywarlockindesolace"] = 1.5,["anylockindesolace"] = 1.5,["desolacefastsummon"] = 1.5,["desolacesummonwme"] = 1,["desolacesummonaround"] = 1.5,
["diremaulsummon"] = 1.5,["summondiremaul"] = 1.5,["summontodiremaul"] = 2,["lfdiremaulsummon"] = 1,["lfsummondiremaul"] = 1,["needdiremaulsummon"] = 1,["needsummondiremaul"] = 1,["anydiremaulsummon"] = 2,["anysummondiremaul"] = 2,["anyonesummondiremaul"] = 2,["anyonediremaulsummon"] = 2,["buyingdiremaulsummon"] = 1,["buydiremaulsummon"] = 1,["sellingdiremaulsummon"] = 1,["selldiremaulsummon"] = 1,["fordiremaulsummon"] = .5,["summondiremaulplease"] = 2,["summontodiremaulplease"] = 2,["anywarlockindiremaul"] = 1.5,["anylockindiremaul"] = 1.5,["diremaulfastsummon"] = 1.5,["diremaulsummonwme"] = 1,["diremaulsummonaround"] = 1.5,
["dmsummon"] = 1.5,["summondm"] = 1.5,["summontodm"] = 2,["lfdmsummon"] = 1,["lfsummondm"] = 1,["needdmsummon"] = 1,["needsummondm"] = 1,["anydmsummon"] = 2,["anysummondm"] = 2,["anyonesummondm"] = 2,["anyonedmsummon"] = 2,["buyingdmsummon"] = 1,["buydmsummon"] = 1,["sellingdmsummon"] = 1,["selldmsummon"] = 1,["fordmsummon"] = .5,["summondmplease"] = 2,["summontodmplease"] = 2,["anywarlockindm"] = 1.5,["anylockindm"] = 1.5,["dmfastsummon"] = 1.5,["dmsummonwme"] = 1,["dmsummonaround"] = 1.5,
["epl"] = .25,["eplsummon"] = 1.5,["summonepl"] = 1.5,["summontoepl"] = 2,["lfeplsummon"] = 1,["lfsummonepl"] = 1,["needeplsummon"] = 1,["needsummonepl"] = 1,["anyeplsummon"] = 2,["anysummonepl"] = 2,["anyonesummonepl"] = 2,["anyoneeplsummon"] = 2,["buyingeplsummon"] = 1,["buyeplsummon"] = 1,["sellingeplsummon"] = 1,["selleplsummon"] = 1,["foreplsummon"] = .5,["summoneplplease"] = 2,["summontoeplplease"] = 2,["anywarlockinepl"] = 1.5,["anylockinepl"] = 1.5,["eplfastsummon"] = 1.5,["eplsummonwme"] = 1,["eplsummonaround"] = 1.5,
["everlook"] = .25,["everlooksummon"] = 1.5,["summoneverlook"] = 1.5,["summontoeverlook"] = 2,["lfeverlooksummon"] = 1,["lfsummoneverlook"] = 1,["needeverlooksummon"] = 1,["needsummoneverlook"] = 1,["anyeverlooksummon"] = 2,["anysummoneverlook"] = 2,["anyonesummoneverlook"] = 2,["anyoneeverlooksummon"] = 2,["buyingeverlooksummon"] = 1,["buyeverlooksummon"] = 1,["sellingeverlooksummon"] = 1,["selleverlooksummon"] = 1,["foreverlooksummon"] = .5,["summoneverlookplease"] = 2,["summontoeverlookplease"] = 2,["anywarlockineverlook"] = 1.5,["anylockineverlook"] = 1.5,["everlookfastsummon"] = 1.5,["everlooksummonwme"] = 1,["everlooksummonaround"] = 1.5,
["feralas"] = .25,["feralassummon"] = 1.5,["summonferalas"] = 1.5,["summontoferalas"] = 2,["lfferalassummon"] = 1,["lfsummonferalas"] = 1,["needferalassummon"] = 1,["needsummonferalas"] = 1,["anyferalassummon"] = 2,["anysummonferalas"] = 2,["anyonesummonferalas"] = 2,["anyoneferalassummon"] = 2,["buyingferalassummon"] = 1,["buyferalassummon"] = 1,["sellingferalassummon"] = 1,["sellferalassummon"] = 1,["forferalassummon"] = .5,["summonferalasplease"] = 2,["summontoferalasplease"] = 2,["anywarlockinferalas"] = 1.5,["anylockinferalas"] = 1.5,["feralasfastsummon"] = 1.5,["feralassummonwme"] = 1,["feralassummonaround"] = 1.5,
["goldshire"] = .25,["goldshiresummon"] = 1.5,["summongoldshire"] = 1.5,["summontogoldshire"] = 2,["lfgoldshiresummon"] = 1,["lfsummongoldshire"] = 1,["needgoldshiresummon"] = 1,["needsummongoldshire"] = 1,["anygoldshiresummon"] = 2,["anysummongoldshire"] = 2,["anyonesummongoldshire"] = 2,["anyonegoldshiresummon"] = 2,["buyinggoldshiresummon"] = 1,["buygoldshiresummon"] = 1,["sellinggoldshiresummon"] = 1,["sellgoldshiresummon"] = 1,["forgoldshiresummon"] = .5,["summongoldshireplease"] = 2,["summontogoldshireplease"] = 2,["anywarlockingoldshire"] = 1.5,["anylockingoldshire"] = 1.5,["goldshirefastsummon"] = 1.5,["goldshiresummonwme"] = 1,["goldshiresummonaround"] = 1.5,
["hydraxian"] = .25,["hydraxiansummon"] = 1.5,["summonhydraxian"] = 1.5,["summontohydraxian"] = 2,["lfhydraxiansummon"] = 1,["lfsummonhydraxian"] = 1,["needhydraxiansummon"] = 1,["needsummonhydraxian"] = 1,["anyhydraxiansummon"] = 2,["anysummonhydraxian"] = 2,["anyonesummonhydraxian"] = 2,["anyonehydraxiansummon"] = 2,["buyinghydraxiansummon"] = 1,["buyhydraxiansummon"] = 1,["sellinghydraxiansummon"] = 1,["sellhydraxiansummon"] = 1,["forhydraxiansummon"] = .5,["summonhydraxianplease"] = 2,["summontohydraxianplease"] = 2,["anywarlockinhydraxian"] = 1.5,["anylockinhydraxian"] = 1.5,["hydraxianfastsummon"] = 1.5,["hydraxiansummonwme"] = 1,["hydraxiansummonaround"] = 1.5,
["ifsummon"] = 1.5,["summonif"] = 1.5,["summontoif"] = 2,["lfifsummon"] = 1,["lfsummonif"] = 1,["needifsummon"] = 1,["needsummonif"] = 1,["anyifsummon"] = 2,["anysummonif"] = 2,["anyonesummonif"] = 2,["anyoneifsummon"] = 2,["buyingifsummon"] = 1,["buyifsummon"] = 1,["sellingifsummon"] = 1,["sellifsummon"] = 1,["forifsummon"] = .5,["summonifplease"] = 2,["summontoifplease"] = 2,["anywarlockinif"] = 1.5,["anylockinif"] = 1.5,["iffastsummon"] = 1.5,["ifsummonwme"] = 1,["ifsummonaround"] = 1.5,
["ironforge"] = .25,["ironforgesummon"] = 1.5,["summonironforge"] = 1.5,["summontoironforge"] = 2,["lfironforgesummon"] = 1,["lfsummonironforge"] = 1,["needironforgesummon"] = 1,["needsummonironforge"] = 1,["anyironforgesummon"] = 2,["anysummonironforge"] = 2,["anyonesummonironforge"] = 2,["anyoneironforgesummon"] = 2,["buyingironforgesummon"] = 1,["buyironforgesummon"] = 1,["sellingironforgesummon"] = 1,["sellironforgesummon"] = 1,["forironforgesummon"] = .5,["summonironforgeplease"] = 2,["summontoironforgeplease"] = 2,["anywarlockinironforge"] = 1.5,["anylockinironforge"] = 1.5,["ironforgefastsummon"] = 1.5,["ironforgesummonwme"] = 1,["ironforgesummonaround"] = 1.5,
["karazhansummon"] = 1.5,["summonkarazhan"] = 1.5,["summontokarazhan"] = 2,["lfkarazhansummon"] = 1,["lfsummonkarazhan"] = 1,["needkarazhansummon"] = 1,["needsummonkarazhan"] = 1,["anykarazhansummon"] = 2,["anysummonkarazhan"] = 2,["anyonesummonkarazhan"] = 2,["anyonekarazhansummon"] = 2,["buyingkarazhansummon"] = 1,["buykarazhansummon"] = 1,["sellingkarazhansummon"] = 1,["sellkarazhansummon"] = 1,["forkarazhansummon"] = .5,["summonkarazhanplease"] = 2,["summontokarazhanplease"] = 2,["anywarlockinkarazhan"] = 1.5,["anylockinkarazhan"] = 1.5,["karazhanfastsummon"] = 1.5,["karazhansummonwme"] = 1,["karazhansummonaround"] = 1.5,
["moonglade"] = .25,["moongladesummon"] = 1.5,["summonmoonglade"] = 1.5,["summontomoonglade"] = 2,["lfmoongladesummon"] = 1,["lfsummonmoonglade"] = 1,["needmoongladesummon"] = 1,["needsummonmoonglade"] = 1,["anymoongladesummon"] = 2,["anysummonmoonglade"] = 2,["anyonesummonmoonglade"] = 2,["anyonemoongladesummon"] = 2,["buyingmoongladesummon"] = 1,["buymoongladesummon"] = 1,["sellingmoongladesummon"] = 1,["sellmoongladesummon"] = 1,["formoongladesummon"] = .5,["summonmoongladeplease"] = 2,["summontomoongladeplease"] = 2,["anywarlockinmoonglade"] = 1.5,["anylockinmoonglade"] = 1.5,["moongladefastsummon"] = 1.5,["moongladesummonwme"] = 1,["moongladesummonaround"] = 1.5,
["orgrimmar"] = .25,["orgrimmarsummon"] = 1.5,["summonorgrimmar"] = 1.5,["summontoorgrimmar"] = 2,["lforgrimmarsummon"] = 1,["lfsummonorgrimmar"] = 1,["needorgrimmarsummon"] = 1,["needsummonorgrimmar"] = 1,["anyorgrimmarsummon"] = 2,["anysummonorgrimmar"] = 2,["anyonesummonorgrimmar"] = 2,["anyoneorgrimmarsummon"] = 2,["buyingorgrimmarsummon"] = 1,["buyorgrimmarsummon"] = 1,["sellingorgrimmarsummon"] = 1,["sellorgrimmarsummon"] = 1,["fororgrimmarsummon"] = .5,["summonorgrimmarplease"] = 2,["summontoorgrimmarplease"] = 2,["anywarlockinorgrimmar"] = 1.5,["anylockinorgrimmar"] = 1.5,["orgrimmarfastsummon"] = 1.5,["orgrimmarsummonwme"] = 1,["orgrimmarsummonaround"] = 1.5,
["silithus"] = .25,["silithussummon"] = 1.5,["summonsilithus"] = 1.5,["summontosilithus"] = 2,["lfsilithussummon"] = 1,["lfsummonsilithus"] = 1,["needsilithussummon"] = 1,["needsummonsilithus"] = 1,["anysilithussummon"] = 2,["anysummonsilithus"] = 2,["anyonesummonsilithus"] = 2,["anyonesilithussummon"] = 2,["buyingsilithussummon"] = 1,["buysilithussummon"] = 1,["sellingsilithussummon"] = 1,["sellsilithussummon"] = 1,["forsilithussummon"] = .5,["summonsilithusplease"] = 2,["summontosilithusplease"] = 2,["anywarlockinsilithus"] = 1.5,["anylockinsilithus"] = 1.5,["silithusfastsummon"] = 1.5,["silithussummonwme"] = 1,["silithussummonaround"] = 1.5,
["smsummon"] = 1.5,["summonsm"] = 1.5,["summontosm"] = 2,["lfsmsummon"] = 1,["lfsummonsm"] = 1,["needsmsummon"] = 1,["needsummonsm"] = 1,["anysmsummon"] = 2,["anysummonsm"] = 2,["anyonesummonsm"] = 2,["anyonesmsummon"] = 2,["buyingsmsummon"] = 1,["buysmsummon"] = 1,["sellingsmsummon"] = 1,["sellsmsummon"] = 1,["forsmsummon"] = .5,["summonsmplease"] = 2,["summontosmplease"] = 2,["anywarlockinsm"] = 1.5,["anylockinsm"] = 1.5,["smfastsummon"] = 1.5,["smsummonwme"] = 1,["smsummonaround"] = 1.5,
["stonard"] = .25,["stonardsummon"] = 1.5,["summonstonard"] = 1.5,["summontostonard"] = 2,["lfstonardsummon"] = 1,["lfsummonstonard"] = 1,["needstonardsummon"] = 1,["needsummonstonard"] = 1,["anystonardsummon"] = 2,["anysummonstonard"] = 2,["anyonesummonstonard"] = 2,["anyonestonardsummon"] = 2,["buyingstonardsummon"] = 1,["buystonardsummon"] = 1,["sellingstonardsummon"] = 1,["sellstonardsummon"] = 1,["forstonardsummon"] = .5,["summonstonardplease"] = 2,["summontostonardplease"] = 2,["anywarlockinstonard"] = 1.5,["anylockinstonard"] = 1.5,["stonardfastsummon"] = 1.5,["stonardsummonwme"] = 1,["stonardsummonaround"] = 1.5,
["stormwind"] = .25,["stormwindsummon"] = 1.5,["summonstormwind"] = 1.5,["summontostormwind"] = 2,["lfstormwindsummon"] = 1,["lfsummonstormwind"] = 1,["needstormwindsummon"] = 1,["needsummonstormwind"] = 1,["anystormwindsummon"] = 2,["anysummonstormwind"] = 2,["anyonesummonstormwind"] = 2,["anyonestormwindsummon"] = 2,["buyingstormwindsummon"] = 1,["buystormwindsummon"] = 1,["sellingstormwindsummon"] = 1,["sellstormwindsummon"] = 1,["forstormwindsummon"] = .5,["summonstormwindplease"] = 2,["summontostormwindplease"] = 2,["anywarlockinstormwind"] = 1.5,["anylockinstormwind"] = 1.5,["stormwindfastsummon"] = 1.5,["stormwindsummonwme"] = 1,["stormwindsummonaround"] = 1.5,
["tanaris"] = .25,["tanarissummon"] = 1.5,["summontanaris"] = 1.5,["summontotanaris"] = 2,["lftanarissummon"] = 1,["lfsummontanaris"] = 1,["needtanarissummon"] = 1,["needsummontanaris"] = 1,["anytanarissummon"] = 2,["anysummontanaris"] = 2,["anyonesummontanaris"] = 2,["anyonetanarissummon"] = 2,["buyingtanarissummon"] = 1,["buytanarissummon"] = 1,["sellingtanarissummon"] = 1,["selltanarissummon"] = 1,["fortanarissummon"] = .5,["summontanarisplease"] = 2,["summontotanarisplease"] = 2,["anywarlockintanaris"] = 1.5,["anylockintanaris"] = 1.5,["tanarisfastsummon"] = 1.5,["tanarissummonwme"] = 1,["tanarissummonaround"] = 1.5,
["thunder"] = .25,["thundersummon"] = 1.5,["summonthunder"] = 1.5,["summontothunder"] = 2,["lfthundersummon"] = 1,["lfsummonthunder"] = 1,["needthundersummon"] = 1,["needsummonthunder"] = 1,["anythundersummon"] = 2,["anysummonthunder"] = 2,["anyonesummonthunder"] = 2,["anyonethundersummon"] = 2,["buyingthundersummon"] = 1,["buythundersummon"] = 1,["sellingthundersummon"] = 1,["sellthundersummon"] = 1,["forthundersummon"] = .5,["summonthunderplease"] = 2,["summontothunderplease"] = 2,["anywarlockinthunder"] = 1.5,["anylockinthunder"] = 1.5,["thunderfastsummon"] = 1.5,["thundersummonwme"] = 1,["thundersummonaround"] = 1.5,
["thunderbluff"] = .25,["thunderbluffsummon"] = 1.5,["summonthunderbluff"] = 1.5,["summontothunderbluff"] = 2,["lfthunderbluffsummon"] = 1,["lfsummonthunderbluff"] = 1,["needthunderbluffsummon"] = 1,["needsummonthunderbluff"] = 1,["anythunderbluffsummon"] = 2,["anysummonthunderbluff"] = 2,["anyonesummonthunderbluff"] = 2,["anyonethunderbluffsummon"] = 2,["buyingthunderbluffsummon"] = 1,["buythunderbluffsummon"] = 1,["sellingthunderbluffsummon"] = 1,["sellthunderbluffsummon"] = 1,["forthunderbluffsummon"] = .5,["summonthunderbluffplease"] = 2,["summontothunderbluffplease"] = 2,["anywarlockinthunderbluff"] = 1.5,["anylockinthunderbluff"] = 1.5,["thunderblufffastsummon"] = 1.5,["thunderbluffsummonwme"] = 1,["thunderbluffsummonaround"] = 1.5,
["undercity"] = .25,["undercitysummon"] = 1.5,["summonundercity"] = 1.5,["summontoundercity"] = 2,["lfundercitysummon"] = 1,["lfsummonundercity"] = 1,["needundercitysummon"] = 1,["needsummonundercity"] = 1,["anyundercitysummon"] = 2,["anysummonundercity"] = 2,["anyonesummonundercity"] = 2,["anyoneundercitysummon"] = 2,["buyingundercitysummon"] = 1,["buyundercitysummon"] = 1,["sellingundercitysummon"] = 1,["sellundercitysummon"] = 1,["forundercitysummon"] = .5,["summonundercityplease"] = 2,["summontoundercityplease"] = 2,["anywarlockinundercity"] = 1.5,["anylockinundercity"] = 1.5,["undercityfastsummon"] = 1.5,["undercitysummonwme"] = 1,["undercitysummonaround"] = 1.5,
["winterspring"] = .25,["winterspringsummon"] = 1.5,["summonwinterspring"] = 1.5,["summontowinterspring"] = 2,["lfwinterspringsummon"] = 1,["lfsummonwinterspring"] = 1,["needwinterspringsummon"] = 1,["needsummonwinterspring"] = 1,["anywinterspringsummon"] = 2,["anysummonwinterspring"] = 2,["anyonesummonwinterspring"] = 2,["anyonewinterspringsummon"] = 2,["buyingwinterspringsummon"] = 1,["buywinterspringsummon"] = 1,["sellingwinterspringsummon"] = 1,["sellwinterspringsummon"] = 1,["forwinterspringsummon"] = .5,["summonwinterspringplease"] = 2,["summontowinterspringplease"] = 2,["anywarlockinwinterspring"] = 1.5,["anylockinwinterspring"] = 1.5,["winterspringfastsummon"] = 1.5,["winterspringsummonwme"] = 1,["winterspringsummonaround"] = 1.5,
["wpl"] = .25,["wplsummon"] = 1.5,["summonwpl"] = 1.5,["summontowpl"] = 2,["lfwplsummon"] = 1,["lfsummonwpl"] = 1,["needwplsummon"] = 1,["needsummonwpl"] = 1,["anywplsummon"] = 2,["anysummonwpl"] = 2,["anyonesummonwpl"] = 2,["anyonewplsummon"] = 2,["buyingwplsummon"] = 1,["buywplsummon"] = 1,["sellingwplsummon"] = 1,["sellwplsummon"] = 1,["forwplsummon"] = .5,["summonwplplease"] = 2,["summontowplplease"] = 2,["anywarlockinwpl"] = 1.5,["anylockinwpl"] = 1.5,["wplfastsummon"] = 1.5,["wplsummonwme"] = 1,["wplsummonaround"] = 1.5,
["hyjal"] = .25,["hyjalsummon"] = 1.5,["summonhyjal"] = 1.5,["summontohyjal"] = 2,["lfhyjalsummon"] = 1,["lfsummonhyjal"] = 1,["needhyjalsummon"] = 1,["needsummonhyjal"] = 1,["anyhyjalsummon"] = 2,["anysummonhyjal"] = 2,["anyonesummonhyjal"] = 2,["anyonehyjalsummon"] = 2,["buyinghyjalsummon"] = 1,["buyhyjalsummon"] = 1,["sellinghyjalsummon"] = 1,["sellhyjalsummon"] = 1,["forhyjalsummon"] = .5,["summonhyjalplease"] = 2,["summontohyjalplease"] = 2,["anywarlockinhyjal"] = 1.5,["anylockinhyjal"] = 1.5,["hyjalfastsummon"] = 1.5,["hyjalsummonwme"] = 1,["hyjalsummonaround"] = 1.5,

["hyjalwinterspringsummon"] = 1.5,["hyjalorwinterspringsummon"] = 1.5,
["winterspringhyjalsummon"] = 1.5,["winterspringorhyjalsummon"] = 1.5,

-- Lockbox
["abletoopen"] = 2,["abletounlock"] = 1.5,["helpunlock"] = 1.5,["needunlock"] = 1,["whocanunlock"] = 1.5,["anyonethatcanunlock"] = 1,
["alllock"] = .5,["alllockbox"] = 1,["mybox"] = .5,["mylockbox"] = .5,
["anylockbox"] = .5,["anylockboxplease"] = 1.5,["anylockboxhere"] = 1.5,["anylocklockboxplease"] = 1.5,["anylockboxhitem"] = 1.5,["lockboxplease"] = .5,["lockboxhere"] = .5,
["anyonearoundhitem"] = 2,["anyonecanopen"] = 1,["anyonecanopenme"] = .5,["anyonecanopenmy"] = .5,["anyonecanopenhitem"] = 2,["anyonecanopenlock"] = 2,["anyonecanopenlockbox"] = 2,
["anyonecanopenornate"] = 1,["anyonecanopenheavy"] = 1,["anyonecanopeniron"] = 1,["anyonecanopenstrong"] = 1,["anyonecanopensteel"] = 1,
["anyonecanopenreinforced"] = 1,["anyonecanopenmithril"] = 1,["anyonecanopenthorium"] = 1,["anyonecanopeneternium"] = 1,
["anyonecanpick"] = 1.5,["anyonepleaseunlockhitem"] = 1,["anyonecanhelphitem"] = 1.5,["anyonedoinglockbox"] = 2,["anyonetoopen"] = .5,["anyonetoopenlock"] = 2,["anyoneforlockbox"] = 1,["forlockboxplease"] = .5,["anyoneforlockboxplease"] = 1,
["anyoneopenlockbox"] = 1,["anyonetoopenlockbox"] = 2,["anyonewhocanopen"] = 1,["anyonethatcanopen"] = 1,["anyoneneedtheirlockbox"] = 1,["anyoneneedtounlock"] = 2,["anyoneneedtoopen"] = 1,["needtoopen"] = .5,["needtoopenbox"] = 1,["needtoopenlockbox"] = 1,
["ineedtoopen"] = 1,["canopenlockbox"] = 1,["cananyoneopenlockbox"] = 1,
["boxopen"] = 1,["boxopening"] = 1,
["anyoneopen"] = 1,["anyoneopenhitem"] = 1,["cananyoneopen"] = 1,["cananyonepick"] = 1,["cananyonelockbox"] = 1,["cananyonelockboxthis"] = .5,["cananyonepicklockbox"] = 1,["cananyonepickhitem"] = 1,["canopenbox"] = 1.5,["canopenhitem"] = 1,
["cananyonepleaseopen"] = 1,["cananyoneopenmy"] = .5,["openmylockbox"] = 1,["cananyoneunlock"] = 1.5,["canyouopen"] = 1,["canyouopenhitem"] = .5,
["freelockbox"] = 2,["getyourlockbox"] = .5,["havelockbox"] = .5,["helpwithhitem"] = 1,["icanopen"] = .5,
["illopenyour"] = 1,["itslockboxtime"] = 1,["lastcallforlockbox"] = 1,
["lockbox"] = 1,["lockboxlockbox"] = 1,["lflockbox"] = 2,["lockboxunlock"] = 1,
["lockboxicanopen"] = 1,["lockboxopened"] = 1,["lockboxopenedtoday"] = 1,["lockboxopening"] = 1,["lockboxopeningtime"] = 1,["lockboxservice"] = 2,["lockboxtime"] = 1,["lockboxanyone"] = 1.5,["lockboxdoyouopen"] = 2,
["lockboxthatneedunlock"] = 1,["lockboxthatneedopen"] = 1,
["lockopen"] = 1,["lockopener"] = 1,["lockopening"] = 1,["locktopick"] = 1.5,["lockboxopen"] = 1,["lockboxopener"] = 1,["anylockopener"] = .5,["anylockboxopener"] = .5,
["levellockbox"] = .5,["lowlevellockbox"] = .5,["midlevellockbox"] = .5,
["needlockbox"] = 1,["needlockboxopen"] = 1,["needlockboxopened"] = 3,["needlocklockboxopened"] = 2,
["needtounlock"] = 1,["needtounlockbox"] = 1,["needunlockbox"] = 1,["unlockbox"] = 1,["unlockabox"] = 1,

["openalllock"] = 1.5,["openalllockbox"] = 3,["openallyour"] = 1,["openallyourhitem"] = 1,
["openanylockbox"] = 2,
["openbox"] = .5,["openchest"] = .5,["openhitem"] = 1,["leopenhitem"] = .5,["openplease"] = 1.5,
["openingalllock"] = 1.5,["openingalllockbox"] = 3,["openingallyourlock"] = 2,["openingallyourlockbox"] = 2,
["openinganylockbox"] = 2,["openingbox"] = 1,["openinghitem"] = 3,["openinglock"] = 1,["openinglockbox"] = 2,["openingyourlock"] = 1,["openingyourlockbox"] = 2,
["openlock"] = 1,["openlockbox"] = 1,["openyourbox"] = 2,["openyourlock"] = 1,["openyourlockbox"] = 2,["openinglockon"] = .5,["openinglockat"] = .5,["openinglockin"] = .5,["openinglockfor"] = .5,
["pleaseopen"] = .5,["pleaseopenhitem"] = 1,["pleaseunlock"] = 1,["pleaseunlockhitem"] = 1,["helpingtounlock"] = 1,
["anyonepleaseopen"] = .5,["anyonepleaseopenhitem"] = .5,
["toopenbox"] = 1,["toopenlockbox"] = 1,
["unlockalllock"] = 1,["unlockalllockbox"] = 2,["unlocksomelock"] = 1,["unlocksomelockbox"] = 2,["unlockanylock"] = 1,["unlockanylockbox"] = 2,["unlocklock"] = 1,["unlocklockbox"] = 1,["unlockyourlock"] = 1,["lockyourlockbox"] = 2,["unlockyourlockbox"] = 2,["unlockthebox"] = 1,
["whocanopen"] = .5,["whocanopenchest"] = 1,["whocanopenhitem"] = .5,["whocanopenlockbox"] = .5,
["thatcanopen"] = .5,["thatcanopenchest"] = 1,["thatcanopenhitem"] = .5,["thatcanopenlockbox"] = .5,
["whocanopenfor"] = .5,["thatcanopenfor"] = .5,["openforme"] = .5,["openformehitem"] = .5,["openformelockbox"] = .5,

["canlockbox"] = .5,["canlockboxthis"] = .5,["anyonethatcanlockbox"] = 2,["anythatcanlockbox"] = 2,

["whowillopenhitem"] = .5,["whowouldopenhitem"] = .5,
["willopenall"] = 1,["willopenallyour"] = 1,
["wouldopenhitem"] = .5,
["yourlockbox"] = .5,
["bringoutyourlockbox"] = 1.5,["pickoflock"] = 1,
["ornatebronzelockbox"] = .5,["heavybronzelockbox"] = .5,["ironlockbox"] = .5,["strongironlockbox"] = .5,["steellockbox"] = .5,["reinforcedsteellockbox"] = .5,["mithrillockbox"] = .5,["thoriumlockbox"] = .5,["eterniumlockbox"] = .5,

-- Rogue Lockbox
["lfroguelockbox"] = 1,["lfroguetoopen"] = 2,["lfrogueforlockbox"] = 2,["lfrogueforbox"] = 2,
["anyroguearound"] = 1,["anyroguefor"] = 1,["anyrogueto"] = .5,["anyrogueforhitem"] = 1,["anyroguelockbox"] = 1,
["roguethatcan"] = .5,["roguethatcanunlock"] = 1,["roguewhocan"] = .5,["roguewhocanunlock"] = .5,["anyroguethatcan"] = .5,["anyroguewhocan"] = .5,
["anyrogueableto"] = 1,["anyroguecanopen"] = 2,["anyroguecanhelp"] = 2,["anyroguetoopen"] = .5,["anyrogueopenlockbox"] = 2,["anyroguedoinglockbox"] = 2,
["anyrogueforlockbox"] = 2,["anyrogueforbox"] = 2,

["anyroguearoundhitem"] = 1,["anyroguearoundlockbox"] = 1,["anyroguepick"] = 1,["anyroguehitem"] = 1.5,["anyroguepicklockbox"] = 1,["anyrogueneedtoopen"] = 1,["rogueneedtoopen"] = 1,

["roguewithlockbox"] = 2,["rogueforsomelockbox"] = 2,["rogueforlockbox"] = 2,["roguearoundforlockbox"] = 2,["rogueabletolockbox"] = 1,
["rogueopenanylockbox"] = 2,["rogueopeninganylockbox"] = 1,["roguethatcanopen"] = 2,["roguewhocanopen"] = 2,
["rogueopenthe"] = .5,["rogueopen"] = 1,["roguepleaseopen"] = 2,["roguehere"] = .5,["roguetoopenme"] = 2,["roguetoopenmy"] = 2,["roguetoopenbox"] = 1,["roguetoopenhitem"] = 2,["roguetounlockbox"] = 2,["roguetounlocklockbox"] = 2,["rogueunlocklockbox"] = 1.5,["rogueunlockbox"] = 1.5,
["rogueforopenhitem"] = 2,["rogueforunlock"] = 2,["roguearoundtoopen"] = 1,["rogueabletohitem"] = 1,
["needroguetoopen"] = 2,["needrogueforopen"] = 2,["needrogueforopening"] = 2,["needrogueforhitem"] = 2,["needhelprogue"] = .5,["needhelproguehitem"] = 1,["needhelproguebox"] = 1,["needhelproguelockbox"] = 1,["needhelprogueunlock"] = 1,
["canrogue"] = 1,["canrogueopen"] = .5,["canrogueplease"] = .5,["canroguepleaseopen"] = .5,["willrogue"] = 1,
["lockboxrogue"] = 1,["lockboxany"] = .5,["lockboxanyone"] = .5,["lockboxanyrogue"] = 1,
["anyroguehelpingto"] = 1.5,

["anyrogueinorgrimmar"] = 1,["anyrogueinstormwind"] = 1,["anyrogueinundercity"] = 1,["anyrogueinironforge"] = 1,["anyrogueinud"] = 1,
["rogueinorgrimmar"] = 1,["rogueinstormwind"] = 1,["rogueinundercity"] = 1,["rogueinironforge"] = 1,["rogueinud"] = 1,

-- Profession CD
["arcanetransmute"] = 1,["arcanetransmutecd"] = 1,["anyarcanetransmutecd"] = 1,["arcanetransmutearound"] = 1,["anyarcanetransmutearound"] = 1,
["arcanebartransmute"] = 1,["arcanebartransmutecd"] = 1,["arcanebartransmutearound"] = 1,

["sellingarcanetransmute"] = 1,["buyingarcanetransmute"] = 1,["sellarcanetransmute"] = 1,["buyarcanetransmute"] = 1,["needarcanetransmute"] = 1,
["sellingarcanebartransmute"] = 1,["buyingarcanebartransmute"] = 1,["sellarcanebartransmute"] = 1,["buyarcanebartransmute"] = 1,["needarcanebartransmute"] = 1,

["transmutehitemarcanebar"] = 1,["anyonewithmoonclothcooldown"] = 3,["anyonehavemoonclothcooldown"] = 3,
["yourtransmutecd"] = .5,["transmutecd"] = 1,["transmutehitem"] = 1,["transmutearcane"] = 1,["moonclothcooldown"] = 1,

-- Gambling
["fortunefavorsthebold"] = 3,["youtoocanwin"] = 3,["comeandplaynow"] = 3,["highestpayoutgiventoday"] = 3,["winsomeeasygold"] = 3,["needtoberich"] = 1.5,["yourwishcometrue"] = 1,

["casino"] = 1,["casinoroyale"] = 1,["casinoishere"] = 1,
["bestodds"] = 1,["betbig"] = 1,["winbig"] = 1,

["doubleyourgold"] = 1.5,["tripleyourgold"] = 1.5,["playsomecasino"] = 2,["testyourluck"] = 3,["tryyourluck"] = 3,["getrichnow"] = 3,["goldforeverybody"] = 3,["goingtoberich"] = 1.5,["atthecasino"] = 1.5,["winitall"] = 1,
["doubleyoursilver"] = 1.5,["tripleyoursilver"] = 1.5,["poormanscasino"] = 2,["ladyluckissmiling"] = 2,["todayatthecasino"] = .5,
["fulfillallyourwishes"] = 1.5,

-- Deathroll
["deathroll"] = 1,["anyoneneedtodeathroll"] = 1,["needtodeathroll"] = 2,["anyonedeathroll"] = 2,["deathrollanyone"] = 2,
["rollforgold"] = 1,["needtorollforgold"] = 3,

-- Other
["anyoneneedtolevel"] = 1.5, -- Was posted with lockpicking leveling offer

-- Foreign Words
["ppnardinalsldor"] = 3,["vidfontnen"] = 1,["dricks"] = .5,["uppskattat"] = .5,
}
GF_WORD_TRADE_PHRASE = {
["anyenchant"] = true,["anylockbox"] = true,["openlockbox"] = true,["anycrusaderenchant"] = true,["anyfieryenchant"] = true,
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
["fromsending"] = 1,["gank"] = 1,["ganks"] = 1,["guild"] = 1,["haveroom"] = 1,["homie"] = 1,["ikinda"] = 1,["inventory"] = 1,["isanyoneactually"] = 1,["itstopsme"] = 1,["justclick"] = 1,
["makesense"] = 1,["musthave"] = 1,["ne"] = 1,["opinion"] = 1,["pleasebring"] = 1,["pleasehave"] = 1,["priority"] = 1,["progression"] = 1,["proveit"] = 1,["quest"] = 1,["raidres"] = 1,
["reallife"] = 1,["recruiting"] = 1,["reserved"] = 1,["ripheroff"] = 1,["riphimoff"] = 1,["ripoff"] = 1,["rippeopleoff"] = 1,["ripplayeroff"] = 1,["ripthemoff"] = 1,["ripusoff"] = 1,
["roster"] = 1,["rules"] = 1,["runme"] = 1,["scam"] = .5,["sendingmessages"] = 1,["shouldi"] = 1,["thatstuff"] = 1,["tojoin"] = 1,["tosay"] = 1,["treasurehunter"] = 1,
["turnback"] = 1,["typethat"] = 1,["needtowrite"] = 1,["weekly"] = 1,["weknow"] = 1,["wentout"] = 1,["whatdoyouthink"] = 1,["whatisbest"] = 1,["whatisbetter"] = 1,
["whatsbest"] = 1,["whatsbetter"] = 1,["wheneveritype"] = 1,["whichisbest"] = 1,["whichisbetter"] = 1,["whycanti"] = 1,["whyicant"] = 1,["willneed"] = 1,
["withoutthebreaks"] = 1,["woah"] = 1,["worldchat"] = 1,

["ratslarge"] = 1,["whatdoyou"] = 1,["doyounot"] = 1,["younotunderstand"] = 1,["youdontunderstand"] = 1,["understandabout"] = 1,["understandthat"] = 1,
["theycouldgiveme"] = 1,["cantaffordmy"] = 1,["myspells"] = 1,["mytalents"] = 1,["myabilities"] = 1,["firstcharacter"] = 1,
["givingaway"] = .5,["forfree"] = .5,["ifyouneed"] = .5,["youcanhave"] = .5,["gift"] = .5,["mygift"] = .5,
["saystheguy"] = 1,["loseit"] = 2,["worldchat"] = 2,["lowping"] = 1,
["heardrumors"] = 1,["rumorsabout"] = 1,["aboutblizzard"] = 1,["buythisserver"] = 1,["buyingthisserver"] = 1,
["whycanti"] = 1,["lft"] = 1,["doesnotportal"] = 1,["makethegroup"] = 1,
["spam"] = 1.25,["gf"] = 1.25,["wife"] = 1.25,["girlfriend"] = 1.25,["bf"] = 1,["boyfriend"] = 1,

["garrbinding"] = 1,["raidroll"] = .5,["douse"] = .5,["forwhat"] = .5,["doineed"] = 1,["thereareno"] = 1,["baseprice"] = 1,["dothese"] = .5,["doesthis"] = .5,["stackwith"] = .5,["noneed"] = .5,["remember"] = .5,
["usd"] = .5,["incash"] = .5,["buyincash"] = 1,["buyitcash"] = 1,["tellmehow"] = 1,["howtoget"] = 1,["seemstobe"] = 1,["whythereis"] = 1,["almostnone"] = 1.25,
["gnomes"] = 1,["repfarm"] = 1,["ccrep"] = 1,["canjoin"] = 1,["onceinside"] = 1,
["gmssay"] = 1,["allmonitored"] = 1,["aremonitored"] = 1,["dontpunish"] = 1,["obviousseller"] = 1,["areputting"] = 1,["whitelevel"] = 1,
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
["mauleast"] = "DME",["maulnorth"] = "DMN",["maultrib"] = "DMT",["maultribute"] = "DMT",["maulwest"] = "DMW",
["diremaulwest"] = "DMW",["diremauleast"] = "DME",["diremaulnorth"] = "DMN",["diremaultrib"] = "DMT",["diremaultribute"] = "DMT",["diremaul"] = "DIRE",
["scholo"] = "SCHOLO",["scholomance"] = "SCHOLO",["krastinov"] = "SCHOLO",
["stratholme"] = "STRAT",["strat"] = "STRAT",["strath"] = "STRAT",["baron"] = "STRAT",["livestrat"] = "STRAT",["udstrat"] = "STRAT",["stratrep"] = "STRAT",["ud"] = "STRAT",["live"] = "STRAT",["undead"] = "STRAT",
["repfarmstrat"] = "STRAT",["stratrepfarm"] = "STRAT",
["ubrs"] = "UBRS",["rend"] = "UBRS",["valthalak"] = "UBRS",["upperblackrock"] = "UBRS",["drakefireamulet"] = "UBRS",
["dungeon"] = "DUNG",["foranything"] = "DUNG",["lfganything"] = "DUNG",["anyraid"] = "RAID",

["crescent"] = "CG",["grove"] = "CG",["crescentgrove"] = "CG",["cg"] = "CG",["tcg"] = "CG",["gc"] = "GC",["gilneas"] = "GC",["gilneascity"] = "GC",
["hateforge"] = "HFQ",["hate"] = "HFQ",["forge"] = "HFQ",["quarry"] = "HFQ",["hateforgequarry"] = "HFQ",["hq"] = "HFQ",["hf"] = "HFQ",["hfq"] = "HFQ",
["sv"] = "SWV",["swv"] = "SWV",["vault"] = "SWV",["swvault"] = "SWV",["stormwindv"] = "SWV",["stormwindvault"] = "SWV",["morass"] = "COT",["blackmorass"] = "COT",["cavernsoftime"] = "COT",["bm"] = "COT",["cot"] = "COT",
["crypt"] = "CRYPT",["crypts"] = "CRYPT",["karacrypt"] = "CRYPT",["karacrypts"] = "CRYPT",["karazhancrypt"] = "CRYPT",["karazhancrypts"] = "CRYPT",
["dragonmawretreat"] = "DRAG",

["zul"] = "ZG",["zg"] = "ZG",["gurub"] = "ZG",["zulgurub"] = "ZG",["hakkar"] = "ZG",["aq"] = "AQ",["ahn"] = "AQ",["qiraj"] = "AQ",["ahnqiraj"] = "AQ",["ossirian"] = "AQ",["ossi"] = "AQ",["cthun"] = "AQ",["ruinsofahnqiraj"] = "AQ",
["mc"] = "MC",["moltencore"] = "MC",["molten"] = "MC",["core"] = "MC",["rag"] = "MC",["ragnaros"] = "MC",["onyxia"] = "ONY",["ony"] = "ONY",["nef"] = "BWL",
["bwl"] = "BWL",["blackwinglair"] = "BWL",["blackwing"] = "BWL",["lair"] = "BWL",["nefarian"] = "BWL",["nef"] = "BWL",
["nax"] = "NAXX",["naxx"] = "NAXX",["naxxramas"] = "NAXX",["kt"] = "NAXX",["azuregos"] = "WB",["kazzak"] = "WB",["lethon"] = "WB",["ysondre"] = "WB",["taerar"] = "WB",["emeriss"] = "WB",["worldboss"] = "WB",

["es"] = "ES",["sanctum"] = "ES",["emerald"] = "ES",["emeraldsanctum"] = "ES",["k10"] = "KARA",["k40"] = "KARA",["kara"] = "KARA",["karazhan"] = "KARA",["lowerkarazhan"] = "KARA",["upperkarazhan"] = "KARA",["karazhanhalls"] = "KARA",
["concavius"] = "WB",["ostarius"] = "WB",["nerub"] = "WB",["reaver"] = "WB",["clackora"] = "WB",

["av"] = "PVP",["alteracvalley"] = "PVP",["ab"] = "PVP",["arathibasin"] = "PVP",["wsg"] = "PVP",["battleground"] = "PVP",["warsong"] = "PVP",["warsonggulch"] = "PVP",["premade"] = "PVP",["bg"] = "PVP",["bgs"] = "PVP",["pvp"] = "PVP",["arenas"] = "PVP",
["bloodring"] = "PVP",
["sunnygladevalley"] = "PVP",
["sunnyglade"] = "PVP",
}
GF_BUTTONS_LIST = {
	["SearchList"] = {
		[1] = { "Ragefire Chasm", 10, 18, "RFC",},
		[2] = { "Deadmines", 15, 25, "DM", },
		[3] = { "Wailing Caverns", 16, 26, "WC", },
		[4] = { "Blackfathom Deeps", 20, 30, "BFD", },
		[5] = { "Shadowfang Keep", 20, 30, "SFK", },
		[6] = { "Stockades", 20, 30, "STOCK", },
		[7] = { "Gnomeregan", 26, 36, "GNOME", },
		[8] = { "Razorfen Kraul", 26, 36, "RFK", "RZRF", },
		[9] = { "Razorfen Downs", 35, 45, "RFD", "RZRF", },
		[10] = { "SM Graveyard", 26, 36, "GY", "SM", },
		[11] = { "SM Library", 30, 42, "LIB", "SM", },
		[12] = { "SM Armory", 34, 44, "ARM", "SM", },
		[13] = { "SM Cathedral", 35, 46, "CATH", "SM", },
		[14] = { "Uldaman", 38, 50, "ULDA", },
		[15] = { "Zul'Farrak", 42, 54, "ZF", },
		[16] = { "Maraudon", 43, 55, "MARA", },
		[17] = { "Sunken Temple", 47, 58, "ST", },
		[18] = { "Blackrock Depths", 48, 60, "BRD", },
		[19] = { "Lower Blackrock Spire", 52, 60, "LBRS", "BRS", },
		[20] = { "Dire Maul East", 50, 60, "DME", "DIRE", },
		[21] = { "Dire Maul North", 54, 60, "DMN", "DIRE", },
		[22] = { "Dire Maul West", 55, 60, "DMW", "DIRE", },
		[23] = { "Dire Maul Tribute", 54, 60, "DMT", "DIRE", },
		[24] = { "Scholomance", 55, 60, "SCHO", },
		[25] = { "Stratholme", 55, 60, "STRAT", },
		[26] = { "Upper Blackrock Spire", 55, 60, "UBRS", "BRS", },
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
	[1] = "Greed Roll",
	[2] = "Need Roll",
	[3] = " selected Greed ",
	[4] = " selected Need ",
	[5] = " passed on: ",
}

-- Turtle additions
GF_HIGH_ELF				= "High Elf";
GF_GOBLIN				= "Goblin";
local GF_TURTLE_WORD_FIX = {
["alathalas"] = "alahthalas",
["blackmoras"] = "blackmorass",["blackmorasss"] = "blackmorass",["morasss"] = "morass",["marass"] = "morass",["marass"] = "morass",["bmoras"] = "blackmorass",["bmorass"] = "blackmorass",["blackmoss"] = "blackmorass",
["cgrove"] = "crescentgrove",
["eshm"] = "es",["esh"] = "es",
["gileas"] = "gilneas",["gilenas"] = "gilneas",["gineas"] = "gilneas",["gilneeas"] = "gilneas",["gilnaeos"] = "gilneas",["gileans"] = "gilneas",["gilnease"] = "gilneas",["gilneaas"] = "gilneas",["glineas"] = "gilneas",["guilneas"] = "gilneas",
["gelneas"] = "gilneas",["gilcity"] = "gilneas",["gilcity"] = "gilneas",["giln"] = "gilneas",["gilneascity"] = "gilneas",["gilcity"] = "gilneas",["gilnea"] = "gilneas",["gilnes"] = "gilneas",["gil"] = "gilneas",
["hfc"] = "hfq",["hrg"] = "hfq",["htq"] = "hfq",["hatforge"] = "hateforge",["hategorhe"] = "hateforge",
["hijal"] = "hyjal",["hayja"] = "hyjal",["hyial"] = "hyjal",["hyal"] = "hyjal",["hyall"] = "hyjal",["hyjia"] = "hyjal",["hyja"] = "hyjal",["hyall"] = "hyjal",
["karazan"] = "karazhan",["lowerkara"] = "karazhan",["kz"] = "karazhan",["lkh"] = "karazhan",["ukh"] = "karazhan",["khara"] = "karazhan",["cara"] = "karazhan",["kara"] = "karazhan",["kata"] = "karazhan",["karazhanv"] = "karazhan",
["karacrypt"] = "karacrypt",["karazhancrypt"] = "karacrypt",["stormwindcrypt"] = "karacrypt",["crypts"] = "crypt",
["morrass"] = "morass",["moras"] = "morass",["morras"] = "morass",
["smv"] = "swv",["vaults"] = "vault",

-- Quest and monster names
["klavens"] = "klaven",["otarius"] = "ostarius",["larranikus"] = "larannikus",["leranikus"] = "larannikus",["hellscreem"] = "hellscream",["concanius"] = "concavius",

-- Professions
["jeweller"] = "jewelcrafter",["jewellcraft"] = "jewelcrafter",["jewellcrafter"] = "jewelcrafter",["jewellcrafting"] = "jewelcrafter",["jewelcrafterw"] = "jewelcrafter",["jewelcrafterw"] = "jewelcrafter",["jewlcrafter"] = "jewelcrafter",
["jewlery"] = "jewelcrafter",["jewler"] = "jewelcrafter",["jeweler"] = "jewelcrafter",["jewlerer"] = "jewelcrafter",["juwelcraft"] = "jewelcrafter",["juwelcrafter"] = "jewelcrafter",["juwelcrafting"] = "jewelcrafter",
["jewelcrafted"] = "jewelcrafter",["jc"] = "jewelcrafter",["jw"] = "jewelcrafter",["jwc"] = "jewelcrafter",["jcs"] = "jewelcrafter",["jf"] = "jewelcrafter",["jewe"] = "jewelcrafter",["jewelcrafting"] = "jewelcrafter",
["jewlecrafter"] = "jewelcrafter",["jewlecrafting"] = "jewelcrafter",["jewelc"] = "jewelcrafter",["jewelcraft"] = "jewelcrafter",["jcrafting"] = "jewelcrafter",["jcrafter"] = "jewelcrafter",["jcraft"] = "jewelcrafter",
["jawel"] = "jewel",["juwe"] = "jewel",["jcer"] = "jewelcrafter",["jcers"] = "jewelcrafter",["jewelcrafters"] = "jewelcrafter",


-- Dungeon quest renames
["prototypethievery"] = "deadmines",["rampantweeds"] = "wailingcaverns",["captaingraysonsrevenge"] = "deadmines",["turningoffthetap"] = "deadmines",["theharvestgolemmystery"] = "deadmines",
["trappedinthenightmare"] = "wailingcaverns",["againstthekolkardream"] = "wailingcaverns",
["themissingsorcerer"] = "sfk",["intothejaws"] = "sfk",["toolatetoprelate"] = "sfk",
["highenergyregulator"] = "gnomeregan",["backupsystemactivation"] = "gnomeregan",
["scarletcorruption"] = "smcath",["reminiscentofsteel"] = "smarm",["theorbofkaladus"] = "smcath",["goldisthegoblins"] = "smcath",
["thepowersbeyond"] = "razorfendowns",
["endukorzsandscalp"] = "zulfarrak",["driftingacrossthesand"] = "zulfarrak",["plightofthesandfury"] = "zulfarrak",
["ebonmereaffairs"] = "gilneascity",
["harnessofchimaeran"] = "maraudon",
["operationhelpjabbey"] = "blackrockdepths",["senatorialrevenge"] = "blackrockdepths",["thearcanegolemcore"] = "blackrockdepths",
["thewildshaper"] = "dmeast",["theupperbinding"] = "dmwest",
["raidersraid"] = "lowerblackrock",["thefinalcrack"] = "lowerblackrock",["foresttrollscum"] = "lowerblackrock",
["thebronzebetrayal"] = "blackmorass",["cavernsoftimerep"] = "blackmorass",["openingofthedark"] = "blackmorass",
["darkreavermenace"] = "scholomance",
["nohonoramongchefs"] = "karacrypt",
}
local GF_TURTLE_WORD_QUEST = {
["blackstone"] = 10,["kingsbane"] = 10,["hezrul"] = 19,["alverold"] = 20,["klaven"] = 24,["diathorus"] = 30,["grushak"] = 31,["grimeye"] = 31,["palkeote"] = 39,["almaudrak"] = 40,["sorrowclaw"] = 41,["snarlclaw"] = 44,["ravenwood"] = 45,
["gelwig"] = 48,["gelweg"] = 48,["zefek"] = 48,["janira"] = 50,["vilegrip"] = 51,["vilegrips"] = 51,["lykourgos"] = 53,["hazzuri"] = 54,["tanglemoss"] = 54,["lapidis"] = 55,["fearoth"] = 55,["letashaz"] = 55,["rholgast"] = 57,
["xanthar"] = 60,["krampus"] = 60,["solnius"] = 60,["xanvarak"] = 60,["morogo"] = 60,["ramstein"] = 60,["blackwald"] = 60,["shadowtooth"] = 61,["larannikus"] = 61,["larannikus"] = 61,["venethas"] = 62,["bovarkez"] = 63,

-- Two Words
["lordvash"] = 10,["lordvasharj"] = 10,["ladyrenirja"] = 10,["darkstorms"] = 12,["sandshark"] = 13,["anchorsend"] = 17,["hezrulbloodmark"] = 19,["cuttingranks"] = 19,["magicalinterference"] = 20,["hawksvigil"] = 24,
["dragonkinannoyance"] = 25,["strangebedfellows"] = 25,["anchoredge"] = 30,["shadowwell"] = 30,["gromhellscream"] = 30,["racequest"] = 32,["returningproperty"] = 35,["waynemanners"] = 35,["lingeringmother"] = 39,["cleaningjob"] = 40,["fearincarnate"] = 41,
["spitecrestdecursions"] = 42,["spitecrestincursions"] = 42,

["draconicpresence"] = 43,["scalebaneridge"] = 43,["ladyjanira"] = 50,["tinkersparktransponder"] = 54,["riftwalkerscane"] = 54,["kroshius"] = 55,["hermitswrath"] = 55,["uncoveringevil"] = 55,["azurescale"] = 55,["raidersrevenge"] = 56,["grommash"] = 57,
["darkwhisperculling"] = 60,["hostileenvoys"] = 60,["barkskintribe"] = 60,["therace"] = 60,["tetheredmemories"] = 60,["corruptedsand"] = 60,["wrappingwarpwood"] = 61,["upperbinding"] = 60,["pricolichlycan"] = 60,["shadowedspectre"] = 60,
["scytheboss"] = 60,["scythewolfboss"] = 60,["morogosthunderfoot"] = 60,["lordxanvarak"] = 60,

-- Three Words
["destroyingventureco"] = 9,["venturecoleadership"] = 9,["deepbluesea"] = 13,["removingleperleadership"] = 13,["masteringtheformula"] = 14,["cleaningthefarm"] = 19,["satisfactionforshak"] = 20,["churchofwestfall"] = 22,
["thedragonmawconflict"] = 28,["lightingtheoilmaster"] = 28,
["thelosttablets"] = 30,["theseekersdemise"] = 30,["thefinalstrike"] = 31,["themortalstrike"] = 31,["thequillboarsuspects"] = 35,["rootingoutevil"] = 37,["securingthekeep"] = 40,["securingtheroads"] = 40,["unforgottenandunforgiven"] = 40,["orboforahil"] = 40,
["ragingoceansblue"] = 41,["justicefordustwallow"] = 43,["baneofscalebane"] = 44,["undoingthecurse"] = 44,["signetofsilverlaine"] = 45,["staffofshinban"] = 45,["magicofdragons"] = 45,["theravenwoodscepter"] = 46,
["revengeafterdeath"] = 47,["minersunionmutiny"] = 50,["decimatetheirranks"] = 50,["theaquastone"] = 51,["dampeningmustend"] = 52,["disharmonyofflame"] = 52,["bigenergyproject"] = 54,["shadowswornpendantbounty"] = 54,["stopthedragonflight"] = 56,
["tohunterthehunter"] = 57,["blackrockandroll"] = 57,["removingvitalassets"] = 58,["legendofeskhandar"] = 58,["honoringthewarrior"] = 58,["felenergyirregularities"] = 60,["intothedream"] = 60,["intothedreamv"] = 60,["inarush"] = 60,
["scouringthedesert"] = 60,["thebronzebetrayal"] = 60,["asleepundersnow"] = 60,["therunestonescepter"] = 60,["theeternalsleeper"] = 60,["savingtheshadowtooth"] = 60,["thewhitestag"] = 62,["theprisonsbindings"] = 62,["rothlenfamilybrooch"] = 63,
["mysteryofkarazhan"] = 60,

-- Four Words
["leadersofthereefscale"] = 10,["terrorofchillbreeze"] = 11,["downwiththesickness"] = 14,["headofthepack"] = 16,["falloftheusurper"] = 20,["thescytheofelune"] = 30,["talesofthepast"] = 38,["andjusticeforall"] = 43,["headofthehunters"] = 44,
["inabookonce"] = 49,["bringdownthepriestess"] = 50,["thesmasherandthetrampler"] = 53,["lightfalluponthee"] = 56,["killingthetidelord"] = 56,["anechofrombeyond"] = 56,["strengthtomovemountain"] = 58,
["scytheofthegoddess"] = 60,["fateoftheharborage"] = 60,["underthevibrantmoonlight"] = 60,["terrorofthewebweavers"] = 60,["tocatcharat"] = 60,["findingademonhunter"] = 60,["thedepthsofkarazhan"] = 63,

["weaponskillquest"] = 60,["weaponskillelite"] = 60,
["furbolgelite"] = 60,

["scarletbastion"] = 60,["scarletenclave"] = 60,
["inarush"] = 60,["stoneguardian"] = 60,
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
["es"] = 63.3,["sanctum"] = 63.3,["karazhan"] = 64.5,["concavius"] = 64,["ostarius"] = 64,["nerub"] = 64,["reaver"] = 64,["clackora"] = 64,
["lowerkarazhan"] = 64.5,["upperkarazhan"] = 64.5,["karazhanhalls"] = 64.5,
}
local GF_TURTLE_WORD_TRADE = {
["jewelcrafter"] = .5,["gemology"] = .5,["gemonology"] = .5,["gemologist"] = .5,["gemonologist"] = .5,["lfjewel"] = 3,["lfjewelcrafter"] = 3,["lfjc"] = 3,["jewelcrafteron"] = .5,["jewelcrafteraround"] = .5,
["beltbuckle"] = 1,["allbeltbuckle"] = 1,

-- Jewelcrafting
["offerjewelcrafter"] = 1,
["jewelcrafterinorgrimmar"] = 2.5,["jewelcrafterinstormwind"] = 2.5,["jewelcrafterinironforge"] = 2.5,["jewelcrafterinundercity"] = 2.5,

["needjewelcrafter"] = 2,["anyjewelcrafter"] = 1,["anyjewel"] = 1,["anyjewelcrafterplease"] = 1.5,["anyjewelcrafterworking"] = 1,
["anyjewelcrafterring"] = 1,["anyjewelring"] = 1,["anyjewelcrafterneck"] = 1,["anyjewelringneck"] = 1,["anyjewelcrafterbelt"] = 1,["anyjewelbelt"] = 1,
["anyonewithjewelcrafter"] = 1,["anyoneneedjewelcrafter"] = 1,["anyonejewelcrafter"] = 1.5,["anyonejewelcrafterplease"] = 1.5,["anyonejewelcrafterworking"] = 1,
["whocanjewelcrafter"] = 1.5,["anyjewelcrafteraround"] = 1,["anyjewelcrafterwith"] = 3,
["anyjewelcrafterwhocan"] = 1.5,["anyjewelcrafterwhowill"] = 1.5,["anynjewelcrafterwhohas"] = 1.5,["anynjewelcrafterwhohave"] = 1.5,["canjewelcrafter"] = .5,["jewelcrafterservice"] = 3,

["havejewelcrafter"] = .5,["anyjewelcrafterhere"] = 1.5,["anyjewelcrafterfor"] = 1.5,["jewelcrafterfor"] = 1,["jewelcrafterwith"] = 1,["jewelcrafterforhitem"] = 3,["jewelcrafterwithhitem"] = 3,

["cananyjewelcrafter"] = 1,["cananyjewelcraftermake"] = .5,

["mastergemologist"] = 1.5,["mastergemonologist"] = 1.5,["allgem"] = 1,["allthegem"] = 1,["allgemaround"] = 2,["allgemstonearound"] = 2,["allthegemaround"] = 2,["allthegemstonearound"] = 2,["gemologyjewelcrafter"] = 1,
["jewelcrafteratyourservice"] = 1,
["jewelcrafterenchant"] = 1,

["gemstonecrafter"] = 1,["gemstonecrafteraround"] = 1,

-- Two Words
["freehyjalsummon"] = 1.5,["cosmiccloth"] = .5,["etherealleather"] = .5,["cosmicpieces"] = 1,["etherealpieces"] = 1,["shadowforgedeye"] = 1,

-- To Belt
["allbeltbuckle"] = 1,["applybeltbuckle"] = 1,
["applyintellect"] = 3,["applyagility"] = 3,["applyresist"] = 3,

["statstrinket"] = 1,["toimprovemyneck"] = 1,

["thoriumspursanyone"] = 2,["dreamsteelbuckle"] = .5,["anydreamsteelbuckle"] = 1,

-- Belt/Beltbuckle combinations
["enchantbelt"] = .5,["beltenchant"] = .5,["enchantbeltwith"] = .75,
["agilitybelt"] = 1,["beltagility"] = 1,["withagilitybelt"] = 1,["needagilitybelt"] = 1,["anyagilitybelt"] = 1,["anyoneagilitybelt"] = 1,["haveagilitybelt"] = 1,["agilitybeltplease"] = 2,["agilitybeltenchant"] = 2,["agilitybeltbuckle"] = 1,["beltbuckleagility"] = 1,["withagilitybeltbuckle"] = 1,["needagilitybeltbuckle"] = 1,["anyagilitybeltbuckle"] = 1,["anyoneagilitybeltbuckle"] = 1,["haveagilitybeltbuckle"] = 1,["agilitybeltbuckleplease"] = 2,["agilitybeltbuckleenchant"] = 2,
["resistbelt"] = 1,["beltresist"] = 1,["withresistbelt"] = 1,["needresistbelt"] = 1,["anyresistbelt"] = 1,["anyoneresistbelt"] = 1,["haveresistbelt"] = 1,["resistbeltplease"] = 2,["resistbeltenchant"] = 2,["resistbeltbuckle"] = 1,["beltbuckleresist"] = 1,["withresistbeltbuckle"] = 1,["needresistbeltbuckle"] = 1,["anyresistbeltbuckle"] = 1,["anyoneresistbeltbuckle"] = 1,["haveresistbeltbuckle"] = 1,["resistbeltbuckleplease"] = 2,["resistbeltbuckleenchant"] = 2,
["intellectbelt"] = 1,["beltintellect"] = 1,["withintellectbelt"] = 1,["needintellectbelt"] = 1,["anyintellectbelt"] = 1,["anyoneintellectbelt"] = 1,["haveintellectbelt"] = 1,["intellectbeltplease"] = 2,["intellectbeltenchant"] = 2,["intellectbeltbuckle"] = 1,["beltbuckleintellect"] = 1,["withintellectbeltbuckle"] = 1,["needintellectbeltbuckle"] = 1,["anyintellectbeltbuckle"] = 1,["anyoneintellectbeltbuckle"] = 1,["haveintellectbeltbuckle"] = 1,["intellectbeltbuckleplease"] = 2,["intellectbeltbuckleenchant"] = 2,
["staminabelt"] = 1,["beltstamina"] = 1,["withstaminabelt"] = 1,["needstaminabelt"] = 1,["anystaminabelt"] = 1,["anyonestaminabelt"] = 1,["havestaminabelt"] = 1,["staminabeltplease"] = 2,["staminabeltenchant"] = 2,["staminabeltbuckle"] = 1,["beltbucklestamina"] = 1,["withstaminabeltbuckle"] = 1,["needstaminabeltbuckle"] = 1,["anystaminabeltbuckle"] = 1,["anyonestaminabeltbuckle"] = 1,["havestaminabeltbuckle"] = 1,["staminabeltbuckleplease"] = 2,["staminabeltbuckleenchant"] = 2,

-- Words that get around filters
["pinkyservice"] = 2,["uncleabe"] = 2,
}

local GF_TurtleSearchList = {
		[1] = { "Crescent Grove", 32, 38, "CG",},
		[2] = { "Gilneas City", 43, 49, "GC", },
		[3] = { "Hateforge Quarry", 52, 60, "HFQ", },
		[4] = { "Stormwind Vault", 58, 60, "SWV", },
		[5] = { "Black Morass", 58, 60, "COT", },
		[6] = { "Karazhan Crypt", 60, 60, "CRYPT", },
		[7] = { "Emerald Sanctum", 60, 60, "ES", },
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
	table.insert(GF_BUTTONS_LIST.LFGSize, 3, { GF_12_MAN, 1, 60, } );
end