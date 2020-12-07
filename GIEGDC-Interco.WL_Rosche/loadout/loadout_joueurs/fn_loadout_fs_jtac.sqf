params ["_unit"];

if (isNull _unit) exitWith {};

removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

this addWeapon "rhs_weap_hk416d10";
this addPrimaryWeaponItem "rhsusf_acc_nt4_black";
this addPrimaryWeaponItem "ACE_acc_pointer_green";
this addPrimaryWeaponItem "optic_MRCO";
this addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
this addPrimaryWeaponItem "rhsusf_acc_kac_grip";

this forceAddUniform "OFrP_Uniform_T4S2_UBAS_CE01";
this addVest "rhsusf_mbav_rifleman";
this addBackpack "B_UAV_01_backpack_F";

this addMagazine "Laserbatteries";
this addWeapon "Laserdesignator_02_ghex_F";

this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_MX991";
this addItemToUniform "ACE_MapTools";
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
this addItemToUniform "ACE_microDAGR";
this addItemToUniform "ACRE_PRC343";
this addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";
this addItemToVest "ACE_splint";
for "_i" from 1 to 4 do {this addItemToVest "SmokeShell";};
this addItemToVest "rhs_mag_m67";
for "_i" from 1 to 9 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
this addHeadgear "rhsusf_ach_bare_ess";
this addGoggles "G_Bandanna_oli";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "B_UavTerminal";
this linkItem "OFrP_Lucie";
