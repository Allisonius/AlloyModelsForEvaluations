open appDeclaration

one sig com_adobe_air extends Application{}{
	usesPermissions = INTERNET + BROADCAST_STICKY + ACCESS_NETWORK_STATE
	no appPermissions
	APIPermissions = INTERNET + BROADCAST_STICKY + ACCESS_NETWORK_STATE
}

one sig com_adobe_air_AIRService extends Service{}{
	app in com_adobe_air
	intentFilter = IntentFilter1 + IntentFilter2
	no compPermissions
	compUsesPermissions = BROADCAST_STICKY
}

one sig com_adobe_air_AIRUpdateDialog extends Activity{}{
	app in com_adobe_air
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_adobe_air_AdobeAIR extends Activity{}{
	app in com_adobe_air
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_adobe_air_GamePreviewAppEntry extends Activity{}{
	app in com_adobe_air
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_adobe_air_RemoteDebuggerListenerDialog extends Activity{}{
	app in com_adobe_air
	intentFilter = IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = AIRServiceAction_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = DownloadConfig_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = MAIN_A
	categories = AIRUpdateDialog_C + DEFAULT_C
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = MAIN_A
	categories = DEFAULT_C + RemoteDebuggerListenerDialog_C
	no data
}


pred show(){
#Application=1
#Component=5
#IntentFilter=5
no Intent
#Data=4
}
run show
