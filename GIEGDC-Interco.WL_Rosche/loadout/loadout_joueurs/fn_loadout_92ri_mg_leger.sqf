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

_unit addWeapon "rhs_weap_m249_pip_S_para";
_unit addPrimaryWeaponItem "OFrP_OpticItem_Scrome_J4";
_unit addPrimaryWeaponItem "rhsusf_200Rnd_556x45_box";
_unit addPrimaryWeaponItem "rhsusf_acc_kac_grip_saw_bipod";

_unit forceAddUniform "OFrP_Uniform_T4S2_UBAS_CE01_FRBV_1CLBV";
_unit addVest "OFrP_Vest_CIRAS_MachineGunner_MJK";
_unit addBackpack "OFrP_Bag_CamelbakBFM500_OD";

for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_elasticBandage";};
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_Flashlight_MX991";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_100Rnd_556x45_mixed_soft_pouch";};
_unit addHeadgear "OFrP_Helmet_TC3000_cover_ESSCOVER_CE";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
[_unit, "92RI"] call BIS_fnc_setUnitInsignia;