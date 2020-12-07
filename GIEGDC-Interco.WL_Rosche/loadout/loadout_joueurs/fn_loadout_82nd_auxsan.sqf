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
this addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
this addPrimaryWeaponItem "rhsusf_acc_eotech_552_d";
this addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";

this forceAddUniform "rhs_uniform_cu_ucp_1stcav";
this addVest "rhsusf_spcs_ucp_medic";
this addBackpack "B_Kitbag_cbr";

this addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_MX991";
this addItemToUniform "ACE_MapTools";
for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_EPM_Pull";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
this addItemToVest "SmokeShellPurple";
this addItemToVest "SmokeShellGreen";
for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_M441_HE";};
for "_i" from 1 to 5 do {this addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 5 do {this addItemToBackpack "ACE_salineIV_500";};
this addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 4 do {this addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 10 do {this addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {this addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 5 do {this addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 5 do {this addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 4 do {this addItemToBackpack "ACE_splint";};
this addHeadgear "rhs_Booniehat_ucp";
this addGoggles "G_Shades_Black";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";

