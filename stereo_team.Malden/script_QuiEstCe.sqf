/*
Jam 03/11/2019 Arma3France DA3F
STEREOTeam

script_QuiEstCe.sqf
Script du Jeu Qui est ce. Spawn un pnj qu'il faut ensuite identifier parmis d'autres.
*/
// verou de la possibilité de relancer un partie en meme temps que celle ci
PanneauQuiEstCe setvariable ["GameActive", true, true];
// verification que le joueur ai assez d'argent et on lui enleve le montant de l'atraction
private _ArgentJoueur = player getVariable ["ArgentJoueur",0];
if (_ArgentJoueur < 200) exitWith
{
	hint "Désolé tu n'as pas assez d'argent !";
};
player setVariable["ArgentJoueur", _ArgentJoueur - 200];

//Tableau des differents objets qui seront choisis de maniere aleatoire dans chacun des tableaux.
TblQEC1 = ["I_G_Soldier_AR_F","I_G_medic_F","I_G_engineer_F","I_G_Soldier_exp_F","I_G_Soldier_GL_F","I_G_Soldier_M_F"];
TblQEC2 = ["B_Soldier_TL_F","B_soldier_M_F","B_soldier_LAT_F","B_medic_F","B_soldier_repair_F","B_soldier_exp_F"];
TblQEC3 = ["I_G_Survivor_F","I_medic_F","I_Soldier_repair_F","I_crew_F","I_helipilot_F","I_officer_F"];
TblQEC4 = ["C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F"];
TblQEC5 = ["C_man_polo_6_F","C_man_p_fugitive_F","C_man_w_worker_F","C_scientist_F","C_man_hunter_1_F","C_journalist_F"];
TblQEC6 = ["B_recon_LAT_F","B_recon_exp_F","B_recon_medic_F","B_recon_TL_F","B_recon_M_F","B_recon_JTAC_F"];
TblQEC8 = ["B_spotter_F","B_sniper_F","B_Story_SF_Captain_F","B_Story_Protagonist_F","B_Story_Pilot_F","B_CTRG_soldier_GL_LAT_F"];
TblQEC9 = ["B_CTRG_soldier_engineer_exp_F","B_CTRG_soldier_M_medic_F","B_CTRG_soldier_AR_A_F","B_soldier_AAR_F","B_soldier_AAT_F","B_soldier_AAA_F"];
TblQEC10 = ["B_support_MG_F","B_support_GMG_F","B_support_Mort_F","B_support_AMG_F","B_support_AMort_F","B_G_Soldier_F"];
TblQEC11 = ["B_G_Soldier_lite_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F","B_G_Soldier_AR_F","B_G_medic_F","B_G_engineer_F"];
TblQEC12 = ["B_G_Soldier_exp_F","B_G_Soldier_GL_F","B_G_Soldier_M_F","B_G_Soldier_LAT_F","B_G_Soldier_A_F","B_G_officer_F"];

// On choisi un objet parmis les 6 du tableau
TirageQEC = round(random 5);
TiragePnjQuiestce2 = TblQEC2 select TirageQEC;
// On cree le PNJ qu'il faudra retrouver
call compile format ["PnjQuiestce2 = '%1' createVehicle getMarkerPos 'MarkerQuiEstce2';",  TiragePnjQuiestce2];
PnjQuiestce2 setDir 180;
PnjQuiestce2 allowDamage false;
sleep 5;
deleteVehicle PnjQuiestce2;

// Creation d'un tableau pour pouvoir positionner les PNJ a des positions aleatoires
TableauPlaces = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19];

