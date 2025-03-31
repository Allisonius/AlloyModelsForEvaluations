open appDeclaration

one sig com_g6677_android_lpetvet extends Application{}{
	usesPermissions = INTERNET + ACCESS_NETWORK_STATE + READ_PHONE_STATE + ACCESS_COARSE + READ_PHONE_STATE + FINE_LOCATION + WRITE_EXTERNAL_STORAGE + MOUNT_UNMOUNT_FILESYSTEMS + ACCESS_WIFI_STATE
	no appPermissions
	no APIPermissions
}

one sig com_g6677_android_lpetvet_AdActivity extends Activity{}{
	app in com_g6677_android_lpetvet
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_g6677_android_lpetvet_CBDialogActivity extends Activity{}{
	app in com_g6677_android_lpetvet
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_g6677_android_lpetvet_CatalogActivity extends Activity{}{
	app in com_g6677_android_lpetvet
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_g6677_android_lpetvet_CelebritySpa extends Activity{}{
	app in com_g6677_android_lpetvet
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_g6677_android_lpetvet_IMBrowserActivity extends Activity{}{
	app in com_g6677_android_lpetvet
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_g6677_android_lpetvet_MMActivity extends Activity{}{
	app in com_g6677_android_lpetvet
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_g6677_android_lpetvet_SplashActivity extends Activity{}{
	app in com_g6677_android_lpetvet
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_g6677_android_lpetvet_TJCOffersWebView extends Activity{}{
	app in com_g6677_android_lpetvet
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_g6677_android_lpetvet_TapjoyFeaturedAppWebView extends Activity{}{
	app in com_g6677_android_lpetvet
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_g6677_android_lpetvet_TapjoyVideoView extends Activity{}{
	app in com_g6677_android_lpetvet
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_g6677_android_lpetvet_TestMoreActivity extends Activity{}{
	app in com_g6677_android_lpetvet
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_g6677_android_lpetvet_VideoPlayer extends Activity{}{
	app in com_g6677_android_lpetvet
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = Flurry_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = MeiRenYuSalon_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = TestMoreActivity_A
	categories = DEFAULT_C
	no data
}


pred show(){
#Application=1
//#Component=12
#IntentFilter=3
no Intent
#Data=4
}
run show
