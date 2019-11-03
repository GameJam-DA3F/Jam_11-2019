
class ecranPC {
	idd = 155;	
	onUnload = "closeDialog 1;";
	class controls 
	{
		class RscPicture_1200: RscPicture
		{
			idc = -1;
			text = "image\morse.paa";
			x = 0 * safezoneW + safezoneX;
			y = 0 * safezoneH + safezoneY;
			w = 1 * safezoneW;
			h = 1.95 * safezoneH;
			class Attributes {
				align="center";
			};
		};
		class RscButtonMenu_2400: RscButtonMenu
		{
			idc = 101;
			text = "X"; //--- ToDo: Localize;
            x = 0.941375 * safezoneW + safezoneX;
            y = 0.06462 * safezoneH + safezoneY;
            w = 0.0170314 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {0,0,0,1};
            colorBackground[] = {1,0,0,1};
            onButtonClick = "closeDialog 1;";
            class Attributes {
				align="center";
			};
		};
    };
};

class couleur {
	idd = 149;	
	onUnload = "closeDialog 1;";
	class controls 
	{
		class RscText_1000: RscText
		{
			idc = -1;
			x = 0.2 * safezoneW + safezoneX;
			y = 0.08 * safezoneH + safezoneY;
			w = 0.6 * safezoneW;
			h = 0.84 * safezoneH;
			colorBackground[] = {0.2,0.2,0.2,1};
		};
		class RscPicture_1200: RscPicture
		{
			idc = -1;

			text = "image\enigme_color.paa";
			x = 0.2125 * safezoneW + safezoneX;
			y = 0.0999999 * safezoneH + safezoneY;
			w = 0.575 * safezoneW;
			h = 0.8 * safezoneH;
		};
		class RscButtonMenu_2400: RscButtonMenu
		{
			idc = 1001;
			onButtonClick = "closeDialog 1;";

			text = "X"; //--- ToDo: Localize;
			x = 0.7875 * safezoneW + safezoneX;
			y = 0.08 * safezoneH + safezoneY;
			w = 0.0125 * safezoneW;
			h = 0.024 * safezoneH;
			colorText[] = {0,0,0,1};
			colorBackground[] = {1,0,0,1};
			class Attributes {
				align="center";
			};
		};
    };
};

class feuille {
	idd = 150;	
	onUnload = "closeDialog 1;";
	class controls 
	{
		class RscText_1000: RscText
		{
			idc = -1;
			x = 0.2 * safezoneW + safezoneX;
			y = 0.08 * safezoneH + safezoneY;
			w = 0.6 * safezoneW;
			h = 0.84 * safezoneH;
			colorBackground[] = {0.2,0.2,0.2,1};
		};
		class RscPicture_1200: RscPicture
		{
			idc = -1;

			text = "image\enigme_table.jpg";
			x = 0.2125 * safezoneW + safezoneX;
			y = 0.0999999 * safezoneH + safezoneY;
			w = 0.575 * safezoneW;
			h = 0.8 * safezoneH;
		};
		class RscButtonMenu_2400: RscButtonMenu
		{
			idc = 1001;
			onButtonClick = "closeDialog 1;";

			text = "X"; //--- ToDo: Localize;
			x = 0.7875 * safezoneW + safezoneX;
			y = 0.08 * safezoneH + safezoneY;
			w = 0.0125 * safezoneW;
			h = 0.024 * safezoneH;
			colorText[] = {0,0,0,1};
			colorBackground[] = {1,0,0,1};
			class Attributes {
				align="center";
			};
		};
    };
};

