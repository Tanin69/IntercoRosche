// Définition du mode DEBUG (en éditeur)
if (!isMultiplayer) then {
	DEBUG = true;
};

PHASE_MISSION = 0;

//Récupère la liste de tous les marqueurs LUCY pour les masquer et les blacklister pour GDC_fnc_chooseSpawnPos
private _tbMrk = allMapMarkers select {["mrk", _x, true] call BIS_fnc_inString};

//Masque les marqueurs
{_x setMarkerAlpha 0.0} forEach _tbMrk;

//PLUTO Opfor
[
	opfor,		        //0 camp
	[1000,2000,6000],	//1 revealRange [man,land,air]
	[1500,2000,3000],	//2 sensorRange [man,land,air]
	120,			    //3 QRFtimeout
	[1000,3000,6000],	//4 QRFrange [man,land,air]
	[20,30,60],		    //5 QRFdelay [min,mid,max]
	240,			    //6 ARTYtimeout
	[20,30,60],		    //7 ARTYdelay [min,mid,max]
	[1,2,4],		    //8 ARTYrounds [min,mid,max]
	[0,40,100]		    //9 ARTYerror [min,mid,max]
] call GDC_fnc_pluto;

gdc_plutoDebug = false;

//On adapte le nombre d'hostiles par rapport au nombre de joueurs
nbJoueurs = playersNumber west; //-> à initialiser via la console au début de la partie

/* Paramil class names :
O_G_Soldier_F = rifleman
O_G_Soldier_lite_F = rifleman 2
O_G_Soldier_unarmed_F = rifleman 3
O_G_Soldier_AR_F = auto rifleman (PKM)
O_G_Soldier_A_F = porteur mun
O_G_Soldier_LAT_F = AT (RPG-26)
O_G_Soldier_LAT2_F = AA (9K38 Igla)
O_G_Soldier_SL_F = team leader
O_G_officer_F = instructeur armée régulière
*/

// Groupes PARAMIL. De 3 à 4 pax.
GROUPE_PARAMIL_PETIT = [
	["O_G_Soldier_lite_F","O_G_Soldier_LAT_F"],
	["O_G_Soldier_lite_F", "O_G_Soldier_LAT_F", "O_G_Soldier_lite_F"],
	["O_G_Soldier_AR_F", "O_G_Soldier_A_F", "O_G_Soldier_lite_F"],
	["O_G_Soldier_SL_F", "O_G_Soldier_LAT_F", "O_G_Soldier_F","O_G_Soldier_lite_F"],
	["O_G_Soldier_SL_F", "O_G_Soldier_LAT_F","O_G_Soldier_F", "O_G_Soldier_lite_F"],
	["O_G_Soldier_SL_F", "O_G_Soldier_LAT2_F","O_G_Soldier_AR_F", "O_G_Soldier_A_F"]
];

// Groupes PARAMIL. De 5 à 7 pax.
GROUPE_PARAMIL_MOYEN = [
	["O_G_Soldier_SL_F", "O_G_Soldier_F","O_G_Soldier_lite_F", "O_G_Soldier_F", "O_G_Soldier_LAT_F"],
	["O_G_Soldier_SL_F", "O_G_Soldier_LAT_F","O_G_Soldier_F", "O_G_Soldier_lite_F", "O_G_Soldier_A_F","O_G_Soldier_LAT_F"],
	["O_G_Soldier_SL_F", "O_G_Soldier_LAT_F","O_G_Soldier_AR_F", "O_G_Soldier_A_F","O_G_Soldier_F","O_G_Soldier_LAT2_F"],
	["O_G_Soldier_SL_F", "O_G_Soldier_LAT_F","O_G_Soldier_F", "O_G_Soldier_lite_F", "O_G_Soldier_A_F","O_G_Soldier_LAT2_F", "O_G_Soldier_A_F" ]

];

