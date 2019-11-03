// Visions
PPeffect_colorC = ppEffectCreate ["ColorCorrections",1500];
PPeffect_colorC ppEffectAdjust [0.853238,1.44741,-0.0724897,[0,0,0.671717,0.090909],[3,1.12787,0.0286386,1.09364],[-4.75,1.75,4,0]];
PPeffect_colorC ppEffectEnable true;
PPeffect_colorC ppEffectCommit 0;
setDate [2035, 1, 10, 0, 0];
private _time = 5;
_time setOvercast 0.5;
//_time setFog [1, 1, 185];
_time setRain 1;
_time setLightnings 1;
_time setWindStr 1;
_time setWindForce 1;
_time setWindDir 120;
_time setGusts 1;
forceWeatherChange;

// Color Correction
PPeffect_colorC2 = ppEffectCreate ["colorCorrections", 1501];
PPeffect_colorC2 ppEffectAdjust [1, 1, 0, [0,0,0,0], [1,1,1,1],[1,1,1,0]];
PPeffect_colorC2 ppEffectEnable true;
PPeffect_colorC2 ppEffectCommit 0;

// Blur
PPeffect_dynamicB = ppEffectCreate ["DynamicBlur", 800];
PPeffect_dynamicB ppEffectAdjust [0];
PPeffect_dynamicB ppEffectCommit 0.3;
PPeffect_dynamicB ppEffectEnable true;

// RBlur
PPeffect_radialB = ppEffectCreate ["RadialBlur", 1003];
PPeffect_radialB ppEffectAdjust [0, 0, 0, 0];
PPeffect_radialB ppEffectCommit 0;
PPeffect_radialB ppEffectEnable true;


PPeffect_colorC3 = ppEffectCreate ["colorCorrections", 1499];
PPeffect_colorC3 ppEffectAdjust [1, 1, 0, [0,0,0,0], [1,1,1,1],[1,1,1,0]];
PPeffect_colorC3 ppEffectEnable true;
PPeffect_colorC3 ppEffectCommit 0;

PPeffect_radialB2 = ppEffectCreate ["RadialBlur", 1002];
PPeffect_radialB2 ppEffectAdjust [0, 0, 0, 0];
PPeffect_radialB2 ppEffectCommit 0;
PPeffect_radialB2 ppEffectEnable true;


PPeffect_colorC2 ppEffectAdjust [1, 1, 0, [0,0,0,0], [1,1,1,1],[1,1,1,0]];
PPeffect_colorC2 ppEffectCommit 0;
	
// Blur
PPeffect_dynamicB ppEffectAdjust [0];
PPeffect_dynamicB ppEffectCommit 0.3;
	
// RBlur
PPeffect_radialB ppEffectAdjust [0, 0, 0, 0];
PPeffect_radialB ppEffectCommit 1;

/*
// Visions
private _visions = [
	["\a3\Missions_F_Contact\Data\Img\Visions\vision1_1.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision1_2.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision1_3.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision2_1.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision2_2.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision2_3.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision3_1.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision3_2.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision3_3.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision4_1.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision4_2.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision4_3.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision5_1.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision5_2.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision5_3.jpg"]
];
*/

[safeZoneX, safeZoneY, safeZoneW, safeZoneH];

private _visions = [
	["\a3\Missions_F_Contact\Data\Img\Visions\vision1_1.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision1_2.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision1_3.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision2_1.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision2_2.jpg"],
	["\a3\Missions_F_Contact\Data\Img\Visions\vision2_3.jpg"]
];


// Tech Concept

/*
1. Players Kill IA
2. Player teleported in another location
3. Player has 30seconds to locate and kill
https://community.bistudio.com/wiki/Arma_3:_Event_Handlers#Killed
*/