//Spawn des groupes d'assaut paramil
spawn_assaut = {
	params ["_mrkSpawn","_mrkSAD","_typeGroupe"];
	_group = [getMarkerPos _mrkSpawn, opfor, _typeGroupe] call GDC_fnc_lucySpawnGroupInf;
	[
		_group,
		[getMarkerPos _mrkSAD],
		"true",
		[0,0,0],
		["NORMAL","AWARE","YELLOW"],
		"NO CHANGE",
		"SAD",
		["FULL","COMBAT","RED"],
		"NO CHANGE",
		"",
		0
	] call GDC_fnc_lucyReinforcement;

	_group setVariable ["INT_groupIsParamil", true];
};

["mrkSpawn_Assaut_1","mrkWP_Assaut_1",selectRandom GROUPE_PARAMIL_MOYEN] spawn spawn_assaut;
["mrkSpawn_Assaut_2","mrkWP_Assaut_1",selectRandom GROUPE_PARAMIL_MOYEN] spawn spawn_assaut;
["mrkSpawn_Assaut_3","mrkWP_Assaut_2",selectRandom GROUPE_PARAMIL_MOYEN] spawn spawn_assaut;
["mrkSpawn_Assaut_4","mrkWP_Assaut_2",selectRandom GROUPE_PARAMIL_MOYEN] spawn spawn_assaut;
["mrkSpawn_Assaut_5","mrkWP_Assaut_3",selectRandom GROUPE_PARAMIL_MOYEN] spawn spawn_assaut;
["mrkSpawn_Assaut_6","mrkWP_Assaut_3",selectRandom GROUPE_PARAMIL_MOYEN] spawn spawn_assaut;

[] call int_fnc_fleeing;