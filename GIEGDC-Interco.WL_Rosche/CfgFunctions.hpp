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
		}

		class fuite
		{
			file="functions\fleeing";
			class fleeing {};
			class doFleeing {};
		};

		class loadout
		{
			file="loadout";
			class setUnitLoadout {};
		};

		class loadout_joueurs
		{
			file="loadout\loadout_joueurs";
			class commandement_chef_operation {};
			class commandement_second_operation {};
			class commandement_op_radio {};

			class 58th_pilote {};
			class 58th_artilleur {};
			class 58th_chef_equipe {};
			class 58th_medic {};

			class 7th_commandant {};
			class 7th_tireur {};
			class 7th_pilote {};

			class 3rd_commandant {};
			class 3rd_tireur {};
			class 3rd_pilote {};

			class 1erRPIMa_chef_groupe {};
			class 1erRPIMa_jtac {};
			class 1erRPIMa_grenadier {};
			class 1erRPIMa_mitrailleur {};
			class 1erRPIMa_operateur {};
			class 1erRPIMa_medic {};
			class 1erRPIMa_tireur_precision {};

			class 126RI_chef_section {};
			class 126RI_mitrailleur_lourd {};
			class 126RI_assistant_mitrailleur {};

			class 24RI_chef_groupe {};
			class 24RI_chef_equipe {};
			class 24RI_fusilier {};
			class 24RI_mitrailleur {};
			class 24RI_ac {};
			class 24RI_tireur_precision {};
			
			class 92RI_chef_groupe {};
			class 92RI_chef_equipe {};
			class 92RI_fusilier {};
			class 92RI_mitrailleur {};
			class 92RI_tireur_precision {};
		};
	};
};