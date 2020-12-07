params ["_unit"];

if (isNull _unit) exitWith {};
if (!local this) exitWith {};

removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

this addWeapon "rhsusf_weap_glock17g4";
this addHandgunItem "rhsusf_mag_17Rnd_9x19_JHP";

this forceAddUniform "OFrP_Uniform_T4S2_Full_DA_FRHV_CDTBV";
this addBackpack "B_Kitbag_tan";

this addWeapon "rhsusf_bino_lerca_1200_tan";

this addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_MX991";
this addItemToUniform "ACE_MapTools";
this addItemToUniform "ACE_Cellphone";
this addItemToBackpack "ACRE_PRC117F";
this addHeadgear "H_Beret_02";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
