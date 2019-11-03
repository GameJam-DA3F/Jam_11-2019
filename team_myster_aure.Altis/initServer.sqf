
[] spawn
{
	while {true} do {
		{
			deleteVehicle _x;
		} foreach AllDead;

		sleep 0.1;
	};
};

/* 
[[1988, 5, 16, 1, 0]] remoteExec ["setDate"];

[] spawn
{
	while {true} do
	{
		if (daytime <= 4) then
		{
			[[1988, 5, 16, 1, 0]] remoteExec ["setDate"];
		};
		
		sleep 60;
	};
}; 
*/

listeItems = 
[
	sang1, sang2, sang3, sang4, sang5, sang6, sang7, sang8, sang9, sang10, sang11, sang12, sang13, sang14, sang15, sang16, sang17, sang18, sang19, 
	sang19_1, sang19_2, sang19_3, sang19_4, sang19_5, sang19_6, edouard_1_1
];
publicVariable "listeItems";

listeItems_bis = 
[
	meuble1, meuble2, meuble3, meuble4, meuble5, meuble6, meuble7, meuble8, meuble9, 
	meuble10, meuble11, meuble12, meuble13, meuble14, meuble15, meuble16, meuble17, meuble18, meuble19, 
	meuble20, meuble21
];
publicVariable "listeItems_bis";

[] spawn
{
	{
		_x call fn_hideNot;
	} forEach listeItems;
}; 

maison1 call fn_fermerToutesPortes;
maison2 call fn_fermerToutesPortes;
maison3 call fn_fermerToutesPortes;
maison4 call fn_fermerToutesPortes;
maison5 call fn_fermerToutesPortes;

valeur_feuille2 = 0;
publicVariable "valeur_feuille2";

valeur_tableau1 = 0;
publicVariable "valeur_tableau1";

valeur_feuille1 = 0;
publicVariable "valeur_feuille1";

valeur_doc4_1 = 0;
publicVariable "valeur_doc4_1";

valeur_monnaie1_1 = 0;
publicVariable "valeur_monnaie1_1";

valeur_feuille4 = 0;
publicVariable "valeur_feuille4";

valeur_porte1 = 0;
publicVariable "valeur_porte1";

valeur_chaises1 = 0;
publicVariable "valeur_chaises1";

valeur_keypad1 = 0;
publicVariable "valeur_keypad1";

valeur_keypad2 = 0;
publicVariable "valeur_keypad2";

valeur_pc1 = 0;
publicVariable "valeur_pc1";

valeur_pc2 = 0;
publicVariable "valeur_pc2";

valeur_porte2 = 0;
publicVariable "valeur_porte2";

valeur_keypad1_bis = 0;
publicVariable "valeur_keypad1_bis";

valeur_keypad2_bis = 0;
publicVariable "valeur_keypad2_bis";

valeur_tab = 0;
publicVariable "valeur_tab";