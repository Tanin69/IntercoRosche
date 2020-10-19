//Récupère la liste de tous les marqueurs LUCY pour les masquer et les blacklister pour GDC_fnc_chooseSpawnPos
private _tbMrk = allMapMarkers select {["mrk", _x, true] call BIS_fnc_inString};

//Masque les marqueurs
{_x setMarkerAlpha 0.0} forEach _tbMrk;

//LUCY (-> lancé dans l'init.sqf)
[0.5,"mkr_spawn_static_unit",true,600.0,false,3600.0,true,true,"COLONEL"] call GDC_fnc_lucyInit;
["loadout\loadout.sqf"] call GDC_fnc_lucyConfigLoadoutIA;

//Spawn au choix des joueurs
//["mk_spawn",_tbObjSpawn,"MAJOR",_tbMrk] call GDC_fnc_chooseSpawnPos;
//Spawn au choix des joueurs
//["mk_spawn",[],"MAJOR",["marker_NoSpawn"],nil,10] call GDC_fnc_chooseSpawnPos;

//Lance le briefing
execVM "briefing.sqf";
