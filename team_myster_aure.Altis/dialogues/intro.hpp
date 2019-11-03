
class intro {
	idd = -1;	
	duration = 10e10;
	onLoad = "uiNamespace setVariable ['intro', _this select 0]";
	onUnload = "uiNamespace setVariable ['intro', objNull]";
	onDestroy = "uiNamespace setVariable ['intro', objNull]";
	class controls 
	{
		class RscText_1000: RscText
		{
			idc = -1;
			x = -2.45869e-008 * safezoneW + safezoneX;
			y = -1.63913e-008 * safezoneH + safezoneY;
			w = 1 * safezoneW;
			h = 1 * safezoneH;
			colorBackground[] = {0.2,0.2,0.2,1};
		};
		class RscPicture_1200: RscPicture
		{
			idc = -1;
			text = "image\load.jpg";
			x = 0.075 * safezoneW + safezoneX;
			y = 0.08 * safezoneH + safezoneY;
			w = 0.85 * safezoneW;
			h = 0.84 * safezoneH;
		};
    };
};

class endGame {
	idd = -1;	
	duration = 10e10;
	onLoad = "uiNamespace setVariable ['endGame', _this select 0]";
	onUnload = "uiNamespace setVariable ['endGame', objNull]";
	onDestroy = "uiNamespace setVariable ['endGame', objNull]";
	class controls 
	{
		class RscText_1000: RscText
		{
			idc = -1;
			x = -2.45869e-008 * safezoneW + safezoneX;
			y = -1.63913e-008 * safezoneH + safezoneY;
			w = 1 * safezoneW;
			h = 1 * safezoneH;
			colorBackground[] = {0.2,0.2,0.2,1};
		};
		class RscPicture_1200: RscStructuredText
		{
			idc = -1;
			text = "<t size='5' color='#FFFFFF' align='center'>Bravo, c'est la fin</t>";
			x = 0 * safezoneW + safezoneX;
			y = 0.4 * safezoneH + safezoneY;
			w = safezoneW;
			h = safezoneH;
		};
    };
};
