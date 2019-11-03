/*
Jam 03/11/2019 Arma3France DA3F
STEREOTeam

script_palais.sqf
Met la texture de maniere dynamique sur tous les ecrans du palais
pour effectuer des effets de miroirs infinis
*/
_MursMiroir=nearestobjects [player,["Land_WallSign_01_F"], 20000];
_ary=[];
_cpt = 0;
{
_ary=_ary+[getpos _x];
	_x setObjectTexture [0, "TestTexture.jpg"];

	call compile format ["HelipadCam%1 = 'land_helipadempty_f' createVehicle position player", _cpt];
	call compile format ["createVehicleCrew HelipadCam%1", _cpt];
	call compile format ["camPalais%1 = 'camera' camCreate [0,0,0]", _cpt];
	call compile format ["camPalais%1 attachTo [HelipadCam%1, [0,0,0.3]]",  _cpt];

	call compile format ["camPalais%1 cameraEffect ['Internal', 'Front', 'HelipadCamTexture%1']", _cpt];
	call compile format ["_x setObjectTexture [0, '#(argb,512,512,1)r2t(HelipadCamTexture%1,1)']", _cpt];
	call compile format ["HelipadCam%1 attachTo [_x, [0,0,-0.5]]", _cpt];

	_cpt = _cpt + 1;

} foreach _MursMiroir;

