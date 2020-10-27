/*
	Author: [GIE] Gavin "Morbakos" Sertix
	
	Description:
		Ajoute les actions ACE afin de réinitialiser son loadout sur l'objet passé en paramètre.
	
	Parameter(s):
		1: OBJECT - Objet sur lequel les actions seront ajoutées
		2: BOOLEAN (Optionnal, default: true) - Si true, une action molette sera ajoutée pour informer les joueurs d'utiliser le menu ACE.
	
	Returns:
		Nothing
*/

params ["_box", ["_action", true, [true]]];

if !(_box isEqualType objNull) exitWith {
	hint "Le paramètre n'est pas un objet !";
};

// Ajout de l'action molette
if (_action) then {
	_box addAction ["<t color='#B71C1C'>Utiliser le menu ACE", {
		hint "Le menu ACE doit être utilisé pour récupérer le loadout approprié.";
	}];
};

/********************************************************************** 
************************* ACTION 3rd CAV ******************************
**********************************************************************/
private _int_action_loadout_3rd_cav = [
	"_int_action_loadout_3rd_cav",
	"Loadout 3rd Cavalry",
	"ORBAT\3rdCav.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_3rd_cav_commandant = [
	"_int_action_loadout_3rd_cav_commandant",
	"Chef de bord",
	"a3\ui_f\data\igui\cfg\actions\getincommander_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_3rd_cav_tireur = [
	"_int_action_loadout_3rd_cav_tireur",
	"Tireur",
	"a3\ui_f\data\igui\cfg\actions\getingunner_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_3rd_cav_pilote = [
	"_int_action_loadout_3rd_cav_pilote",
	"Pilote",
	"a3\ui_f\data\igui\cfg\actions\getindriver_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

// Ajout des actions 3rd cav
[ // Catégorie
	_box,
	0,
	["ACE_MainActions"],
	_int_action_loadout_3rd_cav
] call ace_interact_menu_fnc_addActionToObject;

[ // CdC
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_3rd_cav"],
	_int_action_loadout_3rd_cav_commandant
] call ace_interact_menu_fnc_addActionToObject;

[ // Tireur
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_3rd_cav"],
	_int_action_loadout_3rd_cav_tireur
] call ace_interact_menu_fnc_addActionToObject;

[ // Pilote
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_3rd_cav"],
	_int_action_loadout_3rd_cav_pilote
] call ace_interact_menu_fnc_addActionToObject;


/********************************************************************** 
************************* ACTION 7th CAV ******************************
**********************************************************************/
private _int_action_loadout_7th_cav = [
	"_int_action_loadout_7th_cav",
	"Loadout 7th Cavalry",
	"ORBAT\7thCav.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_7th_cav_commandant = [
	"_int_action_loadout_7th_cav_commandant",
	"Chef de bord",
	"a3\ui_f\data\igui\cfg\actions\getincommander_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_7th_cav_tireur = [
	"_int_action_loadout_7th_cav_tireur",
	"Tireur",
	"a3\ui_f\data\igui\cfg\actions\getingunner_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_7th_cav_pilote = [
	"_int_action_loadout_7th_cav_pilote",
	"Pilote",
	"a3\ui_f\data\igui\cfg\actions\getindriver_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

// Ajout des actions 7th cav
[ // Catégorie
	_box,
	0,
	["ACE_MainActions"],
	_int_action_loadout_7th_cav
] call ace_interact_menu_fnc_addActionToObject;

[ // CdC
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_7th_cav"],
	_int_action_loadout_7th_cav_commandant
] call ace_interact_menu_fnc_addActionToObject;

[ // Tireur
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_7th_cav"],
	_int_action_loadout_7th_cav_tireur
] call ace_interact_menu_fnc_addActionToObject;

[ // Pilote
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_7th_cav"],
	_int_action_loadout_7th_cav_pilote
] call ace_interact_menu_fnc_addActionToObject;


/********************************************************************** 
************************* ACTION 24 RI ********************************
**********************************************************************/
private _int_action_loadout_24_RI = [
	"_int_action_loadout_24_RI",
	"Loadout 24 RI",
	"ORBAT\24RI.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_24_RI_chef_de_section = [
	"_int_action_loadout_24_RI_chef_de_section",
	"Chef de section",
	"a3\ui_f\data\igui\cfg\actions\getincommander_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_24_RI_mitrailleur = [
	"_int_action_loadout_24_RI_mitrailleur",
	"Mitrailleur",
	"a3\ui_f\data\igui\cfg\WeaponIcons\mg_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_24_RI_tp = [
	"_int_action_loadout_24_RI_tp",
	"Tireur de précision",
	"a3\ui_f\data\igui\cfg\WeaponIcons\srifle_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_24_RI_fusilier = [
	"_int_action_loadout_24_RI_fusilier",
	"Fusilier",
	"a3\ui_f\data\igui\cfg\simpleTasks\types\rifle_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_24_RI_chef_equipe = [
	"_int_action_loadout_24_RI_chef_equipe",
	"Chef d'équipe",
	"a3\ui_f\data\igui\cfg\actions\getincommander_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_24_RI_at = [
	"_int_action_loadout_24_RI_at",
	"Tireur AT",
	"a3\ui_f\data\igui\cfg\WeaponIcons\at_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

// Ajout des actions 24 RI
[ // Catégorie
	_box,
	0,
	["ACE_MainActions"],
	_int_action_loadout_24_RI
] call ace_interact_menu_fnc_addActionToObject;

[ // Chef de section
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_24_RI"],
	_int_action_loadout_24_RI_chef_de_section
] call ace_interact_menu_fnc_addActionToObject;

[ // Chef d'équipe
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_24_RI"],
	_int_action_loadout_24_RI_chef_equipe
] call ace_interact_menu_fnc_addActionToObject;

[ // Mitrailleur
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_24_RI"],
	_int_action_loadout_24_RI_mitrailleur
] call ace_interact_menu_fnc_addActionToObject;

[ // TP
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_24_RI"],
	_int_action_loadout_24_RI_tp
] call ace_interact_menu_fnc_addActionToObject;

[ // Fusilier
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_24_RI"],
	_int_action_loadout_24_RI_fusilier
] call ace_interact_menu_fnc_addActionToObject;

[ // AT
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_24_RI"],
	_int_action_loadout_24_RI_at
] call ace_interact_menu_fnc_addActionToObject;


/********************************************************************** 
************************* ACTION 92 RI ********************************
**********************************************************************/
private _int_action_loadout_92_RI = [
	"_int_action_loadout_92_RI",
	"Loadout 92 RI",
	"ORBAT\92RI.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_92_RI_chef_de_section = [
	"_int_action_loadout_92_RI_chef_de_section",
	"Chef de section",
	"a3\ui_f\data\igui\cfg\actions\getincommander_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_92_RI_mitrailleur = [
	"_int_action_loadout_92_RI_mitrailleur",
	"Mitrailleur",
	"a3\ui_f\data\igui\cfg\WeaponIcons\mg_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_92_RI_tp = [
	"_int_action_loadout_92_RI_tp",
	"Tireur de précision",
	"a3\ui_f\data\igui\cfg\WeaponIcons\srifle_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_92_RI_fusilier = [
	"_int_action_loadout_92_RI_fusilier",
	"Fusilier",
	"a3\ui_f\data\igui\cfg\simpleTasks\types\rifle_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_92_RI_chef_equipe = [
	"_int_action_loadout_92_RI_chef_equipe",
	"Chef d'équipe",
	"a3\ui_f\data\igui\cfg\actions\getincommander_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_92_RI_at = [
	"_int_action_loadout_92_RI_at",
	"Tireur AT",
	"a3\ui_f\data\igui\cfg\WeaponIcons\at_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

// Ajout des actions 24 RI
[ // Catégorie
	_box,
	0,
	["ACE_MainActions"],
	_int_action_loadout_92_RI
] call ace_interact_menu_fnc_addActionToObject;

[ // Chef de section
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_92_RI"],
	_int_action_loadout_92_RI_chef_de_section
] call ace_interact_menu_fnc_addActionToObject;

[ // Chef d'équipe
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_92_RI"],
	_int_action_loadout_92_RI_chef_equipe
] call ace_interact_menu_fnc_addActionToObject;

[ // Mitrailleur
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_92_RI"],
	_int_action_loadout_92_RI_mitrailleur
] call ace_interact_menu_fnc_addActionToObject;

[ // TP
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_92_RI"],
	_int_action_loadout_92_RI_tp
] call ace_interact_menu_fnc_addActionToObject;

[ // Fusilier
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_92_RI"],
	_int_action_loadout_92_RI_fusilier
] call ace_interact_menu_fnc_addActionToObject;

[ // AT
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_92_RI"],
	_int_action_loadout_92_RI_at
] call ace_interact_menu_fnc_addActionToObject;


/********************************************************************** 
************************* ACTION 126 RI ********************************
**********************************************************************/
private _int_action_loadout_126_RI = [
	"_int_action_loadout_126_RI",
	"Loadout 126 RI",
	"ORBAT\126RI.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_126_RI_chef_de_section = [
	"_int_action_loadout_126_RI_chef_de_section",
	"Chef de section",
	"a3\ui_f\data\igui\cfg\actions\getincommander_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_126_RI_mitrailleur = [
	"_int_action_loadout_126_RI_mitrailleur",
	"Mitrailleur",
	"a3\ui_f\data\igui\cfg\WeaponIcons\mg_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_126_RI_tp = [
	"_int_action_loadout_126_RI_tp",
	"Tireur de précision",
	"a3\ui_f\data\igui\cfg\WeaponIcons\srifle_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_126_RI_fusilier = [
	"_int_action_loadout_126_RI_fusilier",
	"Fusilier",
	"a3\ui_f\data\igui\cfg\simpleTasks\types\rifle_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_126_RI_chef_equipe = [
	"_int_action_loadout_126_RI_chef_equipe",
	"Chef d'équipe",
	"a3\ui_f\data\igui\cfg\actions\getincommander_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_126_RI_at = [
	"_int_action_loadout_126_RI_at",
	"Tireur AT",
	"a3\ui_f\data\igui\cfg\WeaponIcons\at_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

// Ajout des actions 24 RI
[ // Catégorie
	_box,
	0,
	["ACE_MainActions"],
	_int_action_loadout_126_RI
] call ace_interact_menu_fnc_addActionToObject;

[ // Chef de section
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_126_RI"],
	_int_action_loadout_126_RI_chef_de_section
] call ace_interact_menu_fnc_addActionToObject;

[ // Chef d'équipe
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_126_RI"],
	_int_action_loadout_126_RI_chef_equipe
] call ace_interact_menu_fnc_addActionToObject;

[ // Mitrailleur
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_126_RI"],
	_int_action_loadout_126_RI_mitrailleur
] call ace_interact_menu_fnc_addActionToObject;

[ // TP
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_126_RI"],
	_int_action_loadout_126_RI_tp
] call ace_interact_menu_fnc_addActionToObject;

[ // Fusilier
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_126_RI"],
	_int_action_loadout_126_RI_fusilier
] call ace_interact_menu_fnc_addActionToObject;

[ // AT
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_126_RI"],
	_int_action_loadout_126_RI_at
] call ace_interact_menu_fnc_addActionToObject;


/********************************************************************** 
************************* ACTION 58th RS ********************************
**********************************************************************/
private _int_action_loadout_58th_RS = [
	"_int_action_loadout_58th_RS",
	"Loadout 58th RS",
	"ORBAT\58thRS.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_58th_RS_pilote = [
	"_int_action_loadout_58th_RS_chef_de_section",
	"Pilote",
	"a3\ui_f\data\igui\cfg\actions\getincommander_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_58th_RS_atrilleur = [
	"_int_action_loadout_58th_RS_atrilleur",
	"Artilleur",
	"a3\ui_f\data\igui\cfg\WeaponIcons\mg_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_58th_RS_chef_equipe = [
	"_int_action_loadout_58th_RS_chef_equipe",
	"Chef d'équipe",
	"a3\ui_f\data\igui\cfg\actions\getincommander_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_58th_RS_medic = [
	"_int_action_loadout_58th_RS_medic",
	"Tireur medic",
	"a3\ui_f\data\igui\cfg\actions\heal_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

// Ajout des actions 24 RI
[ // Catégorie
	_box,
	0,
	["ACE_MainActions"],
	_int_action_loadout_58th_RS
] call ace_interact_menu_fnc_addActionToObject;

[ // Pilote
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_58th_RS"],
	_int_action_loadout_58th_RS_pilote
] call ace_interact_menu_fnc_addActionToObject;

[ // Artilleur
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_58th_RS"],
	_int_action_loadout_58th_RS_atrilleur
] call ace_interact_menu_fnc_addActionToObject;

[ // Chef d'équipe
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_58th_RS"],
	_int_action_loadout_58th_RS_chef_equipe
] call ace_interact_menu_fnc_addActionToObject;

[ // Medic
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_58th_RS"],
	_int_action_loadout_58th_RS_medic
] call ace_interact_menu_fnc_addActionToObject;

/********************************************************************** 
************************* ACTION 1er RPIMa ********************************
**********************************************************************/
private _int_action_loadout_1er_RPIMa = [
	"_int_action_loadout_1er_RPIMa",
	"Loadout 58th RS",
	"ORBAT\1erRPIMa.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_1er_RPIMa_pilote = [
	"_int_action_loadout_1er_RPIMa_chef_de_section",
	"Pilote",
	"a3\ui_f\data\igui\cfg\actions\getincommander_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_1er_RPIMa_atrilleur = [
	"_int_action_loadout_1er_RPIMa_atrilleur",
	"Artilleur",
	"a3\ui_f\data\igui\cfg\WeaponIcons\mg_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_1er_RPIMa_chef_equipe = [
	"_int_action_loadout_1er_RPIMa_chef_equipe",
	"Chef d'équipe",
	"a3\ui_f\data\igui\cfg\actions\getincommander_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _int_action_loadout_1er_RPIMa_medic = [
	"_int_action_loadout_1er_RPIMa_medic",
	"Tireur medic",
	"a3\ui_f\data\igui\cfg\actions\heal_ca.paa",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

// Ajout des actions 24 RI
[ // Catégorie
	_box,
	0,
	["ACE_MainActions"],
	_int_action_loadout_1er_RPIMa
] call ace_interact_menu_fnc_addActionToObject;

[ // Pilote
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_1er_RPIMa"],
	_int_action_loadout_1er_RPIMa_pilote
] call ace_interact_menu_fnc_addActionToObject;

[ // Artilleur
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_1er_RPIMa"],
	_int_action_loadout_1er_RPIMa_atrilleur
] call ace_interact_menu_fnc_addActionToObject;

[ // Chef d'équipe
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_1er_RPIMa"],
	_int_action_loadout_1er_RPIMa_chef_equipe
] call ace_interact_menu_fnc_addActionToObject;

[ // Medic
	_box,
	0,
	["ACE_MainActions", "_int_action_loadout_1er_RPIMa"],
	_int_action_loadout_1er_RPIMa_medic
] call ace_interact_menu_fnc_addActionToObject;