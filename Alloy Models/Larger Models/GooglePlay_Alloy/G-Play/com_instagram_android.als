open appDeclaration

one sig com_instagram_android extends Application{}{
	usesPermissions = CAMERA + INTERNET + ACCESS_NETWORK_STATE + WRITE_EXTERNAL_STORAGE + ACCESS_FINE_LOCATION + READ_CONTACTS + WAKE_LOCK + GET_TASKS + RECORD_AUDIO + GET_ACCOUNTS + READ_PROFILE + READ_FRAME_BUFFER + SET_ORIENTATION + BATTERY_STATS + RECEIVE + C2D_MESSAGE
	no appPermissions
	APIPermissions = CAMERA + INTERNET + ACCESS_FINE_LOCATION + WAKE_LOCK + RECORD_AUDIO + GET_ACCOUNTS
}

one sig com_instagram_android_ActivityInTab extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_instagram_android_ArbitraryFragmentActivity extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_AutoCompleteHashtagService extends Service{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_AutoCompleteUserService extends Service{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_C2DMBroadcastReceiver extends Receiver{}{
	app in com_instagram_android
	intentFilter = IntentFilter1 + IntentFilter2
	compPermissions = SEND
	no compUsesPermissions
}

one sig com_instagram_android_C2DMReceiver extends Service{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_CropActivity extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_DedicatedMapActivity extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_FlickrAuthActivity extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_FoursquareAuthActivity extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_MainTabActivity extends Activity{}{
	app in com_instagram_android
	intentFilter = IntentFilter3
	no compPermissions
	compUsesPermissions = INTERNET + ACCESS_FINE_LOCATION
}

one sig com_instagram_android_MediaCaptureActivity extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_FINE_LOCATION
}

one sig com_instagram_android_MediaService extends Service{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_NearbyVenuesService extends Service{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_NewsActivityInTab extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_PasswordResetActivity extends Activity{}{
	app in com_instagram_android
	intentFilter = IntentFilter4 + IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_PendingMediaService extends Service{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig com_instagram_android_PeopleTagActivity extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_PhotoMapsActivity extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_PushRegistrationService extends Service{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_RageShakeActivity extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_RageShakeService extends Service{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_SignedOutFragmentActivity extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_SimpleWebViewActivity extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_TumblrAuthActivity extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_TumblrService extends Service{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_TwitterAuthActivity extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_UrlHandlerActivity extends Activity{}{
	app in com_instagram_android
	intentFilter = IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig com_instagram_android_VkontakteAuthActivity extends Activity{}{
	app in com_instagram_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = RECEIVE_A
	categories = android_C
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = REGISTRATION_A
	categories = android_C
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = SEND_A
	categories = DEFAULT_C
	data = NoMimeNoScheme + NoMimeNoScheme
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme
}


pred show(){
#Application=1
//#Component=29
#IntentFilter=5
no Intent
#Data=4
}
run show
