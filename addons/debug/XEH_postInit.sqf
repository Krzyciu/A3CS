#include "script_component.hpp"

if !(is3DENPreview) exitWith {};

addMissionEventHandler ["ExtensionCallback", {
  params ["_name", "_function"];

  if (_name isNotEqualTo "a3cs_debug") exitWith {};

  if (_function isEqualTo "logsListUpdated") exitWith {
    private _logs = [];

    while {true} do {
      private _log = "a3cs_debug" callExtension "getLog";
      if (_log isEqualTo "") exitWith {};
      _logs pushBack _log;
    };

    reverse _logs;
    [_logs] call FUNC(addLogs);
  };
}];

private _initWatcher = "a3cs_debug" callExtension "missionPreviewStart";
if (_initWatcher isEqualTo "true") then {
  systemChat "Uruchamiam obserwację logów";

  QGVAR(logsList) cutRsc [QGVAR(logsList), "PLAIN", -1, false];
  private _display = uiNamespace getVariable [QGVAR(logsList), displayNull];
  if !(isNull _display) then {
    private _logsListTextCtrl = _display displayCtrl IDC_LOGSLIST;
    _logsListTextCtrl ctrlSetBackgroundColor [0, 0, 0, 0.45];
    _logsListTextCtrl ctrlSetFade (parseNumber (!GVAR(showLogs)));
    _logsListTextCtrl ctrlCommit 0;
  };

  // Initial write of logs
  [[]] call FUNC(addLogs);

  // Add action
  // TODO: Debug control panel
  player addAction [
    "<t color='#FF0000'>DEBUG - Pokaż/ukryj logi</t>",
    {
      GVAR(showLogs) = !GVAR(showLogs);
      private _display = uiNamespace getVariable [QGVAR(logsList), displayNull];
      if (isNull _display) exitWith {};
      private _logsListTextCtrl = _display displayCtrl IDC_LOGSLIST;
      _logsListTextCtrl ctrlSetFade (parseNumber (!GVAR(showLogs)));
      _logsListTextCtrl ctrlCommit 0;

      // Update logs list text
      if (GVAR(showLogs)) then {
        [[]] call FUNC(addLogs);
      };
    }, nil, 0
  ];

  /*
    FileSystemWatcher often don't trigger if focus is on arma app
    Async polling for updates forces callback if logsList updated
  */
  [{"a3cs_debug" callExtension "updateLogsList";}, 0.5] call CBA_fnc_addPerFrameHandler;
};

private _pfh = [{0 call FUNC(updateEntitiesDrawData)}, 0.5] call CBA_fnc_addPerFrameHandler;

[QEGVAR(modules,base), "init", {
  _this call FUNC(initModule);
}, true, [], true] call CBA_fnc_addClassEventHandler;

// Force check modules deleted on init (won't trigger deleted EH)
[{diag_frameNo > _this}, {
  TRACE_1("force checking deleted modules",diag_frameNo);
  0 call FUNC(updateDeletedModules);
}, (diag_frameNo + 10)] call CBA_fnc_waitUntilAndExecute;

{
  _x call FUNC(initTrigger);
} forEach (allMissionObjects "EmptyDetector");

// Add map draw script
((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["Draw", {
  _this call FUNC(drawMap);
}];
