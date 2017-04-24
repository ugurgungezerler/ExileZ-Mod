/*

ExileZ Mod by [FPS]kuplion - Based on ExileZ 2.0 by Patrix87

*/

private ["_nPlayer","_sTime","_group","_count","_groupSize","_frequency","_vestGroup","_lootGroup","_zombieGroup","_playerObj","_playerName","_playerPosition"];

_groupSize =         (_this select 0) select 0;
_frequency =         (_this select 0) select 1;
_vestGroup =         (_this select 0) select 2;
_lootGroup =         (_this select 0) select 3;
_zombieGroup =       (_this select 0) select 4;

sleep 120; //Wait 2 minutes for the server to boot

//Infinite Harassing Loop
while {true} do 
{
	{
	
		if (Debug) then
		{
			diag_log format["ExileZ Mod | HarassingZombiesLoop: GroupSize : %1 | Frequency : %2 | Vest : %3 | Loot : %4 | ZGroup : %5",_groupSize,_frequency,_vestGroup,_lootGroup,_zombieGroup];
		};
	
		if ((HarassingZombieAtNightOnly AND (daytime >= NightStartTime or daytime < NightEndTime)) OR !(HarassingZombieAtNightOnly)) then 
		{
			if (isPlayer _x) then 
			{ 
				if (alive _x) then 
				{	
					_playerObj = _x;
					_playerName = name _playerObj;
					_playerPosition = getPos _playerObj;
					
					//get group from player
					_group = _playerObj getvariable ["group", objNull];
					
					//if nul create group
					if (isNull _group) then 
					{
						_group = [_playerObj] call InitGroup;
						sleep 1;
					};

					//count number of zombie alive in the group
					_count = {alive _x} count units _group; 	
					
					//Spawn 1 zombie if count is low enough
					if (_count < _groupSize) then 
					{
						nul = [_group,_playerPosition,_vestGroup,_lootGroup,_zombieGroup] spawn SpawnZombie;
						if (Debug) then 
						{
							diag_log format["ExileZ Mod: Spawning 1 Zombie for %1.",_playerName];
						};
					};
				};
			};
		};
		
		//number of real player
		_nPlayer = count (allPlayers - entities "HeadlessClient_F");
		if (Debug) then 
		{
			diag_log format["ExileZ Mod: %1 Player in game.",_nPlayer];
		};
		
		//pause between spawn
		if (_nPlayer < 1) then // to avoid division by 0
		{
			if (Debug) then 
			{
				diag_log format["ExileZ Mod: Waiting %1 seconds.",_frequency];
			};
			sleep _frequency;
		}
		else
		{
			_sTime = round (_frequency / _nPlayer);
			if (Debug) then 
			{
				diag_log format["ExileZ Mod: Waiting %1 seconds.",_sTime];
			};
			sleep _sTime;
		};
		
	} forEach (allPlayers - entities "HeadlessClient_F");
	
	sleep 0.1;
};