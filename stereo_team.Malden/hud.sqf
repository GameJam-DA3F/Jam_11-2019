/*
Jam 03/11/2019 Arma3France DA3F
STEREOTeam

hud.sqf
Affiche le hud (Heure en jeu et argent du joueur)
*/
_rscLayer = "STEREO_StatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc ["STEREO_StatusBar","PLAIN"];
[] spawn {

	private _heure = 0;
	for "_i" from 0 to 1 step 0 do {
		sleep 1;
		_heure = [daytime,"HH:MM"] call bis_fnc_timetostring;

		((uiNamespace getVariable "STEREO_StatusBar")displayCtrl 1000)ctrlSetText format["Argent : %1$ | Heure : %2 ",player getVariable ["ArgentJoueur",0] , _heure];
    };
};