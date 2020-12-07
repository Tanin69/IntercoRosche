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

this addWeapon "rhs_weap_m4a1";
this addPrimaryWeaponItem "rhsusf_acc_anpeq15_top";
this addPrimaryWeaponItem "rhsusf_acc_compm4";
this addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
this addPrimaryWeaponItem "rhsusf_acc_kac_grip";

this forceAddUniform "U_B_HeliPilotCoveralls";
this addVest "rhsusf_iotv_ucp_Repair";

for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag_Pull";};
this addHeadgear "rhsusf_hgu56p_visor_green";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
