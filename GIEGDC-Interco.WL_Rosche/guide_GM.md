# Aide-mémoire pour le GM, au cas où les choses devaient mal tourner

## Initialisation de la partie : dès le lancement

* Initialiser la variable du nombre de joueurs via :
```nbPlayers = 00``` où 00 est le nombre de joueurs prévus

## Déclenchement des paramil

Grâce au Game Phase Manager de Morbakos, la seule commande à lancer dans la console est le déclenchement de la phase 2 (assaut des blindés hostiles). En toute logique, cette commande devrait être lancée quelques minutes après l'arrivée des joueurs sur les postes avancés (3 à 5 minutes).

Pour lancer la phase 2, il suffit d'exécuter dans la console de débogage ```PHASE_MISSION = 2``` sur le HC (sélectionner headless client dans le panneau de droite, puis TARGET EXEC sous la console de saisie)

## Si problème : spawner les infanteries à la main

Le spawn des hostiles peut être lancé manuellement via la console. Les scripts de spawn hostiles infanterie sont dans le dossier \spawn_IA de la mission. Pour lancer un script, saisir ```execVM ["nomduscript"]``` et exécuter idéalement sur le HC (attention à ne pas exécuter en global !!).

## Si problème :  Spawner les assauts blindés à la main

Pour un peloton de 2 T-72 et une Shilka :

```["mrkWpTanks_1"] call int_fnc_spawnGrpTank;```

(deux marqueurs supplémentaires existent : "mrkWpTanks_2" et "mrkWpTanks_3", décalés de 50 m. à l'Est)

Pour un BTR-80 et son groupe d'infanterie :

```[["mrkSpMeca_1","mrkWpUnloadMeca_1","mrkWpSADMeca_1"],opfor,GROUPE_OPFOR_MOYEN,nil,230] spawn int_fnc_spawnMechInfantry;```

(deux autres marqueurs existent comme ci-dessus)
