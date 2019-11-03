/*
Jam 03/11/2019 Arma3France DA3F
STEREOTeam

script_EntrerPalais.sqf
TP le pnj a l'interieur du palais magique sans porte
*/
private _ArgentJoueur = player getVariable ["ArgentJoueur",0];
if (_ArgentJoueur < 100) exitWith
{
	hint "Désolé tu n'as pas assez d'argent !";
};
player setVariable["ArgentJoueur", _ArgentJoueur - 100,true];


[] execVM "script_palais.sqf";
player setPos (getPos InterieurPalais);