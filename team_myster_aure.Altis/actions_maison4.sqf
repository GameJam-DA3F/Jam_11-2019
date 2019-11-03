
PC1 addAction ["Enigmes", "[4, 1] call fn_menuEnigmes", [], 1.5, true, true, "", "(player distance PC1) <= 3"];

PC2 addAction ["semgine", "[5, 1] call fn_menuEnigmes", [], 1.5, true, true, "", "(player distance PC2) <= 5"];

keypad1_bis addAction ["Keypad", "[6, 1] call fn_menuEnigmes", [], 1.5, true, true, "", "(player distance keypad1_bis) <= 3 && valeur_pc1 == 1"];

keypad2 addAction ["dapyek", "[7, 1] call fn_menuEnigmes", [], 1.5, true, true, "", "(player distance keypad2) <= 5 && valeur_pc2 == 1"];

keypad1_bis_1 addAction ["Keypad", "[8, 1] call fn_menuEnigmes", [], 1.5, true, true, "", "(player distance keypad1_bis_1) <= 5"];

keypad2_1 addAction ["dapyek", "[9, 1] call fn_menuEnigmes", [], 1.5, true, true, "", "(player distance keypad2_1) <= 5"];

tab addAction ["End Game", "call fn_interface_endGame", [], 1.5, true, true, "", "(player distance tab) <= 3 && valeur_tab == 1"];