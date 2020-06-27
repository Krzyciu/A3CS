#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Updates reactive attributes UI
 */

LOG_1("Refreshing reactive attributes started (attributes: %1).",str count GVAR(reactiveAttributes));

{
  private _controlGroup = _x;
  private _condition = _controlGroup getVariable QGVAR(conditionActive);
  private _state = (GVAR(dynamicAttributesValues) call _condition) isEqualTo true;

  LOG_3("Refreshing reactive attribute '%1' (condition: '%2' active: %3).",ctrlClassName _controlGroup,str _condition,str _state);

  _controlGroup ctrlShow _state;
} forEach GVAR(reactiveAttributes);

LOG("Refreshing reactive attributes finished.");
