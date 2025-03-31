open appDeclaration

one sig com_ea_game_monopolybingo_na extends Application{}{
	usesPermissions = ACCESS_WIFI_STATE + ACCESS_NETWORK_STATE + INTERNET + READ_PHONE_STATE + WRITE_EXTERNAL_STORAGE + BILLING + C2D_MESSAGE + RECEIVE + WAKE_LOCK
	no appPermissions
	no APIPermissions
}

one sig com_ea_game_monopolybingo_na_AlarmManagerReceiver extends Receiver{}{
	app in com_ea_game_monopolybingo_na
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_AndroidBillingService extends Service{}{
	app in com_ea_game_monopolybingo_na
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_BillingReceiver extends Receiver{}{
	app in com_ea_game_monopolybingo_na
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_EtceteraProxyActivity extends Activity{}{
	app in com_ea_game_monopolybingo_na
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_GCMBroadcastReceiverSubclass extends Receiver{}{
	app in com_ea_game_monopolybingo_na
	intentFilter = IntentFilter2
	compPermissions = SEND
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_GCMIntentService extends Service{}{
	app in com_ea_game_monopolybingo_na
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_GoogleIABProxyActivity extends Activity{}{
	app in com_ea_game_monopolybingo_na
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_LocalNotificationAlarmReceiver extends Receiver{}{
	app in com_ea_game_monopolybingo_na
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_LoginActivity extends Activity{}{
	app in com_ea_game_monopolybingo_na
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_MBMainPlayerActivity extends Activity{}{
	app in com_ea_game_monopolybingo_na
	intentFilter = IntentFilter3 + IntentFilter3 + IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_OnNewIntentPluginActivity extends Activity{}{
	app in com_ea_game_monopolybingo_na
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_P31VideoPlayerActivity extends Activity{}{
	app in com_ea_game_monopolybingo_na
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_ResponseReceiver extends Receiver{}{
	app in com_ea_game_monopolybingo_na
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_UnityPlayerActivity extends Activity{}{
	app in com_ea_game_monopolybingo_na
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_UnityPlayerNativeActivity extends Activity{}{
	app in com_ea_game_monopolybingo_na
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_UnityPlayerProxyActivity extends Activity{}{
	app in com_ea_game_monopolybingo_na
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ea_game_monopolybingo_na_WebViewActivity extends Activity{}{
	app in com_ea_game_monopolybingo_na
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = IN_APP_NOTIFY_A + PURCHASE_STATE_CHANGED_A + RESPONSE_CODE_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = RECEIVE_A + REGISTRATION_A
	categories = monopolybingo_na_C
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = NOTIFY_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=17
#IntentFilter=4
no Intent
#Data=4
}
run show
