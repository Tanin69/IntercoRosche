/* Début du briefing au format sqf */

player createDiaryRecord ["Diary", ["Crédits", "
<font color='#ff0505'>Livonia : classico</font color><br/><br/>
Auteur : tanin69<br/><br/>
Une mission de canards, avec LUCY et PLUTO.<br/><br/>
<font color='#ff9605'>Merci à Mystery, Sparfell, Shinriel pour les bibliothèques de GDC_Lib https://github.com/GdC-Framework/GdC_lib/<br/>
"]];

player createDiaryRecord ["Diary", ["Insertion et fin de mission", "
<font color='#5ACE00'>Insertion</font color><br/>
Insertion libre en dehors de <marker name ='marker_NoSpawn'>la zone cerclée</marker><br/><br/>
<font color='#5ACE00'>Fin de mission</font color><br/>
Quittez la zone cerclée et assurez-vous d'être en sécurité.<br/><br/>
+ <font color='#5ACE00'>Réussite mission par radio Alpha (0-0-1) : voir 'conditions de victoire'</font color><br/>
+ <font color='#ff0505'>Echec mission par radio India (0-0-9) : voir 'conditions de victoire'</font color><br/>
"]];

player createDiaryRecord ["Diary", ["Equipement", "
Grâce à de puissants soutiens, vous êtes équipés comme une armée régulière, et plutôt au top, jugez plutôt...<br/><br/>
<font color='#ff0505'>Equipement</font color><br/>
Camo, protection balistique, carte, boussole...<br/><br/>
<font color='#ff0505'>Reconnaissance</font color><br/>
le CdO dispose d'un drône AR-2 Darter<br/><br/>
<font color='#ff0505'>Armement</font color><br/>
> HK416 D14.5 pour tout les hommes (sauf MG et LMG)<br/>
> Equipe support : MG (M240) et AT (SMAW)<br/>
> Equipes d'assaut : une LMG (M249) dans chaque équipe<br/><br/>
<font color='#ff0505'>Communications</font color><br/>
> 148 pour CdO et TL (le CdO a une 148 en spare au cas où)<br/>
> 343 pour tout le monde<br/><br/>
Vous n'avez pas d'explosif. Vous vous servirez sur place.
"]];

player createDiaryRecord ["Diary", ["Renseignements", "
<font color='#ff0505'>Forces hostiles</font color><br/>
Grâce aux renseignements de nos partisans locaux, on sait avec certitude qu'il n'y a pas de patrouille en dehors des environs immédiats des camps. Par contre, les hostiles sont beaucoup plus nombreux que vous.<br/><br/>
<marker name ='marker_hostile_1'>Centre de commandement</marker><br/>
Des officiers, des personnels dédiés aux taches administratives, une petite garnison et quelques patrouilles dans le camp et ses environs immédiats.<br/><br/>
Peut-être une ou deux armes lourdes qui traînent quelque part dans le camp.<br/><br/>
<marker name ='marker_hostile_2'>Centre logistique</marker><br/>
Une belle garnison, des BTR-80 stationnés, des patrouilles, des .50 là ou il faut... Un beau morceau.<br/><br/>
<font color='#ff0505'>Civils</font color><br/>
Vu l'heure, ils sont encore au dodo, à part quelques courageux agriculteurs qui s'apprêtent à travailler. C'est votre peuple, vous ne devez en aucun cas tuer de civil.<br/><br/>
<font color='#ff0505'>Divers</font color><br/>
Ah oui, j'oubliais... Il y a des stocks de munitions dans quelques hangars. Quand on tape dedans à la grenade ou à l'arme lourde, ça fait KA-BOUM. A vous de voir.
"]];

player createDiaryRecord ["Diary", ["Mission", "
Commandant, en tant qu'un des fondateurs du mouvement de résistance polonais, votre réussite aura un impact décisif sur le suite. Réfléchissez bien à vos amnbitions car elles doivent guider vos choix tactiques. En plus, vous devrez savoir compter... Les pertes !<br/><br/>
<font color='#ff0505'>Conditions de victoire</font color><br/>
> Victoire éclatante<br/>
Vous réussissez les deux objectifs et avez moins de 25% de pertes<br/>
> Victoire majeure<br/>
Vous réussissez les deux objectifs et avez moins de 50% de pertes<br/>
> Victoire mineure<br/>
Vous réussissez un objectif et avez moins de 25% de pertes ou vous réussissez deux objectifs quelles que soient les pertes<br/>
> Défaite mineure<br/>
Vous réussissez un seul objectif avec plus de 25% de pertes, mais moins de 50% de pertes<br/>
> Défaite majeure<br/>
Vous réussissez un seul objectif avec plus de 50% de pertes, mais au moins un survivant<br/>
> Défaite totale et définitive<br/>
Vous ne réussissez aucun objectif et/ou tout le monde est mort<br/><br/>
<font color='#ff0505'>Un objectif est considéré comme détruit quand les troupes sont neutralisées, le matériel de combat et les munitions détruites (les véhicules de transport sont secondaires)</font color><br/>

"]];

player createDiaryRecord ["Diary", ["Situation", "
24 juin 2024, vers 3h00 du matin. Vous avez marché toute la nuit pour arriver sur la zone de combat. Le jour est en train de se lever.

"]]; 

player createDiaryRecord ["Diary", ["Contexte", "
A force de voter 'sécurité', les polonais ont hérité d'un gouvernement autoritaire qui a tourné de façon sournoise à la dictature.<br/><br/>
Après 10 ans de régression sociale, politique et intellectuelle, la population commence à en avoir sa dose des crétins qui pensent pouvoir penser pour eux.<br/><br/>
Depuis près d'un siècle, la belle région de Livonia a regardé passer les chars nazis, de l'Armée rouge, l'installation des militaires du régime... Tout ça en gardant le nez planté dans ses champs.<br/><br/>
C'est pourtant là, au plus profond de votre pays, que vous avez décidé de lancer la libération.<br/><br/>
Une seule <marker name ='marker_NoSpawn'>zone militaire</marker> garde la province, c'est donc l'endroit idéal pour faire une action d'éclat.
"]];