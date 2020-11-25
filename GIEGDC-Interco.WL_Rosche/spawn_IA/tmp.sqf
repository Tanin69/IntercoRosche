//Mitrailleur lourd
comment "Exported from Arsenal by tanin69";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local this) exitWith {};

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
this addWeapon "rhs_weap_m240G";
this addPrimaryWeaponItem "rhsusf_100Rnd_762x51";

comment "Add containers";
this forceAddUniform "OFrP_Uniform_T4S2_UBAS_CE01_FRHV_CPLBV";
this addVest "OFrP_Vest_CIRAS_MachineGunner_CB";
this addBackpack "OFrP_Bag_CamelbakBFM500_OD";

comment "Add items to containers";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_MX991";
this addItemToUniform "ACE_MapTools";
this addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 4 do {this addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {this addItemToBackpack "HandGrenade";};
this addItemToBackpack "SmokeShellBlue";
this addItemToBackpack "SmokeShellGreen";
for "_i" from 1 to 2 do {this addItemToBackpack "rhsusf_100Rnd_762x51_m61_ap";};
this addHeadgear "OFrP_Helmet_TC3000_cover_ESSCOVER_CE";
this addGoggles "rhs_googles_black";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";

comment "Set identity";
[this,"WhiteHead_17","male10eng"] call BIS_fnc_setIdentity;


//Fantassin
comment "Exported from Arsenal by tanin69";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local this) exitWith {};

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
this addWeapon "OFrP_FAMAS_F1";
this addPrimaryWeaponItem "OFrP_pointer_PIRAT_EL9B";
this addPrimaryWeaponItem "OFrP_OpticItem_AIMPoint_CompM2M68";
this addPrimaryWeaponItem "OFrP_25Rnd_556x45";
this addPrimaryWeaponItem "ofrp_acc_grip1";

comment "Add containers";
this forceAddUniform "OFrP_Uniform_T4S2_UBAS_CE02_FRHV_1CLBV";
this addVest "OFrP_Vest_CIRAS_Rifleman_CB";
this addBackpack "OFrP_Bag_CamelbakBFM500_OD";

comment "Add items to containers";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_MX991";
this addItemToUniform "ACE_MapTools";
this addItemToUniform "ACE_EntrenchingTool";
this addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 6 do {this addItemToVest "OFrP_25Rnd_556x45";};
for "_i" from 1 to 4 do {this addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {this addItemToBackpack "HandGrenade";};
for "_i" from 1 to 4 do {this addItemToBackpack "OFrP_25Rnd_556x45";};
this addItemToBackpack "OFrP_1Rnd_Grenade_APAV40";
this addItemToBackpack "SmokeShellGreen";
this addHeadgear "OFrP_Helmet_TC3000_cover_ESSCOVER_CE";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";

comment "Set identity";
[this,"WhiteHead_02","male11eng"] call BIS_fnc_setIdentity;


//Autorfl
comment "Exported from Arsenal by tanin69";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local this) exitWith {};

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
this addWeapon "rhs_weap_m249_pip_S_para";
this addPrimaryWeaponItem "OFrP_OpticItem_Scrome_J4";
this addPrimaryWeaponItem "rhsusf_200Rnd_556x45_box";
this addPrimaryWeaponItem "rhsusf_acc_kac_grip_saw_bipod";

comment "Add containers";
this forceAddUniform "OFrP_Uniform_T4S2_UBAS_CE01_FRBV_1CLBV";
this addVest "OFrP_Vest_CIRAS_MachineGunner_MJK";
this addBackpack "OFrP_Bag_CamelbakBFM500_OD";

comment "Add items to containers";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_MX991";
this addItemToUniform "ACE_MapTools";
this addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 4 do {this addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_100Rnd_556x45_mixed_soft_pouch";};
this addHeadgear "OFrP_Helmet_TC3000_cover_ESSCOVER_CE";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";

comment "Set identity";
[this,"GreekHead_A3_07","male07eng"] call BIS_fnc_setIdentity;

//FS TP
comment "Exported from Arsenal by tanin69";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local this) exitWith {};

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
this addWeapon "OFrP_HK417A1_20";
this addPrimaryWeaponItem "rhsusf_acc_aac_762sdn6_silencer";
this addPrimaryWeaponItem "ACE_acc_pointer_green";
this addPrimaryWeaponItem "rhsusf_acc_su230a";
this addPrimaryWeaponItem "OFrP_HK417_10Rnd_762x51";
this addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
this addWeapon "rhs_weap_M136";

comment "Add containers";
this forceAddUniform "OFrP_Uniform_T4S2_UBAS_CE01";
this addVest "rhsusf_mbav_rifleman";
this addBackpack "B_AssaultPack_cbr";

comment "Add binoculars";
this addWeapon "ACE_Vector";

comment "Add items to containers";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_MX991";
this addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_splint";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
this addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 7 do {this addItemToVest "OFrP_HK417_20Rnd_762x51";};
this addItemToBackpack "OFrP_HK417_20Rnd_762x51";
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_rgo";};
this addItemToBackpack "SmokeShellGreen";
for "_i" from 1 to 4 do {this addItemToBackpack "SmokeShell";};
this addHeadgear "rhsusf_ach_bare";
this addGoggles "G_Bandanna_oli";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "OFrP_Lucie";

comment "Set identity";
[this,"WhiteHead_10","male06eng"] call BIS_fnc_setIdentity;

//Pilote Abrams

comment "Exported from Arsenal by tanin69";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local this) exitWith {};

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
this addWeapon "rhs_weap_m4a1";
this addPrimaryWeaponItem "rhsusf_acc_anpeq15_top";
this addPrimaryWeaponItem "rhsusf_acc_compm4";
this addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
this addPrimaryWeaponItem "rhsusf_acc_kac_grip";

comment "Add containers";
this forceAddUniform "rhs_uniform_cu_ucp_1stcav";
this addVest "rhsusf_iotv_ucp_Medic";

comment "Add items to containers";
this addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_MX991";
this addItemToUniform "ACE_MapTools";
for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
this addHeadgear "rhsusf_cvc_ess";
this addGoggles "G_Bandanna_tan";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";

comment "Set identity";
[this,"WhiteHead_17","male02eng"] call BIS_fnc_setIdentity;
