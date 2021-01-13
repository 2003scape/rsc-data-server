BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "news" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"date"	datetime DEFAULT (strftime('%s','now')),
	"title"	VARCHAR(255),
	"category"	INTEGER,
	"body"	TEXT
);
INSERT INTO "news" VALUES (0,973836000,'Coming Soon from Jagex Software',0,'Coming soon from Jagex Software! Runescape, our massive multiplayer adventure. Trade and communicate with other players. Learn skills to earn money, or if you''re brave attempt to find riches in the dungeons. Your charactor<sup>sic</sup> will continue to evolve and improve the more you play, with quests to complete for extra rewards. Choose good or evil the choice is entirely yours!

Features

*   These elements of the game have all already been finished.
*   Full 3d engine renders the high detail world
*   Efficient network routines allow game to run using minimal bandwidth
*   Detailed 3-dimensional map with multi-level buildings, rivers, hills etc..
*   Automatic route finding makes exploring the map easy.
*   Your game is automatically saved on the server when you quit
*   Npcs and monsters which inhabit different areas, and can interact with you
*   Objects which you can take, manipulate, and use.
*   Interactive scenary<sup>sic</sup> (e.g trees can be chopped down, doors opened etc..)
*   Close range combat system between players and npcs
*   Inventory screen
*   Automatic map view
*   Full trading system
*   Charactor<sup>sic</sup> design system allows everyone to look different
*   Players can use weapons and armour changing their appearance & stats
*   Entire quest scripting system, can control any aspect of the game
*   Several detailed ''graphical adventure'' style quests and charactors<sup>sic</sup>
*   Information on what you have done is stored and used to influence your game
*   Npc Conversation system
*   Player chat system
*   State of the art compression routines, make the game load as quickly as possible

Recent Updates

*   3rd Nov - Added range check to projectile combat
*   2nd Nov - Fixed some obscure route finding problems
*   2nd Nov - Diagonal doors now work properly
*   2nd Nov - Gates now work properly
*   2nd Nov - Non-square locations can now be rotated in the editor.
*   1st Nov - Improved camera motion
*   31st Oct - Adjusted mouse button assignments
*   31st Oct - Projectile combat now works.
*   27th Oct - Added cupboards, gates, signposts, sacks, bookcases etc...
*   27th Oct - Added new rat monster
*   26th Oct - Added in skill advancement
*   26th Oct - Improved combat, can now choose from 4 fighting modes
*   25th Oct - Injured monsters will now run away
*   25th Oct - Aggressive monsters now attack when you approach
*   25th Oct - Big AI improvements. Npcs now have 5 different behaviour modes
*   25th Oct - Fixed trading mode bug, walking around now exits the trade.
');
INSERT INTO "news" VALUES (1,975736800,'Coming Soon from Jagex Software',0,'Coming soon from Jagex Software! Runescape, our massive multiplayer adventure. Trade and communicate with other players. Learn skills to earn money, or if you''re brave attempt to find riches in the dungeons. Your character will continue to evolve and improve the more you play, with quests to complete for extra rewards. Choose good or evil the choice is entirely yours!

Recent Updates

*   1st Dec - New Quest: Romeo+Juliet Quest (thanks rab!)
*   1st Dec - Wrote improved quest verifier and fixed a few mistakes
*   1st Dec - Fixed bug in quest compiling code
*   1st Dec - Fixed vanishing doors bug
*   30th Nov - Added new spell: Camoflauge
*   30th Nov - Added new spell: Shock bolt
*   30th Nov - Added new spell: Burst of strength
*   30th Nov - Added new spell: Chill bolt
*   30th Nov - Modified stats now slowly regenerate towards normal levels
*   30th Nov - Added new spell: Confuse
*   29th Nov - Added new spell: Thick skin
*   29th Nov - Added 5 new script commands for controlling player stats
*   28th Nov - Added new location: Ruined village
*   28th Nov - Added support for recoloured objects
*   28th Nov - Fixed several minor bugs
*   28th Nov - Actions now give instant colour coded feedback :-)
*   28th Nov - Fixed occasional misread mouse clicks problem
*   28th Nov - Client now adjusts move speed to stay better synced with server
*   28th Nov - Game now loads more quickly and reliably
');
INSERT INTO "news" VALUES (2,978588000,'Runescape beta is now online!',0,'<a class="rsc-image" href="/images/Beta.jpg"><img src="/images/Beta.jpg" align="right"></a>
[Runescape](https://classic.runescape.wiki/w/RuneScape) is a massive 3d multiplayer adventure, with monsters to kill, quests to complete, and treasure to win. You control your own character who will improve and become more powerful the more you play.
');
INSERT INTO "news" VALUES (3,980056800,'Newsletter 1',0,'RuneScape Newsletter - Issue \* 1

Welcome to the first ever RuneScape newsletter.
Firstly a big thank-you to everyone who''s been playing, and has helped make RuneScape a great success. We only launched just over 2 weeks ago, and we already have over 28000 signed up players, and the game has been played for a total time of over 4.5 years!

## Help keep RuneScape free

Renting a server to run RuneScape is expensive! I really want to avoid charging people to play, so please please help me keep it free by visiting the website below and signing up for a few \* free\* offers. Thanks!
Want to win Free Cash every day? Try the newest Freebie site on the Internet today, FreebieClub.com. Of course it''s loaded with free loot: great vacations, magazines and samples galore! \[http://web.archive.org/web/20010306041108/http://www.freebieclub.com/FC_MyFreebies.asp?redir=quick\&a=26134]

## What''s new in Runescape

The RuneScape team has been working very hard over the past 2 weeks to improve the game and bring you new features. Major new features are:

### New desert city Al-kharid with:

*   Scimitar shop: Buy and sell curvy swords
*   Furnace: Convenient for smelting ore from the desert
*   Silk trader: Buy silk here and sell it in Varrock for a profit.The amount you make depends on how many other people are silk trading.
*   General store: Another place to buy and sell your items
*   Platemail Legs shop: A full range of leg armour to spend your money on
*   Kebab shop: Eating kebabs has a random effect. They''re normally good, but rumour has it that a few of them are a bit dodgy. They''ll never kill you though

### New Quest in Draynor Manor

Draynor Manor has been opened and there''s spooky things inside! There''s a vampire asleep in the cellar, and Professor Oddenstein who lives in the attic has accidently<sup>sic</sup> turned someone into a chicken! To make things worse gremlins have hidden the parts of his machine, so he can''t turn the chicken back. Can you find the missing pieces to complete this quest?

### Plus over the past 2 weeks we''ve also

*   Improved the map page to show the locations of useful shops
*   Added a ''who''s playing'' page so you can see if your friends are on
*   Made Lumbridge safe to give a place to hide from player killers
*   Improved the shops to reduce queueing
*   Reduced the network requirements so the game works over more connections
*   Fixed lots of little problems/bugs with the game to make it more reliable

## What''s planned

We are of course working on many more improvements to add to the game to make it even better. We have nearly finished work on the bank which will hopefully be added to Varrock city tomorrow. The bank is a safe place to store your money, such that even if you die it can''t be lost. After that the magic system is due for a big overhaul with lots of new spells being added, plus we''ll be adding some entirely new professions such as crafting and fishing to add even more variety to the game. The next planned quest is ''The vampire slayer quest'' in which you must work out how to slay the evil vampire currently sleeping in Draynor Manor.

## Runescape hiscores

Below are the top scores as they were at 3pm GMT on Sunday-21st. Only the top 25 players are shown, but I''m planning on adding a new page to the website soon which will allow you to search
for the ranking of any player and see how you compare with everyone else.

The hiscores are currently in 4 categories. If there are more categories which you think should be included let me know and I''ll consider putting them in the next newsletter.

Top 25 players - score is total of all skills

1: lightning - 506

2: Gugge - 436

3: Rab - 428

4: Sir - 415

5: ZAPTONE_Z - 352

5: hurkules - 352

7: Devil_Hunter - 329

8: merlin - 324

9: Rodrigo - 321

9: Hellbringer - 321

11: RattSabre - 320

12: The_Unknown - 319

13: stud690 - 317

14: Flex\_10 - 312

15: Morfnak - 311

16: Day_Dream - 306

17: Lord_Soth - 305

18: TheReturnOfX - 302

19: Ashley - 301

20: Auxilus - 300

21: Sunjon - 288

22: terminator - 287

23: kancer - 283

23: Axebane_Hawk - 283

25: KingKong - 280

Top 25 fighters - score is total combat skill

1: lightning - 200

2: Gugge - 182

3: Rab - 178

4: Robin_Hood2 - 172

5: stud690 - 164

6: Sir - 163

7: Day_Dream - 160

8: terminator - 159

9: Ashley - 155

10: Morfnak - 149

11: merlin - 148

12: The_Unknown - 146

13: Flex\_10 - 141

14: Lord_Soth - 138

15: hurkules - 136

16: ZAPTONE_Z - 134

17: LoneWolf_LD - 133

18: RattSabre - 131

18: TheReturnOfX - 131

18: constant - 131

21: SilencerLD - 130

22: Auxilus - 129

22: caramon - 129

24: Sir_Beachy - 128

24: Axebane_Hawk - 128

Top 25 player killers - score is number of kills

1: DaRk_RoCk - 100

2: SilencerLD - 95

3: Robin_Hood2 - 83

3: Mortis - 83

5: EndBringer - 80

6: Phadera - 69

7: bomboy2328 - 68

8: donk - 67

9: Windstick - 65

10: Yemen - 64

11: Yokomon - 61

11: RCCBrasil - 61

13: lancelot24 - 60

14: Samhill - 58

14: Samikaze - 58

14: DecIll - 58

17: koma - 55

18: robsimons - 53

18: Rankka - 53

20: ace2you - 52

20: adam2000 - 52

22: plumaglob - 51

22: Wolf - 51

24: God - 50

24: crazy_joe75 - 50

Top 25 smiths - score is mining + smithing

1: lightning - 88

2: dmonik - 87

3: The_Unknown - 84

4: KPOBb - 81

5: Lord_Soth - 80

6: Rodrigo - 74

6: TheReturnOfX - 74

6: Silverion - 74

9: hurkules - 73

9: Garbages - 73

9: Deckchair - 73

12: Sir - 70

12: Auxilus - 70

14: Bubba_bobba - 68

14: Lordrlz - 68

16: Flurble - 67

16: Flex\_10 - 67

16: stud690 - 67

16: Tiney - 67

20: Gugge - 66

20: natslayer - 66

20: Vit - 66

20: Sgt_Savage - 66

20: STarlude - 66

25: Arcon - 65

Thanks for reading this newsletter, have fun playing the game!

Andrew Gower (RuneScape creator)
');
INSERT INTO "news" VALUES (4,980402400,'''Super strength Beer cheat'' fixed',0,'Today it came to my attention that by drinking huges amount of beer players were able to make themselves super strong, and then go killing everyone! This has now been fixed so Beer can only increase your strength slightly. Many thanks to the person who told me about this one. If you know of any more cheats/tricks let me know so I can fix them and make RuneScape a fair place for everyone.
');
INSERT INTO "news" VALUES (5,980575200,'Lots of improvements to the game',0,'Ranged combat - You now gain experience for each successful hit, so it''s easier to advance a level. Arrows also now fire 25% faster, and I''ve fixed the cheat/bug which some people were using to shoot super rapidly.

Magic - 4 new spells have been added which are: Fear, Wind-bolt, Rock-skin, and Elemental-bolt. The bolt spells have also been made much more powerful, and they are no longer dependant on your ranged-combat skill. This means each type of bolt now does a fixed maximum-damage, and to shoot more powerful bolts you need to use high level spells. Finally the staffs have been improved such that if you are wielding a fire-staff, water-staff, air-staff or earth-staff it acts as unlimited runes of that type!

Player killing - Due to a large number of requests I''ve changed the way this works. Firstly you can no longer log-out during combat! Closing the webpage or disconnecting your modem will NOT work either! However to compensate I''ve made it so if you retreat in the game, the person attacking you is stunned for 2 seconds to give you a better chance of getting away. Also when you die you now get to keep your 3 most valuable items! You will still probably lose any ore, food, money, spare weapons, etc... but at least you will no longer lose an item you''d just spent days saving up for! This means if you keep your spare money in the bank you should now be relatively safe.
');
INSERT INTO "news" VALUES (6,980834400,'Further combat improvements',0,'Following Saturdays update the combat system has been tweaked further. The retreating was still too difficult (particularly when being attacked by multiple players/monsters at once) so this has been improved and made easier.

The "keep 3 best items" rule has also been modified. If you attack another player then you now lose the item-protection for 20 minutes of game time! This makes the player killing aspect of the game more dangerous and exciting, but it also increases your potential reward, as if you kill someone else without item-protection you can now get the best loot! People without item-protection have a small skull drawn above them.

After many requests the guards in Varrock city now attempt to stop people fighting. There are large number of guards at the bank, so assuming they haven''t all been killed you can now withdraw your money more safely.
');
INSERT INTO "news" VALUES (7,981352800,'New section of sewer opened',0,'A new area at the end of the sewer is now open. Watch out because it contains deadly red spiders! Fight them to get the rare red spider eggs, which when taken with other ingredients to the Apothecary in varrock can be used to make a 4-dose strength potion!
');
INSERT INTO "news" VALUES (8,981525600,'Newsletter 2',0,'RuneScape Newsletter - Issue \* 2

Welcome to the second RuneScape newsletter. Lots has happened since the last newsletter, and we''ve had a lot of good suggestions for the future. Read on to find out what''s planned

## What''s new in Runescape

Most of you are probably aware that the player killing in RuneScape has been changed to make the game fairer. Now when you die, if you haven''t attacked any other players within the last 20 minutes, then you get to keep your best 3 items.

The bank we promised in the last newsletter has been added to the city, and is a safe place to store your money. Following a large amount of attacks just outside the bank, the city has paid to put multiple armed guards around the bank area to protect people who have just withdrawn money. The number of guards was further increased last Monday.

The magic system has also been modified, such that the magic spells no longer depend on your ranged combat skill. So you no longer need to be a high level ranger to use them effectively. The spells were made stronger, but they were still too weak, so they were made TWICE as effective against monsters last Monday!

New Quest: Vampire Slayer - The vampire sleeping in the coffin under Draynor Manor has been terrorising the inhabitants of the small village to the south and must be stopped! If you think you are up to the task of slaying a vampire, go and talk to the people in the village to find out how you can destroy this evil monster!

The most recent addition is a new area in the sewer. This contains 2 new monster types, deadly-red-spiders, and the exceedingly strong ''moss-giant''. If you can survive then the red spider eggs can be used to make a 4-dose strength potion!

## What''s planned

We''ve received a lot of good suggestions, a lot of which we are planning to add to the game. In particular the following changes are planned next:

*   Modify the trade window to display the names of items to prevent unfair trading.
*   A lot more spells are still due to be added to the magic system.
*   Proper support for clans, with a full system to allow people to join and create clans.
*   A ''duel'' feature. Challenge your rivals to a duel, with the risks and rewards set as you like.
*   More skills such as fishing, and fletching.
*   A friends list to indicate which of your friends are online, and allow easy communication.
*   And of course more quests, more monsters, and more areas of map.

## Runescape hiscores

Below are the top scores as they were at 12pm GMT on Wednesday-7th. Only the top 25 players are shown, but I''m working on a new page for the website which will allow you to search for the ranking of any player and see how you compare with everyone else.

Top 25 players - score is total of all skills

1: lightning - 682

2: Sunjon - 593

3: Ashley - 583

4: Sir - 570

5: Gugge - 564

6: ZAPTONE_Z - 537

7: DarkPrince - 531

8: stud690 - 530

9: Lord_Soth - 519

10: TheReturnOfX - 517

11: Rab - 515

12: Flat - 508

13: Silus - 508

14: MysticsMagic - 506

15: Rodrigo - 501

16: Morfnak - 501

17: hurkules - 485

18: Devil_Hunter - 485

19: kancer - 481

20: Flex\_10 - 478

21: RattSabre - 469

22: constant - 468

23: Robin_Hood2 - 449

24: terminator - 446

25: Prophecy3 - 438

Top 25 fighters - score is total combat skill

1: lightning - 230

2: Robin_Hood2 - 217

3: Gugge - 214

4: Ashley - 213

5: stud690 - 210

6: sandytrain - 195

7: Rab - 194

8: Morfnak - 194

9: ZAPTONE_Z - 193

10: Genocide1 - 192

11: Day_Dream - 190

12: constant - 190

13: Sunjon - 190

14: Sir - 188

15: Nightmare888 - 188

16: Rodrigo - 187

17: terminator - 186

18: hurkules - 185

19: Flex\_10 - 184

20: Silus - 182

21: Prophecy3 - 181

22: joe1002 - 180

23: Lord_Soth - 180

24: x_execute_x - 179

25: Ice_Sabre - 178

Top 25 player killers - score is number of kills

1: Wolf - 132

2: Hells_Archer - 117

3: Phadera - 117

4: Lord_Sam - 113

5: DemonWarrior - 105

6: EndBringer - 104

7: Drew_Royal - 103

8: Black_Waltz3 - 101

9: DaRk_RoCk - 100

10: urgonnadie5 - 100

11: Lord_Stan - 99

12: SilencerLD - 95

13: robsimons - 94

14: shawn6 - 89

15: Mortis - 88

16: Ghost - 85

17: snorch - 85

18: matt_smith1 - 84

19: john246 - 84

20: Robin_Hood2 - 83

21: LovinHacking - 82

22: adam2000 - 82

23: God - 81

24: ace2you - 80

25: RCCBrasil - 80

Top 25 smiths - score is mining + smithing

1: dmonik - 110

2: STarlude - 98

3: natslayer - 97

4: Lord_Soth - 97

5: Viikate - 97

6: lightning - 96

7: The_Unknown - 92

8: beef - 91

9: hurkules - 90

10: Deckchair - 90

11: Kpac - 90

12: Snowdog - 89

13: S_H_A_R_K - 89

14: Rodrigo - 88

15: JB - 88

16: DOC_IRON\_9 - 87

17: Vit - 86

18: BlueRose13x - 86

19: MysticsMagic - 85

20: AvalonX - 85

21: TheReturnOfX - 84

22: Dizier - 84

23: RoaDDoGG - 83

24: Sir_Beachy - 83

25: KaGi - 83

Thanks for reading this newsletter, have fun playing the game!

Andrew Gower (RuneScape creator)

and Paul Gower (Map and Quest designer)
');
INSERT INTO "news" VALUES (9,981525600,'RuneScape now works on NetScape 6',0,'I finally worked out why netscape-6 wouldn''t run RuneScape, and have now fixed the problem! The game will probably also now work properly on a few other browsers.
');
INSERT INTO "news" VALUES (10,982044000,'More RuneScape updates',0,'Firstly I have fixed the error which enabled you to make double doors vanish by lighting a fire next to them. So hopefully no more trapped people.

I''ve also modified the trading window, so that you can point at an object someone is offering you to find out the objects name and description. This will help make trading fairer and safer.

Some new locations have been added to the map, there is a new shop in Al-kharid where you can buy plate-mail skirts.

The ''champions guild'' has been added south-west of Varrock. Only Adventurers who have proven themselves worthy by gaining influence from quests are allowed in.
');
INSERT INTO "news" VALUES (11,983340000,'Yet another new quest\, and new options menu',0,'Prince Ali of Al Kharid is being held captive by the Lady Keli. If you think you''re up to a daring rescue mission then go to Al Kharid and talk to Chancellor Hassan. This is a long quest with many parts! Many thanks to Rab for the many hours he spent creating it, and to Paul for configuring it for use in the game.

I''ve been working on a new options menu, to allow you to configure the game to your liking. So far there are only 2 options. The 1st option allows you to choose the behaviour of the camera, the new camera mode is the first step in a new system I am developing, which will ultimately make RuneScape run MUCH faster for people with slow computers. The 2nd option is to switch your character between PK and non-PK. (you can only switch twice, so choose carefully). I will be adding more options to the menu as required.

I''ve also been working on a system to support clans/friend-lists. This isn''t ready yet, but work is progressing well and I expect it to be available soon.
');
INSERT INTO "news" VALUES (12,983512800,'Problems fixed',0,'I''ve fixed a few minor problems with the new quest. In case you don''t already know getting the skin paste now works, and I''ve just solved the clay shortage problem.

I''d also like to apologise for the slow speed of this site on the 28th-Feb. This problem has now been resolved and we''re back to full speed again. I''ve also ordered a 2nd dedicated server to increase the reliability and speed of RuneScape in the future.
');
INSERT INTO "news" VALUES (13,984204000,'Second server online',0,'I''ve been busy this last week setting up a new server, and modifying RuneScape to use it. I''m pleased to announce that RuneScape is now running using two dedicated servers. This should allow more simultaneous players, and make the game more reliable at peak times.
');
INSERT INTO "news" VALUES (14,984808800,'This weeks update',0,'I''ve just uploaded this weeks update. I was really hoping to get a lot of interesting new features added this week, but due to a worrying amount of attempted cheating and password stealing I''ve had to spent most my time programming the system to detect and stop that instead.The players who continually try to break the rules are merely depriving themselves and everyone else of more interesting improvements. This week''s updates are:

*   Added a button to email forgotten/stolen passwords back to their owner
*   Made changing your password easier (there is a new option in the config menu)
*   Added timeout to conversations - to prevent people blocking shops
*   Added code to detect which players are attempting to break the rules

Luckily whilst I was busy doing this Paul had time to add a cook''s guild which you can only enter if your cooking skill is 32 or better. Cooking has also been improved with a wider choice of things to make. (You can now make a variety of different pies.)
');
INSERT INTO "news" VALUES (15,986533200,'Massive update!',0,'Asgarnia is online and includes:

*   Ice Mountain
*   Monastery with healing monks
*   Dwarven mine
*   Goblin village
*   Evil red monks
*   Black knight castle

City of Falador

*   White knights castle
*   Chainmail shop
*   Mace shop

Port Sarim

*   Food shop
*   Battle axe shop
*   Ice giants dungeon

We also have 4 new quests!

*   Doric''s Quest - fetch Doric some materials for making amulets
*   Spy quest - go on a spying mission for the white knights
*   Witch''s Potion quest - fetch the ingredients for an evil witches brew
*   Sword quest - help a squire recover his knight''s lost sword

In addition to this there is a new friends system, and new privacy features! Have fun!
');
INSERT INTO "news" VALUES (16,986619600,'Server problems',0,'We seem to be having a few server problems at the moment. This is due to the large amount of new code we added to the game yesterday. I''m working on fixing it though, so please be patient, and I''ll get everything running smoothly as soon as possible.
The good news is that I think I have just resolved the server down-time issues, so hopefully the server won''t go offline completely anymore. There is still an issue with certain players having problems when more than 1024 people play at once, this is only a problem at peak times and I expect to fix it on Sunday evening.

Also I expect to get the message boards, current-players, and password-emailing features working again on Monday. These have just been temporarily disabled whilst I get the new server code working properly.
');
INSERT INTO "news" VALUES (17,986878800,'Server fixed + message boards online',0,'I have now fixed the majority of the problems with the new server. All the major problems are now sorted, and I''m now working on a few less critical issues. I''m also going to update the world-map as soon as possible so you can find your way around Asgarnia.
More good news is that I have just put the message boards back-online. I have taken the chance to redesign and improve them, so I hope you like the new design!
');
INSERT INTO "news" VALUES (18,986965200,'Asgarnia map online',0,'The updated world map is now online, and I''ve labelled all the key locations in Asgarnia, so you can now find your way around without getting lost!
');
INSERT INTO "news" VALUES (19,987138000,'Server status page\, my-friends\, and password recovery pages',0,'The ''current players'' page was getting too long so it''s been replaced with a new ''server status'' page which tells you the number of people currently playing, and lists the top players who are logged in. So you can still tell which of your friends are playing I''ve also added a new ''my-friends'' page which tells you if the people on your friends list are online or not.
I''ve also got the lost password recovery feature working again. It''s now available by clicking ''lost password'' on the menu to the left and entering your account details.
');
INSERT INTO "news" VALUES (20,988866000,'Proposed new system - vote now!',0,'It seems to me that the current player combat system isn''t ideal. The fact that the vast majority of players have opted to be ''non-playerkiller'' seems to confirm this. Therefore I''m considering changing to a new system which more people should enjoy.
With the new system different areas of the map would be allocated as combat or non-combat zones. In the current map area (including all the major cities and mining sites) no fighting would be allowed. To cater for players who want to fight each other I would instead add a huge new area around the edge of the map called ''The Wilderness'', where player combat is always allowed.

The further out into the wilderness you go the more dangerous the game becomes, and the less restrictive the combat rules become, (so right at the very edge anyone can fight anyone!). But there will also be more treasure available to tempt people into venturing out despite the danger. If you don''t want to fight you don''t have to enter the wilderness area at all.

As well as the change above, I would also a new "duel" option to allow players to fight each other in the main non-combat zone. Duels would work a bit like trading, in that both players would have to agree before a duel could commence. Before the duel starts the players get to agree on the stakes (what the winner gets), and if things like magic and food can be used during the battle, and if retreating is allowed or not. This would allow you to try fighting other players in a much more controlled way, and should hopefully be a lot of fun for people who don''t want to get involved in just randomly killing other players.

This would be a major change to the game. I know the newbie killers won''t like it all, but I am trying to cater for the majority, not a few individuals. So please use the form below to let me know your opinion.

What do you think of the proposed new combat system?
');
INSERT INTO "news" VALUES (21,989038800,'3rd Runescape server on the way',0,'Runescape is still growing massively in popularity. There are now so many players at peak times that I''ve just ordered a 3rd dedicated server to cope, and I hope to receive it within a few days time.
The new server will be used to run a 2nd copy of the runescape world to reduce the overcrowding. The 2nd world will be exactly the same as the current one, and so will effectively allow twice as many people to play Runescape at once.

When logging in you will be able to choose which server to play on, and will still be able to private message your friends even if they are playing on the other server. The existing saved games will work on either world.
');
INSERT INTO "news" VALUES (22,989298000,'Runescape updated',0,'I''ve just updated runescape to add the following features:

*   Better smithing tables, with more even spacing of items
*   New goblin quest - help the goblins find a new look for their armour!
*   New crafting skills - make jewellery and pottery

I have also just received the 3rd server I promised, I am now configuring it, and hope to have it online shortly.
');
INSERT INTO "news" VALUES (23,989384400,'3rd runescape server online',0,'The new runescape server is online! I was planning on testing it a bit more and launching it tommorow, but so many people are trying to play tonight that the system couldn''t cope so I''ve been forced to launch it early. Hopefully everyone who wants to play will be able to now.

Important: You can only play on one server at a time. If you try to log onto both servers simultaneously with the same account you will be told "Invalid username/password". This message should read "Username already in use", but currently does not. I will fix this tommorow, and I will also improve the page which lets you select the server so that it displays the number of players in each.
');
INSERT INTO "news" VALUES (24,989470800,'Lots of small improvements',0,'I''ve been busy making lots of minor alterations and bugfixes to the game. The main changes are:

*   My-friends webpage now works properly, and also shows which server they are on

*   You can now private message friends even if they are playing on the other server

*   Windows client now lets you select which server to use

*   Reorganised the stats list to prepare for coming updates

*   Improved speed and reliability of the servers

*   Introduced new quest-point system to replace the old ''influence'' system

*   Fixed ''using ranged combat advances other skills too'' bug

*   Fixed ''impossible to mine gems'' bug

*   Fixed ''pottery menu wrong way around'' bug

*   Fixed ''server sometimes sends wrong error message on login'' bug

*   Fixed ''friends list gets blanked on lost connection'' bug
');
INSERT INTO "news" VALUES (25,990421200,'Updated FAQ',0,'I''ve updated the frequently-asked-questions page to answer some more common queries. Click here to view it.
If you think there are further questions missing from the FAQ then let me know what you think I should add.
');
INSERT INTO "news" VALUES (26,990680400,'4th RuneScape server ordered',0,'Last night saw over 2000 simultaneous RuneScape players for the first time ever. Hurrah! To keep up with the increasing number of players I''ve just ordered yet another server to help keep the game running smoothly. I hope to have it within a few days.
');
INSERT INTO "news" VALUES (27,990680400,'New magic system online!',0,'The RuneScape magic system has been massively improved with the addition of lots of new spells. Magic can also now be used during combat! In addition to this there is also a new prayer system which lets you temporarily cast various effects on your character. This means there is now a total of 42 spells and prayers to choose from.

For more information on the new systems click below:

*   Guide to magic
*   Guide to prayers
');
INSERT INTO "news" VALUES (28,990680400,'Pop up windows removed',0,'I''ve removed the pop up windows because there were just too annoying. Hopefully the remaining adverts will make enough money that I don''t have to put them back (E.g. the revenue from banner-advert clicks doesn''t fall any further)
');
INSERT INTO "news" VALUES (29,990680400,'Runescape updated',0,'Due to popular request, female players can now go and talk to one of the characters in the game, and get their armour modified to look more feminine.
The ice dungeon has been expanded and improved. It also now includes a new ice-warrior monster.

The server status page now shows the top crafter, top magician, and top cleric.
');
INSERT INTO "news" VALUES (30,990766800,'4th Runescape server online',0,'The 4th runescape server is now online! (this means we now have 3 game servers, and 1 web server). It has now been fully connected so you can use it with both the windows and online versions of the game
I have also modifed the game to prevent people from logging in multiple players at once from the same machine, because doing so is against the rules! If you have problems with the system seeing your home-network as a single machine, then try using the window client which is better at detecting your network configuration.

**Update:** Even if you can''t use the windows client then up to 3 people on the same home-network can still play at once, as long as each player uses a different server.
');
INSERT INTO "news" VALUES (31,990853200,'Prayers last 50% longer',0,'It seems most people thought they prayers weren''t quite powerful enough. I''ve therefore now changed the game so that all the prayers last 50% longer, before you need to recharge.
');
INSERT INTO "news" VALUES (32,990939600,'Sorry for recent server problems',0,'Any regular runescape players will have noticed that the servers have been experiencing problems over the weekend. I have been working extremely hard to try and resolve this problem, and hopefully everything will be back to normal now. I believe it was caused by a memory leak in the new magic system which I added on Friday. I have now fixed the memory leak so hopefully the server will now be stable. I apologise for any inconvenience caused. - Andrew
');
INSERT INTO "news" VALUES (33,991026000,'Completed quests list',0,'I have add a new button to the stats menu which shows you which of the 15 quests you have completed. I hope this proves useful to people who are trying to work out which ones they have missed, so they can complete them all!
');
INSERT INTO "news" VALUES (34,992235600,'New fishing skill and more cooking',0,'I''ve added a whole new skill for you to try in RuneScape! There are various fishing points scattered around the rivers and ocean. Go to the fishing-shop in Port Sarim to get the equipment you need and then try your hand at fishing. There are 10 different fish to catch, and 5 different fishing techniques to try!
As well as the fish, there are now even more things to cook and eat in RuneScape.
');
INSERT INTO "news" VALUES (35,992235600,'The island of Karamja is open',0,'Paul has now finished the island of Karamja! Go and talk to Captain Tobias at Port Sarim if you want a boat trip to the new island. Karamja also features a brand new quest in which you must hunt for hidden treasure! To start the new quest go and talk to Redbeard Frank at Port Sarim.
');
INSERT INTO "news" VALUES (36,992322000,'Lots of minor fixes and tweaks',0,'Just made a quick update to fix and tweak various small problems. This update fixes the following:

*   There are now even more customs officers on karamja
*   There is more fishing bait available in the shop and as monster drops
*   Burying bones now gives 50% more experience
*   The pirates quest is now added to the quest list
*   Added button to deposit 1000 coins at a time in the bank
*   Fixed making cake takes flour pot away bug
*   Fixed catching tuna doesn''t give XP bug
*   Fixed food shop doesn''t work after completing pirate quest bug
');
INSERT INTO "news" VALUES (37,992322000,'Updated world map',0,'I''ve updated the world-map. It now shows the location of the jewellery shop, gem shop, crafting shop, armour conversion shop, fishing shop, and the places where you can catch fish.
');
INSERT INTO "news" VALUES (38,993013200,'New password recovery system',0,'I''ve changed the system for retrieving a lost password. The new system doesn''t use email because not everyone has a secure email account they can use, and people''s email address often changes.
Next time you login you will be asked for the answers to 5 security questions. Then if you should lose your password you can use these answers to set a new password on your account. You will only be allowed to set the questions once, after which they are permanently fixed. Therefore you should be careful to choose questions+answers which other people won''t be able to guess, but which you will easily remember.
');
INSERT INTO "news" VALUES (39,993272400,'More runescape bugs fixed',0,'I have now fixed the following bugs with runescape:

*   improved password box to allow up to 20 characters
*   fixed it so you can still stack extra runes/arrows even when your inventory is full.
*   fixed a bug which could cause stack of 0 coins to be created
*   fixed a bug with arrows of different types not stacking on the ground properly
*   fixed it so that leaving the bank displays your balance properly
*   improved runescape auto-update code
*   logging out now works properly when you log out at the exact moment of attack
*   fixed it so people no longer randomly get added to your friends list
*   fixed it so lumbridge and karamja shops don''t share the same stock!
');
INSERT INTO "news" VALUES (40,993272400,'New tailoring ability',0,'Paul has extended the crafting skill so you can now also use it make items out of leather. Take a cow hide to the tannery to get some leather. You can then use the leather with some thread to make gloves, boots and leather armour.
');
INSERT INTO "news" VALUES (41,993358800,'Updated world map',0,'The world map page now shows where all the quests start. It also shows the locations of altars where you can recharge your prayer points, and the new tannery shop.
');
INSERT INTO "news" VALUES (42,994914000,'Improved prayer system and more!',0,'*   New monastery area which you can enter if you are a high level cleric. Includes monks robes and a special new altar to pray at.
*   Silver rocks to mine (requires level 99 mining only joking its 20 lol)
*   Holy symbol of Saradomin, made by crafting from silver. Take it to the new monastery area to get it blessed to make your prayers last longer
*   The black hole experience in the dwarven mines!
*   A few minor bug fixes
');
INSERT INTO "news" VALUES (43,995000400,'Andrew''s guide to not losing your password',0,'An increasing number of people are trying to trick other players into giving away their password. Please use a bit of common sense to avoid getting tricked in this way. Some common tricks to avoid are below:

Do NOT enter your password into ANY website other than runescape.com! If you go somewhere else and see a chat room or survey or cheat site which claims it needs your password then that site is a trick and will steal your pass. Don''t be a fool. Be very suspicious of anything or anyone that asks you for your password.
Remember that real Jagex staff will NEVER EVER ask you for your password! If anyone talks to you, or emails you claiming to be me, and asks for your password, then they are lying and are trying to steal your account. Jagex staff will NEVER ask you for your password for any reason!
Be very careful downloading programs from other websites. I have seen programs which claim to give you money, or make you stronger, or cheat in some other way. However this is IMPOSSIBLE! These programs actually contain a VIRUS, which will record your keypresses and steal your password. Get a decent virus checker, and don''t run anything not downloaded from an official website.
I''m not trying to scare you, all the points above are just common sense! If someone in real-life said "give me your credit card number and I''ll credit you 1000!" would you? I sure hope not! Just because runescape is a game doesn''t mean you should be any less careful.
');
INSERT INTO "news" VALUES (44,995346000,'5th RuneScape server online',0,'I just finished setting up another server help run RuneScape. The new server isn''t being used to run another parallel world, but is instead working behind the scenes to help manage the save-games.
This gives a total of 3 world servers, and 2 support servers. This should hopefully increase the total system capacity to 4000 players at once.
');
INSERT INTO "news" VALUES (45,996123600,'Runescape updated',0,'The bank has been upgraded so you can now store any item in the bank not just gold. Useful for keeping your spare weapons, gems, and anything else you might want to store. You can store up to 48 different items, with a maximum limit of 16 million items per stack.
Runite items have been added to the game! Runite is the most powerful metal in the game, better than even adamantite. Both rune weapons and rune armour are now available to purchase from the champions guild. (hint - there is an extra item only available as a rare monster drop from a particularly strong monster!)

The player owned houses have been removed. This is because since they were original planned runescape has become much more popular and there is nowhere near enough to go around. Instead the 2 updates above have been included to compensate. The item bank lets anyone store the items they want to, and the runite items are an alternative for people to spend the money they have been saving on.
');
INSERT INTO "news" VALUES (46,997506000,'Wilderness system nearly complete',5,'The new wilderness area of runescape is nearly complete. This is a huge new area which is part of an improved player-combat system which was first proposed a few months ago. A poll on the website at the time showed the vast majority of players in favour of the new system, so we have been working very hard to complete it.

<a class="rsc-image rsc-image-thumb" href="/images/Wild1.jpg"><img src="/images/Wild1.jpg" align="right"></a>
In the improved system player fighting is only allowed in the new wilderness area. The ability to switch between PK and Non-PK will be removed and instead you just go into the dangerous wilderness area if you want to fight other players, or stay within the current map area if you don''t.

<a class="rsc-image rsc-image-thumb" href="/images/Wild2.jpg"><img src="/images/Wild2.jpg" align="right"></a>
The further you go into the wilderness the more dangerous it becomes, but the more treasure you could find! How much of a risk you want to take is entirely up to you. Some preview screenshots of a couple of wilderness locations are shown to the right.
');
INSERT INTO "news" VALUES (47,997678800,'A few bugs fixed',0,'I just fixed a couple of bugs with the new systems. I''ve fixed a problem with the wilderness, whereby low level archers were able to attack high level players in the wilderness without being attackable back! And I''ve fixed a problem with the new stats menu where the XP indicator didn''t update properly.
Also bear in mind that we might tweak the wilderness a bit over the next few days if it proves to be unbalanced, although everything seem ok so far. We are also planning on adding a dualing system which will allow combat outside the wilderness if both players agree to it.
');
INSERT INTO "news" VALUES (48,997678800,'Stats menu now shows XP',0,'Due to a huge number of requests, the stats menu now shows you the exact number of experience points you have in each skill, and the number you need to reach to advance a level. For the more detailed information about a particular stat just point your mouse over it, and the numbers will be shown at the bottom of the menu.
');
INSERT INTO "news" VALUES (49,997678800,'Wilderness system online',0,'The new wilderness area of runescape is online! This is a huge new area which is part of an improved player-combat system which was first proposed a few months ago. A poll on the website at the time showed the vast majority of players in favour of the new system, so we have now written it.

<a class="rsc-image rsc-image-thumb" href="/images/Wild1.jpg"><img src="/images/Wild1.jpg" align="right"></a>
In the improved system player fighting is only allowed in the new wilderness area. The ability to switch between PK and Non-PK will be removed and instead you just go into the dangerous wilderness area if you want to fight other players, or stay within the current map area if you don''t.

<a class="rsc-image rsc-image-thumb" href="/images/Wild2.jpg"><img src="/images/Wild2.jpg" align="right"></a>
The further you go into the wilderness the more dangerous it becomes, but the more treasure you could find! How much of a risk you want to take is entirely up to you. Some preview screenshots of a couple of wilderness locations are shown to the right.
');
INSERT INTO "news" VALUES (50,997851600,'Website updated',1,'I have just updated the worldmap. It now shows the mining guild and the very south edge of the wilderness. The whole wilderness isn''t shown however, so you''ll have to explore it for yourselves! I''ve also added 4 new message boards, to give a total of 8, because the old boards were getting extremely crowded. Enjoy!
');
INSERT INTO "news" VALUES (51,998110800,'Kill stealing bug fixed',0,'It seems that in certain circumstances the game was still not giving the treasure to the correct player. I have now fixed this problem. Many thanks to the people who reported this.
');
INSERT INTO "news" VALUES (52,998110800,'Lots of small improvements',0,'*   I''ve fixed the kill stealing problem, the treasure now goes to whoever damaged the monster most overall rather than the person who got the last hit. XP is split proportionally between all people who helped kill the monster.
*   Teleport spells no longer work once you reach level-20 wilderness or beyond. This makes the deep part of the wilderness dangerous even for high level players.
*   People who are green on your friends list also appear as green dots on the mini-map, making it easier to find them in the game, and easier to go adventuring with a group of friends.
*   Your player''s overall combat level is now shown on the stats menu.
*   2 more items banks have been added to reduce the crowding problems. One is in east Varrock, and the other is in Draynor Village.
*   Fixed seven minor bugs.
');
INSERT INTO "news" VALUES (53,998370000,'Servers back online',0,'Runescape is now back online! The reason is was unavailable last night is because my hosting company ''skynetweb'' had a power failure which reset one of my main servers. (so much for their backup power-supplies, and supposed reliability!) Skynetweb have had repeated problems since I joined them, so I guess it''s time to find a new hosting company.
');
INSERT INTO "news" VALUES (54,1000011600,'4th world server online',0,'After many days of work I''ve finally managed to get my brand new servers working! I''ve setup a much needed 4th world server, and I expect to transfer the rest of the runescape worlds and website to the new servers shortly.

\*\*Update:\*\*Everything except the webserver is now running from my new servers. Hope everything is working well, many users have reported lower lag, but a few have reported increased problems so I guess it depends where you are. Also people have been mentioning they can''t get the new windows client to work. Remember you CANNOT run 2 copies of the windows client at once, this means after downloading the new version you must close the old copy before starting the new one, or it won''t work!
');
INSERT INTO "news" VALUES (55,1000098000,'Please vote on the new servers',0,'As you probably know yesterday Runescape moved to a new ISP. Please help me access the quality of my new servers by voting with the form below. I know some people are finding them better, and others are finding them worse. I''d like to know percentages so please could everyone vote below to let me know.

Moving the servers was very expensive so I hope lots of people are finding an improvement. Also note that I am unlikely to move the servers back to their old ISP regardless of the result of this survey, since I just can''t afford to do so. I just don''t have enough money for another move due to not enough banner clicks.
');
INSERT INTO "news" VALUES (56,1000270800,'New windows client',0,'If you have been having problems with the downloadable windows client not working, but can play online just fine, then please try this updated version.

Download

This version has a few bugfixes, and gives better error messages. If you find it still doesn''t work then send an email to clientbug@jagex.com clearly stating:

*   The exact error message you receive.
*   If the program gives the same message everytime you try
*   Your operating system (e.g 98, 2000, ME, etc)
*   Your internet-explorer version (4, 5 or 5.5)
    Our usual Terms and conditions apply to this software. Please read them before downloading.
');
INSERT INTO "news" VALUES (57,1001221200,'Dragon quest online!',0,'Think you''ve got what it takes to slay a dragon? If so try our new quest! This quest has been designed with the more experienced runescape players in mind so it''s fairly tricky.

<a class="rsc-image rsc-image-thumb" href="/images/Dragon1.jpg"><img src="/images/Dragon1.jpg" align="right"></a>
To start the quest go and talk to the guildmaster in the champions guild. From there you will have to solve a series of puzzles before travelling to slay the dragon itself. Only heroes who have proven themselves worthy by completing this quest can purchase and wear the best armour in the game. The new rune platemail body!
');
INSERT INTO "news" VALUES (58,1002258000,'Premium RuneScape service coming soon!',0,'Due to much demand we are planning on launching a new premium RuneScape service soon. This will bring a whole load of great benefits such as: frequent updates, NO-adverts, good customer support, no scammers/cheaters (we''ll kick ''em out), and much more! We''re hoping to make it available for just $5 a month, and this tiny amount of money will pay for many great RuneScape updates to come, and will ensure we can keep running RuneScape for YOU.

This is great news, because it will enable us to offer you more frequent RuneScape updates. Some of the first updates we have planned include: A duelling system, more monsters (wolf, giant-bat, lizard-man etc..), lots of new items, sound effects, more quests, and there will be loads more stuff after this.

We hope that many people will be able to afford the very small amount we are asking, if you really really can''t afford to pay then don''t worry, because there will still be a FREE RuneScape service available. Obviously since this service will be offered for free, we won''t be able to keep offering regular updates to non-paying members. In actual fact running the free service will cost us a lot of money but we want to thank all the people who have helped us beta-test the game so far, and so will try keep it going as long as possible.

Thanks for all your support.

Andrew Gower
');
INSERT INTO "news" VALUES (59,1003726800,'Updated terms+conditions',1,'We have updated our terms+conditions. To continue using this website or the RuneScape game you MUST agree to the new terms. [Click here to view them](http://http://www.runescape.com/runeterms.html)
');
INSERT INTO "news" VALUES (60,1005717600,'Latest RuneScape News',1,'I have decided to remove all the non-essential parts of this website such as the message boards. I have 3 main reasons for doing this:

1.  This saves a lot of server resources and allows me to increase the capacity of the main RuneScape game itself, which is after all the most important part of the website.

2.  Moderating the message boards has become a \* huge\* amount of work lately. I am fed up with all the scamming, swearing, and abuse which goes on here, so they are gone. This will save me a lot of time and stress! I have found that lately I am spending more time managing the website than actually programming new features into the game which isn''t much fun and is why I felt things had to change.

3.  Better security - There is now only ONE place where you need to enter your RuneScape Password. You should now only enter your password into the game itself and nowhere else! NOTHING else I have written will ask for your RuneScape password EVER! The game login uses better security than the other web-based features, so this means your password will be even safer than before.

I have also reprogrammed the chat filter in the game itself, to use a more effective system. This is another feature which has been heavily abused, and I''m not willing to put up with it any longer. The new system only allows a limited vocabulary to be used. The new RuneScape chat is only intended for role-playing within the game, not for talking about real life!

I have programmed a new server core, which should in the long run be more reliable and allow more people to play RuneScape at once. You may see a few glitches.
');
INSERT INTO "news" VALUES (61,1005804000,'Latest RuneScape News',0,'The new chat filter isn''t working quite as well as hoped. Therefore I have decided to REMOVE it! I have worked out a different way of filtering the chat which will be far more effective than using a limited dictionary, which I will be adding shortly. This means you will be able to talk ''normally'' again soon.

Update: If you notice any words that the chat filter is blocking, and you feel it shouldn''t be then send an email containing those words to words@jagex.com. Please DONT include a message in the email, send the words you want adding only! If you cannot say your characters name please do NOT tell me, I am fixing this issue separately.

Also I know a few people were upset to see the removal of the ''server status'' page, I forgot to mention that this was removed because in a few days time I will be adding an automated top 1000 players list to this website. :-)
');
INSERT INTO "news" VALUES (62,1005890400,'Latest RuneScape News',0,'I have fixed a recent error in the friends list where it would sometimes incorrectly show people as ''offline'' when they weren''t. I have also increased the maximum capacity of this list from 50 friends to 100 friends. Finally the friends list is now automatically sorted so your friends who are online appear at the top of the list.

I have made a few more improvements to the chat filter. I am still working on this however.

Also I know a few people were upset to see the removal of the ''server status'' page, I forgot to mention that this was removed because in a few days time I will be adding an automated hiscore table to this website which will show the top 1000 players in each skill.
');
INSERT INTO "news" VALUES (63,1006149600,'Latest RuneScape News',0,'Chat filter "cabbage!" bug fixed. Certain versions of Java seem to have a bug in them which caused the chat filter to malfunction. This is hopefully now fixed.
');
INSERT INTO "news" VALUES (64,1006236000,'Latest RuneScape News',0,'Due to a change in the way this website works (to increase reliability) I have had to update the RuneScape windows client. Therefore if you use the windows client to play you will need to download the latest version. Thank-you
');
INSERT INTO "news" VALUES (65,1006408800,'Latest RuneScape News',0,'The RuneScape top 1000 hiscore tables are now online. There is a table for each skill in the game, as well as an ''overall'' table. Click on the link above to view them :-)
');
INSERT INTO "news" VALUES (66,1006754400,'Latest RuneScape News',0,'I''ve made a few tweaks to RuneScape over the weekend to fix a few minor problems: The 65535 objects in a stack limitation has been removed, so you can now carry and trade as much gold as you like. Some people were experiencing lag in crowded areas when a lot of people were talking. To fix this the chat is now compressed, and the chat filter has been optimised. A few other bug fixes, for instance the game now correctly displays your privacy settings in the options menu.
');
INSERT INTO "news" VALUES (67,1006840800,'Latest RuneScape News',4,'I''ve added a confirm-box to the trade window to make scamming much more difficult. After both players have selected objects, an extra confirm-box showing the details of the trade is displayed. This allows you to check all the details are correct before parting with your items.

If a player on your friends list is shown in yellow (i.e they are on a different server), you can now find out which server they are on, by moving your mouse pointer over their name.

I''ve fixed another bug with the chat filter which was making it over sensitive in certain circumstances
');
INSERT INTO "news" VALUES (68,1007359200,'Latest RuneScape News',0,'Due to a huge number of requests we are considering adding level requirements to the armour and weapons in RuneScape. The way this would work is you would need a certain defence level to wear the best armour, and a certain attack level to use the best weapons.

The main reason for this would be to stop the current problem wherby there are low levels players walking around with full-rune which they''ve been given by a friend (or from one of their own high level character, in direct breach of our rules). Which is considered by many to be something of an unfair advantage.

The levels we are considering are:

Level-5 for Steel

Level-10 for Black

Level-20 for Mithril

Level-30 for Adamantite

Level-45 for Rune

P.S Happy Birthday to me, and to Lightning, and to anyone else who''s birthday it is today :-)
');
INSERT INTO "news" VALUES (69,1007532000,'Latest RuneScape News',0,'The level requirement poll has finished. Since the majority of the players favoured this change it will be going ahead.

I am fully aware that some smiths and miners feel this will disadvantage them. However remember even if you can''t use the items in combat you can still make money from buying and selling them.

I have to consider what is good for the game as a whole, and currently the lack of level requirements is unbalancing the wilderness quite severely and making it largely inaccessible for low to mid level players. I am pleased to see that the most players are in agreement with this decision :-)

The levels requirements will be:

Level-5 for Steel

Level-10 for Black

Level-20 for Mithril

Level-30 for Adamantite

Level-40 for Rune
');
INSERT INTO "news" VALUES (70,1008741600,'Latest RuneScape News',1,'We have finally found the time to update the RuneScape online manual. The manual now contains instructions for all the main aspects of the game, as well as guides for individual skills such as smithing and crafting. I have also updated the world map to show the most recent additions to the world. The map is now in a separate section to the rest of the manual, just use the link above to view it
');
INSERT INTO "news" VALUES (71,1010124000,'Latest RuneScape News',0,'Our order of two new servers arrived from Dell yesterday, and after a few hours work they are now setup and running world 5 and world 6. This increases the total capacity to 7500 simultaneous players.
');
INSERT INTO "news" VALUES (72,1010642400,'Compression',0,'I''ve managed to significantly improve the compression used on the RuneScape client. This means the game should now download more quickly. It also reduces the total amount of bandwidth being used by the RuneScape servers, which will hopefully also mean less lag at peak times.

All the maps, graphics and code for the RuneScape client are now compressed into just 687k at a compression ratio of nearly 20:1!
');
INSERT INTO "news" VALUES (73,1011765600,'Latest RuneScape News',0,'We are planning on launching as soon as our new customer support system is ready, I''m \* hoping\* that will be early next week

The following are all already fully programmed and ready to roll
Some things like fletching aren''t on this list, that does NOT mean we aren''t doing them, it just means they aren''t finished \* yet\*
After the launch we will continue working on the members area, and will add many more improvements and updates

herblaw, duelling, sound effects, higher level fish to catch,twice as much bank space.

**Quest**

druid quest, zanaris quest, heroes quest, ball quest.

**Wilderness**

overgrown village, bandir village, dark warrior castle, red dragon lava island.

**Location**

zanaris underground city, entrana island, huge members dungeon, town of traverley, crafting guild, heroes guild, white wolf mountain, pirate town (brimhaven) and dark wizard tower.

**Monster**

red dragon, blue dragon, baby blue dragon, druid, choas druid, bandit, dark warrior, white wolf, grey wolf, giant-bat, thug, poison scorpion, ice spider, guard dog, ice queen, shape shifter.

**Object**

dragonstone gem, dragonstone amulet, 2-handed rune sword, rune battle axe, herbs and potions.

**Other Info**

No Adverts, scammers and cheats will be kicked out.
Priority customer support
');
INSERT INTO "news" VALUES (74,1012284000,'Latest RuneScape News',0,'Dropped item change reversed. Whilst it wasn''t intended that dropped items didn''t become visible to other players for 1 minute, it seems a lot of people considered it more of a feature than a bug. So this ''feature'' has been put back into the game.

Note however that relying on this and dropping your valuable items on the ground still isn''t a good idea. If you lose your internet connection for a minute whilst your item is on the ground then someone else is likely to take your item, and you will lose it.

Also Password Options has changed
You just press ''reset recovery questions'' type in your new ones, and then in 2 weeks if nobody has opposed the change they switch over.
For that 2 weeks each time you login it will tell you that someone is trying to change the recovery questions. If it wasn''t you who requested the change you can cancel it, and then change your password quick!

Also regarding Rune battle axes and 2h Rune swords,
Andrew decided to put them back into the Free game.

Members version will instead features 2 new weapons which are even better, the dragon-sword, and the dragon-axe
');
INSERT INTO "news" VALUES (75,1012802400,'Latest RuneScape News',0,'We are planning on a launching a new optional service called ''RuneScape members'' fairly soon. This is in ADDITION to the existing ''RuneScape freeplay'' service which we intend to keep running.

Being a member gives lots of great new features and skills. We currently plan to make it $5/month or $45/year, and to accept both credit-cards and money-orders. The prices are in us-dollars, but we will also accept other currencies. The idea is that the revenue from ''RuneScape members'' will enable us to add even more improvements to the game and allow us to keep it going for many more years.

We''re now in the final stages of preparing our members service, so over the next few days you might start seeing new areas and quests in the game which you can''t reach. These will then be opened up for members when we are ready.

The members service is NOT yet available, so there is no need to e-mail asking how you can get it. As soon as it''s done you''ll be able to subscribe from this website. We don''t have an exact launch date, but obviously it will be as soon as possible.
');
INSERT INTO "news" VALUES (76,1014271200,'Why should you upgrade to members version',5,'## No-risk!

Upgrading your character to member status costs just $5/month or $45 for an entire year.
If after trying members RuneScape you decide it''s not for you, you can simply switch back to freeplay RuneScape. Of course if you do this any members-only items or skills will be disabled, but they will NOT be removed. This means if you subsequently decide to resume your membership the members items and skills you gained before will start working again.

Heres a few details of what you can expect in Members version.

## New Features

**Herblore:** The herblore skill allows you to mix a variety of potions, poisons and antidotes. Everything from super-attack potions to poison to put on the tips of your arrows.

**Duelling:** Duelling allows two players to agree to a fight outside the wilderness. Either for an agreed prize, or just for fun. In addition to agreeing on the stake you can optionally select other options such as: no-retreating, no-prayers, no-magic or even no-weapons!

**Sound effects:** Optional sound effects are finally available. There are currently 37 different sound effects on actions such as combat, cooking, magic, doors, mining, smithing, etc. Even more sound effects are planned in future updates.

**More fishing:** Higher level fish to catch. Do you think you''ve got what it takes to catch a shark? Or perhaps you''ll get lucky and net yourself a surprise treasure chest.

**Double size bank:** Twice as much bank space to store your items in, and what with all the new members items and features your going to need it!

As well as all the new herbs and potions you can make we''ve introduce a new range of weapons. Including the dragonstone amulet, the dragon-sword and the dragon-axe.

<a class="rsc-image" href="/images/Pic9.jpg"><img src="/images/Pic9.jpg"></a> <a class="rsc-image" href="/images/Pic10.jpg"><img src="/images/Pic10.jpg"></a>

## New Quests

**Druidic Ritual:** Before you can start using the herblore skills you must help the druids complete their ritual.

**Lost City:** Rumour has it that there is a hidden city under the swamp, can you find out how to get in? The fairy market inside apparently has some (literally) out-of-this-world deals!

**Witches house:** A boy asks you to fetch his ball from behind a small house... This apparently simple task turns out to be much more difficult than expected when you realise the house in question is owned by a particularly crazy witch...

**Hero''s quest:** Prove yourself as a hero by completing this difficult quest! Only once you have completed the multiple challenges given to you, can you enter the hero''s guild to buy the new Dragon-axe.

**Merlin''s crystal:** Merlin has been imprisoned inside a giant crystal. Free him and become one of the knight''s of the round table.

<a class="rsc-image" href="/images/Pic3.jpg"><img src="/images/Pic3.jpg"></a> <a class="rsc-image" href="/images/Pic8.jpg"><img src="/images/Pic8.jpg"></a>

## New Locations

We''ve filled the wilderness with new exciting places to fight and collect treasure, including the overgown village, bandit camp, dark-warrior castle and red-dragon lava island!

**Quest locations:**
We''ve added a variety of new locations and scenes which as well as providing settings for the new quests are also exciting places to explore and train. These include: Zanaris underground city, Entrana island, Arthur''s castle, Fort Grymwold.

**New towns and villages:**
Lots of new towns including the pirate town of Brimhaven, Catherby village, and the town of Taverley

**HUGE members dungeon:**
By far the biggest dungeon in RuneScape, this colossal labyrinth of passageways and caverns becomes more and more dangerous the further down you go making it the ultimate place to try your combat skills. Includes lots of new powerful monsters and scenary.

**New guilds:**
The crafting guild is a great place to practice your crafting skills, and is available to players with 40 crafting or higher. The hero''s guild is similar to the champions guild except even harder to enter, and so only available to the most elite RuneScape players.

<a class="rsc-image" href="/images/Pic1.jpg"><img src="/images/Pic1.jpg"></a> <a class="rsc-image" href="/images/Pic4.jpg"><img src="/images/Pic4.jpg"></a>

**New Monsters!**
If the poison scorpions don''t get you, then perhaps the level-200 black dragon will! We''ve added 19 new monsters, and there''s something for everyone. As well as new super-strong monsters, there''s lots of new opponents for lower level players too.

**New monsters are:**
red-dragon, druid, ice-queen, giant-bat, black-dragon, bandit, chaos-druid, white-wolf, baby-dragon, poison-scorpion, ice-spider, black-demon, guard-dog, shape-shifter, blue-dragon, dark-warrior, grey-wolf, poison-spider, thug.

<a class="rsc-image" href="/images/Pic2.jpg"><img src="/images/Pic2.jpg"></a> <a class="rsc-image" href="/images/Pic5.jpg"><img src="/images/Pic5.jpg"></a>

**Plus**
In addition to loads of great new features in the game, members also benefit from

*   No adverts!
*   Priority customer support
*   Moderated members-only servers
*   Scammers and cheats will be kicked out

As a member you will be helping fund further RuneScape developments and features. In return we intend to add even more features and upgrades to the members-area as fast as we can!

Planned member improvements in the near future include a fletching skill (make a variety of bows and arrows), and the option to purchase, furnish, and improve your own house in the game!

<a class="rsc-image" href="/images/Pic6.jpg"><img src="/images/Pic6.jpg"></a> <a class="rsc-image" href="/images/Pic7.jpg"><img src="/images/Pic7.jpg"></a>
');
INSERT INTO "news" VALUES (77,1014616800,'Latest RuneScape News',0,'RuneScape members is extremely close to being ready. We are currently installing and testing the new software and website on our servers. As soon as this is done you will be able to subscribe and play.

Watch this space....!
');
INSERT INTO "news" VALUES (78,1014789600,'Latest RuneScape News',0,'RuneScape members is online!!!

For lots more information click here

For payment options and to sign-up click here

**Note:** The problem we had with the worldpay servers earlier today has now been fixed. Everyone who has paid has now been upgraded to a member.
If for some reason you still can''t access the members server and you should be able to then please contact the address given in the worldpay receipt which has been emailed to you.
');
INSERT INTO "news" VALUES (79,1014962400,'Latest RuneScape News',0,'Firstly a very big thank-you to all our members. Your support is very very much appreciated!

We said that the profit from the members would be put back into improving RuneScape, and we''re now working hard to do this. During this coming week we aim to get more servers online (to ensure there is enough space for both free users and members).

We''re also looking for a full-time member of staff to come and work with us in Cambridge(uk) to help us provide a better level of support for our users. We''re looking for an energetic person, with good communication skills. Your job will involve answering emails, checking the game-logs and incident reports to ban troublesome users, and coordinating our volunteer moderators. You will be working in our Cambridge office with myself (Andrew), and Paul,

If you''re interested please send your CV and an indication of what sort of wage you would expect to cv@jagex.com. Please nobody else use this email address, use the support area linked to below, so we can deal with your query properly. Support emails incorrectly send to the cv address will be deleted.
');
INSERT INTO "news" VALUES (80,1015048800,'Latest RuneScape News',0,'Bug fix update. Today''s small update fixes about 8 minor bugs with the game. In particular strange problems seen shortly after a ''connection lost'' message should now be fixed, and a few minor glitches with the new quests have been fixed.
');
INSERT INTO "news" VALUES (81,1015135200,'Latest RuneScape News',0,'I sincerely apologise for the brief downtime experienced by players today. After 2 months of uptime our fileserver inexplicably crashed. I hope we can get additional servers setup very soon to reduce the strain on our current servers.
');
INSERT INTO "news" VALUES (82,1016431200,'Latest RuneScape News',0,'We''ve just put some new members features online. Including:

*   A wilderness dungeon branching off the north end of the Edgeville dungeon

*   Glass making ability. As part of crafting you can now make vials, glasses and orbs.
    To make glass you need to burn seaweed on a fire to get soda, and mix it with sand in a furnace.
    Finally use a glass blowing pipe to turn the molten glass into an object. (Hint: these items can be found on Entrana island)

*   Battle staffs. Craft an orb and then charge it at the correct obelix using a cosmic-rune. Finally use
    your crafting ability to attach the orb to a battle staff from Zaff''s staffs.

*   New high level magic attacks are now available. Using the new blood-rune!

*   New teleport spell to Camelot

*   New monster - black unicorn

I''m also pleased to say that our new server finally arrived today, so we hope to get it installed this week to add another two freeplay worlds.

I''d like to welcome our two new employees: Steve and Ian. They joined us last Thursday, and are working in our Cambridge office to handle your customer support queries.
We''ve got a bit of a backlog of questions to work through at the moment, but we''re finally able to start tackling it!
The RuneScape usernames of all our official staff are now: Andrew, Paul, Ian, Mod_ian and Sirmodsteve.
');
INSERT INTO "news" VALUES (83,1016517600,'Latest RuneScape News',0,'Two new runescape worlds are now online! These new worlds are hosted in a different location to our previous 6 worlds to increase your chances of being able to find a server to which you get a good connection to the game.

I''ve made one of the new worlds a members server, and one of them a free-edition server. This means RuneScape now has 8 worlds, a total capacity of 10,000 simultaneous users and a massive 35mbps of dedicated bandwidth! Once I''m happy the new hosting company is ok I will buy another 2 uk worlds to increase our capacity even further.
');
INSERT INTO "news" VALUES (84,1016690400,'Latest RuneScape News',0,'Two new severs are now online now. They hosted in a different location to the previous 6 worlds.
This will increase your chances of being able to find a server to which you get a good connection to the game.

One new server is members and the other is free-edition server. This means Runescape now has 8 worlds, a total capacity of 10,000 simultaneous users and a massive 35mbps of dedicated bandwidth!
');
INSERT INTO "news" VALUES (85,1016776800,'Latest RuneScape News',0,'We''ve increased our bandwidth even further to a total of 40mbps to further improve the quality of our service.

I''d like to welcome another new employee Kyla who is now working in our London office and will be handling billing queries and problems.

Work on the new fletching skill is progressing very well. We''re now in the final stages of testing and hopefully the skill will be online early next week. Plus we''ve nearly finished a new members quest which should go online at the same time.

We are going to order yet another server to run another two worlds. This time based in New-york. This will give users a choice of three different hosting companies to connect to. Once this goes online there will be a total 7 free worlds, and 3 members worlds.
');
INSERT INTO "news" VALUES (86,1017036000,'Latest RuneScape News',0,'New members map area showing west of Kandarin. You can see this new area and other recent additions on our updated: World Map.

New fletching skill is online! The long anticipated fletching skill is now available to members. For more information about fletching take a look in the new-section in our online manual.

New members quest! Thormac the sorcerer will improve your battle staffs if you can find his lost lesser kharid scorpions. Starts in the Sorcerer''s tower, southwest of Camelot.

Woodcutting has been changed to a 1-click system. To cut down a tree you now just need to left click on it.
');
INSERT INTO "news" VALUES (87,1017122400,'Latest RuneScape News',0,'We (correctly) anticipated that nearly everyone would want to try the new flethcing<sup>sic</sup> skill at once and that this would cause a rare-tree shortage! Therefore for just one day we decided to make these trees not turn into stumps like normal.

Now everyone has had a chance to try the new skill this has been put back to normal. To compensate the amount of xp you get from woodcutting has been increased.

We''ve also changed fletching slightly because we saw a lot of people weren''t bothering to put the string on their bows. This obviously wasn''t intended! Therefore the proportion of xp you get from stringing the bow has been increased. In actually fact you now get more xp from making a completed bow, but you have to finish it off to get the full amount.
');
INSERT INTO "news" VALUES (88,1018328400,'New members quest online!',0,'The Fitzharmon family crest has gone missing, and the family honour has been lost. Can you find the crest and return it to Dimintheis in Varrock? There are 3 different rewards available, but you can only choose one, so choose carefully!

This is another difficult quest to complete. Next we will be working on some low level quests, to ensure there is a good balance of quests for all levels of player.');
INSERT INTO "news" VALUES (89,1018414800,'Latest RuneScape News',0,'We''ve made a few fixes to RuneScape today. The demon in the family crest quest was too deep into the wilderness, which was causing a major pking problem and wasn''t too popular, so we''ve now moved it the wilderness dungeon at a much lower wilderness.

We''ve fixed a bug with magic spells which people were abusing to rapidly fire multiple bolts and kill other players unfairly.

Now you can drink a potion even if your stats are already boosted. Your stats will still not go higher than the maxmium the potion allows, but this means emptying vials you don''t want is easier, and you don''t have to wait for the potions effects to fully wear off before boosting your stats to max again.
');
INSERT INTO "news" VALUES (90,1018587600,'Latest RuneScape News',0,'Jagex customer support is back online. Sorry for the recent downtime. Membership signups are also now functioning again

I am also pleased to announce that we now have 3 full time members of staff to answer your questions, and a 4th person is joining us on Tuesday! This increased number of staff will enable us to give you more rapid support, and will also mean we are better able to find and punish the players who are breaking our rules.
');
INSERT INTO "news" VALUES (91,1019451600,'Latest RuneScape News',0,'New-York worlds are online. We''re pleased to say that we''ve just brought more new worlds online at a third hosting facility. This means you now have even more choice about where to play which should reduce crowding and lag even further.

We are aware that some people are worried about how these extra servers will affect spawn rates. Don''t worry we are going to change the algorithms used to calculate spawn rates, to compensate for this.
');
INSERT INTO "news" VALUES (92,1020142800,'Latest RuneScape News',0,'New members update online! Many RPGs have a thieving/rogue skill and this is something which until now has been missing from RuneScape.

We''ve now added this popular skill to the members version and it includes abilities such as pick-pocketing, picking locks, disarming traps, and stealing from market stalls. For more information about the new thieiving skill please refer to the online manual.

In addition we have added a quest which uses the new skill. Can you help the rightful owner steal back the lost tribal totem? The quest starts in Brimhaven, and after that is set entirely in the brand new city of Ardougne. You will need a thieving level of at least 21 to complete this quest, so practice your thieving before you start.
');
INSERT INTO "news" VALUES (93,1021006800,'Latest RuneScape News',0,'Both members and free-edition runescape have been updated with new content.

First up the members wilderness has been expanded to include: a new level-56 wilderness area, scorpion ravine, pirate hall, rogues to pickpocket, doors to lockpick, high level wilderness dungeon, shadow-spider monster, fire-giant monster.

Members also can now trade wood certificates for those valuable logs, and purchase/steal spice from the spice stall which when added to stew before cooking can be used to make curry (heals 19hp)

With all these new wilderness areas for members we''ve decided to make some of the older wilderness areas available to free-edition users. Explore the bandit camp, dark warrior castle, and overgrown village. Free users also now have access to the crafting guild

Both members and free versions have been updated with a new ''make-over mage'' character, who can change your character appearance... for a price!
');
INSERT INTO "news" VALUES (94,1022562000,'Latest RuneScape News',0,'Two new members quests are now online.

In the first quest you must help the dwarves win a fishing competition. To start the quest look for the passage way at east kandarin.

In the second quest you must carry out a number of tasks for the monks south of Ardougne.
');
INSERT INTO "news" VALUES (95,1022648400,'Massive crackdown on cheating players.',0,'As part of our promised commitment to stamping down and stopping cheats in RuneScape we have developed a new system to automatically detect people using macro/bot software to gain stats unfairly.

It clearly says in our rules that using software to automatically play the game for you and raise your stats for you is cheating! This will not be tolerated. It is just not fair on the players who play the game honestly and get their levels fairly.

Our new system is extremely efficient and accurate, and in the last 24 hours we have already identified nearly 2000 players who have been cheating in this way. We also believe that we will be able to identify all future offenders and will continue modifing and improving our detection software to do so. From this point on if you use a macro or use a modified version of the RuneScape client, it is almost 100% certain that you WILL be banned or erased.

Since these people gained their stats/items unfairly we have unfortunately had no choice but to completely wipe the stats and inventory of the aprox 2000 people who we have caught using macro/bot software. It seems obvious that these players should not be allowed to keep what they did not gain honestly in the first place.

If you are one of the people who we stat-wiped then whining and making excuses to us won''t help. Our new system is designed to have a 0% rate of false positives, and we KNOW you were cheating. The stat-wipe is irreversible, so if you want to get your stats back then the only way to do it is to start playing the game fairly, and EARN your way to greatness like everyone else has to.

Click here For a complete list of all the people who have already been stat-wiped. We expect to catch more people at it over the next few days. I hope this proves we are deadly serious about stopping this cheating in runescape.
');
INSERT INTO "news" VALUES (96,1023771600,'Update on RuneScape development progress',0,'A lot of the originally planned aspects of RuneScape are now complete, so you might well be wondering what we are now working on, and how we intend to keep improving the game, other than just adding more quests.

The really good news is that we have lots more planned, and due to the success of RuneScape members we have been able to put together a larger development/support team, (we now have 11 full-time staff), which means we are finally able to do some of the really big RuneScape updates that we''ve also wanted to do, but previously weren''t possible when just Paul and myself were working on the game.

Over the past 3 months I''ve been doing a lot of absolutely essential work behind the scenes, and laying the groundwork we will need over the coming year, so it''s not necessarily been apparent where all the effort is going. I''ve been working on things such as:

*   Reprogramming the system to allow us to setup interlinked RuneScape worlds at different locations. This allowed us to setup the uk and new-york servers, and is essential to allow RuneScape to keep expanding.

*   Interviewing and employing new staff. In the short term this takes up a surprisingly large amount of my time, and actually slowed development whilst things were sorted out. However obviously in the long term this will allow us to do so much more.

*   Designing the billing and support software that we need to efficiently keep track of who our members are, what payments are due, customer queries, ideas, spot problems quickly, etc..

*   A much faster 3d engine, which will be used for one of the massive updates we have planned, (see below).

Things like this sure take a lot of time, and that''s in addition to the usual bug-fixes, updates, and new features we''ve been adding at the same time. The good news is that most of this ''behind the scenes groundwork'' is now complete, and now I''m looking forwards to working on the exciting bits that build on this.

Next we will be working on:

*   Finishing the new new database driven customer support system. I estimate this will enable our support staff to deal with queries at least 2 or 3 times as fast at the moment, and should really improve the quality of our service. It will also allow us to really effectively stamp down on trouble-makers and cheats.

*   Vastly vastly improved graphics. We''ve had two 3d-modellers working on redrawing all the 2d sprites as glorious 3d models for some time now. These really do make the game look a lot better. To work properly this also needs a faster 3d-engine (which is luckily nearly complete). I still need to do quite a lot of work to integrate the new 3d-engine into the game. I hope to get some preview screenshots of some of the new models on the site soon.

*   Interactive music, which changes depending on what you are doing and where you are. To stop the music getting annoying and repetative too quickly our musician is going to have to write an awful lot of it! Wish him luck :-)

*   Player owned houses. This is a very complicated feature to add because we don''t just want the houses to be empty buildings which do nothing. We are trying to implement all the best ideas we''ve had from players regarding these, so they aren''t just a big disappointment. Making them interesting involves making the maps a lot more interactive than they currently are which is a lot of work, but worth the effort.

*   The new interactive map system I am developing for the player owned houses is also going to be used for an all new ''scenario'' system. This is going to be a really fun feature wherby the game can randomly generate entirely new areas of map on-the-fly. These areas will be tailored to match the abilities of the players entering. This will allow players to form small adventuring teams, and then get away from the crowded training areas and go on their own private adventure. As a result will allow us to add a lot of clever content in these areas which isn''t possible at the moment.

*   The usual new quests, new maps and new monsters, etc... Both Paul and Thomas will be working on this, and I believe they have another two quests nearly ready to go online.

There''s even more planned after this, but these aren''t small updates, :-) and so will certainly keep me busy for the next few months.

Andrew
');
INSERT INTO "news" VALUES (97,1023858000,'Latest RuneScape News',0,'As promised here is a preview of some of the new 3d models which will be used when we update the RuneScape graphics. This is just a small sample of the total set of models we have, and as you can see as well as converting all the old graphics we are also introducing lots of new monsters at the same time.
<a class="rsc-image rsc-image-thumb" href="/images/12 June beta image1.gif"><img src="/images/12 June beta image1.gif"></a>

We''ve developed some very good 3d model compression technology, which means that even with all the extra monsters RuneScape should load \* faster\* than it does at the moment once we do the update.
<a class="rsc-image rsc-image-thumb" href="/images/12 June beta image2.gif"><img src="/images/12 June beta image2.gif"></a>

There''s still a lot of work to be done to get an update of this size online, so it''s probably at least two months away, but we''ll keep you informed on how it is progressing.
');
INSERT INTO "news" VALUES (98,1024030800,'Beta testing server',5,'I''ve modified RuneScape to use a database back-end for all the logs, save-games, etc... This is part of the new customer support system we are working on, and makes it a lot easier for us to sort out problems.
Obviously to make this change I''ve had to alter a LOT of code. So I''m running a test server based on the new core before switching the live-version of RuneScape across.

If you want to us test this new beta version of RuneScape please visit:

http://www.runescape.com/betaclient.html

Please note that the main RuneScape saves games are NOT available on this server, so you will need to create a new account to play on it. Also this server will be taken offline after a few days and everything done on it will be permenantly lost. Using this test server does not affect your real character in any way. It''s purely for testing, and also a rare chance to play in a brand new world where everyone is equal.
');
INSERT INTO "news" VALUES (99,1024290000,'Latest RuneScape News',0,'We''ve updated RuneScape and added another two members quests.
In the first quest a mysterious stranger called Lucien asks you to retrieve an artifact known as the Staff of Armadyl. Speak to him in the ''flying horse'' in Ardougne.

In the second quest you must restore the clock tower south of Ardougne to working order by finding and assembling the missing parts. Talk to Brother Kojo in the clock tower.

We''ve also added a fishing guild west of Hemenster which requires fishing level 68 or higher to enter.

World map updated - The map has been extended to the left to show the city of Ardougne and other new members areas we have added recently.
');
INSERT INTO "news" VALUES (100,1025672400,'Improved Customer Support Service',4,'We upgraded the runescape system to use a new database backend today, this will enable us to offer a much improved customer support service, and to continue making further runescape improvements in the future.

The game is now back online, our billing and customer support servers are still offline, but should be available again tommorow<sup>sic</sup> if all goes well. Thank-you for your patience whilst we perform this essential upgrade.
');
INSERT INTO "news" VALUES (101,1025845200,'Billing System Back Online',0,'Our billing system is now back-online, so memberships signups are available again. More options to pay for people without a credit-card will be available very soon.

The customer support system should also be back online shortly.
');
INSERT INTO "news" VALUES (102,1026277200,'Bug squashing',3,'Today Runescape update fixes a large number of outstanding bugs in the game.

The following issues have been fixed:

*   Bug where you could teleport from the high level wilderness dungeon is fixed
*   Bug where iron arrows were usable on the free servers is fixed
*   Bug where you could get a skull for retaliating to a ranged attack is fixed
*   Bug where shadow spiders prevented potions from running out is fixed
*   Bug where arrows did not stack correctly, if multiple players shot the same target is fixed
*   Bug where recovery questions were occasionally reported as ''not set'' is fixed
*   Bug where attacking another player immediately after a retreat caused a glitch is fixed
*   Bug where player occasionally ran in random direction after ranged kill is fixed
');
INSERT INTO "news" VALUES (103,1026450000,'New ways to become a member!',1,'More ways of becoming a RuneScape member are now available! In addition to the usual credit/debit-card we''ve teamed up with paybycash.com to offer the following additional payment options:

Virtual Check Check-by-FAX direct debit (ACH) Western Union PayPal Citibank''s "C2it" service Cash Wire transfer Money order! Click here to sign up for RuneScape members now!
');
INSERT INTO "news" VALUES (104,1026968400,'No rest for the wicked...',3,'I went away for a short holiday on saturday, and it seems RuneScape promptly broke in my absence. It seems I can''t even take 1 week a year away from running this game! I''d like to apologise for the people who have experienced connections problems over the last few days.

I''ve decided to abort the remainder of my holiday and have come back to the office to fix RuneScape instead. I''m currently transfering the database to a new server which is 6 times faster than the old one which should hopefully get things running smoothly again. Once again sorry things weren''t working 100%.

Now I''m back at work I should be able to get it working smoothly fairly quickly.

Andrew
');
INSERT INTO "news" VALUES (105,1027054800,'Faster server',3,'The RuneScape database is now running from a faster server so everything should be a lot more reliable now. I have also adjusted the network settings of the New-York servers, so hopefully they are a lot less laggy now. If you live in the US then you should try them out again.
');
INSERT INTO "news" VALUES (106,1027141200,'Latest RuneScape News',0,'Our new improved customer support system is finally online. I''ve completely rewritten the system to be easier and quicker to use. (and a lot more reliable!) If you''ve been having trouble submitting support queries recently the new system should work properly for you.
');
INSERT INTO "news" VALUES (107,1027400400,'Members'' quests',0,'We''ve updated RuneScape with 3 new members quests!

King Arthur is sending out his knights on a quest for the famous holy grail. If you are a knight of the round table go to king arthur for further orders.

Find the secret gnome village, and help them retrieve the orbs of protection which constantly protect their village from the dangers outside.

Help Lady Servil save her family from general Kazar who has enslaved them in his fight-arena. Quest starts south-east of Ardougne beyond the monastry.

We''ve also added a variety of other features including lots of new areas for the above quests, and a coal-truck track to rapidly transport coal.
');
INSERT INTO "news" VALUES (108,1027659600,'Hiscore tables',1,'The hiscore tables are back online, and we''ve increased them to show the top 100,000 players!!

We''ve also added a search facility so you can quickly find your name and see where you rank.
');
INSERT INTO "news" VALUES (109,1029387600,'Sheep and cults',0,'We''ve just got another 2 members'' quests online.

The 1st quest is the Hazeel Cult quest. Thieves have stolen the Carnillean family armour, and you are asked to recover it. This quest is a bit different because there are two very different ways of completing it! Will you side with the Hazeel Cult or with Ceril Carnillean?

The 2nd quest is the sheep herder quest in which you must safely herd four plagued sheep away from the city of Ardougne before the citizens become infected! Speak to Councillor Halgrive to start this quest.
');
INSERT INTO "news" VALUES (110,1030338000,'Fake previews',2,'A few people have been tricked by fake previews of our upcoming updates.

Any previews we put online will always be on this website only, and will not require your RuneScape password to view. NEVER enter your password anywhere but RuneScape.com or it will be stolen!
');
INSERT INTO "news" VALUES (111,1030338000,'In the pipeline...',5,'Lots of people said it would be really great if RuneScape had more of an overall story-line and if there was some sort of ongoing plot. Therefore we''re pleased to say that we''ve designed a massive twisting plot which we''re going to release over multiple episodes.

Whilst the rest of the dev-team have been focusing on that, myself and Tony have been working very hard on the promised new 3d-graphics system. This is a mammoth task since we are replacing a vast chunk of the graphics and code. The new engine is coming together extremely well, although there''s still a lot of work to do.

We''re now nearly ready to show a preview demo of our new landscape engine, our new character animation system, and our new improved user interface.

However since that update is still quite a long way off, the rest of the dev-team is going to work on a new ''agility'' skill next. This will give the members something else new to enjoy meanwhile whilst we finish off our big graphics update.
');
INSERT INTO "news" VALUES (112,1030424400,'Multi-part quest',0,'Epsiode<sup>sic</sup> 1 of our new multipart quest is now online.

Edmond''s daugher<sup>sic</sup> Elena has gone missing in West Ardougne whilst trying to help the plague victims there. See if you can find out what''s going on. The story started in this quest will be continued in future updates.

We have also added a new Ardougne teleport spell for high level magicians, and a new bank in East Ardougne.
');
INSERT INTO "news" VALUES (113,1031115600,'Vote Golden Joystick Awards',0,'Please vote for us in the golden joystick awards 2002.

If you live in the uk then we''d really appreciate you voting for RuneScape as online game of the year. Just [click here](http://http://www.computerandvideogames.com/front_joysticks/votes.php) and type RuneScape in the ''online game of the year'' box. It will only take a few minutes and doesn''t cost anything :-)

Thanks! Andrew
');
INSERT INTO "news" VALUES (114,1031547600,'Sea Slug Quest',0,'New members quest online - The sea slug quest

Something mysterious is happening on the new offshore fishing platform. People who''ve gone on their regular fishing trip just haven''t returned! Can you rescue the missing father and son from the unknown horrors out at sea?

We''ve also added the ablitity to catch oysters whilst fishing with a bignet. The pearls from these can be used to make powerful crossbow bolt tips. Plus we''ve added two new certificate traders in Zanaris.
');
INSERT INTO "news" VALUES (115,1031720400,'New abuse reporting system!',2,'We''ve added a new ''abuse report'' button to the RuneScape game which sends an untamperable snapshot of recent chat/trade events directly to customer support.

This means there is now a VERY easy way for us to catch all the people misusing our game and ban them once and for all! If you continue to be abusive or break the rules now the new ''report abuse'' system is online then you WILL be caught almost immediately!

Please do NOT misuse the ''report abuse'' feature. This is feature will allow us to catch and remove the trouble makers from our game. Help us clean up RuneScape by only using this report for serious cases.
');
INSERT INTO "news" VALUES (116,1032411600,'Graphics Previews',5,'We''re still working on the big graphical update. It''s still a way off, so here are some previews to show you how things are progressing.
<a class="rsc-image rsc-image-thumb" href="/images/Necromanceranim.gif"><img src="/images/Necromanceranim.gif" align="left"></a><a class="rsc-image rsc-image-thumb" href="/images/Giantspideranim.gif"><img src="/images/Giantspideranim.gif" align="left"></a><a class="rsc-image rsc-image-thumb" href="/images/Reddragonanim.gif"><img src="/images/Reddragonanim.gif" align="left"></a>');
INSERT INTO "news" VALUES (117,1032411600,'Latest RuneScape News',0,'We''re still working on the big graphical update. It sure is a lot of work! It''s still a way off, so meanwhile we''re going to show occasional previews of how things are progressing.

As well as improving all the graphics, we''re also reworking all the animation to use a lot more frames so everything moves more smoothly. Here is a preview of how some of the monsters/people look using our new animation system.
Remember: Don''t be fooled by fake websites, offering to let you test the new version. It''s not ready yet, and we are not running any tests of this sort. NEVER enter your password ANYWHERE except runescape.com, or you will lose your account!

<a class="rsc-image" href="/images/Human mini anim.gif"><img src="/images/Human mini anim.gif"></a>
<a class="rsc-image" href="/images/Giantspider mini anim.gif"><img src="/images/Giantspider mini anim.gif"></a>
<a class="rsc-image" href="/images/Dragon mini anim.gif"><img src="/images/Dragon mini anim.gif"></a>
');
INSERT INTO "news" VALUES (118,1032843600,'Tutorial island',0,'Tutorial Island

First-time players will now start their adventures on tutorial island, where the good people of RuneScape are busy preparing people for the challenges that await them.

Waterfall Quest (Members'' quest)

Walk along the river that flows through Kandarin, where the locals speak of hidden treasure, and the legend of the Elven King.

King Black Dragon (Members'' monster)

The most fearsome monster ever to venture into RuneScape has now... err... ventured into RuneScape.

So for all you plucky young upstarts, take a break from emailing customer support and pit your wits against the deadliest beast to date! More prudent types might just want to gaze at him from afar. Of course you''ll have to find him first.
');
INSERT INTO "news" VALUES (119,1032930000,'Map update',1,'We''ve updated the RuneScape world-map to show all the latests areas and additions to the map. Newly mapped areas include West Ardougne, and the Gnome Tree Village. The map is pretty huge now so use the scrollbars to scroll around and view the entire area.
');
INSERT INTO "news" VALUES (120,1033362000,'Latest RuneScape News',1,'Attention all adventurers!

In response to the constant thirst for knowledge of our players Jagex is proud to announce the birth of the Runescape newsletter - delivered straight to your email account! Forged in the mines at an undisclosed location, this priceless document will give you all the latest development news and info straight from the Jagex team.
');
INSERT INTO "news" VALUES (121,1033362000,'Runescape Newsletter!',1,'Attention all adventurers!

In response to the constant thirst for knowledge of our players Jagex is proud to announce the birth of the Runescape newsletter - delivered straight to your email account! Forged in the mines at an undisclosed location, this priceless document will give you all the latest development news and info straight from the Jagex team.
');
INSERT INTO "news" VALUES (122,1034139600,'3-D Update',5,'Just wanted to let you know some exclusive behind-the-scenes news from Jagex!

The Runescape team is still busy working on the 3D update - a fairly massive undertaking as you might imagine! The 3D characters are now pretty much complete, with Andrew now turning his attention to the landscape design. The use of polygons allows for far more attention to detail, as well as giving a more enhanced sense of proportion.

As for buildings, the paper thin walls of old will be making way for structures that are satisfyingly chunky, and the windows are now extruded from the walls, rather than being flat texture maps.

Perhaps best of all will be the use of a moving vertical camera. Take an aerial view and get the drop on your enemies, before swooping in to see them face to face.

We don''t yet have a final release date for all this, but at this stage you could say that things are looking pretty tasty. As usual please remember any previews of the our work will ONLY be on runescape.com NEVER enter your password anywhere except runescape.com. We will of course keep you posted on all this.
');
INSERT INTO "news" VALUES (123,1034917200,'A preview is sneaked',5,'Hi there - last week I told you about the current state of play with the 3D graphics update. For some the excitement was just too much to bear, so Andrew decided to do the decent thing and release some screen shots...
<a class="rsc-image rsc-image-thumb" href="/images/RS2 beta cam1.jpg"><img src="/images/RS2 beta cam1.jpg"></a>

Here you can see how the new version allows you to the adjust the camera angle, the images show the same scene at different angles.
<a class="rsc-image rsc-image-thumb" href="/images/RS2 beta cam2.jpg"><img src="/images/RS2 beta cam2.jpg"></a>

So what else is has been going in our dark, dank lair? Well, Tom and I have been working on the next part of Runescape''s large on-going quest. Those of you who have already rescued Elena will no doubt be frothing at the mouth for some more plague-based action. Well froth no more, because part two will be coming out next week! And be warned, it''s pretty big...

And as if one set of live bacteria wasn''t enough, you can also work up a sweat with a new jungle based adventure. As the debut quest from Tytn, the choice of location is all the more surprising, as "Tee" is normally known as being an obsessive hygiene fanatic. Still, someone has to clean the kitchen I suppose.
');
INSERT INTO "news" VALUES (124,1035349200,'Updates galore!',0,'Biohazard (Members'' Quest): This is the second part of our large ongoing quest. Elena has been rescued, but now she needs your help to find a cure for a plague that could kill hundreds!

Jungle Potion (Members'' Quest) Trufitus Shakaya requires that you collect five special jungle herbs for a potion so that he can commune with his gods.

New members town - Yanille: Explore this border town in the far south of Kandarin. Experienced Wizards will want to make use of the Wizards'' Guild (magic level 66 to enter). Yanille also contains, a bank, a cookery shop, an inn and various other features.

New members spells - Enfeeble, stun, vulnerability: These are cast using the new "soul rune", bought from the wizards'' guild.

New features: Dragon bones - Dragon bones can now be buried for a bigger prayer xp bonus than big bones.

Improved monster A.I. Monsters who are far weaker than you no longer auto attack. This also helps stop cheats who use programs to unfairly keep their character logged in at a respawn point, and gain combat xp unfairly.
');
INSERT INTO "news" VALUES (125,1035522000,'Gowerian Agility',5,'Hi there,

So what a week it has been. Two new quests, dragon bones, improved monster AI and a magic guild to boot! By now I am sure many of you will be busy trying to find a cure for the plague, or mixing potions with special properties. Just make sure you save some time for Runescape.

I know that many of you in the forums will be pleased about the new monster update. Those "players" who rely on macros and other such cheats might not be so chuffed.

So what''s been happening in the Jagex offices? Well, Paul has been working on his skills, and particularly agility. He''s up to about a 200 sit-ups a day, and he''s talking about throwing in some squat thrusts too. He isn''t what you''d call match fit yet, but with Tom, Tytn and myself taking care of the quest side of things, you can be sure that such things are not being neglected...
');
INSERT INTO "news" VALUES (126,1036130400,'The Mod-Noob',5,'Hi there,

So what''s been going on behind the scenes at the Jagex offices? Well, after last week''s big quest update, I thought I''d go on line to see how everyone was getting on with the Biohazard Quest.

Being the honest chap that I am, I decided to use my real in-game character, and not one of those souped up mod things.

Now, perhaps it was a little foolhardy of me to venture onto the member''s server with a combat level of 3. But nothing could have prepared me for the reception that I would receive. I almost drowned in a sea of "lols" and "noobs". And no-one seemed to believe that I was in fact the "Paul Eyres" that I claimed to be!

Oh well - guess I''ll just have to get killing some chickens...
');
INSERT INTO "news" VALUES (127,1036562400,'Bug in Varrock',3,'There is a small bug in varrock, so please be careful. It is possible to get stuck behind a fence in the south-east corner near the ''dancing donkey'' inn. Please do NOT go there or you may become trapped.

If you are already trapped then it is possible to escape by clicking ''attack'' on an npc on the opposite side of the fence, or by clicking ''follow'' on a player on the opposite side of the fence. If you still can''t get out then wait until monday when the builders are coming in to remove that fence.
');
INSERT INTO "news" VALUES (128,1036994400,'Upgraded Philadelphia Servers',3,'This morning we upgraded our philadelphia servers. We''ve made the following improvements:

All philadelphia servers moved to a new power circuit Our main database server has twice as much memory (it now has 2gig) We''ve replaced our webserver with a new one which is four times more powerful
');
INSERT INTO "news" VALUES (129,1037167200,'Latest RuneScape News',0,'Mining improved! We have changed mining and fishing so that they no longer consist of hours of tedious repetative clicking. The rocks are now easier to mine so you don''t have to click anything like as much, and prospecting always works.

Instead of the repetative clicking we have introduced a new ''fatigue'' system which means as you do tasks such as mining your character slowly becomes tired. After a certain point (which depends on your level, and on the rock), you will become too tired to mine. When this happens simply rest at a bed or eat some food, and you''ll feel much more lively again. The upshot of this is that the honest miners should be able to get their ore slightly quicker, whilst the cheats will just have to go somewhere else.

Also due to popular request we have modified the wilderness monsters so they are always aggressive regardless of your level. It was pointed out by many players that the wilderness is supposed to be dangerous place, so the new monster attacking rule has been removed in this zone.
');
INSERT INTO "news" VALUES (130,1037253600,'Fatigue - version 2',0,'## **RuneScape Wiki:** Due to wiki limitations, this article has an improper name. It should be "Update:Fatigue - version \* 2"

We''ve worked extremely hard today to update the mining/fishing system with respect to your comments and feedback. The old system was considered rather too much of a change by many, so we''ve made a new one is more like the original mining. Here is how the new system works.

*   You can now actually see ore in the rock on the screen, so you can see when it spawns
*   Ore now appears in the rocks TWICE as fast as it did pre-fatigue
*   When ore is available you will always manage to get it now, you very very rarely miss
*   To compensate for the faster spawns you get slightly tired as you mine
*   The higher level you have, the more you can mine before you become tired

We''ve put a LOT of effort into balancing this system, I even wrote a little test program to compare the overall times of mining and fishing before and after, (this takes into account the extra time taken to go and get some rest), the time it takes to get ore / level should new be pretty much EXACTLY the same it was before, but mining is now much more varied and fun. We''ve also moved an awful lots of bed, and a few rocks/fish to make certain all the sites always have a bed within a carefully calculated distance,

Please give the system a good chance before sending any feedback. We''ve really put a lot of effort into making sure the version\* 2 system doesn''t disadvantage anyone (except cheats!)

We might need to make a few more tweaks yet, but hopefully we''re getting close to a really good system now.

Thanks Andrew
');
INSERT INTO "news" VALUES (131,1037340000,'A well deserved rest',5,'Hi there,

To those of you who were wondering what happened to last week''s newsletter, the answer is, it didn''t! But some things in life are worth waiting for.

This looks like it could be one of those weeks, with the introduction of our much-vaunted fatigue update. Andrew has effected something of a double wammy, by taking the tedium of mining and thwarting the mining scammers in one fell swoop. Never has the onset of tiredness aroused such excitement.

And it''s a case of "don''t cheat, sleep", as Runescape players are finding that those big flat things in their bedroom are not simply there for ornamental value after all.

A few confused players seem to think the new fatigue system actually makes mining take longer, but this is not the case. After testing every single mining site at every single level, we can conclusivly<sup>sic</sup> say that it takes no longer to get ore, or level-up than before. But it''s a heck of a lot less tedious and repetitive.

Finally you weary warriors can catch some Z''s! Even if you do have to do it standing up. Still, horses seem to manage OK. Oh dear, horses. Probably shouldn''t have said that word...
');
INSERT INTO "news" VALUES (132,1037340000,'Small tweaks to mining',0,'Today we''ve made the following small changes to mining:

*   You can now mine twice as much silver before getting tired. This is because it was pointed out that it shouldn''t really be harder to get silver than gold. This actually now means silver is easier to get than it has ever been in the past

*   We''ve made it 2-3 times easier to get gems under the new mining system, since that wasn''t quite balanced correctly

*   We''ve added a new mine in the swamp south of Lumbridge with 4 mithril rocks, and 1 adamantite rock, this is to replace the rocks removed from elsewhere. The rocks were moved to make sure everything is the correct distance from a bed for the new system to work properly.

*   We made bread, pies, and pizza restore TWICE as much fatigue as they did before, which should make these foods much more worthwhile. We predict enterprising pizza sellers will turn up at the mining sites shortly :-)

A few confused players seem to think the new fatigue system actually makes mining take longer, but this is not the case. After testing every single mining site at every single level, we can conclusively say that it takes no longer to get ore, or level-up than before. But it''s a heck of a lot less tedious and repetitive.

Remember we''ve added lots of new beds so you might not have to walk as far as you think, we''re hoping to add all bed locations to our worldmap soon to help you find them.
');
INSERT INTO "news" VALUES (133,1038204000,'Fatigue reduced',0,'Due to popular demand, it is now possible to mine and fish for longer without getting tired!

There are now two sort of rocks that you can mine:

**Soft rocks** - These rocks spawn quite slowly, but they are easy to mine so you get very little fatigue from them. Mining these rocks is much like mining was originally before we changed it. You can easily get a full load of ore before you become too tired to mine.

**Hard rocks** - These use our new mining system for less repeat clicking. You can get the ore out of the rocks very quickly, and you can see it spawn so you aren''t clicking blindly. However you will need to rest quite often when mining these rocks. For people who don''t like clicking the same spot on the screen over and over you may find this way more fun.

We''ve also adjusted the fishing system. We considered introducing deep and shallow fish, but it doesn''t work too well so instead we''ve just made the fish give a lot less fatigue than before, and spawn close to the original rate. This was what most players indicated they wanted.
');
INSERT INTO "news" VALUES (134,1038463200,'Important note about RuneScape Windows client',0,'We''ve recently had a few queries from RuneScape users who say the RuneScape Windows client is crashing. (Even though it worked fine previously). We haven''t changed our windows client recently, and from what we''ve been told it seems it''s actually a recent windows update which is causing this problem.

We believe this problem has now been fixed in another windows update. Therefore if you are having problems with the RuneScape client failing we recommend you visit [windowsupdate.com](http://http://windowsupdate.com) to get the latest patches. This should fix it.
');
INSERT INTO "news" VALUES (135,1038808800,'The Word On The Street',1,'Hi there,

Here at Jagex we''ve received a lot of feedback about the new mining system. The general consensus is that it''s now less tedious, and more strategic. And everyone is pleased that you can finally use beds.

As for the Jagex team, we''ve been busy preparing for the launch of a new look website. Tony, our resident graphics man has been beavering away with his virtual pencils, to come up with a design that knocks the socks off the current set-up (not so hard, some might say...) The new website is far more user-friendly and easy to navigate. Runescape.com will be a separate site from the Jagex page, so you''ll be able to get straight to the action. And the whole thing looks pretty tasty to boot.
');
INSERT INTO "news" VALUES (136,1039586400,'New website online!',1,'**New website online!**
After many weeks of hard work our new website is finally online - think of it as an early Christmas Present! We hope that you will find the site easier to use and to find your way around.

Although we have tested the site as best we can, if you do find any problems, please let us know through the ''Feedback'' section in our ''Customer Support'' area accessible via the main page.

Cheers,

\*\*The Jagex Team \*\*
');
INSERT INTO "news" VALUES (137,1039672800,'Agility skill online',0,'We''ve just added another massive members update. The long awaited [agility skill](http://http://runescape.com/lang/en/aff/runescape/viewcategory.ws?cat_id=788) is finally available. You can practice on two different training courses, or try the agility dungeon.

We''ve also added a new quest which uses the agility skill - called the "Grand tree quest". This is set in an enormous new area called the Gnome stronghold which also includes loads more besides the quest. Even more agility quests will of course be added in future updates.
');
INSERT INTO "news" VALUES (138,1039672800,'Cheating scum banned',2,'If you cheat at RuneScape you will be banned. We have very advanced detection routines, and we can tell if you use programs to control your character for you. We''ve just banned over 400 players for cheating in this way. Many of whom were high level members.

We''d like to remind our players that using macros to play for you is NOT allowed and we WILL permanantly<sup>sic</sup> ban you for it, no exceptions!
');
INSERT INTO "news" VALUES (139,1040623200,'San-Francisco servers online',3,'The RuneScape worlds were getting rather full again so we''ve put some more online. As previously promised the servers are on the west coast of the US this time. We''ve added 3 free servers, and 1 new members server.
');
INSERT INTO "news" VALUES (140,1040796000,'Merry Christmas',0,'Merry christmas from the Jagex team. We''re dropping some santa hats today at random intervals in random places. They''re just a bit of fun though, so please don''t be too upset if you can''t find one. If you manage to get more than one then please consider giving them to your friends as christmas presents. Of course you can sell them but that''s not really the spirit of christmas :-)
');
INSERT INTO "news" VALUES (141,1042264800,'New website',5,'Hi there,

So by now I imagine you''re all enjoying the new website. Less clutter, more space and generally a more Runescapey feel. I''m sure there will be some who don''t approve, but Runescape will always have its diehards, ready with an anecdote about the days when you could pk everywhere, and the economy held its value. Just remember that they will have fought in more wars than you, so they''re entitled to be a bit upset that inflation has wiped out their pension.

But with Tom''s Grand Tree Quest last week, and Tytn''s Zombie Queen Quest coming soon, I''m sure that even the most po-faced players will be smiling right now. So this might be a good time to point out that the newsletter is now every two weeks, as the more observant amongst you will have already noticed.
');
INSERT INTO "news" VALUES (142,1043128800,'Credit card fraud warning',2,'Don''t accept membership from other players - doing so is dangerous!

We would like to remind everyone that you must NOT allow another player to pay for your runescape account membership.

If someone offers you either a low level members account or offers to upgrade your own account to a members account (usually in return for runescape items), the chances are that the way they are paying will be fraudulent. When we discover this, we will cancel the payment, and then ban your account permanently. So please do not fall for this trick.

The general rule is, if its too good to be true, it normally is!

Fraudulent payments will be unearthed and result in automatic and permanent bans for all concerned. All transactions are logged. We can track and prosecute anybody attempting to make fraudulent payments. It is not allowed to pay for the membership of someone outside your family.
');
INSERT INTO "news" VALUES (143,1043128800,'New News Section',1,'As you will no doubt have noticed, the Runescape news section has had a makeover. This is part of our effort to communicate to you more often, and we will be regularly posting news in the appropriate sections that you can see above.

Clicking any of the category names will show only news of that type, most recent first. Clicking ''All Categories'' will show you all news items.

We hope that you will find the new news section easy to use, and more importantly, up to date with current Runescape affairs.
');
INSERT INTO "news" VALUES (144,1043301600,'Wedding bells at Jagex!',0,'Simon Brace, Jagex''s most eligible batchelor is no longer eligible. That''s right, someone''s actually agreed to marry him! Runescape players will know our husband to be as "modsimon". The scourge of hackers everywhere, Simon frequently appears on-line, valiantly fighting customer support related crime.

A certain girl by the name of Becky is the lucky lady in question, and Simon assures us that her decision was not made under duress. As the man himself says:

"There''s this little lake in Birmingham that we walked down by after I took her for a meal. I got down on one knee, whipped my ring out and proposed to her under the stars with swans watching us on the lake. The diamond sparkled in the moonlight but it could never compare to the sparkle of her eyes, the way they light up whenever we''re together :-)"

With his fiance preparing to become Mrs Becky Brace, Simon has set a date for 14th February, 2005, in what promises to be the mother of all updates in this young man''s life. On behalf of Jagex and Runescape may I take this opportunity to wish you both the very best of luck!

(Now we''d like to say that they fell in love over Runescape, but that could never really happen... could it?)
');
INSERT INTO "news" VALUES (145,1043388000,'New Quest Coming!',5,'Attention all quest-hungry adventurers!

Some of you may have noticed the lack of updates in the last few weeks... to the untrained eye it could appear that the Jagex team is spending all its time updating the website.

But worry not! We are pleased to announce that there will be a big new update next week, and an exciting new quest from the one they call Tytn. Those of you who enjoyed his Jungle Potion debut should get ready- ''cos this time, things get pretty dark...
');
INSERT INTO "news" VALUES (146,1043388000,'Newsletters',1,'To make use of our exciting new website, we will be posting the Runescape Newsletter online from now on, and it will NOT be emailed out to players any more.

This will also get round the problem of fake newsletters sent out by those nasty scamming types, as well as making Saradomin''s words of wisdom available to a much wider audience.

Speaking of his holiness, the big man has been rather quiet in the last few weeks- I hope he''s OK...
');
INSERT INTO "news" VALUES (147,1043647200,'Shilo Village Quest online',0,'Rumours of a distant village in the southern part of Karamja Island have been filtering through. It appears that the mysterious Jungle island still holds a lot of potential adventure. It is said that strange items are to be found, unique to this part of the world, ready and waiting for adventurers brave enough to search for them. Of course, there is hearsay that these treasures are protected by supernatural guardians, but it''s highly unlikely, surely? Also the jungle has it''s own dangers, what with well camouflaged spiders and the deadly Jungle Ogre. Who knows what terror lies further south?

When considering all this, it might be best to just stay at home? Perhaps the danger is too much and the rewards not enough? Yes, brave adventurer, stay another night in the warm inn, feed your face with another warm meal and worry not about the untold riches south of Karamja - or the terrors that guard them.

(For more information go to Shilo Village Quest Page)
');
INSERT INTO "news" VALUES (148,1043733600,'Dangerous Agility',0,'All budding athletes and gymnasts out there will be pleased to know that there is now an even better way of improving your agility. Just head down to your nearest deep wilderness...

We''ve put in a high level assault course for anyone who is hell-bent about building their agility XP. So pack yourself a napsack and get ready for some serious lava-dodging action.

Of course you do run the risk of dying painfully in a hail storm of arrows, but nobody said that getting perfect abs would be easy. As our head of Customer Support would say: no pain, no gain.
');
INSERT INTO "news" VALUES (149,1043733600,'Gnomeball',0,'Sporty types will be pleased to know that they can now take part in the world-famous game of gnomeball. Down at the gnome stronghold, those cheeky little gnomes have cleared a piece of land about the size of a football pitch, and err, decided to play football on it. Well, almost.

Firstly, when I say football, I am not referring to the game where people try to propel a spherical object with their foot- hence football.

Rather, this game is closer to the American version of the sport, where huge musclebound gladiators enact a fusion of chess, war and ballet whilst hitting each other with heavily reinforced plastic. Hence football.

Take away the chess, ballet and plastic and you''ve got gnomeball, where tackling your opponent basically means wacking them as hard as you can.

And with gnomes being such good-hearted little creatures, they do at least have the decency to point out that they''re about to hit you. Now you''d never get that from Warren Sapp.
');
INSERT INTO "news" VALUES (150,1043733600,'Report Abuse',2,'Please note that that the report abuse button is for serious abuse only. Before you contact customer support, please try to make the distinction between malicious insults and friendly banter.

So please do not report people just for the sake of getting them into trouble- we''re not trying to create a police state here!

Certainly we are keen to crack down on those who are spoiling the game for others, but we also want to strike a balance with the idea of freedom of speech.

The upshot of this is that you should only report someone if you feel genuinely offended or upset by what they are saying.

Sensitive souls should note that the Runescape chat filter is already there to stop people from swearing. I think I speak for everyone at Jagex when I say that I hate such crudeness as much as the next massively multi-player online roleplaying game; but if a word has already been censored, you don''t need to report it.

By the same token, it is a waste of time getting into ''tit for tat'' abuse reports. We try not to get involved in petty squables<sup>sic</sup>, and we have no plans to introduce a Report Abuse abuse button...
');
INSERT INTO "news" VALUES (151,1043820000,'In low HP\, and in health',4,'It had to happen eventually. When 200,000 people interact online, it can only be a matter of time before someone pops the question...

We heard from PugXSi, a veteran of Runescape who is currently 4th overall with 1473 total stats. At 99 in magic and 96 in firemaking, there was still one stat that seemed to be eluding him: romance. Then Runescape "gave me something I didn''t think possible- eternal happiness with a fantastic woman."

The woman in question was Jenstarr, a regular of the Dwarven mines. PugXSi soon noticed that she was a bit handy with a pick. "She worked extremely hard to become a rune miner...I hadn''t seen such devotion to a skill before."

Sensing that they had struck gold, the two miners would chat online for hours. "It didn''t take me long to develop real feelings for her", and an in-game marriage duly followed. Some time later, PugXSi flew from England to the U.S. to meet Jenstarr in person.

A second trip took place at Christmas, but it was more than just santa hats that were up for grabs. On January 3rd PugXSi and Jenstarr got married at a local courthouse. "Runescape is the sole factor in bringing Jen and I together, and for that, Jagex will always have our gratitude." Don''t thank us, PugXSi, thank the magic of the runes.
');
INSERT INTO "news" VALUES (152,1043820000,'Runescape romance turns real',4,'Yet more wedding bells! So Runescape rings DO have special properties.
"I started playing 8 months ago...The last thing I was looking for was another relationship, especially via an internet game. But find one I did, or it found me..."

Lady Pooh met Topcat0711 whilst playing Runescape, and being more charming than the seven hundred odd Topcats that had preceded him, they soon became trading partners. An act of chivalry took the relationship to a whole new level.

"One day he''d won a stake duel... because of the winnings I teasingly said ''hey wanna be my rs bf?'' not meaning it... But after that we joked about it and kept talking, until we fell in love through Runescape and got to know each other better."

Lady Pooh, who hails from Ohio in the USA, is now set to become Mrs.Topcat0711. She even flew over to his native Australia, swapping server-lag for jet-lag to be with her new love.

"I''ve been here in Australia for 6 weeks now and we get along great! We are making long term plans and its all thanks to you! We just wanted you to know that you created more than just a game...it''s a connection to life and happiness." So it''s official then: Cupid does exist. As an NPC in Runescape.
');
INSERT INTO "news" VALUES (153,1043906400,'Bandwidth tripled!',3,'The San Francisco servers have now been upgraded to work through a faster network switch. The upshot of all this is that there is now three times as much bandwidth, and players should experience less lag to these servers.
');
INSERT INTO "news" VALUES (154,1043906400,'Letters 9 Online',1,'We are pleased to announce the release of the ninth ''letters'' page, which you can check out through the main Letters section.

We''re not so pleased about what seems to be going on with the RuneScape gods at the moment though...
');
INSERT INTO "news" VALUES (155,1043992800,'We Just Keep Getting Bigger!',5,'If there was an eerie quietness to Runescape this morning, it''s because Jagex has just moved offices! Up and till this point Andrew had being squeezing more and more personnel into the same cramped room, but even he relented when the place started to look like a Seers'' Village drop party.

So rather than violate any more human rights conventions, we thought we''d better just move office. As of today, Jagex is officially moving up in the world... by about 12 feet in fact, to the place on the first floor.

This means that we now have one office for the development team, and another one dedicated to your customer support needs. In fact, we''re about to take on more customer support staff to make us even more efficient!

Of course you can never please everyone. Having two offices means that Simon won''t be able to annoy Andrew anymore, and Tytn will have now have TWO kitchens to clean.

But Paul E (i.e. me) has got a desk that finally suits his feng shui requirements, and Andrew has a special "I''m the boss round here" annex all to himself! So if you do see him online a lot, it might be because he''s feeling a bit lonely... just offer him a blanket and a warm drink- we''d all be very grateful.
');
INSERT INTO "news" VALUES (156,1044252000,'Apologies',3,'We would like to apologise to anyone whose game time was interrupted last night. Our UK service went down, due to a powercut at Telehouse.

This was, unfortunately, out of our control, but Andrew is now looking into the matter. We hope it did not cause too much inconvenience to our UK players.
');
INSERT INTO "news" VALUES (157,1044252000,'Very Important',2,'With all the talk of romance in Runescape recently, we''d like to remind players about the importance of playing the game safely.You should NOT give out your personal details to other players online- even if they claim to be Jagex staff! This includes your name, address, phone number and email address.

Unfortunately we have to be aware that internet games are played by certain dangerous individuals, who may lie about their age, gender, occupation etc.

For this reason you should stick to using your friends list as a safe way of communicating with other players online. You can block messages if you feel uncomfortable with someone, and you should contact customer support if you have any concerns about another player''s behaviour.

If you do decide to ignore our advice and meet up with someone in person, please make sure that it is in a public place, and that a parent or guardian comes with you. You should also let your friends know where you will be. For more information, please see our online [manual](https://classic.runescape.wiki/w/Manual%3AAccount%20Security). To read more about chatting safely online, please visit www.chatdanger.com

Finally, please remember that even though you may get on well with someone online, you can never be absolutely certain that they are for real. Please bear this in mind at all times.
');
INSERT INTO "news" VALUES (158,1044338400,'Attention all budding scribes!',1,'To all those who have been waiting patiently for the Library of Varrock, it will be opening soon! Regulars to Misthalin''s fair city will have been marvelling at the slow but steady construction of this great new building. And for those who haven''t found it yet, it''s right behind that tree, next to the man who stands there sometimes.

And just as the building is close to completion, we find out- and you''re never going to believe this- that''s right, we''ve still got loads of empty shelf space.

Perhaps you might know of some stories for the library. These could be great tales of myths and monsters; epic fantasies of courage and honour, of 250-400 words in length, and which don''t include the names of actual Runescape players. OK, you can include YOUR name- I know some people like to work on their ego XP stat.

Just send any finds to our good friend Saradomin. Having been Zamoraked off the letters page, he needs something to pick up his spirits. Just don''t try to rewrite too much of Runescape''s complex history (stick to the story itself). Old Sara''s a stickler for accuracy- but then if you created a whole universe, you would be too.

So this should be a day to rejoice for all you bibliophiles. And anyone who just likes books.

Write your letters to Saradomin@jagex.com
');
INSERT INTO "news" VALUES (159,1044511200,'Learning can be fun...',4,'...no really, it can! OK look, bear with me on this. It seems that Runescape really does have a positive educational value for its players. But don''t start cancelling your subscriptions! We heard from Madamemerlin- great name by the way. She found that she is now more skilled in the ancient (and almost forgotten) art of academia.

"I used to do the crossword from the paper everyday. Often when there was a clue I knew the answer due to being on Runescape so much."

OK then, how about this one: nine across, starts with "obses",ends with "ive", and describes the temperament of someone who can''t get enough of something...

No seriously though, we''re pleased that Runescape is helping to stimulate the old grey matter. But we would always encourage players to not be on Runescape so much that they neglect the offline world.

But by the sounds of it, our friend Madamemerlin has got the balance just right: "In class once, I was one of the only ones who knew the main substances in steel, thanks to you I am learning and my mom stops nagging me".

Just doing our job ma''am.
');
INSERT INTO "news" VALUES (160,1044597600,'Parlez-vous Runescape',4,':*Due to wiki limitations, the title of this page is incorrect, and should read "Parlez-vous Runescape?"*

To all those who were surprised with yesterday''s news about the educational benefits of Runescape- you weren''t alone! Everyone at Jagex was also intrigued by this great new justification for playing computer games...

So I am pleased to announce that yesterday was no fluke. It appears that Runescape also operates as a teacher of foreign languages- especially if you''re not actually English in the first place.

"I just wanted to say thanks to all runescapes team. Last winter, I didnt know a word in english. I started to play runescape and I learned to talk the language very fast."

OK, so there''s a bit of punctuation missing, but it''s no worse than most of the stuff that everyone else seems to manage! "Im a girl from quebec and I talk french" continues our linguistic friend.

"Its an easy way to learn languages.Now im in high english class at school :) thx a lot. It would be very cool if there was a german,spanish,etc.. version of runescape."

Indeed it would- just watch this space...
');
INSERT INTO "news" VALUES (161,1044856800,'Dr. Evil I presume...',2,'Please remember not to give your password out to anyone! The head of Customer Support has informed us about a new breed of super-criminal that is terrorising our super-highways. Although Daniel didn''t use those exact words.

We heard from "Dantvman", who was, understandably, still in a state of shock.

"I have just been hacked by a runescape criminal mastermind and I am wondering if I get my stolen items back. The name of the hacker: Rune Banner".

Smelling blood, our support team pounced, eager to finally catch this elusive "criminal mastermind". Here''s what they found:

Rune banner: "Do you choose to give me your password and let me log on."

Dantvman: "What is happening?"

Rune banner: "If you give me your password you will not get banned."

That''s right folks, he''s that good! Blink and you might just miss it. Even the normally hard-as-nails Daniel was said to utter a shrill cry when he read this report. So tie an extra knot in your napsack today, and try and resist the temptation to give away your password to anyone- no matter how ingenious they are...
');
INSERT INTO "news" VALUES (162,1045029600,'New kids on the block',5,'As part of our ongoing commitment to improving customer support, Jagex is pleased to welcome two new recruits to our offices. Mark Ogilvie and Andrew "Stretch" Birmingham are now permanent additions to the Jagex team.

Andrew describes himself as a tech-head, whose first computer was the Atari 800. He''s a big fan of the Crow, and likes to wear a long trench-coat in order to make people aware of this.

He doesn''t like it when people use his real name, so we''ll just go with "Stretch", the epithet he gained as a reward for being very tall.

Mark doesn''t have such a prominent nickname, but says that his friends tend to call him "Og". He tells us that he likes big swords and girls, which we should probably qualify by pointing out that he plays live action roleplay games at the weekend.

Og doesn''t like marmite or selfishness, and was quite insistent about this. But what really makes his blood boil is when people leave the foil or cellophane cover on tubs of margarine or cheese spread. Of course we knew this already, as Og had included it on his CV.

Welcome to Jagex, Og and Stretch.
');
INSERT INTO "news" VALUES (163,1045116000,'The biggest update ever...',5,'We just wanted to let you know how things are going with the big 3-D update.

Andrew had originally planned to just update the graphics. This is no small task, as it involves remodelling every single image,and creating a new system to run it on. But the big man is not someone who does things in half-measures...

For this reason, he is taking this opportunity to actually rewrite the underlying game engine. This way, Jagex can introduce new features that we''ve been itching to bring to Runescape for ages. Some of these things were suggestions from players, that just weren''t possible under the current game engine.

Things like bank-to-bank trading, multi-player combat (e.g. multiple people against one dragon), and rare weapons with special moves. Excited? You should be!

Last December we decided that if we''re going to spend this much time and effort doing 3-D graphics, we might as well have a game engine that can do justice to it. This does of course mean that you have to hold out a bit longer than we originally suggested, but we believe that it will be WELL worth the wait.

Runescape will of course be the same game that you know and love- just with more features and things to do. Watch this space for some sneak previews!
');
INSERT INTO "news" VALUES (164,1045461600,'And another thing...',2,'In order to help us crack down on player scams, please do NOT accept membership from anyone other than your close family.

If you do accept membership from somebody else, your account will probably be banned when we find out.

So please help us to help you- and don''t accept membership from anybody else.
');
INSERT INTO "news" VALUES (165,1045461600,'Never give out your password!',2,'They say that any system is only as good as the people who use it.

This applies to capitalism, communism, and indeed the Runescape Customer Support service.

They''ve asked me to point out that Jagex is still committed to the War against Scamming, but if you''re ABSOLUTELY DETERMINED to give away your password and / or possessions, there''s really not much we can do about it.

So please do not give out your password to anyone, and use the trade system to protect yourself from scams. If players ask you to "lend" them your items, or play games of "trust", our advice is to just say no.

It is up to you to accept or decline any deal that is offered to you- so you must decide if it is fair BEFORE you go ahead. Even with the best of intentions, sometimes money has a way of coming between friendships...
');
INSERT INTO "news" VALUES (166,1045807200,'Library of Varrock Opens',0,'Reldo the Librarian has finally opened the doors of the long awaited Library of Varrock!

Reldo has been busy of late, archiving all the letters of Saradomin and Zamorak. Today however, he found a set of dusty magical scrolls in a locked cupboard. These ''bestiary'' scrolls, scribed<sup>sic</sup> by noneother<sup>sic</sup> than the RuneScape Gods themselves, are the forthcoming creature blueprints for the new 3D RuneScape world!

Despite his fear of Divine intervention, Reldo has released some of these scrolls through the Library. If he survives for the next few weeks, he may well pick up the courage to release more...

{{Library of Varrock}}
');
INSERT INTO "news" VALUES (167,1046066400,'Extended Quest continues!',5,'Anyone who has completed the Biohazard quest will know that King Lathas sent a team of scouts to find a way through The Underground Pass. This will allow a band of adventurers to go in search of the evil King Tyras, Lathas'' brother, who has forged an alliance with the Dark Lord.

You might also like to know that we''ve just heard back from an advanced party of scouts, who keep the King informed of their progress.

The scouts have dug a tunnel into the huge mountain range that separates the mapped world of Runescape from the unchartered territories to the West. They have not yet managed to dig all the way through, but the King is anxious to send in his warriors asap- next week in fact.

So wrap up warm and pack plenty of food for the long journey ahead. Reaching the frontierlands<sup>sic</sup> should then be a mere formality. We couldn''t find out anymore than this, because at this point the scouts were rambling quite a bit. But that was probably just the drink talking.

You, however, must keep your mind on the job in hand. If Tyras is not stopped, the whole of Runescape will surely be doomed!
');
INSERT INTO "news" VALUES (168,1046239200,'Manual Makeover',1,'As well as checking out our new manual layout, you can now find a [new guide](https://classic.runescape.wiki/w/Manual%3AScam%20\(2003\)) in our online manual on how to protect yourself from scamming. We would advise that everyone reads this.
');
INSERT INTO "news" VALUES (169,1046325600,'1 year of RuneScape Members',5,'Today is exactly 1 year since we launched RuneScape Members. So a big big thank-you to everyone who has supported us, and has helped us get this far.

It''s been an amazing year, and RuneScape has really come a long way. Since the initial members launch we''ve added 19 new members quests, new skills like agility, fletching and thieving, plus loads and loads of new map areas, monsters and other little features. Last year also saw the launch of our new website, and our customer support service.

Next year should be even better, as well as lots of new quests we''re also planning some truly huge updates once our new graphics and scripting engines are complete.

We have now 17 full-time staff working at Jagex dedicated to improving and supporting RuneScape, compared to just 3 this time last year. That should give you some idea of how far we''ve come, and how exciting the next year should be.
');
INSERT INTO "news" VALUES (170,1046671200,'New Quest Online - Part Three',0,'Today sees the release of the third part of our ongoing Members'' Quest.

The War against the Dark Lord continues. In order to track down the evil King Tyras, you must first make your way through
We now know from our team of scouts that the pass is in fact a deep and complex labyrinth, which is all but empty of human kind.

Your job is to find a way through the pass, so that King Lathas can send his troops through to the frontierlands of West Runescape.

We had hoped to get this information from our scouts, but for some reason we had trouble getting much sense out of them. One of them spoke of a man named Iban, but this was clearly lunacy, as Iban was of course the great Dark Knight who died many years ago.

The Underground Pass follows on from the Plague City and Biohazard Quests.
');
INSERT INTO "news" VALUES (171,1046757600,'RuneScape map updated',1,'After many days of surveying, pacing and measuring, the Runescape cartographers have finally returned to the Library of Varrock.

Reldo the Librarian is pleased to announce the release of a new map of the known Runescape World, available through the manual section. This new map is now fully up to date, to give adventurers the drop on Yanille, The Tree Gnome Village and even Tutorial Island.
');
INSERT INTO "news" VALUES (172,1046930400,'New Secure Message Centre!',1,'As part of our commitment to stop scamming of all forms, today sees the launch of the new RuneScape secure Message Centre.

The Message Centre allows us to communicate with you about your account in a much more secure way than email does. As long as you are sure that you only log-in at the official RuneScape website, you can be sure that any messages in your Message Centre are from Jagex.

For now, only Jagex Staff can send messages to your Message Centre - but we hope to be introducing player-to-player messaging in the future.
');
INSERT INTO "news" VALUES (173,1047880800,'Observatory Quest online!',0,'A new quest is now online!

Professor Gronigen has had trouble with some neighbouring goblins, who have managed to break his telescope. Idiots.

Help the Professor to repair the telescope, and he will show you the secrets of the stars, and the cosmos as we know it. Broaden your horizons in The Observatory Quest.

Finally you can take a break from killing each other and ponder on your role in the Universe.

And those of you that communicate with Saradomin and Zamorak may be interested to learn that there''s a little something extra for those that manage to complete this particular adventure...
');
INSERT INTO "news" VALUES (174,1047967200,'Buying/selling reminder',2,'We would like to remind our users that buying/selling RuneScape accounts is not allowed, and that buying/selling RuneScape items for real money outside of the game is also not allowed.

We did once consider selling runescape money and items in an online shop on our own site for real cash. However we decided to sacrifice that extra revenue for the good of the game, since we felt it would devalue hard-working players achievements if another player could then just buy their way past them. We don''t want rich players to be able to simply buy their way to the top. This is clearly not how the game is meant to be played.

There are also practical reasons why we can''t allow this. For instance if we allowed players to sell accounts outside of the game it would become very difficult for customer support to tell who the rightful owner of the account was, which would undermine our password support service.

We are checking auction sites such as Ebay on a daily basis, and all auctions found there are removed, so if you try it you will lose your money. We are also making all efforts to track down buyers and sellers of items/accounts and will ban any accounts we find linked with these auctions.
');
INSERT INTO "news" VALUES (175,1047967200,'New Payment Options',1,'Jagex is very pleased to announce two fantastic new subscription options, **Pay By Phone** and **Pay By SMS/Text Message!**

Pay by Phone is currently only available to residents of the United States and the United Kingdom, and Pay By SMS/Text Message is only available to residents of the United Kindgom.

You can check out these new payment options by navigating through ''Members Info'' and ''Click here to Subscribe'' from the main page.

We hope that these quick and easy payment options will allow even more of our free players to enjoy the benefits of a RuneScape Members'' account! However please be sure to get permission from whoever pays the phone-bill before using this.
');
INSERT INTO "news" VALUES (176,1048226400,'New Members Info Pages',1,'We''ve updated the Members Info section of our site, bringing it bang up to date.

If you haven''t tried RuneScape Members yet, then why not check out the updated Members Info pages to see the features you''ve been missing, and the easy payment options that we now have available.
');
INSERT INTO "news" VALUES (177,1048485600,'Performance Improvements',3,'Today we are making some optimisations<sup>sic</sup> to the RuneScape servers to make the game faster for everyone. This will mean some short disruptions in the game, for which we apologise<sup>sic</sup> in advance.

Thanks for bearing with us, the improvement will be worth it.
');
INSERT INTO "news" VALUES (178,1050296400,'Letters 10 online',1,'Attention all loyal supporters of Zamorak!

Your all-powerful icon has returned from his busy schedule of evil-doing and responded to some of your letters - you can view them [here](https://classic.runescape.wiki/w/God%20letters%3AIssue%2010%20-%20Zamorak%20does%20one).
');
INSERT INTO "news" VALUES (179,1050296400,'New Throwing Weapons!',0,'New **members only** weapons are AVAILABLE NOW!

Members will now be able to smith Throwing knives for themselves, or find Spears dropped by various enemies.
Both weapons are used to attack enemies at range, and are more powerful than arrows, but cannot be stacked in the inventory like arrows can be.

Also if you are attacked while a throwing weapon is equipped you will automatically defend yourself with it.

To use these new weapons, simply equip them in your inventory, and click on an enemy. Throwing weapons utilise and increase your Ranged skill.
');
INSERT INTO "news" VALUES (180,1050382800,'Read if the update doesnt work',3,'We are aware that a very small number of players were having problems playing RuneScape after the last update.

I have now updated the client, and made some changes which should fix this problem, so if you were having trouble please try again.

The problem only occurs if you have an extremely old version of Java so most people weren''t affected anyway.

However if RuneScape STILL wont work for you then visit www.windowsupdate.com and get all of the ''critical'' updates listed there. This should fix the problem. This also has the added benefit that it will fix any security problems your computer has. So if you don''t want to be hacked you should visit windowsupdate.com on a regular basis anyway!
');
INSERT INTO "news" VALUES (181,1050814800,'Happy Easter',4,'Happy Easter to all our players!

For a bit of fun, we will be dropping ''Bunny Ears'' at random locations at random times throughout the day.

Please remember - these are supposed to be just a bit of fun for Easter. We''ve noticed on previous occasions players hoarding huge numbers of the gifts we drop, and then reselling them for massively unfair prices. This really isn''t in the spirit of the occasion. :-)

We don''t want this to just become an event whereby a few lucky players suddenly become ludicrously unfairly rich. Therefore new holiday drops are non-tradeable and limited to one per player. But hopefully still a lot of fun.
');
INSERT INTO "news" VALUES (182,1051074000,'Bestiary Expands!',1,'Reldo the Librarian has recently been swamped by his work - quite literally, as a tall and badly balanced pile of books he was cataloguing fell to the powers of gravity and trapped him under a pile of assorted Varrockian literature.

Some might say that this was no accident after his previous defiance of the gods in releasing the bestiary scrolls, but Reldo is nothing if not dedicated to the life of the Librarian, and simply cannot rest until every single article in the library is catalogued and sorted.

Luckily for RuneScape players, as he struggled to free himself from the large pile of heavy books he found some more **previously hidden scrolls expanding the bestiary in the Library of Varrock to almost double what it was!** And luckily for Reldo his injuries should heal fairly quickly.
');
INSERT INTO "news" VALUES (183,1051160400,'New York Server Moved',3,'We have moved our New York server (hosting worlds 13 and 14) to San Francisco because a very large number of players told us the New York connection was very poor. The fact that very few players actually used these worlds in their old location backed this up.

Hopefully worlds 13 and 14 will now run much faster, on their new connection in San Francisco.
');
INSERT INTO "news" VALUES (184,1052283600,'New - Watch Tower Quest!',0,'The young wizard on duty in the Yanille Watch Tower scribbled another tally onto the newly created ''ogre activity report''. It had been a long shift, and the ogre sightings were getting more and more frequent. For a second, the wizard allowed his eyelids to drop...

"They''re gone! Who''s on watch?!"

The young wizard awoke with a start, "What''s going on?" he enquired, sensing the panic around him.

"I could well ask you that!" the senior wizard retorted, standing over the bewildered youth. "Locks smashed, doors wide open and the power crystals - gone!"

"Gone?! But, without the crystals..." the reality of the situation was hitting him like a Wind Strike in the chest.

"Exactly." the senior wizard replied, placing a firm hand on the young wizard''s shoulder, "Without the crystals, Yanille is doomed."

"Our only hope," a voice from the doorway said "is that some brave adventurer is willing to take on this Watch Tower Quest"
');
INSERT INTO "news" VALUES (185,1052283600,'Quadruple Bank Space!',0,'We are pleased to announce that the Bank of RuneScape has recently finished extending its new secure vaults, deep under each branch.

"We felt," a senior cashier commented, "that many of our customers needed more space for their belongings, and of course, we were only too happy to help!"

This move is the latest in the continuing expansion of the Bank of RuneScape, offering RuneScape members a fourth bank page.

"Its all a big con!" a downtrodden peasant was heard saying in the street, "all they want is to wear your party hats when you''re not around!"
');
INSERT INTO "news" VALUES (186,1053406800,'Secure Server Maintenance',3,'Secure services such as billing, customer-support, and the message centre will be temporarily unavailable today whilst we perform an essential upgrade to one of our servers.

We apologise for the inconvenience. We are trying to keep the disruption to a mimimum<sup>sic</sup>, and hopefully everything will be operational again shortly.
');
INSERT INTO "news" VALUES (187,1054011600,'New Dwarf Cannon Quest',0,'The dwarven black guard need help defending the mines from the mischievous local goblins. Help the dwarfs with their latest development in warfare and blast the little green critters into pieces in our new Dwarf Cannon Quest!
');
INSERT INTO "news" VALUES (188,1054011600,'Sleeping bags and pickaxes',0,'Today''s update adds the much requested sleeping bags to RuneScape! These allow you to quickly recover your fatigue without having to walk all the way to a bed. Now you can finally pull those all-nighter fishing sessions you''ve been dreaming of.

As well as adding a touch of realism to the game, the fatigue system is also designed to stop people cheating using macro software. To wake-up from your slumber you will therefore have to answer a very simple challenge which should be easy to answer, but hard for cheats to automate.

This will make things much more difficult for all those cheaters who''ve been trying to ruin the game for everyone else. To ensure maximum protection we''ve also adjusted fatigue slightly so you get VERY SMALL amounts of fatigue on other skills. However it literally only takes a few seconds to recover using a sleeping bag, so this really shouldn''t impact on the game negatively.

Sleeping bags are on sale at all General Stores throughout RuneScape.

We''ve also made some changes to the mining system.

a) Since fatigue is now extremely easy to recover we''ve also put the rocks back to how they were before we changed them. Hard/soft-rocks don''t make much sense now fatigue is so much easier to recover.

b) We''ve added another much requested feature - different types of pickaxes! These take the repetative clicking out of mining with rune-pickaxes hitting the rock 12 times per click!

c) We have kept the ores showing up as different colours in the rocks, so you don''t waste time mining empty rocks.

Please may I ask that everyone tries this new system properly BEFORE commenting on it this time (e.g wait at least 24 hours before sending us feedback). Feedback from players who haven''t actually used the system they are commenting on, is obviously utterly useless to us.
');
INSERT INTO "news" VALUES (189,1054184400,'A few fixes and tweaks',0,'Todays update fixes a few bugs.

*   Seaweed now works properly again.
*   The watchtower quest also now works again
*   The dwarf remains in the dwarf cannon quest now spawn much faster
*   The pickaxes in the shop in the dwarven mine now spawn much faster
*   Fatigue on combat has been reduced (particularly for high level fighters)
*   Sleeping bags now restore fatigue slightly faster
');
INSERT INTO "news" VALUES (190,1055134800,'New Murder Mystery Quest!',0,'*"Sarge, come quick!"*
*"What is it lad?"*
*"We''ve had a messenger from the Sinclair Mansion; seems like someones done in old Lord Sinclair"*
A murder? Here? On his watch? This wasn''t good news.

The fact that the old Lord was a close personal friend of the King didn''t make it any better. Someone was going to pay for the crime, and he had a horrible feeling if it wasn''t the murderer it was going to be him.
He called all guards not on active duty to the barracks.

*"Right lads, all leave is suspended as of now. We want every spare man at the mansion going over it with a fine tooth comb. Anyone have any complaints about it?"*
The junior guards could see the expression on his face and decided not to raise any objections.

*"Excellent. See you all at the Sinclair Mansion in 10 minutes. And we''re not leaving until we''ve caught the villain."*
As the guards left in single file he hoped they found the culprit quickly; murders didn''t happen very often and failing to solve the killing of a friend of the King wouldn''t help his career prospects much.

As the last guard left he muttered under his breath
*"Yes, this is a real murder mystery alright..."*
');
INSERT INTO "news" VALUES (191,1056430800,'WARNING: Fake 3d beta',4,'WARNING: Beware of anybody claiming the RuneScape 3d beta is available. It is NOT yet available.

We are aware of a fake program, which pretends to be our 3d update, but actually steals your password.

Do NOT download or run any programs claiming to be RuneScape from ANYWHERE except runescape.com ever!

When the real version of the 3d update is ready it will be announced here on "runescape.com"
');
INSERT INTO "news" VALUES (192,1057726800,'New Digsite Quest!',0,'Some say there are only two religions in the land of Runescape; Saradominist, or ''the good'', and Zamorakian (''the bad'').
But there have been many other gods at work on the land...

For many ages religious wars wracked the lands, and the victors decided to write history as they saw fit, denying the existence of other deities. The zealousness of Saradominists and Zamorakians almost wiped all trace of other deities from the land... until now.

Now, a more enlightened and modern time, people thirst for knowledge and power, giving rise to those who follow no deity - for no deity meets their beliefs. Turning their back on their family religions older gods were rediscovered, altars, temples and holy places long forgotten are found once more.

Most recently a previously hidden altar has been discovered, buried deliberately under tonnes of rock and earth by a saradominist settlement that once existed nearby in their efforts to suppress its'' existence...

What wonders might exist there? What unknown treasures, or terrible secrets can be found in the digsite quest?
');
INSERT INTO "news" VALUES (193,1059368400,'New Members Quest Online',0,'Our new members quest Gertrude''s Cat is now online.
Gertrude''s cat has been missing for some time now - for her piece of mind her prized pet must be rescued.

Handling cats isn''t an easy business. They get hungry and need plenty of attention but if you''re the pet type, then this is the quest for you!

The cat is also a mini virtual-pet! If you look after it properly, it will grow up and get bigger. However if you neglect it then it will run away.');
INSERT INTO "news" VALUES (194,1059368400,'Trawler mini game',0,'Murphy the trawler fisherman has recently docked in at Port Khazard. He''s happy to take any keen fishermen on a fishing trip with him.

Be warned though, his boat is not in the best of shapes for the high seas, and you''ll be spending a lot of time running around fixing leaks.

This far out at sea you never know what new and exciting things you might catch, especially if you are an experienced fisherman. That is, if you can stop the trawler from sinking and get back to port safe and dry with your catch!
');
INSERT INTO "news" VALUES (195,1061355600,'New - Legends Quest!',0,'Grand Vizier Radimus Erkle wishes it to be known that a new Guild now exists for the truly Legendary Citizens of RuneScape!

Anyone who wishes to access this Guild must accept the challenge of a Quest to map the southern end of Karamja, a dense and forboding area called the Kharazi Jungle.

While there you''ll need to make friends with the natives of the Jungle and bring back a fine trophy to display in the Legends Guild Main hall.

This is the 50th Quest we''ve released, and so to celeberate it''s one of the largest yet!

Only serious applicants need apply for the Legends Quest.');
INSERT INTO "news" VALUES (196,1064206800,'Mage Arena',0,'The clash of powerful magics... the thrill of utterly defeating a foe with the Flames of Zamorak... the agony of falling to a superior mage whose powers surpass your own...

All this and more can now be experienced by yourself in our latest addition to the Wilderness - The Mage Arena!

Kolodion, the master of battle magic, has set up an arena deep in the wilderness.
Prove yourself worthy of this blood thirsty wizard by surviving the trials of the mage arena and he will teach you new spells, more powerful and destructive than any seen before in the world of RuneScape...

Minimum requirements are:

A Magic level of 60

Members only

Talk to Kolodion in the Northern Wilderness to begin your combat - if you dare!
');
INSERT INTO "news" VALUES (197,1067580000,'Halloween Drop',4,'Hi everyone

I hope you''re all enjoying Halloween. For a bit of fun we are dropping ''Scythes'' at random locations at random times through the day.

As is normal for holiday drops now, the scythes are untradeable and limited to one per player. The only way to ever get one is to find one today!

If after finding a scythe you lose it, you can get a replacement from the clothes shop. However the shop will only give you a replacement if you manage to find one on the ground today.

Our previous drop has also been changed to work the same way, with the clothes shop offering replacements (rather than it auto appearing in your inventory after you die) .
');
INSERT INTO "news" VALUES (198,1067752800,'More Scythes dropping today',0,'With respect to the Halloween drop. Unfortunately it seems a lot of people were upset they didn''t manage to get a Scythe.

In particular the fact that we all live in England means unfortunately people in Western US are asleep whilst we are in the office, and able to login to the game to drop items.

This is supposed to be a bit of fun. Something to enjoy, not something to get upset about! Therefore I''m going to try to cheer you by doing a more US friendly drop of Scythes this evening. I''m not going to stay up all night to do it, because I have to sleep, but instead I''ll do 4 drops at specific times.

I will be dropping Scythes at:

Sunday 4pm (Eastern US Time)

Sunday 5pm (Eastern US Time)

Sunday 6pm (Eastern US Time)

Sunday 7pm (Eastern US Time)

and then I''ll be going to sleep! :-)

No doubt some people will complain that I am doing this too. It''s impossible to keep everybody simultaneously happy all the time, but I''ll do my best.

Andrew
');
INSERT INTO "news" VALUES (199,1070258400,'RuneScape 2 Beta is Here!',0,'We are very pleased to announce that the RuneScape2 Beta has launched!

For the moment, only RuneScape Members can access this exclusive beta by clicking the link at the top of our front page.

There will initially be a large number of users trying to download the new RuneScape2 client - please be patient and do not restart your client download if it seems slow.

Since the RuneScape2 game window is larger than before, we advise that users running at a resolution of 800x600 use Internet Explorer''s fullscreen option (press F11 or select ''View -> Full Screen'') and then auto-hide the top navigation bar by right clicking on it and selecting ''auto-hide''.

Oh, and if you want to talk in colour try:

red:hello

yellow:greetings froobs!

or

wave:wooohooo!

We hope that you enjoy testing RS2 - please send all feedback/bugs for this RS2 beta to our Forums rather than via Customer Support.

Thanks,

**Andrew and the RuneScape Team**
');
INSERT INTO "news" VALUES (200,1070258400,'Runescape2 Servers',0,'We have added another three worlds to the RuneScape 2 beta to add more capacity for downloading and playing RS2.

We were also experiencing some bandwidth problems with our servers located at San Jose, but these have now been resolved.

Thanks to all of our members who have been very patient in waiting to download the RuneScape2 client - our servers were always going to be very busy with so many of you wanting to download the game right from the start!
');
INSERT INTO "news" VALUES (201,1072072800,'Christmas Drop',0,'This is just a quick note to say that there aren''t going to be any RuneScape items dropped at christmas. I really don''t like having to say this, but I can''t see any sensible alternative.

This is because the last few drops actually caused a lot of upset, and resulted in a \* huge\* number of complaints from players who didn''t manage to get an item (or didn''t get as many as their mates). Many players seemed to get really upset about the drop which is of course the exact opposite of the intended effect.

These drops used to be fun, when we started them - because they were a suprise, and nobody took them too seriously. They were just a little bit of extra fun for people who were around at the time. However nowadays many players seem to expect the ''suprise'' drop to happen, and so it just doesn''t work the same.

Please don''t go complaining to customer-support or moaning on the forums about the christmas drop. It won''t change anything. Of course I''m expecting we''ll get lots of complaints whatever we do :-( Which just goes to prove how horribly wrong the whole holiday-drop thing has become. The more complaints we get the more it proves to me that we really need to just stop the whole holiday-drop thing before the situation gets even worse.

On a more positive note, we are instead going to focus our time & efforts on improving the game in other exciting ways, and working on getting RS2 ready for launch early next year.
');
INSERT INTO "news" VALUES (202,1073023200,'Happy new year from Jagex',4,'Well I''ve just got back from my Christmas break, so now I''m back to updating RuneScape!

Even though I was away visiting my family for 1 week, I managed to get quite a few new things programmed on my laptop, so there should be a nice update to rs2 early next week.

Also I''d just like to wish a happy new year to all our players from the staff here at Jagex.

I hope you had a great Christmas, and wish you all the best for the coming year. It should be an exciting one!

Andrew
');
INSERT INTO "news" VALUES (203,1098853200,'RuneScape Classic mass ban',0,'3000 RuneScape Classic players were banned today for using macro software to cheat. This type of software is against the rules (see rule 7).

The number of people cheating in this way on RuneScape Classic was getting out of hand and most users will agree it was really starting to ruin the game so we felt it was time to take action. Therefore the 3000 most severe offenders have been permanently banned.

Whilst we are no longer actively developing RuneScape Classic, and whilst it has far less macro detection mechanisms than our main game RuneScape, it does still have some significant protection, so don''t think you can get away with cheating at EITHER of our games. Breaking the rules in either of our games will not be tolerated.
');
INSERT INTO "news" VALUES (204,1123045200,'RuneScape Classic is no longer available to free users',0,'We had planned on keeping RS-Classic around as a fun little nostalgia trip for people who wanted to see what the game was once like. However that idea is currently being spoiled by some irresponsible players who just see it as good place to cause trouble. We''re not happy with this, so we are taking steps to clean it up so our loyal players can enjoy it properly. This is the first step in achieving that. You won''t see it improve massively overnight, but this makes it much easier for us to kick out the troublemakers and make sure they actually stay out, rather than coming back. So in the long run there should be a big improvement.

If you wish to play for free we recommend you play our main RuneScape game instead. We would like to reassure our users that we have absolutely NO intention whatsoever of removing the free version of our main game.

The main version of RuneScape was designed from the ground up to have far better monitoring and protection systems. It is regularly updated anyway, and also being our main game means there is a bigger team looking after it. All this means it''s possible for us to run and police a free version of the main RuneScape far more easily and affordably. So we''ve decided it makes most sense to make that our main free offering. You can expect the free version of the main game to continue to be available for years to come.
');
INSERT INTO "news" VALUES (205,1137045600,'Nearly 5000 RS-classic accounts banned',2,'As regular classic players will know the classic game was being seriously spoilt by players breaking rule 7. We won''t let cheats spoil our games, so we are currently permanently banning nearly 5000 accounts which our system has flagged as using macro software in breach of our rules. RS-classic will be brought back online once that operation is complete.

We recommend all players make sure they are aware of our rules, which are there to keep the game enjoyable for our millions of players. We simply won''t let a small minority spoil the game for everyone else. If you don''t know the rules already then please make sure you [Read them here!](http://http://kbase.runescape.com/lang/en/aff/runescape/viewcategory.ws?cat_id=823\&ref=main_redirect)

As you know our focus these days is on the main RuneScape game which is far more advanced than RS-classic. The main reason we are keeping RS-classic online at all is to support some of our loyal players who have been with us for years and want to play the old version of the game they are used to. We''ve therefore decided the best way to stop the cheats just creating new accounts to cause trouble in RS-classic all over again, whilst still supporting the loyal players who have been playing RS-classic fairly for years, is to close RS-classic to new accounts. As such only accounts which have played RS-classic at least once in the last 6 months (since it went members only on August 3rd 2005) will be able to do so from now on. This allows the currently active players of RS-classic to continue playing, whilst keeping out the cheats trying to spoil it.

If you attempt to log into RS-Classic and haven''t played since August 3rd then you will receive a login error message.

The latest and greatest version of RuneScape - which 99% of our players use - of course remains open to everyone (except rule breakers). It has much better anti-cheat technology and we will also be taking a strong stance against rule-breakers in the current version of the game, but without the need to restrict account signups.
');
INSERT INTO "news" VALUES (206,1257919200,'RuneScape Classic Temporarily Re-opened',0,'Following on from my recent dev blog about our ideas for RuneScape Classic, we are delighted to offer everyone the opportunity to try Classic for themselves! For two weeks starting from today, Classic is open for new sign-ups from RuneScape members only.

If you access Classic during this two-week period (using your normal username and password), you will continue to be able to do so after the two weeks are over. If, however, you do not, you will miss out on the chance to do so, so give it a try.

There are 15 members'' worlds, one of which will be left as being only accessible to those veteran Classic players who have stuck with it all the way through.

You can access RuneScape Classic here.

RuneScape Classic is the predecessor to the current RuneScape game. It was closed to new members over four years ago, but we want for players to be able to try out this important part of our history. We also have potential further plans for Classic (as discussed in this blog), so another reason for this re-opening is to see how many people are interested.

If you have any questions or wish to discuss this, please visit this forum thread.

**Tools Developer**

Note: If you would prefer not to play through the RuneScape Classic tutorial, there is a button to allow you to skip it under the ''Spanner'' menu in game.
');
INSERT INTO "news" VALUES (207,1258524000,'RuneScape Classic Reminder',2,'We''d like remind everyone who''s interested in trying out RuneScape Classic, but has not yet logged in since it was re-opened, that the opportunity to do so will only be available for one more week. Only those members that log into Classic (using their normal username and password) before the end of Tuesday 24th November will be able to continue playing it after this date.

You can access RuneScape Classic here.

RuneScape Classic is the predecessor to the current RuneScape game. It was closed to new members over four years ago, but we want for players to be able to try out this important part of our history. We also have potential further plans for Classic (as discussed in this blog), so another reason for this re-opening is to see how many people are interested.

If you have any questions or wish to discuss this, please visit this forum thread.

**Tools Developer**

Note: If you would prefer not to play through the RuneScape Classic tutorial, there is a button to allow you to skip it under the ''Spanner'' menu in game.
');
INSERT INTO "news" VALUES (208,1259128800,'RuneScape Classic Plan',2,'We''re now coming to the end of the Classic trial period and it''s time to let you know what we''re going to do next with RuneScape Classic. First of all, thanks very much for your response and enthusiasm – it''s great to see that many of you still enjoy Classic! We''re very glad to see new people playing the game again.

Many have been asking why we don''t open some of the servers up to free players. One reason is that it''s a great benefit for us to offer to our members in appreciation of their support, but the main reason is that we want to keep Classic''s gameplay just as it is. In order to allow an unlimited number of accounts into Classic, we would have to make a lot of the big changes to it that we have made to RS2, and then it wouldn''t be Classic any more.

There is good news, though, if you missed out on the opportunity to join Classic this time: it''s not the last chance! We will be opening Classic up to allow new members to join the game every six months from now on.

The plan is:

*   After Wednesday **25th November**, there will be two Classic **worlds**.
*   If you are a **veteran** (that is, if you logged in to Classic between August 2005 and January 2006), you will have access to both worlds.
*   If you are a **Classic member** (that is, if you logged in to Classic in the last two weeks but are not a veteran), you will have access to world 2 only.
*   If you stop being a member, you will not be able to access Classic until you become a member again, at which point your access will be restored.
*   If you did not log in to Classic in the past two weeks, you will get another chance in around six months'' time. We will announce the exact dates nearer to the time.

As for the player-owned servers idea, we have decided not to proceed with it in Classic at this point: the game is working fine as it is, with new people playing it, and there''s no reason to continue with such a big project with the numbers of players in Classic as they currently are. We do still really like the idea of player-owned servers, though, and will continue to think about it.
');
INSERT INTO "news" VALUES (209,1275368400,'RuneScape Classic Temporarily Re-opened',2,'As we did just over six months ago, we are delighted to offer everyone another opportunity to try RuneScape Classic for themselves! For two weeks starting from today, Classic will be open for new sign-ups from RuneScape members only.

If you log into Classic during this two-week period (using your normal username and password), you will continue to be able to do so after the two weeks are over. If, however, you do not, you will miss out on the chance to do so, so give it a try.

If your RuneScape account is already ‘Classic-enabled'' (either from the last time we did this or from before that), then you do not have to log into Classic during these two weeks to keep it as such, but you are more than welcome to log in to say hello to those players new to Classic.

You can access RuneScape Classic here. New sign-ups should log into Classic worlds 2-6; Classic 1 is only accessible to those veteran Classic players who have stuck with it all the way through.

RuneScape Classic is the predecessor to the current RuneScape game. It was closed to new members over four years ago, but we want for players to be able to try out this important part of our history.

If you have any questions or wish to discuss this, please visit the Recent Updates thread in your forum community.

**Tools Developer**

Note: If you would prefer not to play through the RuneScape Classic tutorial, there is a button to allow you to skip it under the ''Spanner'' menu in game.
');
INSERT INTO "news" VALUES (210,1275973200,'RuneScape Classic Reminder',2,'We''d like to remind everyone who''s interested in trying out RuneScape Classic, but has not yet logged in since it was re-opened, that the opportunity to do so will only be available for one more week. Only those members that log into Classic (using their normal username and password) before the end of Tuesday 15th June will be able to continue playing it after this date (unless their account is already Classic-enabled).

You can access RuneScape Classic here. New sign-ups should log into Classic worlds 2-6; Classic 1 is only accessible to those veteran Classic players who have stuck with it all the way through.

RuneScape Classic is the predecessor to the current RuneScape game. It was closed to new members over four years ago, but we want for players to be able to try out this important part of our history.

If you have any questions or wish to discuss this, please visit this forum thread.

**Tools Developer**

Note: If you would prefer not to play through the RuneScape Classic tutorial, there is a button to allow you to skip it under the ''Spanner'' menu in game.
');
INSERT INTO "news" VALUES (211,1316062800,'RuneScape Classic: The Final Countdown',0,'Ten years after RuneScape Classic proudly opened its gates to adventurers, it seems a fitting time to close them to new players and look forward to the next ten years. So, for the next two weeks, RuneScape Classic will be fully open and available to members, before formally retiring for new players. You can log into RuneScape Classic, by clicking here.

That''s not to say that we will be removing RuneScape Classic completely: it will be available as usual to members who have previously logged into Classic during their adventuring career. So, even if you have a passing curiosity in RuneScape Classic, we''d advise that you log in so that you can visit again at your leisure. You''ll get access to a Classic Cape if you do, so there''s a swish incentive for the undecided. To find out how to access the Classic Cape, click here.

Take a tour and you''ll find an old school version of RuneScape that has been surpassed in terms of graphics and content, but retains all of its original charm. Spot the difference between Classic and RuneScape, explore the original 50 quests, and trek across a world where Morytania was just a glimmer in the games designers'' eyes.

**Mod Mark**
');
INSERT INTO "news" VALUES (212,1317272400,'RuneScape Classic: Final Reminder',0,'Now is your final chance to gain access to RuneScape Classic for your account as, after the 29th of September 2011, new sign-ups will no longer be available and will not be re-opened.

RuneScape Classic is the original version of the game, which ran prior to the release of the RuneScape that we know and love today. It contains 50 iconic quests, has bags of retro charm, and is a great insight into the history of the world''s most popular free to play MMORPG.

Accounts which are able to log into Classic are also eligible to purchase the classic cape and matching hood in the current version of RuneScape. As well as looking very cool, the cape also comes with an appropriately old-school emote.

To secure access to Classic for your account, log in via this link now. Please note that you''ll need to be a member to do so. Once you have logged in, you will be able to do so indefinitely. Remember that it is a separate game, though, so if you''re logging in for the first time you''ll enter Classic as a daisy-fresh beginner.

Don''t delay! Log in now to secure yourself a slice of RuneScape nostalgia.

***Mod Stevew***
');
INSERT INTO "news" VALUES (213,1527051600,'RuneScape Classic: Farewell',4,'RuneScape Classic was the first version of RuneScape, released in 2001.

For many years we''ve left all of the content from the original game available to play. Whilst it''s seemingly been happily plodding along since then, it is with great sadness that we have taken the difficult decision to say goodbye to RuneScape Classic, which we will be winding down over the next 3 months.
<a class="rsc-image rsc-image-thumb" href="/images/23mayimg1.jpg"><img src="/images/23mayimg1.jpg"></a>
It has been amazing to see such dedication amongst those of you who have kept playing RuneScape Classic over the last few years, some of you have even managed to reach max total! However, it''s not all fun and games.

With advancements in technology helping to further support both RuneScape and Old School RuneScape, our tools are no longer compatible with Classic. This is particularly a problem with our community safety and macro detection tools. The game is now easily abused with the use of 3rd party macro tools, and botting has become an increasing issue.
<a class="rsc-image rsc-image-thumb" href="/images/Screen-2.jpg"><img src="/images/Screen-2.jpg"></a>
We''ve not fully supported RuneScape Classic for years, so why are we suddenly seeing it as a problem now? The truth is that bots and lack of community safety tools are serious problems, however, we also feel that we can no longer offer long term service reliability due to the growing risk of unrecoverable game breaking bugs.

The number of bugs is getting worse, and we''re gradually seeing the game breaking. It''s important to highlight these are bugs which we won''t fix, most of them we can''t fix due to the unsupported nature of the game.
<a class="rsc-image rsc-image-thumb" href="/images/Baxtorian Falls.jpg"><img src="/images/Baxtorian Falls.jpg"></a>
As such, rather than have the game break indefinitely without any warning, we wanted to give everyone the opportunity to have their last goodbyes.
The RuneScape Classic servers will be taken **offline on the 6th of August 2018**. After such date, it will no longer be possible to log in to the game. You will still be able to make full use out of any outstanding membership time you have up until that date, and any remaining membership will remain valid for both RuneScape and Old School RuneScape.

Thank you for your support over the years.

**The RuneScape team**
');
INSERT INTO "news" VALUES (214,1059368400,'Chat filter problems fixed',3,'A problem which was causing the chat-filter to incorrectly filter things it shouldn''t has now been fixed.
We are now using a more advanced system which shouldn''t cause so many false positives and so should hopefully be much less intrusive.');
INSERT INTO "news" VALUES (215,1058763600,'Warning to fan site users',2,'**Update: 21st July, two fansites affected.**
Warning: It has come to our attention that two large but independent RuneScape fan sites (one run by W13 and another one run by Lightning) have recently been hacked. If you are not a user of the fansites in question you can safely ignore the rest of this message.

Warning: It has come to our attention that two large but independent RuneScape fan sites (one run by W13 and another one run by Lightning) have recently been hacked. If you are not a user of the fansites in question you can safely ignore the rest of this message.

Unfortunately we cannot verify or guarantee the security of independent fan websites. Since we don''t control these sites there is no guarantee that they are safe to use, or that they are secure. We therefore always recommend you use such independant websites with extreme caution.

 1) We have always stated that you should NEVER enter your password ANYWHERE except runescape.com. If you ignored this advice and used your runescape password on a fansite, then your account is in extreme danger, please change your password immediately!

2) We have always stated that you should NEVER download unofficial runescape software from fan-sites, because it may contain a virus or keylogger. If you ignored this advice your runescape account and computer is in danger, since the software may have been modified by the hacker. We recommend you delete it, install anti-virus and firewall software, and change your password.

 As always we recommend everyone reads our [security tips](http://www.runescape.com/guides/securetips.ws) and doesn''t just ignore them!

Our own security has NOT been affected by this incident. Therefore to allow you to chat and talk in safety we are working hard to launch our own official forums. These are not ready yet since we want to make 100% sure they are secure first. When they are ready they will appear here on runescape.com.

Remember: If you receive any emails offering to let you "test" our new forums or any other new features, they are definitely fake, and should be deleted, all our testing is done in-house by our very own QA-team.');
INSERT INTO "news" VALUES (216,1057813200,'Digsite quest fixed',3,' Unfortunately the digsite quest released yesterday had a number of problems, and was not possible to complete as a result.
 These problems have now been fixed, so it is now possible to complete the quest. You can get the specimen-brush you need to finish the quest by pickpocketing one of the workmen.

 I sincerely apologise for the botched release of this quest. The members of staff responsible will be fed to the king-black-dragon shortly.');
INSERT INTO "news" VALUES (217,1073023200,'More cheating scum banned',2,'We''ve just permanently banned 957 players, for cheating and using macro software to automatically play the game for them.
 We will NOT tolerate cheating, it ruins the game for everyone else. If you do not know the rules, then I recommend you read them.

 We now have multiple different ways of detecting macro software, and we''re are determined that nobody will get away with cheating like this. If you cheat we will catch you eventually, you WILL be banned and everything you''ve achieved will be wasted.

 I''d also like to point out that just because you are a high level player or a member does NOT mean you can get way with cheating. Many of those 957 were high level, and 284 of them were members. They are banned anyway, we don''t want you as customers! You are not welcome in RuneScape if you cheat.

 And to prove we''re serious, and that we really can detect this type of cheating - Here is a list of 100 of the worst offenders, all of whom are now banned. This is a mere fraction of the players now permanently banned.

Dessert
Fai Li
Rs Jeroen141
X Ph0enix X
Brahim Pk
Kill Girl 2
J A P P A R
Menjo
Mofo68add1
Pray Master
Snoopykiller
Awaa
Italian Boi
Loco Baludo
Germsonsa
Robin Huud
Is3lfr3estuf
Geofish
Snake Salva
Bufu 4 Life
Killah0e
Qjg
Ll Xyres Ll
Bryce1507
I Pitiful I
Vesselman2
X2 Shade
Fragas Lt
I Archee I
P O K E Y
Jij Ga Dood
Poiz9
Ryan2kn1
Hillbilly Hc
Uber Arch
I Br0ke I
Zo Gestoord
I Stick I
Dragon2pure
Dj Liquidx
Halexygalaxy
Puresten
Xxreloadxx
Druid89
Ahp
Diablorl
Mrsicedrop
Pul2e L33t
Dbz Mcnugget
I Nooby I
Silent522
J Sm0ker
Mech Waster
Mrs Death
Out 4 Fun
Final Edge
Ninja Jet
G000d Like
Rs Jijgadood
B0 Selecta
Iol Ur Dead
I Mortal I
P22suke
Forceyou
Undrtakr1
Tekas
Scuba Dy
Bufu 4 Llfe
Tjerry
I G0t Worms
Raging Lion
Mini Net
B0 Selecta
I Zone I
Real Snowsi
R0ad Train
Warrior277
Gibli Gibli2
Xsreality
Dasponge
Ghostbuster
Z E D
Kledus
Holmgren
Aimless400
I Yung Wun I
Littleflame
Lil Jappar
Ch0senbyg0d
Th3 Evil 0ne
Great Ownage
X Demi
Teh Mage
Henrik Jr
Jr Link36
Kepla
Henke At Lan
Attack Girl
Zez2');
INSERT INTO "news" VALUES (218,1072159200,'New RS1 game worlds online',3,'Last night saw 22,000 simultaneous players, and things were getting a bit crowded! Therefore I''ve added some more RS1 worlds for you to play on.
All the worlds are in ''San Jose''. There are 3 free worlds, and 1 members world.

Hope you enjoy them!
Andrew');
INSERT INTO "news" VALUES (219,1067752800,'RS2 is still on schedule',5,'I''m sure you''ll be pleased to know that we''re still on schedule to release the RS-2 beta on the 1st-Dec.
I''ve been getting into work early, and working a few weekends, and I''ve managed to make up the time it took to do the Halloween event, so 1st-dec is still on.');
INSERT INTO "news" VALUES (220,1068184800,'Duplicated items in game',2,'It has come to our attention that someone has worked out a way of duplicating or creating items in RuneScape unfairly. Particularly it seems they are doing this with christmas-crackers which produce party hats.
 Obviously this is a pretty obscure problem, since it''s taken over 10,000 combined years of RuneScape playing for anyone to find it, but we''re determined to close this hole.

**Update:** This problem is now fixed, thanks for everyone who offered help. With respect to the reward we offered, this will be given to the person who sent the first email explaining how the object creation was done.');
INSERT INTO "news" VALUES (221,1068271200,'Item bug fix (updated)',2,'The recent item duplication bug is now fixed.
We''re pretty sure the loophole that was being abused to create items unfairly no longer works.

Thanks to everyone who emailed in with information. We received over 600 messages from people keen to help, in just a couple of hours!

We will work out what we are going to do about the items that were introduced to the game next. For now I would just recommend that you avoid buying or selling partyhats/crackers completely for the next few days whilst things settle down.

If you sell now you just risk getting ripped off, because currently people are overreacting. Bear in mind that the number of party-hats in circulation now is still less than the number around 1 year ago.

Rest assured that anything we do will be as fair as possible. We''re NOT going to ban people just for buying a hat at a low price. We''re only really after the people who started this, and we think we''ve already caught most of them.

Due to a number of false rumours going around I''d like to state a couple of things:

1) We are NOT going to delete all p-hats ever, that would be a total overreaction.
2) We are NOT going to rollback all the save-games, that would also be overreacting.');
INSERT INTO "news" VALUES (222,1068530400,'Forum Beta Launched!',1,'We are very pleased to announce that our Official RuneScape Forums are now available for beta-testing by our members.
We have decided to restrict the forum beta to members only so that the forums can be tested with a limited number of users. We expect that the forum beta will last at least one month, but we will aim to offer full access to everyone as soon as possible.

RuneScape Members can log-in and help us test our new forums from the Forums link on our main page.

Please DO NOT send in customer support queries regarding the forums. Members can provide feedback directly on the forums via a forum post in the feedback forum. Non members - please be patient and keep your eyes on the news and updates section for forum related news.');
INSERT INTO "news" VALUES (223,1069653600,'RS2 Combat system explained',5,'As most of you are probably aware by now, we have made various changes to the combat system for RuneScape 2. This isn''t something we did without a lot of careful planning first. In fact far far more design-effort and thought has gone into the combat system then ever before.
We felt that the RuneScape 1 combat system didn''t make the best use of all the skills and items which are available in the game. Basically there just wasn''t enough variety in the weapons and in the playing styles that were effecitve. RuneScape 2 should change that. We''ve added a lot of new features to the combat system, such as new Armour for Rangers, new Weapons for Warriors, and new Spells for Mages. We''ve been testing it to death, and with the beta on the horizon (and indeed rushing towards us) it will be tested even more vigorously. We really appreciate any constructive feedback from our players on the new system, but please remember that we''ve made quite a few changes and so to be patient as we iron out any problems, which is why we''re having a beta!

We decided that the best way to make combat balanced was to make it so each combat-type has it own strength and weaknesses. So a Ranger will have an advantage when fighting a Mage, a Mage will be more likely to win when fighting a Warrior, and a Warrior will be do best when fighting against a Ranger. Of course it is still totally possible for the combat results to go the other way, but it means no single character class should dominate, and should ensure a good balance of different playing styles in the wilderness.

As well as the ''pure'' warriors which already exist in the game, we''ve also tried to make it so it''s possible to play as a ''pure'' ranger or a ''pure'' magician, without having to use melee combat at all. We''ve made a few changes to make it possible for your character to still advance and become powerful even if you choose to specialise in this way. Of course you can also play as a mixed character, and that should work well too. We''ve tried to make it so all 4 options have pro''s and con''s and different styles of playing.

We have nothing against "pures", and indeed due to the changes we''ve made we imagine that there will be more pure-fighters, pure-rangers, pure-mages, but obviously a character which is trained in more forms of attack will be more flexible and so will stand a better chance of exploiting his/her foes weaknesses.

**Ranged:**
Ranged combat was a bit weak in RuneScape 1, so all you Rangers rejoice as we''ve taken a good look at ranged combat and made some changes that we think have improved it. Firstly the damage you''ll be inflicting with your missiles has been balanced with melee damage, which mostly means you''ll now be dealing a bit more damage. Secondly you can now keep using your ranged weapon, even when being attacked in close combat. This does mean you''ll keep expending your ammunition in close combat, but also means that you don''t need to rely on Melee combat if the enemy manages to get too close. So if you are a pure ranger, and can''t swing a sword to save your life, you''ll still have a chance. To help you with your dream, we will be adding a Ranging Guild to the members servers for the full release of RuneScape 2! Also when you use ranged combat, rather than just always getting ''ranged'' xp, it is now possible to gain Ranged, Defence, and Hitpoints experience (which you gain depends on the combat style you choose). This way someone playing as a ''pure'' ranger, can still gain all the levels they need to become powerful and defend themselves without having to fall back on melee combat.

**Magic:**
We wanted to make Magic a much more independent skill, much like Ranged is and has been, and not something that was just used as an extra attack in melee combat. This change is reflected in the combat level change (see below) and, like Ranged, you can no-longer cast magic and fight at the same time. You will find that you''ve been given a few new spells to play with which we hope you''ll find useful, these are Bind, Snare, and Entangle. The purpose of all 3 spells is to hold your opponent in place giving you time to get some distance between you to cast your other spells. Once successfully cast the victim is prevented from moving for 5,10, or 15 seconds (depending on the spell), however it will not stop them from attacking or using their own abilities. Once the hold effect has worn off, the victim will be immune to these holding spells for 5 seconds, giving them a chance to come after you and get their revenge. Magic has been changed so that it no-longer "fails", it now only misses like Ranged attacks. So no-longer will you find your Mage defenceless for 20 seconds because of a botched spell. Magic attacks will normally only give you Magic and Hitpoint experience, however if you use a Staff defensively you will also get a small amount of Defence experience. So all of you who only wanted to play as a pure-mage, your wish has been granted and you will be just as effective as any other character.

**Melee:**
With all the changes to the other skills, it''s only fair that we had a look at melee combat as well. We noticed that most players only used a small range of weapons, mostly 2-Handed Swords and Battleaxes, which is pretty poor considering the range of weapons available. We wanted all the weapons in RuneScape 2 to be useful so, as you may already know, we''ve introduced new resistances! You will now find that you have Stab, Slash, Crush, Ranged, and Magic Defence & Attack stats on all your armour and weapons. The defence stats work like a bonus to your defence against the different attack types. So for instance, if you are attacked by someone wielding a Warhammer, an obvious Crush type weapon, then your armours Crush defence will be used to resist the attack. You will also find that you have several attack styles you can use with each weapon, with some weapons this even allows you to change the damage type of your attack. For instance Long Swords are good Slash type weapons, however with the click of a button you can change your attack to a Stab type. This allows for much more tactical combat, as you''ll want to use the Damage type which your opponent is weak against. Melee experience is as it always has been, you''ll get Attack, Strength, Defence, and Hitpoint experience depending on your combat style. There is even more good news for you die-hard Warriors, the much famed Dragon Slayer Quest has been altered to give players the option of completing it without Magic. With the new Armour changes we felt it was a little odd only giving armour which would be mostly used by Warriors to those with Magic abilities. I''m not going to give any information away as to how to do it, and no the map pieces aren''t tradable, but I promise that there is a way.

**Prayer:**
Due to these combat system changes, we''ve changed also updated the Prayers. This is to remove the bias towards helping Melee fighters and blocking Rangers. ''Paralyze Monster'' has become ''Protect from Melee''. ''Protect from ranged'' is still available as before. And we''ve added a new prayer - ''Protect from Magic''. All 3 of these prayers will provide you with 100% protection from damage dealt by NPC''s, and 50% protection from damage delt by players. However you will only ever be able to have 1 of these prayers active at once, and an Icon appear will over your characters head indicating which prayer you have active. So you will have to choose the one best suited for the situation.

**New armour:**
Much like the combat skills, Armour is now in 3 distinctive types... Mage Armour, Ranger Armour, and Melee Armour. Each of these is good at defending against different attacks, so an armour which can block a mighty melee attack, might not be so great for blocking magic spells, or dragon breath. Any class can wear any armour if they choose, although it doesn''t always make sense to do so. For example a Warrior may choose to wear robes or leather armour, but they''ll be sacrificing their defensive value of their Plate Armour to do so.

Mage Armour currently only includes the original wizards robes and hats with all the Magical bonuses they hold, however who knows that the future holds for those of the magical arts. Ranger Armour is a whole new range (no pun intended) of armour for RuneScape-2. The new Ranger Armours are all types of leather, going from your basic Leather, through Hard Leather and Studded Leather, up to Dragonhide Leather! This armour won''t provide as much defence as the Rune Plate Armour you are all used to, however it will increase your ranging ability by a good percentage making it well worthwhile for all you archers. Melee Armour is everything else, all the plate and chain mail you''ve always had, and just as defensive as it should be. While your metal armour will make you a walking tank in melee combat, it will severely affect your Ranged and Magic abilities. Plate armour is great for stopping enemy attacks, but it isn''t particularly flexible so don''t expect to be able to shoot the fly off a dogs back while wearing it.

**Multi-way combat:**
You will probably also remember Multi-way Combat being mentioned in the past, and we''ve seen a lot of questions and speculation as to how it will work, well wonder no more. There are now specific areas in RuneScape 2 in which Multi-way Combat is active, the West side of the Wilderness is entirely Multi-way Combat and so quite a few other areas where we felt it would be fun to allow NPC''s and Players to gang up on each other. In these areas things can get pretty mad, so if you want to have massive war you can do so! These are now the only areas where you can attack the same creature as someone else, so if you''re not in a Multi-way Combat area that Goblin you''ve just jumped is all yours and not even a Mage or Ranger can attack it.

Players will also find that they are no longer stuck in combat for 3 rounds. Yes that''s right, you can now run from combat at anytime you wish to. In fact, you can do pretty much anything you want while your opponent beats you over the head with an axe; eat food, drink potions, and even pick things up off the ground, but you will be giving your opponent free attacks against you while you''re attention wanders. To counter this there is nothing to prevent your opponent from chasing you immediately as you leave combat, and you can be attacked while fleeing for your life. So while you can no longer "catch" your opponent, you can hit the coward in the back repeatedly as they run for safety. As it''s now possible to move while being attacked we''ve had to change the definition of "being in combat" for purposes of logging out. If you''ve been attacked in the last 10 seconds you are considered to be in combat, so as long as you hit your opponent every 9 seconds or so they won''t be able to log out while fleeing from you.

Naturally this does mean that the old player-killing tactics probably won''t work as well. You''ll need to work out a whole new set of tatics instead, so please do try to work out these new tactics before passing judgment. As always, we appreciate all constructive comments and suggestions, but we do ask that you at least give the new system a try first. We had a big play test of this new system in the office today, and found it a great deal of fun.

**New combat level calculation:**
When you first log into RuneScape 2 you may notice that your combat level has increased or fallen, don''t panic! Even if it gone down it does NOT mean you are weaker. This is merely because we have changed the formula which is used to determine your combat level to be a more accurate and fair. In RuneScape 1 your Ranged level would be used to calculate combat level instead of Attack and Strength ONLY if it was the higher skill, well now Magic works in the same way. This is to reflect the fact that you can''t cast spells AND wield a sword at the same time.

We aren''t going to go giving out exact equations, but for those of you who like to know how things work here comes a brief explanation.

* If melee combat is your strongest ability, then your combat level is based on your Strength+Attack+Defence+Prayer+Hitpoints.
* If ranged combat is your strongest ability, then your combat level is instead based on your Ranged+Defence+Prayer+Hitpoints.
* If magical combat is your strongest ability, then your combat level is based on your Magic+Defence+Prayer+Hitpoints

Some of you may find that a little complicated, but there''s no need to worry, just keep in mind that your reported combat level may well have changed, and not to worry about it too much. It doesn''t mean you are weaker, it''s just the result of a more accurate equation.

**Experience rewards**
You will probably also notice that the experience points you''re getting from combat has changed. The way experience was calculated in RuneScape 1 meant that the best way to level-up was to fight low level creatures like chickens, which didn''t really make much sense. So we''ve changed how the experience values are calculated to try and make higher level creatures give a better levelling-rate compared to the lower level creatures. 

**Runes and Runecrafting**
 As we want to increase the usability of Magic and make it as useful as Ranged and Melee we are increasing the availability of Runes in the game. So you will now be finding more Runes from NPC''s, Shops, and Thieving Chest. In addition we are going to be adding a new skill, Runecrafting, which will allow players to craft their own Runes! Not much information is available at the moment, but be assured that the skill is in the beta. Obviously these changes on their own would make Magic a lot easier to level, so we are reducing the amount of experience you get per spell to balance it. With more Runes available it should be just as easy to level up, you will just get to cast more spells for your money!

**More intelligent monsters**
I mentioned earlier that NPC''s will gang up on players in the Multi-way Combat areas, well that''s not the only trick they''ve got up their loot filled sleeves. You will find that NPC''s now have access to the same equipment and abilities as you do, and then some. We don''t want to give away all the surprises, but surffice to say that you can expect to be on the receiving end of arrows, spells, and other tricks, when attacking some NPC''s. You should also note that what you see an NPC equipped with, is what it''s going to be using in combat. So if you intend to train on the poor Guards of Varrock, you should take weapons which are good against the Chain Mail they''re wearing. With some creatures, such as Dragon''s, it won''t be quite as obvious which weapons will be the most effective, but try it out and you''ll soon find the weaknesses of your favorite monsters.

**Conclusion**
Along with all the other changes we''ve been making combat will now be a much more interesting and involved part of the game. With a much greater range of tactics and options open to you, and to your opponents, we hope it will bring more excitement into the game, whether you''re leveling up on a local Goblin camp, or fighting for your life in the Wilderness.

We do realise that these changes may need some tweaking during the beta to get it right, and we have several ideas should we need them.

If you are a member than the best place to discuss this is on our official forums. This is where your comments and ideas are most likely to be noticed by our dev-team. Any constructive comments or suggestions are very much welcome, as is feedback on the new experience values. We really do appreciate all constructive feedback on the new system, infact we want your comments.

But please appreciate that change isn''t a bad thing, if you don''t like the new system then please suggest how we can improve it more to your liking. We want to make a balanced system, but we also want a system which you''ll like. That''s why we''re having a beta test!

So enjoy the new combat system, it should be a lot of fun :-)');
INSERT INTO "news" VALUES (224,1069653600,'Varrock Library updated',1,'Reldo, our accident prone librarian, writes to inform us that he has once again expanded the [Library of Varrock](http://www.runescape.com/kbase/view.ws?guid=lore) with both some more Tales and some more Histories.
Those fans of Reldo''s literary collections should make their way there immediately, as the library will adhere to its usual opening hours.');
INSERT INTO "news" VALUES (225,1069394400,'Hiscores Reborn!',1,'We are pleased to announce that our new Hiscores system is now running, showing the top 250,000 players in each skill!
You can still find the [Hiscores tables](http://services.runescape.com/m=hiscore/hiscores.ws) from the same link on our main page, and although they may look the same, they are updating much more frequently.

The Jagex Web Dev Team');
INSERT INTO "news" VALUES (226,1069048800,'Fake moderator emails',2,'We would like to warn our players, that a few losers are sending fake ''become a moderator'' emails, to try and trick players into giving away their password.
We would like to remind everyone that when we are inviting people to become moderators on the RuneScape forums we NEVER send the invitations by email. If you receive an invitiation it will be through your secure message-centre here on runescape.com only.

Therefore if you appear to get an email that appears to be from us, then be very suspicious, it''s probably fake. Delete the email immediately, and then go to runescape.com (not via a link in the email) and check your message-centre instead. Be sure to also read our security tips located in our ''Rules and Security'' section for general account security advice.

Please also bear in mind that forum moderators will be hand picked by Jagex staff only. Please do not ask about becoming a moderator, because we are NOT accepting requests in any way shape or form. The best way to be picked by one of our staff is to be a regular quality contributor to the forums.

Thanks,
Jagex');
INSERT INTO "news" VALUES (227,1068616800,'Forum Updates',1,'We''re about to restart the forums, so you won''t be able to access any forum pages for a few minutes while the system reboots,
A number of bugs and issues highlighted have been fixed. These include:

* The back links on the message page now takes you back to the appropriate page, rather than the first page of the forum
* Capitalisation problems with chat filter fixed
* A number of improvements have been made to the chat filter to reduce unnecessary censorship
* Posting to a thread that has just been deleted now gives a clearer error message
* Added page indicators which tell you how many pages long a message thread is

Thanks for all the feedback and suggestions made so far concerning the forums. We do value your help with this beta, and are reading your comments. Expect quite a few updates to the forums over the next few weeks, and don''t worry, this is not impacting the release date of RS2. The forums, and the whole runescape.com website are developed by a different team to that working on RS2. In fact this beta is helping by testing some of the new architecture and code libraries used in RS2.

The Jagex Web Team.');
INSERT INTO "news" VALUES (228,1068098400,'New subscriptions - now fixed',2,'The RuneScape credit card billing server is now up and running again. WorldPay, our credit card processing company have resolved the problems that they were experiencing.
Any subscribers who have been waiting to sign up for membership are now able to do so.

We apologise for any inconvenience.

Thanks,
Billing Support');
INSERT INTO "news" VALUES (229,1067407200,'Library Updates',1,'Our esteemed librarian Reldo has contacted us with the following announcement:
*"Due to a recent donation from an anonymous benefactor, I am glad to announce that the Royal Library of Varrock has expanded its browsing library slightly, and to accomodate this new space we have moved some more manuscripts from the old archives to the reading rooms.*

*You will find that we have some new Tales and Histories available for public viewing."*

In other news, the benevolent deity Saradomin, who never likes to be outdone, has just sent us the latest installment of the ever popular responses to players'' questions in [Letters 17](http://www.runescape.com/kbase/view.ws?guid=letters17) which as usual has been archived for future posterity in the Library of Varrock. ');
INSERT INTO "news" VALUES (230,1067058000,'Fake email warning!',2,'There seems to be an increase in fake emails designed to trick you into giving away your password or recovery questions lately.
The latest fake email appears to come from support@jagex.com and has a copy of our secure login appearing actually IN the email. It looks like we have emailed you our login page in an email.

Of course we don''t do this! We only ever send plain text emails, without buttons, without pictures, without attachments, and without links to websites (not even our own). And never asking for your password or any other info.

Due to the number of fake emails being sent we are going to stop using email entirely shortly, and give message-centre reminders in game instead.

If you get an email that appears to be from us, then be very suspicious, delete the email immediately, and then go to runescape.com (not via a link in the email) and check your message centre instead.');
INSERT INTO "news" VALUES (231,1066280400,'Library of Varrock expands',1,'Our favorite librarian Reldo sent a messenger to let us know that the Library of Varrock has expanded its public viewing area.
Reldo had the following to say:

*King Roald of Varrock has gratefully agreed to be Patron to my efforts to create a full, true, and accurate history of this world in which we live. I have made a start by opening two new sections available to the public; [the official histories page](http://www.runescape.com/kbase/view.ws?guid=lore), and the tales [from the tavern](http://www.runescape.com/kbase/view.ws?guid=lore).*

*Please be advised if checking out any manuscripts or documents that they are to be returned on time, and late fees will be deducted at a rate of 2 gold per day.*
*I also ask visitors to keep the noise down in the research areas, or their library card may be revoked.*

You can see for yourself the newly expanded Library of Varrock [here](http://www.runescape.com/kbase/view.ws?guid=player_submissions).');
INSERT INTO "news" VALUES (232,1065848400,'Essential maintenance',3,'RuneScape was temporarily offline for about 2 hours this morning for essential maintenance.
We have now passed 5 million user accounts, and therefore I had to make some slight changes to our database to accomodate the vast amount of data this involves.

Due to unexpected complications, I had to reset the master login server. What this means is that anyone who was playing this morning DURING the 2 hour update may find the last few minutes of activity were forgotten. Luckily very few people were affected in this way, and those who were will just find they are standing back where they were when the update started.

I apologise for the inconveniance caused by this maintenance work.');
INSERT INTO "news" VALUES (233,1064984400,'RS2 beta - date decided!',5,'Work on our massive ''RuneScape-2'' update has gone very well in the last few weeks, and we feel sufficiently confident in our progress to finally commit to an exact date for the public beta test.
The beta test will begin here on www.runescape.com on the 1st-December-2003. For more info on how the beta will work please refer to our RS2 FAQ.

We would like to thank all our current members. Without your support this massive update wouldn''t have been possible. In recognition of this members will get first try of the beta on 1st-Dec, with a free-players launch following a few weeks later.

We are now going to focus all our resources on this update to make sure it''s ready on time.');
INSERT INTO "news" VALUES (234,1064898000,'Letters 16',1,'Guthix, perhaps the strangest deity in RuneScape, brings a little wisdom and clarity to the general RuneScapian population, and perhaps reveals a few secrets, in the latest edition of our always popular letters pages, [Letters 16](http://www.runescape.com/kbase/view.ws?guid=letters16)... ');
INSERT INTO "news" VALUES (235,1063083600,'Real World Trading Rule Added',2,'We would like to make everyone aware that we have added Rule 12 to our rules.
This rule says that: 

*''RuneScape items must only be exchanged for other items/services within the game. Exchanging RuneScape items for real-life money or other real-life benefits is not allowed.''*

This is not a new rule - it has always been part of the terms and conditions that every player agrees to when creating their account. However, we felt that this needed to be made absolutely clear, so it is now also part of our rules.

The reason for this is simple - We want RuneScape to be a game where everyone has the same chance regardless of their wealth in real-life.

This is also the reason we don''t sell RuneScape items for cash on our own website. Even though we could make extra money in this way. We don''t think it''s fair or even fun if players can just buy their way to the top!');
INSERT INTO "news" VALUES (236,1063083600,'Easy Payment Options',1,'We have had a lot of comments asking why don''t we offer pay by cash methods for North Americans? Well, the answer is - we do! And not just for people living in North America.
Via our payment service provider PaybyCash we offer a whole range of different ways to pay.

One of the simplest is to pay via Western Union, all you need to do is click ''Subscribe'' on our front page, log-in, and then select the PaybyCash option. Then you can choose to pay via Western Union or one of the other methods available.

For Western Union you simply fill in a form, take it to your nearest Western Union branch and pay cash over the counter. Western Union have over 150,000 counters worldwide, so there is almost certainly one near you! Paybycash will then process your payment as quickly as possible and email you confirmation. It''s that easy!');
INSERT INTO "news" VALUES (237,1062997200,'Paymate Payment Option',1,'We are pleased to announce that our Australian and New Zealand players can now pay for a RuneScape members subscription using the popular online payment service Paymate via our payment partner Paybycash.
If you have a Paymate account and you would like to use it to pay for your subscription, click the ''subscribe'' link from our front page, log-in securely and select the Paybycash payment option. Once you reach the paybycash website you will be able to select the pay by Paymate package that you want.');
INSERT INTO "news" VALUES (238,1062997200,'Toronto Game Worlds Live',3,'Our new Toronto game worlds are now live!
There is both a free and a members game world, which should provide a fast service for our players in Canada and North America.');
INSERT INTO "news" VALUES (239,1062133200,'Letters 15 - Zamorak responds',1,'Despite our best efforts, the force of chaos that calls himself Zamorak takes over the Letters page once more, and speaks his mind to those crazy and brave enough to follow him.
You can see for yourself what he has to say for himself in [Letters 15](http://www.runescape.com/kbase/view.ws?guid=letters15)...');
INSERT INTO "news" VALUES (240,1061787600,'New Engine Screenshots #3',5,'Well we''ve completed another months work on the new version of RuneScape, so to keep you updated on our progress I''ve put together another page of 4 screenshots which shows just some of the things we''ve completed recently.
[Click here](http://www.runescape.com/about/rs2preview3.ws) for the latest screenshots.

Enjoy!
Andrew');
INSERT INTO "news" VALUES (241,1061787600,'SF servers back online',3,'I apologise for the problems with the San-Franciso servers today. The problem has now been fixed and the servers should be functioning normally again
The following is an overview of events leading to the outage and subsequent restoration.

1. On August 24, 2003 at approximately 1:30 PM PG&E experienced a power failure on the lines servicing the San Franciso hosting facilitiy
2. At this time the facility went on UPS Power and then subsequently generator backup without incident.
3. This backup continued to run until August 25, 2003 at 2:47 AM when a component in the generator itself failed. The component that failed is known as a CT and monitors power within the generator. Due to a manufacturers design problem, the CT was not physically restrained to prevent possible movement within the generator.
4. At some point after running for 14 plus hours the CT physically spun inside the generator causing a physical short between two of the electrical phases, which in-turn caused several of the control boards to fail. With built in safeties, the generator shut itself down.
5. The Building Engineering staff was notified that the generator failed and they started repair efforts. The generator technicians were called and dispatched to the facility.
6. At 7:30 AM PG&E dispatched a truck to reconnect the facility to the power grid.
7. At 8:03 AM PG&E reconnected the power grid and power was restored.');
INSERT INTO "news" VALUES (242,1061787600,'Singapore server relocated',3,'Following a lot of negative feedback regarding the Singapore server we''ve decided to relocate it. It seems that it just doesn''t provide a better connection to most people in that part of the world, despite being physically nearer.
Our poll showed that even amongst people living in Australia and Singapore, a mammoth 63% found it WORSE than our other servers, and only 16% found it significantly better. This is very disappointing and clearly doesn''t justify keeping the server there. Especially given how much hosting costs are in that part of the world (10 times the price, of what we pay in san-franciso!)

Therefore our Singapore server is being taken offline today, and we are shipping it to Toronto - Canada, to see if it can be of more value to our users there.');
INSERT INTO "news" VALUES (243,1061355600,'New Look Website!',1,'As you will no doubt have noticed, we have given the website a stylish new look - including a new front page which makes our site easier to navigate than ever before. 
This new layout not only looks great, but will give us the flexibility to easily add new features (such as our official forums) in the near future!

We would like to reassure our players that no development time was taken away from RuneScape 2 in the redesign of the website - it was handled exclusively by our web development team.');
INSERT INTO "news" VALUES (244,1060059600,'Letters 14',1,'Saradomin makes a welcome and long awaited return to the letters pages, to appeal to the better nature of players, and to answer some of the questions put forward to him by his followers.
Interested in what he has to say for himself? Hoping there is some burning issue that will be addressed?

Then [click here for Letters 14](http://www.runescape.com/kbase/view.ws?guid=letters14)!');
INSERT INTO "news" VALUES (245,1058850000,'New Engine Screenshots #2',5,'Progress on our big RuneScape update is still going very well, so I''ve put together another screenshots page showing the latest features added.
Finally, I''d just like to remind you that you should NEVER enter your password ANYWHERE but RuneScape.com. When the update is ready for testing we will put it here on RuneScape.com for everyone to see, and will post about it in our ''news''. Beware scam sites or emails that offer to let you try it out early, they are merely trying to steal your password.

Enjoy! - Andrew');
INSERT INTO "news" VALUES (246,1058763600,'New Payment Options',1,' Jagex is very pleased to announce a fantastic new ''Pay By Phone'' subscription option for players in Australia and New Zealand.
All you need to do is dial a special number from your home phone and the cost of the subscription will be charged to your phone bill! (Just remember you must get permission from the person who pays the phone bill before using this service.)

You can check out this new payment option by navigating through ''Members Info'' from the main page and ''Click here to Subscribe'', and then clicking ''Pay By Phone''.

We hope that this quick and easy payment option will allow even more of our free players in Australia and New Zealand to enjoy the benefits of a RuneScape Members'' account!');
INSERT INTO "news" VALUES (247,1057035600,'Guthix is here to stay!',1,'Making up for his long and unexplained absence, Guthix seems determined to answer yet more questions from players.
At extreme length.

A selection of questions chosen especially by this most mysterious deity can be found for all to read right now in [letters 13](http://www.runescape.com/kbase/view.ws?guid=letters13).');
INSERT INTO "news" VALUES (248,1056085200,'Democracy is a beautiful thing',1,'The undeniable results of our recent Poll supporting Guthix as the god most players would like to hear from has dragged this elusive deity from whatever exactly it is he does for a living to answer some of your questions.
In very great depth.

You can see what this mysterious and previously hidden god has to say for himself in [letters 12](http://www.runescape.com/kbase/view.ws?guid=letters12) available to read now.');
INSERT INTO "news" VALUES (249,1055739600,'New RS Engine Progress',5,'I know lots of you are wondering how the RuneScape engine update is progressing so I''ve taken a few minutes to update my progress chart with the latest figures.
This is my personal progress chart, and so only show aspects of the update that I am working on. We''ll probably get some of the other staff who are converting the maps and quests, to post their own progress reports too.

Andrew

<hr>

**Andrew''s progress chart for RuneScape-Engine-Update**

[Numbers in square brackets indicate updated progress as of 16th Jun]

Please note you can''t easily work out a release date from these numbers since the tasks are not all the same size or difficulty. For example the script interpreter is probably as complex as all the secondary tasks put together since it controls every single aspect of the game.

Not only are the tasks different sizes, but also as more tasks are completed it is possible to reuse earlier code more. For example the close-range combat took a long time to do, but the other combat types will be able to reuse much of the same code so should be far faster to complete. This is why it is difficult for us to give an exact release date

**Primary tasks**

**Core modules**
New 3d-engine - 95%
content delivery system - 90% - [95%]
internal map-build system - 90%
player management system - 100%
location management system - 100%
npc management system - 100%
object management system - 90% - [95%]
inventory management system - 90% - [100%]
login/save-game server - 10% - [70%]

**Tools:**
New animation tool - 100%
New map editor - 100%
New compression tools - 100%

**Script system:**
Specify new script system - 100%
Write new script compiler - 100%
Write new script interpreter - 50% - [90%]
 Interface system:
Specify new interface system - 100%
Write new interface designer - 90% - [100%]
Write new interface interpreter - 60% - [90%]

**Multi-way combat system:**
specify new combat system - 80% - [100%]
close-range combat - 0% - [90%]
long-range combat - 0% - [10%]
duelling - 0%
prayer/magic - 0%

**NPC AI**
npc behaviour modes - 10% - [50%]
npc scripting - 0% - [90%]

**Secondary tasks**

**Chat:**
npc chat - 90% - [100%]
public chat - 10% - [50%]
friends-list - 0%

**Non-scriptable interfaces:**
mini-map - 100%
player design screen - 0%
title screen - 0% - [50%]

**Complex interfaces:**
inventory/wear system - 100%
shop system - 0%
trading system - 0%
bank system - 0%

**Misc:**
player route-finding - 90%
camera behaviour - 50% - [90%]
music/sound integration - 0% - [50%]
data collect module - 0%
');
INSERT INTO "news" VALUES (250,1054184400,'New server for Australasia',3,'Our new Australasian server is now online. This is our first server in the southern-hemisphere!
We''ve set this server up especially for our Australian and Asian members. Since it''s hosted in Singapore it should hopefully provide you with a much less laggy connection than before.

Unfortunately bandwidth in this area of the world is very expensive, (20x more than we pay elsewhere). Therefore this a members only server.');
INSERT INTO "news" VALUES (251,1053925200,'Screenshots of the new engine!',5,'Progress on our big RuneScape update is going very well, so I''ve put together a page with some screenshots of the new graphics, and other information about the update.
[Click here for screenshots](http://www.runescape.com/screenshots/screenshots.ws)

However please remember to NEVER enter your password ANYWHERE but runescape.com. When the update is ready for testing we will put in on runescape.com. Beware scam sites that offer to let you try it out early, they are merely trying to steal your password 

Enjoy! - Andrew');
INSERT INTO "news" VALUES (252,1053579600,'Letters 11 Now Online',1,'After much pleading, harrassing, and begging, we have finally managed to get Zamorak to update the letters section with some answers to your questions.
You can find answers to some of the best (and worst) questions sent to our resident god of evil and chaos [here](http://www.runescape.com/kbase/view.ws?guid=letters11).');
INSERT INTO "news" VALUES (253,1053579600,'Website Reshuffle',1,'You may have noticed that the RuneScape website looks a little different, and that''s because we decided that the previous layout didn''t allow us to deliver all the content that we want to.
The new layout opens the way to help us to introduce some exciting new features in the near future, and we hope that you will find it easier than ever to navigate our site.');
INSERT INTO "news" VALUES (254,1051074000,'Bang! I win! Jagex team photo',5,'<a class="rsc-image rsc-image-thumb" href="/images/paintball.jpg"><img src="/images/paintball.jpg"></a>
James, David, Daniel, Simon, Chris, and Lynn-Marie were sadly A.W.O.L. but expect an increased frag count when they get back to make up for it');
COMMIT;
