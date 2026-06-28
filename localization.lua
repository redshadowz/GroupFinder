GF_WORLD_CHANNEL_NAME = "World"
GF_LFG_CHANNEL_NAME = "LookingForGroup"
GF_EPOCH_SERVERS_LIST = { ["Kezan"] = true, ["Gurubashi"] = true, }
GF_TURTLE_SERVERS_LIST = { ["Nordanaar"] = true, ["Tel'Abim"] = true, ["Ambershire"] = true }
GF_KNOWN_SERVERS_LIST = { ["Nordanaar"] = true, ["Tel'Abim"] = true, ["Ambershire"] = true }
GF_HARDCORE_SPELL_NAME = "Hardcore"
GF_HARDCORE_TURTLE_SUBTEXT = "Challenge"
GF_CHANNEL_BYPASS_LIST = { ["LFT"] = true, }
GF_CHANNEL_NO_LOG_LIST = { ["LFG"] = true, }
--GF_LFG_TIMEOUT_TRIGGER = { ["LFG:"] = true,["LFM:"] = true, }
GF_LFG_PARTY_READY = ":party:ready:"
GF_LFG_LEFT_QUEUE = "leftQueue"
GF_LFG_BLOCK_TRIGGER = { ["[LFG]"] = true,["goingWith"] = true,["found"] = true,["leftQueue"] = true, }

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
GF_ORC		= "Orc"
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

-- Binding Names
BINDING_HEADER_GF_MAIN_HEADER	= "Group Finder" -- Main window title
BINDING_NAME_GF_SHOW_FRAME		= "Toggle Main Window" -- Bindings Name
BINDING_NAME_GF_SHOW_LOG		= "Toggle Log Window"
BINDING_NAME_GF_SHOW_GROUP		= "Toggle Group Window"

-- Main window common buttons and texts
GF_MAIN_HEADER = "Group Finder" -- Main window title
GF_GROUP_LISTINGS = "Group Listings" -- Label for Groupfinder tab
GF_CHAT_FILTERS = "Chat Filters"
GF_GROUP_FILTERS = "Group Filters"
GF_SHOW_GROUPS_IN = "Show groups in"
GF_WORLD_SEND_TEXT = "Message that gets announced to the "
GF_HARDCORE_SEND_TEXT = "Message that gets announced to the Hardcore Channel"
GF_WORLD_NOW_SENDING = "GF: Now sending announcements to the World Channel"
GF_HARDCORE_NOW_SENDING = "GF: Now sending announcements to the Hardcore Channel"
GF_NOW_BEING_IGNORED = " is now blacklisted. Groups and messages will be ignored."
GF_NEW_ONLY = "New only"
GF_SHOW = "Show"
GF_ADD = "Add"
GF_EDIT_NOTE = "Edit Note"
GF_PLAYER_NOTE = "Player Note: "
GF_GROUP_NOTE = "Groups Seen: "
GF_TRADES = "Trades"
GF_LOOTS = "Loot"
GF_GUILDS = "Guild"
GF_PLAY_SOUND = "Play sound" -- Label for GF_PlaySoundOnResultsCheckButton

-- Log Filters
GF_LOG_HEADER = "Chat Log" -- Label at top of Log frame
GF_LOG_FILTERED = "Filtered"
GF_LOG_SPAM = "Spam"
GF_LOG_FILTERS = "Log Filters"
GF_LOG_CHANNEL_FILTERS = "Channel Filters"
GF_LOG_RESET_MESSAGES = "Reset Messages"
GF_LOG_FOREIGN = "Foreign"
GF_LOG_CHANNEL = "Channel"

-- Log Types
GF_LOGGED_ME = "[M]" -- Text added to Log tab when a message is from myself
GF_LOGGED_GROUPS = "[G]" -- Text added to Log tab when a message is a group
GF_LOGGED_OLD = "[O]" -- Text added to Log tab when a message is new
GF_LOGGED_FILTERED = "[F]" -- Text added to Log tab when a message is group that was filtered
GF_LOGGED_CHAT = "[C]" -- Text added to Log tab when a message is chat
GF_LOGGED_TRADES = "[T]" -- Text added to Log tab when a message is trades
GF_LOGGED_GUILD = "[U]" -- Text added to Log tab when a message is guild recruitment
GF_LOGGED_LOOT = "[L]" -- Text added to Log tab when a message is loot/money
GF_LOGGED_SPAM = "[S]" -- Text added to Log tab when a message is spam
GF_LOGGED_BLACKLIST = "[B]" -- Text added to Log tab when a message is blacklist
GF_LOGGED_BELOWLEVEL = "[V]" -- Text added to Log tab when a message is level under threshold

