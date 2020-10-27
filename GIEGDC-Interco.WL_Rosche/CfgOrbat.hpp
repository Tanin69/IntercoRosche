class CfgORBAT
{
	class OTAN 
	{ // OTAN
		id = 1;        // Unit ID
		idType = 0;    // Unit ID type
		side = "West"; // Unit side from CfgChainOfCommand >> Sides
		size = "Size11"; // Unit size from CfgChainOfCommand >> Sizes. Displays relevant icon above the Type icon
		type = "HQ"; // Unit type from CfgChainOfCommand >> Types
		commander = "James Norman Mattis"; // Name of unit commander. Can be either direct name, or class from CfgWorlds >> GenericNames (random name from the list is then selected)
		commanderRank = "GENERAL";
		texture = "\a3\Data_f\Flags\flag_nato_co.paa"; // Custom unit texture
		insignia = "\a3\Data_f\cfgFactionClasses_BLU_ca.paa"; // Unit insignia, displayed in ORBAT background and in tooltip
		text = "OTAN"; // Custom text and short text, can still use some arguments when defined:
		// 	%1 - ID (e.g. "7th")
		// 	%2 - Type (e.g. "Infantry")
		// 	%3 - Size (e.g. "Division")
		textShort = "OTAN";
		color[] = {255,255,255,1}; // Custom color, will replace color set by 'side' param. Can be either RGBA array, or class from CfgMarkerColors
        description= "OTAN"; // A brief description of the group or unit.
		
		class 1erBCT
		{ // 1ere brigade
			id = 2;
			type = "Unknown";
			size = "BCT";
			side = "West";
			commander = "NATOMen";
			commanderRank = "COLONEL";
			text = "1er BCT"; // Custom text and short text, can still use some arguments when defined:
			// 	%1 - ID (e.g. "7th")
			// 	%2 - Type (e.g. "Infantry")
			// 	%3 - Size (e.g. "Division")
			textShort = "1er BCT";
			// color[] = {0,0,1,1}; // Custom color, will replace color set by 'side' param. Can be either RGBA array, or class from CfgMarkerColors
			description= "Composante ALPHA du Groupe d'Intervention Européen"; // A brief description of the group or unit.
 		};
		
		class 2emeBCT
		{ // 2eme brigade
			id = 3;
			type = "Unknown";
			size = "BCT";
			side = "West";
			commander = "NATOMen";
			commanderRank = "COLONEL";
			text = "2eme BCT"; // Custom text and short text, can still use some arguments when defined:
			// 	%1 - ID (e.g. "7th")
			// 	%2 - Type (e.g. "Infantry")
			// 	%3 - Size (e.g. "Division")
			textShort = "2eme BCT";
			// color[] = {0,0,1,1}; // Bravo color, will replace color set by 'side' param. Can be either RGBA array, or class from CfgMarkerColors
			description= "Composante BRAVO du Groupe d'Intervention Européen"; // A brief description of the group or unit.

			class 1erRPIMa
			{ // 1erRPIMa
				id = 3;
				type = "Recon";
				size = "Regiment";
				side = "West";
				commander = "NATOMen";
				commanderRank = "Lieutenant";
				texture = __EVAL(getMissionPath "ORBAT\1erRPIMa.paa");
				insignia = __EVAL(getMissionPath "ORBAT\1erRPIMa.paa");
				text = "1er RPIMa";
				textShort = "1er RPIMa";
				color[] = {255,255,255,1};
				description= "Section du 1er RPIMa";
			};

			class 58thPR
			{ // 58th pararescue
				id = 3;
				type = "Helicopter";
				size = "Squadron";
				side = "West";
				commander = "NATOMen";
				commanderRank = "Captain";
				texture = __EVAL(getMissionPath "ORBAT\58thRS.paa");
				insignia = __EVAL(getMissionPath "ORBAT\58thRS.paa");
				text = "58th Rescue Squadron";
				textShort = "58th RS";
				color[] = {255,255,255,1};
				description= "Section du 58th Rescue Squadron";
				assets[] = {
					RHS_AH64D_wd,
					RHS_UH60M_MEV2
				};
			};

			class 7thCav
			{ // 7thCav
				id = 3;
				type = "Armored";
				size = "Regiment";
				side = "West";
				commander = "NATOMen";
				commanderRank = "Captain";
				texture = __EVAL(getMissionPath "ORBAT\7thCav.paa");
				insignia = __EVAL(getMissionPath "ORBAT\7thCav.paa");
				text = "7th Cavalry Regiment";
				textShort = "7th Cavalry";
				color[] = {255,255,255,1};
				description= "Peloton du 7th Cavalry Regiment";
				assets[] = {
					{rhsusf_m1a2sep1tuskiwd_usarmy, 2}
				};
			};

			class 126RI
			{ // 126RI
				id = 3;
				type = "Infantry";
				size = "Regiment";
				side = "West";
				commander = "NATOMen";
				commanderRank = "Lieutenant";
				texture = __EVAL(getMissionPath "ORBAT\126RI.paa");
				insignia = __EVAL(getMissionPath "ORBAT\126RI.paa");
				text = "126eme Régiment d'infanterie";
				textShort = "126eme RI";
				color[] = {255,255,255,1};
				description= "Section du 126eme Régiment d'infanterie";

				class 24RI
				{ // 24RI
					id = 3;
					type = "Infantry";
					size = "Regiment";
					side = "West";
					commander = "NATOMen";
					commanderRank = "Lieutenant";
					texture = __EVAL(getMissionPath "ORBAT\24RI.paa");
					insignia = __EVAL(getMissionPath "ORBAT\24RI.paa");
					text = "24eme Régiment d'infanterie";
					textShort = "24eme RI";
					color[] = {255,255,255,1};
					description= "Section du 24eme Régiment d'infanterie";
				};

				class 92RI
				{ // 92RI
					id = 3;
					type = "Infantry";
					size = "Regiment";
					side = "West";
					commander = "NATOMen";
					commanderRank = "Lieutenant";
					texture = __EVAL(getMissionPath "ORBAT\92RI.paa");
					insignia = __EVAL(getMissionPath "ORBAT\92RI.paa");
					text = "92eme Régiment d'infanterie";
					textShort = "92eme RI";
					color[] = {255,255,255,1};
					description= "Section du 92eme Régiment d'infanterie";
				};

				class 3rdCav
				{ // 3rdCav
					id = 3;
					type = "MechanizedInfantry";
					size = "Regiment";
					side = "West";
					commander = "NATOMen";
					commanderRank = "Captain";
					texture = __EVAL(getMissionPath "ORBAT\3rdCav.paa");
					insignia = __EVAL(getMissionPath "ORBAT\3rdCav.paa");
					text = "3rd Cavalry Regiment";
					textShort = "3rd Cavalry";
					color[] = {255,255,255,1};
					description= "Peloton du 3rd Cavalry Regiment";
					assets[] = {
						{RHS_M2A3_BUSKI_wd, 3}
					};
				};
			};

 		};
		
		class 3emeBCT
		{ // 3eme brigade
			id = 4;
			type = "Unknown";
			size = "BCT";
			side = "West";
			commander = "NATOMen";
			commanderRank = "COLONEL";
			text = "3eme BCT"; // Custom text and short text, can still use some arguments when defined:
			// 	%1 - ID (e.g. "7th")
			// 	%2 - Type (e.g. "Infantry")
			// 	%3 - Size (e.g. "Division")
			textShort = "3eme BCT";
			// color[] = {0,0,1,1}; // Bravo color, will replace color set by 'side' param. Can be either RGBA array, or class from CfgMarkerColors
			description= "Composante BRAVO du Groupe d'Intervention Européen"; // A brief description of the group or unit.
 		};
		
	};

	class Hostiles
	{
		id = 1;        // Unit ID
		idType = 0;    // Unit ID type
		side = "East"; // Unit side from CfgChainOfCommand >> Sides
		size = "Army"; // Unit size from CfgChainOfCommand >> Sizes. Displays relevant icon above the Type icon
		type = "HQ"; // Unit type from CfgChainOfCommand >> Types
		//commander = "Commandement GIE"; // Name of unit commander. Can be either direct name, or class from CfgWorlds >> GenericNames (random name from the list is then selected)
		// texture = __EVAL(getMissionPath "ORBAT\Insigne.paa");
		text = "Hostiles"; // Custom text and short text, can still use some arguments when defined:
		// 	%1 - ID (e.g. "7th")
		// 	%2 - Type (e.g. "Infantry")
		// 	%3 - Size (e.g. "Division")
		textShort = "OTAN";
		// color[] = {255,255,255,1}; // Custom color, will replace color set by 'side' param. Can be either RGBA array, or class from CfgMarkerColors
        description= "OTAN"; // A brief description of the group or unit.
		
		class 1erBCT
		{
			id = 2;
			type = "Unknown";
			size = "BCT";
			side = "East";
			// commander = "Seemann";
			// commanderRank = "Lieutenant";
			text = "1er"; // Custom text and short text, can still use some arguments when defined:
			// 	%1 - ID (e.g. "7th")
			// 	%2 - Type (e.g. "Infantry")
			// 	%3 - Size (e.g. "Division")
			textShort = "1er";
			// color[] = {0,0,1,1}; // Custom color, will replace color set by 'side' param. Can be either RGBA array, or class from CfgMarkerColors
			description= "Composante ALPHA du Groupe d'Intervention Européen"; // A brief description of the group or unit.
 		};
		
		class 2emeBCT
		{
			id = 3;
			type = "Unknown";
			size = "BCT";
			side = "East";
			// commander = "Madness";
			// commanderRank = "Lieutenant";
			text = "2eme"; // Custom text and short text, can still use some arguments when defined:
			// 	%1 - ID (e.g. "7th")
			// 	%2 - Type (e.g. "Infantry")
			// 	%3 - Size (e.g. "Division")
			textShort = "2eme";
			// color[] = {0,0,1,1}; // Bravo color, will replace color set by 'side' param. Can be either RGBA array, or class from CfgMarkerColors
			description= "Composante BRAVO du Groupe d'Intervention Européen"; // A brief description of the group or unit.

			class 1erGT2BCT
			{
				id = 3;
				type = "Helicopter";
				size = "Size1";
				side = "East";
				// commander = "Madness";
				// commanderRank = "Lieutenant";
				text = "Hélicos"; // Custom text and short text, can still use some arguments when defined:
				// 	%1 - ID (e.g. "7th")
				// 	%2 - Type (e.g. "Infantry")
				// 	%3 - Size (e.g. "Division")
				textShort = "Hélicos";
				// color[] = {0,0,1,1}; // Bravo color, will replace color set by 'side' param. Can be either RGBA array, or class from CfgMarkerColors
				description= "Composante BRAVO du Groupe d'Intervention Européen"; // A brief description of the group or unit.
			};

			class 2emeGT2BCT
			{
				id = 3;
				type = "Armored";
				size = "Size1";
				side = "East";
				// commander = "Madness";
				// commanderRank = "Lieutenant";
				text = "Blindés"; // Custom text and short text, can still use some arguments when defined:
				// 	%1 - ID (e.g. "7th")
				// 	%2 - Type (e.g. "Infantry")
				// 	%3 - Size (e.g. "Division")
				textShort = "Blindés";
				// color[] = {0,0,1,1}; // Bravo color, will replace color set by 'side' param. Can be either RGBA array, or class from CfgMarkerColors
				description= "Composante BRAVO du Groupe d'Intervention Européen"; // A brief description of the group or unit.
			};

			class 3emeGT2BCT
			{
				id = 3;
				type = "Recon";
				size = "Size1";
				side = "East";
				// commander = "Madness";
				// commanderRank = "Lieutenant";
				text = "1er RPIMa"; // Custom text and short text, can still use some arguments when defined:
				// 	%1 - ID (e.g. "7th")
				// 	%2 - Type (e.g. "Infantry")
				// 	%3 - Size (e.g. "Division")
				textShort = "1er RPIMa";
				// color[] = {0,0,1,1}; // Bravo color, will replace color set by 'side' param. Can be either RGBA array, or class from CfgMarkerColors
				description= "1er Régiment Parachutiste d'Infanterie de Marine"; // A brief description of the group or unit.
			};

			class 4emeGT2BCT
			{
				id = 3;
				type = "MechanizedInfantry";
				size = "Size1";
				side = "East";
				// commander = "Madness";
				// commanderRank = "Lieutenant";
				text = "92RI"; // Custom text and short text, can still use some arguments when defined:
				// 	%1 - ID (e.g. "7th")
				// 	%2 - Type (e.g. "Infantry")
				// 	%3 - Size (e.g. "Division")
				textShort = "92RI";
				// color[] = {0,0,1,1}; // Bravo color, will replace color set by 'side' param. Can be either RGBA array, or class from CfgMarkerColors
				description= "92ème Régiment d'Infanterie"; // A brief description of the group or unit.
			};

			class 5emeGT2BCT
			{
				id = 3;
				type = "MechanizedInfantry";
				size = "Size1";
				side = "East";
				// commander = "Madness";
				// commanderRank = "Lieutenant";
				text = "24RI"; // Custom text and short text, can still use some arguments when defined:
				// 	%1 - ID (e.g. "7th")
				// 	%2 - Type (e.g. "Infantry")
				// 	%3 - Size (e.g. "Division")
				textShort = "24RI";
				// color[] = {0,0,1,1}; // Bravo color, will replace color set by 'side' param. Can be either RGBA array, or class from CfgMarkerColors
				description= "92ème Régiment d'Infanterie"; // A brief description of the group or unit.
			};
 		};
		
		class 3emeBCT
		{
			id = 4;
			type = "Unknown";
			size = "BCT";
			side = "East";
			// commander = "Madness";
			// commanderRank = "Lieutenant";
			text = "3eme"; // Custom text and short text, can still use some arguments when defined:
			// 	%1 - ID (e.g. "7th")
			// 	%2 - Type (e.g. "Infantry")
			// 	%3 - Size (e.g. "Division")
			textShort = "3eme";
			// color[] = {0,0,1,1}; // Bravo color, will replace color set by 'side' param. Can be either RGBA array, or class from CfgMarkerColors
			description= "Composante BRAVO du Groupe d'Intervention Européen"; // A brief description of the group or unit.
 		};
		
	};
	
};