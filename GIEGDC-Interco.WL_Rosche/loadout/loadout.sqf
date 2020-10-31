/* Fantassin */
loadout_rfl = {
	
	_unit = _this select 0;
	
	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_savz58p_black";
	_unit addPrimaryWeaponItem "rhs_30Rnd_762x39mm_Savz58";

	comment "Add containers";
	_unit forceAddUniform "rhs_uniform_flora_patchless";
	_unit addVest "rhs_6b5_khaki";

	comment "Add items to containers";
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_762x39mm_Savz58";};
	for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_762x39mm_Savz58";};
	_unit addHeadgear "rhs_6b27m_green";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
};

/* officer */
loadout_officer = {

	_unit = _this select 0;
	
	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_6p53";
	_unit addHandgunItem "rhs_18rnd_9x21mm_7N28";

	comment "Add containers";
	_unit forceAddUniform "rhs_uniform_flora_patchless";
	_unit addVest "rhs_vest_commander";

	comment "Add items to containers";
	for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_18rnd_9x21mm_7N28";};
	for "_i" from 1 to 5 do {_unit addItemToVest "rhs_18rnd_9x21mm_7N28";};
	_unit addHeadgear "rhssaf_beret_black";
	_unit addGoggles "G_Aviator";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/* SL */
loadout_SL = {

	_unit = _this select 0;
	
	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_aks74un";
	_unit addPrimaryWeaponItem "rhs_acc_dtk1983";
	_unit addPrimaryWeaponItem "rhs_30Rnd_545x39_7N6M_AK";
	_unit addWeapon "rhs_weap_6p53";
	_unit addHandgunItem "rhs_18rnd_9x21mm_7N28";

	comment "Add containers";
	_unit forceAddUniform "rhs_uniform_flora_patchless";
	_unit addVest "rhs_6sh92_digi_headset";

	comment "Add binoculars";
	_unit addWeapon "rhs_pdu4";

	comment "Add items to containers";
	for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_18rnd_9x21mm_7N28";};
	_unit addItemToUniform "rhs_30Rnd_545x39_7N6M_AK";
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_18rnd_9x21mm_7N28";};
	for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_545x39_7N6_AK";};
	_unit addHeadgear "rhs_Booniehat_digi";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/* TL */
loadout_TL = {

	_unit = _this select 0;

	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_pm63";
	_unit addPrimaryWeaponItem "rhs_acc_dtkakm";
	_unit addPrimaryWeaponItem "rhs_30Rnd_762x39mm";

	comment "Add containers";
	_unit forceAddUniform "rhs_uniform_flora_patchless";
	_unit addVest "rhs_6b5_khaki";

	comment "Add binoculars";
	_unit addWeapon "rhs_pdu4";
	_unit addHeadgear "rhs_6b26_ess_green";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/*  Medic */
loadout_medic = {

	_unit = _this select 0;
	
	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_aks74u";
	_unit addPrimaryWeaponItem "rhs_acc_pgs64_74u";
	_unit addPrimaryWeaponItem "rhs_30Rnd_545x39_7N6M_AK";

	comment "Add containers";
	_unit forceAddUniform "rhs_uniform_flora_patchless";
	_unit addVest "rhs_6b5_medic_khaki";

	comment "Add items to containers";
	for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_30Rnd_545x39_7N6M_AK";};
	for "_i" from 1 to 8 do {_unit addItemToVest "rhs_30Rnd_545x39_7N6M_AK";};
	_unit addHeadgear "rhs_6b27m_green";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/* GL */
loadout_GL = {
	
	_unit = _this select 0;

	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_akm_gp25";
	_unit addPrimaryWeaponItem "rhs_acc_dtkakm";
	_unit addPrimaryWeaponItem "rhs_30Rnd_762x39mm_bakelite";

	comment "Add containers";
	_unit forceAddUniform "rhs_uniform_flora_patchless";
	_unit addVest "rhs_6b5_khaki";

	comment "Add items to containers";
	for "_i" from 1 to 4 do {_unit addItemToUniform "rhs_VOG25";};
	_unit addItemToUniform "rhs_30Rnd_762x39mm_bakelite";
	for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_762x39mm_bakelite";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_VOG25";};
	_unit addHeadgear "rhs_6b27m_green";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/* MG */
loadout_MG = {
	
	_unit = _this select 0;
	
	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_pkm";
	_unit addPrimaryWeaponItem "rhs_100Rnd_762x54mmR";

	comment "Add containers";
	_unit forceAddUniform "rhs_uniform_flora_patchless";
	_unit addVest "rhs_6b5_rifleman_khaki";
	_unit addBackpack "rhs_sidor";

	comment "Add items to containers";
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_100Rnd_762x54mmR";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
	_unit addHeadgear "rhs_6b27m_green";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/* Assist. MG   */
loadout_assMG = {
	
	_unit = _this select 0;
	
	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_savz58v";
	_unit addPrimaryWeaponItem "rhs_30Rnd_762x39mm_Savz58";

	comment "Add containers";
	_unit forceAddUniform "rhs_uniform_flora_patchless";
	_unit addVest "rhs_6b5_khaki";
	_unit addBackpack "rhs_sidor";
	_unit addHeadgear "rhs_6b27m_green";

	comment "Add items to containers";
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_762x39mm_Savz58";};
	for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_762x39mm_Savz58";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR_7BZ3";};
	
	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/* AT Support  */
loadout_lat = {
	
	_unit = _this select 0;
		
	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_akms";
	_unit addPrimaryWeaponItem "rhs_acc_dtkakm";
	_unit addPrimaryWeaponItem "rhs_30Rnd_762x39mm_bakelite";
	_unit addWeapon "rhs_weap_rpg7";
	_unit addSecondaryWeaponItem "rhs_acc_pgo7v2";
	_unit addSecondaryWeaponItem "rhs_rpg7_PG7V_mag";

	comment "Add containers";
	_unit forceAddUniform "rhs_uniform_flora_patchless";
	_unit addVest "rhs_6b5_khaki";
	_unit addBackpack "rhs_rpg_empty";
	_unit addHeadgear "rhs_6b27m_green";

	comment "Add items to containers";
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_762x39mm_bakelite";};
	for "_i" from 1 to 8 do {_unit addItemToVest "30Rnd_762x39_Mag_F";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_rpg7_PG7VL_mag";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_rpg7_OG7V_mag";};
	_unit addGoggles "G_Bandanna_tan";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/* Crew  */
loadout_crew = {
	
	_unit = _this select 0;
		
	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_aks74u";
	_unit addPrimaryWeaponItem "rhs_acc_pgs64_74u";
	_unit addPrimaryWeaponItem "rhs_30Rnd_545x39_7N6M_AK";

	comment "Add containers";
	_unit forceAddUniform "rhs_uniform_flora_patchless";
	_unit addVest "rhs_6sh92";

	comment "Add items to containers";
	for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_30Rnd_545x39_7N6M_AK";};
	for "_i" from 1 to 10 do {_unit addItemToVest "rhs_30Rnd_545x39_7N6M_AK";};
	_unit addHeadgear "rhs_tsh4";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/* rfl 1 paramil */
loadout_paramil_rfl_1 = {
	
	_unit = _this select 0;

	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_aks74n";
	_unit addPrimaryWeaponItem "rhs_acc_dtk1983";
	_unit addPrimaryWeaponItem "rhs_30Rnd_545x39_7N6M_AK";

	comment "Add containers";
	_unit forceAddUniform "rhsgref_uniform_flecktarn";
	_unit addVest "rhsgref_TacVest_ERDL";

	comment "Add items to containers";
	for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_30Rnd_545x39_7N6M_AK";};
	for "_i" from 1 to 11 do {_unit addItemToVest "rhs_30Rnd_545x39_7N6M_AK";};
	_unit addHeadgear "rhssaf_booniehat_md2camo";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/* rfl 2 paramil */
loadout_paramil_rfl_2 = {
	
	_unit = _this select 0;

	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_akms";
	_unit addPrimaryWeaponItem "rhs_acc_dtkakm";
	_unit addPrimaryWeaponItem "rhs_30Rnd_762x39mm_bakelite";

	comment "Add containers";
	_unit forceAddUniform "rhsgref_uniform_woodland_olive";
	_unit addVest "rhsgref_chestrig";

	comment "Add items to containers";
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_762x39mm_bakelite";};
	_unit addItemToVest "rhs_30Rnd_762x39mm_bakelite";
	for "_i" from 1 to 8 do {_unit addItemToVest "30Rnd_762x39_Mag_F";};

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/* rfl 3 paramil */
loadout_paramil_rfl_3 = {
	
	_unit = _this select 0;
	
	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_akm";
	_unit addPrimaryWeaponItem "rhs_acc_dtkakm";
	_unit addPrimaryWeaponItem "rhs_30Rnd_762x39mm_bakelite";

	comment "Add containers";
	_unit forceAddUniform "rhsgref_uniform_og107_erdl";
	_unit addVest "rhsgref_chicom";

	comment "Add items to containers";
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_762x39mm_bakelite";};
	for "_i" from 1 to 10 do {_unit addItemToVest "30Rnd_762x39_Mag_F";};
	_unit addGoggles "G_Balaclava_blk";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/* MG paramil */
loadout_paramil_MG = {

	_unit = _this select 0;
	
	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_pkm";
	_unit addPrimaryWeaponItem "rhs_100Rnd_762x54mmR";

	comment "Add containers";
	_unit forceAddUniform "rhsgref_uniform_og107_erdl";
	_unit addVest "V_I_G_resistanceLeader_F";
	_unit addBackpack "rhs_sidor";

	comment "Add items to containers";
	_unit addItemToVest "rhs_100Rnd_762x54mmR";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/* Assistant MG paramil */
loadout_paramil_assMG = {
	
	_unit = _this select 0;

	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_akm";
	_unit addPrimaryWeaponItem "rhs_acc_dtkakm";
	_unit addPrimaryWeaponItem "rhs_30Rnd_762x39mm_bakelite";

	comment "Add containers";
	_unit forceAddUniform "rhsgref_uniform_og107_erdl";
	_unit addVest "V_TacVest_oli";
	_unit addBackpack "rhs_sidor";

	comment "Add items to containers";
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_762x39mm_bakelite";};
	for "_i" from 1 to 10 do {_unit addItemToVest "30Rnd_762x39_Mag_F";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR_7BZ3";};
	_unit addGoggles "G_Bandanna_oli";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/* AT paramil */
loadout_paramil_AT = {
	
	_unit = _this select 0;

	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_akms";
	_unit addPrimaryWeaponItem "rhs_acc_dtkakm";
	_unit addPrimaryWeaponItem "rhs_30Rnd_762x39mm_bakelite";
	_unit addWeapon "rhs_weap_rpg7";
	//_unit addSecondaryWeaponItem "rhs_acc_pgo7v2";
	_unit addSecondaryWeaponItem "rhs_rpg7_PG7V_mag";

	comment "Add containers";
	_unit forceAddUniform "rhsgref_uniform_dpm_olive";
	_unit addVest "V_Chestrig_oli";
	_unit addBackpack "rhs_rpg_empty";

	comment "Add items to containers";
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_762x39mm_bakelite";};
	for "_i" from 1 to 8 do {_unit addItemToVest "30Rnd_762x39_Mag_F";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_rpg7_PG7VL_mag";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_rpg7_OG7V_mag";};
	_unit addGoggles "G_Bandanna_tan";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/* AA paramil */
loadout_paramil_AA = {
	
	_unit = _this select 0;

	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_pm63";
	_unit addPrimaryWeaponItem "rhs_acc_dtkakm";
	_unit addPrimaryWeaponItem "rhs_30Rnd_762x39mm";
	_unit addWeapon "rhs_weap_igla";
	_unit addSecondaryWeaponItem "rhs_mag_9k38_rocket";

	comment "Add containers";
	_unit forceAddUniform "rhsgref_uniform_woodland_olive";
	_unit addVest "V_Chestrig_rgr";
	_unit addBackpack "rhs_sidor";

	comment "Add items to containers";
	for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_762x39mm";};
	for "_i" from 1 to 10 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

/* Chef paramil */
loadout_paramil_SL = {
	
	_unit = _this select 0;
	
	comment "Exported from Arsenal by tanin69";

	comment "[!] UNIT MUST BE LOCAL [!]";
	if (!local _unit) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add weapons";
	_unit addWeapon "rhs_weap_aks74u";
	_unit addPrimaryWeaponItem "rhs_acc_pgs64_74u";
	_unit addPrimaryWeaponItem "rhs_30Rnd_545x39_7N6M_AK";

	comment "Add containers";
	_unit forceAddUniform "rhsgref_uniform_dpm_olive";
	_unit addVest "rhsgref_TacVest_ERDL";

	comment "Add items to containers";
	for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_30Rnd_545x39_7N6M_AK";};
	for "_i" from 1 to 10 do {_unit addItemToVest "rhs_30Rnd_545x39_7N6M_AK";};
	_unit addHeadgear "rhsgref_hat_M1951";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";

};

_unit = _this select 0;
_unit_classname = typeOf _unit;
switch _unit_classname do {

    case "O_G_Soldier_F"        : {[_unit] call loadout_paramil_rfl_1};
	case "O_G_Soldier_lite_F"   : {[_unit] call loadout_paramil_rfl_2};
	case "O_G_Soldier_unarmed_F": {[_unit] call loadout_paramil_rfl_3};
	case "O_G_Soldier_AR_F"     : {[_unit] call loadout_paramil_MG};
	case "O_G_Soldier_A_F"      : {[_unit] call loadout_paramil_assMG};
	case "O_G_Soldier_LAT_F"    : {[_unit] call loadout_paramil_AT};
	case "O_G_Soldier_LAT2_F"   : {[_unit] call loadout_paramil_AA};
	case "O_G_Soldier_SL_F"     : {[_unit] call loadout_paramil_SL};
	case "O_G_officer_F"        : {[_unit] call loadout_SL};
	case "rhs_vmf_flora_rifleman"                : {[_unit] call loadout_rfl};
	case "rhs_vmf_flora_crew"                    : {[_unit] call loadout_crew};
	case "rhs_vmf_flora_LAT"                     : {[_unit] call loadout_LAT};
	case "rhs_vmf_flora_grenadier"               : {[_unit] call loadout_GL};
	case "rhs_vmf_flora_machinegunner"           : {[_unit] call loadout_MG};
	case "rhs_vmf_flora_machinegunner_assistant" : {[_unit] call loadout_assMG};
	case "rhs_vmf_flora_sergeant"                : {[_unit] call loadout_SL};
	case "rhs_vmf_flora_junior_sergeant"         : {[_unit] call loadout_TL};
	case "rhs_vmf_flora_officer"                 : {[_unit] call loadout_officer};
	case "rhs_vmf_flora_medic"                   : {[_unit] call loadout_medic};

};