-- Whisper/Guild/Group Log
GF_LOG_WHISPERLOG = "Whisper Log"
GF_LOG_SHOWLOG = "Show Log"
GF_LOG_GUILDWHISPERS = "Guild+Whisper"
GF_LOG_GROUPLOG = "Group Log"
GF_LOG_CONVERT_URL = "Convert to links"

GF_LOG_SAVE_GROUP = "Save Group"
GF_LOG_RESET_GROUP = "Reset Group"
GF_LOG_GROUP_IS_SAVED = "Group Data is saved"
GF_LOG_GROUP_IS_RESET = "Group Data is reset"
GF_ARE_YOU_SURE_SAVE_GROUP = "Are you sure you want to save the current group?" -- Label for Save Group
GF_ARE_YOU_SURE_RESET_GROUP = "Are you sure you want to reset the current group?" -- Label for Reset Group

-- Group-related buttons and texts
GF_KEYWORDS_DROPDOWN_DESCR = "Keywords:" -- Label to the left of the GF_GroupsFrameDescriptionEditBox on group frame
GF_AUTO_FILTER = "Auto Filter"
GF_SHOW_HARDCORE = "Hardcore"
GF_SHOW_NORMAL = "Normal"
GF_SHOW_NORMAL_HC = "Normal+HC"
GF_HARDCORE_WHISPER_SUFFIX = " (HC)"
GF_SHOW_DUNGEONS = "Show Dungeons"
GF_SHOW_RAIDS = "Show Raids"
GF_SHOW_QUESTS = "Show Quests"
GF_SHOW_OTHER = "Show Other"
GF_SHOW_LFM = "Show LFM"
GF_SHOW_LFG = "Show LFG"

GF_SHOW_TANKS = "Tanks only"
GF_SHOW_HEALERS = "Healers only"
GF_SHOW_DPS = "DPS only"

GF_FOUND = "Found: " -- Shows number of groups on list
GF_PAGE = "PAGE" -- Label for pages of groups.

-- Settings tab buttons and texts
GF_LOG = "  Log  " -- Label for Log tab
GF_SETTINGS = "Settings" -- Label for Settings tab
GF_BLACK_LIST = "Blacklist" -- Label for Blacklist tab
GF_CHAT_SETTINGS = "Chat settings" -- Label for minimap section of Settings tab
GF_DISPLAY_SETTINGS = "Display settings" -- Label for filter section of Settings tab
GF_GROUP_SETTINGS = "Group settings" -- Label for minimap section of Settings tab
GF_OTHER_SETTINGS = "Other settings" -- Label for minimap section of Settings tab
GF_ADJUST_TRANSPARENCY = "Window transparency" -- Label for adjust transparency on Settings tab
GF_ADJUST_UISCALE = "Adjust window scale" -- Label for adjust transparency on Settings tab
GF_UISCALE_UPDATE = "Update" -- Label for update UIScale
GF_MESSAGE_LOCATION = "Message Location" -- Label for moving minimap message location
GF_MOVE_ME = "Move Me" -- Label for moving minimap message location
GF_RESET_SETTINGS = "Reset all settings" -- Label for Reset Settings
GF_ARE_YOU_SURE_RESET_SETTINGS = "Are you sure you want to reset all settings?" -- Label for Reset All Settings
GF_YOUR_SETTINGS_RESET = "Your settings have been reset." -- Label for Reset All Settings
GF_GROUP_CHANNEL_NAME = "Group Channel Name"
GF_AUTO_JOIN_GROUP_CHANNEL = "Join the group channel"
GF_ADD_TO_BLOCK_LIST = "Add words to the block list"
GF_BLOCK_LIST = "Block list"
GF_ADDING_TO_BLOCK_LIST = "Adding '%s' to block list."
GF_ADJUST_FILTER_LEVEL = "Group Filtering" -- Label for Filter slider on Settings tab

