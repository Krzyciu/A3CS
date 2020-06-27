#include "script_component.hpp"
/*
 * Author: Bohemia Interactive, SzwedzikPL
 * 3DEN dynamicEdit attributeLoad handler
 */

// Original BI function
private _control = _this controlsGroupCtrl 100;

if (typename _value != typename '') then {
  _value = str _value;
};

_control ctrlSetText _value;

// Init dynamic attribute
private _initData = [_this, _config, _value, {
  //TODO: Observer for edit control
}, _control] call FUNC(initDynamicAttribute);
