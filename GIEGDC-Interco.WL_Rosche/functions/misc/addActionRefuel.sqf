/*
 * Argument:
 * 0: Action name <STRING>
 * 1: Name of the action shown in the menu <STRING>
 * 2: Icon <STRING>
 * 3: Statement <CODE>
 * 4: Condition <CODE>
 * 5: Insert children code <CODE> (Optional)
 * 6: Action parameters <ANY> (Optional)
 * 7: Position (Position array, Position code or Selection Name) <ARRAY>, <CODE> or <STRING> (Optional)
 * 8: Distance <NUMBER> (Optional)
 * 9: Other parameters [showDisabled,enableInside,canCollapse,runOnHover,doNotCheckLOS] <ARRAY> (Optional)
 * 10: Modifier function <CODE> (Optional)
 _action = ["refuelVehicleTank","Remplir la citerne du véhicule","",{hint "Refuel"},{true}] call ace_interact_menu_fnc_createAction;

 * Argument:
 * 0: Object the action should be assigned to <OBJECT>
 * 1: Type of action, 0 for actions, 1 for self-actions <NUMBER>
 * 2: Parent path of the new action <ARRAY> (Example: `["ACE_SelfActions", "ACE_Equipment"]`)
 * 3: Action <ARRAY>
[refuelStation, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
*/

/*
params ["_txt","_txt2"];

[
	5,
	[_txt,_txt2],
	{
		params ["_args"];
		_args params ["_theString"];
		hint _theString;
	},
	{
		params ["_args"];
		_args params ["_theString","_theStrong"];
		hint _theStrong},
	"Refuel en cours"
] call ace_common_fnc_progressBar
*/

 _action = [
	"refuelVehicleTank",
	"Remplir la citerne du véhicule",
	"",
	{[this, RefuelStation, trgRefuelStation] call int_fnc_refuelTank;},
	{this inArea trgRefuelStation}
] call ace_interact_menu_fnc_createAction;

[this, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;