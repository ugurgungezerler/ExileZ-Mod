/*

ExileZ Mod by [FPS]kuplion - Based on ExileZ 2.0 by Patrix87

*/

// Global Settings
ZombieSide                   = WEST;             // zombie team side east, west and Civilian can be used
Debug                        = true;             // debug messages.
MinSpawnDistance             = 20;               // Closest distance from any player to spawn a zombie.
MaxSpawnDistance             = 160;              // Max distance a zombie should spawn from a player.
MaxDistance			         = 300;              // Max distance to players before delete.
MaxTime                      = 30;               // Max time away from a player before delete.
RemoveZfromTraders			= true;             // Will kill zombies when they get too close to a safezone. *(the check is done every MaxTime) will only work with zombies that are configured to avoid territories
RemoveZfromTerritory         = true;             // Will kill zombies when they get too close to a flag. *(the check is done every MaxTime) will only work with zombies that are configured to avoid territories
TriggerGroupScaling          = 0.25;             // 1 player = Groupsize, 2 player in trigger = Groupsize + (GroupSize * TriggerGroupScalling * number of player in the trigger) set at 0 to disable scaling
LightsOff                    = true;             // Kill all the light on map except the player lights.
UseHarassingZombies          = true;             // Spawn harassing zombies around the player.
HarassingZombieAtNightOnly   = false;             // Spawn harassing zombies at night only.
UseHorde                     = true;             // Use the horde spawner             
NightStartTime               = 18;               // Time at which it is night in hours
NightEndTime                 = 6;                // Time at which it is no longer night in hours

// Explosive zombies          
ExplosiveZombies             = true;             // randomly boobie trapped zombies exploding a few seconds after dying.
ExplosiveZombiesRatio        = 2;                // percentage of explosive zombies
ExplosiveZombieWarning       = "IT'S A TRAP !!!";// Message that will display a few seconds before the explosion of a zombie.
ExplosionDelay               = 3;                // self-explanatory
ExplosiveType                = "Grenade" ;       // "mini_Grenade" for small almost non-lethal explosion or "Grenade" Big and dangerous explosion.
ExplosiveRespect             = 100;              // Bonus respect for Exploding zombies

// Killing zombies settings
EnableMoneyOnPlayer          = false;            // Money goes directly on killer
EnableMoneyOnCorpse          = true;             // Money stays on corpse for looting
ZombieMoney                  = 5;                // Money per zombie kill
ZombieMaxMoney               = 15;               // Max Money per zombie kill-random amount put on corpses

EnableStatKill				 = true;			 // Enable stat tracking for Kills DB entry
EnableZombieStatKill         = false;			 // Enable stat tracking for ZedKills DB entry

EnableRankChange			 = false;			 // Enable Rank change
EnableHumanityChange		 = false;			 // Enable GR8's Humanity change
ExileZombieKillRankChange	 = 5;				 // Both Rank and Humanity are dependant on this config

EnableRespectOnKill          = true;             // Self Explanatory
ZombieRespect                = 10;               // Respect per zombie kill

RoadKillBonus                = 10;               // Bonus Respect if roadkill
MinDistance                  = 50;               // Minimal distance for range bonus
CqbDistance                  = 10;               // Minimal ditance for close quarter bonus
CqbBonus                     = 40;               // Respect for close quarter bonus at 1 meter
DistanceBonusDivider         = 10;               // Distance divided by that number = respect E.G. 300m / [20] = 15 Respect

// Zombie settings : SET TO -1 TO DISABLE AND USE DEFAULT FROM RYANZOMBIES
EZM_ryanzombieshealth			          = 0.8; 	 // Health, *(initial damage level 0 is no damage 1 is dead)
EZM_ryanzombieshealthdemon                = 0.5;	 // Health, *(initial damage level 0 is no damage 1 is dead)
EZM_ryanzombiesattackspeed 	              = 1.5;	 // Attack speed, *(Time is seconds between attacks)
EZM_ryanzombiesattackdistance 	          = 2;	     // Attack distance, *(in meters)
EZM_ryanzombiesattackstrenth 	          = 0;	     // Attack strength *(Knockback strength) *(TYPO IS NORMAL)
EZM_ryanzombiesdamage 			          = 0.09;   // Attack damage *(% of players life per hit, 1 is 100%)
EZM_ryanzombiesdamagecar 		          = 0.05;	 // Attack damage to car *(% of car health per hit, 1 is 100%)
EZM_ryanzombiesdamageair 		          = 0.01;	 // Attack damage to air *(% of car health per hit, 1 is 100%)
EZM_ryanzombiesdamagetank                 = 0.005;	 // Attack damage to tank *(% of car health per hit, 1 is 100%)
EZM_ryanzombiesdamagecarstrenth           = 1.5;	 // Car attack strength *(Knockback strength in M/S)
EZM_ryanzombiesdamageairstrenth           = 1;	     // Air attack strength *(Knockback strength M/S)
EZM_ryanzombiesdamagetankstrenth          = 0.4;	 // Tank attack strength *(Knockback strength M/S)
                                                    
