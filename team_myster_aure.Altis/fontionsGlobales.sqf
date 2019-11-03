
fn_interface_intro =
{
	waitUntil {!(isNull (findDisplay 46))};
	disableSerialization;

	1997 cutRsc ["intro", "PLAIN"];
};

fn_interface_intro_kill =
{
	1997 cutText ["", "PLAIN"];
};

fn_interface_endGame =
{
	waitUntil {!(isNull (findDisplay 46))};
	disableSerialization;

	1998 cutRsc ["endGame", "PLAIN"];
};

fn_hide =
{
	_this hideObjectGlobal false;
};

fn_hideNot =
{
	_this hideObjectGlobal true;
};

fn_Simu =
{
	_this enableSimulationGlobal true;
};

fn_son3D =
{
	_objet = _this select 0;
	_son = _this select 1;

	_objet say3D _son;
};

fn_textPorte =
{
	titleText["Porte ouverte !", "PLAIN DOWN"];
};

fn_textCle =
{
	titleText["Vous avez récupérer la clé, vous pouvez maintenant ouvrir la porte", "PLAIN DOWN"];
};

fn_textUnlock =
{
	titleText["La porte est maintenant dévérouillée", "PLAIN DOWN"];
};

fn_ouvrirPorte =
{
	_maison = _this select 0;
	_door = _this select 1;

	_disabled = format["bis_disabled_Door_%1", _door];
	_maison setVariable [_disabled, 0, true];
	[_maison, _door, 1] call BIS_fnc_door;

	[_maison, _door] spawn
	{
		_maison2 = _this select 0;
		_door2 = _this select 1;

		sleep 5;

		_disabled = format["bis_disabled_Door_%1", _door2];
		[_maison2, _door2, 0] call BIS_fnc_door;
		_maison2 setVariable [_disabled, 1, true];
	};
};

fn_ouvrirPorte_1 =
{
	_maison = _this select 0;
	_door = _this select 1;

	_disabled = format["bis_disabled_Door_%1", _door];
	_maison setVariable [_disabled, 0, true];
};

fn_ouvrirPorte2 =
{
	_maison = _this select 0;
	_door = _this select 1;

	_maison_bis = _this select 2;
	_door_bis = _this select 3;

	_disabled = format["bis_disabled_Door_%1", _door];
	_maison setVariable [_disabled, 0, true];
	[_maison, _door, 1] call BIS_fnc_door;

	_disabled_bis = format["bis_disabled_Door_%1", _door_bis];
	_maison_bis setVariable [_disabled_bis, 0, true];
	[_maison_bis, _door_bis, 1] call BIS_fnc_door;

	[_maison, _door, _maison_bis, _door_bis] spawn
	{
		_maison2 = _this select 0;
		_door2 = _this select 1;

		_maison_bis2 = _this select 2;
		_door_bis2 = _this select 3;

		sleep 5;

		_disabled = format["bis_disabled_Door_%1", _door2];
		[_maison2, _door2, 0] call BIS_fnc_door;
		_maison2 setVariable [_disabled, 1, true];

		_disabled_bis = format["bis_disabled_Door_%1", _door_bis2];
		[_maison_bis2, _door_bis2, 0] call BIS_fnc_door;
		_maison_bis2 setVariable [_disabled_bis, 1, true];
	};
};

fn_fermerToutesPortes =
{
	_maison = _this;

	_maison spawn
	{
		_maison2 = _this;

		for "_i" from 1 to 3 do {
			_disabled = format["bis_disabled_Door_%1", _i];
			[_maison2, _i, 0] call BIS_fnc_door;
			_maison2 setVariable [_disabled, 1, true];
		};
	};
};

fn_intro =
{
	call fn_interface_intro;

	sleep 1;

	playSound "intro";

	sleep 24;

	call fn_interface_intro_kill;
};