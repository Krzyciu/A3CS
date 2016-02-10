/*
 * Author: SzwedzikPL
 * Cache PFH
 */
#include "script_component.hpp"

if(!isServer) exitWith {};

private _cachedUnitsCount = 0;
private _uncachedUnitsCount = 0;

{
    private _group = _x;

    if(({alive _x} count (units _group)) > 0) then {
        private _leader = leader _group;
        private _isVisibleForPlayers = false;
        private _playableUnits = [[player], playableUnits] select isMultiplayer;
        {
            private _player = vehicle _x;
            private _distance = _leader distance _player;
            if(_distance < GVAR(cacheDistanceLand) && {_player iskindOf "Land"}) exitWith {_isVisibleForPlayers = true;};
            if(_distance < GVAR(cacheDistanceLand) && {_player iskindOf "Ship"}) exitWith {_isVisibleForPlayers = true;};
            if(_distance < GVAR(cacheDistanceHelicopters) && {_player iskindOf "Helicopter"}) exitWith {_isVisibleForPlayers = true;};
            if(_distance < GVAR(cacheDistancePlanes) && {_player iskindOf "Plane"}) exitWith {_isVisibleForPlayers = true;};
        } forEach _playableUnits;

        if(!_isVisibleForPlayers && {!(_group in GVAR(cachedGroups))}) then {
            //cache group
            GVAR(cachedGroups) pushback _group;
            _cachedUnitsCount = (_group call FUNC(cacheGroup)) + _cachedUnitsCount;
        };
        if(_isVisibleForPlayers && {(_group in GVAR(cachedGroups))}) then {
            //uncahe group
            GVAR(cachedGroups) deleteAt (GVAR(cachedGroups) find _group);
            _uncachedUnitsCount = (_group call FUNC(uncacheGroup)) + _uncachedUnitsCount;
        };
    } else {
        //no alive units in group, clean data
        GVAR(cacheGroups) deleteAt (GVAR(cacheGroups) find _group);
        if(!isMultiplayer) then {systemchat "Cache - Usuwam pusta grupe AI";};
        {deleteWaypoint _x;} forEach (waypoints _group);
        deleteGroup _group;
    };
} forEach +GVAR(cacheGroups);

if(!isMultiplayer && {_cachedUnitsCount > 0 || _uncachedUnitsCount > 0}) then {
    systemChat format ["Cache - Ukrywam jednostki: %1 | Odkrywam jednostki: %2", _cachedUnitsCount, _uncachedUnitsCount];
};