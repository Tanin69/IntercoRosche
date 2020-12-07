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

// On créé toutes les actions
private _action_loadout_qg = [
	"_action_loadout_qg",
	"Loadout Battle Group Command",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

private _action_loadout_commandement_chef_operation = [
	"_action_loadout_commandement_chef_operation",
	"Loadout Chef d'Opération",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_commandement_second_operation = [
	"_action_loadout_commandement_second_operation",
	"Loadout officier adjoint",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;


private _action_loadout_82nd_pilote_uh60 = [
	"_action_loadout_82nd_pilote_uh60",
	"Loadout pilote UH-60",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_82nd_pilote_ah64 = [
	"_action_loadout_82nd_pilote_ah64",
	"Loadout pilote AH-64",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_82nd_copilote_uh60 = [
	"_action_loadout_82nd_copilote_uh60",
	"Loadout copilote UH-60",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_82nd_copilote_ah64 = [
	"_action_loadout_82nd_copilote_ah64",
	"Loadout copilote AH-64",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_82nd_medecin_chef = [
	"_action_loadout_82nd_medecin_chef",
	"Loadout médecin-chef",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_82nd_medecin = [
	"_action_loadout_82nd_medecin",
	"Loadout médecin",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_82nd_auxsan = [
	"_action_loadout_82nd_auxsan",
	"Loadout auxsan",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;


private _action_loadout_fs_sl = [
	"_action_loadout_fs_sl",
	"Loadout Chef de Section",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_fs_jtac = [
	"_action_loadout_fs_jtac",
	"Loadout JTAC",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_fs_tp = [
	"_action_loadout_fs_tp",
	"Loadout TP",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_fs_auxsan = [
	"_action_loadout_fs_auxsan",
	"Loadout médecin",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_fs_operateur = [
	"_action_loadout_fs_operateur",
	"Loadout opérateur",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;


private _action_loadout_7th_chef_abrams = [
	"_action_loadout_7th_chef_abrams",
	"Loadout Chef de char - Abrams",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_7th_tireur_abrams = [
	"_action_loadout_7th_tireur_abrams",
	"Loadout tireur - Abrams",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_7th_conducteur_abrams = [
	"_action_loadout_7th_conducteur_abrams",
	"Loadout pilote - Abrams",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_7th_chef_bradley = [
	"_action_loadout_7th_chef_bradley",
	"Loadout Chef de bord - Bradley",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_7th_tireur_bradley = [
	"_action_loadout_7th_tireur_bradley",
	"Loadout tireur - Bradley",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_7th_conducteur_bradley = [
	"_action_loadout_7th_conducteur_bradley",
	"Loadout pilote - Bradley",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;


private _action_loadout_92ri_sl = [
	"_action_loadout_92ri_sl",
	"Loadout Chef de Section mécanisée",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_92ri_opr = [
	"_action_loadout_92ri_opr",
	"Loadout opérateur radio",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_92ri_chef_groupe = [
	"_action_loadout_92ri_chef_groupe",
	"Loadout Chef de Groupe",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_92ri_mg = [
	"_action_loadout_92ri_mg",
	"Loadout mitrailleur lourd",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_92ri_mg_leger = [
	"_action_loadout_92ri_mg_leger",
	"Loadout mitralleur",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_92ri_assist_mg = [
	"_action_loadout_92ri_assist_mg",
	"Loadout assistant mitrailleur",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_92ri_auxsan = [
	"_action_loadout_92ri_auxsan",
	"Loadout auxsan",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_92ri_fusilier = [
	"_action_loadout_92ri_fusilier",
	"Loadout fantassin",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

// Actions pour les catégories
private _action_categorie_commandement = [
	"_action_categorie_commandement",
	"Loadout fantassin",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_categorie_82nd = [
	"_action_categorie_82nd",
	"Loadout fantassin",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_categorie_fs = [
	"_action_categorie_fs",
	"Loadout fantassin",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_categorie_7th = [
	"_action_categorie_7th",
	"Loadout fantassin",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_categorie_92ri = [
	"_action_categorie_92ri",
	"Loadout fantassin",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;

// On ajoute les actions à la caisse
[ // Catégorie
	_box,
	0,
	["ACE_MainActions"],
	_action_categorie_commandement
] call ace_interact_menu_fnc_addActionToObject;
[ // Catégorie
	_box,
	0,
	["ACE_MainActions"],
	_action_categorie_82nd
] call ace_interact_menu_fnc_addActionToObject;
[ // Catégorie
	_box,
	0,
	["ACE_MainActions"],
	_action_categorie_fs
] call ace_interact_menu_fnc_addActionToObject;
[ // Catégorie
	_box,
	0,
	["ACE_MainActions"],
	_action_categorie_7th
] call ace_interact_menu_fnc_addActionToObject;
[ // Catégorie
	_box,
	0,
	["ACE_MainActions"],
	_action_categorie_92ri
] call ace_interact_menu_fnc_addActionToObject;

// Actions commandement
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_commandement"],
	_action_loadout_qg
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_commandement"],
	_action_loadout_commandement_chef_operation
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_commandement"],
	_action_loadout_commandement_second_operation
] call ace_interact_menu_fnc_addActionToObject;

// Actions 82nd
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_82nd"],
	_action_loadout_82nd_pilote_uh60
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_82nd"],
	_action_loadout_82nd_pilote_ah64
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_82nd"],
	_action_loadout_82nd_copilote_uh60
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_82nd"],
	_action_loadout_82nd_copilote_ah64
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_82nd"],
	_action_loadout_82nd_medecin_chef
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_82nd"],
	_action_loadout_82nd_medecin
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_82nd"],
	_action_loadout_82nd_auxsan
] call ace_interact_menu_fnc_addActionToObject;

// Actions FS
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_fs"],
	_action_loadout_fs_sl
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_fs"],
	_action_loadout_fs_jtac
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_fs"],
	_action_loadout_fs_tp
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_fs"],
	_action_loadout_fs_auxsan
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_fs"],
	_action_loadout_fs_operateur
] call ace_interact_menu_fnc_addActionToObject;