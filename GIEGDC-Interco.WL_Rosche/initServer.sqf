//PLUTO Opfor
[
	opfor,		        //0 camp
	[1000,2000,6000],	//1 revealRange [man,land,air]
	[1500,2000,3000],	//2 sensorRange [man,land,air]
	120,			    //3 QRFtimeout
	[1000,2000,6000],	//4 QRFrange [man,land,air]
	[20,30,60],		    //5 QRFdelay [min,mid,max]
	240,			    //6 ARTYtimeout
	[20,30,60],		    //7 ARTYdelay [min,mid,max]
	[1,2,4],		    //8 ARTYrounds [min,mid,max]
	[0,40,100]		    //9 ARTYerror [min,mid,max]
] call GDC_fnc_pluto;

gdc_plutoDebug = true;

//On adapte le nombre d'hostiles par rapport au nombre de joueurs
nbJoueurs = playersNumber west;

/*
//Ajoute le cargo aux bagnoles
private _veh = lada;
clearMagazineCargoGlobal _veh;
clearWeaponCargoGlobal _veh;
clearItemCargoGlobal _veh;
clearBackpackCargoGlobal _veh;
_veh addItemCargoGlobal ["ACE_packingBandage",20];
_veh addItemCargoGlobal ["ACE_quikclot",10];
_veh addItemCargoGlobal ["ACE_elasticBandage",10];
_veh addItemCargoGlobal ["ACE_fieldDressing",20];
_veh addItemCargoGlobal ["ACE_salineIV_250",10];
_veh addItemCargoGlobal ["ACE_salineIV_500",5];
_veh addItemCargoGlobal ["ACE_salineIV",5];
_veh addItemCargoGlobal ["ACE_morphine",10];
_veh addItemCargoGlobal ["ACE_atropine",4];
_veh addItemCargoGlobal ["ACE_tourniquet",8];
_veh addItemCargoGlobal ["ACE_splint",10];
_veh addItemCargoGlobal ["ACE_surgicalKit",1];
_veh addItemCargoGlobal ["Toolkit",1];
_veh addItemCargoGlobal ["CUP_sgun_M1014_Entry",2];
_veh addItemCargoGlobal ["CUP_arifle_OTS14_GROZA_762_Grip",2];
_veh addItemCargoGlobal ["CUP_srifle_CZ550_rail",1];
_veh addItemCargoGlobal ["cup_optic_compm2_low",1];
_veh addItemCargoGlobal ["rhs_acc_rakurspm",1];
_veh addItemCargoGlobal ["CUP_Hgun_Deagle",1];
_veh addItemCargoGlobal ["CUP_hgun_TaurusTracker455",1];
_veh addItemCargoGlobal ["rhsusf_weap_m9",2];
_veh addMagazineCargoGlobal ["CUP_6Rnd_B_Beneli_74Pellets", 10];
_veh addMagazineCargoGlobal ["CUP_6Rnd_B_Benelli_74Slug", 20];
_veh addMagazineCargoGlobal ["CUP_30Rnd_TE1_Green_Tracer_762x39_AK103_bakelite_M", 14];
_veh addMagazineCargoGlobal ["CUP_5x_22_LR_17_HMR_M", 10];
_veh addMagazineCargoGlobal ["CUP_7Rnd_50AE_Deagle", 20];
_veh addMagazineCargoGlobal ["CUP_6Rnd_45ACP_M", 20];
_veh addMagazineCargoGlobal ["rhsusf_mag_15Rnd_9x19_FMJ", 20];
_veh addItemCargoGlobal ["ACRE_PRC148",2];
_veh addItemCargoGlobal ["ACRE_PRC343",4];
_veh addItemCargoGlobal ["ACRE_CableTie",10];
_veh addItemCargoGlobal ["Binocular",4];

private _veh = skoda;
clearMagazineCargoGlobal _veh;
clearWeaponCargoGlobal _veh;
clearItemCargoGlobal _veh;
clearBackpackCargoGlobal _veh;
_veh addItemCargoGlobal ["ACE_packingBandage",20];
_veh addItemCargoGlobal ["ACE_quikclot",10];
_veh addItemCargoGlobal ["ACE_elasticBandage",10];
_veh addItemCargoGlobal ["ACE_fieldDressing",20];
_veh addItemCargoGlobal ["ACE_salineIV_250",10];
_veh addItemCargoGlobal ["ACE_salineIV_500",5];
_veh addItemCargoGlobal ["ACE_salineIV",5];
_veh addItemCargoGlobal ["ACE_morphine",10];
_veh addItemCargoGlobal ["ACE_atropine",4];
_veh addItemCargoGlobal ["ACE_tourniquet",8];
_veh addItemCargoGlobal ["ACE_splint",10];
_veh addItemCargoGlobal ["ACE_surgicalKit",1];
_veh addItemCargoGlobal ["Toolkit",1];
_veh addItemCargoGlobal ["CUP_sgun_M1014_Entry",2];
_veh addItemCargoGlobal ["CUP_arifle_OTS14_GROZA_762_Grip",2];
_veh addItemCargoGlobal ["CUP_Hgun_Deagle",1];
_veh addItemCargoGlobal ["CUP_hgun_TaurusTracker455",1];
_veh addItemCargoGlobal ["rhsusf_weap_m9",2];
_veh addMagazineCargoGlobal ["CUP_6Rnd_B_Beneli_74Pellets", 10];
_veh addMagazineCargoGlobal ["CUP_6Rnd_B_Benelli_74Slug", 20];
_veh addMagazineCargoGlobal ["CUP_30Rnd_TE1_Green_Tracer_762x39_AK103_bakelite_M", 14];
_veh addMagazineCargoGlobal ["CUP_7Rnd_50AE_Deagle", 20];
_veh addMagazineCargoGlobal ["CUP_6Rnd_45ACP_M", 20];
_veh addMagazineCargoGlobal ["rhsusf_mag_15Rnd_9x19_FMJ", 20];
_veh addItemCargoGlobal ["ACRE_PRC148",2];
_veh addItemCargoGlobal ["ACRE_PRC343",4];
_veh addItemCargoGlobal ["ACRE_CableTie",10];
_veh addItemCargoGlobal ["Binocular",4];
*/

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

