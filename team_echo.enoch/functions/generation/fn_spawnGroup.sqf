params [
	["_pos", [0,0], [[]]],
	["_side", east, [east]],
	["_amount", 4, [0]],
	["_radius", 20, [0]],
	["_areSpecialForces", false, [false]]
];

private _group = createGroup [_side, true];
/*
	Altis, Malden, Stratis
	Tanoa,
	Livonia
*/
private _templates = [
	[
		[["BLU_F", "Infantry"], ["BLU_CTRG_F", "Infantry"]],
		[["BLU_T_F", "Infantry"], ["BLU_CTRG_F", "Infantry"]],
		[["BLU_W_F", "Infantry"], ["BLU_CTRG_F", "Infantry"]]
	],
	[
		[["OPF_F", "Infantry"], ["OPF_R_F", "SpecOps"]],
		[["OPF_T_F", "Infantry"], ["OPF_T_F", "SpecOps"]],
		[["OPF_R_F", "SpecOps"], ["OPF_R_F", "SpecOps"]]
	],
	[
		[["IND_F", "Infantry"], ["IND_F", "Infantry"]],
		[["IND_C_F", "Infantry"], ["IND_C_F", "Infantry"]],
		[["IND_E_F", "Infantry"], ["IND_E_F", "Infantry"]]
	]
];