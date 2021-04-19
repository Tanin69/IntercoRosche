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
_unit addBackpack "B_AssaultPack_cbr";

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
_unit addItemToUniform "rhs_mag_rgo";
_unit addItemToVest "ACE_EntrenchingTool";
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "rhs_mag_m67";
for "_i" from 1 to 11 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
_unit addItemToBackpack "ACRE_PRC117F";
_unit addItemToBackpack "ACE_wirecutter";
_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_EPM_Pull";
_unit addHeadgear "rhsusf_ach_bare_headset_ess";
_unit addGoggles "G_Bandanna_oli";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "OFrP_Lucie";
[_unit, "1erRPIMa"] call BIS_fnc_setUnitInsignia;