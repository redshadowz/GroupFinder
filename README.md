# GroupFinder
Group finder Addon for Vanilla Wow 1.12.1 based on the CallToArms addon(with Turtle WoW support).  

Update: I'm working  on categorizing/eliminating all spam. I'm at like 99.9% now. The good news is that I had over 200 "groups" in my listings(60 minutes) on Sunday afternoon 5/4/2025. And all of them were legit groups. If I could read "LFT" channel. There would be hundreds more. Maybe I'll try again.  

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

![Image](https://github.com/user-attachments/assets/6f264354-cec4-4447-b18f-42bb4bfc19b9)  

Turtle WoW effectively blocks you from whispering after ~15 whispers.  
There is also a "hide everything" overlay mode by shift-right clicking the minimap icon.  
