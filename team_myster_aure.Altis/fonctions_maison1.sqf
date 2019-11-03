
fn_dossiers =
{
	switch (_this) do {
		case 10: 
		{ 
			titleText["Ce dossier est vide", "PLAIN DOWN"];
		};
		case 1: 
		{ 
			titleText["Pas mal les photos, mais ça me sert a rien", "PLAIN DOWN"];
		};
		case 2: 
		{ 
			titleText["Super, que des factures", "PLAIN DOWN"];
		};
		case 3: 
		{ 
			titleText["Oh, une mission airsoft sur arma : 'Team TA'", "PLAIN DOWN"];
		};
		case 4: 
		{ 
			titleText["Ma sextape avec Lola, je garde ça pour plustard", "PLAIN DOWN"];
		};
		case 5: 
		{ 
			titleText["Mon diplôme du BAC, ah non je l'ai pas eu", "PLAIN DOWN"];
		};
		case 6: 
		{ 
			titleText["Oh un article de journal, qui parle du massacre des DA3F", "PLAIN DOWN"];
		};
		case 7: 
		{ 
			closeDialog 0;
			disableSerialization;

			createDialog "ecranPC";
			waitUntil {dialog};

			[] spawn 
			{
				sleep 1;

				playSound "morse";
				sleep 2;
			};
		};
		case 8: 
		{ 
			titleText["Un article sur une bagarre, qui a éclatée dans un bar", "PLAIN DOWN"];
		};
		case 9: 
		{ 
			titleText["Un document texte vide", "PLAIN DOWN"];
		};
	};
};

fn_autres_1 =
{
	switch (_this) do {
		case 1: 
		{ 
			playSound "tel1";
		};
		case 2: 
		{ 
			playSound "photo";
		};
		case 3: 
		{
			[[radio1, "radio_bis"], "fn_son3D"] spawn BIS_fnc_MP;
			
			[] spawn 
			{
				sleep 5.5;

				playSound "radio";
			};
		};
		case 4: 
		{ 
			[[tel2, "tel2"], "fn_son3D"] spawn BIS_fnc_MP;

			[] spawn 
			{
				sleep 15;

				playSound "hier";

				[[], "fn_textPorte"] spawn BIS_fnc_MP;

				[maison1, 3, maison2, 1] call fn_ouvrirPorte2;
			};
		}; 
		case 5: 
		{ 
			playSound "monnaie1";
		};
	};
};

fn_docs =
{
	switch (_this) do {
		case 1: 
		{ 
			closeDialog 0;
			disableSerialization;

			createDialog "plan";
			waitUntil {dialog};
		};
		case 2: 
		{ 
			titleText["Un contrat d'assurance, c'est inutile maintenant", "PLAIN DOWN"];
		};
		case 3: 
		{ 
			titleText["Ce porte-documents est vide", "PLAIN DOWN"];
		};
		case 4: 
		{ 
			titleText["Mon contrat de divorce, un mauvais souvenir", "PLAIN DOWN"];
		};
		case 5: 
		{ 
			titleText["Un document qui parle du code pour le keypad, mais les chiffre sont effacer, cela dit je distingue un 9", "PLAIN DOWN"];
		};
	};
};