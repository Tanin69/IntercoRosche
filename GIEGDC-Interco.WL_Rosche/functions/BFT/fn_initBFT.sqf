[{
	if ("ACE_microDAGR" in (items (_this select 0))) then {
		private _bftArray = allMapMarkers select {["int_bft_", _x, true] call BIS_fnc_inString};
		if !(_bftArray isEqualTo []) then {
			{
				deleteMarkerLocal _x;
			} forEach _bftArray;
		};

		private _groups = allGroups select {side _x isEqualTo west};
		{
			private _curGroup = _x;
			private _leader = leader _curGroup;
			private _leaderVehicle = vehicle _leader;

			if (_leaderVehicle != _leader && _leaderVehicle isKindOf "Tank" && isEngineOn _leaderVehicle) then {
				private _markerType = [_curGroup] call ace_common_fnc_getMarkerType;
				private _marker = createMarkerLocal [format ["int_bft_%1", _foreachindex], getPos _leader];
				_marker setMarkerTextLocal format ["%1", name _leader];
				_marker setMarkerTypeLocal _markerType;
				_marker setMarkerColorLocal "ColorWEST";
				_bftArray pushBack _marker;
			};
		} forEach _groups;	
	};
}, 5, player] call CBA_fnc_addPerFrameHandler;