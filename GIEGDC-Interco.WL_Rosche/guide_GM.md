# Aide-mémoire pour le GM, au cas où les choses devaient mal tourner

## Gestion de la partie par le Game Phase Manager (GPM)

Attention, le GPM tourne sur le HC car c'est lui qui déclenche les spawn IA !

## Gestion des phases

### Phase 0 (déclenchement manuel)

* Dès le début de la partie, initialiser la variable du nombre de joueurs :

exécuter sur le ```nbPlayers = 00``` où 00 est le nombre de joueurs prévus;

nbJoueurs < 37 : facile

nbJoueurs entre 35 et 45 : moyen

nbJoueurs > 45 : difficile

-> Ceci va lancer la phase 0 : spawn initial des hostiles

### Phase 1 (déclenchement auto) : harcèlement

* Déclenchement par triggers : les 3 avant-postes doivent être occupés par un joueur

-> Des groupes de paramilitaires viennent harceler les avant-postes

### Phase 2 (déclenchement manuel) : assaut blindé des hostiles

Exécuter sur le HC ```PHASE_MISSION = 2```

-> Un assaut de blindés hostiles est lancé

## Spawn des positions renforcées sur Rosche

* Le timer reste actif pour le GPM -> ça évite d'avoir à calculer le temps à la mano.
* Spawn des premiers renforts -> exécuter ```renforts_rosche_1 = true;``` sur le HC
* Spawn des seconds renforts -> exécuter ```renforts_rosche_2 = true;``` sur le HC

## Si problème : spawner les infanteries à la main

Le spawn des hostiles peut être lancé manuellement via la console. Les scripts de spawn hostiles infanterie sont dans le dossier \spawn_IA de la mission. Pour lancer un script, saisir ```execVM ["nomduscript"]``` et exécuter idéalement sur le HC (attention à ne pas exécuter en global !!).

## Si problème :  Spawner les assauts blindés à la main

Pour un peloton de 2 T-72 et une Shilka :

```["mrkWpTanks_1"] call int_fnc_spawnGrpTank;```

(deux marqueurs supplémentaires existent : "mrkWpTanks_2" et "mrkWpTanks_3", décalés de 50 m. à l'Est)

Pour un BTR-80 et son groupe d'infanterie :

```[["mrkSpMeca_1","mrkWpUnloadMeca_1","mrkWpSADMeca_1"],opfor,GROUPE_OPFOR_MOYEN,nil,230] spawn int_fnc_spawnMechInfantry;```

(deux autres marqueurs existent comme ci-dessus)
