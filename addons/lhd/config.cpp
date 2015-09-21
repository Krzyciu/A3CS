#include "script_component.hpp"
class CfgPatches
{
    class ADDON
    {
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"a3cs_main", "a3cs_common"};
        version = A3CS_VERSION;
        versionStr = QUOTE(A3CS_VERSION);
        versionAr[] = A3CS_VERSION_ARRAY;
        author[] = {"SzwedzikPL", "ACE3 Team"};
        authorUrl = "http://arma3coop.pl";
    };
};

class Extended_PreInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_preInit));
    };
};

class CfgVehicles {
    class StaticShip;
    class a3cs_lhd: StaticShip {
        scope = 2;
        author = "$STR_A3_Bohemia_Interactive";
        displayName = "USS Khe Sanh";
        model = "\a3\weapons_f\empty";
        vehicleClass = "Submerged";
        icon = PATHTOF(data\lhd_ca.paa);
        mapsize = 250;
        destrType = 0;
        featureSize = 100;
        class Eventhandlers {
            init = QUOTE(_this call FUNC(initLHD));
        };
    };
};