EZM_ryanzombiescanthrow 		          = -1;	 // Enable or disable Throwing for zombies
EZM_ryanzombiescanthrowtank               = -1;	 // Enable or disable Throwing tank for zombies                                              
EZM_ryanzombiescanthrowdistance           = 10;	 // Max throw distance
EZM_ryanzombiescanthrowtankdistance       = 0;      // Max throw distance for tanks                         
                                                    
EZM_ryanzombiescanthrowdemon              = 1;	     // Enable or disable Throwing for demons
EZM_ryanzombiescanthrowtankdemon          = 1;	     // Enable or disable Throwing tank for demons
EZM_ryanzombiescanthrowdistancedemon      = 50;	 // Max throw distance demon
EZM_ryanzombiescanthrowtankdistancedemon  = 10;     // Max throw distance for tanks      

EZM_ryanzombiesdisablebleeding            = 1;      // 1 to DISABLE player bleeding on hit, -1 to ENABLE player bleeding on hit.
EZM_ryanzombiesstartinganim               = 1;      // Enable Spawning animation
EZM_ryanzombieslimit                      = 100;    // Player detection distance in meters
		
EZM_ryanzombiesdisablemoaning             = -1;     // No idle sound
EZM_ryanzombiesdisableaggressive          = -1;     // No aggressive sounds
EZM_ryanzombiescivilianattacks            = -1;     // Attack civilians
EZM_ryanzombieslogicroam                  = -1;     // Roam ***roaming can be heavy on cpu
EZM_ryanzombieslogicroamdemon             = -1;     // Demon Roam
                                                 
EZM_ryanzombiesjump                       = -1;     // Jumping Zombies
EZM_ryanzombiesjumpdemon                  = 1;      // Jumping Demons
                                                    
EZM_ryanzombiesfeed                       = -1;     // Feeding Zombies
EZM_ryanzombiesfeeddemon                  = 1;      // Feeding Demons

// Infection Settings
EZM_ryanzombiesinfection                  = -1;     // Enable infections *(-1 to disable)
EZM_ryanzombiesinfectedchance             = 0;     // Precent chances to be infected on hit (Default 0)
EZM_ryanzombiesinfectedrate               = 0.05;   // Damage per minute when infected (+/- 30 minutes to live)
EZM_ryanzombiesinfectedsymptoms           = 0.9;    // Symptomes showed when infected 0.9 = Normal 0.7 = Less 0.5 = None
EZM_ryanzombiesinfecteddeath              = 0.9;    // 0.9 = Scream on death 0.7 = Silent death
EZM_ryanzombiesantivirusduration          = 300;    // Antivirus duration *(5 minutes)

// http://steamcommunity.com/sharedfiles/filedetails/?id=614815221 must be installed on the client for the cure to work
// You also need to overide an Exile script, Details here : http://www.exilemod.com/topic/10999-rz-infection-for-exile/

EZM_ryanzombiesmovementspeedwalker        = 1;      // Animation speed for walker zombies
EZM_ryanzombiesmovementspeedslow          = 1;      // Animation speed for slow zombies
EZM_ryanzombiesmovementspeedmedium        = 1;      // Animation speed for medium zombies
EZM_ryanzombiesmovementspeedfast          = 1;      // Animation speed for fast zombies
EZM_ryanzombiesmovementspeeddemon         = 1;      // Animation speed for demons
EZM_ryanzombiesmovementspeedspider        = 1;      // Animation speed for spider
EZM_ryanzombiesmovementspeedcrawler       = 1;      // Animation speed for crawler

// Harassing Zombies Config
HarassingLoopTime						= 180; // Check for players to harass every X seconds (Default 180 seconds)
HarassingConfig = [
/* 0 Groups Size  */         2,                  // maximum number of zombies around a player
/* 1 Vest group */           Nothing,            // Vest function defined in ZVest.sqf
/* 2 Loot group */           Nothing,            // Loot function defined in ZLoot.sqf
/* 3 Zombie group */         Easy               // Group function defined in ZClasses.sqf
];

// Hordes Config
HordeLoopTime							= 30; // Spawn a Horde every X Minutes. (Default 30 mins)
HordeConfig = [
/* 0 Groups Size  */         15,                 // maximum number of zombies around a player
/* 1 Vest group */           Basic,              // Vest function defined in ZVest.sqf
/* 2 Loot group */           DocAndAmmo,         // Loot function defined in ZLoot.sqf
/* 3 Zombie group */         MediumMix,          // Group function defined in ZClasses.sqf
/* 4 Horde density */        25                  // Radius in which the zombies will spawn should be lower than Min Spawn Distance.
];

// Use Map Triggers or Just Hordes and Harassing Zombies?
UseTriggers                  = true;

// Check Config Compiled
EZM_CompiledOkay				= true;
