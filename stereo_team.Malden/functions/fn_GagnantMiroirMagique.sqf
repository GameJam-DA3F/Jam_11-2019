/*
Jam 03/11/2019 Arma3France DA3F
STEREOTeam

fn_GagnantMiroirMagique.sqf
Fonction permettant d'effectuer les actions sur le gagnants a partir du serveur en remotexec pour le multijoueur
*/
params["_gagnant"];
[_gagnant, "Acts_Dance_01"] remoteExec ["switchMove", 0];
sleep 10;
[_gagnant, ""] remoteExec ["switchMove", 0];
private _ArgentJoueur = _gagnant getVariable ["ArgentJoueur",0];
_ArgentJoueur = _ArgentJoueur + 400;
_gagnant setVariable["ArgentJoueur", _ArgentJoueur,true];