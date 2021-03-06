#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * curator module function
 */

params ["_mode", "_input"];
TRACE_2(QUOTE(EXEC_MODULE_NAME),_mode,_input);

// Exit if module executed inside editor, not on server or not in init mode
if (is3DEN || !(isServer) || (_mode isNotEqualTo "init")) exitWith {};
_input params [
  ["_logic", objNull, [objNull]],
  ["_isActivated", false, [true]],
  ["_isCuratorPlaced", false, [true]]
];
// Exit if module is null, not local or placed by zeus (should not happen)
if (isNull _logic || !(local _logic) || _isCuratorPlaced) exitWith {};

LOG('Starting execution of EXEC_MODULE_NAME.');

if (is3DENPreview) then {
  [_logic, true] call EFUNC(debug,updateModuleStatus);
};

// Get all synced units
private _syncedUnits = (synchronizedObjects _logic) select {_x isKindOf "CAManBase"};

// Debug log
if (is3DENPreview) then {
  [_logic, "Oznaczam %1 jednostek jako zeus", count _syncedUnits] call EFUNC(debug,moduleLog);
};

// Mark units as curators
{
  _x setVariable [QEGVAR(zeus,isCurator), true, true];
} forEach _syncedUnits;

// Delete module
deleteVehicle _logic;

LOG('Execution of EXEC_MODULE_NAME finished.');
