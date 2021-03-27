if(!isNil "DEBUG") then {
	if(DEBUG) then {
		systemChat "[GPM] Init";
	};
};

//Il n'y a pas encore eu de renforts sur Rosche -> on cache les fortifs du build
[
	{
		{ // On désactive les objets de "Build_1" et "Build_2"
			private _obj = _x;
			_x hideObjectGlobal true; //Ne peut être exécuté que sur le serveur (cf. Biki)
		} foreach (((getMissionLayerEntities "Build_1") select 0) + ((getMissionLayerEntities "Build_2") select 0));
	}
] remoteExec["call",2];

//Délai d'arrivée des renforts sur Rosche (en minutes)
private _renforcement_1 = 60;
private _renforcement_2 = 30;
private _condition_renforcement = {true};

if(!isNil "DEBUG") then {
	if(DEBUG) then {
		systemChat "[GPM] Cache des objets sur Rosche";
	};
};


/********************
*		PHASE 0		*
*********************/

/* 
	Conditions de déclenchement de la phase : initialisation via la console de la variable nbJoueurs
	Actions de la phase : spawn initial des hostiles
*/

waitUntil {
	sleep 1;
	(!isNil "nbJoueurs")
};

if(!isNil "DEBUG") then {
	if(DEBUG) then {
		systemChat "[GPM] Phase 0 déclenchée";
	};
};

// Spawn des unités hostiles
[] execVM "spawn_IA\spawnHostile_Jarlitz_1.sqf";
[] execVM "spawn_IA\spawnHostile_Jarlitz_2.sqf";
[] execVM "spawn_IA\spawnHostile_Jarlitz_3.sqf";
[] execVM "spawn_IA\spawnHostile_Jarlitz_4.sqf";
[] execVM "spawn_IA\spawnHostile_Klein_1.sqf";
[] execVM "spawn_IA\spawnHostile_Klein_2.sqf";
[] execVM "spawn_IA\spawnHostile_Klein_3.sqf";
[] execVM "spawn_IA\spawnHostile_Klein_4.sqf";
[] execVM "spawn_IA\spawnHostile_Klein_5.sqf";
[] execVM "spawn_IA\spawnHostile_Molbath_1.sqf";
[] execVM "spawn_IA\spawnHostile_Molbath_2.sqf";
[] execVM "spawn_IA\spawnHostile_Rosche_0.sqf";
[] execVM "spawn_IA\spawnHostile_Schlieckau_1.sqf";
[] execVM "spawn_IA\spawnHostile_Schlieckau_2.sqf";
[] execVM "spawn_IA\spawnHostile_Suttorf_1.sqf";
[] execVM "spawn_IA\spawnHostile_Suttorf_2.sqf";
[] execVM "spawn_IA\spawnHostile_Suttorf_3.sqf";


/********************
*		PHASE 1		*
*********************/

/* 
	Conditions de déclenchement de la phase : les avant-postes sont tous occupés par au moins un joueur
	Actions de la phase : les paramilitaires hostilent viennent harceler les avant-postes
*/

waitUntil { 
	sleep 1; 
	(triggerActivated trgNestorIsOccupied)  && (triggerActivated trgCassandreIsOccupied) && (triggerActivated trgSofiaIsOccupied)
};

PHASE_MISSION = 1;

[] execVM "spawn_IA\spawnHostile_AssautParamil.sqf";

if(!isNil "DEBUG") then {
	if(DEBUG) then {
		systemChat "[GPM] Phase 1 déclenchée";
	};
};


/********************
*		PHASE 2		*
*********************/

/* 
	Conditions de déclenchement de la phase : la variable PHASE_MISSION est paramétrée à 2 via la console
	Actions de la phase : 
	- déclenchement de l'assaut des blindés et des méca
	- Renforts sur Rosche au bout de 60 minutes
	- Nouveaux renforts 30 minutes plus tard
*/

waitUntil { sleep 1; PHASE_MISSION == 2;};

if(!isNil "DEBUG") then {
	if(DEBUG) then {
		systemChat "[GPM] Phase 2 déclenchée";
	};
};

//Vague d'assaut des blindés lourds
["mrkWpTanks_1"] call int_fnc_spawnGrpTank;
sleep 90;
["mrkWpTanks_2"] call int_fnc_spawnGrpTank;
sleep 90;
["mrkWpTanks_3"] call int_fnc_spawnGrpTank;
sleep 300;
//Vague d'assaut de l'infanterie mécanisée
[["mrkSpMeca_1","mrkWpUnloadMeca_1","mrkWpSADMeca_1"],opfor,GROUPE_OPFOR_MOYEN,nil,230] spawn int_fnc_spawnMechInfantry;
sleep 60;
[["mrkSpMeca_2","mrkWpUnloadMeca_2","mrkWpSADMeca_2"],opfor,GROUPE_OPFOR_MOYEN,nil,230] spawn int_fnc_spawnMechInfantry;
sleep 60;
[["mrkSpMeca_3","mrkWpUnloadMeca_3","mrkWpSADMeca_3"],opfor,GROUPE_OPFOR_MOYEN,nil,230] spawn int_fnc_spawnMechInfantry;

// Renforcement sur Rosche
sleep (60*_renforcement_1);
// On boucle tant qu'on a pas la condition d'avancée dans les fortifications
while {!_condition_renforcement} do {
	sleep 60;
};

systemChat "[GPM] Spawn garnison 1 sur Rosche";
{ // On active les objets de "Build_1"
	private _obj = _x;
	_obj hideObjectGlobal false;
} foreach ((getMissionLayerEntities "Build_1") select 0);
[] execVM "spawn_IA\spawnHostile_Rosche_1.sqf";

// Renforcement sur Rosche 2
sleep (60*_renforcement_2);
// On boucle tant qu'on a pas la condition d'avancée dans les fortifications
while {!_condition_renforcement} do {
	sleep 60;
};

systemChat "[GPM] Spawn garnison 2 sur Rosche";
[
	{
		{ // On active les objets de "Build_1"
			private _obj = _x;
			_obj hideObjectGlobal false;
		} foreach ((getMissionLayerEntities "Build_2") select 0);
	}
] remoteExec["call",2];

[] execVM "spawn_IA\spawnHostile_Rosche_2.sqf";