// Mise en place de maniere aleatoire de chacun des PNJ.
PositionHasard = round(random count TableauPlaces );
ValeurPosition = TableauPlaces select PositionHasard;
call compile format ["PnjQuiestce2 = '%1' createVehicle getMarkerPos 'MarkerQuiEstce%2';",  TiragePnjQuiestce2, ValeurPosition];
TableauPlaces deleteAt PositionHasard;
PnjQuiestce2 setVehicleVarName "PnjQuiestce2";
PnjQuiestce2 setDir 180;
PnjQuiestce2 allowDamage true;
TirageQEC = round(random 5);
TiragePnjQuiestce = TblQEC1 select TirageQEC;
PositionHasard = round(random count TableauPlaces );
ValeurPosition = TableauPlaces select PositionHasard;
call compile format ["PnjQuiestce1 = '%1' createVehicle getMarkerPos 'MarkerQuiEstce%2';",  TiragePnjQuiestce, ValeurPosition];
TableauPlaces deleteAt PositionHasard;
PnjQuiestce1 setVehicleVarName "PnjQuiestce1";
PnjQuiestce1 setDir 180;
TirageQEC = round(random 5);
TiragePnjQuiestce = TblQEC3 select TirageQEC;
PositionHasard = round(random count TableauPlaces );
ValeurPosition = TableauPlaces select PositionHasard;
call compile format ["PnjQuiestce3 = '%1' createVehicle getMarkerPos 'MarkerQuiEstce%2';",  TiragePnjQuiestce, ValeurPosition];
TableauPlaces deleteAt PositionHasard;
PnjQuiestce3 setVehicleVarName "PnjQuiestce3";
PnjQuiestce3 setDir 180;
TirageQEC = round(random 5);
TiragePnjQuiestce = TblQEC4 select TirageQEC;
PositionHasard = round(random count TableauPlaces );
ValeurPosition = TableauPlaces select PositionHasard;
call compile format ["PnjQuiestce4 = '%1' createVehicle getMarkerPos 'MarkerQuiEstce%2';",  TiragePnjQuiestce, ValeurPosition];
TableauPlaces deleteAt PositionHasard;
PnjQuiestce4 setVehicleVarName "PnjQuiestce4";
PnjQuiestce4 setDir 180;
TirageQEC = round(random 5);
TiragePnjQuiestce = TblQEC5 select TirageQEC;
PositionHasard = round(random count TableauPlaces );
ValeurPosition = TableauPlaces select PositionHasard;
call compile format ["PnjQuiestce5 = '%1' createVehicle getMarkerPos 'MarkerQuiEstce%2';",  TiragePnjQuiestce, ValeurPosition];
TableauPlaces deleteAt PositionHasard;
PnjQuiestce5 setVehicleVarName "PnjQuiestce5";
PnjQuiestce5 setDir 180;
TirageQEC = round(random 5);
TiragePnjQuiestce = TblQEC6 select TirageQEC;
PositionHasard = round(random count TableauPlaces );
ValeurPosition = TableauPlaces select PositionHasard;
call compile format ["PnjQuiestce6 = '%1' createVehicle getMarkerPos 'MarkerQuiEstce%2';",  TiragePnjQuiestce, ValeurPosition];
TableauPlaces deleteAt PositionHasard;
PnjQuiestce6 setVehicleVarName "PnjQuiestce6";
PnjQuiestce6 setDir 180;
TirageQEC = round(random 5);
TiragePnjQuiestce = TblQEC8 select TirageQEC;
PositionHasard = round(random count TableauPlaces );
ValeurPosition = TableauPlaces select PositionHasard;
call compile format ["PnjQuiestce8 = '%1' createVehicle getMarkerPos 'MarkerQuiEstce%2';",  TiragePnjQuiestce, ValeurPosition];
TableauPlaces deleteAt PositionHasard;
PnjQuiestce8 setVehicleVarName "PnjQuiestce8";
PnjQuiestce8 setDir 180;
TirageQEC = round(random 5);
TiragePnjQuiestce = TblQEC9 select TirageQEC;
PositionHasard = round(random count TableauPlaces );
ValeurPosition = TableauPlaces select PositionHasard;
call compile format ["PnjQuiestce9 = '%1' createVehicle getMarkerPos 'MarkerQuiEstce%2';",  TiragePnjQuiestce, ValeurPosition];
TableauPlaces deleteAt PositionHasard;
PnjQuiestce9 setVehicleVarName "PnjQuiestce9";
PnjQuiestce9 setDir 180;
TirageQEC = round(random 5);
TiragePnjQuiestce = TblQEC10 select TirageQEC;
PositionHasard = round(random count TableauPlaces );
ValeurPosition = TableauPlaces select PositionHasard;
call compile format ["PnjQuiestce10 = '%1' createVehicle getMarkerPos 'MarkerQuiEstce%2';",  TiragePnjQuiestce, ValeurPosition];
TableauPlaces deleteAt PositionHasard;
PnjQuiestce10 setVehicleVarName "PnjQuiestce10";
PnjQuiestce10 setDir 180;
TirageQEC = round(random 5);
TiragePnjQuiestce = TblQEC11 select TirageQEC;
PositionHasard = round(random count TableauPlaces );
ValeurPosition = TableauPlaces select PositionHasard;
systemChat str ValeurPosition;
call compile format ["PnjQuiestce11 = '%1' createVehicle getMarkerPos 'MarkerQuiEstce%2';",  TiragePnjQuiestce, ValeurPosition];
TableauPlaces deleteAt PositionHasard;
PnjQuiestce11 setVehicleVarName "PnjQuiestce11";
PnjQuiestce11 setDir 180;
TirageQEC = round(random 5);
TiragePnjQuiestce = TblQEC12 select TirageQEC;
PositionHasard = round(random count TableauPlaces );
ValeurPosition = TableauPlaces select PositionHasard;
systemChat str ValeurPosition;
call compile format ["PnjQuiestce12 = '%1' createVehicle getMarkerPos 'MarkerQuiEstce%2';",  TiragePnjQuiestce, ValeurPosition];
TableauPlaces deleteAt PositionHasard;
PnjQuiestce12 setVehicleVarName "PnjQuiestce12";
PnjQuiestce12 setDir 180;
sleep 10;
//on analyse si il a gagné
cptquiestce=0;
veriftriche = 0;
{
	if (vehicleVarName _x != "PnjQuiestce2") then { cptquiestce = cptquiestce + 1; };
    veriftriche = veriftriche +1;
	deleteVehicle _x;
	} forEach allDeadMen;

	hint str cptquiestce;

	if (veriftriche == 0) then
		{ hint "n'essaye pas de tricher ! TUE le méchant !!! ^^";
		player switchMove "Acts_Ambient_Aggressive";
	}
		 else {
				if (cptquiestce==0) then
					{ hint "Tu as gagné, félicitation!";
						[player, "Acts_Dance_01"] remoteExec ["switchMove", 0];
						sleep 5;
						player switchMove "";
						private _ArgentJoueur = _gagnant getVariable ["ArgentJoueur",0];
						_ArgentJoueur = _ArgentJoueur + 400;
						_gagnant setVariable["ArgentJoueur", _ArgentJoueur,true];
				}
				else
					{ hint "Perdu";
					player switchMove "Acts_Ambient_Aggressive";
				};
			  };

sleep 2;
// on nettoie un peu tout ca
deleteVehicle PnjQuiestce1;
deleteVehicle PnjQuiestce2;
deleteVehicle PnjQuiestce3;
deleteVehicle PnjQuiestce4;
deleteVehicle PnjQuiestce5;
deleteVehicle PnjQuiestce6;
deleteVehicle PnjQuiestce8;
deleteVehicle PnjQuiestce9;
deleteVehicle PnjQuiestce10;
deleteVehicle PnjQuiestce11;
deleteVehicle PnjQuiestce12;

// Réactivation du panneau pour pouvoir relancer une partie
PanneauQuiEstCe setvariable ["GameActive", false, true];