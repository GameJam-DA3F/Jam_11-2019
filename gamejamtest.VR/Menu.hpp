#include "CustomControlClasses.h"
class Menu
{
	idd = -1;
	
	class ControlsBackground
	{
		class BCK
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.87109375;
			y = safeZoneY + safeZoneH * 0.78472223;
			w = safeZoneW * 0.10351563;
			h = safeZoneH * 0.19270834;
			style = 0;
			text = "";
			colorBackground[] = {0,0.102,0.502,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class BCK_1
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.87792969;
			y = safeZoneY + safeZoneH * 0.79513889;
			w = safeZoneW * 0.09082032;
			h = safeZoneH * 0.17361112;
			style = 0;
			text = "";
			colorBackground[] = {0.1933,0.2681,0.5615,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		
	};
	class Controls
	{
		class Start
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.88378907;
			y = safeZoneY + safeZoneH * 0.80381945;
			w = safeZoneW * 0.07226563;
			h = safeZoneH * 0.03645834;
			style = 0+0;
			text = "Jouer";
			action = player SetPos getMarkerPos "lvl1_spawn";
			borderSize = 0;
			colorBackground[] = {0.1922,0.2667,0.5608,1};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class Start_LVL1
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.88378907;
			y = safeZoneY + safeZoneH * 0.84201389;
			w = safeZoneW * 0.07226563;
			h = safeZoneH * 0.02256945;
			style = 0+0;
			text = "Niveau 1";
			action = player SetPos getMarkerPos "lvl1_spawn";
			borderSize = 0;
			colorBackground[] = {0.1922,0.2667,0.5608,1};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class Start_LVL2
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.88378907;
			y = safeZoneY + safeZoneH * 0.86458334;
			w = safeZoneW * 0.07226563;
			h = safeZoneH * 0.02256945;
			style = 0+0;
			text = "Niveau 2";
			action = player SetPos getMarkerPos "lvl2_spawn";
			borderSize = 0;
			colorBackground[] = {0.1922,0.2667,0.5608,1};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class Start_LVL3
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.88378907;
			y = safeZoneY + safeZoneH * 0.88541667;
			w = safeZoneW * 0.07226563;
			h = safeZoneH * 0.02256945;
			style = 0+0;
			text = "Niveau 3";
			action = player SetPos getMarkerPos "lvl3_spawn";
			borderSize = 0;
			colorBackground[] = {0.1922,0.2667,0.5608,1};
			colorBackgroundActive[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		
	};
	
};
