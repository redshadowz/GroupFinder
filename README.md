# GroupFinder
Update 4/18/2025: I mostly was trying to revamp the "log" window, clean up the interface, and clean up the code. I was also adding a log for whispers. I plan on adding one for guild messages(or for both guild and whispers). I added more minimap message frames(6). And I'm trying to make it where the chat and or group frame can basically be see-through and click-through so you can still play the game with them showing(this option is a small indescript button on the left side of the log). It always amazes me how even when I think I'm done, I end up coming up with another 20 things I want to change/add. I have another dozen things to do again. I'll update in the next few days.     

Group finder Addon for Vanilla Wow 1.12.1 based on the CallToArms addon(with Turtle WoW support).  

The goal of this addon was to find groups without needing to sift through endless chat spam. I tried to make this addon as intuitive as possible, but it's probably pretty intimidating at first glance. Lots of checkboxes. Lots of edit boxes. Lots of dropdowns. I put as much as possible on the front page because the original CallToArms addon had too many pages to flip through and too many useless features.  

>[Top] - 'Chat Options'  
[Under] - 'Group Filters'  
[Middle] - 'Group listings'  
[Bottom] - 'Group Maker'  

>[Show groups] - Whether to display group messages in chat.  
[Show Minimap] - Whether to display group messages next to the minimap button.  
[Show New] - Whether to display 'New' group messages only(default: 3 minutes).  
[Show Chat] - Whether to display non-group and non-trades messages in chat.  
[Show Trades] - Whether to display trades in chat(wts/wtb/lfw/buying/selling/etc).  
[Show Politics] - Whether to display political or offensive messages in chat.  
[Show Loots] - This will show/hide chat messages from item rolls, looting of money and grey items, selecting greed/need for uncommon items, and experience/honor/reputation gains.  
Note: All blocked chat is recorded in the 'Log'.  

>[Auto Filter] - Whether to only show groups near your level(default: 6 level difference).  
[Play Sound] - Plays a sound when a group is found.  
[Show Dungeons/Raids/Quests/Other/LFM/LFG] - To show/hide groups matching your criteria.  
["Keywords" editbox] - Filters your group list using this text. Use "/" for more than one search. The dropdown box will auto-populate a list of groups based on your level.  
[Auto /Who] - Whether to automatically '/who' groups/players from chat for their class/level information.  

>[Join World Channel] - Keeps you in the World Channel.  
[Enable Error Filtering] - This will block server messages related to group invites/declines, quest sharing, and '<name> is under attack!'.  
[Show Original Chat] - This removes all chat formatting(class colors/levels/layout).  
[Enable Spam Filtering] - The Spam Filter will block repetitive messages.  
[Enable Auto Blacklist] - Automatically blacklists players who 'spam' if they are below the level threshold(default: level 12).  

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

PS: I made the 'Group Maker' for my niece. She hated finding groups for low-level dungeons. I tried to get her to /whisper people in her level range, but it was too much work for her.  

PS: I made the Chat Filtering because Everlook was absolutely filled to the brim with gold-sellers and other spammers. I personally turn off 'Show groups in Chat' and toggle 'Show groups in Minimap' to turn World into a chatroom.

PS: With the Chat Filters, you can make 'World' channel into groups-only, or chat-only. So if you don't like what people are talking about in World Chat, you can still see the groups(or vice-versa).  

PS: By default, the groupfinder will be bound to button "I". It will not override your current bindings.
