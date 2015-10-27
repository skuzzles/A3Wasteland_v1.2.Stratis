// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: playerSetupGear.sqf
//	@file Author: [GoT] JoSchaap, AgentRev

private ["_player", "_uniform", "_vest", "_headgear", "_goggles"];
_player = _this;

// Clothing is now defined in "client\functions\getDefaultClothing.sqf"

_uniform = [_player, "uniform"] call getDefaultClothing;
_vest = [_player, "vest"] call getDefaultClothing;
_headgear = [_player, "headgear"] call getDefaultClothing;
_goggles = [_player, "goggles"] call getDefaultClothing;

if (_uniform != "") then { _player addUniform _uniform };
if (_vest != "") then { _player addVest _vest };
if (_headgear != "") then { _player addHeadgear _headgear };
if (_goggles != "") then { _player addGoggles _goggles };

sleep 0.1;

// Remove GPS
//_player unlinkItem "ItemGPS";

// Remove radio
//_player unlinkItem "ItemRadio";

// Remove NVG
if (hmd _player != "") then { _player unlinkItem hmd _player };

// Add NVG
//_player linkItem "NVGoggles";

//_player addBackpack "B_AssaultPack_rgr";
//_player addMagazine "9Rnd_45ACP_Mag";
//_player addWeapon "hgun_ACPC2_F";
//_player addMagazine "9Rnd_45ACP_Mag";
//_player addMagazine "9Rnd_45ACP_Mag";
//_player addMagazine "9Rnd_45ACP_Mag";
_player addItem "FirstAidKit";
//_player selectWeapon "hgun_ACPC2_F";



switch (true) do
{
	case (["_medic_", typeOf _player] call fn_findString != -1):
	{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			
			//player removeItem "FirstAidKit";
			
			//vest
			_player addVest "V_BandollierB_khk";
			
			//backpack
			_player addBackpack "B_AssaultPack_khk";
			
			//uniform
			//_player forceAddUniform "U_I_CombatUniform";
			
			//weapon
			_player addWeapon "arifle_Mk20_MRCO_pointer_F";
			_player addMagazine "30Rnd_556x45_Stanag";
			_player addMagazine "30Rnd_556x45_Stanag";
			_player addWeapon "Binoculars";
			
			//weapon sidearm
			_player addWeapon "hgun_ACPC2_snds_F";
			_player addMagazine "9Rnd_45ACP_Mag";
			_player addMagazine "9Rnd_45ACP_Mag";
			
			//nades
			_player addItem "HandGrenade";
			_player addItem "SmokeShell";			

			
			//items
			_player addItem "Medikit";
			_player addItem "FirstAidKit";
			
			//headgear
			_player addHeadgear "H_HelmetB";
			
	};
	case (["_engineer_", typeOf _player] call fn_findString != -1):
	{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			//vest
			_player addVest "V_HarnessOGL_brn";
			
			//backpack
			_player addBackpack "B_AssaultPack_rgr";
			
			//uniform
			//_player forceAddUniform "U_B_SpecopsUniform_sgg";
			
			//weapon
			_player addWeapon "SMG_01_Holo_pointer_snds_F";
			_player addMagazine "30Rnd_45ACP_Mag_SMG_01";
			_player addMagazine "30Rnd_45ACP_Mag_SMG_01";
			_player addWeapon "Binoculars";
			
			//weapon sidearm
			_player addWeapon "hgun_P07_F";
			_player addMagazine "16Rnd_9x21_Mag";
			_player addMagazine "16Rnd_9x21_Mag";
			
			//nades
			_player addItem "HandGrenade";
			_player addItem "SmokeShell";			

			
			//items
			_player addItem "FirstAidKit";
			_player addItem "MineDetector";
			_player addItem "Toolkit";
			
			//headgear
			_player addHeadgear "H_HelmetB";
			

	};
	case (["_sniper_", typeOf _player] call fn_findString != -1):
	{
			removeAllWeapons _player;
			removeBackpack _player;
			removeAllWeapons _player;
			removeBackpack _player;
			
			//backpack
			_player addBackpack "B_AssaultPack_rgr";
			
			//weapon
			_player addWeapon "srifle_DMR_01_DMS_snds_BI_F";
			_player addMagazine "10Rnd_762x54_Mag";
			_player addMagazine "10Rnd_762x54_Mag";
			_player addWeapon "Rangefinder";
			
			//weapon sidearm
			_player addWeapon "hgun_ACPC2_snds_F";
			_player addMagazine "9Rnd_45ACP_Mag";
			_player addMagazine "9Rnd_45ACP_Mag";

			//nades
			_player addItem "HandGrenade";
			_player addItem "SmokeShell";
			
			//items
			_player addItem "FirstAidKit";	
			_player linkItem "NVGoggles";			
			
	};
		case (["_diver_", typeOf _player] call fn_findString != -1):
	{
	
			removeAllWeapons _player;
			removeBackpack _player;
			removeAllWeapons _player;
			removeBackpack _player;
			
			//backpack
			_player addBackpack "B_AssaultPack_rgr";
			
			//weapon
			_player addWeapon "SMG_01_Holo_pointer_snds_F";
			_player addMagazine "30Rnd_45ACP_Mag_SMG_01";
			_player addMagazine "30Rnd_45ACP_Mag_SMG_01";
			_player addWeapon "Binoculars";
			
			//weapon sidearm
			_player addWeapon "hgun_P07_F";
			_player addMagazine "16Rnd_9x21_Mag";
			_player addMagazine "16Rnd_9x21_Mag";
		
			//nades
			_player addItem "HandGrenade";
			_player addItem "SmokeShell";	

			//items
			_player addItem "FirstAidKit";			
	};
};

if (_player == player) then
{
	thirstLevel = 100;
	hungerLevel = 100;
};