class enigmes {
	idd = 152;	
	onUnload = "closeDialog 1;";
	class controls 
	{
		class RscText_1000: RscText
		{
			idc = -1;
			x = 0.355625 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.28875 * safezoneW;
			h = 0.55 * safezoneH;
			colorBackground[] = {0.2,0.2,0.2,1};
		};
		class RscText_1001: RscText
		{
			idc = -1;
			x = 0.360781 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.278437 * safezoneW;
			h = 0.528 * safezoneH;
			colorBackground[] = {0.5,0.5,0.5,1};
		};
		class RscText_1002: RscText
		{
			idc = -1;
			x = 0.386562 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.226875 * safezoneW;
			h = 0.066 * safezoneH;
			colorBackground[] = {0.2,0.2,0.2,1};
		};
		class RscButtonMenu_2400: RscButtonMenu
		{
			idc = 2400;
			text = "Valider"; //--- ToDo: Localize;
			x = 0.386562 * safezoneW + safezoneX;
			y = 0.687 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.044 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.2,0.2,0.2,1};
			onButtonClick = "call fn_valider_enigmes";
			class Attributes {
				align="center";
				color = "#FFFFF";
				valign="middle";
				size=2;
			};
		};
		class RscButtonMenu_2401: RscButtonMenu
		{
			idc = 2401;
			text = "Fermer"; //--- ToDo: Localize;
			x = 0.530937 * safezoneW + safezoneX;
			y = 0.687 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.044 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.2,0.2,0.2,1};
			onButtonClick = "2 call fn_quit";
			class Attributes {
				align="center";
				color = "#FFFFF";
				valign="middle";
				size=2;
			};
		};
		class RscEdit_1400: RscEdit
		{
			idc = 1401;
			text = "";
			x = 0.391719 * safezoneW + safezoneX;
			y = 0.566 * safezoneH + safezoneY;
			w = 0.216563 * safezoneW;
			h = 0.044 * safezoneH;
			colorBackground[] = {1,1,1,1};
			class Attributes {
				align="center";
				color = "#FFFFF";
				valign="middle";
				size=2;
			};
		};
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			x = 0.386562 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.226875 * safezoneW;
			h = 0.165 * safezoneH;
		};
		class RscStructuredText_1101: RscStructuredText
		{
			idc = 1101;
			x = 0.386562 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.226875 * safezoneW;
			h = 0.044 * safezoneH;
		};
	};
};

class plan {
	idd = 153;	
	onUnload = "closeDialog 1;";
	class controls 
	{
		class RscPicture_1200: RscPicture
		{
			idc = -1;
			text = "image\plan.paa";
			x = 0.1 * safezoneW + safezoneX;
            y = 0.04 * safezoneH + safezoneY;
            w = 0.8 * safezoneW;
            h = 0.92 * safezoneH;
			class Attributes {
				align="center";
			};
		};
		class RscButtonMenu_2400: RscButtonMenu
		{
			idc = 101;
			text = "X"; //--- ToDo: Localize;
            x = 0.8875 * safezoneW + safezoneX;
            y = 0.04 * safezoneH + safezoneY;
            w = 0.0130208 * safezoneW;
            h = 0.0237037 * safezoneH;
            colorText[] = {0,0,0,1};
            colorBackground[] = {1,0,0,1};
            onButtonClick = "closeDialog 1;";
            class Attributes {
				align="center";
			};
		};
        class RscStructuredText_1100: RscStructuredText
        {
            idc = 1100;
            text = "<t size='2' color='#000000' align='center'>Plan de suppression des DA3F, by TA</t>"; //--- ToDo: Localize;
            x = 0.325 * safezoneW + safezoneX;
            y = 0.16 * safezoneH + safezoneY;
            w = 0.3375 * safezoneW;
            h = 0.08 * safezoneH;
        };
    };
};

class menu1 {
	idd = 154;	
	//onUnload = "closeDialog 1;";
	class controls 
	{
		class d: RscText
		{
			idc = -1;

			x = 0.386562 * safezoneW + safezoneX;
			y = 0.214 * safezoneH + safezoneY;
			w = 0.232031 * safezoneW;
			h = 0.561 * safezoneH;
			colorBackground[] = {0.2,0.2,0.2,1};
		};
		class dd: RscText
		{
			idc = -1;

			x = 0.391719 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.221719 * safezoneW;
			h = 0.539 * safezoneH;
			colorBackground[] = {0.5,0.5,0.5,1};
		};
		class RscText_1001: RscText
		{
			idc = -1;

			x = 0.4175 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.066 * safezoneH;
			colorBackground[] = {0.2,0.2,0.2,1};
		};
		class text: RscStructuredText
		{
			idc = 100;

			text = "<t size='2' align='center' valign='middle'>---</t>"; //--- ToDo: Localize;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.154687 * safezoneW;
			h = 0.044 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0.5};
		};
		class button1: RscButtonMenu
		{
			idc = 1001;
            onButtonClick = "1 call fn_numero";

