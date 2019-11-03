/*
Jam 03/11/2019 Arma3France DA3F
STEREOTeam

fn_ShowTextureMiroir.sqf
Fonction permettant d'afficher la texture video sur les miroirs
à partir du serveur en remotexec pour que tous les joueurs puissent la voir
*/
params["_obj","_path"];
_obj setObjectTextureGlobal [0, _path];