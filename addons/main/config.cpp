#include "script_component.hpp"
class CfgPatches {
    class ADDON {
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            #include "required_addons.hpp"
            "cba_main"
        };
        version = A3CS_VERSION;
        versionStr = QUOTE(A3CS_VERSION);
        versionAr[] = A3CS_VERSION_ARRAY;
        author[] = {"SzwedzikPL", "ACE3 Team", "Alduric", "Chris", "Wodzu", "Samsung1702"};
        authorUrl = "http://arma3coop.pl";
    };
};
class CfgSettings {
    class CBA {
        class Versioning {
            class a3cs {
                main_addon = "a3cs_main";
                level = -1;
                //handler = "a3cs_common_fnc_mismatch";
                //removed[] = {"a3cs_oldaddon"};
            };
        };
    };
};
class a3c_mods {
    //modlist[] += {"CBA","TFAR","A3CS","PAM","A3MP","A3AP"};
    modlist[] += {"A3CS"};
};
class CfgMods {
    class Mod_Base;
    class A3CS: Mod_Base {
        name = ECSTRING(common,A3CS);
        picture = PATHTOF(data\logo_a3cs_ca.paa);
        actionName = "Forum";
        action = "http://forum.arma3coop.pl";
        description = ECSTRING(common,A3CS);
        logo = PATHTOF(data\logo_a3cs_ca.paa);
        logoOver = PATHTOF(data\logo_a3cs_ca.paa);
        tooltip = ECSTRING(common,A3CS);
        tooltipOwned = ECSTRING(common,A3CS);
        overview = ECSTRING(common,A3CS_Description);
        author = ECSTRING(common,A3CS_Authors);
        overviewPicture = PATHTOF(data\logo_a3cs_ca.paa);
        mod_code = "A3CS";
        mod_version = A3CS_VERSION;
        mod_version_ar[] = A3CS_VERSION_ARRAY;
    };
};

#include "CfgWeapons.hpp"
#include "CfgVehicles.hpp"

/*
    Removed ACE modules:
    ace_advanced_ballistics.pbo
    ace_gforces.pbo
    ace_goggles.pbo
    ace_hearing.pbo
    ace_nametags.pbo
    ace_weather.pbo
    ace_winddeflection.pbo
    ace_atragmx.pbo
    ace_kestrel4500.pbo
    ace_dagr.pbo
    ace_rangecard.pbo
    ace_scopes.pbo
    ace_frag.pbo
    ace_testmissions.pbo
*/
#include "ace_settings.hpp"
#include "ace_medical_treatments.hpp"

class ACE_settingsMenu {
    class controls {
        class HeaderName {
            text = CSTRING(OpenConfigMenu);
        };
    };
};
class ACE_serverSettingsMenu {
    class controls {
        class HeaderName {
            text = CSTRING(OpenConfigMenu);
        };
    };
};
class ACE_Open_SettingsMenu_BtnBase {
    text = CSTRING(OpenConfigMenu);
};

//Infobox
#include "infobox.hpp"
#include "intro.hpp"
