
fn_keypad =
{
	closeDialog 0;
	disableSerialization;

	createDialog "menu1";
	waitUntil {dialog};

	IDkeypad = _this;
	valeur = "";
	liste = "";
	menuOn = 1;

	[] spawn
	{
		while {menuOn == 1} do {
			liste = liste + format["%1", valeur];
			valeur = "";

			_ecran = (findDisplay 154) displayCtrl 100;

			_ecran ctrlSetStructuredText parseText format["<t size='2' align='center'>%1</t>", liste];

			sleep 0.1;
		};
	};
};

fn_quit =
{
	switch (_this) do {
		case 1: 
		{
			menuOn = 0;
			IDkeypad = 0;
		};
		case 2: 
		{
			IDenigme = 0;
		};
	};
	
	closeDialog 1;
};

fn_numero =
{
	valeur = _this;
};

fn_valider_keypad =
{
	switch (IDkeypad) do 
	{
		case 1: 
		{ 
			if (liste == "2945") then 
			{
				menuOn = 0;

				closeDialog 1;

				titleText["Bon code", "PLAIN DOWN", 0.25];
				playSound "bip";

				IDkeypad = 0;

				[maison1, 2] spawn fn_ouvrirPorte;
				[[], "fn_textPorte"] spawn BIS_fnc_MP;
			}
			else
			{
				titleText["Mauvais code", "PLAIN DOWN", 0.25];
				playSound "AddItemFailed";

				liste = "";
			};
		};
		case 2: 
		{ 
			if (liste == "7841") then 
			{
				menuOn = 0;

				closeDialog 1;

				titleText["Bon code", "PLAIN DOWN", 0.25];
				playSound "bip";

				IDkeypad = 0;

				valeur_porte1 = 1;
				publicVariable "valeur_porte1";

				valeur_feuille4 = 0;
				publicVariable "valeur_feuille4";

				[] spawn
				{
					sleep 1;

					[[], "fn_textCle"] spawn BIS_fnc_MP;
				};
			}
			else
			{
				titleText["Mauvais code", "PLAIN DOWN", 0.25];
				playSound "AddItemFailed";

				liste = "";
			};
		};
	};		
};

fn_menuEnigmes =
{
	closeDialog 0;
	disableSerialization;

	createDialog "enigmes";
	waitUntil {dialog};

	IDkeypad = _this select 0;
	IDenigme = _this select 1;

	_titre = (findDisplay 152) displayCtrl 1101;
	_enigme = (findDisplay 152) displayCtrl 1100;

	switch (IDkeypad) do {
		case 1:
		{
			switch (IDenigme) do {
				case 1: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>Enigme 1 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>Je ne suis pas matériel, je fais naître et mourir, enfin je manque souvent.</t>"];
				};
				case 2: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>Enigme 2 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>Lorsqu'on me connait, on veut me partager, mais alors je ne suis plus.</t>"];
				};
				case 3: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>Enigme 3 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>Je peux voler mais je n'ai pas d'ailes, je peux vous pousser mais je n'ai pas de mains, et je suis invisible.</t>"];
				};
				case 4: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>Enigme 4 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>Quand j'ai deux S on peut me manger quand on en retire un, on ne le peux plus.</t>"];
				};
			};
		};
		case 2: 
		{ 
			switch (IDenigme) do {
				case 1: 
				{ 
					_titre ctrlSetStructuredText parseText format[""];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>tiun</t>"]; // nuit
				};
				case 2: 
				{ 
					_titre ctrlSetStructuredText parseText format[""];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>refne</t>"]; // enfer
				};
				case 3: 
				{ 
					_titre ctrlSetStructuredText parseText format[""];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>trom</t>"]; // mort
				};
			};
		};
		case 3: 
		{ 
			switch (IDenigme) do {
				case 1: 
				{ 
					_titre ctrlSetStructuredText parseText format[""];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>lam</t>"]; // mal
				};
				case 2: 
				{ 
					_titre ctrlSetStructuredText parseText format[""];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>duahc</t>"]; // chaud
				};
				case 3: 
				{ 
					_titre ctrlSetStructuredText parseText format[""];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>laturb</t>"]; // brutal
				};
			};
		};
		case 4:
		{
			switch (IDenigme) do {
				case 1: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>Enigme 1 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.5' align='center'>Je suis de terre, de feu et de pierre, je suis de terre, de feu et de pierre, et je me rendors jusqu'à ma prochaine effusion d'or.</t>"];
				};
				case 2: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>Enigme 2 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>Je ne sais imiter que toi. Quand on se voit, c'est toujours face à face.</t>"];
				};
				case 3: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>Enigme 3 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>Quand je coule je démontre la peine. Avec une lettre de plus, tous le quartier est averti.</t>"];
				};
			};
		};
		case 5:
		{
			switch (IDenigme) do {
				case 1: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>emgine 1 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>ej sius donr emmoc enu emmop, donforp emmoc enu essat, suos erret ej sius, te ej en echés siamaj.</t>"];
				};
				case 2: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>emgine 2 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>ia'j xis sélc snas serurres sed no'uq em ettarg ej erumrum.</t>"];
				};
				case 3: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>emgine 3 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>ne em tanvel ej en siaf sap ed tiurb siam ej ellievér tuot el edonm.</t>"];
				};
			};
		};
		case 6:
		{
			switch (IDenigme) do {
				case 1: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>Enigme 1 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>Réponse 1 :</t>"];
				};
				case 2: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>Enigme 2 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>Réponse 2 :</t>"];
				};
				case 3: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>Enigme 3 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>Réponse 3 :</t>"];
				};
			};
		};
		case 7:
		{
			switch (IDenigme) do {
				case 1: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>emgine 1 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>esnoper 1 :</t>"];
				};
				case 2: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>emgine 2 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>esnoper 2 :</t>"];
				};
				case 3: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>emgine 3 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>esnoper 3 :</t>"];
				};
			};
		};
		case 8:
		{
			switch (IDenigme) do {
				case 1: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>Enigme 1 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>soleil</t>"];
				};
				case 2: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>Enigme 2 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>eau</t>"];
				};
				case 3: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>Enigme 3 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>enfant</t>"];
				};
			};
		};
		case 9:
		{
			switch (IDenigme) do {
				case 1: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>emgine 1 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>rion</t>"];
				};
				case 2: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>emgine 2 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>emmef</t>"];
				};
				case 3: 
				{ 
					_titre ctrlSetStructuredText parseText format["<t size='2' align='center'>emgine 3 :</t>"];
					_enigme ctrlSetStructuredText parseText format
					["<t size='1.75' align='center'>slitneg</t>"];
				};
			};
		};
	};
};

