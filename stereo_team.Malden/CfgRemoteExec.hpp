/*
Jam 03/11/2019 Arma3France DA3F
STEREOTeam

CfgRemoteExec.hpp
Ras
*/
#define F(NAME,TARGET) class NAME { \
    allowedTargets = TARGET; \
};
#define JIP(NAME,TARGET) class NAME { \
    allowedTargets = TARGET; \
    jip = 1; \
};

#define ANYONE 0
#define CLIENT 1
#define SERVER 2
#define HC HC_Life

class CfgRemoteExec {
    class Functions {
        mode = 1;
        jip = 0;
        F(stereo_fnc_ShowTextureMiroir,SERVER)
        F(stereo_fnc_GagnantMiroirMagique,SERVER)
    };

    class Commands {
        mode = 1;
        jip = 0;
        F(removeAllActions,ANYONE)
    };
};