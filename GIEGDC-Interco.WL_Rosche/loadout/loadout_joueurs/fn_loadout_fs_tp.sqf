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

this addWeapon "OFrP_HK417A1_20";
this addPrimaryWeaponItem "rhsusf_acc_aac_762sdn6_silencer";
this addPrimaryWeaponItem "ACE_acc_pointer_green";
this addPrimaryWeaponItem "rhsusf_acc_su230a";
this addPrimaryWeaponItem "OFrP_HK417_10Rnd_762x51";
this addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
this addWeapon "rhs_weap_M136";

this forceAddUniform "OFrP_Uniform_T4S2_UBAS_CE01";
this addVest "rhsusf_mbav_rifleman";
this addBackpack "B_AssaultPack_cbr";

this addWeapon "ACE_Vector";

this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_MX991";
this addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_splint";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
this addItemToUniform "ACRE_PRC343";
this addItemToUniform "ACE_microDAGR";
for "_i" from 1 to 7 do {this addItemToVest "OFrP_HK417_20Rnd_762x51";};
this addItemToBackpack "OFrP_HK417_20Rnd_762x51";
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_rgo";};
this addItemToBackpack "SmokeShellGreen";
for "_i" from 1 to 4 do {this addItemToBackpack "SmokeShell";};
this addHeadgear "rhsusf_ach_bare";
this addGoggles "G_Bandanna_oli";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "OFrP_Lucie";
