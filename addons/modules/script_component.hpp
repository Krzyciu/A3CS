#define COMPONENT modules
#define COMPONENT_BEAUTIFIED Modules
#include "\z\a3cs\addons\main\script_mod.hpp"

// #define DEBUG_MODE_FULL
// #define DISABLE_COMPILE_CACHE
// #define ENABLE_PERFORMANCE_COUNTERS

#include "\z\a3cs\addons\main\script_macros.hpp"

#ifdef DISABLE_COMPILE_CACHE
    #define PREP_MODULE(moduleName,fncName) DFUNC(DOUBLES(moduleName,fncName) = compileScript [QPATHTOF(modules\moduleName\functions\DOUBLES(fnc,fncName).sqf)]
#else
    #define PREP_MODULE(moduleName,fncName) [QPATHTOF(modules\moduleName\functions\DOUBLES(fnc,fncName).sqf), QFUNC(DOUBLES(moduleName,fncName))] call CBA_fnc_compileFunction
#endif

// Panel left
#define IDC_DISPLAY3DEN_PANELLEFT_WARNINGS        1200
#define IDC_DISPLAY3DEN_PANELLEFT_WARNINGS_ICON   1201
#define IDC_DISPLAY3DEN_PANELLEFT_WARNINGS_INFO   1202
#define IDC_DISPLAY3DEN_PANELLEFT_WARNINGS_TREE   1203

// Attributes
#define IDC_DISPLAY3DENEDITATTRIBUTES_ATTRIBUTE_TITLE    701
#define IDC_DISPLAY3DENEDITATTRIBUTES_ATTRIBUTE_DESC     702
