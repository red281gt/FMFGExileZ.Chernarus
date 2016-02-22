if ((_this select 0) == player) then {
	if (!isDedicated) then {
		waitUntil {!isNull findDisplay 46 && !isNil 'ExileClientLoadedIn' && getPlayerUID player != ''};
		waitUntil {!isNil "SlotDonor"};
		if !(getPlayerUID player in SlotDonor) then {
			titleCut ["", "BLACK FADED", 10];
			uiSleep 1;
			[parseText "<t size='1.5' font='OrbitronLight' color='#a81e13'>FMFG OG SLOT</t><br/><t size='1' font='OrbitronLight' color='#FFFFFF'>You have joined a FMFG OG slot, please wait in the lobby for a regular slot.</t>",0,0,10,0] spawn bis_fnc_dynamictext;
			uiSleep 3;
			disableUserInput true;
			uiSleep 1;
			endMission 'loser';
		} else {
			systemChat "YOU HAVE JOINED A FMFG OG SLOT! NEVER JOIN A FMFG OG SLOT WHEN A REGULAR SLOT IS OPEN";
		};
	};
};