// Groupes PARAMIL. De 8 à 10 pax.
GROUPE_PARAMIL_GRAND = [
	["O_G_officer_F", "O_G_Soldier_LAT2_F","O_G_Soldier_lite_F", "O_G_Soldier_F", "O_G_Soldier_A_F", "O_G_Soldier_LAT_F","O_G_Soldier_LAT_F","O_G_Soldier_lite_F"],
	["O_G_officer_F", "O_G_Soldier_LAT_F","O_G_Soldier_F", "O_G_Soldier_LAT_F", "O_G_Soldier_A_F","O_G_Soldier_F", "O_G_Soldier_lite_F", "O_G_Soldier_AR_F","O_G_Soldier_LAT2_F"],
	["rhs_vmf_flora_officer", "O_G_Soldier_lite_F","O_G_Soldier_AR_F", "O_G_Soldier_A_F","O_G_Soldier_F","O_G_Soldier_LAT2_F", "O_G_Soldier_A_F", "O_G_Soldier_LAT_F","O_G_Soldier_LAT_F", "O_G_Soldier_lite_F"]
];

/* Ukraine class name :
rhs_vmf_flora_crew = équipage de blindé
rhs_vmf_flora_rifleman = rifleman
rhs_vmf_flora_machinegunner = auto rifleman
rhs_vmf_flora_machinegunner_assistant = porteur mun/assistant
rhs_vmf_flora_grenadier = grenadier
rhs_vmf_flora_LAT = AT (RPG-26)
rhs_vmf_flora_sergeant = squad leader
rhs_vmf_flora_junior_sergeant = team leader
rhs_vmf_flora_officer = officier
rhs_vmf_flora_medic = médic
*/

// Groupes Ukraine. 4 pax (fireteam).
GROUPE_OPFOR_PETIT = [
	["rhs_vmf_flora_junior_sergeant","rhs_vmf_flora_LAT","rhs_vmf_flora_rifleman","rhs_vmf_flora_rifleman"],
	["rhs_vmf_flora_junior_sergeant","rhs_vmf_flora_grenadier","rhs_vmf_flora_LAT","rhs_vmf_flora_rifleman"],
	["rhs_vmf_flora_junior_sergeant","rhs_vmf_flora_machinegunner","rhs_vmf_flora_machinegunner_assistant","rhs_vmf_flora_LAT"]
];

// Groupes Ukraine. 8 pax (escouade).
GROUPE_OPFOR_MOYEN = [
	["rhs_vmf_flora_sergeant", "rhs_vmf_flora_LAT","rhs_vmf_flora_LAT", "rhs_vmf_flora_rifleman", "rhs_vmf_flora_machinegunner_assistant","rhs_vmf_flora_machinegunner", "rhs_vmf_flora_grenadier","rhs_vmf_flora_medic"]
];

// Groupes Ukraine. 14 pax (grosse escouade).
GROUPE_OPFOR_GRAND = [
	["rhs_vmf_flora_officer","rhs_vmf_flora_medic", "rhs_vmf_flora_sergeant","rhs_vmf_flora_LAT", "rhs_vmf_flora_rifleman", "rhs_vmf_flora_rifleman", "rhs_vmf_flora_junior_sergeant","rhs_vmf_flora_machinegunner","rhs_vmf_flora_machinegunner_assistant","rhs_vmf_flora_grenadier","rhs_vmf_flora_junior_sergeant","rhs_vmf_flora_LAT","rhs_vmf_flora_rifleman","rhs_vmf_flora_rifleman"]
];

//LUCY
[0.5,"marker_suttorf",true,600.0,false,3600.0,true,true,"LIEUTENANT"] call GDC_fnc_lucyInit;
["loadout\loadout.sqf"] call GDC_fnc_lucyConfigLoadoutIA;

//Parachutage pour les FS
[pilote] call GDC_fnc_halo;

//Lancement du GPM sur le HC
if (!isServer && !hasInterface) then {
	[] spawn int_fnc_gamePhaseManager;
};

{
	[_x] call int_fnc_initCaisseLoadout;	
} forEach [caisse_loadout_abrams, caisse_loadout_bradley, caisse_loadout_fs, caisse_loadout_helico_cdo, caisse_loadout_infant, caisse_loadout_medic];