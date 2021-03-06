//Le nom de la zone qui sera utilisé pour tous les spawns 
private _zn = "Rosche_1";
private _grpGarn = objNull;
private _nbPat = objNull;
private _probaManedFW = objNull;

/*
switch true do {
		case (nbJoueurs < 37): {
			//Entre 8 et 16 pax en garnison
			_grpGarn = GROUPE_OPFOR_PETIT;
			//Entre 6 et 16 pax en patrouille
			_nbPat = [3,4];
			//Proba arme fixe occupée au départ 
			_probaManedFW = 0.6;
		};
		case (nbJoueurs > 36 && nbJoueurs < 46): {
			//Entre 20 et 28 pax en garnison
			_grpGarn = GROUPE_OPFOR_MOYEN;
			//Entre 8 et 20 pax en patrouille
			_nbPat = [4,5];
			//Proba arme fixe occupée au départ 
			_probaManedFW = 0.8;
		};
		case (nbJoueurs > 45): {
			//Entre 32 et 40 pax en garnison
			_grpGarn = GROUPE_OPFOR_GRAND;
			//Entre 10 et 24 pax en patrouille
			_nbPat = [5,6];
			//Proba arme fixe occupée au départ 
			_probaManedFW = 1;
		}; 
};
*/

//Spawn des patrouilles
//[_zn,_nbPat,_grpGarn,opfor] spawn int_fnc_spawnRdmPatrols;
//[_zn,[3],GROUPE_OPFOR_MOYEN,opfor] spawn int_fnc_spawnRdmPatrols;

//Spawn des garnisons
//[_zn,_grpGarn, nil, nil, nil, 0.1, 1] spawn int_fnc_spawnGarnisons;
[_zn,GROUPE_OPFOR_MOYEN, nil, nil, nil, 0.1, 1] spawn int_fnc_spawnGarnisons;

//Spawn des armes fixes
//[_zn,opfor,"rhs_Igla_AA_pod_msv","rhs_vmf_flora_rifleman",nil,_probaManedFW,nil] spawn int_fnc_spawnFixedWeapons;
[_zn,opfor,"rhsgref_ins_DSHKM","rhs_vmf_flora_rifleman",1,1,1] spawn int_fnc_spawnFixedWeapons;