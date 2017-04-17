#include "\ice\tb_main\sys\gameModes\aad_init.sqf";

[] execVM "functions\initFastRope.sqf";
[] execVM "functions\initMineDammage.sqf";

player addAction ["Setup Sandbag Bunker","functions\setupSandbags.sqf","",0,false,true,"",' (getdir cursorTarget - getdir player < 40) && ([cursorTarget] call ICE_fnc_getObjectCategory == "staticweapon") && (count (nearestObjects [player, ["ICE_emptySandbagsTimberStack"], 5]) > 0) '];
player addAction ["Setup Hesco Bunker","functions\setupHesco.sqf","",0,false,true,"",' (getdir cursorTarget - getdir player < 40) && ([cursorTarget] call ICE_fnc_getObjectCategory == "staticweapon") && (count (nearestObjects [player, ["ICE_emptyHescoBagsStack"], 5]) > 0) '];

// [] execVM "outlw_magRepack\MagRepack_init_sv.sqf";

["TacBF - Tactical Battlefield PvP Modification for A3", "OfficialTFR"] call compileFinal preprocessFileLineNumbers "ts_check.sqf";
