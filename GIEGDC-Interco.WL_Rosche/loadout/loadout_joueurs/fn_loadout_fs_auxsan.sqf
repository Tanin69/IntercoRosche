params ["_unit"];

if (isNull _unit) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit addWeapon "rhs_weap_hk416d10";
_unit addPrimaryWeaponItem "rhsusf_acc_nt4_black";
_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
_unit addPrimaryWeaponItem "optic_MRCO";
_unit addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_unit addPrimaryWeaponItem "rhsusf_acc_kac_grip";

_unit forceAddUniform "OFrP_Uniform_T4S2_UBAS_CE01";
_unit addVest "rhsusf_mbav_rifleman";
_unit addBackpack "B_Kitbag_cbr";

_unit addWeapon "ACE_Vector";

_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_Flashlight_MX991";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_splint";
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "ACE_microDAGR";
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_elasticBandage";};
_unit addItemToUniform "rhs_mag_20Rnd_556x45_M855A1_Stanag";
_unit addItemToVest "ACE_EntrenchingTool";
for "_i" from 1 to 11 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Pull";};
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "rhs_mag_m67";
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 9 do {_unit addItemToBackpack "rhs_mag_20Rnd_556x45_M855A1_Stanag";};
_unit addHeadgear "rhsusf_ach_bare_ess";
_unit addGoggles "G_Bandanna_oli";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "OFrP_Lucie";
[_unit, "1erRPIMa"] call BIS_fnc_setUnitInsignia;