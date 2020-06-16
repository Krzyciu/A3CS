
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

class Extended_PostInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_postInit));
    };
};

class Extended_Respawn_EventHandlers {
    class CAManBase {
        class ADDON {
            respawn = QUOTE(_this call FUNC(handleRespawn));
        };
    };
};

class Extended_Killed_EventHandlers {
    class CAManBase {
        class ADDON {
            killed = QUOTE(_this call FUNC(handleKilled));
        };
    };
};

class Extended_DisplayLoad_EventHandlers {
    class RscDisplayEGSpectator {
        ADDON = QUOTE('RscDisplayEGSpectator' call FUNC(displayLoad));
    };
    class RscDisplayCurator {
        ADDON = QUOTE('RscDisplayCurator' call FUNC(displayLoad));
    };
};

class Extended_DisplayUnload_EventHandlers {
    class RscDisplayEGSpectator {
        ADDON = QUOTE('RscDisplayEGSpectator' call FUNC(displayUnload));
    };
    class RscDisplayCurator {
        ADDON = QUOTE('RscDisplayCurator' call FUNC(displayUnload));
    };
};
