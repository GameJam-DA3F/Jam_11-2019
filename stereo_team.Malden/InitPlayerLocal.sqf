/*
Jam 03/11/2019 Arma3France DA3F
STEREOTeam

InitPlayerLocal.sqf
Initialisation des variables locales utilisateur
*/
player setVariable ["ArgentJoueur", 1000,true];
player setVariable ["Habit", 1,true];
panneautest setObjectTexture [0, "#(argb,512,512,1)r2t(HelilianTexture,1)"];
cam cameraEffect ["Internal", "Front", "HelilianTexture"];
panneautest setObjectTexture [0, "Panneau.paa"];
