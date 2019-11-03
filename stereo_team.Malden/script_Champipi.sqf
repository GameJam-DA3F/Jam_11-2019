/*
Jam 03/11/2019 Arma3France DA3F
STEREOTeam

script_Champipi.sqf
Effet visuel et hallucination suite a la consommation de champignons magiques
*/
// On fait un effet de flou graphique qui diminue avec le temps
[] spawn {
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [10];
"dynamicBlur" ppEffectCommit 1;
positiondujoueur = position player;
// On ajoute a l'effet de flou des hallucinations en dupliquant des
// joueurs identiques au player pour reprendre le theme du miroir
Halu1 = typeOf player createVehicle getMarkerPos 'PtHalu1';
Halu2 = typeOf player createVehicle getMarkerPos 'PtHalu2';
Halu3 = typeOf player createVehicle getMarkerPos 'PtHalu3';
Halu4 = typeOf player createVehicle getMarkerPos 'PtHalu4';
Halu5 = typeOf player createVehicle getMarkerPos 'PtHalu5';
Halu6 = typeOf player createVehicle getMarkerPos 'PtHalu6';
Halu7 = typeOf player createVehicle getMarkerPos 'PtHalu7';
Halu8 = typeOf player createVehicle getMarkerPos 'PtHalu8';
Halu9 = typeOf player createVehicle getMarkerPos 'PtHalu9';
sleep 10;
"dynamicBlur" ppEffectAdjust [5];
"dynamicBlur" ppEffectCommit 1;

Halu10 = typeOf player createVehicle getMarkerPos 'PtHalu10';
Halu11 = typeOf player createVehicle getMarkerPos 'PtHalu11';
Halu12 = typeOf player createVehicle getMarkerPos 'PtHalu12';
Halu13 = typeOf player createVehicle getMarkerPos 'PtHalu13';
Halu14 = typeOf player createVehicle getMarkerPos 'PtHalu14';
Halu15 = typeOf player createVehicle getMarkerPos 'PtHalu15';
Halu16 = typeOf player createVehicle getMarkerPos 'PtHalu16';
Halu17 = typeOf player createVehicle getMarkerPos 'PtHalu17';
Halu18 = typeOf player createVehicle getMarkerPos 'PtHalu18';
Halu19 = typeOf player createVehicle getMarkerPos 'PtHalu19';
Halu20 = typeOf player createVehicle getMarkerPos 'PtHalu20';

sleep 10;

"dynamicBlur" ppEffectAdjust [3];
"dynamicBlur" ppEffectCommit 1;
// on nettoie tout le bordel ^^
deleteVehicle Halu1;
deleteVehicle Halu2;
deleteVehicle Halu3;
deleteVehicle Halu4;
deleteVehicle Halu5;
deleteVehicle Halu6;
deleteVehicle Halu7;
deleteVehicle Halu8;
deleteVehicle Halu9;
deleteVehicle Halu10;
deleteVehicle Halu11;
deleteVehicle Halu12;
deleteVehicle Halu13;
deleteVehicle Halu14;
deleteVehicle Halu15;
deleteVehicle Halu16;
deleteVehicle Halu17;
deleteVehicle Halu18;
deleteVehicle Halu19;
deleteVehicle Halu20;
"dynamicBlur" ppEffectEnable false;
}