// CBA Settings [ADDON: a3cs_nametags]:

[
    QGVAR(show2DNameTag), "CHECKBOX",
    [LSTRING(Settings_show2DNameTag), LSTRING(Settings_show2DNameTag_Desc)],
    LSTRING(Module_DisplayName),
    true,
    2,
    {_this call FUNC(onDrawSettingsChanged);}
] call CBA_settings_fnc_init;

[
    QGVAR(show3DNameTag), "LIST",
    [LSTRING(Settings_show3DNameTag), LSTRING(Settings_show3DNameTag_Desc)],
    LSTRING(Module_DisplayName),
    [
      [0, 1, 2, 3], [
        ELSTRING(common,No),
        LSTRING(Settings_show3DNameTag_Freelook),
        LSTRING(Settings_show3DNameTag_OnCursor),
        LSTRING(Settings_show3DNameTag_Both)
      ], 1
    ],
    2,
    {_this call FUNC(onDrawSettingsChanged);}
] call CBA_settings_fnc_init;

[
    QGVAR(showSpeaking), "CHECKBOX",
    [LSTRING(Settings_showSpeaking), LSTRING(Settings_showSpeaking_Desc)],
    LSTRING(Module_DisplayName),
    true,
    2
] call CBA_settings_fnc_init;

[
    QGVAR(showLeaderIcon), "CHECKBOX",
    [LSTRING(Settings_showLeaderIcon), LSTRING(Settings_showLeaderIcon_Desc)],
    LSTRING(Module_DisplayName),
    true,
    2
] call CBA_settings_fnc_init;

[
    QGVAR(2DNameTagPosition), "LIST",
    [LSTRING(Settings_2DNameTagPosition)],
    [LSTRING(Module_DisplayName), "str_a3_rscdisplaygameoptions_buttongui"],
    [
      [0, 1], [
        LSTRING(Settings_2DNameTagPosition_Center),
        LSTRING(Settings_2DNameTagPosition_Bottom)
      ], 0
    ],
    2
] call CBA_settings_fnc_init;

[
    QGVAR(3DNameTagScale), "LIST",
    [LSTRING(Settings_3DNameTagScale)],
    [LSTRING(Module_DisplayName), "str_a3_rscdisplaygameoptions_buttongui"],
    [
      [0.7, 0.8, 0.9, 1], [
        LSTRING(Settings_3DNameTagScale_VerySmall),
        LSTRING(Settings_3DNameTagScale_Small),
        LSTRING(Settings_3DNameTagScale_Normal),
        LSTRING(Settings_3DNameTagScale_Big)
      ], 2
    ],
    2
] call CBA_settings_fnc_init;

[
    QGVAR(rankColor), "COLOR",
    LSTRING(Settings_RankColor),
    [LSTRING(Module_DisplayName), "str_a3_rscdisplaygameoptions_buttongui"],
    [1, 1, 1],
    2
] call CBA_settings_fnc_init;

[
    QGVAR(defaultNameColor), "COLOR",
    [LSTRING(Settings_DefaultNameColor), LSTRING(Settings_DefaultNameColor_Desc)],
    [LSTRING(Module_DisplayName), "str_a3_rscdisplaygameoptions_buttongui"],
    [1, 1, 1],
    2
] call CBA_settings_fnc_init;