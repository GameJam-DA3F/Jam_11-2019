
fn_sang =
{
	[] spawn
	{
		sleep 1;

		titleText["", "BLACK OUT"];

		sleep 1;

		{
			_x call fn_hide;
		} forEach listeItems;

		sleep 0.5;

		titleText["", "BLACK IN"];

		playSound "waterphone";

		sleep 2;

		playSound "dieux";
	}; 
};

fn_eric =
{
	eric_1 switchMove "normal"; 
};

fn_cadavre =
{
	[] spawn
	{
		sleep 90;
		
		[chaise_pnj, "fn_hideNot"] spawn BIS_fnc_MP;

		sleep 0.1;

		[[], "fn_eric"] spawn BIS_fnc_MP;

		[[eric_1, "cris"], "fn_son3D"] spawn BIS_fnc_MP;

		sleep 3;

		eric_1 call fn_hideNot;

		{
			[_x, "fn_Simu"] spawn BIS_fnc_MP;
		} forEach listeItems_bis;

		sleep 0.5;

		[[meuble12, "chaises_bis"], "fn_son3D"] spawn BIS_fnc_MP;

		sleep 10;

		[[], "fn_textUnlock"] spawn BIS_fnc_MP;

		valeur_porte2 = 1;
		publicVariable "valeur_porte2";
	};
};
