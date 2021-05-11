class CfgFunctions
{
	class int
	{
		class spawn_zone
		{
			file="functions\spawn_zone";
			class spawnFixedWeapons {};
			class spawnGarnisons {};
			class spawnRdmPatrols {};
			class spawnGrpTank {};
			class spawnMechInfantry {};
		};

		class caisse_loadout
		{
			file="functions\caisse_loadout";
			class initCaisseLoadout {};
		};

		class divers
		{
			file="functions\misc";
			class findClearZoneInArea {};
			class gamePhaseManager {};
			class refuelTank {};
			class cargoVehicle {};
		}

		class fuite
		{
			file="functions\fleeing";
			class fleeing {};
			class doFleeing {};
			class addEventHandler {};
		};

		class loadout
		{
			file="loadout";
			class setUnitLoadout {};
		};

		class BFT 
		{
			file="functions\BFT";
			class initBFT {
				postInit = 1;
			};
		}

		class loadout_joueurs
		{
			file="loadout\loadout_joueurs";

			// Loadout GM
			class loadout_qg {};

			// Loadout groupe commandement
			class loadout_commandement_chef_operation {};
			class loadout_commandement_second_operation {};

			// Loadout 82nd
			class loadout_82nd_pilote_uh60 {};
			class loadout_82nd_copilote_uh60 {};
			class loadout_82nd_pilote_ah64 {};
			class loadout_82nd_copilote_ah64 {};
			class loadout_82nd_medecin_chef {};
			class loadout_82nd_medecin {};
			class loadout_82nd_auxsan {};

			// Loadout FS
			class loadout_fs_sl {};
			class loadout_fs_jtac {};
			class loadout_fs_tp {};
			class loadout_fs_auxsan {};
			class loadout_fs_operateur {};

			// Loadout 7th
			class loadout_7th_chef_abrams {};
			class loadout_7th_tireur_abrams {};
			class loadout_7th_conducteur_abrams {};
			class loadout_7th_chef_bradley {};
			class loadout_7th_tireur_bradley {};
			class loadout_7th_conducteur_bradley {};

			// Loadout 92 RI
			class loadout_92ri_sl {};
			class loadout_92ri_opr {};
			class loadout_92ri_chef_groupe {};
			class loadout_92ri_mg {};
			class loadout_92ri_mg_leger {};
			class loadout_92ri_assist_mg {};
			class loadout_92ri_auxsan {};
			class loadout_92ri_fusilier {};
		};
	};
};