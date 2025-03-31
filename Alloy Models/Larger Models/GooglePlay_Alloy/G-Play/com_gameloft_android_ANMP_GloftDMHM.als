open appDeclaration

one sig com_gameloft_android_ANMP_GloftDMHM extends Application{}{
	usesPermissions = BILLING + GET_ACCOUNTS + INTERNET + ACCESS_NETWORK_STATE + READ_PHONE_STATE + WRITE_EXTERNAL_STORAGE + ACCESS_WIFI_STATE + READ_EXTERNAL_STORAGE + WAKE_LOCK + C2D_MESSAGE + RECEIVE + VIBRATE + RECEIVE_BOOT_COMPLETED + ACCESS_SHARED_DATA
	no appPermissions
	APIPermissions = INTERNET + ACCESS_NETWORK_STATE + READ_PHONE_STATE + ACCESS_WIFI_STATE + WAKE_LOCK + VIBRATE
}

one sig com_gameloft_android_ANMP_GloftDMHM_ActionHandler extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gameloft_android_ANMP_GloftDMHM_AdServerActivity extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_gameloft_android_ANMP_GloftDMHM_AdServerVideos extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + READ_PHONE_STATE + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + WAKE_LOCK
}

one sig com_gameloft_android_ANMP_GloftDMHM_ApplicationSetUp extends Receiver{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_gameloft_android_ANMP_GloftDMHM_Browser extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gameloft_android_ANMP_GloftDMHM_GCMBroadcastReceiver extends Receiver{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	intentFilter = IntentFilter3
	compPermissions = SEND
	no compUsesPermissions
}

one sig com_gameloft_android_ANMP_GloftDMHM_GCMIntentService extends Service{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gameloft_android_ANMP_GloftDMHM_GMPActivity extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_gameloft_android_ANMP_GloftDMHM_Game extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + READ_PHONE_STATE + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + WAKE_LOCK
}

one sig com_gameloft_android_ANMP_GloftDMHM_GameInstaller extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + READ_PHONE_STATE + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + VIBRATE + WAKE_LOCK
}

one sig com_gameloft_android_ANMP_GloftDMHM_IGPFreemiumActivity extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	intentFilter = IntentFilter1
	no compPermissions
	compUsesPermissions = INTERNET + READ_PHONE_STATE + ACCESS_WIFI_STATE
}

one sig com_gameloft_android_ANMP_GloftDMHM_IReferrerReceiver extends Receiver{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_gameloft_android_ANMP_GloftDMHM_InGameBrowser extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	no intentFilter
	no compPermissions
	compUsesPermissions = READ_PHONE_STATE + ACCESS_WIFI_STATE
}

one sig com_gameloft_android_ANMP_GloftDMHM_LocalPushReceiver extends Receiver{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	intentFilter = IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig com_gameloft_android_ANMP_GloftDMHM_LoginActivity extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gameloft_android_ANMP_GloftDMHM_NetworkStateReceiver extends Receiver{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	intentFilter = IntentFilter6
	no compPermissions
	no compUsesPermissions
}

one sig com_gameloft_android_ANMP_GloftDMHM_SplashScreenActivity extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	intentFilter = IntentFilter1
	no compPermissions
	compUsesPermissions = INTERNET + READ_PHONE_STATE + ACCESS_WIFI_STATE
}

one sig com_gameloft_android_ANMP_GloftDMHM_TJAdUnitView extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gameloft_android_ANMP_GloftDMHM_TJCOffersWebView extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gameloft_android_ANMP_GloftDMHM_TapjoyDailyRewardAdWebView extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gameloft_android_ANMP_GloftDMHM_TapjoyFullScreenAdWebView extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gameloft_android_ANMP_GloftDMHM_TapjoyVideoView extends Activity{}{
	app in com_gameloft_android_ANMP_GloftDMHM
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = MAIN_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = ApplicationSetUp_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = RECEIVE_A + REGISTRATION_A
	categories = GloftDMHM_C
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = BOOT_COMPLETED_A
	no categories
	no data
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = CONNECTIVITY_CHANGE_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=22
#IntentFilter=6
no Intent
#Data=4
}
run show
