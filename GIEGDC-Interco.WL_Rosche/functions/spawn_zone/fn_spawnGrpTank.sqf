/* 
	Quick and dirty function that spawns an armored group of 3 and orders it to go to a waypoint 
	As for now, only the destination waypoint can be passed as a parameter	
*/

params ["_wp"];

// Convoy formation. 
_veh = "rhs_t72bc_tv" createVehicle getMarkerPos "mrkCy1_1"; 
createVehicleCrew _veh;
_veh setConvoySeparation 50; 
 
_veh2 = "rhs_t72bc_tv" createVehicle getMarkerPos "mrkCy1_2"; 
createVehicleCrew _veh2; 
_veh2crew = crew _veh2; 
_veh2 setConvoySeparation 50;
 
_veh3 = "rhs_zsu234_aa" createVehicle getMarkerPos "mrkCy1_3"; 
createVehicleCrew _veh3; 
_veh3crew = crew _veh3; 
_veh3 setConvoySeparation 50; 

// CARELESS behavior to force the convoy to follow roads (forceFollowRoad seems to be buggy)
_vehgrp = group driver _veh;
_vehgrp setBehaviour "SAFE";
_vehgrp setFormation "COLUMN";

_vehgrp setVariable ["PLUTO_ORDER","QRF"];

_veh2crew join _vehgrp; 
_veh3crew join _vehgrp; 

// Convoy gets in combat mode if any vehicle is fired near
_veh addEventHandler ["FiredNear", {
	params ["_unit"];
	(group _unit) setBehaviour "COMBAT";
	(group _unit) setFormation "LINE";
}];

_veh2 addEventHandler ["FiredNear", {
	params ["_unit"];
	(group _unit) setBehaviour "COMBAT";
	(group _unit) setFormation "LINE";
}];

_veh3 addEventHandler ["FiredNear", {
	params ["_unit"];
	(group _unit) setBehaviour "COMBAT";
	(group _unit) setFormation "LINE";
}];

// Convoy movement, gets on SAD behavior at the end of the movement
_waypoint = _vehgrp addWaypoint [getMarkerPos _wp,0]; 
_waypoint setWaypointType "Move";
_waypoint setWaypointStatements ["true","(group this) setBehaviour 'SAD';(group this) setFormation 'LINE'"];