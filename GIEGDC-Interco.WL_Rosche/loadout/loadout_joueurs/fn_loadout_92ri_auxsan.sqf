params ["_unit"];

if (isNull _unit) exitWith {};

// Remove existing items
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

// Add weapons
_unit addWeapon "rhsusf_weap_glock17g4";
_unit addHandgunItem "rhsusf_mag_17Rnd_9x19_JHP";

// Add containers
_unit forceAddUniform "OFrP_Uniform_T4S2_Full_DA_FRHV_CDTBV";
_unit addBackpack "B_Kitbag_tan";

// Add binoculars
_unit addWeapon "rhsusf_bino_lerca_1200_tan";

// Add items to containers
_unit addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_elasticBandage";};
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_Flashlight_MX991";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_Cellphone";
_unit addItemToBackpack "ACRE_PRC117F";
_unit addHeadgear "H_Beret_02";

// Add items
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
