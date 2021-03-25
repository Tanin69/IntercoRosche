//Le nom de la zone qui sera utilisé pour tous les spawns 
private _zn = "Molbath_2";
private _grpGarn = objNull;
private _nbPat = objNull;
private _probaManedFW = objNull;

switch true do {
		case (nbJoueurs < 37): {
			_grpGarn = GROUPE_PARAMIL_MOYEN;
			_nbPat = [1];
			_probaManedFW = 1;
		};
		case (nbJoueurs > 36 && nbJoueurs < 46): {
			_grpGarn = GROUPE_PARAMIL_MOYEN;
			_nbPat = [4,5];
			_probaManedFW = 1;
		};
		case (nbJoueurs > 45): {
			_grpGarn = GROUPE_PARAMIL_MOYEN;
			_nbPat = [5,6];
			_probaManedFW = 1;
		}; 
};

//Spawn des patrouilles
//[_zn,_nbPat,_grpGarn,opfor] spawn int_fnc_spawnRdmPatrols;
//[_zn,[2,3],GROUPE_PARAMIL_PETIT,opfor] spawn int_fnc_spawnRdmPatrols;

//Spawn des garnisons
[_zn,_grpGarn, nil, nil, nil, 0.1, 0.2] spawn int_fnc_spawnGarnisons;
//[_zn,GROUPE_PARAMIL_MOYEN, opfor, nil, nil, 0.1, 0.2] spawn int_fnc_spawnGarnisons;

//Spawn des armes fixes
[_zn, opfor, "rhs_Igla_AA_pod_msv", "rhs_vmf_flora_rifleman", nil, _probaManedFW, nil] spawn int_fnc_spawnFixedWeapons;
//[_zn, opfor, "rhsgref_ins_DSHKM", "rhs_vmf_flora_rifleman", 1, _probaManedFW, 1] spawn int_fnc_spawnFixedWeapons;