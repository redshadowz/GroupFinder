# GroupFinder
Warning: 8/29/2025... I made more code changes. Mostly related to color-coded chat. Hopefully nothing is broken, rofl.

Group finder Addon for Vanilla Wow 1.12.1 based on the CallToArms addon(with Turtle WoW support).  

I hate chat spam, so I made this addon so I never have to see it again. I tried to make this addon as intuitive as possible, but it's probably pretty intimidating at first glance. Lots of checkboxes. Lots of edit boxes. Lots of dropdowns. I put as much as possible on the front page because the original CallToArms addon had too many pages to flip through and too many useless features.  

PS: To people who might be interested in this addon. This isn't simply a group finder that searches world chat for groups. This is a massive chat filtering tool. It identifies four types of messages - Group messages, guild messages, trades messages, and Chat messages; And allows you to show/hide them individually(with a sortable chatlog window).  

>[Top] - 'Chat Options'  
[Under] - 'Group Filters'  
[Middle] - 'Group listings'  
[Bottom] - 'Group Maker'  

>[Show groups] - Whether to display group messages in chat.  
[Show Minimap] - Whether to display group messages next to the minimap button.  
[Show New] - Whether to display 'New' group messages only(default: 3 minutes).  
[Show Chat] - Whether to display non-group and non-trades messages in chat.  
[Show Trades] - Whether to display trades in chat(wts/wtb/lfw/buying/selling/etc).  
[Show Loots] - This will show/hide chat messages from item rolls, looting of money and grey items, selecting greed/need for uncommon items, and experience/honor/reputation gains.  
[Show Guilds] - Whether to display guild recruitment messages in chat(blocked messages are logged as "spam").  
Note: All blocked chat is recorded in the 'Log'.  

>[Auto Filter] - Whether to only show groups near your level(default: 6 level difference).  
[Show Dungeons/Raids/Quests/Other/LFM/LFG] - To show/hide groups matching your criteria.  
["Keywords" editbox] - Filters your group list using this text. Separate by commas for multiple searches. The dropdown box will auto-populate a list of groups based on your level.  
[Play Sound] - Plays a sound when a group is found.  
[Auto /Who] - Whether to automatically '/who' groups/players from chat for their class/level information.  

>[Join World Channel] - Keeps you in the World Channel.  
[Enable Error Filtering] - This will block server messages related to group invites/declines, quest sharing, and 'attempts to run away in fear' messages.  
[Show Original Chat] - This removes all chat formatting(class colors/levels/layout).  
[Enable Spam Filtering] - The Spam Filter will block repetitive messages.  
[Enable Auto Blacklist] - Automatically blacklists players who 'spam' if they are below the level threshold(default: level 12).  
[Always Show Guild/Friends] - All messages from friends/guildies will be displayed. Ignoring chat filters.  

The 'Group Maker' makes it easy to send group messages to world chat...  
1) Select the dropdown for the Dungeon/Raid.  
2) Select the dropdowns for whether you are LFM/LFG and the roles you need/have.  
3) Press the 'Announce' button to send your group message to world chat every X minutes(default: 2 minutes).  
Note: You can type your own message in the Edit Box. You can also make a 'LFM' that adjusts automatically to the current group size by clicking 'Auto' and setting the group size. When your group is full, 'Announce' will turn itself off. 
  
The 'Get Who' and 'Invite' Edit Box is for whispering people who match the selected 'class'. It is useful for low-level dungeons and for people who have 'World' channel turned off.  
1) Select the dropdown for the Dungeon/Raid(so it knows the levels of who to message).  
2) Press the 'Get Who' button to make a list of all players of the selected class in the level range of the dungeon.  
3) Type your message in the 'Invite' Edit Box(uses 'Announce' message if blank).  
4) Press the 'Invite' button to whisper someone on the 'Get Who' list. The number of players available is shown on the 'Get Who' button.  
Note: Will not message the same person more than once every 15 minutes.

![Image](https://github.com/user-attachments/assets/782da809-509d-4101-b75c-3e56afa2ebf5)  

Note: Turtle WoW only allows a /who every ~30 seconds, and blocks you from whispering to more than ~15 different players within some arbitrary period of time.  