fn_valider_enigmes =
{
	_ecran = (findDisplay 152) displayCtrl 1401;
	_text = ctrlText _ecran;

	switch (IDkeypad) do {
		case 1:
		{
			switch (IDenigme) do 
			{
				case 1: 
				{ 
					if ((toLower _text) == "le temps" || (toLower _text) == "temps") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[1, 2] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 2: 
				{ 
					if ((toLower _text) == "un secret" || (toLower _text) == "secret") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[1, 3] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 3: 
				{ 
					if ((toLower _text) == "le vent" || (toLower _text) == "vent") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[1, 4] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 4:
				{
					if ((toLower _text) == "un poisson" || (toLower _text) == "poisson") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[maison2, 2] spawn fn_ouvrirPorte;
						[[], "fn_textPorte"] spawn BIS_fnc_MP;
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
			};	
		};
		case 2:
		{
			switch (IDenigme) do 
			{
				case 1: 
				{ 
					if ((toLower _text) == "ruoj") then // jour
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[2, 2] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 2: 
				{ 
					if ((toLower _text) == "sidarap") then // paradis
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[2, 3] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 3: 
				{ 
					if ((toLower _text) == "eiv") then // vie
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[maison3, 2] spawn fn_ouvrirPorte;
						[[], "fn_textPorte"] spawn BIS_fnc_MP;

						[] spawn
						{
							sleep 20;

							playSound "toctoc";
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
			};
		};
		case 3:
		{
			switch (IDenigme) do 
			{
				case 1: 
				{ 
					if ((toLower _text) == "neib") then // bien
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[3, 2] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 2: 
				{ 
					if ((toLower _text) == "diorf") then // froid
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[3, 3] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 3: 
				{ 
					if ((toLower _text) == "xuod") then // doux
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[maison3, 3, maison4, 1] call fn_ouvrirPorte2;
						[[], "fn_textPorte"] spawn BIS_fnc_MP;
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
			};
		};
		case 4:
		{
			switch (IDenigme) do 
			{
				case 1: 
				{ 
					if ((toLower _text) == "un volcan" || (toLower _text) == "volcan") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[4, 2] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 2: 
				{ 
					if ((toLower _text) == "un reflet" || (toLower _text) == "reflet") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[4, 3] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 3:
				{
					if ((toLower _text) == "une larme" || (toLower _text) == "larme") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						valeur_pc1 = 1;
						publicVariable "valeur_pc1";
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
			};	
		};
		case 5:
		{
			switch (IDenigme) do 
			{
				case 1: 
				{ 
					if ((toLower _text) == "nu tiup" || (toLower _text) == "tiup") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[5, 2] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 2: 
				{ 
					if ((toLower _text) == "enu eratiug" || (toLower _text) == "eratiug") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[5, 3] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 3:
				{
					if ((toLower _text) == "el lielos" || (toLower _text) == "lielos") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						if (valeur_pc2 == 0) then {
							[[], "fn_sang"] spawn BIS_fnc_MP;
						};

						valeur_pc2 = 1;
						publicVariable "valeur_pc2";
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
			};	
		};
		case 6:
		{
			switch (IDenigme) do 
			{
				case 1: 
				{ 
					if ((toLower _text) == "un volcan" || (toLower _text) == "volcan") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[6, 2] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 2: 
				{ 
					if ((toLower _text) == "un reflet" || (toLower _text) == "reflet") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[6, 3] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 3:
				{
					if ((toLower _text) == "une larme" || (toLower _text) == "larme") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						valeur_keypad1 = 1;
						publicVariable "valeur_keypad1";

						if (valeur_keypad1 == 1 && valeur_keypad2 == 1) then 
						{
							[maison4, 2] spawn fn_ouvrirPorte;
							[[], "fn_textPorte"] spawn BIS_fnc_MP;

							call fn_cadavre;
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
			};	
		};
		case 7:
		{
			switch (IDenigme) do 
			{
				case 1: 
				{ 
					if ((toLower _text) == "nu tiup" || (toLower _text) == "tiup") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[7, 2] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 2: 
				{ 
					if ((toLower _text) == "enu eratiug" || (toLower _text) == "eratiug") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[7, 3] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 3:
				{
					if ((toLower _text) == "el lielos" || (toLower _text) == "lielos") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						valeur_keypad2 = 1;
						publicVariable "valeur_keypad2";

						if (valeur_keypad1 == 1 && valeur_keypad2 == 1) then 
						{
							[maison4, 2] spawn fn_ouvrirPorte;
							[[], "fn_textPorte"] spawn BIS_fnc_MP;

							call fn_cadavre;
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
			};	
		};
		case 8:
		{
			switch (IDenigme) do 
			{
				case 1: 
				{ 
					if ((toLower _text) == "lune") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[8, 2] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 2: 
				{ 
					if ((toLower _text) == "feu") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[8, 3] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 3:
				{
					if ((toLower _text) == "adulte") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						valeur_keypad1_bis = 1;
						publicVariable "valeur_keypad1_bis";

						if (valeur_keypad1_bis == 1 && valeur_keypad2_bis == 1) then 
						{
							[maison5, 2] spawn fn_ouvrirPorte;
							[[], "fn_textPorte"] spawn BIS_fnc_MP;

							[] spawn
							{
								sleep 60;

								valeur_tab = 1;
								publicVariable "valeur_tab";
							};
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
			};	
		};
		case 9:
		{
			switch (IDenigme) do 
			{
				case 1: 
				{ 
					if ((toLower _text) == "cnalb") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[9, 2] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 2: 
				{ 
					if ((toLower _text) == "emmoh") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						[] spawn 
						{
							sleep 1;

							[9, 3] call fn_menuEnigmes
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
				case 3:
				{
					if ((toLower _text) == "tnahcém") then 
					{
						closeDialog 1;

						titleText["Bonne réponse", "PLAIN DOWN", 0.25];
						playSound "bip";

						IDenigme = 0;
						IDkeypad = 0;

						valeur_keypad2_bis = 1;
						publicVariable "valeur_keypad2_bis";

						if (valeur_keypad1_bis == 1 && valeur_keypad2_bis == 1) then 
						{
							[maison5, 2] spawn fn_ouvrirPorte;
							[[], "fn_textPorte"] spawn BIS_fnc_MP;

							[] spawn
							{
								sleep 60;

								valeur_tab = 1;
								publicVariable "valeur_tab";
							};
						};
					}
					else
					{
						titleText["Mauvaise réponse", "PLAIN DOWN", 0.25];
						playSound "AddItemFailed";

						_ecran ctrlSetText "";
					};
				};
			};	
		};
	};	
};
