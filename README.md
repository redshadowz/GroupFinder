# GroupFinder
Group finder Addon for Vanilla Wow 1.12.1 based on the CallToArms addon(with Turtle WoW support).  

10/13/2025 update: I did a lot of work on trades detection. When I logged on Ambershire, I had noticed a lot of trade spam getting through. The current system should detect pretty much everything.  

PS: I can't test the addon with other languages/clients, but I'm interested in whether the addon even works for people who don't speak English. And if not, what I would need to make it work.  

I made this addon because I hate chat spam. I tried to make this addon as intuitive as possible, but it's probably pretty intimidating at first glance. Lots of checkboxes. Lots of edit boxes. Lots of dropdowns. I put as much as possible on the front page because the original CallToArms addon had too many pages to flip through and too many useless features.  

NOTE: To people who might be interested in this addon. This isn't simply a group finder that searches world chat for groups. This is a massive chat filtering tool. It identifies four types of messages - Group messages, guild messages, trades messages, and Chat messages; And allows you to show/hide them individually(with a sortable chatlog window).  

>[Top] - 'Chat Options'  
[Under] - 'Group Filters'  
[Middle] - 'Group listings'  
[Bottom] - 'Group Maker'  

>[Show groups in Chat] - Whether to display group messages in chat.  
[Show New] - Whether to only display 'New' group messages in chat(default: 3 minutes).  
[Show Minimap] - Whether to display group messages next to the minimap.  
[Show Chat] - Whether to display non-trade/non-group/non-guild recruitment messages in chat.  
[Show Trades] - Whether to display trade messages in chat(wts/wtb/lfw/buying/selling/etc).  
[Show Loots] - This will show/hide messages from item rolls, looting of money/grey items, selecting greed/need for uncommon items, and experience/honor/reputation gains.  
[Show Guilds] - Whether to display guild recruitment messages in chat.  
Note: All blocked chat messages are recorded in the 'Log'.  

>[Auto Filter] - Whether to only show groups near your level(default: 5 level difference).  
[Show Dungeons/Raids/Quests/Other/LFM/LFG] - To show/hide groups matching your criteria.  
["Keywords" editbox] - Filters the group list using this text. Separate by commas for multiple searches. The dropdown box will auto-populate a list of groups based on your level.  
[Play Sound] - Plays a sound when a group is found.  
[Auto /Who] - Whether to automatically '/who' groups/players from chat for their class/level information.  
Note: On Turtle Servers there is also a dropdown button for filtering Normal and Hardcore groups. Plus "Auto /Who" uses the friends list to more quickly acquire Class/Level data.  

>[Join World Channel] - Keeps you in the World Channel.  
[Enable System Filtering] - This will block server messages related to group invites/declines, quest sharing, and NPC 'say' and 'emote' messages.  
[Show Formatted Chat] - This formats chat messages to show level and class color.  
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
