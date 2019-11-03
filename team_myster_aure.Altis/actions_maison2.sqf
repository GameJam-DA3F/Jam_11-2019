
tableau1 addAction ["Décrocher le tableau", "[1, tableau1] call fn_double", [], 1.5, true, true, "", "(player distance tableau1) <= 3 && valeur_feuille2 == 1 && valeur_monnaie1_1 == 0"];

feuille1 addAction ["Secret !", "[2, player] call fn_double", [], 1.5, true, true, "", "(player distance feuille1) <= 3 && valeur_tableau1 == 1 && valeur_monnaie1_1 == 0"];

feuille2 addAction ["Secret !", "[3, player] call fn_double", [], 1.5, true, true, "", "(player distance feuille2) <= 3 && valeur_monnaie1_1 == 0"];

keypad1_1 addAction ["Dévérouillage par énigmes", "[1, 1] call fn_menuEnigmes", [], 1.5, true, true, "", "(player distance keypad1_1) <= 2 && valeur_feuille1 == 1 && valeur_monnaie1_1 == 0"];

doc4_1 addAction ["Page 1", "1 call fn_pages", [], 1.5, true, true, "", "(player distance doc4_1) <= 2 && valeur_feuille1 == 1 && valeur_monnaie1_1 == 0"];
doc4_1 addAction ["Page 2", "2 call fn_pages", [], 1.5, true, true, "", "(player distance doc4_1) <= 2 && valeur_feuille1 == 1 && valeur_monnaie1_1 == 0"];
doc4_1 addAction ["Page 3", "3 call fn_pages", [], 1.5, true, true, "", "(player distance doc4_1) <= 2 && valeur_feuille1 == 1 && valeur_monnaie1_1 == 0"];
doc4_1 addAction ["Page 4", "4 call fn_pages", [], 1.5, true, true, "", "(player distance doc4_1) <= 2 && valeur_feuille1 == 1 && valeur_monnaie1_1 == 0"];
doc4_1 addAction ["Page 5", "5 call fn_pages", [], 1.5, true, true, "", "(player distance doc4_1) <= 2 && valeur_feuille1 == 1 && valeur_monnaie1_1 == 0"];
doc4_1 addAction ["Page 6", "6 call fn_pages", [], 1.5, true, true, "", "(player distance doc4_1) <= 2 && valeur_feuille1 == 1 && valeur_monnaie1_1 == 0"];
doc4_1 addAction ["Page 7", "7 call fn_pages", [], 1.5, true, true, "", "(player distance doc4_1) <= 2 && valeur_feuille1 == 1 && valeur_monnaie1_1 == 0"];
doc4_1 addAction ["Page 8", "8 call fn_pages", [], 1.5, true, true, "", "(player distance doc4_1) <= 2 && valeur_feuille1 == 1 && valeur_monnaie1_1 == 0"];
doc4_1 addAction ["Page 9", "9 call fn_pages", [], 1.5, true, true, "", "(player distance doc4_1) <= 2 && valeur_feuille1 == 1 && valeur_monnaie1_1 == 0"];
doc4_1 addAction ["Page 10", "10 call fn_pages", [], 1.5, true, true, "", "(player distance doc4_1) <= 2 && valeur_feuille1 == 1 && valeur_monnaie1_1 == 0"];

monnaie1_1 addAction ["Portefeuille", "1 call fn_autres_2", [], 1.5, true, true, "", "(player distance monnaie1_1) <= 2"];

tableau2 addAction ["Tableau", "3 call fn_autres_2", [], 1.5, true, true, "", "(player distance tableau2) <= 4"];

feuille4 addAction ["Secret !", "2 call fn_autres_2", [], 1.5, true, true, "", "(player distance feuille4) <= 4 && valeur_monnaie1_1 == 1"];

clavier1_1 addAction ["Dossier 1", "1 call fn_PC", [], 1.5, true, true, "", "(player distance clavier1_1) <= 2 && valeur_feuille4 == 1"];
clavier1_1 addAction ["Dossier 2", "2 call fn_PC", [], 1.5, true, true, "", "(player distance clavier1_1) <= 2 && valeur_feuille4 == 1"];
clavier1_1 addAction ["Dossier 3", "3 call fn_PC", [], 1.5, true, true, "", "(player distance clavier1_1) <= 2 && valeur_feuille4 == 1"];
clavier1_1 addAction ["Dossier 4", "4 call fn_PC", [], 1.5, true, true, "", "(player distance clavier1_1) <= 2 && valeur_feuille4 == 1"];
clavier1_1 addAction ["Dossier 5", "5 call fn_PC", [], 1.5, true, true, "", "(player distance clavier1_1) <= 2 && valeur_feuille4 == 1"];
clavier1_1 addAction ["Dossier 6", "6 call fn_PC", [], 1.5, true, true, "", "(player distance clavier1_1) <= 2 && valeur_feuille4 == 1"];
clavier1_1 addAction ["Dossier 7", "7 call fn_PC", [], 1.5, true, true, "", "(player distance clavier1_1) <= 2 && valeur_feuille4 == 1"];
clavier1_1 addAction ["Dossier 8", "8 call fn_PC", [], 1.5, true, true, "", "(player distance clavier1_1) <= 2 && valeur_feuille4 == 1"];
clavier1_1 addAction ["Dossier 9", "9 call fn_PC", [], 1.5, true, true, "", "(player distance clavier1_1) <= 2 && valeur_feuille4 == 1"];
clavier1_1 addAction ["Dossier 10", "10 call fn_PC", [], 1.5, true, true, "", "(player distance clavier1_1) <= 2 && valeur_feuille4 == 1"];
clavier1_1 addAction ["Dossier 11", "11 call fn_PC", [], 1.5, true, true, "", "(player distance clavier1_1) <= 2 && valeur_feuille4 == 1"];
clavier1_1 addAction ["Dossier 12", "12 call fn_PC", [], 1.5, true, true, "", "(player distance clavier1_1) <= 2 && valeur_feuille4 == 1"];
clavier1_1 addAction ["Dossier 13", "13 call fn_PC", [], 1.5, true, true, "", "(player distance clavier1_1) <= 2 && valeur_feuille4 == 1"];
clavier1_1 addAction ["Dossier 14", "14 call fn_PC", [], 1.5, true, true, "", "(player distance clavier1_1) <= 2 && valeur_feuille4 == 1"];
clavier1_1 addAction ["Dossier 15", "15 call fn_PC", [], 1.5, true, true, "", "(player distance clavier1_1) <= 2 && valeur_feuille4 == 1"];

tablette1 addAction ["Application 1", "1 call fn_tablette", [], 1.5, true, true, "", "(player distance tablette1) <= 2 && valeur_feuille4 == 1"];
tablette1 addAction ["Application 2", "2 call fn_tablette", [], 1.5, true, true, "", "(player distance tablette1) <= 2 && valeur_feuille4 == 1"];
tablette1 addAction ["Application 3", "3 call fn_tablette", [], 1.5, true, true, "", "(player distance tablette1) <= 2 && valeur_feuille4 == 1"];
tablette1 addAction ["Application 4", "4 call fn_tablette", [], 1.5, true, true, "", "(player distance tablette1) <= 2 && valeur_feuille4 == 1"];
tablette1 addAction ["Application 5", "5 call fn_tablette", [], 1.5, true, true, "", "(player distance tablette1) <= 2 && valeur_feuille4 == 1"];

armoire1 addAction ["Ouvrir l'armoire avec le keypad", "2 call fn_keypad", [], 1.5, true, true, "", "(player distance armoire1) <= 2 && valeur_feuille4 == 1"];