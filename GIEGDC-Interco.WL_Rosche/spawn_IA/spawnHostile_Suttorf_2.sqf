//Le nom de la zone qui sera utilisé pour tous les spawns 
private _zn = "Suttorf_2";
private _grpGarn = objNull;
private _nbPat = objNull;
private _probaManedFW = objNull;

switch true do {
		case (nbJoueurs < 37): {
			_grpGarn = GROUPE_PARAMIL_PETIT;
			_nbPat = [1];
			_probaManedFW = 0.6;
		};
		case (nbJoueurs > 36 && nbJoueurs < 46): {
			_grpGarn = GROUPE_PARAMIL_PETIT;
			_nbPat = [1,2];
			_probaManedFW = 0.8;
		};
		case (nbJoueurs > 45): {
			_grpGarn = GROUPE_PARAMIL_PETIT;
			_nbPat = [2,3];
			_probaManedFW = 1;
		}; 
};

//Spawn des patrouilles
[_zn, _nbPat, _grpGarn, opfor] spawn int_fnc_spawnRdmPatrols;
//[_zn,[1,2],GROUPE_PARAMIL_MOYEN,opfor] spawn int_fnc_spawnRdmPatrols;

//Spawn des garnisons
[_zn, _grpGarn, nil, nil, nil, 0.1, 0.2] spawn int_fnc_spawnGarnisons;
//[_zn,GROUPE_PARAMIL_GRAND, nil, nil, nil, 0.1, 1] spawn int_fnc_spawnGarnisons;

//Spawn des armes fixes
//[_zn,opfor,"rhs_Igla_AA_pod_msv","rhs_vmf_flora_rifleman",nil,_probaManedFW,nil] spawn int_fnc_spawnFixedWeapons;
[_zn, opfor, "rhsgref_ins_DSHKM", "O_G_Soldier_unarmed_F", nil, 1, nil] spawn int_fnc_spawnFixedWeapons;