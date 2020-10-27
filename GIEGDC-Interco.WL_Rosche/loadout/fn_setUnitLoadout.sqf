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

params [
	"_unit",
	"_loadout"
];



if !(_loadout in ["int_loadout_commandement_chef_operation", "int_loadout_commandement_second_operation", "int_loadout_commandement_op_radio", "int_loadout_58th_pilote", "int_loadout_58th_artilleur", "int_loadout_58th_chef_equipe", "int_loadout_58th_medic", "int_loadout_7th_commandant", "int_loadout_7th_tireur", "int_loadout_7th_pilote", "int_loadout_3rd_commandant", "int_loadout_3rd_tireur", "int_loadout_3rd_pilote", "int_loadout_1erRPIMa_chef_groupe", "int_loadout_1erRPIMa_jtac", "int_loadout_1erRPIMa_grenadier", "int_loadout_1erRPIMa_mitrailleur", "int_loadout_1erRPIMa_operateur", "int_loadout_1erRPIMa_medic", "int_loadout_1erRPIMa_tireur_precision", "int_loadout_126RI_chef_section", "int_loadout_126RI_mitrailleur_lourd", "int_loadout_126RI_assistant_mitrailleur", "int_loadout_24RI_chef_groupe", "int_loadout_24RI_chef_equipe", "int_loadout_24RI_fusilier", "int_loadout_24RI_mitrailleur", "int_loadout_24RI_ac", "int_loadout_24RI_tireur_precision", "int_loadout_92RI_chef_groupe", "int_loadout_92RI_chef_equipe", "int_loadout_92RI_fusilier", "int_loadout_92RI_mitrailleur", "int_loadout_92RI_tireur_precision"]) exitWith {
    ["Le loadout %1 n'existe pas",_loadout] call BIS_fnc_error;
};

switch _loadout do {
	case "int_loadout_commandement_chef_operation": { [_unit] call INT_fnc_commandement_chef_operation };
	case "int_loadout_commandement_second_operation": { [_unit] call INT_fnc_commandement_second_operation };
	case "int_loadout_commandement_op_radio": { [_unit] call INT_fnc_commandement_op_radio };
	case "int_loadout_58th_pilote": { [_unit] call INT_fnc_58th_pilote };
	case "int_loadout_58th_artilleur": { [_unit] call INT_fnc_58th_artilleur };
	case "int_loadout_58th_chef_equipe": { [_unit] call INT_fnc_58th_chef_equipe };
	case "int_loadout_58th_medic": { [_unit] call INT_fnc_58th_medic };
	case "int_loadout_7th_commandant": { [_unit] call INT_fnc_7th_commandant };
	case "int_loadout_7th_tireur": { [_unit] call INT_fnc_7th_tireur };
	case "int_loadout_7th_pilote": { [_unit] call INT_fnc_7th_pilote };
	case "int_loadout_3rd_commandant": { [_unit] call INT_fnc_3rd_commandant };
	case "int_loadout_3rd_tireur": { [_unit] call INT_fnc_3rd_tireur };
	case "int_loadout_3rd_pilote": { [_unit] call INT_fnc_3rd_pilote };
	case "int_loadout_1erRPIMa_chef_groupe": { [_unit] call INT_fnc_1erRPIMa_chef_groupe };
	case "int_loadout_1erRPIMa_jtac": { [_unit] call INT_fnc_1erRPIMa_jtac };
	case "int_loadout_1erRPIMa_grenadier": { [_unit] call INT_fnc_1erRPIMa_grenadier };
	case "int_loadout_1erRPIMa_mitrailleur": { [_unit] call INT_fnc_1erRPIMa_mitrailleur };
	case "int_loadout_1erRPIMa_operateur": { [_unit] call INT_fnc_1erRPIMa_operateur };
	case "int_loadout_1erRPIMa_medic": { [_unit] call INT_fnc_1erRPIMa_medic };
	case "int_loadout_1erRPIMa_tireur_precision": { [_unit] call INT_fnc_1erRPIMa_tireur_precision };
	case "int_loadout_126RI_chef_section": { [_unit] call INT_fnc_126RI_chef_section };
	case "int_loadout_126RI_mitrailleur_lourd": { [_unit] call INT_fnc_126RI_mitrailleur_lourd };
	case "int_loadout_126RI_assistant_mitrailleur": { [_unit] call INT_fnc_126RI_assistant_mitrailleur };
	case "int_loadout_24RI_chef_groupe": { [_unit] call INT_fnc_24RI_chef_groupe };
	case "int_loadout_24RI_chef_equipe": { [_unit] call INT_fnc_24RI_chef_equipe };
	case "int_loadout_24RI_fusilier": { [_unit] call INT_fnc_24RI_fusilier };
	case "int_loadout_24RI_mitrailleur": { [_unit] call INT_fnc_24RI_mitrailleur };
	case "int_loadout_24RI_ac": { [_unit] call INT_fnc_24RI_ac };
	case "int_loadout_24RI_tireur_precision": { [_unit] call INT_fnc_24RI_tireur_precision };
	case "int_loadout_92RI_chef_groupe": { [_unit] call INT_fnc_92RI_chef_groupe };
	case "int_loadout_92RI_chef_equipe": { [_unit] call INT_fnc_92RI_chef_equipe };
	case "int_loadout_92RI_fusilier": { [_unit] call INT_fnc_92RI_fusilier };
	case "int_loadout_92RI_mitrailleur": { [_unit] call INT_fnc_92RI_mitrailleur };
	case "int_loadout_92RI_tireur_precision": { [_unit] call INT_fnc_92RI_tireur_precision };
	default { };
};