			text = "1"; //--- ToDo: Localize;
			x = 0.407187 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.7,0.7,0.7,0.5};
            class Attributes {
				align="center";
				color = "#FFFFF";
				valign="middle";
				size=3;
			};
		};
		class button2: RscButtonMenu
		{
			idc = 1002;
            onButtonClick = "2 call fn_numero";

			text = "2"; //--- ToDo: Localize;
			x = 0.479375 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.7,0.7,0.7,0.5};
            class Attributes {
				align="center";
				color = "#FFFFF";
				valign="middle";
				size=3;
			};
		};
		class button3: RscButtonMenu
		{
			idc = 1003;
            onButtonClick = "3 call fn_numero";

			text = "3"; //--- ToDo: Localize;
			x = 0.551562 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.7,0.7,0.7,0.5};
            class Attributes {
				align="center";
				color = "#FFFFF";
				valign="middle";
				size=3;
			};
		};
		class button4: RscButtonMenu
		{
			idc = 1004;
            onButtonClick = "4 call fn_numero";

			text = "4"; //--- ToDo: Localize;
			x = 0.407187 * safezoneW + safezoneX;
			y = 0.445 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.7,0.7,0.7,0.5};
            class Attributes {
				align="center";
				color = "#FFFFF";
				valign="middle";
				size=3;
			};
		};
		class button5: RscButtonMenu
		{
			idc = 1005;
            onButtonClick = "5 call fn_numero";

			text = "5"; //--- ToDo: Localize;
			x = 0.479375 * safezoneW + safezoneX;
			y = 0.445 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.7,0.7,0.7,0.5};
            class Attributes {
				align="center";
				color = "#FFFFF";
				valign="middle";
				size=3;
			};
		};
		class button6: RscButtonMenu
		{
			idc = 1006;
            onButtonClick = "6 call fn_numero";

			text = "6"; //--- ToDo: Localize;
			x = 0.551562 * safezoneW + safezoneX;
			y = 0.445 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.7,0.7,0.7,0.5};
            class Attributes {
				align="center";
				color = "#FFFFF";
				valign="middle";
				size=3;
			};
		};
		class button7: RscButtonMenu
		{
			idc = 1007;
            onButtonClick = "7 call fn_numero";

			text = "7"; //--- ToDo: Localize;
			x = 0.407187 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.7,0.7,0.7,0.5};
            class Attributes {
				align="center";
				color = "#FFFFF";
				valign="middle";
				size=3;
			};
		};
		class button8: RscButtonMenu
		{
			idc = 1008;
            onButtonClick = "8 call fn_numero";

			text = "8"; //--- ToDo: Localize;
			x = 0.479375 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.7,0.7,0.7,0.5};
            class Attributes {
				align="center";
				color = "#FFFFF";
				valign="middle";
				size=3;
			};
		};
		class button9: RscButtonMenu
		{
			idc = 1009;
            onButtonClick = "9 call fn_numero";

			text = "9"; //--- ToDo: Localize;
			x = 0.551562 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.7,0.7,0.7,0.5};
            class Attributes {
				align="center";
				color = "#FFFFF";
				valign="middle";
				size=3;
			};
		};
		class button0: RscButtonMenu
		{
			idc = 1000;
            onButtonClick = "0 call fn_numero";

			text = "0"; //--- ToDo: Localize;
			x = 0.479375 * safezoneW + safezoneX;
			y = 0.665 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.7,0.7,0.7,0.5};
            class Attributes {
				align="center";
				color = "#FFFFF";
				valign="middle";
				size=3;
			};
		};
		class buttonV: RscButtonMenu
		{
			idc = 1010;
            onButtonClick = "call fn_valider_keypad";

			text = "V"; //--- ToDo: Localize;
			x = 0.407187 * safezoneW + safezoneX;
			y = 0.665 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.7,0.7,0.7,0.5};
            class Attributes {
				align="center";
				color = "#FFFFF";
				valign="middle";
				size=3;
			};
		};
		class buttonX: RscButtonMenu
		{
			idc = 1011;
			onButtonClick = "1 call fn_quit";

			text = "X"; //--- ToDo: Localize;
			x = 0.551562 * safezoneW + safezoneX;
			y = 0.665 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.7,0.7,0.7,0.5};
            class Attributes {
				align="center";
				color = "#FFFFF";
				valign="middle";
				size=3;
			};
		};
    };
};
