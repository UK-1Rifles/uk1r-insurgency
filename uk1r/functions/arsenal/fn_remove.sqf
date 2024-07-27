#include "script_component.hpp"

if !(isServer) exitWith {false};

params [
  ["_arsenal", objNull, [objNull]]
];

// Check for null parameters.
if (isNull _arsenal) exitWith {false};

// Stop if the arsenal cannot be emptied.
if !([_arsenal] call FUNC(empty)) exitWith {false};

// Unregister the arsenal.
GVAR(active) = GVAR(active) - [_arsenal];
publicVariable QGVAR(active);

true