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

this forceAddUniform "OFrP_Uniform_T4S2_UBAS_CE02_FRHV_LTNBV";
this addVest "OFrP_Vest_S3_CE";
this addBackpack "OFrP_Bag_Felin_45L";

this addWeapon "Rangefinder";

for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_MX991";
this addItemToUniform "ACE_MapTools";
this addItemToUniform "ACE_microDAGR";
this addItemToUniform "ACRE_PRC343";
this addItemToUniform "ACE_Cellphone";
for "_i" from 1 to 5 do {this addItemToVest "OFrP_25Rnd_556x45";};
this addItemToBackpack "ACRE_PRC117F";
this addHeadgear "OFrP_Hat_Beret_92RI";
this addGoggles "rhs_googles_black";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