GF_FilterLevelNotes = {}
GF_FilterLevelNotes[1] = "Not Strict"
GF_FilterLevelNotes[2] = "Strict"
GF_FilterLevelNotes[3] = "Very Strict"

-- Other Settings
GF_USE_WHO_ON_GROUPS = "Auto /Who"
GF_SYSTEM_FILTER = "Enable System Filtering"
GF_SPAM_FILTER = "Enable Spam Filtering"
GF_AUTO_BLACKLIST = "Enable Auto Blacklist"
GF_SHOW_ORIGINAL_CHAT = "Show Formatted Chat"
GF_ALWAYS_SHOW = "Always Show"
GF_SPAM_FILTER_TIMER = "Spam block time"
GF_BLACKLIST_MINLEVEL = "Auto blacklist up to"
GF_BLOCK_BELOW_LEVEL = "Block messages below"
GF_GROUP_LIST_DURATION = "Group display time"
GF_AUTO_FILTER_LEVEL = "Auto Filter range"
GF_NEW_GROUP_TIMEOUT = "\"New Listing\" duration"
GF_QUEST_MOD = "Use native quest mod"
GF_PURGE_PFDB = "Purge PFUI player databases on login"
GF_USE_CLICK_COMBOS = "Use Click Combinations"
GF_LFGLFT_INTEGRATION = "Use LFG/LFT Integration"
GF_USE_FRIENDS_LIST_WHO = "Use Friendslist for /who"
GF_DISABLE_HARDCORE_SETTINGS = "Disable Hardcore Settings"
GF_SEND_PLAYER_INFO = "Send Player Information"
GF_USE_DPS_METER = "Use DPS Meter"
GF_MINIMAP_ICON_PRIO = "Minimap Icon Prio"
GF_SQUARE_MINIMAP = "Square Minimap"

-- Group Maker related buttons and texts
GF_AUTO = "Auto"
GF_LFM_LFG = "LFM/LFG"
GF_DUNGEON = "Dungeon"
GF_RAIDS = "Raid"
GF_ROLE = "Role"
GF_TANK = "Tank"
GF_HEALER = "Healer"
GF_MELEE = "Melee"
GF_RANGE = "Range"
GF_CASTER = "Caster"
GF_MYROLES = "My Roles"

GF_DAMAGE = "Damage"
GF_DPS = "DPS"
GF_HEALING = "Healing"
GF_HPS = "HPS"

GF_LFG = "LFG"
GF_DPS_Meter = "DPS Meter"

-- Getwho-related buttons and texts
GF_GET_WHO = "Get Who"
GF_STOP_WHO = "Stop"
GF_LEVELS = "levels"
GF_SKIP = "Skip"
GF_REQUEST = "Request"
GF_INVITE_FOR = "Invite for: \""
GF_INVITING_FOR = "Inviting you for: "
GF_SENDING_GET_WHO = "Sending Get Who request in "

GF_SENDING_WHO_FOR = "Sending who request for: "
GF_WHO_ON_COOLDOWN = "/Who is on cooldown for: "

GF_NO_WHISPER_TEXT = "No valid text to send."
GF_NO_PLAYERS_TO_WHISPER = "No players in whisper queue"
GF_WHISPER_TEXT_TOO_SHORT = "Whisper text must be at least 5 characters."

-- Blacklist buttons and texts
GF_OK = "Ok" -- Popup Dialog Button
GF_ENTER_PLAYER_NAME = "Enter the name of the player to be blacklisted:" -- Label for blacklist add player popup
GF_ADD_PLAYER = "Add player" -- Blacklist add player button Label
GF_INVALID_PLAYER_NAME = " is an invalid player name." -- Blacklist tried to add invalid player name
GF_EDIT_PLAYER = "Edit player information" -- Blacklist Edit button Label
GF_DEFAULT_PLAYER_NOTE = "New player added. Click here to edit this note." -- Default Blacklist note

