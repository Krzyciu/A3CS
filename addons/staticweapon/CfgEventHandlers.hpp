class Extended_PreStart_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_preStart));
    };
};
class Extended_PreInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_preInit));
    };
};
class Extended_Init_EventHandlers {
    class StaticWeapon {
        class ADDON {
            init = QUOTE(_this call DFUNC(initStaticWeapon));
        };
    };
};