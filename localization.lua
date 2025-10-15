GF_CHANNEL_NAME	= "World"
GF_TURTLE_SERVERS_LIST = { ["Nordanaar"] = true, ["Tel'Abim"] = true, ["Ambershire"] = true }
GF_HARDCORE_SPELL_NAME = "Hardcore"
GF_HARDCORE_TURTLE_SUBTEXT = "Challenge"

-- Class List
GF_PRIEST	= "Priest"
GF_MAGE= "Mage"
GF_WARLOCK	= "Warlock"
GF_DRUID	= "Druid"
GF_HUNTER	= "Hunter"
GF_ROGUE	= "Rogue"
GF_WARRIOR	= "Warrior"
GF_PALADIN	= "Paladin"
GF_SHAMAN	= "Shaman"

-- Race List
GF_HUMAN	= "Human"
GF_NIGHT_ELF= "Night Elf"
GF_DWARF	= "Dwarf"
GF_GNOME	= "Gnome"
GF_ORC= "Orc"
GF_UNDEAD	= "Undead"
GF_TROLL	= "Troll"
GF_TAUREN	= "Tauren"

-- Group Size
GF_5_MAN	= "5-man"
GF_10_MAN	= "10-man"
GF_12_MAN	= "12-man"
GF_15_MAN	= "15-man"
GF_20_MAN	= "20-man"
GF_25_MAN	= "25-man"
GF_30_MAN	= "30-man"
GF_40_MAN	= "40-man"

--if GetLocale() == "zhCN" then
--elseif GetLocale() == "zhTW" then
--elseif GetLocale() == "deDE" then
--elseif GetLocale() == "esES" then
--elseif GetLocale() == "frFR" then
--end

-- Binding Names
BINDING_HEADER_GF_MAIN_HEADER	= "Group Finder" -- Main window title
BINDING_NAME_GF_SHOW_FRAME= "Toggle Main Window" -- Bindings Name
BINDING_NAME_GF_SHOW_LOG= "Toggle Log Window"
BINDING_NAME_GF_SHOW_GROUP= "Toggle Group Window"

-- Main window common buttons and texts
GF_MAIN_HEADER = "Group Finder" -- Main window title
GF_FIND_PLAYERS_AND_GROUPS = "Find players and groups" -- Label for Groupfinder tab
GF_MORE_FEATURES = "More" -- Label for "More" frame(Settings/Log/Blacklist)
GF_SHOW_GROUPS_IN = "Show groups in"
GF_WORLD_SEND_TEXT = "Below is the message that gets announced to the World Channel"
GF_HARDCORE_SEND_TEXT = "Below is the message that gets announced to the Hardcore Channel"
GF_WORLD_NOW_SENDING = "GF: Now sending announcements to the World Channel"
GF_HARDCORE_NOW_SENDING = "GF: Now sending announcements to the Hardcore Channel"
GF_CHAT = "Chat"
GF_MINIMAP = "Minimap"
GF_NEW_ONLY = "New only"
GF_SHOW = "Show"
GF_SHOW_CHAT = "Chat"
GF_SHOW_TRADES = "Trades"
GF_SHOW_LOOT = "Loots"
GF_SHOW_GUILDS = "Guilds"
GF_PLAY_SOUND = "Play sound" -- Label for GF_PlaySoundOnResultsCheckButton
GF_CHAT_ON = "Chat on"
GF_CHAT_OFF = "Chat off"
GF_CHAT_GROUP_ON = "Groups in chat, on"
GF_CHAT_GROUP_OFF = "Groups in chat, off"
GF_QUEST_IS_LEVEL_TEXT = " is level "

-- Log Filters
GF_LOG_AND_MONITOR = "Logs " -- Label at top of Log frame
GF_LOG_GROUP = "Group"
GF_LOG_FILTERED = "Filtered"
GF_LOG_CHAT = "Chat"
GF_LOG_TRADES = "Trades"
GF_LOG_GUILD = "Guild"
GF_LOG_LOOT = "Loot"
GF_LOG_SPAM = "Spam"
GF_LOG_BLACKLIST = "Blacklist"
GF_LOG_BELOWLEVEL = "Level"

-- Log Types
GF_LOGGED_ME = "[M] " -- Text added to Log tab when a message is from myself
GF_LOGGED_GROUPS = "[G] " -- Text added to Log tab when a message is a group
GF_LOGGED_NEW = "[N] " -- Text added to Log tab when a message is new
GF_LOGGED_FILTERED = "[F] " -- Text added to Log tab when a message is group that was filtered
GF_LOGGED_CHAT = "[C] " -- Text added to Log tab when a message is chat
GF_LOGGED_TRADES = "[T] " -- Text added to Log tab when a message is trades
GF_LOGGED_GUILD = "[U] " -- Text added to Log tab when a message is guild recruitment
GF_LOGGED_LOOT = "[L] " -- Text added to Log tab when a message is loot/money
GF_LOGGED_SPAM = "[S] " -- Text added to Log tab when a message is spam
GF_LOGGED_BLACKLIST = "[B] " -- Text added to Log tab when a message is blacklist
GF_LOGGED_BELOWLEVEL = "[V] " -- Text added to Log tab when a message is level under threshold

-- Whisper/Guild Log
GF_LOG_WHISPERLOG = "Whisper Log"
GF_LOG_SHOWLOG = "Show Log"
GF_LOG_GUILDWHISPERS = "Guild+Whisper"
GF_WHISPER_FORMAT = "Error: Wrong whisper format."

-- Group-related buttons and texts
GF_KEYWORDS_DROPDOWN_DESCR = "Keywords:" -- Label to the left of the GF_GroupsFrameDescriptionEditBox on group frame
GF_AUTO_FILTER = "Auto Filter"
GF_SHOW_HARDCORE = "Hardcore"
GF_SHOW_NORMAL = "Normal"
GF_SHOW_NORMAL_HC = "Normal+HC"
GF_SHOW_DUNGEONS = "Show Dungeons"
GF_SHOW_RAIDS = "Show Raids"
GF_SHOW_QUESTS = "Show Quests"
GF_SHOW_OTHER = "Show Other"
GF_SHOW_LFM = "Show LFM"
GF_SHOW_LFG = "Show LFG"
GF_CLEAR = "Clear"
GF_FOUND = "Found: " -- Shows number of groups on list
GF_PAGE = "PAGE" -- Label for pages of groups.

-- Settings tab buttons and texts
GF_LOG = "   Log   " -- Label for Log tab
GF_SETTINGS = "Settings" -- Label for Settings tab
GF_BLACK_LIST = "Blacklist" -- Label for Blacklist tab
GF_CHAT_SETTINGS = "Chat settings" -- Label for minimap section of Settings tab
GF_DISPLAY_SETTINGS = "Display settings" -- Label for filter section of Settings tab
GF_GROUP_SETTINGS = "Group settings" -- Label for minimap section of Settings tab
GF_MINIMAP_SETTINGS = "Minimap settings" -- Label for minimap section of Settings tab
GF_OTHER_SETTINGS = "Other settings" -- Label for minimap section of Settings tab
GF_ICON = "Minimap icon" -- Label for Minimap adjust icon adjust/radius
GF_MINIMAP_GROUP_TEXT = "Minimap group text" -- Label for Minimap adjust icon text adjust/radius
GF_MINIMAP_TEXT = "Minimap text" -- Label for Minimap adjust icon text adjust/radius
GF_ADJUST_ANGLE = "Adjust angle" -- Label for Minimap adjust icon adjust/radius
GF_ADJUST_RADIUS = "Adjust radius" -- Label for Minimap adjust icon text adjust/radius
GF_ADJUST_TRANSPARENCY = "Adjust window transparency" -- Label for adjust transparency on Settings tab
GF_ADJUST_UISCALE = "Adjust window scale" -- Label for adjust transparency on Settings tab
GF_UISCALE_UPDATE = "Update" -- Label for update UIScale
GF_RESET_ALL_SETTINGS = "Reset all settings" -- Label for Reset All Settings
GF_ARE_YOU_SURE_RESET_SETTINGS = "Are you sure you want to reset all settings?" -- Label for Reset All Settings
GF_YOUR_SETTINGS_RESET = "Your settings have been reset." -- Label for Reset All Settings

GF_ADJUST_FILTER_LEVEL = "Group Filtering" -- Label for Filter slider on Settings tab
GF_FilterLevelNotes = {}
GF_FilterLevelNotes[1] = "Not Strict"
GF_FilterLevelNotes[2] = "Strict"
GF_FilterLevelNotes[3] = "Very Strict"

-- Other Settings
GF_USE_WHO_ON_GROUPS = "Auto /Who"
GF_JOIN_WORLD = "Join World channel"
GF_SYSTEM_FILTER = "Enable System Filtering"
GF_SPAM_FILTER = "Enable Spam Filtering"
GF_AUTO_BLACKLIST = "Enable Auto Blacklist"
GF_SHOW_ORIGINAL_CHAT = "Show Formatted Chat"
GF_ALWAYS_SHOW_GUILD = "Always Show Guild/Friends"
GF_SPAM_FILTER_TIMER = "Spam flag clear time"
GF_BLACKLIST_MINLEVEL = "Auto Blacklist maximum level"
GF_BLOCK_BELOW_LEVEL = "Block messages below level"
GF_GROUP_LIST_DURATION = "Group display time"
GF_AUTO_FILTER_LEVEL = "Auto Filter level range"
GF_NEW_GROUP_TIMEOUT = "\"New Listing\" duration"
GF_QUEST_MOD = "Use Native Quest Mod"
GF_PURGE_PFDB = "Purge PFUI player databases on Login"

-- Group Maker related buttons and texts
GF_AUTO = "Auto"
GF_LFM_LFG = "LFM/LFG"
GF_DUNGEON = "Dungeon"
GF_RAID = "Raid"
GF_ROLE = "Role"
GF_TANK = "Tank"
GF_HEALER = "Healer"
GF_DPS = "DPS"
GF_MELEE = "Melee"
GF_RANGE = "Range"
GF_CASTER = "Caster"

-- Getwho-related buttons and texts
GF_WHO = "Who"
GF_GET_WHO = "Get Who"
GF_STOP_WHO = "Stop Who"
GF_INVITE = "Invite"
GF_REQUEST = "Request"
GF_RESET = "Reset"
GF_INVITE_PLEASE = "Invite Please"
GF_INVITING_FOR = "Inviting you for: "

GF_SENDING_WHO_FOR = "Sending who request for: "
GF_WHO_MSG_SYSTEM = "%d+ players? total"

GF_NO_WHISPER_DUNGEON = "There are no dungeons in the input boxes. I need a dungeon name to know what levels to look for."
GF_NO_WHISPER_TEXT = "No valid text to send."
GF_NO_PLAYERS_TO_WHISPER = "No players in whisper queue"

GF_FRIEND_MSG_SYSTEM = "|Hplayer ?:(%a+)|h.-|h( has come online.)"
GF_HARDCORE_TRAGEDY_MSG_SYSTEM = "A tragedy has occurred"
GF_HARDCORE_TRANSCENDED_MSG_SYSTEM = " has transcended death"

-- Blacklist buttons and texts
GF_OK = "Ok" -- Popup Dialog Button
GF_CANCEL = "Cancel" -- Popup Dialog Button
GF_ENTER_PLAYER_NAME = "Enter the name of the player to be blacklisted:" -- Label for blacklist add player popup
GF_ADD_PLAYER = "Add player" -- Blacklist add player button Label
GF_INVALID_PLAYER_NAME = " is an invalid player name." -- Blacklist tried to add invalid player name
GF_EDIT_PLAYER = "Edit player information" -- Blacklist Edit button Label
GF_DELETE = "Delete" -- Blacklist delete button Label
GF_DEFAULT_PLAYER_NOTE = "New player added. Click here to edit this note." -- Default Blacklist note

-- Announce related buttons
GF_ANNOUNCE_LFG_BTN = "Announce Group" -- Label for the group finder announce when turned off
GF_AUTO_ANNOUNCE_TURNED_ON = "Auto announce ON." -- Internal text when I click the announce button to start announcing.
GF_AUTO_ANNOUNCE_TURNED_OFF = "Auto announce OFF" -- Internal text when I click the announce button to stop announcing
GF_NOTHING_TO_ANNOUNCE = "Nothing to announce: Setting auto announce to OFF" -- If GF_LFGDescriptionEditBox is then can't start announce
GF_NOTHING_TO_ANNOUNCE2 = "Nothing to announce" -- If GF_LFGDescriptionEditBox is empty then can't start announce
GF_SENT = "Sent: "
GF_ANNOUNCED_LFG_EXT = "Announced LFG message to the LFG channel" -- Minimap text when your group is announced.
GF_AFK_ANNOUNCE_OFF = "You are AFK: Setting auto announce to OFF" -- Text when announce is on and you are AFK.
GF_JOINED_GROUP_ANNOUNCE_OFF = "You have joined a group or are no longer leader. LFG Auto announce OFF" -- Text when announce is on and you join someone else's group
GF_NO_MORE_PLAYERS_NEEDED = "No more players needed." -- "Your group is full. LFG Auto announce OFF"

-- Common text
GF_SECONDS = " seconds"
GF_MIN = " min"
GF_MINUTE = " minute"
GF_MINUTES = " minutes"
GF_NOW_AFK = "You are now AFK" -- The text the client receives when it goes afk(used to turn off announce).
GF_TIME_AGO = " ago" -- Label for righttext on group list, showing how many minutes ago group was found
GF_TIME_JUST_NOW = "Just now" -- Text for righttext on group list, "Found ## minutes ago"

GF_GenTooltips = {

GF_MinimapIcon = { 
	tooltip1 = "Group Finder", 
	tooltip2 = "Left-Click to open. Shift-click to toggle \"Show Chat\". Right-click to toggle \" Show groups in Chat\".", 
	anchor	= "TOPRIGHT",
	relativePoint	= "TOPLEFT" },

GF_GroupsInChatCheckButton = { 
	tooltip1 = "Show groups in chat", 
	tooltip2 = "When checked, groups that meet your criteria will be displayed in chat.",  },
GF_GroupsNewOnlyCheckButton = { 
	tooltip1 = "Show only new groups", 
	tooltip2 = "When checked, only groups flagged as 'NEW' will be displayed in chat and on the minimap.",  },
GF_GroupsInMinimapCheckButton = { 
	tooltip1 = "Show groups on the minimap", 
	tooltip2 = "When checked, new groups that meet your criteria will be displayed next to the minimap.",  },
GF_ShowChatCheckButton = { 
	tooltip1 = "Show non-group chat",
	tooltip2 = "When checked, non-group and non-trade chat will be displayed as normal in channels. Otherwise it will be hidden.",  },
GF_ShowTradesCheckButton = {
	tooltip1 = "Show trade chat",
	tooltip2 = "When checked, WTS/WTB/LFW-type messages will be shown. Otherwise they will be hidden.",  },
GF_ShowLootCheckButton = {
	tooltip1 = "Show loot messages",
	tooltip2 = "When checked, item rolls, looting of money and grey items, selecting greed/need for uncommon items, and experience/honor/reputation gains will be shown. Otherwise they will be hidden.",  },
GF_ShowGuildsCheckButton = {
	tooltip1 = "Show guild messages",
	tooltip2 = "When checked, guild recruitment messages will be shown. Otherwise they will be hidden." },
GF_FrameUseWhoOnGroupsCheckButton = {
	tooltip1 = "Use who on groups",
	tooltip2 = "When checked, will use /who automatically to find class/level/guild information." },
GF_FrameUseWhoOnGroupsCheckButtonTurtle = {
	tooltip1 = "Use who on groups",
	tooltip2 = "When checked, will find class/level information automatically via the Friends List(this will add then remove names from your friends list)." },

GF_AutoFilterCheckButton = {
	tooltip1 = "Auto-Filter", 
	tooltip2 = "When checked, only groups near your level will be shown." },
GF_GroupsFrameShowDungeonCheckButton = { 
	tooltip1 = "Show dungeon groups", 
	tooltip2 = "When checked, results will include dungeon groups." },
GF_GroupsFrameShowRaidCheckButton = { 
	tooltip1 = "Show raid groups", 
	tooltip2 = "When checked, results will include raid groups." },
GF_GroupsFrameShowQuestCheckButton = { 
	tooltip1 = "Show raid groups", 
	tooltip2 = "When checked, results will include quest groups." },
GF_GroupsFrameShowOtherCheckButton = { 
	tooltip1 = "Show other groups", 
	tooltip2 = "When checked, results will include groups other than dungeons/raids/quests." },
GF_GroupsFrameShowLFMCheckButton = { 
	tooltip1 = "Show groups looking for more", 
	tooltip2 = "When checked, results will include any group that isn't flagged with LFG" },
GF_GroupsFrameShowLFGCheckButton = {
	tooltip1 = "Show players looking for group", 
	tooltip2 = "When checked, results will include all groups flagged with LFG" },

GF_GroupsFrameDescriptionEditBox = { 
	tooltip1 = "Search by keywords", 
	tooltip2 = "Filters your group list by keywords. It will search by both text and dungeon nicknames(e.g. 'vc' will also search for dm/deadmines). Separate search terms with commas for multiple searches(e.g. dm,ubrs,scholo,mc,etc)." },

GF_GroupAutoCheckButton = { 
	tooltip1 = "Auto-adjust LFM", 
	tooltip2 = "Adjusts your 'LFM' or 'LFxM' messages by the number of people in the group relative to the selected group size." },
GF_LFGWhoWhisperEditBox = { 
	tooltip1 = "Whisper Message", 
	tooltip2 = "Use the 'Get Who' button to make a list of players matching the class and level range of the dungeon selected. Press the 'Invite' button to send this text(if blank it will send the World Channel message instead). Will not message the same person more than once every 15 minutes." },
GF_LFGGetWhoButton = { 
	tooltip1 = "Gets a who list",
	tooltip2 = "Looks for players of the class selected and within the level range of the dungeon selected.",  },
GF_LFGWhisperButton = { 
	tooltip1 = "Send an invite whisper", 
	tooltip2 = "Whispers one player per click from the list made by the 'Get Who' button. Whispers the text below. If blank it will send the World Channel message instead.",  },
GF_AnnounceToLFGButton = {
	tooltip1 = "Announce",
	tooltip2 = "Announces your group to the world channel automatically. Stops announcing if you go afk or if your group is full or if you lose party leader(doesn't require party leader)." },

GF_FrameJoinWorldCheckButton = {
	tooltip1 = "Join World",
	tooltip2 = "When checked, you will join the World Channel automatically." },
GF_PlaySoundOnResultsCheckButton = {
	tooltip1 = "Play Sound on groups",
	tooltip2 = "When checked, an alert sound will be made when a group is found that matches your filters." },
GF_FrameSystemFilterCheckButton = {
	tooltip1 = "Filter System Spam",
	tooltip2 = "When checked, system spam from group invites, sharing quests, and monster emote/say messages will be hidden." },
GF_FrameSpamFilterCheckButton = {
	tooltip1 = "Spam Filter",
	tooltip2 = "When checked, long messages repeated more than once, and short messages repeated more than twice within two minutes will be blocked. In addition, all messages from the player will be blocked for the duration of the 'spam flag clear time'. Excludes friends, guildies, and party members." },
GF_FrameAutoBlacklistCheckButton = {
	tooltip1 = "Blacklist Filter",
	tooltip2 = "When checked, players who repeat the same message repeatedly(more than 120 characters) and who are below the 'auto blacklist maximum level' will be permanently added to the blacklist." },
GF_FrameShowFormattedChatCheckButton = {
	tooltip1 = "Show Formatted Chat",
	tooltip2 = "When checked, channel messages will be formatted to show Level/Class when available." },
GF_FrameAlwaysShowGuildCheckButton = {
	tooltip1 = "Always Show Guild/Friends",
	tooltip2 = "When checked, \"channel\" and \"yell\" messages from guildies/friends/party members will always be shown. Ignoring chat filters." },
GF_FrameQuestModCheckButton = {
	tooltip1 = "Use Native Quest Mod",
	tooltip2 = "When checked, clicking quests and quest links will show quest information(disabled if pfQuest or Questie are installed)." },
GF_PurgePFDBCheckButton = {
	tooltip1 = "Purge pfUI player databases on Login",
	tooltip2 = "Purges the pfUI player class/level/guild database when logging in. The pfUI player database can become massive, but with Formatted Chat it is never used(this is only active when using formatted Chat)." },

GF_LogShowGroups = {
	tooltip1 = "Show Groups",
	tooltip2 = "Logs will include [G] Groups and [N] New Groups." },
GF_LogShowFiltered = {
	tooltip1 = "Show Filtered",
	tooltip2 = "Logs will include [F] Filtered Groups." },
GF_LogShowChat = {
	tooltip1 = "Show Chat",
	tooltip2 = "Logs will include [C] Chat Messages." },
GF_LogShowTrades = {
	tooltip1 = "Show Trades",
	tooltip2 = "Logs will include [T] Trades Messages." },
GF_LogShowGuild = {
	tooltip1 = "Show Guild",
	tooltip2 = "Logs will include [U] Guild Recruitment Messages." },
GF_LogShowLoot = {
	tooltip1 = "Show Loot",
	tooltip2 = "Logs will include [L] Filtered Loot Messages." },
GF_LogShowSpam = {
	tooltip1 = "Show Spam",
	tooltip2 = "Logs will include [S] Spam Messages." },
GF_LogShowBlacklist = {
	tooltip1 = "Show Blacklist",
	tooltip2 = "Logs will include [B] Blacklisted Messages." },
GF_LogShowBelowLevel = {
	tooltip1 = "Show Below Level",
	tooltip2 = "Logs will include [V] Messages from players below your threshold." },

GF_HideMainFrameHeight = {
	tooltip1 = "Toggles display height",
	tooltip2 = "Reduces the height of the group list and log." },
GF_HideMainFrameWidth = {
	tooltip1 = "Toggles display width",
	tooltip2 = "Reduces the width of the group list and log." },
GF_LogShowWhisperHistory = {
	tooltip1 = "Toggles the Guild/Whisper History Window",
	tooltip2 = "This shows a list of recent whisper and guild activity." },
}
GF_LFG_SPECS = {
	["DRUID"] = { "Balance", "Feral", "Resto", },
	["HUNTER"] = { "BM", "Marks", "Survival", },
	["MAGE"] = { "Arcane", "Fire", "Frost", },
	["PALADIN"] = { "Holy", "Prot", "Ret", },
	["PRIEST"] = { "Disc", "Holy", "Shadow", },
	["ROGUE"] = { "Assassin", "Combat", "Sub", },
	["SHAMAN"] = { "Ele", "Enh", "Resto", },
	["WARLOCK"] = { "Affliction", "Demonology", "Destruction", },
	["WARRIOR"] = { "Arms", "Fury", "Prot", },
}
GF_WORD_SKIP = {
["a"] = true,["an"] = true,["the"] = true,["les"] = true,["la"] = true,["xd"] = true,["xdd"] = true,["mommydom"] = true,["daddydom"] = true,["handsome"] = true,["hspell"] = true,["whales"] = true,
}
GF_WORD_SECOND_SKIP = {
["a"] = true,["an"] = true,["for"] = true,["the"] = true,["to"] = true,["on"] = true,["do"] = true,
}
GF_WORD_FIX_BYPASS = {
["race"] = true,["den"] = true,["challenge"] = true,["thandol"] = true,["summoning"] = true,["calling"] = true,["activation"] = true,["bet"] = true,["collector"] = true,
["family"] = true,["lone"] = true,["lifeblood"] = true,["mortal"] = true,["rebellion"] = true,["ripper"] = true,["warden"] = true,["sword"] = true,["exorcism"] = true,
}
GF_WORD_FIX = {
-- Full word replacement
["fora"] = "for",["forv"] = "for",["foran"] = "for",["needing"] = "need",["want"] = "need",["wants"] = "need",["wanting"] = "need",["wherethe"] = "need",["needof"] = "need",
["needtodo"] = "letsdo",["jointo"] = "join",["atip"] = "tip",["someone"] = "anyone",["somebody"] = "anyone",["whofor"] = "anyonefor",["ane"] = "any",["seek"] = "lf",["seeks"] = "lf",
["anyoneto"] = "anyone",["anybody"] = "anyone",["somewho"] = "anyone",["somone"] = "anyone",["got"] = "have",["gota"] = "have",["gogo"] = "go",["timers"] = "timer",["too"] = "to",["somes"] = "some",["guaranteed"] = "guarantee",["deals"] = "deal",
["available"] = "around",["avail"] = "around",["needtostart"] = "letsdo",["calopen"] = "canopen",["poppedjoin"] = "join",["fastrun"] = "run",["happening"] = "happen",
["party"] = "group",["groupof"] = "group",["pug"] = "group",["pugs"] = "group",["parti"] = "group",["team"] = "group",["teams"] = "group",["bars"] = "bar",
["partnerup"] = "group",["askfor"] = "lf",["also"] = "else",["looks"] = "look",["waters"] = "water",
["hunt"] = "hunter",["ally"] = "alliance",["ali"] = "alliance",["alli"] = "alliance",["allies"] = "alliance",["gokill"] = "group",["hordes"] = "horde",
["helpme"] = "help",["helpmy"] = "help",["helphim"] = "help",["helpher"] = "help",["helpthem"] = "help",["thiefboss"] = "rogue",["online"] = "around",["install"] = "apply",["attach"] = "apply",
["aclan"] = "guild",["tocrack"] = "open",["crackedopen"] = "open",["kinds"] = "kind",["lookingwhocando"] = "lf",
["invitein"] = "invite",["invitefor"] = "invite",["inviteto"] = "invite",["instance"] = "dungeon",["instances"] = "dungeon",["eplchapel"] = "epl",["dmf"] = "darkmoonfaire",
["assist"] = "help",["ur"] = "your",["alot"] = "lot",["tokens"] = "token",
["beginners"] = "beginner",["newbie"] = "beginner",["nub"] = "beginner",["nubs"] = "beginner",["noob"] = "beginner",["noobs"] = "beginner",["newbs"] = "beginner",["lfof"] = "lf",["lffor"] = "lf",
["newbies"] = "beginner",["noobie"] = "beginner",["noobies"] = "beginner",["newcomer"] = "beginner",["newcomers"] = "beginner",["spurs"] = "spur",["highpop"] = "massive",["gbase"] = "guildbase",
["rn"] = "now",["anygo"] = "letsgo",["zugzug"] = "horde",["hordeside"] = "horde",["allianceside"] = "alliance",
["fewdungeon"] = "dungeon",["coupledungeon"] = "dungeon",["somedungeon"] = "dungeon",["givingaway"] = "free",["crusade"] = "crusader",
["morequest"] = "quest",["fewquest"] = "quest",["couplequest"] = "quest",["somequest"] = "quest",["manyquest"] = "quest",["runof"] = "run",["lookingmultiplerun"] = "lfg",["rankedarena"] = "arena",
["mondays"] = "monday",["tuesdays"] = "tuesday",["wednesdays"] = "wednesday",["thursdays"] = "thursday",["fridays"] = "friday",["saturdays"] = "saturday",["sundays"] = "sunday",["minutes"] = "minute",

-- Other
["noting"] = "nothing",["princes"] = "princess",["goo"] = "go",["rogs"] = "rogue",["paladins"] = "paladin",["karazhanv"] = "karazhan",["uldum"] = "uldaman",["hyal"] = "hyjal",
["waterlords"] = "hydraxian",["waterlord"] = "hydraxian",["waterlorsd"] = "hydraxian",["hydraxianhydraxian"] = "hydraxian",["maxskill"] = "skill",["maxlevel"] = "level",["lowlevel"] = "level",["lv"] = "level",

-- Trades
["alchemisttable"] = "alchemistlab",["applied"] = "apply",["applying"] = "apply",["arcaneresist"] = "ar",["aring"] = "ring",["asking"] = "ask",["attached"] = "apply",["installed"] = "apply",["installing"] = "apply",["attaching"] = "apply",["attachment"] = "apply",
["attackpower"] = "ap",["bags"] = "bag",["bosses"] = "boss",["brained"] = "brain",["brace"] = "wrist",["bracelet"] = "wrist",["bracelets"] = "wrist",["bracer"] = "wrist",["bracers"] = "wrist",["boot"] = "boots",["buckles"] = "buckle",
["chests"] = "chest",["cloths"] = "cloth",["crusaders"] = "crusader",["deathroller"] = "deathroll",["deathrollers"] = "deathroll",["deathrolling"] = "deathroll",
["finger"] = "ring",["fingers"] = "ring",["fireresist"] = "fr",["fishing"] = "fish",["fishingskill"] = "fish",["fishskill"] = "fish",["fortunes"] = "fortune",["frostresist"] = "fr",["gems"] = "gem",["glove"] = "gloves",
["hander"] = "hand",["hands"] = "hand",["handweapon"] = "weapon",["heads"] = "head",["helm"] = "head",["helmet"] = "head",["herbalism"] = "herb",["herbalismskill"] = "herb",["herbskill"] = "herb",["items"] = "item",["leg"] = "legs",["aggie"] = "agility",
["lifelegs"] = "healthlegs",["lifestealing"] = "lifesteal",

["advancedmine"] = "mine",["advancedherb"] = "mine",["advancedspecialization"] = "specialization",["advancedblacksmith"] = "blacksmith",

["buy"] = "C",["buys"] = "C",["buyer"] = "C",["buyers"] = "C",["buying"] = "C",["cheap"] = "C",["cheaper"] = "C",["cheapest"] = "C",["cod"] = "C",["craft"] = "C",["crafts"] = "C",["crafter"] = "C",["crafters"] = "C",["crafting"] = "C",["offer"] = "C",["offers"] = "C",["offered"] = "C",["offering"] = "C",["paying"] = "C",["preemptivedonation"] = "C",["salesman"] = "C",["sell"] = "C",["sells"] = "C",["seller"] = "C",["sellers"] = "C",["sellin"] = "C",["selling"] = "C",["tipping"] = "C",["trade"] = "C",["trades"] = "C",["trader"] = "C",["traders"] = "C",["trading"] = "C",["transmute"] = "C",["transmutes"] = "C",

["linencloth"] = "cloth",["woolcloth"] = "cloth",["silkcloth"] = "cloth",["mageweavecloth"] = "cloth",["runecloth"] = "cloth",
["elementiumore"] = "ore",["darkironore"] = "ore",["truesilverore"] = "ore",["mithrilore"] = "ore",["thoriumore"] = "ore",["ironore"] = "ore",["goldore"] = "ore",["incendiciteore"] = "ore",["tinore"] = "ore",["silverore"] = "ore",["copperore"] = "ore",
["elementiumbar"] = "bar",["darkironbar"] = "bar",["truesilverbar"] = "bar",["mithrilbar"] = "bar",["thoriumbar"] = "bar",["ironbar"] = "bar",["goldbar"] = "bar",["incendicitebar"] = "bar",["tinbar"] = "bar",["silverbar"] = "bar",["copperbar"] = "bar",
["elementiumbars"] = "bar",["darkironbars"] = "bar",["truesilverbars"] = "bar",["mithrilbars"] = "bar",["thoriumbars"] = "bar",["ironbars"] = "bar",["goldbars"] = "bar",["incendicitebars"] = "bar",["tinbars"] = "bar",["silverbars"] = "bar",["copperbars"] = "bar",
["roughstone"] = "stone",["coarsestone"] = "stone",["heavystone"] = "stone",["solidstone"] = "stone",["densestone"] = "stone",

["ironspike"] = "shieldspike",["mithrilspike"] = "shieldspike",["thoriumspike"] = "shieldspike",["mithspike"] = "shieldspike",["thorspike"] = "shieldspike",
["mithrilspur"] = "spur",["thoriumspur"] = "spur",

["starting"] = "start",["making"] = "make",["creating"] = "create",["hosting"] = "host",["forming"] = "form",["gathering"] = "gather",
["sp"] = "spelldamage",["spd"] = "spelldamage",["spelldmg"] = "spelldamage",["spellpower"] = "spelldamage",["healpower"] = "spelldamage",
["arcanepower"] = "spelldamage",["shadowpower"] = "spelldamage",["naturepower"] = "spelldamage",["firepower"] = "spelldamage",["frostpower"] = "spelldamage",["power"] = "spelldamage",["spellspelldamage"] = "spelldamage",

["buckle"] = "beltbuckle",["beltbeltbuckle"] = "beltbuckle",["beltbuckler"] = "beltbuckle",["gemmaster"] = "gemstone",["rapidity"] = "haste",["amulet"] = "neck",

["hagility"] = "agility",["hstrength"] = "strength",["hspirit"] = "spirit",["hintellect"] = "intellect",["hstamina"] = "stamina",["hdamage"] = "damage",["hheal"] = "heal",["ahitem"] = "hitem",["xhitem"] = "hitem",["xhquest"] = "hquest",["armour"] = "armor",
["superimpact"] = "impact",["supagility"] = "agility",["supstamina"] = "stamina",["supstrength"] = "strength",["supspirit"] = "spirit",["supstriking"] = "striking",["supmana"] = "mana",["supdefense"] = "defense",["suphealth"] = "health",

["touching"] = "opening",["breakinto"] = "open",["include"] = "with",["included"] = "with",["including"] = "with",["includes"] = "with",["incl"] = "with",["necklace"] = "neck",

["onring"] = "ring",["onhead"] = "head",["ongloves"] = "gloves",["onlegs"] = "legs",["onboots"] = "boots",["oncloak"] = "cloak",["onwrist"] = "wrist",["onbelt"] = "belt",["onbeltbuckle"] = "beltbuckle",["onweapon"] = "weapon",["onshield"] = "shield",
["onhand"] = "hand",["ontwohand"] = "hand",["onchest"] = "chest",["onneck"] = "neck",
["forring"] = "ring",["forhead"] = "head",["forgloves"] = "gloves",["forlegs"] = "legs",["forboots"] = "boots",["forcloak"] = "cloak",["forwrist"] = "wrist",["forbelt"] = "belt",["forbeltbuckle"] = "beltbuckle",["forweapon"] = "weapon",["forshield"] = "shield",
["forchest"] = "chest",["forneck"] = "neck",["forhand"] = "hand",["fortwohand"] = "hand",
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
["inring"] = "ring",["inhead"] = "head",["ingloves"] = "gloves",["inlegs"] = "legs",["inboots"] = "boots",["incloak"] = "cloak",["inwrist"] = "wrist",["inbelt"] = "belt",["inbeltbuckle"] = "beltbuckle",["inweapon"] = "weapon",["inshield"] = "shield",
["inchest"] = "chest",["inneck"] = "neck",["inhand"] = "hand",["intwohand"] = "hand",

["levelring"] = "ring",["levelhead"] = "head",["levelgloves"] = "gloves",["levellegs"] = "legs",["levelboots"] = "boots",["levelcloak"] = "cloak",["levelwrist"] = "wrist",["levelbelt"] = "belt",["levelbeltbuckle"] = "beltbuckle",["levelweapon"] = "weapon",["levelshield"] = "shield",
["levelhand"] = "hand",["leveltwohand"] = "hand",["levelchest"] = "chest",["levelneck"] = "neck",

["onwrists"] = "wrist",["forwrists"] = "wrist",["towrists"] = "wrist",["tlwrists"] = "wrist",["thewrists"] = "wrist",["mywrists"] = "wrist",["atwrists"] = "wrist",
["onrings"] = "ring",["forrings"] = "ring",["torings"] = "ring",["tlrings"] = "ring",["therings"] = "ring",["myrings"] = "ring",["atrings"] = "ring",
["onglove"] = "gloves",["forglove"] = "gloves",["toglove"] = "gloves",["tlglove"] = "gloves",["theglove"] = "gloves",["myglove"] = "gloves",["atglove"] = "gloves",
["onleg"] = "legs",["forleg"] = "legs",["toleg"] = "legs",["tlleg"] = "legs",["theleg"] = "legs",["myleg"] = "legs",["atleg"] = "legs",
["onboot"] = "boots",["forboot"] = "boots",["toboot"] = "boots",["tlboot"] = "boots",["theboot"] = "boots",["myboot"] = "boots",["atboot"] = "boots",
["onweapons"] = "weapon",["forweapons"] = "weapon",["toweapons"] = "weapon",["tlweapons"] = "weapon",["theweapons"] = "weapon",["myweapons"] = "weapon",["atweapons"] = "weapon",
["onhands"] = "hand",["forhands"] = "hand",["tohands"] = "hand",["tlhands"] = "hand",["thehands"] = "hand",["myhands"] = "hand",["athands"] = "hand",

["statchest"] = "statschest",["stattrinket"] = "statstrinket",["staton"] = "stat",["statto"] = "stat",

["allianceleatherworker"] = "leatherworker",["alliancetailor"] = "tailor",["allianceblacksmith"] = "blacksmith",["allianceengineer"] = "engineer",["alliancealchemist"] = "alchemist",["alliancebs"] = "bs",
["hordeleatherworker"] = "leatherworker",["hordetailor"] = "tailor",["hordeblacksmith"] = "blacksmith",["hordeengineer"] = "engineer",["hordealchemist"] = "alchemist",["hordebs"] = "bs",

["levelblacksmith"] = "blacksmith",["levelleatherworker"] = "leatherworker",["leveltailor"] = "tailor",["levelalchemy"] = "alchemist",["levelengineer"] = "engineer",
["skillblacksmith"] = "blacksmith",["skillleatherworker"] = "leatherworker",["skilltailor"] = "tailor",["skillalchemy"] = "alchemist",["skillengineer"] = "engineer",
["decentblacksmith"] = "blacksmith",["decentleatherworker"] = "leatherworker",["decenttailor"] = "tailor",["decentalchemy"] = "alchemist",["decentengineer"] = "engineer",

-- PvP
["allianceab"] = "ab",["hordeab"] = "ab",["alliancewsg"] = "wsg",["hordewsg"] = "wsg",["allianceav"] = "av",["hordeav"] = "av",
["alliancearathibasin"] = "ab",["hordearathibasin"] = "ab",["alliancewarsonggulch"] = "wsg",["hordewarsonggulch"] = "wsg",["alliancealteracvalley"] = "av",["hordealteracvalley"] = "av",
["alliancebattleground"] = "battleground",["hordebattleground"] = "battleground",["alliancebg"] = "bg",["hordebg"] = "bg",["alliancepvp"] = "pvp",["hordepvp"] = "pvp",["alliancearenas"] = "arenas",["hordearenas"] = "arenas",
["alliancebloodring"] = "bloodring",["hordebloodring"] = "bloodring",["alliancesunnygladevalley"] = "sunnygladevalley",["hordesunnygladevalley"] = "sunnygladevalley",

-- Locations
["lightshopechapel"] = "wpl",["manstrat"] = "strat",["manstart"] = "start",["manschool"] = "school",["manhateful"] = "hateful",
["arathihighland"] = "arathihighlands",["blastedland"] = "blastedlands",["burningsteps"] = "burningsteppes",["dustwillow"] = "dustwallow",["hinterland"] = "hinterlands",["hunterlands"] = "hinterlands",

-- Classes
["druidfind"] = "group",["hunterfind"] = "group",["magefind"] = "group",["paladinfind"] = "group",["priestfind"] = "group",["roguefind"] = "group",["shamanfind"] = "group",["warlockfind"] = "group",["warriorfind"] = "group",
["adruid"] = "druid",["ahunter"] = "hunter",["amage"] = "mage",["apaladin"] = "paladin",["apriest"] = "priest",["arogue"] = "rogue",["ashaman"] = "shaman",["awarlock"] = "warlock",["awarrior"] = "warrior",
["somedruid"] = "druid",["somehunter"] = "hunter",["somemage"] = "mage",["somepaladin"] = "paladin",["somepriest"] = "priest",["somerogue"] = "rogue",["someshaman"] = "shaman",["somewarlock"] = "warlock",["somewarrior"] = "warrior",
["moredruid"] = "druid",["morehunter"] = "hunter",["moremage"] = "mage",["morepaladin"] = "paladin",["morepriest"] = "priest",["morerogue"] = "rogue",["moreshaman"] = "shaman",["morewarlock"] = "warlock",["morewarrior"] = "warrior",
["alliancedruid"] = "druid",["alliancehunter"] = "hunter",["alliancemage"] = "mage",["alliancepaladin"] = "paladin",["alliancepriest"] = "priest",["alliancerogue"] = "rogue",["allianceshaman"] = "shaman",["alliancewarlock"] = "warlock",["alliancewarrior"] = "warrior",
["hordedruid"] = "druid",["hordehunter"] = "hunter",["hordemage"] = "mage",["hordepaladin"] = "paladin",["hordepriest"] = "priest",["horderogue"] = "rogue",["hordeshaman"] = "shaman",["hordewarlock"] = "warlock",["hordewarrior"] = "warrior",
["leveldruid"] = "druid",["levelhunter"] = "hunter",["levelmage"] = "mage",["levelpaladin"] = "paladin",["levelpriest"] = "priest",["levelrogue"] = "rogue",["levelshaman"] = "shaman",["levelwarlock"] = "warlock",["levelwarrior"] = "warrior",

["lgbtq"] = "lgbt",["lgbtq"] = "lgbt",["lgbtqia"] = "lgbt",

-- Lockbox
["batteredbox"] = "lockbox",["batteredchest"] = "lockbox",["boxes"] = "lockbox",["familyjewels"] = "lockbox",["junkbox"] = "lockbox",
["lockpick"] = "lockbox",["lockpicker"] = "lockbox",["lockpickers"] = "lockbox",["lokpik"] = "lockbox",["lockedchest"] = "lockbox",["lockboxes"] = "lockbox",["lockpicking"] = "lockbox",["lockpicks"] = "lockbox",
["lootbox"] = "lockbox",["lootboxes"] = "lockbox",["pickinglock"] = "lockbox",["picklock"] = "lockbox",["picklocks"] = "lockbox",["picklocker"] = "lockbox",["picklockers"] = "lockbox",["pickpocket"] = "lockbox",
["locksmith"] = "lockbox",["locksmiths"] = "lockbox",["locksmithing"] = "lockbox",

["onebox"] = "lockbox",["twobox"] = "lockbox",["threebox"] = "lockbox",["fourbox"] = "lockbox",["fivebox"] = "lockbox",["sixbox"] = "lockbox",["sevenbox"] = "lockbox",["eightbox"] = "lockbox",["ninebox"] = "lockbox",["tenbox"] = "lockbox",
["locked"] = "lock",["locker"] = "lock",["locking"] = "lock",["unlocking"] = "unlock",["unlocked"] = "unlock",["unlockbox"] = "lockbox",

-- Misc
["port"] = "portal",["ports"] = "portal",["porta"] = "portal",["portals"] = "portal",["porters"] = "portal",["porting"] = "portal",
["sum"] = "portal",["sums"] = "portal",["summing"] = "portal",["summon"] = "portal",["summmons"] = "portal",["summoner"] = "portal",["summoners"] = "portal",["summoning"] = "portal",
["teleport"] = "portal",["teleports"] = "portal",["teleporting"] = "portal",["teleportation"] = "portal",["taxi"] = "portal",

["lookinfor"] = "lf",["lookingfor"] = "lf",["lookingformore"] = "lfm",["loved"] = "love",["folks"] = "people",
["loves"] = "love",["marshall"] = "marshal",["materials"] = "material",["melees"] = "melee",["mineskill"] = "mine",["mining"] = "mine",
["miningskill"] = "mine",["mobs"] = "mob",["mountains"] = "mountain",["mounts"] = "mount",["mt"] = "tank",["myring"] = "ring",["myrings"] = "ring",
["natureresist"] = "nr",["needs"] = "need",["offheal"] = "heal",["offhealer"] = "heal",
["opens"] = "open",["openen"] = "open",["options"] = "option",["ores"] = "ore",["orgrimmars"] = "orgrimmar",["ot"] = "tank",["pants"] = "legs",["patterns"] = "pattern",["picker"] = "pick",
["picking"] = "pick",["players"] = "player",["plays"] = "play",["popper"] = "pop",["poppers"] = "pop",["pops"] = "pop",

["prices"] = "price",["prio"] = "priority",["pumper"] = "damage",["pumpers"] = "damage",["damages"] = "damage",["questing"] = "quest",["questions"] = "question",["quests"] = "quest",
["queued"] = "queue",["queuegold"] = "queue",["queueing"] = "queue",["queueitup"] = "queueup",["queues"] = "queue",["queueto"] = "queueup",["queueagain"] = "queueup",["queuemore"] = "queueup",["raiding"] = "raid",["queuefuck"] = "queueup",
["randoms"] = "random",["recipes"] = "recipe",["requesting"] = "request",["resistance"] = "resist",["resistances"] = "resist",
["rewards"] = "reward",["rings"] = "ring",["ripped"] = "rip",["ripping"] = "rip",["rips"] = "rip",["roleplayer"] = "rp",["rollers"] = "roller",["rosters"] = "roster",["professions"] = "profession",
["scammed"] = "scam",["scamming"] = "scam",["scams"] = "scam",["scarletmonastery"] = "sm",["searchfor"] = "lf",["searchingfor"] = "lf",
["services"] = "service",["shadowresist"] = "sr",["shoulders"] = "shoulder",["skinning"] = "skin",["speaker"] = "speak",
["speakers"] = "speak",["speaking"] = "speak",["speaks"] = "speak",["specs"] = "spec",["spikes"] = "spike",["spires"] = "spire",["spots"] = "spot",["slots"] = "slot",["stacks"] = "stack",["stones"] = "stone",["lots"] = "lot",
["starts"] = "start",["stealthy"] = "stealth",["stockades"] = "stockade",["stocks"] = "stock",["strats"] = "strat",["suggestions"] = "suggestion",

["surcharges"] = "surcharge",["tankaround"] = "tank",["tankin"] = "tank",["tanking"] = "tank",["tanks"] = "tank",["tankup"] = "tank",
["times"] = "time",
["toattach"] = "apply",["toinstall"] = "apply",["trainers"] = "trainer",["transmutes"] = "transmute",["trinkets"] = "trinket",["trolls"] = "troll",["turns"] = "turn",["twinks"] = "twink",
["udmage"] = "mage",["udpaladin"] = "paladin",["udpriest"] = "priest",["udrogue"] = "rogue",["udwarlock"] = "warlock",["udwarrior"] = "warrior",["undercitys"] = "undercity",["vamp"] = "vampirism",
["waist"] = "belt",["weapons"] = "weapon",["weeks"] = "week",["welcomed"] = "welcome",["welcomes"] = "welcome",
["wings"] = "wing",["working"] = "work",["wrists"] = "wrist",["xp"] = "experience",["ya"] = "your",["yelling"] = "yell",["yer"] = "your",["yourmatch"] = "yourmat",["yours"] = "your",
["arms"] = "arm",["bindings"] = "binding",["booster"] = "boost",["boosting"] = "boost",["boosts"] = "boost",["buffs"] = "buff",["bullies"] = "bully",
["carrying"] = "carry",["casters"] = "caster",["cave"] = "caverns",["cavern"] = "caverns",["cavers"] = "caverns",["caves"] = "caverns",["chains"] = "chain",["champions"] = "champion",["chilled"] = "chill",["chiller"] = "chill",
["safes"] = "safe",["could"] = "can",["damagearound"] = "damage",["damagein"] = "damage",["damageup"] = "damage",["darn"] = "darnassus",["defensive"] = "defense",["donations"] = "donation",["dousers"] = "douse",["douses"] = "douse",
["pds"] = "damage",["dropper"] = "drop",["dropping"] = "drop",["drops"] = "drop",["dung"] = "dungeon",["dungeons"] = "dungeon",["dwarfs"] = "dwarf",["escorting"] = "escort",["havers"] = "haver",
["exp"] = "experience",["experienced"] = "experience",["ez"] = "easy",["farms"] = "farm",["forgets"] = "forget",["ganking"] = "gank",["ganks"] = "gank",["giver"] = "give",["givers"] = "give",["gives"] = "give",
["grave"] = "gy",["graveyard"] = "gy",["grinds"] = "grind",["guardians"] = "guardian",["healaround"] = "heal",["healin"] = "heal",["healup"] = "heal",["healer"] = "heal",["healers"] = "heal",["herd"] = "heard",
["hours"] = "hour",["hydraxis"] = "hydraxian",["dukehydraxian"] = "hydraxian",["ignored"] = "ignore",["jokes"] = "joke",["keeps"] = "keep",["knows"] = "know",["legendaries"] = "legendary",["levelers"] = "leveling",["levels"] = "level",
["lfmore"] = "lfm",["living"] = "live",["stairs"] = "stair",["speedrun"] = "run",

["gnomegang"] = "gnomeregan",["crusaderhaver"] = "crusaderenchant",["fieryhaver"] = "fieryenchant",
["lookinggor"] = "lf",["searchmorefor"] = "lfm",

["needotjoin"] = "needtojoin",["needotqueue"] = "needtoqueue",["needotfind"] = "needtofind",["needotgo"] = "needtogo",["needothelp"] = "needtohelp",["needotgroup"] = "needtogroup",["needotraid"] = "needtoraid",["needotcome"] = "needtocome",
["needotquest"] = "needtoquest",["needotfarm"] = "needtofarm",["needotkill"] = "needtokill",["needotrun"] = "needtorun",["needotunlock"] = "needtounlock",["needotopen"] = "needopen",["needotbe"] = "needtobe",

-- Guild recruitment related
["progress"] = "progression",["communities"] = "community",["kinship"] = "community",

-- Country Names
["cn"] = "chinese",["china"] = "chinese",["france"] = "french",["fra"] = "french",
["afghanistan"] = "afghani",["afghan"] = "afghani",["algeria"] = "algerian",["america"] = "american",["murica"] = "american",["murican"] = "american",["americans"] = "american",
["argentinia"] = "argentine",["australian"] = "au",["australian"] = "au",["aussie"] = "au",["balkans"] = "balkan",["balkanski"] = "balkan",["brasilian"] = "brazilian",["brasil"] = "brazilian",["brazil"] = "brazilian",["br"] = "brazilian",
["bulgaria"] = "bulgarian",["canada"] = "canadian",["canuck"] = "canadian",["canucks"] = "canadian",["canadia"] = "canadian",["chile"] = "chilean",["colombia"] = "colombian",["congo"] = "congolese",["cuba"] = "cuban",["denmark"] = "danish",
["netherlands"] = "dutch",["netherland"] = "dutch",["nederlands"] = "dutch",["nederland"] = "dutch",["egypt"] = "egyptian",["england"] = "english",["anglo"] = "english",["ethiopia"] = "ethiopian",
["cz"] = "czech",["cesko"] = "czech",["ceska"] = "czech",["svk"] = "slovak",
["europe"] = "eu",["european"] = "eu",["europa"] = "eu",["europeans"] = "eu",["finland"] = "finnish",["finn"] = "finnish",["finns"] = "finnish",
["greece"] = "greek",["hellenic"] = "greek",["helene"] = "greek",["germany"] = "german",["hungary"] = "hungarian",["magyar"] = "hungarian",["india"] = "indian",["iran"] = "iranian",["iraq"] = "iraqi",
["ita"] = "italian",["italy"] = "ita",["japan"] = "japanese",["nippon"] = "japanese",["kazakhstan"] = "kazakh",["kenya"] = "kenyan",["korea"] = "korean",["lebanon"] = "lebanese",
["libya"] = "libyan",["malaysian"] = "malay",["malaysia"] = "malay",["mexico"] = "mexican",["mongolia"] = "mongolian",["morocco"] = "moroccan",["northamerican"] = "na",["northamerica"] = "na",["niger"] = "nigerian",["nordic"] = "nord",
["norway"] = "norwegian",["oceanic"] = "oce",["pakistan"] = "pakistani",["peru"] = "peruvian",["philippines"] = "filipino",["philippine"] = "filipino",["poland"] = "polish",["pl"] = "polish",["portugal"] = "portuguese",["quevec"] = "quebec",
["romania"] = "romanian",["ro"] = "romanian",["ru"] = "russian",["russ"] = "russian",["russia"] = "russian",["rus"] = "russian",["russkie"] = "russian",["ruskie"] = "russian",["rwanda"] = "rwandan",
["somalia"] = "somalian",["somali"] = "somalian",["southafrican"] = "sa",["esp"] = "spanish",["spain"] = "spanish",["iberian"] = "spanish",["iberia"] = "spanish",
["scandinavia"] = "scandinavian",["swede"] = "swedish",["sweden"] = "swedish",["syria"] = "syrian",["tajikistan"] = "tajik",["thailand"] = "thai",["trk"] = "turkish",["turk"] = "turkish",["turkey"] = "turkish",["uganda"] = "ugandan",
["ua"] = "ukrainian",["ukraine"] = "ukrainian",["ykrain"] = "ukrainian",
["uzbekistan"] = "uzbek",["venezuela"] = "venezuelan",["vietnam"] = "vietnamese",["viet"] = "vietnamese",["yemen"] = "yemeni",["zimbabwe"] = "zimbabwean",

-- Other
["clothie"] = "cloth",["clothies"] = "cloth",["highstakes"] = "highstake",["matts"] = "mat",["ned"] = "need",["onux"] = "onyxia",
["sharesomestores"] = "sharesomestories",["sharestores"] = "sharestories",

-- Make sure word is recombined
["health"] = "health",["anyone"] = "anyone",["inviteme"] = "inviteme",["queuefor"] = "queuefor",["groupfor"] = "groupfor",
["lfc"] = "lfc",["lfm"] = "lfm",["lfg"] = "lfg",
["smgy"] = "smgy",["smarm"] = "smarm",["smlib"] = "smlib",["smcath"] = "smcath",
["zulfarrak"] = "zulfarrak",
["atalhakkar"] = "atalhakkar",
["udstrat"] = "udstrat",
["dme"] = "dme",["dmn"] = "dmn",["dmt"] = "dmt",["dmw"] = "dmw",
["razorfenkraul"] = "razorfenkraul",["razorfendowns"] = "razorfendowns",
["smgy"] = "smgy",["smlib"] = "smlib",["smarm"] = "smarm",["smcath"] = "smcath",["swv"] = "swv",["udstrat"] = "udstrat",["livestrat"] = "livestrat",["upperblackrock"] = "upperblackrock",["lowerblackrock"] = "lowerblackrock",
["zulgurub"] = "zulgurub",["karacrypt"] = "karacrypt",["stormwroughtcastle"] = "stormwroughtcastle",["stormwroughtruins"] = "stormwroughtruins",["stormwroughtdescent"] = "stormwroughtdescent",

["caniheal"] = "caniheal",["canitank"] = "canitank",["canidamage"] = "canidamage",["goingtodrop"] = "goingtodrop",
["servertime"] = "servertime",

["onyxiabuff"] = "onyxiabuff",["onyxiahead"] = "onyxiahead",["nefarianbuff"] = "nefarianbuff",["nefarianhead"] = "nefarianhead",["rendbuff"] = "rendbuff",["rendhead"] = "rendhead",

["lfenchant"] = "lfenchant",["lfenhancement"] = "lfenhancement",
["lfleatherworker"] = "lfleatherworker",["lftailor"] = "lftailor",["lfblacksmith"] = "lfblacksmith",
["lfengineer"] = "lfengineer",["lfalchemist"] = "lfalchemist",

-- Dungeon combine to prevent flagging other dungeons
["dmeast"] = "dme",["dmnorth"] = "dmn",["dmtrib"] = "dmt",["dmtribute"] = "dmt",["dmwest"] = "dmw",
["diremauleast"] = "dme",["diremaulnorth"] = "dmn",["diremaultrib"] = "dmt",["diremaultribute"] = "dmt",["diremaulwest"] = "dmw",
["swvault"] = "swv",["stormvault"] = "swv",

-- Groups
["lfgm"] = "lfm",["lfmm"] = "lfm",["glfm"] = "lfm",["glf"] = "lfm",["ldm"] = "lfm",["flm"] = "lfm",["ldg"] = "lfm",["lfp"] = "lfm",["lkf"] = "lfg",["flt"] = "lft",
["lfms"] = "lfm",["lfmr"] = "lfm",["lkm"] = "lfm",["lgm"] = "lfm",["ifm"] = "lfm",["fg"] = "lfg",["lofg"] = "lfg",["flg"] = "lfg",["lgf"] = "lfg",["lfh"] = "lfg",["lgh"] = "lfg",["lg"] = "lfg",["glf"] = "lfg",["lrg"] = "lfg",["ldf"] = "lfg",
["lfq"] = "lfg",["lgb"] = "lfg",["lsg"] = "lfg",["lfb"] = "lfg",["lfa"] = "lf",["lfan"] = "lf",["lfparty"] = "lfg",["lgr"] = "lfr",["lfrg"] = "lfg",["kfg"] = "lfg",["ly"] = "lf",["lkfg"] = "lfg",["ylf"] = "lf",

-- Professions
["blacksmither"] = "blacksmith",["blacksmithers"] = "blacksmith",["axesmiths"] = "blacksmith",["armorsmiths"] = "blacksmith",["weaponsmiths"] = "blacksmith",["goldsmith"] = "blacksmith",["goldsmiths"] = "blacksmith",["blacksmiting"] = "blacksmith",
["goldsmithing"] = "blacksmith",
["leatherer"] = "leatherworker",["leatherwork"] = "leatherworker",

["blacksmiths"] = "blacksmith",["leatherworkers"] = "leatherworker",["engineers"] = "engineer",["alchemists"] = "alchemist",["tailors"] = "tailor",["herbalists"] = "herbalist",["skinners"] = "skinner",

["elementalsharp"] = "elementalsharpening",["elesharp"] = "elementalsharpening",["elesharpening"] = "elementalsharpening",
["blacksmithing"] = "blacksmith",["hammersmith"] = "blacksmith",["swordsmith"] = "blacksmith",["armorsmith"] = "blacksmith",["armorsmithing"] = "blacksmith",["weaponsmith"] = "blacksmith",["smelting"] = "smelt",
["axesmith"] = "blacksmith",
["tailoring"] = "tailor",["tailorer"] = "tailor",["leatherworking"] = "leatherworker",["leather"] = "leatherworker",["engineering"] = "engineer",["alchemy"] = "alchemist",["potions"] = "potion",["elixirs"] = "elixir",
["dexterity"] = "agility",["intel"] = "intellect",

["enchants"] = "enchant",["enchanter"] = "enchant",["enchanters"] = "enchant",["enchanting"] = "enchant",["chant"] = "enchant",["chants"] = "enchant",["chanter"] = "enchant",["chanters"] = "enchant",["chanting"] = "enchant",
["enchantment"] = "enchant",["enchantments"] = "enchant",["enchanted"] = "enchant",["shitenchant"] = "enchant",["enhancements"] = "enhancement",["enhancer"] = "enhancement",["jewel"] = "gem",["gemcrafter"] = "enchant",

["lfmenchant"] = "lfenchant",["lfmenhancement"] = "lfenhancement",["lfmleatherworker"] = "lfleatherworker",["lfmtailor"] = "lftailor",["lfmblacksmith"] = "lfblacksmith",
["lfmengineer"] = "lfengineer",["lfmalchemist"] = "lfalchemist",
["lfgenchant"] = "lfenchant",["lfgenhancement"] = "lfenhancement",["lfgleatherworker"] = "lfleatherworker",["lfgtailor"] = "lftailor",["lfgblacksmith"] = "lfblacksmith",
["lfgengineer"] = "lfengineer",["lfgalchemist"] = "lfalchemist",

["lfenchanter"] = "lfenchant",["lfleatherworking"] = "lfleatherworker",["lfengineering"] = "lfengineer",["lfalchemy"] = "lfalchemist",

-- Trades
["wttb"] = "wtb",["wtbx"] = "wtb",["gwtb"] = "wtb",["wtts"] = "wts",["wtsx"] = "wts",["wtbb"] = "wtb",["wtss"] = "wts",["wttt"] = "wtt",["wttx"] = "wtt",["wtsh"] = "wts",["wtd"] = "wts",
["wtv"] = "wtb",["wrb"] = "wtb",["wfb"] = "wtb",["wstb"] = "wtb",["ltb"] = "wtb",["wbt"] = "wtb",["wyb"] = "wtb",["lwf"] = "lfw",["lfb"] = "wtb",["flw"] = "lfw",["twb"] = "wtb",

["shootingbow"] = "bow",["shootinggun"] = "gun",

-- Locations
["anyoneinsv"] = "anyoneinstv",["anyoneinhl"] = "anyonehinterlands",["anyoneinthehl"] = "anyonehinterlands",["anyonethehl"] = "anyonehinterlands",
["blackrockcastle"] = "stonewatch",["tarrenmill"] = "hillsbrad",["blackcock"] = "blackrock",["blackock"] = "blackrock",

-- Classes
["frostmage"] = "mage",["firemage"] = "mage",["arcanemage"] = "mage",
["restoshaman"] = "shaman",["enhanceshaman"] = "shaman",["enhancementshaman"] = "shaman",["elementalshaman"] = "shaman",
["feraldruid"] = "druid",["kittydruid"] = "druid",["beardruid"] = "druid",["restodruid"] = "druid",["balancedruid"] = "druid",["rdru"] = "druid",
["shadowpriest"] = "priest",["holypriest"] = "priest",["discpriest"] = "priest",["disciplinepriest"] = "priest",
["protpaladin"] = "paladin",["protpally"] = "paladin",["retpaladin"] = "paladin",["holypaladin"] = "paladin",["retributionpaladin"] = "paladin",["protectionpaladin"] = "paladin",
["assassinationrogue"] = "rogue",["combatrogue"] = "rogue",["subtletyrogue"] = "rogue",["sexyrogue"] = "rogue",
["markshunter"] = "hunter",["marksmanhunter"] = "hunter",["marksmanshiphunter"] = "hunter",["survhunter"] = "hunter",["survivalhunter"] = "hunter",
["furywarrior"] = "warrior",["protwarrior"] = "warrior",["armwarrior"] = "warrior",["protectionwarrior"] = "warrior",
["afflictionwarlock"] = "warlock",["afflictionlock"] = "warlock",["afflicwarlock"] = "warlock",["demonologywarlock"] = "warlock",["demowarlock"] = "warlock",["demolock"] = "warlock",["destruction"] = "warlock",["destrolock"] = "warlock",["destrowarlock"] = "warlock",

["hunters"] = "hunter",["mages"] = "mage",["druids"] = "druid",["priests"] = "priest",["rogues"] = "rogue",["warlocks"] = "warlock",["locks"] = "lock",["warriors"] = "warrior",
["atieshdruid"] = "druid",["atieshpriest"] = "priest",["atieshmage"] = "mage",["atieshwarlock"] = "warlock",["atieshlock"] = "warlock",
["sexymage"] = "mage",["kindmage"] = "mage",["friendlymage"] = "mage",

-- Dungeons
["walling"] = "wailing",["wailin"] = "wailing",
["rangefire"] = "ragefire",
["minesofthedead"] = "deadmines",
["stockaid"] = "stockade",["stockdale"] = "stockade",
["gomer"] = "gnomer",
["smgrave"] = "smgy",["smgraveyard"] = "smgy",["scarletgy"] = "smgy",["scarletgrav"] = "smgy",["scarletgrave"] = "smgy",["scarletgraveyard"] = "smgy",["scarletsmgy"] = "smgy",
["monasterygy"] = "smgy",["monasterygrav"] = "smgy",["monasterygrave"] = "smgy",["monasterygraveyard"] = "smgy",["monagraveyard"] = "smgy",["monagrave"] = "smgy",
["smlibrary"] = "smlib",["smliberal"] = "smlib",
["smarms"] = "smarm",["smarmory"] = "smarm",["scarletarm"] = "smarm",["scarletarms"] = "smarm",["scarletarmory"] = "smarm",["scarletsmarm"] = "smarm",
["monasteryarm"] = "smarm",["monasteryarms"] = "smarm",["monasteryarmo"] = "smarm",["monasteryarmory"] = "smarm",["monaarm"] = "smarm",["monaarms"] = "smarm",["monaarmory"] = "smarm",
["smcat"] = "smcath",["smcathedral"] = "smcath",["scarletcat"] = "smcath",["scarletcath"] = "smcath",["scarletcathedral"] = "smcath",
["monasterycat"] = "smcath",["monasterycath"] = "smcath",["monasterycathedral"] = "smcath",["monacat"] = "smcath",["monacathedral"] = "smcath",
["smfullrun"] = "smfull",["fullsm"] = "smfull",["allsm"] = "smfull",["fullscarletrun"] = "smfull",["fullrunsm"] = "smfull",["fullsmrun"] = "smfull",
["attune"] = "attunement",
["shendralar"] = "dmw",
["prisonbreak"] = "jailbreak",
["stratlive"] = "livestrat",["stralive"] = "livestrat",["startlive"] = "livestrat",["livestart"] = "livestrat",["statlive"] = "livestrat",["livestat"] = "livestrat",["stradlive"] = "livestrat",["lstrat"] = "livestrat",["livestratside"] = "livestrat",
["liveside"] = "livestrat",["stratlife"] = "livestrat",["stratscarlet"] = "livestrat",["stratholmelive"] = "livestrat",["scarletlive"] = "livestrat",["stratholmebastion"] = "livestrat",["stratbastion"] = "livestrat",["startbastion"] = "livestrat",
["stratud"] = "udstrat",["stratun"] = "udstrat",["stratundead"] = "udstrat",["stratdk"] = "udstrat",
["startud"] = "udstrat",["startun"] = "udstrat",["udstart"] = "udstrat",["undeadstart"] = "udstrat",["undeadstrat"] = "udstrat",
["stratholmeud"] = "udstrat",["stratholmeun"] = "udstrat",["stratholmedead"] = "udstrat",["stratholmeundead"] = "udstrat",["stratholmedk"] = "udstrat",["stradud"] = "udstrat",["straddk"] = "udstrat",["stradundead"] = "udstrat",
["undeadcity"] = "udstrat",["udcity"] = "udstrat",["udside"] = "udstrat",["strengthud"] = "udstrat",["statud"] = "udstrat",["udstat"] = "udstrat",["straud"] = "udstrat",

["tostrat"] = "stratholme",["healstrat"] = "stratholme",["damagestrat"] = "stratholme",["stratrun"] = "stratholme",
["tankstrat"] = "stratholme",["stratman"] = "stratholme",["farmstrat"] = "stratholme",["stratmalor"] = "stratholme",["stratfarm"] = "stratholme",

["lowerspire"] = "lowerblackrock",["blackrocklower"] = "lbrs",["lbrsspire"] = "lbrs",
["upperspire"] = "upperblackrock",["blackrockupper"] = "ubrs",["ubrsspire"] = "ubrs",
["valthalaks"] = "valthalak",["drakkisaths"] = "drakkisath",["blackrockdungeon"] = "blackrockspire",

["forgnome"] = "gnomer",["fortemple"] = "st",["forgy"] = "smgy",["forgraveyard"] = "smgy",["forrc"] = "rfc",["fortribute"] = "dmt",["forstart"] = "stratholme",["forstrat"] = "stratholme",["forarm"] = "smarm",["forarms"] = "smarm",["forschool"] = "scholomance",

["repfarmstrat"] = "stratrepfarm",["udrep"] = "stratrep",["udrepfarm"] = "stratrepfarm",["repfarmud"] = "stratrepfarm",["bmrep"] = "bm",

["mcfarm"] = "mc",["bwlfarm"] = "bwl",["aqfarm"] = "aq",["karafarm"] = "karazhan",["esfarm"] = "es",
["moltencorefarm"] = "mc",["blackwinglairfarm"] = "bwl",["aqfarm"] = "aq",["naxxramasfarm"] = "naxxramas",["karazhanfarm"] = "karazhan",["emeraldsanctumfarm"] = "emeraldsanctum",

["fullmc"] = "mc",["fullmoltencore"] = "moltencore",["fullblackwinglair"] = "blackwinglair",["fullaq"] = "aq",["fullnaxxramas"] = "naxxramas",["fullzg"] = "zg",["fullkarazhan"] = "karazhan",
["mctrash"] = "mc",["moltencoretrash"] = "moltencore",["blackwinglairtrash"] = "blackwinglair",["aqtrash"] = "aq",["naxxramastrash"] = "naxxramas",["zgtrash"] = "zg",["karazhantrash"] = "karazhan",

-- Turtle
["stormwindcrypt"] = "karazhancrypt",["crypts"] = "crypt",
["vaults"] = "vault",
["stormwindcastle"] = "stormwroughtcastle",["stormwinddescent"] = "stormwroughtdescent",["stormwinddecent"] = "stormwroughtdescent",
["stormruins"] = "stormwroughtruins",["stormdescent"] = "stormwroughtdescent",

-- Professions
["jeweler"] = "enchant",["jewelers"] = "enchant",["jewelcrafters"] = "enchant",["jewelcrafted"] = "enchant",["jewelcrafting"] = "enchant",
["gemologist"] = "specialization",["gemology"] = "specialization",["gemonology"] = "specialization",["gemonologist"] = "specialization",["gemonologist"] = "specialization",["arcanologist"] = "specialization",
} -- replaces the first word but leaves the second word
GF_WORD_FIX_SECOND = {
-- Groups
["lfr"] = {"lf","raid"},
["lastds"] = {"last","damage"},
["qqwsg"] = {"queue","wsg"},["qqab"] = {"queue","ab"},["qqav"] = {"queue","av"},
["lfdw"] = {"lf","dm"},["lfmdw"] = {"lfm","dm"},["lfgdw"] = {"lfg","dm"},
["lfud"] = {"lf","udstrat"},["lfgud"] = {"lfg","udstrat"},["lfmud"] = {"lfm","udstrat"},
["lfch"] = {"lf","cg"},["lfmch"] = {"lfm","cg"},["lfgch"] = {"lfg","cg"},
["lfsf"] = {"lf","sfk"},["lfmsf"] = {"lfm","sfk"},["lfgsf"] = {"lfg","sfk"},["forsf"] = {"for","sfk"},
["dprlfg"] = {"damage","lfg"},["dprlfm"] = {"damage","lfm"},["dprlf"] = {"damage","lf"},
["raidbl"] = {"raid","blackwinglair"},["raidbwl"] = {"raid","blackwinglair"},

["lockmoden"] = {"loch","modan"},["lockmodan"] = {"loch","modan"},
["lfbmw"] = {"lf","bm"},["lfgbmw"] = {"lfg","bm"},["lfmbmw"] = {"lfm","bm"},
["lfnac"] = {"lf","naxxramas"},["lfgnac"] = {"lfg","naxxramas"},["lfmnac"] = {"lfm","naxxramas"},
["lfruins"] = {"lf","stormwroughtruins"},["lfgruins"] = {"lfg","stormwroughtruins"},["lfmruins"] = {"lfm","stormwroughtruins"},
["lfkc"] = {"lf","karazhancrypt"},["lfgkc"] = {"lfg","karazhancrypt"},["lfmkc"] = {"lfm","karazhancrypt"},
["lfsc"] = {"lf","stormwroughtcastle"},["lfgsc"] = {"lfg","stormwroughtcastle"},["lfmsc"] = {"lfm","stormwroughtcastle"},
["lfsr"] = {"lf","stormwroughtruins"},["lfgsr"] = {"lfg","stormwroughtruins"},["lfmsr"] = {"lfm","stormwroughtruins"},
["lfsd"] = {"lf","stormwroughtdescent"},["lfgsd"] = {"lfg","stormwroughtdescent"},["lfmsd"] = {"lfm","stormwroughtdescent"},
["lflords"] = {"lf","silithuslords"},["lfglords"] = {"lfg","silithuslords"},["lfmlords"] = {"lfm","silithuslords"},

["queuegy"] = {"queue","smgy"},["queuearm"] = {"queue","smarm"},["queuearms"] = {"queue","smarm"},["queuecat"] = {"queue","smcath"},
["queuegnome"] = {"queue","gnomer"},["queuetemple"] = {"queue","st"},["queuegy"] = {"queue","smgy"},["queuerc"] = {"queue","rfc"},["queuetribute"] = {"queue","dmt"},
["queuestrat"] = {"queue","stratholme"},["queuestart"] = {"queue","stratholme"},["queueschool"] = {"queue","scholomance"},["queuewailing"] = {"queue","wc"},["queuehateful"] = {"queue","hfq"},
["helpwquest"] = {"helpwith","quest"},["helpwhquest"] = {"helpwith","hquest"},["helpwelite"] = {"helpwith","elite"},["helpwitchelite"] = {"helpwith","elite"},
["comeonecomeall"] = {"need","all"},
["anyonehordeneed"] = {"anyone","need"},["anyoneallianceneed"] = {"anyone","need"},
["anyoneallianceneed"] = {"anyone","need"},
["someupfor"] = {"anyone","upfor"},
["loto"] = {"lot","of"},["plentyo"] = {"plenty","of"},

-- Trades
["tesell"] = {"A","C"},["tebuy"] = {"A","C"},["youlockbox"] = {"A","lockbox"},["fingeringlockbox"] = {"C","lockbox"},["portaldar"] = {"portal","B"},["buyingportal"] = {"C","portal"},
["neddhitem"] = {"B","C"},["tobut"] = {"A","C"},["tipapp"] = {"B","C"},["giftenchant"] = {"C","enchant"},["needotC"] = {"C","C"},

["wsportal"] = {"B","portal"},["wtfportal"] = {"wtb","portal"},["wthitem"] = {"wtb","hitem"},
["wtfportal"] = {"wtb","portal"},
["wfenchant"] = {"lf","enchant"},
["ldbs"] = {"lf","bs"},["ldlw"] = {"lf","lw"},["lfj"] = {"lf","enchant"},
["snyhave"] = {"any","have"},["snyneed"] = {"any","need"},
["wtjewelcrafter"] = {"wtb","enchant"},["wtenchanter"] = {"wtb","enchant"},["wtenchant"] = {"wtb","enchant"},["searchenchant"] = {"lf","enchant"},["searchenchanter"] = {"lf","enchant"},
["globesagility"] = {"gloves","agility"},["globesstrength"] = {"gloves","strength"},["globeshaste"] = {"gloves","haste"},["globesriding"] = {"gloves","riding"},["globesridingskill"] = {"gloves","ridingskill"},
["globesmountspeed"] = {"gloves","mountspeed"},["globesarcane"] = {"gloves","arcane"},["globesshadow"] = {"gloves","shadow"},["globesfire"] = {"gloves","fire"},["globesnature"] = {"gloves","nature"},["globesheal"] = {"gloves","heal"},
["globesspelldamage"] = {"gloves","spelldamage"},["globesthreat"] = {"gloves","threat"},["globesherb"] = {"gloves","herb"},["globesskin"] = {"gloves","skin"},["globesfish"] = {"gloves","fish"},["globesmine"] = {"gloves","mine"},
["lfgagility"] = {"lf","agility"},["lfgintellect"] = {"lf","intellect"},["lfgspirit"] = {"lf","spirit"},["ldlockbox"] = {"lf","lockbox"},
["wtfhitem"] = {"wtb","hitem"},["wtghitem"] = {"wtb","hitem"},["lsblacksmith"] = {"lf","blacksmith"},
["transarc"] = {"transmute","arcanite"},
["searchsmith"] = {"lf","blacksmith"},["searchblacksmith"] = {"lf","blacksmith"},["searchleatherworker"] = {"lf","leatherworker"},["searchtailor"] = {"lf","tailor"},["searchengineer"] = {"lf","engineer"},["searchalchemist"] = {"lf","alchemist"},
["flsmith"] = {"lf","blacksmith"},["flbs"] = {"lf","bs"},["flblacksmith"] = {"lf","blacksmith"},["flleatherworker"] = {"lf","leatherworker"},["fltailor"] = {"lf","tailor"},["flengineer"] = {"lf","engineer"},["flalchemist"] = {"lf","alchemist"},

["triballeatherworker"] = {"specialization","leatherworker"},["elementalleatherworker"] = {"specialization","leatherworker"},["dragonscaleleatherworker"] = {"specialization","leatherworker"},
["aghead"] = {"agility","head"},["agneck"] = {"agility","neck"},["agcloak"] = {"agility","cloak"},["agback"] = {"agility","back"},["agchest"] = {"agility","chest"},["aggloves"] = {"agility","gloves"},
["aghand"] = {"agility","hand"},["agbelt"] = {"agility","belt"},["aglegs"] = {"agility","legs"},["agboots"] = {"agility","boots"},["agring"] = {"agility","ring"},["agweapon"] = {"agility","weapon"},
["agshield"] = {"agility","shield"},["agdagger"] = {"agility","dagger"},["aggun"] = {"agility","gun"},["agmace"] = {"agility","mace"},["agshoulder"] = {"agility","shoulder"},["agstaff"] = {"agility","staff"},
["agsword"] = {"agility","sword"},["agwand"] = {"agility","wand"},["agwrist"] = {"agility","wrist"},["agxbow"] = {"agility","xbow"},["agaxe"] = {"agility","axe"},
["agbow"] = {"agility","bow"},["agcrossbow"] = {"agility","crossbow"},
["bakstair"] = {"bank","stair"},

-- Location
["inogr"] = {"in","orgrimmar"},

-- Slang
["givemeyo"] = {"give","your"},["pickem"] = {"pick","them"},["gonna"] = {"going","to"},["kinda"] = {"kind","of"},["fofree"] = {"for","free"},["ive"] = {"i","have"},
["youre"] = {"you","are"},["wouldnt"] = {"would","not"},["havent"] = {"have","not"},["whats"] = {"what","is"},["theres"] = {"there","is"},["dont"] = {"do","not"},["tryna"] = {"trying","to"},["gimme"] = {"give","me"},["gimmi"] = {"give","me"},

-- Weird combinations
["damageforchat"] = {"damage","smcath"},
["anyhelp"] = {"need","help"},

-- Foreign
["zumleveling"] = {"for","leveling"},
["deutschsprachige"] = {"german","speaking"},
["hungariankln"] = {"hungarian","guild"},
["cautguild"] = {"lf","guild"},

["zapraszamy"] = {"we","inviteyou"},
["zaprasza"] = {"inviting","you"},
["youwswoje"] = {"youto","our"},
["wspolnegoprzemierzania"] = {"exploring","together"},
["jeam"] = {"i","am"},

["guildgia"] = {"guild","for"},
["russiangi"] = {"russian","guild"},["desguidesfr"] = {"combocombo","guild"},["ditchguild"] = {"combo","guild"},
["czechsfk"] = {"czech","slovak"},["sfkczech"] = {"czech","slovak"},["czechsk"] = {"czech","slovak"},

-- Classes
["druidfo"] = {"druid","for"},["hunterfo"] = {"hunter","for"},["magefo"] = {"mage","for"},["paladinfo"] = {"paladin","for"},["priestfo"] = {"priest","for"},
["roguefo"] = {"rogue","for"},["shamanfo"] = {"shaman","for"},["warlockfo"] = {"warlock","for"},["warriorfo"] = {"warrior","for"},
["healdruid"] = {"heal","druid"},["healpriest"] = {"heal","priest"},["healpaladin"] = {"heal","paladin"},["healshaman"] = {"heal","shaman"},
["anyroga"] = {"any","rogue"},

--[[
[""] = {"",""},
[""] = {"",""},
[""] = {"",""},
[""] = {"",""},
--]]

-- Guild
["afghaniguild"] = {"combo","guild"},["algerianguild"] = {"combo","guild"},["americanguild"] = {"combo","guild"},["argentineguild"] = {"combo","guild"},["auguild"] = {"combo","guild"},["auoceguild"] = {"combo","guild"},["balkanguild"] = {"combo","guild"},["brazilianguild"] = {"combo","guild"},["bulgarianguild"] = {"combo","guild"},["canadianguild"] = {"combo","guild"},["chadguild"] = {"combo","guild"},["chileanguild"] = {"combo","guild"},["chineseguild"] = {"combo","guild"},["colombianguild"] = {"combo","guild"},["congoleseguild"] = {"combo","guild"},["cubanguild"] = {"combo","guild"},["czechguild"] = {"combo","guild"},["danishguild"] = {"combo","guild"},["dutchguild"] = {"combo","guild"},["egyptianguild"] = {"combo","guild"},["englishguild"] = {"combo","guild"},["ethiopianguild"] = {"combo","guild"},["euguild"] = {"combo","guild"},["finnishguild"] = {"combo","guild"},["frguild"] = {"combo","guild"},["frenchguild"] = {"combo","guild"},["greekguild"] = {"combo","guild"},["germanguild"] = {"combo","guild"},["hungarianguild"] = {"combo","guild"},["indianguild"] = {"combo","guild"},["iranianguild"] = {"combo","guild"},["iraqiguild"] = {"combo","guild"},["italianguild"] = {"combo","guild"},["japaneseguild"] = {"combo","guild"},["kazakhguild"] = {"combo","guild"},["kenyanguild"] = {"combo","guild"},["koreanguild"] = {"combo","guild"},["lebaneseguild"] = {"combo","guild"},["libyanguild"] = {"combo","guild"},["malayguild"] = {"combo","guild"},["mexicanguild"] = {"combo","guild"},["mongolianguild"] = {"combo","guild"},["moroccanguild"] = {"combo","guild"},["naguild"] = {"combo","guild"},["nlguild"] = {"combo","guild"},["nigerianguild"] = {"combo","guild"},["nordguild"] = {"combo","guild"},["norwegianguild"] = {"combo","guild"},["oceguild"] = {"combo","guild"},["oceauguild"] = {"combo","guild"},["pakistaniguild"] = {"combo","guild"},["peruvianguild"] = {"combo","guild"},["filipinoguild"] = {"combo","guild"},["polishguild"] = {"combo","guild"},["portugueseguild"] = {"combo","guild"},["quebecguild"] = {"combo","guild"},["romanianguild"] = {"combo","guild"},["russianguild"] = {"combo","guild"},["rwandanguild"] = {"combo","guild"},["saudiguild"] = {"combo","guild"},["somalianguild"] = {"combo","guild"},["saguild"] = {"combo","guild"},["scandinavianguild"] = {"combo","guild"},["sfkguild"] = {"combo","guild"},["slovakguild"] = {"combo","guild"},["spanishguild"] = {"combo","guild"},["swedishguild"] = {"combo","guild"},["syrianguild"] = {"combo","guild"},["tajikguild"] = {"combo","guild"},["thaiguild"] = {"combo","guild"},["turkishguild"] = {"combo","guild"},["ukrainianguild"] = {"combo","guild"},["ugandanguild"] = {"combo","guild"},["uhrguild"] = {"combo","guild"},["ukguild"] = {"combo","guild"},["venezuelanguild"] = {"combo","guild"},["vietnameseguild"] = {"combo","guild"},["yemeniguild"] = {"combo","guild"},["zimbabweanguild"] = {"combo","guild"},
["activeguild"] = {"combo","guild"},["allianceguild"] = {"combo","guild"},["basedguild"] = {"combo","guild"},["beginnerguild"] = {"combo","guild"},["bigguild"] = {"combo","guild"},["biggerguild"] = {"combo","guild"},["casualguild"] = {"combo","guild"},["challengingguild"] = {"combo","guild"},["chillguild"] = {"combo","guild"},["coolguild"] = {"combo","guild"},["cozyguild"] = {"combo","guild"},["crossfactionguild"] = {"combo","guild"},["dadguild"] = {"combo","guild"},["druidguild"] = {"combo","guild"},["dungeonguild"] = {"combo","guild"},["dwarfguild"] = {"combo","guild"},["endeavorguild"] = {"combo","guild"},["erpguild"] = {"combo","guild"},["freshguild"] = {"combo","guild"},["friendlyguild"] = {"combo","guild"},["funguild"] = {"combo","guild"},["furryguild"] = {"combo","guild"},["gnomeguild"] = {"combo","guild"},["goblinguild"] = {"combo","guild"},["goodguild"] = {"combo","guild"},["hardcoreguild"] = {"combo","guild"},["hcguild"] = {"combo","guild"},["helpfulguild"] = {"combo","guild"},["highelfguild"] = {"combo","guild"},["hordeguild"] = {"combo","guild"},["humanguild"] = {"combo","guild"},["hunterguild"] = {"combo","guild"},["hypeguild"] = {"combo","guild"},["inclusiveguild"] = {"combo","guild"},["largeguild"] = {"combo","guild"},["levelguild"] = {"combo","guild"},["levelingguild"] = {"combo","guild"},["lgbtguild"] = {"combo","guild"},["mageguild"] = {"combo","guild"},["massiveguild"] = {"combo","guild"},["mediumsizedguild"] = {"combo","guild"},["memeguild"] = {"combo","guild"},["mercenaryguild"] = {"combo","guild"},["newguild"] = {"combo","guild"},["newerguild"] = {"combo","guild"},["newlycreatedguild"] = {"combo","guild"},["newlyformedguild"] = {"combo","guild"},["newlymadeguild"] = {"combo","guild"},["niceguild"] = {"combo","guild"},["nightelfguild"] = {"combo","guild"},["northamericanguild"] = {"combo","guild"},["oldguild"] = {"combo","guild"},["onlyguild"] = {"combo","guild"},["orcguild"] = {"combo","guild"},["paladinguild"] = {"combo","guild"},["priestguild"] = {"combo","guild"},["pveguild"] = {"combo","guild"},["pvpguild"] = {"combo","guild"},["raidguild"] = {"combo","guild"},["racistguild"] = {"combo","guild"},["reallybigguild"] = {"combo","guild"},["recentlyformedguild"] = {"combo","guild"},["relaxedguild"] = {"combo","guild"},["rogueguild"] = {"combo","guild"},["roleplayingguild"] = {"combo","guild"},["rpguild"] = {"combo","guild"},["scourgeguild"] = {"combo","guild"},["shamanguild"] = {"combo","guild"},["skilledguild"] = {"combo","guild"},["smallguild"] = {"combo","guild"},["socialguild"] = {"combo","guild"},["speakguild"] = {"combo","guild"},["strictguild"] = {"combo","guild"},["talkativeguild"] = {"combo","guild"},["taurenguild"] = {"combo","guild"},["themedguild"] = {"combo","guild"},["tightknitguild"] = {"combo","guild"},["topguild"] = {"combo","guild"},["toprankguild"] = {"combo","guild"},["trollguild"] = {"combo","guild"},["undeadguild"] = {"combo","guild"},["vagrantguild"] = {"combo","guild"},["verybigguild"] = {"combo","guild"},["verytalkativeguild"] = {"combo","guild"},["warlockguild"] = {"combo","guild"},["warriorguild"] = {"combo","guild"},["wokeguild"] = {"combo","guild"},["acdcguild"] = {"combo","guild"},["femboyguild"] = {"combo","guild"},["veganguild"] = {"combo","guild"},["wealthyguild"] = {"combo","guild"},["richguild"] = {"combo","guild"},["christianguild"] = {"combo","guild"},["wowguild"] = {"combo","guild"},
["activecombo"] = {"combo","combo"},["alliancecombo"] = {"combo","combo"},["basedcombo"] = {"combo","combo"},["beginnercombo"] = {"combo","combo"},["bigcombo"] = {"combo","combo"},["biggercombo"] = {"combo","combo"},["casualcombo"] = {"combo","combo"},["challengingcombo"] = {"combo","combo"},["chillcombo"] = {"combo","combo"},["coolcombo"] = {"combo","combo"},["cozycombo"] = {"combo","combo"},["crossfactioncombo"] = {"combo","combo"},["dadcombo"] = {"combo","combo"},["druidcombo"] = {"combo","combo"},["dungeoncombo"] = {"combo","combo"},["dwarfcombo"] = {"combo","combo"},["endeavorcombo"] = {"combo","combo"},["erpcombo"] = {"combo","combo"},["freshcombo"] = {"combo","combo"},["friendlycombo"] = {"combo","combo"},["funcombo"] = {"combo","combo"},["furrycombo"] = {"combo","combo"},["gnomecombo"] = {"combo","combo"},["goblincombo"] = {"combo","combo"},["goodcombo"] = {"combo","combo"},["hardcorecombo"] = {"combo","combo"},["hccombo"] = {"combo","combo"},["helpfulcombo"] = {"combo","combo"},["highelfcombo"] = {"combo","combo"},["hordecombo"] = {"combo","combo"},["humancombo"] = {"combo","combo"},["huntercombo"] = {"combo","combo"},["hypecombo"] = {"combo","combo"},["inclusivecombo"] = {"combo","combo"},["largecombo"] = {"combo","combo"},["levelcombo"] = {"combo","combo"},["levelingcombo"] = {"combo","combo"},["lgbtcombo"] = {"combo","combo"},["magecombo"] = {"combo","combo"},["massivecombo"] = {"combo","combo"},["mediumsizedcombo"] = {"combo","combo"},["memecombo"] = {"combo","combo"},["mercenarycombo"] = {"combo","combo"},["newcombo"] = {"combo","combo"},["newercombo"] = {"combo","combo"},["newlycreatedcombo"] = {"combo","combo"},["newlyformedcombo"] = {"combo","combo"},["newlymadecombo"] = {"combo","combo"},["nicecombo"] = {"combo","combo"},["nightelfcombo"] = {"combo","combo"},["northamericancombo"] = {"combo","combo"},["oldcombo"] = {"combo","combo"},["onlycombo"] = {"combo","combo"},["orccombo"] = {"combo","combo"},["paladincombo"] = {"combo","combo"},["priestcombo"] = {"combo","combo"},["pvecombo"] = {"combo","combo"},["pvpcombo"] = {"combo","combo"},["raidcombo"] = {"combo","combo"},["racistcombo"] = {"combo","combo"},["reallybigcombo"] = {"combo","combo"},["recentlyformedcombo"] = {"combo","combo"},["relaxedcombo"] = {"combo","combo"},["roguecombo"] = {"combo","combo"},["roleplayingcombo"] = {"combo","combo"},["rpcombo"] = {"combo","combo"},["scourgecombo"] = {"combo","combo"},["shamancombo"] = {"combo","combo"},["skilledcombo"] = {"combo","combo"},["smallcombo"] = {"combo","combo"},["socialcombo"] = {"combo","combo"},["speakcombo"] = {"combo","combo"},["strictcombo"] = {"combo","combo"},["talkativecombo"] = {"combo","combo"},["taurencombo"] = {"combo","combo"},["themedcombo"] = {"combo","combo"},["tightknitcombo"] = {"combo","combo"},["topcombo"] = {"combo","combo"},["toprankcombo"] = {"combo","combo"},["trollcombo"] = {"combo","combo"},["undeadcombo"] = {"combo","combo"},["vagrantcombo"] = {"combo","combo"},["verybigcombo"] = {"combo","combo"},["verytalkativecombo"] = {"combo","combo"},["warlockcombo"] = {"combo","combo"},["warriorcombo"] = {"combo","combo"},["wokecombo"] = {"combo","combo"},["acdccombo"] = {"combo","combo"},["femboycombo"] = {"combo","combo"},["vegancombo"] = {"combo","combo"},["wealthycombo"] = {"combo","combo"},["richcombo"] = {"combo","combo"},["christiancombo"] = {"combo","combo"},["wowcombo"] = {"combo","combo"},
["chinesespeak"] = {"combo","combo"},["danishspeak"] = {"combo","combo"},["dutchspeak"] = {"combo","combo"},["englishspeak"] = {"combo","combo"},["finnishspeak"] = {"combo","combo"},["frenchspeak"] = {"combo","combo"},["germanspeak"] = {"combo","combo"},["greekspeak"] = {"combo","combo"},["italianspeak"] = {"combo","combo"},["japanesespeak"] = {"combo","combo"},["koreanspeak"] = {"combo","combo"},["norwegianspeak"] = {"combo","combo"},["portuguesespeak"] = {"combo","combo"},["russianspeak"] = {"combo","combo"},["spanishspeak"] = {"combo","combo"},["turkishspeak"] = {"combo","combo"},["vietnamesespeak"] = {"combo","combo"},["ukbased"] = {"combo","combo"},
["humanonly"] = {"combo","combo"},["nightelfonly"] = {"combo","combo"},["dwarfonly"] = {"combo","combo"},["gnomeonly"] = {"combo","combo"},["highelfonly"] = {"combo","combo"},["orconly"] = {"combo","combo"},["undeadonly"] = {"combo","combo"},["trollonly"] = {"combo","combo"},["taurenonly"] = {"combo","combo"},["goblinonly"] = {"combo","combo"},
["humanthemed"] = {"combo","combo"},["nightelfthemed"] = {"combo","combo"},["dwarfthemed"] = {"combo","combo"},["gnomethemed"] = {"combo","combo"},["highelfthemed"] = {"combo","combo"},["orcthemed"] = {"combo","combo"},["undeadthemed"] = {"combo","combo"},["trollthemed"] = {"combo","combo"},["taurenthemed"] = {"combo","combo"},["goblinthemed"] = {"combo","combo"},
["encombo"] = {"combo","combo"},["eucombo"] = {"combo","combo"},["nacombo"] = {"combo","combo"},["aucombo"] = {"combo","combo"},["ocecombo"] = {"combo","combo"},["rucombo"] = {"combo","combo"},["guilden"] = {"guild","combo"},["guildeu"] = {"guild","combo"},["guildna"] = {"guild","combo"},["guildau"] = {"guild","combo"},["guildoce"] = {"guild","combo"},["guildru"] = {"guild","combo"},
["speedrunningguild"] = {"combo","guild"},["porguild"] = {"for","guild"},

-- LFM/LFG Other
["gnomelf"] = {"lf","gnomer"},["gnomelfg"] = {"lfg","gnomer"},["gnomelfm"] = {"lfm","gnomer"},["lfgnome"] = {"lf","gnomer"},["lfggnome"] = {"lfg","gnomer"},["lfmgnome"] = {"lfm","gnomer"},["healgnome"] = {"heal","gnomer"},["tankgnome"] = {"tank","gnomer"},["damagegnome"] = {"damage","gnomer"},["gnomegoing"] = {"gnomer","going"},
["templelf"] = {"lf","st"},["templelfg"] = {"lfg","st"},["templelfm"] = {"lfm","st"},["lftemple"] = {"lf","st"},["lfgtemple"] = {"lfg","st"},["lfmtemple"] = {"lfm","st"},["healtemple"] = {"heal","st"},["tanktemple"] = {"tank","st"},["damagetemple"] = {"damage","st"},["templegoing"] = {"st","going"},
["gylf"] = {"lf","smgy"},["gylfg"] = {"lfg","smgy"},["gylfm"] = {"lfm","smgy"},["lfgy"] = {"lf","smgy"},["lfggy"] = {"lfg","smgy"},["lfmgy"] = {"lfm","smgy"},["healgy"] = {"heal","smgy"},["tankgy"] = {"tank","smgy"},["damagegy"] = {"damage","smgy"},
["rclf"] = {"lf","rfc"},["rclfg"] = {"lfg","rfc"},["rclfm"] = {"lfm","rfc"},["lfrc"] = {"lf","rfc"},["lfgrc"] = {"lfg","rfc"},["lfmrc"] = {"lfm","rfc"},["healrc"] = {"heal","rfc"},["tankrc"] = {"tank","rfc"},["damagerc"] = {"damage","rfc"},["rcgoing"] = {"rfc","going"},
["lftribute"] = {"lf","dmt"},["lfgtribute"] = {"lfg","dmt"},["lfmtribute"] = {"lfm","dmt"},["tributelf"] = {"lf","dmt"},["tributelfg"] = {"lfg","dmt"},["tributelfm"] = {"lfm","dmt"},["healtribute"] = {"heal","dmt"},["tanktribute"] = {"lftank","dmt"},["damagetribute"] = {"damage","dmt"},["tributegoing"] = {"dmt","going"},
["startlf"] = {"lf","stratholme"},["startlfg"] = {"lfg","stratholme"},["startlfm"] = {"lfm","stratholme"},["stratlf"] = {"lf","stratholme"},["stratlfg"] = {"lfg","stratholme"},["stratlfm"] = {"lfm","stratholme"},["healstrat"] = {"heal","stratholme"},["tankstrat"] = {"tank","stratholme"},["damagestrat"] = {"damage","stratholme"},["stratgoing"] = {"stratholme","going"},
["lfstart"] = {"lf","stratholme"},["lfgstart"] = {"lfg","stratholme"},["lfmstart"] = {"lfm","stratholme"},["lfstrat"] = {"lf","stratholme"},["lfgstrat"] = {"lfg","stratholme"},["lfmstrat"] = {"lfm","stratholme"},["healstart"] = {"heal","stratholme"},["tankstart"] = {"tank","stratholme"},["damagestart"] = {"damage","stratholme"},
["armlf"] = {"lf","smarm"},["armlfg"] = {"lfg","smarm"},["armlfm"] = {"lfm","smarm"},["armslf"] = {"lf","smarm"},["armslfg"] = {"lfg","smarm"},["armslfm"] = {"lfm","smarm"},["healarm"] = {"heal","smarm"},["tankarm"] = {"tank","smarm"},["damagearm"] = {"damage","smarm"},["armgoing"] = {"smarm","going"},
["lfarm"] = {"lf","smarm"},["lfgarm"] = {"lfg","smarm"},["lfmarm"] = {"lfm","smarm"},["lfarms"] = {"lf","smarm"},["lfgarms"] = {"lfg","smarm"},["lfmarms"] = {"lfm","smarm"},["healarms"] = {"heal","smarm"},["tankarms"] = {"tank","smarm"},["damagearms"] = {"damage","smarm"},["armsgoing"] = {"smarm","going"},
["schoollf"] = {"lf","scholomance"},["schoollfg"] = {"lfg","scholomance"},["schoollfm"] = {"lfm","scholomance"},["lfschool"] = {"lf","scholomance"},["lfgschool"] = {"lfg","scholomance"},["lfmschool"] = {"lfm","scholomance"},["healschool"] = {"heal","scholomance"},["tankschool"] = {"tank","scholomance"},["damageschool"] = {"damage","scholomance"},["schoolgoing"] = {"scholomance","going"},
["wailinglf"] = {"lf","wc"},["wailinglfg"] = {"lfg","wc"},["wailinglfm"] = {"lfm","wc"},["lfwailing"] = {"lf","wc"},["lfgwailing"] = {"lfg","wc"},["lfmwailing"] = {"lfm","wc"},["healwailing"] = {"heal","wc"},["tankwailing"] = {"tank","wc"},["damagewailing"] = {"damage","wc"},["wailinggoing"] = {"wc","going"},
["hatefullf"] = {"lf","hfq"},["hatefullfg"] = {"lfg","hfq"},["hatefullfm"] = {"lfm","hfq"},["lfhateful"] = {"lf","hfq"},["lfghateful"] = {"lfg","hfq"},["lfmhateful"] = {"lfm","hfq"},["healhateful"] = {"heal","hfq"},["tankhateful"] = {"tank","hfq"},["damagehateful"] = {"damage","hfq"},["hatefulgoing"] = {"hfq","going"},
["monasterylfg"] = {"lfg","scarletmonastery"},["monasterylfm"] = {"lfm","scarletmonastery"},["lfmonastery"] = {"lf","scarletmonastery"},["lfgmonastery"] = {"lfg","scarletmonastery"},["lfmmonastery"] = {"lfm","scarletmonastery"},["healmonastery"] = {"heal","scarletmonastery"},["tankmonastery"] = {"tank","scarletmonastery"},["damagemonastery"] = {"damage","scarletmonastery"},["monasterygoing"] = {"scarletmonastery","going"},

-- Common Trade
["alteracB"] = {"B","B"},["aqB"] = {"B","B"},["arathiB"] = {"B","B"},["arathihighlandsB"] = {"B","B"},["ashenvaleB"] = {"B","B"},["azsharaB"] = {"B","B"},["badlandsB"] = {"B","B"},["barrensB"] = {"B","B"},["blackrockB"] = {"B","B"},["blackrockmountainB"] = {"B","B"},["blastedB"] = {"B","B"},["blastedlandsB"] = {"B","B"},["bbB"] = {"B","B"},["bootybayB"] = {"B","B"},["brmB"] = {"B","B"},["cotB"] = {"B","B"},["crossroadsB"] = {"B","B"},["darkmoonB"] = {"B","B"},["darkmoonfaireB"] = {"B","B"},["darnassusB"] = {"B","B"},["desolaceB"] = {"B","B"},["diremaulB"] = {"B","B"},["dmB"] = {"B","B"},["dmeB"] = {"B","B"},["dmwB"] = {"B","B"},["dmnB"] = {"B","B"},["eplB"] = {"B","B"},["everlookB"] = {"B","B"},["feralasB"] = {"B","B"},["gadgetB"] = {"B","B"},["gadgetzanB"] = {"B","B"},["goldshireB"] = {"B","B"},["hydraxianB"] = {"B","B"},["hillsbradB"] = {"B","B"},["hyjalB"] = {"B","B"},["ifB"] = {"B","B"},["ironforgeB"] = {"B","B"},["karazhanB"] = {"B","B"},["moongladeB"] = {"B","B"},["orgrimmarB"] = {"B","B"},["ratchetB"] = {"B","B"},["silithusB"] = {"B","B"},["smB"] = {"B","B"},["stonardB"] = {"B","B"},["stormwindB"] = {"B","B"},["tanarisB"] = {"B","B"},["tarrenmillB"] = {"B","B"},["thunderB"] = {"B","B"},["thunderbluffB"] = {"B","B"},["undercityB"] = {"B","B"},["winterspringB"] = {"B","B"},["wplB"] = {"B","B"},["zoramstrandB"] = {"B","B"},["axeB"] = {"B","B"},["bowB"] = {"B","B"},["daggerB"] = {"B","B"},["greaterB"] = {"B","B"},["gunB"] = {"B","B"},["lesserB"] = {"B","B"},["maceB"] = {"B","B"},["mightyB"] = {"B","B"},["minorB"] = {"B","B"},["polearmB"] = {"B","B"},["staffB"] = {"B","B"},["swordB"] = {"B","B"},["wandB"] = {"B","B"},["ableB"] = {"A","B"},["aboutB"] = {"A","B"},["aboveB"] = {"A","B"},["affordB"] = {"A","B"},["allB"] = {"A","B"},["alleyB"] = {"A","B"},["amountB"] = {"A","B"},["andB"] = {"A","B"},["appreciateB"] = {"A","B"},["aroundB"] = {"A","B"},["askB"] = {"A","B"},["atB"] = {"A","B"},["belowB"] = {"A","B"},["bigB"] = {"A","B"},["bringB"] = {"A","B"},["bunchB"] = {"A","B"},["byB"] = {"A","B"},["callB"] = {"A","B"},["canB"] = {"A","B"},["comeB"] = {"A","B"},["dealB"] = {"A","B"},["decentB"] = {"A","B"},["districtB"] = {"A","B"},["doB"] = {"A","B"},["doingB"] = {"A","B"},["doorB"] = {"A","B"},["evenB"] = {"A","B"},["everyB"] = {"A","B"},["everythingB"] = {"A","B"},["fasterB"] = {"A","B"},["fewB"] = {"A","B"},["forB"] = {"A","B"},["friendB"] = {"A","B"},["fromB"] = {"A","B"},["frontB"] = {"A","B"},["getB"] = {"A","B"},["giveB"] = {"A","B"},["goodB"] = {"A","B"},["guyB"] = {"A","B"},["hardB"] = {"A","B"},["hasB"] = {"A","B"},["haveB"] = {"A","B"},["hereB"] = {"A","B"},["heroB"] = {"A","B"},["highB"] = {"A","B"},["houseB"] = {"A","B"},["iB"] = {"A","B"},["imB"] = {"A","B"},["inB"] = {"A","B"},["itsB"] = {"A","B"},["justB"] = {"A","B"},["kindB"] = {"A","B"},["lastB"] = {"A","B"},["lessB"] = {"A","B"},["lookingB"] = {"A","B"},["lotB"] = {"A","B"},["lowB"] = {"A","B"},["lowerB"] = {"A","B"},["majorB"] = {"A","B"},["manyB"] = {"A","B"},["meB"] = {"A","B"},["midB"] = {"A","B"},["mindB"] = {"A","B"},["moreB"] = {"A","B"},["mostB"] = {"A","B"},["muchB"] = {"A","B"},["mustB"] = {"A","B"},["myB"] = {"A","B"},["noB"] = {"A","B"},["nowB"] = {"A","B"},["ofB"] = {"A","B"},["offB"] = {"A","B"},["onB"] = {"A","B"},["onlyB"] = {"A","B"},["orB"] = {"A","B"},["orderB"] = {"A","B"},["outB"] = {"A","B"},["outsideB"] = {"A","B"},["placeB"] = {"A","B"},["plentyB"] = {"A","B"},["popB"] = {"A","B"},["quickB"] = {"A","B"},["reasonableB"] = {"A","B"},["someB"] = {"A","B"},["stillB"] = {"A","B"},["stopB"] = {"A","B"},["superiorB"] = {"A","B"},["sweetB"] = {"A","B"},["thanB"] = {"A","B"},["thatB"] = {"A","B"},["theirB"] = {"A","B"},["theyB"] = {"A","B"},["thereB"] = {"A","B"},["thisB"] = {"A","B"},["timeB"] = {"A","B"},["toB"] = {"A","B"},["topB"] = {"A","B"},["uB"] = {"A","B"},["upB"] = {"A","B"},["useB"] = {"A","B"},["wayB"] = {"A","B"},["wellB"] = {"A","B"},["whoB"] = {"A","B"},["willB"] = {"A","B"},["willingB"] = {"A","B"},["withB"] = {"A","B"},["youB"] = {"A","B"},["yourB"] = {"A","B"},["allianceB"] = {"B","B"},["bankB"] = {"B","B"},["bestB"] = {"B","B"},["bisB"] = {"B","B"},["bridgeB"] = {"B","B"},["businessB"] = {"B","B"},["commissionB"] = {"B","B"},["coupleB"] = {"B","B"},["deliveredB"] = {"B","B"},["deliveryB"] = {"B","B"},["donationB"] = {"B","B"},["fountainB"] = {"B","B"},["guaranteeB"] = {"B","B"},["hardcoreB"] = {"B","B"},["hcB"] = {"B","B"},["helpB"] = {"B","B"},["hordeB"] = {"B","B"},["interestedB"] = {"B","B"},["jobB"] = {"B","B"},["levelB"] = {"B","B"},["levelingB"] = {"B","B"},["listedB"] = {"B","B"},["minuteB"] = {"B","B"},["nearB"] = {"B","B"},["oneB"] = {"B","B"},["premiumB"] = {"B","B"},["qualityB"] = {"B","B"},["stairB"] = {"B","B"},["stepsB"] = {"B","B"},["threeB"] = {"B","B"},["tipB"] = {"B","B"},["tonB"] = {"B","B"},["townB"] = {"B","B"},["twoB"] = {"B","B"},["alchemistB"] = {"B","B"},["blacksmithB"] = {"B","B"},["engineerB"] = {"B","B"},["leatherworkerB"] = {"B","B"},["tailorB"] = {"B","B"},["specializationB"] = {"B","B"},["barB"] = {"B","B"},["clothB"] = {"B","B"},["copperB"] = {"B","B"},["oreB"] = {"B","B"},["stoneB"] = {"B","B"},["bagB"] = {"B","B"},["cooldownB"] = {"B","B"},["danceB"] = {"B","B"},["elixirB"] = {"B","B"},["flaskB"] = {"B","B"},["formulaB"] = {"B","B"},["hideB"] = {"B","B"},["linenB"] = {"B","B"},["mageweaveB"] = {"B","B"},["orangeB"] = {"B","B"},["patternB"] = {"B","B"},["plansB"] = {"B","B"},["poolB"] = {"B","B"},["prizeB"] = {"B","B"},["potionB"] = {"B","B"},["ruggedB"] = {"B","B"},["setB"] = {"B","B"},["slotB"] = {"B","B"},["storeB"] = {"B","B"},["thoriumB"] = {"B","B"},["tokenB"] = {"B","B"},["winB"] = {"B","B"},["foodB"] = {"B","B"},["mageB"] = {"B","B"},["stackB"] = {"B","B"},["warlockB"] = {"B","B"},["boxB"] = {"B","B"},["crackB"] = {"B","B"},["crackingB"] = {"B","B"},["lockB"] = {"B","B"},["pickB"] = {"B","B"},["rogueB"] = {"B","B"},["unlockB"] = {"B","B"},["addB"] = {"B","B"},["applyB"] = {"B","B"},["blueitemB"] = {"B","B"},["epicitemB"] = {"B","B"},["greenitemB"] = {"B","B"},["makerB"] = {"B","B"},["matB"] = {"B","B"},["materialB"] = {"B","B"},["patternB"] = {"B","B"},["recipeB"] = {"B","B"},["trinketB"] = {"B","B"},["gearB"] = {"B","B"},["inventoryB"] = {"B","B"},["skillB"] = {"B","B"},["auctionB"] = {"C","B"},["neededB"] = {"C","B"},["payB"] = {"C","B"},["priceB"] = {"C","B"},["arcaniteB"] = {"C","B"},["curedruggedhideB"] = {"C","B"},["emporiumB"] = {"C","B"},["middlemanB"] = {"C","B"},["moonclothB"] = {"C","B"},["comingupB"] = {"C","B"},["waterB"] = {"C","B"},["createB"] = {"C","B"},["hitemB"] = {"C","B"},["makeB"] = {"C","B"},["openB"] = {"C","B"},["openedB"] = {"C","B"},["openerB"] = {"C","B"},["openingB"] = {"C","B"},["anyB"] = {"C","B"},["anyoneB"] = {"C","B"},["anywhereB"] = {"C","B"},["discountB"] = {"C","B"},["everycornerB"] = {"C","B"},["fastB"] = {"C","B"},["freeB"] = {"C","B"},["goldB"] = {"C","B"},["helpB"] = {"C","B"},["moneyB"] = {"C","B"},["needB"] = {"C","B"},["pleaseB"] = {"C","B"},["pstB"] = {"C","B"},["quickB"] = {"C","B"},["requestB"] = {"C","B"},["saleB"] = {"C","B"},["serviceB"] = {"C","B"},["welcomeB"] = {"C","B"},["wmeB"] = {"C","B"},["workB"] = {"C","B"},["whereverB"] = {"C","B"},["agilityB"] = {"A","B"},["apB"] = {"A","B"},["arB"] = {"A","B"},["arcaneB"] = {"A","B"},["armorB"] = {"A","B"},["blockB"] = {"A","B"},["damageB"] = {"A","B"},["defenseB"] = {"A","B"},["dodgeB"] = {"A","B"},["fireB"] = {"A","B"},["fishB"] = {"A","B"},["frB"] = {"A","B"},["frostB"] = {"A","B"},["glowB"] = {"A","B"},["hasteB"] = {"A","B"},["healB"] = {"A","B"},["healthB"] = {"A","B"},["herbB"] = {"A","B"},["hitB"] = {"A","B"},["hpB"] = {"A","B"},["impactB"] = {"A","B"},["intellectB"] = {"A","B"},["manaB"] = {"A","B"},["mineB"] = {"A","B"},["mountB"] = {"A","B"},["mpB"] = {"A","B"},["natureB"] = {"A","B"},["nrB"] = {"A","B"},["resistB"] = {"A","B"},["ridingB"] = {"A","B"},["shadowB"] = {"A","B"},["skinB"] = {"A","B"},["speedB"] = {"A","B"},["spellB"] = {"A","B"},["spiritB"] = {"A","B"},["srB"] = {"A","B"},["staminaB"] = {"A","B"},["statsB"] = {"A","B"},["stealthB"] = {"A","B"},["strengthB"] = {"A","B"},["strikingB"] = {"A","B"},["subtletyB"] = {"A","B"},["threatB"] = {"A","B"},["weaponB"] = {"A","B"},["allresistB"] = {"C","B"},["crusaderB"] = {"C","B"},["beastslayerB"] = {"C","B"},["counterweightB"] = {"C","B"},["fieryB"] = {"C","B"},["icychillB"] = {"C","B"},["icyB"] = {"C","B"},["minorspeedB"] = {"C","B"},["mountspeedB"] = {"C","B"},["movespeedB"] = {"C","B"},["demonslayingB"] = {"C","B"},["lifestealB"] = {"C","B"},["resistallB"] = {"C","B"},["ridingskillB"] = {"C","B"},["ridingspeedB"] = {"C","B"},["runspeedB"] = {"C","B"},["shieldspikeB"] = {"C","B"},["spelldamageB"] = {"C","B"},["spurB"] = {"C","B"},["vampirismB"] = {"C","B"},["weaponchainB"] = {"C","B"},["wintersmightB"] = {"C","B"},["unholyB"] = {"C","B"},["headB"] = {"A","B"},["legsB"] = {"A","B"},["neckB"] = {"A","B"},["ringB"] = {"A","B"},["cloakB"] = {"A","B"},["backB"] = {"A","B"},["chestB"] = {"A","B"},["wristB"] = {"A","B"},["glovesB"] = {"A","B"},["handB"] = {"A","B"},["shieldB"] = {"A","B"},["bootsB"] = {"A","B"},["weaponB"] = {"A","B"},["beltB"] = {"A","B"},["beltbuckleB"] = {"A","B"},["gemB"] = {"A","B"},["gemstoneB"] = {"A","B"},["jewelB"] = {"A","B"},["handswordB"] = {"A","B"},["handaxeB"] = {"A","B"},["handmaceB"] = {"A","B"},["handstaffB"] = {"A","B"},["handdaggerB"] = {"A","B"},["arcanumB"] = {"A","B"},["libramB"] = {"A","B"},
["Balterac"] = {"B","B"},["Baq"] = {"B","B"},["Barathi"] = {"B","B"},["Barathihighlands"] = {"B","B"},["Bashenvale"] = {"B","B"},["Bazshara"] = {"B","B"},["Bbadlands"] = {"B","B"},["Bbarrens"] = {"B","B"},["Bblackrock"] = {"B","B"},["Bblackrockmountain"] = {"B","B"},["Bblasted"] = {"B","B"},["Bblastedlands"] = {"B","B"},["Bbb"] = {"B","B"},["Bbootybay"] = {"B","B"},["Bbrm"] = {"B","B"},["Bcot"] = {"B","B"},["Bcrossroads"] = {"B","B"},["Bdarkmoon"] = {"B","B"},["Bdarkmoonfaire"] = {"B","B"},["Bdarnassus"] = {"B","B"},["Bdesolace"] = {"B","B"},["Bdiremaul"] = {"B","B"},["Bdm"] = {"B","B"},["Bdme"] = {"B","B"},["Bdmw"] = {"B","B"},["Bdmn"] = {"B","B"},["Bepl"] = {"B","B"},["Beverlook"] = {"B","B"},["Bferalas"] = {"B","B"},["Bgadget"] = {"B","B"},["Bgadgetzan"] = {"B","B"},["Bgoldshire"] = {"B","B"},["Bhydraxian"] = {"B","B"},["Bhillsbrad"] = {"B","B"},["Bhyjal"] = {"B","B"},["Bif"] = {"B","B"},["Bironforge"] = {"B","B"},["Bkarazhan"] = {"B","B"},["Bmoonglade"] = {"B","B"},["Borgrimmar"] = {"B","B"},["Bratchet"] = {"B","B"},["Bsilithus"] = {"B","B"},["Bsm"] = {"B","B"},["Bstonard"] = {"B","B"},["Bstormwind"] = {"B","B"},["Btanaris"] = {"B","B"},["Btarrenmill"] = {"B","B"},["Bthunder"] = {"B","B"},["Bthunderbluff"] = {"B","B"},["Bundercity"] = {"B","B"},["Bwinterspring"] = {"B","B"},["Bwpl"] = {"B","B"},["Bzoramstrand"] = {"B","B"},["Baxe"] = {"B","B"},["Bbow"] = {"B","B"},["Bdagger"] = {"B","B"},["Bgreater"] = {"B","B"},["Bgun"] = {"B","B"},["Blesser"] = {"B","B"},["Bmace"] = {"B","B"},["Bmighty"] = {"B","B"},["Bminor"] = {"B","B"},["Bpolearm"] = {"B","B"},["Bstaff"] = {"B","B"},["Bsword"] = {"B","B"},["Bwand"] = {"B","B"},["Bable"] = {"B","A"},["Babout"] = {"B","A"},["Babove"] = {"B","A"},["Bafford"] = {"B","A"},["Ball"] = {"B","A"},["Balley"] = {"B","A"},["Bamount"] = {"B","A"},["Band"] = {"B","A"},["Bappreciate"] = {"B","A"},["Baround"] = {"B","A"},["Bask"] = {"B","A"},["Bat"] = {"B","A"},["Bbelow"] = {"B","A"},["Bbig"] = {"B","A"},["Bbring"] = {"B","A"},["Bbunch"] = {"B","A"},["Bby"] = {"B","A"},["Bcall"] = {"B","A"},["Bcan"] = {"B","A"},["Bcome"] = {"B","A"},["Bdeal"] = {"B","A"},["Bdecent"] = {"B","A"},["Bdistrict"] = {"B","A"},["Bdo"] = {"B","A"},["Bdoing"] = {"B","A"},["Bdoor"] = {"B","A"},["Beven"] = {"B","A"},["Bevery"] = {"B","A"},["Beverything"] = {"B","A"},["Bfaster"] = {"B","A"},["Bfew"] = {"B","A"},["Bfor"] = {"B","A"},["Bfriend"] = {"B","A"},["Bfrom"] = {"B","A"},["Bfront"] = {"B","A"},["Bget"] = {"B","A"},["Bgive"] = {"B","A"},["Bgood"] = {"B","A"},["Bguy"] = {"B","A"},["Bhard"] = {"B","A"},["Bhas"] = {"B","A"},["Bhave"] = {"B","A"},["Bhere"] = {"B","A"},["Bhero"] = {"B","A"},["Bhigh"] = {"B","A"},["Bhouse"] = {"B","A"},["Bi"] = {"B","A"},["Bim"] = {"B","A"},["Bin"] = {"B","A"},["Bits"] = {"B","A"},["Bjust"] = {"B","A"},["Bkind"] = {"B","A"},["Blast"] = {"B","A"},["Bless"] = {"B","A"},["Blooking"] = {"B","A"},["Blot"] = {"B","A"},["Blow"] = {"B","A"},["Blower"] = {"B","A"},["Bmajor"] = {"B","A"},["Bmany"] = {"B","A"},["Bme"] = {"B","A"},["Bmid"] = {"B","A"},["Bmind"] = {"B","A"},["Bmore"] = {"B","A"},["Bmost"] = {"B","A"},["Bmuch"] = {"B","A"},["Bmust"] = {"B","A"},["Bmy"] = {"B","A"},["Bno"] = {"B","A"},["Bnow"] = {"B","A"},["Bof"] = {"B","A"},["Boff"] = {"B","A"},["Bon"] = {"B","A"},["Bonly"] = {"B","A"},["Bor"] = {"B","A"},["Border"] = {"B","A"},["Bout"] = {"B","A"},["Boutside"] = {"B","A"},["Bplace"] = {"B","A"},["Bplenty"] = {"B","A"},["Bpop"] = {"B","A"},["Bquick"] = {"B","A"},["Breasonable"] = {"B","A"},["Bsome"] = {"B","A"},["Bstill"] = {"B","A"},["Bstop"] = {"B","A"},["Bsuperior"] = {"B","A"},["Bsweet"] = {"B","A"},["Bthan"] = {"B","A"},["Bthat"] = {"B","A"},["Btheir"] = {"B","A"},["Bthey"] = {"B","A"},["Bthere"] = {"B","A"},["Bthis"] = {"B","A"},["Btime"] = {"B","A"},["Bto"] = {"B","A"},["Btop"] = {"B","A"},["Bu"] = {"B","A"},["Bup"] = {"B","A"},["Buse"] = {"B","A"},["Bway"] = {"B","A"},["Bwell"] = {"B","A"},["Bwho"] = {"B","A"},["Bwill"] = {"B","A"},["Bwilling"] = {"B","A"},["Bwith"] = {"B","A"},["Byou"] = {"B","A"},["Byour"] = {"B","A"},["Balliance"] = {"B","B"},["Bbank"] = {"B","B"},["Bbest"] = {"B","B"},["Bbis"] = {"B","B"},["Bbridge"] = {"B","B"},["Bbusiness"] = {"B","B"},["Bcommission"] = {"B","B"},["Bcouple"] = {"B","B"},["Bdelivered"] = {"B","B"},["Bdelivery"] = {"B","B"},["Bdonation"] = {"B","B"},["Bfountain"] = {"B","B"},["Bguarantee"] = {"B","B"},["Bhardcore"] = {"B","B"},["Bhc"] = {"B","B"},["Bhelp"] = {"B","B"},["Bhorde"] = {"B","B"},["Binterested"] = {"B","B"},["Bjob"] = {"B","B"},["Blevel"] = {"B","B"},["Bleveling"] = {"B","B"},["Blisted"] = {"B","B"},["Bminute"] = {"B","B"},["Bnear"] = {"B","B"},["Bone"] = {"B","B"},["Bpremium"] = {"B","B"},["Bquality"] = {"B","B"},["Bstair"] = {"B","B"},["Bsteps"] = {"B","B"},["Bthree"] = {"B","B"},["Btip"] = {"B","B"},["Bton"] = {"B","B"},["Btown"] = {"B","B"},["Btwo"] = {"B","B"},["Balchemist"] = {"B","B"},["Bblacksmith"] = {"B","B"},["Bengineer"] = {"B","B"},["Bleatherworker"] = {"B","B"},["Btailor"] = {"B","B"},["Bspecialization"] = {"B","B"},["Bbar"] = {"B","B"},["Bcloth"] = {"B","B"},["Bcopper"] = {"B","B"},["Bore"] = {"B","B"},["Bstone"] = {"B","B"},["Bbag"] = {"B","B"},["Bcooldown"] = {"B","B"},["Bdance"] = {"B","B"},["Belixir"] = {"B","B"},["Bflask"] = {"B","B"},["Bformula"] = {"B","B"},["Bhide"] = {"B","B"},["Blinen"] = {"B","B"},["Bmageweave"] = {"B","B"},["Borange"] = {"B","B"},["Bpattern"] = {"B","B"},["Bplans"] = {"B","B"},["Bpool"] = {"B","B"},["Bprize"] = {"B","B"},["Bpotion"] = {"B","B"},["Brugged"] = {"B","B"},["Bset"] = {"B","B"},["Bslot"] = {"B","B"},["Bstore"] = {"B","B"},["Bthorium"] = {"B","B"},["Btoken"] = {"B","B"},["Bwin"] = {"B","B"},["Bfood"] = {"B","B"},["Bmage"] = {"B","B"},["Bstack"] = {"B","B"},["Bwarlock"] = {"B","B"},["Bbox"] = {"B","B"},["Bcrack"] = {"B","B"},["Bcracking"] = {"B","B"},["Block"] = {"B","B"},["Bpick"] = {"B","B"},["Brogue"] = {"B","B"},["Bunlock"] = {"B","B"},["Badd"] = {"B","B"},["Bapply"] = {"B","B"},["Bblueitem"] = {"B","B"},["Bepicitem"] = {"B","B"},["Bgreenitem"] = {"B","B"},["Bmaker"] = {"B","B"},["Bmat"] = {"B","B"},["Bmaterial"] = {"B","B"},["Bpattern"] = {"B","B"},["Brecipe"] = {"B","B"},["Btrinket"] = {"B","B"},["Bgear"] = {"B","B"},["Binventory"] = {"B","B"},["Bskill"] = {"B","B"},["Bauction"] = {"B","C"},["Bneeded"] = {"B","C"},["Bpay"] = {"B","C"},["Bprice"] = {"B","C"},["Barcanite"] = {"B","C"},["Bcuredruggedhide"] = {"B","C"},["Bemporium"] = {"B","C"},["Bmiddleman"] = {"B","C"},["Bmooncloth"] = {"B","C"},["Bcomingup"] = {"B","C"},["Bwater"] = {"B","C"},["Bcreate"] = {"B","C"},["Bhitem"] = {"B","C"},["Bmake"] = {"B","C"},["Bopen"] = {"B","C"},["Bopened"] = {"B","C"},["Bopener"] = {"B","C"},["Bopening"] = {"B","C"},["Bany"] = {"B","C"},["Banyone"] = {"B","C"},["Banywhere"] = {"B","C"},["Bdiscount"] = {"B","C"},["Beverycorner"] = {"B","C"},["Bfast"] = {"B","C"},["Bfree"] = {"B","C"},["Bgold"] = {"B","C"},["Bhelp"] = {"B","C"},["Bmoney"] = {"B","C"},["Bneed"] = {"B","C"},["Bplease"] = {"B","C"},["Bpst"] = {"B","C"},["Bquick"] = {"B","C"},["Brequest"] = {"B","C"},["Bsale"] = {"B","C"},["Bservice"] = {"B","C"},["Bwelcome"] = {"B","C"},["Bwme"] = {"B","C"},["Bwork"] = {"B","C"},["Bwherever"] = {"B","C"},["Bagility"] = {"B","A"},["Bap"] = {"B","A"},["Bar"] = {"B","A"},["Barcane"] = {"B","A"},["Barmor"] = {"B","A"},["Bblock"] = {"B","A"},["Bdamage"] = {"B","A"},["Bdefense"] = {"B","A"},["Bdodge"] = {"B","A"},["Bfire"] = {"B","A"},["Bfish"] = {"B","A"},["Bfr"] = {"B","A"},["Bfrost"] = {"B","A"},["Bglow"] = {"B","A"},["Bhaste"] = {"B","A"},["Bheal"] = {"B","A"},["Bhealth"] = {"B","A"},["Bherb"] = {"B","A"},["Bhit"] = {"B","A"},["Bhp"] = {"B","A"},["Bimpact"] = {"B","A"},["Bintellect"] = {"B","A"},["Bmana"] = {"B","A"},["Bmine"] = {"B","A"},["Bmount"] = {"B","A"},["Bmp"] = {"B","A"},["Bnature"] = {"B","A"},["Bnr"] = {"B","A"},["Bresist"] = {"B","A"},["Briding"] = {"B","A"},["Bshadow"] = {"B","A"},["Bskin"] = {"B","A"},["Bspeed"] = {"B","A"},["Bspell"] = {"B","A"},["Bspirit"] = {"B","A"},["Bsr"] = {"B","A"},["Bstamina"] = {"B","A"},["Bstats"] = {"B","A"},["Bstealth"] = {"B","A"},["Bstrength"] = {"B","A"},["Bstriking"] = {"B","A"},["Bsubtlety"] = {"B","A"},["Bthreat"] = {"B","A"},["Bweapon"] = {"B","A"},["Ballresist"] = {"B","C"},["Bcrusader"] = {"B","C"},["Bbeastslayer"] = {"B","C"},["Bcounterweight"] = {"B","C"},["Bfiery"] = {"B","C"},["Bicychill"] = {"B","C"},["Bicy"] = {"B","C"},["Bminorspeed"] = {"B","C"},["Bmountspeed"] = {"B","C"},["Bmovespeed"] = {"B","C"},["Bdemonslaying"] = {"B","C"},["Blifesteal"] = {"B","C"},["Bresistall"] = {"B","C"},["Bridingskill"] = {"B","C"},["Bridingspeed"] = {"B","C"},["Brunspeed"] = {"B","C"},["Bshieldspike"] = {"B","C"},["Bspelldamage"] = {"B","C"},["Bspur"] = {"B","C"},["Bvampirism"] = {"B","C"},["Bweaponchain"] = {"B","C"},["Bwintersmight"] = {"B","C"},["Bunholy"] = {"B","C"},["Bhead"] = {"B","A"},["Blegs"] = {"B","A"},["Bneck"] = {"B","A"},["Bring"] = {"B","A"},["Bcloak"] = {"B","A"},["Bback"] = {"B","A"},["Bchest"] = {"B","A"},["Bwrist"] = {"B","A"},["Bgloves"] = {"B","A"},["Bhand"] = {"B","A"},["Bshield"] = {"B","A"},["Bboots"] = {"B","A"},["Bweapon"] = {"B","A"},["Bbelt"] = {"B","A"},["Bbeltbuckle"] = {"B","A"},["Bgem"] = {"B","A"},["Bgemstone"] = {"B","A"},["Bjewel"] = {"B","A"},["Bhandsword"] = {"B","A"},["Bhandaxe"] = {"B","A"},["Bhandmace"] = {"B","A"},["Bhandstaff"] = {"B","A"},["Bhanddagger"] = {"B","A"},["Barcanum"] = {"B","A"},["Blibram"] = {"B","A"},
["alteracA"] = {"B","A"},["aqA"] = {"B","A"},["arathiA"] = {"B","A"},["arathihighlandsA"] = {"B","A"},["ashenvaleA"] = {"B","A"},["azsharaA"] = {"B","A"},["badlandsA"] = {"B","A"},["barrensA"] = {"B","A"},["blackrockA"] = {"B","A"},["blackrockmountainA"] = {"B","A"},["blastedA"] = {"B","A"},["blastedlandsA"] = {"B","A"},["bbA"] = {"B","A"},["bootybayA"] = {"B","A"},["brmA"] = {"B","A"},["cotA"] = {"B","A"},["crossroadsA"] = {"B","A"},["darkmoonA"] = {"B","A"},["darkmoonfaireA"] = {"B","A"},["darnassusA"] = {"B","A"},["desolaceA"] = {"B","A"},["diremaulA"] = {"B","A"},["dmA"] = {"B","A"},["dmeA"] = {"B","A"},["dmwA"] = {"B","A"},["dmnA"] = {"B","A"},["eplA"] = {"B","A"},["everlookA"] = {"B","A"},["feralasA"] = {"B","A"},["gadgetA"] = {"B","A"},["gadgetzanA"] = {"B","A"},["goldshireA"] = {"B","A"},["hydraxianA"] = {"B","A"},["hillsbradA"] = {"B","A"},["hyjalA"] = {"B","A"},["ifA"] = {"B","A"},["ironforgeA"] = {"B","A"},["karazhanA"] = {"B","A"},["moongladeA"] = {"B","A"},["orgrimmarA"] = {"B","A"},["ratchetA"] = {"B","A"},["silithusA"] = {"B","A"},["smA"] = {"B","A"},["stonardA"] = {"B","A"},["stormwindA"] = {"B","A"},["tanarisA"] = {"B","A"},["tarrenmillA"] = {"B","A"},["thunderA"] = {"B","A"},["thunderbluffA"] = {"B","A"},["undercityA"] = {"B","A"},["winterspringA"] = {"B","A"},["wplA"] = {"B","A"},["zoramstrandA"] = {"B","A"},["axeA"] = {"B","A"},["bowA"] = {"B","A"},["daggerA"] = {"B","A"},["greaterA"] = {"B","A"},["gunA"] = {"B","A"},["lesserA"] = {"B","A"},["maceA"] = {"B","A"},["mightyA"] = {"B","A"},["minorA"] = {"B","A"},["polearmA"] = {"B","A"},["staffA"] = {"B","A"},["swordA"] = {"B","A"},["wandA"] = {"B","A"},["ableC"] = {"A","C"},["aboutC"] = {"A","C"},["aboveC"] = {"A","C"},["affordC"] = {"A","C"},["allC"] = {"A","C"},["alleyC"] = {"A","C"},["amountC"] = {"A","C"},["andC"] = {"A","C"},["appreciateC"] = {"A","C"},["aroundC"] = {"A","C"},["askC"] = {"A","C"},["atC"] = {"A","C"},["belowC"] = {"A","C"},["bigC"] = {"A","C"},["bringC"] = {"A","C"},["bunchC"] = {"A","C"},["byC"] = {"A","C"},["callC"] = {"A","C"},["canC"] = {"A","C"},["comeC"] = {"A","C"},["dealC"] = {"A","C"},["decentC"] = {"A","C"},["districtC"] = {"A","C"},["doC"] = {"A","C"},["doingC"] = {"A","C"},["doorC"] = {"A","C"},["evenC"] = {"A","C"},["everyC"] = {"A","C"},["everythingC"] = {"A","C"},["fasterC"] = {"A","C"},["fewC"] = {"A","C"},["forC"] = {"A","C"},["friendC"] = {"A","C"},["fromC"] = {"A","C"},["frontC"] = {"A","C"},["getC"] = {"A","C"},["giveC"] = {"A","C"},["goodC"] = {"A","C"},["guyC"] = {"A","C"},["hardC"] = {"A","C"},["hasC"] = {"A","C"},["haveC"] = {"A","C"},["hereC"] = {"A","C"},["heroC"] = {"A","C"},["highC"] = {"A","C"},["houseC"] = {"A","C"},["iC"] = {"A","C"},["imC"] = {"A","C"},["inC"] = {"A","C"},["itsC"] = {"A","C"},["justC"] = {"A","C"},["kindC"] = {"A","C"},["lastC"] = {"A","C"},["lessC"] = {"A","C"},["lookingC"] = {"A","C"},["lotC"] = {"A","C"},["lowC"] = {"A","C"},["lowerC"] = {"A","C"},["majorC"] = {"A","C"},["manyC"] = {"A","C"},["meC"] = {"A","C"},["midC"] = {"A","C"},["mindC"] = {"A","C"},["moreC"] = {"A","C"},["mostC"] = {"A","C"},["muchC"] = {"A","C"},["mustC"] = {"A","C"},["myC"] = {"A","C"},["noC"] = {"A","C"},["nowC"] = {"A","C"},["ofC"] = {"A","C"},["offC"] = {"A","C"},["onC"] = {"A","C"},["onlyC"] = {"A","C"},["orC"] = {"A","C"},["orderC"] = {"A","C"},["outC"] = {"A","C"},["outsideC"] = {"A","C"},["placeC"] = {"A","C"},["plentyC"] = {"A","C"},["popC"] = {"A","C"},["quickC"] = {"A","C"},["reasonableC"] = {"A","C"},["someC"] = {"A","C"},["stillC"] = {"A","C"},["stopC"] = {"A","C"},["superiorC"] = {"A","C"},["sweetC"] = {"A","C"},["thanC"] = {"A","C"},["thatC"] = {"A","C"},["theirC"] = {"A","C"},["theyC"] = {"A","C"},["thereC"] = {"A","C"},["thisC"] = {"A","C"},["timeC"] = {"A","C"},["toC"] = {"A","C"},["topC"] = {"A","C"},["uC"] = {"A","C"},["upC"] = {"A","C"},["useC"] = {"A","C"},["wayC"] = {"A","C"},["wellC"] = {"A","C"},["whoC"] = {"A","C"},["willC"] = {"A","C"},["willingC"] = {"A","C"},["withC"] = {"A","C"},["youC"] = {"A","C"},["yourC"] = {"A","C"},["allianceC"] = {"B","C"},["bankC"] = {"B","C"},["bestC"] = {"B","C"},["bisC"] = {"B","C"},["bridgeC"] = {"B","C"},["businessC"] = {"B","C"},["commissionC"] = {"B","C"},["coupleC"] = {"B","C"},["deliveredC"] = {"B","C"},["deliveryC"] = {"B","C"},["donationC"] = {"B","C"},["fountainC"] = {"B","C"},["guaranteeC"] = {"B","C"},["hardcoreC"] = {"B","C"},["hcC"] = {"B","C"},["helpC"] = {"B","C"},["hordeC"] = {"B","C"},["interestedC"] = {"B","C"},["jobC"] = {"B","C"},["levelC"] = {"B","C"},["levelingC"] = {"B","C"},["listedC"] = {"B","C"},["minuteC"] = {"B","C"},["nearC"] = {"B","C"},["oneC"] = {"B","C"},["premiumC"] = {"B","C"},["qualityC"] = {"B","C"},["stairC"] = {"B","C"},["stepsC"] = {"B","C"},["threeC"] = {"B","C"},["tipC"] = {"B","C"},["tonC"] = {"B","C"},["townC"] = {"B","C"},["twoC"] = {"B","C"},["alchemistC"] = {"B","C"},["blacksmithC"] = {"B","C"},["engineerC"] = {"B","C"},["leatherworkerC"] = {"B","C"},["tailorC"] = {"B","C"},["specializationC"] = {"B","C"},["barC"] = {"B","C"},["clothC"] = {"B","C"},["copperC"] = {"B","C"},["oreC"] = {"B","C"},["stoneC"] = {"B","C"},["bagC"] = {"B","C"},["cooldownC"] = {"B","C"},["danceC"] = {"B","C"},["elixirC"] = {"B","C"},["flaskC"] = {"B","C"},["formulaC"] = {"B","C"},["hideC"] = {"B","C"},["linenC"] = {"B","C"},["mageweaveC"] = {"B","C"},["orangeC"] = {"B","C"},["patternC"] = {"B","C"},["plansC"] = {"B","C"},["poolC"] = {"B","C"},["prizeC"] = {"B","C"},["potionC"] = {"B","C"},["ruggedC"] = {"B","C"},["setC"] = {"B","C"},["slotC"] = {"B","C"},["storeC"] = {"B","C"},["thoriumC"] = {"B","C"},["tokenC"] = {"B","C"},["winC"] = {"B","C"},["foodC"] = {"B","C"},["mageC"] = {"B","C"},["stackC"] = {"B","C"},["warlockC"] = {"B","C"},["boxC"] = {"B","C"},["crackC"] = {"B","C"},["crackingC"] = {"B","C"},["lockC"] = {"B","C"},["pickC"] = {"B","C"},["rogueC"] = {"B","C"},["unlockC"] = {"B","C"},["addC"] = {"B","C"},["applyC"] = {"B","C"},["blueitemC"] = {"B","C"},["epicitemC"] = {"B","C"},["greenitemC"] = {"B","C"},["makerC"] = {"B","C"},["matC"] = {"B","C"},["materialC"] = {"B","C"},["patternC"] = {"B","C"},["recipeC"] = {"B","C"},["trinketC"] = {"B","C"},["gearC"] = {"B","C"},["inventoryC"] = {"B","C"},["skillC"] = {"B","C"},["auctionA"] = {"C","A"},["neededA"] = {"C","A"},["payA"] = {"C","A"},["priceA"] = {"C","A"},["arcaniteA"] = {"C","A"},["curedruggedhideA"] = {"C","A"},["emporiumA"] = {"C","A"},["middlemanA"] = {"C","A"},["moonclothA"] = {"C","A"},["comingupA"] = {"C","A"},["waterA"] = {"C","A"},["createA"] = {"C","A"},["hitemA"] = {"C","A"},["makeA"] = {"C","A"},["openA"] = {"C","A"},["openedA"] = {"C","A"},["openerA"] = {"C","A"},["openingA"] = {"C","A"},["anyA"] = {"C","A"},["anyoneA"] = {"C","A"},["anywhereA"] = {"C","A"},["discountA"] = {"C","A"},["everycornerA"] = {"C","A"},["fastA"] = {"C","A"},["freeA"] = {"C","A"},["goldA"] = {"C","A"},["helpA"] = {"C","A"},["moneyA"] = {"C","A"},["needA"] = {"C","A"},["pleaseA"] = {"C","A"},["pstA"] = {"C","A"},["quickA"] = {"C","A"},["requestA"] = {"C","A"},["saleA"] = {"C","A"},["serviceA"] = {"C","A"},["welcomeA"] = {"C","A"},["wmeA"] = {"C","A"},["workA"] = {"C","A"},["whereverA"] = {"C","A"},["agilityC"] = {"A","C"},["apC"] = {"A","C"},["arC"] = {"A","C"},["arcaneC"] = {"A","C"},["armorC"] = {"A","C"},["blockC"] = {"A","C"},["damageC"] = {"A","C"},["defenseC"] = {"A","C"},["dodgeC"] = {"A","C"},["fireC"] = {"A","C"},["fishC"] = {"A","C"},["frC"] = {"A","C"},["frostC"] = {"A","C"},["glowC"] = {"A","C"},["hasteC"] = {"A","C"},["healC"] = {"A","C"},["healthC"] = {"A","C"},["herbC"] = {"A","C"},["hitC"] = {"A","C"},["hpC"] = {"A","C"},["impactC"] = {"A","C"},["intellectC"] = {"A","C"},["manaC"] = {"A","C"},["mineC"] = {"A","C"},["mountC"] = {"A","C"},["mpC"] = {"A","C"},["natureC"] = {"A","C"},["nrC"] = {"A","C"},["resistC"] = {"A","C"},["ridingC"] = {"A","C"},["shadowC"] = {"A","C"},["skinC"] = {"A","C"},["speedC"] = {"A","C"},["spellC"] = {"A","C"},["spiritC"] = {"A","C"},["srC"] = {"A","C"},["staminaC"] = {"A","C"},["statsC"] = {"A","C"},["stealthC"] = {"A","C"},["strengthC"] = {"A","C"},["strikingC"] = {"A","C"},["subtletyC"] = {"A","C"},["threatC"] = {"A","C"},["weaponC"] = {"A","C"},["allresistC"] = {"C","C"},["crusaderC"] = {"C","C"},["beastslayerC"] = {"C","C"},["counterweightC"] = {"C","C"},["fieryC"] = {"C","C"},["icychillC"] = {"C","C"},["icyC"] = {"C","C"},["minorspeedC"] = {"C","C"},["mountspeedC"] = {"C","C"},["movespeedC"] = {"C","C"},["demonslayingC"] = {"C","C"},["lifestealC"] = {"C","C"},["resistallC"] = {"C","C"},["ridingskillC"] = {"C","C"},["ridingspeedC"] = {"C","C"},["runspeedC"] = {"C","C"},["shieldspikeC"] = {"C","C"},["spelldamageC"] = {"C","C"},["spurC"] = {"C","C"},["vampirismC"] = {"C","C"},["weaponchainC"] = {"C","C"},["wintersmightC"] = {"C","C"},["unholyC"] = {"C","C"},["headC"] = {"A","C"},["legsC"] = {"A","C"},["neckC"] = {"A","C"},["ringC"] = {"A","C"},["cloakC"] = {"A","C"},["backC"] = {"A","C"},["chestC"] = {"A","C"},["wristC"] = {"A","C"},["glovesC"] = {"A","C"},["handC"] = {"A","C"},["shieldC"] = {"A","C"},["bootsC"] = {"A","C"},["weaponC"] = {"A","C"},["beltC"] = {"A","C"},["beltbuckleC"] = {"A","C"},["gemC"] = {"A","C"},["gemstoneC"] = {"A","C"},["jewelC"] = {"A","C"},["handswordC"] = {"A","C"},["handaxeC"] = {"A","C"},["handmaceC"] = {"A","C"},["handstaffC"] = {"A","C"},["handdaggerC"] = {"A","C"},["arcanumC"] = {"A","C"},["libramC"] = {"A","C"},
["Aalterac"] = {"A","B"},["Aaq"] = {"A","B"},["Aarathi"] = {"A","B"},["Aarathihighlands"] = {"A","B"},["Aashenvale"] = {"A","B"},["Aazshara"] = {"A","B"},["Abadlands"] = {"A","B"},["Abarrens"] = {"A","B"},["Ablackrock"] = {"A","B"},["Ablackrockmountain"] = {"A","B"},["Ablasted"] = {"A","B"},["Ablastedlands"] = {"A","B"},["Abb"] = {"A","B"},["Abootybay"] = {"A","B"},["Abrm"] = {"A","B"},["Acot"] = {"A","B"},["Acrossroads"] = {"A","B"},["Adarkmoon"] = {"A","B"},["Adarkmoonfaire"] = {"A","B"},["Adarnassus"] = {"A","B"},["Adesolace"] = {"A","B"},["Adiremaul"] = {"A","B"},["Adm"] = {"A","B"},["Adme"] = {"A","B"},["Admw"] = {"A","B"},["Admn"] = {"A","B"},["Aepl"] = {"A","B"},["Aeverlook"] = {"A","B"},["Aferalas"] = {"A","B"},["Agadget"] = {"A","B"},["Agadgetzan"] = {"A","B"},["Agoldshire"] = {"A","B"},["Ahydraxian"] = {"A","B"},["Ahillsbrad"] = {"A","B"},["Ahyjal"] = {"A","B"},["Aif"] = {"A","B"},["Aironforge"] = {"A","B"},["Akarazhan"] = {"A","B"},["Amoonglade"] = {"A","B"},["Aorgrimmar"] = {"A","B"},["Aratchet"] = {"A","B"},["Asilithus"] = {"A","B"},["Asm"] = {"A","B"},["Astonard"] = {"A","B"},["Astormwind"] = {"A","B"},["Atanaris"] = {"A","B"},["Atarrenmill"] = {"A","B"},["Athunder"] = {"A","B"},["Athunderbluff"] = {"A","B"},["Aundercity"] = {"A","B"},["Awinterspring"] = {"A","B"},["Awpl"] = {"A","B"},["Azoramstrand"] = {"A","B"},["Aaxe"] = {"A","B"},["Abow"] = {"A","B"},["Adagger"] = {"A","B"},["Agreater"] = {"A","B"},["Agun"] = {"A","B"},["Alesser"] = {"A","B"},["Amace"] = {"A","B"},["Amighty"] = {"A","B"},["Aminor"] = {"A","B"},["Apolearm"] = {"A","B"},["Astaff"] = {"A","B"},["Asword"] = {"A","B"},["Awand"] = {"A","B"},["Cable"] = {"C","A"},["Cabout"] = {"C","A"},["Cabove"] = {"C","A"},["Cafford"] = {"C","A"},["Call"] = {"C","A"},["Calley"] = {"C","A"},["Camount"] = {"C","A"},["Cand"] = {"C","A"},["Cappreciate"] = {"C","A"},["Caround"] = {"C","A"},["Cask"] = {"C","A"},["Cat"] = {"C","A"},["Cbelow"] = {"C","A"},["Cbig"] = {"C","A"},["Cbring"] = {"C","A"},["Cbunch"] = {"C","A"},["Cby"] = {"C","A"},["Ccall"] = {"C","A"},["Ccan"] = {"C","A"},["Ccome"] = {"C","A"},["Cdeal"] = {"C","A"},["Cdecent"] = {"C","A"},["Cdistrict"] = {"C","A"},["Cdo"] = {"C","A"},["Cdoing"] = {"C","A"},["Cdoor"] = {"C","A"},["Ceven"] = {"C","A"},["Cevery"] = {"C","A"},["Ceverything"] = {"C","A"},["Cfaster"] = {"C","A"},["Cfew"] = {"C","A"},["Cfor"] = {"C","A"},["Cfriend"] = {"C","A"},["Cfrom"] = {"C","A"},["Cfront"] = {"C","A"},["Cget"] = {"C","A"},["Cgive"] = {"C","A"},["Cgood"] = {"C","A"},["Cguy"] = {"C","A"},["Chard"] = {"C","A"},["Chas"] = {"C","A"},["Chave"] = {"C","A"},["Chere"] = {"C","A"},["Chero"] = {"C","A"},["Chigh"] = {"C","A"},["Chouse"] = {"C","A"},["Ci"] = {"C","A"},["Cim"] = {"C","A"},["Cin"] = {"C","A"},["Cits"] = {"C","A"},["Cjust"] = {"C","A"},["Ckind"] = {"C","A"},["Clast"] = {"C","A"},["Cless"] = {"C","A"},["Clooking"] = {"C","A"},["Clot"] = {"C","A"},["Clow"] = {"C","A"},["Clower"] = {"C","A"},["Cmajor"] = {"C","A"},["Cmany"] = {"C","A"},["Cme"] = {"C","A"},["Cmid"] = {"C","A"},["Cmind"] = {"C","A"},["Cmore"] = {"C","A"},["Cmost"] = {"C","A"},["Cmuch"] = {"C","A"},["Cmust"] = {"C","A"},["Cmy"] = {"C","A"},["Cno"] = {"C","A"},["Cnow"] = {"C","A"},["Cof"] = {"C","A"},["Coff"] = {"C","A"},["Con"] = {"C","A"},["Conly"] = {"C","A"},["Cor"] = {"C","A"},["Corder"] = {"C","A"},["Cout"] = {"C","A"},["Coutside"] = {"C","A"},["Cplace"] = {"C","A"},["Cplenty"] = {"C","A"},["Cpop"] = {"C","A"},["Cquick"] = {"C","A"},["Creasonable"] = {"C","A"},["Csome"] = {"C","A"},["Cstill"] = {"C","A"},["Cstop"] = {"C","A"},["Csuperior"] = {"C","A"},["Csweet"] = {"C","A"},["Cthan"] = {"C","A"},["Cthat"] = {"C","A"},["Ctheir"] = {"C","A"},["Cthey"] = {"C","A"},["Cthere"] = {"C","A"},["Cthis"] = {"C","A"},["Ctime"] = {"C","A"},["Cto"] = {"C","A"},["Ctop"] = {"C","A"},["Cu"] = {"C","A"},["Cup"] = {"C","A"},["Cuse"] = {"C","A"},["Cway"] = {"C","A"},["Cwell"] = {"C","A"},["Cwho"] = {"C","A"},["Cwill"] = {"C","A"},["Cwilling"] = {"C","A"},["Cwith"] = {"C","A"},["Cyou"] = {"C","A"},["Cyour"] = {"C","A"},["Calliance"] = {"C","B"},["Cbank"] = {"C","B"},["Cbest"] = {"C","B"},["Cbis"] = {"C","B"},["Cbridge"] = {"C","B"},["Cbusiness"] = {"C","B"},["Ccommission"] = {"C","B"},["Ccouple"] = {"C","B"},["Cdelivered"] = {"C","B"},["Cdelivery"] = {"C","B"},["Cdonation"] = {"C","B"},["Cfountain"] = {"C","B"},["Cguarantee"] = {"C","B"},["Chardcore"] = {"C","B"},["Chc"] = {"C","B"},["Chelp"] = {"C","B"},["Chorde"] = {"C","B"},["Cinterested"] = {"C","B"},["Cjob"] = {"C","B"},["Clevel"] = {"C","B"},["Cleveling"] = {"C","B"},["Clisted"] = {"C","B"},["Cminute"] = {"C","B"},["Cnear"] = {"C","B"},["Cone"] = {"C","B"},["Cpremium"] = {"C","B"},["Cquality"] = {"C","B"},["Cstair"] = {"C","B"},["Csteps"] = {"C","B"},["Cthree"] = {"C","B"},["Ctip"] = {"C","B"},["Cton"] = {"C","B"},["Ctown"] = {"C","B"},["Ctwo"] = {"C","B"},["Calchemist"] = {"C","B"},["Cblacksmith"] = {"C","B"},["Cengineer"] = {"C","B"},["Cleatherworker"] = {"C","B"},["Ctailor"] = {"C","B"},["Cspecialization"] = {"C","B"},["Cbar"] = {"C","B"},["Ccloth"] = {"C","B"},["Ccopper"] = {"C","B"},["Core"] = {"C","B"},["Cstone"] = {"C","B"},["Cbag"] = {"C","B"},["Ccooldown"] = {"C","B"},["Cdance"] = {"C","B"},["Celixir"] = {"C","B"},["Cflask"] = {"C","B"},["Cformula"] = {"C","B"},["Chide"] = {"C","B"},["Clinen"] = {"C","B"},["Cmageweave"] = {"C","B"},["Corange"] = {"C","B"},["Cpattern"] = {"C","B"},["Cplans"] = {"C","B"},["Cpool"] = {"C","B"},["Cprize"] = {"C","B"},["Cpotion"] = {"C","B"},["Crugged"] = {"C","B"},["Cset"] = {"C","B"},["Cslot"] = {"C","B"},["Cstore"] = {"C","B"},["Cthorium"] = {"C","B"},["Ctoken"] = {"C","B"},["Cwin"] = {"C","B"},["Cfood"] = {"C","B"},["Cmage"] = {"C","B"},["Cstack"] = {"C","B"},["Cwarlock"] = {"C","B"},["Cbox"] = {"C","B"},["Ccrack"] = {"C","B"},["Ccracking"] = {"C","B"},["Clock"] = {"C","B"},["Cpick"] = {"C","B"},["Crogue"] = {"C","B"},["Cunlock"] = {"C","B"},["Cadd"] = {"C","B"},["Capply"] = {"C","B"},["Cblueitem"] = {"C","B"},["Cepicitem"] = {"C","B"},["Cgreenitem"] = {"C","B"},["Cmaker"] = {"C","B"},["Cmat"] = {"C","B"},["Cmaterial"] = {"C","B"},["Cpattern"] = {"C","B"},["Crecipe"] = {"C","B"},["Ctrinket"] = {"C","B"},["Cgear"] = {"C","B"},["Cinventory"] = {"C","B"},["Cskill"] = {"C","B"},["Aauction"] = {"A","C"},["Aneeded"] = {"A","C"},["Apay"] = {"A","C"},["Aprice"] = {"A","C"},["Aarcanite"] = {"A","C"},["Acuredruggedhide"] = {"A","C"},["Aemporium"] = {"A","C"},["Amiddleman"] = {"A","C"},["Amooncloth"] = {"A","C"},["Acomingup"] = {"A","C"},["Awater"] = {"A","C"},["Acreate"] = {"A","C"},["Ahitem"] = {"A","C"},["Amake"] = {"A","C"},["Aopen"] = {"A","C"},["Aopened"] = {"A","C"},["Aopener"] = {"A","C"},["Aopening"] = {"A","C"},["Aany"] = {"A","C"},["Aanyone"] = {"A","C"},["Aanywhere"] = {"A","C"},["Adiscount"] = {"A","C"},["Aeverycorner"] = {"A","C"},["Afast"] = {"A","C"},["Afree"] = {"A","C"},["Agold"] = {"A","C"},["Ahelp"] = {"A","C"},["Amoney"] = {"A","C"},["Aneed"] = {"A","C"},["Aplease"] = {"A","C"},["Apst"] = {"A","C"},["Aquick"] = {"A","C"},["Arequest"] = {"A","C"},["Asale"] = {"A","C"},["Aservice"] = {"A","C"},["Awelcome"] = {"A","C"},["Awme"] = {"A","C"},["Awork"] = {"A","C"},["Awherever"] = {"A","C"},["Cagility"] = {"C","A"},["Cap"] = {"C","A"},["Car"] = {"C","A"},["Carcane"] = {"C","A"},["Carmor"] = {"C","A"},["Cblock"] = {"C","A"},["Cdamage"] = {"C","A"},["Cdefense"] = {"C","A"},["Cdodge"] = {"C","A"},["Cfire"] = {"C","A"},["Cfish"] = {"C","A"},["Cfr"] = {"C","A"},["Cfrost"] = {"C","A"},["Cglow"] = {"C","A"},["Chaste"] = {"C","A"},["Cheal"] = {"C","A"},["Chealth"] = {"C","A"},["Cherb"] = {"C","A"},["Chit"] = {"C","A"},["Chp"] = {"C","A"},["Cimpact"] = {"C","A"},["Cintellect"] = {"C","A"},["Cmana"] = {"C","A"},["Cmine"] = {"C","A"},["Cmount"] = {"C","A"},["Cmp"] = {"C","A"},["Cnature"] = {"C","A"},["Cnr"] = {"C","A"},["Cresist"] = {"C","A"},["Criding"] = {"C","A"},["Cshadow"] = {"C","A"},["Cskin"] = {"C","A"},["Cspeed"] = {"C","A"},["Cspell"] = {"C","A"},["Cspirit"] = {"C","A"},["Csr"] = {"C","A"},["Cstamina"] = {"C","A"},["Cstats"] = {"C","A"},["Cstealth"] = {"C","A"},["Cstrength"] = {"C","A"},["Cstriking"] = {"C","A"},["Csubtlety"] = {"C","A"},["Cthreat"] = {"C","A"},["Cweapon"] = {"C","A"},["Callresist"] = {"C","C"},["Ccrusader"] = {"C","C"},["Cbeastslayer"] = {"C","C"},["Ccounterweight"] = {"C","C"},["Cfiery"] = {"C","C"},["Cicychill"] = {"C","C"},["Cicy"] = {"C","C"},["Cminorspeed"] = {"C","C"},["Cmountspeed"] = {"C","C"},["Cmovespeed"] = {"C","C"},["Cdemonslaying"] = {"C","C"},["Clifesteal"] = {"C","C"},["Cresistall"] = {"C","C"},["Cridingskill"] = {"C","C"},["Cridingspeed"] = {"C","C"},["Crunspeed"] = {"C","C"},["Cshieldspike"] = {"C","C"},["Cspelldamage"] = {"C","C"},["Cspur"] = {"C","C"},["Cvampirism"] = {"C","C"},["Cweaponchain"] = {"C","C"},["Cwintersmight"] = {"C","C"},["Cunholy"] = {"C","C"},["Chead"] = {"C","A"},["Clegs"] = {"C","A"},["Cneck"] = {"C","A"},["Cring"] = {"C","A"},["Ccloak"] = {"C","A"},["Cback"] = {"C","A"},["Cchest"] = {"C","A"},["Cwrist"] = {"C","A"},["Cgloves"] = {"C","A"},["Chand"] = {"C","A"},["Cshield"] = {"C","A"},["Cboots"] = {"C","A"},["Cweapon"] = {"C","A"},["Cbelt"] = {"C","A"},["Cbeltbuckle"] = {"C","A"},["Cgem"] = {"C","A"},["Cgemstone"] = {"C","A"},["Cjewel"] = {"C","A"},["Chandsword"] = {"C","A"},["Chandaxe"] = {"C","A"},["Chandmace"] = {"C","A"},["Chandstaff"] = {"C","A"},["Chanddagger"] = {"C","A"},["Carcanum"] = {"C","A"},["Clibram"] = {"C","A"},
["alteracC"] = {"B","C"},["aqC"] = {"B","C"},["arathiC"] = {"B","C"},["arathihighlandsC"] = {"B","C"},["ashenvaleC"] = {"B","C"},["azsharaC"] = {"B","C"},["badlandsC"] = {"B","C"},["barrensC"] = {"B","C"},["blackrockC"] = {"B","C"},["blackrockmountainC"] = {"B","C"},["blastedC"] = {"B","C"},["blastedlandsC"] = {"B","C"},["bbC"] = {"B","C"},["bootybayC"] = {"B","C"},["brmC"] = {"B","C"},["cotC"] = {"B","C"},["crossroadsC"] = {"B","C"},["darkmoonC"] = {"B","C"},["darkmoonfaireC"] = {"B","C"},["darnassusC"] = {"B","C"},["desolaceC"] = {"B","C"},["diremaulC"] = {"B","C"},["dmC"] = {"B","C"},["dmeC"] = {"B","C"},["dmwC"] = {"B","C"},["dmnC"] = {"B","C"},["eplC"] = {"B","C"},["everlookC"] = {"B","C"},["feralasC"] = {"B","C"},["gadgetC"] = {"B","C"},["gadgetzanC"] = {"B","C"},["goldshireC"] = {"B","C"},["hydraxianC"] = {"B","C"},["hillsbradC"] = {"B","C"},["hyjalC"] = {"B","C"},["ifC"] = {"B","C"},["ironforgeC"] = {"B","C"},["karazhanC"] = {"B","C"},["moongladeC"] = {"B","C"},["orgrimmarC"] = {"B","C"},["ratchetC"] = {"B","C"},["silithusC"] = {"B","C"},["smC"] = {"B","C"},["stonardC"] = {"B","C"},["stormwindC"] = {"B","C"},["tanarisC"] = {"B","C"},["tarrenmillC"] = {"B","C"},["thunderC"] = {"B","C"},["thunderbluffC"] = {"B","C"},["undercityC"] = {"B","C"},["winterspringC"] = {"B","C"},["wplC"] = {"B","C"},["zoramstrandC"] = {"B","C"},["axeC"] = {"B","C"},["bowC"] = {"B","C"},["daggerC"] = {"B","C"},["greaterC"] = {"B","C"},["gunC"] = {"B","C"},["lesserC"] = {"B","C"},["maceC"] = {"B","C"},["mightyC"] = {"B","C"},["minorC"] = {"B","C"},["polearmC"] = {"B","C"},["staffC"] = {"B","C"},["swordC"] = {"B","C"},["wandC"] = {"B","C"},["ableA"] = {"A","A"},["aboutA"] = {"A","A"},["aboveA"] = {"A","A"},["affordA"] = {"A","A"},["allA"] = {"A","A"},["alleyA"] = {"A","A"},["amountA"] = {"A","A"},["andA"] = {"A","A"},["appreciateA"] = {"A","A"},["aroundA"] = {"A","A"},["askA"] = {"A","A"},["atA"] = {"A","A"},["belowA"] = {"A","A"},["bigA"] = {"A","A"},["bringA"] = {"A","A"},["bunchA"] = {"A","A"},["byA"] = {"A","A"},["callA"] = {"A","A"},["canA"] = {"A","A"},["comeA"] = {"A","A"},["dealA"] = {"A","A"},["decentA"] = {"A","A"},["districtA"] = {"A","A"},["doA"] = {"A","A"},["doingA"] = {"A","A"},["doorA"] = {"A","A"},["evenA"] = {"A","A"},["everyA"] = {"A","A"},["everythingA"] = {"A","A"},["fasterA"] = {"A","A"},["fewA"] = {"A","A"},["forA"] = {"A","A"},["friendA"] = {"A","A"},["fromA"] = {"A","A"},["frontA"] = {"A","A"},["getA"] = {"A","A"},["giveA"] = {"A","A"},["goodA"] = {"A","A"},["guyA"] = {"A","A"},["hardA"] = {"A","A"},["hasA"] = {"A","A"},["haveA"] = {"A","A"},["hereA"] = {"A","A"},["heroA"] = {"A","A"},["highA"] = {"A","A"},["houseA"] = {"A","A"},["iA"] = {"A","A"},["imA"] = {"A","A"},["inA"] = {"A","A"},["itsA"] = {"A","A"},["justA"] = {"A","A"},["kindA"] = {"A","A"},["lastA"] = {"A","A"},["lessA"] = {"A","A"},["lookingA"] = {"A","A"},["lotA"] = {"A","A"},["lowA"] = {"A","A"},["lowerA"] = {"A","A"},["majorA"] = {"A","A"},["manyA"] = {"A","A"},["meA"] = {"A","A"},["midA"] = {"A","A"},["mindA"] = {"A","A"},["moreA"] = {"A","A"},["mostA"] = {"A","A"},["muchA"] = {"A","A"},["mustA"] = {"A","A"},["myA"] = {"A","A"},["noA"] = {"A","A"},["nowA"] = {"A","A"},["ofA"] = {"A","A"},["offA"] = {"A","A"},["onA"] = {"A","A"},["onlyA"] = {"A","A"},["orA"] = {"A","A"},["orderA"] = {"A","A"},["outA"] = {"A","A"},["outsideA"] = {"A","A"},["placeA"] = {"A","A"},["plentyA"] = {"A","A"},["popA"] = {"A","A"},["quickA"] = {"A","A"},["reasonableA"] = {"A","A"},["someA"] = {"A","A"},["stillA"] = {"A","A"},["stopA"] = {"A","A"},["superiorA"] = {"A","A"},["sweetA"] = {"A","A"},["thanA"] = {"A","A"},["thatA"] = {"A","A"},["theirA"] = {"A","A"},["theyA"] = {"A","A"},["thereA"] = {"A","A"},["thisA"] = {"A","A"},["timeA"] = {"A","A"},["toA"] = {"A","A"},["topA"] = {"A","A"},["uA"] = {"A","A"},["upA"] = {"A","A"},["useA"] = {"A","A"},["wayA"] = {"A","A"},["wellA"] = {"A","A"},["whoA"] = {"A","A"},["willA"] = {"A","A"},["willingA"] = {"A","A"},["withA"] = {"A","A"},["youA"] = {"A","A"},["yourA"] = {"A","A"},["allianceA"] = {"B","A"},["bankA"] = {"B","A"},["bestA"] = {"B","A"},["bisA"] = {"B","A"},["bridgeA"] = {"B","A"},["businessA"] = {"B","A"},["commissionA"] = {"B","A"},["coupleA"] = {"B","A"},["deliveredA"] = {"B","A"},["deliveryA"] = {"B","A"},["donationA"] = {"B","A"},["fountainA"] = {"B","A"},["guaranteeA"] = {"B","A"},["hardcoreA"] = {"B","A"},["hcA"] = {"B","A"},["helpA"] = {"B","A"},["hordeA"] = {"B","A"},["interestedA"] = {"B","A"},["jobA"] = {"B","A"},["levelA"] = {"B","A"},["levelingA"] = {"B","A"},["listedA"] = {"B","A"},["minuteA"] = {"B","A"},["nearA"] = {"B","A"},["oneA"] = {"B","A"},["premiumA"] = {"B","A"},["qualityA"] = {"B","A"},["stairA"] = {"B","A"},["stepsA"] = {"B","A"},["threeA"] = {"B","A"},["tipA"] = {"B","A"},["tonA"] = {"B","A"},["townA"] = {"B","A"},["twoA"] = {"B","A"},["alchemistA"] = {"B","A"},["blacksmithA"] = {"B","A"},["engineerA"] = {"B","A"},["leatherworkerA"] = {"B","A"},["tailorA"] = {"B","A"},["specializationA"] = {"B","A"},["barA"] = {"B","A"},["clothA"] = {"B","A"},["copperA"] = {"B","A"},["oreA"] = {"B","A"},["stoneA"] = {"B","A"},["bagA"] = {"B","A"},["cooldownA"] = {"B","A"},["danceA"] = {"B","A"},["elixirA"] = {"B","A"},["flaskA"] = {"B","A"},["formulaA"] = {"B","A"},["hideA"] = {"B","A"},["linenA"] = {"B","A"},["mageweaveA"] = {"B","A"},["orangeA"] = {"B","A"},["patternA"] = {"B","A"},["plansA"] = {"B","A"},["poolA"] = {"B","A"},["prizeA"] = {"B","A"},["potionA"] = {"B","A"},["ruggedA"] = {"B","A"},["setA"] = {"B","A"},["slotA"] = {"B","A"},["storeA"] = {"B","A"},["thoriumA"] = {"B","A"},["tokenA"] = {"B","A"},["winA"] = {"B","A"},["foodA"] = {"B","A"},["mageA"] = {"B","A"},["stackA"] = {"B","A"},["warlockA"] = {"B","A"},["boxA"] = {"B","A"},["crackA"] = {"B","A"},["crackingA"] = {"B","A"},["lockA"] = {"B","A"},["pickA"] = {"B","A"},["rogueA"] = {"B","A"},["unlockA"] = {"B","A"},["addA"] = {"B","A"},["applyA"] = {"B","A"},["blueitemA"] = {"B","A"},["epicitemA"] = {"B","A"},["greenitemA"] = {"B","A"},["makerA"] = {"B","A"},["matA"] = {"B","A"},["materialA"] = {"B","A"},["patternA"] = {"B","A"},["recipeA"] = {"B","A"},["trinketA"] = {"B","A"},["gearA"] = {"B","A"},["inventoryA"] = {"B","A"},["skillA"] = {"B","A"},["auctionC"] = {"C","C"},["neededC"] = {"C","C"},["payC"] = {"C","C"},["priceC"] = {"C","C"},["arcaniteC"] = {"C","C"},["curedruggedhideC"] = {"C","C"},["emporiumC"] = {"C","C"},["middlemanC"] = {"C","C"},["moonclothC"] = {"C","C"},["comingupC"] = {"C","C"},["waterC"] = {"C","C"},["createC"] = {"C","C"},["hitemC"] = {"C","C"},["makeC"] = {"C","C"},["openC"] = {"C","C"},["openedC"] = {"C","C"},["openerC"] = {"C","C"},["openingC"] = {"C","C"},["anyC"] = {"C","C"},["anyoneC"] = {"C","C"},["anywhereC"] = {"C","C"},["discountC"] = {"C","C"},["everycornerC"] = {"C","C"},["fastC"] = {"C","C"},["freeC"] = {"C","C"},["goldC"] = {"C","C"},["helpC"] = {"C","C"},["moneyC"] = {"C","C"},["needC"] = {"C","C"},["pleaseC"] = {"C","C"},["pstC"] = {"C","C"},["quickC"] = {"C","C"},["requestC"] = {"C","C"},["saleC"] = {"C","C"},["serviceC"] = {"C","C"},["welcomeC"] = {"C","C"},["wmeC"] = {"C","C"},["workC"] = {"C","C"},["whereverC"] = {"C","C"},["agilityA"] = {"A","A"},["apA"] = {"A","A"},["arA"] = {"A","A"},["arcaneA"] = {"A","A"},["armorA"] = {"A","A"},["blockA"] = {"A","A"},["damageA"] = {"A","A"},["defenseA"] = {"A","A"},["dodgeA"] = {"A","A"},["fireA"] = {"A","A"},["fishA"] = {"A","A"},["frA"] = {"A","A"},["frostA"] = {"A","A"},["glowA"] = {"A","A"},["hasteA"] = {"A","A"},["healA"] = {"A","A"},["healthA"] = {"A","A"},["herbA"] = {"A","A"},["hitA"] = {"A","A"},["hpA"] = {"A","A"},["impactA"] = {"A","A"},["intellectA"] = {"A","A"},["manaA"] = {"A","A"},["mineA"] = {"A","A"},["mountA"] = {"A","A"},["mpA"] = {"A","A"},["natureA"] = {"A","A"},["nrA"] = {"A","A"},["resistA"] = {"A","A"},["ridingA"] = {"A","A"},["shadowA"] = {"A","A"},["skinA"] = {"A","A"},["speedA"] = {"A","A"},["spellA"] = {"A","A"},["spiritA"] = {"A","A"},["srA"] = {"A","A"},["staminaA"] = {"A","A"},["statsA"] = {"A","A"},["stealthA"] = {"A","A"},["strengthA"] = {"A","A"},["strikingA"] = {"A","A"},["subtletyA"] = {"A","A"},["threatA"] = {"A","A"},["weaponA"] = {"A","A"},["allresistA"] = {"C","A"},["crusaderA"] = {"C","A"},["beastslayerA"] = {"C","A"},["counterweightA"] = {"C","A"},["fieryA"] = {"C","A"},["icychillA"] = {"C","A"},["icyA"] = {"C","A"},["minorspeedA"] = {"C","A"},["mountspeedA"] = {"C","A"},["movespeedA"] = {"C","A"},["demonslayingA"] = {"C","A"},["lifestealA"] = {"C","A"},["resistallA"] = {"C","A"},["ridingskillA"] = {"C","A"},["ridingspeedA"] = {"C","A"},["runspeedA"] = {"C","A"},["shieldspikeA"] = {"C","A"},["spelldamageA"] = {"C","A"},["spurA"] = {"C","A"},["vampirismA"] = {"C","A"},["weaponchainA"] = {"C","A"},["wintersmightA"] = {"C","A"},["unholyA"] = {"C","A"},["headA"] = {"A","A"},["legsA"] = {"A","A"},["neckA"] = {"A","A"},["ringA"] = {"A","A"},["cloakA"] = {"A","A"},["backA"] = {"A","A"},["chestA"] = {"A","A"},["wristA"] = {"A","A"},["glovesA"] = {"A","A"},["handA"] = {"A","A"},["shieldA"] = {"A","A"},["bootsA"] = {"A","A"},["weaponA"] = {"A","A"},["beltA"] = {"A","A"},["beltbuckleA"] = {"A","A"},["gemA"] = {"A","A"},["gemstoneA"] = {"A","A"},["jewelA"] = {"A","A"},["handswordA"] = {"A","A"},["handaxeA"] = {"A","A"},["handmaceA"] = {"A","A"},["handstaffA"] = {"A","A"},["handdaggerA"] = {"A","A"},["arcanumA"] = {"A","A"},["libramA"] = {"A","A"},
["Calterac"] = {"C","B"},["Caq"] = {"C","B"},["Carathi"] = {"C","B"},["Carathihighlands"] = {"C","B"},["Cashenvale"] = {"C","B"},["Cazshara"] = {"C","B"},["Cbadlands"] = {"C","B"},["Cbarrens"] = {"C","B"},["Cblackrock"] = {"C","B"},["Cblackrockmountain"] = {"C","B"},["Cblasted"] = {"C","B"},["Cblastedlands"] = {"C","B"},["Cbb"] = {"C","B"},["Cbootybay"] = {"C","B"},["Cbrm"] = {"C","B"},["Ccot"] = {"C","B"},["Ccrossroads"] = {"C","B"},["Cdarkmoon"] = {"C","B"},["Cdarkmoonfaire"] = {"C","B"},["Cdarnassus"] = {"C","B"},["Cdesolace"] = {"C","B"},["Cdiremaul"] = {"C","B"},["Cdm"] = {"C","B"},["Cdme"] = {"C","B"},["Cdmw"] = {"C","B"},["Cdmn"] = {"C","B"},["Cepl"] = {"C","B"},["Ceverlook"] = {"C","B"},["Cferalas"] = {"C","B"},["Cgadget"] = {"C","B"},["Cgadgetzan"] = {"C","B"},["Cgoldshire"] = {"C","B"},["Chydraxian"] = {"C","B"},["Chillsbrad"] = {"C","B"},["Chyjal"] = {"C","B"},["Cif"] = {"C","B"},["Cironforge"] = {"C","B"},["Ckarazhan"] = {"C","B"},["Cmoonglade"] = {"C","B"},["Corgrimmar"] = {"C","B"},["Cratchet"] = {"C","B"},["Csilithus"] = {"C","B"},["Csm"] = {"C","B"},["Cstonard"] = {"C","B"},["Cstormwind"] = {"C","B"},["Ctanaris"] = {"C","B"},["Ctarrenmill"] = {"C","B"},["Cthunder"] = {"C","B"},["Cthunderbluff"] = {"C","B"},["Cundercity"] = {"C","B"},["Cwinterspring"] = {"C","B"},["Cwpl"] = {"C","B"},["Czoramstrand"] = {"C","B"},["Caxe"] = {"C","B"},["Cbow"] = {"C","B"},["Cdagger"] = {"C","B"},["Cgreater"] = {"C","B"},["Cgun"] = {"C","B"},["Clesser"] = {"C","B"},["Cmace"] = {"C","B"},["Cmighty"] = {"C","B"},["Cminor"] = {"C","B"},["Cpolearm"] = {"C","B"},["Cstaff"] = {"C","B"},["Csword"] = {"C","B"},["Cwand"] = {"C","B"},["Aable"] = {"A","A"},["Aabout"] = {"A","A"},["Aabove"] = {"A","A"},["Aafford"] = {"A","A"},["Aall"] = {"A","A"},["Aalley"] = {"A","A"},["Aamount"] = {"A","A"},["Aand"] = {"A","A"},["Aappreciate"] = {"A","A"},["Aaround"] = {"A","A"},["Aask"] = {"A","A"},["Aat"] = {"A","A"},["Abelow"] = {"A","A"},["Abig"] = {"A","A"},["Abring"] = {"A","A"},["Abunch"] = {"A","A"},["Aby"] = {"A","A"},["Acall"] = {"A","A"},["Acan"] = {"A","A"},["Acome"] = {"A","A"},["Adeal"] = {"A","A"},["Adecent"] = {"A","A"},["Adistrict"] = {"A","A"},["Ado"] = {"A","A"},["Adoing"] = {"A","A"},["Adoor"] = {"A","A"},["Aeven"] = {"A","A"},["Aevery"] = {"A","A"},["Aeverything"] = {"A","A"},["Afaster"] = {"A","A"},["Afew"] = {"A","A"},["Afor"] = {"A","A"},["Afriend"] = {"A","A"},["Afrom"] = {"A","A"},["Afront"] = {"A","A"},["Aget"] = {"A","A"},["Agive"] = {"A","A"},["Agood"] = {"A","A"},["Aguy"] = {"A","A"},["Ahard"] = {"A","A"},["Ahas"] = {"A","A"},["Ahave"] = {"A","A"},["Ahere"] = {"A","A"},["Ahero"] = {"A","A"},["Ahigh"] = {"A","A"},["Ahouse"] = {"A","A"},["Ai"] = {"A","A"},["Aim"] = {"A","A"},["Ain"] = {"A","A"},["Aits"] = {"A","A"},["Ajust"] = {"A","A"},["Akind"] = {"A","A"},["Alast"] = {"A","A"},["Aless"] = {"A","A"},["Alooking"] = {"A","A"},["Alot"] = {"A","A"},["Alow"] = {"A","A"},["Alower"] = {"A","A"},["Amajor"] = {"A","A"},["Amany"] = {"A","A"},["Ame"] = {"A","A"},["Amid"] = {"A","A"},["Amind"] = {"A","A"},["Amore"] = {"A","A"},["Amost"] = {"A","A"},["Amuch"] = {"A","A"},["Amust"] = {"A","A"},["Amy"] = {"A","A"},["Ano"] = {"A","A"},["Anow"] = {"A","A"},["Aof"] = {"A","A"},["Aoff"] = {"A","A"},["Aon"] = {"A","A"},["Aonly"] = {"A","A"},["Aor"] = {"A","A"},["Aorder"] = {"A","A"},["Aout"] = {"A","A"},["Aoutside"] = {"A","A"},["Aplace"] = {"A","A"},["Aplenty"] = {"A","A"},["Apop"] = {"A","A"},["Aquick"] = {"A","A"},["Areasonable"] = {"A","A"},["Asome"] = {"A","A"},["Astill"] = {"A","A"},["Astop"] = {"A","A"},["Asuperior"] = {"A","A"},["Asweet"] = {"A","A"},["Athan"] = {"A","A"},["Athat"] = {"A","A"},["Atheir"] = {"A","A"},["Athey"] = {"A","A"},["Athere"] = {"A","A"},["Athis"] = {"A","A"},["Atime"] = {"A","A"},["Ato"] = {"A","A"},["Atop"] = {"A","A"},["Au"] = {"A","A"},["Aup"] = {"A","A"},["Ause"] = {"A","A"},["Away"] = {"A","A"},["Awell"] = {"A","A"},["Awho"] = {"A","A"},["Awill"] = {"A","A"},["Awilling"] = {"A","A"},["Awith"] = {"A","A"},["Ayou"] = {"A","A"},["Ayour"] = {"A","A"},["Aalliance"] = {"A","B"},["Abank"] = {"A","B"},["Abest"] = {"A","B"},["Abis"] = {"A","B"},["Abridge"] = {"A","B"},["Abusiness"] = {"A","B"},["Acommission"] = {"A","B"},["Acouple"] = {"A","B"},["Adelivered"] = {"A","B"},["Adelivery"] = {"A","B"},["Adonation"] = {"A","B"},["Afountain"] = {"A","B"},["Aguarantee"] = {"A","B"},["Ahardcore"] = {"A","B"},["Ahc"] = {"A","B"},["Ahelp"] = {"A","B"},["Ahorde"] = {"A","B"},["Ainterested"] = {"A","B"},["Ajob"] = {"A","B"},["Alevel"] = {"A","B"},["Aleveling"] = {"A","B"},["Alisted"] = {"A","B"},["Aminute"] = {"A","B"},["Anear"] = {"A","B"},["Aone"] = {"A","B"},["Apremium"] = {"A","B"},["Aquality"] = {"A","B"},["Astair"] = {"A","B"},["Asteps"] = {"A","B"},["Athree"] = {"A","B"},["Atip"] = {"A","B"},["Aton"] = {"A","B"},["Atown"] = {"A","B"},["Atwo"] = {"A","B"},["Aalchemist"] = {"A","B"},["Ablacksmith"] = {"A","B"},["Aengineer"] = {"A","B"},["Aleatherworker"] = {"A","B"},["Atailor"] = {"A","B"},["Aspecialization"] = {"A","B"},["Abar"] = {"A","B"},["Acloth"] = {"A","B"},["Acopper"] = {"A","B"},["Aore"] = {"A","B"},["Astone"] = {"A","B"},["Abag"] = {"A","B"},["Acooldown"] = {"A","B"},["Adance"] = {"A","B"},["Aelixir"] = {"A","B"},["Aflask"] = {"A","B"},["Aformula"] = {"A","B"},["Ahide"] = {"A","B"},["Alinen"] = {"A","B"},["Amageweave"] = {"A","B"},["Aorange"] = {"A","B"},["Apattern"] = {"A","B"},["Aplans"] = {"A","B"},["Apool"] = {"A","B"},["Aprize"] = {"A","B"},["Apotion"] = {"A","B"},["Arugged"] = {"A","B"},["Aset"] = {"A","B"},["Aslot"] = {"A","B"},["Astore"] = {"A","B"},["Athorium"] = {"A","B"},["Atoken"] = {"A","B"},["Awin"] = {"A","B"},["Afood"] = {"A","B"},["Amage"] = {"A","B"},["Astack"] = {"A","B"},["Awarlock"] = {"A","B"},["Abox"] = {"A","B"},["Acrack"] = {"A","B"},["Acracking"] = {"A","B"},["Alock"] = {"A","B"},["Apick"] = {"A","B"},["Arogue"] = {"A","B"},["Aunlock"] = {"A","B"},["Aadd"] = {"A","B"},["Aapply"] = {"A","B"},["Ablueitem"] = {"A","B"},["Aepicitem"] = {"A","B"},["Agreenitem"] = {"A","B"},["Amaker"] = {"A","B"},["Amat"] = {"A","B"},["Amaterial"] = {"A","B"},["Apattern"] = {"A","B"},["Arecipe"] = {"A","B"},["Atrinket"] = {"A","B"},["Agear"] = {"A","B"},["Ainventory"] = {"A","B"},["Askill"] = {"A","B"},["Cauction"] = {"C","C"},["Cneeded"] = {"C","C"},["Cpay"] = {"C","C"},["Cprice"] = {"C","C"},["Carcanite"] = {"C","C"},["Ccuredruggedhide"] = {"C","C"},["Cemporium"] = {"C","C"},["Cmiddleman"] = {"C","C"},["Cmooncloth"] = {"C","C"},["Ccomingup"] = {"C","C"},["Cwater"] = {"C","C"},["Ccreate"] = {"C","C"},["Chitem"] = {"C","C"},["Cmake"] = {"C","C"},["Copen"] = {"C","C"},["Copened"] = {"C","C"},["Copener"] = {"C","C"},["Copening"] = {"C","C"},["Cany"] = {"C","C"},["Canyone"] = {"C","C"},["Canywhere"] = {"C","C"},["Cdiscount"] = {"C","C"},["Ceverycorner"] = {"C","C"},["Cfast"] = {"C","C"},["Cfree"] = {"C","C"},["Cgold"] = {"C","C"},["Chelp"] = {"C","C"},["Cmoney"] = {"C","C"},["Cneed"] = {"C","C"},["Cplease"] = {"C","C"},["Cpst"] = {"C","C"},["Cquick"] = {"C","C"},["Crequest"] = {"C","C"},["Csale"] = {"C","C"},["Cservice"] = {"C","C"},["Cwelcome"] = {"C","C"},["Cwme"] = {"C","C"},["Cwork"] = {"C","C"},["Cwherever"] = {"C","C"},["Aagility"] = {"A","A"},["Aap"] = {"A","A"},["Aar"] = {"A","A"},["Aarcane"] = {"A","A"},["Aarmor"] = {"A","A"},["Ablock"] = {"A","A"},["Adamage"] = {"A","A"},["Adefense"] = {"A","A"},["Adodge"] = {"A","A"},["Afire"] = {"A","A"},["Afish"] = {"A","A"},["Afr"] = {"A","A"},["Afrost"] = {"A","A"},["Aglow"] = {"A","A"},["Ahaste"] = {"A","A"},["Aheal"] = {"A","A"},["Ahealth"] = {"A","A"},["Aherb"] = {"A","A"},["Ahit"] = {"A","A"},["Ahp"] = {"A","A"},["Aimpact"] = {"A","A"},["Aintellect"] = {"A","A"},["Amana"] = {"A","A"},["Amine"] = {"A","A"},["Amount"] = {"A","A"},["Amp"] = {"A","A"},["Anature"] = {"A","A"},["Anr"] = {"A","A"},["Aresist"] = {"A","A"},["Ariding"] = {"A","A"},["Ashadow"] = {"A","A"},["Askin"] = {"A","A"},["Aspeed"] = {"A","A"},["Aspell"] = {"A","A"},["Aspirit"] = {"A","A"},["Asr"] = {"A","A"},["Astamina"] = {"A","A"},["Astats"] = {"A","A"},["Astealth"] = {"A","A"},["Astrength"] = {"A","A"},["Astriking"] = {"A","A"},["Asubtlety"] = {"A","A"},["Athreat"] = {"A","A"},["Aweapon"] = {"A","A"},["Aallresist"] = {"A","C"},["Acrusader"] = {"A","C"},["Abeastslayer"] = {"A","C"},["Acounterweight"] = {"A","C"},["Afiery"] = {"A","C"},["Aicychill"] = {"A","C"},["Aicy"] = {"A","C"},["Aminorspeed"] = {"A","C"},["Amountspeed"] = {"A","C"},["Amovespeed"] = {"A","C"},["Ademonslaying"] = {"A","C"},["Alifesteal"] = {"A","C"},["Aresistall"] = {"A","C"},["Aridingskill"] = {"A","C"},["Aridingspeed"] = {"A","C"},["Arunspeed"] = {"A","C"},["Ashieldspike"] = {"A","C"},["Aspelldamage"] = {"A","C"},["Aspur"] = {"A","C"},["Avampirism"] = {"A","C"},["Aweaponchain"] = {"A","C"},["Awintersmight"] = {"A","C"},["Aunholy"] = {"A","C"},["Ahead"] = {"A","A"},["Alegs"] = {"A","A"},["Aneck"] = {"A","A"},["Aring"] = {"A","A"},["Acloak"] = {"A","A"},["Aback"] = {"A","A"},["Achest"] = {"A","A"},["Awrist"] = {"A","A"},["Agloves"] = {"A","A"},["Ahand"] = {"A","A"},["Ashield"] = {"A","A"},["Aboots"] = {"A","A"},["Aweapon"] = {"A","A"},["Abelt"] = {"A","A"},["Abeltbuckle"] = {"A","A"},["Agem"] = {"A","A"},["Agemstone"] = {"A","A"},["Ajewel"] = {"A","A"},["Ahandsword"] = {"A","A"},["Ahandaxe"] = {"A","A"},["Ahandmace"] = {"A","A"},["Ahandstaff"] = {"A","A"},["Ahanddagger"] = {"A","A"},["Aarcanum"] = {"A","A"},["Alibram"] = {"A","A"},
["bluffenchant"] = {"B","enchant"},["darnassusenchant"] = {"B","enchant"},["ifenchant"] = {"B","enchant"},["ironforgeenchant"] = {"B","enchant"},["orgrimmarenchant"] = {"B","enchant"},["stormwindenchant"] = {"B","enchant"},["thunderenchant"] = {"B","enchant"},["thunderbluffenchant"] = {"B","enchant"},["undercityenchant"] = {"B","enchant"},["enchantaxe"] = {"enchant","A"},["enchantbow"] = {"enchant","A"},["enchantdagger"] = {"enchant","A"},["enchantgreater"] = {"enchant","A"},["enchantgun"] = {"enchant","A"},["enchantlesser"] = {"enchant","A"},["enchantmace"] = {"enchant","A"},["enchantmighty"] = {"enchant","A"},["enchantminor"] = {"enchant","A"},["enchantpolearm"] = {"enchant","A"},["enchantstaff"] = {"enchant","A"},["enchantsword"] = {"enchant","A"},["enchantwand"] = {"enchant","A"},["enchantable"] = {"enchant","A"},["enchantabout"] = {"enchant","A"},["enchantabove"] = {"enchant","A"},["enchantafford"] = {"enchant","A"},["enchantall"] = {"enchant","A"},["enchantalley"] = {"enchant","A"},["enchantamount"] = {"enchant","A"},["enchantand"] = {"enchant","A"},["enchantappreciate"] = {"enchant","A"},["enchantaround"] = {"enchant","A"},["enchantask"] = {"enchant","A"},["enchantat"] = {"enchant","A"},["enchantbelow"] = {"enchant","A"},["enchantbig"] = {"enchant","A"},["enchantbring"] = {"enchant","A"},["enchantbunch"] = {"enchant","A"},["enchantby"] = {"enchant","A"},["enchantcall"] = {"enchant","A"},["enchantcan"] = {"enchant","A"},["enchantcome"] = {"enchant","A"},["enchantdeal"] = {"enchant","A"},["enchantdecent"] = {"enchant","A"},["enchantdistrict"] = {"enchant","A"},["enchantdo"] = {"enchant","A"},["enchantdoing"] = {"enchant","A"},["enchantdoor"] = {"enchant","A"},["enchanteven"] = {"enchant","A"},["enchantevery"] = {"enchant","A"},["enchanteverything"] = {"enchant","A"},["enchantfaster"] = {"enchant","A"},["enchantfew"] = {"enchant","A"},["enchantfor"] = {"enchant","A"},["enchantfriend"] = {"enchant","A"},["enchantfrom"] = {"enchant","A"},["enchantfront"] = {"enchant","A"},["enchantget"] = {"enchant","A"},["enchantgive"] = {"enchant","A"},["enchantgood"] = {"enchant","A"},["enchantguy"] = {"enchant","A"},["enchanthard"] = {"enchant","A"},["enchanthas"] = {"enchant","A"},["enchanthave"] = {"enchant","A"},["enchanthere"] = {"enchant","A"},["enchanthero"] = {"enchant","A"},["enchanthigh"] = {"enchant","A"},["enchanthouse"] = {"enchant","A"},["enchanti"] = {"enchant","A"},["enchantim"] = {"enchant","A"},["enchantin"] = {"enchant","A"},["enchantits"] = {"enchant","A"},["enchantjust"] = {"enchant","A"},["enchantkind"] = {"enchant","A"},["enchantlast"] = {"enchant","A"},["enchantless"] = {"enchant","A"},["enchantlooking"] = {"enchant","A"},["enchantlot"] = {"enchant","A"},["enchantlow"] = {"enchant","A"},["enchantlower"] = {"enchant","A"},["enchantmajor"] = {"enchant","A"},["enchantmany"] = {"enchant","A"},["enchantme"] = {"enchant","A"},["enchantmid"] = {"enchant","A"},["enchantmind"] = {"enchant","A"},["enchantmore"] = {"enchant","A"},["enchantmost"] = {"enchant","A"},["enchantmuch"] = {"enchant","A"},["enchantmust"] = {"enchant","A"},["enchantmy"] = {"enchant","A"},["enchantno"] = {"enchant","A"},["enchantnow"] = {"enchant","A"},["enchantof"] = {"enchant","A"},["enchantoff"] = {"enchant","A"},["enchanton"] = {"enchant","A"},["enchantonly"] = {"enchant","A"},["enchantor"] = {"enchant","A"},["enchantorder"] = {"enchant","A"},["enchantout"] = {"enchant","A"},["enchantoutside"] = {"enchant","A"},["enchantplace"] = {"enchant","A"},["enchantplenty"] = {"enchant","A"},["enchantpop"] = {"enchant","A"},["enchantquick"] = {"enchant","A"},["enchantreasonable"] = {"enchant","A"},["enchantsome"] = {"enchant","A"},["enchantstill"] = {"enchant","A"},["enchantstop"] = {"enchant","A"},["enchantsuperior"] = {"enchant","A"},["enchantsweet"] = {"enchant","A"},["enchantthan"] = {"enchant","A"},["enchantthat"] = {"enchant","A"},["enchanttheir"] = {"enchant","A"},["enchantthey"] = {"enchant","A"},["enchantthere"] = {"enchant","A"},["enchantthis"] = {"enchant","A"},["enchanttime"] = {"enchant","A"},["enchantto"] = {"enchant","A"},["enchanttop"] = {"enchant","A"},["enchantu"] = {"enchant","A"},["enchantup"] = {"enchant","A"},["enchantuse"] = {"enchant","A"},["enchantway"] = {"enchant","A"},["enchantwell"] = {"enchant","A"},["enchantwho"] = {"enchant","A"},["enchantwill"] = {"enchant","A"},["enchantwilling"] = {"enchant","A"},["enchantwith"] = {"enchant","A"},["enchantyou"] = {"enchant","A"},["enchantyour"] = {"enchant","A"},["enchantalliance"] = {"enchant","B"},["enchantbank"] = {"enchant","B"},["enchantbest"] = {"enchant","B"},["enchantbis"] = {"enchant","B"},["enchantbridge"] = {"enchant","B"},["enchantbusiness"] = {"enchant","B"},["enchantcommission"] = {"enchant","B"},["enchantcouple"] = {"enchant","B"},["enchantdelivered"] = {"enchant","B"},["enchantdelivery"] = {"enchant","B"},["enchantdonation"] = {"enchant","B"},["enchantfountain"] = {"enchant","B"},["enchantguarantee"] = {"enchant","B"},["enchanthardcore"] = {"enchant","B"},["enchanthc"] = {"enchant","B"},["enchanthelp"] = {"enchant","B"},["enchanthorde"] = {"enchant","B"},["enchantinterested"] = {"enchant","B"},["enchantjob"] = {"enchant","B"},["enchantlevel"] = {"enchant","B"},["enchantleveling"] = {"enchant","B"},["enchantlisted"] = {"enchant","B"},["enchantminute"] = {"enchant","B"},["enchantnear"] = {"enchant","B"},["enchantone"] = {"enchant","B"},["enchantpremium"] = {"enchant","B"},["enchantquality"] = {"enchant","B"},["enchantstair"] = {"enchant","B"},["enchantsteps"] = {"enchant","B"},["enchantthree"] = {"enchant","B"},["enchanttip"] = {"enchant","B"},["enchantton"] = {"enchant","B"},["enchanttown"] = {"enchant","B"},["enchanttwo"] = {"enchant","B"},["enchantalchemist"] = {"enchant","B"},["enchantblacksmith"] = {"enchant","B"},["enchantengineer"] = {"enchant","B"},["enchantleatherworker"] = {"enchant","B"},["enchanttailor"] = {"enchant","B"},["enchantspecialization"] = {"enchant","B"},["enchantadd"] = {"enchant","B"},["enchantapply"] = {"enchant","B"},["enchantblueitem"] = {"enchant","B"},["enchantepicitem"] = {"enchant","B"},["enchantgreenitem"] = {"enchant","B"},["enchantmaker"] = {"enchant","B"},["enchantmat"] = {"enchant","B"},["enchantmaterial"] = {"enchant","B"},["enchantpattern"] = {"enchant","B"},["enchantrecipe"] = {"enchant","B"},["enchanttrinket"] = {"enchant","B"},["enchantgear"] = {"enchant","B"},["enchantinventory"] = {"enchant","B"},["enchantskill"] = {"enchant","B"},["enchantauction"] = {"enchant","B"},["enchantneeded"] = {"enchant","B"},["enchantpay"] = {"enchant","B"},["enchantprice"] = {"enchant","B"},["enchantcreate"] = {"enchant","C"},["enchanthitem"] = {"enchant","C"},["enchantmake"] = {"enchant","C"},["enchantany"] = {"enchant","C"},["enchantanyone"] = {"enchant","C"},["enchantanywhere"] = {"enchant","C"},["enchantdiscount"] = {"enchant","C"},["enchanteverycorner"] = {"enchant","C"},["enchantfast"] = {"enchant","C"},["enchantfree"] = {"enchant","C"},["enchantgold"] = {"enchant","C"},["enchanthelp"] = {"enchant","C"},["enchantmoney"] = {"enchant","C"},["enchantneed"] = {"enchant","C"},["enchantplease"] = {"enchant","C"},["enchantpst"] = {"enchant","C"},["enchantquick"] = {"enchant","C"},["enchantrequest"] = {"enchant","C"},["enchantsale"] = {"enchant","C"},["enchantservice"] = {"enchant","C"},["enchantwelcome"] = {"enchant","C"},["enchantwme"] = {"enchant","C"},["enchantwork"] = {"enchant","C"},["enchantwherever"] = {"enchant","C"},["enchantagility"] = {"enchant","A"},["enchantap"] = {"enchant","A"},["enchantar"] = {"enchant","A"},["enchantarcane"] = {"enchant","A"},["enchantarmor"] = {"enchant","A"},["enchantblock"] = {"enchant","A"},["enchantdamage"] = {"enchant","A"},["enchantdefense"] = {"enchant","A"},["enchantdodge"] = {"enchant","A"},["enchantfire"] = {"enchant","A"},["enchantfish"] = {"enchant","A"},["enchantfr"] = {"enchant","A"},["enchantfrost"] = {"enchant","A"},["enchantglow"] = {"enchant","A"},["enchanthaste"] = {"enchant","A"},["enchantheal"] = {"enchant","A"},["enchanthealth"] = {"enchant","A"},["enchantherb"] = {"enchant","A"},["enchanthit"] = {"enchant","A"},["enchanthp"] = {"enchant","A"},["enchantimpact"] = {"enchant","A"},["enchantintellect"] = {"enchant","A"},["enchantmana"] = {"enchant","A"},["enchantmine"] = {"enchant","A"},["enchantmount"] = {"enchant","A"},["enchantmp"] = {"enchant","A"},["enchantnature"] = {"enchant","A"},["enchantnr"] = {"enchant","A"},["enchantresist"] = {"enchant","A"},["enchantriding"] = {"enchant","A"},["enchantshadow"] = {"enchant","A"},["enchantskin"] = {"enchant","A"},["enchantspeed"] = {"enchant","A"},["enchantspell"] = {"enchant","A"},["enchantspirit"] = {"enchant","A"},["enchantsr"] = {"enchant","A"},["enchantstamina"] = {"enchant","A"},["enchantstats"] = {"enchant","A"},["enchantstealth"] = {"enchant","A"},["enchantstrength"] = {"enchant","A"},["enchantstriking"] = {"enchant","A"},["enchantsubtlety"] = {"enchant","A"},["enchantthreat"] = {"enchant","A"},["enchantweapon"] = {"enchant","A"},["enchantallresist"] = {"enchant","C"},["enchantcrusader"] = {"enchant","C"},["enchantbeastslayer"] = {"enchant","C"},["enchantcounterweight"] = {"enchant","C"},["enchantfiery"] = {"enchant","C"},["enchanticychill"] = {"enchant","C"},["enchanticy"] = {"enchant","C"},["enchantminorspeed"] = {"enchant","C"},["enchantmountspeed"] = {"enchant","C"},["enchantmovespeed"] = {"enchant","C"},["enchantdemonslaying"] = {"enchant","C"},["enchantlifesteal"] = {"enchant","C"},["enchantresistall"] = {"enchant","C"},["enchantridingskill"] = {"enchant","C"},["enchantridingspeed"] = {"enchant","C"},["enchantrunspeed"] = {"enchant","C"},["enchantshieldspike"] = {"enchant","C"},["enchantspelldamage"] = {"enchant","C"},["enchantspur"] = {"enchant","C"},["enchantvampirism"] = {"enchant","C"},["enchantweaponchain"] = {"enchant","C"},["enchantwintersmight"] = {"enchant","C"},["enchantunholy"] = {"enchant","C"},["enchanthead"] = {"enchant","A"},["enchantlegs"] = {"enchant","A"},["enchantneck"] = {"enchant","A"},["enchantring"] = {"enchant","A"},["enchantcloak"] = {"enchant","A"},["enchantback"] = {"enchant","A"},["enchantchest"] = {"enchant","A"},["enchantwrist"] = {"enchant","A"},["enchantgloves"] = {"enchant","A"},["enchanthand"] = {"enchant","A"},["enchantshield"] = {"enchant","A"},["enchantboots"] = {"enchant","A"},["enchantweapon"] = {"enchant","A"},["enchantbelt"] = {"enchant","A"},["enchantbeltbuckle"] = {"enchant","A"},["enchantgem"] = {"enchant","A"},["enchantgemstone"] = {"enchant","A"},["enchantjewel"] = {"enchant","A"},["enchanthandsword"] = {"enchant","A"},["enchanthandaxe"] = {"enchant","A"},["enchanthandmace"] = {"enchant","A"},["enchanthandstaff"] = {"enchant","A"},["enchanthanddagger"] = {"enchant","A"},["enchantarcanum"] = {"enchant","A"},["enchantlibram"] = {"enchant","A"},
["enchantbluff"] = {"enchant","B"},["enchantdarnassus"] = {"enchant","B"},["enchantif"] = {"enchant","B"},["enchantironforge"] = {"enchant","B"},["enchantorgrimmar"] = {"enchant","B"},["enchantstormwind"] = {"enchant","B"},["enchantthunder"] = {"enchant","B"},["enchantthunderbluff"] = {"enchant","B"},["enchantundercity"] = {"enchant","B"},["axeenchant"] = {"A","enchant"},["bowenchant"] = {"A","enchant"},["daggerenchant"] = {"A","enchant"},["greaterenchant"] = {"A","enchant"},["gunenchant"] = {"A","enchant"},["lesserenchant"] = {"A","enchant"},["maceenchant"] = {"A","enchant"},["mightyenchant"] = {"A","enchant"},["minorenchant"] = {"A","enchant"},["polearmenchant"] = {"A","enchant"},["staffenchant"] = {"A","enchant"},["swordenchant"] = {"A","enchant"},["wandenchant"] = {"A","enchant"},["ableenchant"] = {"A","enchant"},["aboutenchant"] = {"A","enchant"},["aboveenchant"] = {"A","enchant"},["affordenchant"] = {"A","enchant"},["allenchant"] = {"A","enchant"},["alleyenchant"] = {"A","enchant"},["amountenchant"] = {"A","enchant"},["andenchant"] = {"A","enchant"},["appreciateenchant"] = {"A","enchant"},["aroundenchant"] = {"A","enchant"},["askenchant"] = {"A","enchant"},["atenchant"] = {"A","enchant"},["belowenchant"] = {"A","enchant"},["bigenchant"] = {"A","enchant"},["bringenchant"] = {"A","enchant"},["bunchenchant"] = {"A","enchant"},["byenchant"] = {"A","enchant"},["callenchant"] = {"A","enchant"},["canenchant"] = {"A","enchant"},["comeenchant"] = {"A","enchant"},["dealenchant"] = {"A","enchant"},["decentenchant"] = {"A","enchant"},["districtenchant"] = {"A","enchant"},["doenchant"] = {"A","enchant"},["doingenchant"] = {"A","enchant"},["doorenchant"] = {"A","enchant"},["evenenchant"] = {"A","enchant"},["everyenchant"] = {"A","enchant"},["everythingenchant"] = {"A","enchant"},["fasterenchant"] = {"A","enchant"},["fewenchant"] = {"A","enchant"},["forenchant"] = {"A","enchant"},["friendenchant"] = {"A","enchant"},["fromenchant"] = {"A","enchant"},["frontenchant"] = {"A","enchant"},["getenchant"] = {"A","enchant"},["giveenchant"] = {"A","enchant"},["goodenchant"] = {"A","enchant"},["guyenchant"] = {"A","enchant"},["hardenchant"] = {"A","enchant"},["hasenchant"] = {"A","enchant"},["haveenchant"] = {"A","enchant"},["hereenchant"] = {"A","enchant"},["heroenchant"] = {"A","enchant"},["highenchant"] = {"A","enchant"},["houseenchant"] = {"A","enchant"},["ienchant"] = {"A","enchant"},["imenchant"] = {"A","enchant"},["inenchant"] = {"A","enchant"},["itsenchant"] = {"A","enchant"},["justenchant"] = {"A","enchant"},["kindenchant"] = {"A","enchant"},["lastenchant"] = {"A","enchant"},["lessenchant"] = {"A","enchant"},["lookingenchant"] = {"A","enchant"},["lotenchant"] = {"A","enchant"},["lowenchant"] = {"A","enchant"},["lowerenchant"] = {"A","enchant"},["majorenchant"] = {"A","enchant"},["manyenchant"] = {"A","enchant"},["meenchant"] = {"A","enchant"},["midenchant"] = {"A","enchant"},["mindenchant"] = {"A","enchant"},["moreenchant"] = {"A","enchant"},["mostenchant"] = {"A","enchant"},["muchenchant"] = {"A","enchant"},["mustenchant"] = {"A","enchant"},["myenchant"] = {"A","enchant"},["noenchant"] = {"A","enchant"},["nowenchant"] = {"A","enchant"},["ofenchant"] = {"A","enchant"},["offenchant"] = {"A","enchant"},["onenchant"] = {"A","enchant"},["onlyenchant"] = {"A","enchant"},["orenchant"] = {"A","enchant"},["orderenchant"] = {"A","enchant"},["outenchant"] = {"A","enchant"},["outsideenchant"] = {"A","enchant"},["placeenchant"] = {"A","enchant"},["plentyenchant"] = {"A","enchant"},["popenchant"] = {"A","enchant"},["quickenchant"] = {"A","enchant"},["reasonableenchant"] = {"A","enchant"},["someenchant"] = {"A","enchant"},["stillenchant"] = {"A","enchant"},["stopenchant"] = {"A","enchant"},["superiorenchant"] = {"A","enchant"},["sweetenchant"] = {"A","enchant"},["thanenchant"] = {"A","enchant"},["thatenchant"] = {"A","enchant"},["theirenchant"] = {"A","enchant"},["theyenchant"] = {"A","enchant"},["thereenchant"] = {"A","enchant"},["thisenchant"] = {"A","enchant"},["timeenchant"] = {"A","enchant"},["toenchant"] = {"A","enchant"},["topenchant"] = {"A","enchant"},["uenchant"] = {"A","enchant"},["upenchant"] = {"A","enchant"},["useenchant"] = {"A","enchant"},["wayenchant"] = {"A","enchant"},["wellenchant"] = {"A","enchant"},["whoenchant"] = {"A","enchant"},["willenchant"] = {"A","enchant"},["willingenchant"] = {"A","enchant"},["withenchant"] = {"A","enchant"},["youenchant"] = {"A","enchant"},["yourenchant"] = {"A","enchant"},["allianceenchant"] = {"B","enchant"},["bankenchant"] = {"B","enchant"},["bestenchant"] = {"B","enchant"},["bisenchant"] = {"B","enchant"},["bridgeenchant"] = {"B","enchant"},["businessenchant"] = {"B","enchant"},["commissionenchant"] = {"B","enchant"},["coupleenchant"] = {"B","enchant"},["deliveredenchant"] = {"B","enchant"},["deliveryenchant"] = {"B","enchant"},["donationenchant"] = {"B","enchant"},["fountainenchant"] = {"B","enchant"},["guaranteeenchant"] = {"B","enchant"},["hardcoreenchant"] = {"B","enchant"},["hcenchant"] = {"B","enchant"},["helpenchant"] = {"B","enchant"},["hordeenchant"] = {"B","enchant"},["interestedenchant"] = {"B","enchant"},["jobenchant"] = {"B","enchant"},["levelenchant"] = {"B","enchant"},["levelingenchant"] = {"B","enchant"},["listedenchant"] = {"B","enchant"},["minuteenchant"] = {"B","enchant"},["nearenchant"] = {"B","enchant"},["oneenchant"] = {"B","enchant"},["premiumenchant"] = {"B","enchant"},["qualityenchant"] = {"B","enchant"},["stairenchant"] = {"B","enchant"},["stepsenchant"] = {"B","enchant"},["threeenchant"] = {"B","enchant"},["tipenchant"] = {"B","enchant"},["tonenchant"] = {"B","enchant"},["townenchant"] = {"B","enchant"},["twoenchant"] = {"B","enchant"},["alchemistenchant"] = {"B","enchant"},["blacksmithenchant"] = {"B","enchant"},["engineerenchant"] = {"B","enchant"},["leatherworkerenchant"] = {"B","enchant"},["tailorenchant"] = {"B","enchant"},["specializationenchant"] = {"B","enchant"},["addenchant"] = {"B","enchant"},["applyenchant"] = {"B","enchant"},["blueitemenchant"] = {"B","enchant"},["epicitemenchant"] = {"B","enchant"},["greenitemenchant"] = {"B","enchant"},["makerenchant"] = {"B","enchant"},["matenchant"] = {"B","enchant"},["materialenchant"] = {"B","enchant"},["patternenchant"] = {"B","enchant"},["recipeenchant"] = {"B","enchant"},["trinketenchant"] = {"B","enchant"},["gearenchant"] = {"B","enchant"},["inventoryenchant"] = {"B","enchant"},["skillenchant"] = {"B","enchant"},["auctionenchant"] = {"B","enchant"},["neededenchant"] = {"B","enchant"},["payenchant"] = {"B","enchant"},["priceenchant"] = {"B","enchant"},["createenchant"] = {"C","enchant"},["hitemenchant"] = {"C","enchant"},["makeenchant"] = {"C","enchant"},["anyenchant"] = {"C","enchant"},["anyoneenchant"] = {"C","enchant"},["anywhereenchant"] = {"C","enchant"},["discountenchant"] = {"C","enchant"},["everycornerenchant"] = {"C","enchant"},["fastenchant"] = {"C","enchant"},["freeenchant"] = {"C","enchant"},["goldenchant"] = {"C","enchant"},["helpenchant"] = {"C","enchant"},["moneyenchant"] = {"C","enchant"},["needenchant"] = {"C","enchant"},["pleaseenchant"] = {"C","enchant"},["pstenchant"] = {"C","enchant"},["quickenchant"] = {"C","enchant"},["requestenchant"] = {"C","enchant"},["saleenchant"] = {"C","enchant"},["serviceenchant"] = {"C","enchant"},["welcomeenchant"] = {"C","enchant"},["wmeenchant"] = {"C","enchant"},["workenchant"] = {"C","enchant"},["whereverenchant"] = {"C","enchant"},["agilityenchant"] = {"A","enchant"},["apenchant"] = {"A","enchant"},["arenchant"] = {"A","enchant"},["arcaneenchant"] = {"A","enchant"},["armorenchant"] = {"A","enchant"},["blockenchant"] = {"A","enchant"},["damageenchant"] = {"A","enchant"},["defenseenchant"] = {"A","enchant"},["dodgeenchant"] = {"A","enchant"},["fireenchant"] = {"A","enchant"},["fishenchant"] = {"A","enchant"},["frenchant"] = {"A","enchant"},["frostenchant"] = {"A","enchant"},["glowenchant"] = {"A","enchant"},["hasteenchant"] = {"A","enchant"},["healenchant"] = {"A","enchant"},["healthenchant"] = {"A","enchant"},["herbenchant"] = {"A","enchant"},["hitenchant"] = {"A","enchant"},["hpenchant"] = {"A","enchant"},["impactenchant"] = {"A","enchant"},["intellectenchant"] = {"A","enchant"},["manaenchant"] = {"A","enchant"},["mineenchant"] = {"A","enchant"},["mountenchant"] = {"A","enchant"},["mpenchant"] = {"A","enchant"},["natureenchant"] = {"A","enchant"},["nrenchant"] = {"A","enchant"},["resistenchant"] = {"A","enchant"},["ridingenchant"] = {"A","enchant"},["shadowenchant"] = {"A","enchant"},["skinenchant"] = {"A","enchant"},["speedenchant"] = {"A","enchant"},["spellenchant"] = {"A","enchant"},["spiritenchant"] = {"A","enchant"},["srenchant"] = {"A","enchant"},["staminaenchant"] = {"A","enchant"},["statsenchant"] = {"A","enchant"},["stealthenchant"] = {"A","enchant"},["strengthenchant"] = {"A","enchant"},["strikingenchant"] = {"A","enchant"},["subtletyenchant"] = {"A","enchant"},["threatenchant"] = {"A","enchant"},["weaponenchant"] = {"A","enchant"},["allresistenchant"] = {"C","enchant"},["crusaderenchant"] = {"C","enchant"},["beastslayerenchant"] = {"C","enchant"},["counterweightenchant"] = {"C","enchant"},["fieryenchant"] = {"C","enchant"},["icychillenchant"] = {"C","enchant"},["icyenchant"] = {"C","enchant"},["minorspeedenchant"] = {"C","enchant"},["mountspeedenchant"] = {"C","enchant"},["movespeedenchant"] = {"C","enchant"},["demonslayingenchant"] = {"C","enchant"},["lifestealenchant"] = {"C","enchant"},["resistallenchant"] = {"C","enchant"},["ridingskillenchant"] = {"C","enchant"},["ridingspeedenchant"] = {"C","enchant"},["runspeedenchant"] = {"C","enchant"},["shieldspikeenchant"] = {"C","enchant"},["spelldamageenchant"] = {"C","enchant"},["spurenchant"] = {"C","enchant"},["vampirismenchant"] = {"C","enchant"},["weaponchainenchant"] = {"C","enchant"},["wintersmightenchant"] = {"C","enchant"},["unholyenchant"] = {"C","enchant"},["headenchant"] = {"A","enchant"},["legsenchant"] = {"A","enchant"},["neckenchant"] = {"A","enchant"},["ringenchant"] = {"A","enchant"},["cloakenchant"] = {"A","enchant"},["backenchant"] = {"A","enchant"},["chestenchant"] = {"A","enchant"},["wristenchant"] = {"A","enchant"},["glovesenchant"] = {"A","enchant"},["handenchant"] = {"A","enchant"},["shieldenchant"] = {"A","enchant"},["bootsenchant"] = {"A","enchant"},["weaponenchant"] = {"A","enchant"},["beltenchant"] = {"A","enchant"},["beltbuckleenchant"] = {"A","enchant"},["gemenchant"] = {"A","enchant"},["gemstoneenchant"] = {"A","enchant"},["jewelenchant"] = {"A","enchant"},["handswordenchant"] = {"A","enchant"},["handaxeenchant"] = {"A","enchant"},["handmaceenchant"] = {"A","enchant"},["handstaffenchant"] = {"A","enchant"},["handdaggerenchant"] = {"A","enchant"},["arcanumenchant"] = {"A","enchant"},["libramenchant"] = {"A","enchant"},
["alteracportal"] = {"B","portal"},["aqportal"] = {"B","portal"},["arathiportal"] = {"B","portal"},["arathihighlandsportal"] = {"B","portal"},["ashenvaleportal"] = {"B","portal"},["azsharaportal"] = {"B","portal"},["badlandsportal"] = {"B","portal"},["barrensportal"] = {"B","portal"},["blackrockportal"] = {"B","portal"},["blackrockmountainportal"] = {"B","portal"},["blastedportal"] = {"B","portal"},["blastedlandsportal"] = {"B","portal"},["bbportal"] = {"B","portal"},["bootybayportal"] = {"B","portal"},["brmportal"] = {"B","portal"},["cotportal"] = {"B","portal"},["crossroadsportal"] = {"B","portal"},["darkmoonportal"] = {"B","portal"},["darkmoonfaireportal"] = {"B","portal"},["darnassusportal"] = {"B","portal"},["desolaceportal"] = {"B","portal"},["diremaulportal"] = {"B","portal"},["dmportal"] = {"B","portal"},["dmeportal"] = {"B","portal"},["dmwportal"] = {"B","portal"},["dmnportal"] = {"B","portal"},["eplportal"] = {"B","portal"},["everlookportal"] = {"B","portal"},["feralasportal"] = {"B","portal"},["gadgetportal"] = {"B","portal"},["gadgetzanportal"] = {"B","portal"},["goldshireportal"] = {"B","portal"},["hydraxianportal"] = {"B","portal"},["hillsbradportal"] = {"B","portal"},["hyjalportal"] = {"B","portal"},["ifportal"] = {"B","portal"},["ironforgeportal"] = {"B","portal"},["karazhanportal"] = {"B","portal"},["moongladeportal"] = {"B","portal"},["orgrimmarportal"] = {"B","portal"},["ratchetportal"] = {"B","portal"},["silithusportal"] = {"B","portal"},["smportal"] = {"B","portal"},["stonardportal"] = {"B","portal"},["stormwindportal"] = {"B","portal"},["tanarisportal"] = {"B","portal"},["tarrenmillportal"] = {"B","portal"},["thunderportal"] = {"B","portal"},["thunderbluffportal"] = {"B","portal"},["undercityportal"] = {"B","portal"},["winterspringportal"] = {"B","portal"},["wplportal"] = {"B","portal"},["zoramstrandportal"] = {"B","portal"},["portalable"] = {"portal","A"},["portalabout"] = {"portal","A"},["portalabove"] = {"portal","A"},["portalafford"] = {"portal","A"},["portalall"] = {"portal","A"},["portalalley"] = {"portal","A"},["portalamount"] = {"portal","A"},["portaland"] = {"portal","A"},["portalappreciate"] = {"portal","A"},["portalaround"] = {"portal","A"},["portalask"] = {"portal","A"},["portalat"] = {"portal","A"},["portalbelow"] = {"portal","A"},["portalbig"] = {"portal","A"},["portalbring"] = {"portal","A"},["portalbunch"] = {"portal","A"},["portalby"] = {"portal","A"},["portalcall"] = {"portal","A"},["portalcan"] = {"portal","A"},["portalcome"] = {"portal","A"},["portaldeal"] = {"portal","A"},["portaldecent"] = {"portal","A"},["portaldistrict"] = {"portal","A"},["portaldo"] = {"portal","A"},["portaldoing"] = {"portal","A"},["portaldoor"] = {"portal","A"},["portaleven"] = {"portal","A"},["portalevery"] = {"portal","A"},["portaleverything"] = {"portal","A"},["portalfaster"] = {"portal","A"},["portalfew"] = {"portal","A"},["portalfor"] = {"portal","A"},["portalfriend"] = {"portal","A"},["portalfrom"] = {"portal","A"},["portalfront"] = {"portal","A"},["portalget"] = {"portal","A"},["portalgive"] = {"portal","A"},["portalgood"] = {"portal","A"},["portalguy"] = {"portal","A"},["portalhard"] = {"portal","A"},["portalhas"] = {"portal","A"},["portalhave"] = {"portal","A"},["portalhere"] = {"portal","A"},["portalhero"] = {"portal","A"},["portalhigh"] = {"portal","A"},["portalhouse"] = {"portal","A"},["portali"] = {"portal","A"},["portalim"] = {"portal","A"},["portalin"] = {"portal","A"},["portalits"] = {"portal","A"},["portaljust"] = {"portal","A"},["portalkind"] = {"portal","A"},["portallast"] = {"portal","A"},["portalless"] = {"portal","A"},["portallooking"] = {"portal","A"},["portallot"] = {"portal","A"},["portallow"] = {"portal","A"},["portallower"] = {"portal","A"},["portalmajor"] = {"portal","A"},["portalmany"] = {"portal","A"},["portalme"] = {"portal","A"},["portalmid"] = {"portal","A"},["portalmind"] = {"portal","A"},["portalmore"] = {"portal","A"},["portalmost"] = {"portal","A"},["portalmuch"] = {"portal","A"},["portalmust"] = {"portal","A"},["portalmy"] = {"portal","A"},["portalno"] = {"portal","A"},["portalnow"] = {"portal","A"},["portalof"] = {"portal","A"},["portaloff"] = {"portal","A"},["portalon"] = {"portal","A"},["portalonly"] = {"portal","A"},["portalor"] = {"portal","A"},["portalorder"] = {"portal","A"},["portalout"] = {"portal","A"},["portaloutside"] = {"portal","A"},["portalplace"] = {"portal","A"},["portalplenty"] = {"portal","A"},["portalpop"] = {"portal","A"},["portalquick"] = {"portal","A"},["portalreasonable"] = {"portal","A"},["portalsome"] = {"portal","A"},["portalstill"] = {"portal","A"},["portalstop"] = {"portal","A"},["portalsuperior"] = {"portal","A"},["portalsweet"] = {"portal","A"},["portalthan"] = {"portal","A"},["portalthat"] = {"portal","A"},["portaltheir"] = {"portal","A"},["portalthey"] = {"portal","A"},["portalthere"] = {"portal","A"},["portalthis"] = {"portal","A"},["portaltime"] = {"portal","A"},["portalto"] = {"portal","A"},["portaltop"] = {"portal","A"},["portalu"] = {"portal","A"},["portalup"] = {"portal","A"},["portaluse"] = {"portal","A"},["portalway"] = {"portal","A"},["portalwell"] = {"portal","A"},["portalwho"] = {"portal","A"},["portalwill"] = {"portal","A"},["portalwilling"] = {"portal","A"},["portalwith"] = {"portal","A"},["portalyou"] = {"portal","A"},["portalyour"] = {"portal","A"},["portalalliance"] = {"portal","B"},["portalbank"] = {"portal","B"},["portalbest"] = {"portal","B"},["portalbis"] = {"portal","B"},["portalbridge"] = {"portal","B"},["portalbusiness"] = {"portal","B"},["portalcommission"] = {"portal","B"},["portalcouple"] = {"portal","B"},["portaldelivered"] = {"portal","B"},["portaldelivery"] = {"portal","B"},["portaldonation"] = {"portal","B"},["portalfountain"] = {"portal","B"},["portalguarantee"] = {"portal","B"},["portalhardcore"] = {"portal","B"},["portalhc"] = {"portal","B"},["portalhelp"] = {"portal","B"},["portalhorde"] = {"portal","B"},["portalinterested"] = {"portal","B"},["portaljob"] = {"portal","B"},["portallevel"] = {"portal","B"},["portalleveling"] = {"portal","B"},["portallisted"] = {"portal","B"},["portalminute"] = {"portal","B"},["portalnear"] = {"portal","B"},["portalone"] = {"portal","B"},["portalpremium"] = {"portal","B"},["portalquality"] = {"portal","B"},["portalstair"] = {"portal","B"},["portalsteps"] = {"portal","B"},["portalthree"] = {"portal","B"},["portaltip"] = {"portal","B"},["portalton"] = {"portal","B"},["portaltown"] = {"portal","B"},["portaltwo"] = {"portal","B"},["portalalchemist"] = {"portal","B"},["portalblacksmith"] = {"portal","B"},["portalengineer"] = {"portal","B"},["portalleatherworker"] = {"portal","B"},["portaltailor"] = {"portal","B"},["portalspecialization"] = {"portal","B"},["portalfood"] = {"portal","B"},["portalmage"] = {"portal","B"},["portalstack"] = {"portal","B"},["portalwarlock"] = {"portal","B"},["portalauction"] = {"portal","B"},["portalneeded"] = {"portal","B"},["portalpay"] = {"portal","B"},["portalprice"] = {"portal","B"},["portalcomingup"] = {"portal","C"},["portalwater"] = {"portal","C"},["portalcreate"] = {"portal","C"},["portalhitem"] = {"portal","C"},["portalmake"] = {"portal","C"},["portalopen"] = {"portal","C"},["portalopened"] = {"portal","C"},["portalopener"] = {"portal","C"},["portalopening"] = {"portal","C"},["portalany"] = {"portal","C"},["portalanyone"] = {"portal","C"},["portalanywhere"] = {"portal","C"},["portaldiscount"] = {"portal","C"},["portaleverycorner"] = {"portal","C"},["portalfast"] = {"portal","C"},["portalfree"] = {"portal","C"},["portalgold"] = {"portal","C"},["portalhelp"] = {"portal","C"},["portalmoney"] = {"portal","C"},["portalneed"] = {"portal","C"},["portalplease"] = {"portal","C"},["portalpst"] = {"portal","C"},["portalquick"] = {"portal","C"},["portalrequest"] = {"portal","C"},["portalsale"] = {"portal","C"},["portalservice"] = {"portal","C"},["portalwelcome"] = {"portal","C"},["portalwme"] = {"portal","C"},["portalwork"] = {"portal","C"},["portalwherever"] = {"portal","C"},
["portalalterac"] = {"portal","B"},["portalaq"] = {"portal","B"},["portalarathi"] = {"portal","B"},["portalarathihighlands"] = {"portal","B"},["portalashenvale"] = {"portal","B"},["portalazshara"] = {"portal","B"},["portalbadlands"] = {"portal","B"},["portalbarrens"] = {"portal","B"},["portalblackrock"] = {"portal","B"},["portalblackrockmountain"] = {"portal","B"},["portalblasted"] = {"portal","B"},["portalblastedlands"] = {"portal","B"},["portalbb"] = {"portal","B"},["portalbootybay"] = {"portal","B"},["portalbrm"] = {"portal","B"},["portalcot"] = {"portal","B"},["portalcrossroads"] = {"portal","B"},["portaldarkmoon"] = {"portal","B"},["portaldarkmoonfaire"] = {"portal","B"},["portaldarnassus"] = {"portal","B"},["portaldesolace"] = {"portal","B"},["portaldiremaul"] = {"portal","B"},["portaldm"] = {"portal","B"},["portaldme"] = {"portal","B"},["portaldmw"] = {"portal","B"},["portaldmn"] = {"portal","B"},["portalepl"] = {"portal","B"},["portaleverlook"] = {"portal","B"},["portalferalas"] = {"portal","B"},["portalgadget"] = {"portal","B"},["portalgadgetzan"] = {"portal","B"},["portalgoldshire"] = {"portal","B"},["portalhydraxian"] = {"portal","B"},["portalhillsbrad"] = {"portal","B"},["portalhyjal"] = {"portal","B"},["portalif"] = {"portal","B"},["portalironforge"] = {"portal","B"},["portalkarazhan"] = {"portal","B"},["portalmoonglade"] = {"portal","B"},["portalorgrimmar"] = {"portal","B"},["portalratchet"] = {"portal","B"},["portalsilithus"] = {"portal","B"},["portalsm"] = {"portal","B"},["portalstonard"] = {"portal","B"},["portalstormwind"] = {"portal","B"},["portaltanaris"] = {"portal","B"},["portaltarrenmill"] = {"portal","B"},["portalthunder"] = {"portal","B"},["portalthunderbluff"] = {"portal","B"},["portalundercity"] = {"portal","B"},["portalwinterspring"] = {"portal","B"},["portalwpl"] = {"portal","B"},["portalzoramstrand"] = {"portal","B"},["ableportal"] = {"A","portal"},["aboutportal"] = {"A","portal"},["aboveportal"] = {"A","portal"},["affordportal"] = {"A","portal"},["allportal"] = {"A","portal"},["alleyportal"] = {"A","portal"},["amountportal"] = {"A","portal"},["andportal"] = {"A","portal"},["appreciateportal"] = {"A","portal"},["aroundportal"] = {"A","portal"},["askportal"] = {"A","portal"},["atportal"] = {"A","portal"},["belowportal"] = {"A","portal"},["bigportal"] = {"A","portal"},["bringportal"] = {"A","portal"},["bunchportal"] = {"A","portal"},["byportal"] = {"A","portal"},["callportal"] = {"A","portal"},["canportal"] = {"A","portal"},["comeportal"] = {"A","portal"},["dealportal"] = {"A","portal"},["decentportal"] = {"A","portal"},["districtportal"] = {"A","portal"},["doportal"] = {"A","portal"},["doingportal"] = {"A","portal"},["doorportal"] = {"A","portal"},["evenportal"] = {"A","portal"},["everyportal"] = {"A","portal"},["everythingportal"] = {"A","portal"},["fasterportal"] = {"A","portal"},["fewportal"] = {"A","portal"},["forportal"] = {"A","portal"},["friendportal"] = {"A","portal"},["fromportal"] = {"A","portal"},["frontportal"] = {"A","portal"},["getportal"] = {"A","portal"},["giveportal"] = {"A","portal"},["goodportal"] = {"A","portal"},["guyportal"] = {"A","portal"},["hardportal"] = {"A","portal"},["hasportal"] = {"A","portal"},["haveportal"] = {"A","portal"},["hereportal"] = {"A","portal"},["heroportal"] = {"A","portal"},["highportal"] = {"A","portal"},["houseportal"] = {"A","portal"},["iportal"] = {"A","portal"},["importal"] = {"A","portal"},["inportal"] = {"A","portal"},["itsportal"] = {"A","portal"},["justportal"] = {"A","portal"},["kindportal"] = {"A","portal"},["lastportal"] = {"A","portal"},["lessportal"] = {"A","portal"},["lookingportal"] = {"A","portal"},["lotportal"] = {"A","portal"},["lowportal"] = {"A","portal"},["lowerportal"] = {"A","portal"},["majorportal"] = {"A","portal"},["manyportal"] = {"A","portal"},["meportal"] = {"A","portal"},["midportal"] = {"A","portal"},["mindportal"] = {"A","portal"},["moreportal"] = {"A","portal"},["mostportal"] = {"A","portal"},["muchportal"] = {"A","portal"},["mustportal"] = {"A","portal"},["myportal"] = {"A","portal"},["noportal"] = {"A","portal"},["nowportal"] = {"A","portal"},["ofportal"] = {"A","portal"},["offportal"] = {"A","portal"},["onportal"] = {"A","portal"},["onlyportal"] = {"A","portal"},["orportal"] = {"A","portal"},["orderportal"] = {"A","portal"},["outportal"] = {"A","portal"},["outsideportal"] = {"A","portal"},["placeportal"] = {"A","portal"},["plentyportal"] = {"A","portal"},["popportal"] = {"A","portal"},["quickportal"] = {"A","portal"},["reasonableportal"] = {"A","portal"},["someportal"] = {"A","portal"},["stillportal"] = {"A","portal"},["stopportal"] = {"A","portal"},["superiorportal"] = {"A","portal"},["sweetportal"] = {"A","portal"},["thanportal"] = {"A","portal"},["thatportal"] = {"A","portal"},["theirportal"] = {"A","portal"},["theyportal"] = {"A","portal"},["thereportal"] = {"A","portal"},["thisportal"] = {"A","portal"},["timeportal"] = {"A","portal"},["toportal"] = {"A","portal"},["topportal"] = {"A","portal"},["uportal"] = {"A","portal"},["upportal"] = {"A","portal"},["useportal"] = {"A","portal"},["wayportal"] = {"A","portal"},["wellportal"] = {"A","portal"},["whoportal"] = {"A","portal"},["willportal"] = {"A","portal"},["willingportal"] = {"A","portal"},["withportal"] = {"A","portal"},["youportal"] = {"A","portal"},["yourportal"] = {"A","portal"},["allianceportal"] = {"B","portal"},["bankportal"] = {"B","portal"},["bestportal"] = {"B","portal"},["bisportal"] = {"B","portal"},["bridgeportal"] = {"B","portal"},["businessportal"] = {"B","portal"},["commissionportal"] = {"B","portal"},["coupleportal"] = {"B","portal"},["deliveredportal"] = {"B","portal"},["deliveryportal"] = {"B","portal"},["donationportal"] = {"B","portal"},["fountainportal"] = {"B","portal"},["guaranteeportal"] = {"B","portal"},["hardcoreportal"] = {"B","portal"},["hcportal"] = {"B","portal"},["helpportal"] = {"B","portal"},["hordeportal"] = {"B","portal"},["interestedportal"] = {"B","portal"},["jobportal"] = {"B","portal"},["levelportal"] = {"B","portal"},["levelingportal"] = {"B","portal"},["listedportal"] = {"B","portal"},["minuteportal"] = {"B","portal"},["nearportal"] = {"B","portal"},["oneportal"] = {"B","portal"},["premiumportal"] = {"B","portal"},["qualityportal"] = {"B","portal"},["stairportal"] = {"B","portal"},["stepsportal"] = {"B","portal"},["threeportal"] = {"B","portal"},["tipportal"] = {"B","portal"},["tonportal"] = {"B","portal"},["townportal"] = {"B","portal"},["twoportal"] = {"B","portal"},["alchemistportal"] = {"B","portal"},["blacksmithportal"] = {"B","portal"},["engineerportal"] = {"B","portal"},["leatherworkerportal"] = {"B","portal"},["tailorportal"] = {"B","portal"},["specializationportal"] = {"B","portal"},["foodportal"] = {"B","portal"},["mageportal"] = {"B","portal"},["stackportal"] = {"B","portal"},["warlockportal"] = {"B","portal"},["auctionportal"] = {"B","portal"},["neededportal"] = {"B","portal"},["payportal"] = {"B","portal"},["priceportal"] = {"B","portal"},["comingupportal"] = {"C","portal"},["waterportal"] = {"C","portal"},["createportal"] = {"C","portal"},["hitemportal"] = {"C","portal"},["makeportal"] = {"C","portal"},["openportal"] = {"C","portal"},["openedportal"] = {"C","portal"},["openerportal"] = {"C","portal"},["openingportal"] = {"C","portal"},["anyportal"] = {"C","portal"},["anyoneportal"] = {"C","portal"},["anywhereportal"] = {"C","portal"},["discountportal"] = {"C","portal"},["everycornerportal"] = {"C","portal"},["fastportal"] = {"C","portal"},["freeportal"] = {"C","portal"},["goldportal"] = {"C","portal"},["helpportal"] = {"C","portal"},["moneyportal"] = {"C","portal"},["needportal"] = {"C","portal"},["pleaseportal"] = {"C","portal"},["pstportal"] = {"C","portal"},["quickportal"] = {"C","portal"},["requestportal"] = {"C","portal"},["saleportal"] = {"C","portal"},["serviceportal"] = {"C","portal"},["welcomeportal"] = {"C","portal"},["wmeportal"] = {"C","portal"},["workportal"] = {"C","portal"},["whereverportal"] = {"C","portal"},
["blufflockbox"] = {"B","lockbox"},["darnassuslockbox"] = {"B","lockbox"},["iflockbox"] = {"B","lockbox"},["ironforgelockbox"] = {"B","lockbox"},["orgrimmarlockbox"] = {"B","lockbox"},["stormwindlockbox"] = {"B","lockbox"},["thunderlockbox"] = {"B","lockbox"},["thunderblufflockbox"] = {"B","lockbox"},["undercitylockbox"] = {"B","lockbox"},["lockboxable"] = {"lockbox","A"},["lockboxabout"] = {"lockbox","A"},["lockboxabove"] = {"lockbox","A"},["lockboxafford"] = {"lockbox","A"},["lockboxall"] = {"lockbox","A"},["lockboxalley"] = {"lockbox","A"},["lockboxamount"] = {"lockbox","A"},["lockboxand"] = {"lockbox","A"},["lockboxappreciate"] = {"lockbox","A"},["lockboxaround"] = {"lockbox","A"},["lockboxask"] = {"lockbox","A"},["lockboxat"] = {"lockbox","A"},["lockboxbelow"] = {"lockbox","A"},["lockboxbig"] = {"lockbox","A"},["lockboxbring"] = {"lockbox","A"},["lockboxbunch"] = {"lockbox","A"},["lockboxby"] = {"lockbox","A"},["lockboxcall"] = {"lockbox","A"},["lockboxcan"] = {"lockbox","A"},["lockboxcome"] = {"lockbox","A"},["lockboxdeal"] = {"lockbox","A"},["lockboxdecent"] = {"lockbox","A"},["lockboxdistrict"] = {"lockbox","A"},["lockboxdo"] = {"lockbox","A"},["lockboxdoing"] = {"lockbox","A"},["lockboxdoor"] = {"lockbox","A"},["lockboxeven"] = {"lockbox","A"},["lockboxevery"] = {"lockbox","A"},["lockboxeverything"] = {"lockbox","A"},["lockboxfaster"] = {"lockbox","A"},["lockboxfew"] = {"lockbox","A"},["lockboxfor"] = {"lockbox","A"},["lockboxfriend"] = {"lockbox","A"},["lockboxfrom"] = {"lockbox","A"},["lockboxfront"] = {"lockbox","A"},["lockboxget"] = {"lockbox","A"},["lockboxgive"] = {"lockbox","A"},["lockboxgood"] = {"lockbox","A"},["lockboxguy"] = {"lockbox","A"},["lockboxhard"] = {"lockbox","A"},["lockboxhas"] = {"lockbox","A"},["lockboxhave"] = {"lockbox","A"},["lockboxhere"] = {"lockbox","A"},["lockboxhero"] = {"lockbox","A"},["lockboxhigh"] = {"lockbox","A"},["lockboxhouse"] = {"lockbox","A"},["lockboxi"] = {"lockbox","A"},["lockboxim"] = {"lockbox","A"},["lockboxin"] = {"lockbox","A"},["lockboxits"] = {"lockbox","A"},["lockboxjust"] = {"lockbox","A"},["lockboxkind"] = {"lockbox","A"},["lockboxlast"] = {"lockbox","A"},["lockboxless"] = {"lockbox","A"},["lockboxlooking"] = {"lockbox","A"},["lockboxlot"] = {"lockbox","A"},["lockboxlow"] = {"lockbox","A"},["lockboxlower"] = {"lockbox","A"},["lockboxmajor"] = {"lockbox","A"},["lockboxmany"] = {"lockbox","A"},["lockboxme"] = {"lockbox","A"},["lockboxmid"] = {"lockbox","A"},["lockboxmind"] = {"lockbox","A"},["lockboxmore"] = {"lockbox","A"},["lockboxmost"] = {"lockbox","A"},["lockboxmuch"] = {"lockbox","A"},["lockboxmust"] = {"lockbox","A"},["lockboxmy"] = {"lockbox","A"},["lockboxno"] = {"lockbox","A"},["lockboxnow"] = {"lockbox","A"},["lockboxof"] = {"lockbox","A"},["lockboxoff"] = {"lockbox","A"},["lockboxon"] = {"lockbox","A"},["lockboxonly"] = {"lockbox","A"},["lockboxor"] = {"lockbox","A"},["lockboxorder"] = {"lockbox","A"},["lockboxout"] = {"lockbox","A"},["lockboxoutside"] = {"lockbox","A"},["lockboxplace"] = {"lockbox","A"},["lockboxplenty"] = {"lockbox","A"},["lockboxpop"] = {"lockbox","A"},["lockboxquick"] = {"lockbox","A"},["lockboxreasonable"] = {"lockbox","A"},["lockboxsome"] = {"lockbox","A"},["lockboxstill"] = {"lockbox","A"},["lockboxstop"] = {"lockbox","A"},["lockboxsuperior"] = {"lockbox","A"},["lockboxsweet"] = {"lockbox","A"},["lockboxthan"] = {"lockbox","A"},["lockboxthat"] = {"lockbox","A"},["lockboxtheir"] = {"lockbox","A"},["lockboxthey"] = {"lockbox","A"},["lockboxthere"] = {"lockbox","A"},["lockboxthis"] = {"lockbox","A"},["lockboxtime"] = {"lockbox","A"},["lockboxto"] = {"lockbox","A"},["lockboxtop"] = {"lockbox","A"},["lockboxu"] = {"lockbox","A"},["lockboxup"] = {"lockbox","A"},["lockboxuse"] = {"lockbox","A"},["lockboxway"] = {"lockbox","A"},["lockboxwell"] = {"lockbox","A"},["lockboxwho"] = {"lockbox","A"},["lockboxwill"] = {"lockbox","A"},["lockboxwilling"] = {"lockbox","A"},["lockboxwith"] = {"lockbox","A"},["lockboxyou"] = {"lockbox","A"},["lockboxyour"] = {"lockbox","A"},["lockboxalliance"] = {"lockbox","B"},["lockboxbank"] = {"lockbox","B"},["lockboxbest"] = {"lockbox","B"},["lockboxbis"] = {"lockbox","B"},["lockboxbridge"] = {"lockbox","B"},["lockboxbusiness"] = {"lockbox","B"},["lockboxcommission"] = {"lockbox","B"},["lockboxcouple"] = {"lockbox","B"},["lockboxdelivered"] = {"lockbox","B"},["lockboxdelivery"] = {"lockbox","B"},["lockboxdonation"] = {"lockbox","B"},["lockboxfountain"] = {"lockbox","B"},["lockboxguarantee"] = {"lockbox","B"},["lockboxhardcore"] = {"lockbox","B"},["lockboxhc"] = {"lockbox","B"},["lockboxhelp"] = {"lockbox","B"},["lockboxhorde"] = {"lockbox","B"},["lockboxinterested"] = {"lockbox","B"},["lockboxjob"] = {"lockbox","B"},["lockboxlevel"] = {"lockbox","B"},["lockboxleveling"] = {"lockbox","B"},["lockboxlisted"] = {"lockbox","B"},["lockboxminute"] = {"lockbox","B"},["lockboxnear"] = {"lockbox","B"},["lockboxone"] = {"lockbox","B"},["lockboxpremium"] = {"lockbox","B"},["lockboxquality"] = {"lockbox","B"},["lockboxstair"] = {"lockbox","B"},["lockboxsteps"] = {"lockbox","B"},["lockboxthree"] = {"lockbox","B"},["lockboxtip"] = {"lockbox","B"},["lockboxton"] = {"lockbox","B"},["lockboxtown"] = {"lockbox","B"},["lockboxtwo"] = {"lockbox","B"},["lockboxalchemist"] = {"lockbox","B"},["lockboxblacksmith"] = {"lockbox","B"},["lockboxengineer"] = {"lockbox","B"},["lockboxleatherworker"] = {"lockbox","B"},["lockboxtailor"] = {"lockbox","B"},["lockboxspecialization"] = {"lockbox","B"},["lockboxbox"] = {"lockbox","B"},["lockboxcrack"] = {"lockbox","B"},["lockboxcracking"] = {"lockbox","B"},["lockboxlock"] = {"lockbox","B"},["lockboxpick"] = {"lockbox","B"},["lockboxrogue"] = {"lockbox","B"},["lockboxunlock"] = {"lockbox","B"},["lockboxgear"] = {"lockbox","B"},["lockboxinventory"] = {"lockbox","B"},["lockboxskill"] = {"lockbox","B"},["lockboxauction"] = {"lockbox","B"},["lockboxneeded"] = {"lockbox","B"},["lockboxpay"] = {"lockbox","B"},["lockboxprice"] = {"lockbox","B"},["lockboxopen"] = {"lockbox","C"},["lockboxopened"] = {"lockbox","C"},["lockboxopener"] = {"lockbox","C"},["lockboxopening"] = {"lockbox","C"},["lockboxany"] = {"lockbox","C"},["lockboxanyone"] = {"lockbox","C"},["lockboxanywhere"] = {"lockbox","C"},["lockboxdiscount"] = {"lockbox","C"},["lockboxeverycorner"] = {"lockbox","C"},["lockboxfast"] = {"lockbox","C"},["lockboxfree"] = {"lockbox","C"},["lockboxgold"] = {"lockbox","C"},["lockboxhelp"] = {"lockbox","C"},["lockboxmoney"] = {"lockbox","C"},["lockboxneed"] = {"lockbox","C"},["lockboxplease"] = {"lockbox","C"},["lockboxpst"] = {"lockbox","C"},["lockboxquick"] = {"lockbox","C"},["lockboxrequest"] = {"lockbox","C"},["lockboxsale"] = {"lockbox","C"},["lockboxservice"] = {"lockbox","C"},["lockboxwelcome"] = {"lockbox","C"},["lockboxwme"] = {"lockbox","C"},["lockboxwork"] = {"lockbox","C"},["lockboxwherever"] = {"lockbox","C"},
["lockboxbluff"] = {"lockbox","B"},["lockboxdarnassus"] = {"lockbox","B"},["lockboxif"] = {"lockbox","B"},["lockboxironforge"] = {"lockbox","B"},["lockboxorgrimmar"] = {"lockbox","B"},["lockboxstormwind"] = {"lockbox","B"},["lockboxthunder"] = {"lockbox","B"},["lockboxthunderbluff"] = {"lockbox","B"},["lockboxundercity"] = {"lockbox","B"},["ablelockbox"] = {"A","lockbox"},["aboutlockbox"] = {"A","lockbox"},["abovelockbox"] = {"A","lockbox"},["affordlockbox"] = {"A","lockbox"},["alllockbox"] = {"A","lockbox"},["alleylockbox"] = {"A","lockbox"},["amountlockbox"] = {"A","lockbox"},["andlockbox"] = {"A","lockbox"},["appreciatelockbox"] = {"A","lockbox"},["aroundlockbox"] = {"A","lockbox"},["asklockbox"] = {"A","lockbox"},["atlockbox"] = {"A","lockbox"},["belowlockbox"] = {"A","lockbox"},["biglockbox"] = {"A","lockbox"},["bringlockbox"] = {"A","lockbox"},["bunchlockbox"] = {"A","lockbox"},["bylockbox"] = {"A","lockbox"},["calllockbox"] = {"A","lockbox"},["canlockbox"] = {"A","lockbox"},["comelockbox"] = {"A","lockbox"},["deallockbox"] = {"A","lockbox"},["decentlockbox"] = {"A","lockbox"},["districtlockbox"] = {"A","lockbox"},["dolockbox"] = {"A","lockbox"},["doinglockbox"] = {"A","lockbox"},["doorlockbox"] = {"A","lockbox"},["evenlockbox"] = {"A","lockbox"},["everylockbox"] = {"A","lockbox"},["everythinglockbox"] = {"A","lockbox"},["fasterlockbox"] = {"A","lockbox"},["fewlockbox"] = {"A","lockbox"},["forlockbox"] = {"A","lockbox"},["friendlockbox"] = {"A","lockbox"},["fromlockbox"] = {"A","lockbox"},["frontlockbox"] = {"A","lockbox"},["getlockbox"] = {"A","lockbox"},["givelockbox"] = {"A","lockbox"},["goodlockbox"] = {"A","lockbox"},["guylockbox"] = {"A","lockbox"},["hardlockbox"] = {"A","lockbox"},["haslockbox"] = {"A","lockbox"},["havelockbox"] = {"A","lockbox"},["herelockbox"] = {"A","lockbox"},["herolockbox"] = {"A","lockbox"},["highlockbox"] = {"A","lockbox"},["houselockbox"] = {"A","lockbox"},["ilockbox"] = {"A","lockbox"},["imlockbox"] = {"A","lockbox"},["inlockbox"] = {"A","lockbox"},["itslockbox"] = {"A","lockbox"},["justlockbox"] = {"A","lockbox"},["kindlockbox"] = {"A","lockbox"},["lastlockbox"] = {"A","lockbox"},["lesslockbox"] = {"A","lockbox"},["lookinglockbox"] = {"A","lockbox"},["lotlockbox"] = {"A","lockbox"},["lowlockbox"] = {"A","lockbox"},["lowerlockbox"] = {"A","lockbox"},["majorlockbox"] = {"A","lockbox"},["manylockbox"] = {"A","lockbox"},["melockbox"] = {"A","lockbox"},["midlockbox"] = {"A","lockbox"},["mindlockbox"] = {"A","lockbox"},["morelockbox"] = {"A","lockbox"},["mostlockbox"] = {"A","lockbox"},["muchlockbox"] = {"A","lockbox"},["mustlockbox"] = {"A","lockbox"},["mylockbox"] = {"A","lockbox"},["nolockbox"] = {"A","lockbox"},["nowlockbox"] = {"A","lockbox"},["oflockbox"] = {"A","lockbox"},["offlockbox"] = {"A","lockbox"},["onlockbox"] = {"A","lockbox"},["onlylockbox"] = {"A","lockbox"},["orlockbox"] = {"A","lockbox"},["orderlockbox"] = {"A","lockbox"},["outlockbox"] = {"A","lockbox"},["outsidelockbox"] = {"A","lockbox"},["placelockbox"] = {"A","lockbox"},["plentylockbox"] = {"A","lockbox"},["poplockbox"] = {"A","lockbox"},["quicklockbox"] = {"A","lockbox"},["reasonablelockbox"] = {"A","lockbox"},["somelockbox"] = {"A","lockbox"},["stilllockbox"] = {"A","lockbox"},["stoplockbox"] = {"A","lockbox"},["superiorlockbox"] = {"A","lockbox"},["sweetlockbox"] = {"A","lockbox"},["thanlockbox"] = {"A","lockbox"},["thatlockbox"] = {"A","lockbox"},["theirlockbox"] = {"A","lockbox"},["theylockbox"] = {"A","lockbox"},["therelockbox"] = {"A","lockbox"},["thislockbox"] = {"A","lockbox"},["timelockbox"] = {"A","lockbox"},["tolockbox"] = {"A","lockbox"},["toplockbox"] = {"A","lockbox"},["ulockbox"] = {"A","lockbox"},["uplockbox"] = {"A","lockbox"},["uselockbox"] = {"A","lockbox"},["waylockbox"] = {"A","lockbox"},["welllockbox"] = {"A","lockbox"},["wholockbox"] = {"A","lockbox"},["willlockbox"] = {"A","lockbox"},["willinglockbox"] = {"A","lockbox"},["withlockbox"] = {"A","lockbox"},["youlockbox"] = {"A","lockbox"},["yourlockbox"] = {"A","lockbox"},["alliancelockbox"] = {"B","lockbox"},["banklockbox"] = {"B","lockbox"},["bestlockbox"] = {"B","lockbox"},["bislockbox"] = {"B","lockbox"},["bridgelockbox"] = {"B","lockbox"},["businesslockbox"] = {"B","lockbox"},["commissionlockbox"] = {"B","lockbox"},["couplelockbox"] = {"B","lockbox"},["deliveredlockbox"] = {"B","lockbox"},["deliverylockbox"] = {"B","lockbox"},["donationlockbox"] = {"B","lockbox"},["fountainlockbox"] = {"B","lockbox"},["guaranteelockbox"] = {"B","lockbox"},["hardcorelockbox"] = {"B","lockbox"},["hclockbox"] = {"B","lockbox"},["helplockbox"] = {"B","lockbox"},["hordelockbox"] = {"B","lockbox"},["interestedlockbox"] = {"B","lockbox"},["joblockbox"] = {"B","lockbox"},["levellockbox"] = {"B","lockbox"},["levelinglockbox"] = {"B","lockbox"},["listedlockbox"] = {"B","lockbox"},["minutelockbox"] = {"B","lockbox"},["nearlockbox"] = {"B","lockbox"},["onelockbox"] = {"B","lockbox"},["premiumlockbox"] = {"B","lockbox"},["qualitylockbox"] = {"B","lockbox"},["stairlockbox"] = {"B","lockbox"},["stepslockbox"] = {"B","lockbox"},["threelockbox"] = {"B","lockbox"},["tiplockbox"] = {"B","lockbox"},["tonlockbox"] = {"B","lockbox"},["townlockbox"] = {"B","lockbox"},["twolockbox"] = {"B","lockbox"},["alchemistlockbox"] = {"B","lockbox"},["blacksmithlockbox"] = {"B","lockbox"},["engineerlockbox"] = {"B","lockbox"},["leatherworkerlockbox"] = {"B","lockbox"},["tailorlockbox"] = {"B","lockbox"},["specializationlockbox"] = {"B","lockbox"},["boxlockbox"] = {"B","lockbox"},["cracklockbox"] = {"B","lockbox"},["crackinglockbox"] = {"B","lockbox"},["locklockbox"] = {"B","lockbox"},["picklockbox"] = {"B","lockbox"},["roguelockbox"] = {"B","lockbox"},["unlocklockbox"] = {"B","lockbox"},["gearlockbox"] = {"B","lockbox"},["inventorylockbox"] = {"B","lockbox"},["skilllockbox"] = {"B","lockbox"},["auctionlockbox"] = {"B","lockbox"},["neededlockbox"] = {"B","lockbox"},["paylockbox"] = {"B","lockbox"},["pricelockbox"] = {"B","lockbox"},["openlockbox"] = {"C","lockbox"},["openedlockbox"] = {"C","lockbox"},["openerlockbox"] = {"C","lockbox"},["openinglockbox"] = {"C","lockbox"},["anylockbox"] = {"C","lockbox"},["anyonelockbox"] = {"C","lockbox"},["anywherelockbox"] = {"C","lockbox"},["discountlockbox"] = {"C","lockbox"},["everycornerlockbox"] = {"C","lockbox"},["fastlockbox"] = {"C","lockbox"},["freelockbox"] = {"C","lockbox"},["goldlockbox"] = {"C","lockbox"},["helplockbox"] = {"C","lockbox"},["moneylockbox"] = {"C","lockbox"},["needlockbox"] = {"C","lockbox"},["pleaselockbox"] = {"C","lockbox"},["pstlockbox"] = {"C","lockbox"},["quicklockbox"] = {"C","lockbox"},["requestlockbox"] = {"C","lockbox"},["salelockbox"] = {"C","lockbox"},["servicelockbox"] = {"C","lockbox"},["welcomelockbox"] = {"C","lockbox"},["wmelockbox"] = {"C","lockbox"},["worklockbox"] = {"C","lockbox"},["whereverlockbox"] = {"C","lockbox"},

-- Misc Trade
["iprovide"] = {"A","A"},["justlisted"] = {"A","A"},["putthis"] = {"A","A"},["giveme"] = {"A","A"},["havemat"] = {"A","A"},["ihavemat"] = {"A","A"},["andmanymore"] = {"A","C"},["andmuchmuchmore"] = {"A","C"},["anytip"] = {"A","C"},["atyourservice"] = {"A","C"},["canmake"] = {"A","C"},["canpick"] = {"A","C"},["cantip"] = {"A","C"},["comegetyour"] = {"A","C"},["deliveredanywhere"] = {"A","C"},["forstack"] = {"A","C"},["fortip"] = {"A","C"},["forwork"] = {"A","C"},["havemagefood"] = {"A","C"},["helpmake"] = {"A","C"},["howmuchfor"] = {"A","C"},["icanprovide"] = {"A","C"},["ipay"] = {"A","C"},["littletip"] = {"A","C"},["lotofstack"] = {"A","C"},["magefoodwater"] = {"A","C"},["manystack"] = {"A","C"},["middlemanplease"] = {"A","C"},["nofee"] = {"A","C"},["notip"] = {"A","C"},["onlytip"] = {"A","C"},["ownmat"] = {"A","C"},["perstack"] = {"A","C"},["plentyofstack"] = {"A","C"},["smallfee"] = {"A","C"},["smalltip"] = {"A","C"},["tomake"] = {"A","C"},["willwork"] = {"A","C"},["youmat"] = {"A","C"},["yourfee"] = {"A","C"},["yourtip"] = {"A","C"},["abletomake"] = {"B","C"},["addthis"] = {"B","C"},["applythis"] = {"B","C"},["atah"] = {"B","C"},["atauctionhouse"] = {"B","C"},["attachthis"] = {"B","C"},["belowah"] = {"B","C"},["belowauctionhouse"] = {"B","C"},["bringmat"] = {"B","C"},["byah"] = {"B","C"},["byauctionhouse"] = {"B","C"},["canopen"] = {"B","C"},["canyouopen"] = {"B","C"},["discountnow"] = {"B","C"},["freestore"] = {"B","C"},["forfree"] = {"B","C"},["forgold"] = {"B","C"},["forsale"] = {"B","C"},["fromah"] = {"B","C"},["fromauctionhouse"] = {"B","C"},["goldtip"] = {"B","C"},["helpopen"] = {"B","C"},["illpay"] = {"B","C"},["illtip"] = {"B","C"},["inah"] = {"B","C"},["inauctionhouse"] = {"B","C"},["inbulk"] = {"B","C"},["materiallist"] = {"B","C"},["matlist"] = {"B","C"},["needopen"] = {"B","C"},["ondiscount"] = {"B","C"},["onsale"] = {"B","C"},["pleaseopen"] = {"B","C"},["pleasetip"] = {"B","C"},["plustip"] = {"B","C"},["thanah"] = {"B","C"},["thanauctionhouse"] = {"B","C"},["thankfulfortip"] = {"B","C"},["tipany"] = {"B","C"},["tipanything"] = {"B","C"},["tipappreciate"] = {"B","C"},["tipareappreciate"] = {"B","C"},["tipareoptional"] = {"B","C"},["tiparewelcome"] = {"B","C"},["tiphighly"] = {"B","C"},["tipifyoucan"] = {"B","C"},["tipisappreciate"] = {"B","C"},["tipisoptional"] = {"B","C"},["tipiswelcome"] = {"B","C"},["tipme"] = {"B","C"},["tipmore"] = {"B","C"},["tipneed"] = {"B","C"},["tipoptional"] = {"B","C"},["tiprequired"] = {"B","C"},["tipwelcome"] = {"B","C"},["tipwork"] = {"B","C"},["tipyou"] = {"B","C"},["tonofbar"] = {"B","C"},["tonofcloth"] = {"B","C"},["tonofleatherworker"] = {"B","C"},["tonofore"] = {"B","C"},["tonofstone"] = {"B","C"},["waterforme"] = {"B","C"},["willtip"] = {"B","C"},["yourmaterial"] = {"B","C"},["youroownmat"] = {"B","C"},["yourprice"] = {"B","C"},["winprize"] = {"B","C"},["anyonehavehitem"] = {"B","C"},["anyonewithhitem"] = {"B","C"},["anywithhitem"] = {"B","C"},["applyhitem"] = {"B","C"},["auctionhousehitem"] = {"B","C"},["candohitem"] = {"B","C"},["couplehitem"] = {"B","C"},["fewhitem"] = {"B","C"},["freehitem"] = {"B","C"},["getyourhitem"] = {"B","C"},["goldhitem"] = {"B","C"},["howmuchishitem"] = {"B","C"},["interestedinhitem"] = {"B","C"},["lockhitem"] = {"B","C"},["makehitem"] = {"B","C"},["makehitem"] = {"C","B"},["manyhitem"] = {"B","C"},["neededhitem"] = {"B","C"},["needhitem"] = {"B","C"},["needthishitem"] = {"B","C"},["openhitem"] = {"B","C"},["openinghitem"] = {"B","C"},["payhitem"] = {"B","C"},["payinghitem"] = {"B","C"},["pricehitem"] = {"B","C"},["somehitem"] = {"B","C"},["transmutehitem"] = {"B","C"},["unlockhitem"] = {"B","C"},["onehitem"] = {"B","C"},["twohitem"] = {"B","C"},["threehitem"] = {"B","C"},["fourhitem"] = {"B","C"},["fivehitem"] = {"B","C"},["sixhitem"] = {"B","C"},["sevenhitem"] = {"B","C"},["eighthitem"] = {"B","C"},["ninehitem"] = {"B","C"},["tenhitem"] = {"B","C"},["openall"] = {"C","A"},["openingall"] = {"C","A"},["openingmy"] = {"C","A"},["openingplease"] = {"C","A"},["openingyour"] = {"C","A"},["openmy"] = {"C","A"},["openplease"] = {"C","A"},["openthis"] = {"C","A"},["payfor"] = {"C","A"},["payyou"] = {"C","A"},["whileitlasts"] = {"C","A"},["whoneedthis"] = {"C","A"},["openforme"] = {"C","B"},["openforyou"] = {"C","B"},["makeitfor"] = {"C","B"},["matfee"] = {"C","B"},["needstack"] = {"C","B"},["needtonsof"] = {"C","B"},["anyoneopen"] = {"C","C"},["anyoneopening"] = {"C","C"},["anyopen"] = {"C","C"},["anyopener"] = {"C","C"},["anyonemake"] = {"C","C"},["anyoneneedfree"] = {"C","C"},["anyoneneedthese"] = {"C","C"},["magefoodplease"] = {"C","C"},["paygold"] = {"C","C"},["mustpaymoney"] = {"C","C"},["workforfree"] = {"C","C"},["blacksmithfor"] = {"C","A"},["engineerfor"] = {"C","A"},["leatherworkerfor"] = {"C","A"},["tailorfor"] = {"C","A"},["alchemistin"] = {"C","A"},["blacksmithin"] = {"C","A"},["engineerin"] = {"C","A"},["leatherworkerin"] = {"C","A"},["tailorin"] = {"C","A"},["alchemistexperience"] = {"C","A"},["blacksmithexperience"] = {"C","A"},["engineerexperience"] = {"C","A"},["leatherworkerexperience"] = {"C","A"},["tailorexperience"] = {"C","A"},["alchemistwilling"] = {"C","A"},["blacksmithwilling"] = {"C","A"},["engineerwilling"] = {"C","A"},["leatherworkerwilling"] = {"C","A"},["tailorwilling"] = {"C","A"},["alchemistwith"] = {"C","A"},["blacksmithwith"] = {"C","A"},["engineerwith"] = {"C","A"},["leatherworkerwith"] = {"C","A"},["tailorwith"] = {"C","A"},["alchemisthere"] = {"C","A"},["blacksmithhere"] = {"C","A"},["engineerhere"] = {"C","A"},["leatherworkerhere"] = {"C","A"},["tailorhere"] = {"C","A"},["alchemistmake"] = {"B","C"},["blacksmithmake"] = {"B","C"},["engineermake"] = {"B","C"},["leatherworkermake"] = {"B","C"},["tailormake"] = {"B","C"},["searchingalchemist"] = {"B","C"},["searchingblacksmith"] = {"B","C"},["searchingengineer"] = {"B","C"},["searchingleatherworker"] = {"B","C"},["searchingtailor"] = {"B","C"},["roguearoundopen"] = {"B","C"},["rogueforopen"] = {"B","C"},["roguemindopening"] = {"B","C"},["rogueopen"] = {"B","C"},["levelwater"] = {"B","B"},["lockopen"] = {"B","C"},["lockopener"] = {"B","C"},["lockopening"] = {"B","C"},["unlockall"] = {"B","C"},["unlockservice"] = {"B","C"},["unlockyourbox"] = {"B","C"},["ahwhisperme"] = {"B","C"},["andmuchmore"] = {"B","C"},["andsomuchmore"] = {"B","C"},["arcanecooldown"] = {"B","C"},["arcanitecooldown"] = {"B","C"},["auctionhousewhisperme"] = {"B","C"},["blacksmithapply"] = {"B","C"},["blacksmithattach"] = {"B","C"},["curedruggedhidecooldown"] = {"B","C"},["goldfor"] = {"B","C"},["mattip"] = {"B","C"},["moonclothcooldown"] = {"B","C"},["mymat"] = {"B","C"},["mymaterial"] = {"B","C"},["onah"] = {"B","C"},["onauctionhouse"] = {"B","C"},["openforbusiness"] = {"B","C"},["saltshakercooldown"] = {"B","C"},["shopisopen"] = {"B","C"},["surchargemayapply"] = {"B","C"},["vendorprice"] = {"B","C"},["willpay"] = {"B","C"},["yourmat"] = {"B","C"},["needtomake"] = {"C","C"},["waterplease"] = {"C","C"},["anyalchemist"] = {"C","B"},["anyblacksmith"] = {"C","B"},["anyengineer"] = {"C","B"},["anyleatherworker"] = {"C","B"},["anytailor"] = {"C","B"},["anyonealchemist"] = {"C","B"},["anyoneblacksmith"] = {"C","B"},["anyoneengineer"] = {"C","B"},["anyoneleatherworker"] = {"C","B"},["anyonetailor"] = {"C","B"},["needalchemist"] = {"C","B"},["needblacksmith"] = {"C","B"},["needengineer"] = {"C","B"},["needleatherworker"] = {"C","B"},["needtailor"] = {"C","B"},["alchemistfor"] = {"C","B"},["abletounlock"] = {"C","B"},["ableunlock"] = {"C","B"},["anyoneunlock"] = {"C","B"},["anyunlock"] = {"C","B"},["boxopen"] = {"C","B"},["boxopening"] = {"C","B"},["cananyonepick"] = {"C","B"},["canunlock"] = {"C","B"},["doingunlock"] = {"C","B"},["helpunlock"] = {"C","B"},["needunlock"] = {"C","B"},["openbox"] = {"C","B"},["openingbox"] = {"C","B"},["openinglock"] = {"C","B"},["openlock"] = {"C","B"},["pleaseunlock"] = {"C","B"},["roguedoinglock"] = {"C","B"},["rogueforbox"] = {"C","B"},["rogueforlock"] = {"C","B"},["rogueforunlock"] = {"C","B"},["roguepick"] = {"C","B"},["roguetopick"] = {"C","B"},["rogueunlock"] = {"C","B"},["tounlock"] = {"C","B"},["willingunlock"] = {"C","B"},["willingtounlock"] = {"C","B"},["willunlock"] = {"C","B"},["threelockbox"] = {"A","L"},["fourlockbox"] = {"A","L"},["fivelockbox"] = {"A","L"},["sixlockbox"] = {"A","L"},["sevenlockbox"] = {"A","L"},["eightlockbox"] = {"A","L"},["ninelockbox"] = {"A","L"},["tenlockbox"] = {"A","L"},["lockboxllc"] = {"L","C"},

["anyspur"] = {"C","C"},["anyonespur"] = {"C","C"},["spuraround"] = {"C","C"},["dospur"] = {"C","C"},["havespur"] = {"C","C"},["freespur"] = {"C","C"},["spurfree"] = {"C","C"},["needspur"] = {"C","C"},["somespur"] = {"C","C"},["withspur"] = {"C","C"},["spurplease"] = {"C","C"},["spurpst"] = {"C","C"},["applyspur"] = {"C","C"},["attachspur"] = {"C","C"},["spurapply"] = {"C","C"},["spurattach"] = {"C","C"},
["anycounterweight"] = {"C","C"},["anyonecounterweight"] = {"C","C"},["counterweightaround"] = {"C","C"},["docounterweight"] = {"C","C"},["havecounterweight"] = {"C","C"},["freecounterweight"] = {"C","C"},["counterweightfree"] = {"C","C"},["needcounterweight"] = {"C","C"},["somecounterweight"] = {"C","C"},["withcounterweight"] = {"C","C"},["counterweightplease"] = {"C","C"},["counterweightpst"] = {"C","C"},["applycounterweight"] = {"C","C"},["attachcounterweight"] = {"C","C"},["counterweightapply"] = {"C","C"},["counterweightattach"] = {"C","C"},
["anyweaponchain"] = {"C","C"},["anyoneweaponchain"] = {"C","C"},["weaponchainaround"] = {"C","C"},["doweaponchain"] = {"C","C"},["haveweaponchain"] = {"C","C"},["freeweaponchain"] = {"C","C"},["weaponchainfree"] = {"C","C"},["needweaponchain"] = {"C","C"},["someweaponchain"] = {"C","C"},["withweaponchain"] = {"C","C"},["weaponchainplease"] = {"C","C"},["weaponchainpst"] = {"C","C"},["applyweaponchain"] = {"C","C"},["attachweaponchain"] = {"C","C"},["weaponchainapply"] = {"C","C"},["weaponchainattach"] = {"C","C"},
["anyshieldspike"] = {"C","C"},["anyoneshieldspike"] = {"C","C"},["shieldspikearound"] = {"C","C"},["doshieldspike"] = {"C","C"},["haveshieldspike"] = {"C","C"},["freeshieldspike"] = {"C","C"},["shieldspikefree"] = {"C","C"},["needshieldspike"] = {"C","C"},["someshieldspike"] = {"C","C"},["withshieldspike"] = {"C","C"},["shieldspikeplease"] = {"C","C"},["shieldspikepst"] = {"C","C"},["applyshieldspike"] = {"C","C"},["attachshieldspike"] = {"C","C"},["shieldspikeapply"] = {"C","C"},["shieldspikeattach"] = {"C","C"},
["anybeltbuckle"] = {"C","C"},["anyonebeltbuckle"] = {"C","C"},["beltbucklearound"] = {"C","C"},["dobeltbuckle"] = {"C","C"},["havebeltbuckle"] = {"C","C"},["freebeltbuckle"] = {"C","C"},["beltbucklefree"] = {"C","C"},["needbeltbuckle"] = {"C","C"},["somebeltbuckle"] = {"C","C"},["withbeltbuckle"] = {"C","C"},["beltbuckleplease"] = {"C","C"},["beltbucklepst"] = {"C","C"},["applybeltbuckle"] = {"C","C"},["attachbeltbuckle"] = {"C","C"},["beltbuckleapply"] = {"C","C"},["beltbuckleattach"] = {"C","C"},
["anybeastslayer"] = {"C","C"},["anyonebeastslayer"] = {"C","C"},["beastslayeraround"] = {"C","C"},["dobeastslayer"] = {"C","C"},["havebeastslayer"] = {"C","C"},["freebeastslayer"] = {"C","C"},["beastslayerfree"] = {"C","C"},["needbeastslayer"] = {"C","C"},["somebeastslayer"] = {"C","C"},["withbeastslayer"] = {"C","C"},["beastslayerplease"] = {"C","C"},["beastslayerpst"] = {"C","C"},
["anycrusader"] = {"C","C"},["anyonecrusader"] = {"C","C"},["crusaderaround"] = {"C","C"},["docrusader"] = {"C","C"},["havecrusader"] = {"C","C"},["freecrusader"] = {"C","C"},["crusaderfree"] = {"C","C"},["needcrusader"] = {"C","C"},["somecrusader"] = {"C","C"},["withcrusader"] = {"C","C"},["crusaderplease"] = {"C","C"},["crusaderpst"] = {"C","C"},
["anydemonslaying"] = {"C","C"},["anyonedemonslaying"] = {"C","C"},["demonslayingaround"] = {"C","C"},["dodemonslaying"] = {"C","C"},["havedemonslaying"] = {"C","C"},["freedemonslaying"] = {"C","C"},["demonslayingfree"] = {"C","C"},["needdemonslaying"] = {"C","C"},["somedemonslaying"] = {"C","C"},["withdemonslaying"] = {"C","C"},["demonslayingplease"] = {"C","C"},["demonslayingpst"] = {"C","C"},
["anyfiery"] = {"C","C"},["anyonefiery"] = {"C","C"},["fieryaround"] = {"C","C"},["dofiery"] = {"C","C"},["havefiery"] = {"C","C"},["freefiery"] = {"C","C"},["fieryfree"] = {"C","C"},["needfiery"] = {"C","C"},["somefiery"] = {"C","C"},["withfiery"] = {"C","C"},["fieryplease"] = {"C","C"},["fierypst"] = {"C","C"},
["anyglow"] = {"C","C"},["anyoneglow"] = {"C","C"},["glowaround"] = {"C","C"},["doglow"] = {"C","C"},["haveglow"] = {"C","C"},["freeglow"] = {"C","C"},["glowfree"] = {"C","C"},["needglow"] = {"C","C"},["someglow"] = {"C","C"},["withglow"] = {"C","C"},["glowplease"] = {"C","C"},["glowpst"] = {"C","C"},
["anyhaste"] = {"C","C"},["anyonehaste"] = {"C","C"},["hastearound"] = {"C","C"},["dohaste"] = {"C","C"},["havehaste"] = {"C","C"},["freehaste"] = {"C","C"},["hastefree"] = {"C","C"},["needhaste"] = {"C","C"},["somehaste"] = {"C","C"},["withhaste"] = {"C","C"},["hasteplease"] = {"C","C"},["hastepst"] = {"C","C"},
["anyicy"] = {"C","C"},["anyoneicy"] = {"C","C"},["icyaround"] = {"C","C"},["doicy"] = {"C","C"},["haveicy"] = {"C","C"},["freeicy"] = {"C","C"},["icyfree"] = {"C","C"},["needicy"] = {"C","C"},["someicy"] = {"C","C"},["withicy"] = {"C","C"},["icyplease"] = {"C","C"},["icypst"] = {"C","C"},
["anyicychill"] = {"C","C"},["anyoneicychill"] = {"C","C"},["icychillaround"] = {"C","C"},["doicychill"] = {"C","C"},["haveicychill"] = {"C","C"},["freeicychill"] = {"C","C"},["icychillfree"] = {"C","C"},["needicychill"] = {"C","C"},["someicychill"] = {"C","C"},["withicychill"] = {"C","C"},["icychillplease"] = {"C","C"},["icychillpst"] = {"C","C"},
["anylifesteal"] = {"C","C"},["anyonelifesteal"] = {"C","C"},["lifestealaround"] = {"C","C"},["dolifesteal"] = {"C","C"},["havelifesteal"] = {"C","C"},["freelifesteal"] = {"C","C"},["lifestealfree"] = {"C","C"},["needlifesteal"] = {"C","C"},["somelifesteal"] = {"C","C"},["withlifesteal"] = {"C","C"},["lifestealplease"] = {"C","C"},["lifestealpst"] = {"C","C"},
["anyminorspeed"] = {"C","C"},["anyoneminorspeed"] = {"C","C"},["minorspeedaround"] = {"C","C"},["dominorspeed"] = {"C","C"},["haveminorspeed"] = {"C","C"},["freeminorspeed"] = {"C","C"},["minorspeedfree"] = {"C","C"},["needminorspeed"] = {"C","C"},["someminorspeed"] = {"C","C"},["withminorspeed"] = {"C","C"},["minorspeedplease"] = {"C","C"},["minorspeedpst"] = {"C","C"},
["anymountspeed"] = {"C","C"},["anyonemountspeed"] = {"C","C"},["mountspeedaround"] = {"C","C"},["domountspeed"] = {"C","C"},["havemountspeed"] = {"C","C"},["freemountspeed"] = {"C","C"},["mountspeedfree"] = {"C","C"},["needmountspeed"] = {"C","C"},["somemountspeed"] = {"C","C"},["withmountspeed"] = {"C","C"},["mountspeedplease"] = {"C","C"},["mountspeedpst"] = {"C","C"},
["anymovespeed"] = {"C","C"},["anyonemovespeed"] = {"C","C"},["movespeedaround"] = {"C","C"},["domovespeed"] = {"C","C"},["havemovespeed"] = {"C","C"},["freemovespeed"] = {"C","C"},["movespeedfree"] = {"C","C"},["needmovespeed"] = {"C","C"},["somemovespeed"] = {"C","C"},["withmovespeed"] = {"C","C"},["movespeedplease"] = {"C","C"},["movespeedpst"] = {"C","C"},
["anyresistall"] = {"C","C"},["anyoneresistall"] = {"C","C"},["resistallaround"] = {"C","C"},["doresistall"] = {"C","C"},["haveresistall"] = {"C","C"},["freeresistall"] = {"C","C"},["resistallfree"] = {"C","C"},["needresistall"] = {"C","C"},["someresistall"] = {"C","C"},["withresistall"] = {"C","C"},["resistallplease"] = {"C","C"},["resistallpst"] = {"C","C"},
["anyridingskill"] = {"C","C"},["anyoneridingskill"] = {"C","C"},["ridingskillaround"] = {"C","C"},["doridingskill"] = {"C","C"},["haveridingskill"] = {"C","C"},["freeridingskill"] = {"C","C"},["ridingskillfree"] = {"C","C"},["needridingskill"] = {"C","C"},["someridingskill"] = {"C","C"},["withridingskill"] = {"C","C"},["ridingskillplease"] = {"C","C"},["ridingskillpst"] = {"C","C"},
["anyrunspeed"] = {"C","C"},["anyonerunspeed"] = {"C","C"},["runspeedaround"] = {"C","C"},["dorunspeed"] = {"C","C"},["haverunspeed"] = {"C","C"},["freerunspeed"] = {"C","C"},["runspeedfree"] = {"C","C"},["needrunspeed"] = {"C","C"},["somerunspeed"] = {"C","C"},["withrunspeed"] = {"C","C"},["runspeedplease"] = {"C","C"},["runspeedpst"] = {"C","C"},
["anystats"] = {"C","C"},["anyonestats"] = {"C","C"},["statsaround"] = {"C","C"},["dostats"] = {"C","C"},["havestats"] = {"C","C"},["freestats"] = {"C","C"},["statsfree"] = {"C","C"},["needstats"] = {"C","C"},["somestats"] = {"C","C"},["withstats"] = {"C","C"},["statsplease"] = {"C","C"},["statspst"] = {"C","C"},
["anyunholy"] = {"C","C"},["anyoneunholy"] = {"C","C"},["unholyaround"] = {"C","C"},["dounholy"] = {"C","C"},["haveunholy"] = {"C","C"},["freeunholy"] = {"C","C"},["unholyfree"] = {"C","C"},["needunholy"] = {"C","C"},["someunholy"] = {"C","C"},["withunholy"] = {"C","C"},["unholyplease"] = {"C","C"},["unholypst"] = {"C","C"},
["anyvampirism"] = {"C","C"},["anyonevampirism"] = {"C","C"},["vampirismaround"] = {"C","C"},["dovampirism"] = {"C","C"},["havevampirism"] = {"C","C"},["freevampirism"] = {"C","C"},["vampirismfree"] = {"C","C"},["needvampirism"] = {"C","C"},["somevampirism"] = {"C","C"},["withvampirism"] = {"C","C"},["vampirismplease"] = {"C","C"},["vampirismpst"] = {"C","C"},
["anywintersmight"] = {"C","C"},["anyonewintersmight"] = {"C","C"},["wintersmightaround"] = {"C","C"},["dowintersmight"] = {"C","C"},["havewintersmight"] = {"C","C"},["freewintersmight"] = {"C","C"},["wintersmightfree"] = {"C","C"},["needwintersmight"] = {"C","C"},["somewintersmight"] = {"C","C"},["withwintersmight"] = {"C","C"},["wintersmightplease"] = {"C","C"},["wintersmightpst"] = {"C","C"},
["anypotion"] = {"C","C"},["anyonepotion"] = {"C","C"},["potionaround"] = {"C","C"},["dopotion"] = {"C","C"},["havepotion"] = {"C","C"},["freepotion"] = {"C","C"},["potionfree"] = {"C","C"},["needpotion"] = {"C","C"},["somepotion"] = {"C","C"},["withpotion"] = {"C","C"},["potionplease"] = {"C","C"},["potionpst"] = {"C","C"},
["anyarcanum"] = {"C","C"},["anyonearcanum"] = {"C","C"},["arcanumaround"] = {"C","C"},["doarcanum"] = {"C","C"},["havearcanum"] = {"C","C"},["freearcanum"] = {"C","C"},["arcanumfree"] = {"C","C"},["needarcanum"] = {"C","C"},["somearcanum"] = {"C","C"},["witharcanum"] = {"C","C"},["arcanumplease"] = {"C","C"},["arcanumpst"] = {"C","C"},
["anymagewater"] = {"C","C"},["anyonemagewater"] = {"C","C"},["magewateraround"] = {"C","C"},["domagewater"] = {"C","C"},["havemagewater"] = {"C","C"},["freemagewater"] = {"C","C"},["magewaterfree"] = {"C","C"},["needmagewater"] = {"C","C"},["somemagewater"] = {"C","C"},["withmagewater"] = {"C","C"},["magewaterplease"] = {"C","C"},["magewaterpst"] = {"C","C"},

["havewater"] = {"C","A"},["freewater"] = {"C","A"},["waterfree"] = {"C","C"},["needwater"] = {"C","A"},["somewater"] = {"C","A"},
["havebar"] = {"C","A"},["freebar"] = {"C","A"},["barfree"] = {"C","C"},["needbar"] = {"C","A"},["somebar"] = {"C","A"},
["havecloth"] = {"C","A"},["freecloth"] = {"C","A"},["clothfree"] = {"C","C"},["needcloth"] = {"C","A"},["somecloth"] = {"C","A"},
["haveore"] = {"C","A"},["freeore"] = {"C","A"},["orefree"] = {"C","C"},["needore"] = {"C","A"},["someore"] = {"C","A"},
["havestone"] = {"C","A"},["freestone"] = {"C","A"},["stonefree"] = {"C","C"},["needstone"] = {"C","A"},["somestone"] = {"C","A"},

-- Enchant
["clothleatherworker"] = {"A","A"},["leatherworkercloth"] = {"A","A"},["orecloth"] = {"A","A"},["barcloth"] = {"A","A"},["stonecloth"] = {"A","A"},["clothforleatherworker"] = {"A","C"},["leatherworkerforcloth"] = {"A","C"},["oreforcloth"] = {"A","C"},["barforcloth"] = {"A","C"},["stoneforcloth"] = {"A","C"},
["clothore"] = {"A","A"},["leatherworkerore"] = {"A","A"},["oreleatherworker"] = {"A","A"},["barleatherworker"] = {"A","A"},["stoneleatherworker"] = {"A","A"},["clothforore"] = {"A","C"},["leatherworkerforore"] = {"A","C"},["oreforleatherworker"] = {"A","C"},["barforleatherworker"] = {"A","C"},["stoneforleatherworker"] = {"A","C"},
["clothbar"] = {"A","A"},["leatherworkerbar"] = {"A","A"},["orebar"] = {"A","A"},["barore"] = {"A","A"},["stoneore"] = {"A","A"},["clothforbar"] = {"A","C"},["leatherworkerforbar"] = {"A","C"},["oreforbar"] = {"A","C"},["barforore"] = {"A","C"},["stoneforore"] = {"A","C"},
["clothstone"] = {"A","A"},["leatherworkerstone"] = {"A","A"},["orestone"] = {"A","A"},["barstone"] = {"A","A"},["stonebar"] = {"A","A"},["clothforstone"] = {"A","C"},["leatherworkerforstone"] = {"A","C"},["oreforstone"] = {"A","C"},["barforstone"] = {"A","C"},["stoneforbar"] = {"A","C"},

["strengthhead"] = {"A","C"},["agilityhead"] = {"A","C"},["frhead"] = {"A","C"},["arhead"] = {"A","C"},["srhead"] = {"A","C"},["nrhead"] = {"A","C"},["staminahead"] = {"A","C"},["healthhead"] = {"A","C"},["hphead"] = {"A","C"},["aphead"] = {"A","C"},["spelldamagehead"] = {"A","C"},["hastehead"] = {"A","C"},["hithead"] = {"A","C"},["manahead"] = {"A","C"},["mphead"] = {"A","C"},
["strengthlegs"] = {"A","C"},["agilitylegs"] = {"A","C"},["frlegs"] = {"A","C"},["arlegs"] = {"A","C"},["srlegs"] = {"A","C"},["nrlegs"] = {"A","C"},["staminalegs"] = {"A","C"},["healthlegs"] = {"A","C"},["hplegs"] = {"A","C"},["aplegs"] = {"A","C"},["spelldamagelegs"] = {"A","C"},["hastelegs"] = {"A","C"},["hitlegs"] = {"A","C"},["manalegs"] = {"A","C"},["mplegs"] = {"A","C"},
["headstrength"] = {"C","A"},["headagility"] = {"C","A"},["headfr"] = {"C","A"},["headar"] = {"C","A"},["headsr"] = {"C","A"},["headnr"] = {"C","A"},["headstamina"] = {"C","A"},["headhealth"] = {"C","A"},["headhp"] = {"C","A"},["headap"] = {"C","A"},["headspelldamage"] = {"C","A"},["headhaste"] = {"C","A"},["headhit"] = {"C","A"},["headmana"] = {"C","A"},["headmp"] = {"C","A"},
["legsstrength"] = {"C","A"},["legsagility"] = {"C","A"},["legsfr"] = {"C","A"},["legsar"] = {"C","A"},["legssr"] = {"C","A"},["legsnr"] = {"C","A"},["legsstamina"] = {"C","A"},["legshealth"] = {"C","A"},["legshp"] = {"C","A"},["legsap"] = {"C","A"},["legsspelldamage"] = {"C","A"},["legshaste"] = {"C","A"},["legshit"] = {"C","A"},["legsmana"] = {"C","A"},["legsmp"] = {"C","A"},
["firering"] = {"A","C"},["arcanering"] = {"A","C"},["frring"] = {"A","C"},["arring"] = {"A","C"},["srring"] = {"A","C"},["nrring"] = {"A","C"},["firedamagering"] = {"A","C"},["arcanedamagering"] = {"A","C"},["intellectring"] = {"A","C"},["agilityring"] = {"A","C"},["staminaring"] = {"A","C"},["strengthring"] = {"A","C"},["vampirismring"] = {"A","C"},["spiritring"] = {"A","C"},["healring"] = {"A","C"},["blockring"] = {"A","C"},["armorring"] = {"A","C"},["mpring"] = {"A","C"},["statsring"] = {"A","C"},["spelldamagering"] = {"A","C"},
["fireneck"] = {"A","C"},["arcaneneck"] = {"A","C"},["frneck"] = {"A","C"},["arneck"] = {"A","C"},["srneck"] = {"A","C"},["nrneck"] = {"A","C"},["firedamageneck"] = {"A","C"},["arcanedamageneck"] = {"A","C"},["intellectneck"] = {"A","C"},["agilityneck"] = {"A","C"},["staminaneck"] = {"A","C"},["strengthneck"] = {"A","C"},["vampirismneck"] = {"A","C"},["spiritneck"] = {"A","C"},["healneck"] = {"A","C"},["blockneck"] = {"A","C"},["armorneck"] = {"A","C"},["mpneck"] = {"A","C"},["statsneck"] = {"A","C"},["spelldamageneck"] = {"A","C"},
["ringfire"] = {"C","A"},["ringarcane"] = {"C","A"},["ringfr"] = {"C","A"},["ringar"] = {"C","A"},["ringsr"] = {"C","A"},["ringnr"] = {"C","A"},["ringfiredamage"] = {"C","A"},["ringarcanedamage"] = {"C","A"},["ringintellect"] = {"C","A"},["ringagility"] = {"C","A"},["ringstamina"] = {"C","A"},["ringstrength"] = {"C","A"},["ringvampirism"] = {"C","A"},["ringspirit"] = {"C","A"},["ringheal"] = {"C","A"},["ringblock"] = {"C","A"},["ringarmor"] = {"C","A"},["ringmp"] = {"C","A"},["ringstats"] = {"C","A"},["ringspelldamage"] = {"C","A"},
["neckfire"] = {"C","A"},["neckarcane"] = {"C","A"},["neckfr"] = {"C","A"},["neckar"] = {"C","A"},["necksr"] = {"C","A"},["necknr"] = {"C","A"},["neckfiredamage"] = {"C","A"},["neckarcanedamage"] = {"C","A"},["neckintellect"] = {"C","A"},["neckagility"] = {"C","A"},["neckstamina"] = {"C","A"},["neckstrength"] = {"C","A"},["neckvampirism"] = {"C","A"},["neckspirit"] = {"C","A"},["neckheal"] = {"C","A"},["neckblock"] = {"C","A"},["neckarmor"] = {"C","A"},["neckmp"] = {"C","A"},["neckstats"] = {"C","A"},["neckspelldamage"] = {"C","A"},
["agilitycloak"] = {"A","C"},["armorcloak"] = {"A","C"},["resistcloak"] = {"A","C"},["allresistcloak"] = {"A","C"},["resistallcloak"] = {"A","C"},["frcloak"] = {"A","C"},["srcloak"] = {"A","C"},["nrcloak"] = {"A","C"},["arcloak"] = {"A","C"},["dodgecloak"] = {"A","C"},["subtletycloak"] = {"A","C"},["stealthcloak"] = {"A","C"},
["agilityback"] = {"A","C"},["armorback"] = {"A","C"},["resistback"] = {"A","C"},["allresistback"] = {"A","C"},["resistallback"] = {"A","C"},["frback"] = {"A","C"},["srback"] = {"A","C"},["nrback"] = {"A","C"},["arback"] = {"A","C"},["dodgeback"] = {"A","C"},["subtletyback"] = {"A","C"},["stealthback"] = {"A","C"},
["cloakagility"] = {"C","A"},["cloakarmor"] = {"C","A"},["cloakresist"] = {"C","A"},["cloakallresist"] = {"C","A"},["cloakresistall"] = {"C","A"},["cloakfr"] = {"C","A"},["cloaksr"] = {"C","A"},["cloaknr"] = {"C","A"},["cloakar"] = {"C","A"},["cloakdodge"] = {"C","A"},["cloaksubtlety"] = {"C","A"},["cloakstealth"] = {"C","A"},
["backagility"] = {"C","A"},["backarmor"] = {"C","A"},["backresist"] = {"C","A"},["backallresist"] = {"C","A"},["backresistall"] = {"C","A"},["backfr"] = {"C","A"},["backsr"] = {"C","A"},["backnr"] = {"C","A"},["backar"] = {"C","A"},["backdodge"] = {"C","A"},["backsubtlety"] = {"C","A"},["backstealth"] = {"C","A"},
["mpchest"] = {"A","C"},["statschest"] = {"A","C"},["healthchest"] = {"A","C"},["manachest"] = {"A","C"},
["chestmp"] = {"C","A"},["cheststats"] = {"C","A"},["chesthealth"] = {"C","A"},["chestmana"] = {"C","A"},
["strengthwrist"] = {"A","C"},["staminawrist"] = {"A","C"},["intellectwrist"] = {"A","C"},["spelldamagewrist"] = {"A","C"},["healwrist"] = {"A","C"},["mpwrist"] = {"A","C"},["agilitywrist"] = {"A","C"},["defensewrist"] = {"A","C"},["vampirismwrist"] = {"A","C"},["spiritwrist"] = {"A","C"},["healthwrist"] = {"A","C"},
["wriststrength"] = {"C","A"},["wriststamina"] = {"C","A"},["wristintellect"] = {"C","A"},["wristspelldamage"] = {"C","A"},["wristheal"] = {"C","A"},["wristmp"] = {"C","A"},["wristagility"] = {"C","A"},["wristdefense"] = {"C","A"},["wristvampirism"] = {"C","A"},["wristspirit"] = {"C","A"},["wristhealth"] = {"C","A"},
["agilitygloves"] = {"A","C"},["strengthgloves"] = {"A","C"},["hastegloves"] = {"A","C"},["ridinggloves"] = {"A","C"},["ridingskillgloves"] = {"A","C"},["mountspeedgloves"] = {"A","C"},["arcanegloves"] = {"A","C"},["shadowgloves"] = {"A","C"},["firegloves"] = {"A","C"},["naturegloves"] = {"A","C"},["healgloves"] = {"A","C"},["spelldamagegloves"] = {"A","C"},["threatgloves"] = {"A","C"},["herbgloves"] = {"A","C"},["skingloves"] = {"A","C"},["fishgloves"] = {"A","C"},["minegloves"] = {"A","C"},
["agilityhand"] = {"A","C"},["strengthhand"] = {"A","C"},["hastehand"] = {"A","C"},["ridinghand"] = {"A","C"},["ridingskillhand"] = {"A","C"},["mountspeedhand"] = {"A","C"},["arcanehand"] = {"A","C"},["shadowhand"] = {"A","C"},["firehand"] = {"A","C"},["naturehand"] = {"A","C"},["healhand"] = {"A","C"},["spelldamagehand"] = {"A","C"},["threathand"] = {"A","C"},["herbhand"] = {"A","C"},["skinhand"] = {"A","C"},["fishhand"] = {"A","C"},["minehand"] = {"A","C"},
["glovesagility"] = {"C","A"},["glovesstrength"] = {"C","A"},["gloveshaste"] = {"C","A"},["glovesriding"] = {"C","A"},["glovesridingskill"] = {"C","A"},["glovesmountspeed"] = {"C","A"},["glovesarcane"] = {"C","A"},["glovesshadow"] = {"C","A"},["glovesfire"] = {"C","A"},["glovesnature"] = {"C","A"},["glovesheal"] = {"C","A"},["glovesspelldamage"] = {"C","A"},["glovesthreat"] = {"C","A"},["glovesherb"] = {"C","A"},["glovesskin"] = {"C","A"},["glovesfish"] = {"C","A"},["glovesmine"] = {"C","A"},
["handagility"] = {"C","A"},["handstrength"] = {"C","A"},["handhaste"] = {"C","A"},["handriding"] = {"C","A"},["handridingskill"] = {"C","A"},["handmountspeed"] = {"C","A"},["handarcane"] = {"C","A"},["handshadow"] = {"C","A"},["handfire"] = {"C","A"},["handnature"] = {"C","A"},["handheal"] = {"C","A"},["handspelldamage"] = {"C","A"},["handthreat"] = {"C","A"},["handherb"] = {"C","A"},["handskin"] = {"C","A"},["handfish"] = {"C","A"},["handmine"] = {"C","A"},
["staminashield"] = {"A","C"},["spiritshield"] = {"A","C"},["blockshield"] = {"A","C"},
["shieldstamina"] = {"C","A"},["shieldspirit"] = {"C","A"},["shieldblock"] = {"C","A"},
["staminaboots"] = {"A","C"},["mpboots"] = {"A","C"},["spiritboots"] = {"A","C"},["speedboots"] = {"A","C"},["minorspeedboots"] = {"A","C"},["runspeedboots"] = {"A","C"},["movespeedboots"] = {"A","C"},["healboots"] = {"A","C"},["vampirismboots"] = {"A","C"},["agilityboots"] = {"A","C"},
["bootsstamina"] = {"C","A"},["bootsmp"] = {"C","A"},["bootsspirit"] = {"C","A"},["bootsspeed"] = {"C","A"},["bootsminorspeed"] = {"C","A"},["bootsrunspeed"] = {"C","A"},["bootsmovespeed"] = {"C","A"},["bootsheal"] = {"C","A"},["bootsvampirism"] = {"C","A"},["bootsagility"] = {"C","A"},
["spelldamageweapon"] = {"A","C"},["damageweapon"] = {"A","C"},["spiritweapon"] = {"A","C"},["intellectweapon"] = {"A","C"},["lifestealweapon"] = {"A","C"},["crusaderweapon"] = {"A","C"},["healweapon"] = {"A","C"},["unholyweapon"] = {"A","C"},["strengthweapon"] = {"A","C"},["agilityweapon"] = {"A","C"},["icyweapon"] = {"A","C"},["icychillweapon"] = {"A","C"},["fieryweapon"] = {"A","C"},["strikingweapon"] = {"A","C"},["demonslayingweapon"] = {"A","C"},["wintersmightweapon"] = {"A","C"},["beastslayerweapon"] = {"A","C"},["glowweapon"] = {"A","C"},
["weaponspelldamage"] = {"C","A"},["weapondamage"] = {"C","A"},["weaponspirit"] = {"C","A"},["weaponintellect"] = {"C","A"},["weaponlifesteal"] = {"C","A"},["weaponcrusader"] = {"C","A"},["weaponheal"] = {"C","A"},["weaponunholy"] = {"C","A"},["weaponstrength"] = {"C","A"},["weaponagility"] = {"C","A"},["weaponicy"] = {"C","A"},["weaponicychill"] = {"C","A"},["weaponfiery"] = {"C","A"},["weaponstriking"] = {"C","A"},["weapondemonslaying"] = {"C","A"},["weaponwintersmight"] = {"C","A"},["weaponbeastslayer"] = {"C","A"},["weaponglow"] = {"C","A"},
["agilitybelt"] = {"A","C"},["resistbelt"] = {"A","C"},["intellectbelt"] = {"A","C"},["defensebelt"] = {"A","C"},["staminabelt"] = {"A","C"},["strengthbelt"] = {"A","C"},["nrbelt"] = {"A","C"},["srbelt"] = {"A","C"},["frbelt"] = {"A","C"},["arbelt"] = {"A","C"},
["agilitybeltbuckle"] = {"A","C"},["resistbeltbuckle"] = {"A","C"},["intellectbeltbuckle"] = {"A","C"},["defensebeltbuckle"] = {"A","C"},["staminabeltbuckle"] = {"A","C"},["strengthbeltbuckle"] = {"A","C"},["nrbeltbuckle"] = {"A","C"},["srbeltbuckle"] = {"A","C"},["frbeltbuckle"] = {"A","C"},["arbeltbuckle"] = {"A","C"},
["beltagility"] = {"C","A"},["beltresist"] = {"C","A"},["beltintellect"] = {"C","A"},["beltdefense"] = {"C","A"},["beltstamina"] = {"C","A"},["beltstrength"] = {"C","A"},["beltnr"] = {"C","A"},["beltsr"] = {"C","A"},["beltfr"] = {"C","A"},["beltar"] = {"C","A"},
["beltbuckleagility"] = {"C","A"},["beltbuckleresist"] = {"C","A"},["beltbuckleintellect"] = {"C","A"},["beltbuckledefense"] = {"C","A"},["beltbucklestamina"] = {"C","A"},["beltbucklestrength"] = {"C","A"},["beltbucklenr"] = {"C","A"},["beltbucklesr"] = {"C","A"},["beltbucklefr"] = {"C","A"},["beltbucklear"] = {"C","A"},
["agilitygem"] = {"A","C"},["resistgem"] = {"A","C"},["intellectgem"] = {"A","C"},["defensegem"] = {"A","C"},["staminagem"] = {"A","C"},["strengthgem"] = {"A","C"},["nrgem"] = {"A","C"},["srgem"] = {"A","C"},["frgem"] = {"A","C"},["argem"] = {"A","C"},
["agilitygemstone"] = {"A","C"},["resistgemstone"] = {"A","C"},["intellectgemstone"] = {"A","C"},["defensegemstone"] = {"A","C"},["staminagemstone"] = {"A","C"},["strengthgemstone"] = {"A","C"},["nrgemstone"] = {"A","C"},["srgemstone"] = {"A","C"},["frgemstone"] = {"A","C"},["argemstone"] = {"A","C"},
["gemagility"] = {"C","A"},["gemresist"] = {"C","A"},["gemintellect"] = {"C","A"},["gemdefense"] = {"C","A"},["gemstamina"] = {"C","A"},["gemstrength"] = {"C","A"},["gemnr"] = {"C","A"},["gemsr"] = {"C","A"},["gemfr"] = {"C","A"},["gemar"] = {"C","A"},
["gemstoneagility"] = {"C","A"},["gemstoneresist"] = {"C","A"},["gemstoneintellect"] = {"C","A"},["gemstonedefense"] = {"C","A"},["gemstonestamina"] = {"C","A"},["gemstonestrength"] = {"C","A"},["gemstonenr"] = {"C","A"},["gemstonesr"] = {"C","A"},["gemstonefr"] = {"C","A"},["gemstonear"] = {"C","A"},
}
GF_WORD_FIX_LFM = {
["ant"] = "any",
}
GF_WORD_FIX_BEFORE_QUEST = {
-- Misc misspellings
["alla"] = "all",["anu"] = "any",["anny"] = "any",["anyy"] = "any",["zny"] = "any",["annyone"] = "anyone",["anoyone"] = "anyone",["anygabo"] = "anyone",["anyione"] = "anyone",["anyne"] = "anyone",["anyoen"] = "anyone",
["anyon"] = "anyone",["neva"] = "never",["anyoneon"] = "anyone",["anyonne"] = "anyone",["anyoneh"] = "anyone",["anyonw"] = "anyone",["anyoone"] = "anyone",["enyone"] = "anyone",["anyb"] = "anyone",
["anymf"] = "anyone",["abybody"] = "anyone",["anynbody"] = "anyone",["sombody"] = "anyone",["anykne"] = "anyone",["anoyne"] = "anyone",["anybdy"] = "anyone",
["anyyone"] = "anyone",["aynone"] = "anyone",["someoe"] = "anyone",["gogo"] = "gogo",["leggs"] = "legs",["legss"] = "legs",["whos"] = "who",["trough"] = "through",["doo"] = "do",["toodo"] = "todo",["upup"] = "up",["vailable"] = "available",
["appreciatedd"] = "appreciate",["apreciated"] = "appreciate",["appreciated"] = "appreciate",["arround"] = "around",["arund"] = "around",["attachd"] = "apply",["attachin"] = "apply",["opne"] = "open",["opex"] = "open",["mointain"] = "mountain",
["attachng"] = "apply",["avaiable"] = "around",["availabe"] = "around",["avaliable"] = "around",["baggs"] = "bag",["beaut"] = "beauty",["boes"] = "boe",["bullys"] = "bully",["thnk"] = "think",["somthing"] = "something",
["captaions"] = "captains",["causual"] = "casual",["casul"] = "casual",["chann"] = "channel",["channl"] = "channel",["chasam"] = "chasm",["comission"] = "commission",["whisp"] = "whisper",
["courrier"] = "courier",["creascent"] = "crescent",["cres"] = "crescent",["cresant"] = "crescent",["crescant"] = "crescent",["cresecnt"] = "crescent",["cresent"] = "crescent",["croscent"] = "crescent",
["deathrollerz"] = "deathroll",["deathrollz"] = "deathroll",["dthroller"] = "deathroll",["dthrollers"] = "deathroll",["dthrollerz"] = "deathroll",["deathroll"] = "deathrollw",["deathrollaz"] = "deathroll",
["descriminate"] = "discriminate",["descrimination"] = "discrimination",["discriminatng"] = "discriminating",["dkk"] = "dk",["doenst"] = "doesnt",["doin"] = "doing",["xroads"] = "crossroads",
["dowse"] = "douse",["dowsers"] = "douse",["dowses"] = "douse",["dredsteed"] = "dreadsteed",["dsaur"] = "devilsaur",["groove"] = "grove",["cinders"] = "cinder",["warson"] = "warsong",
["experiance"] = "experience",["experianced"] = "experience",["extreamly"] = "extremely",["femb"] = "femboy",["femboi"] = "femboy",["foutain"] = "fountain",["fontain"] = "fountain",["fauntain"] = "fountain",["coem"] = "come",
["fore"] = "for",["forr"] = "for",["gankin"] = "gank",["git"] = "get",["gnom"] = "gnome",["grav"] = "gy",["gravyard"] = "gy",["fahtom"] = "fathom",["proffs"] = "profession",["fucking"] = "fuck",["fking"] = "fuck",["fucks"] = "fuck",
["groovee"] = "grove",["grovee"] = "grove",["grve"] = "grove",["gorves"] = "grove",["gyy"] = "gy",["gyyard"] = "gy",["helpr"] = "help",["imaigine"] = "imagine",["sry"] = "sorry",["sory"] = "sorry",["srry"] = "sorry",
["imossible"] = "impossible",["installd"] = "apply",["installin"] = "apply",["installng"] = "apply",["insterested "] = "interested",["intrested"] = "interested",["ist"] = "is",["jion"] = "join",
["invtie"] = "invite",["invita"] = "invite",["inv"] = "invite",["ginv"] = "ginvite",["gadge"] = "gadget",["hygal"] = "hyjal",["moongloth"] = "mooncloth",["coupl"] = "couple",["weith"] = "with",["farmm"] = "farm",
["joiin"] = "join",["joinn"] = "join",["joinon"] = "join",["jooin"] = "join",["lecel"] = "level",["lel"] = "lol",["leveel"] = "level",["levelling"] = "leveling",["lvlving"] = "leveling",["leveln"] = "leveling",
["levelnig"] = "leveling",["leveluing"] = "leveling",["levl"] = "level",["levlers"] = "leveling",["levlin"] = "leveling",["levling"] = "leveling",["levln"] = "leveling",["fro"] = "for",["allys"] = "alliance",
["loking"] = "looking",["lookign"] = "looking",["lookin"] = "looking",["lookinf"] = "looking",["lst"] = "last",["lvel"] = "level",["lvelin"] = "leveling",["lveln"] = "leveling",["lvln"] = "leveling",
["lvl"] = "level",["lvlers"] = "leveling",["lvlin"] = "leveling",["lvling"] = "leveling",["midnite"] = "midnight",["mithrill"] = "mithril",["mythril"] = "mithril",["mythrin"] = "mithril",["moar"] = "more",["nead"] = "need",["acn"] = "can",
["mounth"] = "mount",["mre"] = "more",["mst"] = "most",["nec"] = "neck",["nedd"] = "need",["neeed"] = "need",["mele"] = "melee",["promie"] = "promise",["acitve"] = "active",["activ"] = "active",
["onl"] = "only",["opein"] = "open",["opeining"] = "opening",["openin"] = "opening",["openingg"] = "opening",["opennin"] = "opening",["openning"] = "opening",["openging"] = "opening",["opning"] = "opening",["openinig"] = "opening",
["orges"] = "ogres",["payng"] = "paying",["pleaasee"] = "please",["pleasee"] = "please",["pleeaasee"] = "please",["pls"] = "please",["plx"] = "please",["likk"] = "kill",["rdy"] = "ready",["whereever"] = "wherever",
["plz"] = "please",["ppl"] = "people",["prot"] = "protection",["pserver"] = "server",["pvper"] = "pvp",["pvpers"] = "pvp",["quatermaster"] = "quartermaster",["randos"] = "random",["faund"] = "found",
["rememberer"] = "remember",["reservd"] = "reserved",["resrved"] = "reserved",["restro"] = "resto",["rhey"] = "they",["rollaz"] = "roller",["rollerz"] = "roller",["rserved"] = "reserved",["chriztian"] = "christian",
["sayin"] = "saying",["scyth"] = "scythe",["seperate"] = "separate",["serber"] = "server",["sercharges"] = "surcharge",["siign"] = "sign",["skullls"] = "skull",["skullz"] = "skull",["plne"] = "plans",
["skulz"] = "skull",["socila"] = "social",["speking"] = "speak",["stac"] = "stack",["stacs"] = "stack",["steek"] = "steel",["strt"] = "start",["subelty"] = "subtlety",["uselss"] = "useless",["avalaible"] = "available",["avalible"] = "available",
["sublety"] = "subtlety",["subtelity"] = "subtlety",["subtlty"] = "subtlety",["taletns"] = "talents",["taxdeductable"] = "taxdeductible",["thru"] = "through",["togheter"] = "together",["trols"] = "troll",
["tryingh"] = "trying",["tst"] = "test",["u"] = "you",["oyu"] = "you",["unlockin"] = "unlock",["uzp"] = "up",["valey"] = "valley",["vamprism"] = "vampirism",["vampyrsm"] = "vampirism",["campyrsm"] = "vampirism",["voult"] = "vault",
["orananges"] = "oranges",["orange"] = "oranges",["orannges"] = "oranges",["oranages"] = "oranges",["oraanges"] = "oranges",["orangges"] = "oranges",["orranges"] = "oranges",["orrangges"] = "oranges",["skinn"] = "skin",["skint"] = "skin",
["whho"] = "who",["wat"] = "what",["waht"] = "what",["welcme"] = "welcome",["wordl"] = "world",["wsgg"] = "wsg",["wssg"] = "wsg",["minning"] = "mine",["arcan"] = "arcane",["arcandamage"] = "arcanedamage",["arcandmg"] = "arcanedamage",
["casle"] = "castle",["castl"] = "castle",["cstle"] = "castle",["guilf"] = "guild",["andorhall"] = "andorhal",["apopli"] = "apply",["thoirum"] = "thorium",["spijes"] = "spike",["suneyglade"] = "sunnyglade",["sunneyglade"] = "sunnyglade",
["stormwrough"] = "stormwrought",["stormwrot"] = "stormwrought",["stormwrat"] = "stormwrought",["stormwraught"] = "stormwrought",["stormwraugh"] = "stormwrought",["aat"] = "at",["anat"] = "at",["aif"] = "if",["anif"] = "if",
["stormthrought"] = "stormwrought",["stormthraught"] = "stormwrought",["stormwraght"] = "stormwrought",["stormwrougt"] = "stormwrought",["sortmwrought"] = "stormwrought",["whereda"] = "where",["whenda"] = "when",
["stormraught"] = "stormwrought",["stormrought"] = "stormwrought",["stormwought"] = "stormwrought",["stormwaught"] = "stormwrought",["stormroght"] = "stormwrought",["stormraght"] = "stormwrought",
["stormwot"] = "stormwrought",["stormraut"] = "stormwrought",["stormrot"] = "stormwrought",["stormrough"] = "stormwrought",["stormwroug"] = "stormwrought",["shtorm"] = "storm",["strst"] = "strat",
["onlinee"] = "around",["paty"] = "group",["paryfor"] = "groupfor",["shpeed"] = "speed",["bankk"] = "bank",["ambiance"] = "ambience",["ambient"] = "ambience",["ambient"] = "ambience",
["agane"] = "again",["agen"] = "again",["ruinss"] = "ruins",["ldaf"] = "lf",["cheapzor"] = "cheap",["liutenant"] = "lieutenant",["alvaroid"] = "alverold",["souther"] = "southern",["escourts"] = "escort",["escourt"] = "escort",

-- Slang/Curse
["shits"] = "shit",["shitty"] = "shit",["shity"] = "shit",["shhitty"] = "shit",

-- Roles
["healz"] = "heal",["healere"] = "heal",["healre"] = "heal",["xheal"] = "heal",["mheal"] = "heal",["heaer"] = "heal",["healler"] = "heal",["heler"] = "heal",["hral"] = "heal",
["hraler"] = "heal",["hralers"] = "heal",["hraling"] = "heal",["healy"] = "heal",["healie"] = "heal",
["dmg"] = "damage",["dpser"] = "damage",["dpsers"] = "damage",["dps"] = "damage",
["dos"] = "damage",["dpss"] = "damage",["dd"] = "damage",["dds"] = "damage",["xdamage"] = "damage",["damagg"] = "damage",["domage"] = "damage",
["tankd"] = "tank",["xtank"] = "tank",["mtank"] = "tank",["tnak"] = "tank",["tanmk"] = "tank",["tankk"] = "tank",
["rdamage"] = "damage",["mdamage"] = "melee",["rangedamage"] = "damage",["meleedamage"] = "damage",["stealthie"] = "stealth",

["grp"] = "group",["grps"] = "group",["grup"] = "group",["groupg"] = "group",["quets"] = "quest",["qujests"] = "quest",["qst"] = "quest",
["rading"] = "raid",["rlading"] = "raid",["dungs"] = "dungeon",["dungen"] = "dungeon",["dungens"] = "dungeon",["dunjn"] = "dungeon",["dongeon"] = "dungeon",
["reput"] = "rep",["repu"] = "rep",

["que"] = "queue",["q"] = "queue",["qeue"] = "queue",["qs"] = "queue",["qeues"] = "queue",["qued"] = "queue",["ques"] = "queue",["quee"] = "queue",
["premdae"] = "premade",

["elit"] = "elite",["leet"] = "elite",["leets"] = "elite",["eliteq"] = "elite",["elitue"] = "elite",["elites"] = "elite",["elties"] = "elite",["eilite"] = "elite",["elitres"] = "elite",
["elire"] = "elite",["elits"] = "elite",["eilte"] = "elite",["elete"] = "elite",["eletes"] = "elite",["elitte"] = "elite",

-- Foreign Conversions
["encantamientodebotas"] = "enchantboots",["encantamientodeescudo"] = "enchantshield",["encantarbrazalete"] = "enchantwrist",
["encantamiento"] = "enchant",["encantar"] = "enchant",
["strkt"] = "strkt",["zwei"] = "two",["auf"] = "on",["der"] = "the",["nach"] = "for",["noch"] = "more",["junge"] = "new",["und"] = "and",["questen"] = "quest",["und"] = "and",
["gibteshier"] = "lf",
["deutsche"] = "german",["deutsch"] = "german",["deutschen"] = "german",["norsk"] = "norwegian",
["suche"] = "search",["sucht"] = "search",["suchst"] = "searching",["ichsuchene"] = "lf",["gesuchtwird"] = "lf",["lfeiner"] = "lf",["searchgroe"] = "lf",
["montag"] = "monday",["dienstag"] = "tuesday",["mittwoch"] = "wednesday",["donnerstag"] = "thursday",["freitag"] = "friday",["samstag"] = "saturday",["sonntag"] = "sunday",
["sprachige"] = "speaking",["sprachigen"] = "speaking",["raiden"] = "raid",["frischen"] = "fresh",["abenteuer"] = "adventure",["neues"] = "new",["neuer"] = "new",
["allianz"] = "alliance",
["willkommen"] = "welcoming",
["entspannte"] = "relaxed",
["szuka"] = "lf",["szukam"] = "lf",["cerco"] = "need",
["gelegenheitsplayeraufnimmt"] = "casualplayer",["spieler"] = "player",
["aktive"] = "active",
["busca"] = "lf",
["miembros"] = "members",["niveles"] = "level",
["joineet"] = "join",
["gemeinschaft"] = "community",
["heiler"] = "heal",["dietodeminen"] = "deadmines",
["nekdo"] = "anyone",["nekdoz"] = "anyonefrom",["anyonez"] = "anyonefrom",
["deromanian"] = "romanian",
["gratis"] = "free",
["ukrainska"] = "ukrainian",["romani"] = "romanian",["slovenska"] = "slovak",["brasilia"] = "brazilian",["bulgarski"] = "bulgarian",
["dricks"] = "tip",["uppskattat"] = "appreciate",["schlossknacken"] = "lockbox",

-- Polish
["pokskie"] = "polish",["polakow"] = "polish",["polska"] = "polish",["polskiej"] = "polish",["poszukuje"] = "lf",

["levelingu"] = "leveling",
["chetnych"] = "willing",["szeregi"] = "ranks",["raidowania"] = "raid",["odkrywajac"] = "discovering",["jego"] = "its",["ciekawostki"] = "curiosities",
["wladcaognia"] = "firelord",["namniestraszny"] = "wearenotscared",["piwo"] = "beer",["mypijac"] = "wedrink",["wyzwania"] = "challenge",["kolejne"] = "next",["czekamy"] = "wearewaiting",

-- Italian
["italiana"] = "italian",["italiano"] = "italian",["cerca"] = "search",["nuova"] = "new",["italiani"] = "italian",["giocatori"] = "player",["creazione"] = "create",["interessato"] = "interested",["interesse"] = "interested",

-- Spanish
["varios"] = "various",["horarios"] = "schedules",["tiempo"] = "time",["agujas"] = "needles",["del"] = "of",["cambiar"] = "change",["historia"] = "history",["teatreves"] = "youdare",["nececito"] = "need",["busco"] = "search",
["espaola"] = "spanish",["espaol"] = "spanish",["hispana"] = "spanish",["espaoles"] = "spanish",["latina"] = "spanish",["chilean"] = "spanish",["espanola"] = "spanish",["espanol"] = "spanish",
["alguna"] = "any",["algun"] = "any",["alguno"] = "any",["nuevos"] = "new",["nuevo"] = "new",["este"] = "this",["leveleando"] = "leveling",["lvleando"] = "leveling",
["hablas"] = "speak",

-- Portuguese
["alguma"] = "any",["portuguesa"] = "portuguese",

-- French
["ouvertes"] = "open",["ouvre"] = "open",["plusieurs"] = "several",["semaine"] = "week",["chaque"] = "every",["tous"] = "all",["sont"] = "are",["portes"] = "doors",["joueurs"] = "player",["sympathiques"] = "friendly",["sympathiques"] = "friendly",
["dsirant"] = "desire",["dcouvrir"] = "discover",["francaise"] = "french",["qui"] = "that",["dbutant"] = "beginner",["andbutant"] = "beginner",["chasseur"] = "hunter",["merci"] = "thanks",["niveau"] = "level",["bonsoir"] = "goodday",

["salut"] = "salute",["suis"] = "am",["recherche"] = "searching",["searchingdune"] = "lf",

-- Hungarian
["tagjait"] = "members",["keresi"] = "lf",["aktv"] = "active",["rdekel"] = "interested",["jelentkezzen"] = "apply",["jtrsasg"] = "goodcompany",["segtjkegymst"] = "wehelpeachother",["akitinterested"] = "anyoneinterested",

-- Swedish
["svensk"] = "swedish",["skerfler"] = "lfm",["medlemmar"] = "members",["fokus"] = "focus",["och"] = "and",["mer"] = "more",["lutad"] = "leaning",
["mndag"] = "monday",["tisdag"] = "tuesday",["onsdag"] = "wednesday",["torsdag"] = "thursday",["fredag"] = "friday",["lrdag"] = "saturday",["sndag"] = "sunday",

-- Slavic
["opzoeknaar"] = "lf",["letar"] = "lf",["vstuplyuv"] = "lf",
["raidov"] = "raid",["igrokov"] = "player",["raidov"] = "raid",

-- Guild-related
["rekrutuje"] = "recruiting",["recrutar"] = "recruiting",["recrute"] = "recruiting",["recrut"] = "recruiting",["rekrutiert"] = "recruiting",["recluta"] = "recruiting",["recruting"] = "recruiting",["recruterait"] = "recruiting",
["recrutent"] = "recruiting",["recruteaza"] = "recruiting",["recuiting"] = "recruiting",["reqruiting"] = "recruiting",
["gildia"] = "guild",["gilda"] = "guild",["guilde"] = "guild",["gildiy"] = "guild",["gildiyu"] = "guild",["gildenmitglieder"] = "guild",["gildii"] = "guild",["gildi"] = "guild",["gilduha"] = "guild",["guildy"] = "guild",["guidla"] = "guild",
["gildiu"] = "guild",["gilden"] = "guild",["gildiya"] = "guild",["gildiyi"] = "guild",["gild"] = "guild",["guldia"] = "guild",["guilda"] = "guild",["guil"] = "guild",["guils"] = "guild",["guld"] = "guild",["guildiji"] = "guild",["guildes"] = "guild",
["gildosi"] = "guild",["guile"] = "guild",["giuld"] = "guild",["duild"] = "guild",["gilds"] = "guild",["guildia"] = "guild",["gilde"] = "guild",["gildu"] = "guild",["guildi"] = "guild",["guildet"] = "guild",["gildie"] = "guild",
["progresowania"] = "progression",["progresar"] = "progression",["progreso"] = "progression",["progresshez"] = "progression",["prog"] = "progression",["progressom"] = "progression",["progresando"] = "progressing",["progresowac"] = "progressing",
["komunity"] = "community",["komunite"] = "community",["komunita"] = "community",["comunidad"] = "community",["comunidade"] = "community",["companheiros"] = "community",["compaeros"] = "community",
["eventos"] = "events",
["amigos"] = "friends",["actieve"] = "active",["nederlands"] = "dutch",["nederlandse"] = "dutch",["aktivity"] = "activity",
["raidzeiten"] = "raidtimes",

["ofrecemoscontenido"] = "clearingcontent",

["tusedays"] = "tuesday",
["signups"] = "signup",

-- Other words for processing
["groups"] = "group",["tasks"] = "task",["tests"] = "test",["skulls"] = "skull",["summons"] = "summon",["reputation"] = "rep",["farming"] = "farm",["ranged"] = "range",["raids"] = "raid",["badges"] = "badge",["battlegrounds"] = "battleground",["bgs"] = "bg",
["healing"] = "heal",["heals"] = "heal",["tons"] = "ton",["mats"] = "mat",["mauls"] = "maul",["thunderbluffs"] = "thunderbluff",["socials"] = "social",["guilds"] = "guild",["runs"] = "run",["unlocks"] = "unlock",

["fullset"] = "set",
["ironlockbox"] = "lockbox",["strongironlockbox"] = "lockbox",["bronzelockbox"] = "lockbox",["heavybronzelockbox"] = "lockbox",["ornatebronzelockbox"] = "lockbox",["reinforcedsteellockbox"] = "lockbox",["steelweaponchain"] = "weaponchain",

["gemstones"] = "gemstone",["jewelcrafter"] = "enchant",
["arcaneemeraldgemstone"] = "gemstone",["azerothianrubygemstone"] = "gemstone",["flawlessblackgemstone"] = "gemstone",["stunningimperialgemstone"] = "gemstone",["ancientdwarvengemstone"] = "gemstone",["beautifuldiamondgemstone"] = "gemstone",
["brilliantopalgemstone"] = "gemstone",["elegantemeraldgemstone"] = "gemstone",["enchantedemeraldgemstone"] = "gemstone",["glitteringsapphiregemstone"] = "gemstone",["gloomydiamondgemstone"] = "gemstone",["shiningsapphiregemstone"] = "gemstone",
["temperedazerothiangemstone"] = "gemstone",["unstablearcanegemstone"] = "gemstone",["glowingrubygemstone"] = "gemstone",["illuminatedgemstone"] = "gemstone",["radiantembergemstone"] = "gemstone",["gorgeousmountaingemstone"] = "gemstone",
["resurgedtopazgemstone"] = "gemstone",["drearyopalgemstone"] = "gemstone",["gracefulagategemstone"] = "gemstone",

["lightleather"] = "leather",["mediumleather"] = "leather",["heavyleather"] = "leather",["thickleather"] = "leather",["ruggedleather"] = "leather",
["arcanitebeltbuckle"] = "beltbuckle",["darkironbeltbuckle"] = "beltbuckle",["dragonscalebeltbuckle"] = "beltbuckle",["thoriumbeltbuckle"] = "beltbuckle",["obsidionbeltbuckle"] = "beltbuckle",["goldbeltbuckle"] = "beltbuckle",
["mithrilbeltbuckle"] = "beltbuckle",["enchantedthoriumbeltbuckle"] = "beltbuckle",["truesilverbeltbuckle"] = "beltbuckle",["bloodybeltbuckle"] = "beltbuckle",["dreamsteelbeltbuckle"] = "beltbuckle",
["ironshieldspike"] = "shieldspike",["mithrilshieldspike"] = "shieldspike",["thoriumshieldspike"] = "shieldspike",["spikeshield"] = "shieldspike",

["arcanumoffocus"] = "arcanum",["arcanumofrapidity"] = "arcanum",["arcanumofresilience"] = "arcanum",["arcanumofvoracity"] = "arcanum",["arcanumofprotection"] = "arcanum",
["arcanumofconstitution"] = "arcanum",["arcanumofrumination"] = "arcanum",["arcanumoftenacity"] = "arcanum",

-- Make sure word is recombined
["andsomuchmore"] = "andsomuchmore",["surchargemayapply"] = "surchargemayapply",["anyoneneedthese"] = "anyoneneedthese",["icanprovide"] = "icanprovide",["needtonof"] = "needtonof",["howmuchis"] = "howmuchis",
["thankfulfortip"] = "thankfulfortip",["tipareappreciate"] = "tipareappreciate",["tipareoptional"] = "tipareoptional",["tiparewelcome"] = "tiparewelcome",["tipifyoucan"] = "tipifyoucan",["ihavemat"] = "ihavemat",
["tipisappreciate"] = "tipisappreciate",["tipisoptional"] = "tipisoptional",["tipiswelcome"] = "tipiswelcome",["whisperme"] = "whisperme",["interestedinhitem"] = "interestedinhitem",
["atyourservice"] = "atyourservice",["comegetyour"] = "comegetyour",["havemagefood"] = "havemagefood",["howmuchfor"] = "howmuchfor",["icanprovide"] = "icanprovide",["magefoodwater"] = "magefoodwater",
["plentyofstack"] = "plentyofstack",["canyouopen"] = "canyouopen",["tonofbar"] = "tonofbar",["tonofcloth"] = "tonofcloth",["tonofleather"] = "tonofleather",["tonofore"] = "tonofore",
["tonofstone"] = "tonofstone",["waterforme"] = "waterforme",["youroownmat"] = "youroownmat",["openforme"] = "openforme",["openforyou"] = "openforyou",["needtonsof"] = "needtonsof",
["anyoneneedfree"] = "anyoneneedfree",["anyoneneedthese"] = "anyoneneedthese",["magefoodplease"] = "magefoodplease",["workforfree"] = "workforfree",["roguearoundopen"] = "roguearoundopen",
["rogueforopen"] = "rogueforopen",["roguemindopening"] = "roguemindopening",["unlockyourbox"] = "unlockyourbox",["anyonehavehitem"] = "anyonehavehitem",["anyonewithhitem"] = "anyonewithhitem",
["anywithhitem"] = "anywithhitem",["getyourhitem"] = "getyourhitem",["needthishitem"] = "needthishitem",["openforbusiness"] = "openforbusiness",["shopisopen"] = "shopisopen",["needtomake"] = "needtomake",
["abletounlock"] = "abletounlock",["cananyonepick"] = "cananyonepick",["roguedoinglock"] = "roguedoinglock",["rogueforbox"] = "rogueforbox",["rogueforlock"] = "rogueforlock",["rogueforunlock"] = "rogueforunlock",
["roguetopick"] = "roguetopick",["auctionhouse"] = "auctionhouse",["saltshaker"] = "saltshaker",["middleman"] = "middleman",["mustpaymoney"] = "mustpaymoney",["signup"] = "signup",

-- Professions
["bs"] = "blacksmith",["bss"] = "blacksmith",["blacmiting"] = "blacksmith",["blacskmith"] = "blacksmith",["blacsmiting"] = "blacksmith",["blacksmithw"] = "blacksmith",["bsmith"] = "blacksmith",
["ecnharter"] = "enchant",["encanter"] = "enchant",["entchants"] = "enchant",["enchjanter"] = "enchant",["echnater"] = "enchant",["henchant"] = "enchant",["encahnter"] = "enchant",["enchater"] = "enchant",
["ecnhanter"] = "enchant",["enahtn"] = "enchant",["inchant"] = "enchant",["enchenter"] = "enchant",["enhancter"] = "enchant",["enchaters"] = "enchant",["eanchat"] = "enchant",["enganter"] = "enchant",
["echanter"] = "enchant",["encahtner"] = "enchant",["enchanterd"] = "enchant",["encaht"] = "enchant",["enhanter"] = "enchant",["encahnting"] = "enchant",["ecnhant"] = "enchant",["enchat"] = "enchant",
["enchantement"] = "enchant",["encchanter"] = "enchant",["enchantor"] = "enchant",["encanhter"] = "enchant",["ennchanter"] = "enchant",["encheanter"] = "enchant",["enthanter"] = "enchant",["enchantere"] = "enchant",
["enchantw"] = "enchant",["enchan"] = "enchant",["enchantt"] = "enchant",["ehcnater"] = "enchant",["entchanter"] = "enchant",["enhcanter"] = "enchant",["encahnt"] = "enchant",["enchantsh"] = "enchant",
["nechanting"] = "enchant",["ecnhcanter"] = "enchant",["ecnahter"] = "enchant",["ecnhanters"] = "enchant",["enchance"] = "enchant",["ench"] = "enchant",["encht"] = "enchant",["entchan"] = "enchant",
["enchanct"] = "enchant",["ehchanter"] = "enchant",["enchante"] = "enchant",["enchancter"] = "enchant",["encha"] = "enchant",
["tailorere"] = "tailor",["lw"] = "leatherworker",["letherworker"] = "leatherworker",["leatherworkerw"] = "leatherworker",["lwer"] = "leatherworker",["lwers"] = "leatherworker",
["leatherworing"] = "leatherworker",["letherworing"] = "leatherworker",["leahterworking"] = "leatherworker",
["eng"] = "engineer",["engi"] = "engineer",["engis"] = "engineer",["engenier"] = "engineer",["engener"] = "engineer",["enginer"] = "engineer",["engineerw"] = "engineer",
["alcemist"] = "alchemist",["alchy"] = "alchemist",["alch"] = "alchemist",["alc"] = "alchemist",["alchmy"] = "alchemist",["alcemy"] = "alchemist",["alchemistw"] = "alchemist",["alchemst"] = "alchemist",["alchemyst"] = "alchemist",
["jwl"] = "gem",["jwel"] = "gem",["jewl"] = "gem",

["agi"] = "agility",["agy"] = "agility",["agil"] = "agility",["gai"] = "agility",["aggi"] = "agility",["agilgity"] = "agility",["agiltiy"] = "agility",["str"] = "strength",["ztrenght"] = "strength",["ztrength"] = "strength",["strenght"] = "strength",
["spi"] = "spirit",["spir"] = "spirit",["spt"] = "spirit",["stam"] = "stamina",["sta"] = "stamina",["stami"] = "stamina",["stm"] = "stamina",["int"] = "intellect",["intell"] = "intellect",["intelect"] = "intellect",["hp"] = "health",
["hlth"] = "health",["def"] = "defense",["defence"] = "defense",["glv"] = "gloves",["golves"] = "gloves",["chst"] = "chest",
["brc"] = "wrist",["wri"] = "wrist",["wris"] = "wrist",["brac"] = "wrist",["bracerz"] = "wrist",["braccers"] = "wrist",
["brance"] = "wrist",["braclet"] = "wrist",["clk"] = "cloak",

["wep"] = "weapon",["weap"] = "weapon",["weapn"] = "weapon",["hweapon"] = "weapon",["wpn"] = "weapon",
["helmt"] = "head",["hlmet"] = "head",["buckel"] = "buckle",["bucle"] = "buckle",["bucklet"] = "buckle",["heste"] = "haste",

["fres"] = "fr",["frres"] = "fr",["nres"] = "nr",["sres"] = "sr",["ares"] = "ar",["fireres"] = "fr",["frostres"] = "fr",["natureres"] = "nr",["shadowres"] = "sr",["arcaneres"] = "ar",

-- Trades
["transmut"] = "transmute",["trasmute"] = "transmute",["trasmutes"] = "transmute",["xmute"] = "transmute",["xmutes"] = "transmute",["tmute"] = "transmute",["tmutes"] = "transmute",
["arcbar"] = "arcanite",["arcanebar"] = "arcanite",["arcanitebar"] = "arcanite",["arcanecrystal"] = "arcanite",

["summ"] = "summon",["summonning"] = "summon",["sumonning"] = "summon",["sumoning"] = "summon",["summs"] = "summon",["summpn"] = "summon",["summin"] = "summon",["summv"] = "summon",["sumun"] = "summon",["asummon"] = "summon",
["sumon"] = "summon",["summe"] = "summon",["summonot"] = "summonto",["sumoon"] = "summon",["summns"] = "summon",["sumomn"] = "summon",["sommon"] = "summon",
["tp"] = "portal",["tps"] = "portal",["tele"] = "portal",["prtal"] = "portal",["portl"] = "portal",["protal"] = "portal",["portalot"] = "portal",["porrt"] = "portal",["potal"] = "portal",
["pickerw"] = "pick",["pikcing"] = "pick",["lp"] = "lockbox",["lovkboxes"] = "lockbox",["lockboxxes"] = "lockbox",["lockpoxes"] = "lockbox",["lockp"] = "lockbox",["lockbxes"] = "lockbox",["lockpiker"] = "lockbox",["lockpikers"] = "lockbox",
["locboxes"] = "lockbox",["locbox"] = "lockbox",["lockboxs"] = "lockbox",["lockboxer"] = "lockbox",["lockboxers"] = "lockbox",["boxesd"] = "lockbox",["boxxed"] = "lockbox",["boxe"] = "lockbox",["boxxes"] = "lockbox",["boxs"] = "lockbox",
["loxbox"] = "lockbox",["loxboxes"] = "lockbox",["lockboxx"] = "lockbox",["lockip"] = "lockbox",["lockbox"] = "lockbox",

["lockchest"] = "lockbox",["fastunlock"] = "unlock",["quickunlock"] = "unlock",["batteredlockbox"] = "lockbox",["chunklockbox"] = "lockbox",["peskylockbox"] = "lockbox",

["nlock"] = "unlock",["lockipick"] = "unlock",
["resi"] = "resist",["ressist"] = "resist",["ressistance"] = "resistance",["firey"] = "fiery",["feiry"] = "fiery",
["crus"] = "crusader",["crusarder"] = "crusader",["cursader"] = "crusader",["cruisader"] = "crusader",

["sellinf"] = "selling",["seliing"] = "selling",["selll"] = "sell",["sellg"] = "selling",["seling"] = "selling",["sellng"] = "selling",["buyg"] = "buying",["buyng"] = "buying",
["tipz"] = "tip",["tipp"] = "tip",["tipps"] = "tip",["tipper"] = "tip",["tippers"] = "tip",["tips"] = "tip",["crafterer"] = "crafter",["auct"] = "ah",["auc"] = "ah",
["bosst"] = "boost",["sercives"] = "service",["sercive"] = "service",["cd"] = "cooldown",["cds"] = "cooldown",

-- Locations
["sw"] = "stormwind",["stw"] = "stormwind",["stormwin"] = "stormwind",["stormwnd"] = "stormwind",["strmwind"] = "stormwind",
["tb"] = "thunderbluff",["irongforge"] = "ironforge",["iornforge"] = "ironforge",["darnasus"] = "darnassus",["dranasess"] = "darnassus",["darnasess"] = "darnassus",["darna"] = "darnassus",["darnasuss"] = "darnassus",
["uc"] = "undercity",["undercitry"] = "undercity",["undercirty"] = "undercity",
["org"] = "orgrimmar",["orgr"] = "orgrimmar",["orgri"] = "orgrimmar",["og"] = "orgrimmar",["ogri"] = "orgrimmar",["orgtimar"] = "orgrimmar",["ogrimmar"] = "orgrimmar",["ogrimar"] = "orgrimmar",["oggri"] = "orgrimmar",

["arathihighlinds"] = "arathihighlands",["hghlands"] = "highlands",["highlinds"] = "highlands",["arati"] = "arathi",
["alteriv"] = "alterac",
["azhara"] = "azshara",["ashara"] = "azshara",["azshare"] = "azshara",["azshera"] = "azshara",
["dustwallor"] = "dustwallow",["dustwollow"] = "dustwallow",
["hilsbrad"] = "hillsbrad",["hillsbard"] = "hillsbrad",["hillsbrand"] = "hillsbrad",["hilsbrand"] = "hillsbrad",["inhillsbrad"] = "hillsbrad",
["hinderland"] = "hinterlands",["hiterlands"] = "hinterlands",["hiterland"] = "hinterlands",["hinderlands"] = "hinterlands",["hinerlands"] = "hinterlands",
["hinnterlands"] = "hinterlands",["hhinterlands"] = "hinterlands",["hinterlnds"] = "hinterlands",["sintland"] = "hinterlands",["hitnerlands"] = "hinterlands",["hitnerland"] = "hinterlands",
["hitterlands"] = "hinterlands",["hitterland"] = "hinterlands",["hinterladns"] = "hinterlands",["hinterladn"] = "hinterlands",["hitherland"] = "hinterlands",
["redrige"] = "redridge",["redrodge"] = "redridge",["reddrige"] = "redridge",["redredge"] = "redridge",["rr"] = "redridge",["redridhe"] = "redridge",
["silithis"] = "silithus",["sithilus"] = "silithus",["silitshus"] = "silithus",
["stonrad"] = "stonard",
["strangethorn"] = "stranglethorn",["stranglthorn"] = "stranglethorn",["stranglethrn"] = "stranglethorn",["strangthorn"] = "stranglethorn",["strangethrn"] = "stranglethorn",["vele"] = "vale",
["thersmore"] = "theramore",["theramor"] = "theramore",["theraore"] = "theramore",["thera"] = "theramore",["theramoreisland"] = "theramore",["thermore"] = "theramore",["teramore"] = "theramore",
["wester"] = "western",["plaguages"] = "plaguelands",
["wetland"] = "wetlands",["wetlandss"] = "wetlands",["wetlnds"] = "wetlands",
["wintersp"] = "winterspring",
["hinter"] = "hinterlands",["hinterlandslands"] = "hinterlands",
["gultch"] = "gulch",
["crystalfalls"] = "northwindelite",

-- Classes
["drood"] = "druid",["dudu"] = "druid",["droods"] = "druid",["driud"] = "druid",["rdruid"] = "druid",["bdruid"] = "druid",["fdruid"] = "druid",["boomkin"] = "druid",["boomie"] = "druid",["boomies"] = "druid",["durid"] = "druid",

["hutner"] = "hunter",["bmhunter"] = "hunter",["mmhunter"] = "hunter",
["paly"] = "paladin",["pala"] = "paladin",["pally"] = "paladin",["pallie"] = "paladin",["pallies"] = "paladin",["healadin"] = "paladin",["hpaladin"] = "paladin",["hpally"] = "paladin",["retpally"] = "paladin",
["preist"] = "priest",["spriest"] = "priest",["hpriest"] = "priest",
["rog"] = "rogue",["roges"] = "rogue",["rouge"] = "rogue",["rouges"] = "rogue",["roge"] = "rogue",["roguer"] = "rogue",["rouger"] = "rogue",["subrogue"] = "rogue",["roguers"] = "rogue",
["roue"] = "rogue",["rogeu"] = "rogue",["roggy"] = "rogue",
["shammy"] = "shaman",["shama"] = "shaman",["chaman"] = "shaman",["shammies"] = "shaman",["rsham"] = "shaman",["enhsham"] = "shaman",["enhshaman"] = "shaman",["elesham"] = "shaman",["eleshaman"] = "shaman",["shamelem"] = "shaman",
["walrock"] = "warlock",["lcoks"] = "lock",["lcok"] = "lock",["lockk"] = "lock",
["warior"] = "warrior",["wariors"] = "warrior",["wrrioir"] = "warrior",["wearriors"] = "warrior",["wearrior"] = "warrior",["werrior"] = "warrior",["wurrior"] = "warrior",["warri"] = "warrior",
["furywar"] = "warrior",["furywars"] = "warrior",["protwar"] = "warrior",["protwars"] = "warrior",["armwar"] = "warrior",["armwars"] = "warrior",

-- Pet
["vw"] = "voidwalker",["succu"] = "succubus",

-- Quests
["morben"] = "morbent",["morbant"] = "morbent",["morbel"] = "morbent",["ladin"] = "ladim",["garak"] = "grark",["barow"] = "barov",["barove"] = "barov",["kozruk"] = "fozruk",["elsaquest"] = "eliza",
["windosr"] = "windsor",["winsor"] = "windsor",["windwos"] = "windsor",["windsol"] = "windsor",["angerfod"] = "angerforge",["hoger"] = "hogger",["hoge"] = "hogger",
["jinthalor"] = "jinthaalor",["jinthaatol"] = "jinthaalor",["jinthaator"] = "jinthaalor",["jinhacity"] = "jinthaalor",["jintaalor"] = "jinthaalor",
["hidraxian"] = "hydraxian",["hydrax"] = "hydraxian",["hidraxy"] = "hydraxian",["hydraxial"] = "hydraxian",["hadryxain"] = "hydraxian",["hydrraxxian"] = "hydraxian",["hydrraxian"] = "hydraxian",
["hydraxxian"] = "hydraxian",["hydrazian"] = "hydraxian",["hydraixan"] = "hydraxian",
["stormgarde"] = "stromgarde",["stormgard"] = "stromgarde",["stormguard"] = "stromgarde",["stromguard"] = "stromgarde",["smonus"] = "somnus",["duks"] = "dukes",
["bagthera"] = "bhagthera",["bajkteera"] = "bhagthera",["baghtira"] = "bhagthera",["tiwlligt"] = "twilight",["abbssal"] = "abyssal",["abssal"] = "abyssal",["abbyssal"] = "abyssal",["abyssl"] = "abyssal",["abysal"] = "abyssal",
["noz"] = "nozdormu",["obsidon"] = "obsidion",["tf"] = "thunderfury",["tf"] = "thunderfury",["frostmauls"] = "frostmaul",["aquamentas"] = "aquementas",["aquamentos"] = "aquementas",["restofskull"] = "testofskull",
["onyprequest"] = "onyxiaattunement",["onypre"] = "onyxiaattunement",["onyattunement"] = "onyxiaattunement",["onyxiaattunementquest"] = "onyxiaattunement",
["olsnooty"] = "olsooty",["rougug"] = "roogug",["rugug"] = "roogug",["rougog"] = "roogug",["murceye"] = "murkeye",

["repfarm"] = "repfarm",["repfarms"] = "repfarm",["repgroup"] = "repfarm",["reprun"] = "repfarm",["repgrind"] = "repfarm",["perfarm"] = "repfarm",["farmshard"] = "shardfarm",
["ccrep"] = "cenarionrep",["ccfarm"] = "cenarionrepfarm",["ccgroup"] = "cenarionrepfarm",["ccrun"] = "cenarionrepfarm",["ccgrind"] = "cenarionrepfarm",["ccrepfarm"] = "cenarionrepfarm",
["chrep"] = "cenarionrep",["chfarm"] = "cenarionrepfarm",["chgroup"] = "cenarionrepfarm",["chrun"] = "cenarionrepfarm",["chgrind"] = "cenarionrepfarm",["chrepfarm"] = "cenarionrepfarm",
["cocrep"] = "cenarionrep",["cocfarm"] = "cenarionrepfarm",["cocgroup"] = "cenarionrepfarm",["cocrun"] = "cenarionrepfarm",["cocgrind"] = "cenarionrepfarm",["cocrepfarm"] = "cenarionrepfarm",
["farmgroup"] = "repfarm",["farmrun"] = "repfarm",["combattack"] = "combattask",["combattacks"] = "combattask",
["badgegroup"] = "badgefarm",["badgerun"] = "badgefarm",["badgegrind"] = "badgefarm",
["raidboss"] = "worldboss",["worlddragon"] = "worldboss",["wboss"] = "worldboss",["wbosses"] = "worldboss",["allwing"] = "questrun",
["aqcc"] = "aq",["aqcenarion"] = "aq",["aqcenarionrep"] = "aqrep",["aqcenarionrepfarm"] = "aqrepfarm",["cenarionrepfarm"] = "cenarionrepfarm",

["elitequest"] = "elite",["questelite"] = "elite",["elitezone"] = "elite",["elitequeue"] = "elite",["withelite"] = "elite",["byelite"] = "elite",["eliteqw"] = "elite",["elitein"] = "elite",["foothillselite"] = "hillsbradelite",["hillsbradhillsbradelite"] = "hillsbradelite",
["questin"] = "quest",["farmin"] = "farm",

["highelfzone"] = "thalassianhighlands",

["summonduke"] = "silithusdukes",["summondukes"] = "silithusdukes",["summonlord"] = "silithuslords",["summonlords"] = "silithuslords",["silithuslord"] = "silithuslords",
["dukessummon"] = "silithusdukes",["dukesummon"] = "silithusdukes",["lordsummon"] = "silithuslords",["lordssummon"] = "silithuslords",["lordsilithus"] = "silithuslords",
["silithuscombatquest"] = "combattask",["fielddutycombatquest"] = "combattask",["silithusboss"] = "silithuslords",
["onyxiaquest"] = "onyxiaattunement",["onyxiaprequest"] = "onyxiaattunement",["onyquest"] = "onyxiaattunement",["onyxiaattunement"] = "onyxiaattunement",
["summonprincess"] = "summonprincess",["princesstrapped"] = "princesstrapped",["fieldofduty"] = "fieldduty",

["blacklashandhematus"] = "brokenalliances",

-- Quest
["silithid"] = "silithus",["mission"] = "quest",["klavens"] = "klaven",["krastinovs"] = "krastinov",

["nightwatchshortsword"] = "sword",["shortswords"] = "shortsword",

-- Dungeons
["rfch"] = "ragefirechasm",["rfcd"] = "ragefirechasm",["rfchasm"] = "ragefirechasm",["regefire"] = "ragefire",["ragfire"] = "ragefire",["ragefir"] = "ragefire",["rf"] = "ragefirechasm",["rfcf"] = "ragefirechasm",
["rffc"] = "ragefirechasm",["rrfc"] = "ragefirechasm",["rfg"] = "ragefirechasm",["rfcx"] = "ragefirechasm",["rcf"] = "ragefirechasm",["rgc"] = "ragefirechasm",["rfv"] = "ragefirechasm",
["ragefirechasmers"] = "ragefirechasm",["rcgroup"] = "ragefirechasm",["grouprc"] = "ragefirechasm",["rsc"] = "ragefirechasm",
["deadmine"] = "deadmines",["ddeadmines"] = "deadmines",["dedmines"] = "deadmines",["dedmine"] = "deadmines",["deathmine"] = "deadmines",["deathmines"] = "deadmines",["vc"] = "deadmines",["vancleef"] = "deadmines",["dms"] = "dm",
["deadmies"] = "deadmines",["deadmindes"] = "deadmines",["deaadmines"] = "deadmines",["deammine"] = "deadmines",["deammines"] = "deadmines",["deanmine"] = "deadmines",["deanmines"] = "deadmines",["deadmiens"] = "deadmines",["daedmines"] = "deadmines",
["deadmin"] = "deadmines",["deamines"] = "deadmines",["deadmmines"] = "deadmines",["deamines"] = "deadmines",["deadmins"] = "deadmines",["dmines"] = "deadmines",["dmine"] = "deadmines",["deadminds"] = "deadmines",
["twc"] = "wailingcaverns",["wcr"] = "wailingcaverns",["waling"] = "wailing",["vailing"] = "wailing",["wailling"] = "wailing",["waililing"] = "wailing",["wailign"] = "wailing",["waialing"] = "wailing",
["cavs"] = "caverns",["caverne"] = "caverns",["carverns"] = "caverns",["cavernes"] = "caverns",["canverns"] = "caverns",
["stockede"] = "stockade",["stocakde"] = "stockade",["stokade"] = "stockade",["stokades"] = "stockade",["stocls"] = "stock",["stockhades"] = "stockade",["stocakdes"] = "stockade",["stockads"] = "stockade",["stockdes"] = "stockade",
["stockaide"] = "stockade",["stockk"] = "stock",["staockades"] = "stockade",["stonks"] = "stock",["stockado"] = "stockade",["stockes"] = "stockade",["sotckades"] = "stockade",["stockages"] = "stockade",
["stackades"] = "stockade",["stackade"] = "stockade",["stockaded"] = "stockade",["stockates"] = "stockade",["stocakeds"] = "stockade",["stockaders"] = "stockade",["stockadrs"] = "stockade",
["skotade"] = "stockade",["stockcade"] = "stockade",["stockage"] = "stockade",["stocade"] = "stockade",["stocades"] = "stockade",["stoocades"] = "stockade",["stockde"] = "stockade",["stocde"] = "stockade",["stcks"] = "stocks",
["blackfathome"] = "blackfathom",["blackfatom"] = "blackfathom",["blackfanthom"] = "blackfathom",["blackfantom"] = "blackfathom",["bloackfathom"] = "blackfathom",["blackfahtom"] = "blackfathom",["blackdathom"] = "blackfathom",
["bd"] = "blackfathomdeeps",["bdf"] = "blackfathomdeeps",["bfg"] = "blackfathomdeeps",["bfc"] = "blackfathomdeeps",["bsf"] = "blackfathomdeeps",["bfp"] = "blackfathomdeeps",
["blackfathoms"] = "blackfathom",["blackfdeeps"] = "blackfathomdeeps",["blackfdepths"] = "blackfathomdeeps",["bigfathom"] = "blackfathom",["bigflathim"] = "blackfathom",["bigflathim"] = "blackphatom",["fathemed"] = "fathom",
["sk"] = "sfk",["skf"] = "sfk",["sfkk"] = "sfk",["shadomwang"] = "sfk",["sfkeep"] = "sfk",["sfl"] = "sfk",["shawdowfang"] = "sfk",["shadowfernkeep"] = "sfk",["shadowfangkeep"] = "sfk",["shadowfkeep"] = "sfk",["sfks"] = "sfk",["sfg"] = "sfk",
["gnooner"] = "gnomeregan",["gnomregan"] = "gnomeregan",["gnomregen"] = "gnomeregan",["gnomergan"] = "gnomeregan",["gnomeragen"] = "gnomeregan",["gnomragen"] = "gnomeregan",["gnomergana"] = "gnomeregan",
["gbomeraan"] = "gnomeregan",["gbomeragan"] = "gnomeregan",["gnomergone"] = "gnomeregan",["gnomerigan"] = "gnomeregan",["gnomregan"] = "gnomeregan",["gnomerengan"] = "gnomeregan",["gnormeregan"] = "gnomeregan",
["gnomrigan"] = "gnomeregan",["gnomoeregan"] = "gnomeregan",["gnomereagan"] = "gnomeregan",["gnomeran"] = "gnomeregan",["gnomergon"] = "gnomeregan",["gnomeragan"] = "gnomeregan",["gonomeregan"] = "gnomeregan",
["gnomger"] = "gnomeregan",["gnomeragon"] = "gnomeregan",["gnomeragn"] = "gnomeregan",["gnomegan"] = "gnomeregan",["gnogeragan"] = "gnomeregan",["gnogeregan"] = "gnomeregan",["gnogeragon"] = "gnomeregan",
["gooneregan"] = "gnomeregan",["gooneragan"] = "gnomeregan",["goonergon"] = "gnomeregan",["goonergone"] = "gnomeregan",
["razorfren"] = "razorfen",["razorfer"] = "razorfen",["razorder"] = "razorfen",["razerfen"] = "razorfen",["razoerfen"] = "razorfen",["razorfrn"] = "razorfen",["wzorfen"] = "razorfen",["wazorfen"] = "razorfen",
["karul"] = "kraul",["kral"] = "kraul",["craul"] = "kraul",["cral"] = "kraul",["rpk"] = "rfk",["rfkk"] = "rfk",["razorfenk"] = "razorfenkraul",
["rpd"] = "rfd",["rdf"] = "rfd",["downsynd"] = "downs",["dwown"] = "downs",["dwowns"] = "downs",["razorfend"] = "razorfendowns",["razorfendown"] = "razorfendowns",

["monastary"] = "monastery",["monstary"] = "monastery",["monstery"] = "monastery",["monasatry"] = "monastery",["monstry"] = "monastery",["monestry"] = "monastery",["scarlett"] = "scarlet",["scarletmon"] = "sm",["scarletmona"] = "sm",
["graveryard"] = "gy",["gv"] = "gy",
["lib"] = "library",["lyb"] = "library",["libary"] = "library",["librery"] = "library",["libray"] = "library",["librady"] = "library",["libraruy"] = "library",["ibrary"] = "library",
["librirary"] = "library",["librabry"] = "library",["libraryu"] = "library",["libraby"] = "library",["librrary"] = "library",
["armoty"] = "armory",["armoury"] = "armory",["armz"] = "arm",["armzs"] = "arm",["armoryy"] = "armory",["armoryyy"] = "armory",
["carth"] = "cathedral",["cathe"] = "cathedral",["cath"] = "cathedral",["cafedr"] = "cathedral",["caf"] = "cathedral",["catehdral"] = "cathedral",["cathedrale"] = "cathedral",["catheral"] = "cathedral",["catheter"] = "cathedral",

["uld"] = "uldaman",["ulduman"] = "uldaman",["uldam"] = "uldaman",["uldamn"] = "uldaman",["uldamann"] = "uldaman",["uldman"] = "uldaman",["oldaman"] = "uldaman",["ulaman"] = "uldaman",["uldamon"] = "uldaman",
["farak"] = "farrak",["zulfarak"] = "zulfarrak",["zukfarrak"] = "zulfarrak",["zulfurrak"] = "zulfarrak",["zulforrak"] = "zulfarrak",["zulfurak"] = "zulfarrak",["ulzfarrak"] = "zulfarrak",["ulzfarak"] = "zulfarrak",
["zulforak"] = "zulfarrak",["zff"] = "zf",["zzf"] = "zf",["zulfarrack"] = "zulfarrak",["zulfarrake"] = "zulfarrak",["zulf"] = "zulfarrak",["uzl"] = "zul",["zull"] = "zul",
["marudon"] = "maraudon",["maradon"] = "maraudon",["maura"] = "mara",["mauradon"] = "maraudon",["maurodon"] = "maraudon",["maurdon"] = "maraudon",["maraundon"] = "maraudon",["maraaudon"] = "maraudon",["maraduon"] = "maraudon",["marau"] = "maraudon",
["maraton"] = "maraudon",["marodon"] = "maraudon",["morodon"] = "maraudon",["maradudon"] = "maraudon",["maraudn"] = "maraudon",["maraudan"] = "maraudon",["maraprincs"] = "maraudon",["mauraudon"] = "maraudon",
["suken"] = "sunken",["sunkent"] = "sunken",["sunket"] = "sunken",["sunkn"] = "sunken",["sempletemple"] = "sunkentemple",["stemple"] = "atalhakkar",["tempel"] = "temple",["ataltemple"] = "atalhakkar",
["brda"] = "brd",["brds"] = "brd",["brdd"] = "brd",["btd"] = "brd",["bdr"] = "brd",["blackrockdephs"] = "blackrockdepths",["dephts"] = "depths",["dephs"] = "depths",
["blackrockdeeps"] = "blackrockdepths",["blackrockdepth"] = "blackrockdepths",
["emp"] = "emperor",["emprun"] = "emperor",["emperer"] = "emperor",["emporer"] = "emperor",
["vaul"] = "vault",["vaut"] = "vault",["vaault"] = "vault",["vauult"] = "vault",["vaultt"] = "vault",["valut"] = "vault",["vauly"] = "vault",

["attument"] = "attunement",["attu"] = "attunement",["attun"] = "attunement",["attunment"] = "attunement",["atunment"] = "attunement",

["strartholme"] = "stratholme",["stratholm"] = "stratholme",["strath"] = "stratholme",["strth"] = "stratholme",["stratth"] = "stratholme",["straholme"] = "stratholme",["strathholm"] = "stratholme",
["strathholme"] = "stratholme",["starthome"] = "stratholme",["strathome"] = "stratholme",["startholme"] = "stratholme",["srtatholme"] = "stratholme",["strathilme"] = "stratholme",["strathalme"] = "stratholme",
["stratholem"] = "stratholme",["srat"] = "strat",["strah"] = "strat",["strar"] = "strat",["starth"] = "stratholme",["stratholome"] = "stratholme",

["scholo"] = "scholomance",["scho"] = "scholomance",["sco"] = "scholomance",["shool"] = "scholomance",["sholo"] = "scholomance",["shcolo"] = "scholomance",["shcolomanace"] = "scholomance",["sholomance"] = "scholomance",["scholomane"] = "scholomance",
["scolomance"] = "scholomance",["scholamance"] = "scholomance",["scolamance"] = "scholomance",["scholomace"] = "scholomance",["sholomolance"] = "scholomance",["scholomansa"] = "scholomance",["scholol"] = "scholomance",["schol"] = "scholomance",
["solomance"] = "scholomance",["scolo"] = "scholomance",["schoolo"] = "scholomance",["scholor"] = "scholomance",["schololence"] = "scholomance",["schoolmance"] = "scholomance",
["blackockspire"] = "blackrockspire",["blackcockspire"] = "blackrockspire",
["vaalthak"] = "valthalak",["drakisath"] = "drakkisath",["drakki"] = "drakkisath",["draki"] = "drakkisath",["drakk"] = "drakkisath",["drak"] = "drakkisath",

["smg"] = "smgy",["smgrav"] = "smgy",["smgraver"] = "smgy",["monagy"] = "smgy",["monagrav"] = "smgy",
["sml"] = "smlib",["smlb"] = "smlib",["smlin"] = "smlib",["smlin"] = "smlib",
["sma"] = "smarm",["smarmo"] = "smarm",["monaarmo"] = "smarm",
["smc"] = "smcath",["monacath"] = "smcath",

["diremail"] = "diremaul",["diremual"] = "diremaul",["diremau"] = "diremaul",["mual"] = "maul",["moul"] = "maul",["maule"] = "maul",["trib"] = "tribute",
["dmnt"] = "dmt",["eastdm"] = "dme",["northdm"] = "dmn",["westdm"] = "dmw",["eastdire"] = "dme",["northdire"] = "dmn",["westdire"] = "dmw",["dmemaul"] = "dme",["dmnmaul"] = "dmn",["dmwmaul"] = "dmw",
["diretribute"] = "dmt",["direeast"] = "dme",["direnorth"] = "dmn",["direwest"] = "dmw",

["lbs"] = "lbrs",["lvrs"] = "lbrs",["lvrs"] = "lbrs",["lbrd"] = "lbrs",["lbr"] = "lbrs",["lrbs"] = "lbrs",["lwbs"] = "lbrs",["lbd"] = "lbrs",
["ubers"] = "ubrs",["ubsr"] = "ubrs",["urbs"] = "ubrs",["ubs"] = "ubrs",["uber"] = "ubrs",["ubres"] = "ubrs",["ubbrs"] = "ubrs",["ubrd"] = "ubrs",["ubr"] = "ubrs",["ubrn"] = "ubrs",["ubts"] = "ubrs",["umbrs"] = "ubrs",["upbrs"] = "ubrs",

-- Raids
["blw"] = "blackwinglair",["bwls"] = "blackwinglair",["bwl"] = "blackwinglair",["bwwl"] = "blackwinglair",["bwll"] = "blackwinglair",["bwwll"] = "blackwinglair",["blackwinglare"] = "blackwinglair",
["nef"] = "nefarian",["nefarien"] = "nefarian",["nefarion"] = "nefarian",["ossi"] = "ossirian",["nax"] = "naxxramas",["naxx"] = "naxxramas",["taq"] = "aq",
["hakar"] = "hakkar",["hakakr"] = "hakkar",["zulgrub"] = "zulgurub",["gurrub"] = "gurub",["zgs"] = "zg",["aqs"] = "aq",["mcs"] = "mc",["karas"] = "kara",
["onyixia"] = "onyxia",["onxy"] = "onyxia",["onyx"] = "onyxia",["onyxias"] = "onyxia",["onixia"] = "onyxia",["oniwya"] = "onyxia",["onixya"] = "onyxia",["onyqia"] = "onyxia",["onyxxia"] = "onyxia",["onyxuia"] = "onyxia",["onyixa"] = "onyxia",["onxia"] = "onyxia",
["ony"] = "onyxia",["ohy"] = "onyxia",["onny"] = "onyxia",["onyy"] = "onyxia",["oony"] = "onyxia",["onx"] = "onyxia",["onxyia"] = "onyxia",["onys"] = "onyxia",["onyzia"] = "onyxia",["onyza"] = "onyxia",["onycia"] = "onyxia",
["azurg"] = "azuregos",["azurgo"] = "azuregos",["azurego"] = "azuregos",["azurgos"] = "azuregos",["azuregs"] = "azuregos",["kazzk"] = "kazzak",["kazz"] = "kazzak",["kazak"] = "kazzak",
["ysonder"] = "ysondre",["ysondr"] = "ysondre",["ysndre"] = "ysondre",["ysnder"] = "ysondre",["lethn"] = "lethon",["tarar"] = "taerar",["emeris"] = "emeriss",["emerss"] = "emeriss",
["raggi"] = "ragnaros",

["onyhead"] = "onyxiahead",["nefhead"] = "nefarianhead",["onyhero"] = "onyxiahead",["nefhero"] = "nefarianhead",["onyxiahero"] = "onyxiahead",["nefarianhero"] = "nefarianhead",["onybuff"] = "onyxiabuff",["nefbuff"] = "nefarianbuff",

-- Turtle
["alathalas"] = "alahthalas",["alasthalas"] = "alahthalas",["alahthelas"] = "alahthalas",
["dragowmaw"] = "dragonmaw",["drangonmaw"] = "dragonmaw",
["blackmoras"] = "blackmorass",["blackmorasss"] = "blackmorass",["morasss"] = "morass",["marass"] = "morass",["marass"] = "morass",["bmoras"] = "blackmorass",["bmorras"] = "blackmorass",
["bmorass"] = "blackmorass",["blackmoss"] = "blackmorass",["blackmoreass"] = "blackmorass",["bblackmmorass"] = "blackmorass",["morrass"] = "morass",["moras"] = "morass",["morras"] = "morass",
["cgrove"] = "crescentgrove",["csg"] = "cg",
["eshm"] = "emeraldsanctum",["esh"] = "emeraldsanctum",
["gileas"] = "gilneas",["gilenas"] = "gilneas",["gineas"] = "gilneas",["gilneeas"] = "gilneas",["gilnaeos"] = "gilneas",["gileans"] = "gilneas",["gilnease"] = "gilneas",["gilneaas"] = "gilneas",["gillneas"] = "gilneas",["gllneas"] = "gilneas",
["glineas"] = "gilneas",["guilneas"] = "gilneas",["gilnead"] = "gilneas",["gelneas"] = "gilneas",["gilcity"] = "gilneas",["gilcity"] = "gilneas",["giln"] = "gilneas",["gilneascity"] = "gilneas",
["gilcity"] = "gilneas",["gilnea"] = "gilneas",["gilnes"] = "gilneas",["gil"] = "gilneas",["gilens"] = "gilneas",["gilnewas"] = "gilneas",["gilnaeas"] = "gilneas",["gliacas"] = "gilneas",["gcity"] = "gilneas",
["hfc"] = "hateforgequarry",["hrg"] = "hateforgequarry",["htq"] = "hateforgequarry",["hatforge"] = "hateforge",["hategorhe"] = "hateforge",
["hijal"] = "hyjal",["hayja"] = "hyjal",["hyial"] = "hyjal",["hyall"] = "hyjal",["hyjia"] = "hyjal",["hyja"] = "hyjal",["hyjail"] = "hyjal",["hujal"] = "hyjal",["hcjal"] = "hyjal",["hylai"] = "hyjal",
["karazan"] = "karazhan",["lowerkara"] = "lowerkarazhan",["kz"] = "karazhan",["lkh"] = "karazhan",["ukh"] = "karazhan",["khara"] = "karazhan",
["cara"] = "karazhan",["kara"] = "karazhan",["kata"] = "karazhan",["kharazan"] = "karazhan",["ksrs"] = "karazhan",
["smv"] = "swv",

-- Quest and monster names
["otarius"] = "ostarius",["larranikus"] = "larannikus",["larrannikus"] = "larannikus",["laranikkus"] = "larannikus",["laranikus"] = "larannikus",["leranikus"] = "larannikus",["hellscreem"] = "hellscream",["concanius"] = "concavius",

-- Professions
["jeweller"] = "enchant",["jewellcraft"] = "enchant",["jewellcrafter"] = "enchant",["jewellcrafting"] = "enchant",["jewelcrafterw"] = "enchant",["jewlcrafter"] = "enchant",
["jewlery"] = "enchant",["jewler"] = "enchant",["jewellercrafter"] = "enchant",["jewelcratfer"] = "enchant",
["jewlerer"] = "enchant",["juwelcraft"] = "enchant",["juwelcrafter"] = "enchant",["juwelcrafting"] = "enchant",["jewelcraftr"] = "enchant",
["jc"] = "enchant",["jw"] = "enchant",["jwc"] = "enchant",["jcs"] = "enchant",["jf"] = "enchant",["jewe"] = "enchant",
["jewlecrafter"] = "enchant",["jewlecrafting"] = "enchant",["jewelc"] = "enchant",["jewelcraft"] = "enchant",["jcrafting"] = "enchant",["jcrafter"] = "enchant",["jcraft"] = "enchant",
["jewly"] = "enchant",["jcer"] = "enchant",["jcers"] = "enchant",["jewcrafter"] = "enchant",["jewlcrafters"] = "enchant",

["jawel"] = "gem",["juwe"] = "gem",["juwel"] = "gem",

-- Quest "x" Combines
["keytokarazhanx"] = "keytokarazhanx",["toweroflapidisx"] = "toweroflapidisx",["oldchurchofwestfallx"] = "oldchurchofwestfallx",
}
GF_WORD_FIX_BEFORE_QUEST_SECOND = {
["lovepotion"] = {"azshara","quest"},
["lfmcounterattack"] = {"lfm","counterattackexclamation"},["lfgcounterattack"] = {"lfg","counterattackexclamation"},["lfcounterattack"] = {"lf","counterattackexclamation"},
["silithusraidgroup"] = {"silithus","repfarm"},
["farmtimbermawrep"] = {"timbermaw","repfarm"},
["needto"] = {"need","to"},["wannna"] = {"need","to"},["wonna"] = {"need","to"},["wanna"] = {"need","to"},["wonnna"] = {"need","to"},["wana"] = {"need","to"},["heapofmat"] = {"have","mat"},["doesanyonehave"] = {"anyone","need"},["doanyonehave"] = {"anyone","need"},
["minorspeedbots"] = {"minorspeed","boots"},["minorspeedbot"] = {"minorspeed","boots"},
["rugi"] = {"russian","guild"},["ukrgi"] = {"ukrainian","guild"},
}
GF_WORD_FIX_QUEST_DUNGEON = {
["orgrimmardungeon"] = "ragefirechasm",["hiddenenemies"] = "ragefirechasm",["slayingbeast"] = "ragefirechasm",["searchingforlostsatchel"] = "ragefirechasm",["testingenemysstrength"] = "ragefirechasm",["powertodestroy"] = "ragefirechasm",
["collectingmemories"] = "deadmines",["undergroundassault"] = "deadmines",["ohbrother"] = "deadmines",["redsilkbandanas"] = "deadmines",["defiasbrotherhood"] = "deadmines",["escortfordefiasbrotherhood"] = "defiastraitor",
["deviatehides"] = "wailingcaverns",["troubleatdocks"] = "wailingcaverns",["smartdrinks"] = "wailingcaverns",["serpentbloom"] = "wailingcaverns",["deviateeradication"] = "wailingcaverns",
["leadersoffang"] = "wailingcaverns",["glowingshard"] = "wailingcaverns",["mutanusdevourer"] = "wailingcaverns",
["deathstalkersinshadowfang"] = "sfk",["bookofur"] = "sfk",["arugalmustdie"] = "sfk",["testofrighteousness"] = "sfk",["jordanssmithinghammer"] = "sfk",["orbofsoranruk"] = "sfk",
["essenceofakumai"] = "bfd",["knowledgeindeeps"] = "bfd",["insearchofthaelrid"] = "bfd",["researchingcorruption"] = "bfd",
["twilightfalls"] = "bfd",["allegiancetooldgods"] = "bfd",["blackfathomvillainy"] = "bfd",["amongstruins"] = "bfd",["korgem"] = "bfd",["seekingbfd"] = "bfd",["soranrukfragment"] = "bfd",
["whatcomesaround"] = "stockade",["crimeandpunishment"] = "stockade",["colorofblood"] = "stockade",["quelluprising"] = "stockade",["furyrundeep"] = "stockade",["stockaderiots"] = "stockade",["stormwinddungeon"] = "stockade",
["savetechbotsbrain"] = "gnomeregan",["gnogaine"] = "gnomeregan",["castpipestask"] = "gnomeregan",["finemess"] = "gnomeregan",["datarescue"] = "gnomeregan",["moregreenglow"] = "gnomeregan",["onlycureisgnomeregan"] = "gnomeregan",
["gyrodrillmaticexcavationators"] = "gnomeregan",["essentialartificials"] = "gnomeregan",["sparklematic"] = "gnomeregan",["grimeencrustedring"] = "gnomeregan",["rigwars"] = "gnomeregan",["grandbetrayal"] = "gnomeregan",
["blueleaftubers"] = "rfk",["williximporter"] = "rfk",["mortalitywanes"] = "rfk",["goinggoingguano"] = "rfk",["vengefulfate"] = "rfk",["croneofkraul"] = "rfk",["roogug"] = "rfk",["paintrosesred"] = "smgy",["scarletwithrage"] = "smgy",
["heartsofzeal"] = "smfull",["testoflore"] = "smlib",["compendiumoffallen"] = "smlib",["mythologyoftitans"] = "smlib",["innameoflight"] = "smfull",["intoscarletmonastery"] = "smfull",["downscarletpath"] = "smfull",
["hostofevil"] = "razorfendowns",["unholyalliance"] = "razorfendowns",["extinguishingidol"] = "razorfendowns",["scourgeofdowns"] = "razorfendowns",["bringlight"] = "razorfendowns",["bringend"] = "razorfendowns",
["signofhope"] = "uldaman",["powerstones"] = "uldaman",["powerstone"] = "uldaman",["agmondsfate"] = "uldaman",["solutiontodoom"] = "uldaman",["amuletofsecrets"] = "uldaman",["hiddenchamber"] = "uldaman",["lostdwarves"] = "uldaman",
["shatterednecklace"] = "uldaman",["necklacerecovery"] = "uldaman",["uldamantaketwo"] = "uldaman",["uldamantakethree"] = "uldaman",["backtouldaman"] = "uldaman",["badlandsreagentrun"] = "uldaman",["reagentrun"] = "reagentrun",
["uldamanii"] = "badlandsreagentrunii",["reclaimedtreasures"] = "uldaman",["findgems"] = "uldaman",["uldamanandpowersource"] = "uldaman",["restoringnecklace"] = "uldaman",["losttabletsofwill"] = "uldaman",
["spidergod"] = "zulfarrak",["scarabshells"] = "zulfarrak",["trolltemper"] = "zulfarrak",["tiaraofdeep"] = "zulfarrak",["prophecyofmosharu"] = "zulfarrak",["nekrumsmedallion"] = "zulfarrak",["divinomaticrod"] = "zulfarrak",["gahzrilla"] = "zulfarrak",
["shadowshardfragments"] = "maraudon",["twistedevils"] = "maraudon",["vyletonguecorruption"] = "maraudon",["pariahsinstructions"] = "maraudon",["legendsofmaraudon"] = "maraudon",
["scepterofcelebras"] = "maraudon",["corruptionofearth"] = "corruptionofearth",["corruptionofearthandseed"] = "maraudon",["seedoflife"] = "maraudon",
["secretofcircle"] = "sunkentemple",["intodepths"] = "sunkentemple",["godhakkar"] = "sunkentemple",["jammalanprophet"] = "sunkentemple",["essenceoferanikus"] = "sunkentemple",["hazeofevil"] = "sunkentemple",["intotempleofatalhakkar"] = "sunkentemple",
["darkironlegacy"] = "brd",["commandergorshak"] = "brd",["ribblyscrewspigot"] = "brd",["yukascrewspigot"] = "brd",["marshalbrd"] = "brd",["windsor"] = "brd",["abandonedhope"] = "brd",["spectralchalice"] = "brd",
["lastelement"] = "brd",["whatisgoingon"] = "brd",["killonsight"] = "killonsight",["killonsighthighrankingdarkironofficials"] = "brd",["darkironofficials"] = "darkironofficials",["heartofmountain"] = "brd",["hurleyblackbreath"] = "brd",
["lostthunderbrewrecipe"] = "brd",["disharmonyoffire"] = "brd",["incendius"] = "brd",["goodstuff"] = "brd",["crumpledupnote"] = "brd",["tasteofflame"] = "brd",["shredofhope"] = "brd",["grimguzzler"] = "brd",["brdfullrun"] = "brd",
["angerforge"] = "brd",["operationdeathtobrd"] = "brd",["riseofmachines"] = "brd",["precariouspredicament"] = "brd",["kharanmighthammer"] = "brd",["fateofkingdom"] = "brd",["attunementtocore"] = "brd",["atttocore"] = "brd",["brdquestrun"] = "brd",
["royalrescue"] = "brd",["thechallenge"] = "brd",["princesssaved"] = "brd",["bindingcontract"] = "brd",["golemlord"] = "brd",["hojfarm"] = "brd",["marshalescort"] = "brd",
["lavajumprun"] = "brd",["lavarun"] = "brd",["brdarena"] = "brd",["brdprison"] = "brd",["brdarenas"] = "brd",["arenarun"] = "brd",["arenaspam"] = "brd",["brdfarm"] = "brd",["saveprincess"] = "brd",["savingprincess"] = "brd",
["finaltablets"] = "lbrs",["bijousbelongings"] = "lbrs",["enayes"] = "enayes",["enayesteewhy"] = "lbrs",["putherdown"] = "lbrs",["kiblersexoticpets"] = "lbrs",["packmistress"] = "lbrs",["operativebijou"] = "lbrs",
["maxwellsquest"] = "lbrs",["warlordscommand"] = "lbrs",["mothersmilk"] = "lbrs",["urokdoomhowl"] = "lbrs",["morgrayhoof"] = "lbrs",
["generaldrakkisathsdemise"] = "ubrs",["forhorde"] = "ubrs",["doomriggersclasp"] = "ubrs",["oculusillusions"] = "ubrs",["blackdragonchampion"] = "blackdragonchampion",["bloodofblackdragonchampion"] = "ubrs",["eggfreezing"] = "ubrs",
["darkstonetablet"] = "ubrs",["vivianlagraveandubrs"] = "ubrs",["eggcollection"] = "ubrs",["sealofascension"] = "ubrs",["blackhandscommand"] = "ubrs",["blackhandcommand"] = "ubrs",["demonforge"] = "ubrs",
["eyeofemberseer"] = "ubrs",["attunementbwl"] = "ubrs",["bwlattunement"] = "ubrs",["bwattunement"] = "ubrs",["attunementtobwl"] = "ubrs",["attunementforbwl"] = "ubrs",["scarshieldquartermaster"] = "ubrs",
["attunementmc"] = "brd",["mcattunement"] = "brd",["attunementtomc"] = "brd",["attunementformc"] = "brd",
["lethtendrissweb"] = "dmeast",["pusillin"] = "dme",["dmeandelderazjtordin"] = "dme",["arcanerefreshment"] = "dme",["magewaterquest"] = "dme",["magewaterrankquest"] = "dme",
["xoroth"] = "dmw",["dreadsteedofdmw"] = "dmw",["dreadsteeddmw"] = "dmw",["dreadsteedquest"] = "dmw",["dreadsteedrun"] = "dmw",["dreadsteedmat"] = "dmw",["dreadsteedsummon"] = "dmw",["warlockmountquest"] = "dmw",["warlockquestmount"] = "dmw",
["instigatorsenchantment"] = "dmw",["madnesswithin"] = "dmwest",["treasureofshendralar"] = "dmw",
["unfinishedgordokbusiness"] = "dmw",["falrinsvendetta"] = "dmn",["elvenlegends"] = "dmn",["tributerun"] = "dmt",["shardsoffelvine"] = "dme",
["krastinovbagofhorrors"] = "scholomance",["plaguedhatchlings"] = "scholomance",["kirtonos"] = "scholomance",["scholomanceherald"] = "scholomance",["krastinovbutcher"] = "scholomance",["lichrasfrostwhisper"] = "scholomance",
["dawnsgambit"] = "scholomance",["barovfamilyfortune"] = "scholomance",["paladinmountquest"] = "scholomance",["paladinquestmount"] = "scholomance",
["aboveandbeyond"] = "udstrat",["deadmansplea"] = "udstrat",["menethilsgift"] = "udstrat",["ramstein"] = "udstrat",["activeagent"] = "udstrat",
["ofloveandfamily"] = "livestrat",["archivist"] = "livestrat",["greatfrassiabi"] = "livestrat",["medallionoffaith"] = "livestrat",["truthcomescrashingdown"] = "livestrat",
["housesofholy"] = "stratholme",["fleshdoesnotlie"] = "stratholme",["restlesssouls"] = "stratholme",

["handsofenemy"] = "moltencore",["perfectpoison"] = "aq",["onlyonemayrise"] = "blackwinglair",["domo"] = "mc",

-- Turtle WoW
["prototypethievery"] = "deadmines",["rampantweeds"] = "wailingcaverns",["captaingraysonsrevenge"] = "deadmines",["turningofftap"] = "deadmines",["harvestgolemmystery"] = "deadmines",
["trappedinnightmare"] = "wailingcaverns",["againstkolkardream"] = "wailingcaverns",
["missingsorcerer"] = "sfk",["intojaws"] = "sfk",["toolatetoprelate"] = "sfk",
["highenergyregulator"] = "gnomeregan",["backupsystemactivation"] = "gnomeregan",
["scarletcorruption"] = "smcath",["reminiscentofsteel"] = "smarm",["orbofkaladus"] = "smcath",["goldisgoblinsheart"] = "smcath",
["powersbeyond"] = "razorfendowns",
["endukorzsandscalp"] = "zulfarrak",["driftingacrosssand"] = "zulfarrak",["plightofsandfury"] = "zulfarrak",
["ebonmereaffairs"] = "gilneascity",
["harnessofchimaeran"] = "maraudon",
["operationhelpjabbey"] = "blackrockdepths",["senatorialrevenge"] = "blackrockdepths",["arcanegolemcore"] = "blackrockdepths",
["wildshaper"] = "dmeast",["upperbinding"] = "dmwest",
["raidersraid"] = "lowerblackrock",["finalcrack"] = "lowerblackrock",["foresttrollscum"] = "lowerblackrock",
["bronzebetrayal"] = "blackmorass",["cavernsoftimerep"] = "blackmorass",["darkportal"] = "darkportal",["firstopeningofdarkportal"] = "blackmorass",
["darkreavermenace"] = "scholomance",
["nohonoramongchefs"] = "karazhancrypt",
["crescentgrove"] = "cg",

-- Misc
["landslidekill"] = "maraudon",

-- Misspelling
["larvarun"] = "brd",
}
GF_WORD_SPECIAL_COMBINATION = {
-- %a%d%a
["g2g"] = "gtg",["l4m"] = "lfm",["w2b"] = "wtb",["ww2b"] = "wtb",["ww2bb"] = "wtb",["w2bb"] = "wtb",
-- %a+%d
["any1"] = "anyone",["an1"] = "anyone",["ne1"] = "anyone",["ane1"] = "anyone",["some1"] = "anyone",["sum1"] = "anyone",["som1"] = "anyone",["need1"] = "needone",["need2"] = "needtwo",["need3"] = "needthree",
["lv19"] = "level19",["lv29"] = "level29",["lv39"] = "level39",["lv49"] = "level49",["lv59"] = "level59",["lv60"] = "level60",
["lv10"] = "level10",["lv20"] = "level20",["lv30"] = "level30",["lv40"] = "level40",["lv50"] = "level50",["lv60"] = "level60",
-- %a+%d+
["k10"] = "lowerkarazhan",["k40"] = "upperkarazhan",["aw20"] = "aq",["aw15"] = "aq",["aw12"] = "aq",--["aq15"] = "ruinsofahnqiraj",["aq20"] = "ruinsofahnqiraj",
["strat10"] = "stratholme",["up4"] = "upfor",
-- Quest Fixes
["buzzbox323"] = "buzzboxthreetwothree",["buzzbox411"] = "buzzboxfouroneone",["buzzbox525"] = "buzzboxfivetwofive",["buzzbox827"] = "buzzboxeighttwoseven",
["take2"] = "taketwo",["take3"] = "takethree",["si7"] = "siseven",["dv500"] = "dvfivehundred",
["useless!"] = "uselessexclamation",["triggered!"] = "triggeredexclamation",["dangerous!"] = "dangerousexclamation",["hungry!"] = "hungryexclamation",["counterattack!"] = "counterattackexclamation",
["purified!"] = "purifiedexclamation",["caught!"] = "caughtexclamation",["lost!"] = "lostexclamation",["winterspring!"] = "winterspringexclamation",["decoy!"] = "decoyexclamation",
["dwarves!"] = "dwarvesexclamation",["orcs!"] = "orcsexclamation",["attack!"] = "attackexclamation",
-- %d+%a+
["1st"] = "first",["2nd"] = "second",["3rd"] = "third",["4th"] = "fourth",["5th"] = "fifth",["6th"] = "sixth",["7th"] = "seventh",["8th"] = "eighth",["9th"] = "nineth",["10th"] = "tenth",
["1h"] = "hand",["2h"] = "hand",
["1spot"] = "morespot",["2spot"] = "morespot",["3spot"] = "morespot",["4spot"] = "morespot",["5spot"] = "morespot",["1slot"] = "moreslot",["2slot"] = "moreslot",["3slot"] = "moreslot",["4spot"] = "moreslot",["5spot"] = "moreslot",
["1more"] = "onemore",["2more"] = "twomore",["3more"] = "threemore",["4more"] = "fourmore",["5more"] = "fivemore",
["1x"] = "one",["2x"] = "two",["3x"] = "three",["4x"] = "four",["5x"] = "five",["6x"] = "six",["7x"] = "seven",["8x"] = "eight",["9x"] = "nine",["10x"] = "ten",
["19bg"] = "19battleground",["29bg"] = "29battleground",["39bg"] = "39battleground",["49bg"] = "49battleground",["59bg"] = "59battleground",["60bg"] = "60battleground",
["1min"] = "minute",["2min"] = "minute",["3min"] = "minute",["4min"] = "minute",["5min"] = "minute",["6min"] = "minute",["7min"] = "minute",["8min"] = "minute",["9min"] = "minute",["10min"] = "minute",
["15min"] = "minute",["20min"] = "minute",["25min"] = "minute",["30min"] = "minute",["35min"] = "minute",["40min"] = "minute",["45min"] = "minute",["50min"] = "minute",["55min"] = "minute",
-- %p%a+
[":d"] = "",[":p"] = "",
-- Word Replace
["lf"] = "lf",["lfm"] = "lfm",["lfg"] = "lfg",["wtb"] = "wtb",["wts"] = "wts",["wtt"] = "wtt",["wf"] = "wf",["anyone"] = "anyone",["queue"] = "queue",
["heal"] = "heal",["heals"] = "heals",["healer"] = "heal",["healers"] = "heal",["healing"] = "heal",["tank"] = "tank",["tanks"] = "tank",["tanked"] = "tanked",["tanky"] = "tanky",["tanking"] = "tanking",
["dps"] = "dps",["damage"] = "damage",["damages"] = "damages",["damager"] = "damager",["damagers"] = "damagers",["damaged"] = "damaged",["pst"] = "pst",["hc"] = "hc",
["looking"] = "looking",["look"] = "look",["looks"] = "looks",["looked"] = "looked",["looker"] = "looker",["lookers"] = "lookers",

["ring"] = "ring",["rings"] = "rings",["ringed"] = "ringed",["ringer"] = "ringer",["bring"] = "bring",["spring"] = "spring",["string"] = "string",
["head"] = "head",["heads"] = "heads",["headed"] = "headed",["header"] = "header",["headers"] = "headers",["heading"] = "heading",
["gloves"] = "gloves",["legs"] = "legs",["boots"] = "boots",["cloak"] = "cloak",["cloaks"] = "cloak",["cloaked"] = "cloaked",["cloaking"] = "cloaking",
["wrist"] = "wrist",["wrists"] = "wrists",["belt"] = "belt",["belts"] = "belts",["belted"] = "belted",["belting"] = "belting",
["beltbuckle"] = "beltbuckle",["beltbuckles"] = "beltbuckles",["weapon"] = "weapon",["weapons"] = "weapons",["shield"] = "shield",["shields"] = "shields",["shielded"] = "shielded",["shielding"] = "shielding",
["chest"] = "chest",["chests"] = "chests",["chester"] = "chester",["neck"] = "neck",["necks"] = "necks",["necked"] = "necked",["necking"] = "necking",["necklace"] = "necklace",["necklaces"] = "necklaces",
["hand"] = "hand",["hands"] = "hands",["handed"] = "handed",["handing"] = "handing",["hander"] = "hander",["handers"] = "handers",

["buy"] = "buy",["buys"] = "buys",["buying"] = "buying",["buyer"] = "buyer",["buyers"] = "buyers",["sell"] = "sell",["sells"] = "sells",["selling"] = "selling",["seller"] = "seller",["sellers"] = "sellers",
["trade"] = "trade",["trades"] = "trades",["traded"] = "traded",["trading"] = "trading",["offer"] = "offer",["offers"] = "offers",["offered"] = "offered",["offering"] = "offering",
["craft"] = "craft",["crafts"] = "crafts",["crafter"] = "crafter",["crafters"] = "crafters",["crafted"] = "crafted",["crafting"] = "crafting",["paying"] = "paying",["tipping"] = "tipping",
["cheap"] = "cheap",["cheaper"] = "cheaper",["cheapest"] = "cheapest",

["host"] = "host",["hosts"] = "hosts",["hosted"] = "hosted",["hosting"] = "hosting",
["form"] = "form",["forms"] = "forms",["formed"] = "formed",["forming"] = "forming",
["start"] = "start",["starts"] = "starts",["started"] = "started",["starting"] = "starting",
["gather"] = "gather",["gathers"] = "gathers",["gathered"] = "gathered",["gatherer"] = "gatherer",["gatherers"] = "gatherers",["gathering"] = "gathering",
["transmute"] = "transmute",["transmutes"] = "transmutes",["transmuted"] = "transmuted",["transmuting"] = "transmuting",
["need"] = "need",["needs"] = "needs",["needed"] = "needed",["needer"] = "needed",["needers"] = "needed",["needing"] = "needing",
["apply"] = "apply",["attach"] = "attach",["attacher"] = "attacher",["attachers"] = "attachers",["attached"] = "attached",["attaches"] = "attaches",["attaching"] = "attaching",
["make"] = "make",["makes"] = "makes",["maker"] = "maker",["makers"] = "makers",["making"] = "making",
["create"] = "create",["created"] = "created",["creates"] = "creates",["enchant"] = "enchant",["enchanted"] = "enchanted",["enchanter"] = "enchant",["enchants"] = "enchants",["enchanters"] = "enchants",["enchanting"] = "enchanting",
["get"] = "get",["gets"] = "gets",["getting"] = "getting",["can"] = "can",["cans"] = "cans",["will"] = "will",["wills"] = "wills",["willed"] = "willed",["willing"] = "willing",
["pick"] = "pick",["picking"] = "picking",["picker"] = "picker",["pickers"] = "pickers",["picked"] = "picked",
["lock"] = "lock",["locks"] = "locks",["locked"] = "locked",["locking"] = "locking",["locker"] = "locker",["lockers"] = "lockers",
["warlock"] = "warlock",["mage"] = "mage",["rogue"] = "rogue",["warrior"] = "warrior",["priest"] = "priest",["paladin"] = "paladin",["shaman"] = "shaman",["druid"] = "druid",["hunter"] = "hunter",
["level"] = "level",["levels"] = "levels",["leveled"] = "leveled",["leveler"] = "leveler",["levelers"] = "levelers",["leveling"] = "leveling",["lesser"] = "lesser",["less"] = "less",["more"] = "more",
["guild"] = "guild",["guilds"] = "guilds",["guilded"] = "guilded",["guilding"] = "guilding",

["stormwind"] = "stormwind",["ironforge"] = "ironforge",["darnassus"] = "darnassus",["orgrimmar"] = "orgrimmar",["undercity"] = "undercity",["thunderbluff"] = "thunderbluff",["thunder"] = "thunder",["stonard"] = "stonard",["alahthalas"] = "alahthalas",
["alterac"] = "alterac",["arathi"] = "arathi",["ashenvale"] = "ashenvale",["auberdine"] = "auberdine",["azshara"] = "azshara",["badlands"] = "badlands",["barrens"] = "barrens",["blastedlands"] = "blastedlands",
["cenarion"] = "cenarion",["darkshore"] = "darkshore",["darkshire"] = "darkshire",["deadwind"] = "deadwind",["desolace"] = "desolace",["dunmorogh"] = "dunmorogh",["durotar"] = "durotar",["duskwood"] = "duskwood",
["dustwallow"] = "dustwallow",["epl"] = "epl",["feathermoon"] = "feathermoon",["feralas"] = "feralas",["hinterlands"] = "hinterlands",["hyjal"] = "hyjal",["lakeshire"] = "lakeshire",["loch"] = "loch",["northwind"] = "northwind",
["lochmodan"] = "lochmodan",["moonglade"] = "moonglade",["mulgore"] = "mulgore",["redridge"] = "redridge",["searinggorge"] = "searinggorge",["silithus"] = "silithus",["silverpine"] = "silverpine",["sos"] = "sos",
["stonetalon"] = "stonetalon",["stranglethorn"] = "stranglethorn",["stv"] = "stv",["swamp"] = "swamp",["tanaris"] = "tanaris",["teldrassil"] = "teldrassil",["theramore"] = "theramore",["thousandneedles"] = "thousandneedles",
["kneedles"] = "kneedles",["tirisfal"] = "tirisfal",["ungoro"] = "ungoro",["valleyofspears"] = "valleyofspears",["westfall"] = "westfall",["wetlands"] = "wetlands",["dunalgaz"] = "wetlands",["winterspring"] = "winterspring",["wpl"] = "wpl",
["valley"] = "valley",["searing"] = "searing",["auction"] = "auction",["auctions"] = "auctions",["auctioned"] = "auctioned",["auctioning"] = "auctioning",["auctioneer"] = "auctioneer",["auctioneers"] = "auctioneers",

["naxx"] = "naxx",["naxxramas"] = "naxxramas",["bwl"] = "bwl",["kara"] = "kara",["karazhan"] = "karazhan",

["have"] = "have",["haves"] = "haves",["haven"] = "haven",["havens"] = "havens",["havent"] = "havent",["running"] = "running",["with"] = "with",
["picklock"] = "picklock",["picklocks"] = "picklocks",["picklocking"] = "picklocking",["join"] = "join",["joins"] = "joins",["joiner"] = "joiner",["joiners"] = "joiners",["joined"] = "joined",["joining"] = "joining)",
["open"] = "open",["opens"] = "opens",["opening"] = "opening",["opener"] = "opener",["openers"] = "openers",["opened"] = "opened",

["stone"] = "stone",["stones"] = "stones",["stoned"] = "stoned",["stoner"] = "stoner",["stoners"] = "stoners",["bars"] = "bars",["leather"] = "leather",["leathers"] = "leathers",

["cloth"] = "cloth",["cloths"] = "cloths",["clothes"] = "clothes",["clothed"] = "clothed",["clothing"] = "clothing",["gemstone"] = "gemstone",["gemstones"] = "gemstones",["gems"] = "gems",
["buckle"] = "buckle",["buckles"] = "buckles",["buckled"] = "buckled",["buckler"] = "buckler",["bucklers"] = "bucklers",["lockbox"] = "lockbox",["lockboxes"] = "lockboxes",

["couple"] = "couple",["couples"] = "couples",["coupled"] = "coupled",["coupler"] = "coupler",["couplers"] = "couplers",
["few"] = "few",
["dungeon"] = "dungeon",["dungeons"] = "dungeons",["dungeoned"] = "dungeoned",["dungeoning"] = "dungeoning",
["party"] = "party",
["instance"] = "instance",["instances"] = "instances",["instanced"] = "instanced",["instancing"] = "instancing",
["invite"] = "invite",["invites"] = "invites",["invited"] = "invite",["inviting"] = "inviting",
["fish"] = "fish",["fishes"] = "fishes",["fished"] = "fished",["fisher"] = "fisher",["fishers"] = "fishers",["fishing"] = "fishing",["fisherman"] = "fisherman",["fishermen"] = "fishermen",
["portal"] = "portal",["portals"] = "portals",["portaled"] = "portaled",["portaler"] = "portaler",["portalers"] = "portalers",["portaling"] = "portaling",
["summon"] = "summon",["summons"] = "summons",["summoned"] = "summoned",["summoner"] = "summoner",["summoners"] = "summoners",["summoning"] = "summoning",

-- Summons
["alterac123"] = "alteracsummon",["aq123"] = "aqsummon",["arathi123"] = "arathisummon",["arathihighlands123"] = "arathihighlandssummon",["ashenvale123"] = "ashenvalesummon",["azshara123"] = "azsharasummon",["badlands123"] = "badlandssummon",["barrens123"] = "barrenssummon",["blackrock123"] = "blackrocksummon",["blackrockmountain123"] = "blackrockmountainsummon",["blasted123"] = "blastedsummon",["blastedlands123"] = "blastedlandssummon",["bootybay123"] = "bootybaysummon",["brm123"] = "brmsummon",["darkmoon123"] = "darkmoonsummon",["darkmoonfaire123"] = "darkmoonfairesummon",["darnassus123"] = "darnassussummon",["desolace123"] = "desolacesummon",["diremaul123"] = "diremaulsummon",["dm123"] = "dmsummon",["epl123"] = "eplsummon",["everlook123"] = "everlooksummon",["feralas123"] = "feralassummon",["goldshire123"] = "goldshiresummon",["hydraxian123"] = "hydraxiansummon",["hillsbrad123"] = "hillsbradsummon",["if123"] = "ifsummon",["ironforge123"] = "ironforgesummon",["karazhan123"] = "karazhansummon",["moonglade123"] = "moongladesummon",["orgrimmar123"] = "orgrimmarsummon",["silithus123"] = "silithussummon",["sm123"] = "smsummon",["stonard123"] = "stonardsummon",["stormwind123"] = "stormwindsummon",["tanaris123"] = "tanarissummon",["thunder123"] = "thundersummon",["thunderbluff123"] = "thunderbluffsummon",["undercity123"] = "undercitysummon",["winterspring123"] = "winterspringsummon",["wpl123"] = "wplsummon",["cot123"] = "cotsummon",["hyjal123"] = "hyjalsummon",
}
GF_WORD_GOLD = {
["g"] = "gold",["gs"] = "gold",["gold"] = "gold",["silver"] = "silver",["silvers"] = "silver",["silv"] = "silver",["bh"] = "heal",
}
GF_WORD_FIX_ITEM_NAME = {
["stone"] = "stone",["bar"] = "bar",["ore"] = "ore",["cloth"] = "cloth",["leather"] = "leather",["buckle"] = "buckle",["gemstone"] = "gemstone",["lockbox"] = "lockbox",["enchant"] = "enchant",["libram"] = "libram",["arcanum"] = "arcanum",
["plans"] = "plans",["formula"] = "formula",["pattern"] = "pattern",["plans"] = "plans",["bag"] = "bag",["water"] = "water",["potion"] = "potion",["elixir"] = "elixir",["flask"] = "flask",["arcanite"] = "arcanite",
["goggles"] = "head",["headband"] = "head",["cap"] = "head",["helm"] = "head",["helmet"] = "head",["hat"] = "head",["coif"] = "head",["hood"] = "head",["cowl"] = "head",["circlet"] = "head",["mask"] = "head",["headdress"] = "head",["crown"] = "head",["headguard"] = "head",["bandana"] = "head",
["necklace"] = "neck",["pendant"] = "neck",["choker"] = "neck",
["shoulders"] = "shoulders",["mantle"] = "shoulders",["shawl"] = "shoulders",["pauldrons"] = "shoulders",["spaulders"] = "shoulders",["amice"] = "shoulders",["pads"] = "shoulders",["epaulets"] = "shoulders",
["shroud"] = "cloak",["cloak"] = "cloak",["drape"] = "cloak",["cape"] = "cloak",
["robe"] = "chest",["breastplate"] = "chest",["tunic"] = "chest",["vest"] = "chest",["hauberk"] = "chest",["vestments"] = "chest",["garb"] = "chest",["chestguard"] = "chest",["chestpiece"] = "chest",["bulwark"] = "chest",["robes"] = "chest",["armor"] = "chest",["chestplate"] = "chest",["jerkin"] = "chest",
["bracers"] = "wrist",["wristguards"] = "wrist",["wristbands"] = "wrist",["bracelets"] = "wrist",["cuffs"] = "wrist",["armguards"] = "wrist",
["gloves"] = "gloves",["gauntlets"] = "gloves",["handwraps"] = "gloves",["handguards"] = "gloves",
["belt"] = "belt",["sash"] = "belt",["girdle"] = "belt",["cord"] = "belt",["cinch"] = "belt",["waistband"] = "belt",
["leggings"] = "legs",["pants"] = "legs",["pantaloons"] = "legs",["legguards"] = "legs",["britches"] = "legs",["trousers"] = "legs",["legwraps"] = "legs",["legplates"] = "legs",["sarong"] = "legs",["kilt"] = "legs",["loincloth"] = "legs",
["boots"] = "boots",["sabatons"] = "boots",["sandals"] = "boots",["greaves"] = "boots",["shoes"] = "boots",["slippers"] = "boots",
["ring"] = "ring",["band"] = "ring",
["shield"] = "shield",["crest"] = "shield",["buckler"] = "shield",["crest"] = "shield",["deflector"] = "shield",
["blade"] = "dagger",["knife"] = "dagger",["poniard"] = "dagger",["dirk"] = "dagger",["shiv"] = "dagger",["dagger"] = "dagger",["claw"] = "dagger",
["axe"] = "axe",["cleaver"] = "axe",["reaver"] = "axe",["edge"] = "axe",["hacker"] = "axe",["scythe"] = "axe",["reaper"] = "axe",["slayer"] = "axe",["chopper"] = "axe",
["mace"] = "mace",["hammer"] = "mace",["cudgel"] = "mace",["warhammer"] = "mace",["scepter"] = "mace",["bludgeon"] = "mace",["club"] = "mace",["hand"] = "mace",["gavel"] = "mace",
["fist"] = "mace",["pummeler"] = "mace",["maul"] = "mace",["spade"] = "mace",["crusher"] = "mace",["mallet"] = "mace",["smasher"] = "mace",["battlehammer"] = "mace",
["slicer"] = "sword",["sword"] = "sword",["carver"] = "sword",["shortsword"] = "sword",["machete"] = "sword",["rapier"] = "sword",["protector"] = "sword",["falchion"] = "sword",["scimitar"] = "sword",["ripper"] = "sword",["sabre"] = "sword",
["broadsword"] = "sword",["longsword"] = "sword",["talwar"] = "sword",["cutlass"] = "sword",["shortblade"] = "sword",["strike"] = "sword",["claymore"] = "sword",["greatsword"] = "sword",["warblade"] = "sword",["flamberge"] = "sword",
["glaive"] = "polearm",["spear"] = "polearm",["harpoon"] = "polearm",["pitchfork"] = "polearm",["piercer"] = "polearm",
["staff"] = "staff",["rod"] = "staff",["cane"] = "staff",["spire"] = "staff",["stave"] = "staff",["stick"] = "staff",["pole"] = "staff",
["bow"] = "bow",["shortbow"] = "bow",["longbow"] = "bow",["recurve"] = "bow",["crossbow"] = "bow",
["blunderbuss"] = "gun",["boomstick"] = "gun",["shotgun"] = "gun",["rifle"] = "gun",["gun"] = "gun",["shooter"] = "gun",["musket"] = "gun",
["wand"] = "wand",
}
GF_WORD_IGNORE = {
["abolishme"] = 1,["abolishmy"] = 1,["aboutspec"] = 1,["aboutthisquest"] = 1,["aboutthisqueue"] = 1,["abovelevel"] = .5,["acrosstheroom"] = 1,["actuallya"] = .5,["addhim"] = 1,
["addonfor"] = 1,["advertisingthat"] = 1,["afking"] = 1,["afterhismount"] = 1,["afterthefirst"] = .5,["afterwhat"] = 1,["agilityvs"] = 1,["hardcarry"] = .5,["alliancefocused"] = 1,
["alliancegetnothing"] = 1,["allianceplayer"] = 1,["alliancetypically"] = 1,["allitemsarehr"] = 1,["allleave"] = 1,["allmonitored"] = 1,["allstartzones"] = 1,["alreadyestablished"] = 1,["americanwhining"] = .5,
["amidoing"] = 1,["amigoing"] = .5,["amiin"] = 1,["amilf"] = 1,["amistill"] = 1,["amisupposed"] = 1,["andhavelike"] = 1,["andistrying"] = .5,["andlf"] = 1,
["andnoticed"] = 1,["andstillwaiting"] = .5,["andwhatrace"] = 1,["anyadvice"] = 1,["anynefmaybe"] = .5,["anyonecanopen"] = 1,["anyonedeclines"] = 1,["anyonedid"] = 1,["anyonedone"] = 1,
["anyonedrop"] = 1,["anyoneelsetried"] = 1,["anyoneelseusing"] = 1,["anyonehadissues"] = 1,["anyonehadproblems"] = 1,["anyonehave"] = 1,["anyonehelpexplain"] = .5,["anyoneicaninvite"] = 1,["anyoneinthat"] = 1,
["anyonekilled"] = 1,["anyoneknow"] = 1,["anyoneknowhowto"] = 1,["anyoneknowswhere"] = 1,["anyoneknowwhere"] = 1,["anyonelink"] = 1,["anyonepop"] = 1,["anyonetalk"] = 1,["anyquestgive"] = 1,
["anysuggestion"] = 1,["anyuseforit"] = 1,["apologize"] = 1,["approximatelocation"] = 1,["approxlocation"] = 1,["apxlocation"] = 1,["areimpossible"] = .5,["arelikejoin"] = .5,["aremidpack"] = 1,
["aremonitored"] = 1,["arentatwink"] = .5,["areputting"] = 1,["arequeueon"] = 1,["arethereany"] = 1,["aretherestill"] = 1,["arewaylower"] = .5,["arewegetting"] = 1,["aroundpop"] = .5,
["aroundpopulation"] = .5,["aroundrelation"] = .5,["aroundrelationship"] = .5,["asalliance"] = .5,["asdoing"] = .5,["ashorde"] = .5,["asked"] = 1,["askquestion"] = 1,["asrealm"] = 1,
["atleveling"] = 1,["attackback"] = 1,["atthatlevel"] = 1,["autoneedaddon"] = 1,["autoworldbuff"] = 1,["awtobad"] = 1,["awtobad"] = 1,["babypulls"] = 1,["backtotown"] = 1,
["battlestance"] = 1,["beatout"] = 1,["becauseadvertising"] = 1,["beforeAportal"] = 1,["beingreserved"] = 1,["belowstormwind"] = 1,["bestchoice"] = 1,["bestpvpheal"] = 1,["betterhere"] = 1,
["bistankdoesnt"] = 1,["bombardingme"] = 1,["boosted"] = .5,["borrowplease"] = 1,["bothaddedin"] = 1,["bothalliance"] = .5,["bothhorde"] = .5,["bought"] = 1,["box"] = 1,
["brobeen"] = 1,["broreally"] = 1,["buffaredown"] = 1,["buffforstormwind"] = 1,["buffme"] = 1,["buffmy"] = 1,["buffplease"] = 1,["build"] = 1,["burningcrusade"] = 1,
["busybsing"] = .5,["butbadat"] = 1,["butcouldnt"] = 1,["butdonotneed"] = .5,["butitsactually"] = 1,["butneed"] = .5,["butnowalliance"] = 1,["butnowhorde"] = 1,["butthatwould"] = 1,
["butthatwouldnt"] = 1,["buttheywere"] = 1,["butyouarein"] = 1,["Cyouthat"] = .5,["bypremades"] = 1,["cameafter"] = 1,["cananyoneadd"] = 1,["cananyonetellme"] = 1,["candamagedungeon"] = 1,
["canhardcorequeue"] = 1,["canhcqueue"] = 1,["canhealdungeon"] = 1,["caniborrow"] = 1,["canilevel"] = 1,["caniqueue"] = 1,["canistart"] = 1,["cannotfind"] = 1,["cantankdungeon"] = 1,
["cantbetrust"] = 1,["cantbetrusted"] = 1,["cantellme"] = .5,["cantget"] = 1,["cantheyadd"] = 1,["cantqueue"] = 1,["cantremember"] = 1,["canyoujoin"] = .5,["canyounot"] = 1,
["casino"] = 1,["checkout"] = 1,["cleanseme"] = 1,["cleansemy"] = 1,["clearlyshows"] = 1,["clearout"] = 1,["closetomax"] = .5,["combatstance"] = 1,["combinemydamage"] = 1,
["comebelow"] = 1,["comehelpyou"] = 1,["comingback"] = 1,["consideredgood"] = 1,["cookiecuttertryhard"] = 1,["coupleofbuff"] = 1,["coupleofquestion"] = 1,["couplequestion"] = 1,["critvs"] = 1,
["crosspaths"] = 1,["curemydebuff"] = 1,["curemydisease"] = 1,["currencies"] = 1,["currentquest"] = 1,["damageaddon"] = 1,["damageinfo"] = 1,["damagemod"] = 1,["damagetoweapon"] = 1,
["damagevs"] = 1,["damnrisky"] = 1,["danceslike"] = 1,["darkspeartroll"] = 1,["daysago"] = 1,["deadserver"] = 1,["debuff"] = 1,["decentexperience"] = 1,["declinequeue"] = 1,
["decliningqueue"] = 1,["defensestance"] = 1,["derp"] = 1,["didanyonecomplete"] = 1,["didanyonedid"] = 1,["didanyonedo"] = 1,["didntget"] = 1,["didquest"] = .5,["differentrace"] = 1,
["dingand"] = 1,["direction"] = 1,["directions"] = 1,["discount"] = 1,["dobasically"] = 1,["doesanyonedo"] = 1,["doesgroupfinder"] = 1,["doesitcost"] = 1,["doesitmatter"] = 1,
["doesitportal"] = 1,["doeslfg"] = 1,["doeslft"] = 1,["doesmy"] = 1,["doesnobody"] = 1,["doesntattack"] = 1,["doesntkill"] = .5,["doesntletme"] = 1,["doesntmatter"] = 1,
["doesntwork"] = 1,["doesthisend"] = 1,["dogshitab"] = 1,["dogshitav"] = 1,["dogshitwsg"] = 1,["doguild"] = 1,["doigetanything"] = .5,["doigo"] = .5,["doineed"] = 1,
["doingitatm"] = 1,["doingmoredamage"] = 1,["doireset"] = 1,["donationof"] = .5,["doneanydungeon"] = 1,["donotC"] = 1,["donotfind"] = 1,["donotfuckqueue"] = 1,["donotinvite"] = 1,
["donotjoin"] = .5,["donotjoinwsg"] = 1,["donotneedpvp"] = .5,["donotpunish"] = 1,["donotqueue"] = 1,["donotsee"] = 1,["donottry"] = 1,["donotwaste"] = 1,["doourbest"] = 1,
["dopeoplekill"] = .5,["dopeoplestill"] = .5,["doyouget"] = .5,["doyougetin"] = 1,["doyougeton"] = 1,["doyougroup"] = 1,["dragit"] = .5,["dropsoon"] = 1,["dropto"] = .5,
["duel"] = 1,["duetolack"] = 1,["dumbass"] = 1,["dungeonanddragons"] = .5,["dungeondragons"] = .5,["dungeoninretail"] = 1,["dungeonraid"] = 1,["dungeonspam"] = 1,["dungeonthathas"] = .5,
["dungeonthathave"] = .5,["duringleveling"] = .5,["duringmyhearth"] = 1,["earlier"] = 1,["earnraid"] = 1,["emptyarch"] = 1,["encountered"] = 1,["endofraid"] = 1,["everneed"] = 1,
["everyonehas"] = 1,["everyoneneed"] = .5,["everyonewas"] = .5,["everythinghr"] = 1,["everythingishr"] = 1,["everythingisreserved"] = 1,["reserveeverything"] = 1,["reservingeverything"] = 1,["everythingreserved"] = 1,["expectationsfrom"] = 1,["explainme"] = 1,
["explaintome"] = 1,["exploreyour"] = 1,["extragold"] = .5,["extremelyannoying"] = .5,["faceenemy"] = 1,["factiondiscrepancy"] = 1,["factionimbalance"] = 1,["farmspec"] = 1,["fastestqueue"] = .5,
["fastqueue"] = .5,["fewquestion"] = 1,["fightingpeople"] = 1,["finallymaybe"] = .5,["findamerican"] = .5,["findingquestgive"] = 1,["findquestgive"] = 1,["finishedescort"] = 1,["flavoritem"] = 1,
["forallsorts"] = 1,["forcomingto"] = .5,["forcomingtothe"] = .5,["forexperiment"] = 1,["forextra"] = 1,["forfeiting"] = 1,["forgetthat"] = 1,["forgold"] = 1,["formsgroup"] = 1,
["forquestion"] = 1,["forwarriorweapon"] = 1,["freeaxe"] = .5,["freebelt"] = .5,["freeboots"] = .5,["freebow"] = .5,["freechest"] = .5,["freecloak"] = .5,["freecrossbow"] = .5,
["freedagger"] = .5,["freegloves"] = .5,["freegun"] = .5,["freehead"] = .5,["freelegs"] = .5,["freemace"] = .5,["freeneck"] = .5,["freering"] = .5,["freeshoulder"] = .5,
["freestaff"] = .5,["freesword"] = .5,["freewand"] = .5,["freeweapon"] = .5,["freewrist"] = .5,["freexbow"] = .5,["friendship"] = 1,["fromany"] = 1,
["fromcapitalcity"] = .5,["fromcapitolcity"] = .5,["fromchat"] = 1,["fromdoingquest"] = .5,["fromsending"] = 1,["fromthatchat"] = 1,["fromtrash"] = 1,["fromwars"] = 1,["fucktwink"] = 1,
["fulfillmeplease"] = .5,["fullofgnomes"] = 1,["futureusage"] = 1,["gankingin"] = .5,["gateisclosed"] = 1,["gatesareclosed"] = 1,["getanyquest"] = 1,["getanythingfrom"] = .5,["getatlevel"] = 1,
["getfrom"] = .5,["getmorerested"] = 1,["getshit"] = .5,["getspeopletoqueue"] = 1,["gettingcamped"] = 1,["gettinggrinded"] = 1,["giveadvice"] = 1,["giveinchat"] = 1,["givingadvice"] = 1,
["gl"] = 1,["glowon"] = 1,["gmsent"] = 1,["gmssay"] = 1,["goingeast"] = .5,["goingnorth"] = .5,["goingsouth"] = .5,["goingwest"] = .5,["goldfarm"] = .5,
["goldformount"] = 1,["goldformymount"] = 1,["goodlevelfor"] = 1,["goodreason"] = 1,["goodreasons"] = 1,["goodreward"] = 1,["gotkicked"] = 1,["greatestserver"] = 1,["greatreward"] = 1,
["greenname"] = 1,["groupaboveyou"] = 1,["groupdied"] = 1,["groupiwasin"] = 1,["groupwork"] = 1,["guildrun"] = -1,["guildspam"] = 1,["guildspot"] = 1,["guyscani"] = .5,["guyseven"] = 1,
["hardcorequeuebg"] = 1,["hardtoget"] = 1,["harem"] = .5,["hasanyonetried"] = 1,["hasbow"] = 1,["hascompleted"] = 1,["hasstun"] = 1,["haveanyquest"] = 1,["havenotdoneany"] = 1,
["havequestion"] = 1,["havethisfrom"] = 1,["havetobethere"] = .5,["haveton"] = 1,["hcqueuebg"] = 1,["hcsshouldnot"] = 1,["headgoingout"] = 1,["headinorgrimmar"] = 1,
["headinstormwind"] = 1,["headturnin"] = 1,["headup"] = 1,["healaddon"] = 1,["healbalm"] = 1,["healcouch"] = 1,["healdonotdie"] = 1,["healdungeonqueue"] = 1,["healinfo"] = 1,
["healmod"] = 1,["healtoweapon"] = 1,["healvs"] = 1,["hearthback"] = 1,["hearthstoneback"] = 1,["heisscared"] = 1,["hejustbails"] = 1,["hejustleaves"] = 1,["helpexplain"] = .5,
["helplocate"] = 1,["hereor"] = 1,["hitcapinpve"] = 1,["hitcapinpvp"] = 1,["hitvs"] = 1,["hoo"] = 1,["hopetosee"] = .5,
["hordefocused"] = 1,["hordegetnothing"] = 1,["hordeplayer"] = 1,["hordetypically"] = 1,["hottake"] = 1,["hourlong"] = 1,["hourqueue"] = 1,["howami"] = 1,["howarethings"] = 1,
["howcome"] = 1,["howdid"] = 1,["howdo"] = .5,["howdoes"] = .5,["howdoesdungeon"] = 1,["howdoesqueue"] = 1,["howdoi"] = 1,["howdoiqueue"] = 1,["howdoyou"] = 1,
["howelseam"] = .5,["howelseare"] = .5,["howfew"] = .5,["howfind"] = 1,["howgoodis"] = 1,["howhardis"] = 1,["howigo"] = 1,["howisitpossible"] = 1,["howisthis"] = 1,
["howlfgworks"] = .5,["howlfraidworks"] = .5,["howlftworks"] = .5,["howlongdoes"] = 1,["howmuchdamage"] = 1,["howmuchdoes"] = 1,["howmuchheal"] = 1,["howthunderfury"] = 1,["howtoacquire"] = 1,
["howtodothis"] = 1,["howtokill"] = .5,["howtoqueue"] = 1,["howtostart"] = 1,["howwasthatpossible"] = 1,["howyou"] = 1,["howyouhave"] = 1,["hrshit"] = 1,["iusedto"] = 1,
["iamalways"] = .5,["iattempt"] = 1,["icanborrow"] = 1,["icanenter"] = 1,["icannotget"] = 1,["icantfind"] = .5,["cantgetfirsthit"] = -1,["ideallevel"] = 1,["ifanyoneknow"] = 1,
["ifhejoins"] = 1,["ifidonot"] = 1,["ifimcorrect"] = 1,["ifineed"] = 1,["ifiplan"] = 1,["ifipress"] = 1,["ifitsnot"] = 1,["ifturtlewow"] = 1,["iftwow"] = 1,
["ifyouplay"] = 1,["ignore"] = 1,["iguess"] = .5,["ihavebeenask"] = 1,["ihavebeenon"] = .5,["ihaveboth"] = .5,["ihavefinished"] = 1,["ihavetospeak"] = 1,["ijustdid"] = 1,
["ikindoffelt"] = 1,["ilike"] = .5,["illdie"] = 1,["illirritate"] = 1,["illpiss"] = 1,["illtick"] = 1,["imaginebeing"] = 1,["imaginedoing"] = .5,["imalready"] = 1,
["imalways"] = .5,["imexalted"] = 1,["imfriendly"] = 1,["imhated"] = 1,["imhonored"] = 1,["imissyour"] = 1,["imneutral"] = 1,["implaying"] = 1,["imrevered"] = 1,
["inadifferentway"] = 1,["inbfa"] = 1,["indamage"] = 1,["inentirety"] = 1,["inepoch"] = 1,["informationabout"] = 1,["ingame"] = 1,["ingamestore"] = 1.5,["inheal"] = 1,
["inlegion"] = 1,["inmop"] = 1,["innerdominatrix"] = 1,["inopenworld"] = 1,["inother"] = 1,["inpveandpvp"] = 1,["inpvpandpve"] = 1,["inshadowlands"] = 1,["insideoroutside"] = 1,
["inspectme"] = 1,["instaleave"] = 1,["instaleaving"] = 1,["instantportal"] = 1,["intank"] = 1,["intbc"] = 1,["intellectvs"] = 1,["interestedinthis"] = 1,["internalerror"] = 1,
["inthetitle"] = 1,["intwilightzone"] = 1,["invitedme"] = 1,["inwod"] = 1,["inworldchat"] = 1,["inwotlk"] = 1,["iremember"] = 1,["isaffliction"] = 1,["isalevel"] = 1,
["isbugged"] = 1,["iscorrectthen"] = 1,["isfinetotank"] = 1,["isgoodtotank"] = 1,["ishordebgqueue"] = 1,["ishostile"] = 1,["isita"] = 1,["isitbetter"] = 1,["isitnot"] = 1,
["isitok"] = 1,["isitworthdoing"] = 1,["ismasterrace"] = .5,["ismoreneeded"] = .5,["isnpc"] = 1,["isntpopping"] = .5,["ispromoting"] = 1,["ispvp"] = .5,["isqueue"] = .5,
["isreallygood"] = 1,["istarted"] = .5,["isthereareason"] = 1,["istheresomething"] = 1,["istillneedmore"] = 1,["iswear"] = 1,["iswild"] = .5,["isworthit"] = 1,["isxfaction"] = 1,
["itbackon"] = 1,["itbugged"] = 1,["itemdrop"] = 1,["ithinkthereis"] = .5,["ithinkthey"] = 1,["itmeans"] = 1,["itpop"] = 1,["itryto"] = 1,["itsbecause"] = 1,
["itsdying"] = 1,["itsnotaround"] = 1,["itsnowhere"] = 1,["itssaying"] = 1,["ittransfersyou"] = .5,["itwasinsane"] = 1,["iwashavingfun"] = 1,["iwillsay"] = .5,["iwishthere"] = 1,
["iwouldnot"] = 1,["joinany"] = 1,["jointhat"] = 1,["jointhatone"] = 1,["joking"] = 1,["justaslegit"] = 1,["justcold"] = 1,["justfine"] = 1,["justfinished"] = 1,
["justforhimself"] = .5,["justhaveto"] = .5,["justhot"] = 1,["justnotenough"] = 1,["justout"] = 1,["justquest"] = 1,["justwarm"] = 1,["justwasting"] = 1,["kalimdor"] = 1,
["keepfailing"] = 1,["kickedeveryone"] = 1,["kickedfrom"] = 1,["kickedyou"] = 1,["kickinganyone"] = 1,["kicksyou"] = 1,["killingbeginner"] = 1,["killinglowbies"] = 1,["killlowbies"] = .5,
["knowaboutthis"] = 1,["knowanaddon"] = 1,["knowwhereat"] = 1,["knowwherein"] = 1,["knowwherethis"] = 1,["lastmonth"] = 1,["lastsheep"] = 1,["lastyear"] = 1,["lecturehowto"] = 1,
["leftoutside"] = 1,["lesbian"] = 1,["letmequest"] = 1,["letthemwait"] = 1,["lettingme"] = 1,["levelingnotfor"] = 1,["levelingpeople"] = .5,["levelpeople"] = 1,["leveltoqueue"] = 1,
["levelwater"] = 1,["levelwith"] = 1,["lfboyfriend"] = 2,["lfbuff"] = 1,["lfbug"] = 1,["lfdonation"] = .5,["lffreeenchant"] = 1,["lfgirlfriend"] = 2,["lfgworldbuff"] = 1,
["lfinformation"] = .5,["lfitem"] = .5,["lfleveling"] = 1,["lfmagewithoranges"] = 1,["lfmworldbuff"] = 1,["lfnothing"] = 1,["lfraidbutton"] = .5,["lfthas"] = 1,["lfthereportalA"] = 1,
["lftip"] = 1,["lftisnotbroken"] = 1,["lftportalA"] = 1,["lfworldbuff"] = 1,["likeaids"] = 1,["likeinretail"] = 1,["likeofus"] = 1,["liketoask"] = 1,["limitslevel"] = .5,
["lmaosaying"] = 1,["locating"] = 1,["lockbox"] = 1,["loseandgetmy"] = 1,["losers"] = 1,["loveyourjoke"] = .5,["lowerthanmylevel"] = .5,["lowlevelelite"] = 1,
["macro"] = 1,["macros"] = 1,["magefood"] = 1,["magewater"] = 1,["mainlyprefer"] = 1,["majorityofserver"] = 1,["makeanotherone"] = .5,["makeleader"] = .5,["makessense"] = 1,
["makesureyouadd"] = 1,["makeyourown"] = 1,["manhandled"] = 1,["manyofbest"] = 1,["manytwink"] = 1,["massiveamounts"] = 1,["maxaround"] = .5,["maxrested"] = 1,["maybethere"] = .5,
["maybewiththis"] = .5,["mchammer"] = 1,["melaid"] = 1,["meta"] = .5,["midgetguild"] = 1,["monthago"] = 1,["monthsago"] = 1,["moreexperiencethanme"] = 1,["morehighlevel"] = 1,
["moreraidhealgear"] = 1,["morethreat"] = 1,["mostpop"] = .5,["mostpopular"] = .5,["mountgold"] = 1,["mpvs"] = 1,["mrextravagant"] = 1,["muchar"] = 1,["mucharcane"] = 1,
["muchfire"] = 1,["muchfr"] = 1,["muchfrost"] = 1,["muchnature"] = 1,["muchnr"] = 1,["muchshadow"] = 1,["myaddon"] = 1,["mybad"] = 1,["mybrotherinchrist"] = 1,
["mybuff"] = 1,["mydebuff"] = 1,["mypet"] = 1,["mysterydungeon"] = 1,["nah"] = 1,["nameplates"] = 1,["needadvice"] = 1,["needbuff"] = 1,["neednewgame"] = 1,
["needpandaren"] = 1,["needsomeinfo"] = 1,["needsomeinformation"] = 1,["needtocomehang"] = 1,["needtoexplore"] = 1,["needtohangout"] = 1,["needtoput"] = 1,["needtoqueueit"] = 1,["needtoreroll"] = .5,
["needtoteach"] = 1,["needweek"] = 1,["nevergive"] = 1,["neverjoin"] = 1,["newermmos"] = 1,["newhere"] = 1,["newmmos"] = 1,["nexttime"] = 1,["nicereward"] = 1,
["ninjajoining"] = 1,["ninjaloot"] = 1,["noballs"] = 1,["nobecause"] = .5,["nobodynotices"] = 1,["nobodyplay"] = .5,["nobuff"] = 1,["nobully"] = 1,["nofuck"] = 1,
["nofunwhen"] = 1,["nonlatin"] = 1,["noodle"] = .5,["noonequeue"] = 1,["notankfor"] = 1,["notasingleplayer"] = 1,["notenoughtankqueue"] = 1,["notgroup"] = 1,["notingroup"] = 1,
["notpossible"] = 1,["notsingleplayer"] = 1,["notsurewhat"] = .5,["nottrustworthy"] = 1,["nowhesask"] = 1,["nowhuh"] = 1,["nukeher"] = 1,["nukehim"] = 1,["obviousseller"] = 1,
["ofturtlewow"] = 1,["ofunderwaterstuff"] = 1,["ofuslf"] = 1,["ofxtacy"] = 1,["oldermmo"] = 1,["oldmmos"] = 1,["oncetheyhave"] = 1,["onceyoupersonally"] = .5,["oncooldown"] = 1,
["oneofbest"] = 1,["onequestion"] = 1,["onfollow"] = 1,["onfriday"] = .5,["onlypeople"] = .5,["onmeand"] = 1,["onmonday"] = .5,["onsaturday"] = .5,["onsunday"] = .5,
["onthursday"] = .5,["ontuesday"] = .5,["onwednesday"] = .5,["opinion"] = 1,["orgroup"] = .5,["ordoesit"] = 1,["orgrimmarhead"] = 1,["oristhis"] = 1,["orjustfind"] = 1,
["orjustfinds"] = 1,["oronlyat"] = 1,["otherquest"] = .5,["otherserver"] = .5,["otherthan"] = 1,["ourranks"] = 1,["outoflevelrange"] = .5,["oversaturated"] = 1,["pairsoffeet"] = 1,
["payingforheal"] = 1,["payingfortank"] = 1,["peopleclick"] = 1,["petattack"] = 1,["pisspeopleoff"] = 1,["placetolevel"] = 1,["planonbeing"] = 1,["playalliance"] = 1,["playhorde"] = 1,
["pleasehr"] = 1.5,["pleasestopthe"] = .5,["pleasewrite"] = 1,["pmayou"] = 1,["pointsin"] = 1,["pointstoyour"] = 1,["pokemon"] = .5,["pokemontrainer"] = 1,["political"] = 1,
["popserver"] = .5,["popularserver"] = .5,["portalisopen"] = 1,["portalisup"] = 1,["practice"] = 1,["prefertoplay"] = 1,["pressqueue"] = 1,["pretending"] = 1,
["princesswife"] = 1,["prohibited"] = 1,["prolly"] = 1,["psa"] = 1,["putoff"] = 1,["pvepussies"] = 1,["pvepussy"] = 1,["pvpanywhere"] = 1,["pvpbrain"] = 1,
["pvpfag"] = 1,["pvpfags"] = 1,["pvpflagged"] = 1,["pvpguy"] = 1,["pvpkills"] = .5,["pvpmode"] = 1,["pvpranking"] = 1,["pvpserver"] = .5,["qq"] = 1,
["questandlevel"] = 1,["questguild"] = 1,["questie"] = 1,["question"] = .5,["questionfor"] = 1,["questionguys"] = .5,["questionplease"] = 1,["questmod"] = 1,["queststart"] = 1,
["queststartas"] = 1,["queueagain"] = 1,["queueand"] = 1,["queuebroken"] = 1,["queueforlikemins"] = .5,["queueitinlft"] = 1,["queuesuck"] = 1,["quickquestion"] = 1,["quitefew"] = 1,
["racethat"] = .5,["raiddrop"] = 1,["raiddruid"] = 1,["raidguild"] = 1,["raidspam"] = 1,["randomisnormal"] = 1,["rangeoption"] = 1,["rankingplease"] = 1,["reallife"] = 1,
["reallymatter"] = 1,["reallyreserving"] = 1,["realthing"] = .5,["rebooted"] = 1,["reddit"] = 1,["reinvite"] = 1,["remembertrying"] = 1,["remotelyfair"] = 1,["removeall"] = .5,
["removeme"] = 1,["removemy"] = 1,["repairs"] = 1,["rerollfactionchange"] = 1,["reservedin"] = 1,["resetdungeon"] = .5,["resetquickly"] = 1,["resetspot"] = 1,["respec"] = 1,
["restoringbalm"] = 1,["resurrectiondruid"] = 1,["retailhas"] = 1,["retailpvp"] = 1,["retard"] = 1,["rexxarat"] = .5,["ridofit"] = 1,["ripheroff"] = 1,["riphimoff"] = 1,
["ripoff"] = 1,["rippeopleoff"] = 1,["ripplayeroff"] = 1,["ripthemoff"] = 1,["ripusoff"] = 1,["riskydoing"] = 1,["ruin"] = 1,["rungo"] = 1,["runsaid"] = 1,
["runtime"] = 1,["saidnowipes"] = 1,["sameoddsas"] = 1,["scam"] = 1,["seeyouagain"] = .5,["semihardcore"] = 1,["sendingmessages"] = 1,["sentyou"] = 1,["seriouslyreserving"] = 1,
["server"] = .5,["serverispathetic"] = .5,["serverofall"] = 1,["setquest"] = 1,["shamantankwill"] = 1,["sheisscared"] = 1,["shesbeauty"] = 1,["shilldungeon"] = 1,["shirt"] = 1,
["shitload"] = 1,["shitloads"] = 1,["shitdad"] = 1,["shitfather"] = 1,["shitmom"] = 1,["shitmother"] = 1,["shouldigo"] = .5,["shoulditry"] = 1,["shouldnotbe"] = 1,
["sicko"] = 1,["simplycannot"] = 1,["simplycant"] = 1,["sincewedid"] = .5,["singleandlonely"] = 1,["slightglow"] = 1,["slowerpace"] = 1,["smfh"] = .5,["soarealliance"] = 1,
["soarehorde"] = 1,["sobestto"] = 1,["sohecan"] = 1,["sohedoesnt"] = 1,["sohemakes"] = 1,["sohowis"] = 1,["soicanearn"] = 1,["soicanlose"] = 1,["soicansee"] = 1,
["soloanyquest"] = 1,["someaddon"] = 1,["someadvice"] = 1,["somehr"] = 1,["someneed"] = .5,["someofbest"] = 1,["somequestion"] = 1,["somestuff"] = 1,["somethingfat"] = 1,
["somewhereinthat"] = 1,["somuchshit"] = .5,["soovertuned"] = 1,["sorry"] = 1,["soshedoesnt"] = 1,["soshemakes"] = 1,["sowequit"] = 1,["spamisgetting"] = .5,["spamitsgetting"] = .5,
["spelldamagetoweapon"] = 1,["spellhex"] = 1,["spiritheal"] = 1,["spiritvs"] = 1,["splitsecond"] = 1,["spreadsheet"] = 1,["spvs"] = 1,["stackwater"] = 1,
["staminavs"] = 1,["startas"] = 1,["startassoon"] = -1,["startedgriefing"] = 1,["startgriefing"] = 1,["starttaunting"] = 1,["starttolecture"] = 1,["startyourown"] = 1,["stfu"] = 1,["stillscared"] = 1,
["stilltoscared"] = 1,["stilltoscared"] = 1,["stopdecline"] = 1,["stopdeclining"] = 1,["stoppingme"] = 1,["stopqueue"] = 1,["stoptalkingabout"] = .5,["stoptryingto"] = 1,["stormwindhead"] = 1,
["storystuff"] = 1,["streamit"] = 1,["strengthvs"] = 1,["succubus"] = 1,["succubuss"] = 1,["suckforyou"] = 1,["suckingtemple"] = 2,["sucksasson"] = .5,["suckson"] = .5,
["sugardaddy"] = 1,["sugarmomma"] = 1,["summonedme"] = 1,["supposedtoqueue"] = 1,["takeforeverto"] = 1,["takesages"] = 1,["taketomuch"] = 1,["talents"] = 1,["talenttree"] = 1,
["talkabout"] = 1,["tankaddon"] = 1,["tankcouch"] = 1,["tankgetquickerqueue"] = 1,["tankinfo"] = 1,["tankiseasy"] = 1,["tankplates"] = 1,["tauntinggroup"] = 1,["tauntingraid"] = 1,
["taxdeductible"] = .5,["tbh"] = 1,["teachme"] = 1,["tellingmeto"] = 1,["tellmethat"] = 1,["tellmewhere"] = .5,["thankyouall"] = .5,["thankyoufor"] = 1,["thatguy"] = 1,
["thatissue"] = 1,["thatkilled"] = 1,["thatquestchain"] = 1,["thatsbadsign"] = .5,["thatsalot"] = 1,["thatsawesome"] = 1,["thatsgoingto"] = 1,["thatshitwas"] = 1,["thatswhy"] = 1,
["thatwas"] = 1,["theironythe"] = .5,["thenthisis"] = 1,["thenyou"] = 1,["thereareno"] = 1,["thereiseuropean"] = 1,["thereismob"] = .5,["thereisamerican"] = 1,["thereisempty"] = 1,
["thereisrussian"] = 1,["thereisno"] = 1,["thereisnofun"] = 1,["thereisnoquest"] = 1,["thesameodds"] = 1,["thescourge"] = .5,["theyarefine"] = .5,["theyarelooking"] = .5,["theyoncethey"] = 1,
["theysay"] = 1,["thingslooking"] = 1,["thischannelis"] = 1,["thisgame"] = 1,["thishappens"] = 1,["thishitem"] = 1,["thisissue"] = 1,["thismorning"] = 1,["thisserver"] = 1,
["thisserverisdead"] = .5,["thoseguys"] = 1,["thought"] = 1,["throughstormwind"] = 1,["throwitback"] = 1,["tiananmen"] = 1,["tiananmensquare"] = 1,["tickpeopleoff"] = 1,["timearerough"] = 1,
["timesure"] = 1,["toanswer"] = 1,["tochat"] = 1,["toconverse"] = 1,["todofirst"] = 1,["todosecond"] = 1,["todothird"] = 1,["todropgold"] = 1,["tofriends"] = .5,
["tookwarmode"] = .5,["tomuchstuff"] = 1,["topvpmod"] = 1,["tornbetween"] = 1,["tosingletarget"] = .5,["tostarttank"] = .5,["toswap"] = 1,["totemdamage"] = 1,["totemdeployment"] = 1,
["tothatlevel"] = 1,["totheirdoom"] = 1,["tothetrain"] = .5,["totrickme"] = .5,["tousemy"] = 1,["toyour"] = 1,["trashmob"] = 1,["trieddoingquest"] = 1,["trivia"] = 1,
["triviabot"] = 1,["tryingtofish"] = 1,["tryingtoqueue"] = 1,["turnback"] = 1,["turninghead"] = 1,["turninhead"] = 1,["turtleserver"] = 1,["turtletrivia"] = 1,["twitchtv"] = 1,
["twow"] = 1,["twowkiller"] = .5,["tyfor"] = 1,["typethat"] = 1,["typicallyneeded"] = .5,["typicallythatlong"] = 1,["unbuffed"] = 1,["unique"] = 1,["unitframes"] = 1,
["unitplates"] = 1,["unitsdisappear"] = 1,["unitsdisappearing"] = 1,["unlessyouneed"] = 1,["usesbow"] = 1,["useterm"] = 1,["veganguild"] = 1,["vendor"] = 1,["vendors"] = 1,
["verycompact"] = .5,["viableforleveling"] = 1,["vsagility"] = 1,["vscrit"] = 1,["vsdamage"] = 1,["vsheal"] = 1,["vshit"] = 1,["vsintellect"] = 1,["vsmp"] = 1,
["vssp"] = 1,["vsspirit"] = 1,["vsstamina"] = 1,["vsstrength"] = 1,["waiteverything"] = 1,["waitforhour"] = 1,["waitingforhour"] = 1,["waitinghour"] = 1,["waitingtime"] = 1,
["warriorlegs"] = 1,["wasdoing"] = 1,["wasntsobad"] = .5,["wasovertuned"] = 1,["wastingyourtime"] = 2,["watereddown"] = 1,["waterplease"] = 1,["weabsolutely"] = 1,["weekago"] = 1,
["weekday"] = 1,["weekdays"] = 1,["weekend"] = 1,["weeksince"] = .5,["wegetthere"] = 1,["weirdo"] = 1,["wekilledboss"] = 1,["weneedarena"] = 1,["weneedarenas"] = 1,
["werelf"] = 1,["werules"] = 1,["westillcant"] = 1,["wewas"] = 1,["wewere"] = .5,["whatability"] = 1,["whatajoke"] = .5,["whatbird"] = 1,["whatcangowrong"] = 1,
["whatdoi"] = 1,["whateveryoudo"] = 1,["whatisgood"] = 1,["whatisbest"] = 1,["whatisbetter"] = 1,["whatishit"] = .5,["whatisit"] = 1,["whatisthat"] = 1,["whatistypical"] = .5,
["whatistypical"] = .5,["whatlevel"] = .5,["whatlevelis"] = 1,["whatlevelshould"] = .5,["whatlevelshouldi"] = .5,["whatreward"] = 1,["wheelchair"] = 1,["whenatrash"] = 1,["whencanhe"] = 1,
["whencani"] = 1,["whencanshe"] = 1,["whencanyou"] = 1,["wheniask"] = 1,["whenigetto"] = 1,["whenihave"] = 1,["whenthereare"] = 1,["whenyoukill"] = 1,["wherearethey"] = 1,
["wherecani"] = 1,["wheredoes"] = 1,["wheredoi"] = .5,["whereican"] = .5,["whereis"] = .5,["whereisit"] = 1,["whereislocation"] = 1,["whereisquest"] = .5,["whereshouldi"] = .5,
["wheretodo"] = 1,["wheretofind"] = 1,["wheretofindquest"] = 1,["whereweturn"] = 1,["whichhasmore"] = 1,["whichhasmost"] = 1,["whichisbest"] = 1,["whichisbetter"] = 1,["whiledoingdungeon"] = 1,
["whilefinding"] = 1,["whilehardreserving"] = 1,["whileleveling"] = 1,["whininginthe"] = .5,["whisperingme"] = .5,["whitelevel"] = 1,["whohr"] = 1,["whoismore"] = .5,["wholeminute"] = 1,
["whoneeddamage"] = 1,["whosummoned"] = 1,["whouses"] = 1,["whyareall"] = 1,["whyarethere"] = 1,["whyarethese"] = .5,["whycani"] = 1,["whycanti"] = 1,["whydopeople"] = 1,
["whyhell"] = 1,["whyicant"] = 1,["whyis"] = .5,["whyiseveryone"] = 1,["whyisit"] = .5,["whynoonedoing"] = 1,["whythereare"] = 1,["whywouldi"] = 1,["wieldme"] = 1,
["willendwell"] = 1,["willitbeat"] = 1,["winningtheroll"] = 1,["wishaliens"] = 1,["withhand"] = .5,["withbasically"] = 1,["withgear"] = 1,["withhim"] = 1,["withhow"] = .5,
["withquestion"] = 1,["withrandom"] = 1,["withsomething"] = 1,["withthenameof"] = 1,["workoutfor"] = 1,["workshere"] = 1,["worldchat"] = .5,["wouldneed"] = 1,["wouldnotbemad"] = 1,
["wouldnotbeask"] = 1,["wouldstop"] = 1,["wouldtankgetquicker"] = 1,["wowyouneed"] = 1,["wtf"] = 1,["xcitingx"] = 1,["yalltobusy"] = .5,["yeahat"] = 1,["yeahidig"] = .5,
["yearago"] = 1,["yearsago"] = 1,["yell"] = 1,["yesterday"] = 1,["youareconfusing"] = 1,["youaredamage"] = 1,["youareheal"] = 1,["youarejustask"] = 1,["youarejustlooking"] = 1,
["youarelaughing"] = 1,["youarelf"] = 1,["youarelooking"] = 1,["youarenow"] = 1,["youareset"] = 1,["youaretank"] = 1,["youaretelling"] = 1,["youcando"] = 1,["youcanfind"] = .5,
["youcanqueue"] = 1,["youcanto"] = 1,["youdbelooking"] = 1,["youdneed"] = 1,["yougetquest"] = 1,["yougetrep"] = .5,["youlaugh"] = 1,["youlevelup"] = 1,["youllbefighting"] = 1,
["youllbekicked"] = .5,["youneedhighest"] = 1,["yourdamage"] = 1,["yourheal"] = 1,["yourmoney"] = 1,["yourquestlocation"] = 1,["yourtank"] = 1,["youtook"] = .5,["youwereamazing"] = .5,
["youwontjoin"] = 1,["youworld"] = 1,["youwouldntbe"] = 1,["zonedrop"] = 1,["gladidonot"] = .5,["idonothave"] = .5,["imgladi"] = .5,["lfinfo"] = 1,["infoabout"] = 1,["howtoget"] = 1,
["whenikill"] = .5,["isderanged"] = .5,["hateithere"] = 1,["sorrygive"] = 1,["whatasshole"] = .5,["haha"] = .5,["gotoilet"] = .5,["ifheis"] = .5,
["justlikehost"] = .5,["likewhyf"] = .5,["likewhyfuck"] = .5,["whyfwould"] = .5,["whyfuckwould"] = .5,["whywouldanyone"] = .5,["buttoget"] = .5,

["bgpop"] = .5,["stillbugging"] = .5,["stillbugged"] = .5,["noinvite"] = .5,["femboygnome"] = 1,["himfrombehind"] = .5,["ambushhim"] = .5,["aftermarry"] = .5,["aftermarriage"] = .5,
["marryhim"] = .5,["marryher"] = .5,["marrytohim"] = .5,["marrytoher"] = .5,["promisetokeep"] = .5,["himaspet"] = .5,["heraspet"] = .5,["onlyallowme"] = .5,["fromotherhorde"] = .5,
["fromotheralliance"] = .5,["inhcchat"] = .5,["inhardcorechat"] = .5,["whyididnt"] = .5,["whydidnti"] = .5,["pleasebless"] = .5,["blessmy"] = .5,["howitpossible"] = 1,["fuckstupid"] = 1,
["warmodewill"] = 1,["uselesstomorrow"] = 1,["willbeuseless"] = .5,["notreallyany"] = 1,["notreallymuch"] = 1,["helpdeciding"] = .5,["whatisbest"] = .5,["bestforleveling"] = .5,
["classquestion"] = 1,["whatjackass"] = 1,["withfewtip"] = 1,["withcoupletip"] = 1,["donotthink"] = 1,["beenstandingby"] = .5,["havenotplayed"] = .5,["aresolo"] = .5,["stillpossible"] = .5,
["classicisbetter"] = .5,["isbettergame"] = .5,["gobackthere"] = .5,["whatispoint"] = .5,["pointofrunning"] = .5,["ifyoualready"] = .5,["whatarebest"] = .5,["bestprofession"] = .5,
["sololeveling"] = .5,["whydonotyoulead"] = 1,["theylf"] = .5,["hideyou"] = .5,["theirtall"] = .5,["tallumbrellas"] = .5,["onwhichlevel"] = .5,["shouldwego"] = .5,["shortquestion"] = .5,
["longquestion"] = .5,["aremanypeople"] = .5,["freshrealm"] = .5,["classicwow"] = .5,["wowmentality"] = .5,["lflogs"] = .5,["entirehc"] = .5,["entirehardcore"] = .5,["justwiped"] = .5,
["petsinah"] = .5,["petsinauctionhouse"] = .5,["gnomegirlfriend"] = .5,["gnomeboyfriend"] = .5,["gnomergirlfriend"] = .5,["gnomerboyfriend"] = .5,["lfgnomergirlfriend"] = 3,["lfgnomerboyfriend"] = 3,
["allloothr"] = 1,["imsurprisedpeople"] = .5,["mostaresoft"] = .5,["butweneedpvp"] = .5,["fellasleep"] = .5,["inmychair"] = .5,["asleepinmy"] = .5,["lfadvice"] = .5,["fastvsslow"] = .5,

["somightcome"] = .5,["tobringme"] = 1,["whohaswon"] = .5,["nefarianheadbefore"] = .5,["onyxiaheadbefore"] = .5,["headbefore"] = .5,["freehitem"] = .5,["clothbag"] = .5,["gmaround"] = .5,["istheregmaround"] = .5,
["isgmaround"] = .5,["withoutanyotherraid"] = 1.5,["justspam"] = 1,["ingroupsay"] = .5,["whoistroll"] = .5,["istrollin"] = .5,["neverworthit"] = .5,["notworthit"] = .5,["isneverworth"] = .5,["arthasdidnt"] = .5,["didnthavemana"] = .5,
["somuchrules"] = .5,["somanyrules"] = .5,["whatisyour"] = .5,["yourclassagain"] = .5,["lfgoodspec"] = 1,["lfbestspec"] = 1,["lfgoodtalent"] = 1,["lfbesttalent"] = 1,["nextbest"] = .5,["thatsworth"] = .5,["worthfarmfor"] = .5,

["evenifyou"] = .5,["ifyoulose"] = .5,["yourgettinggood"] = .5,["youaregettinggood"] = .5,["lftjustpopped"] = .5,["didntaccept"] = .5,["didnotaccept"] = .5,["allianceandhorde"] = .5,["bgandarenas"] = .5,["arenastogether"] = .5,
["notdouse"] = .5,["isnotdouse"] = .5,["thereisnotdouse"] = .5,["howlongaverage"] = .5,["howlongdoesaverage"] = .5,["howlongwillaverage"] = .5,["thisisprebis"] = .5,["evenbis"] = .5,["banebelike"] = .5,["poweroverme"] = .5,
["youthinkthis"] = .5,["isthisfor"] = .5,["forpreraidbuff"] = .5,["itsfunny"] = .5,["thisgiveyou"] = .5,["thiswhoposted"] = .5,["posteddamagemeter"] = .5,["alwaysatnumber"] = .5,["whoknowwhen"] = .5,["whenilearn"] = .5,["doesineed"] = .5,
["butthereis"] = .5,["cankillme"] = .5,["killmeinfront"] = .5,["moronswithout"] = .5,["moronwithout"] = .5,["ifyougointo"] = .5,["andgetgrouped"] = .5,["hewillkick"] = .5,["hedoesnot"] = .5,["empathyforpeople"] = .5,["gointolfg"] = .5,
["youcanneeddamage"] = .5,["damageitemastank"] = .5,["damageitemasheal"] = .5,["healitemasdamage"] = .5,["healitemastank"] = .5,["tankitemasdamage"] = .5,["tankitemasheal"] = .5,["versionofwow"] = .5,["imjustenjoying"] = .5,
["playingandleveling"] = .5,["notjustgrinding"] = .5,["forhumanintelligence"] = .5,["whyitserves"] = .5,["tobestudied"] = .5,["shouldshownumber"] = .5,["shownumberof"] = .5,
["cuzweneedmore"] = .5,["lmaotard"] = .5,["lmaoretard"] = .5,["cryingaboutpvp"] = .5,["happentopvpwarmode"] = .5,["maybewellsee"] = .5,["wellseemore"] = .5,["maybewewillsee"] = .5,["wewillseemore"] = .5,

--[[
[""] = .5,
[""] = .5,
[""] = .5,
[""] = .5,
[""] = 1,
[""] = 1,
[""] = 1,
[""] = 1,
[""] = 1,
[""] = 1,
[""] = 1,
--]]

-- Other
["taurenandhuman"] = 1,["taurenanddwarf"] = 1,["taurenandgnome"] = 1,["taurenandhighelf"] = 1,["taurenandnightelf"] = 1,["taurenandorc"] = 1,["taurenandundead"] = 1,["taurenandtroll"] = 1,["taurenandgoblin"] = 1,
["areleatherworker"] = .5,["aretailor"] = .5,["areblacksmith"] = .5,["areengineer"] = .5,["arealchemist"] = .5,

-- PvP
["killingplayer"] = 1,

-- Addons
["pfquest"] = 1,["healersmate"] = 1,["kui"] = 1,

-- Onyxia Head
["anyonyxiahead"] = 1,["anyoneonyxiahead"] = 1,["needonyxiahead"] = 1,["onyxiaheadsoon"] = 1,["anyonyxiapop"] = 1,["killedonyxia"] = 1,["onyxiaisopen"] = 1,["onyxiabuff"] = 1,["onyxiabuffdropping"] = 1,["onyxiabuffdrop"] = 1,
["anyonyxiaturnins"] = 1,["anyonyxiaturns"] = 1,["anyonyxiagoingtodrop"] = 1,["onyxiadrop"] = 1,["onyxiapleasedrop"] = 1,["onyxianeeddrop"] = 1,["onyxiaanyonedrop"] = 1,
["anynefarianhead"] = 1,["anyonenefarianhead"] = 1,["neednefarianhead"] = 1,["nefarianheadsoon"] = 1,["anynefarianpop"] = 1,["killednefarian"] = 1,["nefarianisopen"] = 1,["nefarianbuff"] = 1,["nefarianbuffdropping"] = 1,["nefarianbuffdrop"] = 1,
["anynefarianturnins"] = 1,["anynefarianturns"] = 1,["anynefariangoingtodrop"] = 1,["nefariandrop"] = 1,["nefarianpleasedrop"] = 1,["nefarianneeddrop"] = 1,["nefariananyonedrop"] = 1,

["anyonyxianefarian"] = 1,
["onyxiatimer"] = 1,["nefariantimer"] = 1,

-- Classes
["lfdruidmotw"] = 1,["lfdruidmark"] = 1,["lfmageintellect"] = 1,["lfmagearcaneintellect"] = 1,["lfprieststamina"] = 1,["lfpriestfortitude"] = 1,["lfpriestspirit"] = 1,["lfpriestdivinespirit"] = 1,["lfpaladinkings"] = 1,
["druidcansolo"] = 1,["huntercansolo"] = 1,["magecansolo"] = 1,["paladincansolo"] = 1,["priestcansolo"] = 1,["roguecansolo"] = 1,["shamancansolo"] = 1,["warlockcansolo"] = 1,["warriorcansolo"] = 1,
["whyisdruid"] = 1,["whyishunter"] = 1,["whyismage"] = 1,["whyispaladin"] = 1,["whyispriest"] = 1,["whyisrogue"] = 1,["whyisshaman"] = 1,["whyiswarlock"] = 1,["whyiswarrior"] = 1,
["whendodruid"] = 1,["whendohunter"] = 1,["whendomage"] = 1,["whendopaladin"] = 1,["whendopriest"] = 1,["whendorogue"] = 1,["whendoshaman"] = 1,["whendowarlock"] = 1,["whendowarrior"] = 1,
["asdruid"] = 1,["ashunter"] = 1,["asmage"] = 1,["aspaladin"] = 1,["aspriest"] = 1,["asrogue"] = 1,["asshaman"] = 1,["aswarlock"] = 1,["aswarrior"] = 1,
["druidtrainer"] = 1,["huntertrainer"] = 1,["magetrainer"] = 1,["paladintrainer"] = 1,["priesttrainer"] = 1,["roguetrainer"] = 1,["shamantrainer"] = 1,["warlocktrainer"] = 1,["warriortrainer"] = 1,
["druidguild"] = 1,["hunterguild"] = 1,["mageguild"] = 1,["paladinguild"] = 1,["priestguild"] = 1,["rogueguild"] = 1,["shamanguild"] = 1,["warlockguild"] = 1,["warriorguild"] = 1,
["diddruid"] = 1,["didhunter"] = 1,["didmage"] = 1,["didpaladin"] = 1,["didpriest"] = 1,["didrogue"] = 1,["didshaman"] = 1,["didwarlock"] = 1,["didwarrior"] = 1,
["whatdodruid"] = 1,["whatdohunter"] = 1,["whatdomage"] = 1,["whatdopaladin"] = 1,["whatdopriest"] = 1,["whatdorogue"] = 1,["whatdoshaman"] = 1,["whatdowarlock"] = 1,["whatdowarrior"] = 1,
["weredruid"] = 1,["werehunter"] = 1,["weremage"] = 1,["werepaladin"] = 1,["werepriest"] = 1,["wererogue"] = 1,["wereshaman"] = 1,["werewarlock"] = 1,["werewarrior"] = 1,
["dodruidhave"] = 1,["dohunterhave"] = 1,["domagehave"] = 1,["dopaladinhave"] = 1,["dopriesthave"] = 1,["doroguehave"] = 1,["doshamanhave"] = 1,["dowarlockhave"] = 1,["dowarriorhave"] = 1,
["druidcanuse"] = 1,["huntercanuse"] = 1,["magecanuse"] = 1,["paladincanuse"] = 1,["priestcanuse"] = 1,["roguecanuse"] = 1,["shamancanuse"] = 1,["warlockcanuse"] = 1,["warriorcanuse"] = 1,
["byadruid"] = 1,["byahunter"] = 1,["byamage"] = 1,["byapaladin"] = 1,["byapriest"] = 1,["byarogue"] = 1,["byashaman"] = 1,["byawarlock"] = 1,["byawarrior"] = 1,
["withdruidat"] = 1,["withhunterat"] = 1,["withmageat"] = 1,["withpaladinat"] = 1,["withpriestat"] = 1,["withrogueat"] = 1,["withshamanat"] = 1,["withwarlockat"] = 1,["withwarriorat"] = 1,
["betweendruid"] = 1,["betweenhunter"] = 1,["betweenmage"] = 1,["betweenpaladin"] = 1,["betweenpriest"] = 1,["betweenrogue"] = 1,["betweenshaman"] = 1,["betweenwarlock"] = 1,["betweenwarrior"] = 1,
["newdruid"] = 1,["newhunter"] = 1,["newmage"] = 1,["newpaladin"] = 1,["newpriest"] = 1,["newrogue"] = 1,["newshaman"] = 1,["newwarlock"] = 1,["newwarrior"] = 1,
["likethisdruid"] = 1,["likethishunter"] = 1,["likethismage"] = 1,["likethispaladin"] = 1,["likethispriest"] = 1,["likethisrogue"] = 1,["likethisshaman"] = 1,["likethiswarlock"] = 1,["likethiswarrior"] = 1,

["raiddruid"] = 1,["raidhunter"] = 1,["raidpaladin"] = 1,["raidpriest"] = 1,["raidrogue"] = 1,["raidmage"] = 1,["raidshaman"] = 1,["raidwarlock"] = 1,["raidwarrior"] = 1,
["makedruid"] = 1,["makehunter"] = 1,["makemage"] = 1,["makepaladin"] = 1,["makepriest"] = 1,["makerogue"] = 1,["makeshaman"] = 1,["makewarlock"] = 1,["makewarrior"] = 1,
["playingdruid"] = 1,["playinghunter"] = 1,["playingmage"] = 1,["playingpaladin"] = 1,["playingpriest"] = 1,["playingrogue"] = 1,["playingshaman"] = 1,["playingwarlock"] = 1,["playingwarrior"] = 1,
["itfordruid"] = 1,["itforhunter"] = 1,["itformage"] = 1,["itforpaladin"] = 1,["itforpriest"] = 1,["itforrogue"] = 1,["itforshaman"] = 1,["itforwarlock"] = 1,["itforwarrior"] = 1,

["asboomie"] = .5,["asbalance"] = .5,["asferal"] = .5,["asresto"] = .5,["asrestoration"] = .5,["playingboomie"] = .5,["playingbalance"] = .5,["playingferal"] = .5,["playingresto"] = .5,["playingrestoration"] = .5,
["asbm"] = .5,["asmm"] = .5,["playingbm"] = .5,["playingmm"] = .5,
["asfire"] = .5,["asfrost"] = .5,["asarcane"] = .5,["playingfire"] = .5,["playingfrost"] = .5,["playingarcane"] = .5,
["asholy"] = .5,["asret"] = .5,["asprot"] = .5,["playingholy"] = .5,["playingret"] = .5,["playingprot"] = .5,
["ascombat"] = .5,["assubtlety"] = .5,["playingcombat"] = .5,["playingsubtlety"] = .5,
["asfury"] = .5,["asarm"] = .5,["playingfury"] = .5,["playingarm"] = .5,
["asshadow"] = .5,["asdisc"] = .5,["playingshadow"] = .5,["playingshadow"] = .5,
["asenhancement"] = .5,["aselemental"] = .5,["asele"] = .5,["asenh"] = .5,["playingenhancement"] = .5,["playingelemental"] = .5,["playingele"] = .5,["playingenh"] = .5,
["asdestruction"] = .5,["asaffliction"] = .5,["asdemonology"] = .5,["asdemo"] = .5,["asafflic"] = .5,["asdestro"] = .5,
["playingdestruction"] = .5,["playingaffliction"] = .5,["playingdemonology"] = .5,["playingdemo"] = .5,["playingafflic"] = .5,["playingdestro"] = .5,

["shoulddruid"] = 1,["shouldhunter"] = 1,["shouldmage"] = 1,["shouldpaladin"] = 1,["shouldpriest"] = 1,["shouldrogue"] = 1,["shouldshaman"] = 1,["shouldwarrior"] = 1,["shouldwarlock"] = 1,

["ineeddruidhelp"] = 1,["ineedhunterhelp"] = 1,["ineedmagehelp"] = 1,["ineedpaladinhelp"] = 1,["ineedpriesthelp"] = 1,["ineedroguehelp"] = 1,["ineedshamanhelp"] = 1,["ineedwarriorhelp"] = 1,["ineedwarlockhelp"] = 1,
["druidexpert"] = 1,["hunterexpert"] = 1,["mageexpert"] = 1,["paladinexpert"] = 1,["priestexpert"] = 1,["rogueexpert"] = 1,["shamanexpert"] = 1,["warlockexpert"] = 1,["warriorexpert"] = 1,

["needpaladinbuff"] = 1,["needdruidbuff"] = 1,["needmagebuff"] = 1,["needpriestbuff"] = 1,
["paladinbuffkings"] = 1,["priestbuffstamina"] = 1,
["buffarcaneintellect"] = 1,["buffintellect"] = 1,["buffkings"] = 1,["buffmotw"] = 1,
["needstaminabuff"] = 1,["needintellectbuff"] = 1,
["druidpov"] = 1,["hunterpov"] = 1,["magepov"] = 1,["paladinpov"] = 1,["priestpov"] = 1,["roguepov"] = 1,["shamanpov"] = 1,["warlockpov"] = 1,["warriorpov"] = 1,

-- Races
["createdwarf"] = 1,["createhuman"] = 1,["creategnome"] = 1,["creategoblin"] = 1,["createhighelf"] = 1,["createnightelf"] = 1,["createorc"] = 1,["createtauren"] = 1,["createtroll"] = 1,["createundead"] = 1,

["ordwarf"] = .5,["orhuman"] = .5,["orgnome"] = .5,["orgoblin"] = .5,["orhighelf"] = .5,["ornightelf"] = .5,["ororc"] = .5,["ortauren"] = .5,["ortroll"] = .5,["orundead"] = .5,

["nightelfpriest"] = .5,

-- Roles
["shouldicaster"] = 1,["shouldidamage"] = 1,["shouldiheal"] = 1,["shouldimelee"] = 1,["shouldirange"] = 1,["shouldistealth"] = 1,["shoulditank"] = 1,

-- Professions
["alchemistis"] = .5,["blacksmithis"] = .5,["enchantis"] = .5,["engineeris"] = .5,["herbis"] = .5,["leatherworkeris"] = .5,["mineris"] = .5,["tailoris"] = .5,

-- Things not in Vanilla
["icc"] = 2,["ssc"] = 2,["tk"] = 2,["slavepens"] = 2,["botanica"] = 2,["mechanaar"] = 2,["tempestkeep"] = 2,["bloodfurnace"] = 2,["underbog"] = 2,["shatteredhalls"] = 2,["shadowmoon"] = 2,
["vaultsofincarnate"] = 2,["magtheridon"] = 2,["magtheridons"] = 2,["gruul"] = 2,["gruuls"] = 2,["tempestkeep"] = 2,["serpentshrine"] = 2,["blacktemple"] = 2,["sunwell"] = 2,
}

GF_WORD_GUILD = {
["lfgguild"] = 3,["lfmguildies"] = 2,["lfanyguild"] = 3,["lfganyguild"] = 3,["lfforguild"] = 3,["lfgforguild"] = 3,

["recruiting"] = 2,["recruitment"] = 1,["isrecruiting"] = .5,
["monday"] = .5,["tuesday"] = .5,["wednesday"] = .5,["thursday"] = .5,["friday"] = .5,["saturday"] = .5,["sunday"] = .5,
["mon"] = .5,["tue"] = .5,["tues"] = .5,["thu"] = .5,["thur"] = .5,["thurs"] = .5,["fri"] = .5,["sat"] = .25,["sun"] = .25,["week"] = .5,["weekly"] = .5,["inweek"] = 1,["everyweek"] = .5,

["signupforourguild"] = 1,["guildfishevent"] = 1,
["everymonday"] = .5,["everytuesday"] = .5,["everywednesday"] = .5,["everythursday"] = .5,["everyfriday"] = .5,["everysaturday"] = .5,["everysunday"] = .5,

["dedicated"] = 1,["environment"] = 1,["membership"] = 1,["community"] = 1,["progression"] = 1,["progressing"] = .5,["events"] = 1,["helpful"] = .5,["friends"] = .5,["initiate"] = .5,["tribemember"] = .5,["offersyou"] = .5,
["ambience"] = 1,["brotherhood"] = 1,["brothersandsisters"] = 1,["members"] = .5,["welcoming"] = 1,["welcome"] = .5,["recruit"] = .5,["allwelcome"] = .5,["twink"] = 1,["house"] = .5,["roster"] = .5,["endgame"] = 1,
["firstroster"] = .5,["secondroster"] = .5,["ourfirstroster"] = .5,["oursecondroster"] = .5,["forourfirstroster"] = .5,["foroursecondroster"] = .5,
["gbank"] = 1,["tabard"] = .5,["tabardportal"] = .75,["dkp"] = 1,["adventures"] = 1,["adventurers"] = 1,["camaraderie"] = 1,["reliable"] = .25,
["getinfo"] = 1,
["likeminded"] = 1,["exceptionalgamers"] = .5,["welcomingexceptionalgamers"] = .5,["magnificentgamers"] = .5,["fromanyguild"] = 1,["anyonefromguild"] = 1,["familyyouneed"] = 1,

["akamagosh"] = 2,["magosh"] = 2,

["raidersandleveling"] = .5,["recruitingraidersandleveling"] = .5,["recruitingraiders"] = .5,

["isguild"] = .5,
["guild"] = 102,["ginvite"] = 3,["guid"] = 1,["guildinvite"] = 3,["invitemeguild"] = 1,["inviteguild"] = 1,["needinviteguild"] = 1,["invitemepleaseguild"] = 1,["invitemetoguild"] = 2,["pmofficers"] = .5,
["guildbank"] = .5,["guildbase"] = .5,["guildhouse"] = 1,["ghouse"] = .5,["guildtavern"] = 1,
["anyguild"] = .5,["findguild"] = .5,["guildplease"] = 1.25,

["bbguildbase"] = 1,["bootybayguildbase"] = 1,

["lfguild"] = 3,["isoguild"] = 3,["guildlf"] = 1,["yourguild"] = .5,["needguild"] = 1,["lfinvite"] = .5,["anyforguild"] = 3,["searchguild"] = .5,["lfguildbase"] = 3,

["levellaugh"] = .5,["laughlevel"] = .5,["wejustlevel"] = .5,["forleveling"] = .5,

["chillpeople"] = .5,["comechill"] = .5,["guildwithchillpeople"] = 1,["chillplayer"] = .5,["guildwithchillplayer"] = 1,["guildforbeginner"] = 1,["lfchillpeople"] = 1,["lfchillplayer"] = 1,["andgoodpeople"] = .5,["justgoodtime"] = .5,["goodcompany"] = .5,
["lfstrong"] = .5,["attractivegamers"] = .5,["fillupits"] = .5,["gamerstofillup"] = .5,["onenightclears"] = .5,["onenightclear"] = .5,

["needtofind"] = .5,
["druidfind"] = .5,["hunterfind"] = .5,["magefind"] = .5,["paladinfind"] = .5,["priestfind"] = .5,["roguefind"] = .5,["shamanfind"] = .5,["warlockfind"] = .5,["warriorfind"] = .5,

["scoutingnew"] = 1,
["lflikeminded"] = 1,
["finishourcore"] = 3,
["lfgmoremembers"] = 1,
["allcurrentcontent"] = 3,["highendcontent"] = 3,["progressioncontent"] = .5,["progressionraid"] = 1,["startinweek"] = 1,["tryingtorebuild"] = 1,["lookingtorebuild"] = 1,["lookingtogrow"] = 1,["growwithus"] = 1,["currentlylooking"] = .5,["currentlylf"] = .5,
["friendsandguildies"] = 1,["levelwithfriends"] = .5,["oldfriends"] = .5,["liketolevel"] = .5,["easygoingplayer"] = 2,["helpingeachother"] = 1,["helpwithleveling"] = 1,["helpifneeded"] = .5,["wehelpyou"] = .5,["wehelpeachother"] = 1,

["homewithus"] = 1,
["allclasseswelcome"] = 3,["allplayerwelcome"] = 1,["gearedplayerwelcome"] = 1,["forallplayer"] = .5,["everybodyiswelcome"] = 1,["everyoneiswelcome"] = 1,["opentoanyone"] = .5,
["opentoeveryone"] = .5,["alliswelcome"] = .5,["lotofmembers"] = .5,["welcometoapply"] = 2,["beginnerwelcome"] = 1,

-- Join
["considerjoining"] = 2,["aboutjoining"] = 2,["guildjoin"] = .5,["joinifyouneed"] = .5,["someguild"] = 1,["tohelpguild"] = .5,

["joinus"] = 1,["joinusnow"] = 1,["joinnow"] = .5,["joinustoday"] = 1,["jointoday"] = 2,["join"] = .25,["joinbest"] = .5,["joinmost"] = .25,["joinguild"] = .25,["joinmyguild"] = 1,["jointoaccess"] = 1,["joinspectacle"] = 1,
["joinournation"] = 1,["joinourdiscord"] = 1,["joinlesserguild"] = .25,["joinyourdestiny"] = 1,["joinusandknow"] = 1,
["comejoin"] = 1,["comejoinyour"] = .5,
["lookingtojoin"] = 1,["lookingtojoinguild"] = 2,["asktojoin"] = 1,
["needtojoinguild"] = 2,
["pleasejoinus"] = .5,
["thenjoin"] = 1,
["tojoin"] = .5,["tojoinus"] = .5,["standwithus"] = 1,["joinourguild"] = .5,["tojoinourguild"] = .5,
["whynotjoin"] = .5,["thenwhynotjoin"] = .5,

-- Raid
["ourraidgroup"] = 3,
["lfraiders"] = .5,["lfskilledraiders"] = 2,["lfgskilledraiders"] = 2,["lookingtoraid"] = .5,

["andraidsoon"] = 1,["andmayberaid"] = .5,
["allraid"] = 1,["raidplanned"] = 1,["raidwithus"] = 1.5,["startraidsoon"] = 1,["justgoodraid"] = 3,["plantoraid"] = .5,["raidinfuture"] = 1,["raidsomeday"] = 1,
["raidgroup"] = 2,["raidgroup"] = 2,["raidroster"] = 2,["raiddays"] = 2,["raidnights"] = 2,["raidbeginat"] = .5,
["raidready"] = 1,
["coreraid"] = 1,["raidcore"] = .5,
["coreraiders"] = 2,["raidmechanic"] = .5,

["casualraid"] = 1,

["weekdayraid"] = 1,["raidday"] = .5,["raidtime"] = 2,["raidtimes"] = 2,["variousschedules"] = 1,
["weraid"] = .5,["weelseraid"] = .5,

-- Misc
["nonstopactivity"] = .5,["weeklyevents"] = .5,
["ourroster"] = 2,["buildingranks"] = 1,["fillourranks"] = 1,
["lootcouncil"] = 1.5,["lootsystem"] = 1.5,["epgp"] = 1.5,["srms"] = .5,["rppvp"] = .5,["rppve"] = .5,["rppvppve"] = .5,["rppvepvp"] = .5,["rpenthusiast"] = .5,
["coregroup"] = 2,["coreroster"] = 2,
["currentlyprogressing"] = 1.5,["clearingcontent"] = 1,["turtlecontent"] = 1,["endgamecontent"] = 1,["lowercontent"] = .5,["forcontent"] = .5,["firstrun"] = 1,["classicexperience"] = .5,["vanillaexperience"] = .5,
["leveltogether"] = 1,["levelingtogether"] = 1,["groupquest"] = .5,["allianceleveling"] = 1,["hordeleveling"] = 1,["peopleleveling"] = 1,["questtogether"] = .5,["newlymade"] = .5,["hardcoreleveling"] = .5,["teamwork"] = .5,
["needyou"] = 2,["welcomeyou"] = 2,["welcometo"] = 1,["alwayswelcome"] = 1,["adultswelcome"] = .5,["raiderswelcome"] = .5,["moremembers"] = .5,["quirkymembers"] = .5,["goodgroup"] = .5,["maturecommunity"] = 1,["funcommunity"] = 1,["activecommunity"] = 1,
["enjoyleveling"] = 1,["casualleveling"] = 1,["forcasualplayer"] = .5,["guildforleveling"] = .5,["guildforlevel"] = .5,["guildforlevelup"] = .5,["anyguildforleveling"] = .5,["anyguildforlevel"] = .5,
["newplayer"] = 2,["newmembers"] = 1.5,["seriousmembers"] = .5,["veteranplayer"] = 1,["casualfriendly"] = 1,["newraiders"] = .5,["experienceandnewraiders"] = .5,["raiderstogear"] = .5,
["lfnewplayer"] = .5,["lfnewmembers"] = .5,["lfseriousmembers"] = .5,["lfveteranplayer"] = .5,["lfexperienceandnew"] = .5,
["dungeoncrawling"] = 1,["dungeonandmore"] = 1,["pleasantadventure"] = 2,["goodvibes"] = 2,["groupclears"] = 2,["laidback"] = .5,["personalpractice"] = .5,["roleplayingevent"] = .5,["ourvoyage"] = .5,["freshjourney"] = .5,["funplace"] = .5,
["warmodeonly"] = .5,["hordeonly"] = .5,["pvpfriendly"] = 1,["pvefriendly"] = 1,["pvpfocused"] = 1,["pvefocused"] = 1,
["wejoke"] = .5,["weaccept"] = 1,["sharesomestories"] = 1,["storiesofadventure"] = 1,["adventurestories"] = 1,["nearesttavern"] = .5,
["alliancewarmodeonly"] = .5,["hordewarmodeonly"] = .5,["warmodeonly"] = 1,

["freshstart"] = .5,["newadventure"] = .5,["searchrelaxed"] = .5,

["recruitingquest"] = .5,["recruitingleveling"] = .5,["recruitingdungeon"] = .5,["recruitmessage"] = .5,["questlevelingdungeon"] = .5,

["collective"] = .5,["sharedjourney"] = 1,["isadventure"] = .5,["oneofus"] = .5,["tohangout"] = .5,["comehangout"] = .5,["hangoutwithus"] = 1,["ouractive"] = .5,["havefunwith"] = .5,["lfmlowlevelplayer"] = .5,["comebepart"] = .5,["bepartof"] = .5,
["considerleavingthemfor"] = .5,["activelyseeking"] = .5,["weareactivelyseeking"] = .5,
["lfbraveadventurers"] = 1,["raidheldat"] = .5,["raidschedule"] = .5,

["naandeu"] = 1,["euandna"] = 1,

["mcclearedin"] = 1,["blackwinglairclearedin"] = 1,["aqclearedin"] = 1,["naxxramasclearedin"] = 1,
["mcprogression"] = 1,["blackwinglairprogression"] = 1,["aqprogression"] = 1,["naxxramasprogression"] = 1,

["mcandbeyond"] = .5,["moltencoreandbeyond"] = .5,["blackwinglairandbeyond"] = .5,["aqandbeyond"] = .5,["naxxramasandbeyond"] = .5,

["peopletoexpand"] = .5,["expandourupcoming"] = 1,["peopletoexpandour"] = .5,["lfmpeopletoexpand"] = .5,

-- Guild Spam that get around my filters
["pretendingsocializing"] = .5,["escapehellscape"] = .5,["safehavenforgnomes"] = 2,["guildforgnomes"] = 2,
["islfcaster"] = 1,["islfhpriest"] = 1,["islfrdruid"] = 1,["islfrsham"] = 1,
["wememe"] = 1,["skilloptional"] = 1,["remembermechanics"] = 1,["comeshare"] = .5,["smileonus"] = .5,

["immortalguild"] = 1,["adventurerguild"] = .5,["vagrantadventurerguild"] = .5,["getgudtoday"] = 1.5,["getgoodtoday"] = 1,

["onfarm"] = .5,["mconfarm"] = .5,["blackwinglaironfarm"] = .5,["aqonfarm"] = .5,["naxxramasonfarm"] = .5,

["guildthat"] = .5,["anyguildhave"] = .5,["anyguilddoing"] = .5,["focusedonpeople"] = .5,["discovertogether"] = 1,["gearedtogether"] = 1,["toplaywith"] = .5,["manraid"] = .5,

["aboveandbeyond"] = 1,["aswelf"] = 1,["themysteriesofazeroth"] = 1,["wedonotdiscriminate"] = 1,["haveguildhouse"] = .5,["bandofbrothers"] = .5,["looknofurther"] = .5,
["bestguild"] = .5,["raidcalls"] = .5,["occasionalwipe"] = 1,["excessivelaughter"] = 1,

["liveclassic"] = 1,["classicwowexperience"] = 1.5,["slowpace"] = .5,
["youcanchat"] = .5,["supercasual"] = .5,["sharetales"] = 1,["adventurewith"] = 1,["camaraderieandfamily"] = 1,["familycomefirst"] = 1,["todayforinvite"] = 1,

["startinaweek"] = 1,["nopressurenodrama"] = 3,
["lfmplayer"] = 1,["lfmembers"] = 2,["lfmmembers"] = 2,["lfmplayer"] = 1,["lfnewraiders"] = 2,["seekingfewgoodplayer"] = 1,["seekingsomegoodplayer"] = 1,["playerofanylevel"] = 1,
["lovetohaveyou"] = 2,["wewillhelpyou"] = .5,
["playerofanyclass"] = 1,["playerofallclasses"] = 1,["opentoall"] = 1,["alllevelarewelcome"] = 1,

["levelwithyourfellow"] = 1,["nopressure"] = .5,["raidwillcomeeventually"] = 1,
["socialpve"] = .5,["socialpvp"] = .5,["socialexperience"] = .5,["pvepvp"] = .5,["pvpexperience"] = .5,["pvepvpexperience"] = 1,

["lfmtostrengthen"] = .5,
["strengthenstatic"] = 1,
["lftobolster"] = 1,["bolsteritsranks"] = .5,["tobolsteritsranks"] = .5,["opentooutsiders"] = .5,["scholarlyinclination"] = 1,["desiredtojoin"] = 1,["joininoursearch"] = .5,
["guildguysaround"] = 1.5,["asguild"] = .5,["improvedguild"] = .5,["newandimprovedguild"] = .5,

["molonlabe"] = 3,

["sharedtales"] = .5,["joinusinrp"] = .5,["seekingstorytellers"] = .5,["seekingstoryadventurers"] = .5,["joinrp"] = .5,["livelyroleplay"] = .5,

["invitingyoutoourranks"] = 1,["exploringtogether"] = .5,["weinviteyou"] = .5,

["joincommunity"] = .5,["joincommunitydiscord"] = .5,["communitydiscord"] = .5,["communitydiscord"] = .5,["discordwithoverraiders"] = .5,

-- Guild terms
["comboguild"] = .6,["combocomboguild"] = .5,["guildcombo"] = .5,["comboguildcombo"] = .5,["lfcomboguild"] = 1,["lfgcomboguild"] = 1,["anycomboguild"] = .5,["needcomboguild"] = .5,["invitecomboguild"] = .5,["searchcomboguild"] = .5,["joincomboguild"] = .5,
["freshcomboguild"] = .5,["isocomboguild"] = 1,["combocombo"] = .5,["combocombocombo"] = .5,["comboguildhere"] = .5,
["gnomercomboguild"] = .5,["gnomerthemedguild"] = .5,

["anymembersofguild"] = .5,["membersofguildaround"] = .5,

-- Guild combinations
["afghani"] = .5,["algerian"] = .5,["american"] = .5,["argentine"] = .5,["au"] = .5,["auoce"] = .5,["balkan"] = .5,["brazilian"] = .5,["bulgarian"] = .5,["canadian"] = .5,["chad"] = .5,["chilean"] = .5,["chinese"] = .5,["colombian"] = .5,["congolese"] = .5,["cuban"] = .5,["czech"] = .5,["danish"] = .5,["dutch"] = .5,["egyptian"] = .5,["english"] = .5,["ethiopian"] = .5,["eu"] = .5,["finnish"] = .5,["fr"] = .5,["french"] = .5,["greek"] = .5,["german"] = .5,["hungarian"] = .5,["indian"] = .5,["iranian"] = .5,["iraqi"] = .5,["italian"] = .5,["japanese"] = .5,["kazakh"] = .5,["kenyan"] = .5,["korean"] = .5,["lebanese"] = .5,["libyan"] = .5,["malay"] = .5,["mexican"] = .5,["mongolian"] = .5,["moroccan"] = .5,["na"] = .5,["nigerian"] = .5,["nord"] = .5,["norwegian"] = .5,["oce"] = .5,["oceau"] = .5,["pakistani"] = .5,["peruvian"] = .5,["filipino"] = .5,["polish"] = .5,["portuguese"] = .5,["quebec"] = .5,["romanian"] = .5,["russian"] = .5,["rwandan"] = .5,["saudi"] = .5,["somalian"] = .5,["sa"] = .5,["scandinavian"] = .5,["slovak"] = .5,["spanish"] = .5,["swedish"] = .5,["syrian"] = .5,["tajik"] = .5,["thai"] = .5,["turkish"] = .5,["ukrainian"] = .5,["ugandan"] = .5,["uhr"] = .5,["uk"] = .5,["venezuelan"] = .5,["vietnamese"] = .5,["yemeni"] = .5,["zimbabwean"] = .5,
["active"] = .25,["based"] = .25,["beginner"] = .25,["bigger"] = .25,["casual"] = .25,["chill"] = .25,["cool"] = .25,["cozy"] = .25,["crossfaction"] = .25,["endeavor"] = .25,["erp"] = .25,["friendly"] = .25,["furry"] = .25,["helpful"] = .25,["hype"] = .25,["leveling"] = .25,["lgbt"] = .25,["lgbtq"] = .25,["mediumsized"] = .25,["meme"] = .25,["mercenary"] = .25,["newer"] = .25,["newlycreated"] = .25,["newlyformed"] = .25,["newlymade"] = .25,["nice"] = .25,["northamerican"] = .25,["pve"] = .25,["pvp"] = .25,["reallybig"] = .25,["recentlyformed"] = .25,["roleplaying"] = .25,["social"] = .25,["speak"] = .25,["strict"] = .25,["talkative"] = .25,["toprank"] = .25,["vagrant"] = .25,["verybig"] = .25,["verytalkative"] = .25,["woke"] = .25,["acdc"] = .25,["femboy"] = .25,["vegan"] = .25,["wow"] = .25,
["eucomboguild"] = .5,["comboguildeu"] = .5,["nacomboguild"] = .5,["comboguildna"] = .5,["aucomboguild"] = .5,["comboguildau"] = .5,["ocecomboguild"] = .5,["comboguildoce"] = .5,["russiancomboguild"] = .5,["comboguildrussian"] = .5,
["mccomboguild"] = 1,["moltencorecomboguild"] = 1,["blackwinglaircomboguild"] = 1,["aqcomboguild"] = 1,["naxxramascomboguild"] = 1,["karazhancomboguild"] = 1,["upperkarazhancomboguild"] = 1,["escomboguild"] = 1,["emeraldsanctumcomboguild"] = 1,

-- Foreign Words
["utc"] = .5,["cet"] = .5,["msk"] = 1,["est"] = 1,
["ger"] = 1,["oceanic"] = .5,["aest"] = .5,

["mercredi"] = .5,["dimanche"] = .5,["joueursenleveling"] = 1,["joueursactifs"] = 1,

["pohodova"] = 1,["otevrenaprovsechny"] = 2,

["nabor"] = .5,["otkritnabor"] = 2,["vedemnabor"] = 2,["vedetnabor"] = 2,["vedetsanabor"] = 2,["prohozhdeniyadanzhey"] = 1,["sovmestnoyprokachki"] = 1,["primemvsehzelaushih"] = 2,
["vedemnaborigrokov"] = 3,["novacekciveteran"] = 2,["provodenabirgravziv"] = 2,
["zhdemvseh"] = 2,["proidives"] = 1,

["cautammembri"] = 1,["anemariechipa"] = 1,["echipa"] = .5,

["ishuguild"] = 1,["rechercheguild"] = 1,["yparxeikanenaguild"] = 1,

-- Slovak
["eqipomnazaciatokzacinajucemu"] = 1,["eqipom"] = .25,["eqipomna"] = .25,--["eqipom na zaciatok zacinajucemu"] = 1,
["pomozezacinajucemu"] = 1,["zacinajucemu"] = .5,

-- French
["quirecruiting"] = .5,["francaisquirecruiting"] = 5,["alorsrejoins"] = .5,["rejoinsnous"] = .5,

-- German
["mitraid"] = 1,["zumraid"] = 1,["raidkader"] = 1,["motivierte"] = 1,["raidtage"] = 1,
["joinwelt"] = 1,["werbeunterbrechung"] = 1,
["yesttutruguild"] = 3,["searchnetteguild"] = 1,["uneguild"] = 1,["uneguild"] = 1,
["searchwiedermitplayer"] = 1,["searchwieder"] = .5,["mitplayer"] = 1,["bistduzuverlssig"] = 1,["spaamzocken"] = 1,["dannkommzuuns"] = 1,["kommzuuns"] = 1,["wirfreuen"] = 1,["berjedeslevel"] = 1,["klasseoderrasse"] = 1,
["searchdeute"] = 1,
["frdengermanspeaking"] = 1,
["hardcoreouchill"] = .5,
["ouverttouslevel"] = .5,
["premierroster"] = .5,
["recruitingpartirdulevel"] = 1.5,
["eluneadoremitstreiter"] = 1,
["lfmitstreitern"] = 1,
["unserercommunity"] = .5,
["inunserercommunity"] = .5,
["zumgemeinsamen"] = 1,

["searchverstrkung"] = 1.5,["searchplayer"] = .5,["habenmeiner"] = 1,["lfmweiter"] = 1,["lfmweitern"] = 1,
["mainraidtage"] = 1,["immerabends"] = 1,["egalobentspanntleveling"] = 1,["entspanntleveling"] = 1,["spaigraid"] = 1,["alleklassen"] = 1,["alleklassensindwelcoming"] = 1,["folgendeklassen"] = 1,["morefolgendeklassen"] = 1,["searchmit"] = 1,
["compltersonroster"] = 2,["joueursmotivs"] = 1,["sbados"] = .5,["raidzeit"] = 1,["raidzeitmittwoch"] = 1,

["einnewadventure"] = .5,["einenfreshstart"] = .5,["searchingdu"] = .5,["searchingauchdu"] = .5,["raidgruppe"] = .5,["hiereinegermanguild"] = .5,["wirstockenweiterauf"] = .5,["ordentlichegregewachsen"] = .5,
["ihrereihen"] = .5,["weiterihrereihen"] = .5,["strktweiterihrereihen"] = .5,["gerneauchfrische"] = 1,

["dungeonlaufenandraid"] = 1,["dungeonlaufen"] = .5,

-- Hungarian
["keresek"] = 1,["mindenhungarian"] = .5,["raidminden"] = .5,
["felvetelthirdet"] = 1,
["tarsasagbanjatszani"] = 1,
["szivesenvrunkbarkit"] = 2,
["hangulat"] = .5,
["szeretnelvelunkjatszani"] = 2,
["varunkszeretettel"] = 1,
["szeretettelvrminden"] = 1,
["keresiaktvhungariantagjait"] = 1,

-- Finnish
["finkilta"] = .5,["finnkilta"] = .5,["finjoukkue"] = .5,["finnjoukkue"] = .5,
["maajoukue"] = 2,["maajoukkue"] = 2,["maajoukue"] = 2,["majoukkue"] = 2,["scouttaa"] = 2,
["suomalaanen"] = 1,["joukkuesuomesta"] = 1,["skouta"] = 1,["skoutauusia"] = 1,

["finnational"] = 2.5,["finnnational"] = 2.5,["finlandsnationalgroup"] = 2.5,["finlandnationalgroup"] = 2.5,
["josontyls"] = 1,["hakeejseni"] = 3,["mitmuutamenoatoistaaseksi"] = 3,["skouttaa"] = 1,["teretulemast"] = 1,
["finguild"] = .5,["finplayer"] = .5,["newfinplayer"] = .5,
["etsiiriveliihinsuusiakykyj"] = 1,["etsiiriveliihinsuusia"] = 2,["kykyj"] = 1,["skouttaauusiakykyj"] = 1,["uusiakykyj"] = 1,["pelityyli"] = 1,["sooloolijat"] = 1,["roolipelaajat"] = 1,["kaikkiteretulemast"] = 1,
["suomibndi"] = 2,["etsiiuusia"] = 1,
["etsii"] = 1,["kykyjetsii"] = 1,["uraatarjolla"] = 1,["maajoukkueessa"] = 1,["paikkaauki"] = 1,["skoutaa"] = 1,
["uusia"] = .5,["riveihins"] = .5,
["fysio"] = .5,["keskikentlle"] = .5,
["joinmaajoukkue"] = 1.5,["joinmaajoukkuetoday"] = 1,["joinmaajoukkuetnn"] = 2,
["suomikilta"] = 2,["suomikiltaa"] = 2,["raidaaako"] = 1.5,["questaako"] = 1.5,["pelaajilla"] = 1,["scoutaauusia"] = 1.5,["uusiajawanhoja"] = 1,
["teretulemastkiltaan"] = 3,["kaikihoituu"] = 1,["suomipelaajia"] = 2,["kiltaan"] = 1,["haetaankiltaan"] = 2,["tulille"] = 1,
["firmatarjoaa"] = .5,["tarjoaa"] = .5,["firma"] = .5,["scouttaavuoden"] = 1,["vvvalmistautuujascouttaavuoden"] = 1,["valmistautuu"] = 1,["ihmeellinenmaailma"] = 1,

-- Spanish/Portuguese
["necesitaconquistar"] = 1,["hispanohablante"] = 1,["comprometidos"] = 1,["bienvenidos"] = 1,
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

["raidfarm"] = 1,["todaslasraid"] = 1,
["tienesmanos"] = 1,["tuaventura"] = 1,["aventurapicacomienzaaqu"] = 1,["tuaventurapicacomienza"] = 1,

["algumdaguildon"] = 1,
["membersnuevos"] = 1,
["membersnuevosenraids"] = 1,
["recruitingmembers"] = 1,["recruitingmembersnuevos"] = 1,
["recrutando"] = 1,["reclutando"] = 1,
["buenrollo"] = 1,["rolloyrisas"] = 1,["lfmostodo"] = 1,["todotipodejugadores"] = 1,["jugadores"] = .5,["lfjugadores"] = .5,["jugadoresdehablacastellana"] = 1,["aprenderaraidear"] = 1,
["laguild"] = .5,["delaguild"] = .5,["abresuspuerta"] = 1,["pargentequelfraidear"] = 2,["empezando"] = .5,["levear"] = 1,["bienvenido"] = .5,["hablahispana"] = 1,["bancodehermadad"] = 1,["interesados"] = 1,
["recruitingjugadores"] = 1,["jugadoresparasucore"] = 2,["tambienacceptamos"] = 1,

["lfbrgroupe"] = 3,
["chercheguild"] = 1,["chercheoffi"] = .5,

-- Polish
["zapraszadowspolnej"] = 1,["rodakow"] = .5,["niezaleznieodpoziomu"] = 1,["zaczelismyprogressing"] = 1,["obecnieczyscimy"] = .5,["calykontent"] = 1,["chcedolaczyc"] = 1,

-- Slavic
["raidov"] = 1,["ishet"] = 1,["novacek"] = 1,["raidereket"] = 1,["priednuysia"] = 1,["primet"] = 1,["reydinga"] = 1,["novaya"] = 1,
["novayaguild"] = 1,["nabirayet"] = 2,["nabiraet"] = 2,["nabirayetvsekh"] = 1,["nabiraem"] = 2,["zhelayushchikh"] = 1,["igrokov"] = 1,["zhelayushchikhigrokov"] = 1,
["pervaya"] = .5,["edinstvennaya"] = .5,["pervayaiedinstvennaya"] = 1.5,["primite"] = .5,["primitevru"] = .5,
["osvoenie"] = .5,["naosvoenie"] = 1,["speki"] = .5,["rassmotrim"] = 1,
["vseklassy"] = 1,["vseklassyispeki"] = 2,["vsemklassam"] = 1,
["unasvreide"] = 1,["prijmenovehrace"] = 1,["novehrace"] = .5,["pravidelneraidujemeveskerykontent"] = 1,["raidujemeveskerykontent"] = 1,
["ishyrusskuyu"] = 1,["russianmockba"] = 1,
["narodavrezerve"] = 1,["somcomboguild"] = 1,["ishycomboguild"] = 1,
["pomoshobshchenie"] = 1,["vesyolayaigra"] = 1,["prinimaemslubogolvl"] = 1,["prinimaem"] = .5,

["ishyrusskuyu"] = 1,["dodajenoveclanove"] = 1,
["ishetplayerdlayraid"] = 1,
["ishetplayer"] = 1,
["vozmitevguild"] = 1,["havorb"] = .5,

["lubogolvla"] = 1,

-- Italian
["seiinterested"] = 1,["sehaiinterested"] = 1,["createguild"] = 1,
["searchplayeritalian"] = 3,["livelli"] = 1,["divertimentoassicurati"] = 1,

-- Romanian
["romni"] = 1,["jucatoriromni"] = 1,["pentrucontent"] = 1,["socialevenimente"] = 1,["sidistractie"] = 1,["pentruinfosauinvite"] = .5,["evenimente"] = .5,

["rozwijajacejsieguild"] = .5,["namilevelowac"] = .5,["levelowac"] = .5,["doswiadczeniemlorowym"] = .5,["naszegoraidcore"] = .5,

-- Turkish
["guildmiz"] = 2,["turkguildmiz"] = .5,["kurulmustur"] = .5,["gelmekisteyenler"] = 1.5,["gelmek"] = .5,["kuruluyor"] = 1,
["katilmakicinlutfen"] = .5,
}
GF_WORD_GUILD_PHRASE = {
["anyguildplease"] = true,
["comboguildplease"] = true,
["foundcomboguild"] = true,
["havecomboguild"] = true,
}
GF_GUILD_BRACKET = {
["rp"] = 1,
["pve"] = 1,
["pvp"] = 1,
["rppve"] = 1,
["rppvp"] = 1,
["humanonly"] = 1,
["nightelfonly"] = 1,
["dwarfonly"] = 1,
["gnomeonly"] = 1,
["highelfonly"] = 1,
["orconly"] = 1,
["undeadonly"] = 1,
["trollonly"] = 1,
["taurenonly"] = 1,
["goblinonly"] = 1,
}
GF_GUILD_PREFIX_SUFFIX = {
["join"] = 1,
["rp"] = .5,
["pve"] = .5,
["pvp"] = .5,
["rppvp"] = .5,
["nowtaking"] = 1,
["iswaiting"] = 1,
["isseeking"] = 1,
["islf"] = 1,
["islooking"] = 1,
["inviteplease"] = 1,
["today"] = .5,
["weneed"] = 1,
}
GF_GUILD_FIRST_LAST = {
["invite"] = { ["guild"] = true, },
["guild"] = { ["invite"] = true, ["inviteme"] = true, },
["need"] = { ["guild"] = true, },
["lf"] = { ["guild"] = true, ["recruiter"] = true, },
["looking"] = { ["guild"] = true, },
["search"] = { ["guild"] = true, },
["combo"] = { ["please"] = true, },
}
GF_WORD_GUILD_QUESTION = {
["comboguild"] = true,
}
GF_GUILD_WORD_EXCLUSION = {
["today"] = .5,["tonight"] = .5,["host"] = .5,["legendary"] = .5,["mat"] = .5,["binding"] = .5,["boe"] = .5,["hr"] = .5,["mount"] = .5,["recipe"] = .5,
["racist"] = 1,["nonwhites"] = 5,["nonwhite"] = 1,["advertise"] = 5,
["youknow"] = 1,["manyguild"] = 5,["guildmerges"] = 5,["deadserver"] = 5,["serverdeath"] = 5,["nonwhites"] = 5,["nonwhite"] = 5,["hatewhites"] = 5,["isntbanned"] = 5,
["admins"] = 2,["theirguild"] = 5,["getbanned"] = 5,["beginwith"] = 5,["againstthem"] = 5,["imwilling"] = 2,["whitepeople"] = 5,["whitepeople"] = 5,["antimajority"] = 5,
["despitebeing"] = 5,["worldminority"] = 5,["worldsminority"] = 5,["cansummon"] = 2,["guildrun"] = 1,["hostedby"] = 2,["nohr"] = 1,["freshrun"] = 2,["gearcheck"] = 1,["postyourgear"] = 1,["blizzardstore"] = 1,["seasonpass"] = 1,

["ngl"] = 1,["yousoundlike"] = 1,["cantseewhy"] = .5,["myguild"] = .5,["whileinahc"] = 1,["autobooted"] = 1,["doyoustay"] = 1,["stayin"] = .5,["getauto"] = .5,
["separatechannel"] = .5,["completelyseparate"] = .5,["howdoyouset"] = .5,["setupyour"] = .5,["talkaboutsex"] = .5,["haveworldchat"] = .5,
--[""] = .5,
}
GF_LFMLFG_PREFIX_GUILD = {
["lfm"] = true,
["lfg"] = true,
["lf"] = true,
}

GF_WORD_LFM = {
["lfm"] = 2.5,["lf"] = 2.5,["lft"] = 2.5,["wtj"] = 2.5,["weneedmore"] = 3,

-- Roles/Classes
["lfall"] = 3,["lfmembers"] = 3,["lfstealth"] = 2,

["needheal"] = 2,["comeheal"] = 2,["joinheal"] = 2,["lastheal"] = 2,["pleaseheal"] = 2,["needoneheal"] = 3,["needtwoheal"] = 3,["needthreeheal"] = 3,["healneeded"] = 2,["seekingheal"] = 2,["seekingexperienceheal"] = 2,
["needdamage"] = 2,["comedamage"] = 2,["joindamage"] = 2,["lastdamage"] = 2,["pleasedamage"] = 2,["needaoe"] = 2,["needonedamage"] = 3,["needtwodamage"] = 3,["needthreedamage"] = 3,["damageneeded"] = 2,["seekingdamage"] = 2,["seekingexperiencedamage"] = 2,
["needtank"] = 2,["cometank"] = 2,["moretank"] = 2,["jointank"] = 2,["lasttank"] = 2,["pleasetank"] = 2,["needonetank"] = 3,["needtwotank"] = 3,["needthreetank"] = 3,["tankneeded"] = 2,["seekingtank"] = 2,["seekingexperiencetank"] = 2,
["needrange"] = 2,["comerange"] = 2,["morerange"] = 2,
["needcaster"] = 2,["comecaster"] = 2,["morecaster"] = 2,
["needmelee"] = 2,["comemelee"] = 2,["moremelee"] = 2,
["needdruid"] = 2,["needhunter"] = 2,["needmage"] = 2,["needpaladin"] = 2,["needpriest"] = 2,["needrogue"] = 2,["needshaman"] = 2,["needwarlock"] = 2,["needlock"] = 2,["needwarrior"] = 2,
["anydamagefor"] = 2,["anyhealfor"] = 2,["anytankfor"] = 2,["anydamageto"] = 2,["anyhealto"] = 2,["anytankto"] = 2,["anyrangefor"] = 2,["anycasterfor"] = 2,["anymeleefor"] = 2,
["needlastdamage"] = 3,["needlastheal"] = 3,["needlasttank"] = 3,
["needonlydamage"] = 3,["needonlyheal"] = 3,["needonlytank"] = 3,
["needsomedamage"] = 2,["needsomeheal"] = 2,["needsomerandomdamage"] = 2,["needsometank"] = 2,
["spotdamage"] = 2,["spotheal"] = 2,["spottank"] = 2,
["damageandgo"] = 2,["healandgo"] = 2,["tankandgo"] = 2,
["searchdamagefor"] = 2,["searchhealfor"] = 2,["searchtankfor"] = 2,
["lookingdamagefor"] = 3,["lookinghealfor"] = 3,["lookingtankfor"] = 3,
["damageforspam"] = 2,["healforspam"] = 2,["tankforspam"] = 2,

["damageandhealfor"] = 3,["damageandtankfor"] = 3,["damagearoundfor"] = 2,["damagehealfor"] = 2,["damageletsdo"] = 2,["damagemissingthengo"] = 2,["damagetankfor"] = 2,
["healanddamagefor"] = 2,["healandtankfor"] = 3,["healaroundfor"] = 2,["healdamagefor"] = 2,["healletsdo"] = 2,["healmissingthengo"] = 2,["healtankfor"] = 2,
["tankanddamagefor"] = 2,["tankandhealfor"] = 3,["tankaroundfor"] = 2,["tankdamagefor"] = 2,["tankhealfor"] = 2,["tankletsdo"] = 2,["tankmissingthengo"] = 2,
["onlydamagefor"] = 2,["onlyhealfor"] = 2,["onlyneeddamage"] = 2,["onlyneedheal"] = 2,["onlyneedtank"] = 2,["onlytankfor"] = 2,
["damagepleasefor"] = 2,["healpleasefor"] = 2,["tankpleasefor"] = 2,["peoplepleasefor"] = 2,["playerpleasefor"] = 2,
["needonefor"] = 2,["needtwofor"] = 2,["needthreefor"] = 2,["needonepeople"] = 2,["needtwopeople"] = 2,["needthreepeople"] = 2,["needoneguy"] = 2,["needtwoguys"] = 2,["needthreeguys"] = 2,["needonemate"] = 2,["needtwomate"] = 2,["needthreemate"] = 2,
["groupneedone"] = 2,["groupneedtwo"] = 2,["groupneedthree"] = 2,

-- Possible use of the word "deeps" for damage
["needdeeps"] = 2,["needonedeeps"] = 2,["needtwodeeps"] = 2,["needthreedeeps"] = 2,["needsomedeeps"] = 2,

--Misc words
["canusemore"] = 2,["comeanddo"] = 2,["comewithme"] = 2,["lastcallfor"] = 2,
["doesanyonehaveto"] = 2,["doyouneedtogo"] = 2,["ifanyoneneed"] = 2,["ifyouneedtojoin"] = 2,["ineedhelp"] = 2,["weneedhelp"] = 2,["needhelpfor"] = 2,["pleasejoinmy"] = 2,["wejustneed"] = 2,["joinmein"] = 2,["joinusin"] = 2,
["interestedinrunning"] = 2,["grouptocomplete"] = 2,["needtokillelite"] = 2,["weneedtokill"] = 2,["ineedtokill"] = 2,

["moreneededfor"] = 2,["morepeoplefor"] = 2,["roomformore"] = 2,["roomforonemore"] = 2,["roomfortwomore"] = 2,["roomforthreemore"] = 2,
["needallfor"] = 2,["needanyonestealth"] = 2,["needgroupfor"] = 2,["needhelpwith"] = 2,["needhelpclearing"] = 2,["needmorefor"] = 2,["needmoregroupmembers"] = 2,
["needmorealliance"] = 2,["needmorehorde"] = 2,["allianceisneeded"] = 2,["hordeisneeded"] = 2,["morealliancejoin"] = 2,["morehordejoin"] = 2,
["needpeoplefor"] = 2,["needstealth"] = 2,["needtocome"] = 2,["needtogroup"] = 2,["needtohelp"] = 2,["needtohelpwith"] = 2,["needtoraid"] = 2,["needraidplease"] = 2,["needmorepeople"] = 2,["needmoreplayer"] = 2,["needmoreexceptionalplayer"] = 2,
["needdouser"] = 2,

["srmsos"] = 2,["msos"] = 2,["signup"] = 2,["weeklygroupat"] = 2,
["summonready"] = 2,["wforinvite"] = 2,["whisperforinvite"] = 2,["runmethrough"] = 2,
["whoisdownto"] = 2,["wholetsdo"] = 2,["werecontinuingfrom"] = 2,["wearecontinuing"] = 2,
["pleasejoindailybg"] = 2,["queuenow"] = 2,["queueup"] = 2,["joinqueue"] = 2,
["lookinggroupto"] = 2,["lookinggroupfor"] = 2,["askgroupto"] = 2,["askgroupfor"] = 2,
["needplayerfor"] = 2,["groupdelvinginto"] = 2,["lendahandin"] = 2,
["tryingtodo"] = 2,["wouldlovesomehelp"] = 2,["stillongoing"] = 2,["letsgoguys"] = 2,["letsdoit"] = 2,["letsdodungeon"] = 2,

["lookingonefor"] = 2,["lookingtwofor"] = 2,["lookingthreefor"] = 2,
["oneforquest"] = 2,["twoforquest"] = 2,["threeforquest"] = 2,["oneforhquest"] = 2,["twoforhquest"] = 2,["threeforhquest"] = 2,
["onemorefor"] = 2,["twomorefor"] = 2,["threemorefor"] = 2,
["calltoarmto"] = 2,["wehavesummon"] = 2,["queuebg"] = 2,

-- Boost
["freedmboost"] = 2,["freedeadminesboost"] = 2,["freestockadeboost"] = 2,["freestockboost"] = 2,["freebfdboost"] = 2,["freeblackfathomboost"] = 2,["freeblackfathomdeepsboost"] = 2,["freeblackfathomdeepboost"] = 2,
["freesfkboost"] = 2,["freeshadowfangboost"] = 2,["freeshadowfangkeepboost"] = 2,["freewcboost"] = 2,["freewailingcavernsboost"] = 2,["freerfcboost"] = 2,["freeragefireboost"] = 2,["freeragefirechasmboost"] = 2,
["freesmboost"] = 2,["freesmlibboost"] = 2,["freesmarmboost"] = 2,["freesmcathboost"] = 2,["freesmcathedralboost"] = 2,["freesmarmoryboost"] = 2,["freecathedralboost"] = 2,["freearmoryboost"] = 2,["freelibraryboost"] = 2,
["anyoneboostme"] = 2,["anyoneboostus"] = 2,["anyoneboostmy"] = 2,--["boostmethrough"] = 2,["boostusthrough"] = 2,
["anyonecarryme"] = 2,["anyonecarryus"] = 2,["anyonecarrymy"] = 2,--["carrymethrough"] = 2,["carryusthrough"] = 2,

-- Anyone
["anyonegoingtodo"] = 2,["anyonecomingtodo"] = 2,["anyonedownfor"] = 2,
["anyonegroup"] = 2,
["anyonehavetodo"] = 2,["anyoneletsdo"] = 2,["anyoneinterested"] = 2,["anyonefor"] = 2,
["anyonenear"] = 2,
["anyoneneed"] = 2,["anyoneneedto"] = 2,--["anyoneneedtofarm"] = 2,["anyoneneedtojoin"] = 2,["anyoneneedtokill"] = 2,["anyoneneedtorun"] = 2,["anyoneneedtospam"] = 2,
["anyonethatcanrun"] = 2,
["anyonethatcanrun"] = 2,["anyonethatcanjoin"] = 2,["anyonethatcangroup"] = 2,
["anyonetherefor"] = 2,["anyonedo"] = 2,["anyoneupfor"] = 2,["anyoneupto"] = 2,["anyonewhocanhelp"] = 2,["anyoneworkon"] = 2,["anyoneelsefor"] = 2,["anyoneelsedoing"] = 2,["anyoneelseneed"] = 2,["anyoneelseupfor"] = 2,["anyonehelpcomplete"] = 2,
["anyonewillingto"] = 2,

-- Any
["anyupfor"] = 2,["anyothersfor"] = 2,
["allianceforquest"] = 2,["allianceforhquest"] = 2,["anyallianceworkon"] = 2,["hordeforquest"] = 2,["hordeforhquest"] = 2,["anyhordeneed"] = 2,["anyhordeworkon"] = 2,
["clothspotfor"] = 2,["leatherworkerspotfor"] = 2,["mailspotfor"] = 2,["platespotfor"] = 2,

-- Help
["anyoneabletohelp"] = 2,["anyonecaretohelp"] = 2,["anyonedowntohelp"] = 2,["anyonehelpwith"] = 2,["anyonehelpwith"] = 2,
["anyonemaybecanhelp"] = 2,["anyonemindhelping"] = 2,["anyoneneedtohelp"] = 2,["anyonethatcanhelp"] = 2,["anyonecanhelp"] = 2,["anyonehelp"] = 2,
["helpkill"] = 2,["helpgetthrough"] = 2,["helpthrough"] = 2,["cananyonehelp"] = 2,["caretohelpwith"] = 2,["willingtohelp"] = 2,
["helpoutwith"] = 2,["helpwit"] = 2,["helpwith"] = 2,["helpplease"] = 2,["helpdo"] = 2,

["lfhelp"] = 2,["pleasehelp"] = 2,["whocanhelp"] = 2,["mindhelpingwith"] = 2,["mindhelpwith"] = 2,["helpforthisplease"] = 2,

["needtohelp"] = 2,
["anydamagecanhelp"] = 2,["anyhealcanhelp"] = 2,["anytankcanhelp"] = 2,

-- Quest
["lfquest"] = 2,["questlookfor"] = 2,["anyoneforquest"] = 2,["anyonehereforquest"] = 2,["anyoneelsequest"] = 2,["anyonequest"] = 2,
["comewithmequest"] = 2,["doingquest"] = 2,["moreforquest"] = 3,["needanotherforquest"] = 2,["letsdoquest"] = 2,["needotherforquest"] = 2,
["slotforquest"] = 2,["anygamersforquest"] = 2,["anygamersquest"] = 2,["anyoneneedtoquest"] = 2,["anyonewillingtoquest"] = 2,
["helpwithquest"] = 2,["sometodoquest"] = 2,["anytodoquest"] = 2,["anyonedoquest"] = 2,["somehelpforquest"] = 2,["anytoquest"] = 2,

["lfhquest"] = 2,["hquestlookfor"] = 2,["anyoneforhquest"] = 2,["anyonehereforhquest"] = 2,["anyoneelsehquest"] = 2,["anyonehquest"] = 2,
["comewithmehquest"] = 2,["doinghquest"] = 2,["moreforhquest"] = 3,["needanotherforhquest"] = 2,["letsdohquest"] = 2,["needotherforhquest"] = 2,
["slotforhquest"] = 2,["anygamersforhquest"] = 2,["anygamershquest"] = 2,["anyoneneedtohquest"] = 2,["anyonewillingtohquest"] = 2,
["helpwithhquest"] = 2,["sometodohquest"] = 2,["anytodohquest"] = 2,["anyonedohquest"] = 2,["somehelpforhquest"] = 2,

-- Group words
["formraid"] = 2,["groupquest"] = 2,["grouphquest"] = 2,["hostraid"] = 2,["groupforelite"] = 2,["groupforquest"] = 2,["groupforhquest"] = 2,["groupforraid"] = 2,
["lastspot"] = 2,["spotleft"] = 2,["spotleftfor"] = 2,["openspotfor"] = 2,["morespot"] = 2,["lastslot"] = 2,["slotleft"] = 2,["slotleftfor"] = 2,["moreslot"] = 2,["roomformore"] = 2,

-- Forming
["formgroupfor"] = 2,["startgroupfor"] = 2,["makegroupfor"] = 2,["hostgroupfor"] = 2,["creategroupfor"] = 2,
["formgroupto"] = 2,["startgroupto"] = 2,["makegroupto"] = 2,["makegroupto"] = 2,["hostgroupto"] = 2,["creategroupto"] = 2,
["needtorunme"] = 2,["needtoruna"] = 2,["needtorunan"] = 2,
["anyoneneedtogroup"] = 2,["anyonewillingtogroup"] = 2,["anyoneneedtorun"] = 2,["anyonewillingtorun"] = 2,
["formfresh"] = 2,["startfresh"] = 2,["makefresh"] = 2,["makefresh"] = 2,["hostfresh"] = 2,

["gathergroup"] = 2,

-- Farm
["badgefarm"] = 2,["argentdawnrepfarm"] = 2,["stratrepfarm"] = 2,["repfarmopen"] = 2,["getyouraqrepfarm"] = 2,["combatbadgefarm"] = 2,["hyjalshardfarm"] = 2,

-- Class
["anydruidletsdo"] = 2,["anyhunterletsdo"] = 2,["anymageletsdo"] = 2,["anypaladinletsdo"] = 2,["anypriestletsdo"] = 2,["anyrogueletsdo"] = 2,["anyshamanletsdo"] = 2,["anywarlockletsdo"] = 2,["anywarriorletsdo"] = 2,["anylockletsdo"] = 2,
["druidfor"] = 2,["hunterfor"] = 2,["magefor"] = 2,["paladinfor"] = 2,["priestfor"] = 2,["roguefor"] = 2,["shamanfor"] = 2,["warlockfor"] = 2,["warriorfor"] = 2,
["druidneeddo"] = 2,["hunterneeddo"] = 2,["mageneeddo"] = 2,["paladinneeddo"] = 2,["priestneeddo"] = 2,["rogueneeddo"] = 2,["shamanneeddo"] = 2,["warlockneeddo"] = 2,["warriorneeddo"] = 2,["lockneeddo"] = 2,

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
["anyonenorthwind"] = 2,["anyoneredridge"] = 2,["anyonesearinggorge"] = 2,["anyonesilithus"] = 2,["anyonesilverpine"] = 2,["anyonesos"] = 2,["anyonestonetalon"] = 2,
["anyonestranglethorn"] = 2,["anyonestv"] = 2,["anyoneswamp"] = 2,["anyonetanaris"] = 2,["anyoneteldrassil"] = 2,["anyonetheramore"] = 2,
["anyonethousandneedles"] = 2,["anyonekneedles"] = 2,["anyonetirisfal"] = 2,["anyoneungoro"] = 2,["anyonevalleyofspears"] = 2,["anyonewestfall"] = 2,
["anyonewetlands"] = 2,["anyonewinterspring"] = 2,["anyonewpl"] = 2,

-- Foreign
["russiangroupraid"] = 2,
}
GF_WORD_LFG = {
["lfg"] = 3,["lkg"] = 3,["lfd"] = 3,["lfgroup"] = 3,["lookingtogroup"] = 3,["asktogroup"] = 2,["needtogroup"] = 3,["ineedgroup"] = 3,
["invitemefor"] = 3,["pleaseinvite"] = 2,
["cananyoneboostme"] = 4,["anylastmin"] = 2,["anylastminute"] = 2,["anyroomfor"] = 2,["anyspotfor"] = 2,

["anyraiddoing"] = 2,["anyraidfor"] = 2,["anyraidgoing"] = 2,["anyraidneed"] = 2,["anyraidup"] = 2,["anyraidon"] = 2,["anyraidgoingfor"] = 2,["isthereanyraid"] = 2,["anyraidforquest"] = 2,["anyraidforhquest"] = 2,
["anygroupdoing"] = 2,["anygroupfor"] = 2,["anygroupgoing"] = 2,["anygroupneed"] = 2,["anygroupup"] = 2,["anygroupon"] = 2,["anygroupgoingfor"] = 2,["isthereanygroup"] = 2,["anygroupforquest"] = 2,["anygroupforhquest"] = 2,
["anydungeondoing"] = 2,["anydungeonfor"] = 2,["anydungeongoing"] = 2,["anydungeonneed"] = 2,["anydungeonup"] = 2,["anydungeonon"] = 2,["anydungeongoingfor"] = 2,["isthereanydungeon"] = 2,["anydungeonforquest"] = 2,["anydungeonforhquest"] = 2,

["anyoneraiddoing"] = 2,["anyoneraidfor"] = 2,["anyoneraidgoing"] = 2,["anyoneraidneed"] = 2,["anyoneraidup"] = 2,["anyoneraidon"] = 2,["anyoneraidgoingfor"] = 2,["isthereanyoneraid"] = 2,["anyoneraidforquest"] = 2,["anyoneraidforhquest"] = 2,
["anyonegroupdoing"] = 2,["anyonegroupfor"] = 2,["anyonegroupgoing"] = 2,["anyonegroupneed"] = 2,["anyonegroupup"] = 2,["anyonegroupon"] = 2,["anyonegroupgoingfor"] = 2,["isthereanyonegroup"] = 2,["anyonegroupforquest"] = 2,["anyonegroupforhquest"] = 2,
["anyonedungeondoing"] = 2,["anyonedungeonfor"] = 2,["anyonedungeongoing"] = 2,["anyonedungeonneed"] = 2,["anyonedungeonup"] = 2,["anyonedungeonon"] = 2,["anyonedungeongoingfor"] = 2,["isthereanyonedungeon"] = 2,["anyonedungeonforquest"] = 2,["anyonedungeonforhquest"] = 2,

["anyonedoing"] = 2,["anyonestart"] = 2,["anyonehost"] = 2,["anyoneform"] = 2,["anyoneplanningtodo"] = 2,
["whoneededdruid"] = 2,["whoneededhunter"] = 2,["whoneededmage"] = 2,["whoneededpaladin"] = 2,["whoneededpriest"] = 2,["whoneededrogue"] = 2,["whoneededshaman"] = 2,["whoneededwarlock"] = 2,["whoneededlock"] = 2,["whoneededwarrior"] = 2,
["anyoneneeddruid"] = 2,["anyoneneedhunter"] = 2,["anyoneneedmage"] = 2,["anyoneneedpaladin"] = 2,["anyoneneedpriest"] = 2,["anyoneneedrogue"] = 2,["anyoneneedshaman"] = 2,["anyoneneedwarlock"] = 2,["anyoneneedlock"] = 2,["anyoneneedwarrior"] = 2,

["anybadgefarm"] = 2,["anycombatbadgefarm"] = 2,
["anyaqrepfarm"] = 2,["anyadrepfarm"] = 2,["anycenarionrepfarm"] = 2,["anyargentrepfarm"] = 2,["anyargentdawnrepfarm"] = 2,["anyhyjalrepfarm"] = 2,
["anystratrepfarm"] = 2,["anyrepfarmstrat"] = 2,["anyscholomancestratrepfarm"] = 2,["anystratscholomancerepfarm"] = 2,["anyscholomancestratholmerepfarm"] = 2,["anystratholmescholomancerepfarm"] = 2,

-- Raids
["anymchappen"] = 2,["anymoltencorehappen"] = 2,["anyblackwinglairhappen"] = 2,["anyaqhappen"] = 2,["anynaxxramashappen"] = 2,["anyonyxiahappen"] = 2,["anyzghappen"] = 2,["anykarazhanhappen"] = 2,["anyworldbosshappen"] = 2,
["anymcgoing"] = 2,["anymoltencoregoing"] = 2,["anyblackwinglairgoing"] = 2,["anyaqgoing"] = 2,["anynaxxramasgoing"] = 2,["anyonyxiagoing"] = 2,["anyzggoing"] = 2,["anykarazhangoing"] = 2,["anyworldbossgoing"] = 2,
["anymcraid"] = 2,["anymoltencoreraid"] = 2,["anyblackwinglairraid"] = 2,["anyaqraid"] = 2,["anynaxxramasraid"] = 2,["anyonyxiaraid"] = 2,["anyzgraid"] = 2,["anykarazhanraid"] = 2,["anyworldbossraid"] = 2,
["anymctonight"] = 2,["anymoltencoretonight"] = 2,["anyblackwinglairtonight"] = 2,["anyaqtonight"] = 2,["anynaxxramastonight"] = 2,["anyonyxiatonight"] = 2,["anyzgtonight"] = 2,["anykarazhantonight"] = 2,["anyworldbosstonight"] = 2,
}
GF_LFM_BEFORE = {
["anyactive"] = true,
["anyfor"] = true,["anydo"] = true,["anyafter"] = true,["anyfarm"] = true,["anyrunning"] = true,["anykilling"] = true,["anyaroundfor"] = true,["anyherefor"] = true,
["anyone"] = true,["anyonedo"] = true,["anyoneafter"] = true,["anyonefor"] = true,["anyonefarm"] = true,["anyonequest"] = true,["anyonerunning"] = true,["anyonekilling"] = true,["anyonearoundfor"] = true,["anyoneherefor"] = true,
["come"] = true,["cometo"] = true,["comefor"] = true,
["coming"] = true,["comingto"] = true,["comingfor"] = true,
["damage"] = true,["damagelast"] = true,["damagefor"] = true,["damageon"] = true,["damageto"] = true,
["doing"] = true,
["downfor"] = true,["downto"] = true,["downtorun"] = true,
["duo"] = true,
["finishing"] = true,
["form"] = true,
["fresh"] = true,
["go"] = true,["gofor"] = true,["going"] = true,["goingto"] = true,["goingfor"] = true,
["group"] = true,["groupto"] = true,["groupfor"] = true,["groupforlevel"] = true,
["gtg"] = true,
["heal"] = true,["heallast"] = true,["healfor"] = true,["healon"] = true,["healto"] = true,
["help"] = true,["helpfor"] = true,["helpon"] = true,["helpneeded"] = true,["helpwith"] = true,
["host"] = true,
["invite"] = true,["inviteto"] = true,["invitefor"] = true,
["join"] = true,
["kill"] = true,
["lastcall"] = true,
["lastfor"] = true,
["lastminute"] = true,
["letsdo"] = true,
["letsrun"] = true,
["lookingto"] = true,
["morefor"] = true,
["moreheroes"] = true,
["moreinfor"] = "morefor",
["moreslayers"] = true,
["multiplerun"] = true,
["needhelp"] = true,["needmore"] = true,["needall"] = true,["needdo"] = true,["needrun"] = true,["needtorun"] = true,["needtotry"] = true,["needone"] = true,["needtwo"] = true,["needthree"] = true,
["onemore"] = true,["twomore"] = true,["threemore"] = true,
["p"] = true,
["peopleto"] = true,["peoplefor"] = true,
["please"] = true,
["queue"] = true,["queueto"] = true,["queuefor"] = true,["queuetolevel"] = true,["queueforlevel"] = true,
["readyfor"] = true,
["running"] = true,
["start"] = true,["startinminute"] = true,["startinhour"] = true,
["tank"] = true,["tanklast"] = true,["tankfor"] = true,["tankon"] = true,["tankto"] = true,
["together"] = true,

["lf"] = true,["lfm"] = true,["lfmfor"] = true,
}
GF_LFM_AFTER = {
["andgo"] = true,
["anydo"] = true,["anyafter"] = true,["anyrunning"] = true,["anykilling"] = true,
["anyone"] = true,
["comedamage"] = true,["comeheal"] = true,["cometank"] = true,
["comedruid"] = true,["comehunter"] = true,["comemage"] = true,["comepaladin"] = true,["comepriest"] = true,["comerogue"] = true,["comeshaman"] = true,["comewarlock"] = true,["comewarrior"] = true,
["damage"] = true,
["duo"] = true,
["fresh"] = true,
["go"] = true,["going"] = true,
["group"] = true,
["gtg"] = true,
["happen"] = true,
["hardcoregroup"] = true,
["hcgroup"] = true,
["heal"] = true,
["help"] = true,
["host"] = true,
["id"] = true,
["join"] = true,
["kill"] = true,
["lastcall"] = true,
["lastminute"] = true,
["letsdo"] = true,
["letsrun"] = true,
["moreheroes"] = true,
["moreslayers"] = true,
["multiplerun"] = true,
["needhelp"] = true,["needmore"] = true,["needall"] = true,["needdo"] = true,["needrun"] = true,["needtorun"] = true,["needtotry"] = true,["needone"] = true,["needtwo"] = true,["needthree"] = true,
["onedamage"] = true,["twodamage"] = true,["threedamage"] = true,
["oneheal"] = true,["twoheal"] = true,["threeheal"] = true,
["onetank"] = true,
["onemore"] = true,["twomore"] = true,["threemore"] = true,
["ongoing"] = true,
["open"] = true,
["p"] = true,
["please"] = true,
["popped"] = true,
["queue"] = true,
["raid"] = true,
["realquick"] = true,
["rerun"] = true,
["run"] = true,
["running"] = true,
["spam"] = true,
["sr"] = true,
["start"] = true,["startinminute"] = true,["startinhour"] = true,
["tank"] = true,
["together"] = true,

["lf"] = true,["lfm"] = true,["lfmfor"] = true,
}
GF_LFG_BEFORE = {
["any"] = true,["anyhc"] = true,["anyhardcore"] = true,
["damageready"] = true,
["healready"] = true,
["inviteme"] = true,
["need"] = true,["needhc"] = true,["needhardcore"] = true,
["takeme"] = true,
["tankready"] = true,
["upfor"] = true,
["lfg"] = true,["lfgfor"] = true,
}
GF_LFG_AFTER = {
["any"] = true,
["need"] = true,
["invite"] = true,
}
GF_LFM_BYPASS = {
["elite"] = true,
["escort"] = true,
["quest"] = true,
["task"] = true,
["hcgroup"] = true,
["hardcoregroup"] = true,
["cenarionrep"] = true,
["dungeon"] = true,
["bg"] = true,
["open"] = true,
}
GF_GROUP_WORD_BYPASS = {
["leatherworker"] = true,["cloth"] = true,["aquaticform"] = true,["arcanite"] = true,["armorscraps"] = true,["atlast"] = true,["chapter"] = true,["corruption"] = true,
["familytree"] = true,["beginnings"] = true,["cluck"] = true,["reassignment"] = true,["redemption"] = true,["returninghome"] = true,["southshore"] = true,["starfall"] = true,
["teldrassil"] = true,["tohinterlands"] = true,["triage"] = true,["trinket"] = true,["welcome"] = true,["ungorosoil"] = true,["youtogood"] = true,["younglovers"] = true,
["programmer"] = true,["emptyhanded"] = true,["forher"] = true,["itbroke"] = true,["kaboom"] = true,["oneofus"] = true,["proof"] = true,["staffmeeting"] = true,
["returnthunderbluff"] = true,["reuse"] = true,["hermit"] = true,["orgrimmar"] = true,["bigman"] = true,["throwinghand"] = true,
}
GF_GROUP_PHRASE_QUESTION = {
["anymcplanned"] = true,["anymoltencoreplanned"] = true,["anyblackwinglairplanned"] = true,["anyaqplanned"] = true,["anynaxxramasplanned"] = true,["anyonyxiaplanned"] = true,["anyzgplanned"] = true,["anykarazhanplanned"] = true,["anyworldbossplanned"] = true,
["gotmcplanned"] = true,["gotmoltencoreplanned"] = true,["gotblackwinglairplanned"] = true,["gotaqplanned"] = true,["gotnaxxramasplanned"] = true,["gotonyxiaplanned"] = true,["gotzgplanned"] = true,["gotkarazhanplanned"] = true,["gotworldbossplanned"] = true,
["havemcplanned"] = true,["havemoltencoreplanned"] = true,["haveblackwinglairplanned"] = true,["haveaqplanned"] = true,["havenaxxramasplanned"] = true,["haveonyxiaplanned"] = true,["havezgplanned"] = true,["havekarazhanplanned"] = true,["haveworldbossplanned"] = true,

["aqrepfarmup"] = 2,["adrepfarmup"] = 2,["cenarionrepfarmup"] = 2,["argentrepfarmup"] = 2,["argentdawnrepfarmup"] = 2,["hyjalrepfarmup"] = 2,
["stratrepfarmup"] = 2,["repfarmstratup"] = 2,["scholomancestratrepfarmup"] = 2,["stratscholomancerepfarmup"] = 2,["scholomancestratholmerepfarmup"] = 2,["stratholmescholomancerepfarmup"] = 2,
}
GF_GROUP_FIRST_LAST = {
["hquest"] = { ["anyone"] = true, },
["queue"] = { ["bg"] = true,["level"] = true,["kill"] = true, },
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
GF_WORD_ROLES = {
["heal"] = true,["tank"] = true,["damage"] = true,
}
GF_WORD_LEVEL_DETECT = {
["level"] = true,["lv"] = true,

["heal"] = true,["tank"] = true,["damage"] = true,["range"] = true,["melee"] = true,["caster"] = true,
["druid"] = true,["hunter"] = true,["mage"] = true,["paladin"] = true,["priest"] = true,["rogue"] = true,["shaman"] = true,["warlock"] = true,["lock"] = true,["warrior"] = true,
["balance"] = true,["feral"] = true,["resto"] = true,["bm"] = true,["marks"] = true,["survival"] = true,["arcane"] = true,["fire"] = true,["frost"] = true,["holy"] = true,["prot"] = true,["ret"] = true,["disc"] = true,["holy"] = true,
["shadow"] = true,["assassin"] = true,["combat"] = true,["sub"] = true,["ele"] = true,["enh"] = true,["resto"] = true,["affliction"] = true,["demonology"] = true,["destruction"] = true,["arm"] = true,["fury"] = true,["prot"] = true,
["boomie"] = true,["kitty"] = true,["bear"] = true,["shadowpriest"] = true,["affl"] = true,["demo"] = true,["destro"] = true,["protection"] = true,

["dungeon"] = true,["anything"] = true,
}
GF_WORD_LEVEL_ZONE = {
["alterac"] = 38,["arathi"] = 38,["highlands"] = 38,["ashenvale"] = 25,["auberdine"] = 15,["azshara"] = 55,["badlands"] = 40,["barrens"] = 17,["blasted"] = 55,
["cenarion"] = 60,["darkshore"] = 15,["darkshire"] = 28,["deadwind"] = 60,["desolace"] = 35,["morogh"] = 6,["durotar"] = 6,["duskwood"] = 28,
["dustwallow"] = 40,["epl"] = 58,["feathermoon"] = 45,["felwood"] = 55,["feralas"] = 45,["glenshire"] = 16,["hillsbrad"] = 27,["hinterlands"] = 45,["hjyal"] = 60,["lakeshire"] = 22,["loch"] = 16,
["modan"] = 16,["moonglade"] = 55,["mulgore"] = 6,["northwind"] = 32,["plaguelands"] = 58,["redridge"] = 22,["gorge"] = 50,["silithus"] = 58,["silverpine"] = 15,["sos"] = 38,["sorrows"] = 38,
["stonetalon"] = 25,["stranglethorn"] = 36,["stv"] = 36,["swamp"] = 38,["tanaris"] = 45,["teldrassil"] = 6,["theramore"] = 40,["needles"] = 30,
["kneedles"] = 30,["tirisfal"] = 6,["ungoro"] = 53,["westfall"] = 15,["wetlands"] = 26,["winterspring"] = 58,["wpl"] = 56,
}
GF_WORD_QUEST = {
["depthsofkarazhan"]={0,60,0},["felenergyirregularities"]={0,60,0},["mysteryofkarazhan"]={0,60,0},["upperbinding"]={0,60,0},["bloodsailcompound"] = {0,41,0},["byanymeansnecessary"] = {0,54,0},
["intodream"] = {0,60,0},["keytokarazhan"] = {0,60,0},["masteringformula"] = {0,14,0},["mauloggcrisis"] = {0,54,0},["mysteriouscowscroll"] = {0,60,0},["sandfuryredemption"] = {0,45,0},
["securinggilneas"] = {0,44,0},["snowballwarsepisode"] = {0,60,0},["wayofspiritwalking"] = {0,40,0},["wayofspiritwolf"] = {0,40,0},["wayofwitchdoctor"] = {0,40,0},

["druidclassquest"] = {0,0,0},["hunterclassquest"] = {0,0,0},["mageclassquest"] = {0,0,0},["paladinclassquest"] = {0,0,0},["priestclassquest"] = {0,0,0},["rogueclassquest"] = {0,0,0},["shamanclassquest"] = {0,0,0},["warlockclassquest"] = {0,0,0},["warriorclassquest"] = {0,0,0},
["multipleraid"] = {0,60,0},["multipleraid"] = {0,60,0},

["hyjaldoingelite"]={0,50,0},["hyjalelite"]={0,50,0},["hyjalgroup"]={0,45,0},["elitehyjal"]={0,50,0},

-- Other Words
["abyssal"]={0,60,0},["abyssalcouncil"]={0,64,0},["abyssalcouncilinsilithus"]={0,64,0},["airduke"]={0,60,0},["alcazisland"]={0,62,0},["alexibarov"]={0,62,0},["alliancebarov"]={0,62,0},
["alteracdoingelite"]={0,40,0},["alteracelite"]={0,40,0},["alteracgroup"]={0,38,0},["alteracmountainelite"]={0,40,0},["alteracmountaingroup"]={0,40,0},["alverold"]={0,20,0},["anchoredge"]={0,30,0},
["andorhal"]={0,60,0},["araj"]={0,60,0},["arajs"]={0,60,0},["arathidoingelite"]={0,40,0},["arathielite"]={0,40,0},["arathigroup"]={0,38,0},["arathihighlandselite"]={0,40,0},
["arathihighlandsgroup"]={0,40,0},["arathiogres"]={0,40,0},["argentdawnrep"]={0,60,0},["argentdawnrepfarm"]={0,60,0},["argentrepfarm"]={0,60,0},["arugals"]={0,15,0},["ashenvalegroup"]={0,25,0},
["attunementony"]={0,58,0},["attunementonyxia"]={0,58,0},["auberdinegroup"]={0,15,0},["axtroz"]={6585,60,15,11},["azsalus"]={0,54,0},["azsharagroup"]={0,55,0},["azurekey"]={0,52,0},["azurescale"]={0,55,0},
["badgefarm"]={0,60,0},["badlandsdragonelite"]={0,50,0},["badlandsgroup"]={0,40,0},["balgaras"]={0,34,0},["bangalash"]={0,43,0},["barkskintribe"]={0,60,0},["baronkazum"]={0,64,0},
["barovalliance"]={0,62,0},["barovelite"]={0,60,0},["barovgroup"]={0,60,0},["barovhorde"]={0,62,0},["barovkill"]={0,60,0},["barrensgroup"]={0,17,0},["bellygrub"]={0,24,0},
["benedictionquest"]={0,60,0},["besseleth"]={0,21,0},["bhagthera"]={0,40,0},["blacklash"]={0,50,0},["blackrockchampion"]={0,25,0},["blackstone"]={0,10,0},["blackwald"]={0,60,0},["blastedlandsdoingelite"]={0,60,0},["blastedlandselite"]={0,60,0},
["blastedlandsgroup"]={0,55,0},["blightcaller"]={0,63,0},["bloodkelp"]={0,60,0},["borelgore"]={0,60,0},["bossfarm"]={0,0,0},["broodofnozdormurep"]={0,64,0},["broodofnozdormurepfarm"]={0,64,0},
["burningsteppes"]={0,56,0},["cenariongroup"]={0,60,0},["cenarionrep"]={0,60,0},["cenarionrepfarm"]={0,60,0},["chickenescort"]={0,45,0},
["chickenquest"]={0,45,0},["chimaerok"]={0,63,0},["chronalis"]={6584,60,15,440},["churchofwestfall"]={0,22,0},["cinderofcynders"]={0,60,0},["cliffgiant"]={0,50,0},["combatbadge"]={0,60,0},["combattask"]={0,60,0},["combatbadge"]={0,60,0},["combattasks"]={0,60,0},
["corpulent"]={0,60,0},["courier"]={0,60,0},["crackingmaury"]={0,44,0},["custodianmathias"]={0,44,0},["darkanvil"]={40259,58,139,2017},["darkironambassador"]={0,33,0},["darkirondwarf"]={0,30,0},["darkshiredoingelite"]={0,31,0},
["darkshireelite"]={0,31,0},["darkshiregroup"]={0,28,0},["darkshoregroup"]={0,15,0},["deadwindgroup"]={0,60,0},["deathclasp"]={0,59,0},["demonoforb"]={0,40,0},["demonquest"]={0,60,0},
["denmother"]={0,18,0},["desolacegroup"]={0,35,0},["destroyingventureco"]={0,9,0},["diathorus"]={0,30,0},["doctorweavil"]={0,64,0},["dragonelitebadlands"]={0,50,0},["drakkisath"]={0,63,0},
["dreamstalker"]={0,62,0},["dukeofcinder"]={0,60,0},["dukeofcynders"]={0,60,0},["dukes"]={0,60,0},["dukesilithus"]={0,60,0},["dukesinsilithus"]={0,60,0},["dukesummon"]={0,60,0},
["dukesummonto"]={0,60,0},["dungarok"]={0,30,0},["dunmodr"]={0,30,0},["dunmoroghdoingelite"]={0,12,0},["dunmoroghelite"]={0,12,0},["dunmoroghgroup"]={0,6,0},["durotargroup"]={0,6,0},
["duskwooddoingelite"]={0,31,0},["duskwoodelite"]={0,31,0},["duskwoodgroup"]={0,28,0},["dustwallowdoingelite"]={0,45,0},["dustwallowelite"]={0,45,0},["dustwallowgroup"]={0,40,0},["dustwallowmarshelite"]={0,45,0},
["dustwallowmarshgroup"]={0,40,0},["earthduke"]={0,60,0},["easternplaguelands"]={0,60,0},["elite"]={0,0,0},["elitealterac"]={0,40,0},["elitearathi"]={0,40,0},["elitebarov"]={0,60,0},
["eliteblastedlands"]={0,60,0},["elitedarkshire"]={0,31,0},["elitedunmorogh"]={0,12,0},["eliteduskwood"]={0,31,0},["elitedustwallow"]={0,45,0},["elitedustwallowmarsh"]={0,45,0},["eliteglenshire"]={0,15,0},
["elitehighlands"]={0,40,0},["elitehillsbrad"]={0,30,0},["elitehint"]={0,50,0},["elitehinterlands"]={0,50,0},["elitelakeshire"]={0,26,0},["elitelochmodan"]={0,20,0},["elitenorthwind"]={0,32,0},["eliteredridge"]={0,26,0},
["elitesilithus"]={0,60,0},["elitesilverpine"]={0,15,0},["elitetroll"]={0,50,0},["elitevalleyofspears"]={0,42,0},["elitewetlands"]={0,30,0},["eliza"]={0,30,0},["embalmer"]={0,32,0},
["eplgroup"]={0,58,0},["eplrepfarm"]={0,60,0},["eranikus"]={0,64,0},["escort"]={0,0,0},["falconcrest"]={0,40,0},["fangore"]={0,26,0},["fatherlycan"]={0,60,0},
["fearoth"]={0,55,0},["feathermoongroup"]={0,45,0},["felhunterquest"]={0,30,0},["felpawvillagerepfarm"]={0,60,0},["felwoodrepfarm"]={0,60,0},["feralasgroup"]={0,45,0},["fireduke"]={0,60,0},
["fozruk"]={0,42,0},["frostmaul"]={0,60,0},["furbolgelite"]={0,60,0},["furbolgvillage"]={0,23,0},["gammerita"]={0,48,0},["gath"]={0,26,0},["gelweg"]={0,48,0},
["gelwig"]={0,48,0},["glenshiredoingelite"]={0,15,0},["glenshireelite"]={0,15,0},["glenshiregroup"]={0,16,0},["gorlash"]={0,47,0},["gorshak"]={0,52,0},["grark"]={0,58,0},["grelborg"]={0,40,0},
["grimeye"]={0,31,0},["gromhellscream"]={0,30,0},["grommash"]={0,57,0},["groupbarov"]={0,60,0},["grushak"]={0,31,0},["gyromast"]={2098,20,148,148},["hameya"]={0,60,0},["hanzento"]={0,63,0},
["hardcoregroup"]={0,0,0},["hazzuri"]={0,54,0},["hcgroup"]={0,0,0},["hearthglen"]={0,60,0},["hematus"]={0,50,0},["hetaera"]={0,58,0},["hexx"]={0,50,0},["vilepriestess"]={0,50,0},["highcouncil"]={0,64,0},
["highcouncilinsilithus"]={0,64,0},["highlandsdoingelite"]={0,40,0},["highlandselite"]={0,40,0},["highlandsgroup"]={0,38,0},["highlandsogres"]={0,40,0},["hillsbraddoingelite"]={0,30,0},["hillsbraddwarf"]={0,30,0},
["hillsbradelite"]={0,30,0},["hillsbradfoothillselite"]={0,30,0},["hillsbradfoothillsgroup"]={0,27,0},["hillsbradgroup"]={0,27,0},["hintelite"]={0,50,0},["hinterlandsallianceelite"]={0,50,0},["hinterlandsalliancegroup"]={0,45,0},
["hinterlandsdoingelite"]={0,50,0},["hinterlandselite"]={0,50,0},["hinterlandsgroup"]={0,45,0},["hinterlandshordeelite"]={0,50,0},["hinterlandshordegroup"]={0,45,0},["hintgroup"]={0,45,0},["hiveashi"]={0,60,0},
["hiveregal"]={0,60,0},["hivezora"]={0,60,0},["hjyalgroup"]={0,60,0},["homingrobot"]={0,45,0},["hordebarov"]={0,62,0},["hquest"]={0,0,0},["humbert"]={0,30,0},
["hyjalfarm"]={0,60,0},["hyjalshard"]={0,60,0},["hyjalshardfarm"]={0,60,0},["hypercapacitor"]={0,30,0},["impquest"]={0,5,0},["janira"]={0,50,0},["jinthaalor"]={0,50,0},["keshan"]={0,25,0},
["killalliancenpc"]={0,0,0},["killbarov"]={0,60,0},["killhordenpc"]={0,0,0},["kingmukla"]={0,51,0},["kingsofflame"]={0,60,0},["klaven"]={0,24,0},["kneedlesgroup"]={0,30,0},
["krampus"]={0,60,0},["kroshius"]={0,55,0},["ladyrenirja"]={0,10,0},["lakeshiredoingelite"]={0,26,0},["lakeshireelite"]={0,26,0},["lakeshiregroup"]={0,22,0},["lakmaeran"]={0,64,0},
["lapidis"]={0,55,0},["larannikus"]={0,61,0},["lardslunch"]={0,49,0},["letashaz"]={0,55,0},["levelinggroup"]={0,0,0},["leveluptogether"]={0,0,0},["lfgstormwind"]={0,0,0},["lfmstormwind"]={0,0,0},
["lieutenantazsalus"]={0,54,0},["lochgroup"]={0,16,0},["lochmodandoingelite"]={0,20,0},["lochmodanelite"]={0,20,0},["lochmodangroup"]={0,16,0},["lochmodanogres"]={0,20,0},["lordsinsilithus"]={0,64,0},
["lordskwol"]={0,64,0},["lordssilithus"]={0,64,0},["lordvash"]={0,10,0},["lordvasharj"]={0,10,0},["marez"]={0,40,0},["mawofmadness"]={0,60,0},["maws"]={0,64,0},["midnightorb"]={0,23,0},["minerhackett"]={567,28,267,5179},
["mok"]={0,50,0},["mokrash"]={0,50,0},["moongladegroup"]={0,55,0},["morogo"]={0,60,0},["morogosthunderfoot"]={0,60,0},["morokk"]={0,45,0},["mountquest"]={0,60,0},["mulgoregroup"]={0,6,0},["murkeye"]={4740,18,148,148},
["nathanos"]={0,63,0},["nekrosh"]={0,32,0},["neptulon"]={0,64,0},["northwinddoingelite"]={0,32,0},["northwindelite"]={0,32,0},["northwindgroup"]={0,30,0},["obsidion"]={0,52,0},["oldicebeard"]={0,11,0},
["olsooty"]={0,20,0},["onyattunement"]={0,58,0},["onyxiaattunement"]={0,58,0},["oox"]={0,45,0},["oracledemetria"]={6148,60,139,139},["orboforahil"]={0,40,0},["possiblebutnotprobable"]={0,24,0},["pyrewood"]={0,15,0},
["quest"]={0,0,0},["racequest"]={0,32,0},["rakh"]={0,60,0},["rattlegore"]={0,60,0},["ravenwood"]={0,45,0},["redridgedoingelite"]={0,26,0},["redridgeelite"]={0,26,0},["redridgegroup"]={0,22,0},
["redridgemountainelite"]={0,26,0},["redridgemountaingroup"]={0,22,0},["repfarm"]={0,60,0},["repfarmepl"]={0,60,0},["repfarmfelpawvillage"]={0,60,0},["repfarmfelwood"]={0,60,0},["repfarmsilithus"]={0,60,0},
["repfarmwinterspring"]={0,60,0},["repfarmwpl"]={0,60,0},["revantusk"]={0,51,0},["revantuskvillage"]={0,51,0},["rhokdelarquest"]={0,60,0},["rholgast"]={0,57,0},["rotam"]={0,60,0},
["sandshark"]={0,13,0},["scarlet"]={0,0,0},["scarletbastion"]={0,60,0},["scarletenclave"]={0,60,0},["scryer"]={6582,60,15,616},["scytheboss"]={0,60,0},["scythewolfboss"]={0,60,0},["searinggorgegroup"]={0,50,0},
["shadowtooth"]={0,61,0},["shadra"]={0,55,0},["sharpbeak"]={0,51,0},["silithusabyssalcouncil"]={0,64,0},["silithusdoingelite"]={0,60,0},["silithusdukes"]={0,60,0},["silithuselite"]={0,60,0},
["silithusgroup"]={0,58,0},["silithushighcouncil"]={0,64,0},["silithuslords"]={0,64,0},["silithusquest"]={0,60,0},["silithusrepfarm"]={0,60,0},["silverpinedoingelite"]={0,15,0},["silverpineelite"]={0,15,0},
["silverpinegroup"]={0,15,0},["sindall"]={0,37,0},["skaldrenox"]={0,64,0},["smotts"]={0,46,0},["solnius"]={0,60,0},["somnus"]={6583,60,15,8},["sorrowclaw"]={0,41,0},["sosgroup"]={0,38,0},
["stoneguardian"]={0,60,0},["stonetalongroup"]={0,25,0},["stonewatch"]={0,26,0},["stormwinddoingquest"]={0,0,0},["stormwindgroup"]={0,0,0},["stormwindmagequest"]={0,17,0},["stormwindquest"]={0,0,0},
["stranglethorngroup"]={0,36,0},["stromgarde"]={0,37,0},["stvgroup"]={0,36,0},["succubusquest"]={0,20,0},["swampgroup"]={0,38,0},["swifttravelformquest"]={0,60,0},["tanarisgroup"]={0,45,0},
["targethive"]={0,60,0},["task"]={0,0,0},["teldrassilgroup"]={0,6,0},["teremus"]={0,60,0},["testofskull"]={0,62,0},["tethis"]={0,43,0},["theramoregroup"]={0,40,0},["thousandneedlesgroup"]={0,30,0},
["thunderaan"]={0,64,0},["thunderfuryboss"]={0,64,0},["thunderfuryquest"]={0,64,0},["timbermawholdrep"]={0,55,0},["timbermawrepfarm"]={0,60,0},["timbermawholdrepfarm"]={0,60,0},["tinkersparktransponder"]={0,54,0},["tirisfalgroup"]={0,6,0},
["tomeofvalor"]={0,25,0},["tomeofvalor"]={0,25,0},["torntusk"]={0,51,0},["trelane"]={0,39,0},["trollelite"]={0,50,0},["twilightcorrupter"]={0,64,0},["twilightgrove"]={0,64,0},["tyrionquest"]={0,31,0},["undercitymagequest"]={0,17,0},
["ungorogroup"]={0,53,0},["ursius"]={0,56,0},["vagash"]={0,11,0},["valleyofspearselite"]={0,42,0},["valleyofspearsgroup"]={0,6,0},["venethas"]={0,62,0},["venturecoleadership"]={0,9,0},
["vilegrip"]={0,51,0},["vilegrips"]={0,51,0},["voidwalkerquest"]={0,10,0},["vorrel"]={0,33,0},["vyrin"]={0,20,0},["vyrins"]={0,20,0},["warlordhanzento"]={0,63,0},
["waterduke"]={0,60,0},["weaponskillelite"]={0,60,0},["weaponskillquest"]={0,60,0},["weavil"]={0,64,0},["weldonbarov"]={0,62,0},["westernplaguelands"]={0,60,0},["westfallgroup"]={0,15,0},
["wetlandsdoingelite"]={0,30,0},["wetlandselite"]={0,30,0},["wetlandsgroup"]={0,26,0},["whirlaxis"]={0,64,0},["whirlwindaxe"]={0,40,0},["whirlwindweapon"]={0,40,0},["winterfall"]={0,59,0},
["winterspringdemon"]={0,64,0},["winterspringgroup"]={0,58,0},["winterspringrepfarm"]={0,60,0},["wplgroup"]={0,56,0},["wplrepfarm"]={0,60,0},["xalthix"]={0,61,0},["xanthar"]={0,60,0},
["xanvarak"]={0,60,0},["yowler"]={0,25,0},["zefek"]={0,48,0},

["dalsonstears"]={0,55,0},["felstonefield"]={0,53,0},["gahrronswithering"]={0,58,0},["writhinghaunt"]={0,55,0},

["tidelordsclaw"]={0,34,0},["tidelordmakrani"]={0,34,0},["makrani"]={0,34,0},

-- Normal Quests
["abandonedequipment"]={40327,42,33,33},["abandonedhope"]={4242,54,1584,46},["abominableyeti"]={40772,60,0,5130},["aboveandbeyond"]={5263,60,2017,2017},["absentmindedprospector"]={943,24,148,11},["abyssalcontacts"]={8361,60,1377,1377},["acquiringinformation"]={55030,36,0,33},
["activeagent"]={5213,60,2017,2017},["addinglittlesting"]={55004,7,14,14},["additionalruneclothrevantusktribe"]={80379,60,1537,2597},["additionalruneclothsilvermoonremnants"]={80374,60,1537,2597},["admiralsorders"]={831,7,14,14},["advancedgemologyi"]={41333,50,0,1337},["advancedgemologyii"]={41334,50,0,1337},
["advancedgoldsmithingi"]={41335,50,0,405},["advancedgoldsmithingii"]={41337,50,0,405},["advancedjewelcraftingxihardasdiamonds"]={41316,50,0,440},["affray"]={1719,30,40005,17},["affronttonature"]={40706,30,406,406},["afterambush"]={454,15,38,38},["againintogreatossuary"]={41715,60,40006,1519},
["againsthatecrest"]={3130,43,357,357},["againstkolkardream"]={41367,23,718,718},["againstlordshalzaru"]={2870,45,357,357},["againwithzappedgiants"]={7725,55,357,357},["agamandheirlooms"]={1821,11,40005,85},["ageddeeprod"]={40246,53,16,16},["agentofhydraxis"]={6823,60,16,16},
["aggressionsend"]={40390,10,14,14},["aggressivedefense"]={1025,24,331,331},["aggressivewildlife"]={40120,20,331,331},["agmondsfate"]={704,38,1517,1337},["agonore"]={55046,42,14,3},["aidkagoro"]={40572,35,17,15},["akirisbybundle"]={623,43,33,33},
["akzeloth"]={809,13,14,1637},["alasandorhal"]={211,60,28,28},["algazgauntlet"]={455,21,11,11},["alienecology"]={3883,52,490,490},["alienegg"]={4821,26,400,400},["allalongfarstride"]={41245,7,0,5225},["allalongwatchtowers"]={5098,56,28,28},
["allaroundalahthalas"]={41241,6,0,5225},["allegiancetooldgods"]={6565,26,719,719},["allianceneedsarthastears"]={8509,60,40025,490},["allianceneedscopperbars"]={8492,60,40025,1537},["allianceneedsironbars"]={8494,60,40025,1537},["allianceneedslightleather"]={8511,60,40025,1537},["allianceneedslinenbandages"]={8517,60,40025,1537},
["allianceneedsmediumleather"]={8513,60,40025,215},["allianceneedspurplelotus"]={8505,60,40025,490},["allianceneedsrainbowfinalbacore"]={8524,60,40025,1537},["allianceneedsroastraptor"]={8526,60,40025,1537},["allianceneedsruneclothbandages"]={8522,60,40025,1537},["allianceneedssilkbandages"]={8520,60,40025,1537},["allianceneedssingedcorestones"]={8530,60,40025},
["allianceneedsspottedyellowtail"]={8528,60,40025,1537},["allianceneedsstranglekelp"]={8503,60,40025,490},["allianceneedsthickleather"]={8515,60,40025,1977},["allianceneedsthoriumbars"]={8499,60,40025,1537},["allianceneedsyourhelp"]={8797,60,40025,141},["alliancerelations"]={1436,33,1637,405},["alliancetrauma"]={6625,45,40022,1537},
["alliesagainstundeath"]={40934,44,0,5179},["allweneedisblood"]={40878,42,0,5179},["allyoftauren"]={7362,60,2597,2597},["almaudrak"]={40614,40,405,406},["alonehomecoming"]={80292,30,0,85},["alphaaggression"]={40121,22,331,331},["alphastrike"]={2863,43,357,357},
["altarofancientevil"]={41345,58,16,357},["altarofzul"]={2989,48,47,47},["alteracvalleygraveyards"]={7081,60,2597,267},["alteredbeings"]={880,16,17,17},["althersmill"]={2282,20,40011,44},["ambassadorofevil"]={762,44,3,3},["ambermillinvestigations"]={479,16,130,130},
["ammoforrumbleshot"]={5541,6,1,1},["amongstruins"]={6921,27,719,719},["amuletofbrotherhood"]={41595,60,41,3457},["amuletofguardian"]={41625,60,41,3457},["amuletofpestilence"]={41601,60,41,3457},["amuletofsecrets"]={722,40,1517,1337},["amuletoftalon"]={41583,60,41,3457},
["anachronos"]={8303,60,1377,1377},["analyzationchip"]={40044,50,16,16},["ancestralamulet"]={40020,36,45,45},["anchorsend"]={40672,17,14,17},["ancientacquisition"]={40128,18,17,17},["ancientegg"]={4787,50,47,45},["ancientequinespirit"]={7643,60,40009,1519},
["ancientleaf"]={7632,60,40016},["ancientsinewwrappedlamina"]={7634,60,40016,616},["ancientspirit"]={4261,56,361,361},["ancientstatuette"]={1007,20,331,331},["andbatchofooze"]={4294,56,1497,490},["andbugs"]={1258,40,15,8},["andjusticeforall"]={40565,43,15,15},
["andlosttostars"]={41355,62,618,616},["andrefirebeard"]={2875,45,440,5121},["andronspaymenttojediga"]={3564,52,16,16},["angorfortress"]={40229,39,3,3},["angryscytheclaws"]={905,17,17,17},["annalsofdarrowshire"]={5154,56,28,28},["anotherdayoflabor"]={40335,48,33,408},
["anothermessagetowildhammer"]={7842,48,47,47},["anothermysterytosolve"]={40556,35,15,15},["anotherpowersource"]={841,46,440,440},["ansiremskey"]={603,37,33,33},["answeredquestions"]={1044,30,331,1657},["anthionsoldfriend"]={8948,60,2557,5225},["anthionspartingwords"]={9030,60,2557,5225},
["anthionsstrangerequest"]={8947,60,139,12},["apebounty"]={40724,55,0,5121},["apesofungoro"]={4289,55,490,440},["apothecaryzamah"]={853,15,17,215},["appleday"]={80315,8,1519,1519},["applefalls"]={2241,10,40011,141},["appreciateintime"]={41535,58,17,5204},
["apprenticesduties"]={471,26,11,11},["apprenticesenchantment"]={695,39,45,45},["aquastone"]={40151,51,0,409},["aquaticform"]={5061,16,40018,215},["aquementas"]={4005,54,490,361},["arachnophobia"]={6284,21,406,406},["arajsscarab"]={5804,60,28,28},
["arathibasinmarkofhonor"]={8297,60,3358,45},["arathibasinresources"]={8297,60,3358},["arcanearms"]={80312,18,40010,718},["arcanefeedback"]={5678,20,40017,141},["arcanegolemcore"]={40467,55,1584,1584},["arcanegolemrevolt"]={41192,5,0,5225},["arcanerefreshment"]={7463,60,2557},
["arcanerunes"]={3449,52,1537,16},["arcanistschest"]={41478,60,25,25},["arcanistscookbook"]={7500,60,2557},["arcanistsfeet"]={41483,60,25,25},["arcanistshands"]={41480,60,25,25},["arcanistshead"]={41476,60,25,25},["arcanistslegs"]={41482,60,25,25},
["arcanistsshoulders"]={41477,60,25,25},["arcanistswaist"]={41481,60,25,25},["arcanistswrists"]={41479,60,25,25},["arcanite"]={7630,60,40004,46},["archbishopsmercy"]={7366,60,2597,2597},["archivist"]={5251,60,2017,2017},["arenamaster"]={7908,55,33,33},
["arewethereyeti"]={5163,58,618,618},["areyntallfamilyvalue"]={40072,37,8,8},["areyoutruetoyournature"]={80704,60,0,11},["argenthold"]={5265,60,139,4012},["arikara"]={5088,28,400,400},["aristanshunch"]={9024,60,40002,17},["aristoxenus"]={50331,60,1637,14},
["armedandready"]={325,29,10,1519},["armorkitsforfield"]={8787,60,1377,490},["armorscraps"]={7223,60,2597,2597},["armsforfield"]={8786,60,1377,1377},["armyofblackdragon"]={1168,43,15,15},["arnakgrimtotem"]={5147,29,400,17},["artificer"]={41290,44,3,3},
["artofarmorsmith"]={5301,40,40008,1537},["artofgoldsmithing"]={41292,44,405,405},["artofimbue"]={2763,45,40008,46},["arugalmustdie"]={1014,27,209,209},["arugalsfolly"]={60108,27,209,130},["ascension"]={6601,60,15,405},["ashcoveredletter"]={41203,2,40005,14},
["ashenpelts"]={41183,6,0,5536},["ashenvalecorruption"]={40193,20,331,1657},["ashenvalehunt"]={6382,20,17,215},["ashenvaleoutrunners"]={6503,24,331,331},["asleepundersnow"]={41356,62,618,618},["assassinationplot"]={4881,28,400,400},["assassinscontract"]={522,38,36,267},
["assaultingfreyshearkeep"]={40955,42,0,5179},["assaultinghateforge"]={40489,57,0,5103},["assaultonfenrisisle"]={442,24,130,130},["assaultonkolkar"]={1386,32,405,405},["assessingthreat"]={246,17,44,44},["assistingarchdruidrunetotem"]={3784,50,1497,1497},["assistingarchdruidstaghelm"]={3790,50,1537,141},
["assistinglordrogue"]={40023,40,45,45},["aswatercascades"]={4812,14,148,148},["atalaiexile"]={1429,44,8,8},["atieshbefouledgreatstaff"]={9251,60,40023,3428},["atieshgreatstaffofguardian"]={9271,60,40023,2017},["atlast"]={3201,48,1537,1537},["attackexclamation"]={434,31,1519,1519},
["attackfrominside"]={40099,17,85,85},["attackoncampnarache"]={781,4,220,215},["attackontower"]={696,39,45,45},["attunementtocore"]={7848,60,2717,2717},["atwarwithscarletcrusade"]={427,8,85,85},["audiencewithking"]={396,31,1519,1519},["audiencewithprince"]={41240,9,0},
["augustusreceiptbook"]={6164,55,139,139},["auntiemarlene"]={5152,56,139,28},["auntietillia"]={41352,60,2562,1519},["aurelgoldleaf"]={8331,60,1377,1377},["avastyeadmiral"]={4621,60,33,33},["avastyescallywag"]={1036,60,33,33},["avengemyvillage"]={6548,18,406,406},
["avengersbreastplate"]={8627,60,3428,5147},["avengerscrown"]={8628,60,3428,5147},["avengersgreaves"]={8655,60,3428,5147},["avengerslegguards"]={8629,60,3428,5147},["avengerspauldrons"]={8630,60,3428,5147},["avengingfallen"]={7830,48,47,47},["avoidingdetection"]={40079,37,8,8},
["awardenofalliance"]={171,60,40020,1519},["awardenofhorde"]={5502,60,40020,1637},["awfullookingletter"]={80119,1,40004,5536},["awokeatsunrise"]={41358,62,618,618},["azothagold"]={40764,57,0,5121},["azsharadampening"]={40122,52,16,16},["azsharanfront"]={40283,52,16,16},
["azsharite"]={3602,58,16,16},["azteq"]={50332,60,1519,1519},["azuregossmagicalledger"]={8575,60,16,440},["azurekey"]={8236,52,40011,1477},["azurescaleforgnomeregan"]={40062,55,16,16},["azurestone"]={40338,12,1537,1537},["azurestoneorder"]={40339,12,1537,1},
["azuretemplar"]={8737,60,1377,1377},["backontrack"]={40705,17,406,406},["backtobeginning"]={8998,60,1637,1637},["backtobilly"]={84,6,12,12},["backtobootybay"]={1118,43,400,400},["backtodarnassus"]={5931,10,40018,1657},["backtofalgran"]={40552,35,15,15},
["backtoladywindrunner"]={41238,9,0,5225},["backtoneldoriel"]={40517,10,1537,1537},["backtoravenshire"]={40951,42,0,5179},["backtoreality"]={40570,24,11,1519},["backtothalanaar"]={41046,45,357,357},["backtothunderbluff"]={5932,10,40018,493},["backtouldaman"]={2200,42,1517,1537},
["backupcapacitor"]={55006,34,0,14},["backupsealvalve"]={40726,55,0,5121},["backupsystemactivation"]={40856,33,133,721},["baddaytofish"]={40274,11,14,17},["badlandsreagentrun"]={2500,39,38,3},["badlandsreagentrunii"]={2501,44,38,3},["badmedicine"]={204,34,33,33},
["bailorsoreshipment"]={1655,22,40009,38},["baitforlarkorwi"]={4292,56,490,490},["bakingbread"]={40301,11,215,215},["balaisexperiment"]={40406,38,15,15},["balanceoflightandshadow"]={7622,60,40017,5225},["balanceofnature"]={457,3,188,141},["balanceofpower"]={40668,14,14,1637},
["balnirfarmstead"]={1882,10,40010,28},["bandagesforfield"]={8810,60,1377,3429},["banditlord"]={40138,19,85,85},["bandofunendinglife"]={8700,60,3428,3429},["bandofvaultedsecrets"]={8699,60,3428,3429},["bandofveiledshadows"]={8701,60,3428,3429},["baneofdeepmurk"]={41260,10,40005,5225},
["baneofscalebane"]={40656,44,3,3},["barbaricbattlements"]={2751,32,40008,17},["barbecuedbuzzardwings"]={703,40,3,405},["barkskinursa"]={40892,60,0,616},["barkskinvengeance"]={40893,60,0,616},["baronaquanis"]={6922,30,331,331},["baronlongshore"]={895,16,17,17},
["baronsdemise"]={523,40,36,36},["baronvardus"]={566,40,267,36},["barovfamilyfortune"]={5343,60,2057,2057},["barrensoases"]={886,10,17,17},["barrensport"]={1039,30,331,141},["barthogwicked"]={40703,42,15,15},["bartlebydrunk"]={1639,10,40005,1519},
["bartlebysmug"]={1665,10,40005,1519},["bartolosyetifurcloak"]={565,34,267,36},["bashalaran"]={957,13,148,148},["basilisksbite"]={2601,50,4,4},["bathranshair"]={1010,20,331,331},["batskinletter"]={40220,1,40016,85},["battlebeardlegacy"]={40692,20,406,331},
["battleboars"]={780,4,220,215},["battleforalterac"]={7142,60,2597,267},["battleforarathibasin"]={8171,25,3358,45},["battleofalterac"]={7141,60,2597,267},["battleofdarrowshire"]={5721,60,139,28},["battleofhillsbrad"]={550,32,267,267},["battleofwarsonggulch"]={8430,60,3277,1637},
["battleplans"]={2903,43,357,357},["battletroncalamity"]={41163,6,0,5536},["bayingofgnolls"]={124,20,44,44},["bazilthredd"]={389,22,1519,1519},["bbuzzboxeighttwoseven"]={983,10,148,148},["bbuzzboxfivetwofive"]={1003,16,148,148},["bbuzzboxfouroneone"]={1001,12,148,148},
["bbuzzboxthreetwothree"]={1002,14,148,148},["beachedseacreature"]={4733,19,148,148},["beachedseaturtle"]={4732,19,148,148},["bearerofbadnews"]={41169,5,0,14},["bearingcorruption"]={41071,52,361,361},["beatbartleby"]={1640,10,40005,1519},["beckonedbyhatefuldepths"]={40920,60,41,5103},
["becomingparent"]={4298,48,357,267},["beerbastedboarribs"]={384,7,40021,1},["befouledbysatyr"]={1434,33,1637,405},["befouledelement"]={1918,27,331,331},["beginnings"]={1599,4,40004,1},["behindhoofprints"]={40577,35,17,15},["behindwall"]={40841,41,0,5208},
["bellofdethmoora"]={7626,60,40004,46},["beltoffaith"]={9117,60,3456,3456},["bengalfangs"]={40160,52,0,409},["berensperil"]={516,21,130,130},["betinabigglezink"]={5531,60,2057,4012},["betrayalfromwithin"]={40560,35,15,15},["betrayed"]={3507,56,1637,16},
["betteringredient"]={9053,52,40018,1477},["betterlatethannever"]={5023,52,28,28},["betweenrockandthistlefur"]={216,24,331,331},["bewareofpterrordax"]={4501,55,490,490},["beyondwalls"]={55021,39,0,8},["bigenergyproject"]={55018,54,16,16},["biggamehunter"]={208,43,33,33},
["biggreenbully"]={40777,60,0,5130},["biggsreporttosorrowguard"]={40071,35,8,8},["bigman"]={41266,7,0,5536},["bijouforzanza"]={8240,60,19,33},["bijousbelongings"]={5001,59,1583,1583},["bijousreconnaissancereport"]={4983,59,1583,3},["binding"]={1795,30,40004,1519},
["bindingcontract"]={7604,60,1584,2717},["bindingdreadnaught"]={9131,60,139,1584},["bindingofxanthar"]={41015,60,41,28},["bindingsoffaith"]={9118,60,3456,3456},["binglesmissingsupplies"]={2038,15,38,38},["bitterrivals"]={310,6,1,1},["blackbox"]={708,40,3,1537},
["blackentheireyes"]={40636,24,406,406},["blackfathomvillainy"]={6561,27,719,719},["blackhandscommand"]={7761,60,1583,1583},["blackheartkiller"]={40981,45,0,5179},["blackhops"]={41560,46,17,51},["blackhornconflict"]={40688,42,15,15},["blackhornvillage"]={40690,41,15,15},
["blackletter"]={41206,2,40011,14},["blacklotuscollection"]={41069,60,0,618},["blackmooreslegacy"]={506,36,267,267},["blackrockandroll"]={40256,57,46,46},["blackrockbounty"]={128,25,44,44},["blackrockmenace"]={20,21,44,44},["blackrockpowder"]={41526,58,17,1584},
["blackrockslayers"]={40257,57,46,46},["blackshield"]={1323,37,15,15},["blackwaltz"]={40908,44,0,5179},["blackwoodcorrupted"]={4763,18,148,148},["blademastersrequest"]={40285,52,16,16},["bladeofeternaljustice"]={8711,60,3428,3429},["bladeofvaultedsecrets"]={8707,60,3428,3429},
["blastedland"]={40419,47,17,8},["blastedogres"]={40423,52,4,4},["blastingstonetalon"]={40638,23,406,14},["blaznotouch"]={40190,52,0,408},["blessedarcanitebarding"]={7644,60,40009,1519},["blessedarm"]={322,29,10,11},["blessedelegantletter"]={41228,1,0,5225},
["blightcallercometh"]={6186,60,1519,28},["blindcazul"]={1508,20,40004,1637},["blistersonland"]={275,26,11,11},["bloodandglory"]={40284,52,16,16},["bloodelfintrusion"]={40773,53,361,361},["bloodfeeders"]={6461,19,406,406},["bloodforblood"]={40882,46,0,5179},
["bloodfurybloodline"]={6283,26,406,406},["bloodofblackdragonchampion"]={6602,60,1583,1583},["bloodofinnocents"]={1066,23,1638,267},["bloodoflizards"]={40611,34,405,405},["bloodofmorphaz"]={8257,52,40017,1477},["bloodofvorgendor"]={41378,60,10,3457},["bloodpetalpoison"]={9052,52,40018,490},
["bloodsailbuccaneers"]={608,45,33,33},["bloodsailcompoundi"]={40330,40,33,33},["bloodsailcompoundii"]={40331,40,33,33},["bloodsailcompoundiii"]={40332,40,33,440},["bloodsailcompoundiv"]={40333,41,33,440},["bloodsailcompoundv"]={40334,41,33,33},["bloodscalpclanheads"]={584,41,33,33},
["bloodscalpears"]={189,35,33,33},["bloodshardsofagamaggan"]={5052,21,17,17},["bloodtingedskies"]={5543,56,139,139},["bloodybonenecklaces"]={596,37,33,33},["bloodygooddeed"]={80396,13,17,17},["bloodysolution"]={41033,42,0,47},["bloominghyjalroot"]={40870,60,0,616},
["blowmastersguestofhonor"]={41104,55,17,1637},["blueleaftubers"]={1221,26,1717,491},["boarhunter"]={183,3,132,1},["boarsvitality"]={2583,50,4,4},["boatwreckage"]={4127,44,357,357},["bodleysunfortunatefate"]={9032,60,25,25},["bodyandheart"]={6002,10,40018,215},
["bodyguardforhire"]={5821,35,405,405},["bolsteringourdefenses"]={9665,60,139,139},["bondthroughbattle"]={40536,7,215,215},["bonebladedweapons"]={4300,52,1637,490},["bonecollector"]={5501,39,405,405},["bonescythebracers"]={9084,60,3456,3456},["bonescythebreastplate"]={9077,60,3456,3456},
["bonescythedigs"]={9126,60,139,28},["bonescythegauntlets"]={9082,60,3456,3456},["bonescythehelmet"]={9079,60,3456,3456},["bonescythelegplates"]={9078,60,3456,3456},["bonescythepauldrons"]={9080,60,3456,3456},["bonescythering"]={41633,60,25,4012},["bonescythesabatons"]={9081,60,3456,3456},
["bonescythewaistguard"]={9083,60,3456,3456},["bookieherod"]={200,35,33,33},["bookofancients"]={6027,38,405,405},["bookofur"]={1013,26,209,209},["bootsforguard"]={8805,60,1377,1377},["bootsofbrotherhood"]={41594,60,41,3457},["bootsofguardian"]={41624,60,41,3457},
["bootsofmight"]={41449,60,25,2717},["bootsofpestilence"]={41600,60,41,3457},["bootsofprophecy"]={41466,60,25,2717},["bootsoftalon"]={41582,60,41,3457},["bootsoftenstorms"]={41508,60,25,25},["bootsoftranscendence"]={41458,60,25,25},["bootsofwrath"]={41441,60,25,25},
["bootybayorbust"]={2757,40,40008,1637},["boranfamily"]={40141,51,0,11},["bordercrossings"]={477,14,130,130},["borrower"]={2941,48,357,141},["borwildmane"]={8349,60,1377,1377},["borwishestospeak"]={8351,60,1377,1377},["boughofeternals"]={1479,60,40020},
["boulderfistoutpost"]={40453,34,45,45},["boulderslideravine"]={6421,18,406,406},["bountyofteldrassil"]={6341,10,148,141},["bountyongarrickpadfoot"]={6,5,9,12},["bountyonmurlocs"]={46,10,12,12},["bovarkez"]={41311,60,2562},["bowofoaks"]={41532,58,17,17},
["bracersofbinding"]={557,34,267,36},["bracinginevitable"]={50318,60,0,5130},["branchofcenarius"]={1031,32,331,331},["brannbronzebeardslostletter"]={8308,60,1377,3478},["brannolssewingkit"]={60143,10,141,141},["brassboltsbrothers"]={2769,46,400,721},["breakfeweggs"]={815,8,14,14},
["breakingcode"]={8310,60,1377,1377},["breakingcontracts"]={40223,30,33,45},["breakingkeystone"]={652,42,45,45},["breakingward"]={3508,58,16,16},["breaksharptusk"]={3376,5,220,215},["breastplateofbloodthirst"]={5068,60,618,2057},["breastplateofchromaticflight"]={5166,60,28},
["brideofembalmer"]={253,30,10,10},["brigadeiscominghome"]={40964,38,0,15},["brightwaterlogs"]={55043,32,14,33},["bringbackmug"]={3365,5,132,1},["bringdownpriestess"]={60074,50,0,47},["bringend"]={3341,42,722,722},["bringlight"]={3636,42,722,722},
["bristlebackaggression"]={60150,4,220,215},["brittlegnomemore"]={41309,42,40015,440},["brokenalliances"]={793,50,3,3},["brokencliffinspection"]={41209,23,406,406},["brokenoath"]={40036,54,16,16},["brokensigil"]={640,40,45,45},["brokentears"]={1369,33,405,405},
["brokeringofpeace"]={8485,60,1769,361},["brolokogrebounty"]={40852,44,0,5179},["bronzebetrayal"]={40342,60,2300,5204},["broodlingessence"]={4726,52,46,46},["broodlingimposters"]={40510,54,1537,46},["broodofonyxia"]={1172,45,15,15},["brotheranton"]={6141,39,405,1519},
["brothercarlin"]={5210,56,139,4012},["brotherhoodofthieves"]={18,4,9,12},["brotherhoodsend"]={395,31,1519,1519},["brotherlylove"]={7282,60,2597,2597},["brotherpaxton"]={344,24,1519,1519},["brothersworriedmind"]={70020,29,331,331},["brumeranofchillwind"]={5055,58,618,618},
["brutalarmor"]={1838,30,40005,406},["brutalpolitics"]={1385,35,405,405},["bubblingbaddies"]={41182,10,40010,5536},["bumpinroad"]={1175,33,400,400},["bundleofhides"]={6361,10,17,17},["bundleoftrouble"]={5545,9,12,12},["bungleinjungle"]={4496,53,440,490},
["burningblademedallion"]={794,5,363,14},["burningblood"]={1705,28,40005,10},["burningbridges"]={80320,12,14,14},["burningofspirits"]={1435,33,1637,405},["burningshadows"]={832,12,14,1637},["burntwheels"]={80206,4,1519,38},["byanymeansnecessaryi"]={40397,52,361,361},
["byanymeansnecessaryii"]={40398,53,361,616},["byanymeansnecessaryiii"]={40399,53,361,361},["byanymeansnecessaryiv"]={40400,53,361,1477},["byanymeansnecessaryv"]={40401,54,361,361},["cacheofmauari"]={975,60,1637,618},["cairneshoofprint"]={925,60,40020},["caliphscorpidsting"]={2781,46,440,440},
["callfromblowmaster"]={41102,45,17,1637},["callfromtorble"]={41103,45,17,1519},["callinginreserves"]={5881,28,406,406},["callofair"]={1532,30,40006,1637},["callofearth"]={1521,4,40006,14},["calloffire"]={2984,10,40006,17},["callofwater"]={2986,20,40006,130},
["calltoaid"]={40320,17,85,85},["calltoarms"]={679,40,45,45},["calltoarmsplaguelands"]={5095,50,28,14},["calltocommand"]={6144,60,139,139},["calmbeforestorm"]={4511,54,1637,440},["campmojache"]={7492,57,2557,1497},["cannibalisticcousins"]={7844,48,47,47},
["cannonsmisfortune"]={40174,48,35,33},["capeofeternaljustice"]={8695,60,3428,3429},["capofscarletsavant"]={5063,60,618,46},["captainbarlgruf"]={40228,40,3,3},["captaingraysonsrevenge"]={40396,22,1581,5138},["captainofbloodsailbuccaneers"]={40187,50,0,33},["captainsandershiddentreasure"]={140,16,40,40},
["captainschest"]={8551,47,33,33},["captainscutlass"]={8553,50,33,33},["captainvimes"]={1220,35,15,15},["capturemine"]={7124,60,2597,267},["caravanmeetscaravan"]={80730,60,44,1519},["caravanroad"]={1041,30,331,33},["carevinfamily"]={1042,30,331,10},
["carriongrubbage"]={5544,56,139,139},["carryyourweight"]={791,7,14,14},["cartelgolddonations"]={41115,60,33,33},["castpipestask"]={2931,28,133,406},["catalogueofwayward"]={5164,60,28,28},["catchofday"]={5386,37,405,405},["caughtexclamation"]={4449,45,51,33},
["causeofconcern"]={41314,50,16,16},["cavemushrooms"]={947,17,148,148},["celebratinggoodtimes"]={7496,60,1519,1519},["celebrationsofbountifulyear"]={39979,60,40002},["cenarionaid"]={8254,52,40017,16},["cenarionbattlegear"]={8800,60,1377,1377},["cenarionboots"]={41415,60,25,25},
["cenarionchest"]={41410,60,25,25},["cenarionhands"]={41412,60,25,25},["cenarionhead"]={41408,60,25,25},["cenarionlegs"]={41414,60,25,25},["cenarionshoulders"]={41409,60,25,2717},["cenarionwaist"]={41413,60,25,25},["cenarionwrists"]={41411,60,25,25},
["cenariuslegacy"]={1087,25,406,406},["centaurbounty"]={1387,31,405,405},["centaurbracers"]={855,14,17,17},["challengeoverlordmokmorokk"]={1173,45,15,15},["championofbansheequeen"]={5961,56,1497,130},["championofhorde"]={6567,60,1637,406},["championreturns"]={8741,60,493,1941},
["championsbattlegear"]={8573,60,1377,1377},["changeofheart"]={60142,6,1,1537},["chapteri"]={339,40,33,33},["chapterii"]={340,40,33,33},["chapteriii"]={341,40,33,33},["chapteriv"]={342,40,33,33},["chargeofkarazhan"]={41003,60,0,2017},
["charmingcharmer"]={40336,48,33,33},["charysresponse"]={40662,10,1519,1519},["chasingme"]={4245,53,490,51},["chasingsand"]={40589,45,40015,440},["chefsmajesty"]={41373,60,0,3457},["chemicalbetrayal"]={40865,14,1,1},["chemicalcleanup"]={40864,12,1,1},
["chensemptykeg"]={822,24,17,17},["chestofbrotherhood"]={41592,60,41,3457},["chestofmight"]={41444,60,25,25},["chestofprophecy"]={41461,60,25,25},["chestoftenstorms"]={41503,60,25,25},["chestoftranscendence"]={41453,60,25,25},["chestofwrath"]={41436,60,25,25},
["chickencluckingformint"]={8354,60,40002,1537},["chiefamongbrutes"]={40855,45,0,5179},["chiefengineerscooty"]={2842,35,133,1637},["childrensweek"]={1468,60,40020,1519},["chillofdeath"]={375,8,85,85},["chillwindarmor"]={40769,56,0,618},["chillwindhorns"]={4809,54,618,618},
["chillwindpoint"]={8415,52,40009,1519},["chimaerantask"]={41049,44,357,357},["chimaerichorn"]={1844,30,40005,406},["choksul"]={256,22,38,38},["chromaticmantleofdawn"]={5524,60,28,4012},["circletoffaith"]={9113,60,3456,3456},["claimingarathibasin"]={8396,60,3358,1537},
["claimrackmorestreasure"]={6161,36,405,405},["clambait"]={6142,35,405,405},["clamlettesurprise"]={6610,45,40021,4012},["clawoferennius"]={41038,60,0,616},["clawsforbloodfistpoint"]={40291,50,16,16},["clawsfromdeep"]={279,22,11,11},["cleaningfarm"]={40140,19,85,85},
["cleaningjob"]={39993,40,45,45},["cleansedwaterreturnstofelwood"]={5159,54,361,17},["cleansingeye"]={293,30,11,11},["cleansingfelwood"]={4102,55,361,361},["cleansingofinfected"]={2138,16,148,148},["cleansingoforboforahil"]={4961,40,40004,15},["cleansingroost"]={41050,44,357,357},
["clearingnuisances"]={41162,6,0,5536},["clearingoutvermin"]={80203,1,1519},["clearway"]={5092,52,28,28},["cliffspringriver"]={4762,15,148,148},["clippedwings"]={41147,44,47,267},["cloakofgatheringstorm"]={8690,60,3428,3429},["cloakofimmaculatequality"]={41576,60,2562,3457},
["cloakofunendinglife"]={8692,60,3428,3429},["cloakofunseenpath"]={8696,60,3428,3429},["cloakofveiledshadows"]={8693,60,3428,3429},["clothandleatherarmor"]={59,10,12,12},["cloverlinkbelt"]={41061,60,0,616},["cluck"]={3861,1,40020,40},["clutchofatherelex"]={40986,60,0,361},
["clutchofthanlar"]={41310,60,2562},["coastalmenace"]={104,20,40,40},["coastisntclear"]={152,19,40,40},["codexofdefense"]={7499,60,2557},["coldfeet"]={60107,10,85,85},["coldisnight"]={41353,62,618,618},["coldridgevalleymaildelivery"]={234,4,132,1},
["coldtoothsupplies"]={6982,55,2597,2597},["collapseofmaraudine"]={40630,38,405,405},["collectingfadingdreamfragments"]={41007,60,0,5097},["collectingkelp"]={112,7,12,12},["collectingmemories"]={168,18,1581,1581},["collectingmushrooms"]={40206,37,8,8},["collectingspecimens"]={40729,55,0,5121},
["collectionofcorruptwater"]={5157,52,361,361},["collectionofgoods"]={7642,60,40009,2597},["collectionofheads"]={8201,60,19,1977},["colonelkurzen"]={202,40,33,33},["colorofblood"]={388,26,717,717},["comicallylargecandle"]={41344,61,0,3457},["commandergorshak"]={3981,52,1584,3},
["companionlittlefawn"]={40872,60,0,616},["compendiumoffallen"]={1049,38,796,5135},["completedorbofdarorahil"]={4964,40,40004,17},["completedorbofnohorahil"]={4975,40,40004,17},["completedrobe"]={4786,38,40004,17},["componentsforenchantedgoldbloodrobe"]={4784,37,40004,405},["componentsofimportance"]={8965,60,25,1377},
["concertedefforts"]={8371,60,1537,1537},["conclusiveevidence"]={40720,35,17,15},["conflictingquestions"]={40698,20,406,331},["confrontyehkinya"]={8181,58,19,440},["conqueringarathibasin"]={8439,60,3358,1637},["conquerorsbreastplate"]={8562,60,3428,5147},["conquerorscrown"]={8561,60,3428,5147},
["conquerorsgreaves"]={8559,60,3428,5147},["conquerorslegguards"]={8560,60,3428,5147},["conquerorsspaulders"]={8544,60,3428,5147},["conscriptofhorde"]={840,12,14,14},["consecratedletter"]={3101,1,40009,12},["consecratedrune"]={3107,1,40009,1},["conservingstonetalonpeak"]={40227,24,406,406},
["consultingexpert"]={80724,60,1497,1497},["consultmastergadrin"]={2935,45,47,14},["consumedbyhatred"]={899,20,17,17},["contemptfornecromancy"]={40626,39,405,405},["continuedbarkskinvengeance"]={40894,60,0,616},["continuedthreat"]={1428,45,8,8},["continuetostormwind"]={6281,10,40,40},
["continuingceremonies"]={40447,12,215,215},["contributiontochurch"]={41078,60,41,3457},["controlfivebases"]={8115,60,3358,45},["controlfourbases"]={8114,60,3358,45},["controllingsailors"]={40660,14,1519,1519},["coolantheadsprevail"]={713,37,3,3},["corpulentone"]={6136,60,139,139},
["corrupteddreamshards"]={41018,60,0,616},["corruptedsabers"]={4506,54,361,148},["corruptedsand"]={40340,60,2300,5204},["corrupter"]={1488,40,405,405},["corruption"]={5307,60,40008,618},["corruptionabroad"]={3765,24,1519,1519},["corruptionofbarkskintribe"]={40891,60,0,616},
["corruptionofearthandseed"]={7065,51,2100,2100},["corruptionofjadefire"]={4421,54,361,361},["cortellosriddle"]={626,51,33,15},["costlyfavor"]={40731,55,0,440},["costlymenace"]={564,34,267,36},["counterattackexclamation"]={4021,20,17,17},["countingouttime"]={4973,56,28,28},
["courserantlers"]={8153,52,40016,16},["coverofdarkness"]={2743,60,4,8},["covertopsalpha"]={1079,22,406,406},["covertopsbeta"]={1080,22,406,406},["coyotethieves"]={1419,40,3,3},["crackednecroticcrystal"]={9292,60,40027,1519},["crackingmaurysfoot"]={613,44,33,33},
["crackingwitherbark"]={60071,42,47,47},["craftingdreamhide"]={40895,60,0,616},["craftingdreamthread"]={40900,60,0,616},["craftsmanswritbrightclothpants"]={9188,60,139,4012},["craftsmanswritdenseweightstone"]={9178,60,139,4012},["craftsmanswritflaskofpetrification"]={9203,60,139,4012},["craftsmanswritgnomishbattlechicken"]={9197,60,139,4012},
["craftsmanswritgoblinsappercharge"]={9195,60,139,4012},["craftsmanswritgreaterarcaneprotectionpotion"]={9201,60,139,4012},["craftsmanswrithugethoriumbattleaxe"]={9182,60,139,4012},["craftsmanswritimperialplatechest"]={9179,60,139,4012},["craftsmanswritlightningeel"]={9206,60,139,4012},["craftsmanswritmajorhealpotion"]={9202,60,139,2597},["craftsmanswritmajormanapotion"]={9200,60,139,2597},
["craftsmanswritplatedarmorfish"]={9205,60,139,4012},["craftsmanswritradiantcirclet"]={9183,60,139,4012},["craftsmanswritruggedarmorkit"]={9185,60,139,490},["craftsmanswritruneclothbag"]={9191,60,139,4012},["craftsmanswritruneclothboots"]={9190,60,139,4012},["craftsmanswritruneclothrobe"]={9194,60,139,4012},["craftsmanswritrunicleatherpants"]={9187,60,139,4012},
["craftsmanswritstonescaleeel"]={9204,60,139,33},["craftsmanswritthoriumgrenade"]={9196,60,139,4012},["craftsmanswritthoriumtube"]={9198,60,139,4012},["craftsmanswritvolcanichammer"]={9181,60,139,4012},["craftsmanswritwickedleatherbelt"]={9186,60,139,4012},["craftsmanswritwickedleatherheadband"]={9184,60,139,4012},["crashingwavesscreechingthunder"]={41650,51,618,16},
["crashingwickermanfestival"]={1658,60,40002,85},["crawlingformeat"]={80391,18,148,148},["creatureofvoid"]={1501,11,40004,14},["crescentgrove"]={40091,37,0,5077},["crewunderfire"]={3382,57,16,16},["crimeandpunishment"]={377,26,717,717},["crimsoncourier"]={6145,60,139,139},
["crimsonstakethroughtheirheart"]={41529,58,17,2017},["crimsontemplar"]={8537,60,1377,1377},["crocoliskhunting"]={385,15,38,11},["croneofkraul"]={1101,34,1717,491},["crossingline"]={41528,58,17,17},["crossroadsconscription"]={842,12,14,17},["crossroadsdeal"]={40954,42,0,5179},
["crownofearth"]={7383,11,141,141},["crownofflowers"]={41191,4,0,5225},["crownofwill"]={521,43,267,36},["crumblepointtower"]={40087,15,85,85},["crumblingallies"]={40176,52,0,408},["crumpledupnote"]={4264,58,1584,1584},["crushridgebounty"]={500,36,36,36},
["crushridgewarmongers"]={504,40,36,36},["cryofthunderhawk"]={913,20,17,17},["cryptstalkerarmordoesntmakeitself"]={9124,60,139,139},["cryptstalkerboots"]={9058,60,3456,3456},["cryptstalkergirdle"]={9060,60,3456,3456},["cryptstalkerhandguards"]={9059,60,3456,3456},["cryptstalkerheadpiece"]={9056,60,3456,3456},
["cryptstalkerlegguards"]={9055,60,3456,3456},["cryptstalkerspaulders"]={9057,60,3456,3456},["cryptstalkertunic"]={9054,60,3456,3456},["cryptstalkerwristguards"]={9061,60,3456,3456},["crystalinmountains"]={635,35,45,45},["crystalofzinmalor"]={5253,58,618,1657},["crystalsofpower"]={4284,53,490,490},
["crystalveindelivery"]={40971,42,0,5179},["crystalveinminecleanup"]={40970,42,33,33},["crystalveinore"]={40969,42,0,5179},["cthunslegacy"]={8801,60,3428,5147},["cuergosgold"]={2882,45,40015},["cullingriverpaw"]={60042,8,12,12},["cullingthreat"]={1054,25,331,331},
["cullingwildlife"]={41021,60,0,616},["curingsick"]={6129,14,40018,17},["curiosityleadsusforward"]={39001,11,1,1},["curiousleaf"]={40583,5,215,215},["curiousvisitor"]={392,29,1519,1519},["cursedbramblethornpass"]={40700,17,406,406},["cursedcrew"]={289,29,11,11},
["cursedsagepaw"]={40681,24,11,11},["curseoftides"]={611,40,33,33},["curseofzetharia"]={40714,37,3,3},["cursethesefatfingers"]={7723,49,51,51},["cutarathorsupplylines"]={8299,60,3358,45},["cuttingranks"]={40673,19,14,17},["cuttingteeth"]={788,2,363,14},
["cycleofrebirth"]={6301,23,406,406},["cyclonian"]={1712,40,40005,33},["dabblingindarkness"]={41201,10,40004,5536},["daelinsbrigade"]={40687,42,15,15},["daelinsmen"]={1285,38,15,15},["daggerofveiledshadows"]={8709,60,3428,3429},["dailydelivery"]={469,21,11,11},
["dalaranpatrols"]={545,35,267,36},["dalaransintentions"]={482,14,130,130},["dalarsanalysis"]={481,14,130,130},["damned"]={376,2,154,85},["dampeningmustend"]={40127,52,16,16},["dampeningmystery"]={40123,52,16,16},["dancenightaway"]={41571,1,17,17},
["dancingformarzipan"]={8360,60,40002,215},["dangerousexclamation"]={567,28,267,5179},["dangerouslove"]={8904,60,40002,1519},["dangersofwindfury"]={743,8,215,215},["danonzostelabimdelight"]={40753,58,0,618},["danonzostelabimmedley"]={40754,58,0,16},["danonzostelabimsurprise"]={40752,58,0,490},
["darkceremony"]={2979,46,357,357},["darkcouncil"]={537,40,36,36},["darkheart"]={3062,50,357,357},["darkirondesecrator"]={40762,60,0,2717},["darkirondwarves"]={4081,52,1584,1584},["darkironlegacy"]={3802,52,1584,1584},["darkironscrapping"]={80207,4,1519,38},
["darkirontechnology"]={40866,10,1,1},["darkironwar"]={303,30,11,11},["darkmoonbeastdeck"]={7907,55,40024,12},["darkmoonelementalsdeck"]={7929,55,40024,12},["darkmoonfaire"]={7926,60,1637,12},["darkmoonportalsdeck"]={7927,55,40024,12},["darkmoonwarlordsdeck"]={7928,55,40024,12},
["darkrangersmastery"]={40260,5,85,85},["darkreavermenace"]={8258,60,40006,2057},["darkruneanvil"]={40259,58,139,2017},["darkstonetablet"]={4768,60,1583,1583},["darkstorms"]={806,12,14,14},["darktemperfordarklady"]={80727,60,1497,130},["darkthreatlooms"]={283,20,38,38},
["darkvessels"]={7850,50,47,47},["darkwhisperculling"]={41094,60,0,618},["darlthosheritage"]={40278,19,85,85},["darlthoslegacy"]={40282,25,85,85},["datarescue"]={2930,30,133,721},["daughterslove"]={231,35,10,10},["daughterwholived"]={229,35,10,10},
["daunforgivinglands"]={40520,45,40015,440},["davoodoo"]={8413,52,40006,1477},["dawnsgambit"]={4771,60,2057,2057},["dawnstonecoupler"]={40860,43,0,5179},["dayafter"]={2927,27,133,721},["daydreamingatnight"]={40568,22,11,11},["deadfields"]={437,14,130,130},
["deadlydesertvenom"]={8277,55,1377,1377},["deadmansplea"]={8945,60,2017,5225},["deadmire"]={1205,45,15,15},["deadtoothjack"]={1667,10,40005,12},["deaduntildark"]={40877,42,0,5179},["deadwoodofnorth"]={8461,55,1769,361},["deadwoodritualtotem"]={8470,55,361,361},
["dearestcolara"]={8899,60,40002,141},["dearestelenia"]={8902,60,40002,1497},["dearestgallitrea"]={41295,44,3,405},["dearestnatalia"]={8304,60,1377,1377},["deathclaspterrorofsands"]={8283,59,1377,1377},["deathdealersboots"]={8637,60,3428,5147},["deathdealershelm"]={8639,60,3428,5147},
["deathdealersleggings"]={8640,60,3428,5147},["deathdealersspaulders"]={8641,60,3428,5147},["deathdealersvest"]={8638,60,3428,5147},["deathfrombelow"]={667,44,45,45},["deathinonestrike"]={41351,60,2562,3456},["deathlyfetters"]={41036,44,0,5179},["deathsinthefamily"]={354,11,85,85},
["deathstalkers"]={1978,13,40011,1497},["deathstalkersinshadowfang"]={1098,25,209,130},["deathstalkersreport"]={449,11,130,130},["decimatetheirranks"]={60073,50,0,47},["decisiveblow"]={60111,10,141,141},["decisivestriker"]={2585,50,4,4},["decoyexclamation"]={8606,60,440,618},
["decrepitferry"]={438,16,130,130},["deedsofsirdanuvis"]={40789,15,17,1519},["deedtoravenshire"]={40966,45,0,5208},["deepbluesea"]={60131,13,14,14},["deepcover"]={2458,20,40011,1637},["deepmossspidereggs"]={1069,20,17,406},["deepmurkdarkness"]={41254,8,0,5225},
["deepmurkshipment"]={41255,8,0,5225},["deepoceanvastsea"]={982,17,148,148},["deeprunratroundup"]={6661,12,2257,5144},["deepseasalvage"]={662,40,45,45},["deeptidesanctum"]={40275,53,0,408},["deepwoodpipe"]={41057,60,0,616},["defeatnekrosh"]={474,32,11,11},
["defendersofdarrowshire"]={5211,55,139,139},["defenseofgromgol"]={569,37,33,33},["defiasbrotherhood"]={166,22,1581,40},["defiasofduskwood"]={70055,27,10,10},["defunctmainframes"]={41150,2,0,5536},["defusingthreat"]={7368,60,2597,2597},["delayedshipments"]={41157,3,0,14},
["delayinginvasion"]={41097,60,0,616},["deliciouspumpkinpie"]={60040,8,12,12},["delivergems"]={2340,44,1517,1637},["deliveriestosven"]={164,23,10,10},["deliveringdaffodils"]={131,15,44,44},["deliveringrelic"]={2871,45,357,357},["delivershipment"]={1425,42,8,8},
["deliverthomasreport"]={39,10,12,12},["deliverthread"]={157,24,10,10},["delivertomackinley"]={2874,45,440,440},["deliveryforbromley"]={40042,50,16,16},["deliveryfordrazzit"]={80404,35,15,15},["deliveryformarin"]={2661,49,440,440},["deliveryforoilfuse"]={40224,30,33,33},
["deliveryofswords"]={40074,37,8,8},["deliveryoverdue"]={40412,35,15,15},["deliverytoalahthalas"]={41197,5,0,2040},["deliverytoandrongant"]={3542,52,16,16},["deliverytoarchmagexylem"]={3561,52,16,16},["deliverytocross"]={40416,37,15,1519},["deliverytognomes"]={1114,36,400,400},
["deliverytojesrimon"]={3541,52,16,16},["deliverytomagatha"]={3518,52,16,16},["deliverytoridgewell"]={4765,60,1583,46},["deliverytosilverpineforest"]={445,10,85,85},["deliverytowallace"]={40417,37,15,1519},["demondogs"]={5542,56,139,139},["demonfallcanyon"]={70028,28,331,331},
["demonforge"]={5127,60,1583,1583},["demonhunter"]={2744,60,4,8},["demonicmissive"]={41090,60,0,616},["demonscarredcloak"]={770,12,215,215},["demonseed"]={924,14,14,17},["demonstration"]={41280,42,3,1337},["demonstrationofskill"]={40263,10,40016,85},
["denalansearth"]={997,5,141,141},["depthsofkarazhani"]={40304,60,8,4},["depthsofkarazhanii"]={40305,60,8,41},["depthsofkarazhaniii"]={40306,60,8,8},["depthsofkarazhaniv"]={40307,60,8,8},["depthsofkarazhanv"]={40308,60,8,4},["depthsofkarazhanvi"]={40309,60,8,8},
["depthsofkarazhanvii"]={40310,60,8,8},["derelictsupplies"]={40727,55,0,5121},["deserter"]={8285,59,1377,1377},["deserters"]={1287,38,15,15},["desertrecipe"]={8307,57,40021,1377},["desertsurvivalkits"]={8856,0,1377,357},["desertvoodoo"]={40521,47,40015,440},
["desperateprayer"]={5640,10,40017,1},["destinycalls"]={2242,10,40011,141},["destroyalltraces"]={40507,56,46,25},["destroyingdeeptide"]={40276,55,0,408},["destroyingventurecoleadership"]={41173,9,0,5536},["destroymorphaz"]={8253,52,40010,1477},["deviateeradication"]={1487,21,718,718},
["deviatehides"]={1486,17,718,718},["devilsinwestfall"]={1076,21,406,40},["devourerofsouls"]={1716,20,40004,1637},["devouringplague"]={5646,20,40017,1637},["didyoulosethis"]={3321,50,40008,440},["differentshadeofred"]={80729,60,1497,85},["differenttypeoflock"]={40279,19,85,85},
["diggingdeeper"]={41212,20,406,406},["digginglittledeeper"]={40653,41,3,1337},["diggingthroughooze"]={470,24,11,11},["digratstew"]={862,23,40021,17},["digsitedeterioration"]={40604,42,3,3},["dimlightindarkness"]={40952,42,0,5179},["diplomacysend"]={41262,10,40011,5225},
["dirgeskickinchimaerokchops"]={8586,60,440,3},["dirtydeedsdrowneddeepbelow"]={41159,4,0,5536},["discoveringgolemsecrets"]={40465,55,46,46},["discoveringsource"]={40126,52,16,16},["discoverrolfsfate"]={45,10,12,12},["disgracedone"]={2621,50,4,8},["disharmonyoffire"]={3907,56,1584,1584},
["disharmonyofflame"]={3906,52,25,51},["dispellingevil"]={8414,52,40009,28},["disruptattacks"]={871,12,17,17},["disruptionatblackashmine"]={41264,8,0,5536},["disruptionatrustgatelumberyard"]={41265,7,0,5536},["disruptionends"]={872,15,17,17},["disturbanceinair"]={40292,50,16,16},
["disturbingsilence"]={40112,60,1638,8},["divination"]={2992,47,47,4},["divinationscryer"]={7646,60,40009,46},["divineretribution"]={3441,48,51,51},["divinomaticrod"]={2768,47,978,1176},["dndflagdreadcitadelnaxxramas"]={9378,60,139},["doctortheolenkrastinovbutcher"]={5382,60,2057,28},
["documentfromfront"]={9304,60,40027,4012},["dogranscaptivity"]={1515,20,40004,17},["dolanaardelivery"]={2159,5,141,141},["dolingjustice"]={2972,47,357,357},["dominanceofskies"]={40445,10,215,215},["donationofmageweaverevantusktribe"]={80377,60,1537,33},["donationofmageweavesilvermoonremnants"]={80372,60,0,33},
["donationofrunecloth"]={7836,60,1637},["donationofruneclothrevantusktribe"]={80378,60,1537,2597},["donationofruneclothsilvermoonremnants"]={80373,60,0,2597},["donationofsilkrevantusktribe"]={80376,60,1537,33},["donationofsilksilvermoonremnants"]={80371,60,0,33},["donationofwoolrevantusktribe"]={80375,60,1637,331},["donationofwoolsilvermoonremnants"]={80370,60,0,331},
["donationstovizlow"]={41123,60,0,33},["donningredflag"]={80709,60,139,4012},["dontlosepartofyourhead"]={60140,6,85,85},["doomcallerscirclet"]={8662,60,3428,5147},["doomcallersfootwraps"]={8660,60,3428,5147},["doomcallersmantle"]={8664,60,3428,5147},["doomcallersrobes"]={8661,60,3428,5147},
["doomcallerstrousers"]={8663,60,3428,5147},["doomedfleet"]={270,29,10,1519},["doomriggersclasp"]={4764,60,1583,1583},["doomsdaycandle"]={7628,60,40004,46},["doomweed"]={5482,6,85,85},["doormanofkarazhan"]={41002,60,0,3457},["doraswindridermaster"]={6385,10,17,1637},
["dousingflamesofprotection"]={5165,55,361,361},["downatdocks"]={910,60,40020},["downcoast"]={536,30,267,267},["downinridge"]={60145,5,9,12},["downscarletpath"]={1052,40,405,405},["downwithsickness"]={60133,14,17,17},["draconicfordummies"]={8597,60,440,440},
["draconicpresence"]={40942,43,0,15},["draenethystcrystals"]={1389,35,8,8},["draeniccommunication"]={40032,39,8,8},["draggingitbacktobrackenwall"]={40578,35,15,15},["dragonkinannoyance"]={40683,25,11,11},["dragonkinmenace"]={4182,54,46,46},["dragonmawconflict"]={40793,28,17,11},
["dragonmawshinbones"]={1846,30,40005,11},["dragonscaleleatherworking"]={5145,55,40013,47},["dragonseye"]={6501,60,1519,1519},["dragonsofazshara"]={40294,50,16,16},["drainingsoulflayer"]={70003,0,40004,1977},["drakefireamulet"]={6502,60,1583,1583},["drapeofnordrassil"]={41056,60,0,616},
["drapeofunyieldingstrength"]={8557,60,3428,3429},["drapeofvaultedsecrets"]={8691,60,3428,3429},["dreadcitadelnaxxramas"]={9123,60,139,46},["dreadfulsummon"]={80720,60,1497,1497},["dreadmaulrock"]={3821,52,3,3},["dreadmaulskullbounty"]={40430,54,4,4},["dreadnaughtbracers"]={9042,60,3456,3456},
["dreadnaughtbreastplate"]={9034,60,3456,3456},["dreadnaughtgauntlets"]={9040,60,3456,3456},["dreadnaughthelmet"]={9037,60,3456,3456},["dreadnaughtlegplates"]={9036,60,3456,3456},["dreadnaughtpauldrons"]={9038,60,3456,3456},["dreadnaughtsabatons"]={9039,60,3456,3456},["dreadnaughtwaistguard"]={9041,60,3456,3456},
["dreadsteedofxoroth"]={7631,60,40004,46},["dreambreezecowl"]={41060,60,0,616},["dreamdustinswamp"]={1116,36,400,8},["dreamhidebelt"]={40899,60,0,616},["dreamhidebracers"]={40897,60,0,616},["dreamhideleggings"]={40898,60,0,616},["dreamscalecollection"]={41055,60,0,5097},
["dreamsteelboots"]={40890,60,0,616},["dreamsteelbracers"]={40889,60,0,616},["dreamsteelleggings"]={40888,60,0,616},["dreamthreadbracers"]={40903,60,0,616},["dreamthreadgloves"]={40904,60,0,616},["dreamthreadkilt"]={40902,60,0,616},["dreamtonic"]={40885,60,0,616},
["dreamwalkerboots"]={9090,60,3456,3456},["dreamwalkergirdle"]={9092,60,3456,3456},["dreamwalkerhandguards"]={9091,60,3456,3456},["dreamwalkerheadpiece"]={9088,60,3456,3456},["dreamwalkerlegguards"]={9087,60,3456,3456},["dreamwalkerspaulders"]={9089,60,3456,3456},["dreamwalkertunic"]={9086,60,3456,3456},
["dreamwalkerwristguards"]={9093,60,3456,3456},["drenchedindraconicblood"]={40921,60,41,1583},["driftingacrosssand"]={40519,46,978,1176},["driftwood"]={1398,42,8,8},["drinktosleep"]={41084,60,0,3457},["dronesinwestfall"]={41390,20,40,1519},["drownedlove"]={40676,35,405,405},
["drownedsorrows"]={664,40,45,45},["drowningdeeptide"]={40150,53,0,408},["druidofclaw"]={2561,10,141,141},["dryadinmulgore"]={40584,5,215,215},["dryadsgratitude"]={40587,8,215,215},["dryasdesert"]={41165,8,0,5536},["dryhiding"]={55025,35,35,17},
["drytimes"]={116,15,44,5179},["dukenicholaszverenhoff"]={6030,52,618,618},["dukesofcouncil"]={8332,60,1377,1377},["dunemaulcompound"]={5863,49,440,440},["dungarlongdrink"]={6261,10,40,1519},["durotarlaborbeginnings"]={41210,20,406,406},["duskwingohhowihatethee"]={6135,60,139,139},
["duskycrabcakes"]={93,20,10,267},["dutytolight"]={60141,9,12,12},["dvfivehundred"]={41152,5,0,5536},["dwarfandhistools"]={719,35,3,3},["dwarvendigging"]={746,8,215,215},["dwarvenjustice"]={3371,55,1537,1537},["dwarvenoutfitters"]={179,1,132,12},
["dwarvesexclamation"]={7401,60,2597,2597},["dwarvesofbaelhardul"]={41127,19,406,331},["dwindlingsupplies"]={40136,16,85,38},["dyingrasfrostwhisper"]={5462,60,28,4012},["eaganpeltskinner"]={5261,2,9,12},["eagerlittleone"]={40537,8,215,215},["earlwakenomore"]={41348,60,2562,1519},
["earlytesting"]={40730,55,0,440},["earnestoffering"]={40366,11,215,215},["earnestproposition"]={8920,60,1637,1377},["earningrespect"]={40612,35,405,405},["earthenarise"]={6481,20,406,406},["earthentemplar"]={8536,60,1377,1377},["earthfuryboots"]={41516,60,25,25},
["earthfurychest"]={41511,60,25,25},["earthfuryhands"]={41513,60,25,25},["earthfuryhead"]={41509,60,25,25},["earthfurylegs"]={41515,60,25,25},["earthfuryshoulder"]={41510,60,25,2717},["earthfurywaist"]={41514,60,25,25},["earthfurywrists"]={41512,60,25,25},
["earthrumble"]={40637,23,406,406},["earthshatterboots"]={9072,60,3456,3456},["earthshattergirdle"]={9074,60,3456,3456},["earthshatterhandguards"]={9073,60,3456,3456},["earthshatterheadpiece"]={9070,60,3456,3456},["earthshatterlegguards"]={9069,60,3456,3456},["earthshatterspaulders"]={9071,60,3456,3456},
["earthshattertunic"]={9068,60,3456,3456},["earthshatterwristguards"]={9075,60,3456,3456},["easternkingdoms"]={4002,54,1584,1637},["easternplagues"]={6185,60,139,139},["easternpylon"]={4287,53,490,490},["easypickup"]={3450,52,1537,1537},["easystriderliving"]={2178,12,40021,17},
["ebonmereaffairs"]={40979,45,0,5208},["ebonmerebatinfestation"]={40977,40,0,5179},["ebonmereworgeninfestation"]={40978,40,0,5179},["echeyakee"]={881,16,17,17},["echoesofwar"]={9033,60,3456,3456},["echofrombeyond"]={41325,56,16,4},["ectoplasmicdistiller"]={8921,60,440,46},
["eggcollection"]={4735,60,1583,46},["eggfreezing"]={4734,60,1583,46},["egghunt"]={868,22,17,17},["eighteenthpilot"]={1186,37,400,400},["eightleggedmenaces"]={245,21,10,10},["eitriggswisdom"]={4941,60,1637,3},["elaborategoldenbracelets"]={41293,44,3,405},
["elanaria"]={1684,10,40005,141},["eldarathharmonizationgem"]={40245,53,16,16},["eldarathproject"]={55015,49,16,16},["eldercrone"]={1063,18,406,406},["electropellers"]={1580,12,40007,148},["elegantletter"]={41227,1,0,5225},["elementalbracers"]={1016,24,331,331},
["elementalequation"]={9128,60,139,1377},["elementalleatherworking"]={5146,55,40013,2717},["elementalmastery"]={8410,52,40006,2717},["elementalwar"]={6393,25,406,406},["elfinjungle"]={40356,48,33,33},["elixirofagony"]={524,30,267,267},["elixirofpain"]={502,24,267,267},
["elixirofsuffering"]={499,22,267,267},["elixirsforbladeleafs"]={1581,8,40012,141},["elmorestask"]={1097,15,1519,1519},["elunesblessing"]={8868,60,40002,493},["elunesgrace"]={5675,20,40017,141},["elunestear"]={1033,22,331,331},["elusivesi"]={80701,60,1519,1519},
["elusivezafan"]={41092,60,0,616},["elvenlegends"]={7482,60,2557,357},["embassyblues"]={40663,10,1519,17},["emberstrife"]={6570,60,15,28},["embracedbymoon"]={41354,62,618,618},["embraceofgoodtaste"]={41575,60,2562,3457},["emeralddream"]={7506,60,2557},
["emeralddreamcatcher"]={2438,6,141,141},["emphasisonsacrifice"]={7637,60,40009,1519},["employedhelp"]={55027,37,0,33},["employingcabal"]={55011,13,14,14},["emptyhanded"]={55009,47,16,16},["emptystables"]={7027,60,2597,2597},["enayesteewhy"]={4862,59,1583,1583},
["enchantbootsgreaterspirit"]={40883,60,0,616},["enchantbracergreaterdeflection"]={40884,60,0,616},["enchantedazsharitefelweaponry"]={3625,58,33,33},["enchantedglade"]={937,11,141,141},["enchantedleathercollection"]={40814,60,0,12},["enchantedthoriumcollection"]={40815,60,0,616},["enchantedthoriumplatemailvolumei"]={7649,60,40008},
["enchantedthoriumplatemailvolumeii"]={7650,60,40008},["enchantedthoriumplatemailvolumeiii"]={7651,60,40008},["encodedfragments"]={8235,52,40011,16},["encroachinggnolls"]={244,16,44,44},["encroachingwildlife"]={1396,37,8,8},["encroachment"]={837,10,14,14},["encrustedtailfins"]={1107,35,400,33},
["encryptedletter"]={3102,1,40011,267},["encryptedmemorandum"]={3113,1,40011,1},["encryptedparchment"]={3088,1,40011,14},["encryptedrune"]={3109,1,40011,1},["encryptedscroll"]={3096,1,40011,85},["encryptedsigil"]={3118,1,40011,141},["encryptedtablet"]={3083,1,40011,14},
["endingarctiras"]={41139,63,0,5087},["endingblacksand"]={40707,30,406,406},["endukorzsandscalp"]={40527,48,978,1176},["enemybooty"]={7224,60,2597,2597},["enemylays"]={41357,62,0,618},["engravedring"]={440,16,130,130},["enigmaboots"]={8634,60,3428,5147},
["enigmacirclet"]={8632,60,3428,5147},["enigmaleggings"]={8631,60,3428,5147},["enigmarobes"]={8633,60,3428,5147},["enigmashoulderpads"]={8625,60,3428,5147},["enragedspirits"]={1083,26,406,406},["enragedthunderlizards"]={907,18,17,17},["enragedwildkin"]={6604,59,618,618},
["ensorcelledparchment"]={551,40,36,267},["entervillage"]={40633,35,405,405},["envelopefromfront"]={9301,60,40027,4012},["envoyofdraenor"]={41298,52,4,4},["eperiusneedsgrains"]={40512,35,45,45},["epicarmamentsofbattleexaltedamongstdawn"]={9228,60,139,4012},["epicarmamentsofbattlefriendofdawn"]={9222,60,139,4012},
["epicarmamentsofbattlehonoredamongstdawn"]={9224,60,139,4012},["epicarmamentsofbattlereveredamongstdawn"]={9225,60,139,4012},["eranikustyrantofdream"]={8733,60,1417,141},["erionsbehest"]={2260,16,40011,141},["erionshadewhisper"]={2259,16,40011,141},["errandforapothecaryzinge"]={238,45,1497,1497},["errandforqueldanil"]={80393,41,47,47},
["escape"]={863,18,17,12},["escapethroughforce"]={994,22,148,148},["escapethroughstealth"]={995,20,148,148},["escapinghive"]={4265,46,357},["escortingerland"]={435,11,130,130},["essenceofakumai"]={6563,22,719,331},["essenceoferanikus"]={3374,55,8,8},
["essenceofzalmos"]={41048,47,357,47},["essentialartificials"]={2924,30,133,721},["establishingnewoutposts"]={9664,60,139,139},["etchednote"]={3092,1,40016,215},["etchedparchment"]={3087,1,40016,14},["etchedrune"]={80350,1,40016,1},["etchedsigil"]={3117,1,40016,141},
["etchedtablet"]={3082,1,40016,14},["eternalmortality"]={40922,60,41,41},["eternalsleeper"]={41397,60,493,493},["etherealproject"]={55014,49,16,16},["everlookbroadcasthijacking"]={41649,50,618,618},["everlookreport"]={6029,52,618,85},["evershine"]={318,7,1,1},
["everstillbridge"]={89,20,44,44},["everystepofway"]={41146,44,47,47},["everythingcountsinlargeamounts"]={3501,55,4,4},["evildeeptide"]={40162,52,0,408},["evilmademedoit"]={40881,46,0,5208},["evilwintergrell"]={40746,10,0,5130},["examinevessel"]={7785,60,40023,357},
["excavationprogressreport"]={298,15,38,38},["excelsior"]={628,38,33,33},["excessiveregulations"]={39989,30,1519,1519},["exchangingforeignfood"]={40743,15,0,357},["exorcisingterrordale"]={7640,60,40009,1519},["theexorcism"]={1955,40,40010,15},["expeditionsalvation"]={3881,53,490,490},
["expeditionsupplies"]={40666,12,14,17},["expertblacksmith"]={2765,45,40008,33},["exploringinpeace"]={40702,20,406,406},["exquisitegoblinengineering"]={40719,42,17,15},["exterminaterat"]={40179,48,35,33},["extinguishfiregut"]={3823,52,46,46},["extinguishingidol"]={3525,37,722,722},
["extraordinarymaterials"]={8809,60,1377,215},["extravagantbook"]={40153,52,0,408},["eyeforeye"]={40917,60,41,1583},["eyeofemberseer"]={6821,60,16,1583},["eyeofpaleth"]={292,30,11,11},["eyesonprize"]={40652,37,3,3},["facingnegolash"]={8554,50,33,33},
["faelonsfolly"]={40152,51,0,408},["faeriedragonmuisek"]={3125,45,357,357},["faintnecroticcrystal"]={9310,60,40027,1497},["fairtradeisnotlegallydefinedinazeroth"]={41272,35,0},["fallandriseofgreymane"]={40956,46,0,5208},["fallenadventurers"]={60112,4,154,85},["fallenancient"]={41044,45,357,357},
["fallenskylake"]={1035,30,331,331},["fallenskylords"]={7302,60,2597,2597},["fallfromgrace"]={2784,50,4,8},["fallindemoncanyon"]={40843,31,331,331},["fallingtocorruption"]={5084,56,618,618},["fallofametharan"]={953,12,148,148},["fallofdunmodr"]={472,25,11,11},
["fallofkelthuzad"]={9120,60,3456,4012},["fallofossirian"]={8791,60,3429,1377},["fallofusurper"]={40277,20,85,85},["falrinsvendetta"]={8949,60,2557,357},["familyaboveall"]={40541,45,47,47},["familytree"]={5361,35,400,405},["fancyletter"]={80118,1,40010,5536},
["fangofloresh"]={41028,60,493,490},["fareoflarkorwi"]={4290,53,490,490},["fargodeepmine"]={62,7,12,12},["farrensproof"]={561,32,267,267},["farseergrimeye"]={70027,28,331,331},["farwellcommission"]={40455,34,45,47},["fashiondemandssacrifices"]={60035,60,40002,17},
["fateofharborage"]={41326,60,8,8},["fateofkingdom"]={4362,59,1584,1537},["fateoframaladni"]={9229,60,3456,3456},["fateofyenniku"]={588,45,33,33},["favoramongstbrotherhooddarkironbar"]={41126,60,2717,1584},["favoramongstdarkspear"]={7361,60,2597,2597},["favorasked"]={41328,60,8,3457},
["favoredofelune"]={3661,47,702,47},["favorforevershine"]={319,8,1,1},["favorforfarsan"]={40237,58,139,2057},["favorforgelwig"]={40591,48,40015,440},["favorforkrazek"]={627,37,33,45},["favorformally"]={40669,14,14,17},["favouringdrunk"]={40645,20,406,14},
["fearincarnate"]={40615,41,405,405},["feastforpoor"]={41220,8,0,5225},["feastofwinterveil"]={7063,60,1537,1637},["featheredletter"]={41231,1,0,5225},["feathermoonstronghold"]={7494,57,2557,357},["feedingtherebellion"]={40965,42,0,5179},["feedingyounglings"]={41051,44,357,357},
["felboundancients"]={4441,54,361,361},["felenergyirregularitiesi"]={40438,54,4,4},["felenergyirregularitiesii"]={40439,54,4,4},["felenergyirregularitiesiii"]={40440,54,4,4},["felenergyirregularitiesiv"]={40441,54,4,4},["felenergyirregularitiesv"]={40442,60,4,4},["felenergyirregularitiesvi"]={40443,60,4,4},
["felenergyirregularitiesvii"]={40444,60,4,4},["felheartbelt"]={41430,60,25,25},["felheartboots"]={41432,60,25,2717},["felheartchest"]={41427,60,25,25},["felhearthands"]={41429,60,25,2717},["felhearthead"]={41425,60,25,25},["felheartlegs"]={41431,60,25,25},
["felheartshoulders"]={41426,60,25,25},["felheartwrists"]={41428,60,25,25},["felnoksteelspring"]={4808,54,46,46},["felstriderretreat"]={41237,9,0,5225},["felwoodconspiracy"]={41075,54,361,361},["fendosspanner"]={40067,54,16,16},["fenstadshunch"]={8979,60,40002,17},
["fenwickthatros"]={1998,16,40011,130},["feralashistory"]={2940,47,357,141},["feralkinofferalas"]={41047,45,357,357},["feransreport"]={40146,37,331,331},["ferocitasdreameater"]={2459,8,141,141},["festivaloffire"]={9368,60,40028,1519},["fieldduty"]={8731,60,1377,1377},
["fieldsofgrief"]={407,7,85,85},["fieryblazeenchantments"]={706,45,3,3},["fierymenace"]={7724,49,51,51},["fieryplategauntlets"]={5124,60,618,2717},["fiftyyep"]={4283,56,46,46},["fightforwarsonggulch"]={8403,60,3277,1537},["fightingpack"]={40610,32,405,405},
["fillingbackorders"]={55037,32,267,36},["filthypaws"]={307,15,38,38},["finalblow"]={5242,58,361,361},["finalcrack"]={40509,59,1583,1583},["finalcut"]={41282,48,3,1337},["finalflightofvenomflayer"]={40767,58,0,5121},["finalmessagetowildhammer"]={7843,50,47,47},
["finalpassage"]={1394,36,400,1497},["finalpiece"]={5123,59,618,618},["finalpreparations"]={8994,60,25,1583},["finalstrike"]={40809,31,331,331},["finaltablets"]={4788,58,1583,1583},["finaltest"]={40737,58,0,440},["findagmond"]={738,38,3,3},
["findbingles"]={2039,15,1537,38},["findgems"]={2201,43,1517,1337},["findgemsandpowersource"]={2339,44,1517,1337},["findingakhzador"]={40033,52,8,8},["findingantidote"]={813,9,14,14},["findingbixxle"]={40765,56,0,440},["findingdemonhunter"]={41091,60,0,616},
["findingembergut"]={40217,53,0,408},["findingprivateholson"]={40436,54,4,4},["findingprivateholsonii"]={40437,54,4,4},["findingshadowyfigure"]={453,25,10,10},["findingsource"]={974,55,490,490},["findlostguards"]={37,10,12,12},["findmelanastrasza"]={41106,60,0,618},
["findmyranda"]={5861,60,28,28},["findooxfe"]={2766,45,357,357},["findooxhl"]={485,48,47,47},["findooxtn"]={351,48,440,440},["findranshalla"]={979,57,702,141},["findshatteredhand"]={2378,16,40011,28},["finemess"]={2904,30,133,721},
["fingerbreaker"]={41541,58,17,5103},["finkleeinhornatyourservice"]={5047,60,1583,618},["fioralongears"]={1132,20,11,11},["fireguttask"]={40494,53,46,46},["firehardenedmail"]={1701,28,40005,11},["fireplumeforged"]={5802,57,440,85},["firetaboo"]={277,23,11,11},
["firstandlast"]={6182,60,1519,1519},["firstmatemcgillicuddy"]={40183,52,0,33},["firstopeningofdarkportal"]={80605,60,2300,5204},["firstsettlement"]={80289,30,0,85},["fishyperil"]={40,10,12,12},["fishypractices"]={41308,42,40015,440},["fistsagainstworld"]={41546,58,17,17},
["fixedsputtervalveconductor"]={40696,18,406,17},["flamescasing"]={3452,50,51,51},["flawlessfelessence"]={7602,55,40004,16},["flawlessflame"]={3442,48,51,51},["flaxwhiskerfront"]={40040,50,16,16},["flaxwhiskerloyalty"]={40041,50,16,16},["fleshdoesnotlie"]={5212,60,2017,2017},
["flexingfornougat"]={8359,60,40002,1519},["flickeringflame"]={40699,24,406,406},["flickeringflamesineasternkingdoms"]={9389,25,40028,130},["flickeringflamesinkalimdor"]={9388,25,40028,148},["flightlogbook"]={40046,50,16,16},["flighttoauberdine"]={6342,10,148,141},["flintshadowmore"]={6184,60,28,1519},
["fluteofxavaric"]={939,54,361,361},["flyhighlittledulin"]={41149,44,47,267},["flyingmachineairport"]={1086,23,1638,405},["focusofancients"]={40919,60,41,41},["fontofarcana"]={40940,40,0,3},["foodforbaby"]={4297,47,357,47},["foodforbloodfistpoint"]={40290,50,16,16},
["foodforsailingthoughts"]={40395,20,40,40},["foodimprovision"]={40076,38,8,8},["foolsstout"]={1127,44,33,33},["footwrapsoforacle"]={8596,60,3428,5147},["foralltosee"]={7491,60,1637,14},["forbiddenarts"]={40613,39,405,405},["forbiddenknowledge"]={737,40,3,3},
["forcesofjaedenar"]={5155,51,361,361},["forcollection"]={40991,40,0,5179},["forebodingplans"]={510,34,36,267},["forefathershonor"]={41654,1,0,14},["foreignknowledge"]={41289,44,3,5208},["foreignthreats"]={40388,10,14,14},["foremanpipelatch"]={41153,3,0,5536},
["foremansblues"]={41156,2,0,14},["foresttrollscum"]={40495,60,1583,1583},["forgedsteel"]={1503,10,40005,17},["forgingmightstone"]={8418,52,40009,1477},["forgingofquelserrar"]={7509,60,2159},["forgingshaft"]={3443,48,51,51},["forgottenheirloom"]={64,12,40,40},
["forgottenpools"]={870,13,17,17},["forgottentome"]={40231,38,8,8},["forgreathonor"]={8367,60,1637,1637},["forher"]={41148,44,47,267},["forhorde"]={4974,60,1583,1583},["forloveeternal"]={963,16,148,148},["formationoffelbane"]={3621,58,16,16},
["formulaenchantglovesmajorstrength"]={80739,60,0,33},["fororscompendium"]={7507,60,2557},["forsakenaid"]={1064,18,1638,405},["forsakenatchurch"]={40851,41,0,5179},["forsakendiseases"]={1011,29,331,331},["forsakenduties"]={359,9,85,85},["fouleffigy"]={40797,28,331,331},
["foulhidemongrels"]={40992,43,0,5179},["foulhidepests"]={40928,44,0,5179},["foulmagics"]={673,40,45,45},["fourdukes"]={8538,60,1377,1377},["fragmentedmagic"]={9364,60,40010,16},["fragmentsoforboforahil"]={1799,40,40004,405},["fragmentsofpast"]={5247,57,139,16},
["fragmentswithin"]={4813,14,148,148},["frameofatiesh"]={9250,60,40023,440},["freeatlast"]={4904,29,400,17},["freedfromhive"]={4265,46,357,357},["freedomforallcreatures"]={2969,47,357,357},["freedomtoruul"]={6482,24,331,331},["freefromhold"]={898,20,17,17},
["freelunch"]={129,15,44,44},["freshclothesforwinterveil"]={41273,35,0,5130},["freshmeat"]={1430,44,8,8},["friendinglenshire"]={40086,15,85,1497},["friendinneed"]={3519,4,188,141},["friendoffriend"]={41304,38,0,17},["friendoftribe"]={40625,35,405,405},
["frixsfolly"]={55008,47,16,16},["fromstomachtoheart"]={40535,7,215,215},["fromwreckage"]={825,8,14,14},["frostfirebelt"]={9101,60,3456,3456},["frostfirebindings"]={9102,60,3456,3456},["frostfirecirclet"]={9097,60,3456,3456},["frostfiregloves"]={9100,60,3456,3456},
["frostfireleggings"]={9096,60,3456,3456},["frostfirering"]={41467,60,0,4012},["frostfirerobe"]={9095,60,3456,3456},["frostfiresandals"]={9099,60,3456,3456},["frostfireshoulderpads"]={9098,60,3456,3456},["frostmanehold"]={287,9,1,1},["frostmaw"]={1136,37,1638,267},
["frostsaberprovisions"]={4970,60,618,618},["frostshockandyou"]={7505,60,2557},["fruitofsea"]={1138,17,148,148},["fuelforzapping"]={7721,48,357,357},["fuelingbloodfury"]={40493,54,46,46},["fungalspores"]={848,15,17,17},["furlbrowsdeed"]={184,9,40,40},
["furtherconcerns"]={35,10,12,12},["furthercorruption"]={4906,54,361,361},["furtherinquiriesaboutlegend"]={40781,60,0,5130},["furtherinstructions"]={1095,27,406,406},["furthermysteries"]={525,34,36,1537},["furtherstudies"]={40369,10,1657,148},["furyrundeep"]={378,27,717,717},
["futurelooksgrim"]={80728,60,1497,4012},["futuretask"]={2968,50,1638,1537},["gadgetzantimesbreakingnews"]={50315,60,0,1519},["gadgetzantimesreadallaboutit"]={40457,6,1637,1519},["gadgetzanwatersurvey"]={992,46,440,440},["gafferjacks"]={1579,12,40007,148},["gahzridian"]={3161,48,440,440},
["gahzrilla"]={2770,50,978,1176},["gainingorvakstrust"]={40459,54,46,46},["gakinssummon"]={1717,20,40004,1537},["galakmessenger"]={41053,28,400,400},["galensescape"]={1393,38,8,8},["galgarscactusapplesurprise"]={4402,3,363,14},["galvansfinestpupil"]={2764,45,40008,440},
["gamemastersboons"]={41743,60,2562},["gamemasterstreasures"]={41744,60,2562},["gammeritamon"]={7816,48,47,47},["gannsreclamation"]={843,23,17,17},["ganrulssummon"]={1506,10,40004,14},["garbageman"]={80120,1,0,5536},["gargantuaninformation"]={40733,55,0,440},
["gargantuanstudies"]={40736,58,0,5121},["garmentsofdarkness"]={5650,4,40017,85},["garmentsoflight"]={5625,4,40017,1},["garmentsofmoon"]={5621,4,40017,141},["garmentsofspirituality"]={5648,4,40017,14},["garonastudyonstealthandtreachery"]={7498,60,2557},["garrisonarmorydisaster"]={40428,48,4,8},
["gatekeeper"]={40107,60,40015,490},["gatesofuldum"]={40106,60,1537,490},["gatewaytofrontier"]={911,60,40020},["gatheringcure"]={6128,14,40018,490},["gatheringidols"]={297,18,38,38},["gatheringleather"]={768,8,1638,1638},["gatheringmaterials"]={1961,15,40010,17},
["gatherrotblossoms"]={156,24,10,10},["gathilzogg"]={169,26,44,44},["gavelofinfinitewisdom"]={8705,60,3428,3429},["gearingredridge"]={1618,16,40008,1537},["gelkisalliance"]={1368,33,405,405},["generaldrakkisathscommand"]={5089,60,1583,46},["generaldrakkisathsdemise"]={5102,60,1583,1583},
["genesisboots"]={8665,60,3428,5147},["genesishelm"]={8667,60,3428,5147},["genesisshoulderpads"]={8669,60,3428,5147},["genesistrousers"]={8668,60,3428,5147},["genesisvest"]={8666,60,3428,5147},["geneticalterationanomaly"]={40435,53,4,4},["genngreymanemustdie"]={40849,49,0,5208},
["gerenzosorders"]={1092,22,406,406},["gerenzowrenchwhistle"]={1096,27,406,406},["getgnomesdrunk"]={1120,44,400,400},["getgoblinsdrunk"]={1121,44,400,400},["getmeoutofhere"]={6132,39,405,405},["getscoop"]={1950,30,40010,400},["ghosthairthread"]={149,24,10,10},
["ghostlycharm"]={40191,53,0,408},["ghostoplasmroundup"]={6134,39,405,405},["ghoulisheffigy"]={133,27,10,10},["giantguardian"]={2844,49,357,357},["giftofdarkbishop"]={40997,47,0,5179},["giftofferocity"]={41031,60,493,616},["giftstowrap"]={40744,10,0,14},
["gilneanpricolich"]={41385,60,10,5208},["gilneaslighthouse"]={40929,42,0,5179},["gilneaslighthouseii"]={40930,42,0,15},["gilneaslighthouseiii"]={40931,42,0,15},["githyissvile"]={60110,5,188,141},["gizeltoncaravan"]={5943,38,405,405},["gizmoday"]={80386,60,0,14},
["gizmoforwarug"]={1371,35,405,405},["glacialcloak"]={9237,60,3456,1377},["glacialgloves"]={9239,60,3456,1377},["glacialvest"]={9240,60,3456,1377},["glacialwrists"]={9238,60,3456,1377},["glasseye"]={40218,52,0,408},["gleamingblood"]={41361,50,0,1584},
["glitteringlikegold"]={40654,41,3,1537},["glitteringopportunity"]={80395,13,17,17},["glovesoffaith"]={9116,60,3456,3456},["glowingfruit"]={930,10,141,141},["glowingshard"]={6981,26,718,17},["gluttonshonesty"]={40576,35,17,15},["glyphchasing"]={8309,60,1377,3478},
["glyphcoveredletter"]={41204,2,40010,14},["glyphedoakenbranch"]={4987,56,28,141},["glyphicletter"]={3104,1,40010,12},["glyphicmemorandum"]={3114,1,40010,1},["glyphicrune"]={3111,1,40010,1},["glyphicscroll"]={3098,1,40010,85},["glyphictablet"]={3086,1,40010,14},
["glyphofdreampanther"]={41009,60,0,3457},["glyphofemeraldbear"]={41010,60,0,3457},["gnarlpinecorruption"]={476,6,141,141},["gnogaine"]={2926,27,133,1},["gnomeengineering"]={3637,47,40014,721},["gnomeimprovement"]={2948,35,1537,331},["gnomereganbounty"]={7364,60,2597,2597},
["gnomergooooone"]={2843,35,133,33},["gnomesaregenuineinventors"]={50312,60,0,400},["gnomesassistance"]={3941,52,490,490},["gnomesrespite"]={1071,21,406,406},["gnomestew"]={40005,60,2597,2597},["gnomeswerealwaysleper"]={40635,28,406,406},["gobcrankflazwanger"]={40177,52,0,408},
["goblinbrainwashingdevice"]={39000,60,0,33},["goblinengineering"]={4181,47,40014,1497},["goblinengineeringatitsfinest"]={50310,60,0,400},["goblininvaders"]={1062,19,406,406},["goblinlinguist"]={40550,35,15,15},["goblinsponsorship"]={1183,37,400,33},["godhakkar"]={3528,53,1417,440},
["goinggoingguano"]={1109,33,1717,491},["golddustexchange"]={47,7,12,12},["goldenelvesofferalas"]={40358,48,33,357},["goldenglasshidescales"]={40590,46,40015,440},["goldir"]={503,36,267,36},["goldisgoblinsheart"]={41305,40,796,5163},["goldleafsdiscovery"]={8343,60,1377,1377},
["goldthorngrog"]={41566,36,17,490},["goldtooth"]={87,8,12,12},["goodfriend"]={4495,4,188,141},["goodheadonyourshoulders"]={2771,45,40008,440},["goodluckcharm"]={5050,52,28,28},["goodmojo"]={70032,29,331,406},["goodnaturedemma"]={5048,52,1519,1519},
["goodnewsandbadnews"]={8728,60,440,46},["goodsnuff"]={40411,38,15,440},["goodstuff"]={4286,56,1584,1584},["gordokogresuit"]={5518,60,2557,45},["gordoshogres"]={40155,51,0,409},["gordostask"]={5481,5,85,85},["gordunnicobalt"]={2987,43,357,357},
["gordunniorb"]={3002,47,357,357},["gordunniscroll"]={2978,43,357,357},["goretuskliverpie"]={22,12,40,40},["gorrasthorncrusher"]={40701,20,406,406},["gorteshbrutelord"]={3824,53,46,46},["gortogsbeads"]={40016,34,45,45},["grabbinggear"]={55010,47,16,16},
["grabbmudhide"]={41186,8,0,5536},["grandbetrayal"]={2929,35,133,721},["grandherbaltheft"]={40002,10,14,14},["grandtheftshredder"]={40641,23,406,406},["grapemanifest"]={3905,4,9,12},["grapesinhills"]={41218,7,0,5225},["grarklorkrub"]={4122,58,1584,3},
["gratitudeofkumisha"]={41299,52,4,8},["graveinjustice"]={70054,25,10,10},["graverobbers"]={358,8,85,85},["gravesituation"]={3913,52,490,440},["graveyardsofalterac"]={7082,60,2597,2597},["greasestainedletter"]={80115,1,40005,5536},["greatbearspirit"]={5930,10,40018,493},
["greatestraceofhunters"]={7503,60,2557},["greatfatherwinterishere"]={7024,60,40002,1497},["greatfrassiabi"]={5214,60,2017,4012},["greatgoldenhops"]={41568,52,17,17},["greatmasquerade"]={6403,60,1519,1519},["greatsilverdeceiver"]={2762,45,40008,33},["greatspiritofwisdom"]={41653,40,0,17},
["greendrake"]={8232,52,40016,1477},["greengoesred"]={80110,6,14,14},["greenhillsofstranglethorn"]={338,40,33,33},["greenversusgreen"]={80102,3,0},["greenwarden"]={463,21,11,11},["greymanehatred"]={40980,45,0,5179},["greymanestone"]={40996,47,0,5208},
["grimandelmore"]={1700,28,40005,1519},["grimandsfinestwork"]={7648,60,40009,1519},["grimdiscovery"]={2976,45,357,357},["grimeencrustedring"]={2945,34,133,721},["grimmessage"]={2932,42,47,47},["grimnews"]={80721,60,1497,130},["grimtask"]={304,34,11,11},
["grimtotemplot"]={41041,42,357,357},["grimtotemspying"]={5064,28,400,400},["grindingstonesforguard"]={8806,60,1377,1377},["grizlikswish"]={55050,5,1638,1638},["grizzledden"]={313,7,1,1},["grizzlorewantsthunder"]={50326,60,0,8},["groveofancients"]={952,11,1657,141},
["grumblinggrove"]={80106,6,0},["gryphonmastertalonaxe"]={1450,43,47,267},["gryththurden"]={6388,10,38,1537},["guardianofgate"]={40115,60,40015,490},["guardiansofaltar"]={4901,59,618,141},["guardingsecrets"]={4883,59,618,215},["guidanceofmadman"]={70002,0,40004,1497},
["guileofraptor"]={847,37,45,45},["gunsofgilneas"]={41122,42,0,5179},["gunsofnorthwatch"]={891,20,17,17},["gustingvortex"]={40592,45,40015,440},["gyrodrillmaticexcavationators"]={2928,30,133,721},["gyromastsretrieval"]={2098,20,148,148},["gyromastsrevenge"]={2078,20,148,148},
["gyronauticalcompass"]={40064,53,16,14},["gyrowhat"]={714,37,3,1},["halgarssummon"]={1478,10,40004,85},["hallowedletter"]={3103,1,40017,12},["hallowedrune"]={3110,1,40017,1},["hallowedscroll"]={3097,1,40017,85},["hallowedsigil"]={3119,1,40017,141},
["hallowedtablet"]={3085,1,40017,14},["hallowsendtreatsforjesper"]={8311,60,40002,1519},["hallowsendtreatsforspoops"]={8312,60,40002,1637},["haltingbristlebackexpansion"]={40446,12,215,215},["hameyasplea"]={6024,60,139,139},["hammerfall"]={41540,58,17,17},["hammermayfall"]={676,32,267,45},
["hammerofgatheringstorm"]={8706,60,3428,3429},["hamuulrunetotem"]={1489,16,718,17},["handlewithcare"]={3022,47,440,141},["handofiruxos"]={5381,38,405,405},["handofrastakhan"]={8182,58,440,440},["handofrighteous"]={8302,60,1377,1377},["handsofenemy"]={6824,60,16,2717},
["handsofmight"]={41446,60,25,2717},["handsofprophecy"]={41463,60,25,25},["handsoftenstorms"]={41505,60,25,25},["handsoftranscendence"]={41455,60,25,25},["handsofwrath"]={41438,60,25,25},["hardenedshells"]={1105,30,400,400},["harlanneedsresupply"]={333,2,1519,1519},
["harnessingshadows"]={7502,60,2557},["harnessofchimaeran"]={41052,48,2100,2100},["harpiesthreaten"]={6282,26,406,406},["harpylieutenants"]={875,16,17,17},["harpyraiders"]={867,15,17,17},["harvester"]={897,24,17,17},["harvestgolemmystery"]={40485,25,40,40},
["hateforgereport"]={40487,52,46,46},["hatforoccasion"]={41572,60,2562,3457},["hauntedisle"]={616,37,33,33},["hauntedmills"]={362,10,85,85},["hauntingofaliattananderson"]={40907,44,0,5179},["havoconbattlefield"]={40808,29,331,331},["hawksbeak"]={70034,27,331,331},
["hawksvigil"]={55225,24,0,11},["haywirehavoc"]={41151,2,0,5536},["hazeofevil"]={4143,52,490,1477},["hazuleaf"]={40161,52,0,409},["hazzuridarkvessels"]={40157,54,0,409},["headhunting"]={582,37,33,33},["headofbeast"]={394,31,1519,1519},
["headofhunters"]={40658,44,3,1537},["headofmight"]={41442,60,25,25},["headofpack"]={40088,16,85,85},["headofprophecy"]={41459,60,25,25},["headofsolnius"]={40963,60,0,616},["headoftenstorms"]={41501,60,25,25},["headoftranscendence"]={41451,60,25,25},
["headofwrath"]={41434,60,25,25},["healthandsafetymon"]={40678,34,405,405},["healthydragonscale"]={5582,58,2057,4012},["hearingorvaksstory"]={40460,54,46,46},["heartofhakkar"]={8183,60,19,33},["heartofmountain"]={4123,55,1584,1584},["heartofstone"]={40651,39,3,3},
["heartsofpure"]={1476,20,40004,45},["heartsofzeal"]={1113,33,796,85},["heartswood"]={1738,20,40004,331},["heavyearthencores"]={40788,57,618,5121},["heedingcall"]={5928,10,40018,1519},["heistindryrockmine"]={40845,45,0,5179},["helcularsrevenge"]={553,33,267,36},
["helmofbrotherhood"]={41590,60,41,3457},["helmofguardian"]={41620,60,41,3457},["helmofpestilence"]={41596,60,41,3457},["helmoftalon"]={41578,60,41,3457},["helpgnomeout"]={60010,50,40015,490},["helpleague"]={55101,27,11,45},["hemetnesingwary"]={5762,31,400,400},
["hermit"]={40210,51,0,10},["hermitswrath"]={40213,55,0,409},["heroesofdarrowshire"]={5168,56,139,28},["heroesofold"]={2702,57,4,8},["heroofday"]={8799,60,40002,3},["herooffrostwolf"]={8272,60,2597,2597},["heroofstormpike"]={8271,60,2597,2597},
["herosreward"]={40675,20,14,16},["heroswelcome"]={4266,46,357,357},["hexofweakness"]={5657,10,40017,1637},["hezrulbloodmark"]={852,19,17,17},["hiddenbutnotgone"]={40796,28,331,331},["hiddenchamber"]={2240,40,1517,1337},["hiddencompartment"]={41395,58,16},
["hiddencrew"]={55028,37,0},["hiddenenemies"]={5730,16,1637,14},["hiddenhiddenreward"]={55035,24,11,11},["hiddenkey"]={328,37,33,33},["hiddenniche"]={461,18,130,130},["hiddensecrets"]={1949,38,40010,15},["hiddentreasures"]={5942,60,139,139},
["highborneamonghighelves"]={41244,7,0,5225},["highchiefwinterfall"]={5121,59,618,618},["highenergyregulator"]={40861,33,133,721},["higherstakes"]={50305,10,14,11},["highlandmenace"]={41216,6,0,5225},["highlyunexpectedevent"]={40360,48,33,357},["highperchvenom"]={1135,30,15,400},
["highrankingdarkironofficials"]={4082,54,1584,1584},["highsorcererandromath"]={1939,26,40010,1537},["highvalerise"]={40728,58,0,5121},["highwilderness"]={2982,44,357,357},["hilarysnecklace"]={3741,15,44,44},["hillsbradhops"]={41563,26,17,267},["hinottsassistance"]={2480,20,40011,1637},
["hintsofnewplague"]={661,37,267,45},["hippogryphmuisek"]={3124,47,357,357},["historianfindsyou"]={40362,48,33},["hiveashiscoutreport"]={8739,60,1377,1377},["hiveintower"]={1126,57,1377,1377},["hiveregalscoutreport"]={8738,60,1377,1377},["hivezorascoutreport"]={8534,60,1377,1377},
["hoarytemplar"]={8535,60,1377,1377},["hogger"]={176,11,12},["holeescapee"]={55048,14,14,14},["hollowwebsilk"]={40925,44,0,5179},["holybolognawhatlightwonttellyou"]={7504,60,2557},["holyduty"]={41263,5,40017,5225},["homewardbound"]={4770,29,400,400},
["honorarygelkis"]={40629,41,405,405},["honordead"]={6183,60,1519,1519},["honorinbloodring"]={41109,60,0,1637},["honoringdeparted"]={40368,22,11,11},["honoringhero"]={8150,60,40002,14},["honoringtreaties"]={40723,42,17,15},["honoringwarrior"]={41544,58,17,331},
["honorstudents"]={6387,10,38,38},["hookahforyourtroubles"]={40003,10,215,215},["hordedefendersaxe"]={39999,18,17,17},["hordeneedsbakedsalmon"]={8615,60,40025,1637},["hordeneedscopperbars"]={8532,60,40025,1637},["hordeneedsfirebloom"]={8580,60,40025,490},["hordeneedsheavyleather"]={8588,60,40025,12},
["hordeneedsleanwolfsteaks"]={8611,60,40025,1637},["hordeneedsmageweavebandages"]={8607,60,40025,1637},["hordeneedsmithrilbars"]={8545,60,40025,1637},["hordeneedspeacebloom"]={8549,60,40025,490},["hordeneedspurplelotus"]={8582,60,40025,490},["hordeneedsruggedleather"]={8600,60,40025,12},["hordeneedsruneclothbandages"]={8609,60,40025,1637},
["hordeneedssingedcorestones"]={8617,60,40025},["hordeneedsspottedyellowtail"]={8613,60,40025,1637},["hordeneedsthickleather"]={8590,60,40025,1977},["hordeneedstinbars"]={8542,60,40025,1637},["hordeneedswoolbandages"]={8604,60,40025,1637},["hordeneedsyourhelp"]={8794,60,40025,1637},["hordepresence"]={3514,29,17,406},
["hordetrauma"]={6623,45,40022,45},["hornofbeast"]={3181,48,51,38},["hornofbinding"]={40876,60,0,616},["hornofgareksa"]={40028,36,8,8},["hornsoffrenzy"]={2754,36,40008,1637},["hostileenvoys"]={40909,60,0,616},["hostiletakeover"]={213,36,33,33},
["hostofevil"]={6626,35,722,17},["hotanditchy"]={8420,52,40004,361},["hotfierydeath"]={5103,60,40008,618},["hottesthot"]={41556,36,17,2717},["houndandhunter"]={41035,43,0,5179},["houseoftheron"]={41247,8,0,5225},["housesofholy"]={5243,60,2017,2017},
["howbigthreat"]={985,14,148,148},["howlinginhills"]={126,25,44,44},["howlingvale"]={1022,30,331,331},["humananatomy"]={50002,6,40011,130},["humancondition"]={7363,60,2597,2597},["humanrasfrostwhisper"]={5461,60,28,45},["humbertssword"]={547,30,267,267},
["humblebeginnings"]={399,15,1519,40},["humbleoffering"]={9248,60,1377,1377},["humbletask"]={753,3,220,215},["hungryexclamation"]={1177,36,15,15},["huntbegins"]={747,2,220,215},["huntcontinues"]={750,3,220,215},["huntersboast"]={257,16,38,38},
["hunterschallenge"]={258,17,38,38},["hunterscharm"]={8151,52,40016,16},["hunterspath"]={80366,10,40016,1537},["huntersway"]={861,10,215,215},["huntertestquest"]={7682,10,0},["huntforheketh"]={40015,39,45,45},["huntforhonor"]={40391,10,14,14},
["huntforsorrowclaw"]={40209,41,8,8},["huntforyenniku"]={581,34,33,33},["huntingdragonmaw"]={55206,28,11,11},["huntingengineerfiggles"]={40539,55,0,5103},["huntingforectoplasm"]={8924,60,440,139},["huntinghunters"]={40029,36,8,8},["huntinginstranglethorn"]={5763,31,405,405},
["huntsavages"]={7829,48,47,47},["hurleyblackbreath"]={4126,55,1584,1},["husbandslastbattle"]={6162,51,361,361},["husbandsrevenge"]={530,20,130,130},["hydrocondensormodulator"]={40859,10,1,1},["hypercapacitorgizmo"]={5151,30,400,17},["iamnorat"]={41343,61,0,3457},
["icebanebracers"]={9235,60,3456,3456},["icebanebreastplate"]={9236,60,3456,3456},["icebanegauntlets"]={9234,60,3456,3456},["iceguard"]={9211,60,139,4012},["icepointwhiteclaws"]={40325,45,0,5024},["ichorofundeath"]={8256,52,40017,28},["icymenace"]={50321,60,0,5130},
["icyscalebracers"]={9244,60,3456,3456},["icyscalebreastplate"]={9246,60,3456,3456},["icyscalegauntlets"]={9245,60,3456,3456},["identifyingbrood"]={1169,43,15,15},["ignition"]={858,18,17,17},["igotnothinleft"]={6609,45,40007,1537},["iknowguy"]={6612,45,40021,1537},
["illuminatemoonlitnight"]={80745,60,0,1519},["illusiongreendragonkin"]={41006,60,0,616},["illusory"]={50323,60,1637,14},["imbuedstone"]={40987,60,0,5121},["impdelivery"]={7629,60,40004,46},["imperialplategauntlets"]={55300,60,40008,440},["imperialqirajiarmaments"]={8789,60,3428,2677},
["imperialqirajiregalia"]={8790,60,3428,2677},["improvedquality"]={7734,48,357,357},["impsrequest"]={8419,52,40004,361},["incendius"]={4263,56,1584,1584},["incendosaurswhateverosaurismorelikeit"]={7727,49,51,51},["incominggumdrop"]={8358,60,40002,14},["incommunewithwind"]={40631,35,405,1377},
["indark"]={40097,16,85,85},["indefenseoffrostwolf"]={7241,60,2597,1637},["indefenseofkingslands"]={263,15,38,38},["indreams"]={5944,60,28,28},["indurium"]={1108,39,400,1337},["ineptitudechemicalsfun"]={1074,21,406,17},["ineranikusownwords"]={3512,55,8,8},
["inertscourgestones"]={8416,52,40009,28},["infalliblemind"]={2602,50,4,4},["infavorofdarkness"]={5651,4,40017,85},["infavorofelune"]={5622,4,40017,141},["infavoroflight"]={5626,4,40017,12},["infavorofspirituality"]={5649,4,40017,14},["infernalorb"]={1954,40,40010,405},
["infiltratingcastle"]={2745,31,1519,1519},["infiltration"]={533,34,267,36},["infinitehunt"]={80411,60,47,28},["inforeignhearts"]={40786,54,361,5121},["informationforthrall"]={40670,14,14,17},["informreds"]={41096,60,0,618},["ingoodtaste"]={2606,49,440,440},
["ingunthersfavor"]={80725,60,1497,130},["inksupplies"]={345,24,1519,12},["inmemoryoffranklin"]={40982,45,0,5179},["innameoflight"]={1053,40,796,5163},["inneedofinformation"]={55029,36,0,33},["inneedofolbiggins"]={50005,42,40010,267},["inneedofolbigginsagain"]={50006,54,40010,267},
["inneedofsprugbolts"]={40063,53,16,5121},["innerbindingpurification"]={40025,40,45,490},["innightmares"]={3370,25,17,718},["inquireatinn"]={266,25,10,10},["inquiringaboutlegend"]={40780,60,0,5130},["inrush"]={40111,60,1638,490},["insanedruids"]={1012,32,331,331},
["insearchofanthion"]={8930,60,139,5225},["insearchofcorruption"]={40192,20,331,331},["insearchofexcavationteam"]={306,24,11,11},["insearchofgalvan"]={2759,40,40008,1519},["insearchofknowledge"]={2939,47,357,357},["insearchofmenaravoidrender"]={4739,31,40004,1497},["insearchofsolarknowledge"]={40795,10,0,139},
["insearchoftemple"]={1448,43,1519,8},["insearchofthaelrid"]={1198,24,719,141},["insectpartanalysis"]={113,48,440,440},["instigatorsenchantment"]={8950,60,2557,2057},["interceptedshipment"]={40222,30,33,33},["interceptingwavecrest"]={40768,58,0,5121},["interferingnaga"]={40124,52,16,16},
["intodepths"]={3446,51,1417,1477},["intodreami"]={40957,60,0,616},["intodreamii"]={40958,60,0,616},["intodreamiii"]={40959,60,0,16},["intodreamiv"]={40960,60,0,16},["intodreamv"]={40961,60,0,616},["intodreamvi"]={40962,60,0,616},
["intofield"]={243,46,440,1497},["intojaws"]={40281,25,209,209},["intomawofmadness"]={8306,60,1377,3478},["intoscarletmonastery"]={1048,42,796,5163},["intotempleofatalhakkar"]={1475,50,1417,8},["intounknowndeprecated"]={60104,5,0},["intouplands"]={40080,15,130,130},
["invadersofalteracvalley"]={8369,60,2597,1637},["investigatealchemistshop"]={1960,16,40010,1497},["investigatebluerecluse"]={1920,16,40010,1497},["investigatecamp"]={201,32,33,33},["investigateechoridge"]={15,3,9,12},["investigatescourgeofdarnassus"]={9262,10,40027,12},["investigatescourgeofironforge"]={9261,10,40027,12},
["investigatescourgeoforgrimmar"]={9263,10,40027,12},["investigatescourgeofstormwind"]={9260,6,40027,12},["investigatescourgeofthunderbluff"]={9264,10,40027,12},["investigatescourgeofundercity"]={9265,8,40027,12},["investigatingcorinth"]={55222,24,0,1519},["investigatinghateforge"]={40486,50,46,46},["invocationofexpansivemind"]={41081,60,41,3457},
["invocationofgreaterarcanefortitude"]={41082,60,41,3457},["invocationofgreaterprotection"]={41080,60,41,3457},["invocationofshattering"]={41079,60,41,3457},["inyourowndefense"]={40712,37,3,3},["ironbandscompound"]={1681,11,40005,1},["ironbandsexcavation"]={436,18,38,38},["ironbandwantsyou"]={707,37,1537,1537},
["ironcoral"]={1708,29,40005,11},["irondeepsupplies"]={6985,55,2597,2597},["irondetermination"]={41387,55,17,361},["ironforgebrigadeneedsexplosives"]={8778,60,1377,51},["ironforsorrowguard"]={40073,37,8,8},["ironpatch"]={60153,43,33,33},["iseealcazislandinyourfuture"]={8970,60,2079,15},
["ishaawak"]={873,27,17,17},["ishamuhale"]={882,19,17,17},["islander"]={1718,30,40005,17},["isleofdread"]={8585,60,440,357},["itallcomessinkingdown"]={55026,36,0,14},["itbroke"]={40515,10,1537,1537},["itemsofpower"]={1948,40,40010,45},
["itemsofsomeconsequence"]={2746,31,1519,33},["itsallintheirbrains"]={80710,60,139,139},["itsallogrenow"]={41306,40,722,722},["itsdangeroustogoalone"]={3962,56,490,490},["itssecrettoeverybody"]={3908,52,490,618},["ivarfoul"]={425,12,130,130},["ivereaditinbookonce"]={41141,49,47,357},
["iverronsantidote"]={3522,4,188,141},["jadefirerevenge"]={40211,51,0,490},["jademine"]={40219,53,0,408},["jailbreak"]={4322,58,1584,46},["jainasautograph"]={558,60,40020},["jameshyal"]={1302,35,11,11},["jammalanprophet"]={1446,53,1417,1477},
["jarlneedsblade"]={1203,35,15,15},["jarlneedseyes"]={1206,35,15,17},["jasperlodeinfestation"]={60154,10,12,12},["jasperlodemine"]={76,10,12,12},["jeneuofearthenring"]={824,27,331,331},["jeremiahblues"]={5049,52,1497,1497},["jesrimonspaymenttojediga"]={3563,52,16,16},
["jinzilsforestmagic"]={1058,26,406,406},["jinzilsstew"]={70031,28,331,331},["jittersgrowlinggut"]={5,20,10,10},["jobopeningguardcaptainofrevantuskvillage"]={7862,51,47,47},["jobopportunitycullingcompetition"]={7729,48,51,51},["joinleague"]={55100,27,11,11},["jollyhollydancesprolly"]={50328,60,0,5130},
["jonespyresrequest"]={3788,50,1116,357},["jornskyseer"]={3261,18,17,17},["journeyforvengeance"]={40691,20,406,406},["journeyintocaverns"]={80604,60,2300,1941},["journeyintothunderbluff"]={775,10,215,17},["journeytoastranaar"]={1133,20,15,15},["journeytoauberdine"]={41259,11,0,148},
["journeytocrossroads"]={854,12,215,17},["journeytohillsbradfoothills"]={493,20,130,267},["journeytomarsh"]={1947,38,40010,15},["journeytostonetalonpeak"]={1056,18,331,331},["journeytotarrenmill"]={1065,18,1638,267},["joysofomosh"]={2755,36,40008,1637},["judgeandphantom"]={40975,46,0,5208},
["judgementschest"]={41487,60,25,25},["judgementsfeet"]={41492,60,25,25},["judgementshands"]={41489,60,25,25},["judgementshead"]={41485,60,25,25},["judgementslegs"]={41491,60,25,25},["judgementsshoulders"]={41486,60,25,25},["judgementswaist"]={41490,60,25,25},
["judgementswrists"]={41488,60,25,25},["judgmentandredemption"]={7647,60,40009,2057},["juicedelivery"]={159,24,10,10},["juicydarkfanglegs"]={40408,38,15,15},["jujuheaps"]={1884,10,40010,14},["junglesecrets"]={215,33,33,33},["justaskthemnicely"]={41300,38,1537,1537},
["justcompensation"]={8944,60,1637,1583},["justicefordustwallow"]={40722,43,15,15},["kaboom"]={80219,60,0,11},["kaelasupdate"]={1091,22,406,406},["kaelinsgift"]={41225,8,0,5225},["kalanarsmallet"]={40326,33,0,5077},["kaldoreirelics"]={40806,30,331,331},
["kaldoreiweaponry"]={40812,30,331,331},["kaneqnuunelder"]={40322,45,0,5024},["karnitolshipwreck"]={1457,39,405,405},["kayasalive"]={6401,18,406,17},["kaynethstillwind"]={4581,29,331,331},["keeperofflame"]={103,16,40,40},["keeperscall"]={9247,60,40027,4012},
["keeperscharge"]={40243,53,16,16},["keeperspossession"]={40244,53,16,16},["keepeyeout"]={576,42,33,33},["keepingcommand"]={40038,56,16,16},["keepingpace"]={1190,41,400,400},["keepingsecrets"]={40254,58,16,16},["kenziglasdraught"]={1511,20,40004,406},
["keytofreedom"]={4451,47,51,51},["keytokarazhani"]={40817,60,2562,3457},["keytokarazhanii"]={40818,60,2562,3457},["keytokarazhaniii"]={40822,60,2562,267},["keytokarazhaniv"]={41136,60,2562,15},["keytokarazhanix"]={40828,60,2562,2677},["keytokarazhanv"]={41137,60,2562,15},
["keytokarazhanvi"]={40825,60,2562,15},["keytokarazhanvii"]={40826,60,2562,15},["keytokarazhanviii"]={40827,60,2562,15},["keytokarazhanx"]={40829,60,2562,15},["khandezhepah"]={1365,35,405,405},["khanhratha"]={1381,42,405,405},["khanjehn"]={1374,37,405,405},
["khanshaka"]={1375,37,405,357},["kharanmighthammer"]={4341,59,1584,1537},["kharanstale"]={4342,59,1584,1584},["kiblersexoticpets"]={4729,59,1583,3},["kidnappedeldertorntusk"]={7845,51,47,47},["killgrundigdarkcloud"]={6629,18,406,406},["killingfields"]={9,15,40,40},
["killingtidelord"]={40061,56,16,16},["killonsightdarkirondwarves"]={4081,52,1584,1584},["killonsighthighrankingdarkironofficials"]={4082,54,1584,1584},["kimjaelindeed"]={3601,53,16,16},["kimjaelsmissingequipment"]={5534,53,16},["kinglyshakedown"]={2298,16,40011,1537},["kingmorogothunderfoot"]={40785,60,0,5121},
["kingoffoulweald"]={6621,26,331,331},["kingsbane"]={41252,10,0,5225},["kingsplea"]={40716,37,3,3},["kingsresponse"]={40488,52,46,1537},["kingstribute"]={700,31,1537,36},["kirith"]={2721,58,4,8},["kirtonosherald"]={5384,60,2057,28},
["kitchenassistance"]={8317,57,40021,1377},["klaventower"]={2359,24,40011,40},["klockmortsessentials"]={2925,30,133,1657},["klockmortspannerspan"]={1704,28,40005,1519},["knifeearedstalkers"]={70025,29,331,331},["kniferevealed"]={4129,44,357,357},["knowledgeindeeps"]={971,23,719,400},
["knowledgeoflorthiras"]={40240,58,139,4012},["knowledgeoforboforahil"]={4969,35,40004,1497},["knowledgeonwithering"]={40647,25,406,406},["koboldcampcleanup"]={7,2,9,12},["koboldcandles"]={60,7,12,12},["kodohidebag"]={769,10,1638,17},["kodohunt"]={60138,11,215,215},
["kodoroundup"]={5561,34,405,405},["kolkarleaders"]={850,16,17,17},["kolkarofdesolace"]={1362,32,405,405},["korrakbloodrager"]={7202,60,2597,2597},["korrakeverliving"]={7382,60,2597,2597},["krastinovbagofhorrors"]={5515,60,2057,2057},["krazekscookery"]={210,37,33,33},
["krilanasmagnificentquest"]={40370,53,0,408},["krisofunspokennames"]={8710,60,3428,3429},["kromgrul"]={3822,53,46,46},["kroshiusinfernalcore"]={7603,55,40004,361},["kultiranprovisionsfood"]={40790,16,17,17},["kultiranprovisionsspecialgoods"]={40791,16,17,17},["kumishasendeavors"]={2522,55,4,4},
["kurzensmystery"]={207,38,33,33},["lackoffear"]={5647,20,40017},["lackofsurplus"]={699,42,8,8},["ladyjanira"]={60020,50,357,357},["lakotamani"]={883,22,17,17},["landfilledwithhatred"]={5536,47,16,16},["landho"]={663,35,45,45},
["landhomorelikelandno"]={40186,52,0,33},["landofkings"]={40713,37,3,3},["lardlosthislunch"]={7840,49,47,47},["larionandmuigin"]={4145,52,490,490},["lastbarov"]={5344,60,28,28},["lastcorthan"]={40715,37,3,3},["lastelement"]={7201,54,1584,1584},
["lastoflivingdead"]={40879,42,0,5179},["latedelivery"]={55038,32,267,14},["laughingsisters"]={1945,26,40010,331},["lawbringerschest"]={41495,60,25,25},["lawbringersfeet"]={41500,60,25,25},["lawbringershands"]={41497,60,25,25},["lawbringershead"]={41493,60,25,25},
["lawbringerslegs"]={41499,60,25,25},["lawbringersshoulders"]={41494,60,25,25},["lawbringerswaist"]={41498,60,25,25},["lawbringerswrists"]={41496,60,25,25},["lawogre"]={70058,28,10,10},["lazypeons"]={5441,4,363,14},["leadersoffang"]={914,22,718,718},
["leadersofreefscale"]={41249,10,0,5225},["learnofmypast"]={41320,52,16,16},["leastparanoidgoblin"]={40646,23,406,406},["leathercoveredletter"]={80117,1,40016,5536},["leatherdraenicluxury"]={40031,35,8,8},["leatherletter"]={41130,1,12,12},["ledgerfromtanaris"]={4450,46,51,51},
["leesultimatetestquestofdoom"]={5101,5,40020},["lefisheauchocolat"]={41004,60,0,3457},["leftinbadfaith"]={41285,44,1537,5208},["leftpieceoflordvalthalaksamulet"]={8969,60,2057,2017},["legacyofblood"]={41257,10,40010,5225},["legacyofperenolde"]={41121,44,0,5179},["legendcomestolife"]={40782,60,0,5130},
["legendofdawnstone"]={41120,39,0,5179},["legendofeskhandar"]={41547,58,17,17},["legendofkorrak"]={7181,60,2597,2597},["legendofstalvan"]={98,35,10,12},["legendoftarqsiku"]={40324,48,0,5024},["legendsofearthnyi"]={636,35,45},["legendsofmaraudon"]={7044,49,2100,2100},
["leggingsofarcana"]={5067,60,618,2017},["leggingsoffaith"]={9112,60,3456,3456},["legplatesofchromaticdefier"]={5167,60,28,2057},["legsfordays"]={41573,60,2562,3457},["legsofguardian"]={41623,60,41,3457},["legsofmight"]={41448,60,25,25},["legsofprophecy"]={41465,60,25,25},
["legsoftenstorms"]={41507,60,25,25},["legsoftranscendence"]={41457,60,25,25},["legsofwrath"]={41440,60,25,25},["leonidbarthalomew"]={5522,60,46,4012},["lessoninbruisin"]={41202,11,40005,5536},["lessoninprotection"]={41261,10,40005},["lessonsanew"]={6126,14,40018,215},
["lessontolearn"]={27,16,40018,215},["lessontotaketoheart"]={41208,2,40004,5536},["letarrowfly"]={41531,58,17,17},["lethtendrissweb"]={7489,57,2557,357},["letterfromfriend"]={80407,46,40015,440},["letterfromfront"]={9295,60,40027,4012},["letterfromgadgetzan"]={41099,46,40015,440},
["letterfrommaltimor"]={40529,25,40,40},["letterfromrayne"]={41100,60,139,4012},["letterfromroyalty"]={41194,5,0,5225},["lettertojinzil"]={1060,20,17,17},["lettertomudsprocket"]={80390,30,15,15},["lettertostormpike"]={514,34,36,267},["letterundelivered"]={361,7,85,85},
["leylineinvestigation"]={41313,50,16,16},["liadrinsplea"]={41221,8,0,5225},["libramoffocus"]={7484,60,2557,2057},["libramofprotection"]={7485,60,2557,2017},["libramofrapidity"]={7483,60,2557,139},["lichrasfrostwhisper"]={5466,60,2057,28},["lichsidentity"]={357,8,1497,85},
["liesthatbindus"]={80323,15,0,1637},["lieutenantalverold"]={40674,20,14,17},["lieutenantfangore"]={180,26,44,44},["lieutenantpavalreethe"]={1269,37,15,15},["lifecomestolegend"]={40783,60,0,5130},["liftanchor"]={40357,48,33,33},["liftingcurse"]={290,30,11,11},
["lightandhowtoswingit"]={7501,60,2557},["lightforgeingots"]={526,29,10,11},["lightforgeiron"]={321,29,10,11},["lightindarkplaces"]={9386,60,40028,1583},["lightingoilmaster"]={40642,28,406,406},["lightingpyres"]={80301,10,0,2041},["lightshopechapel"]={9154,60,40027,1537},
["linesofcommunication"]={2995,47,1497,47},["lingeringmother"]={60135,39,405,405},["linkensadventure"]={3961,54,490,490},["linkensmemory"]={3942,54,490,490},["linkenssword"]={3914,52,490,440},["lionheartamulet"]={41631,60,41,3457},["lionheartboots"]={41630,60,41,3457},
["lionheartchest"]={41628,60,41,3457},["lionhearthelm"]={41626,60,41,3457},["lionheartlegs"]={41629,60,41,3457},["lionheartshoulders"]={41627,60,41,3457},["liquidstone"]={715,37,3,331},["littlehelpfrommyfriends"]={4491,55,490,490},["littleluck"]={6606,60,618,618},
["littlepamela"]={5142,55,139,28},["littleslimegoeslongway"]={4513,54,1537,1537},["lizziscompetitor"]={80380,60,40015,331},["loadlightening"]={1176,30,400,400},["lochmenace"]={70053,20,38,38},["loftyheights"]={40677,35,405,405},["lonebrowsjournal"]={1100,34,400,357},
["loneliestmurlocinworld"]={40543,45,47,267},["longforgottenmemories"]={8305,60,1377,1941},["longnightisnotover"]={40221,60,139,4012},["lookatsizeofit"]={7704,50,51},["lookingfurther"]={248,22,44,44},["looktooldfriend"]={350,31,1519,1519},["looktostars"]={181,30,10,721},
["loramus"]={3141,57,16,16},["loraxstale"]={5126,60,618,618},["lordaeronthroneroom"]={1800,60,40020},["lordalidenperenolde"]={507,42,267,36},["lordbanehollow"]={7623,58,40004,46},["lordgraysonshadowbreaker"]={7670,60,40009,1519},["lordmaxwelltyrosus"]={5264,60,139,4012},
["lordofblackrock"]={7784,60,1637,14},["lordrogsexiles"]={40024,40,45,45},["lordrogsfavor"]={40026,40,45,45},["lordsofcouncil"]={8341,60,1377,1377},["lordxanvarak"]={41020,60,0,616},["loreforprice"]={2199,41,1517,1537},["lorieslogbook"]={40045,50,16,16},
["lossatlordaeron"]={41349,60,2562,267},["lossofgoodrum"]={40178,48,35,33},["lostandfound"]={40999,60,0,3457},["lostandstranded"]={40092,51,0,409},["lostbet"]={55202,24,0,11},["lostbutnotforgotten"]={816,11,14,17},["lostcaravan"]={1421,35,8,8},
["lostcrew"]={40188,52,0,408},["lostdeathstalkers"]={428,12,130,130},["lostdwarves"]={2398,40,1517,1537},["lostexclamation"]={4492,55,490,490},["lostfragments"]={692,41,3,3},["lostinbattle"]={4921,20,17,17},["lostingots"]={324,29,10,11},
["lostinratchet"]={41303,38,0,14},["lostintime"]={41347,60,2562,3457},["lostmaster"]={993,20,148,148},["lostnecklace"]={85,6,12,12},["lostpages"]={6504,30,331,331},["lostpilot"]={419,10,1,1},["lostreport"]={1238,35,15,15},
["lostsecretsofwitherbark"]={40606,41,47,267},["lostsupplies"]={1423,40,8,4},["losttablets"]={80290,30,0,85},["losttabletsofmosharu"]={5065,58,139,139},["losttabletsofwill"]={1139,45,1517,1337},["lostthunderbrewrecipe"]={4134,55,1584,3},["losttools"]={125,16,44,44},
["losttosands"]={70001,60,40010,3429},["lovenomatterwhat"]={41224,8,0,5225},["lovepotion"]={4201,54,1584,490},["lovesgift"]={1512,20,40004,17},["lovesongfornarain"]={8599,60,440,440},["luckbewithyou"]={969,60,1637,618},["luckyboots"]={55047,45,14,5121},
["luckycoin"]={60050,5,12,1519},["lululooksluscioustolupines"]={60007,8,12,12},["lunarfestival"]={8875,60,40026,1537},["lunarfireworks"]={8867,60,40026,141},["lykourgos"]={40196,53,0,408},["maceofunendinglife"]={8708,60,3428,3429},["mackreelsmoonshine"]={647,30,11,267},
["maddeninghunger"]={41196,4,0,5225},["madnesswithin"]={7461,60,2557},["magathaspaymenttojediga"]={3562,52,16,16},["magecraft"]={8250,52,40010,1537},["magesummoner"]={1017,25,331,17},["mageswand"]={1952,40,40010,15},["magetasticgizmonitor"]={1880,10,40010,1},
["maggoteye"]={398,10,85,85},["magicalanalysis"]={602,37,33,33},["magicalcompass"]={40185,52,0,408},["magicalinterference"]={40084,20,85,85},["magicallysealedletter"]={41226,1,0,5225},["magicalmaladies"]={41181,10,40010,5536},["magicalpresence"]={40941,40,0,5179},
["magicdust"]={8251,52,40010,16},["magicofdragons"]={40208,45,8,8},["magistersletter"]={80214,1,0,38},["magramalliance"]={1367,33,405,405},["mahrenskyseer"]={874,27,17,17},["mailmustgothrough"]={60121,10,14,14},["maizoth"]={206,46,33,33},
["majormagicalfortifications"]={40711,60,267,267},["makerightchoice"]={60036,60,40002,2017},["makingsenseofit"]={4321,53,490,490},["makingstatement"]={40180,48,35,33},["malfunctionmayhem"]={40862,10,1,1},["malinsrequest"]={697,39,45,1519},["manasurges"]={1957,40,40010,15},
["manhunt"]={147,10,12,12},["manifestationsimilarities"]={41025,60,0,139},["manifestationsofnightmare"]={41022,60,0,616},["manifestedoddities"]={41327,60,8,8},["mannaenrichedhorsefeed"]={7645,60,40009,28},["mannorocdemonicsigil"]={40407,39,15,405},["manorravenholdt"]={6681,24,40011,36},
["mantleoforacle"]={8594,60,3428,5147},["mantlesofdawn"]={5513,60,139,4012},["manuscriptonhydromancyii"]={41114,45,0,5208},["mapsandrunes"]={478,14,130,130},["maraudersofdarrowshire"]={5206,60,139,139},["maraudinefront"]={40617,38,405,405},["marchofsilithus"]={4494,53,1637,440},
["marezcowl"]={684,39,45,45},["marglumbloodeye"]={40414,40,15,15},["margoz"]={828,12,14,14},["margspeaks"]={1261,40,15,15},["maritimegumbo"]={41168,6,0,5536},["markofquality"]={2822,46,357,357},["marlaslastwish"]={6395,5,154,85},
["marshalhaggard"]={1666,10,40005,1519},["marshalwindsor"]={4241,54,1584,46},["martekexiled"]={1106,35,400,3},["marvonsworkshop"]={4147,52,490,490},["massharmonization"]={40973,60,0,616},["mastercrafteddiamondbangles"]={41319,60,0,2717},["mastercrafteddiamondcrown"]={41318,60,0,2717},
["masteringarcane"]={80311,16,40010,17},["masteringelements"]={8411,52,40006,2717},["masteringformulai"]={40867,10,1,1},["masteringformulaii"]={40868,10,1,1},["masteringformulaiii"]={40869,14,1,1},["masteringgemology"]={41278,40,1637,1537},["masteringgoldsmithing"]={41276,40,1637,1497},
["masterofwildleather"]={2860,45,40013,215},["masterrysonsallseeingeye"]={6848,60,2597,2597},["mastersglaive"]={944,17,148,148},["masteryofaxes"]={41542,58,17,2017},["masteryofbows"]={41530,58,17,2017},["masteryofcrossbows"]={41527,58,17,2017},["masteryofdaggers"]={41548,58,17,2017},
["masteryoffistweapons"]={41545,58,17,2017},["masteryofguns"]={41524,58,17,2017},["masteryofhammers"]={41539,58,17,2017},["masteryofpolearms"]={41533,58,17,2017},["masteryofstaves"]={41518,58,17,2017},["masteryofswords"]={41536,58,17,2017},["masteryofthrown"]={41521,58,17,2017},
["materialassistance"]={7667,60,40006,46},["materialsofruneforging"]={40241,58,139,2017},["mathiasanddefias"]={2360,20,40011,1519},["mathiasletter"]={55224,24,0,1519},["mathiel"]={1703,28,40005,1519},["mathystrarelics"]={951,20,148,148},["matronprotectorate"]={5160,60,1583,1583},
["matteroftime"]={4971,56,28,28},["matteroftrust"]={60070,7,1519,267},["mauloggcrisisi"]={40264,53,0,408},["mauloggcrisisii"]={40265,53,0,408},["mauloggcrisisiii"]={40266,53,0,408},["mauloggcrisisiv"]={40267,53,0,409},["mauloggcrisisix"]={40272,54,0,408},
["mauloggcrisisv"]={40268,53,0,361},["mauloggcrisisvi"]={40269,53,0,440},["mauloggcrisisvii"]={40270,54,0,1477},["mauloggcrisisviii"]={40271,54,0,33},["mauloggwar"]={40199,52,0,408},["maulorb"]={40258,53,0,409},["maxwellsquest"]={5081,60,1583,1583},
["mayarabrightwing"]={4766,60,1583,1519},["mazensbehest"]={1364,41,1519,8},["mazzranache"]={766,8,215,215},["meaculpalordvalthalak"]={8995,60,1583,51},["mealservedcold"]={212,40,1519,33},["meansofpersuading"]={80705,60,0,11},["meanstoheal"]={80304,60,0,331},
["meatforviceclaw"]={40528,43,40015,15},["meatstoorgrimmar"]={6365,10,17,17},["mebrothernipsy"]={6662,12,2257,5144},["mechaflamesbargain"]={40359,48,33,45},["mediummagicalfortifications"]={40710,50,267,267},["meetatgrave"]={3912,52,490,618},["meetingeldercentaur"]={40621,35,405,405},
["meetingwithadaena"]={40204,11,141,141},["meetingwithdreadlord"]={40238,58,139,405},["meetingwithenemy"]={40558,35,15,15},["meetingwithmaster"]={3381,48,16,16},["meetingwithroyalty"]={40034,54,16,16},["meldingofinfluences"]={4642,55,1497,130},["melorsendsword"]={1130,30,1638,17},
["memoryofogre"]={40579,35,15,15},["menethilsgift"]={5464,60,139,2017},["mennetcarkad"]={1885,10,40011,1497},["menotanykindoforc"]={80108,6,0},["mercenaries"]={255,19,38,38},["mercyofhumility"]={40863,12,1,1},["messageforwindrunner"]={41195,5,0,2040},
["messageinbottle"]={630,51,33,33},["messagetofreewindpost"]={4542,25,400,17},["messagetomaxwell"]={5002,59,1583,46},["messagetowildhammer"]={7841,48,47,47},["messengertodarkshire"]={146,18,44,44},["messengertostormwind"]={121,14,44,1519},["messengertowestfall"]={144,14,44,40},
["metzenreindeer"]={8762,60,40002,51},["michaelgarrett"]={6322,10,130,1497},["microfiltertazzoscope"]={40735,58,0,46},["mightofhorde"]={40113,60,8,8},["mightyucha"]={4301,55,490,490},["mightywattapowall"]={40580,35,17,15},["millsoverrun"]={426,8,85,85},
["millyosworth"]={3903,4,9,12},["millysharvest"]={3904,4,9,12},["mindlessones"]={364,2,154,85},["mindseye"]={591,46,33,33},["minersfortune"]={896,18,17,17},["minersunionmutiny"]={40462,50,46,46},["minersunionmutinyii"]={40468,50,0,5103},
["minormagicalfortifications"]={40709,40,267,267},["minshinasskull"]={808,9,14,17},["mirageracewaygnomesteam"]={50313,60,0,400},["mirageracewaygoblinsteam"]={50311,60,0,400},["mirages"]={718,38,3,3},["mirefinnuisance"]={40409,38,15,15},["mirrorlake"]={1861,10,40010,1519},
["misgottenhonor"]={55020,39,0,8},["missingblood"]={55019,39,14,14},["missingcourier"]={4125,43,357,357},["missingdiplomat"]={1447,31,1519,10},["missingexpedition"]={40104,60,1537,1537},["missingfriend"]={40771,58,0,5121},["missinginaction"]={219,25,44,46},
["missingorders"]={2622,50,8,8},["missingrobot"]={40043,50,16,16},["missingshipment"]={892,14,17,17},["missingsorcerer"]={60109,24,209,1519},["missingworker"]={55044,10,14,14},["questpossiblebutnotprobable"]={2478,24,40011,17},["missivefromfront"]={9302,60,40027,4012},
["missivefromgadgetzan"]={41098,46,40015,1519},["missivefromrayne"]={41101,60,139,4012},["mist"]={938,12,141,141},["mithrilkid"]={2773,45,40008,440},["mithrilorder"]={2760,40,40008,33},["mokthardinsenchantment"]={573,44,33,33},["moldrhymeswith"]={5538,57,28,440},
["moltencore"]={6822,60,16,2717},["moneydowndrain"]={80352,41,15,15},["monogrammedsash"]={8552,50,33,33},["moonclothcollection"]={40816,60,0,616},["moonglade"]={5922,10,40018,215},["moonglowvest"]={1582,18,40013,141},["moontouchedwildkin"]={978,55,702,618},
["morbentfel"]={55,32,10,10},["morecomponentsofimportance"]={8988,60,25,1377},["morewastewanderjustice"]={1691,44,440,440},["morganladimore"]={227,35,10,10},["morgansdiscovery"]={9025,60,40002,1519},["morganstern"]={1260,38,15,1519},["morganth"]={249,27,44,44},
["morladim"]={228,35,10,10},["morrowgrainresearch"]={3786,50,1638,215},["morrowinfelwood"]={41076,54,361,361},["morrowstone"]={2942,50,357,357},["mortalitywanes"]={1142,30,1717,491},["morzulbloodbringer"]={7562,58,40004,1637},["mosstwinedheart"]={927,12,141,141},
["mossymystery"]={41346,58,0,440},["motherofhollow"]={60148,5,154,85},["mothersconcern"]={40448,34,45,45},["mothersmilk"]={4866,60,1583,46},["mountaineerstormpikestask"]={1339,15,38,38},["mountaingiantmuisek"]={3127,50,357,357},["mounthyjalinturmoil"]={41338,60,493,493},
["mourningblade"]={41538,58,17,2057},["msfixit"]={70050,40,3,3},["mudcoveredletter"]={41205,2,40016,14},["mudpawminingmishap"]={41175,6,0,5536},["mudrocksoupandbugs"]={1204,38,15,15},["muiginandlarion"]={4141,52,490,490},["murarunetotem"]={3301,15,17,130},
["murdaloc"]={739,42,3,3},["murderondancefloor"]={41570,1,17,17},["murenstormpike"]={1679,10,40005,1537},["murkdeep"]={4740,18,148,148},["murlocmenace"]={40078,44,8,8},["murlocmonkeywars"]={40770,58,0,5121},["murlocpoachers"]={150,20,44,40},
["murlocthreat"]={41167,6,0,5536},["musthavediscovery"]={40734,58,0,5121},["mysteriesofgrove"]={40145,37,331,331},["mysteriousboon"]={40923,60,41,41},["mysteriouscowscrolli"]={40051,60,0,12},["mysteriouscowscrollii"]={40052,60,0,40},["mysteriouscowscrolliii"]={40053,60,0,40},
["mysteriouscowscrolliv"]={40054,60,0,10},["mysteriouscowscrollv"]={40055,60,0,33},["mysteriousmissive"]={40914,60,41,41},["mysteriousshieldnomore"]={40581,35,17,15},["mysterycontinues"]={55216,24,0,11},["mysterygoo"]={5085,56,618,618},["mysteryofkarazhani"]={40311,60,41,4},
["mysteryofkarazhanii"]={40312,60,41,41},["mysteryofkarazhaniii"]={40313,60,41,267},["mysteryofkarazhaniv"]={40314,60,41,267},["mysteryofkarazhanv"]={40315,60,41,4},["mysteryofkarazhanvi"]={40316,60,41,41},["mysteryofkarazhanvii"]={40317,60,41,41},["mysteryoflakemennar"]={40295,50,16,16},
["mysteryofmorrowgrain"]={3791,50,1116,357},["mythologyoftitans"]={1050,38,796,5135},["myzraelsallies"]={688,40,45,1537},["nagaallalong"]={41248,9,0,5225},["nagaatzoramstrand"]={6442,19,331,331},["nagatridents"]={40328,44,33,33},["nameofbeast"]={3511,58,16,16},
["namingvessel"]={40354,48,33,33},["narawildmane"]={1490,16,718,1638},["nathanosruse"]={6146,60,139,4012},["nathrezimamulet"]={41589,60,41,3457},["nathrezimboots"]={41588,60,41,3457},["nathrezimhelm"]={41584,60,41,3457},["nathrezimpants"]={41587,60,41,3457},
["nathrezimrobes"]={41586,60,41,3457},["nathrezimshoulderguards"]={41585,60,41,3457},["natpagleanglerextreme"]={6607,45,40007,15},["natpaglemurlocexpert"]={40545,45,47,15},["natsmeasuringtape"]={8227,60,19,1977},["naturalmaterials"]={3128,50,357,357},["nazzsgotplan"]={40640,23,406,406},
["necklaceofinsomnius"]={40251,54,0,8},["necklacerecovery"]={2283,41,1517,1337},["necklacerecoverytakethree"]={2341,44,1517,51},["necklacerecoverytaketwo"]={2284,41,1517,1637},["needclaws"]={40402,35,15,15},["needforcure"]={812,9,14,14},["neekabloodscar"]={1418,35,8,8},
["neerufireblade"]={829,12,14,14},["nefariusscorruption"]={8730,60,2677,1941},["negotiatedtruce"]={41302,38,1537,1537},["nekroshsgambit"]={465,31,11,11},["nekrumsmedallion"]={2991,47,978,4},["nemesisbelt"]={41422,60,25,25},["nemesisboots"]={41424,60,25,25},
["nemesischest"]={41419,60,25,25},["nemesisgloves"]={41421,60,25,25},["nemesishead"]={41417,60,25,25},["nemesislegs"]={41423,60,25,25},["nemesisshoulders"]={41418,60,25,25},["nemesiswrists"]={41420,60,25,25},["nessashadowsong"]={6344,10,1657,141},
["nethergardescouting"]={40420,52,4,4},["netherwindchest"]={41469,60,25,25},["netherwindfeet"]={41474,60,25,25},["netherwindhands"]={41471,60,25,25},["netherwindhead"]={41475,60,25,25},["netherwindlegs"]={41473,60,25,25},["netherwindshoulders"]={41468,60,25,25},
["netherwindwaist"]={41472,60,25,25},["netherwindwrists"]={41470,60,25,25},["neveraskmeaboutmybusiness"]={8584,60,440,440},["newadventure"]={80100,1,0,5536},["newbonds"]={40363,10,215,215},["newcloakssheen"]={2973,45,357,357},["newestmemberofthefamily"]={3843,47,357,267},
["newfrontier"]={6761,55,1657,1537},["newgrowth"]={41256,8,0,5225},["newlife"]={6381,25,406,406},["neworesample"]={1153,29,17,400},["newplaceinstormwind"]={80220,5,1519,1519},["newplague"]={492,11,85,85},["newpowersource"]={55003,10,14,14},
["newrunefrontier"]={40234,58,139,4012},["newsfordanonzo"]={40738,58,0,440},["newsforfizzle"]={1137,38,400,3},["newsofdogran"]={1510,20,40004,1637},["newsprings"]={980,55,490,618},["newthreat"]={170,2,132,1},["newyearcelebrations"]={8861,60,40002,215},
["nextcourseofaction"]={40718,35,17,15},["nexusofdalaran"]={40708,55,267,267},["nighthowlneutralizing"]={40938,43,0,5179},["nighthowlnuisance"]={40937,43,0,5179},["nightmaremanifests"]={8736,60,493,493},["nightmarescorruption"]={8735,60,493,357},["nightsexploration"]={50230,15,33,17},
["nightwatch"]={58,30,10,10},["nightwebshollow"]={380,4,154,85},["noblebrew"]={336,30,1519,10},["nobledeaths"]={512,36,36,36},["noborucudgel"]={40030,36,8,8},["noggenfoggerelixir"]={2662,49,440,440},["noggleslasthope"]={8278,57,1377,1377},
["noggleslostsatchel"]={8282,58,1377,1377},["noggsringredo"]={2950,35,1637,331},["nohonoramongchefs"]={41374,61,0,5086},["nomorepid"]={60139,7,14,14},["noquestionsasked"]={40775,53,361,361},["nordanaarguardianspaulders"]={41059,60,0,616},["nordanaarherbaltea"]={41005,60,0,616},
["nordrassilstag"]={41008,60,0,616},["northeastpassage"]={40321,45,148,5024},["northernpylon"]={4285,53,490,490},["northfoldmanor"]={681,31,45,45},["norvokofspear"]={70022,29,331,331},["noshortcutstosalvation"]={41267,12,0,2040},["notefromfront"]={9299,60,40027,4012},
["notetomayor"]={160,30,10,10},["notetowilliam"]={107,6,12,12},["nothingbuttruth"]={1391,42,10,8},["notuselessexclamation"]={40639,23,406,406},["noviceinbarrenland"]={41324,54,16,16},["noxiouslairinvestigation"]={82,47,440,440},["nuggetslugs"]={3922,15,17,17},
["oakenscowl"]={2499,9,141,141},["observations"]={41294,44,3,405},["oculusillusions"]={6569,60,1583,1583},["odosgutfeeling"]={80309,14,1637,1637},["ofcoursersweknow"]={8255,52,40017,16},["offeringforkaneqnuun"]={40323,45,0,5024},["offorgottenmemories"]={5781,57,139,139},
["oflosthonor"]={5845,58,139,139},["ofloveandfamily"]={5848,60,2017,2017},["ofnewandold"]={40501,52,46,46},["ofnewandoldii"]={40502,52,46,1637},["ofnewandoldiii"]={40503,52,46,46},["ofnewandoldiv"]={40504,57,0,5103},["ofsandfuryanddarkspear"]={40525,45,40015,1637},
["ogreheadonstickparty"]={3825,53,46,46},["ogresofferalas"]={2980,44,357,357},["ogrethieves"]={134,30,10,10},["ohbrother"]={167,20,1581,1581},["oilstainedgold"]={70051,9,14,14},["oilstopsflowing"]={55001,9,14,14},["oldbonds"]={40225,30,33,17},
["oldbryansfooddelivery"]={40413,35,15,15},["oldchurchofwestfall"]={40593,13,40,40},["oldchurchofwestfallii"]={40594,14,40,40},["oldchurchofwestfalliii"]={40595,14,40,1519},["oldchurchofwestfalliv"]={40596,14,40,1519},["oldchurchofwestfallix"]={40601,16,40,1519},["oldchurchofwestfallv"]={40597,14,40,12},
["oldchurchofwestfallvi"]={40598,16,40,40},["oldchurchofwestfallvii"]={40599,16,40,40},["oldchurchofwestfallviii"]={40600,16,40,44},["oldchurchofwestfallx"]={40602,22,40,40},["oldchurchofwestfallxi"]={40603,22,40,40},["oldcolleague"]={1072,21,406,406},["oldfriend"]={40212,54,0,8},
["oldgreypaw"]={40197,20,331,331},["oldhistorybook"]={337,25,10,1519},["oldways"]={2756,40,40008,1637},["omarionshandbook"]={9233,60,3456,4012},["onboarstrail"]={40573,35,17,17},["onceuponsheep"]={60005,8,12,12},["onealpha"]={40680,27,11,11},
["onebulletattime"]={41525,58,17,17},["onechainattime"]={40949,42,0,5179},["onedraeneisjunk"]={3502,55,4,4},["oneofus"]={40616,41,405,405},["oneshotonekill"]={5713,15,148,331},["onesmallfavor"]={40586,8,215,215},["ongeku"]={1373,37,405,8},
["onguardinstonetalon"]={1085,21,331,406},["oninsreport"]={2239,10,40011,1537},["onironpauldrons"]={2752,32,40008,1637},["onlegendstrail"]={40950,42,0,5179},["onlycureismoregreenglow"]={2962,30,133,1},["onlyonemayrise"]={8288,60,2677,2677},["onlyprescription"]={8620,60,440,440},
["onlysongiknow"]={9232,60,3456,139},["onu"]={948,17,148,148},["onwardtoravenshire"]={40944,40,0,5179},["oopswekilledthemagain"]={1390,60,15},["oozecoveredletter"]={80116,1,40011,5536},["operationdeathtoangerforge"]={4132,58,1584,1584},["operationfinalrepairs"]={40760,58,0,46},
["operationfixscrewfuse"]={40756,58,0,440},["operationhelpjabbey"]={40758,58,0,139},["operationrecombobulation"]={412,10,1,1},["operationreturntoscrewfuse"]={40759,58,0,440},["operationscrewfuse"]={40755,58,0,5121},["operativebijou"]={4981,59,1583,3},["opportunitytodigdeep"]={40763,57,0,5121},
["orbofkaladus"]={40233,38,796,5163},["orbofsoranruk"]={1740,25,40004,209},["orcishanatomy"]={50004,6,40011,1537},["orcreport"]={1219,35,15,15},["orcsexclamation"]={7402,60,2597,2597},["ordanus"]={1088,29,406,331},["ordermustberestored"]={6187,60,139,139},
["orendilscure"]={1020,20,331,331},["oreontime"]={55045,10,14,17},["orgrimmarlegionneedsmojo"]={8785,60,1377,409},["originalowner"]={40101,60,35,33},["originsofsmithing"]={2758,40,40008,1519},["ormersrevenge"]={296,29,11,11},["ormstonehoofandbrutalhelm"]={1840,30,40005,17},
["ornatewindsheargemstone"]={40693,20,406,406},["orphanlookingforhome"]={3841,47,357,357},["oscilationinhibiteddisk"]={55211,24,0,11},["otherfishtofry"]={6143,36,405},["otherwhitemech"]={80104,1,0,5536},["otherwordlyscepterofmedivh"]={41371,60,2562},["ottoandfalconcrest"]={685,40,45,45},
["ourdarkironrivals"]={41567,52,17,1583},["ourmortalenemies"]={40632,35,405,405},["outfordelivery"]={60122,10,1637,1637},["outnumbered"]={40096,16,85,85},["outofoptions"]={40125,52,16,267},["outrider"]={40802,30,331,331},["overlappinginvestigations"]={55219,24,0,11},
["overlordmokmorokksconcern"]={1166,43,15,15},["overmasterpyron"]={4262,52,25,51},["overseermaltorius"]={7701,50,51,51},["owatanka"]={884,24,17,17},["pacifycentaur"]={4841,25,400,400},["packageforthurman"]={334,2,1519,1519},["packagetoqueldanil"]={80392,41,47,17},
["packmistress"]={4724,59,1583,1583},["pagefromfront"]={9300,60,40027,4012},["paintrosesred"]={60116,29,796,85},["paladinsletter"]={80212,1,0,38},["palkeote"]={60137,39,405,405},["pamelasdoll"]={5149,55,139,139},["pandarenbrewmaster"]={40686,60,17,40},
["panthermastery"]={193,40,33,33},["pantsofbrotherhood"]={41593,60,41,3457},["pantsofpestilence"]={41599,60,41,3457},["pantsoftalon"]={41581,60,41,3457},["paragonoflight"]={41258,12,40009,5225},["paragonsofpoweraugursbelt"]={8074,61,19,33},["paragonsofpoweraugursbracers"]={8056,61,19,33},
["paragonsofpoweraugurshauberk"]={8075,61,19,33},["paragonsofpowerconfessorsbindings"]={8070,61,19,33},["paragonsofpowerconfessorsmantle"]={8071,61,19,33},["paragonsofpowerconfessorswraps"]={8061,61,19,33},["paragonsofpowerdemoniacsmantle"]={8076,61,19,33},["paragonsofpowerdemoniacsrobes"]={8077,61,19,33},["paragonsofpowerdemoniacswraps"]={8059,61,19,33},
["paragonsofpowerfreethinkersarmguards"]={8053,61,19,33},["paragonsofpowerfreethinkersbelt"]={8054,61,19,33},["paragonsofpowerfreethinkersbreastplate"]={8055,61,19,33},["paragonsofpowerharuspexsbelt"]={8064,61,19,33},["paragonsofpowerharuspexsbracers"]={8057,61,19,33},["paragonsofpowerharuspexstunic"]={8065,61,19,33},["paragonsofpowerillusionistsmantle"]={8068,61,19,33},
["paragonsofpowerillusionistsrobes"]={8069,61,19,33},["paragonsofpowerillusionistswraps"]={8060,61,19,33},["paragonsofpowermadcapsbracers"]={8063,61,19,33},["paragonsofpowermadcapsmantle"]={8072,61,19,33},["paragonsofpowermadcapstunic"]={8073,61,19,33},["paragonsofpowerpredatorsbelt"]={8066,61,19,33},["paragonsofpowerpredatorsbracers"]={8062,61,19,33},
["paragonsofpowerpredatorsmantle"]={8067,61,19,33},["paragonsofpowervindicatorsarmguards"]={8058,61,19,33},["paragonsofpowervindicatorsbelt"]={8078,61,19,33},["paragonsofpowervindicatorsbreastplate"]={8079,61,19,33},["pariahsinstructions"]={7067,48,2100,2100},["particularletter"]={80700,60,1519,1519},["partsforkravel"]={1112,36,400,17},
["partsofswarm"]={1184,35,400,400},["partyliketheresnotomorrow"]={41223,6,0,5225},["passagetobootybay"]={1040,30,331,17},["passingburden"]={3448,52,1537,1537},["passingwordofthreat"]={726,40,3,1537},["pastendeavors"]={5057,60,361,618},["pathofdefense"]={1498,10,40005,14},
["pathofrighteous"]={8301,60,1377,1377},["pathwayopened"]={41372,60,2562},["patienceiskey"]={40801,26,331,331},["patrollingwestfall"]={102,14,40,40},["patrolschedules"]={330,37,33,33},["patternenchantedarmorkit"]={40875,60,0,616},["pawncapturesqueen"]={4507,54,440,490},
["pawnoneternalboard"]={8519,60,1377,1941},["peacecomesatprice"]={50330,60,0,5130},["pearldiving"]={705,37,3,33},["pebbletopickwiththem"]={40367,20,17,17},["peculiartreants"]={41214,6,0,5225},["peculiarwontevencutit"]={40538,52,46,46},["peonsburden"]={2161,5,14,14},
["peonswardrobemakeover"]={70026,30,331,331},["peoplesmilitia"]={14,17,40,40},["perenoldetiara"]={543,40,1519,36},["perfectpoison"]={9023,60,1377,3429},["perfectstout"]={315,9,1,1},["perfectyetihide"]={7738,48,357,357},["pestcontrol"]={41211,20,406,406},
["pesterhidepests"]={40081,17,85,85},["pesteringpesterhide"]={40082,20,85,11},["pettysquabbles"]={2783,57,4,8},["pickingside"]={40620,35,405,405},["piecesfallingintoplace"]={41651,51,16,16},["piedelivery"]={55208,25,0,11},["pieforbilly"]={86,6,12,14},
["piercingveil"]={1470,4,40004,85},["pilotsrevenge"]={417,11,1,1},["pinchofsalt"]={80384,6,14,14},["pinchofvenom"]={40207,41,8,8},["piratehatsahoy"]={8365,45,440,440},["pitchtent"]={70049,40,3,3},["pitifulwork"]={41154,1,0,5536},
["plaguedhatchlings"]={5529,58,2057,2057},["plaguedlands"]={2118,14,148,148},["plagueheartbelt"]={9109,60,3456,3456},["plagueheartbindings"]={9110,60,3456,3456},["plagueheartcirclet"]={9105,60,3456,3456},["plagueheartgloves"]={9108,60,3456,3456},["plagueheartleggings"]={9104,60,3456,3456},
["plagueheartring"]={41416,60,0,4012},["plagueheartrobe"]={9103,60,3456,3456},["plagueheartsandals"]={9107,60,3456,3456},["plagueheartshoulderpads"]={9106,60,3456,3456},["plagueuponthee"]={6390,55,28,139},["plainletter"]={41230,1,0,5225},["plainsrunning"]={3581,60,1638,17},
["plainstridermenace"]={844,12,17,17},["plansbloodybeltbuckle"]={41129,60,0,33},["plansdreamsteelbeltbuckle"]={41111,60,0,616},["plansornatebloodstonedagger"]={41119,60,0,33},["plantingheart"]={941,12,141,141},["platinumdiscs"]={2440,47,1638,1337},["pleatoalliance"]={634,31,11,11},
["pledgeofsecrecy"]={3642,47,40014,33},["plightofsandfury"]={40526,48,40015,440},["plunderingplunderers"]={2381,18,40011,17},["poisonedwater"]={6804,56,16,16},["poisonwater"]={748,5,215,215},["polarbracers"]={9241,60,3456,3456},["polargloves"]={9242,60,3456,3456},
["polartunic"]={9243,60,3456,3456},["polearmpolearm"]={41534,58,17,17},["polymorphenslavement"]={40513,11,14,14},["pooloftears"]={1424,43,8,8},["pooroldblanchy"]={151,14,40,40},["portablepowersource"]={8925,60,440,46},["portalsoflegion"]={5581,38,405,405},
["portentsofuldum"]={2965,50,1638,1537},["portingtogoldshire"]={80209,5,1519,5225},["potentialclue"]={55218,24,0,11},["poundingbrain"]={80398,30,0,33},["powdertoironband"]={302,15,38,1537},["powerinuldaman"]={1956,40,40010,1337},["powerofaqua"]={40792,25,17,331},
["powerofgoddess"]={41745,60,10,616},["powerofpine"]={8373,60,40002,267},["poweroverpoison"]={6130,14,40018,215},["powersbelow"]={968,20,148,1537},["powersbeyond"]={40995,44,722,722},["powerstones"]={2418,36,1517,1337},["powertakenpowergiven"]={80360,60,0,440},
["powertodestroy"]={5725,16,2437,2437},["practicalprey"]={817,8,14,14},["prayertoelune"]={3378,50,51,51},["precariouspredicament"]={4121,58,1584,25},["preparation"]={41281,48,3,2100},["preparationforceremony"]={744,11,1638,215},["preparationfordivination"]={40561,35,15,45},
["preparationsforadventure"]={55200,26,0,11},["preparingforwar"]={40017,35,45,45},["preservingknowledge"]={540,38,1519,36},["pressureiskey"]={40807,26,331,331},["prettyboyduncan"]={610,39,33},["preventativeantidote"]={40499,54,46,46},["preventingpoison"]={60134,15,17,17},
["preventivestrike"]={60115,5,220,215},["priceofcowardice"]={40811,31,1657,141},["priceofinformation"]={80707,60,0,11},["priceofleadership"]={40805,30,1657,141},["priceofshoes"]={118,18,44,44},["pricolichgnarlmoon"]={41384,60,10,3457},["pricolichlycan"]={41386,60,10,616},
["prideofdwarves"]={40105,60,8,8},["pridewingsofstonetalon"]={1134,21,331,406},["priestsletter"]={80213,1,0,38},["princessmustdie"]={88,9,12,12},["princesssaved"]={4004,60,1584,1637},["princessssurprise"]={4363,59,1584,1537},["princesstrapped"]={642,37,45,45},
["principalsource"]={6127,14,40018,493},["prisonbreakin"]={544,34,267,36},["prisonsbindings"]={7581,60,40004,4},["prisonscasing"]={7582,60,40004,618},["pristinegorillapelt"]={40329,40,33,33},["pristinespidersilk"]={1940,26,40010,10},["pristineyetihide"]={7735,48,357,357},
["prodigallich"]={405,8,85,85},["prodigallichreturns"]={411,12,85,85},["professormalkovich"]={50000,6,40011,1497},["professorpapucho"]={50003,6,40011,1537},["profitableacquisition"]={40130,18,17,17},["profitableactivation"]={40133,55,17,17},["programmer"]={40747,10,0},
["proof"]={41389,58,17,17},["proofofdeed"]={3182,48,38,1537},["proofofdemise"]={374,7,85,85},["proofoflife"]={8946,60,139,5225},["properframing"]={41145,44,47,267},["properstring"]={7635,60,40016,2159},["prophecyofmosharu"]={3527,47,978,1176},
["prospectoffaith"]={724,40,3,3},["protectfrontier"]={52,10,12,12},["protectingaeriepeak"]={40664,46,47,47},["protectingcrops"]={40449,34,45,45},["protectingfreshblood"]={40505,56,46,46},["protectingherd"]={314,12,1,1},["protectingshipment"]={309,15,38,38},
["protectingweak"]={40624,36,405,405},["protectkanatigreycloud"]={4966,28,400,400},["protectkaya"]={6523,18,406,406},["prototypethievery"]={55005,18,1581,14},["proveyourworth"]={421,10,130,130},["providingbalanceddiet"]={80210,4,1519,38},["provingallegiance"]={409,12,85,85},
["provinggrounds"]={7162,60,2597,2597},["provingpoint"]={41140,46,47,47},["provingyourworth"]={323,28,10,10},["provisionsforrefugees"]={41188,1,0,5225},["provisionsforthalanaar"]={41039,42,357,357},["prowlersofbarrens"]={903,15,17,17},["psychometricreading"]={4130,44,357,357},
["publicservant"]={433,11,1,1},["puffingpeace"]={40001,10,14,14},["pumpkinthieves"]={60041,8,12,12},["pupiloncemore"]={41551,44,3,405},["purifieddreamessence"]={40906,60,0,490},["purifiedexclamation"]={4442,54,361,361},["purplelotuscollection"]={41068,60,2677,490},
["pursuingharmony"]={40697,20,406,406},["pusillinandelderazjtordin"]={7441,58,2557,357},["putherdown"]={4701,59,1583,1583},["putridtask"]={404,6,85,85},["pyrewoodambush"]={452,15,130,130},["qualitytimewithblackthorn"]={40848,46,0,5179},["quarksjustice"]={80310,14,1637,1637},
["quarksshack"]={80305,10,1637,1637},["quartermaster"]={7121,60,2597,2597},["quellsilverwingusurpers"]={8294,60,3277,17},["quelluprising"]={387,26,717,717},["questforantidote"]={40585,5,215,215},["questforpie"]={55207,25,0,11},["questioningreethe"]={1273,37,15,15},
["quillboarsuspects"]={40549,35,15,17},["rabinesaturna"]={6762,55,1657,215},["raceagainsttime"]={50316,60,0,400},["raenescleansing"]={1055,28,331,331},["rageofages"]={2582,50,4,4},["rageofblood"]={7563,58,40004,618},["ragingoceansblue"]={40628,41,405,405},
["ragnarthunderbrew"]={4128,55,1584,4},["raidersnewmount"]={40497,56,46,46},["raidersraid"]={40498,58,1583,46},["raidersrevenge"]={40496,56,46,46},["raidinglessertribes"]={40618,35,405,405},["raidingquellithienlodge"]={80303,60,0,139},["raidonkolkar"]={1384,32,405,405},
["raisingspirits"]={675,34,45,45},["raleighandundercity"]={441,16,130,85},["ramaladnisicygrasp"]={9230,60,3456,46},["ramolusgem"]={40518,12,1537,1},["rampaginggiants"]={5981,60,618,618},["rampantgroveweald"]={40089,33,0,5077},["rampantweeds"]={41363,20,718,718},
["ramstein"]={6163,60,2017,139},["rangerlordsbehest"]={6133,60,139,139},["rangersletter"]={80211,1,0,38},["ransm"]={8598,60,440,440},["raptorhorns"]={865,18,17,17},["raptormastery"]={197,43,33,33},["raptorridge"]={40682,25,11,11},
["raptorthieves"]={869,13,17,17},["rarerequest"]={80736,63,40002},["ratamongthem"]={40643,26,406,406},["ratcatching"]={416,11,38,38},["rattlingrattlecages"]={3901,3,154,85},["ravagedcaravan"]={751,8,215,215},["ravencroftsambition"]={41112,45,0,5208},
["ravenhill"]={163,20,10,10},["ravenstalkeramulet"]={41613,60,41,3457},["ravenstalkerboots"]={41612,60,41,3457},["ravenstalkerchest"]={41610,60,41,3457},["ravenstalkerhelm"]={41608,60,41,3457},["ravenstalkerlegs"]={41611,60,41,3457},["ravenstalkershoulderguards"]={41609,60,41,3457},
["ravenwoodkeep"]={40967,44,0,5179},["ravenwoodscepter"]={40994,46,0,5179},["razlikstools"]={55000,9,14,14},["razorfengrog"]={41555,30,17,491},["razorsedge"]={40659,40,3,33},["razzarileaders"]={40195,54,0,408},["razzarimadness"]={40194,53,0,408},
["razzericstweaking"]={1187,41,400,15},["reagentsforreclaimersinc"]={1467,40,405,405},["realthreat"]={680,40,45,45},["reappearanceofdamned"]={40139,17,85,85},["rearguardpatrol"]={356,11,85,85},["reasonforseason"]={7062,60,1537,1537},["reassembler"]={80400,40,3,3},
["reassignment"]={563,32,267,267},["receptionfromtyrande"]={1081,28,406,1657},["recipefordeath"]={451,18,130,130},["recipegurubashigumbo"]={80738,60,0,33},["recipeofdreamshardelixir"]={40873,60,0,616},["recipeofkaldorei"]={4161,7,40021,141},["recipeofluciditypotion"]={40874,60,0,616},
["reclaimedtreasures"]={2342,43,1517,1337},["reclaimersbusinessindesolace"]={1453,33,1537,1537},["reclaimingcharredvale"]={1059,27,406,406},["reclaiminggoods"]={281,25,11,11},["reclaimingtinkersparktransponder"]={40057,54,16,16},["recoveringarmorysupplies"]={40429,48,4,8},["recoveringvaultshackles"]={41138,63,0,5087},
["recoverkey"]={7846,51,47,45},["redbrandarchive"]={40605,43,3,3},["redcrystal"]={4811,14,148,148},["redemption"]={5742,56,139,28},["redemptionboots"]={9047,60,3456,3456},["redemptiongirdle"]={9049,60,3456,3456},["redemptionhandguards"]={9048,60,3456,3456},
["redemptionheadpiece"]={9045,60,3456,3456},["redemptionlegguards"]={9044,60,3456,3456},["redemptionspaulders"]={9046,60,3456,3456},["redemptiontunic"]={9043,60,3456,3456},["redemptionwristguards"]={9050,60,3456,3456},["redflagoversea"]={40172,48,35,33},["redhops"]={41559,40,17,3},
["redistribution"]={41166,7,0,5536},["redleatherbandanas"]={153,15,40,40},["redlinengoods"]={83,9,12,12},["redmessenger"]={382,5,154,85},["redridgegoulash"]={92,18,44,267},["redridgerendezvous"]={2281,16,40011,1519},["redsilkbandanas"]={214,17,1581,5138},
["redskiesofdurotar"]={40298,10,14,400},["reducedtomadness"]={55032,24,331,331},["refuelforzapping"]={7726,55,357,357},["refuelingblade"]={40288,52,16,361},["refugeesnomore"]={41187,1,0,5225},["refugeesquandary"]={3361,3,132,1},["regthardeathgate"]={1361,32,405,17},
["reinforcingsepulcher"]={70040,16,130,1497},["rejoldsnewbrew"]={415,10,1,1},["releasethem"]={3372,52,51,51},["relicsofwakening"]={483,9,141,141},["reliefandreprise"]={55023,39,0,8},["reliquaryofpurity"]={5527,60,493,1377},["relliangreenspyre"]={922,7,141,141},
["remainsoftreylightforge"]={5385,57,361,361},["rememberalteracvalley"]={8375,60,2839,1537},["reminiscentofsteel"]={41368,39,796,5153},["remorsefulhighborne"]={5252,58,618,618},["removingleperleadership"]={40857,13,1,1},["removingvitalassets"]={40500,58,46,46},["rendezvouswithinfiltrator"]={40847,45,0,5179},
["renewedteachings"]={41552,48,3,405},["repairfizzdisk"]={40066,54,16,33},["replacementphial"]={3375,42,1517,405},["reportbacktofizzlebub"]={1122,44,400,400},["reportforgnomeregan"]={40047,50,16,16},["reportfrombixxle"]={40766,56,0,440},["reportfromblastedland"]={40424,55,17,8},
["reportfromburnside"]={40433,45,4,4},["reportfromfalgran"]={40548,35,15,15},["reportfromgnomeregan"]={40048,50,16,16},["reportfromsnowbeard"]={55205,28,11,11},["reportfromstoutfist"]={55204,28,11,11},["reportingourvictory"]={40810,30,331,1657},["reports"]={291,10,1,1537},
["reportsofdustwallow"]={40415,37,15,15},["reporttoanastasia"]={1959,15,40010,1637},["reporttoarchdruid"]={40296,50,16,16},["reporttocaptainstoutfist"]={473,28,11,11},["reporttocommandergrushak"]={70023,30,331,331},["reporttodarkshire"]={70056,27,10,10},["reporttodoren"]={331,37,33,33},
["reporttodreamwind"]={41026,60,0,4012},["reporttogeneralkirika"]={9416,60,1377,1377},["reporttogoldshire"]={54,5,9,12},["reporttogryanstoutmantle"]={109,10,12,40},["reporttohadrec"]={448,16,130,130},["reporttohelgrum"]={1420,40,3,3},["reporttoironforge"]={301,15,38,1537},
["reporttojennea"]={1919,15,40010,1519},["reporttokadrak"]={6542,19,406,17},["reporttoliviastrongarm"]={40846,45,0,5179},["reporttolukeagamand"]={40844,45,0,5179},["reporttomarshalbluewall"]={9415,60,1377,1377},["reporttomolk"]={40506,56,46,46},["reporttomountaineerrockgar"]={468,21,11,38},
["reporttonordanaar"]={40983,60,0,618},["reporttoorgnil"]={823,7,14,14},["reporttosenjinvillage"]={805,5,363,14},["reporttosparkwater"]={55017,48,16,16},["reporttothomas"]={71,10,12,12},["reporttozor"]={1262,40,15,1637},["repoweringchaser"]={40450,34,45,46},
["requisitioningcore"]={40131,45,0,1337},["rescue"]={498,22,267,267},["rescuefromjaedenar"]={5203,55,361,361},["rescueooxfe"]={2767,45,357,357},["rescueooxhl"]={836,48,47,47},["rescueooxtn"]={648,48,440,440},["researchingcorruption"]={1275,24,719,719},
["restandrelaxation"]={2158,5,12,12},["restinginpieces"]={460,17,130,130},["restlessautumn"]={41246,8,0,5225},["restlesssouls"]={5282,60,2017,5225},["restockingstockings"]={41271,35,0,5130},["restoration"]={41312,60,2562},["restoringleylines"]={40253,55,16,16},
["restoringnecklace"]={2204,44,1517,1337},["resupplyingexcavation"]={273,15,38,38},["retakingroadways"]={55201,26,11,11},["rethbangauntlet"]={1699,22,40005,44},["rethbanore"]={347,24,1519,44},["rethresstidescepter"]={40039,56,16,16},["retributionoflight"]={5204,57,361,361},
["retrievalformauren"]={1078,26,406,406},["returnbook"]={366,8,85,85},["returncomb"]={154,24,10,10},["returningcleansedorb"]={4976,40,40004,15},["returninghome"]={5633,10,40017,12},["returninglostsatchel"]={5724,16,2437,2437},["returningproperty"]={55040,35,279,36},
["returningtojanathos"]={40232,38,8,1519},["returnofkorrak"]={7381,60,2597,2597},["returnofring"]={2949,34,133,721},["returnofstormstout"]={40685,60,17},["returnstatuette"]={286,25,11,11},["returntoapothecaryzinge"]={864,46,1497,440},["returntobellowfiz"]={320,8,1,1},
["returntoblastedlands"]={3626,58,33,8},["returntobodley"]={8996,60,25,1583},["returntobrock"]={6392,10,38,1537},["returntobulwark"]={5236,58,28,28},["returntochillwindcamp"]={5226,58,28,28},["returntochromie"]={5941,60,139,28},["returntocorporalkaleb"]={622,37,33,33},
["returntocrossroads"]={6386,10,17},["returntodeliana"]={8977,60,1537,1537},["returntodenalan"]={2498,9,141,141},["returntofeathermoonstronghold"]={2867,43,357,357},["returntofelzerul"]={1444,44,47,8},["returntohinterlands"]={2993,47,47,267},["returntoironforge"]={2977,50,1537,1537},
["returntojahan"]={6364,10,17,17},["returntojitters"]={240,20,10,10},["returntokheyna"]={80409,46,40015,440},["returntokristoff"]={346,24,1519,1519},["returntolewis"]={6285,10,40,1519},["returntomackinley"]={607,41,33,33},["returntomagistrate"]={360,9,85,85},
["returntomarleth"]={311,7,1,1},["returntomarsh"]={1953,40,40010,15},["returntomilton"]={542,38,1519,267},["returntomokvar"]={8978,60,1637,440},["returntonarain"]={8587,60,440,440},["returntonathanos"]={6147,60,139,4012},["returntonessa"]={6343,10,148,141},
["returntoonu"]={950,17,148,148},["returntopodrig"]={6324,10,130,1497},["returntoport"]={55051,45,0,14},["returntoprimaltorntusk"]={7847,51,47,47},["returntoquinn"]={430,11,130,130},["returntosven"]={268,25,10,10},["returntotharg"]={40404,35,15,15},
["returntothunderbluff"]={2967,50,1638,405},["returntotinkee"]={4810,54,618,46},["returntotroyas"]={2943,48,357,141},["returntotymor"]={3461,52,1537,16},["returntovahlarriel"]={1440,33,405,405},["returntoverner"]={119,18,44,12},["returntowitchdoctoruzeri"]={3122,45,357,357},
["reunitetribetribe"]={40679,23,11,11},["revengeafterdeath"]={40974,47,0,5179},["revengeofdeep"]={41158,4,0,5536},["revengeofgann"]={849,26,17,17},["revengeongamemasters"]={80606,60,0,5130},["reverencetoancestors"]={41655,60,0,1583},["rhapsodyshindigger"]={1451,43,47,267},
["rhapsodyskalimdorkocktail"]={1452,43,47,357},["rhapsodystale"]={1469,43,47,1519},["ribblyscrewspigot"]={4136,53,1584,1584},["richandconvicted"]={39984,30,1637,14},["ridetoironforge"]={6391,10,38,1537},["ridetoorgrimmar"]={6384,10,17,17},["ridetothunderbluff"]={6362,10,17,17},
["ridetoundercity"]={6323,10,130,130},["riftfatiguebody"]={41322,52,16,16},["riftfatiguemind"]={41321,52,16,16},["riftwalkerscane"]={41323,54,0,16},["rightfromundermygreennose"]={41184,8,0,5536},["rightfulheir"]={40098,17,85,85},["rightpieceoflordvalthalaksamulet"]={8992,60,2057,2017},
["rigwars"]={2841,35,133,1637},["rilligreasygob"]={3923,18,17,17},["ringofcryptstalker"]={41632,60,25,4012},["ringofdreadnaught"]={41433,60,0,4012},["ringofdreamwalker"]={41399,60,0,4012},["ringofearthshatterer"]={41517,60,0,4012},["ringofeternaljustice"]={8703,60,3428,3429},
["ringoffaith"]={41450,60,0,4012},["ringofgatheringstorm"]={8698,60,3428,3429},["ringofinfinitewisdom"]={8697,60,3428,3429},["ringofredemption"]={41484,60,0,4012},["ringofunspokennames"]={8702,60,3428,3429},["rinjiistrapped"]={2742,47,47,47},["rinjissecret"]={2782,47,47,47},
["rippledelivery"]={81,48,1637,47},["ripplerecovery"]={650,48,1637,47},["risenoilblazes"]={80103,4,0},["riseobsidion"]={3566,52,51,51},["riseofmachines"]={4063,58,1584,46},["riseofsilithus"]={4267,46,357,440},["risethunderfury"]={7787,60,40023,357},
["riteofpassage"]={41144,44,47,47},["riteofstrength"]={757,4,220,215},["riteofvision"]={772,7,215,215},["riteofwisdom"]={773,10,215,17},["ritesofearthmother"]={776,14,215,215},["ritualofdivination"]={40562,35,15,15},["ritualoffarseer"]={40293,50,16,16},
["ritualsecretsofwitherbark"]={40607,45,47,47},["ritualsofpower"]={1951,40,40010,5135},["rivalpresence"]={40458,54,0,5103},["riverpawgnollbounty"]={11,10,12,12},["rizzlesschematics"]={1194,41,400,400},["roadtodarnassus"]={487,8,141,141},["roadtosalvation"]={2218,10,40011,1537},
["roastedtauren"]={40006,60,2597,2597},["robbsreport"]={55220,24,0,11},["robeoffaith"]={9111,60,3456,3456},["robesofguardian"]={41622,60,41,3457},["robesofpestilence"]={41598,60,41,3457},["robesoftalon"]={41580,60,41,3457},["roboticsexpert"]={41155,2,0,14},
["rocketcarparts"]={1110,31,400,400},["rodsforpellars"]={41037,44,0,5179},["rogueheights"]={40083,17,85,85},["roguesdeal"]={590,5,154,85},["rollbones"]={3882,51,490,490},["rommathsaviour"]={41251,9,0,5225},["rommathtraitor"]={41239,9,0,5225},
["rootingoutcorruption"]={40203,11,141,141},["rootingoutevil"]={40147,37,0,5077},["rootofallevil"]={8481,60,1769,618},["rootsamples"]={866,16,40003,17},["rosesarereddragonsareblue"]={40648,44,3,3},["rosewickworries"]={40933,42,0,5179},["rothideclues"]={439,16,130,130},
["rothideichor"]={443,17,130,130},["rothideorigins"]={444,17,130,130},["rothlenfamilybrooch"]={41000,60,2017,2017},["rotteneggs"]={8322,60,40002,267},["rottenrenown"]={40149,51,0,409},["royalheist"]={41113,45,0,5208},["royalrescue"]={4003,59,1584,1637},
["rudeawakening"]={363,1,154,85},["ruinedkegs"]={8409,60,40002,267},["ruinsofisildien"]={41043,45,357,357},["ruinsofkeltheril"]={5244,56,618,618},["ruinsofsolarsal"]={2866,43,357,357},["ruinsofstardust"]={1034,23,331,331},["rumormonger"]={1115,36,400,400},
["rumorsforkravel"]={1117,36,400,33},["rumorsofgreatfireplume"]={40159,55,0,490},["rumorsofhateforgebrew"]={40490,54,0,5103},["runecloth"]={6031,55,1216,2597},["runedscroll"]={3513,25,17,331},["runeinscribednote"]={3093,1,40006,215},["runeinscribedparchment"]={3089,1,40006,14},
["runeinscribedtablet"]={3084,1,40006,14},["runeofblaz"]={41317,60,0,2717},["runestonecurse"]={40988,60,0,616},["runestoneofcenarius"]={40984,60,0,616},["runestonereactivation"]={40989,60,0,616},["runestoneritual"]={40985,60,0,616},["runestonescepter"]={40990,60,0,618},
["runntumrumandperfectbrew"]={41561,56,17},["ruuzel"]={1009,25,331,331},["sacredburial"]={833,10,215,215},["sacredcloth"]={6032,55,1216,618},["sacredfire"]={5062,27,400,400},["sacredflame"]={1197,29,1638,331},["sacredwatersofeldrethalas"]={40382,46,0,357},
["safetyfirst"]={1189,41,400,440},["safetyforrefugees"]={41189,2,0,5225},["sailorsinnovation"]={40142,51,0,409},["sailorslove"]={40661,10,1519,1519},["saltflatvenom"]={1104,30,400,400},["saltofscorpok"]={2586,50,4,4},["saltspittleraiders"]={40230,21,331,331},
["salvagingconvoys"]={41164,7,0,5536},["salvagingcrops"]={40608,18,406,406},["samophlange"]={902,16,17,17},["samophlangemanual"]={3924,19,17,17},["sampleforglanthas"]={41023,60,0,616},["sampleforhelbrim"]={1358,15,1497,1497},["sampleofslime"]={4293,52,1497,361},
["sandalsoffaith"]={9115,60,3456,3456},["sandfuryredemptioni"]={40522,45,40015,440},["sandfuryredemptionii"]={40523,45,40015,440},["sandfuryredemptioniii"]={40524,45,40015,400},["sandinbulk"]={40341,60,2300,5204},["sandincracks"]={41287,40,3,3},["sanvcharm"]={40027,39,8,8},
["saptheirstrength"]={80397,24,0,406},["saraballoosplea"]={683,30,1537,1537},["sarkoth"]={804,5,363,17},["sarksgrudge"]={40355,48,33,33},["sathrahssacrifice"]={2520,12,1657,141},["satisfactionforshak"]={55042,20,14,406},["satyrhooves"]={1842,30,40005,331},
["satyrhorns"]={6441,26,331,331},["satyrslaying"]={1032,32,331,331},["savageflora"]={9136,60,139,490},["savageguardarcanumoffocus"]={9210,60,1977,1977},["savageguardarcanumofprotection"]={9208,60,1977,1977},["savageguardarcanumofrapidity"]={9209,60,1977,1977},["savetechbotsbrain"]={2922,26,133,1},
["savingbestforlast"]={9014,60,1637,1537},["savingloresh"]={41030,60,493,493},["savingshadowtooth"]={41095,60,0,616},["savingsharpbeak"]={2994,51,47,45},["savingyenniku"]={592,46,33,33},["saviorofkalimdor"]={8802,60,3428,5147},["scaldingmornbrewdelivery"]={3364,5,132,1},
["scalebaneridge"]={40657,43,3,3},["scalesofwar"]={40794,30,17,1519},["scalingridge"]={40655,43,3,3},["scarabshells"]={2865,45,978,1176},["scaringshaky"]={606,41,33,33},["scarletaid"]={80708,60,1519,11},["scarletcorruption"]={40935,44,796,5163},
["scarletcrusade"]={381,4,154,85},["scarletdiversions"]={5096,53,28,85},["scarletoracledemetria"]={6148,60,139,139},["scarletschnapps"]={41557,40,17,5163},["scarletsubterfuge"]={5862,60,28,28},["scarletwithrage"]={60117,29,1497,1497},["scarsofpast"]={40109,60,17,331},
["scavengingdeathknell"]={3902,3,154,85},["scentoflarkorwi"]={4291,53,490,490},["scepterofcelebras"]={7046,49,2100,2100},["scepterofcouncil"]={8352,60,1377,1377},["scepterrodofmedivh"]={41369,60,2562},["sceptreoflight"]={5741,33,405,405},["schematicrun"]={55209,24,11,11},
["scholomance"]={5533,55,28,28},["scoretosettle"]={41217,7,0,139},["scourgecauldrons"]={5228,53,28,28},["scourgeofdarrowshire"]={41537,58,17,17},["scourgeofdowns"]={3523,37,722,722},["scouringdesert"]={9422,60,1377,1377},["scouringgreyshire"]={40830,42,0,5179},
["scrapforager"]={40491,54,46,1584},["scratchingeachothersback"]={80314,10,1637,2041},["screecherspirits"]={3520,44,440,440},["scribbledcookingnotes"]={40998,60,0,3457},["scrimshankredemption"]={10,48,440,440},["scrollfrommauren"]={1075,21,406,1519},["scrollofcowportal"]={40056,60,0,12},
["scrounging"]={733,40,3,3},["scryinggogglesnoproblem"]={8578,60,2717,2717},["scryingmaterials"]={8807,60,1377,46},["scytheofelune"]={1043,30,331,10},["scytheofgoddess"]={41394,60,10,3457},["scytheofunseenpath"]={8712,60,3428,3429},["sealedazurebag"]={8234,52,40011,36},
["sealofascension"]={4743,60,1583,1583},["searchcontinues"]={284,25,11,11},["searchforblade"]={40286,56,16,16},["searchforedge"]={40287,52,16,16},["searchforgrave"]={40555,35,15,15},["searchforincendicite"]={466,22,1,11},["searchfortyranis"]={1439,33,405,405},
["searchingforlostsatchel"]={5722,16,2437,2437},["searchingfornewmethods"]={55007,47,14,14},["searchingwreckage"]={41171,6,0,5536},["searchmorehovels"]={285,25,11,11},["seasonedwolfkabobs"]={90,25,10,10},["secondmeeting"]={40564,35,15,15},["secondrebellion"]={203,33,33,33},
["secondwave"]={40665,10,14,17},["secretadmirer"]={40300,12,141,141},["secretcommunication"]={8318,60,1377,1377},["secretofcircle"]={3447,51,1417,1477},["secretrecipe"]={41001,60,0,3457},["secretsofcolossusashi"]={8857,60,1377,1377},["secretsofcolossusregal"]={8858,60,1377,1377},
["secretsofcolossuszora"]={8859,60,1377,1377},["secretsofdarkforging"]={40236,58,139,139},["secretsofdarkirondesecrator"]={40761,60,0,440},["secretsofqiraji"]={8784,60,3428,5147},["securecargo"]={80405,41,15,15},["securingdarnassus"]={40205,11,141,141},["securinggilneasi"]={40926,44,0,5179},
["securinggilneasii"]={40927,44,0,5179},["securingkeep"]={39992,40,45,45},["securinglines"]={835,11,14,14},["securingnorthpoint"]={40418,37,15,15},["securingroads"]={39991,40,45,45},["securingsupplylines"]={8280,55,1377,1377},["seedoflife"]={7066,51,2100,493},
["seeingwhathappens"]={2966,50,1638,215},["seekdryads"]={41250,7,0,5225},["seekersdemise"]={70033,30,331,17},["seekingacceptance"]={40364,11,215,215},["seekingjusticeorvengeance"]={80706,60,0,11},["seekingkorgem"]={1442,22,40009,331},["seekinglostanswers"]={55039,35,279,36},
["seekingseekers"]={41297,48,4,4},["seekingspiritualaid"]={5158,52,361,361},["seekingstrahad"]={3001,30,40004,1497},["seekingwisdom"]={269,29,10,1519},["seekoutsi"]={2205,10,40011,1519},["seekredemption"]={489,7,141,141},["seepingcorruption"]={3569,52,1497,1497},
["sellingfish"]={127,21,44,44},["senatorialrevenge"]={40464,56,1584,1584},["senirsobservations"]={420,5,132,1},["sentinelsrightfulsuspicion"]={41077,54,361,361},["sentinelssuddensuspicion"]={41072,52,361,361},["separationanxiety"]={7849,50,47,47},["serenabloodfeather"]={876,20,17,17},
["sergradarkthorn"]={860,10,17,17},["serpentbloom"]={60125,18,718,718},["serpentroot"]={41045,45,0,5179},["serpentwild"]={4865,26,400,400},["setthemablaze"]={3463,52,51,51},["severedhead"]={1239,35,15,15},["shadeflayertribalbracelets"]={41019,60,0,616},
["shadeofelura"]={1686,10,40005,148},["shadoweaver"]={3379,50,40019,51},["shadowedspectre"]={41339,60,0,616},["shadowforgecaptain"]={40650,40,3,3},["shadowforgemenace"]={40649,39,3,3},["shadowguard"]={9213,60,139,4012},["shadowmagic"]={115,23,44,44},
["shadowofpast"]={393,29,1519,1519},["shadowonplateau"]={80107,6,0},["shadowshardfragments"]={7070,42,2100,2100},["shadowsofdoom"]={9085,60,40027,4012},["shadowswornaltar"]={40422,55,17,4},["shadowswornenemy"]={40421,53,4,4},["shadowswornpendantbounty"]={40431,54,4,4},
["shadowwell"]={80291,30,0,130},["shadowyfigure"]={262,25,10,10},["shadowysearchcontinues"]={265,25,10,10},["shadumbrashead"]={24,27,331,331},["shadyletter"]={80215,1,0,38},["shakingcoldarm"]={55013,13,17,14},["shameneveragain"]={41054,28,400,400},
["sharddeharmonization"]={41128,60,0,616},["shardharmonization"]={40813,60,0,616},["shardoffelhound"]={4962,40,40004,17},["shardofinfernal"]={4963,40,40004,17},["shardsoffelvine"]={5526,60,493,493},["sharingknowledge"]={8313,57,40021,1377},["sharingland"]={745,6,215,215},
["sharksarefriendsnotfood"]={80383,35,40015,440},["sharptalonsclaw"]={2,30,331,331},["shatteredhand"]={1963,13,40011,17},["shatterednecklace"]={2198,41,1517,1537},["shatteredsalute"]={2460,20,40011,1637},["shazknock"]={55049,18,14,17},["shellcoins"]={80381,35,40015,440},
["shellshields"]={40242,53,16,16},["shesellsseashells"]={41176,7,0,5536},["shieldsmith"]={1702,22,40005,1519},["shieldsowner"]={40554,35,15,15},["shiftymerchant"]={8928,60,440,618},["shimmeringfrond"]={931,10,141,141},["shimmerstout"]={413,10,1,1},
["shipmentsontime"]={40741,56,0,5121},["shipmenttostormwind"]={61,7,12,1519},["shipschedules"]={2876,45,440,440},["shizzlesflyer"]={4503,51,490,490},["shortfiveminuteadventure"]={55012,13,17,40},["shortincubation"]={3842,47,357,400},["shoulderguardsofbrotherhood"]={41591,60,41,3457},
["shoulderguardsoflightbringer"]={40299,60,618,2017},["shoulderguardsofpestilence"]={41597,60,41,3457},["shoulderguardsoftalon"]={41579,60,41,3457},["shoulderofprophecy"]={41460,60,25,25},["shoulderpadsoffaith"]={9114,60,3456,3456},["shouldersofguardian"]={41621,60,41,3457},["shouldersofmight"]={41443,60,25,2717},
["shouldersoftenstorms"]={41502,60,25,25},["shouldersoftranscendence"]={41452,60,25,25},["shouldersofwrath"]={41435,60,25,25},["showyourwork"]={3643,47,40014,33},["shreddingmachines"]={1068,23,406,406},["shredofhope"]={4282,58,1584,1584},["shroudedinnightmare"]={8446,60,40001,493},
["shroudofinfinitewisdom"]={8689,60,3428,3429},["shroudofunspokennames"]={8694,60,3428,3429},["shutupanddancewithme"]={41569,1,17,17},["shyrotam"]={5056,60,618,618},["siseven"]={2300,16,40011,1519},["sickleofunyieldingstrength"]={8558,60,3428,3429},["sigilofarathor"]={643,41,45,45},
["sigilofleeching"]={40911,60,0,5097},["sigilofpenetration"]={40912,60,0,5097},["sigilofquickness"]={40910,60,0,5097},["sigilofstrom"]={639,37,45,45},["sigilofthoradin"]={641,40,45,45},["sigiloftrollbane"]={644,42,45,45},["signalforpickup"]={3451,52,1537,1537},
["signetofdukes"]={8348,60,1377,1377},["signetofsilverlaine"]={40924,45,0,5179},["signetofunseenpath"]={8704,60,3428,3429},["signetofunyieldingstrength"]={8556,60,3428,3429},["signofhope"]={721,35,1517,3},["silvercovenant"]={41236,5,0,5225},["silverheart"]={4084,54,490,361},
["silverhops"]={41558,40,17,130},["simpleletter"]={3100,1,40005,12},["simplememorandum"]={3112,1,40005,1},["simplememory"]={70057,27,10,10},["simplenote"]={3091,1,40005,215},["simpleparchment"]={2383,1,40005,14},["simplerequest"]={8233,52,40011,1537},
["simplerune"]={3106,1,40005,1},["simplescroll"]={3095,1,40005,85},["simplesigil"]={3116,1,40005,141},["simplesubterfugin"]={2238,10,40011,1537},["simpletablet"]={3065,1,40005,14},["singedletter"]={41207,2,40004,14},["singingblueshards"]={605,35,33,33},
["singingcrystals"]={589,45,33,33},["siphoningoil"]={40644,25,406,406},["sirenscoral"]={8252,52,40010,16},["sisterpamela"]={5601,55,139,618},["skeletalfragments"]={5537,57,28,28},["skirmishatechoridge"]={21,5,9,12},["skulkrockcleanup"]={2877,48,47,47},
["skullrock"]={827,12,14,14},["skullsplittertusks"]={209,42,33,33},["skystormerproject"]={55016,51,16,16},["slakethatthirst"]={379,46,440,440},["slakingtheirthirst"]={80205,3,1519,38},["slaughteredlamb"]={1715,10,40004,1537},["slaughterforbrains"]={80408,46,40015,440},
["slayingbeast"]={5761,16,2437,2437},["sleeperhasawakened"]={5321,20,148,148},["sleepingdruid"]={2541,8,141,141},["sleepparalysis"]={40566,21,11,11},["sleepwalkingatday"]={40567,21,11,11},["smallmurlocinbigpond"]={40547,45,47,15},["smartdrinks"]={1491,18,718,718},
["smasherandtrampler"]={40432,53,4,8},["smashingsouthsea"]={40143,53,0,408},["smashsalttooth"]={55031,45,0,33},["smeltingdreamsteel"]={40886,60,0,616},["smeltonsmeltoff"]={2761,45,40008,33},["smithmathiel"]={1692,10,40005,141},["smokywoodpasturesthankyou"]={7045,60,40002},
["smolderingdreamessence"]={40905,60,0,616},["smolderingruinsofthaurissan"]={3702,54,1537,46},["smugglingale"]={40198,37,33,17},["snakestoneofshadowhuntress"]={5306,60,40008,1583},["snapjawsmon"]={7815,50,47,47},["snarlclaw"]={40945,44,0,5179},["snatchandgrab"]={2206,10,40011,1519},
["snickerfangjowls"]={2581,50,4,4},["snowballwarsepisodei"]={50319,60,0,5130},["snowballwarsepisodeii"]={50320,60,0,5130},["solomonslaw"]={91,23,44,44},["solutionisrighthere"]={41714,60,2562,3457},["solutionsontheirway"]={41170,5,0,14},["solutionstoarcaneresonance"]={41713,60,2562,3457},
["solutiontodoom"]={709,40,1517,1337},["solventspirit"]={818,7,14,14},["someassemblyrequired"]={577,36,33,33},["someonewithpigstongue"]={40574,35,17,15},["sonofcenarius"]={41340,60,0,616},["soothingspices"]={1218,35,15,405},["soothingturtlebisque"]={7321,31,40021,15},
["sorrowmossmushrooms"]={40077,37,8,8},["soulandalchemy"]={80726,60,1497,85},["soulboundkeepsake"]={5465,60,28,28},["sourcerevealed"]={9028,60,40002,1497},["southseafreebooters"]={887,14,17,17},["southseainterference"]={40144,54,0,408},["southsealosers"]={40182,52,0,408},
["southseareserve"]={40148,51,0,408},["southseasdelicacy"]={60155,39,33,408},["southseashakedown"]={8366,45,440,440},["southshore"]={538,38,1519,1519},["souvenirsofdeath"]={546,25,267,267},["sovereignimperative"]={7261,60,2597,36},["sovereignofdesolation"]={41577,60,2562},
["sparklematic"]={4602,30,133,721},["sparksprocketsguestofhonor"]={41105,53,17,1519},["speakersbetrayal"]={40021,36,45,45},["speakingoffortitude"]={343,24,1519,1519},["speakingwithganzulah"]={586,46,33,33},["speakingwithnezzliok"]={585,40,33,33},["speaktonafien"]={8462,55,361,618},
["speaktosalfa"]={8465,55,361,618},["speakwithanastasia"]={1881,10,40010,85},["speakwithbink"]={1879,10,40010,1537},["speakwithcoleman"]={1820,10,40005,85},["speakwithdeino"]={1943,26,40010,1637},["speakwithdillinger"]={1818,10,40005,85},["speakwithgramma"]={111,6,12,12},
["speakwithjennea"]={1860,10,40010,1519},["speakwithourquartermaster"]={7123,60,2597,2597},["speakwithprospectorstonehewer"]={7221,60,2597},["speakwithrenferrel"]={3221,12,130,130},["speakwithruga"]={1823,20,40005,215},["speakwithsevren"]={355,10,85,85},["speakwithshoni"]={2041,15,1537,1519},
["speakwiththungrim"]={1825,20,40005,17},["speakwithunthuwa"]={1883,10,40010,1637},["speakwithvoggahdeathgrip"]={7222,60,2597},["specialdeliveryforgaxim"]={1077,21,406,1519},["specialforces"]={574,38,33,33},["specialkindofsummon"]={70000,60,40010,1497},["specialtask"]={41073,52,361,361},
["spectralwine"]={41085,60,0,2017},["spidergod"]={2936,45,978,14},["spidermeatgood"]={40405,35,15,15},["spiritofboar"]={2584,50,4,4},["spiritofloresh"]={41029,60,493,440},["spiritsofsouthwind"]={1125,55,1377,1377},["spiritsofstonetalon"]={1061,17,406,1637},
["spirittotem"]={8412,52,40006,28},["spiritualdomination"]={2604,50,4,4},["spiritualguidance"]={40343,40,1637,215},["spiritualunrest"]={5535,47,16,16},["spitecrestdecursions"]={40947,42,0,5179},["spitecrestincursions"]={40946,42,0,5179},["spitefinbounty"]={40725,55,0,5121},
["splitbonenecklace"]={598,42,33,33},["spoilsleftbehind"]={40035,54,16,33},["spookylighthouse"]={1687,60,40020},["sprinklessecretingredient"]={2641,49,440,47},["sputtervalveconductor"]={40694,18,406,406},["sputtervalvefix"]={40695,18,406,17},["spyrevealed"]={329,37,33,33},
["squiremaltrake"]={3462,50,51,51},["staffmeeting"]={41519,58,17,17},["staffofeldara"]={40247,53,16,16},["staffofshinban"]={40853,45,0,5179},["staghelmsrequiem"]={7365,60,2597,2597},["stagnantoasis"]={877,16,17,17},["stagwoodgrasp"]={41058,60,0,616},
["stalkingfelstalkers"]={60147,4,363,14},["stalkingstalkers"]={7828,48,47,47},["stalwartsbattlegear"]={8574,60,1377,1377},["starfall"]={5250,56,702,141},["starhandandheart"]={736,44,1497,36},["staveofancients"]={7636,60,40016},["staveofequinex"]={2879,50,357,357},
["stealingarcanegoods"]={40085,18,85,85},["stealingcore"]={40129,45,0,1337},["stealingdarnassussflame"]={9332,60,40028,1497},["stealingironforgesflame"]={9331,60,40028,1497},["stealingknowledge"]={3517,52,16,16},["stealingorgrimmarsflame"]={9324,60,40028,141},["stealingstormwindsflame"]={9330,60,40028,1497},
["stealingsupplies"]={1370,35,405,405},["stealingthunderbluffsflame"]={9325,60,40028,141},["stealingundercitysflame"]={9326,60,40028,141},["steelsnap"]={1131,30,1638,17},["steppingupsecurity"]={8281,57,1377,1377},["sternrockstash"]={40461,54,46,46},["stewvulexbff"]={8577,60,440,440},
["stickysituation"]={77,48,47,47},["stinglasher"]={7731,47,357,357},["stingofscorpid"]={789,3,363,14},["stinkingupsouthshore"]={1657,60,40002,267},["stinkysescape"]={1270,37,15,15},["stockaderiots"]={391,29,717,717},["stockadesearch"]={55221,24,717,717},
["stockingjetsteam"]={317,6,1,1},["stockinguponwood"]={80201,1,0,38},["stockpilinghyjalroot"]={40871,60,0,616},["stolenbooty"]={888,16,17,17},["stolenferocity"]={41027,60,493,361},["stolenjournal"]={218,5,132,1},["stolennotes"]={41074,52,361,361},
["stolenoil"]={40410,38,15,15},["stolensilver"]={3281,18,17,17},["stolensmithingtuyereandlookoutsspyglass"]={7728,48,51,51},["stolentome"]={1598,4,40004,12},["stolenwinterveiltreats"]={7042,60,40002,36},["stoleysdebt"]={2872,45,440,440},["stoleysshipment"]={2873,45,440,5121},
["stonecircle"]={3444,51,440,17},["stonegearssearch"]={467,23,1,38},["stoneisbetterthancloth"]={716,42,3,3},["stoneoftides"]={578,37,33,33},["stonesofbinding"]={651,38,45,45},["stonesofradiance"]={41288,40,3,46},["stonesthatbindus"]={2681,57,4,4},
["stonetalonstandstill"]={25,25,331,331},["stonetokens"]={556,32,267,36},["stonewatcher"]={2954,50,440,440},["stonewroughtdam"]={1558,60,40020},["stopdragonflight"]={40297,56,16,16},["stormbaymutiny"]={40037,56,16,16},["stormcallersdiadem"]={8623,60,3428,5147},
["stormcallersfootguards"]={8621,60,3428,5147},["stormcallershauberk"]={8622,60,3428,5147},["stormcallersleggings"]={8624,60,3428,5147},["stormcallerspauldrons"]={8602,60,3428,5147},["stormersandrumblers"]={6805,57,16,1377},["stormhowlamulet"]={41619,60,41,3457},["stormhowlboots"]={41618,60,41,3457},
["stormhowlchest"]={41616,60,41,3457},["stormhowlhelm"]={41614,60,41,3457},["stormhowlkilt"]={41617,60,41,3457},["stormhowlshoulderguards"]={41615,60,41,3457},["stormpikesdeciphering"]={554,40,36,267},["stormpikesdelivery"]={353,15,1519,1519},["stormpikesorder"]={1338,14,38,1519},
["stormrageboots"]={41407,60,25,25},["stormragechest"]={41402,60,25,25},["stormragehands"]={41404,60,25,25},["stormragehead"]={41400,60,25,25},["stormragelegs"]={41406,60,25,25},["stormrageshoulders"]={41401,60,25,25},["stormragewaist"]={41405,60,25,25},
["stormragewrists"]={41403,60,25,25},["stormstoutlegacy"]={41520,58,17,15},["stormwindho"]={562,32,267,267},["stormwindrendezvous"]={6402,60,1519,46},["storyofdryad"]={40588,5,215,215},["stouthops"]={41564,40,17,47},["stouttokadrell"]={414,10,1,38},
["strangealliance"]={1382,35,405,405},["strangebedfellows"]={40571,25,11,11},["strangehistorian"]={5153,56,139,28},["strangelygiantegg"]={50227,0,0},["strangeone"]={6605,54,618,618},["strangerandpotion"]={40918,60,41,41},["strangeredkey"]={5202,55,361,361},
["strangerequest"]={3121,45,357,357},["strangesources"]={4842,56,618,618},["stranglefavor"]={40551,35,15,33},["stranglethornfever"]={348,45,33,5121},["strategicalliance"]={785,8,14},["strategicstrike"]={1140820,60,0,5023},["strengthofcorruption"]={4120,52,357,361},
["strengthtomovemountains"]={41393,58,17,46},["strikersdiadem"]={8657,60,3428,5147},["strikersfootguards"]={8626,60,3428,5147},["strikershauberk"]={8656,60,3428,5147},["strikersleggings"]={8658,60,3428,5147},["strikerspauldrons"]={8659,60,3428,5147},["strikethemdown"]={40137,17,85,85},
["stromgardebadge"]={682,37,45,45},["studyingmanifestations"]={41024,60,0,4012},["studyofelementsrock"]={712,42,3,3},["studyofmagicaltrees"]={41375,61,2557,3457},["suitableaccomodations"]={41083,60,0,3457},["sullyballoosletter"]={637,30,1537,1537},["summonfelsteed"]={4490,40,40004,1497},
["summoningprincess"]={656,50,45,45},["summoningshadra"]={2937,55,47,47},["sunbladereunion"]={80208,5,1519,2040},["sunkentemple"]={3445,51,357,357},["sunkentreasure"]={670,40,45,45},["sunscorchedshells"]={1710,30,40005,400},["sunswornresponse"]={41222,8,0,5225},
["suntarastones"]={3368,48,51,1537},["supercutter"]={41161,6,0,5536},["superiorarmamentsofbattleexaltedamongstdawn"]={9227,60,139,4012},["superiorarmamentsofbattlefriendofdawn"]={9221,60,139,4012},["superiorarmamentsofbattlehonoredamongstdawn"]={9223,60,139,4012},["superiorarmamentsofbattlereveredamongstdawn"]={9226,60,139,4012},["supernaturaldevice"]={8923,60,440,1537},
["superreaper"]={1093,21,406,406},["supersnapperfx"]={2944,48,357,141},["supersticky"]={4504,54,440,490},["supervisorfizsprocket"]={765,12,215,17},["supplementingrations"]={40939,41,0,5179},["suppliesforbarthos"]={55213,22,0,11},["suppliesforcrossroads"]={5041,14,17,17},
["suppliesfornethergarde"]={1395,45,10,10},["suppliesfromdarkshire"]={148,24,10,10},["suppliestoauberdine"]={976,24,331,331},["suppliestoport"]={55002,6,14,14},["suppliestoprivatethorsen"]={198,32,33,33},["suppliestotannok"]={2160,5,1,1},["suppliesweneed"]={80711,60,139,490},
["supplyanddemand"]={575,31,33,33},["supplyingfront"]={1578,12,40008,1537},["supplyingsepulcher"]={6321,10,130,130},["suppressingdreadweavers"]={40434,54,4},["suppression"]={7583,60,40004,4},["surenacaledon"]={1688,10,40004,12},["suspiciousflora"]={41088,60,0,616},
["suspicioushoofprints"]={1284,35,15,15},["suspiciousnomore"]={40553,35,15,15},["svenscamp"]={230,25,10,10},["svensrevenge"]={95,25,10,10},["swamptalker"]={2623,55,8,4},["swarmgrows"]={1147,35,400,400},["swearingtogakin"]={6000,50,40004},
["sweetamber"]={53,44,40,440},["sweetdreamsaremadeofthis"]={40569,24,331,331},["sweetserenity"]={8869,60,40008,618},["swiftmessage"]={6181,10,40,40},["swoophunting"]={761,6,215,215},["swordsmansletter"]={80216,1,0,38},["swordstosorrowguard"]={40075,37,8,8},
["sympathyfordead"]={40622,32,405,405},["syndicateassassins"]={505,33,36,36},["syndicatepersonnel"]={549,22,267,267},["tabethastask"]={2861,46,978,15},["tabletofseven"]={4296,50,46,46},["tabletofzefek"]={41117,48,8,8},["taintedletter"]={3105,1,40004,12},
["taintedmemorandum"]={3115,1,40004,1},["taintedoozesamples"]={40774,53,361,361},["taintedparchment"]={3090,1,40004,14},["taintedscroll"]={3099,1,40004,85},["taintedtablet"]={41135,1,14,14},["takefivebases"]={8122,60,3358,45},["takefourbases"]={8121,60,3358,45},
["takenochances"]={40508,57,46,46},["takingbacksilithus"]={8276,55,1637,1537},["takingbootyhome"]={40361,48,33,357},["takingleave"]={55022,39,0,8},["takingoverfaldirscove"]={40181,48,45,45},["taleofsorrow"]={2801,57,4,8},["talesofpast"]={40095,38,8,8},
["talwindridermaster"]={6363,10,17,1638},["tamingbeast"]={80342,10,40016,12},["tanarisfieldsampling"]={654,46,440,440},["tanglemoss"]={40200,53,0,408},["tarethasgift"]={508,40,267,267},["targetdalsonstears"]={5231,55,28,28},["targetfelstonefield"]={5229,53,28,28},
["targetgahrronswithering"]={5235,58,28,28},["targethiveashidefenders"]={8770,60,1377,1377},["targethiveashisandstalkers"]={8771,60,1377,1377},["targethiveashistingers"]={8501,60,1377,1377},["targethiveashiworkers"]={8502,60,1377,1377},["targethiveregalambushers"]={8774,60,1377,1377},["targethiveregalburrowers"]={8777,60,1377,1377},
["targethiveregalslavemakers"]={8776,60,1377,1377},["targethiveregalspitfires"]={8775,60,1377,1377},["targethivezorahivesisters"]={8539,60,1377,1377},["targethivezorareavers"]={8773,60,1377,1377},["targethivezoratunnelers"]={8687,60,1377,1377},["targethivezorawaywatchers"]={8772,60,1377,1377},["targetwrithinghaunt"]={5233,55,28,28},
["taskunfinished"]={1656,5,220,215},["tasteofflame"]={4024,58,1584,46},["tauposduty"]={70021,29,331,331},["tearofmoons"]={857,30,17,17},["tearsofmoon"]={2518,12,1657,141},["tediousdiplomacy"]={40582,35,17,15},["tediousdiplomacyoncemore"]={40721,35,17,15},
["telabimbananatransmutation"]={40739,58,0,5121},["telabimbananatransmutations"]={40740,58,0,5121},["teldrassil"]={940,11,141,141},["templeofatalhakkar"]={1445,50,1417,1477},["templeofmoon"]={2519,10,1657,141},["tenaronssummon"]={920,5,188,141},["terriblekrampus"]={40779,60,0,616},
["terriblepurpose"]={8287,60,1377,1377},["terrorofchillbreeze"]={60114,11,1,1},["terrorofwebweavers"]={60065,60,139,139},["tesalasword"]={40202,11,141,141},["testamentofrexxar"]={6568,60,405,28},["testamentsoftruelove"]={41274,36,0,5163},["testingenemysstrength"]={5723,15,2437,2437},
["testingvessel"]={3123,47,357,357},["testkillquest"]={8274,5,0},["testofendurance"]={1150,30,400,400},["testoffaith"]={1149,26,400,400},["testoflore"]={6628,30,400,331},["testofrighteousness"]={1806,22,40009,5138},["testofskullaxtroz"]={6585,60,15,11},
["testofskullchronalis"]={6584,60,15,440},["testofskullscryer"]={6582,60,15,616},["testofskullsomnus"]={6583,60,15,8},["testofstrength"]={1151,30,400,400},["tetheredmemories"]={41341,60,493,5097},["thadiusgrimshade"]={2990,47,47,267},["thalanaardelivery"]={4281,44,357,357},
["thalassiandiplomacy"]={40514,10,1537,1537},["thalassiangoulash"]={41190,3,0,5225},["thalestiensnotes"]={40516,10,1537,1},["thandolspan"]={80703,60,44,11},["thargsgifttofriend"]={40403,35,15,15},["tharilzun"]={19,25,44,44},["tharnariunshope"]={2139,18,148,361},
["thatdirtyoldring"]={60130,6,0,12},["thatsaskinglot"]={6026,58,139,4012},["thazzrilspick"]={6394,4,363,14},["theactivation"]={40132,55,17,17},["thebet"]={40175,37,33,33},["thecalling"]={8315,60,1377,1377},["thechallenge"]={9015,60,1584,5225},
["thecollector"]={41296,48,8,8},["theden"]={1089,29,406,406},["thefamilyandfishingpole"]={1141,14,148,148},["thefamilycrypt"]={408,13,85,85},["thefamilyname"]={40800,30,331,331},["theldurinlost"]={687,40,45,3},["thelifeblood"]={41279,42,3,3},
["thelonewolf"]={40108,60,1638,17},["thelsamarbloodsausages"]={418,11,38,331},["themortalstrike"]={40803,31,331,331},["theocritusretrieval"]={178,23,44,12},["therace"]={40103,60,1537,490},["theramoredeserters"]={40689,42,15,15},["theramoredocks"]={1202,35,15,15},
["theramorespies"]={1201,35,15,15},["therebellion"]={40972,40,0,5179},["theripper"]={41550,58,17,5087},["therylunesescape"]={945,18,148,148},["therzok"]={1859,10,40011,14},["thesummoning"]={1713,40,40005,267},["theswordmaster"]={41350,60,2562,85},
["thethandolspan"]={633,31,11,45},["thewarden"]={41093,60,0,361},["theycallhimmorganstorm"]={60152,43,33,33},["theycallhimsmilingjim"]={1282,35,15,15},["theycallmerooster"]={9141,60,139},["theycallthemselvesillidari"]={40776,53,361,361},["theycamefromwest"]={41242,6,0,5225},
["theyreeatingit"]={41307,40,722,722},["theyreinway"]={60132,32,45,45},["theytookourdragon"]={80740,20,40026,719},["thievinglittlegrell"]={40745,10,0,5130},["thirdfleet"]={288,27,11,17},["thirstofhope"]={41243,6,0,5225},["thirstygoblin"]={2605,49,440,440},
["thisisgoingtobehard"]={778,45,3,3},["thistleshrubvalley"]={3362,50,440,440},["thoseblastedtroggs"]={432,9,1,1},["threatfromsea"]={1427,43,8,8},["threatinferalas"]={2981,43,1637,357},["threatofwinterfall"]={5082,56,618,618},["threatwithin"]={783,1,9,12},
["threekingsofflame"]={8961,60,25,28},["throughglimmeringlight"]={41359,62,618,618},["throughgreatermagic"]={40993,42,0,405},["throwingaxesofamani"]={41523,58,17,1583},["throwinghands"]={41522,58,17,17},["thuleravenclaw"]={446,16,130,85},["thunderaanwindseeker"]={7786,60,40023,2717},
["thunderbrew"]={117,15,40,40},["thunderforgemastery"]={41143,50,47,267},["thunderheadhorn"]={40158,52,0,16},["thunderhorncleansing"]={758,8,215,215},["thunderhorntotem"]={756,7,215,215},["thundriswindweaver"]={4761,15,148,148},["thungrimfiregaze"]={1502,10,40005,17},
["thwartingkolkaraggression"]={786,8,14,14},["tiaraofdeep"]={2846,46,978,1176},["tiaraoforacle"]={8592,60,3428,5147},["tidemaster"]={40093,51,0,409},["tigermastery"]={188,37,33,33},["tiltingoscilationinhibitor"]={55210,24,0,33},["timberlingseeds"]={918,7,141,141},
["timberlingsprouts"]={919,7,141,141},["timbermawally"]={8460,48,361,361},["timelysituation"]={80410,60,139,28},["timetostrike"]={494,20,267,267},["tinkeesteamboil"]={4907,60,1583,46},["tinkeringaway"]={55212,22,0,11},["tinkmasteroverspark"]={2923,26,133,1519},
["tirisfalsvestige"]={41370,60,2562},["titikishunt"]={40014,36,45,45},["toaidbrightcopf"]={41365,20,85,85},["toamanialor"]={80302,10,1637,14},["tobaccothieves"]={80308,13,1637,17},["tobuildpounder"]={80401,60,33,5153},["tocatchrat"]={80722,60,1497,130},
["tocutheart"]={41362,50,0,2717},["toeperiusaid"]={40511,35,45,45},["tofindheart"]={41232,7,0,5225},["tofixshredderortwo"]={40634,25,406,406},["togadgetzanyougo"]={6611,45,40021,440},["togilneas"]={40850,41,0,1497},["toguardundead"]={41364,19,85,130},
["tohinterlands"]={1449,43,1519,267},["tohonorforgotten"]={40289,52,16,16},["tohulfdan"]={2299,16,40011,1537},["tohunthunter"]={40787,57,361,616},["toironforgeforyagyinsdigest"]={727,40,3,3},["tokensofblood"]={41118,60,0,33},["tokillwithpurpose"]={6022,58,139,139},
["tomakefortune"]={40189,52,0,408},["tomeetagain"]={40563,35,15,15},["tomeofarcaneintricaciesandmagicalphenomenonix"]={40425,63,0,5087},["tomeofcabal"]={1805,30,40004,11},["tomeofdivinity"]={3681,12,40009,1537},["tomeofnobility"]={4486,40,40009,1519},["tomeofvalor"]={1652,25,40009,40},
["tonumbpain"]={41032,42,0,5179},["toogasquest"]={1560,50,440,440},["toolatetoprelate"]={41366,22,209,209},["toolsforsteelgrill"]={400,5,1,1},["toolsofhighborne"]={958,12,148,148},["toolsoftrade"]={1999,20,40011,130},["toorgrimmar"]={2380,16,40011,14},
["topurchasesecretinformation"]={40466,55,46,440},["toraiseancient"]={41234,9,0,5225},["torchofretribution"]={3454,50,51,51},["toreksassault"]={6544,24,331,331},["tormentedbypast"]={5248,58,139,139},["tormusdeepforge"]={1680,11,40005,1537},["tornsoul"]={41198,55,139,139},
["tortasegg"]={40302,20,40024,331},["torumitallblacklabel"]={41331,60,33,33},["torumitalldark"]={41330,60,33,33},["torumitalllight"]={41329,60,33,33},["torumitallvolatile"]={41332,60,33,33},["torwapathfinder"]={9063,52,40018,490},["toservekumisha"]={2521,55,4,4},
["toshowduejudgment"]={7639,60,40009,1537},["tosorrowguardkeep"]={40255,35,1519,1519},["tostaghelm"]={41235,10,0,2040},["tostealfromthieves"]={1164,36,1497,45},["tostrikebackruinsofzulrasaz"]={40452,37,45,47},["tostrikebackwitherbarkvillage"]={40451,36,45,45},["totemofinfliction"]={101,25,10,10},
["touchofweakness"]={5663,10,40017,85},["touchofzanzil"]={2609,20,40011,721},["toundercityforyagyinsdigest"]={728,40,3,3},["tovictor"]={9556,60,0},["towerofalthalaxx"]={1167,28,148,331},["toweroflapidis"]={40163,55,0,409},["toweroflapidisii"]={40164,55,0,409},
["toweroflapidisiii"]={40165,55,0,357},["toweroflapidisiv"]={40166,55,0,267},["toweroflapidisix"]={40171,55,0,408},["toweroflapidisv"]={40167,55,0,409},["toweroflapidisvi"]={40168,55,0,409},["toweroflapidisvii"]={40169,55,0,408},["toweroflapidisviii"]={40170,55,0,361},
["toweroflapidisx"]={40303,55,0,409},["towersandbunkers"]={7102,60,2597,267},["towinterspringexclamation"]={5249,56,361,361},["toxichorrors"]={5086,56,618,361},["toxictest"]={9051,52,40018,440},["tracingsource"]={9027,60,40002,1519},["tradersmisfortune"]={70052,13,17,17},
["trainingbeast"]={80755,10,40016,5536},["trampingpaws"]={276,21,11,11},["trampledunderfoot"]={2753,36,40008,1637},["tranrek"]={2864,45,978,440},["translateabercrombiesnote"]={251,30,10,10},["translatingjournal"]={2338,42,1517,51},["translatingunknown"]={40749,52,0},
["translationtoello"]={252,30,10,10},["trappedinnightmare"]={60124,19,718,148},["treantmuisek"]={3126,50,357,357},["treasureofshendralar"]={7877,60,2557},["treatsforgreatfatherwinter"]={7025,60,40002,40},["treatsfortraining"]={40798,30,331,331},["trektoashenvale"]={990,19,331,42},
["trelanesdefenses"]={694,39,45,45},["tremorsofearth"]={732,43,3,3},["triage"]={6624,45,40022,15},["trialatfieldofgiants"]={1824,20,40005,17},["trialoflake"]={29,16,40018,493},["trialofsealion"]={272,16,40018,130},["trialofsincerity"]={40365,11,215,215},
["triballeatherworking"]={5148,55,40013,400},["tribesatwar"]={878,21,17,17},["tricksteramulet"]={41607,60,41,3457},["tricksterboots"]={41606,60,41,3457},["tricksterchest"]={41604,60,41,3457},["tricksterhelm"]={41602,60,41,3457},["tricksterpants"]={41605,60,41,3457},
["trickstershoulderguards"]={41603,60,41,3457},["triggeredexclamation"]={60120,9,0,14},["trimmingvilebranch"]={60072,46,47,47},["trinkets"]={3481,50,51,51},["trinketsmakeheartgrowfonder"]={41283,40,1537,1537},["troggthreat"]={267,12,38,38},["trolkalar"]={646,42,45,45},
["trollbane"]={638,37,33,33},["trollcave"]={182,4,132,1},["trollcharm"]={6462,24,331,331},["trollnecklacebounty"]={2880,45,47,47},["trollsoffeather"]={8422,52,40004,1477},["trolltemper"]={3042,45,978,1176},["trollwitchdoctor"]={1240,35,15,33},
["trollwitchery"]={205,40,33,33},["troubleatdocks"]={959,18,718,718},["troubledspirit"]={8417,52,40005,141},["troubledspiritsofkeltheril"]={5245,56,618,618},["troubleindarkshore"]={730,14,1657,141},["troubleindeeps"]={6562,22,719,406},["troubleinwinterspringexclamation"]={6603,56,618,618},
["troublesahead"]={40557,35,15,15},["troublingbreeze"]={475,6,141,141},["troublingpresence"]={41193,5,0,5225},["troublingwinds"]={40623,35,405,405},["trousersoforacle"]={8593,60,3428,5147},["truebelievers"]={8323,59,1377,1377},["trueenemy"]={40842,30,331,331},
["truehighforeman"]={40463,51,0,5103},["truemasters"]={4224,54,46,1519},["trustedapothecary"]={80723,60,1497,130},["truthcomescrashingdown"]={5262,60,2017,4012},["tumors"]={923,9,141,141},["tundramacgrannsstolenstash"]={312,12,1,1},["turbochargedwobblefreefizzdisk"]={40065,54,16,16},
["turningofftap"]={41392,20,1581,5138},["tuskenaffair"]={80300,10,1637,1637},["twilightbattleorders"]={8498,60,1377,1377},["twilightcamp"]={949,17,148,148},["twilightfalls"]={1199,25,719,719},["twilightgeolords"]={8320,60,1377,1377},["twilightlexicon"]={8279,60,1377,1377},
["twilightmarauders"]={8740,60,1377,1377},["twilightmystery"]={8284,58,1377,1377},["twistedevils"]={7028,47,2100,2100},["twistedhatred"]={932,7,141,141},["twofavorsforpriceofone"]={40732,55,0,5121},["twohalvesbecomeone"]={5051,54,28,28},["tyrandeandremulos"]={8734,60,141,141},
["tyrantking"]={40156,53,0,409},["ulaelekandbrutalgauntlets"]={1839,30,40005,14},["ulagcleaver"]={1819,10,40005,85},["ulathektraitor"]={7624,58,40004,361},["uldamanreagentrun"]={2202,42,1517,1337},["uldumawaits"]={40114,60,1638,490},["ultimatedeception"]={8829,60,1377,1377},
["umberarchivist"]={6844,57,1377,493},["unclearinstructions"]={80353,60,15,15},["unclecarlin"]={5241,56,139,4012},["uncommonrequest"]={80735,63,40012},["uncoveringevidence"]={55223,24,0,11},["uncoveringevil"]={40214,55,0,408},["uncoveringmystery"]={55215,24,0,11},
["uncoveringpast"]={299,28,11,11},["uncoveringpastsecrets"]={6845,57,493,493},["undamagedvenomsac"]={2934,45,47,5179},["underbellyscales"]={122,18,44,44},["undergroundassault"]={2040,20,1581,5138},["undermarket"]={3402,50,40019,51},["undermarketoffer"]={41301,38,1537,1537},
["undersea"]={41160,4,0,5536},["undershadow"]={9153,60,40027,4012},["undervibrantmoonlight"]={41398,60,493,493},["undoingcurse"]={40717,44,3,3},["undoingdraconicpresence"]={40943,47,0,5208},["unfinishedbusiness"]={6025,58,28,28},["unfinishedgordokbusiness"]={7703,60,2557,2557},
["unforeseenconsequences"]={40201,11,141,141},["unforgottenandunforgiven"]={40627,40,405,406},["unfortunatecircumstances"]={41291,44,3,405},["ungorosoil"]={3764,50,1657,490},["unhallowedbranches"]={41070,50,361,361},["unholyalliance"]={6522,36,722,400},["uniformsupplies"]={8808,60,1377,1377},
["unitedincooperation"]={39977,60,40002},["unitingshatteredamulet"]={3627,60,4,4},["unlifeslittleannoyances"]={6042,58,139,139},["unravelingmystery"]={8314,60,1377,3478},["unseenenemy"]={40110,60,17,17},["unseenobstacle"]={41336,58,0,405},["unsentletter"]={373,22,1519,1519},
["untildeathdouspart"]={264,15,1638,215},["unusualfind"]={40540,45,47,15},["unusualinterference"]={41652,50,618,618},["unusualpartnership"]={40100,60,1537,1537},["unveilingmystery"]={41315,50,16,16},["unwelcomeguest"]={34,24,44,44},["unwiseelders"]={40090,34,0,5077},
["updateforsentinelthenysil"]={1082,22,406,406},["upperbindingi"]={41011,60,1583,5179},["upperbindingii"]={41012,60,0,2717},["upperbindingiii"]={41013,60,2557,5179},["upperbindingiv"]={41014,60,0,5179},["uptosnuff"]={587,41,33,33},["urokdoomhowl"]={4867,60,1583,1583},
["ursalmauler"]={486,12,141,141},["ursangousspaw"]={23,24,331,331},["ursiusofshardtooth"]={5054,56,618,618},["urstreatiseonshadowmagic"]={1938,28,40010,44},["vagrantsupplies"]={40936,43,0,5179},["vahlarrielssearch"]={1465,33,405,405},["valadarstarsong"]={8883,60,40026,1537},
["valik"]={535,34,36,36},["vanquishbetrayers"]={784,7,14,14},["vanquishinvaders"]={8291,60,3277,331},["vejrek"]={1678,11,40005,1},["velindeseffects"]={1038,30,331,1657},["velindestarsong"]={1037,30,331,1657},["veloranitelyandbrutallegguards"]={1841,30,40005,1497},
["vengeanceonnorthspring"]={3063,50,357,357},["vengefulfate"]={1102,34,1717,491},["venombottles"]={2933,43,47,267},["venomtoundercity"]={2938,55,47,267},["ventureco"]={764,10,215,215},["venturecoexpansion"]={41213,28,406,406},["venturecompanymining"]={600,41,33,33},
["venturecoshakedown"]={40216,16,17,17},["venturedelivery"]={41391,20,40,10},["venturedtoofar"]={80105,5,0},["venturevultures"]={80101,2,0},["verdantnote"]={3094,1,40018,215},["verdantsigil"]={3120,1,40018,141},["verifyingcorruption"]={5156,54,361,361},
["vernonstask"]={40854,44,0,5179},["verogdervish"]={851,18,17,17},["veryunpleasanttroll"]={70030,28,331,331},["vestmentsoforacle"]={8603,60,3428,5147},["veteransbattlegear"]={8572,60,1377,1377},["veteranuzzek"]={1505,10,40005,215},["victoryforalliance"]={7495,60,1519,1519},
["victoryforhorde"]={7490,60,1637,1637},["victoryinbloodring"]={41110,60,0,33},["victorysuchasitis"]={40804,30,331,1657},["videreelixir"]={3909,52,490,357},["vigilantlastdefender"]={41199,55,139,139},["vilebranchhooligans"]={7839,48,47,47},["vilefamiliars"]={1499,4,40004,14},
["vilegripsdemise"]={40469,51,46,46},["vilemantle"]={41034,43,0,5179},["vilemuskinfiltration"]={41017,60,0,616},["vilepriestesshexxandherminions"]={7861,51,47,47},["vilereef"]={629,37,33,33},["vilesatyrdryadsindanger"]={1021,32,331,331},["vilestofmen"]={40953,42,0,5179},
["villainsofdarrowshire"]={5181,57,139,139},["vimessreport"]={1289,38,15,15},["vipel"]={50322,60,1519,1519},["vipinvites"]={80382,35,40015,440},["virulence"]={60113,8,85,85},["visitherbalist"]={130,15,44,44},["visittogregan"]={4142,52,490,357},
["vitalanatomy"]={41549,58,17,17},["vitalintelligence"]={383,5,154,85},["vitalsupplies"]={1477,45,1519,1519},["vivianlagrave"]={4133,55,1584,3},["vivianlagraveanddarkstonetablet"]={4769,60,1583,3},["volcanicactivity"]={4502,55,490,490},["volunteersbattlegear"]={8548,60,1377,1377},
["voodoodues"]={609,44,33,33},["voodoofeathers"]={8425,52,40005,1477},["vorlusvilehoof"]={1683,10,40005,141},["vorrelsrevenge"]={1051,33,796,36},["vorshalasher"]={6641,23,331,331},["voucheroflifetime"]={40784,60,0,5130},["vulturesvigor"]={2603,50,4,4},
["vyletonguecorruption"]={7041,47,2100,405},["vyralvile"]={8321,60,1377,1377},["vyrinsrevenge"]={531,20,38,38},["wabbitpelts"]={7962,1,9},["wagonwoes"]={40932,41,0,5179},["waistofmight"]={41447,60,25,25},["waistofprophecy"]={41464,60,25,25},
["waistoftenstorms"]={41506,60,25,25},["waistoftranscendence"]={41456,60,25,25},["waistofwrath"]={41439,60,25,25},["waitforsirratofinish"]={401,30,10,10},["wakinglegends"]={8447,60,40001,493},["wallcomescrashingdown"]={40968,38,0,267},["wallywisecrack"]={40226,35,33,36},
["wanderingshay"]={2845,49,357,357},["wandoverfist"]={693,39,45,45},["wandtobethor"]={491,18,130,130},["wantedandrefirebeard"]={2875,45,440,5121},["wantedaristoxenus"]={50331,60,1637,14},["wantedarnakgrimtotem"]={5147,29,400,17},["wantedazteq"]={50332,60,1519,1519},
["wantedbaronlongshore"]={895,16,17,17},["wantedbaronvardus"]={566,40,267,36},["wantedcaliphscorpidsting"]={2781,46,440,440},["wantedchoksul"]={256,22,38,38},["wanteddeathclaspterrorofsands"]={8283,59,1377,1377},["wanteddwarvesexclamation"]={7401,60,2597,2597},["wantedgathilzogg"]={169,26,44,44},
["wantedhogger"]={176,11,12},["wantedholeescapee"]={55048,14,14,14},["wantedillusory"]={50323,60,1637,14},["wantedlieutenantfangore"]={180,26,44,44},["wantedmaggoteye"]={398,10,85,85},["wantedmarezcowl"]={684,39,45,45},["wantedmurkdeep"]={4740,18,148,148},
["wantedorcsexclamation"]={7402,60,2597,2597},["wantedottoandfalconcrest"]={685,40,45,45},["wantedoverseermaltorius"]={7701,50,51,51},["wantedshazknock"]={55049,18,14,17},["wantedsyndicatepersonnel"]={549,22,267,267},["wantedvilepriestesshexxandherminions"]={7861,51,47,47},["wantedvipel"]={50322,60,1519,1519},
["warbanners"]={464,28,11,11},["warchiefsorders"]={40667,10,14,14},["warforfood"]={40619,38,405,405},["warlordkrellian"]={9362,60,40010,16},["warlordscommand"]={4903,60,1583,1583},["warmfeeling"]={80369,60,618,618},["warmisday"]={41360,62,618,618},
["waronmudpaw"]={41185,8,0,5536},["waronshadowsworn"]={8424,52,40005,4},["waronventureco"]={41172,8,0,5536},["waronwitherbark"]={40018,37,45,47},["waronwoodpaw"]={2862,42,357,357},["waronworgen"]={40976,45,0,5179},["warriorkinship"]={8423,52,40005,4},
["warriorstraining"]={1638,10,40005,1519},["warsongechoes"]={41543,58,17,17},["warsongreports"]={6543,19,17,331},["warsongsupplies"]={6571,27,331,331},["warworthfighting"]={40671,15,14,14},["washedashore"]={4681,14,148,148},["washtepawne"]={885,25,17,17},
["waskilywabbits"]={7961,1,9},["wasteland"]={1124,55,493,493},["wastewanderjustice"]={1690,43,440,440},["watchfuleye"]={94,21,44,12},["waterelementals"]={601,37,33,33},["waterpouchbounty"]={1707,44,440,440},["waterrat"]={40094,54,0,409},
["watersofxavian"]={1944,26,40010,14},["wavethrashing"]={8231,52,40016,16},["waynemanners"]={60119,35,36,36},["wayoffel"]={41253,9,0,5225},["wayofspiritwalkingi"]={40344,40,1638,215},["wayofspiritwalkingii"]={40345,40,1638,357},["wayofspiritwalkingiii"]={40346,40,1638,357},
["wayofspiritwalkingiv"]={40347,40,1638,215},["wayofspiritwalkingv"]={40348,40,1638,405},["wayofspiritwolfi"]={40530,40,40006,357},["wayofspiritwolfii"]={40531,40,40006,5179},["wayofspiritwolfiii"]={40532,40,40006,357},["wayofspiritwolfiv"]={40533,40,40006,357},["wayofspiritwolfv"]={40534,40,40006,357},
["wayofweaponsmith"]={5302,40,40008,1537},["wayofwitchdoctori"]={40349,40,1637,14},["wayofwitchdoctorii"]={40350,40,1637,33},["wayofwitchdoctoriii"]={40351,40,1637,14},["wayofwitchdoctoriv"]={40352,40,1637,14},["wayofwitchdoctorv"]={40353,40,1637,15},["waysofmagic"]={40280,19,85,85},
["waystonesofold"]={40252,55,16,16},["weaponslayingabout"]={40173,48,35,33},["weaponsofchoice"]={893,24,17,17},["weaponsofspirit"]={3129,50,357,357},["weatheredgrave"]={225,35,10,10},["weaver"]={480,22,130,130},["webwoodegg"]={917,5,188,141},
["webwoodvenom"]={916,4,188,141},["weightoffashionontheirshoulder"]={41574,60,2562,3457},["welcome"]={5847,1,154},["welcometoamanialor"]={80313,10,1637,2041},["welcometobrewingfestival"]={41554,1,17,1637},["welcometojungle"]={583,30,33,33},["wellofcorruption"]={4505,54,361,148},
["wemusthaverum"]={40337,48,33,33},["wenikeeboltbucket"]={3921,14,17,17},["westbrookgarrisonneedshelp"]={239,10,12,12},["westernpylon"]={4288,53,490,490},["westfallstew"]={38,13,40,40},["wetakeitfromliving"]={40880,43,0,5179},["wharfmasterdizzywig"]={1492,11,17,17},
["whatcomesaround"]={386,25,717,717},["whatflux"]={7722,50,51,51},["whatisgoingon"]={4001,54,1584,1584},["whatlurksindark"]={40102,60,35,1537},["whatnibycommands"]={7601,50,40004,361},["whatsyoursisours"]={80306,10,1637,1637},["whattomorrowbrings"]={8286,60,1377,440},
["whatweknow"]={70029,28,331,331},["whatwindcarries"]={6566,60,1637,1637},["wheelofblackmarch"]={7627,60,40004,46},["whenopportunityknocks"]={40704,15,406,406},["whensmokeysingsigetviolent"]={6041,58,139,139},["whereisyourheart"]={41233,9,0,5225},["wheresmyyetifur"]={55036,32,267,267},
["whiskeyslimslostgrog"]={580,50,33,47},["whispersofautumn"]={41215,8,0,5225},["whitestag"]={41342,60,493,616},["whynotboth"]={41142,50,47,5103},["wildeyes"]={7564,58,40004,46},["wildfiresineasternkingdoms"]={9323,60,40028,47},["wildfiresinkalimdor"]={9322,60,40028,490},
["wildguardians"]={4741,58,361,618},["wildhearts"]={429,11,130,130},["wildkinofelune"]={4902,57,618,141},["wildleatherarmor"]={2854,45,40013,1977},["wildleatherboots"]={2858,45,40013,33},["wildleatherhelmet"]={2857,45,40013,33},["wildleatherleggings"]={2859,45,40013,33},
["wildleathershoulders"]={2855,45,40013,33},["wildleathervest"]={2856,45,40013,33},["wildlifesufferstoo"]={4985,56,28,28},["wildmanecleansing"]={760,10,215,215},["wildmanetotem"]={759,10,215,215},["wildshaper"]={41016,60,2557,616},["wildthornmenace"]={70024,30,331,331},
["wildtuskcharms"]={40019,36,45,45},["willidensjournal"]={3884,50,490,490},["willingtoserve"]={40575,35,17,400},["williximporter"]={1144,30,1717,491},["willoflorthiras"]={40239,58,139,2557},["windrider"]={4767,29,400,400},["windsindesert"]={834,9,14,14},
["windwatcher"]={1791,30,40005,17},["wineforkyleson"]={41086,60,0,3457},["wineshopadvert"]={332,2,1519,1519},["winteraxchampion"]={40004,60,2597,2597},["winterfallactivity"]={8464,58,1769,618},["winterfallfirewater"]={5083,56,618,618},["winterfallintrusion"]={5201,60,618,618},
["winterfallritualtotem"]={8471,56,618,361},["winterfallrunners"]={5087,57,618,618},["winterhoofcleansing"]={754,6,215,215},["winterspresents"]={8828,1,40002,1637},["winterveilbrew"]={40748,55,1584,1584},["winterveilmagic"]={55056,60,0,36},["wisdomfromfailure"]={41388,55,17,17},
["wisdomofsages"]={55041,30,14,36},["wisdomofur"]={41383,60,10,616},["witherbarkcages"]={2988,45,47,47},["witherbarkwarbandleader"]={40022,40,45,45},["withtwistofmagic"]={41565,36,17,357},["withusoragainstus"]={40609,35,405,405},["wobblefreefizzgear"]={40068,54,16,16},
["wolfamongstsheep"]={40948,42,0,5179},["wolfblood"]={41382,60,10,215},["wolfcroneandscythe"]={41381,60,10,3457},["wolvesacrossborder"]={33,2,9,12},["wolvesatourheels"]={226,21,10,10},["woodarrivesontime"]={55203,24,0,11},["woodlandprotector"]={459,3,188,141},
["woodpawdisarray"]={41040,42,357,357},["woodpawgnolls"]={4131,44,357,357},["woodpawinvestigation"]={2902,43,357,357},["woolwouldwork"]={60008,8,12,12},["wordofarchdruid"]={41042,42,357,400},["wordsofhighchief"]={5128,59,618,616},["wordsofwisdom"]={40799,30,331,406},
["worgeninwoods"]={223,31,10,10},["workmustcontinue"]={40742,56,0,5121},["workofgrimandelmore"]={7641,60,40009,1519},["workoverdue"]={40858,10,1,721},["workplacehazard"]={41174,5,0,5536},["worldatyourfeet"]={2772,45,40008,440},["worthitsweightingold"]={691,36,45,45},
["woundedancients"]={1084,28,406,406},["wovendreams"]={41396,60,493,357},["wrappingwarpwood"]={41376,61,2557},["wrathofblueflight"]={5162,60,28,28},["wrathoflightfalluponthee"]={41200,56,139,139},["wrathofneptulon"]={8729,60,16,16},["wrenixofratchet"]={2382,16,40011,1637},
["wristsofmight"]={41445,60,25,25},["wristsofprophecy"]={41462,60,25,2717},["wristsoftenstorms"]={41504,60,25,25},["wristsoftranscendence"]={41454,60,25,25},["wristsofwrath"]={41437,60,25,25},["writhingdeep"]={4135,46,357,357},["writofsafepassage"]={9165,60,139,4012},
["wrongstuff"]={8421,52,40004,361},["wyrmsofhighlands"]={41219,7,0,5225},["xorothianstardust"]={7625,60,40004,361},["xylemspaymenttojediga"]={3565,52,16,16},["yellowhops"]={41562,23,17,17},["yetanothersmokecloudaboveorgrimmar"]={80307,13,1637,1637},["yorusbarleybrew"]={1698,20,40005,1519},
["youarerakhlikhdemon"]={3628,60,4,4},["youhaveserveduswell"]={397,30,1519,1519},["youngandfoolish"]={80702,60,0,1519},["youngcrocoliskskins"]={484,22,11,11},["younglovers"]={106,6,12,12},["youreapwhatyousow"]={60061,60,215,47},["youremeanone"]={7043,60,40002,267},
["yourfortuneawaitsyou"]={7945,60,40024,215},["yourplaceinworld"]={4641,1,363,14},["youscreamiscream"]={4822,60,40020,1637},["youshouldputringonit"]={41284,40,1537,46},["youtoogood"]={6608,45,40007,15},["yukascrewspigot"]={4324,53,1584,46},["zabinisinformation"]={55217,24,0,11},
["zaeldarroutcast"]={6021,55,139,139},["zalazane"]={826,10,14,14},["zalazanesapprentice"]={80399,8,14,14},["zalazanesfall"]={40389,10,14,14},["zandozan"]={2379,16,40011,1637},["zanzilsmixtureandfoolsstout"]={1119,44,400,33},["zanzilssecret"]={621,44,33,33},
["zappedgiants"]={7003,48,357,357},["zapperfuel"]={4146,52,490,1477},["zennsbidding"]={488,5,141,141},["zeppelincrash"]={80403,35,15,15},["zhevra"]={845,13,17,17},["zinfizzlexsportableshredderunit"]={6862,60,2597,2597},["zingesassessment"]={8980,60,40002,1497},
["zingesdelivery"]={1359,15,1497,130},["zizfizziks"]={1483,21,17,17},["zokiisnothief"]={40778,60,0,5130},["zombiejuice"]={158,24,10,10},["zoramstrand"]={1008,19,331,331},["zugzugorsomethin"]={80109,6,14,14},["zukkashinfestation"]={7730,45,357,357},
["zukkashreport"]={7732,48,357,357},
}
GF_WORD_DUNGEON = {
["rfc"] = 15,["ragefire"] = 15,["deadmines"] = 21,["dm"] = 21,["wc"] = 21,["shadowfang"] = 24,["sfk"] = 24,["blackfathom"] = 25,["bfd"] = 25,["stock"] = 26,["stockade"] = 26,["gnomer"] = 32,["gnomeregan"] = 32,
["kraul"] = 32,["rfk"] = 32,["downs"] = 39,["rfd"] = 39,["gy"] = 31,["smgy"] = 31,["lib"] = 35,["library"] = 35,["smlib"] = 35,["smarm"] = 39,["armory"] = 39,["smcath"] = 40,["cathedral"] = 40,["smfull"] = 39,
["ulda"] = 45,["uldaman"] = 45,["zf"] = 48,["zulfarrak"] = 48,["mallet"] = 48,["mara"] = 49,["maraudon"] = 49,["princess"] = 49,["st"] = 54,["sunken"] = 54,["atalhakkar"] = 54,["arena"] = 55,["brd"] = 58,["jailbreak"] = 58,["emperor"] = 58,
["attunement"] = 60,["lbrs"] = 60,["brs"] = 60,["dme"] = 57,["dmn"] = 62,["dmt"] = 62,["dmw"] = 62,["scholomance"] = 62.1,["krastinov"] = 62.1,["stratholme"] = 62.2,["baron"] = 62.2,["ubrs"] = 63.1,["rend"] = 63.1,["valthalak"] = 63.1,
["sm"] = 0,["razorfen"] = 0,["dungeon"] = 0,["blackrock"] = 0,

-- Two Words
["ragefirechasm"] = 15,["wailingcaverns"] = 21,["blackfathomdeeps"] = 25,["razorfenkraul"] = 32,["razorfendowns"] = 39,["sunkentemple"] = 54,["blackrockdepths"] = 58,["maulwest"] = 62,["mauleast"] = 57,["maulnorth"] = 62,["maultrib"] = 62,["maultribute"] = 62,
["blackrockspire"] = 60,["lowerblackrock"] = 60,["livestrat"] = 62.2,["udstrat"] = 62.2,["stratrep"] = 62.2,["upperblackrock"] = 63.1,["drakefireamulet"] = 63.1,["diremaul"] = 58,["scarletmonastery"] = 0,["foranything"] = 0,["lfganything"] = 0,

-- RepFarm
["repfarmstrat"] = 62,["stratrepfarm"] = 62,

-- Turtle WoW
["dragonmaw"] = 30,["dmr"] = 30,["crescent"] = 36,["grove"] = 36,["crescentgrove"] = 36,["cg"] = 36,["tcg"] = 36,["stormwrought"] = 39,["gc"] = 48,["gilneas"] = 48,["hateforge"] = 56,["quarry"] = 56,["hq"] = 56,["hf"] = 56,["hfq"] = 56,
["sv"] = 62.3,["swv"] = 62.3,["vault"] = 62.3,["morass"] = 62.4,["bm"] = 62.4,["cot"] = 62.4,["crypt"] = 63.2,["karazhancrypt"] = 63.2,
["swc"] = 15,["swr"] = 15,["swd"] = 15,

-- Two Words
["dragonmawretreat"] = 30,["stormwroughtruins"] = 39,["stormwroughtdescent"] = 39,["stormwroughtcastle"] = 39,["gilneascity"] = 48,["hateforgequarry"] = 56,["stormwindv"] = 62.3,["stormwindvault"] = 62.3,["blackmorass"] = 62.4,

-- Three Words
["cavernsoftime"] = 62.4,
}
GF_WORD_RAID = {
["zul"] = 64.05,["zg"] = 64.05,["gurub"] = 64.05,["zulgurub"] = 64.05,["hakkar"] = 64.05,
["onyxia"] = 64.1,["mc"] = 64.15,["moltencore"] = 64.15,["rag"] = 64.15,["ragnaros"] = 64.15,["moltencore"] = 64.15,
["nef"] = 64.2,["blackwinglair"] = 64.2,["nefarian"] = 64.2,
["aq"] = 64.3,["ahnqiraj"] = 64.3,["ossirian"] = 64.3,["cthun"] = 64.3,["ruinsofahnqiraj"] = 64.3,
["naxxramas"] = 64.4,

["azuregos"] = 64,["kazzak"] = 64,["lethon"] = 64,["ysondre"] = 64,["taerar"] = 64,["emeriss"] = 64,["worldboss"] = 64,
["anyraid"] = 60,["lfraid"] = 60,["needraid"] = 60,["raidlf"] = 60,["gdkpraid"] = 60,["aqrepfarm"] = 63,["zul"] = 64.05,

-- Turtle WoW
["es"] = 64.25,["sanctum"] = 64.25,["karazhan"] = 64.5,["concavius"] = 64,["ostarius"] = 64,["nerub"] = 64,["reaver"] = 64,["clackora"] = 64,
["emeraldsanctum"] = 64.25,["lowerkarazhan"] = 64.5,["upperkarazhan"] = 64.5,["karazhanhalls"] = 64.5,
}
GF_WORD_PVP = {
["av"] = 60,["ab"] = 0,["wsg"] = 0,["battleground"] = 0,["warsong"] = 0,["premade"] = 0,["bg"] = 0,["pvp"] = 0,["arenas"] = 60,

-- Two Words
["arathibasin"] = 0,
["alteracvalley"] = 60,
["warsonggulch"] = 0,

["bloodring"] = 60,
["sunnygladevalley"] = 60,
["sunnyglade"] = 60,
}

GF_WORD_TRADE = {
["lf"] = 102.5,["lfm"] = 102,["wtb"] = 4,["wts"] = 4,["wtt"] = 4,["lfw"] = 4,["ltb"] = 3,["lts"] = 3,["lfc"] = 102.75,["wtc"] = 2.5,["wtcraft"] = 3,["wtC"] = 2,["hitem"] = .5,["lfhitem"] = .5,["lfwork"] = .5,
["price"] = .5,["ratio"] = .5,["deal"] = .25,["afford"] = .5,["material"] = .5,["maker"] = .5,["fee"] = .5,["carry"] = 1,["boost"] = 1,
["lfenchant"] = 3,["lfenhancement"] = 3,["lfleatherworker"] = 3,["lftailor"] = 3,["lfblacksmith"] = 3,["lfengineer"] = 3,["lfalchemist"] = 3,
["itip"] = 1,["itipyou"] = .5,["goodtip"] = 1,["instock"] = 1,

-- Misc recipes
["spur"] = .5,["counterweight"] = .5,["weaponchain"] = .5,["shieldspike"] = .5,["beltbuckle"] = .5,["beastslayer"] = .5,["crusader"] = .5,["demonslaying"] = .5,["fiery"] = .5,["glow"] = .5,["haste"] = .5,["icy"] = .5,["icychill"] = .5,["lifesteal"] = .5,["minorspeed"] = .5,["mountspeed"] = .5,["movespeed"] = .5,["resistall"] = .5,["ridingskill"] = .5,["runspeed"] = .5,["stats"] = .5,["unholy"] = .5,["vampirism"] = .5,["wintersmight"] = .5,["potion"] = .5,["arcanum"] = .5,["magewater"] = .5,
["sageblade"] = .5,["lionheart"] = .5,["titanic"] = .5,["corebag"] = .5,["sylvan"] = .5,["glacial"] = .5,["bloodvine"] = .5,["devilsaur"] = .5,
["onycloak"] = .5,["zgsets"] = .5,["hideofwild"] = .5,["hideofthewild"] = .5,["onyxiacloak"] = .5,

["anyonehave"] = 1.5,["whohave"] = .5,["anyoneneed"] = 1,["ineed"] = .5,["whoneed"] = 1,["haveall"] = .5,["willcometoyou"] = .5,["surcharge"] = .5,["havemat"] = 1,["havematerial"] = 1,["gethitem"] = 1,
["anyoneableto"] = 2,["makeme"] = 1,["anyonehelpmake"] = .5,["cananyonehelpmake"] = .5,["anyonegive"] = 1,["anyonecando"] = 1,["anyonearoundwhocan"] = 2,["helphitem"] = .5,["needhelphitem"] = 1,["ineedhelphitem"] = .5,
["caniget"] = 1,["allinoneplace"] = 1,["everythinginoneplace"] = 1,["anyoneinterested"] = 1,["ihaveit"] = .5,["ifyouneedit"] = 1,

["lfweapon"] = .5,["lfcrusader"] = .5,["lfriding"] = .5,["lfarcanum"] = .5,["lfhaste"] = .5,["lfcheap"] = 1,["lfmiddleman"] = .5,["lflevelmiddleman"] = .5,

["lfbarrens"] = 1,["lfstonard"] = 1,["lfbootybay"] = 1,["lfmoonglade"] = 1,["lfwinterspring"] = 1,["lfdesolace"] = 1,["lfferalas"] = 1,["lfsilithus"] = 1,
["lfhydraxian"] = 1,["lftanaris"] = 1,["lfepl"] = 1,["lfwpl"] = 1,["lfalterac"] = 1,["lfarathi"] = 1,["lfbadlands"] = 1,
["lfstormwind"] = 1,["lfdarnassus"] = 1,["lfironforge"] = 1,["lfif"] = 1,["lforgrimmar"] = 1,["lfundercity"] = 1,["lfthunderbluff"] = 1,
["lfgbarrens"] = 1,["lfgstonard"] = 1,["lfgbootybay"] = 1,["lfgmoonglade"] = 1,["lfgwinterspring"] = 1,["lfgdesolace"] = 1,["lfgferalas"] = 1,["lfgsilithus"] = 1,
["lfghydraxian"] = 1,["lfgtanaris"] = 1,["lfgepl"] = 1,["lfgwpl"] = 1,["lfgalterac"] = 1,["lfgarathi"] = 1,["lfgbadlands"] = 1,
["lfgstormwind"] = 1,["lfgdarnassus"] = 1,["lfgironforge"] = 1,["lfgif"] = 1,["lfgorgrimmar"] = 1,["lfgundercity"] = 1,["lfgthunderbluff"] = 1,

["lfwater"] = .5,["lflevelwater"] = .5,["lfhighlevelwater"] = .5,["makelevelwater"] = .5,["stackwater"] = .5,["stackofwater"] = .5,["stackoflevelwater"] = .5,
["magefood"] = .5,["magewater"] = .5,["magefoodwater"] = .5,["magewaterplease"] = 1.5,["magefoodplease"] = 1.5,["anyhavemagefood"] = 1,["anyhavemagewater"] = 1,

-- Misc Terms
["reasonableprice"] = .5,["bestprice"] = .5,["bestpriceintown"] = .5,["foronly"] = 1,["elsearound"] = 1.5,["everythingaround"] = 2,
["carryservice"] = 6,["courierservice"] = 1,["keyservice"] = 3,["keyholder"] = 1.5,["healservice"] = 6,["tankservice"] = 6,["rogueservice"] = 1,["smeltservice"] = 3,["gankservice"] = 3,["flaskservice"] = 3,["orangeservice"] = 1,
["blacksmithservice"] = 1.5,["tailorservice"] = 3,["leatherworkerservice"] = 3,["engineerservice"] = 3,["disenchantservice"] = 3,["deservice"] = 1,
["allrecipe"] = 3,["allpattern"] = 2,["madeby"] = .5,["bagmaker"] = .5,["fullyrestocked"] = 1,["lastcall"] = 1,["stack"] = .5,
["openubrs"] = 1.5,["openingubrs"] = 1.5,["alchemylab"] = .5,["alchemistlab"] = .5,["foralchemylab"] = .5,["foralchemistlab"] = .5,["needcleareddungeon"] = 1.5,
["alchemistlabclearedid"] = .5,["alchemistlabcleared"] = .5,["alchemistlabclearid"] = .5,["alchemistlabclear"] = .5,["clearedidhere"] = .5,["clearidhere"] = .5,
["stormwindif"] = .25,["ifstormwind"] = .25,
["exquisitemetalwork"] = 1,["elementalsharpening"] = .5,["premiumquality"] = 1,["ordernow"] = 1,["rightchoice"] = .5,["hordeoralliance"] = 1,["allianceorhorde"] = 1,
["bestservice"] = 1,["serviceareopen"] = 1,["lastchance"] = 1,["followingreagentsareneeded"] = 2,["cooldownwme"] = 1,

-- Misc phrases
["tomakeme"] = 1,["goodsandservice"] = 1,["comeondown"] = .5,["whilesupplieslast"] = 1,["whilesupplylasts"] = 1,
["bag"] = .5,["slotbag"] = .5,
["dungeontankservice"] = 2,
["anyoneboostme"] = 1,["youpickitip"] = 2,["limitedtime"] = .5,["mailmetoday"] = 1,["lightenyourpurse"] = 1,
["market"] = .5,["farmersmarket"] = .5,["thankyouforusing"] = 1,
["ubrskey"] = 1,["ubrskey"] = 2,["Cubrskey"] = 1,["openforubrs"] = 1.5,["anyonehavekey"] = .5,

["magicalrefreshmentshere"] = 2,["firstcustomersget"] = 1,["conjuredwater"] = .5,["discounts"] = .5,["magemakeme"] = 1,["magetogroworanges"] = 2,
["orangesmage"] = .5,["magefororanges"] = .5,["magefororangesplease"] = 1.5,["anymagefororanges"] = .5,["mostpattern"] = 1,["mostrecipe"] = 1,

["needthestrongestpotion"] = 2,["emporium"] = 1,["emporiumisnowopen"] = 2,["mobtagging"] = .5,["tagmob"] = .5,

-- Trade Spam that get around my filters
["findmein"] = .5,["findmeon"] = .5,["firsttofindme"] = 1,["offerdungeontours"] = 1,["pleasemessagerate"] = 1,["pleasewhisperrate"] = 2,["commission"] = 1,
["nowonly"] = 1,["toorder"] = .5,["hurryuptoorder"] = 1,["anyoneneedornatemithril"] = 2,["anyoneneedmithrilitem"] = 2,["fortheblacksmithquest"] = 1.5,
["giveawayforfree"] = .75,["givingouttofirst"] = .5,
["hotdancing"] = .5,["dancinggnome"] = .5,["dancingblonde"] = .5,["hotdancingblonde"] = .5,["dancingisdone"] = 1,["dancingisfinished"] = 1,
["feelfreetotip"] = 1.5,["eachparticipant"] = .5,["winuptogold"] = .5,["rollbasedgame"] = .5,

["sunnys"] = 1,["sunnysmarket"] = .5,["pinkyservice"] = 2,["uncleabe"] = 2,["icallfirstdibs"] = 1,
["rafflediscord"] = 1,["discordwinner"] = 1,["winnerofraffle"] = 1,["raffleentry"] = 1,["prizepool"] = 1,["luckonlygold"] = .5,["forluckonlygold"] = .5,

["betterloot"] = .5,
-- WTF is WTB error
["wtf"] = .5,["wtfmagewater"] = 1.5,

-- Other
["anyoneneedtolevel"] = 1.5, -- Was posted with lockpicking leveling offer

-- Common
["A"] = .25,["B"] = .5,["C"] = 1,

-- Summon/Portal
["portal"] = .25,["Bportal"] = .5,["Aportal"] = .25,["Cportal"] = 1,["portalA"] = .5,["portalC"] = 1,
["Aportal"] = .25,["Bportal"] = .5,["Cportal"] = .5,["portalA"] = .5,["portalB"] = .5,["portalC"] = .5,
["CportalA"] = .5,["CportalC"] = .5,
["AAportal"] = .5,["ABportal"] = .5,["ACportal"] = .5,["CCportal"] = 1,["CAportal"] = 1,["CBportal"] = 1,["BBportal"] = 1,["BAportal"] = 1,["BCportal"] = 1,
["portalAA"] = .5,["portalAB"] = .5,["portalAC"] = 1,["portalCC"] = 1,["portalCA"] = 1,["portalCB"] = 1,["portalBB"] = 1,["portalBC"] = 1,

["lfportal"] = 1,["lfmportal"] = 1,["lfgportal"] = 1,["lfsum"] = 1,["lftransport"] = 1,["portalportal"] = 1,["portalservice"] = 6,["lockservice"] = 3,["warlockservice"] = 6,

-- Enchants
["enchant"] = .25,["enhancement"] = .5,["haveenhancement"] = .5,

["Aenchant"] = .25,["Benchant"] = .5,["Cenchant"] = 1,["enchantA"] = .5,["enchantC"] = .5,
["CenchantA"] = .5,["CenchantC"] = .5,
["AAenchant"] = .5,["ABenchant"] = .5,["ACenchant"] = .5,["CCenchant"] = 1,["CAenchant"] = 1,["CBenchant"] = 1,["BBenchant"] = 1,["BAenchant"] = 1,["BCenchant"] = 1,
["enchantAA"] = .5,["enchantAB"] = .5,["enchantAC"] = 1,["enchantCC"] = 1,["enchantCA"] = 1,["enchantCB"] = 1,["enchantBB"] = 1,["enchantBC"] = 1,

-- Misc Enchant
["allwrist"] = 1,["allweapon"] = 1,["allfeet"] = 1,["allboots"] = 1,["allback"] = 1,["allcloak"] = 1,["allchest"] = 1,["damageheal"] = .5,

-- Generic Professions Shared
["leatherworker"] = .5,["tailor"] = .5,["blacksmith"] = .5,["engineer"] = .5,["alchemist"] = .5,["lfsmelter"] = .5,["lfminer"] = 3,
["leatherworkerplease"] = .5,["tailorplease"] = .5,["blacksmithplease"] = .5,["engineerplease"] = .5,["alchemistplease"] = .5,
["enchanttailor"] = 1,["tailorenchant"] = 1,["tailormostaround"] = 1,

-- Blacksmith
["blacksmithputhitem"] = 2.5,["blacksmitharound"] = 2,["blacksmithouthere"] = 2,
["canblacksmith"] = 1,["canblacksmithathitem"] = 1,
["anyoneapply"] = 3,["ableapply"] = 2,["cananyoneapply"] = 2.5,["toapplyon"] = .5,["toapplyto"] = .5,["usehitem"] = 1,["applyhavehitem"] = 1,["canapply"] = .5,

-- Location in cities
["infrontbank"] = 2,["infrontofbank"] = 2,["ifbridge"] = 2,["ironforgebridge"] = 2,
["instormwind"] = .75,["inorgrimmar"] = .75,["atstormwind"] = .75,["atorgrimmar"] = .75,["outsidestormwind"] = .5,["outsideorgrimmar"] = .5,["frontoforgrimmar"] = .5,["infrontoforgrimmar"] = .5,["frontoforgrimmarah"] = .5,["orgrimmarah"] = .5,
["fromstormwind"] = .75,["fromironforge"] = .75,["fromdarnassus"] = .75,["fromorgrimmar"] = .75,["fromundercity"] = .75,["fromthunder"] = .75,
["stormwindbank"] = 1,["bankstormwind"] = 1,["bankinstormwind"] = 1,["ironforgebank"] = 1,["bankironforge"] = 1,["bankinironforge"] = 1,["orgrimmarbank"] = 1,["bankorgrimmar"] = 1,["bankinorgrimmar"] = 1,
["atbank"] = .5,["bybank"] = .5,["freeatbank"] = .5,["alleybybank"] = .5,["frontofbank"] = .5,["stairofbank"] = .5,["topofbank"] = .5,

["banksteps"] = 2,["onsteps"] = .5,["onbanksteps"] = .5,["imonbanksteps"] = .5,["stormwindsteps"] = .5,["stormwindstepsbank"] = .5,["stormwindbanksteps"] = .5,["stepsofstormwindbank"] = .5,["cathedralsteps"] = .5,
["bankstair"] = 2,["onstair"] = .5,["onbankstair"] = .5,["imonbankstair"] = .5,["stormwindstair"] = .5,["stormwindstairbank"] = .5,["stormwindbankstair"] = .5,["stairofstormwindbank"] = .5,["cathedralstair"] = .5,

["auctionhouse"] = 1,["auctionhousenow"] = .5,["localauctionhouse"] = 1,["yourlocalauctionhouse"] = 1,["frontofah"] = .5,["infrontofah"] = .5,
["ahentrance"] = 1,["auctionhouseentrance"] = 1,["ahbridge"] = 2,["auctionhousebridge"] = 2,["ahdoor"] = 2,["auctionhousedoor"] = 2,["outsideah"] = 1,["outsideauctionhouse"] = 1,["twostack"] = .5,["fewstack"] = .5,

["anyoneinstormwind"] = .5,["anyoneinironforge"] = .5,["anyoneindarnassus"] = .5,["anyoneinorgrimmar"] = .5,["anyoneinundercity"] = .5,["anyoneinthunder"] = .5,
["iminstormwind"] = .5,["iminironforge"] = .5,["imindarnassus"] = .5,["iminorgrimmar"] = .5,["iminundercity"] = .5,["iminthunder"] = .5,
["clothstormwind"] = .5,["leatherworkerstormwind"] = .5,["orestormwind"] = .5,["barstormwind"] = .5,
["clothironforge"] = .5,["leatherworkerironforge"] = .5,["oreironforge"] = .5,["barironforge"] = .5,
["clothdarnassus"] = .5,["leatherworkerdarnassus"] = .5,["oredarnassus"] = .5,["bardarnassus"] = .5,
["clothorgrimmar"] = .5,["leatherworkerorgrimmar"] = .5,["oreorgrimmar"] = .5,["barorgrimmar"] = .5,
["clothundercity"] = .5,["leatherworkerundercity"] = .5,["oreundercity"] = .5,["barundercity"] = .5,
["cloththunder"] = .5,["leatherworkerthunder"] = .5,["orethunder"] = .5,["barthunder"] = .5,

["fountain"] = .25,["atfountain"] = .5,["byfountain"] = .5,["onfountain"] = .5,["comeatfountain"] = .5,["stormwindfountain"] = .5,["topoffountain"] = 1,["stopbyfountain"] = .5,["nearfountain"] = .25,["nearstormwindfountain"] = .5,
["anyrogueatfountain"] = 1.5,["atfountainforhitem"] = .5,["needrogueat"] = .5,["rogueathitem"] = .5,["forfreeatfountain"] = 1,

["infrontbank"] = 2,["infrontofbank"] = 2,["outsidebank"] = 1,["outsideofbank"] = 1,["openoutsidebank"] = 1,["openoutsideofbank"] = 1,

-- Lockbox
["lockbox"] = 1,["havebox"] = 1,["mybox"] = .5,["lockforfree"] = .5,["boxforfree"] = .5,
["openchest"] = .5,["openitplease"] = 1.5,["openthemup"] = .5,["opensomelock"] = .5,["openanylock"] = .5,["openyourbox"] = 2,["openyourlock"] = 1,["openingchest"] = .5,["openingthemup"] = .5,
["unlockforfree"] = .5,["unlocksomelock"] = 1,["unlockanylock"] = 1,["unlocklock"] = 1,["unlockyourlock"] = 1,["unlockyoubox"] = 1,["unlockmylock"] = 1,["unlockmybox"] = 1,

["anyupnowpick"] = 1.5,["anyoneupnowpick"] = 1.5,["ihavekey"] = .5,["ipickthem"] = 1,["illopenyour"] = 1,["locktopick"] = 1.5,["iwillopenthem"] = .5,["crackitopen"] = .5,["crackitopenfor"] = .5,["bringoutyourbox"] = 1.5,["bringyourbox"] = 1.5,
["pickoflock"] = 1,["picktheirlock"] = 1.5,["picktheirbox"] = 1.5,["pickyourlock"] = 1,["pickyourbox"] = 1,["pickmylock"] = 1,["pickmybox"] = 1,["pickedforfree"] = .5,
["lockboxgatherdust"] = 1.5,["stuckwithstubbornchest"] = 3,["doesyourbox"] = 1,["rogueringsomebox"] = 1,["getthempicked"] = .5,

-- Rogue Lockbox
["anyroguearound"] = 1,["anyroguefor"] = 1,["anyrogueto"] = .5,["anyroguethatcan"] = .5,["anyroguewhocan"] = .5,["anyrogueableto"] = 1,["anyroguecanhelp"] = 2,["anyroguedoingchest"] = 1.5,
["roguethatcan"] = .5,["roguewhocan"] = .5,["roguehere"] = .5,["needhelprogue"] = .5,["needhelproguebox"] = 1,["canrogue"] = 1,["canrogueplease"] = .5,["willrogue"] = 1,["anyroguehelpingto"] = 1.5,["openneedrogue"] = .5,

["anyrogueinorgrimmar"] = 1,["anyrogueinstormwind"] = 1,["anyrogueinundercity"] = 1,["anyrogueinironforge"] = 1,["anyrogueinif"] = 1,["anyrogueinud"] = 1,
["rogueinorgrimmar"] = 1,["rogueinstormwind"] = 1,["rogueinundercity"] = 1,["rogueinironforge"] = 1,["rogueinif"] = 1,["rogueinud"] = 1,["rogueindarnassus"] = 1,["rogueinthunderbluff"] = 1,

-- Gambling
["fortunefavorsbold"] = 3,["youtocanwin"] = 3,["comeandplaynow"] = 3,["highestpayoutgiventoday"] = 3,["winsomeeasygold"] = 3,["needtoberich"] = 1.5,["yourwishcometrue"] = 1,

["casino"] = 1,["casinoroyale"] = 1,["casinoishere"] = 1,
["bestodds"] = 1,["betbig"] = 1,["winbig"] = 1,

["doubleyourgold"] = 1.5,["tripleyourgold"] = 1.5,["playsomecasino"] = 2,["testyourluck"] = 2.5,["tryyourluck"] = 2.5,["getrichnow"] = 2.5,["goldforeverybody"] = 3,["goingtoberich"] = 1.5,["atcasino"] = 1.5,["winitall"] = 1,
["doubleyoursilver"] = 1.5,["tripleyoursilver"] = 1.5,["poormanscasino"] = 2,["ladyluckissmiling"] = 2,["todayatcasino"] = .5,
["fulfillallyourwishes"] = 1.5,["chanceonwinning"] = 1,["winningprize"] = 1,["winningprice"] = 1,

["earngold"] = .5,["canearngold"] = .5,["peoplecanearngold"] = .5,["freeenter"] = .5,

-- Deathroll
["deathroll"] = 1,["anyoneneedtodeathroll"] = 1,["needtodeathroll"] = 3,["anyonedeathroll"] = 3,["deathrollanyone"] = 3,["anydeathrollin"] = 3,["anydeathrollenjoyers"] = 3,
["rollforgold"] = 1,["needtorollforgold"] = 3,["highstakeroller"] = 3,["highstakedeathroll"] = 3,["hmuforfiredeathroll"] = 3,["tryingtodeathroll"] = 3,
["anyhighroller"] = 1,["highrollerupto"] = 1,["anyrollerupto"] = 1.5,["rollerupto"] = .5,["rolleruptok"] = .5,["uptok"] = .5,

-- Turtle
["beltbuckle"] = 1,

-- Jewelcrafting
["gem"] = .25,["gemstone"] = .25,["anygem"] = 1,["lfgem"] = .5,["allgem"] = 1,["allgemaround"] = 2,["allgemstonearound"] = 2,["gemifyouneed"] = 3,["anygemring"] = 1,["anygemringneck"] = 1,["anygembelt"] = 1,["allkindofgem"] = 1,["haveallkind"] = .5,
["masterspecialization"] = 1.5,["specializationmaster"] = 1.5,["gemstoneforyour"] = 1.25,

-- Two Words
["cosmiccloth"] = .5,["etherealleatherworker"] = .5,["cosmicpieces"] = 1,["etherealpieces"] = 1,["shadowforgedeye"] = 1,

-- To Belt
["statstrinket"] = 1,["toimprovemyneck"] = 1,["dreamsteelbuckle"] = .5,["anydreamsteelbuckle"] = 1,
}
GF_WORD_TRADE_PHRASE = {
-- Common
["CA"] = true,["CC"] = true,["CB"] = true,
["lockboxA"] = true,["lockboxB"] = true,["lockboxC"] = true,["Blockbox"] = true,["Clockbox"] = true,

["portalcombo"] = true,["comboportal"] = true,
-- Rogue/Lockbox
["roguechestopening"] = true,["roguechestopen"] = true,
["lockonbanksteps"] = true,["lockonbankstair"] = true,
["anydeathroll"] = true,["anyroller"] = true,
["lfstats"] = true,["lfcloth"] = true,["lfore"] = true,["lfbar"] = true,["lfstone"] = true,
["anyorangesaround"] = true,

-- Equipment
["lfaxe"] = true,["lfbelt"] = true,["lfboots"] = true,["lfbow"] = true,["lfchest"] = true,["lfcloak"] = true,["lfcrossbow"] = true,
["lfdagger"] = true,["lfgloves"] = true,["lfgun"] = true,["lfhead"] = true,["lflegs"] = true,["lfmace"] = true,["lfneck"] = true,["lfring"] = true,["lfshoulder"] = true,
["lfstaff"] = true,["lfsword"] = true,["lfwand"] = true,["lfweapon"] = true,["lfwrist"] = true,["lfxbow"] = true,

["wouldCA"] = true,
} -- Max length four words
GF_TRADE_PREFIX_SUFFIX = {
["C"] = 1,
["forfree"] = 2,
["stillfree"] = 1,
["tosell"] = 2,
["tobuy"] = 2,
["xsell"] = 2,
["xbuy"] = 2,
["stack"] = 1,
["ah"] = 1,
["onah"] = 1,
["inah"] = 1,
["ontheah"] = 1,
["intheah"] = 1,
["around"] = .5,
["andmore"] = 1.5,
["free"] = 1,
["get"] = 0,
["now"] = 0,
["vendorprice"] = 1,
["xvendorprice"] = 1,
["instormwind"] = 1,
["inironforge"] = 1,
["inorgrimmar"] = 1,
["anyonecrafting"] = 1,
["givingaway"] = 2,
["alliance"] = 0,
["horde"] = 0,
["away"] = 0,
}
GF_WORD_TRADE_QUESTION = {
["noenchant"] = 3,
["Bportal"] = 2,["portalB"] = 2,
["Cenchant"] = 2,["enchantC"] = 2,
["Clockbox"] = 2,["lockboxC"] = 2,
["anyoranges"] = 3,
}
GF_TRADE_FIRST_LAST = {
["need"] = { ["C"] = true, },
["lf"] = { ["portal"] = true,["enchant"] = true,["alchemist"] = true,["blacksmith"] = true,["engineer"] = true,["tailor"] = true,["leatherworker"] = true,["smelter"] = true, },
["C"] = { ["C"] = true, },
["any"] = { ["C"] = true, },
}
GF_TRADE_FIRST_TWO = {
["CC"] = 1,["anyoneblacksmith"] = 1,["anyoneleatherworker"] = 1,["anyonetailor"] = 1,["anyonealchemy"] = 1,["anyoneenchant"] = 1,["anyoneengineer"] = 1,
}
GF_TRADE_WORD_EXCLUSION = {
["lfm"] = 2,["lfg"] = 1,["hr"] = 1,["ms"] = 1,["os"] = 1,
["range"] = 1,["melee"] = 1,
["heallf"] = 1,["tanklf"] = 1,["damagelf"] = 1,
["druidlf"] = 1,["hunterlf"] = 1,["magelf"] = 1,["paladinlf"] = 1,["priestlf"] = 1,["roguelf"] = 1,["shamanlf"] = 1,["warlocklf"] = 1,["warriorlf"] = 1,
["utc"] = 1,["cet"] = 1,["msk"] = 1,["est"] = 1,["cst"] = 1,
["girl"] = 1,["boy"] = 1,["dad"] = 1,["mom"] = 1,["he"] = 1,["her"] = 1,["they"] = .25,["milf"] = 1,["mysister"] = 1,
["cousin"] = 1,["grandfather"] = 1,["grandmother"] = 1,["mydad"] = 1,["mymom"] = 1,["mybrother"] = 1,

["addon"] = 1,["adventurers"] = 1,["advice"] = 1,["anyoneactuallyC"] = 1,["beforereset"] = 2,["bored"] = 1,["btw"] = 1,["carryme"] = 1,["cringe"] = 1,["discord"] = 1,
["discord"] = 1,["dungeon"] = .5,["eachrole"] = 1,["edgy"] = 1,["elusive"] = 1,["empty"] = 1,["farts"] = 1,["findhim"] = 1,["firstidol"] = 1,["firsttofinish"] = 1,
["fromsending"] = 1,["gank"] = 1,["ganks"] = 1,["guild"] = 1,["haveroom"] = 1,["homie"] = 1,["ikindof"] = 1,["inventory"] = 1,["isanyoneactually"] = 1,["itstopsme"] = 1,["justclick"] = 1,
["makesense"] = 1,["musthave"] = 1,["ne"] = 1,["opinion"] = 1,["pleasebring"] = 1,["pleasehave"] = 1,["priority"] = 1,["progression"] = 1,["proveit"] = 1,["quest"] = 1,["raidres"] = 1,
["reallife"] = 1,["recruiting"] = 1,["reserved"] = 1,["ripheroff"] = 1,["riphimoff"] = 1,["ripoff"] = 1,["rippeopleoff"] = 1,["ripplayeroff"] = 1,["ripthemoff"] = 1,["ripusoff"] = 1,
["roster"] = 1,["rules"] = 1,["runme"] = 1,["scam"] = .5,["sendingmessages"] = 1,["shouldi"] = 1,["thatstuff"] = 1,["tojoin"] = 1,["tosay"] = 1,["treasurehunter"] = 1,
["turnback"] = 1,["typethat"] = 1,["needtowrite"] = 1,["weekly"] = 1,["weknow"] = 1,["wentout"] = 1,["whatdoyouthink"] = 1,["whatisbest"] = 1,["whatisbetter"] = 1,
["wheneveritype"] = 1,["whichisbest"] = 1,["whichisbetter"] = 1,["whycanti"] = 1,["whyicant"] = 1,["willneed"] = 1,
["withoutbreaks"] = 1,["woah"] = 1,["worldchat"] = 1,["backin"] = 1,

["ratslarge"] = 1,["whatdoyou"] = 1,["doyounot"] = 1,["younotunderstand"] = 1,["youdonotunderstand"] = 1,["understandabout"] = 1,["understandthat"] = 1,
["theycangiveme"] = 1,["cantaffordmy"] = 1,["myspells"] = 1,["mytalents"] = 1,["myabilities"] = 1,["firstcharacter"] = 1,
["forfree"] = .5,["freeofcharge"] = .5,["ifyouneed"] = .5,["youcanhave"] = .5,["gift"] = .5,["mygift"] = .5,
["saysguy"] = 1,["loseit"] = 2,["worldchat"] = 2,["lowping"] = 1,["question"] = .5,
["heardrumors"] = 1,["rumorsabout"] = 1,["aboutblizzard"] = 1,["Cthisserver"] = 1,
["whycanti"] = 1,["lft"] = 1,["doesnotportal"] = 1,["makegroup"] = 1,

["smalltwink"] = 1,["dankmemes"] = 1,["myass"] = 1,["spam"] = 1.25,["gf"] = 1,["wife"] = 1,["girlfriend"] = 1,["bf"] = 1,["boyfriend"] = 1,
["wtbsmalltwink"] = .5,["wtbdankmemes"] = .5,["wtbmyass"] = .5,["wtbspam"] = 1.25,["wtbgf"] = .5,["wtbwife"] = .5,["wtbgirlfriend"] = .5,["wtbbf"] = .5,["wtbboyfriend"] = .5,
["wtssmalltwink"] = .5,["wtsdankmemes"] = .5,["wtsmyass"] = .5,["wtsspam"] = 1.25,["wtsgf"] = .5,["wtswife"] = .5,["wtsgirlfriend"] = .5,["wtsbf"] = .5,["wtsboyfriend"] = .5,

["realthing"] = .5,
["inbfa"] = 1,["intbc"] = 1,["inwotlk"] = 1,["inwod"] = 1,["inshadowlands"] = 1,["inlegion"] = 1,["inmop"] = 1,

["startfrom"] = 1,["isgay"] = 1,["doesnttype"] = 1,["donotlethim"] = 1,["hadto"] = 1,["donotneed"] = 1,["youdonotneed"] = 1,

["garrbinding"] = 1,["raidroll"] = .5,["douse"] = .5,["forwhat"] = .5,["doineed"] = 1,["thereareno"] = 1,["baseprice"] = 1,["withprice"] = .5,["priceplease"] = .5,["dothese"] = .5,["doesthis"] = .5,["stackwith"] = .5,["noneed"] = .5,["remember"] = .5,
["usd"] = .5,["incash"] = .5,["Cincash"] = 1,["Citcash"] = 1,["tellmehow"] = 1,["howtoget"] = 1,["seemstobe"] = 1,["whythereis"] = 1,["almostnone"] = 1.25,
["gnomes"] = 1,["repfarm"] = 1,["cenarionrep"] = 1,["canjoin"] = 1,["onceinside"] = 1,
["gmssay"] = 1,["allmonitored"] = 1,["aremonitored"] = 1,["donotpunish"] = 1,["obviousC"] = 1,["areputting"] = 1,["whitelevel"] = 1,
["cantuseportalservice"] = 6,
["gnomewarrior"] = 1,["gnomerogue"] = 1,["gnomemage"] = 1,["gnomewarlock"] = 1,["gnomepaladin"] = 1,["gnomepriest"] = 1,
["humanwarrior"] = 1,["humanrogue"] = 1,["humanpaladin"] = 1,["humanmage"] = 1,["humanpriest"] = 1,["humanwarlock"] = 1,["humanhunter"] = 1,
["dwarfwarrior"] = 1,["dwarfrogue"] = 1,["dwarfpriest"] = 1,["dwarfpaladin"] = 1,["dwarfshaman"] = 1,
["nightelfwarrior"] = 1,["nightelfrogue"] = 1,["nightelfpriest"] = 1,["nightelfhunter"] = 1,["nightelfdruid"] = 1,
["highelfwarrior"] = 1,["highelfrogue"] = 1,["highelfpriest"] = 1,["highelfhunter"] = 1,["highelfpaladin"] = 1,["highelfwarlock"] = 1,["highelfmage"] = 1,

["orcwarrior"] = 1,["orcrogue"] = 1,["orcpriest"] = 1,["orchunter"] = 1,["orcshaman"] = 1,["orcwarlock"] = 1,["orcmage"] = 1,
["trollwarrior"] = 1,["trollrogue"] = 1,["trollpriest"] = 1,["trollhunter"] = 1,["trollshaman"] = 1,["trollwarlock"] = 1,["trollmage"] = 1,
["undeadwarrior"] = 1,["undeadrogue"] = 1,["undeadpriest"] = 1,["undeadhunter"] = 1,["undeadpaladin"] = 1,["undeadwarlock"] = 1,["undeadmage"] = 1,
["taurenwarrior"] = 1,["taurenrogue"] = 1,["taurenpriest"] = 1,["taurenhunter"] = 1,["taurenshaman"] = 1,["taurenwarlock"] = 1,["taurenmage"] = 1,["taurendruid"] = 1,
["goblinwarrior"] = 1,["goblinrogue"] = 1,["goblinpriest"] = 1,["goblinhunter"] = 1,["goblinshaman"] = 1,["goblinwarlock"] = 1,["goblinmage"] = 1,

["onthisserver"] = 1,
["wouldthat"] = 1,["canyoulearn"] = .5,["wheretolearn"] = .5,
["youwillhave"] = .5,
["betterfarm"] = .5,
["farmmatyourself"] = .5,
["farmmat"] = .5,
["isitconsidered"] = .5,["dickmove"] = .5,
["ingame"] = 1,["ingamestore"] = 1.5,

["doiwtb"] = 1,["doineed"] = 1,["professionpast"] = .5,["professionabove"] = .5,["donotyouget"] = 1,["ifyoumake"] = 1,["Cthosetovendor"] = 1.5,["Cthemtovendor"] = 1.5,["elsegiveheal"] = 1,["elsegive"] = .5,["lftank"] = .3,
["kilogram"] = .5,["nokias"] = .5,["kilogramofnokias"] = .5,

["cantevenC"] = 1,["throttlesme"] = 1,["thenwheni"] = 1,["betweeneachpurchase"] = 1,

["dmwrep"] = .5,
["dustytomes"] = .5,

--[[
[""] = 1,
[""] = 1,
--]]
}
GF_TRADE_PORTAL_SKIP = {
["canportal"] = true,
["haveportal"] = true,
["willportal"] = true,
["ableportal"] = true,
}
GF_TRADE_PORTAL_SKIP_NAMES = {
["aq"] = true,
["blackrock"] = true,
["cot"] = true,
["diremaul"] = true,
["dm"] = true,
["dme"] = true,
["dmw"] = true,
["dmn"] = true,
["if"] = true,
["karazhan"] = true,
["sm"] = true,
}
GF_TRADE_COMMON_NAMES = {
["A"] = true,
["B"] = true,
["C"] = true,
["enchant"] = true,
["portal"] = true,
["lockbox"] = true,
["oranges"] = true,
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
["quest"] = "QUEST",["dungeon"] = "DUNG",["foranything"] = "DUNG",["lfganything"] = "DUNG",["anyraid"] = "RAID",["lfraid"] = "RAID",["needraid"] = "RAID",["raidlf"] = "RAID",["gdkpraid"] = "RAID",

["crescent"] = "CG",["grove"] = "CG",["crescentgrove"] = "CG",["cg"] = "CG",["tcg"] = "CG",["gc"] = "GC",["gilneas"] = "GC",["gilneascity"] = "GC",
["hateforge"] = "HFQ",["hate"] = "HFQ",["forge"] = "HFQ",["quarry"] = "HFQ",["hateforgequarry"] = "HFQ",["hq"] = "HFQ",["hf"] = "HFQ",["hfq"] = "HFQ",
["sv"] = "SWV",["swv"] = "SWV",["vault"] = "SWV",["swvault"] = "SWV",["stormwindv"] = "SWV",["stormwindvault"] = "SWV",["morass"] = "COT",["blackmorass"] = "COT",["cavernsoftime"] = "COT",["bm"] = "COT",["cot"] = "COT",
["crypt"] = "CRYPT",["crypts"] = "CRYPT",["karacrypt"] = "CRYPT",["karacrypts"] = "CRYPT",["karazhancrypt"] = "CRYPT",["karazhancrypts"] = "CRYPT",
["dragonmawretreat"] = "DRAG",["dragonmaw"] = "DRAG",["dmr"] = "DRAG",["stormwrought"] = "STORM",["stormwroughtruins"] = "STORM",["stormwroughtcastle"] = "STORM",["stormwroughtdescent"] = "STORM",["swc"] = "STORM",["swr"] = "STORM",["swd"] = "STORM",

["zul"] = "ZG",["zg"] = "ZG",["gurub"] = "ZG",["zulgurub"] = "ZG",["hakkar"] = "ZG",["aq"] = "AQ",["ahn"] = "AQ",["qiraj"] = "AQ",["ahnqiraj"] = "AQ",["ossirian"] = "AQ",["ossi"] = "AQ",["cthun"] = "AQ",["ruinsofahnqiraj"] = "AQ",["aqrepfarm"] = "AQ",
["mc"] = "MC",["moltencore"] = "MC",["molten"] = "MC",["core"] = "MC",["rag"] = "MC",["ragnaros"] = "MC",["onyxia"] = "ONY",["ony"] = "ONY",["nef"] = "BWL",
["bwl"] = "BWL",["blackwinglair"] = "BWL",["blackwing"] = "BWL",["lair"] = "BWL",["nefarian"] = "BWL",["nef"] = "BWL",
["nax"] = "NAXX",["naxx"] = "NAXX",["naxxramas"] = "NAXX",["kt"] = "NAXX",["azuregos"] = "WB",["kazzak"] = "WB",["lethon"] = "WB",["ysondre"] = "WB",["taerar"] = "WB",["emeriss"] = "WB",["worldboss"] = "WB",

["es"] = "ES",["sanctum"] = "ES",["emerald"] = "ES",["emeraldsanctum"] = "ES",["k10"] = "KARA",["k40"] = "KARA",["kara"] = "KARA",["karazhan"] = "KARA",["lowerkarazhan"] = "KARA",["upperkarazhan"] = "KARA",["karazhanhalls"] = "KARA",
["concavius"] = "WB",["ostarius"] = "WB",["nerub"] = "WB",["reaver"] = "WB",["clackora"] = "WB",

["av"] = "PVP",["alteracvalley"] = "PVP",["ab"] = "PVP",["arathibasin"] = "PVP",["wsg"] = "PVP",["battleground"] = "PVP",["warsong"] = "PVP",["warsonggulch"] = "PVP",["premade"] = "PVP",["bg"] = "PVP",["bgs"] = "PVP",["pvp"] = "PVP",["arenas"] = "PVP",
["bloodring"] = "PVP",["sunnygladevalley"] = "PVP",["sunnyglade"] = "PVP",
}
GF_QUEST_ZONE_ID = {
[0] = "undefined",[1] = "Dun Morogh",[3] = "Badlands",[4] = "Blasted Lands",[8] = "Swamp of Sorrows",[9] = "Northshire Valley",[10] = "Duskwood",
[11] = "Wetlands",[12] = "Elwynn Forest",[14] = "Durotar",[15] = "Dustwallow Marsh",[16] = "Azshara",[17] = "The Barrens",[19] = "Zul\'Gurub",
[22] = "Programmer Isle",[24] = "Northshire Abbey",[25] = "Blackrock Mountain",[28] = "Western Plaguelands",[33] = "Stranglethorn Vale",[35] = "Booty Bay",[36] = "Alterac Mountains",
[38] = "Loch Modan",[40] = "Westfall",[41] = "Deadwind Pass",[42] = "Darkshire",[44] = "Redridge Mountains",[45] = "Arathi Highlands",[46] = "Burning Steppes",
[47] = "The Hinterlands",[51] = "Searing Gorge",[61] = "Thunder Falls",[81] = "Jeff NE Quadrant Changed",[82] = "Jeff NW Quadrant",[85] = "Tirisfal Glades",[101] = "Kurzen\'s Compound",
[121] = "Tranquil Gardens Cemetery",[130] = "Silverpine Forest",[131] = "Kharanos",[132] = "Coldridge Valley",[133] = "Gnomeregan",[139] = "Eastern Plaguelands",[141] = "Teldrassil",
[148] = "Darkshore",[154] = "Deathknell",[161] = "Terrace of Repose",[162] = "Brightwater Lake",[188] = "Shadowglen",[201] = "Gahrron\'s Withering",[209] = "Shadowfang Keep",
[215] = "Mulgore",[220] = "Red Cloud Mesa",[221] = "Camp Narache",[261] = "Gnarlpine Hold",[262] = "Ban\'ethil Barrow Den",[263] = "The Cleft",[264] = "The Oracle Glade",
[267] = "Hillsbrad Foothills",[279] = "Dalaran",[284] = "The Uplands",[324] = "Stromgarde Keep",[331] = "Ashenvale",[344] = "Camp Cagg",[357] = "Feralas",
[361] = "Felwood",[363] = "Valley of Trials",[364] = "The Den",[365] = "Burning Blade Coven",[366] = "Kolkar Crag",[368] = "Echo Isles",[369] = "Thunder Ridge",
[400] = "Thousand Needles",[405] = "Desolace",[406] = "Stonetalon Mountains",[408] = "Gillijim\'s Isle",[409] = "Lapidis Isle",[440] = "Tanaris",[490] = "Un\'Goro Crater",
[491] = "Razorfen Kraul",[493] = "Moonglade",[616] = "Hyjal",[618] = "Winterspring",[702] = "Rut\'theran Village",[717] = "The Stockade",[718] = "Wailing Caverns",
[719] = "Blackfathom Deeps",[721] = "Gnomeregan",[722] = "Razorfen Downs",[796] = "Scarlet Monastery",[978] = "Zul\'Farrak",[1116] = "Feathermoon Stronghold",[1176] = "Zul\'Farrak",
[1216] = "Timbermaw Hold",[1337] = "Uldaman",[1377] = "Silithus",[1417] = "Sunken Temple",[1477] = "The Temple of Atal\'Hakkar",[1497] = "Undercity",[1517] = "Uldaman",
[1519] = "Stormwind City",[1537] = "Ironforge",[1581] = "The Deadmines",[1583] = "Blackrock Spire",[1584] = "Blackrock Depths",[1637] = "Orgrimmar",[1638] = "Thunder Bluff",
[1657] = "Darnassus",[1717] = "Razorfen Kraul",[1769] = "Timbermaw Hold",[1941] = "Caverns of Time",[1977] = "Zul\'Gurub",[2017] = "Stratholme",[2040] = "Alah\'Thalas",
[2041] = "Amani\'Alor",[2057] = "Scholomance",[2079] = "Alcaz Island",[2100] = "Maraudon",[2159] = "Onyxia\'s Lair",[2257] = "Deeprun Tram",[2300] = "Caverns of Time",
[2437] = "Ragefire Chasm",[2557] = "Dire Maul",[2562] = "Karazhan",[2597] = "Alterac Valley",[2677] = "Blackwing Lair",[2717] = "Molten Core",[2839] = "Alterac Valley",
[3277] = "Warsong Gulch",[3358] = "Arathi Basin",[3428] = "Ahn\'Qiraj",[3429] = "Ruins of Ahn\'Qiraj",[3456] = "Naxxramas",[3457] = "Tower of Karazhan",[3478] = "Gates of Ahn\'Qiraj",
[4012] = "Scarlet Enclave",[5023] = "Sunnyglade Valley",[5024] = "Icepoint Rock",[5077] = "Crescent Grove",[5086] = "Karazhan Crypt",[5087] = "Stormwind Vault",[5097] = "Emerald Sanctum",
[5103] = "Hateforge Quarry",[5121] = "Tel\'Abim",[5130] = "Winter Veil Vale",[5135] = "Scarlet Monastery Library",[5138] = "The Deadmines",[5144] = "Deeprun Tram",[5147] = "Ahn\'Qiraj",
[5153] = "Scarlet Monastery Armory",[5163] = "Scarlet Monastery Cathedral",[5179] = "Gilneas",[5204] = "The Black Morass",[5208] = "Gilneas City",[5225] = "Thalassian Highlands",[5536] = "Blackstone Island",
[40001]="Emerald Dragons",[40002]="Special",[40003]="Herbalism",[40004]="Warlock",[40005]="Warrior",[40006]="Shaman",[40007]="Fishing",[40008]="Blacksmithing",[40009]="Paladin",[40010]="Mage",
[40011]="Rogue",[40012]="Alchemy",[40013]="Leatherworking",[40014]="Engineering",[40015]="Tanaris",[40016]="Hunter",[40017]="Priest",[40018]="Druid",[40019]="Tailoring",
[40020]="Children's Week",[40021]="Cooking",[40022]="First Aid",[40023]="Legendary",[40024]="Darkmoon Faire",[40025]="AQ War Effort",
[40026]="Lunar Festival",[40027]="Scourge Invasion",[40028]="Capital Cities",

[304]="Cooking",[181]="Alchemy",[182]="Leatherworking", -- temporary until I fix bug
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
[29] = { "Quests", 1, 60, "QUEST" },
[30] = { "PvP", 18, 60, "PVP" },
[31] = { GF_CLEAR, 1, 60, "" },
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
[3] = { "AQ40", 1, 60, "aq40", "Ahn'Qiraj", 63, 40, },
[4] = { "Naxxramas", 1, 60, "naxx", "Naxxramas", 63, 40, },
[5] = { "Onyxia", 1, 60, "onyxia", "Onyxia's Lair", 63, 40, },
[6] = { "ZG", 1, 60, "zg", "Zul'Gurub", 63, 20, },
[7] = { "AQ20", 1, 60, "aq20", "Ruins of Ahn'Qiraj", 63, 20, },
	},
	["LFGPvP"] = {
[1] = { "Arathi Basin", 1, 60, "ab", "Arathi Basin", 63, },
[2] = { "Alterac Valley", 1, 60, "av", "Alterac Valley", 63 },
[3] = { "Warsong Gulch", 1, 60, "wsg", "Warsong Gulch", 63, },
	},
	["LFGSize"] = {
[1] = { GF_5_MAN, 1, 60, 5, },
[2] = { GF_10_MAN, 1, 60, 10, },
[3] = { GF_15_MAN, 1, 60, 15, },
[4] = { GF_20_MAN, 1, 60, 20, },
[5] = { GF_25_MAN, 1, 60, 25, },
[6] = { GF_30_MAN, 1, 60, 30, },
[7] = { GF_40_MAN, 1, 60, 40, },
	},
	["LFGHardCore"] = {
[1] = { GF_SHOW_NORMAL_HC, 1, 60, GF_WORLD_SEND_TEXT, true, true, },
[2] = { GF_SHOW_NORMAL, 1, 60, GF_WORLD_SEND_TEXT, true, nil, },
[3] = { GF_SHOW_HARDCORE, 1, 60, GF_WORLD_SEND_TEXT, nil, true, },
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

GF_QUEST_CONVERT = {

}
GF_QUEST_CONVERT_NEGATIVE_ID = {
[1] = 40001,[22] = 40002,[24] = 40003,[61] = 40004,[81] = 40005,[82] = 40006,[101] = 40007,[121] = 40008,[141] = 40009,[161] = 40010,[162] = 40011,[181] = 40012,[182] = 40013,[201] = 40014,[221] = 40015,
[261] = 40016,[262] = 40017,[263] = 40018,[264] = 40019,[284] = 40020,[304] = 40021,[324] = 40022,[344] = 40023,[364] = 40024,[365] = 40025,[366] = 40026,[368] = 40027,[369] = 40028,
}

-- Turtle additions
GF_HIGH_ELF = "High Elf"
GF_GOBLIN = "Goblin"
local GF_TurtleSearchList = {
[1] = { "Dragonmaw Retreat", 26, 32, "DRAG",},
[2] = { "Crescent Grove", 32, 40, "CG",},
[3] = { "Stormwrought Ruins", 35, 42, "STORM",},
[4] = { "Gilneas City", 43, 49, "GC", },
[5] = { "Hateforge Quarry", 52, 60, "HFQ", },
[6] = { "Stormwind Vault", 58, 60, "SWV", },
[7] = { "Black Morass", 58, 60, "COT", },
[8] = { "Karazhan Crypt", 60, 60, "CRYPT", },
[9] = { "Emerald Sanctum", 60, 60, "ES", },
}
local GF_TurtleGroupButtonsListDungeons = { -- header, min to show, max to show, filter to remove names, filter to remove names, Who list level
[1] = { "Dragonmaw Retreat", 26, 32, "dmr", "Dragonmaw Retreat", 28, },
[2] = { "Crescent Grove", 32, 40, "cg", "Crescent Grove", 36, },
[3] = { "Stormwrought Ruins", 35, 42, "stormwrought", "Stormwrought Ruins", 39, },
[4] = { "Gilneas City", 42, 49, "gilneas", "Gilneas City", 46, },
[5] = { "Hateforge Quarry", 52, 60, "quarry", "Hateforge Quarry", 61, },
[6] = { "Stormwind Vault", 58, 60, "vault", "Stormwind Vault", 61, },
[7] = { "Black Morass", 58, 60, "morass", "Black Morass", 63, },
[8] = { "Karazhan Crypt", 60, 60, "crypt", "Karazhan Crypt", 63, },
}
local GF_TurtleGroupButtonsListRaids = {
[1] = { "Upper Karazhan", 1, 60, "kara40", "Upper Karazhan", 63, 40, },
[2] = { "Lower Karazhan", 1, 60, "kara10", "Lower Karazhan", 63, 10, },
[3] = { "Emerald Sanctum", 60, 60, "sanctum", "Emerald Sanctum", 63, 40, },
} -- [3] = { "AQ15", 1, 60, "aq15", "Ruins of Ahn'Qiraj", 63, 20, },
local GF_TurtleSearchListNew40RaidString = { "40-man Raids", 60, 60, "MC", "ONY", "BWL", "AQ", "NAXX", "WB", "KARA", "ES" }
local GF_TurtleSearchListNew20RaidString = { "20-man Raids", 58, 60, "ZG", "AQ", "KARA" }
function GF_AddTurtleWoWDungeonsRaids()
	GF_BUTTONS_LIST.SearchList[27] = GF_TurtleSearchListNew40RaidString
	GF_BUTTONS_LIST.SearchList[28] = GF_TurtleSearchListNew20RaidString
	--GF_BUTTONS_LIST.LFGRaid[7] = { "AQ15", 1, 60, "aq15", "Ruins of Ahn'Qiraj", 63, 20, }
	for i=1, getn(GF_TurtleSearchList) do table.insert(GF_BUTTONS_LIST.SearchList, 27, GF_TurtleSearchList[i]) end
	for i=1, getn(GF_TurtleGroupButtonsListDungeons) do table.insert(GF_BUTTONS_LIST.LFGDungeon, 28, GF_TurtleGroupButtonsListDungeons[i]) end
	for i=1, getn(GF_TurtleGroupButtonsListRaids) do table.insert(GF_BUTTONS_LIST.LFGRaid, 8, GF_TurtleGroupButtonsListRaids[i]) end
	table.insert(GF_BUTTONS_LIST.LFGSize, 3, { GF_12_MAN, 1, 60, 12, } )
	GF_GenTooltips["GF_FrameUseWhoOnGroupsCheckButton"].tooltip2 = GF_GenTooltips["GF_FrameUseWhoOnGroupsCheckButtonTurtle"].tooltip2
end