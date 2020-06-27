#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds classname to 3DEN dynamicClassSelect class list
 */

params ["_ctrlClassList", "_className", "_weight", ["_playSound", true], ["_notificationBar", controlNull]];

private _config = configFile >> "CfgVehicles" >> _className;

// Exit if class not exists
if !(isClass _config) exitWith {};

private _sourceMod = configSourceMod _config;
private _displayName = getText (_config >> "displayName");
private _icon = getText (_config >> "icon");
private _dlcIcon = "";

if !(".paa" in _icon) then {
  _icon = format ["\a3\ui_f\data\map\vehicleicons\%1_ca.paa", _icon];
};

// Get dlc icon if className is not vanilla
if !(_sourceMod isEqualTo "A3") then {
  private _modParams = modParams [_sourceMod, ["logoSmall"]];
  if !(_modParams isEqualTo []) then {
    _dlcIcon = _modParams # 0;
  };
};

// Add className to list
private _index = _ctrlClassList lnbAddRow [_displayName, "", str _weight];
_ctrlClassList lnbSetData [[_index, 0], _className];
_ctrlClassList lnbSetTooltip [[_index, 0], _className];
_ctrlClassList lnbSetPicture [[_index, 0], _icon];
_ctrlClassList lnbSetValue [[_index, 2], _weight];

if !(_dlcIcon isEqualTo "") then {
  _ctrlClassList lnbSetPicture [[_index, 1], _dlcIcon];
};

// Update labels
(ctrlParentControlsGroup _ctrlClassList) call FUNC(dynamicClassSelect_updateUI);

// Show notification
[_playSound, _notificationBar] call FUNC(dynamicClassSelect_showNotification);
