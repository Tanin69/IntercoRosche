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

_unit addWeapon "OFrP_FAMAS_F1";
_unit addPrimaryWeaponItem "OFrP_pointer_PIRAT_EL9B";
_unit addPrimaryWeaponItem "OFrP_OpticItem_Scrome_J4_Famas";
_unit addPrimaryWeaponItem "OFrP_25Rnd_556x45";
_unit addPrimaryWeaponItem "ofrp_acc_grip1";

_unit forceAddUniform "OFrP_Uniform_T4S2_UBAS_CE02_FRHV_1CLBV";
_unit addVest "OFrP_Vest_CIRAS_TeamLeader_CB";
_unit addBackpack "OFrP_Bag_CamelbakBFM500_OD";

for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_elasticBandage";};
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_Flashlight_MX991";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "ACE_microDAGR";
for "_i" from 1 to 2 do {_unit addItemToVest "OFrP_25Rnd_556x45";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
_unit addItemToVest "SmokeShellRed";
_unit addItemToBackpack "ACRE_PRC117F";
_unit addHeadgear "OFrP_Helmet_TC3000_cover_ESSCOVER_CE";
_unit addGoggles "rhs_googles_black";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
[_unit, "92RI"] call BIS_fnc_setUnitInsignia;
