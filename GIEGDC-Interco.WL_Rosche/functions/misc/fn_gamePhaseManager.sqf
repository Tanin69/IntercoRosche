[
	{
		{ // On désactive les objets de "Build_1" et "Build_2"
			private _obj = _x;
			_x hideObjectGlobal true; //Ne peut être exécuté que sur le serveur (cf. Biki)
		} foreach (((getMissionLayerEntities "Build_1") select 0) + ((getMissionLayerEntities "Build_2") select 0));
	}
] remoteExec["call",2];

private _renforcement_1 = 60;
private _renforcement_2 = 30;
private _condition_renforcement = {true};

systemChat "[GPM] Init";

if(!isNil "DEBUG") then {
	if(DEBUG) then {
		systemChat "[GPM] Cache des objets sur Rosche";
	};
};


/********************
*		PHASE 0		*
*********************/
// Spawn des unités
[] execVM "spawn_IA\spawnHostile_Suttorf_1.sqf";
[] execVM "spawn_IA\spawnHostile_Suttorf_2.sqf";
[] execVM "spawn_IA\spawnHostile_Suttorf_3.sqf";
[] execVM "spawn_IA\spawnHostile_Jarlitz_1.sqf";
[] execVM "spawn_IA\spawnHostile_Jarlitz_2.sqf";
[] execVM "spawn_IA\spawnHostile_Jarlitz_3.sqf";
[] execVM "spawn_IA\spawnHostile_Jarlitz_4.sqf";
[] execVM "spawn_IA\spawnHostile_Klein_1.sqf";
[] execVM "spawn_IA\spawnHostile_Klein_2.sqf";
[] execVM "spawn_IA\spawnHostile_Klein_3.sqf";
[] execVM "spawn_IA\spawnHostile_Klein_4.sqf";
[] execVM "spawn_IA\spawnHostile_Molbath_1.sqf";
[] execVM "spawn_IA\spawnHostile_Molbath_2.sqf";
[] execVM "spawn_IA\spawnHostile_Schlieckau_1.sqf";
[] execVM "spawn_IA\spawnHostile_Schlieckau_2.sqf";


/********************
*		PHASE 1		*
*********************/
waitUntil { 
	sleep 1; 
	(triggerActivated trgNestorIsOccupied)  || (triggerActivated trgCassandreIsOccupied) || (triggerActivated trgSofiaIsOccupied)
};
PHASE_MISSION = 1;

//////////////////////////////////////////////////////////////
//		Dans cette phase, les paramils lancent l'assaut		//
//////////////////////////////////////////////////////////////
[] execVM "spawn_IA\spawnHostile_AssautParamil.sqf";
//["spawn_IA\spawnHostile_AssautParamil.sqf"] call GDC_fnc_lucyRemoteExecVMHC;

/********************
*		PHASE 2		*
*********************/
waitUntil { sleep 1; PHASE_MISSION == 2;};
//////////////////////////////////////////////////////////////////
//		Phase d'assaut avec les véhicules lourds et méca		//
//////////////////////////////////////////////////////////////////

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