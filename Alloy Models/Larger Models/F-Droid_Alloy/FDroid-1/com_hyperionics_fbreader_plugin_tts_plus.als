open appDeclaration

one sig com_hyperionics_fbreader_plugin_tts_plus extends Application{}{
	usesPermissions = WAKE_LOCK + BLUETOOTH + WRITE_EXTERNAL_STORAGE + ACCESS_NETWORK_STATE
	no appPermissions
	APIPermissions = WAKE_LOCK + ACCESS_NETWORK_STATE
}

one sig com_hyperionics_fbreader_plugin_tts_plus_BluetoothConnectReceiver extends Receiver{}{
	app in com_hyperionics_fbreader_plugin_tts_plus
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_hyperionics_fbreader_plugin_tts_plus_IncomingReceiver extends Receiver{}{
	app in com_hyperionics_fbreader_plugin_tts_plus
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_hyperionics_fbreader_plugin_tts_plus_MediaButtonIntentReceiver extends Receiver{}{
	app in com_hyperionics_fbreader_plugin_tts_plus
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_hyperionics_fbreader_plugin_tts_plus_PluginInfo extends Receiver{}{
	app in com_hyperionics_fbreader_plugin_tts_plus
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_hyperionics_fbreader_plugin_tts_plus_SettingsActivity extends Activity{}{
	app in com_hyperionics_fbreader_plugin_tts_plus
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + WAKE_LOCK
}

one sig com_hyperionics_fbreader_plugin_tts_plus_SpeakActivity extends Activity{}{
	app in com_hyperionics_fbreader_plugin_tts_plus
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + WAKE_LOCK
}

one sig com_hyperionics_fbreader_plugin_tts_plus_SpeakService extends Service{}{
	app in com_hyperionics_fbreader_plugin_tts_plus
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + WAKE_LOCK
}

one sig com_hyperionics_fbreader_plugin_tts_plus_StartupActivity extends Activity{}{
	app in com_hyperionics_fbreader_plugin_tts_plus
	intentFilter = IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = ACL_CONNECTED_A + ACL_DISCONNECTED_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = SVC_STARTED_A + TTSP_KILL_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = MEDIA_BUTTON_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = REGISTER_A
	categories = DEFAULT_C + INFO_C
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = RUN_A
	categories = DEFAULT_C
	data = NoMimeYesScheme
}


pred show(){
#Application=1
//#Component=8
#IntentFilter=5
no Intent
#Data=4
}
run show
