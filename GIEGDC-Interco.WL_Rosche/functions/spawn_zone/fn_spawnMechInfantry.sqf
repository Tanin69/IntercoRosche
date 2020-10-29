/*


Another quick and (not so) dirty function to spawn mechanized infantry
Place 3 markers in Eden (parameter 0 of the function): 
- First one : spawn point of mechanized group
- Second one : area marker in which the infantry group us unloaded. The function look for an area clear of ennemies (hard coded parameters at the moment)
- Third one : destination WP : group leader is ordered to seek and destroy in the area (SAD Wp type)

Parameters :
0: ARRAY : [mrkName, mrkName, mrkName]. Cf. supra
1: SIDE : side of the mechanized group (optionnal, default opfor)
2: ARRAY : infantry group, classname array (optionnal)
3: STRING : vehicle classname (optionnal)
4: NUMBER : vehicle heading at spawn point


*/

params [
	["_tbWP",[]],
	["_side",opfor],
	["_grpInfMeca",["rhs_vmf_flora_junior_sergeant","rhs_vmf_flora_machinegunner","rhs_vmf_flora_machinegunner_assistant","rhs_vmf_flora_LAT"]],
	["_clsVeh", "rhs_btr80_vdv"],
	["_vehHeading",0]
];

/* Test only
_tbWP = [getMarkerpos "mrkSpMeca_1",getMarkerpos "mrkWpMeca_1_1", getMarkerpos "mrkWpMeca_1_2"];
_side = opfor;
_grpInfMeca = ["rhs_vmf_flora_junior_sergeant","rhs_vmf_flora_machinegunner","rhs_vmf_flora_machinegunner_assistant","rhs_vmf_flora_LAT"];
_clsVeh = "rhs_btr80_vdv";
_vehHeading = 230;
*/

//On spawn le groupe d'infanterie, le véhicule et son équipage, puis on charge le groupe d'infanterie dans le véhicule 
_grpInf = [[0,0,0], _side, selectRandom GROUPE_OPFOR_MOYEN] call GDC_fnc_lucySpawnGroupInf; 
_tbVeh = [getMarkerpos (_tbWP#0), _vehHeading, _clsVeh, _grpInf] call BIS_fnc_spawnVehicle; 
{_x moveInCargo (_tbVeh#0)} forEach units _grpInf; 

//On déplace le groupe sur le marqeur d'unload, on unload les fantassins dans une zone safe. 
//Tester ce qu'il se passe si le véhicule se fait intercepter en chemin ! 
_grpInf setBehaviour "CARELESS"; 
_wp = _grpInf addWaypoint [getMarkerpos (_tbWP#1), -1];
_wp setWaypointType "UNLOAD";

_grpInf setBehaviour "AWARE"; 
_wp = _grpInf addWaypoint [getMarkerpos (_tbWP#2), -1];
_wp setWaypointType "SAD";