-- Announce related buttons
GF_ANNOUNCE_ANNOUNCE_GROUP = "Announce Group" -- Label for the group finder announce when turned off
GF_ANNOUNCE_STOP_ANNOUNCE = "Stop Announcing" -- Label for the group finder announce when turned off
GF_ANNOUNCE_TIMER = "Announce Timer" -- Label for the group finder announce when turned off
GF_AUTO_ANNOUNCE_TURNED_ON = "Auto Announce ON." -- Internal text when I click the announce button to start announcing.
GF_AUTO_ANNOUNCE_TURNED_OFF = "Auto Announce OFF" -- Internal text when I click the announce button to stop announcing
GF_NOTHING_TO_ANNOUNCE = "Nothing to announce: Setting Auto Announce to OFF" -- If GF_LFGDescriptionEditBox is then can't start announce
GF_NOTHING_TO_ANNOUNCE2 = "Nothing to announce" -- If GF_LFGDescriptionEditBox is empty then can't start announce
GF_AUTO_ANNOUNCE_SETTINGS_CHANGED = "Settings Changed: Turning Auto Announce OFF" -- If GF_LFGDescriptionEditBox is empty then can't start announce
GF_AUTO_ANNOUNCE_NOT_IN_CHANNEL = "You are not in the World Channel"
GF_SENT = "Sent: "
GF_ANNOUNCED_LFG_EXT = "Announced LFG message to the LFG channel" -- Minimap text when your group is announced.
GF_AFK_ANNOUNCE_OFF = "You are AFK: Turning Auto Announce OFF" -- Text when announce is on and you are AFK.
GF_JOINED_GROUP_ANNOUNCE_OFF = "You have joined a group or are no longer leader. Turning Auto Announce OFF" -- Text when announce is on and you join someone else's group
GF_NO_MORE_PLAYERS_NEEDED = "No more players needed." -- "Your group is full. LFG Auto announce OFF"

-- Common text
GF_SECONDS = " seconds"
GF_MIN = " min"
GF_MINUTE = " minute"
GF_MINUTES = " minutes"
GF_TIME_AGO = " ago" -- Label for righttext on group list, showing how many minutes ago group was found
GF_TIME_JUST_NOW = "Just now" -- Text for righttext on group list, "Found ## minutes ago"

GF_QUEUE_IN_LFT = "Queue in LFT"
GF_LEAVE_QUEUE = "Leave Queue"
GF_QUEUE_FOR = "Queue for:"
GF_QUEUED_FOR = "Queued for:"
GF_SELECT_ROLES_QUEUE = "Select roles to queue for:"
GF_NO_ROLES_SELECTED = "No roles selected"
GF_IS_LEVEL = " is level "
GF_IN = " in "
GF_REPORT = "Report"
GF_COULDNT_GET_DATA = "Couldn't get data for "
GF_LFT_AS = " as "
GF_LFG_HAVE = " have "
GF_LOG_ALLGROUPS = "All Groups"
GF_AUTO_QUEUE_IN_LFT = "Auto-Queued in LFT.. Remove 'My Roles' in the Group Maker to disable Auto-Queue."
GF_GROUP_IS_FULL = "(Group is full)"
GF_LFG_ADDON = "(LFG addon)"
GF_LEFT_QUEUE = "(Left Queue)"

GF_NOT_IN_GROUP_SAVING = "Not in group: Saving "
GF_IN_TWO_MINUTES = " in 120 seconds."
GF_SAVED = "Saved "
GF_REJOINED_GROUP = "Rejoined the same group. Save cancelled."

GF_GROUP_OPEN_LOCALIZED = "group open"
GF_PORTAL_LOCALIZED = "portal"
GF_PLUS_LOCALIZED = "plus"
GF_ELITE_LOCALIZED = "elite"
GF_BOSS_LOCALIZED = "boss"

GF_MY_LANGUAGE = "en"
GF_TRANSLATE = "Translate"
GF_TRANSLATE_CHAT = "Translate Chat"
GF_TRANSLATE_UNTRANSLATED = "Show Both"
GF_TRANSLATE_INCLUDE_GROUPS = "Show Groups"
GF_TRANSLATE_BLOCK_FOREIGN = "Block Foreign"

--if GetLocale() == "zhCN" then
--elseif GetLocale() == "zhTW" then
--elseif GetLocale() == "deDE" then
--elseif GetLocale() == "esES" then
--elseif GetLocale() == "frFR" then
--end

