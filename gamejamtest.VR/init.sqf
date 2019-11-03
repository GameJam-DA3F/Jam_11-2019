player addEventHandler ["Fired", {params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
if (currentWeapon player != "arifle_MX_F") exitWith {};
if !(alive player) exitWith {};

_Abysse_type  = 1;
switch (_Abysse_type) do {
    case 1:{


        _null = _projectile spawn {
            _pos = [0,0,0];
            waitUntil {
              _pos = getPos _this;
              !(isNull _this)
            };
            player setpos _pos;
        };



    };
    case 2:{

    };
    case 3:{

    };
};
}];