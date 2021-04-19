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

_unit addWeapon "OFrP_HK417A1_20";
_unit addPrimaryWeaponItem "rhsusf_acc_aac_762sdn6_silencer";
_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
_unit addPrimaryWeaponItem "rhsusf_acc_su230a";
_unit addPrimaryWeaponItem "OFrP_HK417_10Rnd_762x51";
_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
_unit addWeapon "rhs_weap_M136";

_unit forceAddUniform "OFrP_Uniform_T4S2_UBAS_CE01";
_unit addVest "rhsusf_mbav_rifleman";
_unit addBackpack "B_AssaultPack_cbr";

_unit addWeapon "ACE_Vector";

_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_Flashlight_MX991";
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_elasticBandage";};
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "ACE_microDAGR";
for "_i" from 1 to 7 do {_unit addItemToVest "OFrP_HK417_20Rnd_762x51";};
_unit addItemToBackpack "OFrP_HK417_20Rnd_762x51";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgo";};
_unit addItemToBackpack "SmokeShellGreen";
for "_i" from 1 to 4 do {_unit addItemToBackpack "SmokeShell";};
_unit addHeadgear "rhsusf_ach_bare";
_unit addGoggles "G_Bandanna_oli";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "OFrP_Lucie";
[_unit, "1erRPIMa"] call BIS_fnc_setUnitInsignia;