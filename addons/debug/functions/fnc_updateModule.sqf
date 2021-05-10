#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Updates module status for mission debug
 */

params ["_logic", "_isActivated"];

diag_log text format ["Moduł %1 %2", _logic, ["deaktywowany", "aktywowany"] select _isActivated];