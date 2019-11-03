/*
Jam 03/11/2019 Arma3France DA3F
STEREOTeam

script_SDF.sqf
PNJ permettant d'echanger les habits du player contre 10 000$
*/
// Recuperation des habits du joueurs
private _JoueurHabit = player getVariable ["Habit",0];
// Verification que le joueur n'a pas deja fait le troc
if (_JoueurHabit == 1) then {
	// on met les habits au SDF et on incremente le compte en banque du joueur de 10 000$
	PNJSDF addUniform uniform player;
	removeUniform player;
	private _ArgentJoueur = player getVariable ["ArgentJoueur",0];
	_ArgentJoueur = _ArgentJoueur + 10000;
	player setVariable["ArgentJoueur", _ArgentJoueur,true];
	player setVariable ["Habit", 0,true];
}
else
	{ hint "Tu n'as plus d'habits a me vendre !!!";};