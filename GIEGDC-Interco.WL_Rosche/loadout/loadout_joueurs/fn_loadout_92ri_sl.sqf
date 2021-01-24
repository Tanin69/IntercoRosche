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
_unit addWeapon "OFrP_Glock17_Gen4";
_unit addHandgunItem "OFrP_17Rnd_9x19_Glock17";

_unit forceAddUniform "OFrP_Uniform_T4S2_UBAS_CE02_FRHV_ASPBV";
_unit addVest "OFrP_Vest_CIRAS_TeamLeader_CB";

_unit addWeapon "rhsusf_bino_lrf_Vector21";

for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_elasticBandage";};
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_Flashlight_MX991";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "ACRE_PRC148";
_unit addItemToUniform "ACE_microDAGR";
for "_i" from 1 to 6 do {_unit addItemToVest "OFrP_25Rnd_556x45";};
_unit addItemToVest "OFrP_17Rnd_9x19_Glock17";
_unit addHeadgear "OFrP_Helmet_TC3000_cover_ESSCOVER_CE";
_unit addGoggles "rhs_googles_black";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
