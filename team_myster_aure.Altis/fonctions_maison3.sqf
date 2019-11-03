
fn_autres_3 =
{
	switch (_this) do {
		case 1: 
		{ 
			valeur_chaises1 = 1;
			publicVariable "valeur_chaises1";

			[[tel2_2, "chaises"], "fn_son3D"] spawn BIS_fnc_MP;

			[] spawn
			{
				sleep 20;

				[chaise1, "fn_Simu"] spawn BIS_fnc_MP;
				[chaise2, "fn_Simu"] spawn BIS_fnc_MP;
				[chaise3, "fn_Simu"] spawn BIS_fnc_MP;
				[chaise4, "fn_Simu"] spawn BIS_fnc_MP;
				[chaise5, "fn_Simu"] spawn BIS_fnc_MP;
				[chaise6, "fn_Simu"] spawn BIS_fnc_MP;

				sleep 0.5;

				[[chaise2, "chaises_bis"], "fn_son3D"] spawn BIS_fnc_MP;
			};
		};
	};
};