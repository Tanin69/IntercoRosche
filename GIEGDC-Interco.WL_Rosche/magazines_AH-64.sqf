/*
magazines[] = {"rhsusf_mag_DIRCM","rhsusf_mag_DIRCM","rhsusf_mag_DIRCM","rhsusf_mag_DIRCM","rhsusf_mag_DIRCM","rhsusf_mag_DIRCM","rhsusf_mag_DIRCM","rhsusf_mag_DIRCM","rhsusf_mag_DIRCM","rhsusf_mag_DIRCM"};
magazines[] = {"rhs_mag_30x113mm_M789_HEDP_1200","rhs_laserfcsmag","rhs_LaserMag_ai"};

//AGM14K
magazines[] = {"rhs_mag_agm114K_4","rhs_mag_agm114K_2","rhs_mag_agm114K","rhs_mag_AGM114K_2_plane","rhs_mag_AGM114K_plane"};

//AGM114N
magazines[] = {"rhs_mag_agm114N_4","rhs_mag_agm114N_2","rhs_mag_agm114N","rhs_mag_AGM114N_2_plane","rhs_mag_AGM114N_plane"};


"rhs_ammo_Hydra_M151"
"rhs_ammo_Hydra_M229"
"rhs_ammo_Hydra_M257"


ammo = "ACE_Hellfire_AGM114K";

"PylonMissile_1Rnd_ACE_Hellfire_AGM114K"

"ace_compat_rhs_usf3_pylon_mag_2rnd_hellfire_k"

"PylonRack_1Rnd_ACE_Hellfire_AGM114K"

"rhs_mag_agm114K"



//Hydra
"rhs_mag_M151_19"

//Flare
"rhsusf_M130_CMFlare_Chaff_Magazine_x2";

//Canon
"rhs_mag_30x113mm_M789_HEDP_1200"
*/

for "_i" from 1 to 2 do {[ammo_hemtt, "rhs_mag_M151_19"] call ace_rearm_fnc_addMagazineToSupply;};
[ammo_hemtt, "rhs_mag_30x113mm_M789_HEDP_1200"] call ace_rearm_fnc_addMagazineToSupply;
for "_i" from 1 to 10 do {[ammo_hemtt, "rhsusf_M130_CMFlare_Chaff_Magazine_x2"] call ace_rearm_fnc_addMagazineToSupply;};
