/*
Jam 03/11/2019 Arma3France DA3F
STEREOTeam

dialogs.hpp
Ras
*/
class STEREO_StatusBar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['STEREO_StatusBar', _this select 0]";
	onUnload = "uiNamespace setVariable ['STEREO_StatusBar', objNull]";
	onDestroy = "uiNamespace setVariable ['STEREO_StatusBar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 1000;
			x = safezoneX + safezoneW - 1;
			y = safezoneY + safezoneH - 0.08;
			w = 1;
			h = 0.03;
			shadow = 1;
			colorBackground[] = { 1, 0.3, 0, 0.0 };
			font = "PuristaSemibold";
			size = 0.035;
			type = 13;
			style = 1;
			text="Chargement infos...";
			class Attributes {
				align="right";
				color = "#FFFFF";
			};
		};
	};
};