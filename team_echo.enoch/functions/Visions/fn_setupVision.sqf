private _group = createGroup (playerSide);
private _unit = _group createUnit [(typeOf player), (position player), [], 50, "NONE"];
_unit addEventHandler ["HandleDamage", { _this call Echo_FoW_onHandleDamage }];
[_unit, 100, 25, 3] call BIN_fnc_setGravityPulse;