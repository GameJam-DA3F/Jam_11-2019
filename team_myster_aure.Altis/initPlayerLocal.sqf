showHUD [true, false, false, false];
showGPS false;
showCompass false;

setShadowDistance 500;
setViewDistance 500;
setObjectViewDistance 500;

//player allowDamage false;

execVM "actions_maison1.sqf";
execVM "actions_maison2.sqf";
execVM "actions_maison3.sqf";
execVM "actions_maison4.sqf";

tableau2 setObjectTexture [0, "image\load.jpg"];
tableau3 setObjectTexture [0, "image\load.jpg"];

call fn_intro;

[] spawn 
{
	while {true} do 
	{
		if (valeur_porte1 == 1 && vehicle player in list declencheur1) then 
		{
			[maison2, 3, maison3, 1] call fn_ouvrirPorte2;
			
			sleep 6;
		};

		if (valeur_porte2 == 1 && vehicle player in list declencheur2) then 
		{
			[maison4, 3, maison5, 1] call fn_ouvrirPorte2;
			
			sleep 6;
		};
		
		sleep 0.1;
	};
};

[] spawn 
{
	while {true} do 
	{
		playSound "ambiance";
		
		sleep 130;
	};
};