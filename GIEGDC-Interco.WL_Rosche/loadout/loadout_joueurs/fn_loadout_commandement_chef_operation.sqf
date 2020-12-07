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
this addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
this addWeapon "rhsusf_weap_m9";
this addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

this forceAddUniform "rhs_uniform_cu_ucp_1stcav";
this addVest "rhsusf_spcs_ucp";
this addBackpack "rhsusf_assault_eagleaiii_ucp";

this addWeapon "Rangefinder";

for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_MX991";
this addItemToUniform "ACE_MapTools";
this addItemToUniform "ACE_microDAGR";
this addItemToUniform "ACE_Cellphone";
for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
this addItemToVest "ACRE_PRC343";
for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Pull";};
this addItemToBackpack "ACRE_PRC117F";
this addHeadgear "rhsusf_patrolcap_ucp";
this addGoggles "rhs_googles_black";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
