/* 

Détecte si un joueur porte une arme en main dans un trigger
1. Précompiler la fonction dans le initServer.sqf (ou le init.sqf) : fn_playerHoldWeapon = compile preprocessFile "functions\fn_playerHoldWeapon.sqf";
2. Appeler dans le trigger via [this] call fn_playerHoldWeapon dans la zone Condition. Le trigger se déclenchera dès qu'un joueur sera détecté une arme en main

*/

params [
	"_trg"
	];
{ 
  if ((_x inArea _trg) && (currentWeapon _x != ""))  
   exitWith { 
    //systemChat format ["%1 a été détecté dans la zone avec une arme",name _x]; 
    true; 
   }; 
} forEach (switchableUnits + playableUnits);