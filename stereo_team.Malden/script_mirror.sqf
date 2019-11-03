/*
Jam 03/11/2019 Arma3France DA3F
STEREOTeam

scriptmirror.sqf
Gestion du miroir
*/
// Verrou pour ne pas lancer une partie en meme temps que celle ci
LancerPartie setvariable ["GameActive", true, true];
// Verification que le joueur ai assez d'argent
private _ArgentJoueur = player getVariable ["ArgentJoueur",0];
if (_ArgentJoueur < 200) exitWith
{
	hint "Désolé tu n'as pas assez d'argent !";
};
player setVariable["ArgentJoueur", _ArgentJoueur - 200];

//On recupere tous les participants a 10m du miroir
_TirageAuSort = nearestObjects [panneautest, ["man"], 10];

// Initialisation de la variable pour tirage au sort
nbParticipants = 0;

// Tirage au sort du gagnant
for "_i" from 0 to (count _TirageAuSort) -1 do {
	nbParticipants = nbParticipants + 1;
};
nbParticipants = nbParticipants - 1;
// Mais ki k'es le plus bo ????
gagnant = round(random nbParticipants);

// On met la camera sur le gagnant
[panneautest, "#(argb,512,512,1)r2t(HelilianTexture,1)"] remoteExec ["STEREO_fnc_ShowTextureMiroir", 2];

cam cameraEffect ["Internal", "Front", "HelilianTexture"];
cam attachTo [_TirageAuSort select gagnant, [0,2,2]];
Legagnant = _TirageAuSort select gagnant;
Legagnant addScore 1;
cam setDir 180;


[Legagnant] remoteExec ["STEREO_fnc_GagnantMiroirMagique", 2];
sleep 5;

// On remet la texture de base
panneautest setObjectTexture [0, "Panneau.paa"];

//LancerPartie addAction ["Mon Beau Miroir !", "script_mirror.sqf"];
LancerPartie setvariable ["GameActive", false, true];