GF_GenTooltips = {

GF_MinimapIcon = { 
	tooltip1 = "Group Finder",
	tooltip2 = "Click to open",
	anchor	= "TOPRIGHT",
	relativePoint	= "TOPLEFT" },

GF_ChatFilterGroupsInChatCheckButton = { 
	tooltip1 = "Show groups in chat",
	tooltip2 = "When checked, groups that meet your criteria will be displayed in chat.",  },
GF_ChatFilterGroupsNewOnlyCheckButton = { 
	tooltip1 = "Show only new groups",
	tooltip2 = "When checked, only groups flagged as 'NEW' will be displayed in chat and on the minimap.",  },
GF_ChatFilterGroupsInMinimapCheckButton = { 
	tooltip1 = "Show groups on the minimap",
	tooltip2 = "When checked, new groups that meet your criteria will be displayed next to the minimap.",  },
GF_ChatFilterShowChatCheckButton = { 
	tooltip1 = "Show non-group chat",
	tooltip2 = "When checked, non-group and non-trade chat will be displayed as normal in channels. Otherwise it will be hidden.",  },
GF_ChatFilterShowTradesCheckButton = {
	tooltip1 = "Show trade chat",
	tooltip2 = "When checked, WTS/WTB/LFW-type messages will be shown. Otherwise they will be hidden.",  },
GF_ChatFilterShowLootCheckButton = {
	tooltip1 = "Show loot messages",
	tooltip2 = "When checked, item rolls, looting of money and grey items, selecting greed/need for uncommon items, and experience/honor/reputation gains will be shown. Otherwise they will be hidden.",  },
GF_ChatFilterShowGuildsCheckButton = {
	tooltip1 = "Show guild messages",
	tooltip2 = "When checked, guild recruitment messages will be shown. Otherwise they will be hidden." },
GF_FrameUseWhoOnGroupsCheckButton = {
	tooltip1 = "Use who on groups",
	tooltip2 = "When checked, will use /who or the friendslist to find class/level/guild information." },

GF_AutoFilterCheckButton = {
	tooltip1 = "Auto-Filter",
	tooltip2 = "When checked, only groups near your level will be shown." },
GF_GroupFilterShowDungeonCheckButton = { 
	tooltip1 = "Show Dungeon groups",
	tooltip2 = "When checked, results will include dungeon groups." },
GF_GroupFilterShowRaidCheckButton = { 
	tooltip1 = "Show Raid groups",
	tooltip2 = "When checked, results will include raid groups." },
GF_GroupFilterShowQuestCheckButton = { 
	tooltip1 = "Show Quest groups",
	tooltip2 = "When checked, results will include quest groups." },
GF_GroupFilterShowOtherCheckButton = { 
	tooltip1 = "Show Other groups",
	tooltip2 = "When checked, results will include groups other than dungeons/raids/quests." },
GF_GroupsFrameShowLFMCheckButton = { 
	tooltip1 = "Show groups looking for more",
	tooltip2 = "When checked, results will include any group that isn't flagged with LFG" },
GF_GroupsFrameShowLFGCheckButton = {
	tooltip1 = "Show players looking for group",
	tooltip2 = "When checked, results will include all groups flagged with LFG" },
GF_GroupFilterShowTanksCheckButton = {
	tooltip1 = "Show Tanks only",
	tooltip2 = "When checked, results must include tanks." },
GF_GroupFilterShowHealersCheckButton = {
	tooltip1 = "Show Healers only",
	tooltip2 = "When checked, results must include healer." },
GF_GroupFilterShowDPSCheckButton = {
	tooltip1 = "Show DPS only",
	tooltip2 = "When checked, results must include DPS." },

GF_GroupsFrameDescriptionEditBox = { 
	tooltip1 = "Search by keywords",
	tooltip2 = "Filters your group list by keywords. It will search by both text and dungeon nicknames(e.g. 'vc' will also search for dm/deadmines). Separate search terms with commas for multiple searches(e.g. dm,ubrs,scholo,mc,etc)." },

GF_GroupAutoCheckButton = { 
	tooltip1 = "Auto-adjust LFM",
	tooltip2 = "Adjusts your 'LFM' or 'LFxM' messages by the number of people in the group relative to the selected group size." },
GF_LFGMyRoleLevelCheckButton = { 
	tooltip1 = "Include level",
	tooltip2 = "When checked, will include your level in LFG messages(always shown in 'Request' messages)." },
GF_LFGMyRoleDPSCheckButton = { 
	tooltip1 = "DPS Role",
	tooltip2 = "When checked, will include 'DPS' as a role in LFG and 'Request' messages." },
GF_LFGMyRoleHealCheckButton = { 
	tooltip1 = "Healer Role",
	tooltip2 = "When checked, will include 'Healer' as a role in LFG and 'Request' messages." },
GF_LFGMyRoleTankCheckButton = { 
	tooltip1 = "Tank Role",
	tooltip2 = "When checked, will include 'Tank' as a role in LFG and 'Request' messages." },
GF_GetWhoWhisperEditBox = { 
	tooltip1 = "Whisper Message",
	tooltip2 = "Use the 'Get Who' button to make a list of players matching the class and level selected. Press the 'Whisper' button to send this text(if blank it will send the World Channel message instead). Will not message the same person more than once every 15 minutes." },
GF_GetWhoButton = { 
	tooltip1 = "Gets a who list",
	tooltip2 = "Looks for players of the class and level selected.",  },
GF_GetWhoWhisperButton = { 
	tooltip1 = "Send an invite whisper",
	tooltip2 = "Whispers the next player on the list made by the 'Get Who' button. If the text input on this line is blank then it will send the World Channel message instead.",  },
GF_GetWhoSkipButton = { 
	tooltip1 = "Skip player",
	tooltip2 = "Skips the next name on the 'Get Who' list for 5 minutes.",  },

GF_LFGFrameToggleButton = { 
	tooltip1 = "Toggle Groupmaker",
	tooltip2 = "Toggles the Groupmaker to help you create world channel messages.",  },
GF_GetWhoFrameToggleButton = { 
	tooltip1 = "Toggle 'Get Who'",
	tooltip2 = "Toggles a menu  to help you find players for dungeons, raids, etc.",  },

GF_AnnounceToLFGButton = {
	tooltip1 = "Announce",
	tooltip2 = "Announces your group to the world channel automatically. Stops announcing if you go afk or if your group is full or if you lose party leader(doesn't require party leader)." },
GF_QueuetoLFTButton = {
	tooltip1 = "",
	tooltip2 = "" },

GF_AutoJoinGroupChannelCheckButton = {
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
	tooltip2 = "When checked, long messages repeated more than once, and short messages repeated more than twice within two minutes will be blocked. In addition, all messages from the player will be blocked for the duration of the 'Spam block time'. Excludes friends, guildies, and party members." },
GF_AutomaticBlacklistCheckButton = {
	tooltip1 = "Blacklist Filter",
	tooltip2 = "When checked, players who repeat the same message repeatedly(more than 30 characters) and who are below the 'auto blacklist maximum level' will be permanently added to the blacklist." },
GF_FrameShowFormattedChatCheckButton = {
	tooltip1 = "Show Formatted Chat",
	tooltip2 = "When checked, channel messages will be formatted to show Level/Class when available." },
GF_FrameQuestModCheckButton = {
	tooltip1 = "Use Native Quest Mod",
	tooltip2 = "When checked, clicking quests and quest links will show quest information(disabled if pfQuest or Questie are installed)." },
GF_PurgePFDBCheckButton = {
	tooltip1 = "Purge pfUI player databases on Login",
	tooltip2 = "Purges the pfUI player class/level/guild database when logging in. The pfUI player database can become massive, but with Formatted Chat it is never used(this is only active when using formatted Chat)." },

GF_LogFilterShowGroups = {
	tooltip1 = "Show Groups",
	tooltip2 = "Logs will include [G] Groups and [N] New Groups." },
GF_LogFilterShowFiltered = {
	tooltip1 = "Show Filtered",
	tooltip2 = "Logs will include [F] Filtered Groups." },
GF_LogFilterShowChat = {
	tooltip1 = "Show Chat",
	tooltip2 = "Logs will include [C] Chat Messages." },
GF_LogFilterShowTrades = {
	tooltip1 = "Show Trades",
	tooltip2 = "Logs will include [T] Trades Messages." },
GF_LogFilterShowGuild = {
	tooltip1 = "Show Guild",
	tooltip2 = "Logs will include [U] Guild Recruitment Messages." },
GF_LogFilterShowLoot = {
	tooltip1 = "Show Loot",
	tooltip2 = "Logs will include [L] Filtered Loot Messages." },
GF_LogFilterShowSpam = {
	tooltip1 = "Show Spam",
	tooltip2 = "Logs will include [S] Spam Messages." },
GF_LogFilterShowBlacklist = {
	tooltip1 = "Show Blacklist",
	tooltip2 = "Logs will include [B] Blacklisted Messages." },
GF_LogFilterShowBelowLevel = {
	tooltip1 = "Show Below Level",
	tooltip2 = "Logs will include [V] Messages from players below your threshold." },

GF_GroupChannelEditBox = {
	tooltip1 = "Group Channel Name",
	tooltip2 = "Enter the name of the channel used for group announcements." },
GF_BlockListEditBox = {
	tooltip1 = "Block List",
	tooltip2 = "Add words to the block list(not case-sensitive, up to four words long). Ignores numbers and punctuation." },
GF_SendPlayerInfoCheckButton = {
	tooltip1 = "Send Player Information",
	tooltip2 = "Add level and role information to LFG and request messages." },
GF_UseFriendsListCheckButton = {
	tooltip1 = "Use friendslist for /who",
	tooltip2 = "Auto /who will get player level/class data by adding/removing that player from your friendslist instead of using /who(this is much faster than /who)." },
GF_DisableHardcoreCheckButton = {
	tooltip1 = "Disable hardcore settings",
	tooltip2 = "Will always use non-hardcore settings even if you are hardcore." },
GF_UseClickCombosCheckButton = {
	tooltip1 = "Use click combinations",
	tooltip2 = "Ctrl-Left Click for '/target <playername>' and Alt-Right Click for '/invite <playername>." },
GF_IntegrateWithLFGLFTCheckButton = {
	tooltip1 = "Use LFG/LFT Integration",
	tooltip2 = "Listens for LFG/LFT groups and allows queueing through the LFG/LFT addon(/join 'LFG' if not using LFG addon)" },
GF_UseDPSMeterCheckButton = {
	tooltip1 = "Use DPS Meter",
	tooltip2 = "Enables the processing of damage and healing. Adds damage and healing to Group History. Creates a toggleable DPS meter(if ShaguDPS not installed)." },
GF_MinimapIconPriorityCheckButton = {
	tooltip1 = "Minimap icon prio",
	tooltip2 = "Keeps the minimap icon on top of other minimap icons and prevents it from being docked by PFUI. NOTE: PFUI won't update until you restart your UI." },
GF_SquareMinimapCheckButton = {
	tooltip1 = "Square Minimap",
	tooltip2 = "Will adjust for a square minimap when moving the minimap button." },
GF_MessageAnchorButton = {
	tooltip1 = "Group Messages",
	tooltip2 = "Left-Click to move the message frame. Right-Click to hide this button." },
GF_MinimapMessageMoverButton = {
	tooltip1 = "Move Messages",
	tooltip2 = "Creates a button for moving where messages are displayed." },

GF_HideMainFrameLeft = {
	tooltip1 = "Dock Left",
	tooltip2 = "Docks the group frame on the left side of the screen. Click a second time to reset the window." },
GF_HideMainFrameRight = {
	tooltip1 = "Dock Right",
	tooltip2 = "Docks the group frame on the right side of the screen. Click a second time to reset the window." },
GF_HideMainFrameHeight = {
	tooltip1 = "Toggles display height",
	tooltip2 = "Reduces the height of the group list and log." },
GF_HideMainFrameWidth = {
	tooltip1 = "Toggles display width",
	tooltip2 = "Reduces the width of the group list and log." },
GF_HideMainFrameToggleBoth = {
	tooltip1 = "Toggle both frames",
	tooltip2 = "Allows the showing of both the Group and Log frames at the same time." },
GF_LogShowWhisperHistoryCheckButton = {
	tooltip1 = "Toggles the Guild/Whisper History Window",
	tooltip2 = "This shows a list of recent whisper and guild activity." },

GF_TranslateChatCheckButton = {
	tooltip1 = "Translate Chat",
	tooltip2 = "Will attempt to Translate chat messages." },
GF_TranslateShowUntranslatedCheckButton = {
	tooltip1 = "Show Both",
	tooltip2 = "Show both the original and translated messages in chat." },
GF_TranslateBlockForeignCheckButton = {
	tooltip1 = "Block Foreign",
	tooltip2 = "Block all foreign messages from chat and group listings." },

GF_ShowGroupLogEntryFrameReportButton = {
	tooltip1 = "Report Damage Meter",
	tooltip2 = "Reports the top five damage, dps, or healing to the current chat(must have a chat editbox open)." },
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
GF_LFG_GROUP_ZONES = {
["Ahn'Qiraj"] = true,["Alterac Valley"] = true,["Arathi Basin"] = true,["Blackfathom Deeps"] = true,["Blackrock Depths"] = true,["Blackrock Spire"] = true,["Blackwing Lair"] = true,["Dire Maul"] = true,["Gnomeregan"] = true,["Maraudon"] = true,
["Molten Core"] = true,["Naxxramas"] = true,["Onyxia's Lair"] = true,["Ragefire Chasm"] = true,["Razorfen Downs"] = true,["Razorfen Kraul"] = true,["Ruins of Ahn'Qiraj"] = true,["Scarlet Monastery"] = true,["Scholomance"] = true,["Shadowfang Keep"] = true,
["Stratholme"] = true,["The Deadmines"] = true,["The Stockade"] = true,["The Temple of Atal'Hakkar"] = true,["Uldaman"] = true,["Wailing Caverns"] = true,["Warsong Gulch"] = true,["Zul'Farrak"] = true,["Zul'Gurub"] = true,

-- Turtle
["Frostmane Hollow"] = true,["Windhorn Canyon"] = true,["Dragonmaw Retreat"] = true,["Crescent Grove"] = true,["Stormwrought Ruins"] = true,["Gilneas City"] = true,["Hateforge Quarry"] = true,["Stormwind Vault"] = true,["The Black Morass"] = true,
["Karazhan Crypt"] = true,["Emerald Sanctum"] = true,["Tower of Karazhan"] = true,
}
GF_RACE_CLASS_COMBOS = {
[GF_DRUID] = {["Night Elf"]=true,["Tauren"]=true},
[GF_HUNTER] = {["Human"]=true,["Night Elf"]=true,["Dwarf"]=true,["Gnome"]=true,["Undead"]=true,["Orc"]=true,["Troll"]=true,["Tauren"]=true,["High Elf"]=true,["Goblin"]=true},
[GF_MAGE] = {["Human"]=true,["Dwarf"]=true,["Gnome"]=true,["Undead"]=true,["Orc"]=true,["Troll"]=true,["High Elf"]=true,["Goblin"]=true},
[GF_PALADIN] = {["Human"]=true,["Dwarf"]=true,["High Elf"]=true},
[GF_PRIEST] = {["Human"]=true,["Night Elf"]=true,["Dwarf"]=true,["Undead"]=true,["Troll"]=true,["High Elf"]=true},
[GF_ROGUE] = {["Human"]=true,["Night Elf"]=true,["Dwarf"]=true,["Gnome"]=true,["Undead"]=true,["Orc"]=true,["Troll"]=true,["Tauren"]=true,["High Elf"]=true,["Goblin"]=true},
[GF_SHAMAN] = {["Orc"]=true,["Troll"]=true,["Tauren"]=true},
[GF_WARLOCK] = {["Human"]=true,["Gnome"]=true,["Undead"]=true,["Orc"]=true,["Troll"]=true,["Goblin"]=true},
[GF_WARRIOR] = {["Human"]=true,["Night Elf"]=true,["Dwarf"]=true,["Gnome"]=true,["Undead"]=true,["Orc"]=true,["Troll"]=true,["Tauren"]=true,["High Elf"]=true,["Goblin"]=true,},
}
GF_MonsterEmoteFilters = {
"attempts to run away in fear",
}