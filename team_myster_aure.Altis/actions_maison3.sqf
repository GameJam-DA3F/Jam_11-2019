
keypad1_2 addAction ["dapyek...", "[2, 1] call fn_menuEnigmes", [], 1.5, true, true, "", "(player distance keypad1_2) <= 3"];

tel2_2 addAction ["Téléphone", "1 call fn_autres_3", [], 1.5, true, true, "", "(player distance tel2_2) <= 6"];

keypad1_3 addAction ["dapyek...", "[3, 1] call fn_menuEnigmes", [], 1.5, true, true, "", "(player distance keypad1_3) <= 3 && valeur_chaises1 == 1"];