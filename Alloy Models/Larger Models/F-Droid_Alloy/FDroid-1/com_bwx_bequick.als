open appDeclaration

one sig com_bwx_bequick extends Application{}{
	usesPermissions = ACCESS_WIFI_STATE + ACCESS_NETWORK_STATE + ACCESS_FINE_LOCATION + WAKE_LOCK + CHANGE_WIFI_STATE + WRITE_SETTINGS + BLUETOOTH + BLUETOOTH_ADMIN + WRITE_APN_SETTINGS + READ_SYNC_SETTINGS + WRITE_SYNC_SETTINGS + GET_ACCOUNTS + RECEIVE_BOOT_COMPLETED + VIBRATE + FLASHLIGHT + HARDWARE_TEST + WRITE_SECURE_SETTINGS + READ_SECURE_SETTINGS + CAMERA + MODIFY_PHONE_STATE + ACCESS_WIMAX_STATE + CHANGE_WIMAX_STATE
	no appPermissions
	APIPermissions = ACCESS_WIFI_STATE + ACCESS_NETWORK_STATE + ACCESS_FINE_LOCATION + WAKE_LOCK + CHANGE_WIFI_STATE + WRITE_SETTINGS + BLUETOOTH + BLUETOOTH_ADMIN + READ_SYNC_SETTINGS + WRITE_SYNC_SETTINGS + GET_ACCOUNTS + VIBRATE + CAMERA
}

one sig com_bwx_bequick_AirplaneModePrefs extends Activity{}{
	app in com_bwx_bequick
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bwx_bequick_BrightnessPrefs extends Activity{}{
	app in com_bwx_bequick
	no intentFilter
	no compPermissions
	compUsesPermissions = WRITE_SETTINGS + ACCESS_NETWORK_STATE + READ_SYNC_SETTINGS + CHANGE_WIFI_STATE + VIBRATE
}

one sig com_bwx_bequick_CommonPrefs extends Activity{}{
	app in com_bwx_bequick
	no intentFilter
	no compPermissions
	compUsesPermissions = VIBRATE + WAKE_LOCK
}

one sig com_bwx_bequick_DialogSettingsActivity extends Activity{}{
	app in com_bwx_bequick
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bwx_bequick_GpsPrefs extends Activity{}{
	app in com_bwx_bequick
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bwx_bequick_LayoutSettingsActivity extends Activity{}{
	app in com_bwx_bequick
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bwx_bequick_LedFlashlightReceiver extends Receiver{}{
	app in com_bwx_bequick
	intentFilter = IntentFilter1
	no compPermissions
	compUsesPermissions = VIBRATE + WAKE_LOCK
}

one sig com_bwx_bequick_MainSettingsActivity extends Activity{}{
	app in com_bwx_bequick
	no intentFilter
	no compPermissions
	compUsesPermissions = WRITE_SETTINGS + ACCESS_NETWORK_STATE + READ_SYNC_SETTINGS + CHANGE_WIFI_STATE + VIBRATE + WAKE_LOCK
}

one sig com_bwx_bequick_MobileDataApnPrefs extends Activity{}{
	app in com_bwx_bequick
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bwx_bequick_MobileDataPrefs extends Activity{}{
	app in com_bwx_bequick
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bwx_bequick_ScreenLightActivity extends Activity{}{
	app in com_bwx_bequick
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bwx_bequick_ShowSettingsActivity extends Activity{}{
	app in com_bwx_bequick
	intentFilter = IntentFilter2
	no compPermissions
	compUsesPermissions = WRITE_SETTINGS + ACCESS_NETWORK_STATE + READ_SYNC_SETTINGS + CHANGE_WIFI_STATE
}

one sig com_bwx_bequick_StatusBarIntegrationReceiver extends Receiver{}{
	app in com_bwx_bequick
	intentFilter = IntentFilter3
	no compPermissions
	compUsesPermissions = VIBRATE
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = FLASHLIGHT_A + WARN_FLASHLIGHT_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = SEARCH_LONG_PRESS_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = BOOT_COMPLETED_A + INIT_STATUSBAR_INTEGRATION_A + START_QS_A + UPDATE_STATUSBAR_INTEGRATION_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=13
#IntentFilter=3
no Intent
#Data=4
}
run show
