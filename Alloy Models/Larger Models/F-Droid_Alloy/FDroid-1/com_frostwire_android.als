open appDeclaration

one sig com_frostwire_android extends Application{}{
	usesPermissions = ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + CHANGE_NETWORK_STATE + CHANGE_WIFI_MULTICAST_STATE + CHANGE_WIFI_STATE + INTERNET + SET_WALLPAPER + VIBRATE + WAKE_LOCK + WRITE_EXTERNAL_STORAGE + WRITE_SETTINGS + RECEIVE_BOOT_COMPLETED + READ_PHONE_STATE + BILLING
	no appPermissions
	APIPermissions = ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + INTERNET + SET_WALLPAPER + VIBRATE + WAKE_LOCK + WRITE_SETTINGS
}

one sig com_frostwire_android_AboutActivity extends Activity{}{
	app in com_frostwire_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_frostwire_android_AdActivity extends Activity{}{
	app in com_frostwire_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_frostwire_android_BillingReceiver extends Receiver{}{
	app in com_frostwire_android
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_frostwire_android_BillingService extends Service{}{
	app in com_frostwire_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_frostwire_android_BrowsePeerActivity extends Activity{}{
	app in com_frostwire_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_frostwire_android_EngineBroadcastReceiver extends Receiver{}{
	app in com_frostwire_android
	intentFilter = IntentFilter2
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE
}

one sig com_frostwire_android_EngineService extends Service{}{
	app in com_frostwire_android
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + WAKE_LOCK
}

one sig com_frostwire_android_MainActivity extends Activity{}{
	app in com_frostwire_android
	intentFilter = IntentFilter3 + IntentFilter4 + IntentFilter5 + IntentFilter6
	no compPermissions
	compUsesPermissions = ACCESS_WIFI_STATE
}

one sig com_frostwire_android_MediaPlayerActivity extends Activity{}{
	app in com_frostwire_android
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + ACCESS_WIFI_STATE + WAKE_LOCK
}

one sig com_frostwire_android_PreferencesActivity extends Activity{}{
	app in com_frostwire_android
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_WIFI_STATE
}

one sig com_frostwire_android_UPnPService extends Service{}{
	app in com_frostwire_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_frostwire_android_WizardActivity extends Activity{}{
	app in com_frostwire_android
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
	actions = BOOT_COMPLETED_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = VIEW_A
	categories = DEFAULT_C
	data = NoMimeYesScheme + YesMimeNoScheme + NoMimeNoScheme
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = SEND_A
	categories = DEFAULT_C
	data = NoMimeNoScheme
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = SEND_MULTIPLE_A
	categories = DEFAULT_C
	data = NoMimeNoScheme
}


pred show(){
#Application=1
//#Component=12
#IntentFilter=6
no Intent
#Data=4
}
run show
