open appDeclaration

one sig com_namelessdev_mpdroid extends Application{}{
	usesPermissions = INTERNET + ACCESS_WIFI_STATE + READ_PHONE_STATE + ACCESS_NETWORK_STATE + CHANGE_WIFI_MULTICAST_STATE + WRITE_EXTERNAL_STORAGE
	no appPermissions
	APIPermissions = INTERNET + ACCESS_WIFI_STATE + READ_PHONE_STATE + ACCESS_NETWORK_STATE + CHANGE_WIFI_MULTICAST_STATE
}

one sig com_namelessdev_mpdroid_AboutActivity extends Activity{}{
	app in com_namelessdev_mpdroid
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE
}

one sig com_namelessdev_mpdroid_ConnectionSettings extends Activity{}{
	app in com_namelessdev_mpdroid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_namelessdev_mpdroid_LibraryTabActivity extends Activity{}{
	app in com_namelessdev_mpdroid
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE
}

one sig com_namelessdev_mpdroid_LibraryTabsSettings extends Activity{}{
	app in com_namelessdev_mpdroid
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE
}

one sig com_namelessdev_mpdroid_MainMenuActivity extends Activity{}{
	app in com_namelessdev_mpdroid
	intentFilter = IntentFilter1
	no compPermissions
	compUsesPermissions = READ_PHONE_STATE + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE
}

one sig com_namelessdev_mpdroid_PhoneStateReceiver extends Receiver{}{
	app in com_namelessdev_mpdroid
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_namelessdev_mpdroid_PlaylistEditActivity extends Activity{}{
	app in com_namelessdev_mpdroid
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE
}

one sig com_namelessdev_mpdroid_RemoteControlReceiver extends Receiver{}{
	app in com_namelessdev_mpdroid
	intentFilter = IntentFilter3 + IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_namelessdev_mpdroid_SearchActivity extends Activity{}{
	app in com_namelessdev_mpdroid
	intentFilter = IntentFilter5
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE
}

one sig com_namelessdev_mpdroid_ServerBonjourListActivity extends Activity{}{
	app in com_namelessdev_mpdroid
	no intentFilter
	no compPermissions
	compUsesPermissions = CHANGE_WIFI_MULTICAST_STATE
}

one sig com_namelessdev_mpdroid_ServerListActivity extends Activity{}{
	app in com_namelessdev_mpdroid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_namelessdev_mpdroid_SettingsActivity extends Activity{}{
	app in com_namelessdev_mpdroid
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE
}

one sig com_namelessdev_mpdroid_SimpleLibraryActivity extends Activity{}{
	app in com_namelessdev_mpdroid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_namelessdev_mpdroid_SimpleWidgetProvider extends Receiver{}{
	app in com_namelessdev_mpdroid
	intentFilter = IntentFilter6
	no compPermissions
	no compUsesPermissions
}

one sig com_namelessdev_mpdroid_StreamingService extends Service{}{
	app in com_namelessdev_mpdroid
	no intentFilter
	no compPermissions
	compUsesPermissions = READ_PHONE_STATE + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE
}

one sig com_namelessdev_mpdroid_WarningActivity extends Activity{}{
	app in com_namelessdev_mpdroid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_namelessdev_mpdroid_WebViewActivity extends Activity{}{
	app in com_namelessdev_mpdroid
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_namelessdev_mpdroid_WidgetHelperService extends Service{}{
	app in com_namelessdev_mpdroid
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE
}

one sig com_namelessdev_mpdroid_WifiConnectionSettings extends Activity{}{
	app in com_namelessdev_mpdroid
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_WIFI_STATE
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = PLAYBACK_VIEWER_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = PHONE_STATE_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = MEDIA_BUTTON_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = AUDIO_BECOMING_NOISY_A
	no categories
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = SEARCH_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = APPWIDGET_UPDATE_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=19
#IntentFilter=6
no Intent
#Data=4
}
run show
