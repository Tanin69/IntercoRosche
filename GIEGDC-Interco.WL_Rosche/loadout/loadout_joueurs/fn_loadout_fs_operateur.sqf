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
this addWeapon "rhs_weap_M136";

this forceAddUniform "OFrP_Uniform_T4S2_UBAS_CE01";
this addVest "rhsusf_mbav_rifleman";
this addBackpack "B_AssaultPack_cbr";

this addWeapon "ACE_Vector";

this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_MX991";
this addItemToUniform "ACE_MapTools";
this addItemToUniform "ACE_splint";
this addItemToUniform "ACRE_PRC343";
this addItemToUniform "ACE_microDAGR";
for "_i" from 1 to 5 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
this addItemToVest "ACE_EntrenchingTool";
for "_i" from 1 to 4 do {this addItemToVest "SmokeShell";};
this addItemToVest "rhs_mag_m67";
for "_i" from 1 to 11 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 10 do {this addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_PMAG";};
for "_i" from 1 to 4 do {this addItemToBackpack "SmokeShell";};
this addItemToBackpack "rhs_mag_rgo";
this addHeadgear "rhsusf_ach_bare_ess";
this addGoggles "G_Bandanna_oli";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "OFrP_Lucie";
