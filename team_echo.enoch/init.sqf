// Functions (because I'm lazzy)
/*
Echo_FoW_fnc_initVision = {
	params ["_unit"];
	private _env = [date, overcast, fogParams, rain, lightnings, windStr, wind, windDir, gusts];
	private _oldPos = getPos player;
	private _pos = [[[[(worldSize / 2), (worldSize / 2), 0], (worldSize / 2)]],["water"]] call BIS_fnc_randomPos;
	player setPos _pos;
	// Visions
	PPeffect_colorC = ppEffectCreate ["ColorCorrections",1500];
	PPeffect_colorC ppEffectAdjust [0.853238,1.44741,-0.0724897,[0,0,0.671717,0.090909],[3,1.12787,0.0286386,1.09364],[-4.75,1.75,4,0]];
	PPeffect_colorC ppEffectEnable true;
	PPeffect_colorC ppEffectCommit 0;
	setDate [2035, 1, 10, 0, 0];
	private _time = 2;
	_time setOvercast 0.5;
	_time setFog [1, 0.1, ((getPosASL player)#2) + 5];
	_time setRain 1;
	_time setLightnings 1;
	_time setWindStr 1;
	_time setWindForce 1;
	_time setWindDir 120;
	_time setGusts 1;
	forceWeatherChange;
	setApertureNew [3, 2, 1, 1];

	private _music = [
		["anomaly_07_05_v1", 53],
		["anomaly_07_05_v2", 41],
		["Music_Failed_Contact", 34],
		["Music_Failed_Contact_02", 32]
	]#difficulty;
	playMusic _music;
};*/


/*
	// ["draw", [(findDisplay 46), "Freeroam2_ambush"]] call BIN_fnc_playVision;
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
*/


private _layer = 16224 cutText ["Initializing Mission...", "BLACK IN", 0];
// Mission integrity check
private _documents = Echo_FoW_Obj_Documents;
if (isNil "_documents") exitWith {};
Echo_FoW_var_hasVision = false;

// Difficulty Settings
private _enemySide = [west, east] select ((playerSide isEqualTo west) || playerSide isEqualTo independent);
private _difficultyCoef = difficulty + 1;
private _area = 50 * _difficultyCoef;
private _groupNumber = 5 + (difficulty * difficulty);
private _visionTimer = 30 / _difficultyCoef;
private _visionCoef = 1 * _difficultyCoef;
private _areSpecialForces = (_difficultyCoef > 2);


// Initializing Dynamic AI
private ["_unitsNumber", "_group", "_pos"];
// for "_i" from 1 to _groupNumber do {
systemChat "Dynamic Group Generation Override!";
for "_i" from 1 to 2 do { //--- Debug
	_pos = [[[position _documents, _area]],["water"]] call BIS_fnc_randomPos;
	// https://github.com/Heyoxe/coopr-coopr-21-dev/blob/master/functions/Math/fn_randomInterval.sqf
	// _unitsNumber = (round(random ((5 + _difficultyCoef) - (2 + _difficultyCoef)))) + (2 + _difficultyCoef);
	systemChat "Dynamic Unit Generation Override!";
	_unitsNumber = 1; //--- Debug
	_group = [_pos, _enemySide, _unitsNumber] call BIS_fnc_spawnGroup;
	[_group, (getPos (leader _group)), 100] call BIS_fnc_taskPatrol;
};


// Adding the EventHandler for player's Visions
private ["_unit"];
{
	_unit = _x;
	_unit addEventHandler ["HandleDamage", {
		params ["_unit", "_killer", "_instigator", "_useEffects"];
		Echo_FoW_var_hasVision = true;
		//[_unit] spawn Echo_FoW_fnc_initVision;
		private _pos = [nil, ["water"]] call BIS_fnc_randomPos;
		player setPos _pos;
		[_unit] spawn Echo_FoW_fnc_enterVision;
		systemChat "Kill a part of yourself !";
		if (_instigator isEqualTo player) then {
			if (!Echo_FoW_var_hasVision) then {
			};
		};
	}];
} forEach (allUnits - [player]);
16224 cutFadeOut 2;