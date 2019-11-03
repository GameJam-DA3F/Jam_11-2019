params [
	["_object", objNull, []]
];

private _distance = player distance _object;
playMusic "Music_Arrival";
openmap [false, false]; 
for "_i" from 0 to 0.999 step (1 / 3) do { 
	player playActionNow "Stop"; 
	enableCamShake true; 
	addCamShake [linearconversion [0, 1, _i, 2, 16], 0.5, 17]; 
	setaperture linearconversion [0, 1, _i, 2, 0.3];
	sleep linearconversion [0, 1, _i, 0.1, 0.05];
};
[_object, (_distance * 2), _distance , 1] call BIN_fnc_setGravityPulse;
sleep 3;
cutText ["", "WHITE OUT", 1];
sleep 1;
private _visionsSound = format ["Sfx_Contact_Vision_0%1", ((floor random 5) + 1)];
private _visionsImage = format ["\a3\Missions_F_Contact\Data\Img\Visions\vision%1_%2.jpg", ((floor random 2) + 1), ((floor random 3) + 1)];
playsound [_visionsSound, true]; 
setaperture 0.1;
private _ctrl = (findDisplay 46) ctrlCreate ["RscPicture", 16224];
_ctrl ctrlSetFade 1;
_ctrl ctrlSetPosition [safeZoneX, safeZoneY, safeZoneW, safeZoneH];
_ctrl ctrlSetText _visionsImage;
_ctrl ctrlCommit 0;
_ctrl ctrlSetFade 0.5;
_ctrl ctrlCommit 1;
sleep 3;
setaperture -1;
_ctrl ctrlSetFade 1;
_ctrl ctrlCommit 1;
sleep 1;
cutText ["", "WHITE IN", 1];
ctrlDelete _ctrl;
[_object, 0, 0, 0, false] call BIN_fnc_setGravityPulse;
// Visions
PPeffect_colorC = ppEffectCreate ["ColorCorrections",1500];
PPeffect_colorC ppEffectAdjust [0.853238,1.44741,-0.0724897,[0,0,0.671717,0.090909],[3,1.12787,0.0286386,1.09364],[-4.75,1.75,4,0]];
PPeffect_colorC ppEffectEnable true;
PPeffect_colorC ppEffectCommit 0;
setDate [2035, 1, 10, 0, 0];
private _time = 5;
_time setOvercast 0.5;
//_time setFog [1, 1, 185];
_time setRain 1;
_time setLightnings 1;
_time setWindStr 1;
_time setWindForce 1;
_time setWindDir 120;
_time setGusts 1;
forceWeatherChange;
[_object] spawn Echo_FoW_fnc_setupVision;