// Groupes PARAMIL. De 2 à 4 pax.
GROUPE_PARAMIL_PETIT = [
	["O_G_Soldier_lite_F","O_G_Soldier_LAT_F"],
	["O_G_Soldier_lite_F", "O_G_Soldier_unarmed_F"],
	["O_G_Soldier_AR_F", "O_G_Soldier_A_F"],
	["O_G_Soldier_LAT_F", "O_G_Soldier_F","O_G_Soldier_lite_F"],
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

//Spawn des hostiles -> pour les tests, on spawn tout en masse, mais il faudra faire les spawn en fonction du plan
[] spawn {
	execVM "spawn_IA\spawnHostile_Suttorf_1.sqf";
	execVM "spawn_IA\spawnHostile_Suttorf_2.sqf";
	execVM "spawn_IA\spawnHostile_Suttorf_3.sqf";
	execVM "spawn_IA\spawnHostile_Jarlitz_1.sqf";
	execVM "spawn_IA\spawnHostile_Jarlitz_2.sqf";
	execVM "spawn_IA\spawnHostile_Jarlitz_3.sqf";
	execVM "spawn_IA\spawnHostile_Jarlitz_4.sqf";
	execVM "spawn_IA\spawnHostile_Klein_1.sqf";
	execVM "spawn_IA\spawnHostile_Klein_2.sqf";
	execVM "spawn_IA\spawnHostile_Klein_3.sqf";
	execVM "spawn_IA\spawnHostile_Klein_4.sqf";
	execVM "spawn_IA\spawnHostile_Molbath_1.sqf";
	execVM "spawn_IA\spawnHostile_Molbath_2.sqf";
	execVM "spawn_IA\spawnHostile_Schlieckau_1.sqf";
	execVM "spawn_IA\spawnHostile_Schlieckau_2.sqf";
};

["mrkWpTanks_1"] call int_fnc_spawnGrpTank;
sleep 90;
["mrkWpTanks_2"] call int_fnc_spawnGrpTank;
sleep 90;
["mrkWpTanks_3"] call int_fnc_spawnGrpTank;
sleep 90;

[["mrkSpMeca_1","mrkWpUnloadMeca_1","mrkWpSADMeca_1"],opfor,GROUPE_OPFOR_MOYEN,nil,230] spawn int_fnc_spawnMechInfantry;
sleep 60;
[["mrkSpMeca_2","mrkWpUnloadMeca_2","mrkWpSADMeca_2"],opfor,GROUPE_OPFOR_MOYEN,nil,230] spawn int_fnc_spawnMechInfantry;
sleep 60;
[["mrkSpMeca_3","mrkWpUnloadMeca_3","mrkWpSADMeca_3"],opfor,GROUPE_OPFOR_MOYEN,nil,230] spawn int_fnc_spawnMechInfantry;



