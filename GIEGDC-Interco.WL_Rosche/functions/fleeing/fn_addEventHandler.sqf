params [
	["_group", grpNull, [grpNull]]
];
if (isNull _group) exitWith {
	hint "Group can't be empty";
};

{
	private _curUnit = _x;
	if !(_curUnit getVariable ["isCoward", false]) then {
		private _idAction = _curUnit addEventHandler ["Killed", {
			params ["_unit"];
			_unit setVariable ["cowardDied", true, true];
		}];
		_unit setVariable ["isCoward", _idAction, true];
	}
} forEach units _group;