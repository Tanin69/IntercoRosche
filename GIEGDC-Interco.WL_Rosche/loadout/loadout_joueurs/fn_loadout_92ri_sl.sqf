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

this addWeapon "OFrP_FAMAS_F1";
this addPrimaryWeaponItem "OFrP_pointer_PIRAT_EL9B";
this addPrimaryWeaponItem "OFrP_OpticItem_Scrome_J4_Famas";
this addPrimaryWeaponItem "OFrP_25Rnd_556x45";
this addPrimaryWeaponItem "ofrp_acc_grip1";
this addWeapon "OFrP_Glock17_Gen4";
this addHandgunItem "OFrP_17Rnd_9x19_Glock17";

this forceAddUniform "OFrP_Uniform_T4S2_UBAS_CE02_FRHV_ASPBV";
this addVest "OFrP_Vest_CIRAS_TeamLeader_CB";

this addWeapon "rhsusf_bino_lrf_Vector21";

for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_MX991";
this addItemToUniform "ACE_MapTools";
this addItemToUniform "ACRE_PRC343";
this addItemToUniform "ACRE_PRC148";
this addItemToUniform "ACE_microDAGR";
for "_i" from 1 to 6 do {this addItemToVest "OFrP_25Rnd_556x45";};
this addItemToVest "OFrP_17Rnd_9x19_Glock17";
this addHeadgear "OFrP_Helmet_TC3000_cover_ESSCOVER_CE";
this addGoggles "rhs_googles_black";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
