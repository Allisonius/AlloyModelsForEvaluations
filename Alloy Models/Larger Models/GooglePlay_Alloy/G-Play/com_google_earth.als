open appDeclaration

one sig com_google_earth extends Application{}{
	usesPermissions = ACCESS_FINE_LOCATION + ACCESS_COARSE_LOCATION + INTERNET + ACCESS_NETWORK_STATE + WRITE_EXTERNAL_STORAGE + VIBRATE + NFC + GET_ACCOUNTS + USE_CREDENTIALS + MANAGE_ACCOUNTS + READ
	no appPermissions
	APIPermissions = ACCESS_FINE_LOCATION + ACCESS_COARSE_LOCATION + INTERNET + NFC + GET_ACCOUNTS
}

one sig com_google_earth_CampaignTrackingReceiver extends Receiver{}{
	app in com_google_earth
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_google_earth_CampaignTrackingService extends Service{}{
	app in com_google_earth
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_earth_DatabaseList extends Activity{}{
	app in com_google_earth
	no intentFilter
	compPermissions = READ
	compUsesPermissions = NFC
}

one sig com_google_earth_EarthActivity extends Activity{}{
	app in com_google_earth
	intentFilter = IntentFilter2 + IntentFilter3 + IntentFilter4 + IntentFilter5 + IntentFilter6 + IntentFilter7 + IntentFilter8
	no compPermissions
	compUsesPermissions = INTERNET + ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION + NFC + GET_ACCOUNTS
}

one sig com_google_earth_EarthGalleryActivity extends Activity{}{
	app in com_google_earth
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_earth_FeedbackConnectivityReceiver extends Receiver{}{
	app in com_google_earth
	intentFilter = IntentFilter9
	no compPermissions
	no compUsesPermissions
}

one sig com_google_earth_MapsEngineList extends Activity{}{
	app in com_google_earth
	no intentFilter
	compPermissions = READ
	no compUsesPermissions
}

one sig com_google_earth_PreviewActivity extends Activity{}{
	app in com_google_earth
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_earth_SendUserFeedbackService extends Service{}{
	app in com_google_earth
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_earth_Settings extends Activity{}{
	app in com_google_earth
	no intentFilter
	no compPermissions
	compUsesPermissions = NFC
}

one sig com_google_earth_ShowStringListActivity extends Activity{}{
	app in com_google_earth
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_earth_ShowTextActivity extends Activity{}{
	app in com_google_earth
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_earth_UserFeedbackActivity extends Activity{}{
	app in com_google_earth
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_earth_WebViewActivity extends Activity{}{
	app in com_google_earth
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = SEARCH_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + CATEGORY_SELECTED_ALTERNATIVE_C + DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + CATEGORY_SELECTED_ALTERNATIVE_C + DEFAULT_C
	data = YesMimeNoScheme + YesMimeNoScheme
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + CATEGORY_SELECTED_ALTERNATIVE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = NDEF_DISCOVERED_A
	categories = DEFAULT_C
	data = YesMimeNoScheme
}

one sig IntentFilter8 extends IntentFilter{}{
	actions = MAPSENGINE_SERVING_3D_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter9 extends IntentFilter{}{
	actions = CONNECTIVITY_CHANGE_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=14
//#IntentFilter=9
no Intent
#Data=4
}
run show
