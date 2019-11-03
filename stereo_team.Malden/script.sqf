/*
Jam 03/11/2019 Arma3France DA3F
STEREOTeam

script.sqf
Initialisation de la map et du joueur
*/

// Initialisation des Actions des differents panneaux et PNJ
LancerPartie addAction ["Mon Beau Miroir ! (Mise 200$)",  "script_mirror.sqf","",1,false,true,"","!(LancerPartie getVariable ['GameActive', false]"];
PanneauQuiEstCe addAction ["Jouer a Qui-Est-ce ? (Mise 200$)",  "script_QuiEstCe.sqf","",1,false,true,"","!(PanneauQuiEstCe getVariable ['GameActive', false]"];
PanneauPalais addAction ["Entrer dans le palais (Prix 100$)", "script_EntrerPalais.sqf"];
PanneauSortir addAction ["Sortir du palais", "script_SortirPalais.sqf"];
PNJSDF addAction ["Echanger ses habits contre de l'argent", "script_SDF.sqf"];
VendeurChampignons addAction ["Acheter des beaux Champignons Rouge et Blanc", "script_Champipi.sqf"];
VendeurChampignons2 addAction ["Acheter des beaux Champignons Rouge et Blanc", "script_Champipi.sqf"];
AgentSecu1 addAction ["Acheter des Bouchons d'oreilles", "script_BouchonOreilles.sqf"];
AgentSecu2 addAction ["Acheter des Bouchons d'oreilles", "script_BouchonOreilles.sqf"];

// Initialisation des differentes textures sur les objets
PanneauAccueil1 setObjectTextureGlobal [0, "PanneauPub.paa"];
PanneauAccueil2 setObjectTextureGlobal [0, "PanneauAccueil2.paa"];
PanneauAccueil3 setObjectTextureGlobal [0, "PanneauAccueil3.paa"];
PanneauAccueil4 setObjectTextureGlobal [0, "PanneauAccueil4.paa"];
PanneauAccueil5 setObjectTextureGlobal [0, "PanneauAccueil5.paa"];
panneautest setObjectTextureGlobal [0, "Panneau.paa"];
//PanneauQuiEstCe setObjectTextureGlobal [0, "PanneauQEC.jpg"];
LancerPartie setObjectTextureGlobal [0, "Miroir_Qui.paa"];
PanneauPalais setObjectTextureGlobal [0, "Miroir_Glaces.paa"];

//on applique la texture sable partout sur le sol VR
_PanneauSolSable = nearestobjects [player,["Land_VR_Block_02_F"], 1000];
{
	_x setObjectTextureGlobal [0, "TextureSable.paa"];
} foreach _PanneauSolSable;

// Initialisation de l'objet caméra pour le jeu du miroir
Helilian = "land_helipadempty_f" createVehicle position player;
createVehicleCrew Helilian;

/* On crée la caméra et on envoi l'image en texture HelilianTexture */
cam = "camera" camCreate [0,0,0];
cam attachTo [Helilian, [0,2,1.5]];
Helilian setDir 180;