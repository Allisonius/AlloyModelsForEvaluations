open appDeclaration

one sig com_google_zxing_client_android extends Application{}{
	usesPermissions = CAMERA + INTERNET + VIBRATE + FLASHLIGHT + READ_CONTACTS + READ_HISTORY_BOOKMARKS + WRITE_EXTERNAL_STORAGE + CHANGE_WIFI_STATE + ACCESS_WIFI_STATE
	no appPermissions
	APIPermissions = INTERNET + VIBRATE + CHANGE_WIFI_STATE + ACCESS_WIFI_STATE
}

one sig com_google_zxing_client_android_AppPickerActivity extends Activity{}{
	app in com_google_zxing_client_android
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_google_zxing_client_android_BookmarkPickerActivity extends Activity{}{
	app in com_google_zxing_client_android
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_google_zxing_client_android_CaptureActivity extends Activity{}{
	app in com_google_zxing_client_android
	intentFilter = IntentFilter2 + IntentFilter3 + IntentFilter3 + IntentFilter3 + IntentFilter3
	no compPermissions
	compUsesPermissions = ACCESS_WIFI_STATE + CHANGE_WIFI_STATE + VIBRATE
}

one sig com_google_zxing_client_android_EncodeActivity extends Activity{}{
	app in com_google_zxing_client_android
	intentFilter = IntentFilter4 + IntentFilter5 + IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig com_google_zxing_client_android_HelpActivity extends Activity{}{
	app in com_google_zxing_client_android
	intentFilter = IntentFilter6
	no compPermissions
	no compUsesPermissions
}

one sig com_google_zxing_client_android_HistoryActivity extends Activity{}{
	app in com_google_zxing_client_android
	intentFilter = IntentFilter6
	no compPermissions
	compUsesPermissions = ACCESS_WIFI_STATE + CHANGE_WIFI_STATE + VIBRATE
}

one sig com_google_zxing_client_android_PreferencesActivity extends Activity{}{
	app in com_google_zxing_client_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_zxing_client_android_SearchBookContentsActivity extends Activity{}{
	app in com_google_zxing_client_android
	intentFilter = IntentFilter7
	no compPermissions
	no compUsesPermissions
}

one sig com_google_zxing_client_android_ShareActivity extends Activity{}{
	app in com_google_zxing_client_android
	intentFilter = IntentFilter8
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = PICK_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = SCAN_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = ENCODE_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = SEND_A
	categories = DEFAULT_C
	data = YesMimeNoScheme
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = VIEW_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = SEARCH_BOOK_CONTENTS_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter8 extends IntentFilter{}{
	actions = SHARE_A
	categories = DEFAULT_C
	no data
}


pred show(){
#Application=1
//#Component=9
//#IntentFilter=8
no Intent
#Data=4
}
run show
