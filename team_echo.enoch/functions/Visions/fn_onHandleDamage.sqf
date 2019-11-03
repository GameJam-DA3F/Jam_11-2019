params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];
private _hits = (_unit getVariable ["hits", 0]) + 1;

private _distance = player distance _unit;
[_unit, (_distance * 2), _distance , 1] call BIN_fnc_setGravityPulse;
sleep 1;
cutText ["", "WHITE OUT", 0.5];
if (_hits isEqualTo 4) then {
	deleteVehicle _unit;
	cutText ["", "WHITE IN", 0.5];
} else {
	_hits = _hits + 1;
	_unit setVariable ["hits", _hits];
	_pos = [[[position _unit, 50]], ["water"]] call BIS_fnc_randomPos;
	_unit setPos _pos;
	cutText ["", "WHITE IN", 0.5];
	Echo_FoW_var_hasVision = false;
};