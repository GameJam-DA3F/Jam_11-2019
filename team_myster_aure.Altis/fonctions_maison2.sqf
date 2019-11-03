
fn_autres_2 =
{
	switch (_this) do {
		case 1: 
		{ 
			closeDialog 0;
			disableSerialization;

			createDialog "feuille";
			waitUntil {dialog};

			valeur_monnaie1_1 = 1;
			publicVariable "valeur_monnaie1_1";

			[maison2, 2] spawn fn_ouvrirPorte_1;
		};
		case 2: 
		{ 
			hint "L'armoire garde des clés, elles même garder par un code que tu ne peut dévérouiller...";
			
			valeur_feuille4 = 1;
			publicVariable "valeur_feuille4";
		};

		case 3: 
		{ 
			titleText["Quel beau tableau !", "PLAIN DOWN"];
		};
	};
};

fn_pages =
{
	switch (_this) do {
		case 10: 
		{ 
			titleText["Une page blanche, quel gaspillage", "PLAIN DOWN"];
		};
		case 1: 
		{ 
			titleText["Voici un mod emploi pour changer les piles de la télécommande", "PLAIN DOWN"];
		};
		case 2: 
		{ 
			titleText["Un tract pour l'ouverture d'un sexshop", "PLAIN DOWN"];
		};
		case 3: 
		{ 
			titleText["Un contrat EDF", "PLAIN DOWN"];
		};
		case 4: 
		{ 
			titleText["Cool, un bon de réduction pour ochan", "PLAIN DOWN"];
		};
		case 5: 
		{ 
			titleText["La notice de contruction du meuble 'jugvkkg', de chez IKEO", "PLAIN DOWN"];

			[] spawn
			{
				sleep 1;

				playSound "ikeo";
			};
		};
		case 6: 
		{ 
			titleText["Une invitation à une JAM de programmation", "PLAIN DOWN"];
		};
		case 7: 
		{ 
			titleText["Merde, un message de menaces", "PLAIN DOWN"];
		};
		case 8: 
		{ 
			valeur_doc4_1 = 1;
			publicVariable "valeur_doc4_1";

			titleText["Ce document parle de la facon d'acceder au dévérouillage par énigmes", "PLAIN DOWN"];
		};
		case 9: 
		{ 
			titleText["Une carte postale, qui viens de Lola la Bretonne", "PLAIN DOWN"];
		};
	};
};

fn_double =
{
	_para = _this select 1;

	switch (_this select 0) do {
		case 1: 
		{ 
			valeur_tableau1 = 1;
			publicVariable "valeur_tableau1";

			valeur_feuille2 = 0;
			publicVariable "valeur_feuille2";

			[_para, "fn_Simu"] spawn BIS_fnc_MP;
		};
		case 2: 
		{ 
			valeur_feuille1 = 1;
			publicVariable "valeur_feuille1";

			hint format ["%1, j'avais pour habitude de verrouiller ma porte, avec des énigmes faites par moi même ranger dans mon porte-document...", name _para];
		};
		case 3:
		{
			valeur_feuille2 = 1;
			publicVariable "valeur_feuille2";

			hint format ["Hello %1, je suis fait de pierre, je suis même extremement solide, mais en temps de guerre même aussi solide que je sois, je tombe !", name _para];
		};
	};
};

fn_tablette =
{
	switch (_this) do {
		case 1: 
		{
			titleText["Tinder, super j'ai match", "PLAIN DOWN"];
		};
		case 2: 
		{
			titleText["Yes, MysterFreez mon youtuber préféré a sorti une nouvelle vidéo", "PLAIN DOWN"];
		};
		case 3: 
		{
			closeDialog 0;
			disableSerialization;

			createDialog "couleur";
			waitUntil {dialog};
		};
		case 4: 
		{
			titleText["Météo, il pleut toute la semaine", "PLAIN DOWN"];
		};
		case 5: 
		{
			titleText["1", "PLAIN DOWN"];
		};
	};
};

fn_PC =
{
	switch (_this) do {
		case 1: 
		{
			titleText["Une recette de cuisine pour une fondue savoyarde", "PLAIN DOWN"];
		};
		case 2: 
		{
			titleText["La facture d'eau du mois dernier", "PLAIN DOWN"];
		};
		case 3: 
		{
			titleText["Un dossier cachée nommée 'DA3F' who des photo de Aroun en maillot de bain", "PLAIN DOWN"];
		
			playSound "pasMoi1";
		};
		case 4: 
		{
			titleText["Mes playlist 'korn', 'rammstein', 'Rob zombie'", "PLAIN DOWN"];

			playSound "playliste";
		};
		case 5: 
		{
			titleText["Ma liste de rdv rien de pertinent ", "PLAIN DOWN"];
		};
		case 6: 
		{
			titleText["Un bon de commande pour un gode michet, taille cheval", "PLAIN DOWN"];

			playSound "pasMoi2";
		};
		case 7: 
		{
			titleText["Les horaires de la poste", "PLAIN DOWN"];
		};
		case 8: 
		{
			titleText["C'est intéressant ça un article, sur un nouveau mode de jeux sur arma 3, une escape game apparament", "PLAIN DOWN"];
		};
		case 9: 
		{
			titleText["Un mail de Lola", "PLAIN DOWN"];

			playSound "manque";
		};
		case 10: 
		{
			titleText["Un mail de ma mère, elle me rapelle de venir faire la vidange de sa voiture", "PLAIN DOWN"];
		};
		case 11: 
		{
			titleText["Un mail de 'adopte-un-mec.com', pas très intéressant", "PLAIN DOWN"];
		};
		case 12: 
		{
			hint "A=1 I=8 F=14 / 26 9 7 12 - 12 9 20 20 3 12 - 11 7 1 5 4 3";
		};
		case 13: 
		{
			titleText["Un article sur le nouveau Simsung", "PLAIN DOWN"];
		};
		case 14: 
		{
			titleText["Toute mes photos de vacances, ça fait envie", "PLAIN DOWN"];
		};
		case 15: 
		{
			titleText["Un bon de commande pour une réplique d'airsoft", "PLAIN DOWN"];
		};
	};
};