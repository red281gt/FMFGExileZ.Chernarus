private["_duration"];
disableSerialization;
_duration = _this;
ExileClientPlayerIsBambi = true;
ExileClientPlayerBambiStateExpiresAt = time + _duration; 
true call ExileClient_gui_hud_toggleBambiIcon;
execVM "FMFG\welcome.sqf";
ExileClientEndBambiStateThread = [_duration, ExileClient_object_player_bambiStateEnd, [], true] call ExileClient_system_thread_addTask;
true