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
// Commandement
private _action_loadout_qg = [
	"_action_loadout_qg",
	"Loadout Battle Group Command",
	"",
	{ [player] call int_fnc_loadout_qg },
	{true}
] call ace_interact_menu_fnc_createAction;

private _action_loadout_commandement_chef_operation = [
	"_action_loadout_commandement_chef_operation",
	"Loadout Chef d'Opération",
	"",
	{ [player] call int_fnc_loadout_commandement_chef_operation },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_commandement_second_operation = [
	"_action_loadout_commandement_second_operation",
	"Loadout officier adjoint",
	"",
	{ [player] call int_fnc_loadout_commandement_second_operation },
	{true}
] call ace_interact_menu_fnc_createAction;

// 82nd
private _action_loadout_82nd_pilote_uh60 = [
	"_action_loadout_82nd_pilote_uh60",
	"Loadout pilote UH-60",
	"",
	{ [player] call int_fnc_loadout_82nd_pilote_uh60 },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_82nd_pilote_ah64 = [
	"_action_loadout_82nd_pilote_ah64",
	"Loadout pilote AH-64",
	"",
	{ [player] call int_fnc_loadout_82nd_copilote_uh60 },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_82nd_copilote_uh60 = [
	"_action_loadout_82nd_copilote_uh60",
	"Loadout copilote UH-60",
	"",
	{ [player] call int_fnc_loadout_82nd_pilote_ah64 },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_82nd_copilote_ah64 = [
	"_action_loadout_82nd_copilote_ah64",
	"Loadout copilote AH-64",
	"",
	{ [player] call int_fnc_loadout_82nd_copilote_ah64 },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_82nd_medecin_chef = [
	"_action_loadout_82nd_medecin_chef",
	"Loadout médecin-chef",
	"",
	{ [player] call int_fnc_loadout_82nd_medecin_chef },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_82nd_medecin = [
	"_action_loadout_82nd_medecin",
	"Loadout médecin",
	"",
	{ [player] call int_fnc_loadout_82nd_medecin },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_82nd_auxsan = [
	"_action_loadout_82nd_auxsan",
	"Loadout auxsan",
	"",
	{ [player] call int_fnc_loadout_82nd_auxsan },
	{true}
] call ace_interact_menu_fnc_createAction;

// FS
private _action_loadout_fs_sl = [
	"_action_loadout_fs_sl",
	"Loadout Chef de Section",
	"",
	{ [player] call int_fnc_loadout_fs_sl },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_fs_jtac = [
	"_action_loadout_fs_jtac",
	"Loadout JTAC",
	"",
	{ [player] call int_fnc_loadout_fs_jtac },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_fs_tp = [
	"_action_loadout_fs_tp",
	"Loadout TP",
	"",
	{ [player] call int_fnc_loadout_fs_tp },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_fs_auxsan = [
	"_action_loadout_fs_auxsan",
	"Loadout médecin",
	"",
	{ [player] call int_fnc_loadout_fs_auxsan },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_fs_operateur = [
	"_action_loadout_fs_operateur",
	"Loadout opérateur",
	"",
	{ [player] call int_fnc_loadout_fs_operateur },
	{true}
] call ace_interact_menu_fnc_createAction;

// 7th
private _action_loadout_7th_chef_abrams = [
	"_action_loadout_7th_chef_abrams",
	"Loadout Chef de char - Abrams",
	"",
	{ [player] call int_fnc_loadout_7th_chef_abrams  },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_7th_tireur_abrams = [
	"_action_loadout_7th_tireur_abrams",
	"Loadout tireur - Abrams",
	"",
	{ [player] call int_fnc_loadout_7th_tireur_abrams },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_7th_conducteur_abrams = [
	"_action_loadout_7th_conducteur_abrams",
	"Loadout pilote - Abrams",
	"",
	{ [player] call int_fnc_loadout_7th_conducteur_abrams },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_7th_chef_bradley = [
	"_action_loadout_7th_chef_bradley",
	"Loadout Chef de bord - Bradley",
	"",
	{ [player] call int_fnc_loadout_7th_chef_bradley },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_7th_tireur_bradley = [
	"_action_loadout_7th_tireur_bradley",
	"Loadout tireur - Bradley",
	"",
	{ [player] call int_fnc_loadout_7th_tireur_bradley },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_7th_conducteur_bradley = [
	"_action_loadout_7th_conducteur_bradley",
	"Loadout pilote - Bradley",
	"",
	{ [player] call int_fnc_loadout_7th_conducteur_bradley },
	{true}
] call ace_interact_menu_fnc_createAction;

// 92RI
private _action_loadout_92ri_sl = [
	"_action_loadout_92ri_sl",
	"Loadout Chef de Section mécanisée",
	"",
	{ [player] call int_fnc_loadout_92ri_sl },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_92ri_opr = [
	"_action_loadout_92ri_opr",
	"Loadout opérateur radio",
	"",
	{ [player] call int_fnc_loadout_92ri_opr },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_92ri_chef_groupe = [
	"_action_loadout_92ri_chef_groupe",
	"Loadout Chef de Groupe",
	"",
	{ [player] call int_fnc_loadout_92ri_chef_groupe },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_92ri_mg = [
	"_action_loadout_92ri_mg",
	"Loadout mitrailleur lourd",
	"",
	{ [player] call int_fnc_loadout_92ri_mg },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_92ri_mg_leger = [
	"_action_loadout_92ri_mg_leger",
	"Loadout mitralleur",
	"",
	{ [player] call int_fnc_loadout_92ri_mg_leger },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_92ri_assist_mg = [
	"_action_loadout_92ri_assist_mg",
	"Loadout assistant mitrailleur",
	"",
	{ [player] call int_fnc_loadout_92ri_assist_mg },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_92ri_auxsan = [
	"_action_loadout_92ri_auxsan",
	"Loadout auxsan",
	"",
	{ [player] call int_fnc_loadout_92ri_auxsan },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_loadout_92ri_fusilier = [
	"_action_loadout_92ri_fusilier",
	"Loadout fantassin",
	"",
	{ [player] call int_fnc_loadout_92ri_fusilier },
	{true}
] call ace_interact_menu_fnc_createAction;


// Actions pour les catégories
private _action_categorie_commandement = [
	"_action_categorie_commandement",
	"Loadout groupe commandement",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_categorie_82nd = [
	"_action_categorie_82nd",
	"Loadout 82nd Combat Aviation Brigade",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_categorie_fs = [
	"_action_categorie_fs",
	"Loadout 1er RPIMa",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_categorie_7th = [
	"_action_categorie_7th",
	"Loadout 7th Cavalry",
	"",
	{ },
	{true}
] call ace_interact_menu_fnc_createAction;
private _action_categorie_92ri = [
	"_action_categorie_92ri",
	"Loadout 92 RI",
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

// Actions 7th
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_7th"],
	_action_loadout_7th_chef_abrams
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_7th"],
	_action_loadout_7th_tireur_abrams
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_7th"],
	_action_loadout_7th_conducteur_abrams
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_7th"],
	_action_loadout_7th_chef_bradley
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_7th"],
	_action_loadout_7th_tireur_bradley
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_7th"],
	_action_loadout_7th_conducteur_bradley
] call ace_interact_menu_fnc_addActionToObject;

// Actions 92RI
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_92ri"],
	_action_loadout_92ri_sl
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_92ri"],
	_action_loadout_92ri_opr
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_92ri"],
	_action_loadout_92ri_chef_groupe
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_92ri"],
	_action_loadout_92ri_mg
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_92ri"],
	_action_loadout_92ri_mg_leger
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_92ri"],
	_action_loadout_92ri_assist_mg
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_92ri"],
	_action_loadout_92ri_auxsan
] call ace_interact_menu_fnc_addActionToObject;
[
	_box,
	0,
	["ACE_MainActions", "_action_categorie_92ri"],
	_action_loadout_92ri_fusilier
] call ace_interact_menu_fnc_addActionToObject;