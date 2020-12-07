/*
	Author: [GIE] Gavin "Morbakos" Sertix
	
	Description:
		Assigne le stuff à l'unité
	
	Parameter(s):
		1: OBJECT - Unité sur lequel le loadout doit être assigné
		2: STRING - Le nom du loadout. Les noms possibles sont:
			
			Commandement:
				- "int_loadout_commandement_chef_operation"
				- "int_loadout_commandement_second_operation"
				- "int_loadout_commandement_op_radio"
			
			58th Rescue Squadron:
				- "int_loadout_58th_pilote"
				- "int_loadout_58th_artilleur"
				- "int_loadout_58th_chef_equipe"
				- "int_loadout_58th_medic"
			
			7th Cavalry Regiment:
				- "int_loadout_7th_commandant"
				- "int_loadout_7th_tireur"
				- "int_loadout_7th_pilote"
			
			3rd Cavalry Regiment:
				- "int_loadout_3rd_commandant"
				- "int_loadout_3rd_tireur"
				- "int_loadout_3rd_pilote"
			
			1er Régiment Parachutiste d'Infanterie de Marine:
				- "int_loadout_1erRPIMa_chef_groupe"
				- "int_loadout_1erRPIMa_jtac"
				- "int_loadout_1erRPIMa_grenadier"
				- "int_loadout_1erRPIMa_mitrailleur"
				- "int_loadout_1erRPIMa_operateur"
				- "int_loadout_1erRPIMa_medic"
				- "int_loadout_1erRPIMa_tireur_precision"
			
			126eme Régiment d'Infanterie:
				- "int_loadout_126RI_chef_section"
				- "int_loadout_126RI_mitrailleur_lourd"
				- "int_loadout_126RI_assistant_mitrailleur"
			
			24eme Régiment d'Infanterie:
				- "int_loadout_24RI_chef_groupe"
				- "int_loadout_24RI_chef_equipe"
				- "int_loadout_24RI_fusilier"
				- "int_loadout_24RI_mitrailleur"
				- "int_loadout_24RI_ac"
				- "int_loadout_24RI_tireur_precision"
				
			92eme Régiment d'Infanterie:
				- "int_loadout_92RI_chef_groupe"
				- "int_loadout_92RI_chef_equipe"
				- "int_loadout_92RI_fusilier"
				- "int_loadout_92RI_mitrailleur"
				- "int_loadout_92RI_tireur_precision"

	
	Returns:
		Nothing
*/

if (!params ["_unit", "loadout"]) exitWith {
	["L'unité ou le loadout n'est pas défini"] call BIS_fnc_error;
};

switch _loadout do {
	case "mbg_command": { [_unit] call INT_fnc_loadout_qg };

	case "com_cdo": { [_unit] call INT_fnc_loadout_commandement_chef_operation };
	case "com_oa": { [_unit] call INT_fnc_loadout_commandement_second_operation };

	case "82nd_pilote_uh60": { [_unit] call INT_fnc_loadout_82nd_pilote };
	case "82nd_copilote_uh60": { [_unit] call INT_fnc_loadout_82nd_artilleur };
	case "82nd_pilote_ah64": { [_unit] call INT_fnc_loadout_82nd_chef_equipe };
	case "82nd_copilote_ah64": { [_unit] call INT_fnc_loadout_82nd_medic };
	case "82nd_medecin_chef": { [_unit] call INT_fnc_loadout_82nd_chef_equipe };
	case "82nd_medecin": { [_unit] call INT_fnc_loadout_82nd_medic };
	case "82nd_auxsan": { [_unit] call INT_fnc_loadout_82nd_medic };

	case "fs_sl": { [_unit] call INT_fnc_loadout_82nd_chef_equipe };
	case "fs_jtac": { [_unit] call INT_fnc_loadout_82nd_medic };
	case "fs_tp": { [_unit] call INT_fnc_loadout_82nd_chef_equipe };
	case "fs_auxsan": { [_unit] call INT_fnc_loadout_82nd_medic };
	case "fs_operateur": { [_unit] call INT_fnc_loadout_82nd_medic };

	case "7th_chef_abrams": { [_unit] call INT_fnc_loadout_82nd_chef_equipe };
	case "7th_tireur_abrams": { [_unit] call INT_fnc_loadout_82nd_medic };
	case "7th_conducteur_abrams": { [_unit] call INT_fnc_loadout_82nd_chef_equipe };
	case "7th_chef_bradley": { [_unit] call INT_fnc_loadout_82nd_chef_equipe };
	case "7th_tireur_bradley": { [_unit] call INT_fnc_loadout_82nd_medic };
	case "7th_conducteur_bradley": { [_unit] call INT_fnc_loadout_82nd_medic };

	case "92ri_sl": { [_unit] call INT_fnc_loadout_82nd_chef_equipe };
	case "92ri_opr": { [_unit] call INT_fnc_loadout_82nd_medic };
	case "92ri_chef_groupe": { [_unit] call INT_fnc_loadout_82nd_chef_equipe };
	case "92ri_mg": { [_unit] call INT_fnc_loadout_82nd_medic };
	case "92ri_mg_leger": { [_unit] call INT_fnc_loadout_82nd_medic };
	case "92ri_assist_mg": { [_unit] call INT_fnc_loadout_82nd_medic };
	case "92ri_auxsan": { [_unit] call INT_fnc_loadout_82nd_medic };
	case "92ri_fusilier": { [_unit] call INT_fnc_loadout_82nd_medic };

	default { };
};